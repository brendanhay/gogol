{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Replicapool.InstanceGroupManagers.SetInstanceTemplate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the instance template to use when creating new instances in this
-- group. Existing instances are not affected.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @replicapool.instanceGroupManagers.setInstanceTemplate@.
module Network.Google.API.Replicapool.InstanceGroupManagers.SetInstanceTemplate
    (
    -- * REST Resource
      InstanceGroupManagersSetInstanceTemplateAPI

    -- * Creating a Request
    , instanceGroupManagersSetInstanceTemplate'
    , InstanceGroupManagersSetInstanceTemplate'

    -- * Request Lenses
    , igmsitQuotaUser
    , igmsitPrettyPrint
    , igmsitProject
    , igmsitInstanceGroupManager
    , igmsitUserIp
    , igmsitZone
    , igmsitKey
    , igmsitOauthToken
    , igmsitFields
    , igmsitAlt
    ) where

import           Network.Google.InstanceGroups.Manager.Types
import           Network.Google.Prelude

-- | A resource alias for replicapool.instanceGroupManagers.setInstanceTemplate which the
-- 'InstanceGroupManagersSetInstanceTemplate'' request conforms to.
type InstanceGroupManagersSetInstanceTemplateAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "setInstanceTemplate" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Sets the instance template to use when creating new instances in this
-- group. Existing instances are not affected.
--
-- /See:/ 'instanceGroupManagersSetInstanceTemplate'' smart constructor.
data InstanceGroupManagersSetInstanceTemplate' = InstanceGroupManagersSetInstanceTemplate'
    { _igmsitQuotaUser            :: !(Maybe Text)
    , _igmsitPrettyPrint          :: !Bool
    , _igmsitProject              :: !Text
    , _igmsitInstanceGroupManager :: !Text
    , _igmsitUserIp               :: !(Maybe Text)
    , _igmsitZone                 :: !Text
    , _igmsitKey                  :: !(Maybe Text)
    , _igmsitOauthToken           :: !(Maybe Text)
    , _igmsitFields               :: !(Maybe Text)
    , _igmsitAlt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersSetInstanceTemplate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmsitQuotaUser'
--
-- * 'igmsitPrettyPrint'
--
-- * 'igmsitProject'
--
-- * 'igmsitInstanceGroupManager'
--
-- * 'igmsitUserIp'
--
-- * 'igmsitZone'
--
-- * 'igmsitKey'
--
-- * 'igmsitOauthToken'
--
-- * 'igmsitFields'
--
-- * 'igmsitAlt'
instanceGroupManagersSetInstanceTemplate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersSetInstanceTemplate'
instanceGroupManagersSetInstanceTemplate' pIgmsitProject_ pIgmsitInstanceGroupManager_ pIgmsitZone_ =
    InstanceGroupManagersSetInstanceTemplate'
    { _igmsitQuotaUser = Nothing
    , _igmsitPrettyPrint = True
    , _igmsitProject = pIgmsitProject_
    , _igmsitInstanceGroupManager = pIgmsitInstanceGroupManager_
    , _igmsitUserIp = Nothing
    , _igmsitZone = pIgmsitZone_
    , _igmsitKey = Nothing
    , _igmsitOauthToken = Nothing
    , _igmsitFields = Nothing
    , _igmsitAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmsitQuotaUser :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitQuotaUser
  = lens _igmsitQuotaUser
      (\ s a -> s{_igmsitQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmsitPrettyPrint :: Lens' InstanceGroupManagersSetInstanceTemplate' Bool
igmsitPrettyPrint
  = lens _igmsitPrettyPrint
      (\ s a -> s{_igmsitPrettyPrint = a})

-- | The Google Developers Console project name.
igmsitProject :: Lens' InstanceGroupManagersSetInstanceTemplate' Text
igmsitProject
  = lens _igmsitProject
      (\ s a -> s{_igmsitProject = a})

-- | The name of the instance group manager.
igmsitInstanceGroupManager :: Lens' InstanceGroupManagersSetInstanceTemplate' Text
igmsitInstanceGroupManager
  = lens _igmsitInstanceGroupManager
      (\ s a -> s{_igmsitInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmsitUserIp :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitUserIp
  = lens _igmsitUserIp (\ s a -> s{_igmsitUserIp = a})

-- | The name of the zone in which the instance group manager resides.
igmsitZone :: Lens' InstanceGroupManagersSetInstanceTemplate' Text
igmsitZone
  = lens _igmsitZone (\ s a -> s{_igmsitZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmsitKey :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitKey
  = lens _igmsitKey (\ s a -> s{_igmsitKey = a})

-- | OAuth 2.0 token for the current user.
igmsitOauthToken :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitOauthToken
  = lens _igmsitOauthToken
      (\ s a -> s{_igmsitOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmsitFields :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitFields
  = lens _igmsitFields (\ s a -> s{_igmsitFields = a})

-- | Data format for the response.
igmsitAlt :: Lens' InstanceGroupManagersSetInstanceTemplate' Alt
igmsitAlt
  = lens _igmsitAlt (\ s a -> s{_igmsitAlt = a})

instance GoogleRequest
         InstanceGroupManagersSetInstanceTemplate' where
        type Rs InstanceGroupManagersSetInstanceTemplate' =
             Operation
        request
          = requestWithRoute defReq instanceGroupsManagerURL
        requestWithRoute r u
          InstanceGroupManagersSetInstanceTemplate'{..}
          = go _igmsitQuotaUser (Just _igmsitPrettyPrint)
              _igmsitProject
              _igmsitInstanceGroupManager
              _igmsitUserIp
              _igmsitZone
              _igmsitKey
              _igmsitOauthToken
              _igmsitFields
              (Just _igmsitAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupManagersSetInstanceTemplateAPI)
                      r
                      u
