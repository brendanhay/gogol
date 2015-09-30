{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Replicapoolupdater.RollingUpdates.Resume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Continues an update in PAUSED state. Has no effect if invoked when the
-- state of the update is ROLLED_OUT.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesResume@.
module Replicapoolupdater.RollingUpdates.Resume
    (
    -- * REST Resource
      RollingUpdatesResumeAPI

    -- * Creating a Request
    , rollingUpdatesResume
    , RollingUpdatesResume

    -- * Request Lenses
    , rRollingUpdate
    , rQuotaUser
    , rPrettyPrint
    , rProject
    , rUserIp
    , rZone
    , rKey
    , rOauthToken
    , rFields
    , rAlt
    ) where

import           Network.Google.InstanceGroupsUpdater.Types
import           Network.Google.Prelude

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesResume@ which the
-- 'RollingUpdatesResume' request conforms to.
type RollingUpdatesResumeAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               "resume" :> Post '[JSON] Operation

-- | Continues an update in PAUSED state. Has no effect if invoked when the
-- state of the update is ROLLED_OUT.
--
-- /See:/ 'rollingUpdatesResume' smart constructor.
data RollingUpdatesResume = RollingUpdatesResume
    { _rRollingUpdate :: !Text
    , _rQuotaUser     :: !(Maybe Text)
    , _rPrettyPrint   :: !Bool
    , _rProject       :: !Text
    , _rUserIp        :: !(Maybe Text)
    , _rZone          :: !Text
    , _rKey           :: !(Maybe Text)
    , _rOauthToken    :: !(Maybe Text)
    , _rFields        :: !(Maybe Text)
    , _rAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesResume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRollingUpdate'
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rProject'
--
-- * 'rUserIp'
--
-- * 'rZone'
--
-- * 'rKey'
--
-- * 'rOauthToken'
--
-- * 'rFields'
--
-- * 'rAlt'
rollingUpdatesResume
    :: Text -- ^ 'rollingUpdate'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesResume
rollingUpdatesResume pRRollingUpdate_ pRProject_ pRZone_ =
    RollingUpdatesResume
    { _rRollingUpdate = pRRollingUpdate_
    , _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rProject = pRProject_
    , _rUserIp = Nothing
    , _rZone = pRZone_
    , _rKey = Nothing
    , _rOauthToken = Nothing
    , _rFields = Nothing
    , _rAlt = "json"
    }

-- | The name of the update.
rRollingUpdate :: Lens' RollingUpdatesResume' Text
rRollingUpdate
  = lens _rRollingUpdate
      (\ s a -> s{_rRollingUpdate = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RollingUpdatesResume' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RollingUpdatesResume' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | The Google Developers Console project name.
rProject :: Lens' RollingUpdatesResume' Text
rProject = lens _rProject (\ s a -> s{_rProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' RollingUpdatesResume' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | The name of the zone in which the update\'s target resides.
rZone :: Lens' RollingUpdatesResume' Text
rZone = lens _rZone (\ s a -> s{_rZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RollingUpdatesResume' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' RollingUpdatesResume' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RollingUpdatesResume' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' RollingUpdatesResume' Text
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest RollingUpdatesResume' where
        type Rs RollingUpdatesResume' = Operation
        request
          = requestWithRoute defReq instanceGroupsUpdaterURL
        requestWithRoute r u RollingUpdatesResume{..}
          = go _rRollingUpdate _rQuotaUser _rPrettyPrint
              _rProject
              _rUserIp
              _rZone
              _rKey
              _rOauthToken
              _rFields
              _rAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesResumeAPI)
                      r
                      u
