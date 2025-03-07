{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ReplicaPoolUpdater.RollingUpdates.Rollback
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back the update in state from ROLLING/FORWARD or PAUSED. Has no effect if invoked when the state of the update is ROLLED/BACK.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.rollback@.
module Gogol.ReplicaPoolUpdater.RollingUpdates.Rollback
  ( -- * Resource
    ReplicaPoolUpdaterRollingUpdatesRollbackResource,

    -- ** Constructing a Request
    ReplicaPoolUpdaterRollingUpdatesRollback (..),
    newReplicaPoolUpdaterRollingUpdatesRollback,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.rollback@ method which the
-- 'ReplicaPoolUpdaterRollingUpdatesRollback' request conforms to.
type ReplicaPoolUpdaterRollingUpdatesRollbackResource =
  "replicapoolupdater"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "rollingUpdates"
    Core.:> Core.Capture "rollingUpdate" Core.Text
    Core.:> "rollback"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Rolls back the update in state from ROLLING/FORWARD or PAUSED. Has no effect if invoked when the state of the update is ROLLED/BACK.
--
-- /See:/ 'newReplicaPoolUpdaterRollingUpdatesRollback' smart constructor.
data ReplicaPoolUpdaterRollingUpdatesRollback = ReplicaPoolUpdaterRollingUpdatesRollback
  { -- | The Google Developers Console project name.
    project :: Core.Text,
    -- | The name of the update.
    rollingUpdate :: Core.Text,
    -- | The name of the zone in which the update\'s target resides.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolUpdaterRollingUpdatesRollback' with the minimum fields required to make a request.
newReplicaPoolUpdaterRollingUpdatesRollback ::
  -- |  The Google Developers Console project name. See 'project'.
  Core.Text ->
  -- |  The name of the update. See 'rollingUpdate'.
  Core.Text ->
  -- |  The name of the zone in which the update\'s target resides. See 'zone'.
  Core.Text ->
  ReplicaPoolUpdaterRollingUpdatesRollback
newReplicaPoolUpdaterRollingUpdatesRollback
  project
  rollingUpdate
  zone =
    ReplicaPoolUpdaterRollingUpdatesRollback
      { project = project,
        rollingUpdate = rollingUpdate,
        zone = zone
      }

instance
  Core.GoogleRequest
    ReplicaPoolUpdaterRollingUpdatesRollback
  where
  type Rs ReplicaPoolUpdaterRollingUpdatesRollback = Operation
  type
    Scopes ReplicaPoolUpdaterRollingUpdatesRollback =
      '[CloudPlatform'FullControl, Replicapool'FullControl]
  requestClient ReplicaPoolUpdaterRollingUpdatesRollback {..} =
    go
      project
      zone
      rollingUpdate
      (Core.Just Core.AltJSON)
      replicaPoolUpdaterService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ReplicaPoolUpdaterRollingUpdatesRollbackResource
          )
          Core.mempty
