{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.BackendServices.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the BackendService resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeBackendServicesUpdate@.
module Compute.BackendServices.Update
    (
    -- * REST Resource
      BackendServicesUpdateAPI

    -- * Creating a Request
    , backendServicesUpdate
    , BackendServicesUpdate

    -- * Request Lenses
    , bsuQuotaUser
    , bsuPrettyPrint
    , bsuProject
    , bsuUserIp
    , bsuKey
    , bsuOauthToken
    , bsuFields
    , bsuAlt
    , bsuBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeBackendServicesUpdate@ which the
-- 'BackendServicesUpdate' request conforms to.
type BackendServicesUpdateAPI =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           Capture "backendService" Text :>
             Put '[JSON] Operation

-- | Update the entire content of the BackendService resource.
--
-- /See:/ 'backendServicesUpdate' smart constructor.
data BackendServicesUpdate = BackendServicesUpdate
    { _bsuQuotaUser      :: !(Maybe Text)
    , _bsuPrettyPrint    :: !Bool
    , _bsuProject        :: !Text
    , _bsuUserIp         :: !(Maybe Text)
    , _bsuKey            :: !(Maybe Text)
    , _bsuOauthToken     :: !(Maybe Text)
    , _bsuFields         :: !(Maybe Text)
    , _bsuAlt            :: !Text
    , _bsuBackendService :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsuQuotaUser'
--
-- * 'bsuPrettyPrint'
--
-- * 'bsuProject'
--
-- * 'bsuUserIp'
--
-- * 'bsuKey'
--
-- * 'bsuOauthToken'
--
-- * 'bsuFields'
--
-- * 'bsuAlt'
--
-- * 'bsuBackendService'
backendServicesUpdate
    :: Text -- ^ 'project'
    -> Text -- ^ 'backendService'
    -> BackendServicesUpdate
backendServicesUpdate pBsuProject_ pBsuBackendService_ =
    BackendServicesUpdate
    { _bsuQuotaUser = Nothing
    , _bsuPrettyPrint = True
    , _bsuProject = pBsuProject_
    , _bsuUserIp = Nothing
    , _bsuKey = Nothing
    , _bsuOauthToken = Nothing
    , _bsuFields = Nothing
    , _bsuAlt = "json"
    , _bsuBackendService = pBsuBackendService_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bsuQuotaUser :: Lens' BackendServicesUpdate' (Maybe Text)
bsuQuotaUser
  = lens _bsuQuotaUser (\ s a -> s{_bsuQuotaUser = a})

-- | Returns response with indentations and line breaks.
bsuPrettyPrint :: Lens' BackendServicesUpdate' Bool
bsuPrettyPrint
  = lens _bsuPrettyPrint
      (\ s a -> s{_bsuPrettyPrint = a})

-- | Name of the project scoping this request.
bsuProject :: Lens' BackendServicesUpdate' Text
bsuProject
  = lens _bsuProject (\ s a -> s{_bsuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bsuUserIp :: Lens' BackendServicesUpdate' (Maybe Text)
bsuUserIp
  = lens _bsuUserIp (\ s a -> s{_bsuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bsuKey :: Lens' BackendServicesUpdate' (Maybe Text)
bsuKey = lens _bsuKey (\ s a -> s{_bsuKey = a})

-- | OAuth 2.0 token for the current user.
bsuOauthToken :: Lens' BackendServicesUpdate' (Maybe Text)
bsuOauthToken
  = lens _bsuOauthToken
      (\ s a -> s{_bsuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bsuFields :: Lens' BackendServicesUpdate' (Maybe Text)
bsuFields
  = lens _bsuFields (\ s a -> s{_bsuFields = a})

-- | Data format for the response.
bsuAlt :: Lens' BackendServicesUpdate' Text
bsuAlt = lens _bsuAlt (\ s a -> s{_bsuAlt = a})

-- | Name of the BackendService resource to update.
bsuBackendService :: Lens' BackendServicesUpdate' Text
bsuBackendService
  = lens _bsuBackendService
      (\ s a -> s{_bsuBackendService = a})

instance GoogleRequest BackendServicesUpdate' where
        type Rs BackendServicesUpdate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u BackendServicesUpdate{..}
          = go _bsuQuotaUser _bsuPrettyPrint _bsuProject
              _bsuUserIp
              _bsuKey
              _bsuOauthToken
              _bsuFields
              _bsuAlt
              _bsuBackendService
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackendServicesUpdateAPI)
                      r
                      u
