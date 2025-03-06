module Gen.AST.Render
  ( render,
  )
where

import Control.Applicative
import Control.Error
import Control.Lens hiding (enum, lens)
import Data.ByteString.Char8 qualified as C8
import Data.Char (isSpace)
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.Maybe
import Data.String
import Data.Text.Lazy qualified as LText
import Gen.AST.Solve (getSolved)
import Gen.Formatting
import Gen.Syntax
import Gen.Types
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
        <$> pp (objDecl k ts)
        <*> pure (objFields ts)
        <*> pp (objDerive ds)
        <*> traverse pp (jsonDecls k ts)
        <*> ctor ts
      where
        ctor ts =
          Fun' (cname k) (Just help)
            <$> (pp (ctorSig k ts) <&> comments ts)
            <*> pp (ctorDecl k ts)

        help =
          rawHelpText $
            sformat
              ( "Creates a value of '"
                  % gid
                  % "' with the minimum fields required to make a request.\n"
              )
              k

renderAPI :: Service Solved -> AST API
renderAPI s = do
  rs <- traverse (renderResource s "Resource") (Map.elems (s ^. dResources)) <&> concat
  ms <- traverse (renderMethod s "Method") (s ^. dMethods)

  d <- pp $ apiAlias alias (map _actAliasName (rs <> ms))

  API alias d rs ms
    <$> svc
    <*> traverse scope (maybe mempty (Map.toList . scopes) (s ^. dAuth))
  where
    alias = aname (_sCanonicalName s)

    url = name (serviceName s)

    svc =
      Fun' url (Just (rawHelpText h))
        <$> pp (serviceSig url)
        <*> pp (serviceDecl s url)
      where
        h =
          sformat
            ( "Default request referring to version @"
                % stext
                % "@ of the "
                % stext
                % ". This contains the host and root path used as a starting point for constructing service requests."
            )
            (s ^. dVersion)
            (s ^. dTitle)

    scope (k, h) =
      Prod n (Just h)
        <$> pp (scopeDecl n k)
        <*> pure []
        <*> pure mempty
        <*> pure []
        <*> pure (Fun' n Nothing mempty mempty)
      where
        n = name (scopeName k)

renderMethod :: Service a -> Suffix -> Method Solved -> AST Action
renderMethod s suf m@Method {..} = do
  typ <- reserveType typ'

  x@Solved {..} <- getSolved typ

  d <-
    renderSchema x >>= \case
      Nothing -> error "failed to render the schema"
      Just ok -> pure ok

  i <- pp $ requestDecl _unique alias url (props _schema) m
  dl <- pp $ downloadDecl _unique alias url (props _schema) m
  ul <- pp $ uploadDecl _unique alias url (props _schema) m

  let inst = i : [dl | _mSupportsMediaDownload && not _mSupportsMediaUpload] ++ [ul | _mSupportsMediaUpload]

  Action (commasep _mId) _unique root _mDescription alias
    <$> pp (verbAlias s alias m)
    <*> pure (insts inst d)
  where
    root = collapseNS (tocNS s <> UnsafeNS namespace)

    (alias, typ', namespace) = mname (_sCanonicalName s) suf _mId

    url = name (serviceName s)

    insts is = \case
      Prod n h d fs ds _ c -> Prod n h d fs ds is c
      d -> d

    props = \case
      SObj _ (Obj _ ps) -> Map.keys ps
      _ -> mempty

renderResource :: Service a -> Suffix -> Resource Solved -> AST [Action]
renderResource s suf Resource {..} =
  (<>)
    <$> (traverse (renderResource s suf) (Map.elems _rResources) <&> concat)
    <*> traverse (renderMethod s suf) _rMethods

pp :: (Pretty a) => a -> AST Rendered
pp =
  pure
    . LText.pack
    . C8.unpack
    . C8.dropWhile isSpace
    . C8.pack
    . prettyPrintStyleMode style defaultMode

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
      t
        <> "\n       -- ^ "
        <> maybe mempty (LText.drop 11 . renderHelp . Nest 7) (s ^. iDescription)
        <> " See '"
        <> fromString (PP.prettyPrint (fname l))
        <> "'."
