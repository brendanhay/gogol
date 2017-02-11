{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Container.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Container.Types
    (
    -- * Service Configuration
      containerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * HorizontalPodAutoscaling
    , HorizontalPodAutoscaling
    , horizontalPodAutoscaling
    , hpaDisabled

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorOperations
    , lorMissingZones

    -- * CreateClusterRequest
    , CreateClusterRequest
    , createClusterRequest
    , ccrCluster

    -- * Cluster
    , Cluster
    , cluster
    , cStatus
    , cNodePools
    , cEnableKubernetesAlpha
    , cNodeConfig
    , cNodeIPv4CIdRSize
    , cClusterIPv4CIdR
    , cInitialNodeCount
    , cCurrentNodeVersion
    , cNetwork
    , cInitialClusterVersion
    , cZone
    , cAddonsConfig
    , cServicesIPv4CIdR
    , cMasterAuth
    , cSelfLink
    , cName
    , cCurrentMasterVersion
    , cStatusMessage
    , cSubnetwork
    , cCurrentNodeCount
    , cEndpoint
    , cExpireTime
    , cLocations
    , cLoggingService
    , cDescription
    , cInstanceGroupURLs
    , cMonitoringService
    , cCreateTime

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * UpdateClusterRequest
    , UpdateClusterRequest
    , updateClusterRequest
    , ucrUpdate

    -- * NodeConfig
    , NodeConfig
    , nodeConfig
    , ncLocalSsdCount
    , ncDiskSizeGb
    , ncOAuthScopes
    , ncServiceAccount
    , ncImageType
    , ncMachineType
    , ncMetadata
    , ncLabels
    , ncTags
    , ncPreemptible

    -- * HTTPLoadBalancing
    , HTTPLoadBalancing
    , hTTPLoadBalancing
    , httplbDisabled

    -- * Operation
    , Operation
    , operation
    , oStatus
    , oZone
    , oSelfLink
    , oName
    , oStatusMessage
    , oOperationType
    , oTargetLink
    , oDetail

    -- * Empty
    , Empty
    , empty

    -- * NodeManagement
    , NodeManagement
    , nodeManagement
    , nmAutoUpgrade
    , nmUpgradeOptions

    -- * NodePoolAutoscaling
    , NodePoolAutoscaling
    , nodePoolAutoscaling
    , npaMaxNodeCount
    , npaEnabled
    , npaMinNodeCount

    -- * AddonsConfig
    , AddonsConfig
    , addonsConfig
    , acHorizontalPodAutoscaling
    , acHTTPLoadBalancing

    -- * NodePool
    , NodePool
    , nodePool
    , npStatus
    , npAutoscaling
    , npConfig
    , npInitialNodeCount
    , npManagement
    , npSelfLink
    , npName
    , npStatusMessage
    , npVersion
    , npInstanceGroupURLs

    -- * SetNodePoolManagementRequest
    , SetNodePoolManagementRequest
    , setNodePoolManagementRequest
    , snpmrManagement

    -- * MasterAuth
    , MasterAuth
    , masterAuth
    , maClientKey
    , maUsername
    , maClientCertificate
    , maPassword
    , maClusterCaCertificate

    -- * NodeConfigMetadata
    , NodeConfigMetadata
    , nodeConfigMetadata
    , ncmAddtional

    -- * NodeConfigLabels
    , NodeConfigLabels
    , nodeConfigLabels
    , nclAddtional

    -- * ServerConfig
    , ServerConfig
    , serverConfig
    , scDefaultImageType
    , scValidNodeVersions
    , scValidImageTypes
    , scDefaultClusterVersion
    , scValidMasterVersions

    -- * AutoUpgradeOptions
    , AutoUpgradeOptions
    , autoUpgradeOptions
    , auoAutoUpgradeStartTime
    , auoDescription

    -- * ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrClusters
    , lcrMissingZones

    -- * ClusterUpdate
    , ClusterUpdate
    , clusterUpdate
    , cuDesiredNodePoolAutoscaling
    , cuDesiredAddonsConfig
    , cuDesiredNodePoolId
    , cuDesiredImageType
    , cuDesiredNodeVersion
    , cuDesiredMasterVersion
    , cuDesiredLocations
    , cuDesiredMonitoringService

    -- * RollbackNodePoolUpgradeRequest
    , RollbackNodePoolUpgradeRequest
    , rollbackNodePoolUpgradeRequest

    -- * ListNodePoolsResponse
    , ListNodePoolsResponse
    , listNodePoolsResponse
    , lnprNodePools

    -- * CreateNodePoolRequest
    , CreateNodePoolRequest
    , createNodePoolRequest
    , cnprNodePool
    ) where

import           Network.Google.Container.Types.Product
import           Network.Google.Container.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Container Engine API. This contains the host and root path used as a starting point for constructing service requests.
containerService :: ServiceConfig
containerService
  = defaultService (ServiceId "container:v1")
      "container.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
