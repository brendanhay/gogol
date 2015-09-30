{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.SSLCerts.Get
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
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlSSLCertsGet@.
module Sql.SSLCerts.Get
    (
    -- * REST Resource
      SslCertsGetAPI

    -- * Creating a Request
    , sSLCertsGet
    , SSLCertsGet

    -- * Request Lenses
    , scgQuotaUser
    , scgPrettyPrint
    , scgProject
    , scgUserIp
    , scgKey
    , scgOauthToken
    , scgSha1Fingerprint
    , scgFields
    , scgAlt
    , scgInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlSSLCertsGet@ which the
-- 'SSLCertsGet' request conforms to.
type SslCertsGetAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "sslCerts" :>
               Capture "sha1Fingerprint" Text :> Get '[JSON] SSLCert

-- | Retrieves a particular SSL certificate. Does not include the private key
-- (required for usage). The private key must be saved from the response to
-- initial creation.
--
-- /See:/ 'sSLCertsGet' smart constructor.
data SSLCertsGet = SSLCertsGet
    { _scgQuotaUser       :: !(Maybe Text)
    , _scgPrettyPrint     :: !Bool
    , _scgProject         :: !Text
    , _scgUserIp          :: !(Maybe Text)
    , _scgKey             :: !(Maybe Text)
    , _scgOauthToken      :: !(Maybe Text)
    , _scgSha1Fingerprint :: !Text
    , _scgFields          :: !(Maybe Text)
    , _scgAlt             :: !Text
    , _scgInstance        :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'scgUserIp'
--
-- * 'scgKey'
--
-- * 'scgOauthToken'
--
-- * 'scgSha1Fingerprint'
--
-- * 'scgFields'
--
-- * 'scgAlt'
--
-- * 'scgInstance'
sSLCertsGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'sha1Fingerprint'
    -> Text -- ^ 'instance'
    -> SSLCertsGet
sSLCertsGet pScgProject_ pScgSha1Fingerprint_ pScgInstance_ =
    SSLCertsGet
    { _scgQuotaUser = Nothing
    , _scgPrettyPrint = True
    , _scgProject = pScgProject_
    , _scgUserIp = Nothing
    , _scgKey = Nothing
    , _scgOauthToken = Nothing
    , _scgSha1Fingerprint = pScgSha1Fingerprint_
    , _scgFields = Nothing
    , _scgAlt = "json"
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
scgUserIp :: Lens' SSLCertsGet' (Maybe Text)
scgUserIp
  = lens _scgUserIp (\ s a -> s{_scgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scgKey :: Lens' SSLCertsGet' (Maybe Text)
scgKey = lens _scgKey (\ s a -> s{_scgKey = a})

-- | OAuth 2.0 token for the current user.
scgOauthToken :: Lens' SSLCertsGet' (Maybe Text)
scgOauthToken
  = lens _scgOauthToken
      (\ s a -> s{_scgOauthToken = a})

-- | Sha1 FingerPrint.
scgSha1Fingerprint :: Lens' SSLCertsGet' Text
scgSha1Fingerprint
  = lens _scgSha1Fingerprint
      (\ s a -> s{_scgSha1Fingerprint = a})

-- | Selector specifying which fields to include in a partial response.
scgFields :: Lens' SSLCertsGet' (Maybe Text)
scgFields
  = lens _scgFields (\ s a -> s{_scgFields = a})

-- | Data format for the response.
scgAlt :: Lens' SSLCertsGet' Text
scgAlt = lens _scgAlt (\ s a -> s{_scgAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scgInstance :: Lens' SSLCertsGet' Text
scgInstance
  = lens _scgInstance (\ s a -> s{_scgInstance = a})

instance GoogleRequest SSLCertsGet' where
        type Rs SSLCertsGet' = SSLCert
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u SSLCertsGet{..}
          = go _scgQuotaUser _scgPrettyPrint _scgProject
              _scgUserIp
              _scgKey
              _scgOauthToken
              _scgSha1Fingerprint
              _scgFields
              _scgAlt
              _scgInstance
          where go
                  = clientWithRoute (Proxy :: Proxy SslCertsGetAPI) r u
