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
import           Control.Exception.Lens
import           Control.Lens
import           Control.Monad
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Data.Aeson
import           Data.ByteString        (ByteString)
import qualified Data.ByteString.Lazy   as LBS
import           Data.Char              (toLower)
import           Data.Default.Class     (def)
import qualified Data.Text              as Text
import qualified Data.Text.Encoding     as Text
import           Data.Time
import           Data.Typeable
import           Network.Google.Prelude
import           Network.HTTP.Conduit
import qualified Network.HTTP.Conduit   as Client
import           Network.HTTP.Types
import           System.Directory       (doesFileExist, getHomeDirectory)
import           System.Environment     (lookupEnv)
import           System.FilePath        ((</>))
import           System.Info            (os)

accountsHost, metadataHost :: ByteString
accountsHost = "accounts.google.com"
metadataHost = "metadata.google.internal"

metadataFlavorHeader :: HeaderName
metadataFlavorHeader = "Metadata-Flavor"

metadataFlavorDesired :: ByteString
metadataFlavorDesired = "Google"

noGCECheck :: String
noGCECheck = "NO_GCE_CHECK"

-- | The environment variable name which can replace ~/.config if set.
cloudSDKCredentialsDirVar :: String
cloudSDKCredentialsDirVar = "CLOUDSDK_CONFIG"

cloudSDKCredentialsDir :: FilePath
cloudSDKCredentialsDir = "gcloud"

cloudSDKCredentialsFile :: FilePath
cloudSDKCredentialsFile = "application_default_credentials.json"

-- | The environment variable pointing the file with local
-- Application Default Credentials.
defaultCredentialsFileVar :: String
defaultCredentialsFileVar = "GOOGLE_APPLICATION_CREDENTIALS"

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

data Credentials
    = FromToken   !OAuthToken
    | FromFile    !FilePath
    | FromAccount !ServiceId
    | Discover
      deriving (Eq, Show)

getAuth :: (MonadIO m, MonadCatch m) => Manager -> Credentials -> m Auth
getAuth m = \case
    FromToken   t -> pure (fromToken t)
    FromFile    f -> fromFilePath m f
    FromAccount s -> fromAccount  m s
    Discover      ->
        catching _MissingFileError (fromFile m) $ \f -> do
            p <- detectGCE m
            unless p $
                throwingM _MissingFileError f
            fromAccount m "default"

fromToken :: OAuthToken -> Auth
fromToken = Tok

fromFile :: MonadIO m => Manager -> m Auth
fromFile m = do
    mf <- defaultCredentialsPath
    case mf of
        Just f  -> fromFilePath m f
        Nothing -> cloudSDKCredentialsPath >>= fromFilePath m

fromFilePath :: MonadIO m => Manager -> FilePath -> m Auth
fromFilePath m f = liftIO $ do
    p  <- doesFileExist f
    unless p $
        throwM (MissingFileError f)
    !u <- LBS.readFile f >>=
        either (throwM . InvalidFileError f) pure . parseLBS
    !r <- refresh m u
    Ref m <$> newMVar (r :: Refresh User)

fromAccount :: MonadIO m => Manager -> ServiceId -> m Auth
fromAccount m s = liftIO $ do
    !r <- refresh m s
    Ref m <$> newMVar (r :: Refresh ServiceId)

data Auth where
    Tok :: OAuthToken                                    -> Auth
    Ref :: RefreshToken a => Manager -> MVar (Refresh a) -> Auth

refreshToken :: MonadIO m => Auth -> m OAuthToken
refreshToken (Tok   t) = pure t
refreshToken (Ref m r) = liftIO $ do
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

cloudSDKCredentialsPath :: MonadIO m => m FilePath
cloudSDKCredentialsPath = liftIO $ do
    v <- lookupEnv cloudSDKCredentialsDirVar
    h <- getHomeDirectory
    let d = case v of
            Nothing | os == "windows" -> h </> cloudSDKCredentialsDir
            Nothing                   -> h </> ".config" </> cloudSDKCredentialsDir
            Just x                    -> h </> x
    pure $! d </> cloudSDKCredentialsFile

defaultCredentialsPath :: MonadIO m => m (Maybe FilePath)
defaultCredentialsPath = liftIO (lookupEnv defaultCredentialsFileVar)

detectGCE :: MonadIO m => Manager -> m Bool
detectGCE m = liftIO $ do
    p <- check <$> lookupEnv noGCECheck
    if p
        then (success <$> httpLbs rq m) `catch` failure
        else pure False
  where
    check Nothing  = True
    check (Just x) = map toLower x `notElem` ["1", "true", "yes", "on"]

    success rs =
           fromEnum (responseStatus rs) == 200
        && (lookup metadataFlavorHeader (responseHeaders rs)
               == Just metadataFlavorDesired)

    failure :: HttpException -> IO Bool
    failure = const (pure False)

    rq = def
        { Client.host            = metadataHost
        , Client.checkStatus     = \_ _ _ -> Nothing
        , Client.responseTimeout = Just 1000000
        , Client.requestHeaders  =
            [ (metadataFlavorHeader, metadataFlavorDesired)
            ]
        }

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
    refresh :: (MonadIO m, MonadCatch m) => Manager -> a -> m (Refresh a)

instance RefreshToken User where
    refresh m u@User {..} = perform m rq success failure
      where
        success s bs = do
            f  <- parseErr s bs
            ts <- liftIO getCurrentTime
            pure $! f ts $ \r ->
                u { _uRefresh = fromMaybe _uRefresh r
                  }

        failure s bs = do
            RefreshError {..} <- parseErr s bs
            refreshErr s _eError _eDescription

        parseErr s bs =
            case parseLBS bs of
                Left   e -> refreshErr s e Nothing
                Right !x -> pure x

        refreshErr s e = throwM . TokenRefreshError s e

        rq = def
            { Client.host            = accountsHost
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
    refresh m sid = perform m rq success failure
      where
        success s bs = do
            f  <- parseErr s bs
            ts <- liftIO getCurrentTime
            pure $! f ts (const sid :: Maybe Text -> ServiceId)

        failure s = const $
            refreshErr s "Failure refreshing token from http://metadata.google.internal"
                Nothing

        parseErr s bs =
            case parseLBS bs of
                Left   e -> refreshErr s e Nothing
                Right !x -> pure x

        refreshErr s e = throwM . TokenRefreshError s e

        rq = def
            { Client.host        = metadataHost
            , Client.port        = 80
            , Client.secure      = False
            , Client.checkStatus = \_ _ _ -> Nothing
            , Client.method      = "GET"
            , Client.path        = "/computeMetadata/v1/instance/service-accounts/"
                <> Text.encodeUtf8 (serviceIdToText sid)
                <> "/token"
            }

perform :: (MonadIO m, MonadCatch m)
        => Manager
        -> Client.Request
        -> (Status -> LBS.ByteString -> m a)
        -> (Status -> LBS.ByteString -> m a)
        -> m a
perform m rq success failure = do
    rs <- liftIO (httpLbs rq m) `catch` (throwM . RetrievalError)
    let bs = responseBody   rs
        s  = responseStatus rs
    if fromEnum s == 200
        then success s bs
        else failure s bs

parseLBS :: FromJSON a => LBS.ByteString -> Either Text a
parseLBS = either (Left . Text.pack) Right . eitherDecode'
