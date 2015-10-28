{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Network.Google.Auth.ServiceAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Network.Google.Auth.ServiceAccount where

import           Control.Applicative
import           Control.Concurrent
import           Control.Exception.Lens
import           Control.Lens                    hiding (coerce, (.=))
import           Control.Monad
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Crypto.Hash.Algorithms          (SHA256 (..))
import           Crypto.PubKey.RSA.PKCS15        (signSafer)
import           Crypto.PubKey.RSA.Types         (PrivateKey)
import           Data.Aeson
import           Data.Aeson.Types
import           Data.ByteArray
import           Data.ByteArray.Encoding
import           Data.ByteString                 (ByteString)
import           Data.ByteString.Builder         (Builder)
import qualified Data.ByteString.Builder         as Build
import qualified Data.ByteString.Char8           as BS8
import qualified Data.ByteString.Lazy            as LBS
import           Data.Coerce
import           Data.Default.Class              (def)
import           Data.List                       (intersperse)
import           Data.String
import qualified Data.Text                       as Text
import qualified Data.Text.Encoding              as Text
import qualified Data.Text.Lazy                  as LText
import qualified Data.Text.Lazy.Builder          as TBuild
import qualified Data.Text.Lazy.Encoding         as LText
import           Data.Time
import           Data.Time.Clock.POSIX
import           Data.Typeable
import           Data.X509
import           Data.X509.Memory
import           Network.Google.Compute.Metadata
import           Network.Google.Internal.Auth
import           Network.Google.Internal.Logger
import           Network.Google.Prelude          hiding (buildText)
import           Network.HTTP.Conduit            hiding (Request)
import qualified Network.HTTP.Conduit            as Client
import           Network.HTTP.Types
import           System.Directory                (doesFileExist,
                                                  getHomeDirectory)
import           System.Environment              (lookupEnv)
import           System.FilePath                 ((</>))
import           System.Info                     (os)

-- | The maximum lifetime of a @service_account@ token which is 1 hour, in seconds.
maxTokenLifetime :: Seconds
maxTokenLifetime = 3600

-- | Obtain an 'OAuthToken' from the local instace metadata
-- using the specific 'ServiceId'.
--
-- For example: @http:\/\/169.254.169.254\/instance\/service-accounts\/default\/token@
-- will be retrieved if the given 'ServiceId' is @\"default\"@.
metadataToken :: (MonadIO m, MonadCatch m)
              => ServiceId
              -> Logger
              -> Manager
              -> m OAuthToken
metadataToken s = refreshRequest $
    metadataRequest
        { Client.path = "instance/service-accounts/"
            <> Text.encodeUtf8 (toText s)
            <> "/token"
        }

-- | Use the 'AuthorizedUser' to obtain a new 'OAuthToken'. If the supplied
-- 'RefreshToken' is 'Nothing', the original 'RefreshToken' from he user will
-- be used.
authorizedUserToken :: (MonadIO m, MonadCatch m)
                    => AuthorizedUser
                    -> Maybe RefreshToken
                    -> Logger
                    -> Manager
                    -> m OAuthToken
authorizedUserToken u r = refreshRequest $
    accountsRequest
        { Client.requestBody = textBody $
               "grant_type=refresh_token"
            <> "&client_id="     <> toText (_userId     u)
            <> "&client_secret=" <> toText (_userSecret u)
            <> "&refresh_token=" <> toText (fromMaybe (_userRefresh u) r)
        }


-- | Obtain an 'OAuthToken' from 'accountsURL' by signing and
-- sending a JSON Web Token (JWT) using the supplied 'ServiceAccount'.
serviceAccountToken :: (MonadIO m, MonadCatch m)
                    => ServiceAccount
                    -> [OAuthScope]
                    -> Logger
                    -> Manager
                    -> m OAuthToken
serviceAccountToken s ss l m = do
    b <- encodeBearerJWT s ss
    let rq = accountsRequest
           { Client.requestBody = RequestBodyBS $
                  "grant_type=urn:ietf:params:oauth:grant-type:jwt-bearer"
               <> "&assertion="
               <> b
           }
    refreshRequest rq l m

-- | Encode the supplied 'ServiceAccount's key id, email, and scopes using the
-- private key in the JSON Web Token (JWT) format.
encodeBearerJWT :: (MonadIO m, MonadThrow m)
                => ServiceAccount
                -> [OAuthScope]
                -> m ByteString
encodeBearerJWT s ss = liftIO $ do
    i <- input . truncate <$> getPOSIXTime
    r <- signSafer (Just SHA256) (_servicePrivateKey s) i
    either failure (pure . concat' i) r
  where
    concat' i x = i <> "." <> signature (base64 x)

    failure e = throwM $
        TokenRefreshError (toEnum 400) (Text.pack (show e)) Nothing

    signature bs =
        case BS8.unsnoc bs of
            Nothing         -> mempty
            Just (bs', x)
                | x == '='  -> bs'
                | otherwise -> bs

    input n = header <> "." <> payload
      where
        header = base64Encode
            [ "alg" .= ("RS256" :: Text)
            , "typ" .= ("JWT"   :: Text)
            , "kid" .= _serviceKeyId s
            ]

        payload = base64Encode
            [ "aud"   .= accountsURL
            , "scope" .= concatScopes ss
            , "iat"   .= n
            , "exp"   .= (n + seconds maxTokenLifetime)
            , "iss"   .= _serviceEmail s
            ]
