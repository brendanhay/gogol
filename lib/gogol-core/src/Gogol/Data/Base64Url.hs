{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- |
-- Module      : Gogol.Data.Base64
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gogol.Data.Base64Url
  ( Base64Url (..),
    _Base64Url,
  )
where

import Control.Lens (Iso', iso)
import Data.Aeson (FromJSON (..), ToJSON (..))
import Data.Base64.Types qualified as Base64
import Data.ByteString (ByteString)
import Data.ByteString.Base64.URL qualified as Base64Url
import Data.Hashable
import Data.Text.Encoding qualified as Text
import GHC.Generics (Generic)
import Gogol.Data.JSON (parseJSONText, toJSONText)
import Web.HttpApiData (FromHttpApiData (..), ToHttpApiData (..))

-- | Raw bytes that will be transparently base64 encoded\/decoded
-- on tramission to\/from a remote API.
newtype Base64Url = Base64Url {fromBase64Url :: ByteString}
  deriving (Eq, Show, Read, Ord, Generic, Hashable)

_Base64Url :: Iso' Base64Url ByteString
_Base64Url = iso fromBase64Url Base64Url

instance ToHttpApiData Base64Url where
  toUrlPiece = Base64.extractBase64 . Base64Url.encodeBase64 . fromBase64Url
  toQueryParam = Base64.extractBase64 . Base64Url.encodeBase64 . fromBase64Url
  toHeader = Base64.extractBase64 . Base64Url.encodeBase64' . fromBase64Url

instance FromHttpApiData Base64Url where
  parseUrlPiece = fmap Base64Url . Base64Url.decodeBase64Untyped . Text.encodeUtf8
  parseQueryParam = fmap Base64Url . Base64Url.decodeBase64Untyped . Text.encodeUtf8
  parseHeader = fmap Base64Url . Base64Url.decodeBase64Untyped

instance FromJSON Base64Url where
  parseJSON = parseJSONText "Base64Url"

instance ToJSON Base64Url where
  toJSON = toJSONText

