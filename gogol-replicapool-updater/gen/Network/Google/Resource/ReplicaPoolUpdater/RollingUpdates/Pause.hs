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
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Pause
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Pauses the update in state from ROLLING_FORWARD or ROLLING_BACK. Has no
-- effect if invoked when the state of the update is PAUSED.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesPause@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Pause
    (
    -- * REST Resource
      RollingUpdatesPauseResource

    -- * Creating a Request
    , rollingUpdatesPause'
    , RollingUpdatesPause'

    -- * Request Lenses
    , rupRollingUpdate
    , rupQuotaUser
    , rupPrettyPrint
    , rupProject
    , rupUserIP
    , rupZone
    , rupKey
    , rupOAuthToken
    , rupFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesPause@ method which the
-- 'RollingUpdatesPause'' request conforms to.
type RollingUpdatesPauseResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               "pause" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Pauses the update in state from ROLLING_FORWARD or ROLLING_BACK. Has no
-- effect if invoked when the state of the update is PAUSED.
--
-- /See:/ 'rollingUpdatesPause'' smart constructor.
data RollingUpdatesPause' = RollingUpdatesPause'
    { _rupRollingUpdate :: !Text
    , _rupQuotaUser     :: !(Maybe Text)
    , _rupPrettyPrint   :: !Bool
    , _rupProject       :: !Text
    , _rupUserIP        :: !(Maybe Text)
    , _rupZone          :: !Text
    , _rupKey           :: !(Maybe AuthKey)
    , _rupOAuthToken    :: !(Maybe OAuthToken)
    , _rupFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rupUserIP'
--
-- * 'rupZone'
--
-- * 'rupKey'
--
-- * 'rupOAuthToken'
--
-- * 'rupFields'
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
    , _rupUserIP = Nothing
    , _rupZone = pRupZone_
    , _rupKey = Nothing
    , _rupOAuthToken = Nothing
    , _rupFields = Nothing
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
rupUserIP :: Lens' RollingUpdatesPause' (Maybe Text)
rupUserIP
  = lens _rupUserIP (\ s a -> s{_rupUserIP = a})

-- | The name of the zone in which the update\'s target resides.
rupZone :: Lens' RollingUpdatesPause' Text
rupZone = lens _rupZone (\ s a -> s{_rupZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rupKey :: Lens' RollingUpdatesPause' (Maybe AuthKey)
rupKey = lens _rupKey (\ s a -> s{_rupKey = a})

-- | OAuth 2.0 token for the current user.
rupOAuthToken :: Lens' RollingUpdatesPause' (Maybe OAuthToken)
rupOAuthToken
  = lens _rupOAuthToken
      (\ s a -> s{_rupOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rupFields :: Lens' RollingUpdatesPause' (Maybe Text)
rupFields
  = lens _rupFields (\ s a -> s{_rupFields = a})

instance GoogleAuth RollingUpdatesPause' where
        _AuthKey = rupKey . _Just
        _AuthToken = rupOAuthToken . _Just

instance GoogleRequest RollingUpdatesPause' where
        type Rs RollingUpdatesPause' = Operation
        request = requestWith replicaPoolUpdaterRequest
        requestWith rq RollingUpdatesPause'{..}
          = go _rupProject _rupZone _rupRollingUpdate
              _rupQuotaUser
              (Just _rupPrettyPrint)
              _rupUserIP
              _rupFields
              _rupKey
              _rupOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy RollingUpdatesPauseResource)
                      rq
