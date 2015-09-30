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
module Network.Google.Resource.Compute.InstanceGroups.Get
    (
    -- * REST Resource
      InstanceGroupsGetResource

    -- * Creating a Request
    , instanceGroupsGet'
    , InstanceGroupsGet'

    -- * Request Lenses
    , iggQuotaUser
    , iggPrettyPrint
    , iggProject
    , iggUserIp
    , iggZone
    , iggKey
    , iggOauthToken
    , iggInstanceGroup
    , iggFields
    , iggAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsGet@ which the
-- 'InstanceGroupsGet'' request conforms to.
type InstanceGroupsGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] InstanceGroup

-- | Returns the specified instance group resource.
--
-- /See:/ 'instanceGroupsGet'' smart constructor.
data InstanceGroupsGet' = InstanceGroupsGet'
    { _iggQuotaUser     :: !(Maybe Text)
    , _iggPrettyPrint   :: !Bool
    , _iggProject       :: !Text
    , _iggUserIp        :: !(Maybe Text)
    , _iggZone          :: !Text
    , _iggKey           :: !(Maybe Text)
    , _iggOauthToken    :: !(Maybe Text)
    , _iggInstanceGroup :: !Text
    , _iggFields        :: !(Maybe Text)
    , _iggAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iggQuotaUser'
--
-- * 'iggPrettyPrint'
--
-- * 'iggProject'
--
-- * 'iggUserIp'
--
-- * 'iggZone'
--
-- * 'iggKey'
--
-- * 'iggOauthToken'
--
-- * 'iggInstanceGroup'
--
-- * 'iggFields'
--
-- * 'iggAlt'
instanceGroupsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsGet'
instanceGroupsGet' pIggProject_ pIggZone_ pIggInstanceGroup_ =
    InstanceGroupsGet'
    { _iggQuotaUser = Nothing
    , _iggPrettyPrint = True
    , _iggProject = pIggProject_
    , _iggUserIp = Nothing
    , _iggZone = pIggZone_
    , _iggKey = Nothing
    , _iggOauthToken = Nothing
    , _iggInstanceGroup = pIggInstanceGroup_
    , _iggFields = Nothing
    , _iggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iggQuotaUser :: Lens' InstanceGroupsGet' (Maybe Text)
iggQuotaUser
  = lens _iggQuotaUser (\ s a -> s{_iggQuotaUser = a})

-- | Returns response with indentations and line breaks.
iggPrettyPrint :: Lens' InstanceGroupsGet' Bool
iggPrettyPrint
  = lens _iggPrettyPrint
      (\ s a -> s{_iggPrettyPrint = a})

-- | The project ID for this request.
iggProject :: Lens' InstanceGroupsGet' Text
iggProject
  = lens _iggProject (\ s a -> s{_iggProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iggUserIp :: Lens' InstanceGroupsGet' (Maybe Text)
iggUserIp
  = lens _iggUserIp (\ s a -> s{_iggUserIp = a})

-- | The URL of the zone where the instance group is located.
iggZone :: Lens' InstanceGroupsGet' Text
iggZone = lens _iggZone (\ s a -> s{_iggZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iggKey :: Lens' InstanceGroupsGet' (Maybe Text)
iggKey = lens _iggKey (\ s a -> s{_iggKey = a})

-- | OAuth 2.0 token for the current user.
iggOauthToken :: Lens' InstanceGroupsGet' (Maybe Text)
iggOauthToken
  = lens _iggOauthToken
      (\ s a -> s{_iggOauthToken = a})

-- | The name of the instance group.
iggInstanceGroup :: Lens' InstanceGroupsGet' Text
iggInstanceGroup
  = lens _iggInstanceGroup
      (\ s a -> s{_iggInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
iggFields :: Lens' InstanceGroupsGet' (Maybe Text)
iggFields
  = lens _iggFields (\ s a -> s{_iggFields = a})

-- | Data format for the response.
iggAlt :: Lens' InstanceGroupsGet' Alt
iggAlt = lens _iggAlt (\ s a -> s{_iggAlt = a})

instance GoogleRequest InstanceGroupsGet' where
        type Rs InstanceGroupsGet' = InstanceGroup
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupsGet'{..}
          = go _iggQuotaUser (Just _iggPrettyPrint) _iggProject
              _iggUserIp
              _iggZone
              _iggKey
              _iggOauthToken
              _iggInstanceGroup
              _iggFields
              (Just _iggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsGetResource)
                      r
                      u
