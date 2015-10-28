{-# LANGUAGE BangPatterns               #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}

-- |
-- Module      : Network.Google.Internal.Auth
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Network.Google.Internal.Auth where

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

-- | A client identifier and accompanying secret used to obtain/refresh a token.
data OAuthClient = OAuthClient
    { _clientId     :: !ClientId
    , _clientSecret :: !Secret
    } deriving (Eq, Show)

{-| An OAuth bearer type token of the following form:

@
{
  \"token_type\": \"Bearer\",
  \"access_token\": \"eyJhbGci...\",
  \"refresh_token\": \"1/B3gq9K...\",
  \"expires_in\": 3600,
  ...
}
@

The '_tokenAccess' field will be inserted verbatim into the
@Authorization: Bearer ...@ header for all HTTP requests.
-}
data OAuthToken = OAuthToken
    { _tokenAccess  :: !AccessToken
    , _tokenRefresh :: !(Maybe RefreshToken)
    , _tokenExpiry  :: !UTCTime
    } deriving (Eq, Show)

instance FromJSON (UTCTime -> OAuthToken) where
    parseJSON = withObject "bearer" $ \o -> do
        t <- o .:  "access_token"
        r <- o .:? "refresh_token"
        e <- o .:  "expires_in" <&> fromInteger
        pure (OAuthToken t r . addUTCTime e)

newtype OAuthCode = OAuthCode Text
    deriving (Eq, Ord, Show, Read, IsString, Generic, Typeable, ToText, FromJSON, ToJSON)

-- | An error thrown when attempting to read AuthN/AuthZ information.
data AuthError
    = RetrievalError    HttpException
    | MissingFileError  FilePath
    | InvalidFileError  FilePath Text
    | TokenRefreshError Status Text (Maybe Text)
      deriving (Show, Typeable)

instance Exception AuthError

class AsAuthError a where
    -- | A general authentication error.
    _AuthError        :: Prism' a AuthError
    {-# MINIMAL _AuthError #-}

    -- | An error occured while communicating over HTTP with either then
    -- local metadata or remote accounts.google.com endpoints.
    _RetrievalError   :: Prism' a HttpException

    -- | The specified default credentials file could not be found.
    _MissingFileError :: Prism' a FilePath

    -- | An error occured parsing the default credentials file.
    _InvalidFileError :: Prism' a (FilePath, Text)

    -- | An error occured when attempting to refresh a token.
    _TokenRefreshError :: Prism' a (Status, Text, Maybe Text)

    _RetrievalError    = _AuthError . _RetrievalError
    _MissingFileError  = _AuthError . _MissingFileError
    _InvalidFileError  = _AuthError . _InvalidFileError
    _TokenRefreshError = _AuthError . _TokenRefreshError

instance AsAuthError SomeException where
    _AuthError = exception

instance AsAuthError AuthError where
    _AuthError = id

    _RetrievalError = prism RetrievalError $ \case
        RetrievalError   e -> Right e
        x                  -> Left  x

    _MissingFileError = prism MissingFileError $ \case
        MissingFileError f -> Right f
        x                  -> Left  x

    _InvalidFileError = prism
        (uncurry InvalidFileError)
        (\case
            InvalidFileError f e -> Right (f, e)
            x                    -> Left  x)

    _TokenRefreshError = prism
        (\(s, e, d) -> TokenRefreshError s e d)
        (\case
            TokenRefreshError s e d -> Right (s, e, d)
            x                       -> Left  x)

data RefreshError = RefreshError
    { _error       :: !Text
    , _description :: !(Maybe Text)
    }

instance FromJSON RefreshError where
    parseJSON = withObject "refresh_error" $ \o -> RefreshError
        <$> o .:  "error"
        <*> o .:? "error_description"

-- | @https://accounts.google.com/o/oauth2/token@.
accountsURL :: Text
accountsURL = "https://accounts.google.com/o/oauth2/token"

accountsRequest :: Client.Request
accountsRequest = def
    { Client.host           = "accounts.google.com"
    , Client.port           = 443
    , Client.secure         = True
    , Client.checkStatus    = \_ _ _ -> Nothing
    , Client.method         = "POST"
    , Client.path           = "/o/oauth2/token"
    , Client.requestHeaders =
        [ (hContentType, "application/x-www-form-urlencoded")
        ]
    }

refreshRequest :: (MonadIO m, MonadCatch m)
               => Client.Request
               -> Logger
               -> Manager
               -> m OAuthToken
refreshRequest rq l m = do
    logDebug l rq                          -- debug:ClientRequest

    rs <- liftIO (httpLbs rq m) `catch` (throwM . RetrievalError)

    let bs = responseBody   rs
        s  = responseStatus rs

    logDebug l rs                          -- debug:ClientResponse
    logTrace l $ "[Response Body]\n" <> bs -- trace:ResponseBody

    if fromEnum s == 200
        then success s bs
        else failure s bs
  where
    success s bs = do
        f  <- parseErr s bs
        ts <- liftIO getCurrentTime
        pure (f ts)

    failure s bs = do
        let e = "Failure refreshing token from " <> host <> path
        logError l $ "[Refresh Error] " <> build e
        case parseLBS bs of
            Right x -> refreshErr s (_error x) (_description x)
            Left  _ -> refreshErr s e Nothing

    parseErr s bs =
        case parseLBS bs of
            Right !x -> pure x
            Left   e -> do
                logError l $
                    "[Parse Error] Failure parsing token refresh " <> build e
                refreshErr s e Nothing

    refreshErr :: MonadThrow m => Status -> Text -> Maybe Text -> m a
    refreshErr s e = throwM . TokenRefreshError s e

    host = Text.decodeUtf8 (Client.host rq)
    path = Text.decodeUtf8 (Client.path rq)

parseLBS :: FromJSON a => LBS.ByteString -> Either Text a
parseLBS = either (Left . Text.pack) Right . eitherDecode'

base64Encode :: [Pair] -> ByteString
base64Encode = base64 . LBS.toStrict . encode . object

base64 :: ByteArray a => a -> ByteString
base64 = convertToBase Base64URLUnpadded

queryEncodeScopes :: [OAuthScope] -> ByteString
queryEncodeScopes =
      BS8.intercalate "+"
    . map (urlEncode True . Text.encodeUtf8)
    . coerce

concatScopes :: [OAuthScope] -> Text
concatScopes = Text.intercalate " " . coerce

textBody :: Text -> RequestBody
textBody = RequestBodyBS . Text.encodeUtf8
