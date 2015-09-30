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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsDelete@.
module Network.Google.Resource.Compute.InstanceGroups.Delete
    (
    -- * REST Resource
      InstanceGroupsDeleteResource

    -- * Creating a Request
    , instanceGroupsDelete'
    , InstanceGroupsDelete'

    -- * Request Lenses
    , igdQuotaUser
    , igdPrettyPrint
    , igdProject
    , igdUserIp
    , igdZone
    , igdKey
    , igdOauthToken
    , igdInstanceGroup
    , igdFields
    , igdAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsDelete@ which the
-- 'InstanceGroupsDelete'' request conforms to.
type InstanceGroupsDeleteResource =
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
                           QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified instance group.
--
-- /See:/ 'instanceGroupsDelete'' smart constructor.
data InstanceGroupsDelete' = InstanceGroupsDelete'
    { _igdQuotaUser     :: !(Maybe Text)
    , _igdPrettyPrint   :: !Bool
    , _igdProject       :: !Text
    , _igdUserIp        :: !(Maybe Text)
    , _igdZone          :: !Text
    , _igdKey           :: !(Maybe Text)
    , _igdOauthToken    :: !(Maybe Text)
    , _igdInstanceGroup :: !Text
    , _igdFields        :: !(Maybe Text)
    , _igdAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igdQuotaUser'
--
-- * 'igdPrettyPrint'
--
-- * 'igdProject'
--
-- * 'igdUserIp'
--
-- * 'igdZone'
--
-- * 'igdKey'
--
-- * 'igdOauthToken'
--
-- * 'igdInstanceGroup'
--
-- * 'igdFields'
--
-- * 'igdAlt'
instanceGroupsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsDelete'
instanceGroupsDelete' pIgdProject_ pIgdZone_ pIgdInstanceGroup_ =
    InstanceGroupsDelete'
    { _igdQuotaUser = Nothing
    , _igdPrettyPrint = True
    , _igdProject = pIgdProject_
    , _igdUserIp = Nothing
    , _igdZone = pIgdZone_
    , _igdKey = Nothing
    , _igdOauthToken = Nothing
    , _igdInstanceGroup = pIgdInstanceGroup_
    , _igdFields = Nothing
    , _igdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igdQuotaUser :: Lens' InstanceGroupsDelete' (Maybe Text)
igdQuotaUser
  = lens _igdQuotaUser (\ s a -> s{_igdQuotaUser = a})

-- | Returns response with indentations and line breaks.
igdPrettyPrint :: Lens' InstanceGroupsDelete' Bool
igdPrettyPrint
  = lens _igdPrettyPrint
      (\ s a -> s{_igdPrettyPrint = a})

-- | The project ID for this request.
igdProject :: Lens' InstanceGroupsDelete' Text
igdProject
  = lens _igdProject (\ s a -> s{_igdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igdUserIp :: Lens' InstanceGroupsDelete' (Maybe Text)
igdUserIp
  = lens _igdUserIp (\ s a -> s{_igdUserIp = a})

-- | The URL of the zone where the instance group is located.
igdZone :: Lens' InstanceGroupsDelete' Text
igdZone = lens _igdZone (\ s a -> s{_igdZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igdKey :: Lens' InstanceGroupsDelete' (Maybe Text)
igdKey = lens _igdKey (\ s a -> s{_igdKey = a})

-- | OAuth 2.0 token for the current user.
igdOauthToken :: Lens' InstanceGroupsDelete' (Maybe Text)
igdOauthToken
  = lens _igdOauthToken
      (\ s a -> s{_igdOauthToken = a})

-- | The name of the instance group to delete.
igdInstanceGroup :: Lens' InstanceGroupsDelete' Text
igdInstanceGroup
  = lens _igdInstanceGroup
      (\ s a -> s{_igdInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
igdFields :: Lens' InstanceGroupsDelete' (Maybe Text)
igdFields
  = lens _igdFields (\ s a -> s{_igdFields = a})

-- | Data format for the response.
igdAlt :: Lens' InstanceGroupsDelete' Alt
igdAlt = lens _igdAlt (\ s a -> s{_igdAlt = a})

instance GoogleRequest InstanceGroupsDelete' where
        type Rs InstanceGroupsDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupsDelete'{..}
          = go _igdQuotaUser (Just _igdPrettyPrint) _igdProject
              _igdUserIp
              _igdZone
              _igdKey
              _igdOauthToken
              _igdInstanceGroup
              _igdFields
              (Just _igdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsDeleteResource)
                      r
                      u
