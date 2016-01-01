{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- |
-- Module      : Network.Google.Data.Time
-- Copyright   : (c) 2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Data.Time
    ( Time'     (..)
    , Date'     (..)
    , DateTime' (..)

    , _Time
    , _Date
    , _DateTime
    ) where

import           Control.Applicative    (pure, (<*))
import           Control.Lens
import           Data.Aeson
import           Data.Aeson.Encode
import qualified Data.Aeson.Types       as Aeson
import           Data.Attoparsec.Text
import           Data.Bits              ((.&.))
import           Data.Char              (ord)
import           Data.Data              (Data, Typeable)
import           Data.Text              (Text)
import qualified Data.Text              as Text
import qualified Data.Text.Lazy         as LText
import qualified Data.Text.Lazy.Builder as Build
import           Data.Time
import           GHC.Generics
import           Servant.Common.Text

-- | This SHOULD be a time in the format of hh:mm:ss.  It is
-- recommended that you use the "date-time" format instead of "time"
-- unless you need to transfer only the time part.
newtype Time' = Time' TimeOfDay
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable)

_Time :: Iso' Time' TimeOfDay
_Time = iso (\(Time' t) -> t) Time'

-- | This SHOULD be a date in the format of YYYY-MM-DD.  It is
-- recommended that you use the "date-time" format instead of "date"
-- unless you need to transfer only the date part.
newtype Date' = Date' Day
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable)

_Date :: Iso' Date' Day
_Date = iso (\(Date' t) -> t) Date'

-- | This SHOULD be a date in ISO 8601 format of YYYY-MM-
-- DDThh:mm:ssZ in UTC time. This is the recommended form of date/timestamp.
newtype DateTime' = DateTime' UTCTime
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable)

_DateTime :: Iso' DateTime' UTCTime
_DateTime = iso (\(DateTime' t) -> t) DateTime'

instance FromText Time'     where fromText = fmap Time' . parseText timeParser
instance FromText Date'     where fromText = fmap Date' . parseText dayParser
instance FromText DateTime' where fromText = Aeson.parseMaybe parseJSON . String

instance FromJSON Time' where
    parseJSON = fmap Time' . withText "time" (run timeParser)

instance FromJSON Date' where
    parseJSON = fmap Date' . withText "date" (run dayParser)

instance FromJSON DateTime' where
    parseJSON = fmap DateTime' . parseJSON

-- FIXME: Revisit once aeson-0.10 is more widely available.
instance ToText Time'     where toText = Text.pack . show . view _Time
instance ToText Date'     where toText = Text.pack . show . view _Date
instance ToText DateTime' where toText = encodeText

-- FIXME: Revisit once aeson-0.10 is more widely available.
instance ToJSON Time'     where toJSON = String . toText
instance ToJSON Date'     where toJSON = String . toText
instance ToJSON DateTime' where toJSON = toJSON . view _DateTime

parseText :: Parser a -> Text -> Maybe a
parseText p = either (const Nothing) Just . parseOnly p

encodeText :: ToJSON a => a -> Text
encodeText = LText.toStrict . Build.toLazyText . encodeToTextBuilder . toJSON

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
    y <- decimal   <* char '-'
    m <- twoDigits <* char '-'
    d <- twoDigits
    maybe (fail "invalid date") pure (fromGregorianValid y m d)

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
        Right r  -> pure r
