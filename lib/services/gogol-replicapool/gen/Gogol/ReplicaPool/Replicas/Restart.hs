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
-- Module      : Gogol.ReplicaPool.Replicas.Restart
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restarts a replica in a pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.replicas.restart@.
module Gogol.ReplicaPool.Replicas.Restart
  ( -- * Resource
    ReplicaPoolReplicasRestartResource,

    -- ** Constructing a Request
    newReplicaPoolReplicasRestart,
    ReplicaPoolReplicasRestart,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.replicas.restart@ method which the
-- 'ReplicaPoolReplicasRestart' request conforms to.
type ReplicaPoolReplicasRestartResource =
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
    Core.:> "restart"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Replica

-- | Restarts a replica in a pool.
--
-- /See:/ 'newReplicaPoolReplicasRestart' smart constructor.
data ReplicaPoolReplicasRestart = ReplicaPoolReplicasRestart
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

-- | Creates a value of 'ReplicaPoolReplicasRestart' with the minimum fields required to make a request.
newReplicaPoolReplicasRestart ::
  -- |  The replica pool name for this request. See 'poolName'.
  Core.Text ->
  -- |  The project ID for this request. See 'projectName'.
  Core.Text ->
  -- |  The name of the replica for this request. See 'replicaName'.
  Core.Text ->
  -- |  The zone where the replica lives. See 'zone'.
  Core.Text ->
  ReplicaPoolReplicasRestart
newReplicaPoolReplicasRestart poolName projectName replicaName zone =
  ReplicaPoolReplicasRestart
    { poolName = poolName,
      projectName = projectName,
      replicaName = replicaName,
      zone = zone
    }

instance
  Core.GoogleRequest
    ReplicaPoolReplicasRestart
  where
  type Rs ReplicaPoolReplicasRestart = Replica
  type
    Scopes ReplicaPoolReplicasRestart =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/ndev.cloudman",
         "https://www.googleapis.com/auth/replicapool"
       ]
  requestClient ReplicaPoolReplicasRestart {..} =
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
          ( Core.Proxy ::
              Core.Proxy ReplicaPoolReplicasRestartResource
          )
          Core.mempty
