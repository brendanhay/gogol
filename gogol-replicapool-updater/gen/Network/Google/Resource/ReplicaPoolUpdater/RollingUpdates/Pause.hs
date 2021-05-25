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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pauses the update in state from ROLLING_FORWARD or ROLLING_BACK. Has no
-- effect if invoked when the state of the update is PAUSED.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.pause@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Pause
    (
    -- * REST Resource
      RollingUpdatesPauseResource

    -- * Creating a Request
    , rollingUpdatesPause
    , RollingUpdatesPause

    -- * Request Lenses
    , rupRollingUpdate
    , rupProject
    , rupZone
    ) where

import Network.Google.Prelude
import Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.pause@ method which the
-- 'RollingUpdatesPause' request conforms to.
type RollingUpdatesPauseResource =
     "replicapoolupdater" :>
       "v1beta1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "rollingUpdates" :>
                   Capture "rollingUpdate" Text :>
                     "pause" :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Pauses the update in state from ROLLING_FORWARD or ROLLING_BACK. Has no
-- effect if invoked when the state of the update is PAUSED.
--
-- /See:/ 'rollingUpdatesPause' smart constructor.
data RollingUpdatesPause =
  RollingUpdatesPause'
    { _rupRollingUpdate :: !Text
    , _rupProject :: !Text
    , _rupZone :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RollingUpdatesPause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rupRollingUpdate'
--
-- * 'rupProject'
--
-- * 'rupZone'
rollingUpdatesPause
    :: Text -- ^ 'rupRollingUpdate'
    -> Text -- ^ 'rupProject'
    -> Text -- ^ 'rupZone'
    -> RollingUpdatesPause
rollingUpdatesPause pRupRollingUpdate_ pRupProject_ pRupZone_ =
  RollingUpdatesPause'
    { _rupRollingUpdate = pRupRollingUpdate_
    , _rupProject = pRupProject_
    , _rupZone = pRupZone_
    }


-- | The name of the update.
rupRollingUpdate :: Lens' RollingUpdatesPause Text
rupRollingUpdate
  = lens _rupRollingUpdate
      (\ s a -> s{_rupRollingUpdate = a})

-- | The Google Developers Console project name.
rupProject :: Lens' RollingUpdatesPause Text
rupProject
  = lens _rupProject (\ s a -> s{_rupProject = a})

-- | The name of the zone in which the update\'s target resides.
rupZone :: Lens' RollingUpdatesPause Text
rupZone = lens _rupZone (\ s a -> s{_rupZone = a})

instance GoogleRequest RollingUpdatesPause where
        type Rs RollingUpdatesPause = Operation
        type Scopes RollingUpdatesPause =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/replicapool"]
        requestClient RollingUpdatesPause'{..}
          = go _rupProject _rupZone _rupRollingUpdate
              (Just AltJSON)
              replicaPoolUpdaterService
          where go
                  = buildClient
                      (Proxy :: Proxy RollingUpdatesPauseResource)
                      mempty
