{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.SQL.SSLCerts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a particular SSL certificate. Does not include the private key
-- (required for usage). The private key must be saved from the response to
-- initial creation.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLSSLCertsGet@.
module Network.Google.Resource.SQL.SSLCerts.Get
    (
    -- * REST Resource
      SSLCertsGetResource

    -- * Creating a Request
    , sslCertsGet'
    , SSLCertsGet'

    -- * Request Lenses
    , scgQuotaUser
    , scgPrettyPrint
    , scgProject
    , scgUserIP
    , scgKey
    , scgOAuthToken
    , scgSha1Fingerprint
    , scgFields
    , scgInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLSSLCertsGet@ method which the
-- 'SSLCertsGet'' request conforms to.
type SSLCertsGetResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "sslCerts" :>
               Capture "sha1Fingerprint" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] SSLCert

-- | Retrieves a particular SSL certificate. Does not include the private key
-- (required for usage). The private key must be saved from the response to
-- initial creation.
--
-- /See:/ 'sslCertsGet'' smart constructor.
data SSLCertsGet' = SSLCertsGet'
    { _scgQuotaUser       :: !(Maybe Text)
    , _scgPrettyPrint     :: !Bool
    , _scgProject         :: !Text
    , _scgUserIP          :: !(Maybe Text)
    , _scgKey             :: !(Maybe AuthKey)
    , _scgOAuthToken      :: !(Maybe OAuthToken)
    , _scgSha1Fingerprint :: !Text
    , _scgFields          :: !(Maybe Text)
    , _scgInstance        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scgQuotaUser'
--
-- * 'scgPrettyPrint'
--
-- * 'scgProject'
--
-- * 'scgUserIP'
--
-- * 'scgKey'
--
-- * 'scgOAuthToken'
--
-- * 'scgSha1Fingerprint'
--
-- * 'scgFields'
--
-- * 'scgInstance'
sslCertsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'sha1Fingerprint'
    -> Text -- ^ 'instance'
    -> SSLCertsGet'
sslCertsGet' pScgProject_ pScgSha1Fingerprint_ pScgInstance_ =
    SSLCertsGet'
    { _scgQuotaUser = Nothing
    , _scgPrettyPrint = True
    , _scgProject = pScgProject_
    , _scgUserIP = Nothing
    , _scgKey = Nothing
    , _scgOAuthToken = Nothing
    , _scgSha1Fingerprint = pScgSha1Fingerprint_
    , _scgFields = Nothing
    , _scgInstance = pScgInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
scgQuotaUser :: Lens' SSLCertsGet' (Maybe Text)
scgQuotaUser
  = lens _scgQuotaUser (\ s a -> s{_scgQuotaUser = a})

-- | Returns response with indentations and line breaks.
scgPrettyPrint :: Lens' SSLCertsGet' Bool
scgPrettyPrint
  = lens _scgPrettyPrint
      (\ s a -> s{_scgPrettyPrint = a})

-- | Project ID of the project that contains the instance.
scgProject :: Lens' SSLCertsGet' Text
scgProject
  = lens _scgProject (\ s a -> s{_scgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
scgUserIP :: Lens' SSLCertsGet' (Maybe Text)
scgUserIP
  = lens _scgUserIP (\ s a -> s{_scgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scgKey :: Lens' SSLCertsGet' (Maybe AuthKey)
scgKey = lens _scgKey (\ s a -> s{_scgKey = a})

-- | OAuth 2.0 token for the current user.
scgOAuthToken :: Lens' SSLCertsGet' (Maybe OAuthToken)
scgOAuthToken
  = lens _scgOAuthToken
      (\ s a -> s{_scgOAuthToken = a})

-- | Sha1 FingerPrint.
scgSha1Fingerprint :: Lens' SSLCertsGet' Text
scgSha1Fingerprint
  = lens _scgSha1Fingerprint
      (\ s a -> s{_scgSha1Fingerprint = a})

-- | Selector specifying which fields to include in a partial response.
scgFields :: Lens' SSLCertsGet' (Maybe Text)
scgFields
  = lens _scgFields (\ s a -> s{_scgFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scgInstance :: Lens' SSLCertsGet' Text
scgInstance
  = lens _scgInstance (\ s a -> s{_scgInstance = a})

instance GoogleAuth SSLCertsGet' where
        _AuthKey = scgKey . _Just
        _AuthToken = scgOAuthToken . _Just

instance GoogleRequest SSLCertsGet' where
        type Rs SSLCertsGet' = SSLCert
        request = requestWith sQLAdminRequest
        requestWith rq SSLCertsGet'{..}
          = go _scgProject _scgInstance _scgSha1Fingerprint
              _scgQuotaUser
              (Just _scgPrettyPrint)
              _scgUserIP
              _scgFields
              _scgKey
              _scgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SSLCertsGetResource) rq
