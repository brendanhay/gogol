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
-- Module      : Gogol.ReplicaPool.Pools.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a single replica pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.get@.
module Gogol.ReplicaPool.Pools.Get
  ( -- * Resource
    ReplicaPoolPoolsGetResource,

    -- ** Constructing a Request
    ReplicaPoolPoolsGet (..),
    newReplicaPoolPoolsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.get@ method which the
-- 'ReplicaPoolPoolsGet' request conforms to.
type ReplicaPoolPoolsGetResource =
  "replicapool"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "pools"
    Core.:> Core.Capture "poolName" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Pool

-- | Gets information about a single replica pool.
--
-- /See:/ 'newReplicaPoolPoolsGet' smart constructor.
data ReplicaPoolPoolsGet = ReplicaPoolPoolsGet
  { -- | The name of the replica pool for this request.
    poolName :: Core.Text,
    -- | The project ID for this replica pool.
    projectName :: Core.Text,
    -- | The zone for this replica pool.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolPoolsGet' with the minimum fields required to make a request.
newReplicaPoolPoolsGet ::
  -- |  The name of the replica pool for this request. See 'poolName'.
  Core.Text ->
  -- |  The project ID for this replica pool. See 'projectName'.
  Core.Text ->
  -- |  The zone for this replica pool. See 'zone'.
  Core.Text ->
  ReplicaPoolPoolsGet
newReplicaPoolPoolsGet poolName projectName zone =
  ReplicaPoolPoolsGet
    { poolName = poolName,
      projectName = projectName,
      zone = zone
    }

instance Core.GoogleRequest ReplicaPoolPoolsGet where
  type Rs ReplicaPoolPoolsGet = Pool
  type
    Scopes ReplicaPoolPoolsGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Ndev'Cloudman,
         Ndev'Cloudman'Readonly,
         Replicapool'FullControl,
         Replicapool'Readonly
       ]
  requestClient ReplicaPoolPoolsGet {..} =
    go
      projectName
      zone
      poolName
      (Core.Just Core.AltJSON)
      replicaPoolService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ReplicaPoolPoolsGetResource
          )
          Core.mempty
