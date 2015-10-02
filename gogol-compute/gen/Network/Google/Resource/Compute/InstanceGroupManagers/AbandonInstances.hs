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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the specified instances from the managed instance group, and
-- from any target pools where they are a member. The instances are not
-- deleted. The managed instance group automatically reduces its targetSize
-- value by the number of instances that you abandon from the group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersAbandonInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances
    (
    -- * REST Resource
      InstanceGroupManagersAbandonInstancesResource

    -- * Creating a Request
    , instanceGroupManagersAbandonInstances'
    , InstanceGroupManagersAbandonInstances'

    -- * Request Lenses
    , igmaiInstanceGroupManagersAbandonInstancesRequest
    , igmaiQuotaUser
    , igmaiPrettyPrint
    , igmaiProject
    , igmaiInstanceGroupManager
    , igmaiUserIP
    , igmaiZone
    , igmaiKey
    , igmaiOAuthToken
    , igmaiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersAbandonInstances@ which the
-- 'InstanceGroupManagersAbandonInstances'' request conforms to.
type InstanceGroupManagersAbandonInstancesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "abandonInstances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON]
                                 InstanceGroupManagersAbandonInstancesRequest
                                 :> Post '[JSON] Operation

-- | Removes the specified instances from the managed instance group, and
-- from any target pools where they are a member. The instances are not
-- deleted. The managed instance group automatically reduces its targetSize
-- value by the number of instances that you abandon from the group.
--
-- /See:/ 'instanceGroupManagersAbandonInstances'' smart constructor.
data InstanceGroupManagersAbandonInstances' = InstanceGroupManagersAbandonInstances'
    { _igmaiInstanceGroupManagersAbandonInstancesRequest :: !InstanceGroupManagersAbandonInstancesRequest
    , _igmaiQuotaUser                                    :: !(Maybe Text)
    , _igmaiPrettyPrint                                  :: !Bool
    , _igmaiProject                                      :: !Text
    , _igmaiInstanceGroupManager                         :: !Text
    , _igmaiUserIP                                       :: !(Maybe Text)
    , _igmaiZone                                         :: !Text
    , _igmaiKey                                          :: !(Maybe Key)
    , _igmaiOAuthToken                                   :: !(Maybe OAuthToken)
    , _igmaiFields                                       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersAbandonInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmaiInstanceGroupManagersAbandonInstancesRequest'
--
-- * 'igmaiQuotaUser'
--
-- * 'igmaiPrettyPrint'
--
-- * 'igmaiProject'
--
-- * 'igmaiInstanceGroupManager'
--
-- * 'igmaiUserIP'
--
-- * 'igmaiZone'
--
-- * 'igmaiKey'
--
-- * 'igmaiOAuthToken'
--
-- * 'igmaiFields'
instanceGroupManagersAbandonInstances'
    :: InstanceGroupManagersAbandonInstancesRequest -- ^ 'InstanceGroupManagersAbandonInstancesRequest'
    -> Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersAbandonInstances'
instanceGroupManagersAbandonInstances' pIgmaiInstanceGroupManagersAbandonInstancesRequest_ pIgmaiProject_ pIgmaiInstanceGroupManager_ pIgmaiZone_ =
    InstanceGroupManagersAbandonInstances'
    { _igmaiInstanceGroupManagersAbandonInstancesRequest = pIgmaiInstanceGroupManagersAbandonInstancesRequest_
    , _igmaiQuotaUser = Nothing
    , _igmaiPrettyPrint = True
    , _igmaiProject = pIgmaiProject_
    , _igmaiInstanceGroupManager = pIgmaiInstanceGroupManager_
    , _igmaiUserIP = Nothing
    , _igmaiZone = pIgmaiZone_
    , _igmaiKey = Nothing
    , _igmaiOAuthToken = Nothing
    , _igmaiFields = Nothing
    }

-- | Multipart request metadata.
igmaiInstanceGroupManagersAbandonInstancesRequest :: Lens' InstanceGroupManagersAbandonInstances' InstanceGroupManagersAbandonInstancesRequest
igmaiInstanceGroupManagersAbandonInstancesRequest
  = lens
      _igmaiInstanceGroupManagersAbandonInstancesRequest
      (\ s a ->
         s{_igmaiInstanceGroupManagersAbandonInstancesRequest
             = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmaiQuotaUser :: Lens' InstanceGroupManagersAbandonInstances' (Maybe Text)
igmaiQuotaUser
  = lens _igmaiQuotaUser
      (\ s a -> s{_igmaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmaiPrettyPrint :: Lens' InstanceGroupManagersAbandonInstances' Bool
igmaiPrettyPrint
  = lens _igmaiPrettyPrint
      (\ s a -> s{_igmaiPrettyPrint = a})

-- | The project ID for this request.
igmaiProject :: Lens' InstanceGroupManagersAbandonInstances' Text
igmaiProject
  = lens _igmaiProject (\ s a -> s{_igmaiProject = a})

-- | The name of the instance group manager.
igmaiInstanceGroupManager :: Lens' InstanceGroupManagersAbandonInstances' Text
igmaiInstanceGroupManager
  = lens _igmaiInstanceGroupManager
      (\ s a -> s{_igmaiInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmaiUserIP :: Lens' InstanceGroupManagersAbandonInstances' (Maybe Text)
igmaiUserIP
  = lens _igmaiUserIP (\ s a -> s{_igmaiUserIP = a})

-- | The URL of the zone where the managed instance group is located.
igmaiZone :: Lens' InstanceGroupManagersAbandonInstances' Text
igmaiZone
  = lens _igmaiZone (\ s a -> s{_igmaiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmaiKey :: Lens' InstanceGroupManagersAbandonInstances' (Maybe Key)
igmaiKey = lens _igmaiKey (\ s a -> s{_igmaiKey = a})

-- | OAuth 2.0 token for the current user.
igmaiOAuthToken :: Lens' InstanceGroupManagersAbandonInstances' (Maybe OAuthToken)
igmaiOAuthToken
  = lens _igmaiOAuthToken
      (\ s a -> s{_igmaiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmaiFields :: Lens' InstanceGroupManagersAbandonInstances' (Maybe Text)
igmaiFields
  = lens _igmaiFields (\ s a -> s{_igmaiFields = a})

instance GoogleAuth
         InstanceGroupManagersAbandonInstances' where
        authKey = igmaiKey . _Just
        authToken = igmaiOAuthToken . _Just

instance GoogleRequest
         InstanceGroupManagersAbandonInstances' where
        type Rs InstanceGroupManagersAbandonInstances' =
             Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupManagersAbandonInstances'{..}
          = go _igmaiProject _igmaiZone
              _igmaiInstanceGroupManager
              _igmaiQuotaUser
              (Just _igmaiPrettyPrint)
              _igmaiUserIP
              _igmaiFields
              _igmaiKey
              _igmaiOAuthToken
              (Just AltJSON)
              _igmaiInstanceGroupManagersAbandonInstancesRequest
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupManagersAbandonInstancesResource)
                      r
                      u
