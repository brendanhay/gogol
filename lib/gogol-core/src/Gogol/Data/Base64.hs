{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- |
-- Module      : Gogol.Data.Base64
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gogol.Data.Base64
  ( Base64 (..),
    _Base64,
  )
where

import Control.Lens (Iso', iso)
import Data.Aeson (FromJSON (..), ToJSON (..))
import Data.ByteString (ByteString)
import qualified Data.ByteString.Base64.URL as Base64
import Data.Hashable
import qualified Data.Text.Encoding as Text
import GHC.Generics (Generic)
import Gogol.Data.JSON (parseJSONText, toJSONText)
import Web.HttpApiData (FromHttpApiData (..), ToHttpApiData (..))

-- | Raw bytes that will be transparently base64 encoded\/decoded
-- on tramission to\/from a remote API.
newtype Base64 = Base64 {fromBase64 :: ByteString}
  deriving (Eq, Show, Read, Ord, Generic, Hashable)

_Base64 :: Iso' Base64 ByteString
_Base64 = iso fromBase64 Base64

instance ToHttpApiData Base64 where
  toUrlPiece = Base64.encodeBase64 . fromBase64
  toQueryParam = Base64.encodeBase64 . fromBase64
  toHeader = Base64.encodeBase64' . fromBase64

instance FromHttpApiData Base64 where
  parseUrlPiece = fmap Base64 . Base64.decodeBase64 . Text.encodeUtf8
  parseQueryParam = fmap Base64 . Base64.decodeBase64 . Text.encodeUtf8
  parseHeader = fmap Base64 . Base64.decodeBase64

instance FromJSON Base64 where
  parseJSON = parseJSONText "Base64"

instance ToJSON Base64 where
  toJSON = toJSONText
