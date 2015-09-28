{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Replicapoolupdater.RollingUpdates.Pause
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Pauses the update in state from ROLLING_FORWARD or ROLLING_BACK. Has no
-- effect if invoked when the state of the update is PAUSED.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.pause@.
module Network.Google.API.Replicapoolupdater.RollingUpdates.Pause
    (
    -- * REST Resource
      RollingUpdatesPauseAPI

    -- * Creating a Request
    , rollingUpdatesPause'
    , RollingUpdatesPause'

    -- * Request Lenses
    , rupRollingUpdate
    , rupQuotaUser
    , rupPrettyPrint
    , rupProject
    , rupUserIp
    , rupZone
    , rupKey
    , rupOauthToken
    , rupFields
    , rupAlt
    ) where

import           Network.Google.InstanceGroups.Updater.Types
import           Network.Google.Prelude

-- | A resource alias for replicapoolupdater.rollingUpdates.pause which the
-- 'RollingUpdatesPause'' request conforms to.
type RollingUpdatesPauseAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               "pause" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Pauses the update in state from ROLLING_FORWARD or ROLLING_BACK. Has no
-- effect if invoked when the state of the update is PAUSED.
--
-- /See:/ 'rollingUpdatesPause'' smart constructor.
data RollingUpdatesPause' = RollingUpdatesPause'
    { _rupRollingUpdate :: !Text
    , _rupQuotaUser     :: !(Maybe Text)
    , _rupPrettyPrint   :: !Bool
    , _rupProject       :: !Text
    , _rupUserIp        :: !(Maybe Text)
    , _rupZone          :: !Text
    , _rupKey           :: !(Maybe Text)
    , _rupOauthToken    :: !(Maybe Text)
    , _rupFields        :: !(Maybe Text)
    , _rupAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesPause'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rupRollingUpdate'
--
-- * 'rupQuotaUser'
--
-- * 'rupPrettyPrint'
--
-- * 'rupProject'
--
-- * 'rupUserIp'
--
-- * 'rupZone'
--
-- * 'rupKey'
--
-- * 'rupOauthToken'
--
-- * 'rupFields'
--
-- * 'rupAlt'
rollingUpdatesPause'
    :: Text -- ^ 'rollingUpdate'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesPause'
rollingUpdatesPause' pRupRollingUpdate_ pRupProject_ pRupZone_ =
    RollingUpdatesPause'
    { _rupRollingUpdate = pRupRollingUpdate_
    , _rupQuotaUser = Nothing
    , _rupPrettyPrint = True
    , _rupProject = pRupProject_
    , _rupUserIp = Nothing
    , _rupZone = pRupZone_
    , _rupKey = Nothing
    , _rupOauthToken = Nothing
    , _rupFields = Nothing
    , _rupAlt = JSON
    }

-- | The name of the update.
rupRollingUpdate :: Lens' RollingUpdatesPause' Text
rupRollingUpdate
  = lens _rupRollingUpdate
      (\ s a -> s{_rupRollingUpdate = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rupQuotaUser :: Lens' RollingUpdatesPause' (Maybe Text)
rupQuotaUser
  = lens _rupQuotaUser (\ s a -> s{_rupQuotaUser = a})

-- | Returns response with indentations and line breaks.
rupPrettyPrint :: Lens' RollingUpdatesPause' Bool
rupPrettyPrint
  = lens _rupPrettyPrint
      (\ s a -> s{_rupPrettyPrint = a})

-- | The Google Developers Console project name.
rupProject :: Lens' RollingUpdatesPause' Text
rupProject
  = lens _rupProject (\ s a -> s{_rupProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rupUserIp :: Lens' RollingUpdatesPause' (Maybe Text)
rupUserIp
  = lens _rupUserIp (\ s a -> s{_rupUserIp = a})

-- | The name of the zone in which the update\'s target resides.
rupZone :: Lens' RollingUpdatesPause' Text
rupZone = lens _rupZone (\ s a -> s{_rupZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rupKey :: Lens' RollingUpdatesPause' (Maybe Text)
rupKey = lens _rupKey (\ s a -> s{_rupKey = a})

-- | OAuth 2.0 token for the current user.
rupOauthToken :: Lens' RollingUpdatesPause' (Maybe Text)
rupOauthToken
  = lens _rupOauthToken
      (\ s a -> s{_rupOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rupFields :: Lens' RollingUpdatesPause' (Maybe Text)
rupFields
  = lens _rupFields (\ s a -> s{_rupFields = a})

-- | Data format for the response.
rupAlt :: Lens' RollingUpdatesPause' Alt
rupAlt = lens _rupAlt (\ s a -> s{_rupAlt = a})

instance GoogleRequest RollingUpdatesPause' where
        type Rs RollingUpdatesPause' = Operation
        request
          = requestWithRoute defReq instanceGroupsUpdaterURL
        requestWithRoute r u RollingUpdatesPause'{..}
          = go _rupRollingUpdate _rupQuotaUser
              (Just _rupPrettyPrint)
              _rupProject
              _rupUserIp
              _rupZone
              _rupKey
              _rupOauthToken
              _rupFields
              (Just _rupAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesPauseAPI)
                      r
                      u
