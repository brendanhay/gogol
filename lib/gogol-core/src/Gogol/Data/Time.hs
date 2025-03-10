{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}

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
    Duration (..),
    _Time,
    _Date,
    _DateTime,
    _Duration,
  )
where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types qualified as Aeson
import Data.Attoparsec.Text
import Data.Bifunctor (first, second)
import Data.Bits ((.&.))
import Data.Char (ord)
import Data.Scientific (Scientific)
import Data.Scientific qualified as Sci
import Data.Text (Text)
import Data.Text qualified as Text
import Data.Text.Lazy qualified as LText
import Data.Text.Lazy.Builder qualified as Build
import Data.Text.Lazy.Builder.Scientific qualified as Sci
import Data.Time
import GHC.Generics
import Web.HttpApiData
  ( FromHttpApiData (..),
    ToHttpApiData (..),
  )

-- | This SHOULD be a time in the format of hh:mm:ss.  It is
-- recommended that you use the "date-time" format instead of "time"
-- unless you need to transfer only the time part.
newtype Time = Time {fromTime :: TimeOfDay}
  deriving (Eq, Ord, Show, Read, Generic)

_Time :: Iso' Time TimeOfDay
_Time = iso fromTime Time

instance ToHttpApiData Time where
  toQueryParam = Text.pack . show . fromTime

instance FromHttpApiData Time where
  parseQueryParam = second Time . parseText timeParser

-- | This SHOULD be a date in the format of YYYY-MM-DD.  It is
-- recommended that you use the "date-time" format instead of "date"
-- unless you need to transfer only the date part.
newtype Date = Date {unDate :: Day}
  deriving (Eq, Ord, Show, Read, Generic, ToHttpApiData, FromHttpApiData)

_Date :: Iso' Date Day
_Date = iso unDate Date

-- | This SHOULD be a date in ISO 8601 format of YYYY-MM-
-- DDThh:mm:ssZ in UTC time. This is the recommended form of date/timestamp.
newtype DateTime = DateTime {unDateTime :: UTCTime}
  deriving (Eq, Ord, Show, Read, Generic, ToHttpApiData, FromHttpApiData)

_DateTime :: Iso' DateTime UTCTime
_DateTime = iso unDateTime DateTime

-- | A duration in seconds with up to nine fractional digits, terminated by 's'.
--
-- /Example/: @"3.5s"@.
newtype Duration = Duration {unDuration :: Scientific}
  deriving (Eq, Ord, Show, Read, Generic)

_Duration :: Iso' Duration Scientific
_Duration = iso unDuration Duration

instance ToHttpApiData Duration where
  toQueryParam =
    LText.toStrict
      . (\seconds -> Build.toLazyText seconds <> "s")
      . Sci.formatScientificBuilder Sci.Fixed (Just 9)
      . unDuration

instance FromHttpApiData Duration where
  parseQueryParam = second Duration . parseText durationParser

instance ToJSON Time where toJSON = String . toQueryParam

instance ToJSON Date where toJSON = String . toQueryParam

instance ToJSON DateTime where toJSON = toJSON . unDateTime

instance ToJSON Duration where toJSON = String . toQueryParam

instance FromJSON Time where
  parseJSON = fmap Time . withText "Time" (run timeParser)

instance FromJSON Date where
  parseJSON = fmap Date . withText "Date" (run dayParser)

instance FromJSON DateTime where
  parseJSON = fmap DateTime . parseJSON

instance FromJSON Duration where
  parseJSON = fmap Duration . withText "Duration" (run durationParser)

parseText :: Parser a -> Text -> Either Text a
parseText p = first Text.pack . parseOnly p

-- | Parse a time of the form @HH:MM:SS@.
timeParser :: Parser TimeOfDay
timeParser = do
  h <- twoDigits <* char ':'
  m <- twoDigits <* char ':'
  s <- twoDigits <&> fromIntegral
  if h < 24 && m < 60 && s < 61
    then pure (TimeOfDay h m s)
    else fail "invalid time"

-- | Parse a date of the form @YYYY-MM-DD@.
dayParser :: Parser Day
dayParser = do
  y <- decimal <* char '-'
  m <- twoDigits <* char '-'
  d <- twoDigits
  maybe (fail "invalid date") pure (fromGregorianValid y m d)

durationParser :: Parser Scientific
durationParser = Sci.fromFloatDigits <$> (double <* char 's')

-- | Parse a two-digit integer (e.g. day of month, hour).
twoDigits :: Parser Int
twoDigits = do
  a <- digit
  b <- digit
  let c2d c = ord c .&. 15
  pure $! c2d a * 10 + c2d b

-- | Run an attoparsec parser as an aeson parser.
run :: Parser a -> Text -> Aeson.Parser a
run p t =
  case parseOnly (p <* endOfInput) t of
    Left err -> fail $ "could not parse date: " ++ err
    Right r -> pure r
