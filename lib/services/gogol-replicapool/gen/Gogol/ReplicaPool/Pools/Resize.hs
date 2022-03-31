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
-- Module      : Gogol.ReplicaPool.Pools.Resize
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resize a pool. This is an asynchronous operation, and multiple overlapping resize requests can be made. Replica Pools will use the information from the last resize request.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.resize@.
module Gogol.ReplicaPool.Pools.Resize
  ( -- * Resource
    ReplicaPoolPoolsResizeResource,

    -- ** Constructing a Request
    newReplicaPoolPoolsResize,
    ReplicaPoolPoolsResize,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.resize@ method which the
-- 'ReplicaPoolPoolsResize' request conforms to.
type ReplicaPoolPoolsResizeResource =
  "replicapool"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "pools"
    Core.:> Core.Capture "poolName" Core.Text
    Core.:> "resize"
    Core.:> Core.QueryParam "numReplicas" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Pool

-- | Resize a pool. This is an asynchronous operation, and multiple overlapping resize requests can be made. Replica Pools will use the information from the last resize request.
--
-- /See:/ 'newReplicaPoolPoolsResize' smart constructor.
data ReplicaPoolPoolsResize = ReplicaPoolPoolsResize
  { -- | The desired number of replicas to resize to. If this number is larger than the existing number of replicas, new replicas will be added. If the number is smaller, then existing replicas will be deleted.
    numReplicas :: (Core.Maybe Core.Int32),
    -- | The name of the replica pool for this request.
    poolName :: Core.Text,
    -- | The project ID for this replica pool.
    projectName :: Core.Text,
    -- | The zone for this replica pool.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolPoolsResize' with the minimum fields required to make a request.
newReplicaPoolPoolsResize ::
  -- |  The name of the replica pool for this request. See 'poolName'.
  Core.Text ->
  -- |  The project ID for this replica pool. See 'projectName'.
  Core.Text ->
  -- |  The zone for this replica pool. See 'zone'.
  Core.Text ->
  ReplicaPoolPoolsResize
newReplicaPoolPoolsResize poolName projectName zone =
  ReplicaPoolPoolsResize
    { numReplicas = Core.Nothing,
      poolName = poolName,
      projectName = projectName,
      zone = zone
    }

instance Core.GoogleRequest ReplicaPoolPoolsResize where
  type Rs ReplicaPoolPoolsResize = Pool
  type
    Scopes ReplicaPoolPoolsResize =
      '[ CloudPlatform'FullControl,
         Ndev'Cloudman,
         Replicapool'FullControl
       ]
  requestClient ReplicaPoolPoolsResize {..} =
    go
      projectName
      zone
      poolName
      numReplicas
      (Core.Just Core.AltJSON)
      replicaPoolService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ReplicaPoolPoolsResizeResource
          )
          Core.mempty
