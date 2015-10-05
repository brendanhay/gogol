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
-- Module      : Network.Google.Resource.SQL.SSLCerts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an SSL certificate and returns it along with the private key and
-- server certificate authority. The new certificate will not be usable
-- until the instance is restarted.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLSSLCertsInsert@.
module Network.Google.Resource.SQL.SSLCerts.Insert
    (
    -- * REST Resource
      SSLCertsInsertResource

    -- * Creating a Request
    , sslCertsInsert'
    , SSLCertsInsert'

    -- * Request Lenses
    , sciQuotaUser
    , sciPrettyPrint
    , sciProject
    , sciUserIP
    , sciPayload
    , sciKey
    , sciOAuthToken
    , sciFields
    , sciInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLSSLCertsInsert@ which the
-- 'SSLCertsInsert'' request conforms to.
type SSLCertsInsertResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "sslCerts" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] SSLCertsInsertRequest :>
                               Post '[JSON] SSLCertsInsertResponse

-- | Creates an SSL certificate and returns it along with the private key and
-- server certificate authority. The new certificate will not be usable
-- until the instance is restarted.
--
-- /See:/ 'sslCertsInsert'' smart constructor.
data SSLCertsInsert' = SSLCertsInsert'
    { _sciQuotaUser   :: !(Maybe Text)
    , _sciPrettyPrint :: !Bool
    , _sciProject     :: !Text
    , _sciUserIP      :: !(Maybe Text)
    , _sciPayload     :: !SSLCertsInsertRequest
    , _sciKey         :: !(Maybe AuthKey)
    , _sciOAuthToken  :: !(Maybe OAuthToken)
    , _sciFields      :: !(Maybe Text)
    , _sciInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sciQuotaUser'
--
-- * 'sciPrettyPrint'
--
-- * 'sciProject'
--
-- * 'sciUserIP'
--
-- * 'sciPayload'
--
-- * 'sciKey'
--
-- * 'sciOAuthToken'
--
-- * 'sciFields'
--
-- * 'sciInstance'
sslCertsInsert'
    :: Text -- ^ 'project'
    -> SSLCertsInsertRequest -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> SSLCertsInsert'
sslCertsInsert' pSciProject_ pSciPayload_ pSciInstance_ =
    SSLCertsInsert'
    { _sciQuotaUser = Nothing
    , _sciPrettyPrint = True
    , _sciProject = pSciProject_
    , _sciUserIP = Nothing
    , _sciPayload = pSciPayload_
    , _sciKey = Nothing
    , _sciOAuthToken = Nothing
    , _sciFields = Nothing
    , _sciInstance = pSciInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sciQuotaUser :: Lens' SSLCertsInsert' (Maybe Text)
sciQuotaUser
  = lens _sciQuotaUser (\ s a -> s{_sciQuotaUser = a})

-- | Returns response with indentations and line breaks.
sciPrettyPrint :: Lens' SSLCertsInsert' Bool
sciPrettyPrint
  = lens _sciPrettyPrint
      (\ s a -> s{_sciPrettyPrint = a})

-- | Project ID of the project to which the newly created Cloud SQL instances
-- should belong.
sciProject :: Lens' SSLCertsInsert' Text
sciProject
  = lens _sciProject (\ s a -> s{_sciProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sciUserIP :: Lens' SSLCertsInsert' (Maybe Text)
sciUserIP
  = lens _sciUserIP (\ s a -> s{_sciUserIP = a})

-- | Multipart request metadata.
sciPayload :: Lens' SSLCertsInsert' SSLCertsInsertRequest
sciPayload
  = lens _sciPayload (\ s a -> s{_sciPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sciKey :: Lens' SSLCertsInsert' (Maybe AuthKey)
sciKey = lens _sciKey (\ s a -> s{_sciKey = a})

-- | OAuth 2.0 token for the current user.
sciOAuthToken :: Lens' SSLCertsInsert' (Maybe OAuthToken)
sciOAuthToken
  = lens _sciOAuthToken
      (\ s a -> s{_sciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sciFields :: Lens' SSLCertsInsert' (Maybe Text)
sciFields
  = lens _sciFields (\ s a -> s{_sciFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
sciInstance :: Lens' SSLCertsInsert' Text
sciInstance
  = lens _sciInstance (\ s a -> s{_sciInstance = a})

instance GoogleAuth SSLCertsInsert' where
        authKey = sciKey . _Just
        authToken = sciOAuthToken . _Just

instance GoogleRequest SSLCertsInsert' where
        type Rs SSLCertsInsert' = SSLCertsInsertResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u SSLCertsInsert'{..}
          = go _sciProject _sciInstance _sciQuotaUser
              (Just _sciPrettyPrint)
              _sciUserIP
              _sciFields
              _sciKey
              _sciOAuthToken
              (Just AltJSON)
              _sciPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SSLCertsInsertResource)
                      r
                      u
