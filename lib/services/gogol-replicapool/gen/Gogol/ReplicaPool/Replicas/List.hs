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
-- Module      : Gogol.ReplicaPool.Replicas.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all replicas in a pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.replicas.list@.
module Gogol.ReplicaPool.Replicas.List
  ( -- * Resource
    ReplicaPoolReplicasListResource,

    -- ** Constructing a Request
    ReplicaPoolReplicasList (..),
    newReplicaPoolReplicasList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.replicas.list@ method which the
-- 'ReplicaPoolReplicasList' request conforms to.
type ReplicaPoolReplicasListResource =
  "replicapool"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "pools"
    Core.:> Core.Capture "poolName" Core.Text
    Core.:> "replicas"
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ReplicasListResponse

-- | Lists all replicas in a pool.
--
-- /See:/ 'newReplicaPoolReplicasList' smart constructor.
data ReplicaPoolReplicasList = ReplicaPoolReplicasList
  { -- | Maximum count of results to be returned. Acceptable values are 0 to 100, inclusive. (Default: 50)
    maxResults :: Core.Int32,
    -- | Set this to the nextPageToken value returned by a previous list request to obtain the next page of results from the previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | The replica pool name for this request.
    poolName :: Core.Text,
    -- | The project ID for this request.
    projectName :: Core.Text,
    -- | The zone where the replica pool lives.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolReplicasList' with the minimum fields required to make a request.
newReplicaPoolReplicasList ::
  -- |  The replica pool name for this request. See 'poolName'.
  Core.Text ->
  -- |  The project ID for this request. See 'projectName'.
  Core.Text ->
  -- |  The zone where the replica pool lives. See 'zone'.
  Core.Text ->
  ReplicaPoolReplicasList
newReplicaPoolReplicasList poolName projectName zone =
  ReplicaPoolReplicasList
    { maxResults = 500,
      pageToken = Core.Nothing,
      poolName = poolName,
      projectName = projectName,
      zone = zone
    }

instance Core.GoogleRequest ReplicaPoolReplicasList where
  type Rs ReplicaPoolReplicasList = ReplicasListResponse
  type
    Scopes ReplicaPoolReplicasList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Ndev'Cloudman,
         Ndev'Cloudman'Readonly,
         Replicapool'FullControl,
         Replicapool'Readonly
       ]
  requestClient ReplicaPoolReplicasList {..} =
    go
      projectName
      zone
      poolName
      (Core.Just maxResults)
      pageToken
      (Core.Just Core.AltJSON)
      replicaPoolService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ReplicaPoolReplicasListResource)
          Core.mempty
