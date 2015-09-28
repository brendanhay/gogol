{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE GADTs                 #-}
{-# LANGUAGE LambdaCase            #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RecordWildCards       #-}
{-# LANGUAGE TupleSections         #-}
{-# LANGUAGE ViewPatterns          #-}

-- Module      : Gen.Tree
-- Copyright   : (c) 2015 Brendan Hay
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
import           Control.Monad
import           Control.Monad.Except
import           Data.Aeson                hiding (json)
import           Data.Bifunctor
import           Data.Foldable             (foldr')
import qualified Data.HashMap.Strict       as Map
import qualified Data.List.NonEmpty        as NE
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
populate d Templates{..} l = (encodeString d :/) . dir lib <$> layout
  where
    layout :: Either Error [DirTree Touch]
    layout = traverse sequenceA
        [ dir "src"
              -- Supress cabal warnings about directories listed that don't exist.
            [ touch ".gitkeep"
            ]

        , dir "gen" . concatMap service . NE.toList $ _libServices l

        , file (lib <.> "cabal") cabalTemplate
        , file "README.md" readmeTemplate
        ]

    service s =
        [ mod' (tocNS   s) (tocImports  s) tocTemplate (pure svc)
        , mod' (typesNS s) (typeImports s) typesTemplate (pure svc)
        , mod' (prodNS  s) (prodImports s) prodTemplate  (pure svc)
        , mod' (sumNS   s) (sumImports  s) sumTemplate   (pure svc)
        ] ++ map action (svcActions s)
      where
        action a =
            mod' (_actNS a) (actionImports s) actionTemplate
                . pure . Object $
                    act <> svc'
          where
            Object act  = object [ "action" .= a ]
            Object svc' = svc

        svc = toJSON s

    lib = fromText (_libName l)

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
namespaced (NS ns) t x =
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
