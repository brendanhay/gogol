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
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels an update. The update must be PAUSED before it can be cancelled.
-- This has no effect if the update is already CANCELLED.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesCancel@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Cancel
    (
    -- * REST Resource
      RollingUpdatesCancelResource

    -- * Creating a Request
    , rollingUpdatesCancel'
    , RollingUpdatesCancel'

    -- * Request Lenses
    , rucRollingUpdate
    , rucQuotaUser
    , rucPrettyPrint
    , rucProject
    , rucUserIP
    , rucZone
    , rucKey
    , rucOAuthToken
    , rucFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesCancel@ which the
-- 'RollingUpdatesCancel'' request conforms to.
type RollingUpdatesCancelResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               "cancel" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Cancels an update. The update must be PAUSED before it can be cancelled.
-- This has no effect if the update is already CANCELLED.
--
-- /See:/ 'rollingUpdatesCancel'' smart constructor.
data RollingUpdatesCancel' = RollingUpdatesCancel'
    { _rucRollingUpdate :: !Text
    , _rucQuotaUser     :: !(Maybe Text)
    , _rucPrettyPrint   :: !Bool
    , _rucProject       :: !Text
    , _rucUserIP        :: !(Maybe Text)
    , _rucZone          :: !Text
    , _rucKey           :: !(Maybe AuthKey)
    , _rucOAuthToken    :: !(Maybe OAuthToken)
    , _rucFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rucRollingUpdate'
--
-- * 'rucQuotaUser'
--
-- * 'rucPrettyPrint'
--
-- * 'rucProject'
--
-- * 'rucUserIP'
--
-- * 'rucZone'
--
-- * 'rucKey'
--
-- * 'rucOAuthToken'
--
-- * 'rucFields'
rollingUpdatesCancel'
    :: Text -- ^ 'rollingUpdate'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesCancel'
rollingUpdatesCancel' pRucRollingUpdate_ pRucProject_ pRucZone_ =
    RollingUpdatesCancel'
    { _rucRollingUpdate = pRucRollingUpdate_
    , _rucQuotaUser = Nothing
    , _rucPrettyPrint = True
    , _rucProject = pRucProject_
    , _rucUserIP = Nothing
    , _rucZone = pRucZone_
    , _rucKey = Nothing
    , _rucOAuthToken = Nothing
    , _rucFields = Nothing
    }

-- | The name of the update.
rucRollingUpdate :: Lens' RollingUpdatesCancel' Text
rucRollingUpdate
  = lens _rucRollingUpdate
      (\ s a -> s{_rucRollingUpdate = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rucQuotaUser :: Lens' RollingUpdatesCancel' (Maybe Text)
rucQuotaUser
  = lens _rucQuotaUser (\ s a -> s{_rucQuotaUser = a})

-- | Returns response with indentations and line breaks.
rucPrettyPrint :: Lens' RollingUpdatesCancel' Bool
rucPrettyPrint
  = lens _rucPrettyPrint
      (\ s a -> s{_rucPrettyPrint = a})

-- | The Google Developers Console project name.
rucProject :: Lens' RollingUpdatesCancel' Text
rucProject
  = lens _rucProject (\ s a -> s{_rucProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rucUserIP :: Lens' RollingUpdatesCancel' (Maybe Text)
rucUserIP
  = lens _rucUserIP (\ s a -> s{_rucUserIP = a})

-- | The name of the zone in which the update\'s target resides.
rucZone :: Lens' RollingUpdatesCancel' Text
rucZone = lens _rucZone (\ s a -> s{_rucZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rucKey :: Lens' RollingUpdatesCancel' (Maybe AuthKey)
rucKey = lens _rucKey (\ s a -> s{_rucKey = a})

-- | OAuth 2.0 token for the current user.
rucOAuthToken :: Lens' RollingUpdatesCancel' (Maybe OAuthToken)
rucOAuthToken
  = lens _rucOAuthToken
      (\ s a -> s{_rucOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rucFields :: Lens' RollingUpdatesCancel' (Maybe Text)
rucFields
  = lens _rucFields (\ s a -> s{_rucFields = a})

instance GoogleAuth RollingUpdatesCancel' where
        authKey = rucKey . _Just
        authToken = rucOAuthToken . _Just

instance GoogleRequest RollingUpdatesCancel' where
        type Rs RollingUpdatesCancel' = Operation
        request
          = requestWithRoute defReq replicaPoolUpdaterURL
        requestWithRoute r u RollingUpdatesCancel'{..}
          = go _rucProject _rucZone _rucRollingUpdate
              _rucQuotaUser
              (Just _rucPrettyPrint)
              _rucUserIP
              _rucFields
              _rucKey
              _rucOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RollingUpdatesCancelResource)
                      r
                      u
