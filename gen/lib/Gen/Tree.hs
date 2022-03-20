{-# OPTIONS_GHC -fno-warn-incomplete-uni-patterns #-}

module Gen.Tree
  ( root,
    fold,
    populate,
  )
where

import qualified Control.Exception as Exception
import Data.Aeson (Value (..), (.=))
import qualified Data.Aeson as Aeson
import qualified Data.List as List
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text.Encoding
import qualified Data.Text.Lazy as Text.Lazy
import qualified Gen.JSON as JSON
import Gen.Prelude
import Gen.Types
import System.Directory.Tree (AnchoredDirTree (..), DirTree (..))
import Text.EDE (Template)
import qualified Text.EDE as EDE

root :: AnchoredDirTree a -> FilePath
root (p :/ d) = p </> name d

fold ::
  MonadIO m =>
  -- | Directories
  (FilePath -> m ()) ->
  -- | Files
  (FilePath -> a -> m b) ->
  AnchoredDirTree a ->
  m (AnchoredDirTree b)
fold g f (p :/ t) =
  (p :/) <$> go p t
  where
    go x = \case
      Failed n e -> liftIO (Exception.throwIO e) >> pure (Failed n e)
      File n a -> File n <$> f (x </> n) a
      Dir n cs -> g d >> Dir n <$> traverse (go d) cs
        where
          d = x </> n

-- If Nothing, then touch the file, otherwise write the contents.
type Touch = Maybe ByteString

populate ::
  FilePath ->
  Templates ->
  Library ->
  Either Text (AnchoredDirTree Touch)
populate d Templates {..} l = (d :/) . dir lib <$> layout
  where
    layout :: Either Text [DirTree Touch]
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
          let Object o = Aeson.object ["action" .= a]
              Object e = env
           in pure $ Object (o <> e)

    Imports {..} = serviceImports l

    lib = Text.unpack (l ^. sLibrary)

    mod' ns is t = write . module' ns is t

    file p t = write $ file' p t (pure env)

    env :: Value
    env = Aeson.toJSON l

module' ::
  ToJSON a =>
  NS ->
  Set NS ->
  Template ->
  Either Text a ->
  DirTree (Either Text ByteString)
module' ns is t f = namespaced ns t $ do
  x <- f >>= JSON.jsonObject (show ns)

  pure $! x
    <> EDE.fromPairs
      [ "moduleName" .= ns,
        "moduleImports" .= is
      ]

namespaced ::
  ToJSON a =>
  NS ->
  Template ->
  Either Text a ->
  DirTree (Either Text ByteString)
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
  Either Text a ->
  DirTree (Either Text ByteString)
file' p t f =
  File p $
    f >>= JSON.jsonObject p
      >>= bimap Text.pack (Text.Encoding.encodeUtf8 . Text.Lazy.toStrict)
        . EDE.eitherRender t

dir :: FilePath -> [DirTree a] -> DirTree a
dir = Dir

write :: DirTree (Either e a) -> DirTree (Either e (Maybe a))
write = fmap (second Just)

touch :: FilePath -> DirTree (Either e (Maybe a))
touch f = File f (Right Nothing)
