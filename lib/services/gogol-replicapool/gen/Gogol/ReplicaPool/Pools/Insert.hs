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
-- Module      : Gogol.ReplicaPool.Pools.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new replica pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.insert@.
module Gogol.ReplicaPool.Pools.Insert
  ( -- * Resource
    ReplicaPoolPoolsInsertResource,

    -- ** Constructing a Request
    newReplicaPoolPoolsInsert,
    ReplicaPoolPoolsInsert,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.insert@ method which the
-- 'ReplicaPoolPoolsInsert' request conforms to.
type ReplicaPoolPoolsInsertResource =
  "replicapool"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "pools"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Pool
    Core.:> Core.Post '[Core.JSON] Pool

-- | Inserts a new replica pool.
--
-- /See:/ 'newReplicaPoolPoolsInsert' smart constructor.
data ReplicaPoolPoolsInsert = ReplicaPoolPoolsInsert
  { -- | Multipart request metadata.
    payload :: Pool,
    -- | The project ID for this replica pool.
    projectName :: Core.Text,
    -- | The zone for this replica pool.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolPoolsInsert' with the minimum fields required to make a request.
newReplicaPoolPoolsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Pool ->
  -- |  The project ID for this replica pool. See 'projectName'.
  Core.Text ->
  -- |  The zone for this replica pool. See 'zone'.
  Core.Text ->
  ReplicaPoolPoolsInsert
newReplicaPoolPoolsInsert payload projectName zone =
  ReplicaPoolPoolsInsert
    { payload = payload,
      projectName = projectName,
      zone = zone
    }

instance Core.GoogleRequest ReplicaPoolPoolsInsert where
  type Rs ReplicaPoolPoolsInsert = Pool
  type
    Scopes ReplicaPoolPoolsInsert =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/ndev.cloudman",
         "https://www.googleapis.com/auth/replicapool"
       ]
  requestClient ReplicaPoolPoolsInsert {..} =
    go
      projectName
      zone
      (Core.Just Core.AltJSON)
      payload
      replicaPoolService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ReplicaPoolPoolsInsertResource
          )
          Core.mempty
