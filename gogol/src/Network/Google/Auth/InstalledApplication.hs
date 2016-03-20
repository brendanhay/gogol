{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Network.Google.Auth.InstalledApplication
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Auth.InstalledApplication where

import           Control.Monad.Catch            (MonadCatch)
import           Control.Monad.IO.Class         (MonadIO)
import qualified Data.Text.Encoding             as Text
import           Network.Google.Auth.Scope      (Allow (..), queryEncodeScopes)
import           Network.Google.Internal.Auth
import           Network.Google.Internal.Logger (Logger)
import           Network.Google.Prelude
import           Network.HTTP.Conduit           (Manager)
import qualified Network.HTTP.Conduit           as Client

-- | @urn:ietf:wg:oauth:2.0:oob@.
redirectURI :: Text
redirectURI = "urn:ietf:wg:oauth:2.0:oob"

-- | Given an 'OAuthClient' and a list of scopes to authorize,
-- construct a URL that can be used to obtain the 'OAuthCode' required to
-- instantiate 'FromClient'-style credentials. The received code can be used
-- with 'exchangeCode'.
--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2InstalledApp#formingtheurl Forming the URL>.
formURL :: Allow s => OAuthClient -> proxy s -> Text
formURL c = formURLWith c . allowScopes

-- | Form a URL using 'OAuthScope' values.
--
-- /See:/ 'formURL'.
formURLWith :: OAuthClient -> [OAuthScope] -> Text
formURLWith c ss = accountsURL
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
