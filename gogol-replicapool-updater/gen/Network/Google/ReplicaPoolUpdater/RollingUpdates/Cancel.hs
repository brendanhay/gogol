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
-- Module      : Network.Google.ReplicaPoolUpdater.RollingUpdates.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an update. The update must be PAUSED before it can be cancelled. This has no effect if the update is already CANCELLED.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.cancel@.
module Network.Google.ReplicaPoolUpdater.RollingUpdates.Cancel
  ( -- * Resource
    ReplicaPoolUpdaterRollingUpdatesCancelResource,

    -- ** Constructing a Request
    newReplicaPoolUpdaterRollingUpdatesCancel,
    ReplicaPoolUpdaterRollingUpdatesCancel,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.cancel@ method which the
-- 'ReplicaPoolUpdaterRollingUpdatesCancel' request conforms to.
type ReplicaPoolUpdaterRollingUpdatesCancelResource =
  "replicapoolupdater"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "rollingUpdates"
    Core.:> Core.Capture "rollingUpdate" Core.Text
    Core.:> "cancel"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Cancels an update. The update must be PAUSED before it can be cancelled. This has no effect if the update is already CANCELLED.
--
-- /See:/ 'newReplicaPoolUpdaterRollingUpdatesCancel' smart constructor.
data ReplicaPoolUpdaterRollingUpdatesCancel = ReplicaPoolUpdaterRollingUpdatesCancel
  { -- | The Google Developers Console project name.
    project :: Core.Text,
    -- | The name of the update.
    rollingUpdate :: Core.Text,
    -- | The name of the zone in which the update\'s target resides.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolUpdaterRollingUpdatesCancel' with the minimum fields required to make a request.
newReplicaPoolUpdaterRollingUpdatesCancel ::
  -- |  The Google Developers Console project name. See 'project'.
  Core.Text ->
  -- |  The name of the update. See 'rollingUpdate'.
  Core.Text ->
  -- |  The name of the zone in which the update\'s target resides. See 'zone'.
  Core.Text ->
  ReplicaPoolUpdaterRollingUpdatesCancel
newReplicaPoolUpdaterRollingUpdatesCancel project rollingUpdate zone =
  ReplicaPoolUpdaterRollingUpdatesCancel
    { project = project,
      rollingUpdate = rollingUpdate,
      zone = zone
    }

instance
  Core.GoogleRequest
    ReplicaPoolUpdaterRollingUpdatesCancel
  where
  type
    Rs ReplicaPoolUpdaterRollingUpdatesCancel =
      Operation
  type
    Scopes ReplicaPoolUpdaterRollingUpdatesCancel =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/replicapool"
       ]
  requestClient
    ReplicaPoolUpdaterRollingUpdatesCancel {..} =
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
                  ReplicaPoolUpdaterRollingUpdatesCancelResource
            )
            Core.mempty
