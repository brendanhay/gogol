{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ReplicaPool.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ReplicaPool.Types
    (
    -- * Configuration
      replicaPoolService

    -- * OAuth Scopes
    , CloudPlatform'FullControl
    , CloudPlatform'ReadOnly
    , Ndev'Cloudman
    , Ndev'Cloudman'Readonly
    , Replicapool'FullControl
    , Replicapool'Readonly

    -- * Types

    -- ** AccessConfig
    , AccessConfig (..)
    , newAccessConfig

    -- ** Action
    , Action (..)
    , newAction

    -- ** DiskAttachment
    , DiskAttachment (..)
    , newDiskAttachment

    -- ** EnvVariable
    , EnvVariable (..)
    , newEnvVariable

    -- ** ExistingDisk
    , ExistingDisk (..)
    , newExistingDisk

    -- ** HealthCheck
    , HealthCheck (..)
    , newHealthCheck

    -- ** Label
    , Label (..)
    , newLabel

    -- ** Metadata
    , Metadata (..)
    , newMetadata

    -- ** MetadataItem
    , MetadataItem (..)
    , newMetadataItem

    -- ** NetworkInterface
    , NetworkInterface (..)
    , newNetworkInterface

    -- ** NewDisk
    , NewDisk (..)
    , newNewDisk

    -- ** NewDiskInitializeParams
    , NewDiskInitializeParams (..)
    , newNewDiskInitializeParams

    -- ** Pool
    , Pool (..)
    , newPool

    -- ** PoolsDeleteRequest
    , PoolsDeleteRequest (..)
    , newPoolsDeleteRequest

    -- ** PoolsListResponse
    , PoolsListResponse (..)
    , newPoolsListResponse

    -- ** Replica
    , Replica (..)
    , newReplica

    -- ** ReplicaStatus
    , ReplicaStatus (..)
    , newReplicaStatus

    -- ** ReplicasDeleteRequest
    , ReplicasDeleteRequest (..)
    , newReplicasDeleteRequest

    -- ** ReplicasListResponse
    , ReplicasListResponse (..)
    , newReplicasListResponse

    -- ** ServiceAccount
    , ServiceAccount (..)
    , newServiceAccount

    -- ** Tag
    , Tag (..)
    , newTag

    -- ** Template
    , Template (..)
    , newTemplate

    -- ** VmParams
    , VmParams (..)
    , newVmParams
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPool.Internal.Product
import Gogol.ReplicaPool.Internal.Sum

-- | Default request referring to version @v1beta1@ of the Replica Pool API. This contains the host and root path used as a starting point for constructing service requests.
replicaPoolService :: Core.ServiceConfig
replicaPoolService
  = Core.defaultService
      (Core.ServiceId "replicapool:v1beta1")
      "www.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud Platform services
type CloudPlatform'ReadOnly = "https://www.googleapis.com/auth/cloud-platform.read-only"

-- | View and manage your Google Cloud Platform management resources and deployment status information
type Ndev'Cloudman = "https://www.googleapis.com/auth/ndev.cloudman"

-- | View your Google Cloud Platform management resources and deployment status information
type Ndev'Cloudman'Readonly = "https://www.googleapis.com/auth/ndev.cloudman.readonly"

-- | View and manage replica pools
type Replicapool'FullControl = "https://www.googleapis.com/auth/replicapool"

-- | View replica pools
type Replicapool'Readonly = "https://www.googleapis.com/auth/replicapool.readonly"
