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
-- Module      : Network.Google.Resource.Compute.BackendServices.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a BackendService resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeBackendServicesInsert@.
module Network.Google.Resource.Compute.BackendServices.Insert
    (
    -- * REST Resource
      BackendServicesInsertResource

    -- * Creating a Request
    , backendServicesInsert'
    , BackendServicesInsert'

    -- * Request Lenses
    , bsiQuotaUser
    , bsiPrettyPrint
    , bsiProject
    , bsiUserIP
    , bsiKey
    , bsiOAuthToken
    , bsiBackendService
    , bsiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeBackendServicesInsert@ which the
-- 'BackendServicesInsert'' request conforms to.
type BackendServicesInsertResource =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BackendService :>
                           Post '[JSON] Operation

-- | Creates a BackendService resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'backendServicesInsert'' smart constructor.
data BackendServicesInsert' = BackendServicesInsert'
    { _bsiQuotaUser      :: !(Maybe Text)
    , _bsiPrettyPrint    :: !Bool
    , _bsiProject        :: !Text
    , _bsiUserIP         :: !(Maybe Text)
    , _bsiKey            :: !(Maybe Key)
    , _bsiOAuthToken     :: !(Maybe OAuthToken)
    , _bsiBackendService :: !BackendService
    , _bsiFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsiQuotaUser'
--
-- * 'bsiPrettyPrint'
--
-- * 'bsiProject'
--
-- * 'bsiUserIP'
--
-- * 'bsiKey'
--
-- * 'bsiOAuthToken'
--
-- * 'bsiBackendService'
--
-- * 'bsiFields'
backendServicesInsert'
    :: Text -- ^ 'project'
    -> BackendService -- ^ 'BackendService'
    -> BackendServicesInsert'
backendServicesInsert' pBsiProject_ pBsiBackendService_ =
    BackendServicesInsert'
    { _bsiQuotaUser = Nothing
    , _bsiPrettyPrint = True
    , _bsiProject = pBsiProject_
    , _bsiUserIP = Nothing
    , _bsiKey = Nothing
    , _bsiOAuthToken = Nothing
    , _bsiBackendService = pBsiBackendService_
    , _bsiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bsiQuotaUser :: Lens' BackendServicesInsert' (Maybe Text)
bsiQuotaUser
  = lens _bsiQuotaUser (\ s a -> s{_bsiQuotaUser = a})

-- | Returns response with indentations and line breaks.
bsiPrettyPrint :: Lens' BackendServicesInsert' Bool
bsiPrettyPrint
  = lens _bsiPrettyPrint
      (\ s a -> s{_bsiPrettyPrint = a})

-- | Name of the project scoping this request.
bsiProject :: Lens' BackendServicesInsert' Text
bsiProject
  = lens _bsiProject (\ s a -> s{_bsiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bsiUserIP :: Lens' BackendServicesInsert' (Maybe Text)
bsiUserIP
  = lens _bsiUserIP (\ s a -> s{_bsiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bsiKey :: Lens' BackendServicesInsert' (Maybe Key)
bsiKey = lens _bsiKey (\ s a -> s{_bsiKey = a})

-- | OAuth 2.0 token for the current user.
bsiOAuthToken :: Lens' BackendServicesInsert' (Maybe OAuthToken)
bsiOAuthToken
  = lens _bsiOAuthToken
      (\ s a -> s{_bsiOAuthToken = a})

-- | Multipart request metadata.
bsiBackendService :: Lens' BackendServicesInsert' BackendService
bsiBackendService
  = lens _bsiBackendService
      (\ s a -> s{_bsiBackendService = a})

-- | Selector specifying which fields to include in a partial response.
bsiFields :: Lens' BackendServicesInsert' (Maybe Text)
bsiFields
  = lens _bsiFields (\ s a -> s{_bsiFields = a})

instance GoogleAuth BackendServicesInsert' where
        authKey = bsiKey . _Just
        authToken = bsiOAuthToken . _Just

instance GoogleRequest BackendServicesInsert' where
        type Rs BackendServicesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u BackendServicesInsert'{..}
          = go _bsiQuotaUser (Just _bsiPrettyPrint) _bsiProject
              _bsiUserIP
              _bsiKey
              _bsiOAuthToken
              _bsiFields
              (Just AltJSON)
              _bsiBackendService
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackendServicesInsertResource)
                      r
                      u
