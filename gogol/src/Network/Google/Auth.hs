{-# LANGUAGE DeriveDataTypeable         #-}
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
import           System.Directory        (getHomeDirectory)
import           System.Environment      (lookupEnv)
import           System.FilePath         ((</>))
import           System.Info             (os)

-- withAuth :: MonadIO m => Auth -> (AuthEnv -> m a) -> m a
-- withAuth (Ref _ r) f = liftIO (readIORef r) >>= f
-- withAuth (Auth  e) f = f e

-- -- | Retrieve authentication information via the specified 'Credentials' mechanism.
-- getAuth :: Monad m => Credentials -> m Auth
-- getAuth = \case
--     FromKey   k -> pure $! Auth (AuthEnv (Left  k) Nothing)
--     FromToken t -> pure $! Auth (AuthEnv (Right t) Nothing)


-- -- | Expiry is stored in RFC3339 UTC format
-- EXPIRY_FORMAT = "%Y-%m-%dT%H:%M:%SZ"

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

isGAE :: MonadIO m => m Bool
isGAE = pure False
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

isGCE :: MonadIO m => m Bool
isGCE = pure False
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

newtype ClientId = ClientId { clientId :: Text }
    deriving (Eq, Show, FromJSON, ToJSON)

data AuthError
    = RetrievalError    HttpException
    | MissingFileError  FilePath
    | InvalidFileError  FilePath Text
    | TokenRefreshError Status ClientId Text (Maybe Text)
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

data AuthorizedUser = AuthorizedUser
    { _auClientId     :: !ClientId
    , _auClientSecret :: !Text
    , _auRefreshToken :: !Text
    }

instance FromJSON AuthorizedUser where
    parseJSON = withObject "authorized_user" $ \o -> AuthorizedUser
        <$> o .: "client_id"
        <*> o .: "client_secret"
        <*> o .: "refresh_token"

data AuthorizedRefresh = AuthorizedRefresh
    { _arAccessToken  :: !OAuthToken
    , _arRefreshToken :: !(Maybe Text)
    , _arExpiresIn    :: !NominalDiffTime
    }

instance FromJSON AuthorizedRefresh where
    parseJSON = withObject "authorized_refresh" $ \o -> AuthorizedRefresh
        <$> o .:  "access_token"
        <*> o .:? "refresh_token"
        <*> (fromInteger <$> o .: "expires_in")

data AuthorizedError = AuthorizedError
    { _aeError       :: !Text
    , _aeDescription :: !(Maybe Text)
    }

instance FromJSON AuthorizedError where
    parseJSON = withObject "authorized_error" $ \o -> AuthorizedError
        <$> o .:  "error"
        <*> o .:? "error_description"

refreshUser :: Manager -> AuthorizedUser -> IO (Refresh AuthorizedUser)
refreshUser m u@AuthorizedUser {..} = do
    rs <- httpLbs rq m
    let bs = responseBody   rs
        s  = responseStatus rs
    if fromEnum s == 200 then success s bs else failure s bs
  where
    failure s bs = do
        AuthorizedError {..} <- parseErr s bs
        refreshErr s _aeError _aeDescription

    success s bs = do
        AuthorizedRefresh {..} <- parseErr s bs
        ts <- getCurrentTime
        pure $! Refresh (addUTCTime _arExpiresIn ts) _arAccessToken $
            u { _auRefreshToken = fromMaybe _auRefreshToken _arRefreshToken }

    parseErr s bs =
        case parseLBS bs of
            Left  e -> refreshErr s e Nothing
            Right x -> pure x

    refreshErr s e = throwM . TokenRefreshError s _auClientId e

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
            <> "&client_id="     <> clientId _auClientId
            <> "&client_secret=" <> _auClientSecret
            <> "&refresh_token=" <> _auRefreshToken
        }

-- data ServiceAccount = ServiceAccount
--     { _saClientId     :: !Text
--     , _saClientEmail  :: !Text
--     , _saPrivateKeyId :: !Text
--     , _saPrivateKey   :: !Text
--     }

-- instance FromJSON ServiceAccount where
--     parseJSON = withObject "service_account" $ \o -> ServiceAccount
--         <$> o .: "client_id"
--         <*> o .: "client_email"
--         <*> o .: "private_key_id"
--         <*> o .: "private_key"

data DefaultCredentials
    = User !AuthorizedUser
--    | Account !ServiceAccount

instance FromJSON DefaultCredentials where
    parseJSON = withObject "default_credentials" $ \o -> do
        t <- o .: "type"
        case t of
            "authorized_user" -> User <$> parseJSON (Object o)
            "service_account" -> fail "type: 'service_account' not supported."
            _                 -> fail . Text.unpack $
                "Unrecognized default credentials type: " <> t

data Refresh a = Refresh
    { _rExpiry :: !UTCTime
    , _rToken  :: !OAuthToken
    , _rTarget :: !a
    }

isValid :: Refresh a -> IO Bool
isValid r = do
    ts <- getCurrentTime
    pure $! ts < _rExpiry r

data Auth
    = Tok !OAuthToken
    | Ref (MVar (Refresh AuthorizedUser))
          (AuthorizedUser -> IO (Refresh AuthorizedUser))

withToken :: MonadIO m => Auth -> (OAuthToken -> m a) -> m a
withToken x f = refreshToken x >>= f

refreshToken :: MonadIO m => Auth -> m OAuthToken
refreshToken = liftIO . \case
    Tok t   -> pure t
    Ref v f -> do
        x  <- readMVar v
        xv <- isValid x
        if xv
            then pure (_rToken x)
            else modifyMVar v $ \y -> do
                yv <- isValid y
                if yv
                    then pure (y, _rToken x)
                    else do
                        z <- f (_rTarget y)
                        pure (z, _rToken z)

data Credentials
    = FromToken !OAuthToken
    | FromFile  !FilePath
    | Discover
      deriving (Eq, Show)

getAuth :: MonadIO m => Manager -> Credentials -> m Auth
getAuth m = \case
    FromToken t -> pure (Tok t)
    FromFile  f -> undefined -- fromFilePath f
    Discover    -> undefined
        -- catching _MissingFileError fromFile $ \f -> do
        --     p <- detectGCE m
        --     unless p $
        --         throwingM _MissingFileError f
        --     fromMetadata m

-- fromFile :: MonadIO m => m Auth
-- fromFile = undefined -- defaultCredentialsPath >>= fromFilePath

-- fromMetadata :: MonadIO m => Manager -> m Auth
-- fromMetadata m = liftIO $ do
--     !r <- refresh
--     Ref <$> newMVar r <*> pure refresh
--   where
--     refresh = do
--         bs <- httpLbs rq m
--         parseLBS

-- GOOGLE_AUTH_URI = 'https://accounts.google.com/o/oauth2/auth'
-- GOOGLE_DEVICE_URI = 'https://accounts.google.com/o/oauth2/device/code'
-- GOOGLE_REVOKE_URI = 'https://accounts.google.com/o/oauth2/revoke'
-- GOOGLE_TOKEN_URI = 'https://accounts.google.com/o/oauth2/token'
-- GOOGLE_TOKEN_INFO_URI = 'https://www.googleapis.com/oauth2/v2/tokeninfo'

-- fromFilePath :: MonadIO m => Manager -> FilePath -> m Auth
-- fromFilePath m f = liftIO $ do
--     p  <- doesFileExist f
--     unless p $
--         throwM (MissingFileError f)
--     !u <- LBS.readFile f >>= either invalidErr pure . eitherDecode'
--     !r <- refresh m u
--     Ref <$> newMVar r <*> pure (refresh d)
