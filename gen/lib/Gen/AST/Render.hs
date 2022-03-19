module Gen.AST.Render
  ( render,
  )
where

import Control.Applicative
import Control.Error
import Control.Lens hiding (enum, lens)
import qualified Data.ByteString.Builder as BB
import qualified Data.ByteString.Char8 as C8
import Data.Char (isSpace)
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe
import Data.String
import qualified Data.Text as Text
import qualified Data.Text.Lazy as LText
import qualified Data.Text.Lazy.Encoding as LText
import Data.Traversable (for)
import Gen.AST.Solve (getSolved)
import Gen.Formatting
import Gen.Syntax
import Gen.Syntax.Build
import Gen.Types
import qualified HIndent
import qualified HIndent.Types as HIndent
import Language.Haskell.Exts.Build (name)
import Language.Haskell.Exts.Pretty as PP
import Prelude hiding (sum)

render :: Service Solved -> AST (API, [Data])
render s = do
  a <- renderAPI s

  let actions = map _actType (_apiResources a <> _apiMethods a)
      valid = Map.keys . Map.filter (\v -> _unique v `notElem` actions)

  ss <- traverse getSolved $ valid (s ^. dSchemas)
  ds <- traverse renderSchema ss <&> catMaybes

  pure (a, ds)

renderSchema :: Solved -> AST (Maybe Data)
renderSchema s = go (_schema s)
  where
    go = \case
      SEnm i e -> pure (Just (enum i e))
      SObj i o -> Just <$> object i o
      _ -> pure Nothing

    k = _unique s
    p = _prefix s
    ds = _deriving s

    enum i (Enm vs) =
      Sum (dname k) (i ^. iDescription) $
        map (\(v, h) -> Branch (bname p v) v h) vs

    object i (Obj aps ps) = do
      a <- traverse getSolved (aps :: Maybe Global)
      b <- traverse getSolved (ps :: Map Local Global)

      let ab = setAdditional <$> a
          ts = maybe b (flip (Map.insert "additional") b) ab

      Prod (dname k) (i ^. iDescription)
        <$> pp None (recordDecl k ts)
        <*> pure (recordFields ts)
        <*> pp None (recordDerive ds)
        <*> traverse (pp Print) (jsonInstances k ts)
        <*> ctor ts
      where
        ctor ts =
          Fun' (cname k) (Just help)
            <$> (pp None (smartCtorSig k ts) <&> comments ts)
            <*> pp Indent (smartCtorDecl k ts)

        help =
          rawHelpText $
            sformat
              ( "Creates a value of '" % gid
                  % "' with the minimum fields required to make a request.\n"
              )
              k

renderAPI :: Service Solved -> AST API
renderAPI s = do
  rs <- traverse (renderResource s "Resource") (Map.elems (s ^. dResources)) <&> concat
  ms <- traverse (renderMethod s "Method") (s ^. dMethods)

  config <- renderConfig
  aliases <- renderScopes (maybe mempty scopes (s ^. dAuth))
  params <- renderParams

  pure (API rs ms config aliases params)
  where
    alias = aname (_sCanonicalName s)
    sname = name (serviceName s)

    renderConfig =
      Fun' sname (Just (rawHelpText h))
        <$> pp None (serviceSig sname)
        <*> pp Print (serviceDecl (_sDescription s) sname)
      where
        h =
          sformat
            ( "Default request referring to version @" % stext
                % "@ of the "
                % stext
                % ". This contains the host and root path used as a starting point for constructing service requests."
            )
            (s ^. dVersion)
            (s ^. dTitle)

    renderScopes xs =
      for (Map.toList xs) $ \(value, help) -> do
        let key = name (scopeName value)

        alias <- pp None $ scopeDecl key value

        pure
          Scope
            { _scopeName = key,
              _scopeData = alias,
              _scopeHelp = help
            }

    pname = serviceParamsName s

    (pdecl, pfields) = paramsDecl (_sDescription s) pname

    renderParams = do
      pcsig <- pp None (smartCtorSig pname pfields)
      pctor <- pp Print (smartCtorDecl pname pfields)

      Prod (dname pname) Nothing
        <$> pp None pdecl
        <*> pure (recordFields pfields)
        <*> pp None (recordDerive [DEq, DOrd, DShow, DGeneric])
        <*> pure []
        <*> pure (Fun' (cname pname) Nothing pcsig pctor)

renderMethod :: Service Solved -> Suffix -> Method Solved -> AST Action
renderMethod s suf m@Method {..} = do
  typ <- reserveType typ'

  x@Solved {..} <- getSolved typ

  datatype <-
    renderSchema x >>= \case
      Nothing -> error "failed to render the schema"
      Just ok -> pure ok

  upload <- pp Print $ uploadInstance s m x
  download <- pp Print $ downloadInstance s m x
  request <- pp Print $ requestInstance s m x

  let instances =
        request :
        [download | _mSupportsMediaDownload && not _mSupportsMediaUpload]
          ++ [upload | _mSupportsMediaUpload]

  pure $! Action (commasep _mId) _unique root _mDescription (replaceInstances instances datatype)
  where
    root = collapseNS (tocNS s <> UnsafeNS namespace)

    (typ', namespace) = mname (_sCanonicalName s) suf _mId

    replaceInstances is = \case
      Prod n h d fs ds _ c -> Prod n h d fs ds is c
      d -> d

    props = \case
      SObj _ (Obj _ ps) -> Map.keys ps
      _ -> mempty

renderResource :: Service Solved -> Suffix -> Resource Solved -> AST [Action]
renderResource s suf Resource {..} =
  (<>)
    <$> (traverse (renderResource s suf) (Map.elems _rResources) <&> concat)
    <*> traverse (renderMethod s suf) _rMethods

data PP
  = Indent
  | Print
  | None
  deriving (Eq)

pp :: (Pretty a, Show a) => PP -> a -> AST Rendered
pp i x
  | i == Indent = result (HIndent.reformat HIndent.defaultConfig Nothing Nothing p)
  | otherwise = pure (LText.pack (C8.unpack p))
  where
    result = hoistEither . bimap (e . LText.pack) (LText.decodeUtf8 . BB.toLazyByteString)

    e = flip mappend ("\nSyntax:\n" <> LText.pack (C8.unpack p) <> "\nAST:\n" <> LText.pack (show x))

    p =
      C8.dropWhile isSpace
        . C8.pack
        $ prettyPrintStyleMode s m x

    s =
      style
        { mode = PageMode,
          lineLength = 80,
          ribbonsPerLine = 1.5
        }

    m
      | i == Print = defaultMode
      | i == Indent = defaultMode
      | otherwise =
        defaultMode
          { layout = PPNoLayout,
            spacing = False
          }

-- FIXME: dirty hack to render smart ctor parameter comments.
comments :: Map Local Solved -> Rendered -> Rendered
comments (Map.toList -> rs) =
  LText.replace "::" "\n    :: "
    . LText.intercalate "\n    -> "
    . zipWith rel ps
    . map LText.strip
    . LText.splitOn "->"
  where
    ks = filter (parameter . _schema . snd) rs
    ps = map Just ks ++ repeat Nothing

    rel Nothing t = t
    rel (Just (l, s)) t =
      t <> "\n       -- ^ "
        <> maybe mempty (LText.drop 11 . renderHelp . Nest 7) (s ^. iDescription)
        <> " See '"
        <> fromString (PP.prettyPrint (fname l))
        <> "'."
