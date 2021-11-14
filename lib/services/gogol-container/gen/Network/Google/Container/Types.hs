{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Container.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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

    -- * OperationProgressStatus
    , OperationProgressStatus (..)

    -- * ConsumptionMeteringConfig
    , ConsumptionMeteringConfig
    , consumptionMeteringConfig
    , cmcEnabled

    -- * LinuxNodeConfig
    , LinuxNodeConfig
    , linuxNodeConfig
    , lncSysctls

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
    , unprLinuxNodeConfig
    , unprUpgradeSettings
    , unprZone
    , unprNodePoolId
    , unprImageType
    , unprName
    , unprClusterId
    , unprNodeVersion
    , unprProjectId
    , unprWorkLoadMetadataConfig
    , unprKubeletConfig
    , unprLocations

    -- * UpgradeEvent
    , UpgradeEvent
    , upgradeEvent
    , ueResourceType
    , ueOperation
    , ueCurrentVersion
    , ueResource
    , ueOperationStartTime
    , ueTargetVersion

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

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

    -- * BinaryAuthorization
    , BinaryAuthorization
    , binaryAuthorization
    , baEnabled

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

    -- * UpgradeAvailableEventResourceType
    , UpgradeAvailableEventResourceType (..)

    -- * HorizontalPodAutoscaling
    , HorizontalPodAutoscaling
    , horizontalPodAutoscaling
    , hpaDisabled

    -- * SandboxConfig
    , SandboxConfig
    , sandboxConfig
    , scType

    -- * NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncPubsub

    -- * ResourceLimit
    , ResourceLimit
    , resourceLimit
    , rlResourceType
    , rlMaximum
    , rlMinimum

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
    , cBinaryAuthorization
    , cStatus
    , cNodePools
    , cEnableKubernetesAlpha
    , cResourceLabels
    , cTpuIPv4CIdRBlock
    , cNotificationConfig
    , cNodeConfig
    , cAutoscaling
    , cNodeIPv4CIdRSize
    , cClusterIPv4CIdR
    , cLocation
    , cInitialNodeCount
    , cCurrentNodeVersion
    , cWorkLoadIdentityConfig
    , cNetwork
    , cInitialClusterVersion
    , cZone
    , cResourceUsageExportConfig
    , cAddonsConfig
    , cServicesIPv4CIdR
    , cIPAllocationPolicy
    , cAutopilot
    , cConfidentialNodes
    , cMasterAuthorizedNetworksConfig
    , cLegacyAbac
    , cNetworkConfig
    , cMasterAuth
    , cSelfLink
    , cName
    , cCurrentMasterVersion
    , cStatusMessage
    , cDefaultMaxPodsConstraint
    , cReleaseChannel
    , cDatabaseEncryption
    , cSubnetwork
    , cCurrentNodeCount
    , cId
    , cPrivateClusterConfig
    , cMaintenancePolicy
    , cShieldedNodes
    , cConditions
    , cEnableTpu
    , cEndpoint
    , cVerticalPodAutoscaling
    , cAuthenticatorGroupsConfig
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

    -- * ClusterUpdateDesiredPrivateIPv6GoogleAccess
    , ClusterUpdateDesiredPrivateIPv6GoogleAccess (..)

    -- * CloudRunConfig
    , CloudRunConfig
    , cloudRunConfig
    , crcLoadBalancerType
    , crcDisabled

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
    , ncLinuxNodeConfig
    , ncSandboxConfig
    , ncNodeGroup
    , ncReservationAffinity
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
    , ncShieldedInstanceConfig
    , ncLabels
    , ncWorkLoadMetadataConfig
    , ncMinCPUPlatform
    , ncKubeletConfig
    , ncBootDiskKmsKey
    , ncTags
    , ncPreemptible

    -- * BigQueryDestination
    , BigQueryDestination
    , bigQueryDestination
    , bqdDataSetId

    -- * ReservationAffinity
    , ReservationAffinity
    , reservationAffinity
    , raConsumeReservationType
    , raValues
    , raKey

    -- * HTTPLoadBalancing
    , HTTPLoadBalancing
    , hTTPLoadBalancing
    , httplbDisabled

    -- * NetworkConfigPrivateIPv6GoogleAccess
    , NetworkConfigPrivateIPv6GoogleAccess (..)

    -- * Operation
    , Operation
    , operation
    , oNodepoolConditions
    , oStatus
    , oLocation
    , oProgress
    , oStartTime
    , oError
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

    -- * LinuxNodeConfigSysctls
    , LinuxNodeConfigSysctls
    , linuxNodeConfigSysctls
    , lncsAddtional

    -- * UpgradeSettings
    , UpgradeSettings
    , upgradeSettings
    , usMaxSurge
    , usMaxUnavailable

    -- * UpgradeAvailableEvent
    , UpgradeAvailableEvent
    , upgradeAvailableEvent
    , uaeResourceType
    , uaeVersion
    , uaeResource
    , uaeReleaseChannel

    -- * CloudRunConfigLoadBalancerType
    , CloudRunConfigLoadBalancerType (..)

    -- * RecurringTimeWindow
    , RecurringTimeWindow
    , recurringTimeWindow
    , rtwWindow
    , rtwRecurrence

    -- * NetworkConfigDatapathProvider
    , NetworkConfigDatapathProvider (..)

    -- * OperationProgress
    , OperationProgress
    , operationProgress
    , opStatus
    , opMetrics
    , opName
    , opStages

    -- * ClusterAutoscaling
    , ClusterAutoscaling
    , clusterAutoscaling
    , caResourceLimits
    , caEnableNodeAutoprovisioning
    , caAutoprovisioningLocations
    , caAutoprovisioningNodePoolDefaults

    -- * OperationOperationType
    , OperationOperationType (..)

    -- * ConfigConnectorConfig
    , ConfigConnectorConfig
    , configConnectorConfig
    , cccEnabled

    -- * UsableSubnetworkSecondaryRange
    , UsableSubnetworkSecondaryRange
    , usableSubnetworkSecondaryRange
    , ussrStatus
    , ussrRangeName
    , ussrIPCIdRRange

    -- * MaintenanceWindowMaintenanceExclusions
    , MaintenanceWindowMaintenanceExclusions
    , maintenanceWindowMaintenanceExclusions
    , mwmeAddtional

    -- * PubSub
    , PubSub
    , pubSub
    , psEnabled
    , psTopic

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * WorkLoadIdentityConfig
    , WorkLoadIdentityConfig
    , workLoadIdentityConfig
    , wlicWorkLoadPool

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
    , npaAutoprovisioned
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
    , goicrCacheHeader
    , goicrIdTokenSigningAlgValuesSupported
    , goicrResponseTypesSupported
    , goicrJWKsURI
    , goicrGrantTypes
    , goicrClaimsSupported
    , goicrIssuer
    , goicrSubjectTypesSupported

    -- * PrivateClusterMasterGlobalAccessConfig
    , PrivateClusterMasterGlobalAccessConfig
    , privateClusterMasterGlobalAccessConfig
    , pcmgacEnabled

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

    -- * ConfidentialNodes
    , ConfidentialNodes
    , confidentialNodes
    , cnEnabled

    -- * ResourceUsageExportConfig
    , ResourceUsageExportConfig
    , resourceUsageExportConfig
    , ruecConsumptionMeteringConfig
    , ruecBigQueryDestination
    , ruecEnableNetworkEgressMetering

    -- * MaintenanceWindow
    , MaintenanceWindow
    , maintenanceWindow
    , mwRecurringWindow
    , mwMaintenanceExclusions
    , mwDailyMaintenanceWindow

    -- * TimeWindow
    , TimeWindow
    , timeWindow
    , twStartTime
    , twEndTime

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
    , iapUseRoutes
    , iapClusterIPv4CIdRBlock
    , iapServicesIPv4CIdRBlock
    , iapCreateSubnetwork

    -- * AddonsConfig
    , AddonsConfig
    , addonsConfig
    , acNetworkPolicyConfig
    , acHorizontalPodAutoscaling
    , acCloudRunConfig
    , acHTTPLoadBalancing
    , acConfigConnectorConfig
    , acKubernetesDashboard
    , acGcePersistentDiskCsiDriverConfig
    , acDNSCacheConfig

    -- * Autopilot
    , Autopilot
    , autopilot
    , aEnabled

    -- * NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncEnableIntraNodeVisibility
    , ncNetwork
    , ncDatapathProvider
    , ncEnableL4ilbSubSetting
    , ncDefaultSnatStatus
    , ncSubnetwork
    , ncPrivateIPv6GoogleAccess

    -- * NodePool
    , NodePool
    , nodePool
    , npStatus
    , npAutoscaling
    , npConfig
    , npUpgradeSettings
    , npInitialNodeCount
    , npManagement
    , npMaxPodsConstraint
    , npSelfLink
    , npName
    , npStatusMessage
    , npVersion
    , npConditions
    , npLocations
    , npInstanceGroupURLs
    , npPodIPv4CIdRSize

    -- * SetNodePoolManagementRequest
    , SetNodePoolManagementRequest
    , setNodePoolManagementRequest
    , snpmrManagement
    , snpmrZone
    , snpmrNodePoolId
    , snpmrName
    , snpmrClusterId
    , snpmrProjectId

    -- * GcePersistentDiskCsiDriverConfig
    , GcePersistentDiskCsiDriverConfig
    , gcePersistentDiskCsiDriverConfig
    , gpdcdcEnabled

    -- * IntraNodeVisibilityConfig
    , IntraNodeVisibilityConfig
    , intraNodeVisibilityConfig
    , invcEnabled

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

    -- * Metric
    , Metric
    , metric
    , mIntValue
    , mDoubleValue
    , mStringValue
    , mName

    -- * StatusCondition
    , StatusCondition
    , statusCondition
    , scCanonicalCode
    , scCode
    , scMessage

    -- * ILBSubSettingConfig
    , ILBSubSettingConfig
    , iLBSubSettingConfig
    , ilbsscEnabled

    -- * DefaultSnatStatus
    , DefaultSnatStatus
    , defaultSnatStatus
    , dssDisabled

    -- * NodeConfigMetadata
    , NodeConfigMetadata
    , nodeConfigMetadata
    , ncmAddtional

    -- * NodeConfigLabels
    , NodeConfigLabels
    , nodeConfigLabels
    , nclAddtional

    -- * DNSCacheConfig
    , DNSCacheConfig
    , dnsCacheConfig
    , dccEnabled

    -- * ServerConfig
    , ServerConfig
    , serverConfig
    , scDefaultImageType
    , scValidNodeVersions
    , scChannels
    , scValidImageTypes
    , scDefaultClusterVersion
    , scValidMasterVersions

    -- * HTTPCacheControlResponseHeader
    , HTTPCacheControlResponseHeader
    , hTTPCacheControlResponseHeader
    , httpccrhDirective
    , httpccrhExpires
    , httpccrhAge

    -- * SandboxConfigType
    , SandboxConfigType (..)

    -- * NetworkPolicyProvider
    , NetworkPolicyProvider (..)

    -- * AutoUpgradeOptions
    , AutoUpgradeOptions
    , autoUpgradeOptions
    , auoAutoUpgradeStartTime
    , auoDescription

    -- * ClusterUpdateDesiredDatapathProvider
    , ClusterUpdateDesiredDatapathProvider (..)

    -- * ReleaseChannel
    , ReleaseChannel
    , releaseChannel
    , rcChannel

    -- * SetNodePoolSizeRequest
    , SetNodePoolSizeRequest
    , setNodePoolSizeRequest
    , snpsrNodeCount
    , snpsrZone
    , snpsrNodePoolId
    , snpsrName
    , snpsrClusterId
    , snpsrProjectId

    -- * DatabaseEncryption
    , DatabaseEncryption
    , databaseEncryption
    , deState
    , deKeyName

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

    -- * AutoprovisioningNodePoolDefaults
    , AutoprovisioningNodePoolDefaults
    , autoprovisioningNodePoolDefaults
    , anpdDiskSizeGb
    , anpdUpgradeSettings
    , anpdManagement
    , anpdOAuthScopes
    , anpdServiceAccount
    , anpdImageType
    , anpdDiskType
    , anpdShieldedInstanceConfig
    , anpdMinCPUPlatform
    , anpdBootDiskKmsKey

    -- * SetLoggingServiceRequest
    , SetLoggingServiceRequest
    , setLoggingServiceRequest
    , slsrZone
    , slsrName
    , slsrClusterId
    , slsrProjectId
    , slsrLoggingService

    -- * DatabaseEncryptionState
    , DatabaseEncryptionState (..)

    -- * MaintenancePolicy
    , MaintenancePolicy
    , maintenancePolicy
    , mpWindow
    , mpResourceVersion

    -- * ShieldedNodes
    , ShieldedNodes
    , shieldedNodes
    , snEnabled

    -- * CIdRBlock
    , CIdRBlock
    , cIdRBlock
    , cirbCIdRBlock
    , cirbDisplayName

    -- * ShieldedInstanceConfig
    , ShieldedInstanceConfig
    , shieldedInstanceConfig
    , sicEnableIntegrityMonitoring
    , sicEnableSecureBoot

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
    , pccMasterGlobalAccessConfig
    , pccPeeringName

    -- * WorkLoadMetadataConfig
    , WorkLoadMetadataConfig
    , workLoadMetadataConfig
    , wlmcMode

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

    -- * ReleaseChannelConfig
    , ReleaseChannelConfig
    , releaseChannelConfig
    , rccValidVersions
    , rccChannel
    , rccDefaultVersion

    -- * StatusConditionCanonicalCode
    , StatusConditionCanonicalCode (..)

    -- * AuthenticatorGroupsConfig
    , AuthenticatorGroupsConfig
    , authenticatorGroupsConfig
    , agcEnabled
    , agcSecurityGroup

    -- * ReleaseChannelConfigChannel
    , ReleaseChannelConfigChannel (..)

    -- * ClusterUpdate
    , ClusterUpdate
    , clusterUpdate
    , cuDesiredBinaryAuthorization
    , cuDesiredNotificationConfig
    , cuDesiredL4ilbSubSettingConfig
    , cuDesiredClusterAutoscaling
    , cuDesiredWorkLoadIdentityConfig
    , cuDesiredNodePoolAutoscaling
    , cuDesiredAddonsConfig
    , cuDesiredResourceUsageExportConfig
    , cuDesiredNodePoolId
    , cuDesiredAutopilot
    , cuDesiredDatapathProvider
    , cuDesiredMasterAuthorizedNetworksConfig
    , cuDesiredIntraNodeVisibilityConfig
    , cuDesiredImageType
    , cuDesiredDefaultSnatStatus
    , cuDesiredNodeVersion
    , cuDesiredReleaseChannel
    , cuDesiredDatabaseEncryption
    , cuDesiredPrivateClusterConfig
    , cuDesiredShieldedNodes
    , cuDesiredAuthenticatorGroupsConfig
    , cuDesiredVerticalPodAutoscaling
    , cuDesiredMasterVersion
    , cuDesiredLocations
    , cuDesiredLoggingService
    , cuDesiredMonitoringService
    , cuDesiredPrivateIPv6GoogleAccess

    -- * WorkLoadMetadataConfigMode
    , WorkLoadMetadataConfigMode (..)

    -- * VerticalPodAutoscaling
    , VerticalPodAutoscaling
    , verticalPodAutoscaling
    , vpaEnabled

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

    -- * NodeKubeletConfig
    , NodeKubeletConfig
    , nodeKubeletConfig
    , nkcCPUCfsQuotaPeriod
    , nkcCPUManagerPolicy
    , nkcCPUCfsQuota

    -- * UpgradeEventResourceType
    , UpgradeEventResourceType (..)

    -- * ReservationAffinityConsumeReservationType
    , ReservationAffinityConsumeReservationType (..)

    -- * GetJSONWebKeysResponse
    , GetJSONWebKeysResponse
    , getJSONWebKeysResponse
    , gjwkrCacheHeader
    , gjwkrKeys

    -- * NodeTaintEffect
    , NodeTaintEffect (..)

    -- * ReleaseChannelChannel
    , ReleaseChannelChannel (..)

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

import Network.Google.Container.Types.Product
import Network.Google.Container.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Kubernetes Engine API. This contains the host and root path used as a starting point for constructing service requests.
containerService :: ServiceConfig
containerService
  = defaultService (ServiceId "container:v1")
      "container.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
