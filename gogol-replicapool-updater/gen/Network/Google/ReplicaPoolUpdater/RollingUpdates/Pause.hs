{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.ReplicaPoolUpdater.RollingUpdates.Pause
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pauses the update in state from ROLLING/FORWARD or ROLLING/BACK. Has no effect if invoked when the state of the update is PAUSED.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.pause@.
module Network.Google.ReplicaPoolUpdater.RollingUpdates.Pause
  ( -- * Resource
    ReplicaPoolUpdaterRollingUpdatesPauseResource,

    -- ** Constructing a Request
    newReplicaPoolUpdaterRollingUpdatesPause,
    ReplicaPoolUpdaterRollingUpdatesPause,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.pause@ method which the
-- 'ReplicaPoolUpdaterRollingUpdatesPause' request conforms to.
type ReplicaPoolUpdaterRollingUpdatesPauseResource =
  "replicapoolupdater"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "rollingUpdates"
    Core.:> Core.Capture "rollingUpdate" Core.Text
    Core.:> "pause"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Pauses the update in state from ROLLING/FORWARD or ROLLING/BACK. Has no effect if invoked when the state of the update is PAUSED.
--
-- /See:/ 'newReplicaPoolUpdaterRollingUpdatesPause' smart constructor.
data ReplicaPoolUpdaterRollingUpdatesPause = ReplicaPoolUpdaterRollingUpdatesPause
  { -- | The Google Developers Console project name.
    project :: Core.Text,
    -- | The name of the update.
    rollingUpdate :: Core.Text,
    -- | The name of the zone in which the update\'s target resides.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolUpdaterRollingUpdatesPause' with the minimum fields required to make a request.
newReplicaPoolUpdaterRollingUpdatesPause ::
  -- |  The Google Developers Console project name. See 'project'.
  Core.Text ->
  -- |  The name of the update. See 'rollingUpdate'.
  Core.Text ->
  -- |  The name of the zone in which the update\'s target resides. See 'zone'.
  Core.Text ->
  ReplicaPoolUpdaterRollingUpdatesPause
newReplicaPoolUpdaterRollingUpdatesPause project rollingUpdate zone =
  ReplicaPoolUpdaterRollingUpdatesPause
    { project = project,
      rollingUpdate = rollingUpdate,
      zone = zone
    }

instance
  Core.GoogleRequest
    ReplicaPoolUpdaterRollingUpdatesPause
  where
  type
    Rs ReplicaPoolUpdaterRollingUpdatesPause =
      Operation
  type
    Scopes ReplicaPoolUpdaterRollingUpdatesPause =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/replicapool"
       ]
  requestClient
    ReplicaPoolUpdaterRollingUpdatesPause {..} =
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
                Core.Proxy
                  ReplicaPoolUpdaterRollingUpdatesPauseResource
            )
            Core.mempty
