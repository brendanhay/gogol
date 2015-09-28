{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.SSLCerts.CreateEphemeral
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generates a short-lived X509 certificate containing the provided public
-- key and signed by a private key specific to the target instance. Users
-- may use the certificate to authenticate as themselves when connecting to
-- the database.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.sslCerts.createEphemeral@.
module Network.Google.API.Sql.SSLCerts.CreateEphemeral
    (
    -- * REST Resource
      SSLCertsCreateEphemeralAPI

    -- * Creating a Request
    , sSLCertsCreateEphemeral'
    , SSLCertsCreateEphemeral'

    -- * Request Lenses
    , scceQuotaUser
    , sccePrettyPrint
    , scceProject
    , scceUserIp
    , scceKey
    , scceOauthToken
    , scceFields
    , scceAlt
    , scceInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.sslCerts.createEphemeral which the
-- 'SSLCertsCreateEphemeral'' request conforms to.
type SSLCertsCreateEphemeralAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "createEphemeral" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] SslCert

-- | Generates a short-lived X509 certificate containing the provided public
-- key and signed by a private key specific to the target instance. Users
-- may use the certificate to authenticate as themselves when connecting to
-- the database.
--
-- /See:/ 'sSLCertsCreateEphemeral'' smart constructor.
data SSLCertsCreateEphemeral' = SSLCertsCreateEphemeral'
    { _scceQuotaUser   :: !(Maybe Text)
    , _sccePrettyPrint :: !Bool
    , _scceProject     :: !Text
    , _scceUserIp      :: !(Maybe Text)
    , _scceKey         :: !(Maybe Text)
    , _scceOauthToken  :: !(Maybe Text)
    , _scceFields      :: !(Maybe Text)
    , _scceAlt         :: !Alt
    , _scceInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsCreateEphemeral'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scceQuotaUser'
--
-- * 'sccePrettyPrint'
--
-- * 'scceProject'
--
-- * 'scceUserIp'
--
-- * 'scceKey'
--
-- * 'scceOauthToken'
--
-- * 'scceFields'
--
-- * 'scceAlt'
--
-- * 'scceInstance'
sSLCertsCreateEphemeral'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> SSLCertsCreateEphemeral'
sSLCertsCreateEphemeral' pScceProject_ pScceInstance_ =
    SSLCertsCreateEphemeral'
    { _scceQuotaUser = Nothing
    , _sccePrettyPrint = True
    , _scceProject = pScceProject_
    , _scceUserIp = Nothing
    , _scceKey = Nothing
    , _scceOauthToken = Nothing
    , _scceFields = Nothing
    , _scceAlt = JSON
    , _scceInstance = pScceInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
scceQuotaUser :: Lens' SSLCertsCreateEphemeral' (Maybe Text)
scceQuotaUser
  = lens _scceQuotaUser
      (\ s a -> s{_scceQuotaUser = a})

-- | Returns response with indentations and line breaks.
sccePrettyPrint :: Lens' SSLCertsCreateEphemeral' Bool
sccePrettyPrint
  = lens _sccePrettyPrint
      (\ s a -> s{_sccePrettyPrint = a})

-- | Project ID of the Cloud SQL project.
scceProject :: Lens' SSLCertsCreateEphemeral' Text
scceProject
  = lens _scceProject (\ s a -> s{_scceProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
scceUserIp :: Lens' SSLCertsCreateEphemeral' (Maybe Text)
scceUserIp
  = lens _scceUserIp (\ s a -> s{_scceUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scceKey :: Lens' SSLCertsCreateEphemeral' (Maybe Text)
scceKey = lens _scceKey (\ s a -> s{_scceKey = a})

-- | OAuth 2.0 token for the current user.
scceOauthToken :: Lens' SSLCertsCreateEphemeral' (Maybe Text)
scceOauthToken
  = lens _scceOauthToken
      (\ s a -> s{_scceOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
scceFields :: Lens' SSLCertsCreateEphemeral' (Maybe Text)
scceFields
  = lens _scceFields (\ s a -> s{_scceFields = a})

-- | Data format for the response.
scceAlt :: Lens' SSLCertsCreateEphemeral' Alt
scceAlt = lens _scceAlt (\ s a -> s{_scceAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scceInstance :: Lens' SSLCertsCreateEphemeral' Text
scceInstance
  = lens _scceInstance (\ s a -> s{_scceInstance = a})

instance GoogleRequest SSLCertsCreateEphemeral' where
        type Rs SSLCertsCreateEphemeral' = SslCert
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u SSLCertsCreateEphemeral'{..}
          = go _scceQuotaUser (Just _sccePrettyPrint)
              _scceProject
              _scceUserIp
              _scceKey
              _scceOauthToken
              _scceFields
              (Just _scceAlt)
              _scceInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SSLCertsCreateEphemeralAPI)
                      r
                      u
