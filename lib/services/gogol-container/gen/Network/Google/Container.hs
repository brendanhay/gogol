{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Container
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Builds and manages container-based applications, powered by the open
-- source Kubernetes technology.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference>
module Network.Google.Container
    (
    -- * Service Configuration
      containerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , ContainerAPI

    -- * Resources

    -- ** container.projects.aggregated.usableSubnetworks.list
    , module Network.Google.Resource.Container.Projects.Aggregated.UsableSubnetworks.List

    -- ** container.projects.locations.clusters.completeIpRotation
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.CompleteIPRotation

    -- ** container.projects.locations.clusters.create
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.Create

    -- ** container.projects.locations.clusters.delete
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.Delete

    -- ** container.projects.locations.clusters.get
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.Get

    -- ** container.projects.locations.clusters.getJwks
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.GetJWKs

    -- ** container.projects.locations.clusters.list
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.List

    -- ** container.projects.locations.clusters.nodePools.create
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Create

    -- ** container.projects.locations.clusters.nodePools.delete
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Delete

    -- ** container.projects.locations.clusters.nodePools.get
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Get

    -- ** container.projects.locations.clusters.nodePools.list
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.List

    -- ** container.projects.locations.clusters.nodePools.rollback
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Rollback

    -- ** container.projects.locations.clusters.nodePools.setAutoscaling
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetAutoscaling

    -- ** container.projects.locations.clusters.nodePools.setManagement
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetManagement

    -- ** container.projects.locations.clusters.nodePools.setSize
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetSize

    -- ** container.projects.locations.clusters.nodePools.update
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Update

    -- ** container.projects.locations.clusters.setAddons
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.SetAddons

    -- ** container.projects.locations.clusters.setLegacyAbac
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.SetLegacyAbac

    -- ** container.projects.locations.clusters.setLocations
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.SetLocations

    -- ** container.projects.locations.clusters.setLogging
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.SetLogging

    -- ** container.projects.locations.clusters.setMaintenancePolicy
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.SetMaintenancePolicy

    -- ** container.projects.locations.clusters.setMasterAuth
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.SetMasterAuth

    -- ** container.projects.locations.clusters.setMonitoring
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.SetMonitoring

    -- ** container.projects.locations.clusters.setNetworkPolicy
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.SetNetworkPolicy

    -- ** container.projects.locations.clusters.setResourceLabels
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.SetResourceLabels

    -- ** container.projects.locations.clusters.startIpRotation
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.StartIPRotation

    -- ** container.projects.locations.clusters.update
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.Update

    -- ** container.projects.locations.clusters.updateMaster
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.UpdateMaster

    -- ** container.projects.locations.clusters.well-known.getOpenid-configuration
    , module Network.Google.Resource.Container.Projects.Locations.Clusters.WellKnown.GetOpenidConfiguration

    -- ** container.projects.locations.getServerConfig
    , module Network.Google.Resource.Container.Projects.Locations.GetServerConfig

    -- ** container.projects.locations.operations.cancel
    , module Network.Google.Resource.Container.Projects.Locations.Operations.Cancel

    -- ** container.projects.locations.operations.get
    , module Network.Google.Resource.Container.Projects.Locations.Operations.Get

    -- ** container.projects.locations.operations.list
    , module Network.Google.Resource.Container.Projects.Locations.Operations.List

    -- ** container.projects.zones.clusters.addons
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Addons

    -- ** container.projects.zones.clusters.completeIpRotation
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.CompleteIPRotation

    -- ** container.projects.zones.clusters.create
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Create

    -- ** container.projects.zones.clusters.delete
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Delete

    -- ** container.projects.zones.clusters.get
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Get

    -- ** container.projects.zones.clusters.legacyAbac
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.LegacyAbac

    -- ** container.projects.zones.clusters.list
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.List

    -- ** container.projects.zones.clusters.locations
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Locations

    -- ** container.projects.zones.clusters.logging
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Logging

    -- ** container.projects.zones.clusters.master
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Master

    -- ** container.projects.zones.clusters.monitoring
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Monitoring

    -- ** container.projects.zones.clusters.nodePools.autoscaling
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Autoscaling

    -- ** container.projects.zones.clusters.nodePools.create
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Create

    -- ** container.projects.zones.clusters.nodePools.delete
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Delete

    -- ** container.projects.zones.clusters.nodePools.get
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Get

    -- ** container.projects.zones.clusters.nodePools.list
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.List

    -- ** container.projects.zones.clusters.nodePools.rollback
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Rollback

    -- ** container.projects.zones.clusters.nodePools.setManagement
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.SetManagement

    -- ** container.projects.zones.clusters.nodePools.setSize
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.SetSize

    -- ** container.projects.zones.clusters.nodePools.update
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Update

    -- ** container.projects.zones.clusters.resourceLabels
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.ResourceLabels

    -- ** container.projects.zones.clusters.setMaintenancePolicy
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.SetMaintenancePolicy

    -- ** container.projects.zones.clusters.setMasterAuth
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.SetMasterAuth

    -- ** container.projects.zones.clusters.setNetworkPolicy
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.SetNetworkPolicy

    -- ** container.projects.zones.clusters.startIpRotation
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.StartIPRotation

    -- ** container.projects.zones.clusters.update
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Update

    -- ** container.projects.zones.getServerconfig
    , module Network.Google.Resource.Container.Projects.Zones.GetServerConfig

    -- ** container.projects.zones.operations.cancel
    , module Network.Google.Resource.Container.Projects.Zones.Operations.Cancel

    -- ** container.projects.zones.operations.get
    , module Network.Google.Resource.Container.Projects.Zones.Operations.Get

    -- ** container.projects.zones.operations.list
    , module Network.Google.Resource.Container.Projects.Zones.Operations.List

    -- * Types

    -- ** OperationProgressStatus
    , OperationProgressStatus (..)

    -- ** ConsumptionMeteringConfig
    , ConsumptionMeteringConfig
    , consumptionMeteringConfig
    , cmcEnabled

    -- ** LinuxNodeConfig
    , LinuxNodeConfig
    , linuxNodeConfig
    , lncSysctls

    -- ** NetworkPolicyConfig
    , NetworkPolicyConfig
    , networkPolicyConfig
    , npcDisabled

    -- ** ListUsableSubnetworksResponse
    , ListUsableSubnetworksResponse
    , listUsableSubnetworksResponse
    , lusrNextPageToken
    , lusrSubnetworks

    -- ** UpdateNodePoolRequest
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

    -- ** UpgradeEvent
    , UpgradeEvent
    , upgradeEvent
    , ueResourceType
    , ueOperation
    , ueCurrentVersion
    , ueResource
    , ueOperationStartTime
    , ueTargetVersion

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** UpdateMasterRequest
    , UpdateMasterRequest
    , updateMasterRequest
    , umrZone
    , umrName
    , umrClusterId
    , umrProjectId
    , umrMasterVersion

    -- ** StartIPRotationRequest
    , StartIPRotationRequest
    , startIPRotationRequest
    , sirrZone
    , sirrRotateCredentials
    , sirrName
    , sirrClusterId
    , sirrProjectId

    -- ** BinaryAuthorization
    , BinaryAuthorization
    , binaryAuthorization
    , baEnabled

    -- ** SetLegacyAbacRequest
    , SetLegacyAbacRequest
    , setLegacyAbacRequest
    , slarEnabled
    , slarZone
    , slarName
    , slarClusterId
    , slarProjectId

    -- ** UsableSubnetworkSecondaryRangeStatus
    , UsableSubnetworkSecondaryRangeStatus (..)

    -- ** UpgradeAvailableEventResourceType
    , UpgradeAvailableEventResourceType (..)

    -- ** HorizontalPodAutoscaling
    , HorizontalPodAutoscaling
    , horizontalPodAutoscaling
    , hpaDisabled

    -- ** SandboxConfig
    , SandboxConfig
    , sandboxConfig
    , scType

    -- ** NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncPubsub

    -- ** ResourceLimit
    , ResourceLimit
    , resourceLimit
    , rlResourceType
    , rlMaximum
    , rlMinimum

    -- ** SetMasterAuthRequest
    , SetMasterAuthRequest
    , setMasterAuthRequest
    , smarAction
    , smarZone
    , smarName
    , smarClusterId
    , smarProjectId
    , smarUpdate

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorOperations
    , lorMissingZones

    -- ** CreateClusterRequest
    , CreateClusterRequest
    , createClusterRequest
    , ccrParent
    , ccrCluster
    , ccrZone
    , ccrProjectId

    -- ** Cluster
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

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest
    , corZone
    , corName
    , corProjectId
    , corOperationId

    -- ** UpdateClusterRequest
    , UpdateClusterRequest
    , updateClusterRequest
    , ucrZone
    , ucrName
    , ucrClusterId
    , ucrProjectId
    , ucrUpdate

    -- ** ClusterUpdateDesiredPrivateIPv6GoogleAccess
    , ClusterUpdateDesiredPrivateIPv6GoogleAccess (..)

    -- ** CloudRunConfig
    , CloudRunConfig
    , cloudRunConfig
    , crcLoadBalancerType
    , crcDisabled

    -- ** SetAddonsConfigRequest
    , SetAddonsConfigRequest
    , setAddonsConfigRequest
    , sacrZone
    , sacrAddonsConfig
    , sacrName
    , sacrClusterId
    , sacrProjectId

    -- ** StatusConditionCode
    , StatusConditionCode (..)

    -- ** NodeConfig
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

    -- ** BigQueryDestination
    , BigQueryDestination
    , bigQueryDestination
    , bqdDataSetId

    -- ** ReservationAffinity
    , ReservationAffinity
    , reservationAffinity
    , raConsumeReservationType
    , raValues
    , raKey

    -- ** HTTPLoadBalancing
    , HTTPLoadBalancing
    , hTTPLoadBalancing
    , httplbDisabled

    -- ** NetworkConfigPrivateIPv6GoogleAccess
    , NetworkConfigPrivateIPv6GoogleAccess (..)

    -- ** Operation
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

    -- ** ClusterResourceLabels
    , ClusterResourceLabels
    , clusterResourceLabels
    , crlAddtional

    -- ** Empty
    , Empty
    , empty

    -- ** SetNodePoolAutoscalingRequest
    , SetNodePoolAutoscalingRequest
    , setNodePoolAutoscalingRequest
    , snparAutoscaling
    , snparZone
    , snparNodePoolId
    , snparName
    , snparClusterId
    , snparProjectId

    -- ** CompleteIPRotationRequest
    , CompleteIPRotationRequest
    , completeIPRotationRequest
    , cirrZone
    , cirrName
    , cirrClusterId
    , cirrProjectId

    -- ** LinuxNodeConfigSysctls
    , LinuxNodeConfigSysctls
    , linuxNodeConfigSysctls
    , lncsAddtional

    -- ** UpgradeSettings
    , UpgradeSettings
    , upgradeSettings
    , usMaxSurge
    , usMaxUnavailable

    -- ** UpgradeAvailableEvent
    , UpgradeAvailableEvent
    , upgradeAvailableEvent
    , uaeResourceType
    , uaeVersion
    , uaeResource
    , uaeReleaseChannel

    -- ** CloudRunConfigLoadBalancerType
    , CloudRunConfigLoadBalancerType (..)

    -- ** RecurringTimeWindow
    , RecurringTimeWindow
    , recurringTimeWindow
    , rtwWindow
    , rtwRecurrence

    -- ** NetworkConfigDatapathProvider
    , NetworkConfigDatapathProvider (..)

    -- ** OperationProgress
    , OperationProgress
    , operationProgress
    , opStatus
    , opMetrics
    , opName
    , opStages

    -- ** ClusterAutoscaling
    , ClusterAutoscaling
    , clusterAutoscaling
    , caResourceLimits
    , caEnableNodeAutoprovisioning
    , caAutoprovisioningLocations
    , caAutoprovisioningNodePoolDefaults

    -- ** OperationOperationType
    , OperationOperationType (..)

    -- ** ConfigConnectorConfig
    , ConfigConnectorConfig
    , configConnectorConfig
    , cccEnabled

    -- ** UsableSubnetworkSecondaryRange
    , UsableSubnetworkSecondaryRange
    , usableSubnetworkSecondaryRange
    , ussrStatus
    , ussrRangeName
    , ussrIPCIdRRange

    -- ** MaintenanceWindowMaintenanceExclusions
    , MaintenanceWindowMaintenanceExclusions
    , maintenanceWindowMaintenanceExclusions
    , mwmeAddtional

    -- ** PubSub
    , PubSub
    , pubSub
    , psEnabled
    , psTopic

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** WorkLoadIdentityConfig
    , WorkLoadIdentityConfig
    , workLoadIdentityConfig
    , wlicWorkLoadPool

    -- ** NodeManagement
    , NodeManagement
    , nodeManagement
    , nmAutoUpgrade
    , nmAutoRepair
    , nmUpgradeOptions

    -- ** NodeTaint
    , NodeTaint
    , nodeTaint
    , ntEffect
    , ntValue
    , ntKey

    -- ** NodePoolAutoscaling
    , NodePoolAutoscaling
    , nodePoolAutoscaling
    , npaMaxNodeCount
    , npaEnabled
    , npaAutoprovisioned
    , npaMinNodeCount

    -- ** SetMaintenancePolicyRequest
    , SetMaintenancePolicyRequest
    , setMaintenancePolicyRequest
    , smprZone
    , smprName
    , smprClusterId
    , smprMaintenancePolicy
    , smprProjectId

    -- ** UsableSubnetwork
    , UsableSubnetwork
    , usableSubnetwork
    , usNetwork
    , usStatusMessage
    , usSecondaryIPRanges
    , usIPCIdRRange
    , usSubnetwork

    -- ** KubernetesDashboard
    , KubernetesDashboard
    , kubernetesDashboard
    , kdDisabled

    -- ** ClientCertificateConfig
    , ClientCertificateConfig
    , clientCertificateConfig
    , cccIssueClientCertificate

    -- ** SetLabelsRequest
    , SetLabelsRequest
    , setLabelsRequest
    , slrResourceLabels
    , slrZone
    , slrName
    , slrClusterId
    , slrProjectId
    , slrLabelFingerprint

    -- ** GetOpenIdConfigResponse
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

    -- ** PrivateClusterMasterGlobalAccessConfig
    , PrivateClusterMasterGlobalAccessConfig
    , privateClusterMasterGlobalAccessConfig
    , pcmgacEnabled

    -- ** JWK
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

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** ConfidentialNodes
    , ConfidentialNodes
    , confidentialNodes
    , cnEnabled

    -- ** ResourceUsageExportConfig
    , ResourceUsageExportConfig
    , resourceUsageExportConfig
    , ruecConsumptionMeteringConfig
    , ruecBigQueryDestination
    , ruecEnableNetworkEgressMetering

    -- ** MaintenanceWindow
    , MaintenanceWindow
    , maintenanceWindow
    , mwRecurringWindow
    , mwMaintenanceExclusions
    , mwDailyMaintenanceWindow

    -- ** TimeWindow
    , TimeWindow
    , timeWindow
    , twStartTime
    , twEndTime

    -- ** MaxPodsConstraint
    , MaxPodsConstraint
    , maxPodsConstraint
    , mpcMaxPodsPerNode

    -- ** IPAllocationPolicy
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

    -- ** AddonsConfig
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

    -- ** Autopilot
    , Autopilot
    , autopilot
    , aEnabled

    -- ** NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncEnableIntraNodeVisibility
    , ncNetwork
    , ncDatapathProvider
    , ncEnableL4ilbSubSetting
    , ncDefaultSnatStatus
    , ncSubnetwork
    , ncPrivateIPv6GoogleAccess

    -- ** NodePool
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

    -- ** SetNodePoolManagementRequest
    , SetNodePoolManagementRequest
    , setNodePoolManagementRequest
    , snpmrManagement
    , snpmrZone
    , snpmrNodePoolId
    , snpmrName
    , snpmrClusterId
    , snpmrProjectId

    -- ** GcePersistentDiskCsiDriverConfig
    , GcePersistentDiskCsiDriverConfig
    , gcePersistentDiskCsiDriverConfig
    , gpdcdcEnabled

    -- ** IntraNodeVisibilityConfig
    , IntraNodeVisibilityConfig
    , intraNodeVisibilityConfig
    , invcEnabled

    -- ** MasterAuthorizedNetworksConfig
    , MasterAuthorizedNetworksConfig
    , masterAuthorizedNetworksConfig
    , mancEnabled
    , mancCIdRBlocks

    -- ** LegacyAbac
    , LegacyAbac
    , legacyAbac
    , laEnabled

    -- ** MasterAuth
    , MasterAuth
    , masterAuth
    , maClientKey
    , maUsername
    , maClientCertificateConfig
    , maClientCertificate
    , maPassword
    , maClusterCaCertificate

    -- ** Metric
    , Metric
    , metric
    , mIntValue
    , mDoubleValue
    , mStringValue
    , mName

    -- ** StatusCondition
    , StatusCondition
    , statusCondition
    , scCanonicalCode
    , scCode
    , scMessage

    -- ** ILBSubSettingConfig
    , ILBSubSettingConfig
    , iLBSubSettingConfig
    , ilbsscEnabled

    -- ** DefaultSnatStatus
    , DefaultSnatStatus
    , defaultSnatStatus
    , dssDisabled

    -- ** NodeConfigMetadata
    , NodeConfigMetadata
    , nodeConfigMetadata
    , ncmAddtional

    -- ** NodeConfigLabels
    , NodeConfigLabels
    , nodeConfigLabels
    , nclAddtional

    -- ** DNSCacheConfig
    , DNSCacheConfig
    , dnsCacheConfig
    , dccEnabled

    -- ** ServerConfig
    , ServerConfig
    , serverConfig
    , scDefaultImageType
    , scValidNodeVersions
    , scChannels
    , scValidImageTypes
    , scDefaultClusterVersion
    , scValidMasterVersions

    -- ** HTTPCacheControlResponseHeader
    , HTTPCacheControlResponseHeader
    , hTTPCacheControlResponseHeader
    , httpccrhDirective
    , httpccrhExpires
    , httpccrhAge

    -- ** SandboxConfigType
    , SandboxConfigType (..)

    -- ** NetworkPolicyProvider
    , NetworkPolicyProvider (..)

    -- ** AutoUpgradeOptions
    , AutoUpgradeOptions
    , autoUpgradeOptions
    , auoAutoUpgradeStartTime
    , auoDescription

    -- ** ClusterUpdateDesiredDatapathProvider
    , ClusterUpdateDesiredDatapathProvider (..)

    -- ** ReleaseChannel
    , ReleaseChannel
    , releaseChannel
    , rcChannel

    -- ** SetNodePoolSizeRequest
    , SetNodePoolSizeRequest
    , setNodePoolSizeRequest
    , snpsrNodeCount
    , snpsrZone
    , snpsrNodePoolId
    , snpsrName
    , snpsrClusterId
    , snpsrProjectId

    -- ** DatabaseEncryption
    , DatabaseEncryption
    , databaseEncryption
    , deState
    , deKeyName

    -- ** Xgafv
    , Xgafv (..)

    -- ** SetMonitoringServiceRequest
    , SetMonitoringServiceRequest
    , setMonitoringServiceRequest
    , smsrZone
    , smsrName
    , smsrClusterId
    , smsrProjectId
    , smsrMonitoringService

    -- ** AutoprovisioningNodePoolDefaults
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

    -- ** SetLoggingServiceRequest
    , SetLoggingServiceRequest
    , setLoggingServiceRequest
    , slsrZone
    , slsrName
    , slsrClusterId
    , slsrProjectId
    , slsrLoggingService

    -- ** DatabaseEncryptionState
    , DatabaseEncryptionState (..)

    -- ** MaintenancePolicy
    , MaintenancePolicy
    , maintenancePolicy
    , mpWindow
    , mpResourceVersion

    -- ** ShieldedNodes
    , ShieldedNodes
    , shieldedNodes
    , snEnabled

    -- ** CIdRBlock
    , CIdRBlock
    , cIdRBlock
    , cirbCIdRBlock
    , cirbDisplayName

    -- ** ShieldedInstanceConfig
    , ShieldedInstanceConfig
    , shieldedInstanceConfig
    , sicEnableIntegrityMonitoring
    , sicEnableSecureBoot

    -- ** AcceleratorConfig
    , AcceleratorConfig
    , acceleratorConfig
    , acAcceleratorCount
    , acAcceleratorType

    -- ** SetLocationsRequest
    , SetLocationsRequest
    , setLocationsRequest
    , sZone
    , sName
    , sClusterId
    , sProjectId
    , sLocations

    -- ** SetNetworkPolicyRequest
    , SetNetworkPolicyRequest
    , setNetworkPolicyRequest
    , snprZone
    , snprName
    , snprClusterId
    , snprProjectId
    , snprNetworkPolicy

    -- ** PrivateClusterConfig
    , PrivateClusterConfig
    , privateClusterConfig
    , pccEnablePrivateNodes
    , pccEnablePrivateEndpoint
    , pccPublicEndpoint
    , pccMasterIPv4CIdRBlock
    , pccPrivateEndpoint
    , pccMasterGlobalAccessConfig
    , pccPeeringName

    -- ** WorkLoadMetadataConfig
    , WorkLoadMetadataConfig
    , workLoadMetadataConfig
    , wlmcMode

    -- ** DailyMaintenanceWindow
    , DailyMaintenanceWindow
    , dailyMaintenanceWindow
    , dmwStartTime
    , dmwDuration

    -- ** NodePoolStatus
    , NodePoolStatus (..)

    -- ** ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrClusters
    , lcrMissingZones

    -- ** ReleaseChannelConfig
    , ReleaseChannelConfig
    , releaseChannelConfig
    , rccValidVersions
    , rccChannel
    , rccDefaultVersion

    -- ** StatusConditionCanonicalCode
    , StatusConditionCanonicalCode (..)

    -- ** AuthenticatorGroupsConfig
    , AuthenticatorGroupsConfig
    , authenticatorGroupsConfig
    , agcEnabled
    , agcSecurityGroup

    -- ** ReleaseChannelConfigChannel
    , ReleaseChannelConfigChannel (..)

    -- ** ClusterUpdate
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

    -- ** WorkLoadMetadataConfigMode
    , WorkLoadMetadataConfigMode (..)

    -- ** VerticalPodAutoscaling
    , VerticalPodAutoscaling
    , verticalPodAutoscaling
    , vpaEnabled

    -- ** RollbackNodePoolUpgradeRequest
    , RollbackNodePoolUpgradeRequest
    , rollbackNodePoolUpgradeRequest
    , rnpurZone
    , rnpurNodePoolId
    , rnpurName
    , rnpurClusterId
    , rnpurProjectId

    -- ** NetworkPolicy
    , NetworkPolicy
    , networkPolicy
    , npEnabled
    , npProvider

    -- ** ListNodePoolsResponse
    , ListNodePoolsResponse
    , listNodePoolsResponse
    , lnprNodePools

    -- ** ClusterStatus
    , ClusterStatus (..)

    -- ** NodeKubeletConfig
    , NodeKubeletConfig
    , nodeKubeletConfig
    , nkcCPUCfsQuotaPeriod
    , nkcCPUManagerPolicy
    , nkcCPUCfsQuota

    -- ** UpgradeEventResourceType
    , UpgradeEventResourceType (..)

    -- ** ReservationAffinityConsumeReservationType
    , ReservationAffinityConsumeReservationType (..)

    -- ** GetJSONWebKeysResponse
    , GetJSONWebKeysResponse
    , getJSONWebKeysResponse
    , gjwkrCacheHeader
    , gjwkrKeys

    -- ** NodeTaintEffect
    , NodeTaintEffect (..)

    -- ** ReleaseChannelChannel
    , ReleaseChannelChannel (..)

    -- ** CreateNodePoolRequest
    , CreateNodePoolRequest
    , createNodePoolRequest
    , cnprParent
    , cnprZone
    , cnprNodePool
    , cnprClusterId
    , cnprProjectId

    -- ** SetLabelsRequestResourceLabels
    , SetLabelsRequestResourceLabels
    , setLabelsRequestResourceLabels
    , slrrlAddtional

    -- ** SetMasterAuthRequestAction
    , SetMasterAuthRequestAction (..)
    ) where

import Network.Google.Prelude
import Network.Google.Container.Types
import Network.Google.Resource.Container.Projects.Aggregated.UsableSubnetworks.List
import Network.Google.Resource.Container.Projects.Locations.Clusters.CompleteIPRotation
import Network.Google.Resource.Container.Projects.Locations.Clusters.Create
import Network.Google.Resource.Container.Projects.Locations.Clusters.Delete
import Network.Google.Resource.Container.Projects.Locations.Clusters.Get
import Network.Google.Resource.Container.Projects.Locations.Clusters.GetJWKs
import Network.Google.Resource.Container.Projects.Locations.Clusters.List
import Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Create
import Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Delete
import Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Get
import Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.List
import Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Rollback
import Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetAutoscaling
import Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetManagement
import Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetSize
import Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Update
import Network.Google.Resource.Container.Projects.Locations.Clusters.SetAddons
import Network.Google.Resource.Container.Projects.Locations.Clusters.SetLegacyAbac
import Network.Google.Resource.Container.Projects.Locations.Clusters.SetLocations
import Network.Google.Resource.Container.Projects.Locations.Clusters.SetLogging
import Network.Google.Resource.Container.Projects.Locations.Clusters.SetMaintenancePolicy
import Network.Google.Resource.Container.Projects.Locations.Clusters.SetMasterAuth
import Network.Google.Resource.Container.Projects.Locations.Clusters.SetMonitoring
import Network.Google.Resource.Container.Projects.Locations.Clusters.SetNetworkPolicy
import Network.Google.Resource.Container.Projects.Locations.Clusters.SetResourceLabels
import Network.Google.Resource.Container.Projects.Locations.Clusters.StartIPRotation
import Network.Google.Resource.Container.Projects.Locations.Clusters.Update
import Network.Google.Resource.Container.Projects.Locations.Clusters.UpdateMaster
import Network.Google.Resource.Container.Projects.Locations.Clusters.WellKnown.GetOpenidConfiguration
import Network.Google.Resource.Container.Projects.Locations.GetServerConfig
import Network.Google.Resource.Container.Projects.Locations.Operations.Cancel
import Network.Google.Resource.Container.Projects.Locations.Operations.Get
import Network.Google.Resource.Container.Projects.Locations.Operations.List
import Network.Google.Resource.Container.Projects.Zones.Clusters.Addons
import Network.Google.Resource.Container.Projects.Zones.Clusters.CompleteIPRotation
import Network.Google.Resource.Container.Projects.Zones.Clusters.Create
import Network.Google.Resource.Container.Projects.Zones.Clusters.Delete
import Network.Google.Resource.Container.Projects.Zones.Clusters.Get
import Network.Google.Resource.Container.Projects.Zones.Clusters.LegacyAbac
import Network.Google.Resource.Container.Projects.Zones.Clusters.List
import Network.Google.Resource.Container.Projects.Zones.Clusters.Locations
import Network.Google.Resource.Container.Projects.Zones.Clusters.Logging
import Network.Google.Resource.Container.Projects.Zones.Clusters.Master
import Network.Google.Resource.Container.Projects.Zones.Clusters.Monitoring
import Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Autoscaling
import Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Create
import Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Delete
import Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Get
import Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.List
import Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Rollback
import Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.SetManagement
import Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.SetSize
import Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Update
import Network.Google.Resource.Container.Projects.Zones.Clusters.ResourceLabels
import Network.Google.Resource.Container.Projects.Zones.Clusters.SetMaintenancePolicy
import Network.Google.Resource.Container.Projects.Zones.Clusters.SetMasterAuth
import Network.Google.Resource.Container.Projects.Zones.Clusters.SetNetworkPolicy
import Network.Google.Resource.Container.Projects.Zones.Clusters.StartIPRotation
import Network.Google.Resource.Container.Projects.Zones.Clusters.Update
import Network.Google.Resource.Container.Projects.Zones.GetServerConfig
import Network.Google.Resource.Container.Projects.Zones.Operations.Cancel
import Network.Google.Resource.Container.Projects.Zones.Operations.Get
import Network.Google.Resource.Container.Projects.Zones.Operations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Kubernetes Engine API service.
type ContainerAPI =
     ProjectsAggregatedUsableSubnetworksListResource :<|>
       ProjectsZonesOperationsListResource
       :<|> ProjectsZonesOperationsGetResource
       :<|> ProjectsZonesOperationsCancelResource
       :<|> ProjectsZonesClustersNodePoolsSetSizeResource
       :<|> ProjectsZonesClustersNodePoolsListResource
       :<|>
       ProjectsZonesClustersNodePoolsAutoscalingResource
       :<|> ProjectsZonesClustersNodePoolsGetResource
       :<|> ProjectsZonesClustersNodePoolsRollbackResource
       :<|>
       ProjectsZonesClustersNodePoolsSetManagementResource
       :<|> ProjectsZonesClustersNodePoolsCreateResource
       :<|> ProjectsZonesClustersNodePoolsDeleteResource
       :<|> ProjectsZonesClustersNodePoolsUpdateResource
       :<|> ProjectsZonesClustersSetNetworkPolicyResource
       :<|> ProjectsZonesClustersResourceLabelsResource
       :<|> ProjectsZonesClustersListResource
       :<|> ProjectsZonesClustersStartIPRotationResource
       :<|> ProjectsZonesClustersAddonsResource
       :<|> ProjectsZonesClustersGetResource
       :<|> ProjectsZonesClustersSetMasterAuthResource
       :<|> ProjectsZonesClustersLegacyAbacResource
       :<|> ProjectsZonesClustersMasterResource
       :<|> ProjectsZonesClustersCreateResource
       :<|> ProjectsZonesClustersCompleteIPRotationResource
       :<|> ProjectsZonesClustersMonitoringResource
       :<|>
       ProjectsZonesClustersSetMaintenancePolicyResource
       :<|> ProjectsZonesClustersLoggingResource
       :<|> ProjectsZonesClustersLocationsResource
       :<|> ProjectsZonesClustersDeleteResource
       :<|> ProjectsZonesClustersUpdateResource
       :<|> ProjectsZonesGetServerConfigResource
       :<|> ProjectsLocationsOperationsListResource
       :<|> ProjectsLocationsOperationsGetResource
       :<|> ProjectsLocationsOperationsCancelResource
       :<|>
       ProjectsLocationsClustersNodePoolsSetSizeResource
       :<|> ProjectsLocationsClustersNodePoolsListResource
       :<|>
       ProjectsLocationsClustersNodePoolsSetAutoscalingResource
       :<|> ProjectsLocationsClustersNodePoolsGetResource
       :<|>
       ProjectsLocationsClustersNodePoolsRollbackResource
       :<|>
       ProjectsLocationsClustersNodePoolsSetManagementResource
       :<|> ProjectsLocationsClustersNodePoolsCreateResource
       :<|> ProjectsLocationsClustersNodePoolsDeleteResource
       :<|> ProjectsLocationsClustersNodePoolsUpdateResource
       :<|>
       ProjectsLocationsClustersWellKnownGetOpenidConfigurationResource
       :<|>
       ProjectsLocationsClustersSetNetworkPolicyResource
       :<|> ProjectsLocationsClustersSetLocationsResource
       :<|> ProjectsLocationsClustersListResource
       :<|> ProjectsLocationsClustersUpdateMasterResource
       :<|> ProjectsLocationsClustersStartIPRotationResource
       :<|>
       ProjectsLocationsClustersSetResourceLabelsResource
       :<|> ProjectsLocationsClustersSetLegacyAbacResource
       :<|> ProjectsLocationsClustersGetResource
       :<|> ProjectsLocationsClustersSetMonitoringResource
       :<|> ProjectsLocationsClustersSetMasterAuthResource
       :<|> ProjectsLocationsClustersSetAddonsResource
       :<|> ProjectsLocationsClustersCreateResource
       :<|>
       ProjectsLocationsClustersCompleteIPRotationResource
       :<|>
       ProjectsLocationsClustersSetMaintenancePolicyResource
       :<|> ProjectsLocationsClustersGetJWKsResource
       :<|> ProjectsLocationsClustersDeleteResource
       :<|> ProjectsLocationsClustersUpdateResource
       :<|> ProjectsLocationsClustersSetLoggingResource
       :<|> ProjectsLocationsGetServerConfigResource
