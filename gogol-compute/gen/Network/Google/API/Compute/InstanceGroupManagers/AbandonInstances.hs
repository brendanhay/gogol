{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.InstanceGroupManagers.AbandonInstances
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.abandonInstances@.
module Network.Google.API.Compute.InstanceGroupManagers.AbandonInstances
    (
    -- * REST Resource
      InstanceGroupManagersAbandonInstancesAPI

    -- * Creating a Request
    , instanceGroupManagersAbandonInstances'
    , InstanceGroupManagersAbandonInstances'

    -- * Request Lenses
    , igmaiQuotaUser
    , igmaiPrettyPrint
    , igmaiProject
    , igmaiInstanceGroupManager
    , igmaiUserIp
    , igmaiZone
    , igmaiKey
    , igmaiOauthToken
    , igmaiFields
    , igmaiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instanceGroupManagers.abandonInstances which the
-- 'InstanceGroupManagersAbandonInstances'' request conforms to.
type InstanceGroupManagersAbandonInstancesAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "abandonInstances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Removes the specified instances from the managed instance group, and
-- from any target pools where they are a member. The instances are not
-- deleted. The managed instance group automatically reduces its targetSize
-- value by the number of instances that you abandon from the group.
--
-- /See:/ 'instanceGroupManagersAbandonInstances'' smart constructor.
data InstanceGroupManagersAbandonInstances' = InstanceGroupManagersAbandonInstances'
    { _igmaiQuotaUser            :: !(Maybe Text)
    , _igmaiPrettyPrint          :: !Bool
    , _igmaiProject              :: !Text
    , _igmaiInstanceGroupManager :: !Text
    , _igmaiUserIp               :: !(Maybe Text)
    , _igmaiZone                 :: !Text
    , _igmaiKey                  :: !(Maybe Text)
    , _igmaiOauthToken           :: !(Maybe Text)
    , _igmaiFields               :: !(Maybe Text)
    , _igmaiAlt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersAbandonInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmaiQuotaUser'
--
-- * 'igmaiPrettyPrint'
--
-- * 'igmaiProject'
--
-- * 'igmaiInstanceGroupManager'
--
-- * 'igmaiUserIp'
--
-- * 'igmaiZone'
--
-- * 'igmaiKey'
--
-- * 'igmaiOauthToken'
--
-- * 'igmaiFields'
--
-- * 'igmaiAlt'
instanceGroupManagersAbandonInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersAbandonInstances'
instanceGroupManagersAbandonInstances' pIgmaiProject_ pIgmaiInstanceGroupManager_ pIgmaiZone_ =
    InstanceGroupManagersAbandonInstances'
    { _igmaiQuotaUser = Nothing
    , _igmaiPrettyPrint = True
    , _igmaiProject = pIgmaiProject_
    , _igmaiInstanceGroupManager = pIgmaiInstanceGroupManager_
    , _igmaiUserIp = Nothing
    , _igmaiZone = pIgmaiZone_
    , _igmaiKey = Nothing
    , _igmaiOauthToken = Nothing
    , _igmaiFields = Nothing
    , _igmaiAlt = JSON
    }

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
igmaiUserIp :: Lens' InstanceGroupManagersAbandonInstances' (Maybe Text)
igmaiUserIp
  = lens _igmaiUserIp (\ s a -> s{_igmaiUserIp = a})

-- | The URL of the zone where the managed instance group is located.
igmaiZone :: Lens' InstanceGroupManagersAbandonInstances' Text
igmaiZone
  = lens _igmaiZone (\ s a -> s{_igmaiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmaiKey :: Lens' InstanceGroupManagersAbandonInstances' (Maybe Text)
igmaiKey = lens _igmaiKey (\ s a -> s{_igmaiKey = a})

-- | OAuth 2.0 token for the current user.
igmaiOauthToken :: Lens' InstanceGroupManagersAbandonInstances' (Maybe Text)
igmaiOauthToken
  = lens _igmaiOauthToken
      (\ s a -> s{_igmaiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmaiFields :: Lens' InstanceGroupManagersAbandonInstances' (Maybe Text)
igmaiFields
  = lens _igmaiFields (\ s a -> s{_igmaiFields = a})

-- | Data format for the response.
igmaiAlt :: Lens' InstanceGroupManagersAbandonInstances' Alt
igmaiAlt = lens _igmaiAlt (\ s a -> s{_igmaiAlt = a})

instance GoogleRequest
         InstanceGroupManagersAbandonInstances' where
        type Rs InstanceGroupManagersAbandonInstances' =
             Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupManagersAbandonInstances'{..}
          = go _igmaiQuotaUser (Just _igmaiPrettyPrint)
              _igmaiProject
              _igmaiInstanceGroupManager
              _igmaiUserIp
              _igmaiZone
              _igmaiKey
              _igmaiOauthToken
              _igmaiFields
              (Just _igmaiAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupManagersAbandonInstancesAPI)
                      r
                      u
