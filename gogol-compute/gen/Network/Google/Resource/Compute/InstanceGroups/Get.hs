{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.InstanceGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified instance group resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsGet@.
module Compute.InstanceGroups.Get
    (
    -- * REST Resource
      InstanceGroupsGetAPI

    -- * Creating a Request
    , instanceGroupsGet
    , InstanceGroupsGet

    -- * Request Lenses
    , igggQuotaUser
    , igggPrettyPrint
    , igggProject
    , igggUserIp
    , igggZone
    , igggKey
    , igggOauthToken
    , igggInstanceGroup
    , igggFields
    , igggAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsGet@ which the
-- 'InstanceGroupsGet' request conforms to.
type InstanceGroupsGetAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               Get '[JSON] InstanceGroup

-- | Returns the specified instance group resource.
--
-- /See:/ 'instanceGroupsGet' smart constructor.
data InstanceGroupsGet = InstanceGroupsGet
    { _igggQuotaUser     :: !(Maybe Text)
    , _igggPrettyPrint   :: !Bool
    , _igggProject       :: !Text
    , _igggUserIp        :: !(Maybe Text)
    , _igggZone          :: !Text
    , _igggKey           :: !(Maybe Text)
    , _igggOauthToken    :: !(Maybe Text)
    , _igggInstanceGroup :: !Text
    , _igggFields        :: !(Maybe Text)
    , _igggAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igggQuotaUser'
--
-- * 'igggPrettyPrint'
--
-- * 'igggProject'
--
-- * 'igggUserIp'
--
-- * 'igggZone'
--
-- * 'igggKey'
--
-- * 'igggOauthToken'
--
-- * 'igggInstanceGroup'
--
-- * 'igggFields'
--
-- * 'igggAlt'
instanceGroupsGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsGet
instanceGroupsGet pIgggProject_ pIgggZone_ pIgggInstanceGroup_ =
    InstanceGroupsGet
    { _igggQuotaUser = Nothing
    , _igggPrettyPrint = True
    , _igggProject = pIgggProject_
    , _igggUserIp = Nothing
    , _igggZone = pIgggZone_
    , _igggKey = Nothing
    , _igggOauthToken = Nothing
    , _igggInstanceGroup = pIgggInstanceGroup_
    , _igggFields = Nothing
    , _igggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igggQuotaUser :: Lens' InstanceGroupsGet' (Maybe Text)
igggQuotaUser
  = lens _igggQuotaUser
      (\ s a -> s{_igggQuotaUser = a})

-- | Returns response with indentations and line breaks.
igggPrettyPrint :: Lens' InstanceGroupsGet' Bool
igggPrettyPrint
  = lens _igggPrettyPrint
      (\ s a -> s{_igggPrettyPrint = a})

-- | The project ID for this request.
igggProject :: Lens' InstanceGroupsGet' Text
igggProject
  = lens _igggProject (\ s a -> s{_igggProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igggUserIp :: Lens' InstanceGroupsGet' (Maybe Text)
igggUserIp
  = lens _igggUserIp (\ s a -> s{_igggUserIp = a})

-- | The URL of the zone where the instance group is located.
igggZone :: Lens' InstanceGroupsGet' Text
igggZone = lens _igggZone (\ s a -> s{_igggZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igggKey :: Lens' InstanceGroupsGet' (Maybe Text)
igggKey = lens _igggKey (\ s a -> s{_igggKey = a})

-- | OAuth 2.0 token for the current user.
igggOauthToken :: Lens' InstanceGroupsGet' (Maybe Text)
igggOauthToken
  = lens _igggOauthToken
      (\ s a -> s{_igggOauthToken = a})

-- | The name of the instance group.
igggInstanceGroup :: Lens' InstanceGroupsGet' Text
igggInstanceGroup
  = lens _igggInstanceGroup
      (\ s a -> s{_igggInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
igggFields :: Lens' InstanceGroupsGet' (Maybe Text)
igggFields
  = lens _igggFields (\ s a -> s{_igggFields = a})

-- | Data format for the response.
igggAlt :: Lens' InstanceGroupsGet' Text
igggAlt = lens _igggAlt (\ s a -> s{_igggAlt = a})

instance GoogleRequest InstanceGroupsGet' where
        type Rs InstanceGroupsGet' = InstanceGroup
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupsGet{..}
          = go _igggQuotaUser _igggPrettyPrint _igggProject
              _igggUserIp
              _igggZone
              _igggKey
              _igggOauthToken
              _igggInstanceGroup
              _igggFields
              _igggAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsGetAPI)
                      r
                      u
