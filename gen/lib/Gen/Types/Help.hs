{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Gen.Types.Help
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.Help
  ( Help,
    Desc (..),
    Nest (..),
    rawHelpText,
    flattenHelp,
  )
where

import Data.Aeson
import qualified Data.Char as Char
import Data.Int (Int64)
import Data.String
import Data.Text (Text)
import qualified Data.Text.Lazy as Text.Lazy
import qualified System.IO.Unsafe as Unsafe
import Text.Pandoc (Pandoc, PandocError)
import qualified Text.Pandoc as Pandoc

type TextLazy = Text.Lazy.Text

data Help
  = Help ![Help]
  | Pan !Pandoc !Text
  | Raw !Text
  deriving (Eq)

instance Semigroup Help where
  (<>) x y =
    case (x, y) of
      (Help a, Help b) -> Help (a <> b)
      (Pan a a', Pan b b') -> Pan (a <> b) (a' <> b')
      (Raw a, Raw b) -> Raw (a <> b)
      (Help a, b) -> Help (a <> [b])
      (a, Help b) -> Help (a : b)
      (a, b) -> Help [a, b]

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
    case readMarkdown t of
      Left e -> fail (show e)
      Right x -> pure $! Pan x t

instance ToJSON Help where
  toJSON = toJSON . Nest 0

data Nest = Nest !Int64 Help

instance ToJSON Nest where
  toJSON (Nest n h) =
    toJSON
      . mappend "-- |"
      . Text.Lazy.map f
      . Text.Lazy.drop (n + 2)
      . wrap (Text.Lazy.replicate n " " <> "-- ")
      $ flattenHelp h
    where
      f '@' = '\''
      f x = x

data Desc = Desc !Int64 Help

instance ToJSON Desc where
  toJSON (Desc n h) =
    toJSON
      . wrap (Text.Lazy.replicate n " ")
      $ flattenHelp h

flattenHelp :: Help -> TextLazy
flattenHelp = \case
  Help xs -> foldMap flattenHelp xs
  Raw t -> Text.Lazy.fromStrict t
  Pan d _t -> either (error . show) Text.Lazy.fromStrict (writeHaddock d)

wrap :: TextLazy -> TextLazy -> TextLazy
wrap sep =
  Text.Lazy.dropWhileEnd Char.isSpace
    . Text.Lazy.unlines
    . map (mappend sep)
    . Text.Lazy.lines

readMarkdown :: Text -> Either PandocError Pandoc
readMarkdown =
  Unsafe.unsafePerformIO
    . Pandoc.runIO
    . Pandoc.readMarkdown (Pandoc.def {Pandoc.readerColumns = 2048})

-- readHTML :: Text -> Either PandocError Pandoc
-- readHTML =
--   Unsafe.unsafePerformIO
--     . Pandoc.runIO
--     . Pandoc.readHtml (Pandoc.def { Pandoc.readerColumns = 2048 })

writeHaddock :: Pandoc -> Either PandocError Text
writeHaddock =
  Unsafe.unsafePerformIO
    . Pandoc.runIO
    . Pandoc.writeHaddock options
  where
    options =
      Pandoc.def
        { Pandoc.writerWrapText = Pandoc.WrapAuto,
          Pandoc.writerColumns = 2048
        }
