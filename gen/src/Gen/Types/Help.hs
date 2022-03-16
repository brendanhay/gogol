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
    , Nest (..)
    , rawHelpText
    , flattenHelp
    ) where

import           Data.Aeson
import           Data.String
import           Data.Text          (Text)
import qualified System.IO.Unsafe   as Unsafe

import           Text.Pandoc        as Pandoc
import           Text.DocLayout

import qualified Data.Char          as Char
import qualified Data.List          as List
import qualified Data.Text          as Text

data Help
    = Help ![Help]
    | Pan  !Pandoc !Text
    | Raw  !Text
      deriving (Eq)

instance Semigroup Help where
    (<>) x y =
        case (x, y) of
            (Help a,    Help b)    -> Help (a <> b)
            (Pan  a a', Pan  b b') -> Pan  (a <> b) (a' <> b')
            (Raw  a,    Raw  b)    -> Raw  (a <> b)
            (Help a,    b)         -> Help (a <> [b])
            (a,         Help b)    -> Help (a : b)
            (a,         b)         -> Help [a, b]

instance Monoid Help where
  mempty = Help []

-- | Empty Show instance to avoid verbose debugging output.
instance Show Help where
    show = const mempty

instance IsString Help where
    fromString = rawHelpText . fromString

rawHelpText :: Text -> Help
rawHelpText = Raw

instance FromJSON Help where
    parseJSON = withText "help" $ \t ->
        case (Unsafe.unsafePerformIO . Pandoc.runIO) (Pandoc.readHtml def t) of
            Left  e -> fail (show e)
            Right x -> pure $! Pan x t

instance ToJSON Help where
    toJSON = toJSON . Nest 0

data Nest = Nest !Int Help

instance ToJSON Nest where
    toJSON (Nest n h) =
      toJSON
        . mappend "-- |"
        . Text.map f
        . Text.drop (n + 2)
        . wrap (replicate n ' ' ++ "-- ")
        $ flattenHelp h
      where
        f '@' = '\''
        f  x  = x

data Desc = Desc !Int Help

instance ToJSON Desc where
    toJSON (Desc n h) =
      toJSON
        . Text.strip
        . wrap (replicate n ' ')
        $ flattenHelp h

flattenHelp :: Help -> String
flattenHelp =
  List.dropWhileEnd Char.isSpace . \case
    Help xs  -> foldMap flattenHelp xs
    Raw  t   -> Text.unpack t
    Pan  d _t -> Text.unpack ((Unsafe.unsafePerformIO . Pandoc.runIOorExplode) (Pandoc.writeHaddock def d))

wrap :: String -> String -> Text
wrap sep =
  Text.dropWhileEnd Char.isSpace
    . render (Just 76)
    . prefixed sep
    . fromString
