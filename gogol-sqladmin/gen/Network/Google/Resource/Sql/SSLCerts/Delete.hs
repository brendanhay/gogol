{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.SSLCerts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the SSL certificate. The change will not take effect until the
-- instance is restarted.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlSSLCertsDelete@.
module Network.Google.Resource.Sql.SSLCerts.Delete
    (
    -- * REST Resource
      SslCertsDeleteResource

    -- * Creating a Request
    , sSLCertsDelete'
    , SSLCertsDelete'

    -- * Request Lenses
    , scdQuotaUser
    , scdPrettyPrint
    , scdProject
    , scdUserIp
    , scdKey
    , scdOauthToken
    , scdSha1Fingerprint
    , scdFields
    , scdAlt
    , scdInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlSSLCertsDelete@ which the
-- 'SSLCertsDelete'' request conforms to.
type SslCertsDeleteResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "sslCerts" :>
               Capture "sha1Fingerprint" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the SSL certificate. The change will not take effect until the
-- instance is restarted.
--
-- /See:/ 'sSLCertsDelete'' smart constructor.
data SSLCertsDelete' = SSLCertsDelete'
    { _scdQuotaUser       :: !(Maybe Text)
    , _scdPrettyPrint     :: !Bool
    , _scdProject         :: !Text
    , _scdUserIp          :: !(Maybe Text)
    , _scdKey             :: !(Maybe Text)
    , _scdOauthToken      :: !(Maybe Text)
    , _scdSha1Fingerprint :: !Text
    , _scdFields          :: !(Maybe Text)
    , _scdAlt             :: !Alt
    , _scdInstance        :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'scdUserIp'
--
-- * 'scdKey'
--
-- * 'scdOauthToken'
--
-- * 'scdSha1Fingerprint'
--
-- * 'scdFields'
--
-- * 'scdAlt'
--
-- * 'scdInstance'
sSLCertsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'sha1Fingerprint'
    -> Text -- ^ 'instance'
    -> SSLCertsDelete'
sSLCertsDelete' pScdProject_ pScdSha1Fingerprint_ pScdInstance_ =
    SSLCertsDelete'
    { _scdQuotaUser = Nothing
    , _scdPrettyPrint = True
    , _scdProject = pScdProject_
    , _scdUserIp = Nothing
    , _scdKey = Nothing
    , _scdOauthToken = Nothing
    , _scdSha1Fingerprint = pScdSha1Fingerprint_
    , _scdFields = Nothing
    , _scdAlt = JSON
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
scdUserIp :: Lens' SSLCertsDelete' (Maybe Text)
scdUserIp
  = lens _scdUserIp (\ s a -> s{_scdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scdKey :: Lens' SSLCertsDelete' (Maybe Text)
scdKey = lens _scdKey (\ s a -> s{_scdKey = a})

-- | OAuth 2.0 token for the current user.
scdOauthToken :: Lens' SSLCertsDelete' (Maybe Text)
scdOauthToken
  = lens _scdOauthToken
      (\ s a -> s{_scdOauthToken = a})

-- | Sha1 FingerPrint.
scdSha1Fingerprint :: Lens' SSLCertsDelete' Text
scdSha1Fingerprint
  = lens _scdSha1Fingerprint
      (\ s a -> s{_scdSha1Fingerprint = a})

-- | Selector specifying which fields to include in a partial response.
scdFields :: Lens' SSLCertsDelete' (Maybe Text)
scdFields
  = lens _scdFields (\ s a -> s{_scdFields = a})

-- | Data format for the response.
scdAlt :: Lens' SSLCertsDelete' Alt
scdAlt = lens _scdAlt (\ s a -> s{_scdAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scdInstance :: Lens' SSLCertsDelete' Text
scdInstance
  = lens _scdInstance (\ s a -> s{_scdInstance = a})

instance GoogleRequest SSLCertsDelete' where
        type Rs SSLCertsDelete' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u SSLCertsDelete'{..}
          = go _scdQuotaUser (Just _scdPrettyPrint) _scdProject
              _scdUserIp
              _scdKey
              _scdOauthToken
              _scdSha1Fingerprint
              _scdFields
              (Just _scdAlt)
              _scdInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SslCertsDeleteResource)
                      r
                      u
