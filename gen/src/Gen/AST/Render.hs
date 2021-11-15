-- |
-- Module      : Gen.AST.Render
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.AST.Render
  ( render,
  )
where

import qualified Control.Lens as Lens
import qualified Data.ByteString.Builder as ByteBuilder
import qualified Data.ByteString.Char8 as ByteString.Char8
import qualified Data.Char as Char
import qualified Data.HashMap.Strict as HashMap
import qualified Data.Text.Lazy as Text.Lazy
import qualified Data.Text.Lazy.Encoding as Text.Lazy.Encoding
import Gen.AST.Solve (getSolved)
import Gen.Prelude
import Gen.Syntax
import Gen.Types
import qualified Language.Haskell.Exts.Build as Build
import qualified Language.Haskell.Exts.Pretty as Pretty

render :: Service Solved -> AST (API, [Data])
render s = do
  a <- renderAPI s

  let actions = map _actType (_apiResources a <> _apiMethods a)
      valid = HashMap.keys . HashMap.filter (\v -> _unique v `notElem` actions)

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
      a <- traverse getSolved aps
      b <- traverse getSolved ps
      let ab = setAdditional <$> a
          ts = maybe b (flip (HashMap.insert "addtional") b) ab
      prod ts
      where
        prod ts =
          Prod (dname k) (i ^. iDescription)
            <$> pp Indent (objDecl k p ds ts)
            <*> ctor ts
            <*> traverse lens (HashMap.toList ts)
            <*> traverse (pp Print) (jsonDecls k p ts)

        ctor ts =
          Fun' (cname k) (Just help)
            <$> (pp None (ctorSig k ts) <&> comments p ts)
            <*> pp Indent (ctorDecl k p ts)

        lens (l, v) =
          Fun' (lname p l) (v ^. iDescription)
            <$> pp None (lensSig k p l v)
            <*> pp Print (lensDecl p l v)

        help =
          rawHelpText $
            "Creates a value of '"
              <> global k
              <> "' with the minimum fields required to make a request.\n"

renderAPI :: Service Solved -> AST API
renderAPI s = do
  rs <-
    traverse
      (renderResource s resourceNS "Resource")
      (HashMap.elems (s ^. dResources))
      <&> concat

  ms <-
    traverse
      (renderMethod s methodNS "Method")
      (s ^. dMethods)

  d <- pp Print $ apiAlias alias (map _actAliasName (rs <> ms))

  API alias d rs ms
    <$> svc
    <*> traverse scope (maybe mempty (HashMap.toList . scopes) (s ^. dAuth))
  where
    alias = aname (_sCanonicalName s)

    url = Build.name (serviceName s)

    svc =
      Fun' url (Just (rawHelpText h))
        <$> pp None (serviceSig url)
        <*> pp Print (serviceDecl s url)
      where
        h =
          "Default request referring to version @"
            <> (s ^. dVersion)
            <> "@ of the "
            <> (s ^. dTitle)
            <> ". This contains the host and root path used as a starting point for constructing service requests."

    scope (k, h) =
      Fun' n (Just h)
        <$> pp None (scopeSig n k)
        <*> pp None (scopeDecl n)
      where
        n = Build.name (scopeName s k)

renderMethod :: Service a -> NS -> Suffix -> Method Solved -> AST Action
renderMethod s root suf m@Method {..} = do
  typ <- reserveType typ'

  x@Solved {..} <- getSolved typ
  d' <- renderSchema x
  d <- case d' of
    Nothing -> error "failed to render the schema"
    Just d'' -> pure d''

  i <- pp Print $ requestDecl _unique _prefix alias url (props _schema) m
  dl <- pp Print $ downloadDecl _unique _prefix alias url (props _schema) m
  ul <- pp Print $ uploadDecl _unique _prefix alias url (props _schema) m

  let is =
        i :
        [dl | _mSupportsMediaDownload && not _mSupportsMediaUpload]
          ++ [ul | _mSupportsMediaUpload]

  Action (commasep _mId) _unique (root <> mkNS ns) _mDescription alias
    <$> pp Print (verbAlias s alias m)
    <*> pure (insts is d)
  where
    (alias, typ', ns) = mname (_sCanonicalName s) suf _mId

    url = Build.name (serviceName s)

    insts is = \case
      Prod n h r c ls _ -> Prod n h r c ls is
      d -> d

    props = \case
      SObj _ (Obj _ ps) -> HashMap.keys ps
      _ -> mempty

renderResource :: Service a -> NS -> Suffix -> Resource Solved -> AST [Action]
renderResource s root suf Resource {..} =
  liftA2
    (<>)
    (traverse (renderResource s root suf) (HashMap.elems _rResources) <&> concat)
    (traverse (renderMethod s root suf) _rMethods)

data PP
  = Indent
  | Print
  | None
  deriving (Eq)

pp :: (Pretty.Pretty a, Show a, Applicative f) => PP -> a -> f Rendered
pp i x = pure $ Text.Lazy.pack $ ByteString.Char8.unpack p
  where
    p =
      ByteString.Char8.dropWhile Char.isSpace
        . ByteString.Char8.pack
        $ Pretty.prettyPrintStyleMode s m x

    s =
      Pretty.style
        { Pretty.mode = Pretty.PageMode,
          Pretty.lineLength = 80,
          Pretty.ribbonsPerLine = 1.5
        }

    m
      | i == Print = Pretty.defaultMode
      | i == Indent = Pretty.defaultMode
      | otherwise =
        Pretty.defaultMode
          { Pretty.layout = Pretty.PPNoLayout,
            Pretty.spacing = False
          }

-- FIXME: dirty hack to render smart ctor parameter comments.
comments :: Prefix -> HashMap Local Solved -> Rendered -> Rendered
comments p (HashMap.toList -> rs) =
  Text.Lazy.replace " :: " "\n    :: "
    . Text.Lazy.intercalate "\n    -> "
    . zipWith rel ps
    . map Text.Lazy.strip
    . Text.Lazy.splitOn "->"
  where
    ks = filter (parameter . _schema . snd) rs
    ps = map (Just . fst) ks ++ repeat Nothing
    rel Nothing t = t
    rel (Just l) t =
      t <> " -- ^ '" <> fromString (Pretty.prettyPrint (lname p l)) <> "'"
