{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PolyKinds #-}

-- |
-- Module      : Gogol.Auth.ServiceAccount
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Credentials for Server to Server communication, such as between a deployed web
-- application and a Google service.
--
-- Typically, an application uses a service account when the application uses
-- Google services to work with its own data rather than a specific user's data.
--
-- /See:/ <https://developers.google.com/identity/protocols/OAuth2ServiceAccount Service Account Documentation>.
module Gogol.Auth.ServiceAccount
  ( ServiceAccount (..),
    AuthorizedUser (..),
    maxTokenLifetime,
    metadataToken,
    authorizedUserToken,
    serviceAccountToken,
    encodeBearerJWT,
  )
where

import Control.Monad.Catch
import Control.Monad.IO.Class
import Crypto.Hash.Algorithms (SHA256 (..))
import Crypto.PubKey.RSA.PKCS15 (signSafer)
import Data.Aeson
import qualified Data.ByteString.Char8 as BS8
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text
import Data.Time.Clock.POSIX
import Gogol.Auth.Scope (KnownScopes (..), concatScopes)
import Gogol.Compute.Metadata
import Gogol.Internal.Auth
import Gogol.Internal.Logger
import Gogol.Prelude hiding (buildText)
import Network.HTTP.Conduit hiding (Request)
import qualified Network.HTTP.Conduit as Client

-- | The maximum lifetime of a @service_account@ token which is 1 hour, in seconds.
maxTokenLifetime :: Seconds
maxTokenLifetime = 3600

-- | Obtain an 'OAuthToken' from the local instace metadata
-- using the specific 'ServiceId'.
--
-- For example: @http:\/\/metadata.google.internal\/computeMetadata\/v1\/instance\/service-accounts\/default\/token@
-- will be retrieved if the given 'ServiceId' is @\"default\"@.
metadataToken ::
  (MonadIO m, MonadCatch m) =>
  ServiceId ->
  Logger ->
  Manager ->
  m (OAuthToken s)
metadataToken s =
  refreshRequest $
    metadataRequest
      { Client.path =
          "/computeMetadata/v1/instance/service-accounts/"
            <> Text.encodeUtf8 (toQueryParam s)
            <> "/token"
      }

-- | Use the 'AuthorizedUser' to obtain a new 'OAuthToken'. If the supplied
-- 'RefreshToken' is 'Nothing', the original 'RefreshToken' from the user will
-- be used.
authorizedUserToken ::
  (MonadIO m, MonadCatch m) =>
  AuthorizedUser ->
  Maybe RefreshToken ->
  Logger ->
  Manager ->
  m (OAuthToken s)
authorizedUserToken u r =
  refreshRequest $
    tokenRequest
      { Client.requestBody =
          textBody $
            "grant_type=refresh_token"
              <> "&client_id="
              <> toQueryParam (_userId u)
              <> "&client_secret="
              <> toQueryParam (_userSecret u)
              <> "&refresh_token="
              <> toQueryParam (fromMaybe (_userRefresh u) r)
      }

-- | Obtain an 'OAuthToken' from @https://accounts.google.com/o/oauth2/v2/auth@
-- by signing and sending a JSON Web Token (JWT) using the supplied 'ServiceAccount'.
serviceAccountToken ::
  (MonadIO m, MonadCatch m, KnownScopes s) =>
  ServiceAccount ->
  proxy s ->
  Logger ->
  Manager ->
  m (OAuthToken s)
serviceAccountToken s p l m = do
  b <- encodeBearerJWT s p
  let rq =
        tokenRequest
          { Client.requestBody =
              RequestBodyBS $
                "grant_type=urn:ietf:params:oauth:grant-type:jwt-bearer"
                  <> "&assertion="
                  <> b
          }
  refreshRequest rq l m

-- | Encode the supplied 'ServiceAccount's key id, email, and scopes using the
-- private key in the JSON Web Token (JWT) format.
encodeBearerJWT ::
  (MonadIO m, MonadThrow m, KnownScopes s) =>
  ServiceAccount ->
  proxy s ->
  m ByteString
encodeBearerJWT s p = liftIO $ do
  i <- input . truncate <$> getPOSIXTime
  r <- signSafer (Just SHA256) (_servicePrivateKey s) i
  either failure (pure . concat' i) r
  where
    concat' i x = i <> "." <> signature (base64 x)

    failure e =
      throwM $
        TokenRefreshError (toEnum 400) (Text.pack (show e)) Nothing

    signature bs =
      case BS8.unsnoc bs of
        Nothing -> mempty
        Just (bs', x)
          | x == '=' -> bs'
          | otherwise -> bs

    input n = header <> "." <> payload
      where
        header =
          base64Encode
            [ "alg" .= ("RS256" :: Text),
              "typ" .= ("JWT" :: Text),
              "kid" .= _serviceKeyId s
            ]

        payload =
          base64Encode $
            [ "aud" .= tokenURL,
              "scope" .= concatScopes (scopeVals p),
              "iat" .= n,
              "exp" .= (n + seconds maxTokenLifetime),
              "iss" .= _serviceEmail s
            ]
              <> maybe [] (\sub -> ["sub" .= sub]) (_serviceAccountUser s)
