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
-- Module      : Network.Google.Resource.SQL.SSLCerts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all of the current SSL certificates for the instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLSSLCertsList@.
module Network.Google.Resource.SQL.SSLCerts.List
    (
    -- * REST Resource
      SSLCertsListResource

    -- * Creating a Request
    , sslCertsList'
    , SSLCertsList'

    -- * Request Lenses
    , sclQuotaUser
    , sclPrettyPrint
    , sclProject
    , sclUserIP
    , sclKey
    , sclOAuthToken
    , sclFields
    , sclInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLSSLCertsList@ which the
-- 'SSLCertsList'' request conforms to.
type SSLCertsListResource =
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
                             Get '[JSON] SSLCertsListResponse

-- | Lists all of the current SSL certificates for the instance.
--
-- /See:/ 'sslCertsList'' smart constructor.
data SSLCertsList' = SSLCertsList'
    { _sclQuotaUser   :: !(Maybe Text)
    , _sclPrettyPrint :: !Bool
    , _sclProject     :: !Text
    , _sclUserIP      :: !(Maybe Text)
    , _sclKey         :: !(Maybe AuthKey)
    , _sclOAuthToken  :: !(Maybe OAuthToken)
    , _sclFields      :: !(Maybe Text)
    , _sclInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclQuotaUser'
--
-- * 'sclPrettyPrint'
--
-- * 'sclProject'
--
-- * 'sclUserIP'
--
-- * 'sclKey'
--
-- * 'sclOAuthToken'
--
-- * 'sclFields'
--
-- * 'sclInstance'
sslCertsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> SSLCertsList'
sslCertsList' pSclProject_ pSclInstance_ =
    SSLCertsList'
    { _sclQuotaUser = Nothing
    , _sclPrettyPrint = True
    , _sclProject = pSclProject_
    , _sclUserIP = Nothing
    , _sclKey = Nothing
    , _sclOAuthToken = Nothing
    , _sclFields = Nothing
    , _sclInstance = pSclInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sclQuotaUser :: Lens' SSLCertsList' (Maybe Text)
sclQuotaUser
  = lens _sclQuotaUser (\ s a -> s{_sclQuotaUser = a})

-- | Returns response with indentations and line breaks.
sclPrettyPrint :: Lens' SSLCertsList' Bool
sclPrettyPrint
  = lens _sclPrettyPrint
      (\ s a -> s{_sclPrettyPrint = a})

-- | Project ID of the project for which to list Cloud SQL instances.
sclProject :: Lens' SSLCertsList' Text
sclProject
  = lens _sclProject (\ s a -> s{_sclProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sclUserIP :: Lens' SSLCertsList' (Maybe Text)
sclUserIP
  = lens _sclUserIP (\ s a -> s{_sclUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sclKey :: Lens' SSLCertsList' (Maybe AuthKey)
sclKey = lens _sclKey (\ s a -> s{_sclKey = a})

-- | OAuth 2.0 token for the current user.
sclOAuthToken :: Lens' SSLCertsList' (Maybe OAuthToken)
sclOAuthToken
  = lens _sclOAuthToken
      (\ s a -> s{_sclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sclFields :: Lens' SSLCertsList' (Maybe Text)
sclFields
  = lens _sclFields (\ s a -> s{_sclFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
sclInstance :: Lens' SSLCertsList' Text
sclInstance
  = lens _sclInstance (\ s a -> s{_sclInstance = a})

instance GoogleAuth SSLCertsList' where
        authKey = sclKey . _Just
        authToken = sclOAuthToken . _Just

instance GoogleRequest SSLCertsList' where
        type Rs SSLCertsList' = SSLCertsListResponse
        request = requestWith sQLAdminRequest
        requestWith rq SSLCertsList'{..}
          = go _sclProject _sclInstance _sclQuotaUser
              (Just _sclPrettyPrint)
              _sclUserIP
              _sclFields
              _sclKey
              _sclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SSLCertsListResource)
                      rq
