{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE LambdaCase #-}

-- Module      : Gen.Types.NS
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.NS
  ( NS,
    mkNS,
    unNS,
    collapseNS,
    renderNS,
  )
where

import Data.Aeson
import Data.String
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Text.Manipulate

newtype NS = NS {unNS :: [Text]}
  deriving (Eq, Ord, Show)

mkNS :: Text -> NS
mkNS = NS . map upperHead . Text.split (== '.')

instance IsString NS where
  fromString "" = mempty
  fromString s = mkNS (fromString s)

instance Semigroup NS where
  NS xs <> NS ys
    | null xs = NS ys
    | null ys = NS xs
    | otherwise = NS (mappend xs ys)

instance Monoid NS where
  mempty = NS []

collapseNS :: NS -> NS
collapseNS (NS xs) = NS (squeeze xs)
 where
   squeeze = \case
      x : y : ys | x == y -> squeeze (y : ys)
      x : xs -> x : squeeze xs
      [] -> []

instance FromJSON NS where
  parseJSON = withText "namespace" (pure . mkNS)

instance ToJSON NS where
  toJSON = toJSON . renderNS

renderNS :: NS -> Text
renderNS (NS xs) = Text.intercalate "." xs
