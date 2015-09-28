{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.InstanceGroups.SetNamedPorts
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the named ports in an instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.setNamedPorts@.
module Network.Google.API.Compute.InstanceGroups.SetNamedPorts
    (
    -- * REST Resource
      InstanceGroupsSetNamedPortsAPI

    -- * Creating a Request
    , instanceGroupsSetNamedPorts'
    , InstanceGroupsSetNamedPorts'

    -- * Request Lenses
    , igsnpQuotaUser
    , igsnpPrettyPrint
    , igsnpProject
    , igsnpUserIp
    , igsnpZone
    , igsnpKey
    , igsnpOauthToken
    , igsnpInstanceGroup
    , igsnpFields
    , igsnpAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instanceGroups.setNamedPorts which the
-- 'InstanceGroupsSetNamedPorts'' request conforms to.
type InstanceGroupsSetNamedPortsAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               "setNamedPorts" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Sets the named ports in an instance group.
--
-- /See:/ 'instanceGroupsSetNamedPorts'' smart constructor.
data InstanceGroupsSetNamedPorts' = InstanceGroupsSetNamedPorts'
    { _igsnpQuotaUser     :: !(Maybe Text)
    , _igsnpPrettyPrint   :: !Bool
    , _igsnpProject       :: !Text
    , _igsnpUserIp        :: !(Maybe Text)
    , _igsnpZone          :: !Text
    , _igsnpKey           :: !(Maybe Text)
    , _igsnpOauthToken    :: !(Maybe Text)
    , _igsnpInstanceGroup :: !Text
    , _igsnpFields        :: !(Maybe Text)
    , _igsnpAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsSetNamedPorts'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igsnpQuotaUser'
--
-- * 'igsnpPrettyPrint'
--
-- * 'igsnpProject'
--
-- * 'igsnpUserIp'
--
-- * 'igsnpZone'
--
-- * 'igsnpKey'
--
-- * 'igsnpOauthToken'
--
-- * 'igsnpInstanceGroup'
--
-- * 'igsnpFields'
--
-- * 'igsnpAlt'
instanceGroupsSetNamedPorts'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsSetNamedPorts'
instanceGroupsSetNamedPorts' pIgsnpProject_ pIgsnpZone_ pIgsnpInstanceGroup_ =
    InstanceGroupsSetNamedPorts'
    { _igsnpQuotaUser = Nothing
    , _igsnpPrettyPrint = True
    , _igsnpProject = pIgsnpProject_
    , _igsnpUserIp = Nothing
    , _igsnpZone = pIgsnpZone_
    , _igsnpKey = Nothing
    , _igsnpOauthToken = Nothing
    , _igsnpInstanceGroup = pIgsnpInstanceGroup_
    , _igsnpFields = Nothing
    , _igsnpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igsnpQuotaUser :: Lens' InstanceGroupsSetNamedPorts' (Maybe Text)
igsnpQuotaUser
  = lens _igsnpQuotaUser
      (\ s a -> s{_igsnpQuotaUser = a})

-- | Returns response with indentations and line breaks.
igsnpPrettyPrint :: Lens' InstanceGroupsSetNamedPorts' Bool
igsnpPrettyPrint
  = lens _igsnpPrettyPrint
      (\ s a -> s{_igsnpPrettyPrint = a})

-- | The project ID for this request.
igsnpProject :: Lens' InstanceGroupsSetNamedPorts' Text
igsnpProject
  = lens _igsnpProject (\ s a -> s{_igsnpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igsnpUserIp :: Lens' InstanceGroupsSetNamedPorts' (Maybe Text)
igsnpUserIp
  = lens _igsnpUserIp (\ s a -> s{_igsnpUserIp = a})

-- | The URL of the zone where the instance group is located.
igsnpZone :: Lens' InstanceGroupsSetNamedPorts' Text
igsnpZone
  = lens _igsnpZone (\ s a -> s{_igsnpZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igsnpKey :: Lens' InstanceGroupsSetNamedPorts' (Maybe Text)
igsnpKey = lens _igsnpKey (\ s a -> s{_igsnpKey = a})

-- | OAuth 2.0 token for the current user.
igsnpOauthToken :: Lens' InstanceGroupsSetNamedPorts' (Maybe Text)
igsnpOauthToken
  = lens _igsnpOauthToken
      (\ s a -> s{_igsnpOauthToken = a})

-- | The name of the instance group where the named ports are updated.
igsnpInstanceGroup :: Lens' InstanceGroupsSetNamedPorts' Text
igsnpInstanceGroup
  = lens _igsnpInstanceGroup
      (\ s a -> s{_igsnpInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
igsnpFields :: Lens' InstanceGroupsSetNamedPorts' (Maybe Text)
igsnpFields
  = lens _igsnpFields (\ s a -> s{_igsnpFields = a})

-- | Data format for the response.
igsnpAlt :: Lens' InstanceGroupsSetNamedPorts' Alt
igsnpAlt = lens _igsnpAlt (\ s a -> s{_igsnpAlt = a})

instance GoogleRequest InstanceGroupsSetNamedPorts'
         where
        type Rs InstanceGroupsSetNamedPorts' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupsSetNamedPorts'{..}
          = go _igsnpQuotaUser (Just _igsnpPrettyPrint)
              _igsnpProject
              _igsnpUserIp
              _igsnpZone
              _igsnpKey
              _igsnpOauthToken
              _igsnpInstanceGroup
              _igsnpFields
              (Just _igsnpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsSetNamedPortsAPI)
                      r
                      u
