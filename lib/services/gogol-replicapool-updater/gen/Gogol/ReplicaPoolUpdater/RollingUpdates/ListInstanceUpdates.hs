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
-- Module      : Gogol.ReplicaPoolUpdater.RollingUpdates.ListInstanceUpdates
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the current status for each instance within a given update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.listInstanceUpdates@.
module Gogol.ReplicaPoolUpdater.RollingUpdates.ListInstanceUpdates
  ( -- * Resource
    ReplicaPoolUpdaterRollingUpdatesListInstanceUpdatesResource,

    -- ** Constructing a Request
    ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates (..),
    newReplicaPoolUpdaterRollingUpdatesListInstanceUpdates,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.listInstanceUpdates@ method which the
-- 'ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates' request conforms to.
type ReplicaPoolUpdaterRollingUpdatesListInstanceUpdatesResource =
  "replicapoolupdater"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "rollingUpdates"
    Core.:> Core.Capture "rollingUpdate" Core.Text
    Core.:> "instanceUpdates"
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InstanceUpdateList

-- | Lists the current status for each instance within a given update.
--
-- /See:/ 'newReplicaPoolUpdaterRollingUpdatesListInstanceUpdates' smart constructor.
data ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates = ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates
  { -- | Optional. Filter expression for filtering listed resources.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Maximum count of results to be returned. Maximum value is 500 and default value is 500.
    maxResults :: Core.Word32,
    -- | Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | The Google Developers Console project name.
    project :: Core.Text,
    -- | The name of the update.
    rollingUpdate :: Core.Text,
    -- | The name of the zone in which the update\'s target resides.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates' with the minimum fields required to make a request.
newReplicaPoolUpdaterRollingUpdatesListInstanceUpdates ::
  -- |  The Google Developers Console project name. See 'project'.
  Core.Text ->
  -- |  The name of the update. See 'rollingUpdate'.
  Core.Text ->
  -- |  The name of the zone in which the update\'s target resides. See 'zone'.
  Core.Text ->
  ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates
newReplicaPoolUpdaterRollingUpdatesListInstanceUpdates project rollingUpdate zone =
  ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates
    { filter = Core.Nothing,
      maxResults = 500,
      pageToken = Core.Nothing,
      project = project,
      rollingUpdate = rollingUpdate,
      zone = zone
    }

instance
  Core.GoogleRequest
    ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates
  where
  type
    Rs
      ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates =
      InstanceUpdateList
  type
    Scopes
      ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Replicapool'FullControl,
         Replicapool'Readonly
       ]
  requestClient
    ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates {..} =
      go
        project
        zone
        rollingUpdate
        filter
        (Core.Just maxResults)
        pageToken
        (Core.Just Core.AltJSON)
        replicaPoolUpdaterService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ReplicaPoolUpdaterRollingUpdatesListInstanceUpdatesResource
            )
            Core.mempty
