{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- |
-- Module      : Network.Google.Data.Base64
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Data.Base64
    ( Base64 (..)
    , _Base64
    ) where

import           Control.Lens             (Iso', iso)
import           Data.Aeson               (FromJSON (..), ToJSON (..))
import qualified Data.ByteArray.Encoding  as BA
import           Data.ByteString          (ByteString)
import qualified Data.ByteString.Char8    as BS8
import           Data.Data                (Data, Typeable)
import           Data.Hashable
import qualified Data.Text.Encoding       as Text
import           GHC.Generics             (Generic)
import           Network.Google.Data.JSON (parseJSONText, toJSONText)
import           Web.HttpApiData          (FromHttpApiData (..),
                                           ToHttpApiData (..))

-- | Base64 encoded binary data.
--
-- Encoding\/decoding is automatically deferred to serialisation and deserialisation
-- respectively.
newtype Base64 = Base64 { unBase64 :: ByteString }
    deriving (Eq, Read, Ord, Data, Typeable, Generic)

instance Hashable Base64

_Base64 :: Iso' Base64 ByteString
_Base64 = iso unBase64 Base64

instance ToHttpApiData Base64 where
    toQueryParam = Text.decodeUtf8 . toHeader
    toHeader     = BA.convertToBase BA.Base64 . unBase64

instance FromHttpApiData Base64 where
    parseQueryParam = parseHeader . Text.encodeUtf8
    parseHeader     = either fail (pure . Base64) . BA.convertFromBase BA.Base64

instance Show     Base64 where show      = show . BS8.unpack . unBase64
instance FromJSON Base64 where parseJSON = parseJSONText "Base64"
instance ToJSON   Base64 where toJSON    = toJSONText
