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
-- Module      : Gogol.Container.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Container.Types
  ( -- * Configuration
    containerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

    -- ** AdditionalPodRangesConfig
    AdditionalPodRangesConfig (..),
    newAdditionalPodRangesConfig,

    -- ** AddonsConfig
    AddonsConfig (..),
    newAddonsConfig,

    -- ** AdvancedMachineFeatures
    AdvancedMachineFeatures (..),
    newAdvancedMachineFeatures,

    -- ** AuthenticatorGroupsConfig
    AuthenticatorGroupsConfig (..),
    newAuthenticatorGroupsConfig,

    -- ** AutoUpgradeOptions
    AutoUpgradeOptions (..),
    newAutoUpgradeOptions,

    -- ** Autopilot
    Autopilot (..),
    newAutopilot,

    -- ** AutoprovisioningNodePoolDefaults
    AutoprovisioningNodePoolDefaults (..),
    newAutoprovisioningNodePoolDefaults,

    -- ** BigQueryDestination
    BigQueryDestination (..),
    newBigQueryDestination,

    -- ** BinaryAuthorization
    BinaryAuthorization (..),
    newBinaryAuthorization,

    -- ** BinaryAuthorization_EvaluationMode
    BinaryAuthorization_EvaluationMode (..),

    -- ** BlueGreenInfo
    BlueGreenInfo (..),
    newBlueGreenInfo,

    -- ** BlueGreenInfo_Phase
    BlueGreenInfo_Phase (..),

    -- ** BlueGreenSettings
    BlueGreenSettings (..),
    newBlueGreenSettings,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CidrBlock
    CidrBlock (..),
    newCidrBlock,

    -- ** ClientCertificateConfig
    ClientCertificateConfig (..),
    newClientCertificateConfig,

    -- ** CloudRunConfig
    CloudRunConfig (..),
    newCloudRunConfig,

    -- ** CloudRunConfig_LoadBalancerType
    CloudRunConfig_LoadBalancerType (..),

    -- ** Cluster
    Cluster (..),
    newCluster,

    -- ** Cluster_ResourceLabels
    Cluster_ResourceLabels (..),
    newCluster_ResourceLabels,

    -- ** Cluster_Status
    Cluster_Status (..),

    -- ** ClusterAutoscaling
    ClusterAutoscaling (..),
    newClusterAutoscaling,

    -- ** ClusterAutoscaling_AutoscalingProfile
    ClusterAutoscaling_AutoscalingProfile (..),

    -- ** ClusterUpdate
    ClusterUpdate (..),
    newClusterUpdate,

    -- ** ClusterUpdate_DesiredDatapathProvider
    ClusterUpdate_DesiredDatapathProvider (..),

    -- ** ClusterUpdate_DesiredPrivateIpv6GoogleAccess
    ClusterUpdate_DesiredPrivateIpv6GoogleAccess (..),

    -- ** ClusterUpdate_DesiredStackType
    ClusterUpdate_DesiredStackType (..),

    -- ** CompleteIPRotationRequest
    CompleteIPRotationRequest (..),
    newCompleteIPRotationRequest,

    -- ** CompleteNodePoolUpgradeRequest
    CompleteNodePoolUpgradeRequest (..),
    newCompleteNodePoolUpgradeRequest,

    -- ** ConfidentialNodes
    ConfidentialNodes (..),
    newConfidentialNodes,

    -- ** ConfigConnectorConfig
    ConfigConnectorConfig (..),
    newConfigConnectorConfig,

    -- ** ConsumptionMeteringConfig
    ConsumptionMeteringConfig (..),
    newConsumptionMeteringConfig,

    -- ** CostManagementConfig
    CostManagementConfig (..),
    newCostManagementConfig,

    -- ** CreateClusterRequest
    CreateClusterRequest (..),
    newCreateClusterRequest,

    -- ** CreateNodePoolRequest
    CreateNodePoolRequest (..),
    newCreateNodePoolRequest,

    -- ** DNSConfig
    DNSConfig (..),
    newDNSConfig,

    -- ** DNSConfig_ClusterDns
    DNSConfig_ClusterDns (..),

    -- ** DNSConfig_ClusterDnsScope
    DNSConfig_ClusterDnsScope (..),

    -- ** DailyMaintenanceWindow
    DailyMaintenanceWindow (..),
    newDailyMaintenanceWindow,

    -- ** DatabaseEncryption
    DatabaseEncryption (..),
    newDatabaseEncryption,

    -- ** DatabaseEncryption_State
    DatabaseEncryption_State (..),

    -- ** DefaultSnatStatus
    DefaultSnatStatus (..),
    newDefaultSnatStatus,

    -- ** DnsCacheConfig
    DnsCacheConfig (..),
    newDnsCacheConfig,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EphemeralStorageLocalSsdConfig
    EphemeralStorageLocalSsdConfig (..),
    newEphemeralStorageLocalSsdConfig,

    -- ** FastSocket
    FastSocket (..),
    newFastSocket,

    -- ** Filter
    Filter (..),
    newFilter,

    -- ** Filter_EventTypeItem
    Filter_EventTypeItem (..),

    -- ** Fleet
    Fleet (..),
    newFleet,

    -- ** GPUSharingConfig
    GPUSharingConfig (..),
    newGPUSharingConfig,

    -- ** GPUSharingConfig_GpuSharingStrategy
    GPUSharingConfig_GpuSharingStrategy (..),

    -- ** GatewayAPIConfig
    GatewayAPIConfig (..),
    newGatewayAPIConfig,

    -- ** GatewayAPIConfig_Channel
    GatewayAPIConfig_Channel (..),

    -- ** GcePersistentDiskCsiDriverConfig
    GcePersistentDiskCsiDriverConfig (..),
    newGcePersistentDiskCsiDriverConfig,

    -- ** GcfsConfig
    GcfsConfig (..),
    newGcfsConfig,

    -- ** GcpFilestoreCsiDriverConfig
    GcpFilestoreCsiDriverConfig (..),
    newGcpFilestoreCsiDriverConfig,

    -- ** GetJSONWebKeysResponse
    GetJSONWebKeysResponse (..),
    newGetJSONWebKeysResponse,

    -- ** GetOpenIDConfigResponse
    GetOpenIDConfigResponse (..),
    newGetOpenIDConfigResponse,

    -- ** GkeBackupAgentConfig
    GkeBackupAgentConfig (..),
    newGkeBackupAgentConfig,

    -- ** HorizontalPodAutoscaling
    HorizontalPodAutoscaling (..),
    newHorizontalPodAutoscaling,

    -- ** HttpCacheControlResponseHeader
    HttpCacheControlResponseHeader (..),
    newHttpCacheControlResponseHeader,

    -- ** HttpLoadBalancing
    HttpLoadBalancing (..),
    newHttpLoadBalancing,

    -- ** ILBSubsettingConfig
    ILBSubsettingConfig (..),
    newILBSubsettingConfig,

    -- ** IPAllocationPolicy
    IPAllocationPolicy (..),
    newIPAllocationPolicy,

    -- ** IPAllocationPolicy_Ipv6AccessType
    IPAllocationPolicy_Ipv6AccessType (..),

    -- ** IPAllocationPolicy_StackType
    IPAllocationPolicy_StackType (..),

    -- ** IdentityServiceConfig
    IdentityServiceConfig (..),
    newIdentityServiceConfig,

    -- ** IntraNodeVisibilityConfig
    IntraNodeVisibilityConfig (..),
    newIntraNodeVisibilityConfig,

    -- ** Jwk
    Jwk (..),
    newJwk,

    -- ** KubernetesDashboard
    KubernetesDashboard (..),
    newKubernetesDashboard,

    -- ** LegacyAbac
    LegacyAbac (..),
    newLegacyAbac,

    -- ** LinuxNodeConfig
    LinuxNodeConfig (..),
    newLinuxNodeConfig,

    -- ** LinuxNodeConfig_CgroupMode
    LinuxNodeConfig_CgroupMode (..),

    -- ** LinuxNodeConfig_Sysctls
    LinuxNodeConfig_Sysctls (..),
    newLinuxNodeConfig_Sysctls,

    -- ** ListClustersResponse
    ListClustersResponse (..),
    newListClustersResponse,

    -- ** ListNodePoolsResponse
    ListNodePoolsResponse (..),
    newListNodePoolsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListUsableSubnetworksResponse
    ListUsableSubnetworksResponse (..),
    newListUsableSubnetworksResponse,

    -- ** LocalNvmeSsdBlockConfig
    LocalNvmeSsdBlockConfig (..),
    newLocalNvmeSsdBlockConfig,

    -- ** LoggingComponentConfig
    LoggingComponentConfig (..),
    newLoggingComponentConfig,

    -- ** LoggingComponentConfig_EnableComponentsItem
    LoggingComponentConfig_EnableComponentsItem (..),

    -- ** LoggingConfig
    LoggingConfig (..),
    newLoggingConfig,

    -- ** LoggingVariantConfig
    LoggingVariantConfig (..),
    newLoggingVariantConfig,

    -- ** LoggingVariantConfig_Variant
    LoggingVariantConfig_Variant (..),

    -- ** MaintenanceExclusionOptions
    MaintenanceExclusionOptions (..),
    newMaintenanceExclusionOptions,

    -- ** MaintenanceExclusionOptions_Scope
    MaintenanceExclusionOptions_Scope (..),

    -- ** MaintenancePolicy
    MaintenancePolicy (..),
    newMaintenancePolicy,

    -- ** MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- ** MaintenanceWindow_MaintenanceExclusions
    MaintenanceWindow_MaintenanceExclusions (..),
    newMaintenanceWindow_MaintenanceExclusions,

    -- ** ManagedPrometheusConfig
    ManagedPrometheusConfig (..),
    newManagedPrometheusConfig,

    -- ** MasterAuth
    MasterAuth (..),
    newMasterAuth,

    -- ** MasterAuthorizedNetworksConfig
    MasterAuthorizedNetworksConfig (..),
    newMasterAuthorizedNetworksConfig,

    -- ** MaxPodsConstraint
    MaxPodsConstraint (..),
    newMaxPodsConstraint,

    -- ** MeshCertificates
    MeshCertificates (..),
    newMeshCertificates,

    -- ** Metric
    Metric (..),
    newMetric,

    -- ** MonitoringComponentConfig
    MonitoringComponentConfig (..),
    newMonitoringComponentConfig,

    -- ** MonitoringComponentConfig_EnableComponentsItem
    MonitoringComponentConfig_EnableComponentsItem (..),

    -- ** MonitoringConfig
    MonitoringConfig (..),
    newMonitoringConfig,

    -- ** NetworkConfig
    NetworkConfig (..),
    newNetworkConfig,

    -- ** NetworkConfig_DatapathProvider
    NetworkConfig_DatapathProvider (..),

    -- ** NetworkConfig_PrivateIpv6GoogleAccess
    NetworkConfig_PrivateIpv6GoogleAccess (..),

    -- ** NetworkPerformanceConfig
    NetworkPerformanceConfig (..),
    newNetworkPerformanceConfig,

    -- ** NetworkPerformanceConfig_TotalEgressBandwidthTier
    NetworkPerformanceConfig_TotalEgressBandwidthTier (..),

    -- ** NetworkPolicy
    NetworkPolicy (..),
    newNetworkPolicy,

    -- ** NetworkPolicy_Provider
    NetworkPolicy_Provider (..),

    -- ** NetworkPolicyConfig
    NetworkPolicyConfig (..),
    newNetworkPolicyConfig,

    -- ** NetworkTags
    NetworkTags (..),
    newNetworkTags,

    -- ** NodeConfig
    NodeConfig (..),
    newNodeConfig,

    -- ** NodeConfig_Labels
    NodeConfig_Labels (..),
    newNodeConfig_Labels,

    -- ** NodeConfig_Metadata
    NodeConfig_Metadata (..),
    newNodeConfig_Metadata,

    -- ** NodeConfig_ResourceLabels
    NodeConfig_ResourceLabels (..),
    newNodeConfig_ResourceLabels,

    -- ** NodeConfigDefaults
    NodeConfigDefaults (..),
    newNodeConfigDefaults,

    -- ** NodeKubeletConfig
    NodeKubeletConfig (..),
    newNodeKubeletConfig,

    -- ** NodeLabels
    NodeLabels (..),
    newNodeLabels,

    -- ** NodeLabels_Labels
    NodeLabels_Labels (..),
    newNodeLabels_Labels,

    -- ** NodeManagement
    NodeManagement (..),
    newNodeManagement,

    -- ** NodeNetworkConfig
    NodeNetworkConfig (..),
    newNodeNetworkConfig,

    -- ** NodePool
    NodePool (..),
    newNodePool,

    -- ** NodePool_Status
    NodePool_Status (..),

    -- ** NodePoolAutoConfig
    NodePoolAutoConfig (..),
    newNodePoolAutoConfig,

    -- ** NodePoolAutoscaling
    NodePoolAutoscaling (..),
    newNodePoolAutoscaling,

    -- ** NodePoolAutoscaling_LocationPolicy
    NodePoolAutoscaling_LocationPolicy (..),

    -- ** NodePoolDefaults
    NodePoolDefaults (..),
    newNodePoolDefaults,

    -- ** NodePoolLoggingConfig
    NodePoolLoggingConfig (..),
    newNodePoolLoggingConfig,

    -- ** NodeTaint
    NodeTaint (..),
    newNodeTaint,

    -- ** NodeTaint_Effect
    NodeTaint_Effect (..),

    -- ** NodeTaints
    NodeTaints (..),
    newNodeTaints,

    -- ** NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_OperationType
    Operation_OperationType (..),

    -- ** Operation_Status
    Operation_Status (..),

    -- ** OperationProgress
    OperationProgress (..),
    newOperationProgress,

    -- ** OperationProgress_Status
    OperationProgress_Status (..),

    -- ** PlacementPolicy
    PlacementPolicy (..),
    newPlacementPolicy,

    -- ** PlacementPolicy_Type
    PlacementPolicy_Type (..),

    -- ** PodCIDROverprovisionConfig
    PodCIDROverprovisionConfig (..),
    newPodCIDROverprovisionConfig,

    -- ** PrivateClusterConfig
    PrivateClusterConfig (..),
    newPrivateClusterConfig,

    -- ** PrivateClusterMasterGlobalAccessConfig
    PrivateClusterMasterGlobalAccessConfig (..),
    newPrivateClusterMasterGlobalAccessConfig,

    -- ** PubSub
    PubSub (..),
    newPubSub,

    -- ** RecurringTimeWindow
    RecurringTimeWindow (..),
    newRecurringTimeWindow,

    -- ** ReleaseChannel
    ReleaseChannel (..),
    newReleaseChannel,

    -- ** ReleaseChannel_Channel
    ReleaseChannel_Channel (..),

    -- ** ReleaseChannelConfig
    ReleaseChannelConfig (..),
    newReleaseChannelConfig,

    -- ** ReleaseChannelConfig_Channel
    ReleaseChannelConfig_Channel (..),

    -- ** ReservationAffinity
    ReservationAffinity (..),
    newReservationAffinity,

    -- ** ReservationAffinity_ConsumeReservationType
    ReservationAffinity_ConsumeReservationType (..),

    -- ** ResourceLabels
    ResourceLabels (..),
    newResourceLabels,

    -- ** ResourceLabels_Labels
    ResourceLabels_Labels (..),
    newResourceLabels_Labels,

    -- ** ResourceLimit
    ResourceLimit (..),
    newResourceLimit,

    -- ** ResourceUsageExportConfig
    ResourceUsageExportConfig (..),
    newResourceUsageExportConfig,

    -- ** RollbackNodePoolUpgradeRequest
    RollbackNodePoolUpgradeRequest (..),
    newRollbackNodePoolUpgradeRequest,

    -- ** SandboxConfig
    SandboxConfig (..),
    newSandboxConfig,

    -- ** SandboxConfig_Type
    SandboxConfig_Type (..),

    -- ** SecurityBulletinEvent
    SecurityBulletinEvent (..),
    newSecurityBulletinEvent,

    -- ** ServerConfig
    ServerConfig (..),
    newServerConfig,

    -- ** ServiceExternalIPsConfig
    ServiceExternalIPsConfig (..),
    newServiceExternalIPsConfig,

    -- ** SetAddonsConfigRequest
    SetAddonsConfigRequest (..),
    newSetAddonsConfigRequest,

    -- ** SetLabelsRequest
    SetLabelsRequest (..),
    newSetLabelsRequest,

    -- ** SetLabelsRequest_ResourceLabels
    SetLabelsRequest_ResourceLabels (..),
    newSetLabelsRequest_ResourceLabels,

    -- ** SetLegacyAbacRequest
    SetLegacyAbacRequest (..),
    newSetLegacyAbacRequest,

    -- ** SetLocationsRequest
    SetLocationsRequest (..),
    newSetLocationsRequest,

    -- ** SetLoggingServiceRequest
    SetLoggingServiceRequest (..),
    newSetLoggingServiceRequest,

    -- ** SetMaintenancePolicyRequest
    SetMaintenancePolicyRequest (..),
    newSetMaintenancePolicyRequest,

    -- ** SetMasterAuthRequest
    SetMasterAuthRequest (..),
    newSetMasterAuthRequest,

    -- ** SetMasterAuthRequest_Action
    SetMasterAuthRequest_Action (..),

    -- ** SetMonitoringServiceRequest
    SetMonitoringServiceRequest (..),
    newSetMonitoringServiceRequest,

    -- ** SetNetworkPolicyRequest
    SetNetworkPolicyRequest (..),
    newSetNetworkPolicyRequest,

    -- ** SetNodePoolAutoscalingRequest
    SetNodePoolAutoscalingRequest (..),
    newSetNodePoolAutoscalingRequest,

    -- ** SetNodePoolManagementRequest
    SetNodePoolManagementRequest (..),
    newSetNodePoolManagementRequest,

    -- ** SetNodePoolSizeRequest
    SetNodePoolSizeRequest (..),
    newSetNodePoolSizeRequest,

    -- ** ShieldedInstanceConfig
    ShieldedInstanceConfig (..),
    newShieldedInstanceConfig,

    -- ** ShieldedNodes
    ShieldedNodes (..),
    newShieldedNodes,

    -- ** StandardRolloutPolicy
    StandardRolloutPolicy (..),
    newStandardRolloutPolicy,

    -- ** StartIPRotationRequest
    StartIPRotationRequest (..),
    newStartIPRotationRequest,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StatusCondition
    StatusCondition (..),
    newStatusCondition,

    -- ** StatusCondition_CanonicalCode
    StatusCondition_CanonicalCode (..),

    -- ** StatusCondition_Code
    StatusCondition_Code (..),

    -- ** TimeWindow
    TimeWindow (..),
    newTimeWindow,

    -- ** UpdateClusterRequest
    UpdateClusterRequest (..),
    newUpdateClusterRequest,

    -- ** UpdateInfo
    UpdateInfo (..),
    newUpdateInfo,

    -- ** UpdateMasterRequest
    UpdateMasterRequest (..),
    newUpdateMasterRequest,

    -- ** UpdateNodePoolRequest
    UpdateNodePoolRequest (..),
    newUpdateNodePoolRequest,

    -- ** UpgradeAvailableEvent
    UpgradeAvailableEvent (..),
    newUpgradeAvailableEvent,

    -- ** UpgradeAvailableEvent_ResourceType
    UpgradeAvailableEvent_ResourceType (..),

    -- ** UpgradeEvent
    UpgradeEvent (..),
    newUpgradeEvent,

    -- ** UpgradeEvent_ResourceType
    UpgradeEvent_ResourceType (..),

    -- ** UpgradeSettings
    UpgradeSettings (..),
    newUpgradeSettings,

    -- ** UpgradeSettings_Strategy
    UpgradeSettings_Strategy (..),

    -- ** UsableSubnetwork
    UsableSubnetwork (..),
    newUsableSubnetwork,

    -- ** UsableSubnetworkSecondaryRange
    UsableSubnetworkSecondaryRange (..),
    newUsableSubnetworkSecondaryRange,

    -- ** UsableSubnetworkSecondaryRange_Status
    UsableSubnetworkSecondaryRange_Status (..),

    -- ** VerticalPodAutoscaling
    VerticalPodAutoscaling (..),
    newVerticalPodAutoscaling,

    -- ** VirtualNIC
    VirtualNIC (..),
    newVirtualNIC,

    -- ** WindowsNodeConfig
    WindowsNodeConfig (..),
    newWindowsNodeConfig,

    -- ** WindowsNodeConfig_OsVersion
    WindowsNodeConfig_OsVersion (..),

    -- ** WorkloadIdentityConfig
    WorkloadIdentityConfig (..),
    newWorkloadIdentityConfig,

    -- ** WorkloadMetadataConfig
    WorkloadMetadataConfig (..),
    newWorkloadMetadataConfig,

    -- ** WorkloadMetadataConfig_Mode
    WorkloadMetadataConfig_Mode (..),
  )
where

import Gogol.Container.Internal.Product
import Gogol.Container.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Kubernetes Engine API. This contains the host and root path used as a starting point for constructing service requests.
containerService :: Core.ServiceConfig
containerService =
  Core.defaultService
    (Core.ServiceId "container:v1")
    "container.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
