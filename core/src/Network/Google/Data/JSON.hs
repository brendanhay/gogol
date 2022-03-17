{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ScopedTypeVariables #-}

-- |
-- Module      : Network.Google.Data.JSON
-- Copyright   : (c) 2015-2022 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Network.Google.Data.JSON
  ( JSONValue,
    AsText (..),
    parseJSONObject,
    parseJSONText,
    toJSONText,

    -- * Re-exports
    FromJSON (..),
    FromJSONKey (..),
    ToJSON (..),
    ToJSONKey (..),
    withObject,
    emptyObject,
    object,
    (.=),
    (.:),
    (.:?),
    (.!=),
  )
where

import Data.Aeson
import Data.Aeson.Types
import Data.HashMap.Strict (HashMap)
import Data.Text (Text)
import qualified Data.Text as Text
import Web.HttpApiData (FromHttpApiData (..), ToHttpApiData (..))

type JSONValue = Value

newtype AsText a = AsText a
  deriving (Eq, Ord, Read, Show, Num, Fractional, ToHttpApiData, FromHttpApiData)

instance (FromJSON a, FromHttpApiData a) => FromJSON (AsText a) where
  parseJSON (String s) = either (fail . Text.unpack) (pure . AsText) (parseQueryParam s)
  parseJSON o = AsText <$> parseJSON o

instance ToHttpApiData a => ToJSON (AsText a) where
  toJSON (AsText x) = String (toQueryParam x)

parseJSONObject :: FromJSON a => HashMap Text Value -> Parser a
parseJSONObject = parseJSON . Object

parseJSONText :: FromHttpApiData a => String -> Value -> Parser a
parseJSONText n = withText n (either (fail . f) pure . parseQueryParam)
  where
    f x = n ++ " - " ++ Text.unpack x

toJSONText :: ToHttpApiData a => a -> Value
toJSONText = String . toQueryParam
