{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ReplicaPool
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Replica Pool API allows users to declaratively provision and manage
-- groups of Google Compute Engine instances based on a common template.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference>
module Network.Google.ReplicaPool
    (
    -- * Service Configuration
      replicaPoolService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , ndevCloudmanScope
    , ndevCloudmanReadOnlyScope
    , replicaPoolScope
    , replicaPoolReadOnlyScope

    -- * API Declaration
    , ReplicaPoolAPI

    -- * Resources

    -- ** replicapool.pools.delete
    , module Network.Google.Resource.ReplicaPool.Pools.Delete

    -- ** replicapool.pools.get
    , module Network.Google.Resource.ReplicaPool.Pools.Get

    -- ** replicapool.pools.insert
    , module Network.Google.Resource.ReplicaPool.Pools.Insert

    -- ** replicapool.pools.list
    , module Network.Google.Resource.ReplicaPool.Pools.List

    -- ** replicapool.pools.resize
    , module Network.Google.Resource.ReplicaPool.Pools.Resize

    -- ** replicapool.pools.updatetemplate
    , module Network.Google.Resource.ReplicaPool.Pools.Updatetemplate

    -- ** replicapool.replicas.delete
    , module Network.Google.Resource.ReplicaPool.Replicas.Delete

    -- ** replicapool.replicas.get
    , module Network.Google.Resource.ReplicaPool.Replicas.Get

    -- ** replicapool.replicas.list
    , module Network.Google.Resource.ReplicaPool.Replicas.List

    -- ** replicapool.replicas.restart
    , module Network.Google.Resource.ReplicaPool.Replicas.Restart

    -- * Types

    -- ** ReplicaStatus
    , ReplicaStatus
    , replicaStatus
    , rsState
    , rsTemplateVersion
    , rsVMLink
    , rsVMStartTime
    , rsDetails

    -- ** DiskAttachment
    , DiskAttachment
    , diskAttachment
    , daDeviceName
    , daIndex

    -- ** PoolsDeleteRequest
    , PoolsDeleteRequest
    , poolsDeleteRequest
    , pdrAbandonInstances

    -- ** HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcPath
    , hcCheckIntervalSec
    , hcName
    , hcHost
    , hcTimeoutSec
    , hcDescription
    , hcUnhealthyThreshold
    , hcPort

    -- ** Tag
    , Tag
    , tag
    , tFingerPrint
    , tItems

    -- ** NewDiskInitializeParams
    , NewDiskInitializeParams
    , newDiskInitializeParams
    , ndipSourceImage
    , ndipDiskSizeGb
    , ndipDiskType

    -- ** MetadataItem
    , MetadataItem
    , metadataItem
    , miValue
    , miKey

    -- ** Replica
    , Replica
    , replica
    , rStatus
    , rSelfLink
    , rName

    -- ** NetworkInterface
    , NetworkInterface
    , networkInterface
    , niNetwork
    , niNetworkIP
    , niAccessConfigs

    -- ** ExistingDisk
    , ExistingDisk
    , existingDisk
    , edAttachment
    , edSource

    -- ** Action
    , Action
    , action
    , aCommands
    , aTimeoutMilliSeconds
    , aEnvVariables

    -- ** Pool
    , Pool
    , pool
    , pResourceViews
    , pNumReplicas
    , pTargetPool
    , pAutoRestart
    , pBaseInstanceName
    , pInitialNumReplicas
    , pCurrentNumReplicas
    , pSelfLink
    , pName
    , pLabels
    , pType
    , pTemplate
    , pTargetPools
    , pDescription
    , pHealthChecks

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- ** VMParams
    , VMParams
    , vMParams
    , vmpServiceAccounts
    , vmpNetworkInterfaces
    , vmpBaseInstanceName
    , vmpOnHostMaintenance
    , vmpMachineType
    , vmpMetadata
    , vmpDisksToAttach
    , vmpCanIPForward
    , vmpDescription
    , vmpDisksToCreate
    , vmpTags

    -- ** ReplicasListResponse
    , ReplicasListResponse
    , replicasListResponse
    , rlrNextPageToken
    , rlrResources

    -- ** Metadata
    , Metadata
    , metadata
    , mFingerPrint
    , mItems

    -- ** Template
    , Template
    , template
    , tAction
    , tVMParams
    , tVersion
    , tHealthChecks

    -- ** EnvVariable
    , EnvVariable
    , envVariable
    , evValue
    , evName
    , evHidden

    -- ** ReplicasDeleteRequest
    , ReplicasDeleteRequest
    , replicasDeleteRequest
    , rdrAbandonInstance

    -- ** AccessConfig
    , AccessConfig
    , accessConfig
    , acName
    , acNATIP
    , acType

    -- ** Label
    , Label
    , label
    , lValue
    , lKey

    -- ** PoolsListResponse
    , PoolsListResponse
    , poolsListResponse
    , plrNextPageToken
    , plrResources

    -- ** NewDisk
    , NewDisk
    , newDisk
    , ndBoot
    , ndAutoDelete
    , ndAttachment
    , ndInitializeParams
    ) where

import Network.Google.Prelude
import Network.Google.ReplicaPool.Types
import Network.Google.Resource.ReplicaPool.Pools.Delete
import Network.Google.Resource.ReplicaPool.Pools.Get
import Network.Google.Resource.ReplicaPool.Pools.Insert
import Network.Google.Resource.ReplicaPool.Pools.List
import Network.Google.Resource.ReplicaPool.Pools.Resize
import Network.Google.Resource.ReplicaPool.Pools.Updatetemplate
import Network.Google.Resource.ReplicaPool.Replicas.Delete
import Network.Google.Resource.ReplicaPool.Replicas.Get
import Network.Google.Resource.ReplicaPool.Replicas.List
import Network.Google.Resource.ReplicaPool.Replicas.Restart

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Replica Pool API service.
type ReplicaPoolAPI =
     PoolsInsertResource :<|> PoolsResizeResource :<|>
       PoolsListResource
       :<|> PoolsGetResource
       :<|> PoolsUpdatetemplateResource
       :<|> PoolsDeleteResource
       :<|> ReplicasListResource
       :<|> ReplicasGetResource
       :<|> ReplicasRestartResource
       :<|> ReplicasDeleteResource
