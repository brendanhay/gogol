{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- |
-- Module      : Network.Google.Data.Bytes
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Data.Bytes
    ( Bytes (..)
    , _Bytes
    ) where

import           Control.Lens             (Iso', iso)
import           Data.Aeson               (FromJSON (..), ToJSON (..))
import           Data.ByteString          (ByteString)
import           Data.Data                (Data, Typeable)
import           Data.Hashable
import qualified Data.Text.Encoding       as Text
import           GHC.Generics             (Generic)
import           Network.Google.Data.JSON (parseJSONText, toJSONText)
import           Web.HttpApiData          (FromHttpApiData (..),
                                           ToHttpApiData (..))
-- | Binary data.
--
-- This data is passed to/from the serialisation routines as-is, and any
-- particular encoding or decoding (say, base64) is left up to the caller.
newtype Bytes = Bytes { unBytes :: ByteString }
    deriving (Eq, Show, Read, Ord, Data, Typeable, Generic)

instance Hashable Bytes

_Bytes :: Iso' Bytes ByteString
_Bytes = iso unBytes Bytes

instance ToHttpApiData Bytes where
    toQueryParam = Text.decodeUtf8 . unBytes
    toHeader     = unBytes

instance FromHttpApiData Bytes where
    parseQueryParam = pure . Bytes . Text.encodeUtf8
    parseHeader     = pure . Bytes

instance FromJSON Bytes where parseJSON = parseJSONText "Bytes"
instance ToJSON   Bytes where toJSON    = toJSONText
