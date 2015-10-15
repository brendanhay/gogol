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

import           Control.Concurrent
import           Control.Concurrent.MVar
import           Control.Exception
import           Control.Exception.Lens
import           Control.Lens
import           Control.Monad
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Data.Aeson
import           Data.ByteString         (ByteString)
import qualified Data.ByteString.Lazy    as LBS
import           Data.Default.Class      (def)
import qualified Data.HashMap.Strict     as Map
import           Data.Text               (Text)
import qualified Data.Text               as Text
import qualified Data.Text.Encoding      as Text
import           Data.Time
import           Data.Typeable
import           Network.Google.Prelude
import           Network.HTTP.Conduit
-- import qualified Network.HTTP.Client.Conduit as C
import qualified Network.HTTP.Conduit    as Client
import           Network.HTTP.Types
import           System.Directory        (doesFileExist, getHomeDirectory)
import           System.Environment      (lookupEnv)
import           System.FilePath         ((</>))
import           System.Info             (os)

data Credentials
    = FromToken !OAuthToken
    | FromFile  !FilePath
    | Discover
      deriving (Eq, Show)

getAuth :: MonadIO m => Manager -> Credentials -> m Auth
getAuth m = \case
    FromToken t -> pure (fromToken t)
    FromFile  f -> fromFilePath m f
    Discover    -> undefined
        -- catching _MissingFileError fromFile $ \f -> do
        --     p <- detectGCE m
        --     unless p $
        --         throwingM _MissingFileError f
        --     fromMetadata m

fromToken :: OAuthToken -> Auth
fromToken = Tok

fromFile :: MonadIO m => Manager -> m Auth
fromFile m = defaultCredentialsPath >>= fromFilePath m

fromFilePath :: MonadIO m => Manager -> FilePath -> m Auth
fromFilePath m f = liftIO $ do
    p  <- doesFileExist f
    unless p $
        throwM (MissingFileError f)
    !u <- LBS.readFile f >>=
        either (throwM . InvalidFileError f) pure . parseLBS
    !r <- refresh m u
    Ref m <$> newMVar (r :: Refresh User)

fromMetadata :: MonadIO m => Manager -> ServiceId -> m Auth
fromMetadata m s = liftIO $ do
    !r <- refresh m s
    Ref m <$> newMVar (r :: Refresh ServiceId)

data Auth where
    Tok :: OAuthToken                                    -> Auth
    Ref :: RefreshToken a => Manager -> MVar (Refresh a) -> Auth

withToken :: MonadIO m => Auth -> (OAuthToken -> m a) -> m a
withToken x f = liftIO (refreshToken x) >>= f

refreshToken :: Auth -> IO OAuthToken
refreshToken (Tok   t) = pure t
refreshToken (Ref m r) = do
    x  <- readMVar r
    xv <- isValid x
    if xv
        then pure (_rToken x)
        else modifyMVar r $ \y -> do
            yv <- isValid y
            if yv
                then pure (y, _rToken x)
                else do
                    z <- refresh m (_rTarget y)
                    pure (z, _rToken z)

isValid :: Refresh a -> IO Bool
isValid r = (< _rExpiry r) <$> getCurrentTime

-- GOOGLE_AUTH_URI = 'https://accounts.google.com/o/oauth2/auth'
-- GOOGLE_DEVICE_URI = 'https://accounts.google.com/o/oauth2/device/code'
-- GOOGLE_REVOKE_URI = 'https://accounts.google.com/o/oauth2/revoke'
-- GOOGLE_TOKEN_URI = 'https://accounts.google.com/o/oauth2/token'
-- GOOGLE_TOKEN_INFO_URI = 'https://www.googleapis.com/oauth2/v2/tokeninfo'

-- -- | Which certs to use to validate id_tokens received.
-- ID_TOKEN_VERIFICATION_CERTS = "https://www.googleapis.com/oauth2/v1/certs"

-- -- | Google Data client libraries may need to set this to [401, 403].
-- REFRESH_STATUS_CODES = [401]

-- -- | The value representing user credentials.
-- AUTHORIZED_USER = "authorized_user"

-- -- | The value representing service account credentials.
-- SERVICE_ACCOUNT = "service_account"

-- -- | The environment variable pointing the file with local
-- -- Application Default Credentials.
-- GOOGLE_APPLICATION_CREDENTIALS = "GOOGLE_APPLICATION_CREDENTIALS"


-- _SERVER_SOFTWARE = 'SERVER_SOFTWARE'
-- _GCE_METADATA_HOST = '169.254.169.254'
-- _METADATA_FLAVOR_HEADER = 'Metadata-Flavor'
-- _DESIRED_METADATA_FLAVOR = 'Google'

-- NO_GCE_CHECK = os.environ.setdefault('NO_GCE_CHECK', 'False')

-- # The error message we show users when we can't find the Application
-- # Default Credentials.
-- ADC_HELP_MSG = (
--     'The Application Default Credentials are not available. They are '
--     'available if running in Google Compute Engine. Otherwise, the '
--     'environment variable ' +
--     GOOGLE_APPLICATION_CREDENTIALS +
--     ' must be defined pointing to a file defining the credentials. See '
--     'https://developers.google.com/accounts/docs/'
--     'application-default-credentials for more information.')

-- # The access token along with the seconds in which it expires.
-- AccessTokenInfo = collections.namedtuple(
--     'AccessTokenInfo', ['access_token', 'expires_in'])

-- DEFAULT_ENV_NAME = 'UNKNOWN'

detectGCE :: MonadIO m => Manager -> m Bool
detectGCE m = pure False

-- def _detect_gce_environment():
--     """Determine if the current environment is Compute Engine.
--     Returns:
--         Boolean indicating whether or not the current environment is Google
--         Compute Engine.
--     """
--     # NOTE: The explicit ``timeout`` is a workaround. The underlying
--     #       issue is that resolving an unknown host on some networks will take
--     #       20-30 seconds; making this timeout short fixes the issue, but
--     #       could lead to false negatives in the event that we are on GCE, but
--     #       the metadata resolution was particularly slow. The latter case is
--     #       "unlikely".
--     connection = six.moves.http_client.HTTPConnection(
--         _GCE_METADATA_HOST, timeout=1)

--     try:
--         headers = {_METADATA_FLAVOR_HEADER: _DESIRED_METADATA_FLAVOR}
--         connection.request('GET', '/', headers=headers)
--         response = connection.getresponse()
--         if response.status == 200:
--             return (response.getheader(_METADATA_FLAVOR_HEADER) ==
--                     _DESIRED_METADATA_FLAVOR)
--     except socket.error:  # socket.timeout or socket.error(64, 'Host is down')
--         logger.info('Timeout attempting to reach GCE metadata service.')
--         return False
--     finally:
--         connection.close()

-- isGAE :: MonadIO m => m Bool
-- isGAE = pure False
    -- if SETTINGS.env_name is not None:
    --     return SETTINGS.env_name in ('GAE_PRODUCTION', 'GAE_LOCAL')

    -- try:
    --     import google.appengine
    --     server_software = os.environ.get(_SERVER_SOFTWARE, '')
    --     if server_software.startswith('Google App Engine/'):
    --         SETTINGS.env_name = 'GAE_PRODUCTION'
    --         return True
    --     elif server_software.startswith('Development/'):
    --         SETTINGS.env_name = 'GAE_LOCAL'
    --         return True
    -- except ImportError:
    --     pass

    -- return False

-- isGCE :: MonadIO m => m Bool
-- isGCE = pure False
-- def _in_gce_environment():
--     """Detect if the code is running in the Compute Engine environment.
--     Returns:
--         True if running in the GCE environment, False otherwise.
--     """
--     if SETTINGS.env_name is not None:
--         return SETTINGS.env_name == 'GCE_PRODUCTION'

--     if NO_GCE_CHECK != 'True' and _detect_gce_environment():
--         SETTINGS.env_name = 'GCE_PRODUCTION'
--         return True
--     return False

data AuthError
    = RetrievalError    HttpException
    | MissingFileError  FilePath
    | InvalidFileError  FilePath Text
    | TokenRefreshError Status Text (Maybe Text)
      deriving (Show, Typeable)

instance Exception AuthError

parseLBS :: FromJSON a => LBS.ByteString -> Either Text a
parseLBS = either (Left . Text.pack) Right . eitherDecode'

-- | The environment variable name which can replace ~/.config if set.
cloudSDKConfigDirVar = "CLOUDSDK_CONFIG"
cloudSDKConfigDir    = "gcloud"
cloudSDKConfigFile   = "application_default_credentials.json"

defaultCredentialsPath :: MonadIO m => m FilePath
defaultCredentialsPath = liftIO $ do
    v <- lookupEnv cloudSDKConfigDirVar
    h <- getHomeDirectory
    let d = case v of
            Nothing | os == "windows" -> h </> cloudSDKConfigDir
            Nothing                   -> h </> ".config" </> cloudSDKConfigDir
            Just x                    -> h </> x
    pure $! d </> cloudSDKConfigFile

data User = User
    { _uId      :: !ClientId
    , _uSecret  :: !Text
    , _uRefresh :: !Text
    }

instance FromJSON User where
    parseJSON = withObject "authorized_user" $ \o -> User
        <$> o .: "client_id"
        <*> o .: "client_secret"
        <*> o .: "refresh_token"

data RefreshError = RefreshError
    { _eError       :: !Text
    , _eDescription :: !(Maybe Text)
    }

instance FromJSON RefreshError where
    parseJSON = withObject "refresh_error" $ \o -> RefreshError
        <$> o .:  "error"
        <*> o .:? "error_description"

data Refresh a = Refresh
    { _rToken  :: !OAuthToken
    , _rExpiry :: !UTCTime
    , _rTarget :: !a
    }

instance FromJSON (UTCTime -> (Maybe Text -> a) -> Refresh a) where
    parseJSON = withObject "refresh_token" $ \o -> do
        t <- o .:  "access_token"
        e <- o .:  "expires_in" <&> fromInteger
        r <- o .:? "refresh_token"
        pure $ \ts f ->
            Refresh t (addUTCTime e ts) (f r)

class RefreshToken a where
    refresh :: Manager -> a -> IO (Refresh a)

instance RefreshToken User where
    refresh m u@User {..} = do
        rs <- httpLbs rq m
        let bs = responseBody   rs
            s  = responseStatus rs
        if fromEnum s == 200 then success s bs else failure s bs
      where
        failure s bs = do
            RefreshError {..} <- parseErr s bs
            refreshErr s _eError _eDescription

        success s bs = do
            f  <- parseErr s bs
            ts <- getCurrentTime
            pure $! f ts $ \r ->
                u { _uRefresh = fromMaybe _uRefresh r
                  }

        parseErr s bs =
            case parseLBS bs of
                Left   e -> refreshErr s e Nothing
                Right !x -> pure x

        refreshErr s e = throwM . TokenRefreshError s e

        rq = def
            { Client.host            = "accounts.google.com"
            , Client.port            = 443
            , Client.secure          = True
            , Client.checkStatus     = \_ _ _ -> Nothing
            , Client.method          = "POST"
            , Client.path            = "/o/oauth2/token"
            , Client.requestHeaders  = [(hContentType, "application/x-www-form-urlencoded")]
            , Client.requestBody     = RequestBodyBS . Text.encodeUtf8 $
                   "grant_type=refresh_token"
                <> "&client_id="     <> clientIdToText _uId
                <> "&client_secret=" <> _uSecret
                <> "&refresh_token=" <> _uRefresh
            }

instance RefreshToken ServiceId where
    refresh m sid = do
        rs <- httpLbs rq m
        let bs = responseBody   rs
            s  = responseStatus rs
        if fromEnum s == 200 then success s bs else failure s
      where
        failure s =
            refreshErr s "Failure refreshing token from http://metadata.google.internal"
                Nothing

        success s bs = do
            f  <- parseErr s bs
            ts <- getCurrentTime
            pure $! f ts (const sid :: Maybe Text -> ServiceId)

        parseErr s bs =
            case parseLBS bs of
                Left   e -> refreshErr s e Nothing
                Right !x -> pure x

        refreshErr s e = throwM . TokenRefreshError s e

        rq = def
            { Client.host        = "metadata.google.internal"
            , Client.port        = 80
            , Client.secure      = False
            , Client.checkStatus = \_ _ _ -> Nothing
            , Client.method      = "GET"
            , Client.path        = "/computeMetadata/v1/instance/service-accounts/"
                <> Text.encodeUtf8 (serviceIdToText sid)
                <> "/token"
            }
