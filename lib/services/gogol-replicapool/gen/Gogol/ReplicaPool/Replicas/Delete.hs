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
-- Module      : Gogol.ReplicaPool.Replicas.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a replica from the pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.replicas.delete@.
module Gogol.ReplicaPool.Replicas.Delete
  ( -- * Resource
    ReplicaPoolReplicasDeleteResource,

    -- ** Constructing a Request
    ReplicaPoolReplicasDelete (..),
    newReplicaPoolReplicasDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.replicas.delete@ method which the
-- 'ReplicaPoolReplicasDelete' request conforms to.
type ReplicaPoolReplicasDeleteResource =
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
    Core.:> Core.ReqBody '[Core.JSON] ReplicasDeleteRequest
    Core.:> Core.Post '[Core.JSON] Replica

-- | Deletes a replica from the pool.
--
-- /See:/ 'newReplicaPoolReplicasDelete' smart constructor.
data ReplicaPoolReplicasDelete = ReplicaPoolReplicasDelete
  { -- | Multipart request metadata.
    payload :: ReplicasDeleteRequest,
    -- | The replica pool name for this request.
    poolName :: Core.Text,
    -- | The project ID for this request.
    projectName :: Core.Text,
    -- | The name of the replica for this request.
    replicaName :: Core.Text,
    -- | The zone where the replica lives.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolReplicasDelete' with the minimum fields required to make a request.
newReplicaPoolReplicasDelete ::
  -- |  Multipart request metadata. See 'payload'.
  ReplicasDeleteRequest ->
  -- |  The replica pool name for this request. See 'poolName'.
  Core.Text ->
  -- |  The project ID for this request. See 'projectName'.
  Core.Text ->
  -- |  The name of the replica for this request. See 'replicaName'.
  Core.Text ->
  -- |  The zone where the replica lives. See 'zone'.
  Core.Text ->
  ReplicaPoolReplicasDelete
newReplicaPoolReplicasDelete
  payload
  poolName
  projectName
  replicaName
  zone =
    ReplicaPoolReplicasDelete
      { payload = payload,
        poolName = poolName,
        projectName = projectName,
        replicaName = replicaName,
        zone = zone
      }

instance Core.GoogleRequest ReplicaPoolReplicasDelete where
  type Rs ReplicaPoolReplicasDelete = Replica
  type
    Scopes ReplicaPoolReplicasDelete =
      '[ CloudPlatform'FullControl,
         Ndev'Cloudman,
         Replicapool'FullControl
       ]
  requestClient ReplicaPoolReplicasDelete {..} =
    go
      projectName
      zone
      poolName
      replicaName
      (Core.Just Core.AltJSON)
      payload
      replicaPoolService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ReplicaPoolReplicasDeleteResource)
          Core.mempty
