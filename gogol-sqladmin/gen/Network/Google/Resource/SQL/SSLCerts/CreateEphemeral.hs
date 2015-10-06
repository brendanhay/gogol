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
-- Module      : Network.Google.Resource.SQL.SSLCerts.CreateEphemeral
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
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLSSLCertsCreateEphemeral@.
module Network.Google.Resource.SQL.SSLCerts.CreateEphemeral
    (
    -- * REST Resource
      SSLCertsCreateEphemeralResource

    -- * Creating a Request
    , sslCertsCreateEphemeral'
    , SSLCertsCreateEphemeral'

    -- * Request Lenses
    , scceQuotaUser
    , sccePrettyPrint
    , scceProject
    , scceUserIP
    , sccePayload
    , scceKey
    , scceOAuthToken
    , scceFields
    , scceInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLSSLCertsCreateEphemeral@ which the
-- 'SSLCertsCreateEphemeral'' request conforms to.
type SSLCertsCreateEphemeralResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "createEphemeral" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] SSLCertsCreateEphemeralRequest :>
                               Post '[JSON] SSLCert

-- | Generates a short-lived X509 certificate containing the provided public
-- key and signed by a private key specific to the target instance. Users
-- may use the certificate to authenticate as themselves when connecting to
-- the database.
--
-- /See:/ 'sslCertsCreateEphemeral'' smart constructor.
data SSLCertsCreateEphemeral' = SSLCertsCreateEphemeral'
    { _scceQuotaUser   :: !(Maybe Text)
    , _sccePrettyPrint :: !Bool
    , _scceProject     :: !Text
    , _scceUserIP      :: !(Maybe Text)
    , _sccePayload     :: !SSLCertsCreateEphemeralRequest
    , _scceKey         :: !(Maybe AuthKey)
    , _scceOAuthToken  :: !(Maybe OAuthToken)
    , _scceFields      :: !(Maybe Text)
    , _scceInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'scceUserIP'
--
-- * 'sccePayload'
--
-- * 'scceKey'
--
-- * 'scceOAuthToken'
--
-- * 'scceFields'
--
-- * 'scceInstance'
sslCertsCreateEphemeral'
    :: Text -- ^ 'project'
    -> SSLCertsCreateEphemeralRequest -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> SSLCertsCreateEphemeral'
sslCertsCreateEphemeral' pScceProject_ pSccePayload_ pScceInstance_ =
    SSLCertsCreateEphemeral'
    { _scceQuotaUser = Nothing
    , _sccePrettyPrint = True
    , _scceProject = pScceProject_
    , _scceUserIP = Nothing
    , _sccePayload = pSccePayload_
    , _scceKey = Nothing
    , _scceOAuthToken = Nothing
    , _scceFields = Nothing
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
scceUserIP :: Lens' SSLCertsCreateEphemeral' (Maybe Text)
scceUserIP
  = lens _scceUserIP (\ s a -> s{_scceUserIP = a})

-- | Multipart request metadata.
sccePayload :: Lens' SSLCertsCreateEphemeral' SSLCertsCreateEphemeralRequest
sccePayload
  = lens _sccePayload (\ s a -> s{_sccePayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scceKey :: Lens' SSLCertsCreateEphemeral' (Maybe AuthKey)
scceKey = lens _scceKey (\ s a -> s{_scceKey = a})

-- | OAuth 2.0 token for the current user.
scceOAuthToken :: Lens' SSLCertsCreateEphemeral' (Maybe OAuthToken)
scceOAuthToken
  = lens _scceOAuthToken
      (\ s a -> s{_scceOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
scceFields :: Lens' SSLCertsCreateEphemeral' (Maybe Text)
scceFields
  = lens _scceFields (\ s a -> s{_scceFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scceInstance :: Lens' SSLCertsCreateEphemeral' Text
scceInstance
  = lens _scceInstance (\ s a -> s{_scceInstance = a})

instance GoogleAuth SSLCertsCreateEphemeral' where
        authKey = scceKey . _Just
        authToken = scceOAuthToken . _Just

instance GoogleRequest SSLCertsCreateEphemeral' where
        type Rs SSLCertsCreateEphemeral' = SSLCert
        request = requestWith sQLAdminRequest
        requestWith rq SSLCertsCreateEphemeral'{..}
          = go _scceProject _scceInstance _scceQuotaUser
              (Just _sccePrettyPrint)
              _scceUserIP
              _scceFields
              _scceKey
              _scceOAuthToken
              (Just AltJSON)
              _sccePayload
          where go
                  = clientBuild
                      (Proxy :: Proxy SSLCertsCreateEphemeralResource)
                      rq
