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
-- Module      : Gogol.ReplicaPool.Pools.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all replica pools.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.list@.
module Gogol.ReplicaPool.Pools.List
    (
    -- * Resource
      ReplicaPoolPoolsListResource

    -- ** Constructing a Request
    , newReplicaPoolPoolsList
    , ReplicaPoolPoolsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.list@ method which the
-- 'ReplicaPoolPoolsList' request conforms to.
type ReplicaPoolPoolsListResource =
     "replicapool" Core.:>
       "v1beta1" Core.:>
         "projects" Core.:>
           Core.Capture "projectName" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "pools" Core.:>
                   Core.QueryParam "maxResults" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] PoolsListResponse

-- | List all replica pools.
--
-- /See:/ 'newReplicaPoolPoolsList' smart constructor.
data ReplicaPoolPoolsList = ReplicaPoolPoolsList
    {
      -- | Maximum count of results to be returned. Acceptable values are 0 to 100, inclusive. (Default: 50)
      maxResults :: Core.Int32
      -- | Set this to the nextPageToken value returned by a previous list request to obtain the next page of results from the previous list request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The project ID for this request.
    , projectName :: Core.Text
      -- | The zone for this replica pool.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolPoolsList' with the minimum fields required to make a request.
newReplicaPoolPoolsList 
    ::  Core.Text
       -- ^  The project ID for this request. See 'projectName'.
    -> Core.Text
       -- ^  The zone for this replica pool. See 'zone'.
    -> ReplicaPoolPoolsList
newReplicaPoolPoolsList projectName zone =
  ReplicaPoolPoolsList
    { maxResults = 500
    , pageToken = Core.Nothing
    , projectName = projectName
    , zone = zone
    }

instance Core.GoogleRequest ReplicaPoolPoolsList
         where
        type Rs ReplicaPoolPoolsList = PoolsListResponse
        type Scopes ReplicaPoolPoolsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly",
               "https://www.googleapis.com/auth/replicapool",
               "https://www.googleapis.com/auth/replicapool.readonly"]
        requestClient ReplicaPoolPoolsList{..}
          = go projectName zone (Core.Just maxResults)
              pageToken
              (Core.Just Core.AltJSON)
              replicaPoolService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ReplicaPoolPoolsListResource)
                      Core.mempty

