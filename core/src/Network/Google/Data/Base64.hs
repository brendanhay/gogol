{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- |
-- Module      : Network.Google.Data.Base64
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Network.Google.Data.Base64
  ( Base64 (..),
    _Base64,
  )
where

import qualified Data.ByteString.Base64 as Base64
import Control.Lens (Iso', iso)
import Data.Aeson (FromJSON (..), ToJSON (..))
import Data.ByteString (ByteString)
import Data.Hashable
import qualified Data.Text.Encoding as Text
import GHC.Generics (Generic)
import Network.Google.Data.JSON (parseJSONText, toJSONText)
import Web.HttpApiData ( FromHttpApiData (..), ToHttpApiData (..))

newtype Base64 = Base64 {unBase64 :: ByteString}
  deriving (Eq, Show, Read, Ord, Generic, Hashable)

_Base64 :: Iso' Base64 ByteString
_Base64 = iso unBase64 Base64

instance ToHttpApiData Base64 where
  toUrlPiece = Base64.encodeBase64 . unBase64
  toQueryParam = Base64.encodeBase64 . unBase64
  toHeader = Base64.encodeBase64' . unBase64

instance FromHttpApiData Base64 where
  parseUrlPiece = fmap Base64 . Base64.decodeBase64 . Text.encodeUtf8
  parseQueryParam = fmap Base64 . Base64.decodeBase64 . Text.encodeUtf8
  parseHeader = fmap Base64 . Base64.decodeBase64

instance FromJSON Base64 where
  parseJSON = parseJSONText "Base64"

instance ToJSON Base64 where
  toJSON = toJSONText
