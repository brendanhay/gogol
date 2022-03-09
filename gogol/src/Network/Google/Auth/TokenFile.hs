{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Network.Google.Auth.TokenFile
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Auth.TokenFile where

import Control.Monad.IO.Class (MonadIO (liftIO))
import qualified Data.ByteString as ByteString
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text.Encoding
import qualified Data.Time as Time
import Network.Google.Internal.Auth
import Network.Google.Types (AccessToken (..))

serviceAccountTokenFile :: FilePath
serviceAccountTokenFile = "/var/run/secrets/kubernetes.io/serviceaccount/token"

readTokenFile :: MonadIO m => FilePath -> m (OAuthToken s)
readTokenFile path =
    liftIO $ do
        access <- Text.strip . Text.Encoding.decodeUtf8 <$> ByteString.readFile path
        expiry <- Time.addUTCTime 60 <$> Time.getCurrentTime

        pure OAuthToken
            { _tokenAccess = AccessToken access
            , _tokenRefresh = Nothing
            , _tokenExpiry = expiry
            }
