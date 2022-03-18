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
-- Module      : Gogol.ReplicaPool
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    ndevCloudmanScope,
    ndevCloudmanReadOnlyScope,
    replicaPoolScope,
    replicaPoolReadOnlyScope,

    -- * Resources

    -- ** replicapool.pools.delete
    ReplicaPoolPoolsDeleteResource,
    newReplicaPoolPoolsDelete,
    ReplicaPoolPoolsDelete,

    -- ** replicapool.pools.get
    ReplicaPoolPoolsGetResource,
    newReplicaPoolPoolsGet,
    ReplicaPoolPoolsGet,

    -- ** replicapool.pools.insert
    ReplicaPoolPoolsInsertResource,
    newReplicaPoolPoolsInsert,
    ReplicaPoolPoolsInsert,

    -- ** replicapool.pools.list
    ReplicaPoolPoolsListResource,
    newReplicaPoolPoolsList,
    ReplicaPoolPoolsList,

    -- ** replicapool.pools.resize
    ReplicaPoolPoolsResizeResource,
    newReplicaPoolPoolsResize,
    ReplicaPoolPoolsResize,

    -- ** replicapool.pools.updatetemplate
    ReplicaPoolPoolsUpdatetemplateResource,
    newReplicaPoolPoolsUpdatetemplate,
    ReplicaPoolPoolsUpdatetemplate,

    -- ** replicapool.replicas.delete
    ReplicaPoolReplicasDeleteResource,
    newReplicaPoolReplicasDelete,
    ReplicaPoolReplicasDelete,

    -- ** replicapool.replicas.get
    ReplicaPoolReplicasGetResource,
    newReplicaPoolReplicasGet,
    ReplicaPoolReplicasGet,

    -- ** replicapool.replicas.list
    ReplicaPoolReplicasListResource,
    newReplicaPoolReplicasList,
    ReplicaPoolReplicasList,

    -- ** replicapool.replicas.restart
    ReplicaPoolReplicasRestartResource,
    newReplicaPoolReplicasRestart,
    ReplicaPoolReplicasRestart,

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
