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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.RemoveInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a list of instances from an instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsRemoveInstances@.
module Network.Google.Resource.Compute.InstanceGroups.RemoveInstances
    (
    -- * REST Resource
      InstanceGroupsRemoveInstancesResource

    -- * Creating a Request
    , instanceGroupsRemoveInstances'
    , InstanceGroupsRemoveInstances'

    -- * Request Lenses
    , igriQuotaUser
    , igriPrettyPrint
    , igriProject
    , igriUserIp
    , igriZone
    , igriKey
    , igriOauthToken
    , igriInstanceGroup
    , igriFields
    , igriAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsRemoveInstances@ which the
-- 'InstanceGroupsRemoveInstances'' request conforms to.
type InstanceGroupsRemoveInstancesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               "removeInstances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Removes a list of instances from an instance group.
--
-- /See:/ 'instanceGroupsRemoveInstances'' smart constructor.
data InstanceGroupsRemoveInstances' = InstanceGroupsRemoveInstances'
    { _igriQuotaUser     :: !(Maybe Text)
    , _igriPrettyPrint   :: !Bool
    , _igriProject       :: !Text
    , _igriUserIp        :: !(Maybe Text)
    , _igriZone          :: !Text
    , _igriKey           :: !(Maybe Text)
    , _igriOauthToken    :: !(Maybe Text)
    , _igriInstanceGroup :: !Text
    , _igriFields        :: !(Maybe Text)
    , _igriAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsRemoveInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igriQuotaUser'
--
-- * 'igriPrettyPrint'
--
-- * 'igriProject'
--
-- * 'igriUserIp'
--
-- * 'igriZone'
--
-- * 'igriKey'
--
-- * 'igriOauthToken'
--
-- * 'igriInstanceGroup'
--
-- * 'igriFields'
--
-- * 'igriAlt'
instanceGroupsRemoveInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsRemoveInstances'
instanceGroupsRemoveInstances' pIgriProject_ pIgriZone_ pIgriInstanceGroup_ =
    InstanceGroupsRemoveInstances'
    { _igriQuotaUser = Nothing
    , _igriPrettyPrint = True
    , _igriProject = pIgriProject_
    , _igriUserIp = Nothing
    , _igriZone = pIgriZone_
    , _igriKey = Nothing
    , _igriOauthToken = Nothing
    , _igriInstanceGroup = pIgriInstanceGroup_
    , _igriFields = Nothing
    , _igriAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igriQuotaUser :: Lens' InstanceGroupsRemoveInstances' (Maybe Text)
igriQuotaUser
  = lens _igriQuotaUser
      (\ s a -> s{_igriQuotaUser = a})

-- | Returns response with indentations and line breaks.
igriPrettyPrint :: Lens' InstanceGroupsRemoveInstances' Bool
igriPrettyPrint
  = lens _igriPrettyPrint
      (\ s a -> s{_igriPrettyPrint = a})

-- | The project ID for this request.
igriProject :: Lens' InstanceGroupsRemoveInstances' Text
igriProject
  = lens _igriProject (\ s a -> s{_igriProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igriUserIp :: Lens' InstanceGroupsRemoveInstances' (Maybe Text)
igriUserIp
  = lens _igriUserIp (\ s a -> s{_igriUserIp = a})

-- | The URL of the zone where the instance group is located.
igriZone :: Lens' InstanceGroupsRemoveInstances' Text
igriZone = lens _igriZone (\ s a -> s{_igriZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igriKey :: Lens' InstanceGroupsRemoveInstances' (Maybe Text)
igriKey = lens _igriKey (\ s a -> s{_igriKey = a})

-- | OAuth 2.0 token for the current user.
igriOauthToken :: Lens' InstanceGroupsRemoveInstances' (Maybe Text)
igriOauthToken
  = lens _igriOauthToken
      (\ s a -> s{_igriOauthToken = a})

-- | The name of the instance group where the specified instances will be
-- removed.
igriInstanceGroup :: Lens' InstanceGroupsRemoveInstances' Text
igriInstanceGroup
  = lens _igriInstanceGroup
      (\ s a -> s{_igriInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
igriFields :: Lens' InstanceGroupsRemoveInstances' (Maybe Text)
igriFields
  = lens _igriFields (\ s a -> s{_igriFields = a})

-- | Data format for the response.
igriAlt :: Lens' InstanceGroupsRemoveInstances' Alt
igriAlt = lens _igriAlt (\ s a -> s{_igriAlt = a})

instance GoogleRequest InstanceGroupsRemoveInstances'
         where
        type Rs InstanceGroupsRemoveInstances' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupsRemoveInstances'{..}
          = go _igriQuotaUser (Just _igriPrettyPrint)
              _igriProject
              _igriUserIp
              _igriZone
              _igriKey
              _igriOauthToken
              _igriInstanceGroup
              _igriFields
              (Just _igriAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupsRemoveInstancesResource)
                      r
                      u
