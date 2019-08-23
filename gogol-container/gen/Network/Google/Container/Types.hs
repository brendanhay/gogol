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

    -- * NetworkPolicyConfig
    , NetworkPolicyConfig
    , networkPolicyConfig
    , npcDisabled

    -- * ListUsableSubnetworksResponse
    , ListUsableSubnetworksResponse
    , listUsableSubnetworksResponse
    , lusrNextPageToken
    , lusrSubnetworks

    -- * UpdateNodePoolRequest
    , UpdateNodePoolRequest
    , updateNodePoolRequest
    , unprZone
    , unprNodePoolId
    , unprImageType
    , unprName
    , unprClusterId
    , unprNodeVersion
    , unprProjectId

    -- * UpdateMasterRequest
    , UpdateMasterRequest
    , updateMasterRequest
    , umrZone
    , umrName
    , umrClusterId
    , umrProjectId
    , umrMasterVersion

    -- * StartIPRotationRequest
    , StartIPRotationRequest
    , startIPRotationRequest
    , sirrZone
    , sirrRotateCredentials
    , sirrName
    , sirrClusterId
    , sirrProjectId

    -- * SetLegacyAbacRequest
    , SetLegacyAbacRequest
    , setLegacyAbacRequest
    , slarEnabled
    , slarZone
    , slarName
    , slarClusterId
    , slarProjectId

    -- * UsableSubnetworkSecondaryRangeStatus
    , UsableSubnetworkSecondaryRangeStatus (..)

    -- * HorizontalPodAutoscaling
    , HorizontalPodAutoscaling
    , horizontalPodAutoscaling
    , hpaDisabled

    -- * SetMasterAuthRequest
    , SetMasterAuthRequest
    , setMasterAuthRequest
    , smarAction
    , smarZone
    , smarName
    , smarClusterId
    , smarProjectId
    , smarUpdate

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorOperations
    , lorMissingZones

    -- * CreateClusterRequest
    , CreateClusterRequest
    , createClusterRequest
    , ccrParent
    , ccrCluster
    , ccrZone
    , ccrProjectId

    -- * Cluster
    , Cluster
    , cluster
    , cStatus
    , cNodePools
    , cEnableKubernetesAlpha
    , cResourceLabels
    , cTpuIPv4CIdRBlock
    , cNodeConfig
    , cNodeIPv4CIdRSize
    , cClusterIPv4CIdR
    , cLocation
    , cInitialNodeCount
    , cCurrentNodeVersion
    , cNetwork
    , cInitialClusterVersion
    , cZone
    , cAddonsConfig
    , cServicesIPv4CIdR
    , cIPAllocationPolicy
    , cMasterAuthorizedNetworksConfig
    , cLegacyAbac
    , cNetworkConfig
    , cMasterAuth
    , cSelfLink
    , cName
    , cCurrentMasterVersion
    , cStatusMessage
    , cDefaultMaxPodsConstraint
    , cSubnetwork
    , cCurrentNodeCount
    , cPrivateClusterConfig
    , cMaintenancePolicy
    , cConditions
    , cEnableTpu
    , cEndpoint
    , cExpireTime
    , cNetworkPolicy
    , cLocations
    , cLoggingService
    , cLabelFingerprint
    , cDescription
    , cInstanceGroupURLs
    , cMonitoringService
    , cCreateTime

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest
    , corZone
    , corName
    , corProjectId
    , corOperationId

    -- * UpdateClusterRequest
    , UpdateClusterRequest
    , updateClusterRequest
    , ucrZone
    , ucrName
    , ucrClusterId
    , ucrProjectId
    , ucrUpdate

    -- * SetAddonsConfigRequest
    , SetAddonsConfigRequest
    , setAddonsConfigRequest
    , sacrZone
    , sacrAddonsConfig
    , sacrName
    , sacrClusterId
    , sacrProjectId

    -- * StatusConditionCode
    , StatusConditionCode (..)

    -- * NodeConfig
    , NodeConfig
    , nodeConfig
    , ncLocalSsdCount
    , ncDiskSizeGb
    , ncTaints
    , ncOAuthScopes
    , ncServiceAccount
    , ncAccelerators
    , ncImageType
    , ncMachineType
    , ncMetadata
    , ncDiskType
    , ncLabels
    , ncMinCPUPlatform
    , ncTags
    , ncPreemptible

    -- * HTTPLoadBalancing
    , HTTPLoadBalancing
    , hTTPLoadBalancing
    , httplbDisabled

    -- * Operation
    , Operation
    , operation
    , oNodepoolConditions
    , oStatus
    , oLocation
    , oStartTime
    , oZone
    , oSelfLink
    , oName
    , oStatusMessage
    , oEndTime
    , oClusterConditions
    , oOperationType
    , oTargetLink
    , oDetail

    -- * ClusterResourceLabels
    , ClusterResourceLabels
    , clusterResourceLabels
    , crlAddtional

    -- * Empty
    , Empty
    , empty

    -- * SetNodePoolAutoscalingRequest
    , SetNodePoolAutoscalingRequest
    , setNodePoolAutoscalingRequest
    , snparAutoscaling
    , snparZone
    , snparNodePoolId
    , snparName
    , snparClusterId
    , snparProjectId

    -- * CompleteIPRotationRequest
    , CompleteIPRotationRequest
    , completeIPRotationRequest
    , cirrZone
    , cirrName
    , cirrClusterId
    , cirrProjectId

    -- * OperationOperationType
    , OperationOperationType (..)

    -- * UsableSubnetworkSecondaryRange
    , UsableSubnetworkSecondaryRange
    , usableSubnetworkSecondaryRange
    , ussrStatus
    , ussrRangeName
    , ussrIPCIdRRange

    -- * NodeManagement
    , NodeManagement
    , nodeManagement
    , nmAutoUpgrade
    , nmAutoRepair
    , nmUpgradeOptions

    -- * NodeTaint
    , NodeTaint
    , nodeTaint
    , ntEffect
    , ntValue
    , ntKey

    -- * NodePoolAutoscaling
    , NodePoolAutoscaling
    , nodePoolAutoscaling
    , npaMaxNodeCount
    , npaEnabled
    , npaMinNodeCount

    -- * SetMaintenancePolicyRequest
    , SetMaintenancePolicyRequest
    , setMaintenancePolicyRequest
    , smprZone
    , smprName
    , smprClusterId
    , smprMaintenancePolicy
    , smprProjectId

    -- * UsableSubnetwork
    , UsableSubnetwork
    , usableSubnetwork
    , usNetwork
    , usStatusMessage
    , usSecondaryIPRanges
    , usIPCIdRRange
    , usSubnetwork

    -- * KubernetesDashboard
    , KubernetesDashboard
    , kubernetesDashboard
    , kdDisabled

    -- * ClientCertificateConfig
    , ClientCertificateConfig
    , clientCertificateConfig
    , cccIssueClientCertificate

    -- * SetLabelsRequest
    , SetLabelsRequest
    , setLabelsRequest
    , slrResourceLabels
    , slrZone
    , slrName
    , slrClusterId
    , slrProjectId
    , slrLabelFingerprint

    -- * GetOpenIdConfigResponse
    , GetOpenIdConfigResponse
    , getOpenIdConfigResponse
    , goicrIdTokenSigningAlgValuesSupported
    , goicrResponseTypesSupported
    , goicrJWKsURI
    , goicrGrantTypes
    , goicrClaimsSupported
    , goicrIssuer
    , goicrSubjectTypesSupported

    -- * JWK
    , JWK
    , jwk
    , jCrv
    , jAlg
    , jUse
    , jKid
    , jN
    , jE
    , jX
    , jKty
    , jY

    -- * OperationStatus
    , OperationStatus (..)

    -- * MaintenanceWindow
    , MaintenanceWindow
    , maintenanceWindow
    , mwDailyMaintenanceWindow

    -- * MaxPodsConstraint
    , MaxPodsConstraint
    , maxPodsConstraint
    , mpcMaxPodsPerNode

    -- * IPAllocationPolicy
    , IPAllocationPolicy
    , ipAllocationPolicy
    , iapServicesSecondaryRangeName
    , iapTpuIPv4CIdRBlock
    , iapNodeIPv4CIdR
    , iapUseIPAliases
    , iapClusterIPv4CIdR
    , iapSubnetworkName
    , iapClusterSecondaryRangeName
    , iapNodeIPv4CIdRBlock
    , iapServicesIPv4CIdR
    , iapClusterIPv4CIdRBlock
    , iapServicesIPv4CIdRBlock
    , iapCreateSubnetwork

    -- * AddonsConfig
    , AddonsConfig
    , addonsConfig
    , acNetworkPolicyConfig
    , acHorizontalPodAutoscaling
    , acHTTPLoadBalancing
    , acKubernetesDashboard

    -- * NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncNetwork
    , ncSubnetwork

    -- * NodePool
    , NodePool
    , nodePool
    , npStatus
    , npAutoscaling
    , npConfig
    , npInitialNodeCount
    , npManagement
    , npMaxPodsConstraint
    , npSelfLink
    , npName
    , npStatusMessage
    , npVersion
    , npConditions
    , npInstanceGroupURLs

    -- * SetNodePoolManagementRequest
    , SetNodePoolManagementRequest
    , setNodePoolManagementRequest
    , snpmrManagement
    , snpmrZone
    , snpmrNodePoolId
    , snpmrName
    , snpmrClusterId
    , snpmrProjectId

    -- * MasterAuthorizedNetworksConfig
    , MasterAuthorizedNetworksConfig
    , masterAuthorizedNetworksConfig
    , mancEnabled
    , mancCIdRBlocks

    -- * LegacyAbac
    , LegacyAbac
    , legacyAbac
    , laEnabled

    -- * MasterAuth
    , MasterAuth
    , masterAuth
    , maClientKey
    , maUsername
    , maClientCertificateConfig
    , maClientCertificate
    , maPassword
    , maClusterCaCertificate

    -- * StatusCondition
    , StatusCondition
    , statusCondition
    , scCode
    , scMessage

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

    -- * NetworkPolicyProvider
    , NetworkPolicyProvider (..)

    -- * AutoUpgradeOptions
    , AutoUpgradeOptions
    , autoUpgradeOptions
    , auoAutoUpgradeStartTime
    , auoDescription

    -- * SetNodePoolSizeRequest
    , SetNodePoolSizeRequest
    , setNodePoolSizeRequest
    , snpsrNodeCount
    , snpsrZone
    , snpsrNodePoolId
    , snpsrName
    , snpsrClusterId
    , snpsrProjectId

    -- * Xgafv
    , Xgafv (..)

    -- * SetMonitoringServiceRequest
    , SetMonitoringServiceRequest
    , setMonitoringServiceRequest
    , smsrZone
    , smsrName
    , smsrClusterId
    , smsrProjectId
    , smsrMonitoringService

    -- * SetLoggingServiceRequest
    , SetLoggingServiceRequest
    , setLoggingServiceRequest
    , slsrZone
    , slsrName
    , slsrClusterId
    , slsrProjectId
    , slsrLoggingService

    -- * MaintenancePolicy
    , MaintenancePolicy
    , maintenancePolicy
    , mpWindow

    -- * CIdRBlock
    , CIdRBlock
    , cIdRBlock
    , cirbCIdRBlock
    , cirbDisplayName

    -- * AcceleratorConfig
    , AcceleratorConfig
    , acceleratorConfig
    , acAcceleratorCount
    , acAcceleratorType

    -- * SetLocationsRequest
    , SetLocationsRequest
    , setLocationsRequest
    , sZone
    , sName
    , sClusterId
    , sProjectId
    , sLocations

    -- * SetNetworkPolicyRequest
    , SetNetworkPolicyRequest
    , setNetworkPolicyRequest
    , snprZone
    , snprName
    , snprClusterId
    , snprProjectId
    , snprNetworkPolicy

    -- * PrivateClusterConfig
    , PrivateClusterConfig
    , privateClusterConfig
    , pccEnablePrivateNodes
    , pccEnablePrivateEndpoint
    , pccPublicEndpoint
    , pccMasterIPv4CIdRBlock
    , pccPrivateEndpoint

    -- * DailyMaintenanceWindow
    , DailyMaintenanceWindow
    , dailyMaintenanceWindow
    , dmwStartTime
    , dmwDuration

    -- * NodePoolStatus
    , NodePoolStatus (..)

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
    , cuDesiredMasterAuthorizedNetworksConfig
    , cuDesiredImageType
    , cuDesiredNodeVersion
    , cuDesiredMasterVersion
    , cuDesiredLocations
    , cuDesiredMonitoringService

    -- * RollbackNodePoolUpgradeRequest
    , RollbackNodePoolUpgradeRequest
    , rollbackNodePoolUpgradeRequest
    , rnpurZone
    , rnpurNodePoolId
    , rnpurName
    , rnpurClusterId
    , rnpurProjectId

    -- * NetworkPolicy
    , NetworkPolicy
    , networkPolicy
    , npEnabled
    , npProvider

    -- * ListNodePoolsResponse
    , ListNodePoolsResponse
    , listNodePoolsResponse
    , lnprNodePools

    -- * ClusterStatus
    , ClusterStatus (..)

    -- * GetJSONWebKeysResponse
    , GetJSONWebKeysResponse
    , getJSONWebKeysResponse
    , gjwkrKeys

    -- * NodeTaintEffect
    , NodeTaintEffect (..)

    -- * CreateNodePoolRequest
    , CreateNodePoolRequest
    , createNodePoolRequest
    , cnprParent
    , cnprZone
    , cnprNodePool
    , cnprClusterId
    , cnprProjectId

    -- * SetLabelsRequestResourceLabels
    , SetLabelsRequestResourceLabels
    , setLabelsRequestResourceLabels
    , slrrlAddtional

    -- * SetMasterAuthRequestAction
    , SetMasterAuthRequestAction (..)
    ) where

import           Network.Google.Container.Types.Product
import           Network.Google.Container.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Kubernetes Engine API. This contains the host and root path used as a starting point for constructing service requests.
containerService :: ServiceConfig
containerService
  = defaultService (ServiceId "container:v1")
      "container.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
