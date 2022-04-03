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
-- Module      : Gogol.ReplicaPool.Pools.Updatetemplate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the template used by the pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.updatetemplate@.
module Gogol.ReplicaPool.Pools.Updatetemplate
  ( -- * Resource
    ReplicaPoolPoolsUpdatetemplateResource,

    -- ** Constructing a Request
    ReplicaPoolPoolsUpdatetemplate (..),
    newReplicaPoolPoolsUpdatetemplate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.updatetemplate@ method which the
-- 'ReplicaPoolPoolsUpdatetemplate' request conforms to.
type ReplicaPoolPoolsUpdatetemplateResource =
  "replicapool"
    Core.:> "v1beta1"
    Core.:> "projects"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "pools"
    Core.:> Core.Capture "poolName" Core.Text
    Core.:> "updateTemplate"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Template
    Core.:> Core.Post '[Core.JSON] ()

-- | Update the template used by the pool.
--
-- /See:/ 'newReplicaPoolPoolsUpdatetemplate' smart constructor.
data ReplicaPoolPoolsUpdatetemplate = ReplicaPoolPoolsUpdatetemplate
  { -- | Multipart request metadata.
    payload :: Template,
    -- | The name of the replica pool for this request.
    poolName :: Core.Text,
    -- | The project ID for this replica pool.
    projectName :: Core.Text,
    -- | The zone for this replica pool.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolPoolsUpdatetemplate' with the minimum fields required to make a request.
newReplicaPoolPoolsUpdatetemplate ::
  -- |  Multipart request metadata. See 'payload'.
  Template ->
  -- |  The name of the replica pool for this request. See 'poolName'.
  Core.Text ->
  -- |  The project ID for this replica pool. See 'projectName'.
  Core.Text ->
  -- |  The zone for this replica pool. See 'zone'.
  Core.Text ->
  ReplicaPoolPoolsUpdatetemplate
newReplicaPoolPoolsUpdatetemplate payload poolName projectName zone =
  ReplicaPoolPoolsUpdatetemplate
    { payload = payload,
      poolName = poolName,
      projectName = projectName,
      zone = zone
    }

instance
  Core.GoogleRequest
    ReplicaPoolPoolsUpdatetemplate
  where
  type Rs ReplicaPoolPoolsUpdatetemplate = ()
  type
    Scopes ReplicaPoolPoolsUpdatetemplate =
      '[ CloudPlatform'FullControl,
         Ndev'Cloudman,
         Replicapool'FullControl
       ]
  requestClient ReplicaPoolPoolsUpdatetemplate {..} =
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
          ( Core.Proxy ::
              Core.Proxy ReplicaPoolPoolsUpdatetemplateResource
          )
          Core.mempty
