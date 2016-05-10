{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ScopedTypeVariables        #-}

-- |
-- Module      : Network.Google.Data.JSON
-- Copyright   : (c) 2015-2016 Brendan Hay <brendan.g.hay@gmail.com>
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
import           Web.HttpApiData     (FromHttpApiData (..), ToHttpApiData (..))

type JSONValue = Value

newtype Textual a = Textual a
    deriving
        ( Eq
        , Ord
        , Read
        , Show
        , Num
        , Fractional
        , Data
        , Typeable
        , ToHttpApiData
        , FromHttpApiData
        )

instance (FromJSON a, FromHttpApiData a) => FromJSON (Textual a) where
    parseJSON (String s) =
        either (fail . Text.unpack) (pure . Textual) (parseQueryParam s)
    parseJSON o          = Textual <$> parseJSON o

instance ToHttpApiData a => ToJSON (Textual a) where
    toJSON (Textual x) = String (toQueryParam x)

parseJSONObject :: FromJSON a => HashMap Text Value -> Parser a
parseJSONObject = parseJSON . Object

parseJSONText :: FromHttpApiData a => String -> Value -> Parser a
parseJSONText n = withText n (either (fail . f) pure . parseQueryParam)
  where
    f x = n ++ " - " ++ Text.unpack x

toJSONText :: ToHttpApiData a => a -> Value
toJSONText = String . toQueryParam
