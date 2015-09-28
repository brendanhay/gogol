{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Replicapool.InstanceGroupManagers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified Instance Group Manager resource.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @replicapool.instanceGroupManagers.get@.
module Network.Google.API.Replicapool.InstanceGroupManagers.Get
    (
    -- * REST Resource
      InstanceGroupManagersGetAPI

    -- * Creating a Request
    , instanceGroupManagersGet'
    , InstanceGroupManagersGet'

    -- * Request Lenses
    , igmgQuotaUser
    , igmgPrettyPrint
    , igmgProject
    , igmgInstanceGroupManager
    , igmgUserIp
    , igmgZone
    , igmgKey
    , igmgOauthToken
    , igmgFields
    , igmgAlt
    ) where

import           Network.Google.InstanceGroups.Manager.Types
import           Network.Google.Prelude

-- | A resource alias for replicapool.instanceGroupManagers.get which the
-- 'InstanceGroupManagersGet'' request conforms to.
type InstanceGroupManagersGetAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] InstanceGroupManager

-- | Returns the specified Instance Group Manager resource.
--
-- /See:/ 'instanceGroupManagersGet'' smart constructor.
data InstanceGroupManagersGet' = InstanceGroupManagersGet'
    { _igmgQuotaUser            :: !(Maybe Text)
    , _igmgPrettyPrint          :: !Bool
    , _igmgProject              :: !Text
    , _igmgInstanceGroupManager :: !Text
    , _igmgUserIp               :: !(Maybe Text)
    , _igmgZone                 :: !Text
    , _igmgKey                  :: !(Maybe Text)
    , _igmgOauthToken           :: !(Maybe Text)
    , _igmgFields               :: !(Maybe Text)
    , _igmgAlt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmgQuotaUser'
--
-- * 'igmgPrettyPrint'
--
-- * 'igmgProject'
--
-- * 'igmgInstanceGroupManager'
--
-- * 'igmgUserIp'
--
-- * 'igmgZone'
--
-- * 'igmgKey'
--
-- * 'igmgOauthToken'
--
-- * 'igmgFields'
--
-- * 'igmgAlt'
instanceGroupManagersGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersGet'
instanceGroupManagersGet' pIgmgProject_ pIgmgInstanceGroupManager_ pIgmgZone_ =
    InstanceGroupManagersGet'
    { _igmgQuotaUser = Nothing
    , _igmgPrettyPrint = True
    , _igmgProject = pIgmgProject_
    , _igmgInstanceGroupManager = pIgmgInstanceGroupManager_
    , _igmgUserIp = Nothing
    , _igmgZone = pIgmgZone_
    , _igmgKey = Nothing
    , _igmgOauthToken = Nothing
    , _igmgFields = Nothing
    , _igmgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmgQuotaUser :: Lens' InstanceGroupManagersGet' (Maybe Text)
igmgQuotaUser
  = lens _igmgQuotaUser
      (\ s a -> s{_igmgQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmgPrettyPrint :: Lens' InstanceGroupManagersGet' Bool
igmgPrettyPrint
  = lens _igmgPrettyPrint
      (\ s a -> s{_igmgPrettyPrint = a})

-- | The Google Developers Console project name.
igmgProject :: Lens' InstanceGroupManagersGet' Text
igmgProject
  = lens _igmgProject (\ s a -> s{_igmgProject = a})

-- | Name of the instance resource to return.
igmgInstanceGroupManager :: Lens' InstanceGroupManagersGet' Text
igmgInstanceGroupManager
  = lens _igmgInstanceGroupManager
      (\ s a -> s{_igmgInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmgUserIp :: Lens' InstanceGroupManagersGet' (Maybe Text)
igmgUserIp
  = lens _igmgUserIp (\ s a -> s{_igmgUserIp = a})

-- | The name of the zone in which the instance group manager resides.
igmgZone :: Lens' InstanceGroupManagersGet' Text
igmgZone = lens _igmgZone (\ s a -> s{_igmgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmgKey :: Lens' InstanceGroupManagersGet' (Maybe Text)
igmgKey = lens _igmgKey (\ s a -> s{_igmgKey = a})

-- | OAuth 2.0 token for the current user.
igmgOauthToken :: Lens' InstanceGroupManagersGet' (Maybe Text)
igmgOauthToken
  = lens _igmgOauthToken
      (\ s a -> s{_igmgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmgFields :: Lens' InstanceGroupManagersGet' (Maybe Text)
igmgFields
  = lens _igmgFields (\ s a -> s{_igmgFields = a})

-- | Data format for the response.
igmgAlt :: Lens' InstanceGroupManagersGet' Alt
igmgAlt = lens _igmgAlt (\ s a -> s{_igmgAlt = a})

instance GoogleRequest InstanceGroupManagersGet'
         where
        type Rs InstanceGroupManagersGet' =
             InstanceGroupManager
        request
          = requestWithRoute defReq instanceGroupsManagerURL
        requestWithRoute r u InstanceGroupManagersGet'{..}
          = go _igmgQuotaUser (Just _igmgPrettyPrint)
              _igmgProject
              _igmgInstanceGroupManager
              _igmgUserIp
              _igmgZone
              _igmgKey
              _igmgOauthToken
              _igmgFields
              (Just _igmgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupManagersGetAPI)
                      r
                      u
