{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Gen.Types.NS
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.NS
  ( NS (UnsafeNS),
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

newtype NS = UnsafeNS {unNS :: [Text]}
  deriving (Eq, Ord, Show)

mkNS :: Text -> NS
mkNS = UnsafeNS . map upperHead . Text.split (== '.')

instance IsString NS where
  fromString "" = mempty
  fromString s = mkNS (fromString s)

instance Semigroup NS where
  UnsafeNS xs <> UnsafeNS ys
    | null xs = UnsafeNS ys
    | null ys = UnsafeNS xs
    | otherwise = UnsafeNS (mappend xs ys)

instance Monoid NS where
  mempty = UnsafeNS []

collapseNS :: NS -> NS
collapseNS (UnsafeNS xs) = UnsafeNS (squeeze xs)
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
renderNS (UnsafeNS xs) = Text.intercalate "." xs
