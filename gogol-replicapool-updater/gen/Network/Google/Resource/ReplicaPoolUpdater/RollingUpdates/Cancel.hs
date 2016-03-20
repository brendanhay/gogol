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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an update. The update must be PAUSED before it can be cancelled.
-- This has no effect if the update is already CANCELLED.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.cancel@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Cancel
    (
    -- * REST Resource
      RollingUpdatesCancelResource

    -- * Creating a Request
    , rollingUpdatesCancel
    , RollingUpdatesCancel

    -- * Request Lenses
    , rucRollingUpdate
    , rucProject
    , rucZone
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.cancel@ method which the
-- 'RollingUpdatesCancel' request conforms to.
type RollingUpdatesCancelResource =
     "replicapoolupdater" :>
       "v1beta1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "rollingUpdates" :>
                   Capture "rollingUpdate" Text :>
                     "cancel" :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Cancels an update. The update must be PAUSED before it can be cancelled.
-- This has no effect if the update is already CANCELLED.
--
-- /See:/ 'rollingUpdatesCancel' smart constructor.
data RollingUpdatesCancel = RollingUpdatesCancel
    { _rucRollingUpdate :: !Text
    , _rucProject       :: !Text
    , _rucZone          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rucRollingUpdate'
--
-- * 'rucProject'
--
-- * 'rucZone'
rollingUpdatesCancel
    :: Text -- ^ 'rucRollingUpdate'
    -> Text -- ^ 'rucProject'
    -> Text -- ^ 'rucZone'
    -> RollingUpdatesCancel
rollingUpdatesCancel pRucRollingUpdate_ pRucProject_ pRucZone_ =
    RollingUpdatesCancel
    { _rucRollingUpdate = pRucRollingUpdate_
    , _rucProject = pRucProject_
    , _rucZone = pRucZone_
    }

-- | The name of the update.
rucRollingUpdate :: Lens' RollingUpdatesCancel Text
rucRollingUpdate
  = lens _rucRollingUpdate
      (\ s a -> s{_rucRollingUpdate = a})

-- | The Google Developers Console project name.
rucProject :: Lens' RollingUpdatesCancel Text
rucProject
  = lens _rucProject (\ s a -> s{_rucProject = a})

-- | The name of the zone in which the update\'s target resides.
rucZone :: Lens' RollingUpdatesCancel Text
rucZone = lens _rucZone (\ s a -> s{_rucZone = a})

instance GoogleRequest RollingUpdatesCancel where
        type Rs RollingUpdatesCancel = Operation
        requestClient RollingUpdatesCancel{..}
          = go _rucProject _rucZone _rucRollingUpdate
              (Just AltJSON)
              replicaPoolUpdaterService
          where go
                  = buildClient
                      (Proxy :: Proxy RollingUpdatesCancelResource)
                      mempty
