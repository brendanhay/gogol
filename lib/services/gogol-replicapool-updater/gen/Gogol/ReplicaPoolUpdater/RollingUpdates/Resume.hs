{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ReplicaPoolUpdater.RollingUpdates.Resume
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Continues an update in PAUSED state. Has no effect if invoked when the state of the update is ROLLED_OUT.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.resume@.
module Gogol.ReplicaPoolUpdater.RollingUpdates.Resume
    (
    -- * Resource
      ReplicaPoolUpdaterRollingUpdatesResumeResource

    -- ** Constructing a Request
    , ReplicaPoolUpdaterRollingUpdatesResume (..)
    , newReplicaPoolUpdaterRollingUpdatesResume
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.resume@ method which the
-- 'ReplicaPoolUpdaterRollingUpdatesResume' request conforms to.
type ReplicaPoolUpdaterRollingUpdatesResumeResource =
     "replicapoolupdater" Core.:>
       "v1beta1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "rollingUpdates" Core.:>
                   Core.Capture "rollingUpdate" Core.Text Core.:>
                     "resume" Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Post '[Core.JSON] Operation

-- | Continues an update in PAUSED state. Has no effect if invoked when the state of the update is ROLLED_OUT.
--
-- /See:/ 'newReplicaPoolUpdaterRollingUpdatesResume' smart constructor.
data ReplicaPoolUpdaterRollingUpdatesResume = ReplicaPoolUpdaterRollingUpdatesResume
    {
      -- | The Google Developers Console project name.
      project :: Core.Text
      -- | The name of the update.
    , rollingUpdate :: Core.Text
      -- | The name of the zone in which the update\'s target resides.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolUpdaterRollingUpdatesResume' with the minimum fields required to make a request.
newReplicaPoolUpdaterRollingUpdatesResume 
    ::  Core.Text
       -- ^  The Google Developers Console project name. See 'project'.
    -> Core.Text
       -- ^  The name of the update. See 'rollingUpdate'.
    -> Core.Text
       -- ^  The name of the zone in which the update\'s target resides. See 'zone'.
    -> ReplicaPoolUpdaterRollingUpdatesResume
newReplicaPoolUpdaterRollingUpdatesResume project rollingUpdate zone =
  ReplicaPoolUpdaterRollingUpdatesResume
    {project = project, rollingUpdate = rollingUpdate, zone = zone}

instance Core.GoogleRequest
           ReplicaPoolUpdaterRollingUpdatesResume
         where
        type Rs ReplicaPoolUpdaterRollingUpdatesResume =
             Operation
        type Scopes ReplicaPoolUpdaterRollingUpdatesResume =
             '[CloudPlatform'FullControl, Replicapool'FullControl]
        requestClient
          ReplicaPoolUpdaterRollingUpdatesResume{..}
          = go project zone rollingUpdate
              (Core.Just Core.AltJSON)
              replicaPoolUpdaterService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ReplicaPoolUpdaterRollingUpdatesResumeResource)
                      Core.mempty

