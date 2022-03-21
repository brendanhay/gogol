-- |
-- Module      : Gogol.Data.Base64
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gogol.Data.Base64
  ( Base64 (..),
  )
where

import qualified Data.ByteString.Base64 as Base64
import qualified Data.Text.Encoding as Text
import Gogol.Data.JSON
import Gogol.Prelude

-- | Raw bytes that will be transparently base64 encoded\/decoded
-- on tramission to\/from a remote API.
newtype Base64 = Base64 {fromBase64 :: ByteString}
  deriving stock (Show, Read, Eq, Ord, Generic)
  deriving newtype (Hashable, NFData)

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
  toEncoding = toEncodingText
