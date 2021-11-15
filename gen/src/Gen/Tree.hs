-- |
-- Module      : Gen.Tree
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.Tree
  ( root,
    fold,
    populate,
  )
where

import qualified Control.Monad.Except as Except
import qualified Data.Aeson as Aeson
import qualified Data.List as List
import qualified Data.Text as Text
import qualified Gen.JSON as JSON
import Gen.Prelude
import Gen.Types
import System.Directory.Tree (AnchoredDirTree ((:/)), DirTree (..))
import Text.EDE (Template)
import qualified Text.EDE as EDE

root :: AnchoredDirTree a -> FilePath
root (p :/ d) = p </> name d

fold ::
  Monad m =>
  -- | Directories
  (FilePath -> m ()) ->
  -- | Files
  (FilePath -> a -> m ()) ->
  AnchoredDirTree a ->
  m (Either String FilePath)
fold handleDir handleFile (p :/ tree) =
  Except.runExceptT (go p tree >> pure p)
  where
    go current = \case
      Failed _n e -> Except.throwError (show e)
      File n a -> lift (handleFile (current </> n) a)
      Dir n cs -> lift (handleDir next) >> traverse_ (go next) cs
        where
          next = current </> n

-- If Nothing, then touch the file, otherwise write the Just contents.
type Touch = Maybe Rendered

populate ::
  FilePath ->
  Templates ->
  Library ->
  Either String (AnchoredDirTree Touch)
populate d Templates {..} l = (d :/) . dir lib <$> layout
  where
    layout :: Either String [DirTree Touch]
    layout =
      traverse
        sequenceA
        [ dir
            "src"
            -- Supress cabal warnings about directories listed that don't exist.
            [ touch ".gitkeep"
            ],
          file (lib <.> "cabal") cabalTemplate,
          file "README.md" readmeTemplate,
          dir "gen" $
            [ mod' (tocNS l) tocImports tocTemplate (pure env),
              mod' (typesNS l) typeImports typesTemplate (pure env),
              mod' (prodNS l) prodImports prodTemplate (pure env),
              mod' (sumNS l) sumImports sumTemplate (pure env)
            ]
              ++ map resource (_apiResources (l ^. lAPI))
              ++ map method (_apiMethods (l ^. lAPI))
        ]
      where
        -- FIXME: now redundant
        resource a =
          mod' (_actNamespace a) actionImports actionTemplate (action a)

        method a =
          mod' (_actNamespace a) actionImports actionTemplate (action a)

        action a =
          let Aeson.Object o = Aeson.object ["action" .= a]
              Aeson.Object e = env
           in pure $ Aeson.Object (o <> e)

    Imports {..} = serviceImports l

    lib = Text.unpack (l ^. sLibrary)

    mod' namespace imports template env' =
      write $ module' namespace imports template env'

    file path template =
      write $ file' path template (pure env)

    env :: Aeson.Value
    env = Aeson.toJSON l

module' ::
  ToJSON a =>
  NS ->
  Set NS ->
  Template ->
  Either String a ->
  DirTree (Either String Rendered)
module' ns is t f = namespaced ns t $ do
  x <- f >>= JSON.objectErr (show ns)
  pure $! x
    <> EDE.fromPairs
      [ "moduleName" .= ns,
        "moduleImports" .= is
      ]

namespaced ::
  ToJSON a =>
  NS ->
  Template ->
  Either String a ->
  DirTree (Either String Rendered)
namespaced (unNS -> ns) t x =
  case map Text.unpack ns of
    [] -> error "Empty namespace."
    [p] -> f p
    ps -> foldr nest (f (List.last ps)) (List.init ps)
  where
    f p = file' (p <.> "hs") t x

    nest d c = Dir d [c]

file' ::
  ToJSON a =>
  FilePath ->
  Template ->
  Either String a ->
  DirTree (Either String Rendered)
file' p t f =
  File p $
    f >>= JSON.objectErr p
      >>= EDE.eitherRender t

dir :: FilePath -> [DirTree a] -> DirTree a
dir = Dir

write :: DirTree (Either e a) -> DirTree (Either e (Maybe a))
write = fmap (second Just)

touch :: Text -> DirTree (Either e (Maybe a))
touch f = File (Text.unpack f) (Right Nothing)
