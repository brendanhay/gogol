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
-- Module      : Gogol.ReplicaPool.Replicas.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specific replica.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.replicas.get@.
module Gogol.ReplicaPool.Replicas.Get
  ( -- * Resource
    ReplicaPoolReplicasGetResource,

    -- ** Constructing a Request
    ReplicaPoolReplicasGet (..),
    newReplicaPoolReplicasGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.replicas.get@ method which the
-- 'ReplicaPoolReplicasGet' request conforms to.
type ReplicaPoolReplicasGetResource =
  "replicapool"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "pools"
    Core.:> Core.Capture "poolName" Core.Text
    Core.:> "replicas"
    Core.:> Core.Capture "replicaName" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Replica

-- | Gets information about a specific replica.
--
-- /See:/ 'newReplicaPoolReplicasGet' smart constructor.
data ReplicaPoolReplicasGet = ReplicaPoolReplicasGet
  { -- | The replica pool name for this request.
    poolName :: Core.Text,
    -- | The project ID for this request.
    projectName :: Core.Text,
    -- | The name of the replica for this request.
    replicaName :: Core.Text,
    -- | The zone where the replica lives.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolReplicasGet' with the minimum fields required to make a request.
newReplicaPoolReplicasGet ::
  -- |  The replica pool name for this request. See 'poolName'.
  Core.Text ->
  -- |  The project ID for this request. See 'projectName'.
  Core.Text ->
  -- |  The name of the replica for this request. See 'replicaName'.
  Core.Text ->
  -- |  The zone where the replica lives. See 'zone'.
  Core.Text ->
  ReplicaPoolReplicasGet
newReplicaPoolReplicasGet poolName projectName replicaName zone =
  ReplicaPoolReplicasGet
    { poolName = poolName,
      projectName = projectName,
      replicaName = replicaName,
      zone = zone
    }

instance Core.GoogleRequest ReplicaPoolReplicasGet where
  type Rs ReplicaPoolReplicasGet = Replica
  type
    Scopes ReplicaPoolReplicasGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Ndev'Cloudman,
         Ndev'Cloudman'Readonly,
         Replicapool'FullControl,
         Replicapool'Readonly
       ]
  requestClient ReplicaPoolReplicasGet {..} =
    go
      projectName
      zone
      poolName
      replicaName
      (Core.Just Core.AltJSON)
      replicaPoolService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ReplicaPoolReplicasGetResource)
          Core.mempty
