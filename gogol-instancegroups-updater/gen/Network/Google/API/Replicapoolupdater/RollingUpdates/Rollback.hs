{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Replicapoolupdater.RollingUpdates.Rollback
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Rolls back the update in state from ROLLING_FORWARD or PAUSED. Has no
-- effect if invoked when the state of the update is ROLLED_BACK.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.rollback@.
module Network.Google.API.Replicapoolupdater.RollingUpdates.Rollback
    (
    -- * REST Resource
      RollingUpdatesRollbackAPI

    -- * Creating a Request
    , rollingUpdatesRollback'
    , RollingUpdatesRollback'

    -- * Request Lenses
    , rurRollingUpdate
    , rurQuotaUser
    , rurPrettyPrint
    , rurProject
    , rurUserIp
    , rurZone
    , rurKey
    , rurOauthToken
    , rurFields
    , rurAlt
    ) where

import           Network.Google.InstanceGroups.Updater.Types
import           Network.Google.Prelude

-- | A resource alias for replicapoolupdater.rollingUpdates.rollback which the
-- 'RollingUpdatesRollback'' request conforms to.
type RollingUpdatesRollbackAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               "rollback" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Rolls back the update in state from ROLLING_FORWARD or PAUSED. Has no
-- effect if invoked when the state of the update is ROLLED_BACK.
--
-- /See:/ 'rollingUpdatesRollback'' smart constructor.
data RollingUpdatesRollback' = RollingUpdatesRollback'
    { _rurRollingUpdate :: !Text
    , _rurQuotaUser     :: !(Maybe Text)
    , _rurPrettyPrint   :: !Bool
    , _rurProject       :: !Text
    , _rurUserIp        :: !(Maybe Text)
    , _rurZone          :: !Text
    , _rurKey           :: !(Maybe Text)
    , _rurOauthToken    :: !(Maybe Text)
    , _rurFields        :: !(Maybe Text)
    , _rurAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesRollback'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rurRollingUpdate'
--
-- * 'rurQuotaUser'
--
-- * 'rurPrettyPrint'
--
-- * 'rurProject'
--
-- * 'rurUserIp'
--
-- * 'rurZone'
--
-- * 'rurKey'
--
-- * 'rurOauthToken'
--
-- * 'rurFields'
--
-- * 'rurAlt'
rollingUpdatesRollback'
    :: Text -- ^ 'rollingUpdate'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesRollback'
rollingUpdatesRollback' pRurRollingUpdate_ pRurProject_ pRurZone_ =
    RollingUpdatesRollback'
    { _rurRollingUpdate = pRurRollingUpdate_
    , _rurQuotaUser = Nothing
    , _rurPrettyPrint = True
    , _rurProject = pRurProject_
    , _rurUserIp = Nothing
    , _rurZone = pRurZone_
    , _rurKey = Nothing
    , _rurOauthToken = Nothing
    , _rurFields = Nothing
    , _rurAlt = JSON
    }

-- | The name of the update.
rurRollingUpdate :: Lens' RollingUpdatesRollback' Text
rurRollingUpdate
  = lens _rurRollingUpdate
      (\ s a -> s{_rurRollingUpdate = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rurQuotaUser :: Lens' RollingUpdatesRollback' (Maybe Text)
rurQuotaUser
  = lens _rurQuotaUser (\ s a -> s{_rurQuotaUser = a})

-- | Returns response with indentations and line breaks.
rurPrettyPrint :: Lens' RollingUpdatesRollback' Bool
rurPrettyPrint
  = lens _rurPrettyPrint
      (\ s a -> s{_rurPrettyPrint = a})

-- | The Google Developers Console project name.
rurProject :: Lens' RollingUpdatesRollback' Text
rurProject
  = lens _rurProject (\ s a -> s{_rurProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rurUserIp :: Lens' RollingUpdatesRollback' (Maybe Text)
rurUserIp
  = lens _rurUserIp (\ s a -> s{_rurUserIp = a})

-- | The name of the zone in which the update\'s target resides.
rurZone :: Lens' RollingUpdatesRollback' Text
rurZone = lens _rurZone (\ s a -> s{_rurZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rurKey :: Lens' RollingUpdatesRollback' (Maybe Text)
rurKey = lens _rurKey (\ s a -> s{_rurKey = a})

-- | OAuth 2.0 token for the current user.
rurOauthToken :: Lens' RollingUpdatesRollback' (Maybe Text)
rurOauthToken
  = lens _rurOauthToken
      (\ s a -> s{_rurOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rurFields :: Lens' RollingUpdatesRollback' (Maybe Text)
rurFields
  = lens _rurFields (\ s a -> s{_rurFields = a})

-- | Data format for the response.
rurAlt :: Lens' RollingUpdatesRollback' Alt
rurAlt = lens _rurAlt (\ s a -> s{_rurAlt = a})

instance GoogleRequest RollingUpdatesRollback' where
        type Rs RollingUpdatesRollback' = Operation
        request
          = requestWithRoute defReq instanceGroupsUpdaterURL
        requestWithRoute r u RollingUpdatesRollback'{..}
          = go _rurRollingUpdate _rurQuotaUser
              (Just _rurPrettyPrint)
              _rurProject
              _rurUserIp
              _rurZone
              _rurKey
              _rurOauthToken
              _rurFields
              (Just _rurAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesRollbackAPI)
                      r
                      u
