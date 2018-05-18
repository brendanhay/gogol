{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Gen.Types.Help
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.Help
    ( Help
    , Desc (..)
    , Below (..)
    , rawHelpText
    ) where

import Data.Aeson
import Data.Char   (isSpace)
import Data.String
import Data.Text   (Text)

import Text.Pandoc        as Pandoc
import Text.Pandoc.Pretty

import qualified Data.Text as Text

data Help
    = Help ![Help]
    | Pan  !Pandoc !Text
    | Raw  !Text
      deriving (Eq)

instance Monoid Help where
    mempty      = Help []
    mappend x y =
        case (x, y) of
            (Help a,    Help b)    -> Help (a <> b)
            (Pan  a a', Pan  b b') -> Pan  (a <> b) (a' <> b')
            (Raw  a,    Raw  b)    -> Raw  (a <> b)
            (Help a,    b)         -> Help (a <> [b])
            (a,         Help b)    -> Help (a : b)
            (a,         b)         -> Help [a, b]

-- | Empty Show instance to avoid verbose debugging output.
instance Show Help where
    show = const mempty

instance IsString Help where
    fromString = rawHelpText . fromString

rawHelpText :: Text -> Help
rawHelpText = Raw

instance FromJSON Help where
    parseJSON = withText "help" $ \t ->
        case Pandoc.runPure (Pandoc.readHtml def t) of
            Left  e -> fail (show e)
            Right x -> pure $! Pan x t

instance ToJSON Help where
    toJSON = toJSON
        . mappend "-- |"
        . Text.map f
        . Text.drop 2
        . wrap "-- "
        . flatten
      where
        f '@' = '\''
        f  x  = x

data Desc = Desc !Int Help

instance ToJSON Desc where
    toJSON (Desc n h) = toJSON . wrap (replicate n ' ') $ flatten h

data Below = Below !Int Help

instance ToJSON Below where
    toJSON (Below n h) = toJSON . wrap (replicate n ' ' <> "-- ") $ flatten h

flatten :: Help -> String
flatten = \case
    Help xs  -> foldMap flatten xs
    Raw  t   -> Text.unpack t
    Pan  d t -> Text.unpack $
        case Pandoc.runPure (Pandoc.writeHaddock def d) of
            Left  {} -> t
            Right x  -> x

wrap :: String -> String -> Text
wrap sep =
      Text.dropWhileEnd isSpace
    . render (Just 76)
    . prefixed sep
    . fromString
