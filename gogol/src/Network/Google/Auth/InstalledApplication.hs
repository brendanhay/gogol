{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Network.Google.Auth.InstalledApplication
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Network.Google.Auth.InstalledApplication where

import           Control.Applicative
import           Control.Concurrent
import           Control.Exception.Lens
import           Control.Lens                   hiding (coerce, (.=))
import           Control.Monad
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Crypto.Hash.Algorithms         (SHA256 (..))
import           Crypto.PubKey.RSA.PKCS15       (signSafer)
import           Crypto.PubKey.RSA.Types        (PrivateKey)
import           Data.Aeson
import           Data.Aeson.Types
import           Data.ByteArray
import           Data.ByteArray.Encoding
import           Data.ByteString                (ByteString)
import           Data.ByteString.Builder        (Builder)
import qualified Data.ByteString.Builder        as Build
import qualified Data.ByteString.Char8          as BS8
import qualified Data.ByteString.Lazy           as LBS
import           Data.Coerce
import           Data.Default.Class             (def)
import           Data.List                      (intersperse)
import           Data.String
import qualified Data.Text                      as Text
import qualified Data.Text.Encoding             as Text
import qualified Data.Text.Lazy                 as LText
import qualified Data.Text.Lazy.Builder         as TBuild
import qualified Data.Text.Lazy.Encoding        as LText
import           Data.Time
import           Data.Time.Clock.POSIX
import           Data.Typeable
import           Data.X509
import           Data.X509.Memory
import           Network.Google.Internal.Auth
import           Network.Google.Internal.Logger
import           Network.Google.Prelude
import           Network.HTTP.Conduit           hiding (Request)
import qualified Network.HTTP.Conduit           as Client
import           Network.HTTP.Types

-- | @urn:ietf:wg:oauth:2.0:oob@.
redirectURI :: Text
redirectURI = "urn:ietf:wg:oauth:2.0:oob"

-- | Given an 'OAuthClient' and a list of scopes to authorize,
-- construct a URL that can be used to obtain the 'OAuthCode' required to
-- instantiate 'FromClient'-style credentials. The received code can be used
-- with 'exchangeCode'.
--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2InstalledApp#formingtheurl Forming the URL>.
formURL :: OAuthClient -> [OAuthScope] -> Text
formURL c ss = accountsURL
    <> "?response_type=code"
    <> "&client_id="    <> toText (_clientId c)
    <> "&redirect_uri=" <> redirectURI
    <> "&scope="        <> Text.decodeUtf8 (queryEncodeScopes ss)

-- | Exchange your 'OAuthClient' details and the 'OAuthCode' you received from
-- using 'formURL' with a valid 'OAuthToken'.
--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2InstalledApp#handlingtheresponse Exchanging the code>.
exchangeCode :: (MonadIO m, MonadCatch m)
             => OAuthClient
             -> OAuthCode
             -> Logger
             -> Manager
             -> m OAuthToken
exchangeCode c n = refreshRequest $
    accountsRequest
        { Client.requestBody = textBody $
               "grant_type=authorization_code"
            <> "&client_id="     <> toText (_clientId     c)
            <> "&client_secret=" <> toText (_clientSecret c)
            <> "&code="          <> toText n
            <> "&redirect_uri="  <> redirectURI
        }

-- | Perform a refresh to obtain a valid 'OAuthToken' with a new expiry time.
--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2InstalledApp#refresh Refreshing tokens>.
refreshToken :: (MonadIO m, MonadCatch m)
             => OAuthClient
             -> OAuthToken
             -> Logger
             -> Manager
             -> m OAuthToken
refreshToken c t = refreshRequest $
    accountsRequest
        { Client.requestBody = textBody $
               "grant_type=refresh_token"
            <> "&client_id="     <> toText (_clientId     c)
            <> "&client_secret=" <> toText (_clientSecret c)
            <> maybe mempty ("&refresh_token=" <>) (toText <$> _tokenRefresh t)
        }
