{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.ReplicaPoolUpdater.RollingUpdates.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists recent updates for a given managed instance group, in reverse chronological order and paginated format.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.list@.
module Gogol.ReplicaPoolUpdater.RollingUpdates.List
  ( -- * Resource
    ReplicaPoolUpdaterRollingUpdatesListResource,

    -- ** Constructing a Request
    ReplicaPoolUpdaterRollingUpdatesList (..),
    newReplicaPoolUpdaterRollingUpdatesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.list@ method which the
-- 'ReplicaPoolUpdaterRollingUpdatesList' request conforms to.
type ReplicaPoolUpdaterRollingUpdatesListResource =
  "replicapoolupdater"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "rollingUpdates"
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RollingUpdateList

-- | Lists recent updates for a given managed instance group, in reverse chronological order and paginated format.
--
-- /See:/ 'newReplicaPoolUpdaterRollingUpdatesList' smart constructor.
data ReplicaPoolUpdaterRollingUpdatesList = ReplicaPoolUpdaterRollingUpdatesList
  { -- | Optional. Filter expression for filtering listed resources.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Maximum count of results to be returned. Maximum value is 500 and default value is 500.
    maxResults :: Core.Word32,
    -- | Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | The Google Developers Console project name.
    project :: Core.Text,
    -- | The name of the zone in which the update\'s target resides.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolUpdaterRollingUpdatesList' with the minimum fields required to make a request.
newReplicaPoolUpdaterRollingUpdatesList ::
  -- |  The Google Developers Console project name. See 'project'.
  Core.Text ->
  -- |  The name of the zone in which the update\'s target resides. See 'zone'.
  Core.Text ->
  ReplicaPoolUpdaterRollingUpdatesList
newReplicaPoolUpdaterRollingUpdatesList project zone =
  ReplicaPoolUpdaterRollingUpdatesList
    { filter = Core.Nothing,
      maxResults = 500,
      pageToken = Core.Nothing,
      project = project,
      zone = zone
    }

instance Core.GoogleRequest ReplicaPoolUpdaterRollingUpdatesList where
  type Rs ReplicaPoolUpdaterRollingUpdatesList = RollingUpdateList
  type
    Scopes ReplicaPoolUpdaterRollingUpdatesList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Replicapool'FullControl,
         Replicapool'Readonly
       ]
  requestClient ReplicaPoolUpdaterRollingUpdatesList {..} =
    go
      project
      zone
      filter
      (Core.Just maxResults)
      pageToken
      (Core.Just Core.AltJSON)
      replicaPoolUpdaterService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ReplicaPoolUpdaterRollingUpdatesListResource
          )
          Core.mempty
