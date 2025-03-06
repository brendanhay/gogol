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
-- Module      : Gogol.ReplicaPool
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Replica Pool API allows users to declaratively provision and manage groups of Google Compute Engine instances based on a common template.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference>
module Gogol.ReplicaPool
  ( -- * Configuration
    replicaPoolService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Ndev'Cloudman,
    Ndev'Cloudman'Readonly,
    Replicapool'FullControl,
    Replicapool'Readonly,

    -- * Resources

    -- ** replicapool.pools.delete
    ReplicaPoolPoolsDeleteResource,
    ReplicaPoolPoolsDelete (..),
    newReplicaPoolPoolsDelete,

    -- ** replicapool.pools.get
    ReplicaPoolPoolsGetResource,
    ReplicaPoolPoolsGet (..),
    newReplicaPoolPoolsGet,

    -- ** replicapool.pools.insert
    ReplicaPoolPoolsInsertResource,
    ReplicaPoolPoolsInsert (..),
    newReplicaPoolPoolsInsert,

    -- ** replicapool.pools.list
    ReplicaPoolPoolsListResource,
    ReplicaPoolPoolsList (..),
    newReplicaPoolPoolsList,

    -- ** replicapool.pools.resize
    ReplicaPoolPoolsResizeResource,
    ReplicaPoolPoolsResize (..),
    newReplicaPoolPoolsResize,

    -- ** replicapool.pools.updatetemplate
    ReplicaPoolPoolsUpdatetemplateResource,
    ReplicaPoolPoolsUpdatetemplate (..),
    newReplicaPoolPoolsUpdatetemplate,

    -- ** replicapool.replicas.delete
    ReplicaPoolReplicasDeleteResource,
    ReplicaPoolReplicasDelete (..),
    newReplicaPoolReplicasDelete,

    -- ** replicapool.replicas.get
    ReplicaPoolReplicasGetResource,
    ReplicaPoolReplicasGet (..),
    newReplicaPoolReplicasGet,

    -- ** replicapool.replicas.list
    ReplicaPoolReplicasListResource,
    ReplicaPoolReplicasList (..),
    newReplicaPoolReplicasList,

    -- ** replicapool.replicas.restart
    ReplicaPoolReplicasRestartResource,
    ReplicaPoolReplicasRestart (..),
    newReplicaPoolReplicasRestart,

    -- * Types

    -- ** AccessConfig
    AccessConfig (..),
    newAccessConfig,

    -- ** Action
    Action (..),
    newAction,

    -- ** DiskAttachment
    DiskAttachment (..),
    newDiskAttachment,

    -- ** EnvVariable
    EnvVariable (..),
    newEnvVariable,

    -- ** ExistingDisk
    ExistingDisk (..),
    newExistingDisk,

    -- ** HealthCheck
    HealthCheck (..),
    newHealthCheck,

    -- ** Label
    Label (..),
    newLabel,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** MetadataItem
    MetadataItem (..),
    newMetadataItem,

    -- ** NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,

    -- ** NewDisk
    NewDisk (..),
    newNewDisk,

    -- ** NewDiskInitializeParams
    NewDiskInitializeParams (..),
    newNewDiskInitializeParams,

    -- ** Pool
    Pool (..),
    newPool,

    -- ** PoolsDeleteRequest
    PoolsDeleteRequest (..),
    newPoolsDeleteRequest,

    -- ** PoolsListResponse
    PoolsListResponse (..),
    newPoolsListResponse,

    -- ** Replica
    Replica (..),
    newReplica,

    -- ** ReplicaStatus
    ReplicaStatus (..),
    newReplicaStatus,

    -- ** ReplicasDeleteRequest
    ReplicasDeleteRequest (..),
    newReplicasDeleteRequest,

    -- ** ReplicasListResponse
    ReplicasListResponse (..),
    newReplicasListResponse,

    -- ** ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- ** Tag
    Tag (..),
    newTag,

    -- ** Template
    Template (..),
    newTemplate,

    -- ** VmParams
    VmParams (..),
    newVmParams,
  )
where

import Gogol.ReplicaPool.Pools.Delete
import Gogol.ReplicaPool.Pools.Get
import Gogol.ReplicaPool.Pools.Insert
import Gogol.ReplicaPool.Pools.List
import Gogol.ReplicaPool.Pools.Resize
import Gogol.ReplicaPool.Pools.Updatetemplate
import Gogol.ReplicaPool.Replicas.Delete
import Gogol.ReplicaPool.Replicas.Get
import Gogol.ReplicaPool.Replicas.List
import Gogol.ReplicaPool.Replicas.Restart
import Gogol.ReplicaPool.Types
