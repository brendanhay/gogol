{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.BackendServices.GetHealth
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the most recent health check results for this BackendService.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeBackendServicesGetHealth@.
module Compute.BackendServices.GetHealth
    (
    -- * REST Resource
      BackendServicesGetHealthAPI

    -- * Creating a Request
    , backendServicesGetHealth
    , BackendServicesGetHealth

    -- * Request Lenses
    , bsghQuotaUser
    , bsghPrettyPrint
    , bsghProject
    , bsghUserIp
    , bsghKey
    , bsghOauthToken
    , bsghFields
    , bsghAlt
    , bsghBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeBackendServicesGetHealth@ which the
-- 'BackendServicesGetHealth' request conforms to.
type BackendServicesGetHealthAPI =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           Capture "backendService" Text :>
             "getHealth" :> Post '[JSON] BackendServiceGroupHealth

-- | Gets the most recent health check results for this BackendService.
--
-- /See:/ 'backendServicesGetHealth' smart constructor.
data BackendServicesGetHealth = BackendServicesGetHealth
    { _bsghQuotaUser      :: !(Maybe Text)
    , _bsghPrettyPrint    :: !Bool
    , _bsghProject        :: !Text
    , _bsghUserIp         :: !(Maybe Text)
    , _bsghKey            :: !(Maybe Text)
    , _bsghOauthToken     :: !(Maybe Text)
    , _bsghFields         :: !(Maybe Text)
    , _bsghAlt            :: !Text
    , _bsghBackendService :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesGetHealth'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsghQuotaUser'
--
-- * 'bsghPrettyPrint'
--
-- * 'bsghProject'
--
-- * 'bsghUserIp'
--
-- * 'bsghKey'
--
-- * 'bsghOauthToken'
--
-- * 'bsghFields'
--
-- * 'bsghAlt'
--
-- * 'bsghBackendService'
backendServicesGetHealth
    :: Text -- ^ 'project'
    -> Text -- ^ 'backendService'
    -> BackendServicesGetHealth
backendServicesGetHealth pBsghProject_ pBsghBackendService_ =
    BackendServicesGetHealth
    { _bsghQuotaUser = Nothing
    , _bsghPrettyPrint = True
    , _bsghProject = pBsghProject_
    , _bsghUserIp = Nothing
    , _bsghKey = Nothing
    , _bsghOauthToken = Nothing
    , _bsghFields = Nothing
    , _bsghAlt = "json"
    , _bsghBackendService = pBsghBackendService_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bsghQuotaUser :: Lens' BackendServicesGetHealth' (Maybe Text)
bsghQuotaUser
  = lens _bsghQuotaUser
      (\ s a -> s{_bsghQuotaUser = a})

-- | Returns response with indentations and line breaks.
bsghPrettyPrint :: Lens' BackendServicesGetHealth' Bool
bsghPrettyPrint
  = lens _bsghPrettyPrint
      (\ s a -> s{_bsghPrettyPrint = a})

bsghProject :: Lens' BackendServicesGetHealth' Text
bsghProject
  = lens _bsghProject (\ s a -> s{_bsghProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bsghUserIp :: Lens' BackendServicesGetHealth' (Maybe Text)
bsghUserIp
  = lens _bsghUserIp (\ s a -> s{_bsghUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bsghKey :: Lens' BackendServicesGetHealth' (Maybe Text)
bsghKey = lens _bsghKey (\ s a -> s{_bsghKey = a})

-- | OAuth 2.0 token for the current user.
bsghOauthToken :: Lens' BackendServicesGetHealth' (Maybe Text)
bsghOauthToken
  = lens _bsghOauthToken
      (\ s a -> s{_bsghOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bsghFields :: Lens' BackendServicesGetHealth' (Maybe Text)
bsghFields
  = lens _bsghFields (\ s a -> s{_bsghFields = a})

-- | Data format for the response.
bsghAlt :: Lens' BackendServicesGetHealth' Text
bsghAlt = lens _bsghAlt (\ s a -> s{_bsghAlt = a})

-- | Name of the BackendService resource to which the queried instance
-- belongs.
bsghBackendService :: Lens' BackendServicesGetHealth' Text
bsghBackendService
  = lens _bsghBackendService
      (\ s a -> s{_bsghBackendService = a})

instance GoogleRequest BackendServicesGetHealth'
         where
        type Rs BackendServicesGetHealth' =
             BackendServiceGroupHealth
        request = requestWithRoute defReq computeURL
        requestWithRoute r u BackendServicesGetHealth{..}
          = go _bsghQuotaUser _bsghPrettyPrint _bsghProject
              _bsghUserIp
              _bsghKey
              _bsghOauthToken
              _bsghFields
              _bsghAlt
              _bsghBackendService
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackendServicesGetHealthAPI)
                      r
                      u
