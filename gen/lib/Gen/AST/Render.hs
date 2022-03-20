module Gen.AST.Render
  ( render,
  )
where

import Control.Error ()
import Control.Lens ()
import qualified Control.Monad.Except as Except
import qualified Data.ByteString.Builder as Builder
import qualified Data.ByteString.Char8 as ByteString.Char8
import qualified Data.Char as Char
import qualified Data.Map.Strict as Map
import qualified Data.Text as Text
import qualified Data.Text.Lazy as Text.Lazy
import qualified Data.Text.Lazy.Encoding as Text.Lazy
import Gen.AST.Solve (getSolved)
import Gen.Formatting
import Gen.Prelude
import Gen.Syntax
import Gen.Syntax.Build
import Gen.Types
import Language.Haskell.Exts.Build (name)
import Language.Haskell.Exts.Pretty as PP

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
            <*> pp Print (smartCtorDecl k ts)

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

  pure (API rs ms config aliases)
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
            ( "Default configurat referring to version @" % stext
                % "@ of the "
                % stext
                % ". This sets the host and port used as a starting point for constructing service requests."
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

renderMethod :: Service Solved -> Suffix -> Method Solved -> AST Action
renderMethod s suf m@Method {..} = do
  typ <- reserveType typ'

  x@Solved {..} <- getSolved typ

  datatype <-
    renderSchema x >>= \case
      Nothing -> error "failed to render the schema"
      Just ok -> pure ok

  instances <- traverse (pp Print) (requestInstances s m x)

  pure $! Action (commasep _mId) _unique root _mDescription (replaceInstances instances datatype)
  where
    root = collapseNS (tocNS s <> UnsafeNS namespace)

    (typ', namespace) = mname (_sCanonicalName s) _mId

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
  = Print
  | None
  deriving (Eq)

pp :: (Pretty a, Show a) => PP -> a -> AST TextLazy
pp indent = pure . Text.Lazy.pack . ByteString.Char8.unpack . print'
  where
    print' =
      ByteString.Char8.dropWhile Char.isSpace
        . ByteString.Char8.pack
        . prettyPrintStyleMode style' mode'

    style' =
      style
        { mode = PageMode,
          lineLength = 80,
          ribbonsPerLine = 1.5
        }

    mode'
      | indent == Print = defaultMode
      | otherwise =
        defaultMode
          { layout = PPNoLayout,
            spacing = False
          }

-- FIXME: dirty hack to render smart ctor parameter comments.
comments :: Map Local Solved -> TextLazy -> TextLazy
comments (Map.toList -> rs) =
  Text.Lazy.replace "::" "\n    :: "
    . Text.Lazy.intercalate "\n    -> "
    . zipWith rel ps
    . map Text.Lazy.strip
    . Text.Lazy.splitOn "->"
  where
    ks = filter (parameter . _schema . snd) rs
    ps = map Just ks ++ repeat Nothing

    rel Nothing t = t
    rel (Just (l, s)) t =
      t <> "\n       -- ^ "
        <> maybe mempty (Text.Lazy.drop 11 . renderHelp . Nest 7) (s ^. iDescription)
        <> " See '"
        <> fromString (PP.prettyPrint (fname l))
        <> "'."
