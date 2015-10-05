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
-- Module      : Network.Google.Resource.SQL.SSLCerts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the SSL certificate. The change will not take effect until the
-- instance is restarted.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLSSLCertsDelete@.
module Network.Google.Resource.SQL.SSLCerts.Delete
    (
    -- * REST Resource
      SSLCertsDeleteResource

    -- * Creating a Request
    , sslCertsDelete'
    , SSLCertsDelete'

    -- * Request Lenses
    , scdQuotaUser
    , scdPrettyPrint
    , scdProject
    , scdUserIP
    , scdKey
    , scdOAuthToken
    , scdSha1Fingerprint
    , scdFields
    , scdInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLSSLCertsDelete@ which the
-- 'SSLCertsDelete'' request conforms to.
type SSLCertsDeleteResource =
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
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Delete '[JSON] Operation

-- | Deletes the SSL certificate. The change will not take effect until the
-- instance is restarted.
--
-- /See:/ 'sslCertsDelete'' smart constructor.
data SSLCertsDelete' = SSLCertsDelete'
    { _scdQuotaUser       :: !(Maybe Text)
    , _scdPrettyPrint     :: !Bool
    , _scdProject         :: !Text
    , _scdUserIP          :: !(Maybe Text)
    , _scdKey             :: !(Maybe AuthKey)
    , _scdOAuthToken      :: !(Maybe OAuthToken)
    , _scdSha1Fingerprint :: !Text
    , _scdFields          :: !(Maybe Text)
    , _scdInstance        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdQuotaUser'
--
-- * 'scdPrettyPrint'
--
-- * 'scdProject'
--
-- * 'scdUserIP'
--
-- * 'scdKey'
--
-- * 'scdOAuthToken'
--
-- * 'scdSha1Fingerprint'
--
-- * 'scdFields'
--
-- * 'scdInstance'
sslCertsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'sha1Fingerprint'
    -> Text -- ^ 'instance'
    -> SSLCertsDelete'
sslCertsDelete' pScdProject_ pScdSha1Fingerprint_ pScdInstance_ =
    SSLCertsDelete'
    { _scdQuotaUser = Nothing
    , _scdPrettyPrint = True
    , _scdProject = pScdProject_
    , _scdUserIP = Nothing
    , _scdKey = Nothing
    , _scdOAuthToken = Nothing
    , _scdSha1Fingerprint = pScdSha1Fingerprint_
    , _scdFields = Nothing
    , _scdInstance = pScdInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
scdQuotaUser :: Lens' SSLCertsDelete' (Maybe Text)
scdQuotaUser
  = lens _scdQuotaUser (\ s a -> s{_scdQuotaUser = a})

-- | Returns response with indentations and line breaks.
scdPrettyPrint :: Lens' SSLCertsDelete' Bool
scdPrettyPrint
  = lens _scdPrettyPrint
      (\ s a -> s{_scdPrettyPrint = a})

-- | Project ID of the project that contains the instance to be deleted.
scdProject :: Lens' SSLCertsDelete' Text
scdProject
  = lens _scdProject (\ s a -> s{_scdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
scdUserIP :: Lens' SSLCertsDelete' (Maybe Text)
scdUserIP
  = lens _scdUserIP (\ s a -> s{_scdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scdKey :: Lens' SSLCertsDelete' (Maybe AuthKey)
scdKey = lens _scdKey (\ s a -> s{_scdKey = a})

-- | OAuth 2.0 token for the current user.
scdOAuthToken :: Lens' SSLCertsDelete' (Maybe OAuthToken)
scdOAuthToken
  = lens _scdOAuthToken
      (\ s a -> s{_scdOAuthToken = a})

-- | Sha1 FingerPrint.
scdSha1Fingerprint :: Lens' SSLCertsDelete' Text
scdSha1Fingerprint
  = lens _scdSha1Fingerprint
      (\ s a -> s{_scdSha1Fingerprint = a})

-- | Selector specifying which fields to include in a partial response.
scdFields :: Lens' SSLCertsDelete' (Maybe Text)
scdFields
  = lens _scdFields (\ s a -> s{_scdFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scdInstance :: Lens' SSLCertsDelete' Text
scdInstance
  = lens _scdInstance (\ s a -> s{_scdInstance = a})

instance GoogleAuth SSLCertsDelete' where
        authKey = scdKey . _Just
        authToken = scdOAuthToken . _Just

instance GoogleRequest SSLCertsDelete' where
        type Rs SSLCertsDelete' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u SSLCertsDelete'{..}
          = go _scdProject _scdInstance _scdSha1Fingerprint
              _scdQuotaUser
              (Just _scdPrettyPrint)
              _scdUserIP
              _scdFields
              _scdKey
              _scdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SSLCertsDeleteResource)
                      r
                      u
