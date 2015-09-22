{-# LANGUAGE OverloadedStrings #-}

-- Module      : Gen.Types.NS
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.NS where

import           Data.Aeson
import           Data.Monoid
import           Data.Semigroup
import           Data.String
import           Data.Text                 (Text)
import qualified Data.Text                 as Text
import qualified Filesystem.Path.CurrentOS as Path

newtype NS = NS [Text]
    deriving (Eq, Ord, Show)

mkNS :: Text -> NS
mkNS = NS . Text.splitOn "."

nsToPath :: NS -> Path.FilePath
nsToPath (NS xs) = Path.fromText (Text.intercalate "/" xs) Path.<.> "hs"

instance IsString NS where
    fromString "" = mempty
    fromString s  = mkNS (fromString s)

instance Monoid NS where
    mempty = NS []
    mappend (NS xs) (NS ys)
        | null xs   = NS ys
        | null ys   = NS xs
        | otherwise = NS (mappend xs ys)

instance Semigroup NS where
    (<>) = mappend

instance FromJSON NS where
    parseJSON = withText "namespace" (pure . mkNS)

instance ToJSON NS where
    toJSON (NS xs) = toJSON (Text.intercalate "." xs)
