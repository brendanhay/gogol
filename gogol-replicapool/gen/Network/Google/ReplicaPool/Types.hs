{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ReplicaPool.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ReplicaPool.Types
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

    -- * ReplicaStatus
    , ReplicaStatus
    , replicaStatus
    , rsState
    , rsTemplateVersion
    , rsVMLink
    , rsVMStartTime
    , rsDetails

    -- * DiskAttachment
    , DiskAttachment
    , diskAttachment
    , daDeviceName
    , daIndex

    -- * PoolsDeleteRequest
    , PoolsDeleteRequest
    , poolsDeleteRequest
    , pdrAbandonInstances

    -- * HealthCheck
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

    -- * Tag
    , Tag
    , tag
    , tFingerPrint
    , tItems

    -- * NewDiskInitializeParams
    , NewDiskInitializeParams
    , newDiskInitializeParams
    , ndipSourceImage
    , ndipDiskSizeGb
    , ndipDiskType

    -- * MetadataItem
    , MetadataItem
    , metadataItem
    , miValue
    , miKey

    -- * Replica
    , Replica
    , replica
    , rStatus
    , rSelfLink
    , rName

    -- * NetworkInterface
    , NetworkInterface
    , networkInterface
    , niNetwork
    , niNetworkIP
    , niAccessConfigs

    -- * ExistingDisk
    , ExistingDisk
    , existingDisk
    , edAttachment
    , edSource

    -- * Action
    , Action
    , action
    , aCommands
    , aTimeoutMilliSeconds
    , aEnvVariables

    -- * Pool
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

    -- * ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- * VMParams
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

    -- * ReplicasListResponse
    , ReplicasListResponse
    , replicasListResponse
    , rlrNextPageToken
    , rlrResources

    -- * Metadata
    , Metadata
    , metadata
    , mFingerPrint
    , mItems

    -- * Template
    , Template
    , template
    , tAction
    , tVMParams
    , tVersion
    , tHealthChecks

    -- * EnvVariable
    , EnvVariable
    , envVariable
    , evValue
    , evName
    , evHidden

    -- * ReplicasDeleteRequest
    , ReplicasDeleteRequest
    , replicasDeleteRequest
    , rdrAbandonInstance

    -- * AccessConfig
    , AccessConfig
    , accessConfig
    , acName
    , acNATIP
    , acType

    -- * Label
    , Label
    , label
    , lValue
    , lKey

    -- * PoolsListResponse
    , PoolsListResponse
    , poolsListResponse
    , plrNextPageToken
    , plrResources

    -- * NewDisk
    , NewDisk
    , newDisk
    , ndBoot
    , ndAutoDelete
    , ndAttachment
    , ndInitializeParams
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types.Product
import           Network.Google.ReplicaPool.Types.Sum

-- | Default request referring to version 'v1beta1' of the Replica Pool API. This contains the host and root path used as a starting point for constructing service requests.
replicaPoolService :: ServiceConfig
replicaPoolService
  = defaultService (ServiceId "replicapool:v1beta1")
      "www.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View and manage your Google Cloud Platform management resources and
-- deployment status information
ndevCloudmanScope :: Proxy '["https://www.googleapis.com/auth/ndev.cloudman"]
ndevCloudmanScope = Proxy;

-- | View your Google Cloud Platform management resources and deployment
-- status information
ndevCloudmanReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/ndev.cloudman.readonly"]
ndevCloudmanReadOnlyScope = Proxy;

-- | View and manage replica pools
replicaPoolScope :: Proxy '["https://www.googleapis.com/auth/replicapool"]
replicaPoolScope = Proxy;

-- | View replica pools
replicaPoolReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/replicapool.readonly"]
replicaPoolReadOnlyScope = Proxy;
