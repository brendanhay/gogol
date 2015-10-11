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
import           Data.HashMap.Strict (HashMap)
import           Data.Text           (Text)
import           Servant.API

type JSONValue = Value

parseJSONObject :: FromJSON a => HashMap Text Value -> Parser a
parseJSONObject = parseJSON . Object

parseJSONText :: FromText a => String -> Value -> Parser a
parseJSONText n = withText n (maybe (fail n) pure . fromText)

toJSONText :: ToText a => a -> Value
toJSONText = String . toText
