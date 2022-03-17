{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE GADTs                 #-}
{-# LANGUAGE LambdaCase            #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RecordWildCards       #-}
{-# LANGUAGE ViewPatterns          #-}

-- Module      : Gen.Tree
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Tree
    ( root
    , fold
    , populate
    ) where

import           Control.Error
import           Control.Lens              ((^.))
import           Control.Monad
import           Control.Monad.Except
import           Data.Aeson                hiding (json)
import           Data.Bifunctor
import           Data.Foldable             (foldr')
import           Data.Monoid
import           Data.Text                 (Text)
import qualified Data.Text                 as Text
import qualified Data.Text.Lazy            as LText
import           Filesystem.Path.CurrentOS hiding (FilePath, root)
import           Gen.Formatting            (failure, shown)
import qualified Gen.JSON                  as JS
import           Gen.Types
import           Prelude                   hiding (mod)
import           System.Directory.Tree     hiding (file)
import           Text.EDE                  hiding (failure, render)

root :: AnchoredDirTree a -> Path
root (p :/ d) = decodeString p </> decodeString (name d)

fold :: MonadError Error m
     => (Path -> m ())     -- ^ Directories
     -> (Path -> a -> m b) -- ^ Files
     -> AnchoredDirTree a
     -> m (AnchoredDirTree b)
fold g f (p :/ t) = (p :/) <$> go (decodeString p) t
  where
    go x = \case
        Failed n e  -> failure shown e >> return (Failed n e)
        File   n a  -> File n <$> f (x </> decodeString n) a
        Dir    n cs -> g d >> Dir n <$> mapM (go d) cs
          where
            d = x </> decodeString n

-- If Nothing, then touch the file, otherwise write the Just contents.
type Touch = Maybe Rendered

populate :: Path
         -> Templates
         -> Library
         -> Either Error (AnchoredDirTree Touch)
populate d Templates {..} l = (encodeString d :/) . dir lib <$> layout
  where
    layout :: Either Error [DirTree Touch]
    layout = traverse sequenceA
        [ dir "src"
              -- Supress cabal warnings about directories listed that don't exist.
            [ touch ".gitkeep"
            ]

        , file (lib <.> "cabal") cabalTemplate
        , file "README.md" readmeTemplate

        , dir "gen" $
            [ mod' (tocNS   l) tocImports  tocTemplate   (pure env)
            , mod' (typesNS l) typeImports typesTemplate (pure env)
            , mod' (prodNS  l) prodImports prodTemplate  (pure env)
            , mod' (sumNS   l) sumImports  sumTemplate   (pure env)
            ] ++ map resource (_apiResources (l ^. lAPI))
              ++ map method   (_apiMethods   (l ^. lAPI))
        ]
      where
        -- FIXME: now redundant
        resource a =
            mod' (_actNamespace a) actionImports actionTemplate (action a)

        method a =
            mod' (_actNamespace a) actionImports actionTemplate (action a)

        action a =
            let Object o = object ["action" .= a]
                Object e = env
             in pure $ Object (o <> e)

    Imports {..} = serviceImports l

    lib = fromText (l ^. sLibrary)

    mod' ns is t = write . module' ns is t

    file p t = write $ file' p t (pure env)

    env :: Value
    env = toJSON l

module' :: ToJSON a
        => NS
        -> [NS]
        -> Template
        -> Either Error a
        -> DirTree (Either Error Rendered)
module' ns is t f = namespaced ns t $ do
    x <- f >>= JS.objectErr (show ns)
    return $! x <> fromPairs
        [ "moduleName"    .= ns
        , "moduleImports" .= is
        ]

namespaced :: ToJSON a
           => NS
           -> Template
           -> Either Error a
           -> DirTree (Either Error Rendered)
namespaced (unNS -> ns) t x =
    case map fromText ns of
        []  -> error "Empty namespace."
        [p] -> f p
        ps  -> foldr' nest (f (last ps)) (init ps)
  where
    f p = file' (p <.> "hs") t x

    nest d c = Dir (encodeString d) [c]

file' :: ToJSON a
      => Path
      -> Template
      -> Either Error a
      -> DirTree (Either Error Rendered)
file' (encodeString -> p) t f = File p $
    f >>= JS.objectErr p
      >>= fmapL LText.pack . eitherRender t

dir :: Path -> [DirTree a] -> DirTree a
dir p = Dir (encodeString p)

write :: DirTree (Either e a) -> DirTree (Either e (Maybe a))
write = fmap (second Just)

touch :: Text -> DirTree (Either e (Maybe a))
touch f = File (Text.unpack f) (Right Nothing)
