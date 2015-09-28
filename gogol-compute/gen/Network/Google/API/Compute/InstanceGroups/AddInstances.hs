{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.InstanceGroups.AddInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a list of instances to an instance group. All of the instances in
-- the instance group must be in the same network.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.addInstances@.
module Network.Google.API.Compute.InstanceGroups.AddInstances
    (
    -- * REST Resource
      InstanceGroupsAddInstancesAPI

    -- * Creating a Request
    , instanceGroupsAddInstances'
    , InstanceGroupsAddInstances'

    -- * Request Lenses
    , igaiQuotaUser
    , igaiPrettyPrint
    , igaiProject
    , igaiUserIp
    , igaiZone
    , igaiKey
    , igaiOauthToken
    , igaiInstanceGroup
    , igaiFields
    , igaiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instanceGroups.addInstances which the
-- 'InstanceGroupsAddInstances'' request conforms to.
type InstanceGroupsAddInstancesAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               "addInstances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Adds a list of instances to an instance group. All of the instances in
-- the instance group must be in the same network.
--
-- /See:/ 'instanceGroupsAddInstances'' smart constructor.
data InstanceGroupsAddInstances' = InstanceGroupsAddInstances'
    { _igaiQuotaUser     :: !(Maybe Text)
    , _igaiPrettyPrint   :: !Bool
    , _igaiProject       :: !Text
    , _igaiUserIp        :: !(Maybe Text)
    , _igaiZone          :: !Text
    , _igaiKey           :: !(Maybe Text)
    , _igaiOauthToken    :: !(Maybe Text)
    , _igaiInstanceGroup :: !Text
    , _igaiFields        :: !(Maybe Text)
    , _igaiAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsAddInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igaiQuotaUser'
--
-- * 'igaiPrettyPrint'
--
-- * 'igaiProject'
--
-- * 'igaiUserIp'
--
-- * 'igaiZone'
--
-- * 'igaiKey'
--
-- * 'igaiOauthToken'
--
-- * 'igaiInstanceGroup'
--
-- * 'igaiFields'
--
-- * 'igaiAlt'
instanceGroupsAddInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsAddInstances'
instanceGroupsAddInstances' pIgaiProject_ pIgaiZone_ pIgaiInstanceGroup_ =
    InstanceGroupsAddInstances'
    { _igaiQuotaUser = Nothing
    , _igaiPrettyPrint = True
    , _igaiProject = pIgaiProject_
    , _igaiUserIp = Nothing
    , _igaiZone = pIgaiZone_
    , _igaiKey = Nothing
    , _igaiOauthToken = Nothing
    , _igaiInstanceGroup = pIgaiInstanceGroup_
    , _igaiFields = Nothing
    , _igaiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igaiQuotaUser :: Lens' InstanceGroupsAddInstances' (Maybe Text)
igaiQuotaUser
  = lens _igaiQuotaUser
      (\ s a -> s{_igaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
igaiPrettyPrint :: Lens' InstanceGroupsAddInstances' Bool
igaiPrettyPrint
  = lens _igaiPrettyPrint
      (\ s a -> s{_igaiPrettyPrint = a})

-- | The project ID for this request.
igaiProject :: Lens' InstanceGroupsAddInstances' Text
igaiProject
  = lens _igaiProject (\ s a -> s{_igaiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igaiUserIp :: Lens' InstanceGroupsAddInstances' (Maybe Text)
igaiUserIp
  = lens _igaiUserIp (\ s a -> s{_igaiUserIp = a})

-- | The URL of the zone where the instance group is located.
igaiZone :: Lens' InstanceGroupsAddInstances' Text
igaiZone = lens _igaiZone (\ s a -> s{_igaiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igaiKey :: Lens' InstanceGroupsAddInstances' (Maybe Text)
igaiKey = lens _igaiKey (\ s a -> s{_igaiKey = a})

-- | OAuth 2.0 token for the current user.
igaiOauthToken :: Lens' InstanceGroupsAddInstances' (Maybe Text)
igaiOauthToken
  = lens _igaiOauthToken
      (\ s a -> s{_igaiOauthToken = a})

-- | The name of the instance group where you are adding instances.
igaiInstanceGroup :: Lens' InstanceGroupsAddInstances' Text
igaiInstanceGroup
  = lens _igaiInstanceGroup
      (\ s a -> s{_igaiInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
igaiFields :: Lens' InstanceGroupsAddInstances' (Maybe Text)
igaiFields
  = lens _igaiFields (\ s a -> s{_igaiFields = a})

-- | Data format for the response.
igaiAlt :: Lens' InstanceGroupsAddInstances' Alt
igaiAlt = lens _igaiAlt (\ s a -> s{_igaiAlt = a})

instance GoogleRequest InstanceGroupsAddInstances'
         where
        type Rs InstanceGroupsAddInstances' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupsAddInstances'{..}
          = go _igaiQuotaUser (Just _igaiPrettyPrint)
              _igaiProject
              _igaiUserIp
              _igaiZone
              _igaiKey
              _igaiOauthToken
              _igaiInstanceGroup
              _igaiFields
              (Just _igaiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsAddInstancesAPI)
                      r
                      u
