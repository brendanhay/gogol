-- |
-- Module      : Gen.Types.Help
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.Types.Help
  ( Help,
    Desc (..),
    Below (..),
    rawHelpText,
  )
where

import qualified Data.Aeson as Aeson
import qualified Data.Char as Char
import qualified Data.Text as Text
import Gen.Prelude
import qualified System.IO.Unsafe as Unsafe
import qualified Text.DocLayout as DocLayout
import Text.Pandoc (Pandoc)
import qualified Text.Pandoc as Pandoc

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
  parseJSON =
    Aeson.withText "Help" $ \t ->
      case Unsafe.unsafePerformIO $ Pandoc.runIO $ Pandoc.readHtml Pandoc.def t of
        Left e -> fail (show e)
        Right x -> pure $! Pan x t

instance ToJSON Help where
  toJSON =
    Aeson.toJSON
      . mappend "-- |"
      . Text.map f
      . Text.drop 2
      . wrap "-- "
      . flatten
    where
      f '@' = '\''
      f x = x

data Desc = Desc !Int Help

instance ToJSON Desc where
  toJSON (Desc n h) =
    Aeson.toJSON
      . wrap (replicate n ' ')
      $ flatten h

data Below = Below !Int Help

instance ToJSON Below where
  toJSON (Below n h) =
    Aeson.toJSON
      . wrap (replicate n ' ' <> "-- ")
      $ flatten h

flatten :: Help -> String
flatten = \case
  Help xs -> foldMap flatten xs
  Raw t -> Text.unpack t
  Pan d _t ->
    Text.unpack
      . Unsafe.unsafePerformIO
      . Pandoc.runIOorExplode
      $ Pandoc.writeHaddock Pandoc.def d

wrap :: String -> String -> Text
wrap sep =
  Text.dropWhileEnd Char.isSpace
    . DocLayout.render (Just 76)
    . DocLayout.prefixed sep
    . fromString
