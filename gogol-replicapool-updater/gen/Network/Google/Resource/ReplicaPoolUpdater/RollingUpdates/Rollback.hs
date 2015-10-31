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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back the update in state from ROLLING_FORWARD or PAUSED. Has no
-- effect if invoked when the state of the update is ROLLED_BACK.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.rollback@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Rollback
    (
    -- * REST Resource
      RollingUpdatesRollbackResource

    -- * Creating a Request
    , rollingUpdatesRollback
    , RollingUpdatesRollback

    -- * Request Lenses
    , rurRollingUpdate
    , rurProject
    , rurZone
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.rollback@ method which the
-- 'RollingUpdatesRollback' request conforms to.
type RollingUpdatesRollbackResource =
     "replicapoolupdater" :>
       "v1beta1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "rollingUpdates" :>
                   Capture "rollingUpdate" Text :>
                     "rollback" :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Rolls back the update in state from ROLLING_FORWARD or PAUSED. Has no
-- effect if invoked when the state of the update is ROLLED_BACK.
--
-- /See:/ 'rollingUpdatesRollback' smart constructor.
data RollingUpdatesRollback = RollingUpdatesRollback
    { _rurRollingUpdate :: !Text
    , _rurProject       :: !Text
    , _rurZone          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesRollback' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rurRollingUpdate'
--
-- * 'rurProject'
--
-- * 'rurZone'
rollingUpdatesRollback
    :: Text -- ^ 'rurRollingUpdate'
    -> Text -- ^ 'rurProject'
    -> Text -- ^ 'rurZone'
    -> RollingUpdatesRollback
rollingUpdatesRollback pRurRollingUpdate_ pRurProject_ pRurZone_ =
    RollingUpdatesRollback
    { _rurRollingUpdate = pRurRollingUpdate_
    , _rurProject = pRurProject_
    , _rurZone = pRurZone_
    }

-- | The name of the update.
rurRollingUpdate :: Lens' RollingUpdatesRollback Text
rurRollingUpdate
  = lens _rurRollingUpdate
      (\ s a -> s{_rurRollingUpdate = a})

-- | The Google Developers Console project name.
rurProject :: Lens' RollingUpdatesRollback Text
rurProject
  = lens _rurProject (\ s a -> s{_rurProject = a})

-- | The name of the zone in which the update\'s target resides.
rurZone :: Lens' RollingUpdatesRollback Text
rurZone = lens _rurZone (\ s a -> s{_rurZone = a})

instance GoogleRequest RollingUpdatesRollback where
        type Rs RollingUpdatesRollback = Operation
        type Scopes RollingUpdatesRollback =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/replicapool"]
        requestClient RollingUpdatesRollback{..}
          = go _rurProject _rurZone _rurRollingUpdate
              (Just AltJSON)
              replicaPoolUpdaterService
          where go
                  = buildClient
                      (Proxy :: Proxy RollingUpdatesRollbackResource)
                      mempty
