{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Replicapool.InstanceGroupManagers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the instance group manager and all instances contained within.
-- If you\'d like to delete the manager without deleting the instances, you
-- must first abandon the instances to remove them from the group.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @replicapool.instanceGroupManagers.delete@.
module Network.Google.API.Replicapool.InstanceGroupManagers.Delete
    (
    -- * REST Resource
      InstanceGroupManagersDeleteAPI

    -- * Creating a Request
    , instanceGroupManagersDelete'
    , InstanceGroupManagersDelete'

    -- * Request Lenses
    , igmdQuotaUser
    , igmdPrettyPrint
    , igmdProject
    , igmdInstanceGroupManager
    , igmdUserIp
    , igmdZone
    , igmdKey
    , igmdOauthToken
    , igmdFields
    , igmdAlt
    ) where

import           Network.Google.InstanceGroups.Manager.Types
import           Network.Google.Prelude

-- | A resource alias for replicapool.instanceGroupManagers.delete which the
-- 'InstanceGroupManagersDelete'' request conforms to.
type InstanceGroupManagersDeleteAPI =
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
                           QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the instance group manager and all instances contained within.
-- If you\'d like to delete the manager without deleting the instances, you
-- must first abandon the instances to remove them from the group.
--
-- /See:/ 'instanceGroupManagersDelete'' smart constructor.
data InstanceGroupManagersDelete' = InstanceGroupManagersDelete'
    { _igmdQuotaUser            :: !(Maybe Text)
    , _igmdPrettyPrint          :: !Bool
    , _igmdProject              :: !Text
    , _igmdInstanceGroupManager :: !Text
    , _igmdUserIp               :: !(Maybe Text)
    , _igmdZone                 :: !Text
    , _igmdKey                  :: !(Maybe Text)
    , _igmdOauthToken           :: !(Maybe Text)
    , _igmdFields               :: !(Maybe Text)
    , _igmdAlt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmdQuotaUser'
--
-- * 'igmdPrettyPrint'
--
-- * 'igmdProject'
--
-- * 'igmdInstanceGroupManager'
--
-- * 'igmdUserIp'
--
-- * 'igmdZone'
--
-- * 'igmdKey'
--
-- * 'igmdOauthToken'
--
-- * 'igmdFields'
--
-- * 'igmdAlt'
instanceGroupManagersDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersDelete'
instanceGroupManagersDelete' pIgmdProject_ pIgmdInstanceGroupManager_ pIgmdZone_ =
    InstanceGroupManagersDelete'
    { _igmdQuotaUser = Nothing
    , _igmdPrettyPrint = True
    , _igmdProject = pIgmdProject_
    , _igmdInstanceGroupManager = pIgmdInstanceGroupManager_
    , _igmdUserIp = Nothing
    , _igmdZone = pIgmdZone_
    , _igmdKey = Nothing
    , _igmdOauthToken = Nothing
    , _igmdFields = Nothing
    , _igmdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmdQuotaUser :: Lens' InstanceGroupManagersDelete' (Maybe Text)
igmdQuotaUser
  = lens _igmdQuotaUser
      (\ s a -> s{_igmdQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmdPrettyPrint :: Lens' InstanceGroupManagersDelete' Bool
igmdPrettyPrint
  = lens _igmdPrettyPrint
      (\ s a -> s{_igmdPrettyPrint = a})

-- | The Google Developers Console project name.
igmdProject :: Lens' InstanceGroupManagersDelete' Text
igmdProject
  = lens _igmdProject (\ s a -> s{_igmdProject = a})

-- | Name of the Instance Group Manager resource to delete.
igmdInstanceGroupManager :: Lens' InstanceGroupManagersDelete' Text
igmdInstanceGroupManager
  = lens _igmdInstanceGroupManager
      (\ s a -> s{_igmdInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmdUserIp :: Lens' InstanceGroupManagersDelete' (Maybe Text)
igmdUserIp
  = lens _igmdUserIp (\ s a -> s{_igmdUserIp = a})

-- | The name of the zone in which the instance group manager resides.
igmdZone :: Lens' InstanceGroupManagersDelete' Text
igmdZone = lens _igmdZone (\ s a -> s{_igmdZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmdKey :: Lens' InstanceGroupManagersDelete' (Maybe Text)
igmdKey = lens _igmdKey (\ s a -> s{_igmdKey = a})

-- | OAuth 2.0 token for the current user.
igmdOauthToken :: Lens' InstanceGroupManagersDelete' (Maybe Text)
igmdOauthToken
  = lens _igmdOauthToken
      (\ s a -> s{_igmdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmdFields :: Lens' InstanceGroupManagersDelete' (Maybe Text)
igmdFields
  = lens _igmdFields (\ s a -> s{_igmdFields = a})

-- | Data format for the response.
igmdAlt :: Lens' InstanceGroupManagersDelete' Alt
igmdAlt = lens _igmdAlt (\ s a -> s{_igmdAlt = a})

instance GoogleRequest InstanceGroupManagersDelete'
         where
        type Rs InstanceGroupManagersDelete' = Operation
        request
          = requestWithRoute defReq instanceGroupsManagerURL
        requestWithRoute r u InstanceGroupManagersDelete'{..}
          = go _igmdQuotaUser (Just _igmdPrettyPrint)
              _igmdProject
              _igmdInstanceGroupManager
              _igmdUserIp
              _igmdZone
              _igmdKey
              _igmdOauthToken
              _igmdFields
              (Just _igmdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupManagersDeleteAPI)
                      r
                      u
