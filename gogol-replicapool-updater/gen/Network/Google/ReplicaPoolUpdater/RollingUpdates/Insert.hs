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
-- Module      : Network.Google.ReplicaPoolUpdater.RollingUpdates.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts and starts a new update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.insert@.
module Network.Google.ReplicaPoolUpdater.RollingUpdates.Insert
  ( -- * Resource
    ReplicaPoolUpdaterRollingUpdatesInsertResource,

    -- ** Constructing a Request
    newReplicaPoolUpdaterRollingUpdatesInsert,
    ReplicaPoolUpdaterRollingUpdatesInsert,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.insert@ method which the
-- 'ReplicaPoolUpdaterRollingUpdatesInsert' request conforms to.
type ReplicaPoolUpdaterRollingUpdatesInsertResource =
  "replicapoolupdater"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "rollingUpdates"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RollingUpdate
    Core.:> Core.Post '[Core.JSON] Operation

-- | Inserts and starts a new update.
--
-- /See:/ 'newReplicaPoolUpdaterRollingUpdatesInsert' smart constructor.
data ReplicaPoolUpdaterRollingUpdatesInsert = ReplicaPoolUpdaterRollingUpdatesInsert
  { -- | Multipart request metadata.
    payload :: RollingUpdate,
    -- | The Google Developers Console project name.
    project :: Core.Text,
    -- | The name of the zone in which the update\'s target resides.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolUpdaterRollingUpdatesInsert' with the minimum fields required to make a request.
newReplicaPoolUpdaterRollingUpdatesInsert ::
  -- |  Multipart request metadata. See 'payload'.
  RollingUpdate ->
  -- |  The Google Developers Console project name. See 'project'.
  Core.Text ->
  -- |  The name of the zone in which the update\'s target resides. See 'zone'.
  Core.Text ->
  ReplicaPoolUpdaterRollingUpdatesInsert
newReplicaPoolUpdaterRollingUpdatesInsert payload project zone =
  ReplicaPoolUpdaterRollingUpdatesInsert
    { payload = payload,
      project = project,
      zone = zone
    }

instance
  Core.GoogleRequest
    ReplicaPoolUpdaterRollingUpdatesInsert
  where
  type
    Rs ReplicaPoolUpdaterRollingUpdatesInsert =
      Operation
  type
    Scopes ReplicaPoolUpdaterRollingUpdatesInsert =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/replicapool"
       ]
  requestClient
    ReplicaPoolUpdaterRollingUpdatesInsert {..} =
      go
        project
        zone
        (Core.Just Core.AltJSON)
        payload
        replicaPoolUpdaterService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ReplicaPoolUpdaterRollingUpdatesInsertResource
            )
            Core.mempty
