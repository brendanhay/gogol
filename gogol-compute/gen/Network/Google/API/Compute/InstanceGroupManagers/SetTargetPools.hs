{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.InstanceGroupManagers.SetTargetPools
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the target pools to which all new instances in this group are
-- assigned. The target pools for existing instances in the group do not
-- change unless you recreate them.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.setTargetPools@.
module Network.Google.API.Compute.InstanceGroupManagers.SetTargetPools
    (
    -- * REST Resource
      InstanceGroupManagersSetTargetPoolsAPI

    -- * Creating a Request
    , instanceGroupManagersSetTargetPools'
    , InstanceGroupManagersSetTargetPools'

    -- * Request Lenses
    , igmstpQuotaUser
    , igmstpPrettyPrint
    , igmstpProject
    , igmstpInstanceGroupManager
    , igmstpUserIp
    , igmstpZone
    , igmstpKey
    , igmstpOauthToken
    , igmstpFields
    , igmstpAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instanceGroupManagers.setTargetPools which the
-- 'InstanceGroupManagersSetTargetPools'' request conforms to.
type InstanceGroupManagersSetTargetPoolsAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "setTargetPools" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Modifies the target pools to which all new instances in this group are
-- assigned. The target pools for existing instances in the group do not
-- change unless you recreate them.
--
-- /See:/ 'instanceGroupManagersSetTargetPools'' smart constructor.
data InstanceGroupManagersSetTargetPools' = InstanceGroupManagersSetTargetPools'
    { _igmstpQuotaUser            :: !(Maybe Text)
    , _igmstpPrettyPrint          :: !Bool
    , _igmstpProject              :: !Text
    , _igmstpInstanceGroupManager :: !Text
    , _igmstpUserIp               :: !(Maybe Text)
    , _igmstpZone                 :: !Text
    , _igmstpKey                  :: !(Maybe Text)
    , _igmstpOauthToken           :: !(Maybe Text)
    , _igmstpFields               :: !(Maybe Text)
    , _igmstpAlt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersSetTargetPools'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmstpQuotaUser'
--
-- * 'igmstpPrettyPrint'
--
-- * 'igmstpProject'
--
-- * 'igmstpInstanceGroupManager'
--
-- * 'igmstpUserIp'
--
-- * 'igmstpZone'
--
-- * 'igmstpKey'
--
-- * 'igmstpOauthToken'
--
-- * 'igmstpFields'
--
-- * 'igmstpAlt'
instanceGroupManagersSetTargetPools'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersSetTargetPools'
instanceGroupManagersSetTargetPools' pIgmstpProject_ pIgmstpInstanceGroupManager_ pIgmstpZone_ =
    InstanceGroupManagersSetTargetPools'
    { _igmstpQuotaUser = Nothing
    , _igmstpPrettyPrint = True
    , _igmstpProject = pIgmstpProject_
    , _igmstpInstanceGroupManager = pIgmstpInstanceGroupManager_
    , _igmstpUserIp = Nothing
    , _igmstpZone = pIgmstpZone_
    , _igmstpKey = Nothing
    , _igmstpOauthToken = Nothing
    , _igmstpFields = Nothing
    , _igmstpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmstpQuotaUser :: Lens' InstanceGroupManagersSetTargetPools' (Maybe Text)
igmstpQuotaUser
  = lens _igmstpQuotaUser
      (\ s a -> s{_igmstpQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmstpPrettyPrint :: Lens' InstanceGroupManagersSetTargetPools' Bool
igmstpPrettyPrint
  = lens _igmstpPrettyPrint
      (\ s a -> s{_igmstpPrettyPrint = a})

-- | The project ID for this request.
igmstpProject :: Lens' InstanceGroupManagersSetTargetPools' Text
igmstpProject
  = lens _igmstpProject
      (\ s a -> s{_igmstpProject = a})

-- | The name of the instance group manager.
igmstpInstanceGroupManager :: Lens' InstanceGroupManagersSetTargetPools' Text
igmstpInstanceGroupManager
  = lens _igmstpInstanceGroupManager
      (\ s a -> s{_igmstpInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmstpUserIp :: Lens' InstanceGroupManagersSetTargetPools' (Maybe Text)
igmstpUserIp
  = lens _igmstpUserIp (\ s a -> s{_igmstpUserIp = a})

-- | The URL of the zone where the managed instance group is located.
igmstpZone :: Lens' InstanceGroupManagersSetTargetPools' Text
igmstpZone
  = lens _igmstpZone (\ s a -> s{_igmstpZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmstpKey :: Lens' InstanceGroupManagersSetTargetPools' (Maybe Text)
igmstpKey
  = lens _igmstpKey (\ s a -> s{_igmstpKey = a})

-- | OAuth 2.0 token for the current user.
igmstpOauthToken :: Lens' InstanceGroupManagersSetTargetPools' (Maybe Text)
igmstpOauthToken
  = lens _igmstpOauthToken
      (\ s a -> s{_igmstpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmstpFields :: Lens' InstanceGroupManagersSetTargetPools' (Maybe Text)
igmstpFields
  = lens _igmstpFields (\ s a -> s{_igmstpFields = a})

-- | Data format for the response.
igmstpAlt :: Lens' InstanceGroupManagersSetTargetPools' Alt
igmstpAlt
  = lens _igmstpAlt (\ s a -> s{_igmstpAlt = a})

instance GoogleRequest
         InstanceGroupManagersSetTargetPools' where
        type Rs InstanceGroupManagersSetTargetPools' =
             Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupManagersSetTargetPools'{..}
          = go _igmstpQuotaUser (Just _igmstpPrettyPrint)
              _igmstpProject
              _igmstpInstanceGroupManager
              _igmstpUserIp
              _igmstpZone
              _igmstpKey
              _igmstpOauthToken
              _igmstpFields
              (Just _igmstpAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupManagersSetTargetPoolsAPI)
                      r
                      u
