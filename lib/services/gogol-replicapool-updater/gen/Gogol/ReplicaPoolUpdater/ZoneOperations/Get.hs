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
-- Module      : Gogol.ReplicaPoolUpdater.ZoneOperations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified zone-specific operation resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.zoneOperations.get@.
module Gogol.ReplicaPoolUpdater.ZoneOperations.Get
  ( -- * Resource
    ReplicaPoolUpdaterZoneOperationsGetResource,

    -- ** Constructing a Request
    ReplicaPoolUpdaterZoneOperationsGet (..),
    newReplicaPoolUpdaterZoneOperationsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.zoneOperations.get@ method which the
-- 'ReplicaPoolUpdaterZoneOperationsGet' request conforms to.
type ReplicaPoolUpdaterZoneOperationsGetResource =
  "replicapoolupdater"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "operations"
    Core.:> Core.Capture "operation" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Operation

-- | Retrieves the specified zone-specific operation resource.
--
-- /See:/ 'newReplicaPoolUpdaterZoneOperationsGet' smart constructor.
data ReplicaPoolUpdaterZoneOperationsGet = ReplicaPoolUpdaterZoneOperationsGet
  { -- | Name of the operation resource to return.
    operation :: Core.Text,
    -- | Name of the project scoping this request.
    project :: Core.Text,
    -- | Name of the zone scoping this request.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolUpdaterZoneOperationsGet' with the minimum fields required to make a request.
newReplicaPoolUpdaterZoneOperationsGet ::
  -- |  Name of the operation resource to return. See 'operation'.
  Core.Text ->
  -- |  Name of the project scoping this request. See 'project'.
  Core.Text ->
  -- |  Name of the zone scoping this request. See 'zone'.
  Core.Text ->
  ReplicaPoolUpdaterZoneOperationsGet
newReplicaPoolUpdaterZoneOperationsGet operation project zone =
  ReplicaPoolUpdaterZoneOperationsGet
    { operation = operation,
      project = project,
      zone = zone
    }

instance Core.GoogleRequest ReplicaPoolUpdaterZoneOperationsGet where
  type Rs ReplicaPoolUpdaterZoneOperationsGet = Operation
  type
    Scopes ReplicaPoolUpdaterZoneOperationsGet =
      '[CloudPlatform'FullControl, Replicapool'FullControl]
  requestClient ReplicaPoolUpdaterZoneOperationsGet {..} =
    go
      project
      zone
      operation
      (Core.Just Core.AltJSON)
      replicaPoolUpdaterService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ReplicaPoolUpdaterZoneOperationsGetResource
          )
          Core.mempty
