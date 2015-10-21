{-# LANGUAGE BangPatterns               #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GADTs                      #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}

-- |
-- Module      : Network.Google.Auth
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Explicitly specify your Google credentials, or retrieve them
-- from the underlying OS.
module Network.Google.Auth where
   -- (
   -- -- * Authentication
   -- -- ** Retrieving Authentication
   --   getAuth
   -- , Credentials (..)
   -- , Auth

   -- -- ** Default Constants
   -- -- *** GCE
   -- , checkGCEVar

   -- -- *** Cloud SDK
   -- , cloudSDKCredentialsDirVar
   -- , cloudSDKCredentialsDir
   -- , cloudSDKCredentialsFile
   -- , cloudSDKCredentialsPath

   -- -- *** Application Default Credentials
   -- , defaultCredentialsFileVar
   -- , defaultCredentialsPath

   -- -- ** Credentials
   -- , fromToken
   -- , fromFile
   -- , fromFilePath
   -- , fromAccount

   -- -- ** Authentication Tokens
   -- , refreshToken

   -- -- ** Handling Errors
   -- , AsAuthError (..)
   -- , AuthError   (..)

   -- -- ** Re-exported Types
   -- , OAuthScope  (..)
   -- , OAuthToken  (..)
   -- , ServiceId   (..)
   -- , ClientId    (..)
   -- ) where

import Data.ByteArray.Encoding
import           Control.Concurrent
import           Control.Exception.Lens
import           Control.Lens
import           Control.Monad
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Data.Aeson
import qualified Data.ByteString.Lazy            as LBS
import           Data.Default.Class              (def)
import qualified Data.Text                       as Text
import qualified Data.Text.Encoding              as Text
import           Data.Time
import           Data.Typeable
import           Network.Google.Compute.Metadata
import           Network.Google.Prelude
import           Network.HTTP.Conduit            hiding (Request)
import qualified Network.HTTP.Conduit            as Client
import           Network.HTTP.Types
import           System.Directory                (doesFileExist,
                                                  getHomeDirectory)
import           System.Environment              (lookupEnv)
import           System.FilePath                 ((</>))
import           System.Info                     (os)

maxTokenLifetimeSeconds :: Int
maxTokenLifetimeSeconds = 3600 -- 1 hour in seconds.

-- | The environment variable name which can replace ~/.config if set.
cloudSDKCredentialsDir :: String
cloudSDKCredentialsDir = "CLOUDSDK_CONFIG"

-- | The environment variable pointing the file with local
-- Application Default Credentials.
defaultCredentialsFile :: String
defaultCredentialsFile = "GOOGLE_APPLICATION_CREDENTIALS"

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

-- | Determines how AuthN/AuthZ information is retrieved.
data Credentials
    = FromToken !OAuthToken
      -- ^ Supply an explicit access token. See 'fromToken'.

    | FromFile !FilePath
      -- ^ Load the Application Default Credentials from a specific filepath.

    | FromAccount !ServiceId
      -- ^ Retrieve the Application Default Credentials using the speicfic
      -- 'ServiceId' from the local metadata endpoint.

    | Discover
      -- ^ Attempt credentials discovery via the following steps:
      --
      -- * Read the default credentials from a file specified by
      -- the environment variable @GOOGLE_APPLICATION_CREDENTIALS@ if it exists.
      --
      -- * Read the platform equivalent of @~\/.config\/gcloud\/application_default_credentials.json@ if it exists.
      -- The @~/.config@ component of the path can be overriden by the environment
      -- variable @CLOUDSDK_CONFIG@ if it exists.
      --
      -- * Retrieve the default service account application credentials if
      -- running on GCE.
      deriving (Eq, Show)

-- | Retrieve authentication information via the specified 'Credentials' mechanism.
--
-- Throws 'AuthError' when environment variables or service account information
-- cannot be read, and credentials files are invalid or cannot be found.
getAuth :: (MonadIO m, MonadCatch m) => Manager -> Credentials -> m Auth
getAuth m = \case
    FromToken t -> pure (AuthToken t)
    FromFile  f -> fromFilePath m f
    Discover    ->
        catching _MissingFileError (fromFile m) $ \f -> do
            p <- isGCE m
            unless p $
                throwingM _MissingFileError f
            fromMetadata m "default"

fromMetadata :: (MonadIO m, MonadCatch m) => Manager -> ServiceId -> m Auth
fromMetadata m = refresh m >=> fmap AuthMeta . liftIO . newMVar

fromFile :: (MonadIO m, MonadCatch m) => Manager -> m Auth
fromFile m = do
    f <- defaultCredentialsPath
    case f of
        Just x  -> fromFilePath m x
        Nothing -> cloudSDKConfigPath >>= fromFilePath m

fromFilePath :: (MonadIO m, MonadCatch m) => Manager -> FilePath -> m Auth
fromFilePath m f = do
    p <- liftIO (doesFileExist f)
    unless p $
        throwM (MissingFileError f)
    e <- liftIO (LBS.readFile f) >>=
        either (throwM . InvalidFileError f) pure . parseLBS
    case e of
        Left  a -> pure (AuthSign a)
        Right u -> refresh m u >>= fmap AuthUser . liftIO . newMVar

-- | Lookup the @GOOGLE_APPLICATION_CREDENTIALS@ environment variable for the
-- default application credentials filepath.
defaultCredentialsPath :: MonadIO m => m (Maybe FilePath)
defaultCredentialsPath = liftIO (lookupEnv defaultCredentialsFile)

-- | Return the filepath to the Cloud SDK well known file location such as
-- @~\/.config\/gcloud\/application_default_credentials.json@.
cloudSDKConfigPath :: MonadIO m => m FilePath
cloudSDKConfigPath = do
    m <- liftIO (lookupEnv cloudSDKCredentialsDir)
    case m of
        Just d  -> pure $! d </> "application_default_credentials.json"
        Nothing -> do
            d <- getConfigDirectory
            pure $! d </> "gcloud/application_default_credentials.json"

getConfigDirectory :: MonadIO m => m FilePath
getConfigDirectory = do
    h <- liftIO getHomeDirectory
    if os == "windows"
        then pure h
        else pure $! h </> ".config"

data RefreshError = RefreshError
    { _error       :: !Text
    , _description :: !(Maybe Text)
    }

instance FromJSON RefreshError where
    parseJSON = withObject "refresh_error" $ \o -> RefreshError
        <$> o .:  "error"
        <*> o .:? "error_description"

data Expires a = Expires
    { _expiry  :: !UTCTime
    , _token   :: !OAuthToken
    , _details :: !a
    }

isValid :: MonadIO m => Expires a -> m Bool
isValid r = (< _expiry r) <$> liftIO getCurrentTime

data Auth
    = AuthToken !OAuthToken
    | AuthSign  !(MVar (Expires ServiceAccount))
    | AuthMeta  !(MVar (Expires ServiceId))
    | AuthUser  !(MVar (Expires AuthorisedUser))

authorise :: (MonadIO m, MonadCatch m)
          => Manager
          -> Request
          -> Auth
          -> m Request
authorise m rq = \case
    AuthToken t -> pure $! authoriseBearer rq t
    AuthSign  r -> authoriseToken m r rq
    AuthMeta  r -> authoriseToken m r rq
    AuthUser  r -> authoriseToken m r rq

authoriseBearer :: Request -> OAuthToken -> Request
authoriseBearer rq =
    appendHeader rq hAuthorization . Just . mappend "Bearer " . tokenToText

authoriseToken :: (MonadIO m, MonadCatch m, Refresh a)
               => Manager
               -> MVar (Expires a)
               -> Request
               -> m Request
authoriseToken m r rq = authoriseBearer rq <$> refreshToken m r

refreshToken :: (MonadIO m, MonadCatch m, Refresh a)
             => Manager
             -> MVar (Expires a)
             -> m OAuthToken
refreshToken m r = do
    x  <- liftIO (readMVar r)
    xv <- isValid x
    if xv
        then pure (_token x)
        else liftIO . modifyMVar r $ \y -> do
            yv <- isValid y
            if yv
                then pure (y, _token y)
                else do
                    z <- refresh m (_details y)
                    pure (z, _token z)

-- {
--   "access_token": "sadsdasd",
--   "expires_in": 3600,
--   "id_token": "eyJhbGciOiJSd",
--   "refresh_token": "1/B3gq9K",
--   "token_type": "Bearer"
-- }

data Bearer = Bearer
    { _bearerAccess  :: !OAuthToken
    , _bearerRefresh :: !(Maybe Text)
    , _bearerExpiry  :: !UTCTime
    }

instance FromJSON (UTCTime -> Bearer) where
    parseJSON = withObject "bearer" $ \o -> do
        t <- o .:  "access_token"
        r <- o .:? "refresh_token"
        e <- o .:  "expires_in" <&> fromInteger
        pure (Bearer t r . addUTCTime e)

-- {
--   "private_key_id": "30edd1243ad77e5efdf2ce95223157bad5b33924",
--   "private_key": "-----BEGIN PRIVATE KEY-----\nMIIE...\n",
--   "client_email": "9910395191@er.gserviceaccount.com",
--   "client_id": "0351911-2310eusercontent.com",
--   "type": "service_account"
-- }

data ServiceAccount = ServiceAccount
    { _serviceId    :: !ClientId
    , _serviceEmail :: !Text
    , _serviceKeyId :: !Text
    , _serviceKey   :: !Text
    }

instance FromJSON ServiceAccount where
    parseJSON = withObject "service_account" $ \o -> ServiceAccount
        <$> o .: "client_id"
        <*> o .: "client_email"
        <*> o .: "private_key_id"
        <*> o .: "private_key"

-- {
--   "client_id": "32555940559.apps.googleusercontent.com",
--   "client_secret": "ZmssLNjJy2998hD4CTg2ejr2",
--   "refresh_token": "1/B3gq9KM1xzIVtqffS1n5w-rSJLPVVPoRyJO7DljtvBY",
--   "type": "authorized_user"
-- }

data AuthorisedUser = AuthorisedUser
    { _userId      :: !ClientId
    , _userSecret  :: !Text
    , _userRefresh :: !Text
    }

instance FromJSON AuthorisedUser where
    parseJSON = withObject "authorized_user" $ \o -> AuthorisedUser
        <$> o .: "client_id"
        <*> o .: "client_secret"
        <*> o .: "refresh_token"

class Refresh a where
    refresh :: (MonadIO m, MonadCatch m) => Manager -> a -> m (Expires a)

instance Refresh ServiceAccount where
    refresh m s = refreshRequest m s $
        accountsRequest
            { Client.requestBody = RequestBodyBS . Text.encodeUtf8 $
                   "grant_type=urn:ietf:params:oauth:grant-type:jwt-bearer"
                <> "&assertion="     <> generateAssertion s
            }

        generateAssertion = do
            n <- truncate <$> getPOSIXTime
            readKeyFileFromMemory - do on parse.

          where
            assertion = = input <> "." <> signature

            signature = dropWhileEnd (base64 btes . rstrip(b'=')

            bytes = rsa.pkcs1.sign(input, _serviceKey s, 'SHA256')

            input n = header <> "." <> payload n

            header = base64 . encode $ object
                [ "alg" .= ("RS256" :: Text)
                , "typ" .= ("JWT"   :: Text)
                , "kid" .= _serviceKeyId s
                ]

            payload n = base64 . encode $ object
                [ "aud"   .= Client.host accountsRequest
                , "scope" .= ([] :: [Text])
                , "iat"   .= n
                , "exp"   .= n + maxTokenLifetimeSeconds
                , "iss"   .= _serviceEmail s
                ]


instance Refresh AuthorisedUser where
    refresh m u@AuthorisedUser{..} = refreshRequest m u $
        accountsRequest
            { Client.requestBody = RequestBodyBS . Text.encodeUtf8 $
                   "grant_type=refresh_token"
                <> "&client_id="     <> clientIdToText _userId
                <> "&client_secret=" <> _userSecret
                <> "&refresh_token=" <> _userRefresh
            }

instance Refresh ServiceId where
    refresh m sid = refreshRequest m sid $
        metadataRequest
            { Client.path = "instance/service-accounts/"
                <> Text.encodeUtf8 (serviceIdToText sid)
                <> "/token"
            }

accountsRequest :: Client.Request
accountsRequest = def
    { Client.host           = "accounts.google.com"
    , Client.port           = 443
    , Client.secure         = True
    , Client.checkStatus    = \_ _ _ -> Nothing
    , Client.method         = "POST"
    , Client.path           = "/o/oauth2/token"
    , Client.requestHeaders = [(hContentType, "application/x-www-form-urlencoded")]
    }

refreshRequest :: (MonadIO m, MonadCatch m)
               => Manager
               -> a
               -> Client.Request
               -> m (Expires a)
refreshRequest m r rq = do
    rs <- liftIO (httpLbs rq m) `catch` (throwM . RetrievalError)
    let bs = responseBody   rs
        s  = responseStatus rs
    if fromEnum s == 200
        then success s bs
        else failure s bs
  where
    success s bs = do
        f  <- parseErr s bs
        ts <- liftIO getCurrentTime
        let Bearer {..} = f ts
        pure $! Expires _bearerExpiry _bearerAccess r

    failure s = const $
        refreshErr s ("Failure refreshing token from " <> Text.pack (Client.host rq))
            Nothing

    parseErr s bs =
        case parseLBS bs of
            Left   e -> refreshErr s e Nothing
            Right !x -> pure x

    refreshErr s e = throwM . TokenRefreshError s e

parseLBS :: FromJSON a => LBS.ByteString -> Either Text a
parseLBS = either (Left . Text.pack) Right . eitherDecode'

-- base64 :: ToJSON a => 
base64 = convertToBase Base64URLUnpadded
