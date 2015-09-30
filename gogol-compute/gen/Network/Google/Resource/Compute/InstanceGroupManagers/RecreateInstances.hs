{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.RecreateInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Recreates the specified instances. The instances are deleted, then
-- recreated using the managed instance group\'s current instance template.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersRecreateInstances@.
module Compute.InstanceGroupManagers.RecreateInstances
    (
    -- * REST Resource
      InstanceGroupManagersRecreateInstancesAPI

    -- * Creating a Request
    , instanceGroupManagersRecreateInstances
    , InstanceGroupManagersRecreateInstances

    -- * Request Lenses
    , igmriQuotaUser
    , igmriPrettyPrint
    , igmriProject
    , igmriInstanceGroupManager
    , igmriUserIp
    , igmriZone
    , igmriKey
    , igmriOauthToken
    , igmriFields
    , igmriAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersRecreateInstances@ which the
-- 'InstanceGroupManagersRecreateInstances' request conforms to.
type InstanceGroupManagersRecreateInstancesAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "recreateInstances" :> Post '[JSON] Operation

-- | Recreates the specified instances. The instances are deleted, then
-- recreated using the managed instance group\'s current instance template.
--
-- /See:/ 'instanceGroupManagersRecreateInstances' smart constructor.
data InstanceGroupManagersRecreateInstances = InstanceGroupManagersRecreateInstances
    { _igmriQuotaUser            :: !(Maybe Text)
    , _igmriPrettyPrint          :: !Bool
    , _igmriProject              :: !Text
    , _igmriInstanceGroupManager :: !Text
    , _igmriUserIp               :: !(Maybe Text)
    , _igmriZone                 :: !Text
    , _igmriKey                  :: !(Maybe Text)
    , _igmriOauthToken           :: !(Maybe Text)
    , _igmriFields               :: !(Maybe Text)
    , _igmriAlt                  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersRecreateInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmriQuotaUser'
--
-- * 'igmriPrettyPrint'
--
-- * 'igmriProject'
--
-- * 'igmriInstanceGroupManager'
--
-- * 'igmriUserIp'
--
-- * 'igmriZone'
--
-- * 'igmriKey'
--
-- * 'igmriOauthToken'
--
-- * 'igmriFields'
--
-- * 'igmriAlt'
instanceGroupManagersRecreateInstances
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersRecreateInstances
instanceGroupManagersRecreateInstances pIgmriProject_ pIgmriInstanceGroupManager_ pIgmriZone_ =
    InstanceGroupManagersRecreateInstances
    { _igmriQuotaUser = Nothing
    , _igmriPrettyPrint = True
    , _igmriProject = pIgmriProject_
    , _igmriInstanceGroupManager = pIgmriInstanceGroupManager_
    , _igmriUserIp = Nothing
    , _igmriZone = pIgmriZone_
    , _igmriKey = Nothing
    , _igmriOauthToken = Nothing
    , _igmriFields = Nothing
    , _igmriAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmriQuotaUser :: Lens' InstanceGroupManagersRecreateInstances' (Maybe Text)
igmriQuotaUser
  = lens _igmriQuotaUser
      (\ s a -> s{_igmriQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmriPrettyPrint :: Lens' InstanceGroupManagersRecreateInstances' Bool
igmriPrettyPrint
  = lens _igmriPrettyPrint
      (\ s a -> s{_igmriPrettyPrint = a})

-- | The project ID for this request.
igmriProject :: Lens' InstanceGroupManagersRecreateInstances' Text
igmriProject
  = lens _igmriProject (\ s a -> s{_igmriProject = a})

-- | The name of the instance group manager.
igmriInstanceGroupManager :: Lens' InstanceGroupManagersRecreateInstances' Text
igmriInstanceGroupManager
  = lens _igmriInstanceGroupManager
      (\ s a -> s{_igmriInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmriUserIp :: Lens' InstanceGroupManagersRecreateInstances' (Maybe Text)
igmriUserIp
  = lens _igmriUserIp (\ s a -> s{_igmriUserIp = a})

-- | The URL of the zone where the managed instance group is located.
igmriZone :: Lens' InstanceGroupManagersRecreateInstances' Text
igmriZone
  = lens _igmriZone (\ s a -> s{_igmriZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmriKey :: Lens' InstanceGroupManagersRecreateInstances' (Maybe Text)
igmriKey = lens _igmriKey (\ s a -> s{_igmriKey = a})

-- | OAuth 2.0 token for the current user.
igmriOauthToken :: Lens' InstanceGroupManagersRecreateInstances' (Maybe Text)
igmriOauthToken
  = lens _igmriOauthToken
      (\ s a -> s{_igmriOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmriFields :: Lens' InstanceGroupManagersRecreateInstances' (Maybe Text)
igmriFields
  = lens _igmriFields (\ s a -> s{_igmriFields = a})

-- | Data format for the response.
igmriAlt :: Lens' InstanceGroupManagersRecreateInstances' Text
igmriAlt = lens _igmriAlt (\ s a -> s{_igmriAlt = a})

instance GoogleRequest
         InstanceGroupManagersRecreateInstances' where
        type Rs InstanceGroupManagersRecreateInstances' =
             Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupManagersRecreateInstances{..}
          = go _igmriQuotaUser _igmriPrettyPrint _igmriProject
              _igmriInstanceGroupManager
              _igmriUserIp
              _igmriZone
              _igmriKey
              _igmriOauthToken
              _igmriFields
              _igmriAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupManagersRecreateInstancesAPI)
                      r
                      u
