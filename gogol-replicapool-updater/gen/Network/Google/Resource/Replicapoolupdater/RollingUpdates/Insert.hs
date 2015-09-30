{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Replicapoolupdater.RollingUpdates.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts and starts a new update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesInsert@.
module Replicapoolupdater.RollingUpdates.Insert
    (
    -- * REST Resource
      RollingUpdatesInsertAPI

    -- * Creating a Request
    , rollingUpdatesInsert
    , RollingUpdatesInsert

    -- * Request Lenses
    , ruiQuotaUser
    , ruiPrettyPrint
    , ruiProject
    , ruiUserIp
    , ruiZone
    , ruiKey
    , ruiOauthToken
    , ruiFields
    , ruiAlt
    ) where

import           Network.Google.InstanceGroupsUpdater.Types
import           Network.Google.Prelude

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesInsert@ which the
-- 'RollingUpdatesInsert' request conforms to.
type RollingUpdatesInsertAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :> Post '[JSON] Operation

-- | Inserts and starts a new update.
--
-- /See:/ 'rollingUpdatesInsert' smart constructor.
data RollingUpdatesInsert = RollingUpdatesInsert
    { _ruiQuotaUser   :: !(Maybe Text)
    , _ruiPrettyPrint :: !Bool
    , _ruiProject     :: !Text
    , _ruiUserIp      :: !(Maybe Text)
    , _ruiZone        :: !Text
    , _ruiKey         :: !(Maybe Text)
    , _ruiOauthToken  :: !(Maybe Text)
    , _ruiFields      :: !(Maybe Text)
    , _ruiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruiQuotaUser'
--
-- * 'ruiPrettyPrint'
--
-- * 'ruiProject'
--
-- * 'ruiUserIp'
--
-- * 'ruiZone'
--
-- * 'ruiKey'
--
-- * 'ruiOauthToken'
--
-- * 'ruiFields'
--
-- * 'ruiAlt'
rollingUpdatesInsert
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesInsert
rollingUpdatesInsert pRuiProject_ pRuiZone_ =
    RollingUpdatesInsert
    { _ruiQuotaUser = Nothing
    , _ruiPrettyPrint = True
    , _ruiProject = pRuiProject_
    , _ruiUserIp = Nothing
    , _ruiZone = pRuiZone_
    , _ruiKey = Nothing
    , _ruiOauthToken = Nothing
    , _ruiFields = Nothing
    , _ruiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruiQuotaUser :: Lens' RollingUpdatesInsert' (Maybe Text)
ruiQuotaUser
  = lens _ruiQuotaUser (\ s a -> s{_ruiQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruiPrettyPrint :: Lens' RollingUpdatesInsert' Bool
ruiPrettyPrint
  = lens _ruiPrettyPrint
      (\ s a -> s{_ruiPrettyPrint = a})

-- | The Google Developers Console project name.
ruiProject :: Lens' RollingUpdatesInsert' Text
ruiProject
  = lens _ruiProject (\ s a -> s{_ruiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruiUserIp :: Lens' RollingUpdatesInsert' (Maybe Text)
ruiUserIp
  = lens _ruiUserIp (\ s a -> s{_ruiUserIp = a})

-- | The name of the zone in which the update\'s target resides.
ruiZone :: Lens' RollingUpdatesInsert' Text
ruiZone = lens _ruiZone (\ s a -> s{_ruiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruiKey :: Lens' RollingUpdatesInsert' (Maybe Text)
ruiKey = lens _ruiKey (\ s a -> s{_ruiKey = a})

-- | OAuth 2.0 token for the current user.
ruiOauthToken :: Lens' RollingUpdatesInsert' (Maybe Text)
ruiOauthToken
  = lens _ruiOauthToken
      (\ s a -> s{_ruiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ruiFields :: Lens' RollingUpdatesInsert' (Maybe Text)
ruiFields
  = lens _ruiFields (\ s a -> s{_ruiFields = a})

-- | Data format for the response.
ruiAlt :: Lens' RollingUpdatesInsert' Text
ruiAlt = lens _ruiAlt (\ s a -> s{_ruiAlt = a})

instance GoogleRequest RollingUpdatesInsert' where
        type Rs RollingUpdatesInsert' = Operation
        request
          = requestWithRoute defReq instanceGroupsUpdaterURL
        requestWithRoute r u RollingUpdatesInsert{..}
          = go _ruiQuotaUser _ruiPrettyPrint _ruiProject
              _ruiUserIp
              _ruiZone
              _ruiKey
              _ruiOauthToken
              _ruiFields
              _ruiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesInsertAPI)
                      r
                      u
