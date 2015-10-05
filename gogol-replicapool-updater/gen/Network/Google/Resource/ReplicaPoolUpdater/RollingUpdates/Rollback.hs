{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Rollback
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Rolls back the update in state from ROLLING_FORWARD or PAUSED. Has no
-- effect if invoked when the state of the update is ROLLED_BACK.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesRollback@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Rollback
    (
    -- * REST Resource
      RollingUpdatesRollbackResource

    -- * Creating a Request
    , rollingUpdatesRollback'
    , RollingUpdatesRollback'

    -- * Request Lenses
    , rurRollingUpdate
    , rurQuotaUser
    , rurPrettyPrint
    , rurProject
    , rurUserIP
    , rurZone
    , rurKey
    , rurOAuthToken
    , rurFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesRollback@ which the
-- 'RollingUpdatesRollback'' request conforms to.
type RollingUpdatesRollbackResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               "rollback" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Rolls back the update in state from ROLLING_FORWARD or PAUSED. Has no
-- effect if invoked when the state of the update is ROLLED_BACK.
--
-- /See:/ 'rollingUpdatesRollback'' smart constructor.
data RollingUpdatesRollback' = RollingUpdatesRollback'
    { _rurRollingUpdate :: !Text
    , _rurQuotaUser     :: !(Maybe Text)
    , _rurPrettyPrint   :: !Bool
    , _rurProject       :: !Text
    , _rurUserIP        :: !(Maybe Text)
    , _rurZone          :: !Text
    , _rurKey           :: !(Maybe Key)
    , _rurOAuthToken    :: !(Maybe OAuthToken)
    , _rurFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rurUserIP'
--
-- * 'rurZone'
--
-- * 'rurKey'
--
-- * 'rurOAuthToken'
--
-- * 'rurFields'
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
    , _rurUserIP = Nothing
    , _rurZone = pRurZone_
    , _rurKey = Nothing
    , _rurOAuthToken = Nothing
    , _rurFields = Nothing
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
rurUserIP :: Lens' RollingUpdatesRollback' (Maybe Text)
rurUserIP
  = lens _rurUserIP (\ s a -> s{_rurUserIP = a})

-- | The name of the zone in which the update\'s target resides.
rurZone :: Lens' RollingUpdatesRollback' Text
rurZone = lens _rurZone (\ s a -> s{_rurZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rurKey :: Lens' RollingUpdatesRollback' (Maybe Key)
rurKey = lens _rurKey (\ s a -> s{_rurKey = a})

-- | OAuth 2.0 token for the current user.
rurOAuthToken :: Lens' RollingUpdatesRollback' (Maybe OAuthToken)
rurOAuthToken
  = lens _rurOAuthToken
      (\ s a -> s{_rurOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rurFields :: Lens' RollingUpdatesRollback' (Maybe Text)
rurFields
  = lens _rurFields (\ s a -> s{_rurFields = a})

instance GoogleAuth RollingUpdatesRollback' where
        authKey = rurKey . _Just
        authToken = rurOAuthToken . _Just

instance GoogleRequest RollingUpdatesRollback' where
        type Rs RollingUpdatesRollback' = Operation
        request
          = requestWithRoute defReq replicaPoolUpdaterURL
        requestWithRoute r u RollingUpdatesRollback'{..}
          = go _rurProject _rurZone _rurRollingUpdate
              _rurQuotaUser
              (Just _rurPrettyPrint)
              _rurUserIP
              _rurFields
              _rurKey
              _rurOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesRollbackResource)
                      r
                      u
