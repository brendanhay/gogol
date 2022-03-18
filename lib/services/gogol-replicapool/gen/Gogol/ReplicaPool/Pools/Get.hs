{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

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
    (
    -- * Resource
      ReplicaPoolPoolsGetResource

    -- ** Constructing a Request
    , newReplicaPoolPoolsGet
    , ReplicaPoolPoolsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.get@ method which the
-- 'ReplicaPoolPoolsGet' request conforms to.
type ReplicaPoolPoolsGetResource =
     "replicapool" Core.:>
       "v1beta1" Core.:>
         "projects" Core.:>
           Core.Capture "projectName" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "pools" Core.:>
                   Core.Capture "poolName" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Pool

-- | Gets information about a single replica pool.
--
-- /See:/ 'newReplicaPoolPoolsGet' smart constructor.
data ReplicaPoolPoolsGet = ReplicaPoolPoolsGet
    {
      -- | The name of the replica pool for this request.
      poolName :: Core.Text
      -- | The project ID for this replica pool.
    , projectName :: Core.Text
      -- | The zone for this replica pool.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolPoolsGet' with the minimum fields required to make a request.
newReplicaPoolPoolsGet 
    ::  Core.Text
       -- ^  The name of the replica pool for this request. See 'poolName'.
    -> Core.Text
       -- ^  The project ID for this replica pool. See 'projectName'.
    -> Core.Text
       -- ^  The zone for this replica pool. See 'zone'.
    -> ReplicaPoolPoolsGet
newReplicaPoolPoolsGet poolName projectName zone =
  ReplicaPoolPoolsGet
    {poolName = poolName, projectName = projectName, zone = zone}

instance Core.GoogleRequest ReplicaPoolPoolsGet where
        type Rs ReplicaPoolPoolsGet = Pool
        type Scopes ReplicaPoolPoolsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly",
               "https://www.googleapis.com/auth/replicapool",
               "https://www.googleapis.com/auth/replicapool.readonly"]
        requestClient ReplicaPoolPoolsGet{..}
          = go projectName zone poolName
              (Core.Just Core.AltJSON)
              replicaPoolService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ReplicaPoolPoolsGetResource)
                      Core.mempty

