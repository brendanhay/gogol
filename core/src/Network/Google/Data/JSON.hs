{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ScopedTypeVariables        #-}

-- |
-- Module      : Network.Google.Data.JSON
-- Copyright   : (c) 2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Data.JSON
    ( JSONValue
    , Textual  (..)
    , parseJSONObject
    , parseJSONText
    , toJSONText

    -- * Re-exports
    , FromJSON (..)
    , ToJSON   (..)

    , withObject
    , emptyObject
    , object

    , (.=)
    , (.:)
    , (.:?)
    , (.!=)
    ) where

import           Data.Aeson
import           Data.Aeson.Types
import           Data.Data
import           Data.HashMap.Strict (HashMap)
import           Data.Text           (Text)
import qualified Data.Text           as Text
import           Servant.API

type JSONValue = Value

newtype Textual a = Textual a
    deriving (Eq, Ord, Read, Show, Num, Fractional, Data, Typeable, FromText, ToText)

instance (FromJSON a, FromText a) => FromJSON (Textual a) where
    parseJSON (String s) =
        case fromText s of
            Just x  -> pure (Textual x)
            Nothing -> fail $ "Failed to parse value from " ++ Text.unpack s
    parseJSON o          = Textual <$> parseJSON o

instance ToText a => ToJSON (Textual a) where
    toJSON (Textual x) = String (toText x)

parseJSONObject :: FromJSON a => HashMap Text Value -> Parser a
parseJSONObject = parseJSON . Object

parseJSONText :: FromText a => String -> Value -> Parser a
parseJSONText n = withText n (maybe (fail n) pure . fromText)

toJSONText :: ToText a => a -> Value
toJSONText = String . toText
