{-# LANGUAGE CPP #-}

-- |
-- Module      : Gogol.Data.JSON
-- Copyright   : (c) 2015-2022 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gogol.Data.JSON
  ( Value,
    AsText (..),
    parseJSONObject,
    parseJSONText,
    toJSONText,
    toEncodingText,

    -- * Re-exports
    FromJSON (..),
    FromJSONKey (..),
    ToJSON (..),
    ToJSONKey (..),
    withObject,
    object,
    (.=),
    (.:),
    (.:?),
    (.!=),
  )
where

import Data.Aeson
import qualified Data.Aeson.Encoding as Aeson.Encoding
import qualified Data.Aeson.Types as Aeson.Types
import qualified Data.Text as Text
import Gogol.Prelude

#if MIN_VERSION_aeson(2,0,0)
import Data.Aeson.KeyMap (KeyMap)
#else
import Data.HashMap.Strict (HashMap)
import Data.Text (Text)
#endif

newtype AsText a = AsText a
  deriving stock (Show, Read, Eq, Ord, Generic)
  deriving newtype (Hashable, NFData, IsString, Num, Fractional, ToHttpApiData, FromHttpApiData)

instance (FromJSON a, FromHttpApiData a) => FromJSON (AsText a) where
  parseJSON (String s) = either (fail . Text.unpack) (pure . AsText) (parseQueryParam s)
  parseJSON o = AsText <$> parseJSON o

instance ToHttpApiData a => ToJSON (AsText a) where
  toJSON (AsText x) = String (toQueryParam x)

#if MIN_VERSION_aeson(2,0,0)
parseJSONObject :: FromJSON a => KeyMap Value -> Aeson.Types.Parser a
#else
parseJSONObject :: FromJSON a => HashMap Text Value -> Aeson.Types.Parser a
#endif
parseJSONObject = parseJSON . toJSON

parseJSONText :: FromHttpApiData a => String -> Value -> Aeson.Types.Parser a
parseJSONText n = withText n (either (fail . f) pure . parseQueryParam)
  where
    f x = n ++ " - " ++ Text.unpack x

toJSONText :: ToHttpApiData a => a -> Value
toJSONText = String . toQueryParam

toEncodingText :: ToHttpApiData a => a -> Aeson.Encoding.Encoding
toEncodingText = toEncoding . toQueryParam
