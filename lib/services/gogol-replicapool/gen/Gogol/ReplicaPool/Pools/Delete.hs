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
-- Module      : Gogol.ReplicaPool.Pools.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a replica pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.delete@.
module Gogol.ReplicaPool.Pools.Delete
  ( -- * Resource
    ReplicaPoolPoolsDeleteResource,

    -- ** Constructing a Request
    ReplicaPoolPoolsDelete (..),
    newReplicaPoolPoolsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.delete@ method which the
-- 'ReplicaPoolPoolsDelete' request conforms to.
type ReplicaPoolPoolsDeleteResource =
  "replicapool"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "pools"
    Core.:> Core.Capture "poolName" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PoolsDeleteRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Deletes a replica pool.
--
-- /See:/ 'newReplicaPoolPoolsDelete' smart constructor.
data ReplicaPoolPoolsDelete = ReplicaPoolPoolsDelete
  { -- | Multipart request metadata.
    payload :: PoolsDeleteRequest,
    -- | The name of the replica pool for this request.
    poolName :: Core.Text,
    -- | The project ID for this replica pool.
    projectName :: Core.Text,
    -- | The zone for this replica pool.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolPoolsDelete' with the minimum fields required to make a request.
newReplicaPoolPoolsDelete ::
  -- |  Multipart request metadata. See 'payload'.
  PoolsDeleteRequest ->
  -- |  The name of the replica pool for this request. See 'poolName'.
  Core.Text ->
  -- |  The project ID for this replica pool. See 'projectName'.
  Core.Text ->
  -- |  The zone for this replica pool. See 'zone'.
  Core.Text ->
  ReplicaPoolPoolsDelete
newReplicaPoolPoolsDelete payload poolName projectName zone =
  ReplicaPoolPoolsDelete
    { payload = payload,
      poolName = poolName,
      projectName = projectName,
      zone = zone
    }

instance Core.GoogleRequest ReplicaPoolPoolsDelete where
  type Rs ReplicaPoolPoolsDelete = ()
  type
    Scopes ReplicaPoolPoolsDelete =
      '[ CloudPlatform'FullControl,
         Ndev'Cloudman,
         Replicapool'FullControl
       ]
  requestClient ReplicaPoolPoolsDelete {..} =
    go
      projectName
      zone
      poolName
      (Core.Just Core.AltJSON)
      payload
      replicaPoolService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ReplicaPoolPoolsDeleteResource)
          Core.mempty
