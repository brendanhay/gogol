-- |
-- Module      : Gogol.Data.Time
-- Copyright   : (c) 2015-2022 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gogol.Data.Time
  ( Time (..),
    Date (..),
    DateTime (..),
    Duration,
  )
where

import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Types as Aeson.Types
import Data.Attoparsec.Text as Atto
import Data.Bits ((.&.))
import qualified Data.Char as Char
import qualified Data.Scientific as Scientific
import qualified Data.Text as Text
import qualified Data.Text.Lazy as Text.Lazy
import qualified Data.Text.Lazy.Builder as Text.Builder
import qualified Data.Text.Lazy.Builder.Scientific as Scientific
import Data.Time (TimeOfDay (..))
import qualified Data.Time as Time
import Gogol.Data.JSON
import Gogol.Prelude

-- import GHC.Generics

-- | This SHOULD be a time in the format of hh:mm:ss.  It is
-- recommended that you use the "date-time" format instead of "time"
-- unless you need to transfer only the time part.
newtype Time = Time {fromTime :: TimeOfDay}
  deriving stock (Show, Read, Eq, Ord, Generic)

instance ToHttpApiData Time where
  toQueryParam = Text.pack . show . fromTime

instance FromHttpApiData Time where
  parseQueryParam = second Time . parseText timeParser

instance ToJSON Time where
  toJSON = Aeson.toJSON . toQueryParam
  toEncoding = Aeson.toEncoding . toQueryParam

instance FromJSON Time where
  parseJSON = fmap Time . Aeson.withText name (runParser name timeParser)
    where
      name = "Time"

-- | This SHOULD be a date in the format of @YYYY-MM-DD@. It is
-- recommended that you use the "date-time" format instead of "date"
-- unless you need to transfer only the date part.
newtype Date = Date {fromDate :: Day}
  deriving stock (Show, Read, Eq, Ord, Generic)
  deriving newtype (ToHttpApiData, FromHttpApiData)

instance ToJSON Date where
  toJSON = Aeson.toJSON . toQueryParam
  toEncoding = Aeson.toEncoding . toQueryParam

instance FromJSON Date where
  parseJSON = fmap Date . Aeson.withText name (runParser name dayParser)
    where
      name = "Date"

instance FromJSON DateTime where
  parseJSON = fmap DateTime . Aeson.parseJSON

-- | This SHOULD be a date in ISO 8601 format of @YYYY-MM-DDThh:mm:ssZ@ in
-- UTC time. This is the recommended form of date/timestamp.
newtype DateTime = DateTime {fromDateTime :: UTCTime}
  deriving stock (Show, Read, Eq, Ord, Generic)
  deriving newtype (ToHttpApiData, FromHttpApiData)

instance ToJSON DateTime where
  toJSON = Aeson.toJSON . fromDateTime
  toEncoding = Aeson.toEncoding . fromDateTime

-- | A duration in seconds with up to nine fractional digits, terminated by 's'.
--
-- /Example/: @"3.5s"@.
newtype Duration = Duration {fromDuration :: Scientific}
  deriving stock (Show, Read, Eq, Ord, Generic)

instance ToHttpApiData Duration where
  toQueryParam =
    Text.Lazy.toStrict
      . (\seconds -> Text.Builder.toLazyText seconds <> "s")
      . Scientific.formatScientificBuilder Scientific.Fixed (Just 9)
      . fromDuration

instance FromHttpApiData Duration where
  parseQueryParam = second Duration . parseText durationParser

instance ToJSON Duration where
  toJSON = Aeson.String . toQueryParam

instance FromJSON Duration where
  parseJSON = fmap Duration . Aeson.withText name (runParser name durationParser)
    where
      name = "Duration"

parseText :: Parser a -> Text -> Either Text a
parseText p = first Text.pack . parseOnly p

-- | Parse a time of the form @HH:MM:SS@.
timeParser :: Parser TimeOfDay
timeParser = do
  h <- twoDigits <* Atto.char ':'
  m <- twoDigits <* Atto.char ':'
  s <- twoDigits <&> fromIntegral

  if h < 24 && m < 60 && s < 61
    then pure (TimeOfDay h m s)
    else fail "invalid Time"

-- | Parse a date of the form @YYYY-MM-DD@.
dayParser :: Parser Day
dayParser = do
  y <- Atto.decimal <* Atto.char '-'
  m <- twoDigits <* Atto.char '-'
  d <- twoDigits

  maybe (fail "invalid Date") pure (Time.fromGregorianValid y m d)

-- | Parse a duration in seconds of the form @<double>s@.
durationParser :: Parser Scientific
durationParser = Scientific.fromFloatDigits <$> (Atto.double <* Atto.char 's')

-- | Run an attoparsec parser as an aeson parser.
runParser :: String -> Parser a -> Text -> Aeson.Types.Parser a
runParser name parser input =
  case Atto.parseOnly (parser <* Atto.endOfInput) input of
    Left err -> fail $ "could not parse " ++ name ++ ": " ++ err ++ " from input " ++ show input
    Right ok -> pure ok

-- | Parse a two-digit integer (e.g. day of month, hour).
twoDigits :: Parser Int
twoDigits = do
  a <- Atto.digit
  b <- Atto.digit

  let c2d c = Char.ord c .&. 15

  pure $! c2d a * 10 + c2d b
