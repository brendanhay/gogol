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
-- Module      : Gogol.Container.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Container.Internal.Product
  ( -- * AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

    -- * AdditionalNodeNetworkConfig
    AdditionalNodeNetworkConfig (..),
    newAdditionalNodeNetworkConfig,

    -- * AdditionalPodNetworkConfig
    AdditionalPodNetworkConfig (..),
    newAdditionalPodNetworkConfig,

    -- * AdditionalPodRangesConfig
    AdditionalPodRangesConfig (..),
    newAdditionalPodRangesConfig,

    -- * AddonsConfig
    AddonsConfig (..),
    newAddonsConfig,

    -- * AdvancedDatapathObservabilityConfig
    AdvancedDatapathObservabilityConfig (..),
    newAdvancedDatapathObservabilityConfig,

    -- * AdvancedMachineFeatures
    AdvancedMachineFeatures (..),
    newAdvancedMachineFeatures,

    -- * AuthenticatorGroupsConfig
    AuthenticatorGroupsConfig (..),
    newAuthenticatorGroupsConfig,

    -- * AutoMonitoringConfig
    AutoMonitoringConfig (..),
    newAutoMonitoringConfig,

    -- * AutoUpgradeOptions
    AutoUpgradeOptions (..),
    newAutoUpgradeOptions,

    -- * Autopilot
    Autopilot (..),
    newAutopilot,

    -- * AutopilotCompatibilityIssue
    AutopilotCompatibilityIssue (..),
    newAutopilotCompatibilityIssue,

    -- * AutopilotConfig
    AutopilotConfig (..),
    newAutopilotConfig,

    -- * AutoprovisioningNodePoolDefaults
    AutoprovisioningNodePoolDefaults (..),
    newAutoprovisioningNodePoolDefaults,

    -- * BestEffortProvisioning
    BestEffortProvisioning (..),
    newBestEffortProvisioning,

    -- * BigQueryDestination
    BigQueryDestination (..),
    newBigQueryDestination,

    -- * BinaryAuthorization
    BinaryAuthorization (..),
    newBinaryAuthorization,

    -- * BlueGreenInfo
    BlueGreenInfo (..),
    newBlueGreenInfo,

    -- * BlueGreenSettings
    BlueGreenSettings (..),
    newBlueGreenSettings,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CertificateAuthorityDomainConfig
    CertificateAuthorityDomainConfig (..),
    newCertificateAuthorityDomainConfig,

    -- * CheckAutopilotCompatibilityResponse
    CheckAutopilotCompatibilityResponse (..),
    newCheckAutopilotCompatibilityResponse,

    -- * CidrBlock
    CidrBlock (..),
    newCidrBlock,

    -- * ClientCertificateConfig
    ClientCertificateConfig (..),
    newClientCertificateConfig,

    -- * CloudRunConfig
    CloudRunConfig (..),
    newCloudRunConfig,

    -- * Cluster
    Cluster (..),
    newCluster,

    -- * Cluster_ResourceLabels
    Cluster_ResourceLabels (..),
    newCluster_ResourceLabels,

    -- * ClusterAutoscaling
    ClusterAutoscaling (..),
    newClusterAutoscaling,

    -- * ClusterNetworkPerformanceConfig
    ClusterNetworkPerformanceConfig (..),
    newClusterNetworkPerformanceConfig,

    -- * ClusterUpdate
    ClusterUpdate (..),
    newClusterUpdate,

    -- * CompleteIPRotationRequest
    CompleteIPRotationRequest (..),
    newCompleteIPRotationRequest,

    -- * CompleteNodePoolUpgradeRequest
    CompleteNodePoolUpgradeRequest (..),
    newCompleteNodePoolUpgradeRequest,

    -- * CompliancePostureConfig
    CompliancePostureConfig (..),
    newCompliancePostureConfig,

    -- * ComplianceStandard
    ComplianceStandard (..),
    newComplianceStandard,

    -- * ConfidentialNodes
    ConfidentialNodes (..),
    newConfidentialNodes,

    -- * ConfigConnectorConfig
    ConfigConnectorConfig (..),
    newConfigConnectorConfig,

    -- * ConsumptionMeteringConfig
    ConsumptionMeteringConfig (..),
    newConsumptionMeteringConfig,

    -- * ContainerdConfig
    ContainerdConfig (..),
    newContainerdConfig,

    -- * ControlPlaneEndpointsConfig
    ControlPlaneEndpointsConfig (..),
    newControlPlaneEndpointsConfig,

    -- * CostManagementConfig
    CostManagementConfig (..),
    newCostManagementConfig,

    -- * CreateClusterRequest
    CreateClusterRequest (..),
    newCreateClusterRequest,

    -- * CreateNodePoolRequest
    CreateNodePoolRequest (..),
    newCreateNodePoolRequest,

    -- * DNSConfig
    DNSConfig (..),
    newDNSConfig,

    -- * DNSEndpointConfig
    DNSEndpointConfig (..),
    newDNSEndpointConfig,

    -- * DailyMaintenanceWindow
    DailyMaintenanceWindow (..),
    newDailyMaintenanceWindow,

    -- * DatabaseEncryption
    DatabaseEncryption (..),
    newDatabaseEncryption,

    -- * DefaultSnatStatus
    DefaultSnatStatus (..),
    newDefaultSnatStatus,

    -- * DesiredEnterpriseConfig
    DesiredEnterpriseConfig (..),
    newDesiredEnterpriseConfig,

    -- * DnsCacheConfig
    DnsCacheConfig (..),
    newDnsCacheConfig,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EnterpriseConfig
    EnterpriseConfig (..),
    newEnterpriseConfig,

    -- * EphemeralStorageLocalSsdConfig
    EphemeralStorageLocalSsdConfig (..),
    newEphemeralStorageLocalSsdConfig,

    -- * FastSocket
    FastSocket (..),
    newFastSocket,

    -- * Filter
    Filter (..),
    newFilter,

    -- * Fleet
    Fleet (..),
    newFleet,

    -- * GCPSecretManagerCertificateConfig
    GCPSecretManagerCertificateConfig (..),
    newGCPSecretManagerCertificateConfig,

    -- * GPUDriverInstallationConfig
    GPUDriverInstallationConfig (..),
    newGPUDriverInstallationConfig,

    -- * GPUSharingConfig
    GPUSharingConfig (..),
    newGPUSharingConfig,

    -- * GatewayAPIConfig
    GatewayAPIConfig (..),
    newGatewayAPIConfig,

    -- * GcePersistentDiskCsiDriverConfig
    GcePersistentDiskCsiDriverConfig (..),
    newGcePersistentDiskCsiDriverConfig,

    -- * GcfsConfig
    GcfsConfig (..),
    newGcfsConfig,

    -- * GcpFilestoreCsiDriverConfig
    GcpFilestoreCsiDriverConfig (..),
    newGcpFilestoreCsiDriverConfig,

    -- * GcsFuseCsiDriverConfig
    GcsFuseCsiDriverConfig (..),
    newGcsFuseCsiDriverConfig,

    -- * GetJSONWebKeysResponse
    GetJSONWebKeysResponse (..),
    newGetJSONWebKeysResponse,

    -- * GetOpenIDConfigResponse
    GetOpenIDConfigResponse (..),
    newGetOpenIDConfigResponse,

    -- * GkeBackupAgentConfig
    GkeBackupAgentConfig (..),
    newGkeBackupAgentConfig,

    -- * HorizontalPodAutoscaling
    HorizontalPodAutoscaling (..),
    newHorizontalPodAutoscaling,

    -- * HttpCacheControlResponseHeader
    HttpCacheControlResponseHeader (..),
    newHttpCacheControlResponseHeader,

    -- * HttpLoadBalancing
    HttpLoadBalancing (..),
    newHttpLoadBalancing,

    -- * HugepagesConfig
    HugepagesConfig (..),
    newHugepagesConfig,

    -- * ILBSubsettingConfig
    ILBSubsettingConfig (..),
    newILBSubsettingConfig,

    -- * IPAllocationPolicy
    IPAllocationPolicy (..),
    newIPAllocationPolicy,

    -- * IPEndpointsConfig
    IPEndpointsConfig (..),
    newIPEndpointsConfig,

    -- * IdentityServiceConfig
    IdentityServiceConfig (..),
    newIdentityServiceConfig,

    -- * IntraNodeVisibilityConfig
    IntraNodeVisibilityConfig (..),
    newIntraNodeVisibilityConfig,

    -- * Jwk
    Jwk (..),
    newJwk,

    -- * K8sBetaAPIConfig
    K8sBetaAPIConfig (..),
    newK8sBetaAPIConfig,

    -- * KubernetesDashboard
    KubernetesDashboard (..),
    newKubernetesDashboard,

    -- * LegacyAbac
    LegacyAbac (..),
    newLegacyAbac,

    -- * LinuxNodeConfig
    LinuxNodeConfig (..),
    newLinuxNodeConfig,

    -- * LinuxNodeConfig_Sysctls
    LinuxNodeConfig_Sysctls (..),
    newLinuxNodeConfig_Sysctls,

    -- * ListClustersResponse
    ListClustersResponse (..),
    newListClustersResponse,

    -- * ListNodePoolsResponse
    ListNodePoolsResponse (..),
    newListNodePoolsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListUsableSubnetworksResponse
    ListUsableSubnetworksResponse (..),
    newListUsableSubnetworksResponse,

    -- * LocalNvmeSsdBlockConfig
    LocalNvmeSsdBlockConfig (..),
    newLocalNvmeSsdBlockConfig,

    -- * LoggingComponentConfig
    LoggingComponentConfig (..),
    newLoggingComponentConfig,

    -- * LoggingConfig
    LoggingConfig (..),
    newLoggingConfig,

    -- * LoggingVariantConfig
    LoggingVariantConfig (..),
    newLoggingVariantConfig,

    -- * MaintenanceExclusionOptions
    MaintenanceExclusionOptions (..),
    newMaintenanceExclusionOptions,

    -- * MaintenancePolicy
    MaintenancePolicy (..),
    newMaintenancePolicy,

    -- * MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- * MaintenanceWindow_MaintenanceExclusions
    MaintenanceWindow_MaintenanceExclusions (..),
    newMaintenanceWindow_MaintenanceExclusions,

    -- * ManagedPrometheusConfig
    ManagedPrometheusConfig (..),
    newManagedPrometheusConfig,

    -- * MasterAuth
    MasterAuth (..),
    newMasterAuth,

    -- * MasterAuthorizedNetworksConfig
    MasterAuthorizedNetworksConfig (..),
    newMasterAuthorizedNetworksConfig,

    -- * MaxPodsConstraint
    MaxPodsConstraint (..),
    newMaxPodsConstraint,

    -- * MeshCertificates
    MeshCertificates (..),
    newMeshCertificates,

    -- * Metric
    Metric (..),
    newMetric,

    -- * MonitoringComponentConfig
    MonitoringComponentConfig (..),
    newMonitoringComponentConfig,

    -- * MonitoringConfig
    MonitoringConfig (..),
    newMonitoringConfig,

    -- * NetworkConfig
    NetworkConfig (..),
    newNetworkConfig,

    -- * NetworkPerformanceConfig
    NetworkPerformanceConfig (..),
    newNetworkPerformanceConfig,

    -- * NetworkPolicy
    NetworkPolicy (..),
    newNetworkPolicy,

    -- * NetworkPolicyConfig
    NetworkPolicyConfig (..),
    newNetworkPolicyConfig,

    -- * NetworkTags
    NetworkTags (..),
    newNetworkTags,

    -- * NodeAffinity
    NodeAffinity (..),
    newNodeAffinity,

    -- * NodeConfig
    NodeConfig (..),
    newNodeConfig,

    -- * NodeConfig_Labels
    NodeConfig_Labels (..),
    newNodeConfig_Labels,

    -- * NodeConfig_Metadata
    NodeConfig_Metadata (..),
    newNodeConfig_Metadata,

    -- * NodeConfig_ResourceLabels
    NodeConfig_ResourceLabels (..),
    newNodeConfig_ResourceLabels,

    -- * NodeConfigDefaults
    NodeConfigDefaults (..),
    newNodeConfigDefaults,

    -- * NodeKubeletConfig
    NodeKubeletConfig (..),
    newNodeKubeletConfig,

    -- * NodeLabels
    NodeLabels (..),
    newNodeLabels,

    -- * NodeLabels_Labels
    NodeLabels_Labels (..),
    newNodeLabels_Labels,

    -- * NodeManagement
    NodeManagement (..),
    newNodeManagement,

    -- * NodeNetworkConfig
    NodeNetworkConfig (..),
    newNodeNetworkConfig,

    -- * NodePool
    NodePool (..),
    newNodePool,

    -- * NodePoolAutoConfig
    NodePoolAutoConfig (..),
    newNodePoolAutoConfig,

    -- * NodePoolAutoscaling
    NodePoolAutoscaling (..),
    newNodePoolAutoscaling,

    -- * NodePoolDefaults
    NodePoolDefaults (..),
    newNodePoolDefaults,

    -- * NodePoolLoggingConfig
    NodePoolLoggingConfig (..),
    newNodePoolLoggingConfig,

    -- * NodeTaint
    NodeTaint (..),
    newNodeTaint,

    -- * NodeTaints
    NodeTaints (..),
    newNodeTaints,

    -- * NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- * Operation
    Operation (..),
    newOperation,

    -- * OperationError
    OperationError (..),
    newOperationError,

    -- * OperationProgress
    OperationProgress (..),
    newOperationProgress,

    -- * ParallelstoreCsiDriverConfig
    ParallelstoreCsiDriverConfig (..),
    newParallelstoreCsiDriverConfig,

    -- * ParentProductConfig
    ParentProductConfig (..),
    newParentProductConfig,

    -- * ParentProductConfig_Labels
    ParentProductConfig_Labels (..),
    newParentProductConfig_Labels,

    -- * PlacementPolicy
    PlacementPolicy (..),
    newPlacementPolicy,

    -- * PodCIDROverprovisionConfig
    PodCIDROverprovisionConfig (..),
    newPodCIDROverprovisionConfig,

    -- * PrivateClusterConfig
    PrivateClusterConfig (..),
    newPrivateClusterConfig,

    -- * PrivateClusterMasterGlobalAccessConfig
    PrivateClusterMasterGlobalAccessConfig (..),
    newPrivateClusterMasterGlobalAccessConfig,

    -- * PrivateRegistryAccessConfig
    PrivateRegistryAccessConfig (..),
    newPrivateRegistryAccessConfig,

    -- * PubSub
    PubSub (..),
    newPubSub,

    -- * QueuedProvisioning
    QueuedProvisioning (..),
    newQueuedProvisioning,

    -- * RBACBindingConfig
    RBACBindingConfig (..),
    newRBACBindingConfig,

    -- * RangeInfo
    RangeInfo (..),
    newRangeInfo,

    -- * RayClusterLoggingConfig
    RayClusterLoggingConfig (..),
    newRayClusterLoggingConfig,

    -- * RayClusterMonitoringConfig
    RayClusterMonitoringConfig (..),
    newRayClusterMonitoringConfig,

    -- * RayOperatorConfig
    RayOperatorConfig (..),
    newRayOperatorConfig,

    -- * RecurringTimeWindow
    RecurringTimeWindow (..),
    newRecurringTimeWindow,

    -- * ReleaseChannel
    ReleaseChannel (..),
    newReleaseChannel,

    -- * ReleaseChannelConfig
    ReleaseChannelConfig (..),
    newReleaseChannelConfig,

    -- * ReservationAffinity
    ReservationAffinity (..),
    newReservationAffinity,

    -- * ResourceLabels
    ResourceLabels (..),
    newResourceLabels,

    -- * ResourceLabels_Labels
    ResourceLabels_Labels (..),
    newResourceLabels_Labels,

    -- * ResourceLimit
    ResourceLimit (..),
    newResourceLimit,

    -- * ResourceManagerTags
    ResourceManagerTags (..),
    newResourceManagerTags,

    -- * ResourceManagerTags_Tags
    ResourceManagerTags_Tags (..),
    newResourceManagerTags_Tags,

    -- * ResourceUsageExportConfig
    ResourceUsageExportConfig (..),
    newResourceUsageExportConfig,

    -- * RollbackNodePoolUpgradeRequest
    RollbackNodePoolUpgradeRequest (..),
    newRollbackNodePoolUpgradeRequest,

    -- * SandboxConfig
    SandboxConfig (..),
    newSandboxConfig,

    -- * SecondaryBootDisk
    SecondaryBootDisk (..),
    newSecondaryBootDisk,

    -- * SecondaryBootDiskUpdateStrategy
    SecondaryBootDiskUpdateStrategy (..),
    newSecondaryBootDiskUpdateStrategy,

    -- * SecretManagerConfig
    SecretManagerConfig (..),
    newSecretManagerConfig,

    -- * SecurityBulletinEvent
    SecurityBulletinEvent (..),
    newSecurityBulletinEvent,

    -- * SecurityPostureConfig
    SecurityPostureConfig (..),
    newSecurityPostureConfig,

    -- * ServerConfig
    ServerConfig (..),
    newServerConfig,

    -- * ServiceExternalIPsConfig
    ServiceExternalIPsConfig (..),
    newServiceExternalIPsConfig,

    -- * SetAddonsConfigRequest
    SetAddonsConfigRequest (..),
    newSetAddonsConfigRequest,

    -- * SetLabelsRequest
    SetLabelsRequest (..),
    newSetLabelsRequest,

    -- * SetLabelsRequest_ResourceLabels
    SetLabelsRequest_ResourceLabels (..),
    newSetLabelsRequest_ResourceLabels,

    -- * SetLegacyAbacRequest
    SetLegacyAbacRequest (..),
    newSetLegacyAbacRequest,

    -- * SetLocationsRequest
    SetLocationsRequest (..),
    newSetLocationsRequest,

    -- * SetLoggingServiceRequest
    SetLoggingServiceRequest (..),
    newSetLoggingServiceRequest,

    -- * SetMaintenancePolicyRequest
    SetMaintenancePolicyRequest (..),
    newSetMaintenancePolicyRequest,

    -- * SetMasterAuthRequest
    SetMasterAuthRequest (..),
    newSetMasterAuthRequest,

    -- * SetMonitoringServiceRequest
    SetMonitoringServiceRequest (..),
    newSetMonitoringServiceRequest,

    -- * SetNetworkPolicyRequest
    SetNetworkPolicyRequest (..),
    newSetNetworkPolicyRequest,

    -- * SetNodePoolAutoscalingRequest
    SetNodePoolAutoscalingRequest (..),
    newSetNodePoolAutoscalingRequest,

    -- * SetNodePoolManagementRequest
    SetNodePoolManagementRequest (..),
    newSetNodePoolManagementRequest,

    -- * SetNodePoolSizeRequest
    SetNodePoolSizeRequest (..),
    newSetNodePoolSizeRequest,

    -- * ShieldedInstanceConfig
    ShieldedInstanceConfig (..),
    newShieldedInstanceConfig,

    -- * ShieldedNodes
    ShieldedNodes (..),
    newShieldedNodes,

    -- * SoleTenantConfig
    SoleTenantConfig (..),
    newSoleTenantConfig,

    -- * StandardRolloutPolicy
    StandardRolloutPolicy (..),
    newStandardRolloutPolicy,

    -- * StartIPRotationRequest
    StartIPRotationRequest (..),
    newStartIPRotationRequest,

    -- * StatefulHAConfig
    StatefulHAConfig (..),
    newStatefulHAConfig,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StatusCondition
    StatusCondition (..),
    newStatusCondition,

    -- * TimeWindow
    TimeWindow (..),
    newTimeWindow,

    -- * UpdateClusterRequest
    UpdateClusterRequest (..),
    newUpdateClusterRequest,

    -- * UpdateInfo
    UpdateInfo (..),
    newUpdateInfo,

    -- * UpdateMasterRequest
    UpdateMasterRequest (..),
    newUpdateMasterRequest,

    -- * UpdateNodePoolRequest
    UpdateNodePoolRequest (..),
    newUpdateNodePoolRequest,

    -- * UpgradeAvailableEvent
    UpgradeAvailableEvent (..),
    newUpgradeAvailableEvent,

    -- * UpgradeEvent
    UpgradeEvent (..),
    newUpgradeEvent,

    -- * UpgradeInfoEvent
    UpgradeInfoEvent (..),
    newUpgradeInfoEvent,

    -- * UpgradeSettings
    UpgradeSettings (..),
    newUpgradeSettings,

    -- * UsableSubnetwork
    UsableSubnetwork (..),
    newUsableSubnetwork,

    -- * UsableSubnetworkSecondaryRange
    UsableSubnetworkSecondaryRange (..),
    newUsableSubnetworkSecondaryRange,

    -- * UserManagedKeysConfig
    UserManagedKeysConfig (..),
    newUserManagedKeysConfig,

    -- * VerticalPodAutoscaling
    VerticalPodAutoscaling (..),
    newVerticalPodAutoscaling,

    -- * VirtualNIC
    VirtualNIC (..),
    newVirtualNIC,

    -- * WindowsNodeConfig
    WindowsNodeConfig (..),
    newWindowsNodeConfig,

    -- * WorkloadIdentityConfig
    WorkloadIdentityConfig (..),
    newWorkloadIdentityConfig,

    -- * WorkloadMetadataConfig
    WorkloadMetadataConfig (..),
    newWorkloadMetadataConfig,

    -- * WorkloadPolicyConfig
    WorkloadPolicyConfig (..),
    newWorkloadPolicyConfig,
  )
where

import Gogol.Container.Internal.Sum
import Gogol.Prelude qualified as Core

-- | AcceleratorConfig represents a Hardware Accelerator request.
--
-- /See:/ 'newAcceleratorConfig' smart constructor.
data AcceleratorConfig = AcceleratorConfig
  { -- | The number of the accelerator cards exposed to an instance.
    acceleratorCount :: (Core.Maybe Core.Int64),
    -- | The accelerator type resource name. List of supported accelerators <https://cloud.google.com/compute/docs/gpus here>
    acceleratorType :: (Core.Maybe Core.Text),
    -- | The configuration for auto installation of GPU driver.
    gpuDriverInstallationConfig :: (Core.Maybe GPUDriverInstallationConfig),
    -- | Size of partitions to create on the GPU. Valid values are described in the NVIDIA <https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning mig user guide>.
    gpuPartitionSize :: (Core.Maybe Core.Text),
    -- | The configuration for GPU sharing options.
    gpuSharingConfig :: (Core.Maybe GPUSharingConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcceleratorConfig' with the minimum fields required to make a request.
newAcceleratorConfig ::
  AcceleratorConfig
newAcceleratorConfig =
  AcceleratorConfig
    { acceleratorCount = Core.Nothing,
      acceleratorType = Core.Nothing,
      gpuDriverInstallationConfig = Core.Nothing,
      gpuPartitionSize = Core.Nothing,
      gpuSharingConfig = Core.Nothing
    }

instance Core.FromJSON AcceleratorConfig where
  parseJSON =
    Core.withObject
      "AcceleratorConfig"
      ( \o ->
          AcceleratorConfig
            Core.<$> (o Core..:? "acceleratorCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "acceleratorType")
            Core.<*> (o Core..:? "gpuDriverInstallationConfig")
            Core.<*> (o Core..:? "gpuPartitionSize")
            Core.<*> (o Core..:? "gpuSharingConfig")
      )

instance Core.ToJSON AcceleratorConfig where
  toJSON AcceleratorConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorCount" Core..=)
              Core.. Core.AsText
              Core.<$> acceleratorCount,
            ("acceleratorType" Core..=) Core.<$> acceleratorType,
            ("gpuDriverInstallationConfig" Core..=)
              Core.<$> gpuDriverInstallationConfig,
            ("gpuPartitionSize" Core..=) Core.<$> gpuPartitionSize,
            ("gpuSharingConfig" Core..=) Core.<$> gpuSharingConfig
          ]
      )

-- | AdditionalNodeNetworkConfig is the configuration for additional node networks within the NodeNetworkConfig message
--
-- /See:/ 'newAdditionalNodeNetworkConfig' smart constructor.
data AdditionalNodeNetworkConfig = AdditionalNodeNetworkConfig
  { -- | Name of the VPC where the additional interface belongs
    network :: (Core.Maybe Core.Text),
    -- | Name of the subnetwork where the additional interface belongs
    subnetwork :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdditionalNodeNetworkConfig' with the minimum fields required to make a request.
newAdditionalNodeNetworkConfig ::
  AdditionalNodeNetworkConfig
newAdditionalNodeNetworkConfig =
  AdditionalNodeNetworkConfig
    { network = Core.Nothing,
      subnetwork = Core.Nothing
    }

instance Core.FromJSON AdditionalNodeNetworkConfig where
  parseJSON =
    Core.withObject
      "AdditionalNodeNetworkConfig"
      ( \o ->
          AdditionalNodeNetworkConfig
            Core.<$> (o Core..:? "network")
            Core.<*> (o Core..:? "subnetwork")
      )

instance Core.ToJSON AdditionalNodeNetworkConfig where
  toJSON AdditionalNodeNetworkConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("network" Core..=) Core.<$> network,
            ("subnetwork" Core..=) Core.<$> subnetwork
          ]
      )

-- | AdditionalPodNetworkConfig is the configuration for additional pod networks within the NodeNetworkConfig message
--
-- /See:/ 'newAdditionalPodNetworkConfig' smart constructor.
data AdditionalPodNetworkConfig = AdditionalPodNetworkConfig
  { -- | The maximum number of pods per node which use this pod network.
    maxPodsPerNode :: (Core.Maybe MaxPodsConstraint),
    -- | The name of the network attachment for pods to communicate to; cannot be specified along with subnetwork or secondary/pod/range.
    networkAttachment :: (Core.Maybe Core.Text),
    -- | The name of the secondary range on the subnet which provides IP address for this pod range.
    secondaryPodRange :: (Core.Maybe Core.Text),
    -- | Name of the subnetwork where the additional pod network belongs.
    subnetwork :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdditionalPodNetworkConfig' with the minimum fields required to make a request.
newAdditionalPodNetworkConfig ::
  AdditionalPodNetworkConfig
newAdditionalPodNetworkConfig =
  AdditionalPodNetworkConfig
    { maxPodsPerNode = Core.Nothing,
      networkAttachment = Core.Nothing,
      secondaryPodRange = Core.Nothing,
      subnetwork = Core.Nothing
    }

instance Core.FromJSON AdditionalPodNetworkConfig where
  parseJSON =
    Core.withObject
      "AdditionalPodNetworkConfig"
      ( \o ->
          AdditionalPodNetworkConfig
            Core.<$> (o Core..:? "maxPodsPerNode")
            Core.<*> (o Core..:? "networkAttachment")
            Core.<*> (o Core..:? "secondaryPodRange")
            Core.<*> (o Core..:? "subnetwork")
      )

instance Core.ToJSON AdditionalPodNetworkConfig where
  toJSON AdditionalPodNetworkConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxPodsPerNode" Core..=) Core.<$> maxPodsPerNode,
            ("networkAttachment" Core..=) Core.<$> networkAttachment,
            ("secondaryPodRange" Core..=) Core.<$> secondaryPodRange,
            ("subnetwork" Core..=) Core.<$> subnetwork
          ]
      )

-- | AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
--
-- /See:/ 'newAdditionalPodRangesConfig' smart constructor.
data AdditionalPodRangesConfig = AdditionalPodRangesConfig
  { -- | Output only. Information for additional pod range.
    podRangeInfo :: (Core.Maybe [RangeInfo]),
    -- | Name for pod secondary ipv4 range which has the actual range defined ahead.
    podRangeNames :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdditionalPodRangesConfig' with the minimum fields required to make a request.
newAdditionalPodRangesConfig ::
  AdditionalPodRangesConfig
newAdditionalPodRangesConfig =
  AdditionalPodRangesConfig
    { podRangeInfo = Core.Nothing,
      podRangeNames = Core.Nothing
    }

instance Core.FromJSON AdditionalPodRangesConfig where
  parseJSON =
    Core.withObject
      "AdditionalPodRangesConfig"
      ( \o ->
          AdditionalPodRangesConfig
            Core.<$> (o Core..:? "podRangeInfo")
            Core.<*> (o Core..:? "podRangeNames")
      )

instance Core.ToJSON AdditionalPodRangesConfig where
  toJSON AdditionalPodRangesConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("podRangeInfo" Core..=) Core.<$> podRangeInfo,
            ("podRangeNames" Core..=) Core.<$> podRangeNames
          ]
      )

-- | Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.
--
-- /See:/ 'newAddonsConfig' smart constructor.
data AddonsConfig = AddonsConfig
  { -- | Configuration for the Cloud Run addon, which allows the user to use a managed Knative service.
    cloudRunConfig :: (Core.Maybe CloudRunConfig),
    -- | Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
    configConnectorConfig :: (Core.Maybe ConfigConnectorConfig),
    -- | Configuration for NodeLocalDNS, a dns cache running on cluster nodes
    dnsCacheConfig :: (Core.Maybe DnsCacheConfig),
    -- | Configuration for the Compute Engine Persistent Disk CSI driver.
    gcePersistentDiskCsiDriverConfig :: (Core.Maybe GcePersistentDiskCsiDriverConfig),
    -- | Configuration for the GCP Filestore CSI driver.
    gcpFilestoreCsiDriverConfig :: (Core.Maybe GcpFilestoreCsiDriverConfig),
    -- | Configuration for the Cloud Storage Fuse CSI driver.
    gcsFuseCsiDriverConfig :: (Core.Maybe GcsFuseCsiDriverConfig),
    -- | Configuration for the Backup for GKE agent addon.
    gkeBackupAgentConfig :: (Core.Maybe GkeBackupAgentConfig),
    -- | Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
    horizontalPodAutoscaling :: (Core.Maybe HorizontalPodAutoscaling),
    -- | Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
    httpLoadBalancing :: (Core.Maybe HttpLoadBalancing),
    -- | Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https:\/\/cloud.google.com\/kubernetes-engine\/docs\/concepts\/dashboards
    kubernetesDashboard :: (Core.Maybe KubernetesDashboard),
    -- | Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
    networkPolicyConfig :: (Core.Maybe NetworkPolicyConfig),
    -- | Configuration for the Cloud Storage Parallelstore CSI driver.
    parallelstoreCsiDriverConfig :: (Core.Maybe ParallelstoreCsiDriverConfig),
    -- | Optional. Configuration for Ray Operator addon.
    rayOperatorConfig :: (Core.Maybe RayOperatorConfig),
    -- | Optional. Configuration for the StatefulHA add-on.
    statefulHaConfig :: (Core.Maybe StatefulHAConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddonsConfig' with the minimum fields required to make a request.
newAddonsConfig ::
  AddonsConfig
newAddonsConfig =
  AddonsConfig
    { cloudRunConfig = Core.Nothing,
      configConnectorConfig = Core.Nothing,
      dnsCacheConfig = Core.Nothing,
      gcePersistentDiskCsiDriverConfig = Core.Nothing,
      gcpFilestoreCsiDriverConfig = Core.Nothing,
      gcsFuseCsiDriverConfig = Core.Nothing,
      gkeBackupAgentConfig = Core.Nothing,
      horizontalPodAutoscaling = Core.Nothing,
      httpLoadBalancing = Core.Nothing,
      kubernetesDashboard = Core.Nothing,
      networkPolicyConfig = Core.Nothing,
      parallelstoreCsiDriverConfig = Core.Nothing,
      rayOperatorConfig = Core.Nothing,
      statefulHaConfig = Core.Nothing
    }

instance Core.FromJSON AddonsConfig where
  parseJSON =
    Core.withObject
      "AddonsConfig"
      ( \o ->
          AddonsConfig
            Core.<$> (o Core..:? "cloudRunConfig")
            Core.<*> (o Core..:? "configConnectorConfig")
            Core.<*> (o Core..:? "dnsCacheConfig")
            Core.<*> (o Core..:? "gcePersistentDiskCsiDriverConfig")
            Core.<*> (o Core..:? "gcpFilestoreCsiDriverConfig")
            Core.<*> (o Core..:? "gcsFuseCsiDriverConfig")
            Core.<*> (o Core..:? "gkeBackupAgentConfig")
            Core.<*> (o Core..:? "horizontalPodAutoscaling")
            Core.<*> (o Core..:? "httpLoadBalancing")
            Core.<*> (o Core..:? "kubernetesDashboard")
            Core.<*> (o Core..:? "networkPolicyConfig")
            Core.<*> (o Core..:? "parallelstoreCsiDriverConfig")
            Core.<*> (o Core..:? "rayOperatorConfig")
            Core.<*> (o Core..:? "statefulHaConfig")
      )

instance Core.ToJSON AddonsConfig where
  toJSON AddonsConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudRunConfig" Core..=) Core.<$> cloudRunConfig,
            ("configConnectorConfig" Core..=) Core.<$> configConnectorConfig,
            ("dnsCacheConfig" Core..=) Core.<$> dnsCacheConfig,
            ("gcePersistentDiskCsiDriverConfig" Core..=)
              Core.<$> gcePersistentDiskCsiDriverConfig,
            ("gcpFilestoreCsiDriverConfig" Core..=)
              Core.<$> gcpFilestoreCsiDriverConfig,
            ("gcsFuseCsiDriverConfig" Core..=) Core.<$> gcsFuseCsiDriverConfig,
            ("gkeBackupAgentConfig" Core..=) Core.<$> gkeBackupAgentConfig,
            ("horizontalPodAutoscaling" Core..=)
              Core.<$> horizontalPodAutoscaling,
            ("httpLoadBalancing" Core..=) Core.<$> httpLoadBalancing,
            ("kubernetesDashboard" Core..=) Core.<$> kubernetesDashboard,
            ("networkPolicyConfig" Core..=) Core.<$> networkPolicyConfig,
            ("parallelstoreCsiDriverConfig" Core..=)
              Core.<$> parallelstoreCsiDriverConfig,
            ("rayOperatorConfig" Core..=) Core.<$> rayOperatorConfig,
            ("statefulHaConfig" Core..=) Core.<$> statefulHaConfig
          ]
      )

-- | AdvancedDatapathObservabilityConfig specifies configuration of observability features of advanced datapath.
--
-- /See:/ 'newAdvancedDatapathObservabilityConfig' smart constructor.
data AdvancedDatapathObservabilityConfig = AdvancedDatapathObservabilityConfig
  { -- | Expose flow metrics on nodes
    enableMetrics :: (Core.Maybe Core.Bool),
    -- | Enable Relay component
    enableRelay :: (Core.Maybe Core.Bool),
    -- | Method used to make Relay available
    relayMode :: (Core.Maybe AdvancedDatapathObservabilityConfig_RelayMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdvancedDatapathObservabilityConfig' with the minimum fields required to make a request.
newAdvancedDatapathObservabilityConfig ::
  AdvancedDatapathObservabilityConfig
newAdvancedDatapathObservabilityConfig =
  AdvancedDatapathObservabilityConfig
    { enableMetrics = Core.Nothing,
      enableRelay = Core.Nothing,
      relayMode = Core.Nothing
    }

instance Core.FromJSON AdvancedDatapathObservabilityConfig where
  parseJSON =
    Core.withObject
      "AdvancedDatapathObservabilityConfig"
      ( \o ->
          AdvancedDatapathObservabilityConfig
            Core.<$> (o Core..:? "enableMetrics")
            Core.<*> (o Core..:? "enableRelay")
            Core.<*> (o Core..:? "relayMode")
      )

instance Core.ToJSON AdvancedDatapathObservabilityConfig where
  toJSON AdvancedDatapathObservabilityConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableMetrics" Core..=) Core.<$> enableMetrics,
            ("enableRelay" Core..=) Core.<$> enableRelay,
            ("relayMode" Core..=) Core.<$> relayMode
          ]
      )

-- | Specifies options for controlling advanced machine features.
--
-- /See:/ 'newAdvancedMachineFeatures' smart constructor.
data AdvancedMachineFeatures = AdvancedMachineFeatures
  { -- | Whether or not to enable nested virtualization (defaults to false).
    enableNestedVirtualization :: (Core.Maybe Core.Bool),
    -- | The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
    threadsPerCore :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdvancedMachineFeatures' with the minimum fields required to make a request.
newAdvancedMachineFeatures ::
  AdvancedMachineFeatures
newAdvancedMachineFeatures =
  AdvancedMachineFeatures
    { enableNestedVirtualization =
        Core.Nothing,
      threadsPerCore = Core.Nothing
    }

instance Core.FromJSON AdvancedMachineFeatures where
  parseJSON =
    Core.withObject
      "AdvancedMachineFeatures"
      ( \o ->
          AdvancedMachineFeatures
            Core.<$> (o Core..:? "enableNestedVirtualization")
            Core.<*> (o Core..:? "threadsPerCore" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON AdvancedMachineFeatures where
  toJSON AdvancedMachineFeatures {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableNestedVirtualization" Core..=)
              Core.<$> enableNestedVirtualization,
            ("threadsPerCore" Core..=)
              Core.. Core.AsText
              Core.<$> threadsPerCore
          ]
      )

-- | Configuration for returning group information from authenticators.
--
-- /See:/ 'newAuthenticatorGroupsConfig' smart constructor.
data AuthenticatorGroupsConfig = AuthenticatorGroupsConfig
  { -- | Whether this cluster should return group membership lookups during authentication using a group of security groups.
    enabled :: (Core.Maybe Core.Bool),
    -- | The name of the security group-of-groups to be used. Only relevant if enabled = true.
    securityGroup :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthenticatorGroupsConfig' with the minimum fields required to make a request.
newAuthenticatorGroupsConfig ::
  AuthenticatorGroupsConfig
newAuthenticatorGroupsConfig =
  AuthenticatorGroupsConfig
    { enabled = Core.Nothing,
      securityGroup = Core.Nothing
    }

instance Core.FromJSON AuthenticatorGroupsConfig where
  parseJSON =
    Core.withObject
      "AuthenticatorGroupsConfig"
      ( \o ->
          AuthenticatorGroupsConfig
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "securityGroup")
      )

instance Core.ToJSON AuthenticatorGroupsConfig where
  toJSON AuthenticatorGroupsConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("securityGroup" Core..=) Core.<$> securityGroup
          ]
      )

-- | AutoMonitoringConfig defines the configuration for GKE Workload Auto-Monitoring.
--
-- /See:/ 'newAutoMonitoringConfig' smart constructor.
newtype AutoMonitoringConfig = AutoMonitoringConfig
  { -- | Scope for GKE Workload Auto-Monitoring.
    scope :: (Core.Maybe AutoMonitoringConfig_Scope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoMonitoringConfig' with the minimum fields required to make a request.
newAutoMonitoringConfig ::
  AutoMonitoringConfig
newAutoMonitoringConfig =
  AutoMonitoringConfig {scope = Core.Nothing}

instance Core.FromJSON AutoMonitoringConfig where
  parseJSON =
    Core.withObject
      "AutoMonitoringConfig"
      (\o -> AutoMonitoringConfig Core.<$> (o Core..:? "scope"))

instance Core.ToJSON AutoMonitoringConfig where
  toJSON AutoMonitoringConfig {..} =
    Core.object (Core.catMaybes [("scope" Core..=) Core.<$> scope])

-- | AutoUpgradeOptions defines the set of options for the user to control how the Auto Upgrades will proceed.
--
-- /See:/ 'newAutoUpgradeOptions' smart constructor.
data AutoUpgradeOptions = AutoUpgradeOptions
  { -- | Output only. This field is set when upgrades are about to commence with the approximate start time for the upgrades, in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    autoUpgradeStartTime :: (Core.Maybe Core.Text),
    -- | Output only. This field is set when upgrades are about to commence with the description of the upgrade.
    description :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoUpgradeOptions' with the minimum fields required to make a request.
newAutoUpgradeOptions ::
  AutoUpgradeOptions
newAutoUpgradeOptions =
  AutoUpgradeOptions
    { autoUpgradeStartTime = Core.Nothing,
      description = Core.Nothing
    }

instance Core.FromJSON AutoUpgradeOptions where
  parseJSON =
    Core.withObject
      "AutoUpgradeOptions"
      ( \o ->
          AutoUpgradeOptions
            Core.<$> (o Core..:? "autoUpgradeStartTime")
            Core.<*> (o Core..:? "description")
      )

instance Core.ToJSON AutoUpgradeOptions where
  toJSON AutoUpgradeOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoUpgradeStartTime" Core..=) Core.<$> autoUpgradeStartTime,
            ("description" Core..=) Core.<$> description
          ]
      )

-- | Autopilot is the configuration for Autopilot settings on the cluster.
--
-- /See:/ 'newAutopilot' smart constructor.
data Autopilot = Autopilot
  { -- | Enable Autopilot
    enabled :: (Core.Maybe Core.Bool),
    -- | WorkloadPolicyConfig is the configuration related to GCW workload policy
    workloadPolicyConfig :: (Core.Maybe WorkloadPolicyConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Autopilot' with the minimum fields required to make a request.
newAutopilot ::
  Autopilot
newAutopilot =
  Autopilot
    { enabled = Core.Nothing,
      workloadPolicyConfig = Core.Nothing
    }

instance Core.FromJSON Autopilot where
  parseJSON =
    Core.withObject
      "Autopilot"
      ( \o ->
          Autopilot
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "workloadPolicyConfig")
      )

instance Core.ToJSON Autopilot where
  toJSON Autopilot {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("workloadPolicyConfig" Core..=) Core.<$> workloadPolicyConfig
          ]
      )

-- | AutopilotCompatibilityIssue contains information about a specific compatibility issue with Autopilot mode.
--
-- /See:/ 'newAutopilotCompatibilityIssue' smart constructor.
data AutopilotCompatibilityIssue = AutopilotCompatibilityIssue
  { -- | The constraint type of the issue.
    constraintType :: (Core.Maybe Core.Text),
    -- | The description of the issue.
    description :: (Core.Maybe Core.Text),
    -- | A URL to a public documentation, which addresses resolving this issue.
    documentationUrl :: (Core.Maybe Core.Text),
    -- | The incompatibility type of this issue.
    incompatibilityType :: (Core.Maybe AutopilotCompatibilityIssue_IncompatibilityType),
    -- | The last time when this issue was observed.
    lastObservation :: (Core.Maybe Core.DateTime),
    -- | The name of the resources which are subject to this issue.
    subjects :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutopilotCompatibilityIssue' with the minimum fields required to make a request.
newAutopilotCompatibilityIssue ::
  AutopilotCompatibilityIssue
newAutopilotCompatibilityIssue =
  AutopilotCompatibilityIssue
    { constraintType = Core.Nothing,
      description = Core.Nothing,
      documentationUrl = Core.Nothing,
      incompatibilityType = Core.Nothing,
      lastObservation = Core.Nothing,
      subjects = Core.Nothing
    }

instance Core.FromJSON AutopilotCompatibilityIssue where
  parseJSON =
    Core.withObject
      "AutopilotCompatibilityIssue"
      ( \o ->
          AutopilotCompatibilityIssue
            Core.<$> (o Core..:? "constraintType")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "documentationUrl")
            Core.<*> (o Core..:? "incompatibilityType")
            Core.<*> (o Core..:? "lastObservation")
            Core.<*> (o Core..:? "subjects")
      )

instance Core.ToJSON AutopilotCompatibilityIssue where
  toJSON AutopilotCompatibilityIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("constraintType" Core..=) Core.<$> constraintType,
            ("description" Core..=) Core.<$> description,
            ("documentationUrl" Core..=) Core.<$> documentationUrl,
            ("incompatibilityType" Core..=) Core.<$> incompatibilityType,
            ("lastObservation" Core..=) Core.<$> lastObservation,
            ("subjects" Core..=) Core.<$> subjects
          ]
      )

-- | AutopilotConfig contains configuration of autopilot feature for this nodepool.
--
-- /See:/ 'newAutopilotConfig' smart constructor.
newtype AutopilotConfig = AutopilotConfig
  { -- | Denotes that nodes belonging to this node pool are Autopilot nodes.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutopilotConfig' with the minimum fields required to make a request.
newAutopilotConfig ::
  AutopilotConfig
newAutopilotConfig = AutopilotConfig {enabled = Core.Nothing}

instance Core.FromJSON AutopilotConfig where
  parseJSON =
    Core.withObject
      "AutopilotConfig"
      (\o -> AutopilotConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON AutopilotConfig where
  toJSON AutopilotConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
--
-- /See:/ 'newAutoprovisioningNodePoolDefaults' smart constructor.
data AutoprovisioningNodePoolDefaults = AutoprovisioningNodePoolDefaults
  { -- | The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects\/[KEY/PROJECT/ID]\/locations\/[LOCATION]\/keyRings\/[RING/NAME]\/cryptoKeys\/[KEY/NAME]. For more information about protecting resources with Cloud KMS Keys please see: https:\/\/cloud.google.com\/compute\/docs\/disks\/customer-managed-encryption
    bootDiskKmsKey :: (Core.Maybe Core.Text),
    -- | Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
    diskSizeGb :: (Core.Maybe Core.Int32),
    -- | Type of the disk attached to each node (e.g. \'pd-standard\', \'pd-ssd\' or \'pd-balanced\') If unspecified, the default disk type is \'pd-standard\'
    diskType :: (Core.Maybe Core.Text),
    -- | The image type to use for NAP created node. Please see https:\/\/cloud.google.com\/kubernetes-engine\/docs\/concepts\/node-images for available image types.
    imageType :: (Core.Maybe Core.Text),
    -- | Enable or disable Kubelet read only port.
    insecureKubeletReadonlyPortEnabled :: (Core.Maybe Core.Bool),
    -- | Specifies the node management options for NAP created node-pools.
    management :: (Core.Maybe NodeManagement),
    -- | Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read <https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform how to specify min CPU platform>. This field is deprecated, min/cpu/platform should be specified using @cloud.google.com\/requested-min-cpu-platform@ label selector on the pod. To unset the min cpu platform field pass \"automatic\" as field value.
    minCpuPlatform :: (Core.Maybe Core.Text),
    -- | Scopes that are used by NAP when creating node pools.
    oauthScopes :: (Core.Maybe [Core.Text]),
    -- | The Google Cloud Platform Service Account to be used by the node VMs.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Shielded Instance options.
    shieldedInstanceConfig :: (Core.Maybe ShieldedInstanceConfig),
    -- | Specifies the upgrade settings for NAP created node pools
    upgradeSettings :: (Core.Maybe UpgradeSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoprovisioningNodePoolDefaults' with the minimum fields required to make a request.
newAutoprovisioningNodePoolDefaults ::
  AutoprovisioningNodePoolDefaults
newAutoprovisioningNodePoolDefaults =
  AutoprovisioningNodePoolDefaults
    { bootDiskKmsKey = Core.Nothing,
      diskSizeGb = Core.Nothing,
      diskType = Core.Nothing,
      imageType = Core.Nothing,
      insecureKubeletReadonlyPortEnabled = Core.Nothing,
      management = Core.Nothing,
      minCpuPlatform = Core.Nothing,
      oauthScopes = Core.Nothing,
      serviceAccount = Core.Nothing,
      shieldedInstanceConfig = Core.Nothing,
      upgradeSettings = Core.Nothing
    }

instance Core.FromJSON AutoprovisioningNodePoolDefaults where
  parseJSON =
    Core.withObject
      "AutoprovisioningNodePoolDefaults"
      ( \o ->
          AutoprovisioningNodePoolDefaults
            Core.<$> (o Core..:? "bootDiskKmsKey")
            Core.<*> (o Core..:? "diskSizeGb")
            Core.<*> (o Core..:? "diskType")
            Core.<*> (o Core..:? "imageType")
            Core.<*> (o Core..:? "insecureKubeletReadonlyPortEnabled")
            Core.<*> (o Core..:? "management")
            Core.<*> (o Core..:? "minCpuPlatform")
            Core.<*> (o Core..:? "oauthScopes")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "shieldedInstanceConfig")
            Core.<*> (o Core..:? "upgradeSettings")
      )

instance Core.ToJSON AutoprovisioningNodePoolDefaults where
  toJSON AutoprovisioningNodePoolDefaults {..} =
    Core.object
      ( Core.catMaybes
          [ ("bootDiskKmsKey" Core..=) Core.<$> bootDiskKmsKey,
            ("diskSizeGb" Core..=) Core.<$> diskSizeGb,
            ("diskType" Core..=) Core.<$> diskType,
            ("imageType" Core..=) Core.<$> imageType,
            ("insecureKubeletReadonlyPortEnabled" Core..=)
              Core.<$> insecureKubeletReadonlyPortEnabled,
            ("management" Core..=) Core.<$> management,
            ("minCpuPlatform" Core..=) Core.<$> minCpuPlatform,
            ("oauthScopes" Core..=) Core.<$> oauthScopes,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("shieldedInstanceConfig" Core..=) Core.<$> shieldedInstanceConfig,
            ("upgradeSettings" Core..=) Core.<$> upgradeSettings
          ]
      )

-- | Best effort provisioning.
--
-- /See:/ 'newBestEffortProvisioning' smart constructor.
data BestEffortProvisioning = BestEffortProvisioning
  { -- | When this is enabled, cluster\/node pool creations will ignore non-fatal errors like stockout to best provision as many nodes as possible right now and eventually bring up all target number of nodes
    enabled :: (Core.Maybe Core.Bool),
    -- | Minimum number of nodes to be provisioned to be considered as succeeded, and the rest of nodes will be provisioned gradually and eventually when stockout issue has been resolved.
    minProvisionNodes :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BestEffortProvisioning' with the minimum fields required to make a request.
newBestEffortProvisioning ::
  BestEffortProvisioning
newBestEffortProvisioning =
  BestEffortProvisioning
    { enabled = Core.Nothing,
      minProvisionNodes = Core.Nothing
    }

instance Core.FromJSON BestEffortProvisioning where
  parseJSON =
    Core.withObject
      "BestEffortProvisioning"
      ( \o ->
          BestEffortProvisioning
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "minProvisionNodes")
      )

instance Core.ToJSON BestEffortProvisioning where
  toJSON BestEffortProvisioning {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("minProvisionNodes" Core..=) Core.<$> minProvisionNodes
          ]
      )

-- | Parameters for using BigQuery as the destination of resource usage export.
--
-- /See:/ 'newBigQueryDestination' smart constructor.
newtype BigQueryDestination = BigQueryDestination
  { -- | The ID of a BigQuery Dataset.
    datasetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDestination' with the minimum fields required to make a request.
newBigQueryDestination ::
  BigQueryDestination
newBigQueryDestination =
  BigQueryDestination {datasetId = Core.Nothing}

instance Core.FromJSON BigQueryDestination where
  parseJSON =
    Core.withObject
      "BigQueryDestination"
      (\o -> BigQueryDestination Core.<$> (o Core..:? "datasetId"))

instance Core.ToJSON BigQueryDestination where
  toJSON BigQueryDestination {..} =
    Core.object
      (Core.catMaybes [("datasetId" Core..=) Core.<$> datasetId])

-- | Configuration for Binary Authorization.
--
-- /See:/ 'newBinaryAuthorization' smart constructor.
data BinaryAuthorization = BinaryAuthorization
  { -- | This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation/mode. If evaluation/mode is set to anything other than EVALUATION/MODE/UNSPECIFIED, this field is ignored.
    enabled :: (Core.Maybe Core.Bool),
    -- | Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
    evaluationMode :: (Core.Maybe BinaryAuthorization_EvaluationMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorization' with the minimum fields required to make a request.
newBinaryAuthorization ::
  BinaryAuthorization
newBinaryAuthorization =
  BinaryAuthorization
    { enabled = Core.Nothing,
      evaluationMode = Core.Nothing
    }

instance Core.FromJSON BinaryAuthorization where
  parseJSON =
    Core.withObject
      "BinaryAuthorization"
      ( \o ->
          BinaryAuthorization
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "evaluationMode")
      )

instance Core.ToJSON BinaryAuthorization where
  toJSON BinaryAuthorization {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("evaluationMode" Core..=) Core.<$> evaluationMode
          ]
      )

-- | Information relevant to blue-green upgrade.
--
-- /See:/ 'newBlueGreenInfo' smart constructor.
data BlueGreenInfo = BlueGreenInfo
  { -- | The resource URLs of the [managed instance groups] (\/compute\/docs\/instance-groups\/creating-groups-of-managed-instances) associated with blue pool.
    blueInstanceGroupUrls :: (Core.Maybe [Core.Text]),
    -- | Time to start deleting blue pool to complete blue-green upgrade, in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    bluePoolDeletionStartTime :: (Core.Maybe Core.Text),
    -- | The resource URLs of the [managed instance groups] (\/compute\/docs\/instance-groups\/creating-groups-of-managed-instances) associated with green pool.
    greenInstanceGroupUrls :: (Core.Maybe [Core.Text]),
    -- | Version of green pool.
    greenPoolVersion :: (Core.Maybe Core.Text),
    -- | Current blue-green upgrade phase.
    phase :: (Core.Maybe BlueGreenInfo_Phase)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BlueGreenInfo' with the minimum fields required to make a request.
newBlueGreenInfo ::
  BlueGreenInfo
newBlueGreenInfo =
  BlueGreenInfo
    { blueInstanceGroupUrls = Core.Nothing,
      bluePoolDeletionStartTime = Core.Nothing,
      greenInstanceGroupUrls = Core.Nothing,
      greenPoolVersion = Core.Nothing,
      phase = Core.Nothing
    }

instance Core.FromJSON BlueGreenInfo where
  parseJSON =
    Core.withObject
      "BlueGreenInfo"
      ( \o ->
          BlueGreenInfo
            Core.<$> (o Core..:? "blueInstanceGroupUrls")
            Core.<*> (o Core..:? "bluePoolDeletionStartTime")
            Core.<*> (o Core..:? "greenInstanceGroupUrls")
            Core.<*> (o Core..:? "greenPoolVersion")
            Core.<*> (o Core..:? "phase")
      )

instance Core.ToJSON BlueGreenInfo where
  toJSON BlueGreenInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("blueInstanceGroupUrls" Core..=) Core.<$> blueInstanceGroupUrls,
            ("bluePoolDeletionStartTime" Core..=)
              Core.<$> bluePoolDeletionStartTime,
            ("greenInstanceGroupUrls" Core..=) Core.<$> greenInstanceGroupUrls,
            ("greenPoolVersion" Core..=) Core.<$> greenPoolVersion,
            ("phase" Core..=) Core.<$> phase
          ]
      )

-- | Settings for blue-green upgrade.
--
-- /See:/ 'newBlueGreenSettings' smart constructor.
data BlueGreenSettings = BlueGreenSettings
  { -- | Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
    nodePoolSoakDuration :: (Core.Maybe Core.Duration),
    -- | Standard policy for the blue-green upgrade.
    standardRolloutPolicy :: (Core.Maybe StandardRolloutPolicy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BlueGreenSettings' with the minimum fields required to make a request.
newBlueGreenSettings ::
  BlueGreenSettings
newBlueGreenSettings =
  BlueGreenSettings
    { nodePoolSoakDuration = Core.Nothing,
      standardRolloutPolicy = Core.Nothing
    }

instance Core.FromJSON BlueGreenSettings where
  parseJSON =
    Core.withObject
      "BlueGreenSettings"
      ( \o ->
          BlueGreenSettings
            Core.<$> (o Core..:? "nodePoolSoakDuration")
            Core.<*> (o Core..:? "standardRolloutPolicy")
      )

instance Core.ToJSON BlueGreenSettings where
  toJSON BlueGreenSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("nodePoolSoakDuration" Core..=) Core.<$> nodePoolSoakDuration,
            ("standardRolloutPolicy" Core..=) Core.<$> standardRolloutPolicy
          ]
      )

-- | CancelOperationRequest cancels a single operation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  { -- | The name (project, location, operation id) of the operation to cancel. Specified in the format @projects\/*\/locations\/*\/operations\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The server-assigned @name@ of the operation. This field has been deprecated and replaced by the name field.
    operationId :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the operation resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest =
  CancelOperationRequest
    { name = Core.Nothing,
      operationId = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      ( \o ->
          CancelOperationRequest
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "operationId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON CancelOperationRequest where
  toJSON CancelOperationRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("operationId" Core..=) Core.<$> operationId,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | CertificateAuthorityDomainConfig configures one or more fully qualified domain names (FQDN) to a specific certificate.
--
-- /See:/ 'newCertificateAuthorityDomainConfig' smart constructor.
data CertificateAuthorityDomainConfig = CertificateAuthorityDomainConfig
  { -- | List of fully qualified domain names (FQDN). Specifying port is supported. Wildcards are NOT supported. Examples: - my.customdomain.com - 10.0.1.2:5000
    fqdns :: (Core.Maybe [Core.Text]),
    -- | Google Secret Manager (GCP) certificate configuration.
    gcpSecretManagerCertificateConfig :: (Core.Maybe GCPSecretManagerCertificateConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CertificateAuthorityDomainConfig' with the minimum fields required to make a request.
newCertificateAuthorityDomainConfig ::
  CertificateAuthorityDomainConfig
newCertificateAuthorityDomainConfig =
  CertificateAuthorityDomainConfig
    { fqdns = Core.Nothing,
      gcpSecretManagerCertificateConfig = Core.Nothing
    }

instance Core.FromJSON CertificateAuthorityDomainConfig where
  parseJSON =
    Core.withObject
      "CertificateAuthorityDomainConfig"
      ( \o ->
          CertificateAuthorityDomainConfig
            Core.<$> (o Core..:? "fqdns")
            Core.<*> (o Core..:? "gcpSecretManagerCertificateConfig")
      )

instance Core.ToJSON CertificateAuthorityDomainConfig where
  toJSON CertificateAuthorityDomainConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("fqdns" Core..=) Core.<$> fqdns,
            ("gcpSecretManagerCertificateConfig" Core..=)
              Core.<$> gcpSecretManagerCertificateConfig
          ]
      )

-- | CheckAutopilotCompatibilityResponse has a list of compatibility issues.
--
-- /See:/ 'newCheckAutopilotCompatibilityResponse' smart constructor.
data CheckAutopilotCompatibilityResponse = CheckAutopilotCompatibilityResponse
  { -- | The list of issues for the given operation.
    issues :: (Core.Maybe [AutopilotCompatibilityIssue]),
    -- | The summary of the autopilot compatibility response.
    summary :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckAutopilotCompatibilityResponse' with the minimum fields required to make a request.
newCheckAutopilotCompatibilityResponse ::
  CheckAutopilotCompatibilityResponse
newCheckAutopilotCompatibilityResponse =
  CheckAutopilotCompatibilityResponse
    { issues = Core.Nothing,
      summary = Core.Nothing
    }

instance Core.FromJSON CheckAutopilotCompatibilityResponse where
  parseJSON =
    Core.withObject
      "CheckAutopilotCompatibilityResponse"
      ( \o ->
          CheckAutopilotCompatibilityResponse
            Core.<$> (o Core..:? "issues")
            Core.<*> (o Core..:? "summary")
      )

instance Core.ToJSON CheckAutopilotCompatibilityResponse where
  toJSON CheckAutopilotCompatibilityResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("issues" Core..=) Core.<$> issues,
            ("summary" Core..=) Core.<$> summary
          ]
      )

-- | CidrBlock contains an optional name and one CIDR block.
--
-- /See:/ 'newCidrBlock' smart constructor.
data CidrBlock = CidrBlock
  { -- | cidr_block must be specified in CIDR notation.
    cidrBlock :: (Core.Maybe Core.Text),
    -- | display_name is an optional field for users to identify CIDR blocks.
    displayName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CidrBlock' with the minimum fields required to make a request.
newCidrBlock ::
  CidrBlock
newCidrBlock =
  CidrBlock {cidrBlock = Core.Nothing, displayName = Core.Nothing}

instance Core.FromJSON CidrBlock where
  parseJSON =
    Core.withObject
      "CidrBlock"
      ( \o ->
          CidrBlock
            Core.<$> (o Core..:? "cidrBlock")
            Core.<*> (o Core..:? "displayName")
      )

instance Core.ToJSON CidrBlock where
  toJSON CidrBlock {..} =
    Core.object
      ( Core.catMaybes
          [ ("cidrBlock" Core..=) Core.<$> cidrBlock,
            ("displayName" Core..=) Core.<$> displayName
          ]
      )

-- | Configuration for client certificates on the cluster.
--
-- /See:/ 'newClientCertificateConfig' smart constructor.
newtype ClientCertificateConfig = ClientCertificateConfig
  { -- | Issue a client certificate.
    issueClientCertificate :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClientCertificateConfig' with the minimum fields required to make a request.
newClientCertificateConfig ::
  ClientCertificateConfig
newClientCertificateConfig =
  ClientCertificateConfig {issueClientCertificate = Core.Nothing}

instance Core.FromJSON ClientCertificateConfig where
  parseJSON =
    Core.withObject
      "ClientCertificateConfig"
      ( \o ->
          ClientCertificateConfig
            Core.<$> (o Core..:? "issueClientCertificate")
      )

instance Core.ToJSON ClientCertificateConfig where
  toJSON ClientCertificateConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("issueClientCertificate" Core..=)
              Core.<$> issueClientCertificate
          ]
      )

-- | Configuration options for the Cloud Run feature.
--
-- /See:/ 'newCloudRunConfig' smart constructor.
data CloudRunConfig = CloudRunConfig
  { -- | Whether Cloud Run addon is enabled for this cluster.
    disabled :: (Core.Maybe Core.Bool),
    -- | Which load balancer type is installed for Cloud Run.
    loadBalancerType :: (Core.Maybe CloudRunConfig_LoadBalancerType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudRunConfig' with the minimum fields required to make a request.
newCloudRunConfig ::
  CloudRunConfig
newCloudRunConfig =
  CloudRunConfig
    { disabled = Core.Nothing,
      loadBalancerType = Core.Nothing
    }

instance Core.FromJSON CloudRunConfig where
  parseJSON =
    Core.withObject
      "CloudRunConfig"
      ( \o ->
          CloudRunConfig
            Core.<$> (o Core..:? "disabled")
            Core.<*> (o Core..:? "loadBalancerType")
      )

instance Core.ToJSON CloudRunConfig where
  toJSON CloudRunConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("disabled" Core..=) Core.<$> disabled,
            ("loadBalancerType" Core..=) Core.<$> loadBalancerType
          ]
      )

-- | A Google Kubernetes Engine cluster.
--
-- /See:/ 'newCluster' smart constructor.
data Cluster = Cluster
  { -- | Configurations for the various addons available to run in the cluster.
    addonsConfig :: (Core.Maybe AddonsConfig),
    -- | Configuration controlling RBAC group membership information.
    authenticatorGroupsConfig :: (Core.Maybe AuthenticatorGroupsConfig),
    -- | Autopilot configuration for the cluster.
    autopilot :: (Core.Maybe Autopilot),
    -- | Cluster-level autoscaling configuration.
    autoscaling :: (Core.Maybe ClusterAutoscaling),
    -- | Configuration for Binary Authorization.
    binaryAuthorization :: (Core.Maybe BinaryAuthorization),
    -- | The IP address range of the container pods in this cluster, in <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@). Leave blank to have one automatically chosen or specify a @\/14@ block in @10.0.0.0\/8@.
    clusterIpv4Cidr :: (Core.Maybe Core.Text),
    -- | Enable\/Disable Compliance Posture features for the cluster.
    compliancePostureConfig :: (Core.Maybe CompliancePostureConfig),
    -- | Which conditions caused the current cluster state.
    conditions :: (Core.Maybe [StatusCondition]),
    -- | Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
    confidentialNodes :: (Core.Maybe ConfidentialNodes),
    -- | Configuration for all cluster\'s control plane endpoints.
    controlPlaneEndpointsConfig :: (Core.Maybe ControlPlaneEndpointsConfig),
    -- | Configuration for the fine-grained cost management feature.
    costManagementConfig :: (Core.Maybe CostManagementConfig),
    -- | Output only. The time the cluster was created, in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    createTime :: (Core.Maybe Core.Text),
    -- | Output only. The current software version of the master endpoint.
    currentMasterVersion :: (Core.Maybe Core.Text),
    -- | Output only. The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
    currentNodeCount :: (Core.Maybe Core.Int32),
    -- | Output only. Deprecated, use <https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools NodePools.version> instead. The current version of the node software components. If they are currently at multiple versions because they\'re in the process of being upgraded, this reflects the minimum version of all nodes.
    currentNodeVersion :: (Core.Maybe Core.Text),
    -- | Configuration of etcd encryption.
    databaseEncryption :: (Core.Maybe DatabaseEncryption),
    -- | The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
    defaultMaxPodsConstraint :: (Core.Maybe MaxPodsConstraint),
    -- | An optional description of this cluster.
    description :: (Core.Maybe Core.Text),
    -- | Beta APIs Config
    enableK8sBetaApis :: (Core.Maybe K8sBetaAPIConfig),
    -- | Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alpha1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master\/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
    enableKubernetesAlpha :: (Core.Maybe Core.Bool),
    -- | Enable the ability to use Cloud TPUs in this cluster. This field is deprecated due to the deprecation of 2VM TPU. The end of life date for 2VM TPU is 2025-04-25.
    enableTpu :: (Core.Maybe Core.Bool),
    -- | Output only. The IP address of this cluster\'s master endpoint. The endpoint can be accessed from the internet at @https:\/\/username:password\@endpoint\/@. See the @masterAuth@ property of this resource for username and password information.
    endpoint :: (Core.Maybe Core.Text),
    -- | GKE Enterprise Configuration.
    enterpriseConfig :: (Core.Maybe EnterpriseConfig),
    -- | This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
    etag :: (Core.Maybe Core.Text),
    -- | Output only. The time the cluster will be automatically deleted in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    expireTime :: (Core.Maybe Core.Text),
    -- | Fleet information for the cluster.
    fleet :: (Core.Maybe Fleet),
    -- | Output only. Unique id for the cluster.
    id :: (Core.Maybe Core.Text),
    -- | Configuration for Identity Service component.
    identityServiceConfig :: (Core.Maybe IdentityServiceConfig),
    -- | The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"\",\"-\": picks the default Kubernetes version
    initialClusterVersion :: (Core.Maybe Core.Text),
    -- | The number of nodes to create in this cluster. You must ensure that your Compute Engine <https://cloud.google.com/compute/quotas resource quota> is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a \"node/pool\" object, since this configuration (along with the \"node/config\") will be used to create a \"NodePool\" object with an auto-generated name. Do not use this and a node/pool at the same time. This field is deprecated, use node/pool.initial/node/count instead.
    initialNodeCount :: (Core.Maybe Core.Int32),
    -- | Output only. Deprecated. Use node/pools.instance/group_urls.
    instanceGroupUrls :: (Core.Maybe [Core.Text]),
    -- | Configuration for cluster IP allocation.
    ipAllocationPolicy :: (Core.Maybe IPAllocationPolicy),
    -- | The fingerprint of the set of labels for this cluster.
    labelFingerprint :: (Core.Maybe Core.Text),
    -- | Configuration for the legacy ABAC authorization mode.
    legacyAbac :: (Core.Maybe LegacyAbac),
    location :: (Core.Maybe Core.Text),
    -- | The list of Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zones> in which the cluster\'s nodes should be located. This field provides a default value if <https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations NodePool.Locations> are not specified during node pool creation. Warning: changing cluster locations will update the <https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations NodePool.Locations> of all node pools and will result in nodes being added and\/or removed.
    locations :: (Core.Maybe [Core.Text]),
    -- | Logging configuration for the cluster.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | The logging service the cluster should use to write logs. Currently available options: * @logging.googleapis.com\/kubernetes@ - The Cloud Logging service with a Kubernetes-native resource model * @logging.googleapis.com@ - The legacy Cloud Logging service (no longer available as of GKE 1.15). * @none@ - no logs will be exported from the cluster. If left as an empty string,@logging.googleapis.com\/kubernetes@ will be used for GKE 1.14+ or @logging.googleapis.com@ for earlier versions.
    loggingService :: (Core.Maybe Core.Text),
    -- | Configure the maintenance policy for this cluster.
    maintenancePolicy :: (Core.Maybe MaintenancePolicy),
    -- | The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, @username@ will be set to \"admin\", a random password will be generated, and a client certificate will be issued.
    masterAuth :: (Core.Maybe MasterAuth),
    -- | The configuration options for master authorized networks feature. Deprecated: Use ControlPlaneEndpointsConfig.IPEndpointsConfig.authorized/networks/config instead.
    masterAuthorizedNetworksConfig :: (Core.Maybe MasterAuthorizedNetworksConfig),
    -- | Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
    meshCertificates :: (Core.Maybe MeshCertificates),
    -- | Monitoring configuration for the cluster.
    monitoringConfig :: (Core.Maybe MonitoringConfig),
    -- | The monitoring service the cluster should use to write metrics. Currently available options: * \"monitoring.googleapis.com\/kubernetes\" - The Cloud Monitoring service with a Kubernetes-native resource model * @monitoring.googleapis.com@ - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * @none@ - No metrics will be exported from the cluster. If left as an empty string,@monitoring.googleapis.com\/kubernetes@ will be used for GKE 1.14+ or @monitoring.googleapis.com@ for earlier versions.
    monitoringService :: (Core.Maybe Core.Text),
    -- | The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
    name :: (Core.Maybe Core.Text),
    -- | The name of the Google Compute Engine <https://cloud.google.com/compute/docs/networks-and-firewalls#networks network> to which the cluster is connected. If left unspecified, the @default@ network will be used.
    network :: (Core.Maybe Core.Text),
    -- | Configuration for cluster networking.
    networkConfig :: (Core.Maybe NetworkConfig),
    -- | Configuration options for the NetworkPolicy feature.
    networkPolicy :: (Core.Maybe NetworkPolicy),
    -- | Parameters used in creating the cluster\'s nodes. For requests, this field should only be used in lieu of a \"node/pool\" object, since this configuration (along with the \"initial/node/count\") will be used to create a \"NodePool\" object with an auto-generated name. Do not use this and a node/pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see @node_pool.config@) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
    nodeConfig :: (Core.Maybe NodeConfig),
    -- | Output only. The size of the address space on each node for hosting containers. This is provisioned from within the @container_ipv4_cidr@ range. This field will only be set when cluster is in route-based network mode.
    nodeIpv4CidrSize :: (Core.Maybe Core.Int32),
    -- | Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
    nodePoolAutoConfig :: (Core.Maybe NodePoolAutoConfig),
    -- | Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
    nodePoolDefaults :: (Core.Maybe NodePoolDefaults),
    -- | The node pools associated with this cluster. This field should not be set if \"node/config\" or \"initial/node_count\" are specified.
    nodePools :: (Core.Maybe [NodePool]),
    -- | Notification configuration of the cluster.
    notificationConfig :: (Core.Maybe NotificationConfig),
    -- | The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
    parentProductConfig :: (Core.Maybe ParentProductConfig),
    -- | Configuration for private cluster.
    privateClusterConfig :: (Core.Maybe PrivateClusterConfig),
    -- | RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created.
    rbacBindingConfig :: (Core.Maybe RBACBindingConfig),
    -- | Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
    releaseChannel :: (Core.Maybe ReleaseChannel),
    -- | The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
    resourceLabels :: (Core.Maybe Cluster_ResourceLabels),
    -- | Configuration for exporting resource usages. Resource usage export is disabled when this config is unspecified.
    resourceUsageExportConfig :: (Core.Maybe ResourceUsageExportConfig),
    -- | Output only. Reserved for future use.
    satisfiesPzi :: (Core.Maybe Core.Bool),
    -- | Output only. Reserved for future use.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | Secret CSI driver configuration.
    secretManagerConfig :: (Core.Maybe SecretManagerConfig),
    -- | Enable\/Disable Security Posture API features for the cluster.
    securityPostureConfig :: (Core.Maybe SecurityPostureConfig),
    -- | Output only. Server-defined URL for the resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | Output only. The IP address range of the Kubernetes services in this cluster, in <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @1.2.3.4\/29@). Service addresses are typically put in the last @\/16@ from the container CIDR.
    servicesIpv4Cidr :: (Core.Maybe Core.Text),
    -- | Shielded Nodes configuration.
    shieldedNodes :: (Core.Maybe ShieldedNodes),
    -- | Output only. The current status of this cluster.
    status :: (Core.Maybe Cluster_Status),
    -- | Output only. Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
    statusMessage :: (Core.Maybe Core.Text),
    -- | The name of the Google Compute Engine <https://cloud.google.com/compute/docs/subnetworks subnetwork> to which the cluster is connected.
    subnetwork :: (Core.Maybe Core.Text),
    -- | Output only. The IP address range of the Cloud TPUs in this cluster, in <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @1.2.3.4\/29@). This field is deprecated due to the deprecation of 2VM TPU. The end of life date for 2VM TPU is 2025-04-25.
    tpuIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | The Custom keys configuration for the cluster.
    userManagedKeysConfig :: (Core.Maybe UserManagedKeysConfig),
    -- | Cluster-level Vertical Pod Autoscaling configuration.
    verticalPodAutoscaling :: (Core.Maybe VerticalPodAutoscaling),
    -- | Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
    workloadIdentityConfig :: (Core.Maybe WorkloadIdentityConfig),
    -- | Output only. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field is deprecated, use location instead.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
newCluster ::
  Cluster
newCluster =
  Cluster
    { addonsConfig = Core.Nothing,
      authenticatorGroupsConfig = Core.Nothing,
      autopilot = Core.Nothing,
      autoscaling = Core.Nothing,
      binaryAuthorization = Core.Nothing,
      clusterIpv4Cidr = Core.Nothing,
      compliancePostureConfig = Core.Nothing,
      conditions = Core.Nothing,
      confidentialNodes = Core.Nothing,
      controlPlaneEndpointsConfig = Core.Nothing,
      costManagementConfig = Core.Nothing,
      createTime = Core.Nothing,
      currentMasterVersion = Core.Nothing,
      currentNodeCount = Core.Nothing,
      currentNodeVersion = Core.Nothing,
      databaseEncryption = Core.Nothing,
      defaultMaxPodsConstraint = Core.Nothing,
      description = Core.Nothing,
      enableK8sBetaApis = Core.Nothing,
      enableKubernetesAlpha = Core.Nothing,
      enableTpu = Core.Nothing,
      endpoint = Core.Nothing,
      enterpriseConfig = Core.Nothing,
      etag = Core.Nothing,
      expireTime = Core.Nothing,
      fleet = Core.Nothing,
      id = Core.Nothing,
      identityServiceConfig = Core.Nothing,
      initialClusterVersion = Core.Nothing,
      initialNodeCount = Core.Nothing,
      instanceGroupUrls = Core.Nothing,
      ipAllocationPolicy = Core.Nothing,
      labelFingerprint = Core.Nothing,
      legacyAbac = Core.Nothing,
      location = Core.Nothing,
      locations = Core.Nothing,
      loggingConfig = Core.Nothing,
      loggingService = Core.Nothing,
      maintenancePolicy = Core.Nothing,
      masterAuth = Core.Nothing,
      masterAuthorizedNetworksConfig = Core.Nothing,
      meshCertificates = Core.Nothing,
      monitoringConfig = Core.Nothing,
      monitoringService = Core.Nothing,
      name = Core.Nothing,
      network = Core.Nothing,
      networkConfig = Core.Nothing,
      networkPolicy = Core.Nothing,
      nodeConfig = Core.Nothing,
      nodeIpv4CidrSize = Core.Nothing,
      nodePoolAutoConfig = Core.Nothing,
      nodePoolDefaults = Core.Nothing,
      nodePools = Core.Nothing,
      notificationConfig = Core.Nothing,
      parentProductConfig = Core.Nothing,
      privateClusterConfig = Core.Nothing,
      rbacBindingConfig = Core.Nothing,
      releaseChannel = Core.Nothing,
      resourceLabels = Core.Nothing,
      resourceUsageExportConfig = Core.Nothing,
      satisfiesPzi = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      secretManagerConfig = Core.Nothing,
      securityPostureConfig = Core.Nothing,
      selfLink = Core.Nothing,
      servicesIpv4Cidr = Core.Nothing,
      shieldedNodes = Core.Nothing,
      status = Core.Nothing,
      statusMessage = Core.Nothing,
      subnetwork = Core.Nothing,
      tpuIpv4CidrBlock = Core.Nothing,
      userManagedKeysConfig = Core.Nothing,
      verticalPodAutoscaling = Core.Nothing,
      workloadIdentityConfig = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON Cluster where
  parseJSON =
    Core.withObject
      "Cluster"
      ( \o ->
          Cluster
            Core.<$> (o Core..:? "addonsConfig")
            Core.<*> (o Core..:? "authenticatorGroupsConfig")
            Core.<*> (o Core..:? "autopilot")
            Core.<*> (o Core..:? "autoscaling")
            Core.<*> (o Core..:? "binaryAuthorization")
            Core.<*> (o Core..:? "clusterIpv4Cidr")
            Core.<*> (o Core..:? "compliancePostureConfig")
            Core.<*> (o Core..:? "conditions")
            Core.<*> (o Core..:? "confidentialNodes")
            Core.<*> (o Core..:? "controlPlaneEndpointsConfig")
            Core.<*> (o Core..:? "costManagementConfig")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "currentMasterVersion")
            Core.<*> (o Core..:? "currentNodeCount")
            Core.<*> (o Core..:? "currentNodeVersion")
            Core.<*> (o Core..:? "databaseEncryption")
            Core.<*> (o Core..:? "defaultMaxPodsConstraint")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "enableK8sBetaApis")
            Core.<*> (o Core..:? "enableKubernetesAlpha")
            Core.<*> (o Core..:? "enableTpu")
            Core.<*> (o Core..:? "endpoint")
            Core.<*> (o Core..:? "enterpriseConfig")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "fleet")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "identityServiceConfig")
            Core.<*> (o Core..:? "initialClusterVersion")
            Core.<*> (o Core..:? "initialNodeCount")
            Core.<*> (o Core..:? "instanceGroupUrls")
            Core.<*> (o Core..:? "ipAllocationPolicy")
            Core.<*> (o Core..:? "labelFingerprint")
            Core.<*> (o Core..:? "legacyAbac")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "loggingService")
            Core.<*> (o Core..:? "maintenancePolicy")
            Core.<*> (o Core..:? "masterAuth")
            Core.<*> (o Core..:? "masterAuthorizedNetworksConfig")
            Core.<*> (o Core..:? "meshCertificates")
            Core.<*> (o Core..:? "monitoringConfig")
            Core.<*> (o Core..:? "monitoringService")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "networkConfig")
            Core.<*> (o Core..:? "networkPolicy")
            Core.<*> (o Core..:? "nodeConfig")
            Core.<*> (o Core..:? "nodeIpv4CidrSize")
            Core.<*> (o Core..:? "nodePoolAutoConfig")
            Core.<*> (o Core..:? "nodePoolDefaults")
            Core.<*> (o Core..:? "nodePools")
            Core.<*> (o Core..:? "notificationConfig")
            Core.<*> (o Core..:? "parentProductConfig")
            Core.<*> (o Core..:? "privateClusterConfig")
            Core.<*> (o Core..:? "rbacBindingConfig")
            Core.<*> (o Core..:? "releaseChannel")
            Core.<*> (o Core..:? "resourceLabels")
            Core.<*> (o Core..:? "resourceUsageExportConfig")
            Core.<*> (o Core..:? "satisfiesPzi")
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "secretManagerConfig")
            Core.<*> (o Core..:? "securityPostureConfig")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "servicesIpv4Cidr")
            Core.<*> (o Core..:? "shieldedNodes")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "subnetwork")
            Core.<*> (o Core..:? "tpuIpv4CidrBlock")
            Core.<*> (o Core..:? "userManagedKeysConfig")
            Core.<*> (o Core..:? "verticalPodAutoscaling")
            Core.<*> (o Core..:? "workloadIdentityConfig")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON Cluster where
  toJSON Cluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("addonsConfig" Core..=) Core.<$> addonsConfig,
            ("authenticatorGroupsConfig" Core..=)
              Core.<$> authenticatorGroupsConfig,
            ("autopilot" Core..=) Core.<$> autopilot,
            ("autoscaling" Core..=) Core.<$> autoscaling,
            ("binaryAuthorization" Core..=) Core.<$> binaryAuthorization,
            ("clusterIpv4Cidr" Core..=) Core.<$> clusterIpv4Cidr,
            ("compliancePostureConfig" Core..=)
              Core.<$> compliancePostureConfig,
            ("conditions" Core..=) Core.<$> conditions,
            ("confidentialNodes" Core..=) Core.<$> confidentialNodes,
            ("controlPlaneEndpointsConfig" Core..=)
              Core.<$> controlPlaneEndpointsConfig,
            ("costManagementConfig" Core..=) Core.<$> costManagementConfig,
            ("createTime" Core..=) Core.<$> createTime,
            ("currentMasterVersion" Core..=) Core.<$> currentMasterVersion,
            ("currentNodeCount" Core..=) Core.<$> currentNodeCount,
            ("currentNodeVersion" Core..=) Core.<$> currentNodeVersion,
            ("databaseEncryption" Core..=) Core.<$> databaseEncryption,
            ("defaultMaxPodsConstraint" Core..=)
              Core.<$> defaultMaxPodsConstraint,
            ("description" Core..=) Core.<$> description,
            ("enableK8sBetaApis" Core..=) Core.<$> enableK8sBetaApis,
            ("enableKubernetesAlpha" Core..=) Core.<$> enableKubernetesAlpha,
            ("enableTpu" Core..=) Core.<$> enableTpu,
            ("endpoint" Core..=) Core.<$> endpoint,
            ("enterpriseConfig" Core..=) Core.<$> enterpriseConfig,
            ("etag" Core..=) Core.<$> etag,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("fleet" Core..=) Core.<$> fleet,
            ("id" Core..=) Core.<$> id,
            ("identityServiceConfig" Core..=) Core.<$> identityServiceConfig,
            ("initialClusterVersion" Core..=) Core.<$> initialClusterVersion,
            ("initialNodeCount" Core..=) Core.<$> initialNodeCount,
            ("instanceGroupUrls" Core..=) Core.<$> instanceGroupUrls,
            ("ipAllocationPolicy" Core..=) Core.<$> ipAllocationPolicy,
            ("labelFingerprint" Core..=) Core.<$> labelFingerprint,
            ("legacyAbac" Core..=) Core.<$> legacyAbac,
            ("location" Core..=) Core.<$> location,
            ("locations" Core..=) Core.<$> locations,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("loggingService" Core..=) Core.<$> loggingService,
            ("maintenancePolicy" Core..=) Core.<$> maintenancePolicy,
            ("masterAuth" Core..=) Core.<$> masterAuth,
            ("masterAuthorizedNetworksConfig" Core..=)
              Core.<$> masterAuthorizedNetworksConfig,
            ("meshCertificates" Core..=) Core.<$> meshCertificates,
            ("monitoringConfig" Core..=) Core.<$> monitoringConfig,
            ("monitoringService" Core..=) Core.<$> monitoringService,
            ("name" Core..=) Core.<$> name,
            ("network" Core..=) Core.<$> network,
            ("networkConfig" Core..=) Core.<$> networkConfig,
            ("networkPolicy" Core..=) Core.<$> networkPolicy,
            ("nodeConfig" Core..=) Core.<$> nodeConfig,
            ("nodeIpv4CidrSize" Core..=) Core.<$> nodeIpv4CidrSize,
            ("nodePoolAutoConfig" Core..=) Core.<$> nodePoolAutoConfig,
            ("nodePoolDefaults" Core..=) Core.<$> nodePoolDefaults,
            ("nodePools" Core..=) Core.<$> nodePools,
            ("notificationConfig" Core..=) Core.<$> notificationConfig,
            ("parentProductConfig" Core..=) Core.<$> parentProductConfig,
            ("privateClusterConfig" Core..=) Core.<$> privateClusterConfig,
            ("rbacBindingConfig" Core..=) Core.<$> rbacBindingConfig,
            ("releaseChannel" Core..=) Core.<$> releaseChannel,
            ("resourceLabels" Core..=) Core.<$> resourceLabels,
            ("resourceUsageExportConfig" Core..=)
              Core.<$> resourceUsageExportConfig,
            ("satisfiesPzi" Core..=) Core.<$> satisfiesPzi,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("secretManagerConfig" Core..=) Core.<$> secretManagerConfig,
            ("securityPostureConfig" Core..=) Core.<$> securityPostureConfig,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("servicesIpv4Cidr" Core..=) Core.<$> servicesIpv4Cidr,
            ("shieldedNodes" Core..=) Core.<$> shieldedNodes,
            ("status" Core..=) Core.<$> status,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("subnetwork" Core..=) Core.<$> subnetwork,
            ("tpuIpv4CidrBlock" Core..=) Core.<$> tpuIpv4CidrBlock,
            ("userManagedKeysConfig" Core..=) Core.<$> userManagedKeysConfig,
            ("verticalPodAutoscaling" Core..=) Core.<$> verticalPodAutoscaling,
            ("workloadIdentityConfig" Core..=) Core.<$> workloadIdentityConfig,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
--
-- /See:/ 'newCluster_ResourceLabels' smart constructor.
newtype Cluster_ResourceLabels = Cluster_ResourceLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cluster_ResourceLabels' with the minimum fields required to make a request.
newCluster_ResourceLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Cluster_ResourceLabels
newCluster_ResourceLabels additional =
  Cluster_ResourceLabels {additional = additional}

instance Core.FromJSON Cluster_ResourceLabels where
  parseJSON =
    Core.withObject
      "Cluster_ResourceLabels"
      (\o -> Cluster_ResourceLabels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Cluster_ResourceLabels where
  toJSON Cluster_ResourceLabels {..} = Core.toJSON additional

-- | ClusterAutoscaling contains global, per-cluster information required by Cluster Autoscaler to automatically adjust the size of the cluster and create\/delete node pools based on the current needs.
--
-- /See:/ 'newClusterAutoscaling' smart constructor.
data ClusterAutoscaling = ClusterAutoscaling
  { -- | The list of Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zones> in which the NodePool\'s nodes can be created by NAP.
    autoprovisioningLocations :: (Core.Maybe [Core.Text]),
    -- | AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
    autoprovisioningNodePoolDefaults :: (Core.Maybe AutoprovisioningNodePoolDefaults),
    -- | Defines autoscaling behaviour.
    autoscalingProfile :: (Core.Maybe ClusterAutoscaling_AutoscalingProfile),
    -- | Enables automatic node pool creation and deletion.
    enableNodeAutoprovisioning :: (Core.Maybe Core.Bool),
    -- | Contains global constraints regarding minimum and maximum amount of resources in the cluster.
    resourceLimits :: (Core.Maybe [ResourceLimit])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterAutoscaling' with the minimum fields required to make a request.
newClusterAutoscaling ::
  ClusterAutoscaling
newClusterAutoscaling =
  ClusterAutoscaling
    { autoprovisioningLocations = Core.Nothing,
      autoprovisioningNodePoolDefaults = Core.Nothing,
      autoscalingProfile = Core.Nothing,
      enableNodeAutoprovisioning = Core.Nothing,
      resourceLimits = Core.Nothing
    }

instance Core.FromJSON ClusterAutoscaling where
  parseJSON =
    Core.withObject
      "ClusterAutoscaling"
      ( \o ->
          ClusterAutoscaling
            Core.<$> (o Core..:? "autoprovisioningLocations")
            Core.<*> (o Core..:? "autoprovisioningNodePoolDefaults")
            Core.<*> (o Core..:? "autoscalingProfile")
            Core.<*> (o Core..:? "enableNodeAutoprovisioning")
            Core.<*> (o Core..:? "resourceLimits")
      )

instance Core.ToJSON ClusterAutoscaling where
  toJSON ClusterAutoscaling {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoprovisioningLocations" Core..=)
              Core.<$> autoprovisioningLocations,
            ("autoprovisioningNodePoolDefaults" Core..=)
              Core.<$> autoprovisioningNodePoolDefaults,
            ("autoscalingProfile" Core..=) Core.<$> autoscalingProfile,
            ("enableNodeAutoprovisioning" Core..=)
              Core.<$> enableNodeAutoprovisioning,
            ("resourceLimits" Core..=) Core.<$> resourceLimits
          ]
      )

-- | Configuration of network bandwidth tiers
--
-- /See:/ 'newClusterNetworkPerformanceConfig' smart constructor.
newtype ClusterNetworkPerformanceConfig = ClusterNetworkPerformanceConfig
  { -- | Specifies the total network bandwidth tier for NodePools in the cluster.
    totalEgressBandwidthTier ::
      ( Core.Maybe
          ClusterNetworkPerformanceConfig_TotalEgressBandwidthTier
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterNetworkPerformanceConfig' with the minimum fields required to make a request.
newClusterNetworkPerformanceConfig ::
  ClusterNetworkPerformanceConfig
newClusterNetworkPerformanceConfig =
  ClusterNetworkPerformanceConfig
    { totalEgressBandwidthTier =
        Core.Nothing
    }

instance Core.FromJSON ClusterNetworkPerformanceConfig where
  parseJSON =
    Core.withObject
      "ClusterNetworkPerformanceConfig"
      ( \o ->
          ClusterNetworkPerformanceConfig
            Core.<$> (o Core..:? "totalEgressBandwidthTier")
      )

instance Core.ToJSON ClusterNetworkPerformanceConfig where
  toJSON ClusterNetworkPerformanceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("totalEgressBandwidthTier" Core..=)
              Core.<$> totalEgressBandwidthTier
          ]
      )

-- | ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.
--
-- /See:/ 'newClusterUpdate' smart constructor.
data ClusterUpdate = ClusterUpdate
  { -- | The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
    additionalPodRangesConfig :: (Core.Maybe AdditionalPodRangesConfig),
    -- | Configurations for the various addons available to run in the cluster.
    desiredAddonsConfig :: (Core.Maybe AddonsConfig),
    -- | The desired authenticator groups config for the cluster.
    desiredAuthenticatorGroupsConfig :: (Core.Maybe AuthenticatorGroupsConfig),
    -- | WorkloadPolicyConfig is the configuration related to GCW workload policy
    desiredAutopilotWorkloadPolicyConfig :: (Core.Maybe WorkloadPolicyConfig),
    -- | The desired configuration options for the Binary Authorization feature.
    desiredBinaryAuthorization :: (Core.Maybe BinaryAuthorization),
    -- | Cluster-level autoscaling configuration.
    desiredClusterAutoscaling :: (Core.Maybe ClusterAutoscaling),
    -- | Enable\/Disable Compliance Posture features for the cluster.
    desiredCompliancePostureConfig :: (Core.Maybe CompliancePostureConfig),
    -- | The desired containerd config for the cluster.
    desiredContainerdConfig :: (Core.Maybe ContainerdConfig),
    -- | Control plane endpoints configuration.
    desiredControlPlaneEndpointsConfig :: (Core.Maybe ControlPlaneEndpointsConfig),
    -- | The desired configuration for the fine-grained cost management feature.
    desiredCostManagementConfig :: (Core.Maybe CostManagementConfig),
    -- | Configuration of etcd encryption.
    desiredDatabaseEncryption :: (Core.Maybe DatabaseEncryption),
    -- | The desired datapath provider for the cluster.
    desiredDatapathProvider :: (Core.Maybe ClusterUpdate_DesiredDatapathProvider),
    -- | Override the default setting of whether future created nodes have private IP addresses only, namely NetworkConfig.default/enable/private_nodes
    desiredDefaultEnablePrivateNodes :: (Core.Maybe Core.Bool),
    -- | The desired status of whether to disable default sNAT for this cluster.
    desiredDefaultSnatStatus :: (Core.Maybe DefaultSnatStatus),
    -- | Enable\/Disable L4 LB VPC firewall reconciliation for the cluster.
    desiredDisableL4LbFirewallReconciliation :: (Core.Maybe Core.Bool),
    -- | DNSConfig contains clusterDNS config for this cluster.
    desiredDnsConfig :: (Core.Maybe DNSConfig),
    -- | Enable\/Disable Cilium Clusterwide Network Policy for the cluster.
    desiredEnableCiliumClusterwideNetworkPolicy :: (Core.Maybe Core.Bool),
    -- | Enable\/Disable FQDN Network Policy for the cluster.
    desiredEnableFqdnNetworkPolicy :: (Core.Maybe Core.Bool),
    -- | Enable\/Disable Multi-Networking for the cluster
    desiredEnableMultiNetworking :: (Core.Maybe Core.Bool),
    -- | Enable\/Disable private endpoint for the cluster\'s master. Deprecated: Use desired/control/plane/endpoints/config.ip/endpoints/config.enable/public/endpoint instead. Note that the value of enable/public/endpoint is reversed: if enable/private/endpoint is false, then enable/public/endpoint will be true.
    desiredEnablePrivateEndpoint :: (Core.Maybe Core.Bool),
    -- | The desired enterprise configuration for the cluster.
    desiredEnterpriseConfig :: (Core.Maybe DesiredEnterpriseConfig),
    -- | The desired fleet configuration for the cluster.
    desiredFleet :: (Core.Maybe Fleet),
    -- | The desired config of Gateway API on this cluster.
    desiredGatewayApiConfig :: (Core.Maybe GatewayAPIConfig),
    -- | The desired GCFS config for the cluster
    desiredGcfsConfig :: (Core.Maybe GcfsConfig),
    -- | The desired Identity Service component configuration.
    desiredIdentityServiceConfig :: (Core.Maybe IdentityServiceConfig),
    -- | The desired image type for the node pool. NOTE: Set the \"desired/node/pool\" field as well.
    desiredImageType :: (Core.Maybe Core.Text),
    -- | Specify the details of in-transit encryption.
    desiredInTransitEncryptionConfig :: (Core.Maybe ClusterUpdate_DesiredInTransitEncryptionConfig),
    -- | The desired config of Intra-node visibility.
    desiredIntraNodeVisibilityConfig :: (Core.Maybe IntraNodeVisibilityConfig),
    -- | Desired Beta APIs to be enabled for cluster.
    desiredK8sBetaApis :: (Core.Maybe K8sBetaAPIConfig),
    -- | The desired L4 Internal Load Balancer Subsetting configuration.
    desiredL4ilbSubsettingConfig :: (Core.Maybe ILBSubsettingConfig),
    -- | The desired list of Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zones> in which the cluster\'s nodes should be located. This list must always include the cluster\'s primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and\/or removed.
    desiredLocations :: (Core.Maybe [Core.Text]),
    -- | The desired logging configuration.
    desiredLoggingConfig :: (Core.Maybe LoggingConfig),
    -- | The logging service the cluster should use to write logs. Currently available options: * @logging.googleapis.com\/kubernetes@ - The Cloud Logging service with a Kubernetes-native resource model * @logging.googleapis.com@ - The legacy Cloud Logging service (no longer available as of GKE 1.15). * @none@ - no logs will be exported from the cluster. If left as an empty string,@logging.googleapis.com\/kubernetes@ will be used for GKE 1.14+ or @logging.googleapis.com@ for earlier versions.
    desiredLoggingService :: (Core.Maybe Core.Text),
    -- | The desired configuration options for master authorized networks feature. Deprecated: Use desired/control/plane/endpoints/config.ip/endpoints/config.authorized/networks/config instead.
    desiredMasterAuthorizedNetworksConfig :: (Core.Maybe MasterAuthorizedNetworksConfig),
    -- | The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the default Kubernetes version
    desiredMasterVersion :: (Core.Maybe Core.Text),
    -- | Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
    desiredMeshCertificates :: (Core.Maybe MeshCertificates),
    -- | The desired monitoring configuration.
    desiredMonitoringConfig :: (Core.Maybe MonitoringConfig),
    -- | The monitoring service the cluster should use to write metrics. Currently available options: * \"monitoring.googleapis.com\/kubernetes\" - The Cloud Monitoring service with a Kubernetes-native resource model * @monitoring.googleapis.com@ - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * @none@ - No metrics will be exported from the cluster. If left as an empty string,@monitoring.googleapis.com\/kubernetes@ will be used for GKE 1.14+ or @monitoring.googleapis.com@ for earlier versions.
    desiredMonitoringService :: (Core.Maybe Core.Text),
    -- | The desired network performance config.
    desiredNetworkPerformanceConfig :: (Core.Maybe ClusterNetworkPerformanceConfig),
    -- | The desired node kubelet config for the cluster.
    desiredNodeKubeletConfig :: (Core.Maybe NodeKubeletConfig),
    -- | The desired node kubelet config for all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
    desiredNodePoolAutoConfigKubeletConfig :: (Core.Maybe NodeKubeletConfig),
    -- | The desired Linux node config for all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters. Currently only @cgroup_mode@ can be set here.
    desiredNodePoolAutoConfigLinuxNodeConfig :: (Core.Maybe LinuxNodeConfig),
    -- | The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
    desiredNodePoolAutoConfigNetworkTags :: (Core.Maybe NetworkTags),
    -- | The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
    desiredNodePoolAutoConfigResourceManagerTags :: (Core.Maybe ResourceManagerTags),
    -- | Autoscaler configuration for the node pool specified in desired/node/pool/id. If there is only one pool in the cluster and desired/node/pool/id is not provided then the change applies to that single node pool.
    desiredNodePoolAutoscaling :: (Core.Maybe NodePoolAutoscaling),
    -- | The node pool to be upgraded. This field is mandatory if \"desired/node/version\", \"desired/image/family\" or \"desired/node/pool_autoscaling\" is specified and there is more than one node pool on the cluster.
    desiredNodePoolId :: (Core.Maybe Core.Text),
    -- | The desired node pool logging configuration defaults for the cluster.
    desiredNodePoolLoggingConfig :: (Core.Maybe NodePoolLoggingConfig),
    -- | The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the Kubernetes master version
    desiredNodeVersion :: (Core.Maybe Core.Text),
    -- | The desired notification configuration.
    desiredNotificationConfig :: (Core.Maybe NotificationConfig),
    -- | The desired parent product config for the cluster.
    desiredParentProductConfig :: (Core.Maybe ParentProductConfig),
    -- | The desired private cluster configuration. master/global/access/config is the only field that can be changed via this field. See also ClusterUpdate.desired/enable/private/endpoint for modifying other fields within PrivateClusterConfig. Deprecated: Use desired/control/plane/endpoints/config.ip/endpoints/config.global_access instead.
    desiredPrivateClusterConfig :: (Core.Maybe PrivateClusterConfig),
    -- | The desired state of IPv6 connectivity to Google Services.
    desiredPrivateIpv6GoogleAccess :: (Core.Maybe ClusterUpdate_DesiredPrivateIpv6GoogleAccess),
    -- | RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created.
    desiredRbacBindingConfig :: (Core.Maybe RBACBindingConfig),
    -- | The desired release channel configuration.
    desiredReleaseChannel :: (Core.Maybe ReleaseChannel),
    -- | The desired configuration for exporting resource usage.
    desiredResourceUsageExportConfig :: (Core.Maybe ResourceUsageExportConfig),
    -- | Enable\/Disable Secret Manager Config.
    desiredSecretManagerConfig :: (Core.Maybe SecretManagerConfig),
    -- | Enable\/Disable Security Posture API features for the cluster.
    desiredSecurityPostureConfig :: (Core.Maybe SecurityPostureConfig),
    -- | ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
    desiredServiceExternalIpsConfig :: (Core.Maybe ServiceExternalIPsConfig),
    -- | Configuration for Shielded Nodes.
    desiredShieldedNodes :: (Core.Maybe ShieldedNodes),
    -- | The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
    desiredStackType :: (Core.Maybe ClusterUpdate_DesiredStackType),
    -- | Cluster-level Vertical Pod Autoscaling configuration.
    desiredVerticalPodAutoscaling :: (Core.Maybe VerticalPodAutoscaling),
    -- | Configuration for Workload Identity.
    desiredWorkloadIdentityConfig :: (Core.Maybe WorkloadIdentityConfig),
    -- | Kubernetes open source beta apis enabled on the cluster. Only beta apis
    enableK8sBetaApis :: (Core.Maybe K8sBetaAPIConfig),
    -- | The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
    etag :: (Core.Maybe Core.Text),
    -- | The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the \'additional/pod/ranges_config\' argument.
    removedAdditionalPodRangesConfig :: (Core.Maybe AdditionalPodRangesConfig),
    -- | The Custom keys configuration for the cluster.
    userManagedKeysConfig :: (Core.Maybe UserManagedKeysConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterUpdate' with the minimum fields required to make a request.
newClusterUpdate ::
  ClusterUpdate
newClusterUpdate =
  ClusterUpdate
    { additionalPodRangesConfig = Core.Nothing,
      desiredAddonsConfig = Core.Nothing,
      desiredAuthenticatorGroupsConfig = Core.Nothing,
      desiredAutopilotWorkloadPolicyConfig = Core.Nothing,
      desiredBinaryAuthorization = Core.Nothing,
      desiredClusterAutoscaling = Core.Nothing,
      desiredCompliancePostureConfig = Core.Nothing,
      desiredContainerdConfig = Core.Nothing,
      desiredControlPlaneEndpointsConfig = Core.Nothing,
      desiredCostManagementConfig = Core.Nothing,
      desiredDatabaseEncryption = Core.Nothing,
      desiredDatapathProvider = Core.Nothing,
      desiredDefaultEnablePrivateNodes = Core.Nothing,
      desiredDefaultSnatStatus = Core.Nothing,
      desiredDisableL4LbFirewallReconciliation = Core.Nothing,
      desiredDnsConfig = Core.Nothing,
      desiredEnableCiliumClusterwideNetworkPolicy = Core.Nothing,
      desiredEnableFqdnNetworkPolicy = Core.Nothing,
      desiredEnableMultiNetworking = Core.Nothing,
      desiredEnablePrivateEndpoint = Core.Nothing,
      desiredEnterpriseConfig = Core.Nothing,
      desiredFleet = Core.Nothing,
      desiredGatewayApiConfig = Core.Nothing,
      desiredGcfsConfig = Core.Nothing,
      desiredIdentityServiceConfig = Core.Nothing,
      desiredImageType = Core.Nothing,
      desiredInTransitEncryptionConfig = Core.Nothing,
      desiredIntraNodeVisibilityConfig = Core.Nothing,
      desiredK8sBetaApis = Core.Nothing,
      desiredL4ilbSubsettingConfig = Core.Nothing,
      desiredLocations = Core.Nothing,
      desiredLoggingConfig = Core.Nothing,
      desiredLoggingService = Core.Nothing,
      desiredMasterAuthorizedNetworksConfig = Core.Nothing,
      desiredMasterVersion = Core.Nothing,
      desiredMeshCertificates = Core.Nothing,
      desiredMonitoringConfig = Core.Nothing,
      desiredMonitoringService = Core.Nothing,
      desiredNetworkPerformanceConfig = Core.Nothing,
      desiredNodeKubeletConfig = Core.Nothing,
      desiredNodePoolAutoConfigKubeletConfig = Core.Nothing,
      desiredNodePoolAutoConfigLinuxNodeConfig = Core.Nothing,
      desiredNodePoolAutoConfigNetworkTags = Core.Nothing,
      desiredNodePoolAutoConfigResourceManagerTags = Core.Nothing,
      desiredNodePoolAutoscaling = Core.Nothing,
      desiredNodePoolId = Core.Nothing,
      desiredNodePoolLoggingConfig = Core.Nothing,
      desiredNodeVersion = Core.Nothing,
      desiredNotificationConfig = Core.Nothing,
      desiredParentProductConfig = Core.Nothing,
      desiredPrivateClusterConfig = Core.Nothing,
      desiredPrivateIpv6GoogleAccess = Core.Nothing,
      desiredRbacBindingConfig = Core.Nothing,
      desiredReleaseChannel = Core.Nothing,
      desiredResourceUsageExportConfig = Core.Nothing,
      desiredSecretManagerConfig = Core.Nothing,
      desiredSecurityPostureConfig = Core.Nothing,
      desiredServiceExternalIpsConfig = Core.Nothing,
      desiredShieldedNodes = Core.Nothing,
      desiredStackType = Core.Nothing,
      desiredVerticalPodAutoscaling = Core.Nothing,
      desiredWorkloadIdentityConfig = Core.Nothing,
      enableK8sBetaApis = Core.Nothing,
      etag = Core.Nothing,
      removedAdditionalPodRangesConfig = Core.Nothing,
      userManagedKeysConfig = Core.Nothing
    }

instance Core.FromJSON ClusterUpdate where
  parseJSON =
    Core.withObject
      "ClusterUpdate"
      ( \o ->
          ClusterUpdate
            Core.<$> (o Core..:? "additionalPodRangesConfig")
            Core.<*> (o Core..:? "desiredAddonsConfig")
            Core.<*> (o Core..:? "desiredAuthenticatorGroupsConfig")
            Core.<*> (o Core..:? "desiredAutopilotWorkloadPolicyConfig")
            Core.<*> (o Core..:? "desiredBinaryAuthorization")
            Core.<*> (o Core..:? "desiredClusterAutoscaling")
            Core.<*> (o Core..:? "desiredCompliancePostureConfig")
            Core.<*> (o Core..:? "desiredContainerdConfig")
            Core.<*> (o Core..:? "desiredControlPlaneEndpointsConfig")
            Core.<*> (o Core..:? "desiredCostManagementConfig")
            Core.<*> (o Core..:? "desiredDatabaseEncryption")
            Core.<*> (o Core..:? "desiredDatapathProvider")
            Core.<*> (o Core..:? "desiredDefaultEnablePrivateNodes")
            Core.<*> (o Core..:? "desiredDefaultSnatStatus")
            Core.<*> (o Core..:? "desiredDisableL4LbFirewallReconciliation")
            Core.<*> (o Core..:? "desiredDnsConfig")
            Core.<*> (o Core..:? "desiredEnableCiliumClusterwideNetworkPolicy")
            Core.<*> (o Core..:? "desiredEnableFqdnNetworkPolicy")
            Core.<*> (o Core..:? "desiredEnableMultiNetworking")
            Core.<*> (o Core..:? "desiredEnablePrivateEndpoint")
            Core.<*> (o Core..:? "desiredEnterpriseConfig")
            Core.<*> (o Core..:? "desiredFleet")
            Core.<*> (o Core..:? "desiredGatewayApiConfig")
            Core.<*> (o Core..:? "desiredGcfsConfig")
            Core.<*> (o Core..:? "desiredIdentityServiceConfig")
            Core.<*> (o Core..:? "desiredImageType")
            Core.<*> (o Core..:? "desiredInTransitEncryptionConfig")
            Core.<*> (o Core..:? "desiredIntraNodeVisibilityConfig")
            Core.<*> (o Core..:? "desiredK8sBetaApis")
            Core.<*> (o Core..:? "desiredL4ilbSubsettingConfig")
            Core.<*> (o Core..:? "desiredLocations")
            Core.<*> (o Core..:? "desiredLoggingConfig")
            Core.<*> (o Core..:? "desiredLoggingService")
            Core.<*> (o Core..:? "desiredMasterAuthorizedNetworksConfig")
            Core.<*> (o Core..:? "desiredMasterVersion")
            Core.<*> (o Core..:? "desiredMeshCertificates")
            Core.<*> (o Core..:? "desiredMonitoringConfig")
            Core.<*> (o Core..:? "desiredMonitoringService")
            Core.<*> (o Core..:? "desiredNetworkPerformanceConfig")
            Core.<*> (o Core..:? "desiredNodeKubeletConfig")
            Core.<*> (o Core..:? "desiredNodePoolAutoConfigKubeletConfig")
            Core.<*> (o Core..:? "desiredNodePoolAutoConfigLinuxNodeConfig")
            Core.<*> (o Core..:? "desiredNodePoolAutoConfigNetworkTags")
            Core.<*> (o Core..:? "desiredNodePoolAutoConfigResourceManagerTags")
            Core.<*> (o Core..:? "desiredNodePoolAutoscaling")
            Core.<*> (o Core..:? "desiredNodePoolId")
            Core.<*> (o Core..:? "desiredNodePoolLoggingConfig")
            Core.<*> (o Core..:? "desiredNodeVersion")
            Core.<*> (o Core..:? "desiredNotificationConfig")
            Core.<*> (o Core..:? "desiredParentProductConfig")
            Core.<*> (o Core..:? "desiredPrivateClusterConfig")
            Core.<*> (o Core..:? "desiredPrivateIpv6GoogleAccess")
            Core.<*> (o Core..:? "desiredRbacBindingConfig")
            Core.<*> (o Core..:? "desiredReleaseChannel")
            Core.<*> (o Core..:? "desiredResourceUsageExportConfig")
            Core.<*> (o Core..:? "desiredSecretManagerConfig")
            Core.<*> (o Core..:? "desiredSecurityPostureConfig")
            Core.<*> (o Core..:? "desiredServiceExternalIpsConfig")
            Core.<*> (o Core..:? "desiredShieldedNodes")
            Core.<*> (o Core..:? "desiredStackType")
            Core.<*> (o Core..:? "desiredVerticalPodAutoscaling")
            Core.<*> (o Core..:? "desiredWorkloadIdentityConfig")
            Core.<*> (o Core..:? "enableK8sBetaApis")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "removedAdditionalPodRangesConfig")
            Core.<*> (o Core..:? "userManagedKeysConfig")
      )

instance Core.ToJSON ClusterUpdate where
  toJSON ClusterUpdate {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalPodRangesConfig" Core..=)
              Core.<$> additionalPodRangesConfig,
            ("desiredAddonsConfig" Core..=) Core.<$> desiredAddonsConfig,
            ("desiredAuthenticatorGroupsConfig" Core..=)
              Core.<$> desiredAuthenticatorGroupsConfig,
            ("desiredAutopilotWorkloadPolicyConfig" Core..=)
              Core.<$> desiredAutopilotWorkloadPolicyConfig,
            ("desiredBinaryAuthorization" Core..=)
              Core.<$> desiredBinaryAuthorization,
            ("desiredClusterAutoscaling" Core..=)
              Core.<$> desiredClusterAutoscaling,
            ("desiredCompliancePostureConfig" Core..=)
              Core.<$> desiredCompliancePostureConfig,
            ("desiredContainerdConfig" Core..=)
              Core.<$> desiredContainerdConfig,
            ("desiredControlPlaneEndpointsConfig" Core..=)
              Core.<$> desiredControlPlaneEndpointsConfig,
            ("desiredCostManagementConfig" Core..=)
              Core.<$> desiredCostManagementConfig,
            ("desiredDatabaseEncryption" Core..=)
              Core.<$> desiredDatabaseEncryption,
            ("desiredDatapathProvider" Core..=)
              Core.<$> desiredDatapathProvider,
            ("desiredDefaultEnablePrivateNodes" Core..=)
              Core.<$> desiredDefaultEnablePrivateNodes,
            ("desiredDefaultSnatStatus" Core..=)
              Core.<$> desiredDefaultSnatStatus,
            ("desiredDisableL4LbFirewallReconciliation" Core..=)
              Core.<$> desiredDisableL4LbFirewallReconciliation,
            ("desiredDnsConfig" Core..=) Core.<$> desiredDnsConfig,
            ("desiredEnableCiliumClusterwideNetworkPolicy" Core..=)
              Core.<$> desiredEnableCiliumClusterwideNetworkPolicy,
            ("desiredEnableFqdnNetworkPolicy" Core..=)
              Core.<$> desiredEnableFqdnNetworkPolicy,
            ("desiredEnableMultiNetworking" Core..=)
              Core.<$> desiredEnableMultiNetworking,
            ("desiredEnablePrivateEndpoint" Core..=)
              Core.<$> desiredEnablePrivateEndpoint,
            ("desiredEnterpriseConfig" Core..=)
              Core.<$> desiredEnterpriseConfig,
            ("desiredFleet" Core..=) Core.<$> desiredFleet,
            ("desiredGatewayApiConfig" Core..=)
              Core.<$> desiredGatewayApiConfig,
            ("desiredGcfsConfig" Core..=) Core.<$> desiredGcfsConfig,
            ("desiredIdentityServiceConfig" Core..=)
              Core.<$> desiredIdentityServiceConfig,
            ("desiredImageType" Core..=) Core.<$> desiredImageType,
            ("desiredInTransitEncryptionConfig" Core..=)
              Core.<$> desiredInTransitEncryptionConfig,
            ("desiredIntraNodeVisibilityConfig" Core..=)
              Core.<$> desiredIntraNodeVisibilityConfig,
            ("desiredK8sBetaApis" Core..=) Core.<$> desiredK8sBetaApis,
            ("desiredL4ilbSubsettingConfig" Core..=)
              Core.<$> desiredL4ilbSubsettingConfig,
            ("desiredLocations" Core..=) Core.<$> desiredLocations,
            ("desiredLoggingConfig" Core..=) Core.<$> desiredLoggingConfig,
            ("desiredLoggingService" Core..=) Core.<$> desiredLoggingService,
            ("desiredMasterAuthorizedNetworksConfig" Core..=)
              Core.<$> desiredMasterAuthorizedNetworksConfig,
            ("desiredMasterVersion" Core..=) Core.<$> desiredMasterVersion,
            ("desiredMeshCertificates" Core..=)
              Core.<$> desiredMeshCertificates,
            ("desiredMonitoringConfig" Core..=)
              Core.<$> desiredMonitoringConfig,
            ("desiredMonitoringService" Core..=)
              Core.<$> desiredMonitoringService,
            ("desiredNetworkPerformanceConfig" Core..=)
              Core.<$> desiredNetworkPerformanceConfig,
            ("desiredNodeKubeletConfig" Core..=)
              Core.<$> desiredNodeKubeletConfig,
            ("desiredNodePoolAutoConfigKubeletConfig" Core..=)
              Core.<$> desiredNodePoolAutoConfigKubeletConfig,
            ("desiredNodePoolAutoConfigLinuxNodeConfig" Core..=)
              Core.<$> desiredNodePoolAutoConfigLinuxNodeConfig,
            ("desiredNodePoolAutoConfigNetworkTags" Core..=)
              Core.<$> desiredNodePoolAutoConfigNetworkTags,
            ("desiredNodePoolAutoConfigResourceManagerTags" Core..=)
              Core.<$> desiredNodePoolAutoConfigResourceManagerTags,
            ("desiredNodePoolAutoscaling" Core..=)
              Core.<$> desiredNodePoolAutoscaling,
            ("desiredNodePoolId" Core..=) Core.<$> desiredNodePoolId,
            ("desiredNodePoolLoggingConfig" Core..=)
              Core.<$> desiredNodePoolLoggingConfig,
            ("desiredNodeVersion" Core..=) Core.<$> desiredNodeVersion,
            ("desiredNotificationConfig" Core..=)
              Core.<$> desiredNotificationConfig,
            ("desiredParentProductConfig" Core..=)
              Core.<$> desiredParentProductConfig,
            ("desiredPrivateClusterConfig" Core..=)
              Core.<$> desiredPrivateClusterConfig,
            ("desiredPrivateIpv6GoogleAccess" Core..=)
              Core.<$> desiredPrivateIpv6GoogleAccess,
            ("desiredRbacBindingConfig" Core..=)
              Core.<$> desiredRbacBindingConfig,
            ("desiredReleaseChannel" Core..=) Core.<$> desiredReleaseChannel,
            ("desiredResourceUsageExportConfig" Core..=)
              Core.<$> desiredResourceUsageExportConfig,
            ("desiredSecretManagerConfig" Core..=)
              Core.<$> desiredSecretManagerConfig,
            ("desiredSecurityPostureConfig" Core..=)
              Core.<$> desiredSecurityPostureConfig,
            ("desiredServiceExternalIpsConfig" Core..=)
              Core.<$> desiredServiceExternalIpsConfig,
            ("desiredShieldedNodes" Core..=) Core.<$> desiredShieldedNodes,
            ("desiredStackType" Core..=) Core.<$> desiredStackType,
            ("desiredVerticalPodAutoscaling" Core..=)
              Core.<$> desiredVerticalPodAutoscaling,
            ("desiredWorkloadIdentityConfig" Core..=)
              Core.<$> desiredWorkloadIdentityConfig,
            ("enableK8sBetaApis" Core..=) Core.<$> enableK8sBetaApis,
            ("etag" Core..=) Core.<$> etag,
            ("removedAdditionalPodRangesConfig" Core..=)
              Core.<$> removedAdditionalPodRangesConfig,
            ("userManagedKeysConfig" Core..=) Core.<$> userManagedKeysConfig
          ]
      )

-- | CompleteIPRotationRequest moves the cluster master back into single-IP mode.
--
-- /See:/ 'newCompleteIPRotationRequest' smart constructor.
data CompleteIPRotationRequest = CompleteIPRotationRequest
  { -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster name) of the cluster to complete IP rotation. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompleteIPRotationRequest' with the minimum fields required to make a request.
newCompleteIPRotationRequest ::
  CompleteIPRotationRequest
newCompleteIPRotationRequest =
  CompleteIPRotationRequest
    { clusterId = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON CompleteIPRotationRequest where
  parseJSON =
    Core.withObject
      "CompleteIPRotationRequest"
      ( \o ->
          CompleteIPRotationRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON CompleteIPRotationRequest where
  toJSON CompleteIPRotationRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | CompleteNodePoolUpgradeRequest sets the name of target node pool to complete upgrade.
--
-- /See:/ 'newCompleteNodePoolUpgradeRequest' smart constructor.
data CompleteNodePoolUpgradeRequest = CompleteNodePoolUpgradeRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompleteNodePoolUpgradeRequest' with the minimum fields required to make a request.
newCompleteNodePoolUpgradeRequest ::
  CompleteNodePoolUpgradeRequest
newCompleteNodePoolUpgradeRequest = CompleteNodePoolUpgradeRequest

instance Core.FromJSON CompleteNodePoolUpgradeRequest where
  parseJSON =
    Core.withObject
      "CompleteNodePoolUpgradeRequest"
      (\o -> Core.pure CompleteNodePoolUpgradeRequest)

instance Core.ToJSON CompleteNodePoolUpgradeRequest where
  toJSON = Core.const Core.emptyObject

-- | CompliancePostureConfig defines the settings needed to enable\/disable features for the Compliance Posture.
--
-- /See:/ 'newCompliancePostureConfig' smart constructor.
data CompliancePostureConfig = CompliancePostureConfig
  { -- | List of enabled compliance standards.
    complianceStandards :: (Core.Maybe [ComplianceStandard]),
    -- | Defines the enablement mode for Compliance Posture.
    mode :: (Core.Maybe CompliancePostureConfig_Mode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompliancePostureConfig' with the minimum fields required to make a request.
newCompliancePostureConfig ::
  CompliancePostureConfig
newCompliancePostureConfig =
  CompliancePostureConfig
    { complianceStandards = Core.Nothing,
      mode = Core.Nothing
    }

instance Core.FromJSON CompliancePostureConfig where
  parseJSON =
    Core.withObject
      "CompliancePostureConfig"
      ( \o ->
          CompliancePostureConfig
            Core.<$> (o Core..:? "complianceStandards")
            Core.<*> (o Core..:? "mode")
      )

instance Core.ToJSON CompliancePostureConfig where
  toJSON CompliancePostureConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("complianceStandards" Core..=) Core.<$> complianceStandards,
            ("mode" Core..=) Core.<$> mode
          ]
      )

-- | Defines the details of a compliance standard.
--
-- /See:/ 'newComplianceStandard' smart constructor.
newtype ComplianceStandard = ComplianceStandard
  { -- | Name of the compliance standard.
    standard :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComplianceStandard' with the minimum fields required to make a request.
newComplianceStandard ::
  ComplianceStandard
newComplianceStandard = ComplianceStandard {standard = Core.Nothing}

instance Core.FromJSON ComplianceStandard where
  parseJSON =
    Core.withObject
      "ComplianceStandard"
      (\o -> ComplianceStandard Core.<$> (o Core..:? "standard"))

instance Core.ToJSON ComplianceStandard where
  toJSON ComplianceStandard {..} =
    Core.object
      (Core.catMaybes [("standard" Core..=) Core.<$> standard])

-- | ConfidentialNodes is configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
--
-- /See:/ 'newConfidentialNodes' smart constructor.
newtype ConfidentialNodes = ConfidentialNodes
  { -- | Whether Confidential Nodes feature is enabled.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfidentialNodes' with the minimum fields required to make a request.
newConfidentialNodes ::
  ConfidentialNodes
newConfidentialNodes = ConfidentialNodes {enabled = Core.Nothing}

instance Core.FromJSON ConfidentialNodes where
  parseJSON =
    Core.withObject
      "ConfidentialNodes"
      (\o -> ConfidentialNodes Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON ConfidentialNodes where
  toJSON ConfidentialNodes {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Configuration options for the Config Connector add-on.
--
-- /See:/ 'newConfigConnectorConfig' smart constructor.
newtype ConfigConnectorConfig = ConfigConnectorConfig
  { -- | Whether Cloud Connector is enabled for this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfigConnectorConfig' with the minimum fields required to make a request.
newConfigConnectorConfig ::
  ConfigConnectorConfig
newConfigConnectorConfig =
  ConfigConnectorConfig {enabled = Core.Nothing}

instance Core.FromJSON ConfigConnectorConfig where
  parseJSON =
    Core.withObject
      "ConfigConnectorConfig"
      (\o -> ConfigConnectorConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON ConfigConnectorConfig where
  toJSON ConfigConnectorConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Parameters for controlling consumption metering.
--
-- /See:/ 'newConsumptionMeteringConfig' smart constructor.
newtype ConsumptionMeteringConfig = ConsumptionMeteringConfig
  { -- | Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumptionMeteringConfig' with the minimum fields required to make a request.
newConsumptionMeteringConfig ::
  ConsumptionMeteringConfig
newConsumptionMeteringConfig =
  ConsumptionMeteringConfig {enabled = Core.Nothing}

instance Core.FromJSON ConsumptionMeteringConfig where
  parseJSON =
    Core.withObject
      "ConsumptionMeteringConfig"
      (\o -> ConsumptionMeteringConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON ConsumptionMeteringConfig where
  toJSON ConsumptionMeteringConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | ContainerdConfig contains configuration to customize containerd.
--
-- /See:/ 'newContainerdConfig' smart constructor.
newtype ContainerdConfig = ContainerdConfig
  { -- | PrivateRegistryAccessConfig is used to configure access configuration for private container registries.
    privateRegistryAccessConfig :: (Core.Maybe PrivateRegistryAccessConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerdConfig' with the minimum fields required to make a request.
newContainerdConfig ::
  ContainerdConfig
newContainerdConfig =
  ContainerdConfig {privateRegistryAccessConfig = Core.Nothing}

instance Core.FromJSON ContainerdConfig where
  parseJSON =
    Core.withObject
      "ContainerdConfig"
      ( \o ->
          ContainerdConfig
            Core.<$> (o Core..:? "privateRegistryAccessConfig")
      )

instance Core.ToJSON ContainerdConfig where
  toJSON ContainerdConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("privateRegistryAccessConfig" Core..=)
              Core.<$> privateRegistryAccessConfig
          ]
      )

-- | Configuration for all of the cluster\'s control plane endpoints.
--
-- /See:/ 'newControlPlaneEndpointsConfig' smart constructor.
data ControlPlaneEndpointsConfig = ControlPlaneEndpointsConfig
  { -- | DNS endpoint configuration.
    dnsEndpointConfig :: (Core.Maybe DNSEndpointConfig),
    -- | IP endpoints configuration.
    ipEndpointsConfig :: (Core.Maybe IPEndpointsConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ControlPlaneEndpointsConfig' with the minimum fields required to make a request.
newControlPlaneEndpointsConfig ::
  ControlPlaneEndpointsConfig
newControlPlaneEndpointsConfig =
  ControlPlaneEndpointsConfig
    { dnsEndpointConfig = Core.Nothing,
      ipEndpointsConfig = Core.Nothing
    }

instance Core.FromJSON ControlPlaneEndpointsConfig where
  parseJSON =
    Core.withObject
      "ControlPlaneEndpointsConfig"
      ( \o ->
          ControlPlaneEndpointsConfig
            Core.<$> (o Core..:? "dnsEndpointConfig")
            Core.<*> (o Core..:? "ipEndpointsConfig")
      )

instance Core.ToJSON ControlPlaneEndpointsConfig where
  toJSON ControlPlaneEndpointsConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("dnsEndpointConfig" Core..=) Core.<$> dnsEndpointConfig,
            ("ipEndpointsConfig" Core..=) Core.<$> ipEndpointsConfig
          ]
      )

-- | Configuration for fine-grained cost management feature.
--
-- /See:/ 'newCostManagementConfig' smart constructor.
newtype CostManagementConfig = CostManagementConfig
  { -- | Whether the feature is enabled or not.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CostManagementConfig' with the minimum fields required to make a request.
newCostManagementConfig ::
  CostManagementConfig
newCostManagementConfig =
  CostManagementConfig {enabled = Core.Nothing}

instance Core.FromJSON CostManagementConfig where
  parseJSON =
    Core.withObject
      "CostManagementConfig"
      (\o -> CostManagementConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON CostManagementConfig where
  toJSON CostManagementConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | CreateClusterRequest creates a cluster.
--
-- /See:/ 'newCreateClusterRequest' smart constructor.
data CreateClusterRequest = CreateClusterRequest
  { -- | Required. A <https://cloud.google.com/container-engine/reference/rest/v1/projects.locations.clusters cluster resource>
    cluster :: (Core.Maybe Cluster),
    -- | The parent (project and location) where the cluster will be created. Specified in the format @projects\/*\/locations\/*@.
    parent :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the parent field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the parent field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateClusterRequest' with the minimum fields required to make a request.
newCreateClusterRequest ::
  CreateClusterRequest
newCreateClusterRequest =
  CreateClusterRequest
    { cluster = Core.Nothing,
      parent = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON CreateClusterRequest where
  parseJSON =
    Core.withObject
      "CreateClusterRequest"
      ( \o ->
          CreateClusterRequest
            Core.<$> (o Core..:? "cluster")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON CreateClusterRequest where
  toJSON CreateClusterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cluster" Core..=) Core.<$> cluster,
            ("parent" Core..=) Core.<$> parent,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | CreateNodePoolRequest creates a node pool for a cluster.
--
-- /See:/ 'newCreateNodePoolRequest' smart constructor.
data CreateNodePoolRequest = CreateNodePoolRequest
  { -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. The node pool to create.
    nodePool :: (Core.Maybe NodePool),
    -- | The parent (project, location, cluster name) where the node pool will be created. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    parent :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the parent field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the parent field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateNodePoolRequest' with the minimum fields required to make a request.
newCreateNodePoolRequest ::
  CreateNodePoolRequest
newCreateNodePoolRequest =
  CreateNodePoolRequest
    { clusterId = Core.Nothing,
      nodePool = Core.Nothing,
      parent = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON CreateNodePoolRequest where
  parseJSON =
    Core.withObject
      "CreateNodePoolRequest"
      ( \o ->
          CreateNodePoolRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "nodePool")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON CreateNodePoolRequest where
  toJSON CreateNodePoolRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("nodePool" Core..=) Core.<$> nodePool,
            ("parent" Core..=) Core.<$> parent,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | DNSConfig contains the desired set of options for configuring clusterDNS.
--
-- /See:/ 'newDNSConfig' smart constructor.
data DNSConfig = DNSConfig
  { -- | Optional. The domain used in Additive VPC scope.
    additiveVpcScopeDnsDomain :: (Core.Maybe Core.Text),
    -- | cluster_dns indicates which in-cluster DNS provider should be used.
    clusterDns :: (Core.Maybe DNSConfig_ClusterDns),
    -- | cluster/dns/domain is the suffix used for all cluster service records.
    clusterDnsDomain :: (Core.Maybe Core.Text),
    -- | cluster/dns/scope indicates the scope of access to cluster DNS records.
    clusterDnsScope :: (Core.Maybe DNSConfig_ClusterDnsScope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSConfig' with the minimum fields required to make a request.
newDNSConfig ::
  DNSConfig
newDNSConfig =
  DNSConfig
    { additiveVpcScopeDnsDomain = Core.Nothing,
      clusterDns = Core.Nothing,
      clusterDnsDomain = Core.Nothing,
      clusterDnsScope = Core.Nothing
    }

instance Core.FromJSON DNSConfig where
  parseJSON =
    Core.withObject
      "DNSConfig"
      ( \o ->
          DNSConfig
            Core.<$> (o Core..:? "additiveVpcScopeDnsDomain")
            Core.<*> (o Core..:? "clusterDns")
            Core.<*> (o Core..:? "clusterDnsDomain")
            Core.<*> (o Core..:? "clusterDnsScope")
      )

instance Core.ToJSON DNSConfig where
  toJSON DNSConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("additiveVpcScopeDnsDomain" Core..=)
              Core.<$> additiveVpcScopeDnsDomain,
            ("clusterDns" Core..=) Core.<$> clusterDns,
            ("clusterDnsDomain" Core..=) Core.<$> clusterDnsDomain,
            ("clusterDnsScope" Core..=) Core.<$> clusterDnsScope
          ]
      )

-- | Describes the configuration of a DNS endpoint.
--
-- /See:/ 'newDNSEndpointConfig' smart constructor.
data DNSEndpointConfig = DNSEndpointConfig
  { -- | Controls whether user traffic is allowed over this endpoint. Note that GCP-managed services may still use the endpoint even if this is false.
    allowExternalTraffic :: (Core.Maybe Core.Bool),
    -- | Output only. The cluster\'s DNS endpoint configuration. A DNS format address. This is accessible from the public internet. Ex: uid.us-central1.gke.goog. Always present, but the behavior may change according to the value of DNSEndpointConfig.allow/external/traffic.
    endpoint :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSEndpointConfig' with the minimum fields required to make a request.
newDNSEndpointConfig ::
  DNSEndpointConfig
newDNSEndpointConfig =
  DNSEndpointConfig
    { allowExternalTraffic = Core.Nothing,
      endpoint = Core.Nothing
    }

instance Core.FromJSON DNSEndpointConfig where
  parseJSON =
    Core.withObject
      "DNSEndpointConfig"
      ( \o ->
          DNSEndpointConfig
            Core.<$> (o Core..:? "allowExternalTraffic")
            Core.<*> (o Core..:? "endpoint")
      )

instance Core.ToJSON DNSEndpointConfig where
  toJSON DNSEndpointConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowExternalTraffic" Core..=) Core.<$> allowExternalTraffic,
            ("endpoint" Core..=) Core.<$> endpoint
          ]
      )

-- | Time window specified for daily maintenance operations.
--
-- /See:/ 'newDailyMaintenanceWindow' smart constructor.
data DailyMaintenanceWindow = DailyMaintenanceWindow
  { -- | Output only. Duration of the time window, automatically chosen to be smallest possible in the given scenario. Duration will be in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> format \"PTnHnMnS\".
    duration :: (Core.Maybe Core.Text),
    -- | Time within the maintenance window to start the maintenance operations. Time format should be in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> format \"HH:MM\", where HH : [00-23] and MM : [00-59] GMT.
    startTime :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DailyMaintenanceWindow' with the minimum fields required to make a request.
newDailyMaintenanceWindow ::
  DailyMaintenanceWindow
newDailyMaintenanceWindow =
  DailyMaintenanceWindow
    { duration = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON DailyMaintenanceWindow where
  parseJSON =
    Core.withObject
      "DailyMaintenanceWindow"
      ( \o ->
          DailyMaintenanceWindow
            Core.<$> (o Core..:? "duration")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON DailyMaintenanceWindow where
  toJSON DailyMaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("duration" Core..=) Core.<$> duration,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Configuration of etcd encryption.
--
-- /See:/ 'newDatabaseEncryption' smart constructor.
data DatabaseEncryption = DatabaseEncryption
  { -- | Output only. The current state of etcd encryption.
    currentState :: (Core.Maybe DatabaseEncryption_CurrentState),
    -- | Output only. Keys in use by the cluster for decrypting existing objects, in addition to the key in @key_name@. Each item is a CloudKMS key resource.
    decryptionKeys :: (Core.Maybe [Core.Text]),
    -- | Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects\/my-project\/locations\/global\/keyRings\/my-ring\/cryptoKeys\/my-key
    keyName :: (Core.Maybe Core.Text),
    -- | Output only. Records errors seen during DatabaseEncryption update operations.
    lastOperationErrors :: (Core.Maybe [OperationError]),
    -- | The desired state of etcd encryption.
    state :: (Core.Maybe DatabaseEncryption_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseEncryption' with the minimum fields required to make a request.
newDatabaseEncryption ::
  DatabaseEncryption
newDatabaseEncryption =
  DatabaseEncryption
    { currentState = Core.Nothing,
      decryptionKeys = Core.Nothing,
      keyName = Core.Nothing,
      lastOperationErrors = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON DatabaseEncryption where
  parseJSON =
    Core.withObject
      "DatabaseEncryption"
      ( \o ->
          DatabaseEncryption
            Core.<$> (o Core..:? "currentState")
            Core.<*> (o Core..:? "decryptionKeys")
            Core.<*> (o Core..:? "keyName")
            Core.<*> (o Core..:? "lastOperationErrors")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON DatabaseEncryption where
  toJSON DatabaseEncryption {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentState" Core..=) Core.<$> currentState,
            ("decryptionKeys" Core..=) Core.<$> decryptionKeys,
            ("keyName" Core..=) Core.<$> keyName,
            ("lastOperationErrors" Core..=) Core.<$> lastOperationErrors,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
--
-- /See:/ 'newDefaultSnatStatus' smart constructor.
newtype DefaultSnatStatus = DefaultSnatStatus
  { -- | Disables cluster default sNAT rules.
    disabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DefaultSnatStatus' with the minimum fields required to make a request.
newDefaultSnatStatus ::
  DefaultSnatStatus
newDefaultSnatStatus = DefaultSnatStatus {disabled = Core.Nothing}

instance Core.FromJSON DefaultSnatStatus where
  parseJSON =
    Core.withObject
      "DefaultSnatStatus"
      (\o -> DefaultSnatStatus Core.<$> (o Core..:? "disabled"))

instance Core.ToJSON DefaultSnatStatus where
  toJSON DefaultSnatStatus {..} =
    Core.object
      (Core.catMaybes [("disabled" Core..=) Core.<$> disabled])

-- | DesiredEnterpriseConfig is a wrapper used for updating enterprise_config.
--
-- /See:/ 'newDesiredEnterpriseConfig' smart constructor.
newtype DesiredEnterpriseConfig = DesiredEnterpriseConfig
  { -- | desired_tier specifies the desired tier of the cluster.
    desiredTier :: (Core.Maybe DesiredEnterpriseConfig_DesiredTier)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DesiredEnterpriseConfig' with the minimum fields required to make a request.
newDesiredEnterpriseConfig ::
  DesiredEnterpriseConfig
newDesiredEnterpriseConfig =
  DesiredEnterpriseConfig {desiredTier = Core.Nothing}

instance Core.FromJSON DesiredEnterpriseConfig where
  parseJSON =
    Core.withObject
      "DesiredEnterpriseConfig"
      ( \o ->
          DesiredEnterpriseConfig Core.<$> (o Core..:? "desiredTier")
      )

instance Core.ToJSON DesiredEnterpriseConfig where
  toJSON DesiredEnterpriseConfig {..} =
    Core.object
      (Core.catMaybes [("desiredTier" Core..=) Core.<$> desiredTier])

-- | Configuration for NodeLocal DNSCache
--
-- /See:/ 'newDnsCacheConfig' smart constructor.
newtype DnsCacheConfig = DnsCacheConfig
  { -- | Whether NodeLocal DNSCache is enabled for this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DnsCacheConfig' with the minimum fields required to make a request.
newDnsCacheConfig ::
  DnsCacheConfig
newDnsCacheConfig = DnsCacheConfig {enabled = Core.Nothing}

instance Core.FromJSON DnsCacheConfig where
  parseJSON =
    Core.withObject
      "DnsCacheConfig"
      (\o -> DnsCacheConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON DnsCacheConfig where
  toJSON DnsCacheConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | EnterpriseConfig is the cluster enterprise configuration.
--
-- /See:/ 'newEnterpriseConfig' smart constructor.
data EnterpriseConfig = EnterpriseConfig
  { -- | Output only. cluster_tier indicates the effective tier of the cluster.
    clusterTier :: (Core.Maybe EnterpriseConfig_ClusterTier),
    -- | desired_tier specifies the desired tier of the cluster.
    desiredTier :: (Core.Maybe EnterpriseConfig_DesiredTier)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnterpriseConfig' with the minimum fields required to make a request.
newEnterpriseConfig ::
  EnterpriseConfig
newEnterpriseConfig =
  EnterpriseConfig
    { clusterTier = Core.Nothing,
      desiredTier = Core.Nothing
    }

instance Core.FromJSON EnterpriseConfig where
  parseJSON =
    Core.withObject
      "EnterpriseConfig"
      ( \o ->
          EnterpriseConfig
            Core.<$> (o Core..:? "clusterTier")
            Core.<*> (o Core..:? "desiredTier")
      )

instance Core.ToJSON EnterpriseConfig where
  toJSON EnterpriseConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterTier" Core..=) Core.<$> clusterTier,
            ("desiredTier" Core..=) Core.<$> desiredTier
          ]
      )

-- | EphemeralStorageLocalSsdConfig contains configuration for the node ephemeral storage using Local SSDs.
--
-- /See:/ 'newEphemeralStorageLocalSsdConfig' smart constructor.
newtype EphemeralStorageLocalSsdConfig = EphemeralStorageLocalSsdConfig
  { -- | Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. A zero (or unset) value has different meanings depending on machine type being used: 1. For pre-Gen3 machines, which support flexible numbers of local ssds, zero (or unset) means to disable using local SSDs as ephemeral storage. The limit for this value is dependent upon the maximum number of disk available on a machine per zone. See: https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd for more information. 2. For Gen3 machines which dictate a specific number of local ssds, zero (or unset) means to use the default number of local ssds that goes with that machine type. For example, for a c3-standard-8-lssd machine, 2 local ssds would be provisioned. For c3-standard-8 (which doesn\'t support local ssds), 0 will be provisioned. See https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd#choose/number/local_ssds for more info.
    localSsdCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EphemeralStorageLocalSsdConfig' with the minimum fields required to make a request.
newEphemeralStorageLocalSsdConfig ::
  EphemeralStorageLocalSsdConfig
newEphemeralStorageLocalSsdConfig =
  EphemeralStorageLocalSsdConfig {localSsdCount = Core.Nothing}

instance Core.FromJSON EphemeralStorageLocalSsdConfig where
  parseJSON =
    Core.withObject
      "EphemeralStorageLocalSsdConfig"
      ( \o ->
          EphemeralStorageLocalSsdConfig
            Core.<$> (o Core..:? "localSsdCount")
      )

instance Core.ToJSON EphemeralStorageLocalSsdConfig where
  toJSON EphemeralStorageLocalSsdConfig {..} =
    Core.object
      (Core.catMaybes [("localSsdCount" Core..=) Core.<$> localSsdCount])

-- | Configuration of Fast Socket feature.
--
-- /See:/ 'newFastSocket' smart constructor.
newtype FastSocket = FastSocket
  { -- | Whether Fast Socket features are enabled in the node pool.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FastSocket' with the minimum fields required to make a request.
newFastSocket ::
  FastSocket
newFastSocket = FastSocket {enabled = Core.Nothing}

instance Core.FromJSON FastSocket where
  parseJSON =
    Core.withObject
      "FastSocket"
      (\o -> FastSocket Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON FastSocket where
  toJSON FastSocket {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent
--
-- /See:/ 'newFilter' smart constructor.
newtype Filter = Filter
  { -- | Event types to allowlist.
    eventType :: (Core.Maybe [Filter_EventTypeItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
newFilter ::
  Filter
newFilter = Filter {eventType = Core.Nothing}

instance Core.FromJSON Filter where
  parseJSON =
    Core.withObject
      "Filter"
      (\o -> Filter Core.<$> (o Core..:? "eventType"))

instance Core.ToJSON Filter where
  toJSON Filter {..} =
    Core.object
      (Core.catMaybes [("eventType" Core..=) Core.<$> eventType])

-- | Fleet is the fleet configuration for the cluster.
--
-- /See:/ 'newFleet' smart constructor.
data Fleet = Fleet
  { -- | Output only. The full resource name of the registered fleet membership of the cluster, in the format @\/\/gkehub.googleapis.com\/projects\/*\/locations\/*\/memberships\/*@.
    membership :: (Core.Maybe Core.Text),
    -- | Output only. Whether the cluster has been registered through the fleet API.
    preRegistered :: (Core.Maybe Core.Bool),
    -- | The Fleet host project(project ID or project number) where this cluster will be registered to. This field cannot be changed after the cluster has been registered.
    project :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Fleet' with the minimum fields required to make a request.
newFleet ::
  Fleet
newFleet =
  Fleet
    { membership = Core.Nothing,
      preRegistered = Core.Nothing,
      project = Core.Nothing
    }

instance Core.FromJSON Fleet where
  parseJSON =
    Core.withObject
      "Fleet"
      ( \o ->
          Fleet
            Core.<$> (o Core..:? "membership")
            Core.<*> (o Core..:? "preRegistered")
            Core.<*> (o Core..:? "project")
      )

instance Core.ToJSON Fleet where
  toJSON Fleet {..} =
    Core.object
      ( Core.catMaybes
          [ ("membership" Core..=) Core.<$> membership,
            ("preRegistered" Core..=) Core.<$> preRegistered,
            ("project" Core..=) Core.<$> project
          ]
      )

-- | GCPSecretManagerCertificateConfig configures a secret from <https://cloud.google.com/secret-manager Google Secret Manager>.
--
-- /See:/ 'newGCPSecretManagerCertificateConfig' smart constructor.
newtype GCPSecretManagerCertificateConfig = GCPSecretManagerCertificateConfig
  { -- | Secret URI, in the form \"projects\/$PROJECT/ID\/secrets\/$SECRET/NAME\/versions\/$VERSION\". Version can be fixed (e.g. \"2\") or \"latest\"
    secretUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GCPSecretManagerCertificateConfig' with the minimum fields required to make a request.
newGCPSecretManagerCertificateConfig ::
  GCPSecretManagerCertificateConfig
newGCPSecretManagerCertificateConfig =
  GCPSecretManagerCertificateConfig {secretUri = Core.Nothing}

instance Core.FromJSON GCPSecretManagerCertificateConfig where
  parseJSON =
    Core.withObject
      "GCPSecretManagerCertificateConfig"
      ( \o ->
          GCPSecretManagerCertificateConfig
            Core.<$> (o Core..:? "secretUri")
      )

instance Core.ToJSON GCPSecretManagerCertificateConfig where
  toJSON GCPSecretManagerCertificateConfig {..} =
    Core.object
      (Core.catMaybes [("secretUri" Core..=) Core.<$> secretUri])

-- | GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.
--
-- /See:/ 'newGPUDriverInstallationConfig' smart constructor.
newtype GPUDriverInstallationConfig = GPUDriverInstallationConfig
  { -- | Mode for how the GPU driver is installed.
    gpuDriverVersion :: (Core.Maybe GPUDriverInstallationConfig_GpuDriverVersion)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GPUDriverInstallationConfig' with the minimum fields required to make a request.
newGPUDriverInstallationConfig ::
  GPUDriverInstallationConfig
newGPUDriverInstallationConfig =
  GPUDriverInstallationConfig {gpuDriverVersion = Core.Nothing}

instance Core.FromJSON GPUDriverInstallationConfig where
  parseJSON =
    Core.withObject
      "GPUDriverInstallationConfig"
      ( \o ->
          GPUDriverInstallationConfig
            Core.<$> (o Core..:? "gpuDriverVersion")
      )

instance Core.ToJSON GPUDriverInstallationConfig where
  toJSON GPUDriverInstallationConfig {..} =
    Core.object
      ( Core.catMaybes
          [("gpuDriverVersion" Core..=) Core.<$> gpuDriverVersion]
      )

-- | GPUSharingConfig represents the GPU sharing configuration for Hardware Accelerators.
--
-- /See:/ 'newGPUSharingConfig' smart constructor.
data GPUSharingConfig = GPUSharingConfig
  { -- | The type of GPU sharing strategy to enable on the GPU node.
    gpuSharingStrategy :: (Core.Maybe GPUSharingConfig_GpuSharingStrategy),
    -- | The max number of containers that can share a physical GPU.
    maxSharedClientsPerGpu :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GPUSharingConfig' with the minimum fields required to make a request.
newGPUSharingConfig ::
  GPUSharingConfig
newGPUSharingConfig =
  GPUSharingConfig
    { gpuSharingStrategy = Core.Nothing,
      maxSharedClientsPerGpu = Core.Nothing
    }

instance Core.FromJSON GPUSharingConfig where
  parseJSON =
    Core.withObject
      "GPUSharingConfig"
      ( \o ->
          GPUSharingConfig
            Core.<$> (o Core..:? "gpuSharingStrategy")
            Core.<*> ( o
                         Core..:? "maxSharedClientsPerGpu"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GPUSharingConfig where
  toJSON GPUSharingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("gpuSharingStrategy" Core..=) Core.<$> gpuSharingStrategy,
            ("maxSharedClientsPerGpu" Core..=)
              Core.. Core.AsText
              Core.<$> maxSharedClientsPerGpu
          ]
      )

-- | GatewayAPIConfig contains the desired config of Gateway API on this cluster.
--
-- /See:/ 'newGatewayAPIConfig' smart constructor.
newtype GatewayAPIConfig = GatewayAPIConfig
  { -- | The Gateway API release channel to use for Gateway API.
    channel :: (Core.Maybe GatewayAPIConfig_Channel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GatewayAPIConfig' with the minimum fields required to make a request.
newGatewayAPIConfig ::
  GatewayAPIConfig
newGatewayAPIConfig = GatewayAPIConfig {channel = Core.Nothing}

instance Core.FromJSON GatewayAPIConfig where
  parseJSON =
    Core.withObject
      "GatewayAPIConfig"
      (\o -> GatewayAPIConfig Core.<$> (o Core..:? "channel"))

instance Core.ToJSON GatewayAPIConfig where
  toJSON GatewayAPIConfig {..} =
    Core.object
      (Core.catMaybes [("channel" Core..=) Core.<$> channel])

-- | Configuration for the Compute Engine PD CSI driver.
--
-- /See:/ 'newGcePersistentDiskCsiDriverConfig' smart constructor.
newtype GcePersistentDiskCsiDriverConfig = GcePersistentDiskCsiDriverConfig
  { -- | Whether the Compute Engine PD CSI driver is enabled for this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcePersistentDiskCsiDriverConfig' with the minimum fields required to make a request.
newGcePersistentDiskCsiDriverConfig ::
  GcePersistentDiskCsiDriverConfig
newGcePersistentDiskCsiDriverConfig =
  GcePersistentDiskCsiDriverConfig {enabled = Core.Nothing}

instance Core.FromJSON GcePersistentDiskCsiDriverConfig where
  parseJSON =
    Core.withObject
      "GcePersistentDiskCsiDriverConfig"
      ( \o ->
          GcePersistentDiskCsiDriverConfig Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON GcePersistentDiskCsiDriverConfig where
  toJSON GcePersistentDiskCsiDriverConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | GcfsConfig contains configurations of Google Container File System (image streaming).
--
-- /See:/ 'newGcfsConfig' smart constructor.
newtype GcfsConfig = GcfsConfig
  { -- | Whether to use GCFS.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcfsConfig' with the minimum fields required to make a request.
newGcfsConfig ::
  GcfsConfig
newGcfsConfig = GcfsConfig {enabled = Core.Nothing}

instance Core.FromJSON GcfsConfig where
  parseJSON =
    Core.withObject
      "GcfsConfig"
      (\o -> GcfsConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON GcfsConfig where
  toJSON GcfsConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Configuration for the GCP Filestore CSI driver.
--
-- /See:/ 'newGcpFilestoreCsiDriverConfig' smart constructor.
newtype GcpFilestoreCsiDriverConfig = GcpFilestoreCsiDriverConfig
  { -- | Whether the GCP Filestore CSI driver is enabled for this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcpFilestoreCsiDriverConfig' with the minimum fields required to make a request.
newGcpFilestoreCsiDriverConfig ::
  GcpFilestoreCsiDriverConfig
newGcpFilestoreCsiDriverConfig =
  GcpFilestoreCsiDriverConfig {enabled = Core.Nothing}

instance Core.FromJSON GcpFilestoreCsiDriverConfig where
  parseJSON =
    Core.withObject
      "GcpFilestoreCsiDriverConfig"
      ( \o ->
          GcpFilestoreCsiDriverConfig Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON GcpFilestoreCsiDriverConfig where
  toJSON GcpFilestoreCsiDriverConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Configuration for the Cloud Storage Fuse CSI driver.
--
-- /See:/ 'newGcsFuseCsiDriverConfig' smart constructor.
newtype GcsFuseCsiDriverConfig = GcsFuseCsiDriverConfig
  { -- | Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsFuseCsiDriverConfig' with the minimum fields required to make a request.
newGcsFuseCsiDriverConfig ::
  GcsFuseCsiDriverConfig
newGcsFuseCsiDriverConfig =
  GcsFuseCsiDriverConfig {enabled = Core.Nothing}

instance Core.FromJSON GcsFuseCsiDriverConfig where
  parseJSON =
    Core.withObject
      "GcsFuseCsiDriverConfig"
      (\o -> GcsFuseCsiDriverConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON GcsFuseCsiDriverConfig where
  toJSON GcsFuseCsiDriverConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | GetJSONWebKeysResponse is a valid JSON Web Key Set as specified in rfc 7517
--
-- /See:/ 'newGetJSONWebKeysResponse' smart constructor.
data GetJSONWebKeysResponse = GetJSONWebKeysResponse
  { -- | For HTTP requests, this field is automatically extracted into the Cache-Control HTTP header.
    cacheHeader :: (Core.Maybe HttpCacheControlResponseHeader),
    -- | The public component of the keys used by the cluster to sign token requests.
    keys :: (Core.Maybe [Jwk])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetJSONWebKeysResponse' with the minimum fields required to make a request.
newGetJSONWebKeysResponse ::
  GetJSONWebKeysResponse
newGetJSONWebKeysResponse =
  GetJSONWebKeysResponse
    { cacheHeader = Core.Nothing,
      keys = Core.Nothing
    }

instance Core.FromJSON GetJSONWebKeysResponse where
  parseJSON =
    Core.withObject
      "GetJSONWebKeysResponse"
      ( \o ->
          GetJSONWebKeysResponse
            Core.<$> (o Core..:? "cacheHeader")
            Core.<*> (o Core..:? "keys")
      )

instance Core.ToJSON GetJSONWebKeysResponse where
  toJSON GetJSONWebKeysResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cacheHeader" Core..=) Core.<$> cacheHeader,
            ("keys" Core..=) Core.<$> keys
          ]
      )

-- | GetOpenIDConfigResponse is an OIDC discovery document for the cluster. See the OpenID Connect Discovery 1.0 specification for details.
--
-- /See:/ 'newGetOpenIDConfigResponse' smart constructor.
data GetOpenIDConfigResponse = GetOpenIDConfigResponse
  { -- | For HTTP requests, this field is automatically extracted into the Cache-Control HTTP header.
    cacheHeader :: (Core.Maybe HttpCacheControlResponseHeader),
    -- | Supported claims.
    claimsSupported :: (Core.Maybe [Core.Text]),
    -- | Supported grant types.
    grantTypes :: (Core.Maybe [Core.Text]),
    -- | supported ID Token signing Algorithms.
    idTokenSigningAlgValuesSupported :: (Core.Maybe [Core.Text]),
    -- | OIDC Issuer.
    issuer :: (Core.Maybe Core.Text),
    -- | JSON Web Key uri.
    jwksUri :: (Core.Maybe Core.Text),
    -- | Supported response types.
    responseTypesSupported :: (Core.Maybe [Core.Text]),
    -- | Supported subject types.
    subjectTypesSupported :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetOpenIDConfigResponse' with the minimum fields required to make a request.
newGetOpenIDConfigResponse ::
  GetOpenIDConfigResponse
newGetOpenIDConfigResponse =
  GetOpenIDConfigResponse
    { cacheHeader = Core.Nothing,
      claimsSupported = Core.Nothing,
      grantTypes = Core.Nothing,
      idTokenSigningAlgValuesSupported = Core.Nothing,
      issuer = Core.Nothing,
      jwksUri = Core.Nothing,
      responseTypesSupported = Core.Nothing,
      subjectTypesSupported = Core.Nothing
    }

instance Core.FromJSON GetOpenIDConfigResponse where
  parseJSON =
    Core.withObject
      "GetOpenIDConfigResponse"
      ( \o ->
          GetOpenIDConfigResponse
            Core.<$> (o Core..:? "cacheHeader")
            Core.<*> (o Core..:? "claims_supported")
            Core.<*> (o Core..:? "grant_types")
            Core.<*> (o Core..:? "id_token_signing_alg_values_supported")
            Core.<*> (o Core..:? "issuer")
            Core.<*> (o Core..:? "jwks_uri")
            Core.<*> (o Core..:? "response_types_supported")
            Core.<*> (o Core..:? "subject_types_supported")
      )

instance Core.ToJSON GetOpenIDConfigResponse where
  toJSON GetOpenIDConfigResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cacheHeader" Core..=) Core.<$> cacheHeader,
            ("claims_supported" Core..=) Core.<$> claimsSupported,
            ("grant_types" Core..=) Core.<$> grantTypes,
            ("id_token_signing_alg_values_supported" Core..=)
              Core.<$> idTokenSigningAlgValuesSupported,
            ("issuer" Core..=) Core.<$> issuer,
            ("jwks_uri" Core..=) Core.<$> jwksUri,
            ("response_types_supported" Core..=)
              Core.<$> responseTypesSupported,
            ("subject_types_supported" Core..=)
              Core.<$> subjectTypesSupported
          ]
      )

-- | Configuration for the Backup for GKE Agent.
--
-- /See:/ 'newGkeBackupAgentConfig' smart constructor.
newtype GkeBackupAgentConfig = GkeBackupAgentConfig
  { -- | Whether the Backup for GKE agent is enabled for this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GkeBackupAgentConfig' with the minimum fields required to make a request.
newGkeBackupAgentConfig ::
  GkeBackupAgentConfig
newGkeBackupAgentConfig =
  GkeBackupAgentConfig {enabled = Core.Nothing}

instance Core.FromJSON GkeBackupAgentConfig where
  parseJSON =
    Core.withObject
      "GkeBackupAgentConfig"
      (\o -> GkeBackupAgentConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON GkeBackupAgentConfig where
  toJSON GkeBackupAgentConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Configuration options for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
--
-- /See:/ 'newHorizontalPodAutoscaling' smart constructor.
newtype HorizontalPodAutoscaling = HorizontalPodAutoscaling
  { -- | Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When enabled, it ensures that metrics are collected into Stackdriver Monitoring.
    disabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HorizontalPodAutoscaling' with the minimum fields required to make a request.
newHorizontalPodAutoscaling ::
  HorizontalPodAutoscaling
newHorizontalPodAutoscaling =
  HorizontalPodAutoscaling {disabled = Core.Nothing}

instance Core.FromJSON HorizontalPodAutoscaling where
  parseJSON =
    Core.withObject
      "HorizontalPodAutoscaling"
      (\o -> HorizontalPodAutoscaling Core.<$> (o Core..:? "disabled"))

instance Core.ToJSON HorizontalPodAutoscaling where
  toJSON HorizontalPodAutoscaling {..} =
    Core.object
      (Core.catMaybes [("disabled" Core..=) Core.<$> disabled])

-- | RFC-2616: cache control support
--
-- /See:/ 'newHttpCacheControlResponseHeader' smart constructor.
data HttpCacheControlResponseHeader = HttpCacheControlResponseHeader
  { -- | 14.6 response cache age, in seconds since the response is generated
    age :: (Core.Maybe Core.Int64),
    -- | 14.9 request and response directives
    directive :: (Core.Maybe Core.Text),
    -- | 14.21 response cache expires, in RFC 1123 date format
    expires :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpCacheControlResponseHeader' with the minimum fields required to make a request.
newHttpCacheControlResponseHeader ::
  HttpCacheControlResponseHeader
newHttpCacheControlResponseHeader =
  HttpCacheControlResponseHeader
    { age = Core.Nothing,
      directive = Core.Nothing,
      expires = Core.Nothing
    }

instance Core.FromJSON HttpCacheControlResponseHeader where
  parseJSON =
    Core.withObject
      "HttpCacheControlResponseHeader"
      ( \o ->
          HttpCacheControlResponseHeader
            Core.<$> (o Core..:? "age" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "directive")
            Core.<*> (o Core..:? "expires")
      )

instance Core.ToJSON HttpCacheControlResponseHeader where
  toJSON HttpCacheControlResponseHeader {..} =
    Core.object
      ( Core.catMaybes
          [ ("age" Core..=) Core.. Core.AsText Core.<$> age,
            ("directive" Core..=) Core.<$> directive,
            ("expires" Core..=) Core.<$> expires
          ]
      )

-- | Configuration options for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
--
-- /See:/ 'newHttpLoadBalancing' smart constructor.
newtype HttpLoadBalancing = HttpLoadBalancing
  { -- | Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a small pod in the cluster that manages the load balancers.
    disabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpLoadBalancing' with the minimum fields required to make a request.
newHttpLoadBalancing ::
  HttpLoadBalancing
newHttpLoadBalancing = HttpLoadBalancing {disabled = Core.Nothing}

instance Core.FromJSON HttpLoadBalancing where
  parseJSON =
    Core.withObject
      "HttpLoadBalancing"
      (\o -> HttpLoadBalancing Core.<$> (o Core..:? "disabled"))

instance Core.ToJSON HttpLoadBalancing where
  toJSON HttpLoadBalancing {..} =
    Core.object
      (Core.catMaybes [("disabled" Core..=) Core.<$> disabled])

-- | Hugepages amount in both 2m and 1g size
--
-- /See:/ 'newHugepagesConfig' smart constructor.
data HugepagesConfig = HugepagesConfig
  { -- | Optional. Amount of 1G hugepages
    hugepageSize1g :: (Core.Maybe Core.Int32),
    -- | Optional. Amount of 2M hugepages
    hugepageSize2m :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HugepagesConfig' with the minimum fields required to make a request.
newHugepagesConfig ::
  HugepagesConfig
newHugepagesConfig =
  HugepagesConfig
    { hugepageSize1g = Core.Nothing,
      hugepageSize2m = Core.Nothing
    }

instance Core.FromJSON HugepagesConfig where
  parseJSON =
    Core.withObject
      "HugepagesConfig"
      ( \o ->
          HugepagesConfig
            Core.<$> (o Core..:? "hugepageSize1g")
            Core.<*> (o Core..:? "hugepageSize2m")
      )

instance Core.ToJSON HugepagesConfig where
  toJSON HugepagesConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("hugepageSize1g" Core..=) Core.<$> hugepageSize1g,
            ("hugepageSize2m" Core..=) Core.<$> hugepageSize2m
          ]
      )

-- | ILBSubsettingConfig contains the desired config of L4 Internal LoadBalancer subsetting on this cluster.
--
-- /See:/ 'newILBSubsettingConfig' smart constructor.
newtype ILBSubsettingConfig = ILBSubsettingConfig
  { -- | Enables l4 ILB subsetting for this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ILBSubsettingConfig' with the minimum fields required to make a request.
newILBSubsettingConfig ::
  ILBSubsettingConfig
newILBSubsettingConfig =
  ILBSubsettingConfig {enabled = Core.Nothing}

instance Core.FromJSON ILBSubsettingConfig where
  parseJSON =
    Core.withObject
      "ILBSubsettingConfig"
      (\o -> ILBSubsettingConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON ILBSubsettingConfig where
  toJSON ILBSubsettingConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Configuration for controlling how IPs are allocated in the cluster.
--
-- /See:/ 'newIPAllocationPolicy' smart constructor.
data IPAllocationPolicy = IPAllocationPolicy
  { -- | Output only. The additional pod ranges that are added to the cluster. These pod ranges can be used by new node pools to allocate pod IPs automatically. Once the range is removed it will not show up in IPAllocationPolicy.
    additionalPodRangesConfig :: (Core.Maybe AdditionalPodRangesConfig),
    -- | This field is deprecated, use cluster/ipv4/cidr_block.
    clusterIpv4Cidr :: (Core.Maybe Core.Text),
    -- | The IP address range for the cluster pod IPs. If this field is set, then @cluster.cluster_ipv4_cidr@ must be left blank. This field is only applicable when @use_ip_aliases@ is true. Set to blank to have a range chosen with the default size. Set to \/netmask (e.g. @\/14@) to have a range chosen with a specific netmask. Set to a <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) from the RFC-1918 private networks (e.g. @10.0.0.0\/8@, @172.16.0.0\/12@, @192.168.0.0\/16@) to pick a specific range to use.
    clusterIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use/ip/aliases is true and create_subnetwork is false.
    clusterSecondaryRangeName :: (Core.Maybe Core.Text),
    -- | Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when @use_ip_aliases@ is true.
    createSubnetwork :: (Core.Maybe Core.Bool),
    -- | Output only. The utilization of the cluster default IPv4 range for the pod. The ratio is Usage\/[Total number of IPs in the secondary range], Usage=numNodes/numZones/podIPsPerNode.
    defaultPodIpv4RangeUtilization :: (Core.Maybe Core.Double),
    -- | The ipv6 access type (internal or external) when create_subnetwork is true
    ipv6AccessType :: (Core.Maybe IPAllocationPolicy_Ipv6AccessType),
    -- | This field is deprecated, use node/ipv4/cidr_block.
    nodeIpv4Cidr :: (Core.Maybe Core.Text),
    -- | The IP address range of the instance IPs in this cluster. This is applicable only if @create_subnetwork@ is true. Set to blank to have a range chosen with the default size. Set to \/netmask (e.g. @\/14@) to have a range chosen with a specific netmask. Set to a <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) from the RFC-1918 private networks (e.g. @10.0.0.0\/8@, @172.16.0.0\/12@, @192.168.0.0\/16@) to pick a specific range to use.
    nodeIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | [PRIVATE FIELD] Pod CIDR size overprovisioning config for the cluster. Pod CIDR size per node depends on max/pods/per/node. By default, the value of max/pods/per/node is doubled and then rounded off to next power of 2 to get the size of pod CIDR block per node. Example: max/pods/per/node of 30 would result in 64 IPs (\/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max/pods/per/node of 30 will result in 32 IPs (\/27) when overprovisioning is disabled.
    podCidrOverprovisionConfig :: (Core.Maybe PodCIDROverprovisionConfig),
    -- | This field is deprecated, use services/ipv4/cidr_block.
    servicesIpv4Cidr :: (Core.Maybe Core.Text),
    -- | The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when @use_ip_aliases@ is true. Set to blank to have a range chosen with the default size. Set to \/netmask (e.g. @\/14@) to have a range chosen with a specific netmask. Set to a <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) from the RFC-1918 private networks (e.g. @10.0.0.0\/8@, @172.16.0.0\/12@, @192.168.0.0\/16@) to pick a specific range to use.
    servicesIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Output only. The services IPv6 CIDR block for the cluster.
    servicesIpv6CidrBlock :: (Core.Maybe Core.Text),
    -- | The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use/ip/aliases is true and create_subnetwork is false.
    servicesSecondaryRangeName :: (Core.Maybe Core.Text),
    -- | The IP stack type of the cluster
    stackType :: (Core.Maybe IPAllocationPolicy_StackType),
    -- | Output only. The subnet\'s IPv6 CIDR block used by nodes and pods.
    subnetIpv6CidrBlock :: (Core.Maybe Core.Text),
    -- | A custom subnetwork name to be used if @create_subnetwork@ is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.
    subnetworkName :: (Core.Maybe Core.Text),
    -- | The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when @use_ip_aliases@ is true. If unspecified, the range will use the default size. Set to \/netmask (e.g. @\/14@) to have a range chosen with a specific netmask. Set to a <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) from the RFC-1918 private networks (e.g. @10.0.0.0\/8@, @172.16.0.0\/12@, @192.168.0.0\/16@) to pick a specific range to use. This field is deprecated due to the deprecation of 2VM TPU. The end of life date for 2VM TPU is 2025-04-25.
    tpuIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use/routes. It cannot be true if use/routes is true. If both use/ip/aliases and use_routes are false, then the server picks the default IP allocation mode
    useIpAliases :: (Core.Maybe Core.Bool),
    -- | Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use/ip/aliases. It cannot be true if use/ip/aliases is true. If both use/ip/aliases and use_routes are false, then the server picks the default IP allocation mode
    useRoutes :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IPAllocationPolicy' with the minimum fields required to make a request.
newIPAllocationPolicy ::
  IPAllocationPolicy
newIPAllocationPolicy =
  IPAllocationPolicy
    { additionalPodRangesConfig = Core.Nothing,
      clusterIpv4Cidr = Core.Nothing,
      clusterIpv4CidrBlock = Core.Nothing,
      clusterSecondaryRangeName = Core.Nothing,
      createSubnetwork = Core.Nothing,
      defaultPodIpv4RangeUtilization = Core.Nothing,
      ipv6AccessType = Core.Nothing,
      nodeIpv4Cidr = Core.Nothing,
      nodeIpv4CidrBlock = Core.Nothing,
      podCidrOverprovisionConfig = Core.Nothing,
      servicesIpv4Cidr = Core.Nothing,
      servicesIpv4CidrBlock = Core.Nothing,
      servicesIpv6CidrBlock = Core.Nothing,
      servicesSecondaryRangeName = Core.Nothing,
      stackType = Core.Nothing,
      subnetIpv6CidrBlock = Core.Nothing,
      subnetworkName = Core.Nothing,
      tpuIpv4CidrBlock = Core.Nothing,
      useIpAliases = Core.Nothing,
      useRoutes = Core.Nothing
    }

instance Core.FromJSON IPAllocationPolicy where
  parseJSON =
    Core.withObject
      "IPAllocationPolicy"
      ( \o ->
          IPAllocationPolicy
            Core.<$> (o Core..:? "additionalPodRangesConfig")
            Core.<*> (o Core..:? "clusterIpv4Cidr")
            Core.<*> (o Core..:? "clusterIpv4CidrBlock")
            Core.<*> (o Core..:? "clusterSecondaryRangeName")
            Core.<*> (o Core..:? "createSubnetwork")
            Core.<*> (o Core..:? "defaultPodIpv4RangeUtilization")
            Core.<*> (o Core..:? "ipv6AccessType")
            Core.<*> (o Core..:? "nodeIpv4Cidr")
            Core.<*> (o Core..:? "nodeIpv4CidrBlock")
            Core.<*> (o Core..:? "podCidrOverprovisionConfig")
            Core.<*> (o Core..:? "servicesIpv4Cidr")
            Core.<*> (o Core..:? "servicesIpv4CidrBlock")
            Core.<*> (o Core..:? "servicesIpv6CidrBlock")
            Core.<*> (o Core..:? "servicesSecondaryRangeName")
            Core.<*> (o Core..:? "stackType")
            Core.<*> (o Core..:? "subnetIpv6CidrBlock")
            Core.<*> (o Core..:? "subnetworkName")
            Core.<*> (o Core..:? "tpuIpv4CidrBlock")
            Core.<*> (o Core..:? "useIpAliases")
            Core.<*> (o Core..:? "useRoutes")
      )

instance Core.ToJSON IPAllocationPolicy where
  toJSON IPAllocationPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalPodRangesConfig" Core..=)
              Core.<$> additionalPodRangesConfig,
            ("clusterIpv4Cidr" Core..=) Core.<$> clusterIpv4Cidr,
            ("clusterIpv4CidrBlock" Core..=) Core.<$> clusterIpv4CidrBlock,
            ("clusterSecondaryRangeName" Core..=)
              Core.<$> clusterSecondaryRangeName,
            ("createSubnetwork" Core..=) Core.<$> createSubnetwork,
            ("defaultPodIpv4RangeUtilization" Core..=)
              Core.<$> defaultPodIpv4RangeUtilization,
            ("ipv6AccessType" Core..=) Core.<$> ipv6AccessType,
            ("nodeIpv4Cidr" Core..=) Core.<$> nodeIpv4Cidr,
            ("nodeIpv4CidrBlock" Core..=) Core.<$> nodeIpv4CidrBlock,
            ("podCidrOverprovisionConfig" Core..=)
              Core.<$> podCidrOverprovisionConfig,
            ("servicesIpv4Cidr" Core..=) Core.<$> servicesIpv4Cidr,
            ("servicesIpv4CidrBlock" Core..=) Core.<$> servicesIpv4CidrBlock,
            ("servicesIpv6CidrBlock" Core..=) Core.<$> servicesIpv6CidrBlock,
            ("servicesSecondaryRangeName" Core..=)
              Core.<$> servicesSecondaryRangeName,
            ("stackType" Core..=) Core.<$> stackType,
            ("subnetIpv6CidrBlock" Core..=) Core.<$> subnetIpv6CidrBlock,
            ("subnetworkName" Core..=) Core.<$> subnetworkName,
            ("tpuIpv4CidrBlock" Core..=) Core.<$> tpuIpv4CidrBlock,
            ("useIpAliases" Core..=) Core.<$> useIpAliases,
            ("useRoutes" Core..=) Core.<$> useRoutes
          ]
      )

-- | IP endpoints configuration.
--
-- /See:/ 'newIPEndpointsConfig' smart constructor.
data IPEndpointsConfig = IPEndpointsConfig
  { -- | Configuration of authorized networks. If enabled, restricts access to the control plane based on source IP. It is invalid to specify both Cluster.masterAuthorizedNetworksConfig and this field at the same time.
    authorizedNetworksConfig :: (Core.Maybe MasterAuthorizedNetworksConfig),
    -- | Controls whether the control plane allows access through a public IP. It is invalid to specify both PrivateClusterConfig.enablePrivateEndpoint and this field at the same time.
    enablePublicEndpoint :: (Core.Maybe Core.Bool),
    -- | Controls whether to allow direct IP access.
    enabled :: (Core.Maybe Core.Bool),
    -- | Controls whether the control plane\'s private endpoint is accessible from sources in other regions. It is invalid to specify both PrivateClusterMasterGlobalAccessConfig.enabled and this field at the same time.
    globalAccess :: (Core.Maybe Core.Bool),
    -- | Output only. The internal IP address of this cluster\'s control plane. Only populated if enabled.
    privateEndpoint :: (Core.Maybe Core.Text),
    -- | Subnet to provision the master\'s private endpoint during cluster creation. Specified in projects\//\/regions\//\/subnetworks\/* format. It is invalid to specify both PrivateClusterConfig.privateEndpointSubnetwork and this field at the same time.
    privateEndpointSubnetwork :: (Core.Maybe Core.Text),
    -- | Output only. The external IP address of this cluster\'s control plane. Only populated if enabled.
    publicEndpoint :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IPEndpointsConfig' with the minimum fields required to make a request.
newIPEndpointsConfig ::
  IPEndpointsConfig
newIPEndpointsConfig =
  IPEndpointsConfig
    { authorizedNetworksConfig = Core.Nothing,
      enablePublicEndpoint = Core.Nothing,
      enabled = Core.Nothing,
      globalAccess = Core.Nothing,
      privateEndpoint = Core.Nothing,
      privateEndpointSubnetwork = Core.Nothing,
      publicEndpoint = Core.Nothing
    }

instance Core.FromJSON IPEndpointsConfig where
  parseJSON =
    Core.withObject
      "IPEndpointsConfig"
      ( \o ->
          IPEndpointsConfig
            Core.<$> (o Core..:? "authorizedNetworksConfig")
            Core.<*> (o Core..:? "enablePublicEndpoint")
            Core.<*> (o Core..:? "enabled")
            Core.<*> (o Core..:? "globalAccess")
            Core.<*> (o Core..:? "privateEndpoint")
            Core.<*> (o Core..:? "privateEndpointSubnetwork")
            Core.<*> (o Core..:? "publicEndpoint")
      )

instance Core.ToJSON IPEndpointsConfig where
  toJSON IPEndpointsConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorizedNetworksConfig" Core..=)
              Core.<$> authorizedNetworksConfig,
            ("enablePublicEndpoint" Core..=) Core.<$> enablePublicEndpoint,
            ("enabled" Core..=) Core.<$> enabled,
            ("globalAccess" Core..=) Core.<$> globalAccess,
            ("privateEndpoint" Core..=) Core.<$> privateEndpoint,
            ("privateEndpointSubnetwork" Core..=)
              Core.<$> privateEndpointSubnetwork,
            ("publicEndpoint" Core..=) Core.<$> publicEndpoint
          ]
      )

-- | IdentityServiceConfig is configuration for Identity Service which allows customers to use external identity providers with the K8S API
--
-- /See:/ 'newIdentityServiceConfig' smart constructor.
newtype IdentityServiceConfig = IdentityServiceConfig
  { -- | Whether to enable the Identity Service component
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityServiceConfig' with the minimum fields required to make a request.
newIdentityServiceConfig ::
  IdentityServiceConfig
newIdentityServiceConfig =
  IdentityServiceConfig {enabled = Core.Nothing}

instance Core.FromJSON IdentityServiceConfig where
  parseJSON =
    Core.withObject
      "IdentityServiceConfig"
      (\o -> IdentityServiceConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON IdentityServiceConfig where
  toJSON IdentityServiceConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | IntraNodeVisibilityConfig contains the desired config of the intra-node visibility on this cluster.
--
-- /See:/ 'newIntraNodeVisibilityConfig' smart constructor.
newtype IntraNodeVisibilityConfig = IntraNodeVisibilityConfig
  { -- | Enables intra node visibility for this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntraNodeVisibilityConfig' with the minimum fields required to make a request.
newIntraNodeVisibilityConfig ::
  IntraNodeVisibilityConfig
newIntraNodeVisibilityConfig =
  IntraNodeVisibilityConfig {enabled = Core.Nothing}

instance Core.FromJSON IntraNodeVisibilityConfig where
  parseJSON =
    Core.withObject
      "IntraNodeVisibilityConfig"
      (\o -> IntraNodeVisibilityConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON IntraNodeVisibilityConfig where
  toJSON IntraNodeVisibilityConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Jwk is a JSON Web Key as specified in RFC 7517
--
-- /See:/ 'newJwk' smart constructor.
data Jwk = Jwk
  { -- | Algorithm.
    alg :: (Core.Maybe Core.Text),
    -- | Used for ECDSA keys.
    crv :: (Core.Maybe Core.Text),
    -- | Used for RSA keys.
    e :: (Core.Maybe Core.Text),
    -- | Key ID.
    kid :: (Core.Maybe Core.Text),
    -- | Key Type.
    kty :: (Core.Maybe Core.Text),
    -- | Used for RSA keys.
    n :: (Core.Maybe Core.Text),
    -- | Permitted uses for the public keys.
    use :: (Core.Maybe Core.Text),
    -- | Used for ECDSA keys.
    x :: (Core.Maybe Core.Text),
    -- | Used for ECDSA keys.
    y :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Jwk' with the minimum fields required to make a request.
newJwk ::
  Jwk
newJwk =
  Jwk
    { alg = Core.Nothing,
      crv = Core.Nothing,
      e = Core.Nothing,
      kid = Core.Nothing,
      kty = Core.Nothing,
      n = Core.Nothing,
      use = Core.Nothing,
      x = Core.Nothing,
      y = Core.Nothing
    }

instance Core.FromJSON Jwk where
  parseJSON =
    Core.withObject
      "Jwk"
      ( \o ->
          Jwk
            Core.<$> (o Core..:? "alg")
            Core.<*> (o Core..:? "crv")
            Core.<*> (o Core..:? "e")
            Core.<*> (o Core..:? "kid")
            Core.<*> (o Core..:? "kty")
            Core.<*> (o Core..:? "n")
            Core.<*> (o Core..:? "use")
            Core.<*> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON Jwk where
  toJSON Jwk {..} =
    Core.object
      ( Core.catMaybes
          [ ("alg" Core..=) Core.<$> alg,
            ("crv" Core..=) Core.<$> crv,
            ("e" Core..=) Core.<$> e,
            ("kid" Core..=) Core.<$> kid,
            ("kty" Core..=) Core.<$> kty,
            ("n" Core..=) Core.<$> n,
            ("use" Core..=) Core.<$> use,
            ("x" Core..=) Core.<$> x,
            ("y" Core..=) Core.<$> y
          ]
      )

-- | K8sBetaAPIConfig , configuration for beta APIs
--
-- /See:/ 'newK8sBetaAPIConfig' smart constructor.
newtype K8sBetaAPIConfig = K8sBetaAPIConfig
  { -- | Enabled k8s beta APIs.
    enabledApis :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'K8sBetaAPIConfig' with the minimum fields required to make a request.
newK8sBetaAPIConfig ::
  K8sBetaAPIConfig
newK8sBetaAPIConfig = K8sBetaAPIConfig {enabledApis = Core.Nothing}

instance Core.FromJSON K8sBetaAPIConfig where
  parseJSON =
    Core.withObject
      "K8sBetaAPIConfig"
      (\o -> K8sBetaAPIConfig Core.<$> (o Core..:? "enabledApis"))

instance Core.ToJSON K8sBetaAPIConfig where
  toJSON K8sBetaAPIConfig {..} =
    Core.object
      (Core.catMaybes [("enabledApis" Core..=) Core.<$> enabledApis])

-- | Configuration for the Kubernetes Dashboard.
--
-- /See:/ 'newKubernetesDashboard' smart constructor.
newtype KubernetesDashboard = KubernetesDashboard
  { -- | Whether the Kubernetes Dashboard is enabled for this cluster.
    disabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KubernetesDashboard' with the minimum fields required to make a request.
newKubernetesDashboard ::
  KubernetesDashboard
newKubernetesDashboard =
  KubernetesDashboard {disabled = Core.Nothing}

instance Core.FromJSON KubernetesDashboard where
  parseJSON =
    Core.withObject
      "KubernetesDashboard"
      (\o -> KubernetesDashboard Core.<$> (o Core..:? "disabled"))

instance Core.ToJSON KubernetesDashboard where
  toJSON KubernetesDashboard {..} =
    Core.object
      (Core.catMaybes [("disabled" Core..=) Core.<$> disabled])

-- | Configuration for the legacy Attribute Based Access Control authorization mode.
--
-- /See:/ 'newLegacyAbac' smart constructor.
newtype LegacyAbac = LegacyAbac
  { -- | Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LegacyAbac' with the minimum fields required to make a request.
newLegacyAbac ::
  LegacyAbac
newLegacyAbac = LegacyAbac {enabled = Core.Nothing}

instance Core.FromJSON LegacyAbac where
  parseJSON =
    Core.withObject
      "LegacyAbac"
      (\o -> LegacyAbac Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON LegacyAbac where
  toJSON LegacyAbac {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Parameters that can be configured on Linux nodes.
--
-- /See:/ 'newLinuxNodeConfig' smart constructor.
data LinuxNodeConfig = LinuxNodeConfig
  { -- | cgroup_mode specifies the cgroup mode to be used on the node.
    cgroupMode :: (Core.Maybe LinuxNodeConfig_CgroupMode),
    -- | Optional. Amounts for 2M and 1G hugepages
    hugepages :: (Core.Maybe HugepagesConfig),
    -- | The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.busy/poll net.core.busy/read net.core.netdev/max/backlog net.core.rmem/max net.core.rmem/default net.core.wmem/default net.core.wmem/max net.core.optmem/max net.core.somaxconn net.ipv4.tcp/rmem net.ipv4.tcp/wmem net.ipv4.tcp/tw/reuse net.netfilter.nf/conntrack/max net.netfilter.nf/conntrack/buckets net.netfilter.nf/conntrack/tcp/timeout/close/wait net.netfilter.nf/conntrack/tcp/timeout/time/wait net.netfilter.nf/conntrack/tcp/timeout/established net.netfilter.nf/conntrack/acct kernel.shmmni kernel.shmmax kernel.shmall vm.max/map_count
    sysctls :: (Core.Maybe LinuxNodeConfig_Sysctls)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LinuxNodeConfig' with the minimum fields required to make a request.
newLinuxNodeConfig ::
  LinuxNodeConfig
newLinuxNodeConfig =
  LinuxNodeConfig
    { cgroupMode = Core.Nothing,
      hugepages = Core.Nothing,
      sysctls = Core.Nothing
    }

instance Core.FromJSON LinuxNodeConfig where
  parseJSON =
    Core.withObject
      "LinuxNodeConfig"
      ( \o ->
          LinuxNodeConfig
            Core.<$> (o Core..:? "cgroupMode")
            Core.<*> (o Core..:? "hugepages")
            Core.<*> (o Core..:? "sysctls")
      )

instance Core.ToJSON LinuxNodeConfig where
  toJSON LinuxNodeConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("cgroupMode" Core..=) Core.<$> cgroupMode,
            ("hugepages" Core..=) Core.<$> hugepages,
            ("sysctls" Core..=) Core.<$> sysctls
          ]
      )

-- | The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.busy/poll net.core.busy/read net.core.netdev/max/backlog net.core.rmem/max net.core.rmem/default net.core.wmem/default net.core.wmem/max net.core.optmem/max net.core.somaxconn net.ipv4.tcp/rmem net.ipv4.tcp/wmem net.ipv4.tcp/tw/reuse net.netfilter.nf/conntrack/max net.netfilter.nf/conntrack/buckets net.netfilter.nf/conntrack/tcp/timeout/close/wait net.netfilter.nf/conntrack/tcp/timeout/time/wait net.netfilter.nf/conntrack/tcp/timeout/established net.netfilter.nf/conntrack/acct kernel.shmmni kernel.shmmax kernel.shmall vm.max/map_count
--
-- /See:/ 'newLinuxNodeConfig_Sysctls' smart constructor.
newtype LinuxNodeConfig_Sysctls = LinuxNodeConfig_Sysctls
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LinuxNodeConfig_Sysctls' with the minimum fields required to make a request.
newLinuxNodeConfig_Sysctls ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  LinuxNodeConfig_Sysctls
newLinuxNodeConfig_Sysctls additional =
  LinuxNodeConfig_Sysctls {additional = additional}

instance Core.FromJSON LinuxNodeConfig_Sysctls where
  parseJSON =
    Core.withObject
      "LinuxNodeConfig_Sysctls"
      (\o -> LinuxNodeConfig_Sysctls Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON LinuxNodeConfig_Sysctls where
  toJSON LinuxNodeConfig_Sysctls {..} = Core.toJSON additional

-- | ListClustersResponse is the result of ListClustersRequest.
--
-- /See:/ 'newListClustersResponse' smart constructor.
data ListClustersResponse = ListClustersResponse
  { -- | A list of clusters in the project in the specified zone, or across all ones.
    clusters :: (Core.Maybe [Cluster]),
    -- | If any zones are listed here, the list of clusters returned may be missing those zones.
    missingZones :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
newListClustersResponse ::
  ListClustersResponse
newListClustersResponse =
  ListClustersResponse
    { clusters = Core.Nothing,
      missingZones = Core.Nothing
    }

instance Core.FromJSON ListClustersResponse where
  parseJSON =
    Core.withObject
      "ListClustersResponse"
      ( \o ->
          ListClustersResponse
            Core.<$> (o Core..:? "clusters")
            Core.<*> (o Core..:? "missingZones")
      )

instance Core.ToJSON ListClustersResponse where
  toJSON ListClustersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusters" Core..=) Core.<$> clusters,
            ("missingZones" Core..=) Core.<$> missingZones
          ]
      )

-- | ListNodePoolsResponse is the result of ListNodePoolsRequest.
--
-- /See:/ 'newListNodePoolsResponse' smart constructor.
newtype ListNodePoolsResponse = ListNodePoolsResponse
  { -- | A list of node pools for a cluster.
    nodePools :: (Core.Maybe [NodePool])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListNodePoolsResponse' with the minimum fields required to make a request.
newListNodePoolsResponse ::
  ListNodePoolsResponse
newListNodePoolsResponse =
  ListNodePoolsResponse {nodePools = Core.Nothing}

instance Core.FromJSON ListNodePoolsResponse where
  parseJSON =
    Core.withObject
      "ListNodePoolsResponse"
      (\o -> ListNodePoolsResponse Core.<$> (o Core..:? "nodePools"))

instance Core.ToJSON ListNodePoolsResponse where
  toJSON ListNodePoolsResponse {..} =
    Core.object
      (Core.catMaybes [("nodePools" Core..=) Core.<$> nodePools])

-- | ListOperationsResponse is the result of ListOperationsRequest.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | If any zones are listed here, the list of operations returned may be missing the operations from those zones.
    missingZones :: (Core.Maybe [Core.Text]),
    -- | A list of operations in the project in the specified zone.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { missingZones = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "missingZones")
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("missingZones" Core..=) Core.<$> missingZones,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | ListUsableSubnetworksResponse is the response of ListUsableSubnetworksRequest.
--
-- /See:/ 'newListUsableSubnetworksResponse' smart constructor.
data ListUsableSubnetworksResponse = ListUsableSubnetworksResponse
  { -- | This token allows you to get the next page of results for list requests. If the number of results is larger than @page_size@, use the @next_page_token@ as a value for the query parameter @page_token@ in the next request. The value will become empty when there are no more pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of usable subnetworks in the specified network project.
    subnetworks :: (Core.Maybe [UsableSubnetwork])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUsableSubnetworksResponse' with the minimum fields required to make a request.
newListUsableSubnetworksResponse ::
  ListUsableSubnetworksResponse
newListUsableSubnetworksResponse =
  ListUsableSubnetworksResponse
    { nextPageToken = Core.Nothing,
      subnetworks = Core.Nothing
    }

instance Core.FromJSON ListUsableSubnetworksResponse where
  parseJSON =
    Core.withObject
      "ListUsableSubnetworksResponse"
      ( \o ->
          ListUsableSubnetworksResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "subnetworks")
      )

instance Core.ToJSON ListUsableSubnetworksResponse where
  toJSON ListUsableSubnetworksResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("subnetworks" Core..=) Core.<$> subnetworks
          ]
      )

-- | LocalNvmeSsdBlockConfig contains configuration for using raw-block local NVMe SSDs
--
-- /See:/ 'newLocalNvmeSsdBlockConfig' smart constructor.
newtype LocalNvmeSsdBlockConfig = LocalNvmeSsdBlockConfig
  { -- | Number of local NVMe SSDs to use. The limit for this value is dependent upon the maximum number of disk available on a machine per zone. See: https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd for more information. A zero (or unset) value has different meanings depending on machine type being used: 1. For pre-Gen3 machines, which support flexible numbers of local ssds, zero (or unset) means to disable using local SSDs as ephemeral storage. 2. For Gen3 machines which dictate a specific number of local ssds, zero (or unset) means to use the default number of local ssds that goes with that machine type. For example, for a c3-standard-8-lssd machine, 2 local ssds would be provisioned. For c3-standard-8 (which doesn\'t support local ssds), 0 will be provisioned. See https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd#choose/number/local_ssds for more info.
    localSsdCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalNvmeSsdBlockConfig' with the minimum fields required to make a request.
newLocalNvmeSsdBlockConfig ::
  LocalNvmeSsdBlockConfig
newLocalNvmeSsdBlockConfig =
  LocalNvmeSsdBlockConfig {localSsdCount = Core.Nothing}

instance Core.FromJSON LocalNvmeSsdBlockConfig where
  parseJSON =
    Core.withObject
      "LocalNvmeSsdBlockConfig"
      ( \o ->
          LocalNvmeSsdBlockConfig Core.<$> (o Core..:? "localSsdCount")
      )

instance Core.ToJSON LocalNvmeSsdBlockConfig where
  toJSON LocalNvmeSsdBlockConfig {..} =
    Core.object
      (Core.catMaybes [("localSsdCount" Core..=) Core.<$> localSsdCount])

-- | LoggingComponentConfig is cluster logging component configuration.
--
-- /See:/ 'newLoggingComponentConfig' smart constructor.
newtype LoggingComponentConfig = LoggingComponentConfig
  { -- | Select components to collect logs. An empty set would disable all logging.
    enableComponents :: (Core.Maybe [LoggingComponentConfig_EnableComponentsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingComponentConfig' with the minimum fields required to make a request.
newLoggingComponentConfig ::
  LoggingComponentConfig
newLoggingComponentConfig =
  LoggingComponentConfig {enableComponents = Core.Nothing}

instance Core.FromJSON LoggingComponentConfig where
  parseJSON =
    Core.withObject
      "LoggingComponentConfig"
      ( \o ->
          LoggingComponentConfig Core.<$> (o Core..:? "enableComponents")
      )

instance Core.ToJSON LoggingComponentConfig where
  toJSON LoggingComponentConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enableComponents" Core..=) Core.<$> enableComponents]
      )

-- | LoggingConfig is cluster logging configuration.
--
-- /See:/ 'newLoggingConfig' smart constructor.
newtype LoggingConfig = LoggingConfig
  { -- | Logging components configuration
    componentConfig :: (Core.Maybe LoggingComponentConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingConfig' with the minimum fields required to make a request.
newLoggingConfig ::
  LoggingConfig
newLoggingConfig = LoggingConfig {componentConfig = Core.Nothing}

instance Core.FromJSON LoggingConfig where
  parseJSON =
    Core.withObject
      "LoggingConfig"
      (\o -> LoggingConfig Core.<$> (o Core..:? "componentConfig"))

instance Core.ToJSON LoggingConfig where
  toJSON LoggingConfig {..} =
    Core.object
      ( Core.catMaybes
          [("componentConfig" Core..=) Core.<$> componentConfig]
      )

-- | LoggingVariantConfig specifies the behaviour of the logging component.
--
-- /See:/ 'newLoggingVariantConfig' smart constructor.
newtype LoggingVariantConfig = LoggingVariantConfig
  { -- | Logging variant deployed on nodes.
    variant :: (Core.Maybe LoggingVariantConfig_Variant)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingVariantConfig' with the minimum fields required to make a request.
newLoggingVariantConfig ::
  LoggingVariantConfig
newLoggingVariantConfig =
  LoggingVariantConfig {variant = Core.Nothing}

instance Core.FromJSON LoggingVariantConfig where
  parseJSON =
    Core.withObject
      "LoggingVariantConfig"
      (\o -> LoggingVariantConfig Core.<$> (o Core..:? "variant"))

instance Core.ToJSON LoggingVariantConfig where
  toJSON LoggingVariantConfig {..} =
    Core.object
      (Core.catMaybes [("variant" Core..=) Core.<$> variant])

-- | Represents the Maintenance exclusion option.
--
-- /See:/ 'newMaintenanceExclusionOptions' smart constructor.
newtype MaintenanceExclusionOptions = MaintenanceExclusionOptions
  { -- | Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
    scope :: (Core.Maybe MaintenanceExclusionOptions_Scope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceExclusionOptions' with the minimum fields required to make a request.
newMaintenanceExclusionOptions ::
  MaintenanceExclusionOptions
newMaintenanceExclusionOptions =
  MaintenanceExclusionOptions {scope = Core.Nothing}

instance Core.FromJSON MaintenanceExclusionOptions where
  parseJSON =
    Core.withObject
      "MaintenanceExclusionOptions"
      (\o -> MaintenanceExclusionOptions Core.<$> (o Core..:? "scope"))

instance Core.ToJSON MaintenanceExclusionOptions where
  toJSON MaintenanceExclusionOptions {..} =
    Core.object (Core.catMaybes [("scope" Core..=) Core.<$> scope])

-- | MaintenancePolicy defines the maintenance policy to be used for the cluster.
--
-- /See:/ 'newMaintenancePolicy' smart constructor.
data MaintenancePolicy = MaintenancePolicy
  { -- | A hash identifying the version of this policy, so that updates to fields of the policy won\'t accidentally undo intermediate changes (and so that users of the API unaware of some fields won\'t accidentally remove other fields). Make a @get()@ request to the cluster to get the current resource version and include it with requests to set the policy.
    resourceVersion :: (Core.Maybe Core.Text),
    -- | Specifies the maintenance window in which maintenance may be performed.
    window :: (Core.Maybe MaintenanceWindow)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenancePolicy' with the minimum fields required to make a request.
newMaintenancePolicy ::
  MaintenancePolicy
newMaintenancePolicy =
  MaintenancePolicy
    { resourceVersion = Core.Nothing,
      window = Core.Nothing
    }

instance Core.FromJSON MaintenancePolicy where
  parseJSON =
    Core.withObject
      "MaintenancePolicy"
      ( \o ->
          MaintenancePolicy
            Core.<$> (o Core..:? "resourceVersion")
            Core.<*> (o Core..:? "window")
      )

instance Core.ToJSON MaintenancePolicy where
  toJSON MaintenancePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("resourceVersion" Core..=) Core.<$> resourceVersion,
            ("window" Core..=) Core.<$> window
          ]
      )

-- | MaintenanceWindow defines the maintenance window to be used for the cluster.
--
-- /See:/ 'newMaintenanceWindow' smart constructor.
data MaintenanceWindow = MaintenanceWindow
  { -- | DailyMaintenanceWindow specifies a daily maintenance operation window.
    dailyMaintenanceWindow :: (Core.Maybe DailyMaintenanceWindow),
    -- | Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
    maintenanceExclusions :: (Core.Maybe MaintenanceWindow_MaintenanceExclusions),
    -- | RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
    recurringWindow :: (Core.Maybe RecurringTimeWindow)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
newMaintenanceWindow ::
  MaintenanceWindow
newMaintenanceWindow =
  MaintenanceWindow
    { dailyMaintenanceWindow = Core.Nothing,
      maintenanceExclusions = Core.Nothing,
      recurringWindow = Core.Nothing
    }

instance Core.FromJSON MaintenanceWindow where
  parseJSON =
    Core.withObject
      "MaintenanceWindow"
      ( \o ->
          MaintenanceWindow
            Core.<$> (o Core..:? "dailyMaintenanceWindow")
            Core.<*> (o Core..:? "maintenanceExclusions")
            Core.<*> (o Core..:? "recurringWindow")
      )

instance Core.ToJSON MaintenanceWindow where
  toJSON MaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("dailyMaintenanceWindow" Core..=)
              Core.<$> dailyMaintenanceWindow,
            ("maintenanceExclusions" Core..=) Core.<$> maintenanceExclusions,
            ("recurringWindow" Core..=) Core.<$> recurringWindow
          ]
      )

-- | Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
--
-- /See:/ 'newMaintenanceWindow_MaintenanceExclusions' smart constructor.
newtype MaintenanceWindow_MaintenanceExclusions = MaintenanceWindow_MaintenanceExclusions
  { additional :: (Core.HashMap Core.Text TimeWindow)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceWindow_MaintenanceExclusions' with the minimum fields required to make a request.
newMaintenanceWindow_MaintenanceExclusions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text TimeWindow ->
  MaintenanceWindow_MaintenanceExclusions
newMaintenanceWindow_MaintenanceExclusions additional =
  MaintenanceWindow_MaintenanceExclusions {additional = additional}

instance Core.FromJSON MaintenanceWindow_MaintenanceExclusions where
  parseJSON =
    Core.withObject
      "MaintenanceWindow_MaintenanceExclusions"
      ( \o ->
          MaintenanceWindow_MaintenanceExclusions
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON MaintenanceWindow_MaintenanceExclusions where
  toJSON MaintenanceWindow_MaintenanceExclusions {..} =
    Core.toJSON additional

-- | ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
--
-- /See:/ 'newManagedPrometheusConfig' smart constructor.
data ManagedPrometheusConfig = ManagedPrometheusConfig
  { -- | GKE Workload Auto-Monitoring Configuration.
    autoMonitoringConfig :: (Core.Maybe AutoMonitoringConfig),
    -- | Enable Managed Collection.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedPrometheusConfig' with the minimum fields required to make a request.
newManagedPrometheusConfig ::
  ManagedPrometheusConfig
newManagedPrometheusConfig =
  ManagedPrometheusConfig
    { autoMonitoringConfig = Core.Nothing,
      enabled = Core.Nothing
    }

instance Core.FromJSON ManagedPrometheusConfig where
  parseJSON =
    Core.withObject
      "ManagedPrometheusConfig"
      ( \o ->
          ManagedPrometheusConfig
            Core.<$> (o Core..:? "autoMonitoringConfig")
            Core.<*> (o Core..:? "enabled")
      )

instance Core.ToJSON ManagedPrometheusConfig where
  toJSON ManagedPrometheusConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoMonitoringConfig" Core..=) Core.<$> autoMonitoringConfig,
            ("enabled" Core..=) Core.<$> enabled
          ]
      )

-- | The authentication information for accessing the master endpoint. Authentication can be done using HTTP basic auth or using client certificates.
--
-- /See:/ 'newMasterAuth' smart constructor.
data MasterAuth = MasterAuth
  { -- | Output only. Base64-encoded public certificate used by clients to authenticate to the cluster endpoint. Issued only if client/certificate/config is set.
    clientCertificate :: (Core.Maybe Core.Text),
    -- | Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.
    clientCertificateConfig :: (Core.Maybe ClientCertificateConfig),
    -- | Output only. Base64-encoded private key used by clients to authenticate to the cluster endpoint.
    clientKey :: (Core.Maybe Core.Text),
    -- | Output only. Base64-encoded public certificate that is the root of trust for the cluster.
    clusterCaCertificate :: (Core.Maybe Core.Text),
    -- | The password to use for HTTP basic authentication to the master endpoint. Because the master endpoint is open to the Internet, you should create a strong password. If a password is provided for cluster creation, username must be non-empty. Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https:\/\/cloud.google.com\/kubernetes-engine\/docs\/how-to\/api-server-authentication
    password :: (Core.Maybe Core.Text),
    -- | The username to use for HTTP basic authentication to the master endpoint. For clusters v1.6.0 and later, basic authentication can be disabled by leaving username unspecified (or setting it to the empty string). Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https:\/\/cloud.google.com\/kubernetes-engine\/docs\/how-to\/api-server-authentication
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MasterAuth' with the minimum fields required to make a request.
newMasterAuth ::
  MasterAuth
newMasterAuth =
  MasterAuth
    { clientCertificate = Core.Nothing,
      clientCertificateConfig = Core.Nothing,
      clientKey = Core.Nothing,
      clusterCaCertificate = Core.Nothing,
      password = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON MasterAuth where
  parseJSON =
    Core.withObject
      "MasterAuth"
      ( \o ->
          MasterAuth
            Core.<$> (o Core..:? "clientCertificate")
            Core.<*> (o Core..:? "clientCertificateConfig")
            Core.<*> (o Core..:? "clientKey")
            Core.<*> (o Core..:? "clusterCaCertificate")
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON MasterAuth where
  toJSON MasterAuth {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientCertificate" Core..=) Core.<$> clientCertificate,
            ("clientCertificateConfig" Core..=)
              Core.<$> clientCertificateConfig,
            ("clientKey" Core..=) Core.<$> clientKey,
            ("clusterCaCertificate" Core..=) Core.<$> clusterCaCertificate,
            ("password" Core..=) Core.<$> password,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
--
-- /See:/ 'newMasterAuthorizedNetworksConfig' smart constructor.
data MasterAuthorizedNetworksConfig = MasterAuthorizedNetworksConfig
  { -- | cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
    cidrBlocks :: (Core.Maybe [CidrBlock]),
    -- | Whether or not master authorized networks is enabled.
    enabled :: (Core.Maybe Core.Bool),
    -- | Whether master is accessible via Google Compute Engine Public IP addresses.
    gcpPublicCidrsAccessEnabled :: (Core.Maybe Core.Bool),
    -- | Whether master authorized networks is enforced on private endpoint or not.
    privateEndpointEnforcementEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MasterAuthorizedNetworksConfig' with the minimum fields required to make a request.
newMasterAuthorizedNetworksConfig ::
  MasterAuthorizedNetworksConfig
newMasterAuthorizedNetworksConfig =
  MasterAuthorizedNetworksConfig
    { cidrBlocks = Core.Nothing,
      enabled = Core.Nothing,
      gcpPublicCidrsAccessEnabled = Core.Nothing,
      privateEndpointEnforcementEnabled = Core.Nothing
    }

instance Core.FromJSON MasterAuthorizedNetworksConfig where
  parseJSON =
    Core.withObject
      "MasterAuthorizedNetworksConfig"
      ( \o ->
          MasterAuthorizedNetworksConfig
            Core.<$> (o Core..:? "cidrBlocks")
            Core.<*> (o Core..:? "enabled")
            Core.<*> (o Core..:? "gcpPublicCidrsAccessEnabled")
            Core.<*> (o Core..:? "privateEndpointEnforcementEnabled")
      )

instance Core.ToJSON MasterAuthorizedNetworksConfig where
  toJSON MasterAuthorizedNetworksConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("cidrBlocks" Core..=) Core.<$> cidrBlocks,
            ("enabled" Core..=) Core.<$> enabled,
            ("gcpPublicCidrsAccessEnabled" Core..=)
              Core.<$> gcpPublicCidrsAccessEnabled,
            ("privateEndpointEnforcementEnabled" Core..=)
              Core.<$> privateEndpointEnforcementEnabled
          ]
      )

-- | Constraints applied to pods.
--
-- /See:/ 'newMaxPodsConstraint' smart constructor.
newtype MaxPodsConstraint = MaxPodsConstraint
  { -- | Constraint enforced on the max num of pods per node.
    maxPodsPerNode :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaxPodsConstraint' with the minimum fields required to make a request.
newMaxPodsConstraint ::
  MaxPodsConstraint
newMaxPodsConstraint =
  MaxPodsConstraint {maxPodsPerNode = Core.Nothing}

instance Core.FromJSON MaxPodsConstraint where
  parseJSON =
    Core.withObject
      "MaxPodsConstraint"
      ( \o ->
          MaxPodsConstraint
            Core.<$> (o Core..:? "maxPodsPerNode" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON MaxPodsConstraint where
  toJSON MaxPodsConstraint {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxPodsPerNode" Core..=)
              Core.. Core.AsText
              Core.<$> maxPodsPerNode
          ]
      )

-- | Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
--
-- /See:/ 'newMeshCertificates' smart constructor.
newtype MeshCertificates = MeshCertificates
  { -- | enable/certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload/pool must be non-empty).
    enableCertificates :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MeshCertificates' with the minimum fields required to make a request.
newMeshCertificates ::
  MeshCertificates
newMeshCertificates =
  MeshCertificates {enableCertificates = Core.Nothing}

instance Core.FromJSON MeshCertificates where
  parseJSON =
    Core.withObject
      "MeshCertificates"
      ( \o ->
          MeshCertificates Core.<$> (o Core..:? "enableCertificates")
      )

instance Core.ToJSON MeshCertificates where
  toJSON MeshCertificates {..} =
    Core.object
      ( Core.catMaybes
          [("enableCertificates" Core..=) Core.<$> enableCertificates]
      )

-- | Progress metric is (string, int|float|string) pair.
--
-- /See:/ 'newMetric' smart constructor.
data Metric = Metric
  { -- | For metrics with floating point value.
    doubleValue :: (Core.Maybe Core.Double),
    -- | For metrics with integer value.
    intValue :: (Core.Maybe Core.Int64),
    -- | Required. Metric name, e.g., \"nodes total\", \"percent done\".
    name :: (Core.Maybe Core.Text),
    -- | For metrics with custom values (ratios, visual progress, etc.).
    stringValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric' with the minimum fields required to make a request.
newMetric ::
  Metric
newMetric =
  Metric
    { doubleValue = Core.Nothing,
      intValue = Core.Nothing,
      name = Core.Nothing,
      stringValue = Core.Nothing
    }

instance Core.FromJSON Metric where
  parseJSON =
    Core.withObject
      "Metric"
      ( \o ->
          Metric
            Core.<$> (o Core..:? "doubleValue")
            Core.<*> (o Core..:? "intValue" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "stringValue")
      )

instance Core.ToJSON Metric where
  toJSON Metric {..} =
    Core.object
      ( Core.catMaybes
          [ ("doubleValue" Core..=) Core.<$> doubleValue,
            ("intValue" Core..=) Core.. Core.AsText Core.<$> intValue,
            ("name" Core..=) Core.<$> name,
            ("stringValue" Core..=) Core.<$> stringValue
          ]
      )

-- | MonitoringComponentConfig is cluster monitoring component configuration.
--
-- /See:/ 'newMonitoringComponentConfig' smart constructor.
newtype MonitoringComponentConfig = MonitoringComponentConfig
  { -- | Select components to collect metrics. An empty set would disable all monitoring.
    enableComponents :: (Core.Maybe [MonitoringComponentConfig_EnableComponentsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringComponentConfig' with the minimum fields required to make a request.
newMonitoringComponentConfig ::
  MonitoringComponentConfig
newMonitoringComponentConfig =
  MonitoringComponentConfig {enableComponents = Core.Nothing}

instance Core.FromJSON MonitoringComponentConfig where
  parseJSON =
    Core.withObject
      "MonitoringComponentConfig"
      ( \o ->
          MonitoringComponentConfig Core.<$> (o Core..:? "enableComponents")
      )

instance Core.ToJSON MonitoringComponentConfig where
  toJSON MonitoringComponentConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enableComponents" Core..=) Core.<$> enableComponents]
      )

-- | MonitoringConfig is cluster monitoring configuration.
--
-- /See:/ 'newMonitoringConfig' smart constructor.
data MonitoringConfig = MonitoringConfig
  { -- | Configuration of Advanced Datapath Observability features.
    advancedDatapathObservabilityConfig :: (Core.Maybe AdvancedDatapathObservabilityConfig),
    -- | Monitoring components configuration
    componentConfig :: (Core.Maybe MonitoringComponentConfig),
    -- | Enable Google Cloud Managed Service for Prometheus in the cluster.
    managedPrometheusConfig :: (Core.Maybe ManagedPrometheusConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringConfig' with the minimum fields required to make a request.
newMonitoringConfig ::
  MonitoringConfig
newMonitoringConfig =
  MonitoringConfig
    { advancedDatapathObservabilityConfig =
        Core.Nothing,
      componentConfig = Core.Nothing,
      managedPrometheusConfig = Core.Nothing
    }

instance Core.FromJSON MonitoringConfig where
  parseJSON =
    Core.withObject
      "MonitoringConfig"
      ( \o ->
          MonitoringConfig
            Core.<$> (o Core..:? "advancedDatapathObservabilityConfig")
            Core.<*> (o Core..:? "componentConfig")
            Core.<*> (o Core..:? "managedPrometheusConfig")
      )

instance Core.ToJSON MonitoringConfig where
  toJSON MonitoringConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("advancedDatapathObservabilityConfig" Core..=)
              Core.<$> advancedDatapathObservabilityConfig,
            ("componentConfig" Core..=) Core.<$> componentConfig,
            ("managedPrometheusConfig" Core..=)
              Core.<$> managedPrometheusConfig
          ]
      )

-- | NetworkConfig reports the relative names of network & subnetwork.
--
-- /See:/ 'newNetworkConfig' smart constructor.
data NetworkConfig = NetworkConfig
  { -- | The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
    datapathProvider :: (Core.Maybe NetworkConfig_DatapathProvider),
    -- | Controls whether by default nodes have private IP addresses only. It is invalid to specify both PrivateClusterConfig.enablePrivateNodes and this field at the same time. To update the default setting, use ClusterUpdate.desired/default/enable/private/nodes
    defaultEnablePrivateNodes :: (Core.Maybe Core.Bool),
    -- | Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default/snat/status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
    defaultSnatStatus :: (Core.Maybe DefaultSnatStatus),
    -- | Disable L4 load balancer VPC firewalls to enable firewall policies.
    disableL4LbFirewallReconciliation :: (Core.Maybe Core.Bool),
    -- | DNSConfig contains clusterDNS config for this cluster.
    dnsConfig :: (Core.Maybe DNSConfig),
    -- | Whether CiliumClusterwideNetworkPolicy is enabled on this cluster.
    enableCiliumClusterwideNetworkPolicy :: (Core.Maybe Core.Bool),
    -- | Whether FQDN Network Policy is enabled on this cluster.
    enableFqdnNetworkPolicy :: (Core.Maybe Core.Bool),
    -- | Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
    enableIntraNodeVisibility :: (Core.Maybe Core.Bool),
    -- | Whether L4ILB Subsetting is enabled for this cluster.
    enableL4ilbSubsetting :: (Core.Maybe Core.Bool),
    -- | Whether multi-networking is enabled for this cluster.
    enableMultiNetworking :: (Core.Maybe Core.Bool),
    -- | GatewayAPIConfig contains the desired config of Gateway API on this cluster.
    gatewayApiConfig :: (Core.Maybe GatewayAPIConfig),
    -- | Specify the details of in-transit encryption. Now named inter-node transparent encryption.
    inTransitEncryptionConfig :: (Core.Maybe NetworkConfig_InTransitEncryptionConfig),
    -- | Output only. The relative name of the Google Compute Engine <https://cloud.google.com/compute/docs/networks-and-firewalls#networks network> to which the cluster is connected. Example: projects\/my-project\/global\/networks\/my-network
    network :: (Core.Maybe Core.Text),
    -- | Network bandwidth tier configuration.
    networkPerformanceConfig :: (Core.Maybe ClusterNetworkPerformanceConfig),
    -- | The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
    privateIpv6GoogleAccess :: (Core.Maybe NetworkConfig_PrivateIpv6GoogleAccess),
    -- | ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
    serviceExternalIpsConfig :: (Core.Maybe ServiceExternalIPsConfig),
    -- | Output only. The relative name of the Google Compute Engine <https://cloud.google.com/compute/docs/vpc subnetwork> to which the cluster is connected. Example: projects\/my-project\/regions\/us-central1\/subnetworks\/my-subnet
    subnetwork :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
newNetworkConfig ::
  NetworkConfig
newNetworkConfig =
  NetworkConfig
    { datapathProvider = Core.Nothing,
      defaultEnablePrivateNodes = Core.Nothing,
      defaultSnatStatus = Core.Nothing,
      disableL4LbFirewallReconciliation = Core.Nothing,
      dnsConfig = Core.Nothing,
      enableCiliumClusterwideNetworkPolicy = Core.Nothing,
      enableFqdnNetworkPolicy = Core.Nothing,
      enableIntraNodeVisibility = Core.Nothing,
      enableL4ilbSubsetting = Core.Nothing,
      enableMultiNetworking = Core.Nothing,
      gatewayApiConfig = Core.Nothing,
      inTransitEncryptionConfig = Core.Nothing,
      network = Core.Nothing,
      networkPerformanceConfig = Core.Nothing,
      privateIpv6GoogleAccess = Core.Nothing,
      serviceExternalIpsConfig = Core.Nothing,
      subnetwork = Core.Nothing
    }

instance Core.FromJSON NetworkConfig where
  parseJSON =
    Core.withObject
      "NetworkConfig"
      ( \o ->
          NetworkConfig
            Core.<$> (o Core..:? "datapathProvider")
            Core.<*> (o Core..:? "defaultEnablePrivateNodes")
            Core.<*> (o Core..:? "defaultSnatStatus")
            Core.<*> (o Core..:? "disableL4LbFirewallReconciliation")
            Core.<*> (o Core..:? "dnsConfig")
            Core.<*> (o Core..:? "enableCiliumClusterwideNetworkPolicy")
            Core.<*> (o Core..:? "enableFqdnNetworkPolicy")
            Core.<*> (o Core..:? "enableIntraNodeVisibility")
            Core.<*> (o Core..:? "enableL4ilbSubsetting")
            Core.<*> (o Core..:? "enableMultiNetworking")
            Core.<*> (o Core..:? "gatewayApiConfig")
            Core.<*> (o Core..:? "inTransitEncryptionConfig")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "networkPerformanceConfig")
            Core.<*> (o Core..:? "privateIpv6GoogleAccess")
            Core.<*> (o Core..:? "serviceExternalIpsConfig")
            Core.<*> (o Core..:? "subnetwork")
      )

instance Core.ToJSON NetworkConfig where
  toJSON NetworkConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("datapathProvider" Core..=) Core.<$> datapathProvider,
            ("defaultEnablePrivateNodes" Core..=)
              Core.<$> defaultEnablePrivateNodes,
            ("defaultSnatStatus" Core..=) Core.<$> defaultSnatStatus,
            ("disableL4LbFirewallReconciliation" Core..=)
              Core.<$> disableL4LbFirewallReconciliation,
            ("dnsConfig" Core..=) Core.<$> dnsConfig,
            ("enableCiliumClusterwideNetworkPolicy" Core..=)
              Core.<$> enableCiliumClusterwideNetworkPolicy,
            ("enableFqdnNetworkPolicy" Core..=)
              Core.<$> enableFqdnNetworkPolicy,
            ("enableIntraNodeVisibility" Core..=)
              Core.<$> enableIntraNodeVisibility,
            ("enableL4ilbSubsetting" Core..=) Core.<$> enableL4ilbSubsetting,
            ("enableMultiNetworking" Core..=) Core.<$> enableMultiNetworking,
            ("gatewayApiConfig" Core..=) Core.<$> gatewayApiConfig,
            ("inTransitEncryptionConfig" Core..=)
              Core.<$> inTransitEncryptionConfig,
            ("network" Core..=) Core.<$> network,
            ("networkPerformanceConfig" Core..=)
              Core.<$> networkPerformanceConfig,
            ("privateIpv6GoogleAccess" Core..=)
              Core.<$> privateIpv6GoogleAccess,
            ("serviceExternalIpsConfig" Core..=)
              Core.<$> serviceExternalIpsConfig,
            ("subnetwork" Core..=) Core.<$> subnetwork
          ]
      )

-- | Configuration of all network bandwidth tiers
--
-- /See:/ 'newNetworkPerformanceConfig' smart constructor.
newtype NetworkPerformanceConfig = NetworkPerformanceConfig
  { -- | Specifies the total network bandwidth tier for the NodePool.
    totalEgressBandwidthTier :: (Core.Maybe NetworkPerformanceConfig_TotalEgressBandwidthTier)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkPerformanceConfig' with the minimum fields required to make a request.
newNetworkPerformanceConfig ::
  NetworkPerformanceConfig
newNetworkPerformanceConfig =
  NetworkPerformanceConfig {totalEgressBandwidthTier = Core.Nothing}

instance Core.FromJSON NetworkPerformanceConfig where
  parseJSON =
    Core.withObject
      "NetworkPerformanceConfig"
      ( \o ->
          NetworkPerformanceConfig
            Core.<$> (o Core..:? "totalEgressBandwidthTier")
      )

instance Core.ToJSON NetworkPerformanceConfig where
  toJSON NetworkPerformanceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("totalEgressBandwidthTier" Core..=)
              Core.<$> totalEgressBandwidthTier
          ]
      )

-- | Configuration options for the NetworkPolicy feature. https:\/\/kubernetes.io\/docs\/concepts\/services-networking\/networkpolicies\/
--
-- /See:/ 'newNetworkPolicy' smart constructor.
data NetworkPolicy = NetworkPolicy
  { -- | Whether network policy is enabled on the cluster.
    enabled :: (Core.Maybe Core.Bool),
    -- | The selected network policy provider.
    provider :: (Core.Maybe NetworkPolicy_Provider)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkPolicy' with the minimum fields required to make a request.
newNetworkPolicy ::
  NetworkPolicy
newNetworkPolicy =
  NetworkPolicy {enabled = Core.Nothing, provider = Core.Nothing}

instance Core.FromJSON NetworkPolicy where
  parseJSON =
    Core.withObject
      "NetworkPolicy"
      ( \o ->
          NetworkPolicy
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "provider")
      )

instance Core.ToJSON NetworkPolicy where
  toJSON NetworkPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("provider" Core..=) Core.<$> provider
          ]
      )

-- | Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
--
-- /See:/ 'newNetworkPolicyConfig' smart constructor.
newtype NetworkPolicyConfig = NetworkPolicyConfig
  { -- | Whether NetworkPolicy is enabled for this cluster.
    disabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkPolicyConfig' with the minimum fields required to make a request.
newNetworkPolicyConfig ::
  NetworkPolicyConfig
newNetworkPolicyConfig =
  NetworkPolicyConfig {disabled = Core.Nothing}

instance Core.FromJSON NetworkPolicyConfig where
  parseJSON =
    Core.withObject
      "NetworkPolicyConfig"
      (\o -> NetworkPolicyConfig Core.<$> (o Core..:? "disabled"))

instance Core.ToJSON NetworkPolicyConfig where
  toJSON NetworkPolicyConfig {..} =
    Core.object
      (Core.catMaybes [("disabled" Core..=) Core.<$> disabled])

-- | Collection of Compute Engine network tags that can be applied to a node\'s underlying VM instance.
--
-- /See:/ 'newNetworkTags' smart constructor.
newtype NetworkTags = NetworkTags
  { -- | List of network tags.
    tags :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkTags' with the minimum fields required to make a request.
newNetworkTags ::
  NetworkTags
newNetworkTags = NetworkTags {tags = Core.Nothing}

instance Core.FromJSON NetworkTags where
  parseJSON =
    Core.withObject
      "NetworkTags"
      (\o -> NetworkTags Core.<$> (o Core..:? "tags"))

instance Core.ToJSON NetworkTags where
  toJSON NetworkTags {..} =
    Core.object (Core.catMaybes [("tags" Core..=) Core.<$> tags])

-- | Specifies the NodeAffinity key, values, and affinity operator according to <https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity shared sole tenant node group affinities>.
--
-- /See:/ 'newNodeAffinity' smart constructor.
data NodeAffinity = NodeAffinity
  { -- | Key for NodeAffinity.
    key :: (Core.Maybe Core.Text),
    -- | Operator for NodeAffinity.
    operator :: (Core.Maybe NodeAffinity_Operator),
    -- | Values for NodeAffinity.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeAffinity' with the minimum fields required to make a request.
newNodeAffinity ::
  NodeAffinity
newNodeAffinity =
  NodeAffinity
    { key = Core.Nothing,
      operator = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON NodeAffinity where
  parseJSON =
    Core.withObject
      "NodeAffinity"
      ( \o ->
          NodeAffinity
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "operator")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON NodeAffinity where
  toJSON NodeAffinity {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("operator" Core..=) Core.<$> operator,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not recognize parameters in @NodeConfig@. Use AutoprovisioningNodePoolDefaults instead.
--
-- /See:/ 'newNodeConfig' smart constructor.
data NodeConfig = NodeConfig
  { -- | A list of hardware accelerators to be attached to each node. See https:\/\/cloud.google.com\/compute\/docs\/gpus for more information about support for GPUs.
    accelerators :: (Core.Maybe [AcceleratorConfig]),
    -- | Advanced features for the Compute Engine VM.
    advancedMachineFeatures :: (Core.Maybe AdvancedMachineFeatures),
    -- | The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects\/[KEY/PROJECT/ID]\/locations\/[LOCATION]\/keyRings\/[RING/NAME]\/cryptoKeys\/[KEY/NAME]. For more information about protecting resources with Cloud KMS Keys please see: https:\/\/cloud.google.com\/compute\/docs\/disks\/customer-managed-encryption
    bootDiskKmsKey :: (Core.Maybe Core.Text),
    -- | Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.
    confidentialNodes :: (Core.Maybe ConfidentialNodes),
    -- | Parameters for containerd customization.
    containerdConfig :: (Core.Maybe ContainerdConfig),
    -- | Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
    diskSizeGb :: (Core.Maybe Core.Int32),
    -- | Type of the disk attached to each node (e.g. \'pd-standard\', \'pd-ssd\' or \'pd-balanced\') If unspecified, the default disk type is \'pd-standard\'
    diskType :: (Core.Maybe Core.Text),
    -- | Output only. effective/cgroup/mode is the cgroup mode actually used by the node pool. It is determined by the cgroup mode specified in the LinuxNodeConfig or the default cgroup mode based on the cluster creation version.
    effectiveCgroupMode :: (Core.Maybe NodeConfig_EffectiveCgroupMode),
    -- | Optional. Reserved for future use.
    enableConfidentialStorage :: (Core.Maybe Core.Bool),
    -- | Parameters for the node ephemeral storage using Local SSDs. If unspecified, ephemeral storage is backed by the boot disk.
    ephemeralStorageLocalSsdConfig :: (Core.Maybe EphemeralStorageLocalSsdConfig),
    -- | Enable or disable NCCL fast socket for the node pool.
    fastSocket :: (Core.Maybe FastSocket),
    -- | Google Container File System (image streaming) configs.
    gcfsConfig :: (Core.Maybe GcfsConfig),
    -- | Enable or disable gvnic in the node pool.
    gvnic :: (Core.Maybe VirtualNIC),
    -- | The image type to use for this node. Note that for a given image type, the latest version of it will be used. Please see https:\/\/cloud.google.com\/kubernetes-engine\/docs\/concepts\/node-images for available image types.
    imageType :: (Core.Maybe Core.Text),
    -- | Node kubelet configs.
    kubeletConfig :: (Core.Maybe NodeKubeletConfig),
    -- | The map of Kubernetes labels (key\/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it\'s best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/labels\/
    labels :: (Core.Maybe NodeConfig_Labels),
    -- | Parameters that can be configured on Linux nodes.
    linuxNodeConfig :: (Core.Maybe LinuxNodeConfig),
    -- | Parameters for using raw-block Local NVMe SSDs.
    localNvmeSsdBlockConfig :: (Core.Maybe LocalNvmeSsdBlockConfig),
    -- | The number of local SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd for more information.
    localSsdCount :: (Core.Maybe Core.Int32),
    -- | Specifies which method should be used for encrypting the Local SSDs attached to the node.
    localSsdEncryptionMode :: (Core.Maybe NodeConfig_LocalSsdEncryptionMode),
    -- | Logging configuration.
    loggingConfig :: (Core.Maybe NodePoolLoggingConfig),
    -- | The name of a Google Compute Engine <https://cloud.google.com/compute/docs/machine-types machine type> If unspecified, the default machine type is @e2-medium@.
    machineType :: (Core.Maybe Core.Text),
    -- | The maximum duration for the nodes to exist. If unspecified, the nodes can exist indefinitely.
    maxRunDuration :: (Core.Maybe Core.Duration),
    -- | The metadata key\/value pairs assigned to instances in the cluster. Keys must conform to the regexp @[a-zA-Z0-9-_]+@ and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - \"cluster-location\" - \"cluster-name\" - \"cluster-uid\" - \"configure-sh\" - \"containerd-configure-sh\" - \"enable-os-login\" - \"gci-ensure-gke-docker\" - \"gci-metrics-enabled\" - \"gci-update-strategy\" - \"instance-template\" - \"kube-env\" - \"startup-script\" - \"user-data\" - \"disable-address-manager\" - \"windows-startup-script-ps1\" - \"common-psm1\" - \"k8s-node-setup-psm1\" - \"install-ssh-psm1\" - \"user-profile-psm1\" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value\'s size must be less than or equal to 32 KB. The total size of all keys
    -- and values must be less than 512 KB.
    metadata :: (Core.Maybe NodeConfig_Metadata),
    -- | Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as @minCpuPlatform: \"Intel Haswell\"@ or @minCpuPlatform: \"Intel Sandy Bridge\"@. For more information, read <https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform how to specify min CPU platform>
    minCpuPlatform :: (Core.Maybe Core.Text),
    -- | Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on <https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes sole tenant nodes>.
    nodeGroup :: (Core.Maybe Core.Text),
    -- | The set of Google API scopes to be made available on all of the node VMs under the \"default\" service account. The following scopes are recommended, but not required, and by default are not included: * @https:\/\/www.googleapis.com\/auth\/compute@ is required for mounting persistent storage on your nodes. * @https:\/\/www.googleapis.com\/auth\/devstorage.read_only@ is required for communicating with __gcr.io__ (the <https://cloud.google.com/container-registry/ Google Container Registry>). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
    oauthScopes :: (Core.Maybe [Core.Text]),
    -- | Whether the nodes are created as preemptible VM instances. See: https:\/\/cloud.google.com\/compute\/docs\/instances\/preemptible for more information about preemptible VM instances.
    preemptible :: (Core.Maybe Core.Bool),
    -- | The optional reservation affinity. Setting this field will apply the specified <https://cloud.google.com/compute/docs/instances/reserving-zonal-resources Zonal Compute Reservation> to this node pool.
    reservationAffinity :: (Core.Maybe ReservationAffinity),
    -- | The resource labels for the node pool to use to annotate any related Google Compute Engine resources.
    resourceLabels :: (Core.Maybe NodeConfig_ResourceLabels),
    -- | A map of resource manager tag keys and values to be attached to the nodes.
    resourceManagerTags :: (Core.Maybe ResourceManagerTags),
    -- | Sandbox configuration for this node.
    sandboxConfig :: (Core.Maybe SandboxConfig),
    -- | Secondary boot disk update strategy.
    secondaryBootDiskUpdateStrategy :: (Core.Maybe SecondaryBootDiskUpdateStrategy),
    -- | List of secondary boot disks attached to the nodes.
    secondaryBootDisks :: (Core.Maybe [SecondaryBootDisk]),
    -- | The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the \"default\" service account is used.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Shielded Instance options.
    shieldedInstanceConfig :: (Core.Maybe ShieldedInstanceConfig),
    -- | Parameters for node pools to be backed by shared sole tenant node groups.
    soleTenantConfig :: (Core.Maybe SoleTenantConfig),
    -- | Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.
    spot :: (Core.Maybe Core.Bool),
    -- | List of Storage Pools where boot disks are provisioned.
    storagePools :: (Core.Maybe [Core.Text]),
    -- | The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.
    tags :: (Core.Maybe [Core.Text]),
    -- | List of kubernetes taints to be applied to each node. For more information, including usage and the valid values, see: https:\/\/kubernetes.io\/docs\/concepts\/configuration\/taint-and-toleration\/
    taints :: (Core.Maybe [NodeTaint]),
    -- | Parameters that can be configured on Windows nodes.
    windowsNodeConfig :: (Core.Maybe WindowsNodeConfig),
    -- | The workload metadata configuration for this node.
    workloadMetadataConfig :: (Core.Maybe WorkloadMetadataConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeConfig' with the minimum fields required to make a request.
newNodeConfig ::
  NodeConfig
newNodeConfig =
  NodeConfig
    { accelerators = Core.Nothing,
      advancedMachineFeatures = Core.Nothing,
      bootDiskKmsKey = Core.Nothing,
      confidentialNodes = Core.Nothing,
      containerdConfig = Core.Nothing,
      diskSizeGb = Core.Nothing,
      diskType = Core.Nothing,
      effectiveCgroupMode = Core.Nothing,
      enableConfidentialStorage = Core.Nothing,
      ephemeralStorageLocalSsdConfig = Core.Nothing,
      fastSocket = Core.Nothing,
      gcfsConfig = Core.Nothing,
      gvnic = Core.Nothing,
      imageType = Core.Nothing,
      kubeletConfig = Core.Nothing,
      labels = Core.Nothing,
      linuxNodeConfig = Core.Nothing,
      localNvmeSsdBlockConfig = Core.Nothing,
      localSsdCount = Core.Nothing,
      localSsdEncryptionMode = Core.Nothing,
      loggingConfig = Core.Nothing,
      machineType = Core.Nothing,
      maxRunDuration = Core.Nothing,
      metadata = Core.Nothing,
      minCpuPlatform = Core.Nothing,
      nodeGroup = Core.Nothing,
      oauthScopes = Core.Nothing,
      preemptible = Core.Nothing,
      reservationAffinity = Core.Nothing,
      resourceLabels = Core.Nothing,
      resourceManagerTags = Core.Nothing,
      sandboxConfig = Core.Nothing,
      secondaryBootDiskUpdateStrategy = Core.Nothing,
      secondaryBootDisks = Core.Nothing,
      serviceAccount = Core.Nothing,
      shieldedInstanceConfig = Core.Nothing,
      soleTenantConfig = Core.Nothing,
      spot = Core.Nothing,
      storagePools = Core.Nothing,
      tags = Core.Nothing,
      taints = Core.Nothing,
      windowsNodeConfig = Core.Nothing,
      workloadMetadataConfig = Core.Nothing
    }

instance Core.FromJSON NodeConfig where
  parseJSON =
    Core.withObject
      "NodeConfig"
      ( \o ->
          NodeConfig
            Core.<$> (o Core..:? "accelerators")
            Core.<*> (o Core..:? "advancedMachineFeatures")
            Core.<*> (o Core..:? "bootDiskKmsKey")
            Core.<*> (o Core..:? "confidentialNodes")
            Core.<*> (o Core..:? "containerdConfig")
            Core.<*> (o Core..:? "diskSizeGb")
            Core.<*> (o Core..:? "diskType")
            Core.<*> (o Core..:? "effectiveCgroupMode")
            Core.<*> (o Core..:? "enableConfidentialStorage")
            Core.<*> (o Core..:? "ephemeralStorageLocalSsdConfig")
            Core.<*> (o Core..:? "fastSocket")
            Core.<*> (o Core..:? "gcfsConfig")
            Core.<*> (o Core..:? "gvnic")
            Core.<*> (o Core..:? "imageType")
            Core.<*> (o Core..:? "kubeletConfig")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "linuxNodeConfig")
            Core.<*> (o Core..:? "localNvmeSsdBlockConfig")
            Core.<*> (o Core..:? "localSsdCount")
            Core.<*> (o Core..:? "localSsdEncryptionMode")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "maxRunDuration")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "minCpuPlatform")
            Core.<*> (o Core..:? "nodeGroup")
            Core.<*> (o Core..:? "oauthScopes")
            Core.<*> (o Core..:? "preemptible")
            Core.<*> (o Core..:? "reservationAffinity")
            Core.<*> (o Core..:? "resourceLabels")
            Core.<*> (o Core..:? "resourceManagerTags")
            Core.<*> (o Core..:? "sandboxConfig")
            Core.<*> (o Core..:? "secondaryBootDiskUpdateStrategy")
            Core.<*> (o Core..:? "secondaryBootDisks")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "shieldedInstanceConfig")
            Core.<*> (o Core..:? "soleTenantConfig")
            Core.<*> (o Core..:? "spot")
            Core.<*> (o Core..:? "storagePools")
            Core.<*> (o Core..:? "tags")
            Core.<*> (o Core..:? "taints")
            Core.<*> (o Core..:? "windowsNodeConfig")
            Core.<*> (o Core..:? "workloadMetadataConfig")
      )

instance Core.ToJSON NodeConfig where
  toJSON NodeConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("accelerators" Core..=) Core.<$> accelerators,
            ("advancedMachineFeatures" Core..=)
              Core.<$> advancedMachineFeatures,
            ("bootDiskKmsKey" Core..=) Core.<$> bootDiskKmsKey,
            ("confidentialNodes" Core..=) Core.<$> confidentialNodes,
            ("containerdConfig" Core..=) Core.<$> containerdConfig,
            ("diskSizeGb" Core..=) Core.<$> diskSizeGb,
            ("diskType" Core..=) Core.<$> diskType,
            ("effectiveCgroupMode" Core..=) Core.<$> effectiveCgroupMode,
            ("enableConfidentialStorage" Core..=)
              Core.<$> enableConfidentialStorage,
            ("ephemeralStorageLocalSsdConfig" Core..=)
              Core.<$> ephemeralStorageLocalSsdConfig,
            ("fastSocket" Core..=) Core.<$> fastSocket,
            ("gcfsConfig" Core..=) Core.<$> gcfsConfig,
            ("gvnic" Core..=) Core.<$> gvnic,
            ("imageType" Core..=) Core.<$> imageType,
            ("kubeletConfig" Core..=) Core.<$> kubeletConfig,
            ("labels" Core..=) Core.<$> labels,
            ("linuxNodeConfig" Core..=) Core.<$> linuxNodeConfig,
            ("localNvmeSsdBlockConfig" Core..=)
              Core.<$> localNvmeSsdBlockConfig,
            ("localSsdCount" Core..=) Core.<$> localSsdCount,
            ("localSsdEncryptionMode" Core..=) Core.<$> localSsdEncryptionMode,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("machineType" Core..=) Core.<$> machineType,
            ("maxRunDuration" Core..=) Core.<$> maxRunDuration,
            ("metadata" Core..=) Core.<$> metadata,
            ("minCpuPlatform" Core..=) Core.<$> minCpuPlatform,
            ("nodeGroup" Core..=) Core.<$> nodeGroup,
            ("oauthScopes" Core..=) Core.<$> oauthScopes,
            ("preemptible" Core..=) Core.<$> preemptible,
            ("reservationAffinity" Core..=) Core.<$> reservationAffinity,
            ("resourceLabels" Core..=) Core.<$> resourceLabels,
            ("resourceManagerTags" Core..=) Core.<$> resourceManagerTags,
            ("sandboxConfig" Core..=) Core.<$> sandboxConfig,
            ("secondaryBootDiskUpdateStrategy" Core..=)
              Core.<$> secondaryBootDiskUpdateStrategy,
            ("secondaryBootDisks" Core..=) Core.<$> secondaryBootDisks,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("shieldedInstanceConfig" Core..=) Core.<$> shieldedInstanceConfig,
            ("soleTenantConfig" Core..=) Core.<$> soleTenantConfig,
            ("spot" Core..=) Core.<$> spot,
            ("storagePools" Core..=) Core.<$> storagePools,
            ("tags" Core..=) Core.<$> tags,
            ("taints" Core..=) Core.<$> taints,
            ("windowsNodeConfig" Core..=) Core.<$> windowsNodeConfig,
            ("workloadMetadataConfig" Core..=)
              Core.<$> workloadMetadataConfig
          ]
      )

-- | The map of Kubernetes labels (key\/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it\'s best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/labels\/
--
-- /See:/ 'newNodeConfig_Labels' smart constructor.
newtype NodeConfig_Labels = NodeConfig_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeConfig_Labels' with the minimum fields required to make a request.
newNodeConfig_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  NodeConfig_Labels
newNodeConfig_Labels additional =
  NodeConfig_Labels {additional = additional}

instance Core.FromJSON NodeConfig_Labels where
  parseJSON =
    Core.withObject
      "NodeConfig_Labels"
      (\o -> NodeConfig_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON NodeConfig_Labels where
  toJSON NodeConfig_Labels {..} = Core.toJSON additional

-- | The metadata key\/value pairs assigned to instances in the cluster. Keys must conform to the regexp @[a-zA-Z0-9-_]+@ and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - \"cluster-location\" - \"cluster-name\" - \"cluster-uid\" - \"configure-sh\" - \"containerd-configure-sh\" - \"enable-os-login\" - \"gci-ensure-gke-docker\" - \"gci-metrics-enabled\" - \"gci-update-strategy\" - \"instance-template\" - \"kube-env\" - \"startup-script\" - \"user-data\" - \"disable-address-manager\" - \"windows-startup-script-ps1\" - \"common-psm1\" - \"k8s-node-setup-psm1\" - \"install-ssh-psm1\" - \"user-profile-psm1\" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value\'s size must be less than or equal to 32 KB. The total size of all keys
-- and values must be less than 512 KB.
--
-- /See:/ 'newNodeConfig_Metadata' smart constructor.
newtype NodeConfig_Metadata = NodeConfig_Metadata
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeConfig_Metadata' with the minimum fields required to make a request.
newNodeConfig_Metadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  NodeConfig_Metadata
newNodeConfig_Metadata additional =
  NodeConfig_Metadata {additional = additional}

instance Core.FromJSON NodeConfig_Metadata where
  parseJSON =
    Core.withObject
      "NodeConfig_Metadata"
      (\o -> NodeConfig_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON NodeConfig_Metadata where
  toJSON NodeConfig_Metadata {..} = Core.toJSON additional

-- | The resource labels for the node pool to use to annotate any related Google Compute Engine resources.
--
-- /See:/ 'newNodeConfig_ResourceLabels' smart constructor.
newtype NodeConfig_ResourceLabels = NodeConfig_ResourceLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeConfig_ResourceLabels' with the minimum fields required to make a request.
newNodeConfig_ResourceLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  NodeConfig_ResourceLabels
newNodeConfig_ResourceLabels additional =
  NodeConfig_ResourceLabels {additional = additional}

instance Core.FromJSON NodeConfig_ResourceLabels where
  parseJSON =
    Core.withObject
      "NodeConfig_ResourceLabels"
      ( \o ->
          NodeConfig_ResourceLabels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON NodeConfig_ResourceLabels where
  toJSON NodeConfig_ResourceLabels {..} = Core.toJSON additional

-- | Subset of NodeConfig message that has defaults.
--
-- /See:/ 'newNodeConfigDefaults' smart constructor.
data NodeConfigDefaults = NodeConfigDefaults
  { -- | Parameters for containerd customization.
    containerdConfig :: (Core.Maybe ContainerdConfig),
    -- | GCFS (Google Container File System, also known as Riptide) options.
    gcfsConfig :: (Core.Maybe GcfsConfig),
    -- | Logging configuration for node pools.
    loggingConfig :: (Core.Maybe NodePoolLoggingConfig),
    -- | NodeKubeletConfig controls the defaults for new node-pools. Currently only @insecure_kubelet_readonly_port_enabled@ can be set here.
    nodeKubeletConfig :: (Core.Maybe NodeKubeletConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeConfigDefaults' with the minimum fields required to make a request.
newNodeConfigDefaults ::
  NodeConfigDefaults
newNodeConfigDefaults =
  NodeConfigDefaults
    { containerdConfig = Core.Nothing,
      gcfsConfig = Core.Nothing,
      loggingConfig = Core.Nothing,
      nodeKubeletConfig = Core.Nothing
    }

instance Core.FromJSON NodeConfigDefaults where
  parseJSON =
    Core.withObject
      "NodeConfigDefaults"
      ( \o ->
          NodeConfigDefaults
            Core.<$> (o Core..:? "containerdConfig")
            Core.<*> (o Core..:? "gcfsConfig")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "nodeKubeletConfig")
      )

instance Core.ToJSON NodeConfigDefaults where
  toJSON NodeConfigDefaults {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerdConfig" Core..=) Core.<$> containerdConfig,
            ("gcfsConfig" Core..=) Core.<$> gcfsConfig,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("nodeKubeletConfig" Core..=) Core.<$> nodeKubeletConfig
          ]
      )

-- | Node kubelet configs.
--
-- /See:/ 'newNodeKubeletConfig' smart constructor.
data NodeKubeletConfig = NodeKubeletConfig
  { -- | Optional. Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns (ending in @*@). The unsafe namespaced sysctl groups are @kernel.shm*@, @kernel.msg*@, @kernel.sem@, @fs.mqueue.*@, and @net.*@. Leaving this allowlist empty means they cannot be set on Pods. To allow certain sysctls or sysctl patterns to be set on Pods, list them separated by commas. For example: @kernel.msg*,net.ipv4.route.min_pmtu@. See https:\/\/kubernetes.io\/docs\/tasks\/administer-cluster\/sysctl-cluster\/ for more details.
    allowedUnsafeSysctls :: (Core.Maybe [Core.Text]),
    -- | Optional. Defines the maximum number of container log files that can be present for a container. See https:\/\/kubernetes.io\/docs\/concepts\/cluster-administration\/logging\/#log-rotation The value must be an integer between 2 and 10, inclusive. The default value is 5 if unspecified.
    containerLogMaxFiles :: (Core.Maybe Core.Int32),
    -- | Optional. Defines the maximum size of the container log file before it is rotated. See https:\/\/kubernetes.io\/docs\/concepts\/cluster-administration\/logging\/#log-rotation Valid format is positive number + unit, e.g. 100Ki, 10Mi. Valid units are Ki, Mi, Gi. The value must be between 10Mi and 500Mi, inclusive. Note that the total container log size (container/log/max/size * container/log/max/files) cannot exceed 1% of the total storage of the node, to avoid disk pressure caused by log files. The default value is 10Mi if unspecified.
    containerLogMaxSize :: (Core.Maybe Core.Text),
    -- | Enable CPU CFS quota enforcement for containers that specify CPU limits. This option is enabled by default which makes kubelet use CFS quota (https:\/\/www.kernel.org\/doc\/Documentation\/scheduler\/sched-bwc.txt) to enforce container CPU limits. Otherwise, CPU limits will not be enforced at all. Disable this option to mitigate CPU throttling problems while still having your pods to be in Guaranteed QoS class by specifying the CPU limits. The default value is \'true\' if unspecified.
    cpuCfsQuota :: (Core.Maybe Core.Bool),
    -- | Set the CPU CFS quota period value \'cpu.cfs/period/us\'. The string must be a sequence of decimal numbers, each with optional fraction and a unit suffix, such as \"300ms\". Valid time units are \"ns\", \"us\" (or \"µs\"), \"ms\", \"s\", \"m\", \"h\". The value must be a positive duration.
    cpuCfsQuotaPeriod :: (Core.Maybe Core.Text),
    -- | Control the CPU management policy on the node. See https:\/\/kubernetes.io\/docs\/tasks\/administer-cluster\/cpu-management-policies\/ The following values are allowed. * \"none\": the default, which represents the existing scheduling behavior. * \"static\": allows pods with certain resource characteristics to be granted increased CPU affinity and exclusivity on the node. The default value is \'none\' if unspecified.
    cpuManagerPolicy :: (Core.Maybe Core.Text),
    -- | Optional. Defines the percent of disk usage after which image garbage collection is always run. The percent is calculated as this field value out of 100. The value must be between 10 and 85, inclusive and greater than image/gc/low/threshold/percent. The default value is 85 if unspecified.
    imageGcHighThresholdPercent :: (Core.Maybe Core.Int32),
    -- | Optional. Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to. The percent is calculated as this field value out of 100. The value must be between 10 and 85, inclusive and smaller than image/gc/high/threshold/percent. The default value is 80 if unspecified.
    imageGcLowThresholdPercent :: (Core.Maybe Core.Int32),
    -- | Optional. Defines the maximum age an image can be unused before it is garbage collected. The string must be a sequence of decimal numbers, each with optional fraction and a unit suffix, such as \"300s\", \"1.5h\", and \"2h45m\". Valid time units are \"ns\", \"us\" (or \"µs\"), \"ms\", \"s\", \"m\", \"h\". The value must be a positive duration greater than image/minimum/gc_age or \"0s\". The default value is \"0s\" if unspecified, which disables this field, meaning images won\'t be garbage collected based on being unused for too long.
    imageMaximumGcAge :: (Core.Maybe Core.Text),
    -- | Optional. Defines the minimum age for an unused image before it is garbage collected. The string must be a sequence of decimal numbers, each with optional fraction and a unit suffix, such as \"300s\", \"1.5h\", and \"2h45m\". Valid time units are \"ns\", \"us\" (or \"µs\"), \"ms\", \"s\", \"m\", \"h\". The value must be a positive duration less than or equal to 2 minutes. The default value is \"2m0s\" if unspecified.
    imageMinimumGcAge :: (Core.Maybe Core.Text),
    -- | Enable or disable Kubelet read only port.
    insecureKubeletReadonlyPortEnabled :: (Core.Maybe Core.Bool),
    -- | Set the Pod PID limits. See https:\/\/kubernetes.io\/docs\/concepts\/policy\/pid-limiting\/#pod-pid-limits Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.
    podPidsLimit :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeKubeletConfig' with the minimum fields required to make a request.
newNodeKubeletConfig ::
  NodeKubeletConfig
newNodeKubeletConfig =
  NodeKubeletConfig
    { allowedUnsafeSysctls = Core.Nothing,
      containerLogMaxFiles = Core.Nothing,
      containerLogMaxSize = Core.Nothing,
      cpuCfsQuota = Core.Nothing,
      cpuCfsQuotaPeriod = Core.Nothing,
      cpuManagerPolicy = Core.Nothing,
      imageGcHighThresholdPercent = Core.Nothing,
      imageGcLowThresholdPercent = Core.Nothing,
      imageMaximumGcAge = Core.Nothing,
      imageMinimumGcAge = Core.Nothing,
      insecureKubeletReadonlyPortEnabled = Core.Nothing,
      podPidsLimit = Core.Nothing
    }

instance Core.FromJSON NodeKubeletConfig where
  parseJSON =
    Core.withObject
      "NodeKubeletConfig"
      ( \o ->
          NodeKubeletConfig
            Core.<$> (o Core..:? "allowedUnsafeSysctls")
            Core.<*> (o Core..:? "containerLogMaxFiles")
            Core.<*> (o Core..:? "containerLogMaxSize")
            Core.<*> (o Core..:? "cpuCfsQuota")
            Core.<*> (o Core..:? "cpuCfsQuotaPeriod")
            Core.<*> (o Core..:? "cpuManagerPolicy")
            Core.<*> (o Core..:? "imageGcHighThresholdPercent")
            Core.<*> (o Core..:? "imageGcLowThresholdPercent")
            Core.<*> (o Core..:? "imageMaximumGcAge")
            Core.<*> (o Core..:? "imageMinimumGcAge")
            Core.<*> (o Core..:? "insecureKubeletReadonlyPortEnabled")
            Core.<*> (o Core..:? "podPidsLimit" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON NodeKubeletConfig where
  toJSON NodeKubeletConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedUnsafeSysctls" Core..=) Core.<$> allowedUnsafeSysctls,
            ("containerLogMaxFiles" Core..=) Core.<$> containerLogMaxFiles,
            ("containerLogMaxSize" Core..=) Core.<$> containerLogMaxSize,
            ("cpuCfsQuota" Core..=) Core.<$> cpuCfsQuota,
            ("cpuCfsQuotaPeriod" Core..=) Core.<$> cpuCfsQuotaPeriod,
            ("cpuManagerPolicy" Core..=) Core.<$> cpuManagerPolicy,
            ("imageGcHighThresholdPercent" Core..=)
              Core.<$> imageGcHighThresholdPercent,
            ("imageGcLowThresholdPercent" Core..=)
              Core.<$> imageGcLowThresholdPercent,
            ("imageMaximumGcAge" Core..=) Core.<$> imageMaximumGcAge,
            ("imageMinimumGcAge" Core..=) Core.<$> imageMinimumGcAge,
            ("insecureKubeletReadonlyPortEnabled" Core..=)
              Core.<$> insecureKubeletReadonlyPortEnabled,
            ("podPidsLimit" Core..=) Core.. Core.AsText Core.<$> podPidsLimit
          ]
      )

-- | Collection of node-level <https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Kubernetes labels>.
--
-- /See:/ 'newNodeLabels' smart constructor.
newtype NodeLabels = NodeLabels
  { -- | Map of node label keys and node label values.
    labels :: (Core.Maybe NodeLabels_Labels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeLabels' with the minimum fields required to make a request.
newNodeLabels ::
  NodeLabels
newNodeLabels = NodeLabels {labels = Core.Nothing}

instance Core.FromJSON NodeLabels where
  parseJSON =
    Core.withObject
      "NodeLabels"
      (\o -> NodeLabels Core.<$> (o Core..:? "labels"))

instance Core.ToJSON NodeLabels where
  toJSON NodeLabels {..} =
    Core.object (Core.catMaybes [("labels" Core..=) Core.<$> labels])

-- | Map of node label keys and node label values.
--
-- /See:/ 'newNodeLabels_Labels' smart constructor.
newtype NodeLabels_Labels = NodeLabels_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeLabels_Labels' with the minimum fields required to make a request.
newNodeLabels_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  NodeLabels_Labels
newNodeLabels_Labels additional =
  NodeLabels_Labels {additional = additional}

instance Core.FromJSON NodeLabels_Labels where
  parseJSON =
    Core.withObject
      "NodeLabels_Labels"
      (\o -> NodeLabels_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON NodeLabels_Labels where
  toJSON NodeLabels_Labels {..} = Core.toJSON additional

-- | NodeManagement defines the set of node management services turned on for the node pool.
--
-- /See:/ 'newNodeManagement' smart constructor.
data NodeManagement = NodeManagement
  { -- | A flag that specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
    autoRepair :: (Core.Maybe Core.Bool),
    -- | A flag that specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
    autoUpgrade :: (Core.Maybe Core.Bool),
    -- | Specifies the Auto Upgrade knobs for the node pool.
    upgradeOptions :: (Core.Maybe AutoUpgradeOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeManagement' with the minimum fields required to make a request.
newNodeManagement ::
  NodeManagement
newNodeManagement =
  NodeManagement
    { autoRepair = Core.Nothing,
      autoUpgrade = Core.Nothing,
      upgradeOptions = Core.Nothing
    }

instance Core.FromJSON NodeManagement where
  parseJSON =
    Core.withObject
      "NodeManagement"
      ( \o ->
          NodeManagement
            Core.<$> (o Core..:? "autoRepair")
            Core.<*> (o Core..:? "autoUpgrade")
            Core.<*> (o Core..:? "upgradeOptions")
      )

instance Core.ToJSON NodeManagement where
  toJSON NodeManagement {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoRepair" Core..=) Core.<$> autoRepair,
            ("autoUpgrade" Core..=) Core.<$> autoUpgrade,
            ("upgradeOptions" Core..=) Core.<$> upgradeOptions
          ]
      )

-- | Parameters for node pool-level network config.
--
-- /See:/ 'newNodeNetworkConfig' smart constructor.
data NodeNetworkConfig = NodeNetworkConfig
  { -- | We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
    additionalNodeNetworkConfigs :: (Core.Maybe [AdditionalNodeNetworkConfig]),
    -- | We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
    additionalPodNetworkConfigs :: (Core.Maybe [AdditionalPodNetworkConfig]),
    -- | Input only. Whether to create a new range for pod IPs in this node pool. Defaults are provided for @pod_range@ and @pod_ipv4_cidr_block@ if they are not specified. If neither @create_pod_range@ or @pod_range@ are specified, the cluster-level default (@ip_allocation_policy.cluster_ipv4_cidr_block@) is used. Only applicable if @ip_allocation_policy.use_ip_aliases@ is true. This field cannot be changed after the node pool has been created.
    createPodRange :: (Core.Maybe Core.Bool),
    -- | Whether nodes have internal IP addresses only. If enable/private/nodes is not specified, then the value is derived from Cluster.NetworkConfig.default/enable/private_nodes
    enablePrivateNodes :: (Core.Maybe Core.Bool),
    -- | Network bandwidth tier configuration.
    networkPerformanceConfig :: (Core.Maybe NetworkPerformanceConfig),
    -- | [PRIVATE FIELD] Pod CIDR size overprovisioning config for the nodepool. Pod CIDR size per node depends on max/pods/per/node. By default, the value of max/pods/per/node is rounded off to next power of 2 and we then double that to get the size of pod CIDR block per node. Example: max/pods/per/node of 30 would result in 64 IPs (\/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max/pods/per/node of 30 will result in 32 IPs (\/27) when overprovisioning is disabled.
    podCidrOverprovisionConfig :: (Core.Maybe PodCIDROverprovisionConfig),
    -- | The IP address range for pod IPs in this node pool. Only applicable if @create_pod_range@ is true. Set to blank to have a range chosen with the default size. Set to \/netmask (e.g. @\/14@) to have a range chosen with a specific netmask. Set to a <https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) to pick a specific range to use. Only applicable if @ip_allocation_policy.use_ip_aliases@ is true. This field cannot be changed after the node pool has been created.
    podIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Output only. The utilization of the IPv4 range for the pod. The ratio is Usage\/[Total number of IPs in the secondary range], Usage=numNodes/numZones/podIPsPerNode.
    podIpv4RangeUtilization :: (Core.Maybe Core.Double),
    -- | The ID of the secondary range for pod IPs. If @create_pod_range@ is true, this ID is used for the new range. If @create_pod_range@ is false, uses an existing secondary range with this ID. Only applicable if @ip_allocation_policy.use_ip_aliases@ is true. This field cannot be changed after the node pool has been created.
    podRange :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeNetworkConfig' with the minimum fields required to make a request.
newNodeNetworkConfig ::
  NodeNetworkConfig
newNodeNetworkConfig =
  NodeNetworkConfig
    { additionalNodeNetworkConfigs = Core.Nothing,
      additionalPodNetworkConfigs = Core.Nothing,
      createPodRange = Core.Nothing,
      enablePrivateNodes = Core.Nothing,
      networkPerformanceConfig = Core.Nothing,
      podCidrOverprovisionConfig = Core.Nothing,
      podIpv4CidrBlock = Core.Nothing,
      podIpv4RangeUtilization = Core.Nothing,
      podRange = Core.Nothing
    }

instance Core.FromJSON NodeNetworkConfig where
  parseJSON =
    Core.withObject
      "NodeNetworkConfig"
      ( \o ->
          NodeNetworkConfig
            Core.<$> (o Core..:? "additionalNodeNetworkConfigs")
            Core.<*> (o Core..:? "additionalPodNetworkConfigs")
            Core.<*> (o Core..:? "createPodRange")
            Core.<*> (o Core..:? "enablePrivateNodes")
            Core.<*> (o Core..:? "networkPerformanceConfig")
            Core.<*> (o Core..:? "podCidrOverprovisionConfig")
            Core.<*> (o Core..:? "podIpv4CidrBlock")
            Core.<*> (o Core..:? "podIpv4RangeUtilization")
            Core.<*> (o Core..:? "podRange")
      )

instance Core.ToJSON NodeNetworkConfig where
  toJSON NodeNetworkConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalNodeNetworkConfigs" Core..=)
              Core.<$> additionalNodeNetworkConfigs,
            ("additionalPodNetworkConfigs" Core..=)
              Core.<$> additionalPodNetworkConfigs,
            ("createPodRange" Core..=) Core.<$> createPodRange,
            ("enablePrivateNodes" Core..=) Core.<$> enablePrivateNodes,
            ("networkPerformanceConfig" Core..=)
              Core.<$> networkPerformanceConfig,
            ("podCidrOverprovisionConfig" Core..=)
              Core.<$> podCidrOverprovisionConfig,
            ("podIpv4CidrBlock" Core..=) Core.<$> podIpv4CidrBlock,
            ("podIpv4RangeUtilization" Core..=)
              Core.<$> podIpv4RangeUtilization,
            ("podRange" Core..=) Core.<$> podRange
          ]
      )

-- | NodePool contains the name and configuration for a cluster\'s node pool. Node pools are a set of nodes (i.e. VM\'s), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.
--
-- /See:/ 'newNodePool' smart constructor.
data NodePool = NodePool
  { -- | Specifies the autopilot configuration for this node pool. This field is exclusively reserved for Cluster Autoscaler to implement go\/gke-managed-nodes-ccc-api
    autopilotConfig :: (Core.Maybe AutopilotConfig),
    -- | Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
    autoscaling :: (Core.Maybe NodePoolAutoscaling),
    -- | Enable best effort provisioning for nodes
    bestEffortProvisioning :: (Core.Maybe BestEffortProvisioning),
    -- | Which conditions caused the current node pool state.
    conditions :: (Core.Maybe [StatusCondition]),
    -- | The node configuration of the pool.
    config :: (Core.Maybe NodeConfig),
    -- | This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
    etag :: (Core.Maybe Core.Text),
    -- | The initial node count for the pool. You must ensure that your Compute Engine <https://cloud.google.com/compute/quotas resource quota> is sufficient for this number of instances. You must also have available firewall and routes quota.
    initialNodeCount :: (Core.Maybe Core.Int32),
    -- | Output only. The resource URLs of the <https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances managed instance groups> associated with this node pool. During the node pool blue-green upgrade operation, the URLs contain both blue and green resources.
    instanceGroupUrls :: (Core.Maybe [Core.Text]),
    -- | The list of Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zones> in which the NodePool\'s nodes should be located. If this value is unspecified during node pool creation, the <https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations Cluster.Locations> value will be used, instead. Warning: changing node pool locations will result in nodes being added and\/or removed.
    locations :: (Core.Maybe [Core.Text]),
    -- | NodeManagement configuration for this NodePool.
    management :: (Core.Maybe NodeManagement),
    -- | The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
    maxPodsConstraint :: (Core.Maybe MaxPodsConstraint),
    -- | The name of the node pool.
    name :: (Core.Maybe Core.Text),
    -- | Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
    networkConfig :: (Core.Maybe NodeNetworkConfig),
    -- | Specifies the node placement policy.
    placementPolicy :: (Core.Maybe PlacementPolicy),
    -- | Output only. The pod CIDR block size per node in this node pool.
    podIpv4CidrSize :: (Core.Maybe Core.Int32),
    -- | Specifies the configuration of queued provisioning.
    queuedProvisioning :: (Core.Maybe QueuedProvisioning),
    -- | Output only. Server-defined URL for the resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | Output only. The status of the nodes in this pool instance.
    status :: (Core.Maybe NodePool_Status),
    -- | Output only. Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Output only. Update info contains relevant information during a node pool update.
    updateInfo :: (Core.Maybe UpdateInfo),
    -- | Upgrade settings control disruption and speed of the upgrade.
    upgradeSettings :: (Core.Maybe UpgradeSettings),
    -- | The version of Kubernetes running on this NodePool\'s nodes. If unspecified, it defaults as described <https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version here>.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodePool' with the minimum fields required to make a request.
newNodePool ::
  NodePool
newNodePool =
  NodePool
    { autopilotConfig = Core.Nothing,
      autoscaling = Core.Nothing,
      bestEffortProvisioning = Core.Nothing,
      conditions = Core.Nothing,
      config = Core.Nothing,
      etag = Core.Nothing,
      initialNodeCount = Core.Nothing,
      instanceGroupUrls = Core.Nothing,
      locations = Core.Nothing,
      management = Core.Nothing,
      maxPodsConstraint = Core.Nothing,
      name = Core.Nothing,
      networkConfig = Core.Nothing,
      placementPolicy = Core.Nothing,
      podIpv4CidrSize = Core.Nothing,
      queuedProvisioning = Core.Nothing,
      selfLink = Core.Nothing,
      status = Core.Nothing,
      statusMessage = Core.Nothing,
      updateInfo = Core.Nothing,
      upgradeSettings = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON NodePool where
  parseJSON =
    Core.withObject
      "NodePool"
      ( \o ->
          NodePool
            Core.<$> (o Core..:? "autopilotConfig")
            Core.<*> (o Core..:? "autoscaling")
            Core.<*> (o Core..:? "bestEffortProvisioning")
            Core.<*> (o Core..:? "conditions")
            Core.<*> (o Core..:? "config")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "initialNodeCount")
            Core.<*> (o Core..:? "instanceGroupUrls")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "management")
            Core.<*> (o Core..:? "maxPodsConstraint")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networkConfig")
            Core.<*> (o Core..:? "placementPolicy")
            Core.<*> (o Core..:? "podIpv4CidrSize")
            Core.<*> (o Core..:? "queuedProvisioning")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "updateInfo")
            Core.<*> (o Core..:? "upgradeSettings")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON NodePool where
  toJSON NodePool {..} =
    Core.object
      ( Core.catMaybes
          [ ("autopilotConfig" Core..=) Core.<$> autopilotConfig,
            ("autoscaling" Core..=) Core.<$> autoscaling,
            ("bestEffortProvisioning" Core..=) Core.<$> bestEffortProvisioning,
            ("conditions" Core..=) Core.<$> conditions,
            ("config" Core..=) Core.<$> config,
            ("etag" Core..=) Core.<$> etag,
            ("initialNodeCount" Core..=) Core.<$> initialNodeCount,
            ("instanceGroupUrls" Core..=) Core.<$> instanceGroupUrls,
            ("locations" Core..=) Core.<$> locations,
            ("management" Core..=) Core.<$> management,
            ("maxPodsConstraint" Core..=) Core.<$> maxPodsConstraint,
            ("name" Core..=) Core.<$> name,
            ("networkConfig" Core..=) Core.<$> networkConfig,
            ("placementPolicy" Core..=) Core.<$> placementPolicy,
            ("podIpv4CidrSize" Core..=) Core.<$> podIpv4CidrSize,
            ("queuedProvisioning" Core..=) Core.<$> queuedProvisioning,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("status" Core..=) Core.<$> status,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("updateInfo" Core..=) Core.<$> updateInfo,
            ("upgradeSettings" Core..=) Core.<$> upgradeSettings,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
--
-- /See:/ 'newNodePoolAutoConfig' smart constructor.
data NodePoolAutoConfig = NodePoolAutoConfig
  { -- | Output only. Configuration options for Linux nodes.
    linuxNodeConfig :: (Core.Maybe LinuxNodeConfig),
    -- | The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
    networkTags :: (Core.Maybe NetworkTags),
    -- | NodeKubeletConfig controls the defaults for autoprovisioned node-pools. Currently only @insecure_kubelet_readonly_port_enabled@ can be set here.
    nodeKubeletConfig :: (Core.Maybe NodeKubeletConfig),
    -- | Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
    resourceManagerTags :: (Core.Maybe ResourceManagerTags)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodePoolAutoConfig' with the minimum fields required to make a request.
newNodePoolAutoConfig ::
  NodePoolAutoConfig
newNodePoolAutoConfig =
  NodePoolAutoConfig
    { linuxNodeConfig = Core.Nothing,
      networkTags = Core.Nothing,
      nodeKubeletConfig = Core.Nothing,
      resourceManagerTags = Core.Nothing
    }

instance Core.FromJSON NodePoolAutoConfig where
  parseJSON =
    Core.withObject
      "NodePoolAutoConfig"
      ( \o ->
          NodePoolAutoConfig
            Core.<$> (o Core..:? "linuxNodeConfig")
            Core.<*> (o Core..:? "networkTags")
            Core.<*> (o Core..:? "nodeKubeletConfig")
            Core.<*> (o Core..:? "resourceManagerTags")
      )

instance Core.ToJSON NodePoolAutoConfig where
  toJSON NodePoolAutoConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("linuxNodeConfig" Core..=) Core.<$> linuxNodeConfig,
            ("networkTags" Core..=) Core.<$> networkTags,
            ("nodeKubeletConfig" Core..=) Core.<$> nodeKubeletConfig,
            ("resourceManagerTags" Core..=) Core.<$> resourceManagerTags
          ]
      )

-- | NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
--
-- /See:/ 'newNodePoolAutoscaling' smart constructor.
data NodePoolAutoscaling = NodePoolAutoscaling
  { -- | Can this node pool be deleted automatically.
    autoprovisioned :: (Core.Maybe Core.Bool),
    -- | Is autoscaling enabled for this node pool.
    enabled :: (Core.Maybe Core.Bool),
    -- | Location policy used when scaling up a nodepool.
    locationPolicy :: (Core.Maybe NodePoolAutoscaling_LocationPolicy),
    -- | Maximum number of nodes for one location in the node pool. Must be >= min/node/count. There has to be enough quota to scale up the cluster.
    maxNodeCount :: (Core.Maybe Core.Int32),
    -- | Minimum number of nodes for one location in the node pool. Must be greater than or equal to 0 and less than or equal to max/node/count.
    minNodeCount :: (Core.Maybe Core.Int32),
    -- | Maximum number of nodes in the node pool. Must be greater than or equal to total/min/node/count. There has to be enough quota to scale up the cluster. The total/node/count fields are mutually exclusive with the node/count fields.
    totalMaxNodeCount :: (Core.Maybe Core.Int32),
    -- | Minimum number of nodes in the node pool. Must be greater than or equal to 0 and less than or equal to total/max/node/count. The total/node/count fields are mutually exclusive with the node/count fields.
    totalMinNodeCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodePoolAutoscaling' with the minimum fields required to make a request.
newNodePoolAutoscaling ::
  NodePoolAutoscaling
newNodePoolAutoscaling =
  NodePoolAutoscaling
    { autoprovisioned = Core.Nothing,
      enabled = Core.Nothing,
      locationPolicy = Core.Nothing,
      maxNodeCount = Core.Nothing,
      minNodeCount = Core.Nothing,
      totalMaxNodeCount = Core.Nothing,
      totalMinNodeCount = Core.Nothing
    }

instance Core.FromJSON NodePoolAutoscaling where
  parseJSON =
    Core.withObject
      "NodePoolAutoscaling"
      ( \o ->
          NodePoolAutoscaling
            Core.<$> (o Core..:? "autoprovisioned")
            Core.<*> (o Core..:? "enabled")
            Core.<*> (o Core..:? "locationPolicy")
            Core.<*> (o Core..:? "maxNodeCount")
            Core.<*> (o Core..:? "minNodeCount")
            Core.<*> (o Core..:? "totalMaxNodeCount")
            Core.<*> (o Core..:? "totalMinNodeCount")
      )

instance Core.ToJSON NodePoolAutoscaling where
  toJSON NodePoolAutoscaling {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoprovisioned" Core..=) Core.<$> autoprovisioned,
            ("enabled" Core..=) Core.<$> enabled,
            ("locationPolicy" Core..=) Core.<$> locationPolicy,
            ("maxNodeCount" Core..=) Core.<$> maxNodeCount,
            ("minNodeCount" Core..=) Core.<$> minNodeCount,
            ("totalMaxNodeCount" Core..=) Core.<$> totalMaxNodeCount,
            ("totalMinNodeCount" Core..=) Core.<$> totalMinNodeCount
          ]
      )

-- | Subset of Nodepool message that has defaults.
--
-- /See:/ 'newNodePoolDefaults' smart constructor.
newtype NodePoolDefaults = NodePoolDefaults
  { -- | Subset of NodeConfig message that has defaults.
    nodeConfigDefaults :: (Core.Maybe NodeConfigDefaults)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodePoolDefaults' with the minimum fields required to make a request.
newNodePoolDefaults ::
  NodePoolDefaults
newNodePoolDefaults =
  NodePoolDefaults {nodeConfigDefaults = Core.Nothing}

instance Core.FromJSON NodePoolDefaults where
  parseJSON =
    Core.withObject
      "NodePoolDefaults"
      ( \o ->
          NodePoolDefaults Core.<$> (o Core..:? "nodeConfigDefaults")
      )

instance Core.ToJSON NodePoolDefaults where
  toJSON NodePoolDefaults {..} =
    Core.object
      ( Core.catMaybes
          [("nodeConfigDefaults" Core..=) Core.<$> nodeConfigDefaults]
      )

-- | NodePoolLoggingConfig specifies logging configuration for nodepools.
--
-- /See:/ 'newNodePoolLoggingConfig' smart constructor.
newtype NodePoolLoggingConfig = NodePoolLoggingConfig
  { -- | Logging variant configuration.
    variantConfig :: (Core.Maybe LoggingVariantConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodePoolLoggingConfig' with the minimum fields required to make a request.
newNodePoolLoggingConfig ::
  NodePoolLoggingConfig
newNodePoolLoggingConfig =
  NodePoolLoggingConfig {variantConfig = Core.Nothing}

instance Core.FromJSON NodePoolLoggingConfig where
  parseJSON =
    Core.withObject
      "NodePoolLoggingConfig"
      ( \o ->
          NodePoolLoggingConfig Core.<$> (o Core..:? "variantConfig")
      )

instance Core.ToJSON NodePoolLoggingConfig where
  toJSON NodePoolLoggingConfig {..} =
    Core.object
      (Core.catMaybes [("variantConfig" Core..=) Core.<$> variantConfig])

-- | Kubernetes taint is composed of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See <https://kubernetes.io/docs/concepts/configuration/taint-and-toleration here> for more information, including usage and the valid values.
--
-- /See:/ 'newNodeTaint' smart constructor.
data NodeTaint = NodeTaint
  { -- | Effect for taint.
    effect :: (Core.Maybe NodeTaint_Effect),
    -- | Key for taint.
    key :: (Core.Maybe Core.Text),
    -- | Value for taint.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeTaint' with the minimum fields required to make a request.
newNodeTaint ::
  NodeTaint
newNodeTaint =
  NodeTaint
    { effect = Core.Nothing,
      key = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON NodeTaint where
  parseJSON =
    Core.withObject
      "NodeTaint"
      ( \o ->
          NodeTaint
            Core.<$> (o Core..:? "effect")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON NodeTaint where
  toJSON NodeTaint {..} =
    Core.object
      ( Core.catMaybes
          [ ("effect" Core..=) Core.<$> effect,
            ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Collection of Kubernetes <https://kubernetes.io/docs/concepts/configuration/taint-and-toleration node taints>.
--
-- /See:/ 'newNodeTaints' smart constructor.
newtype NodeTaints = NodeTaints
  { -- | List of node taints.
    taints :: (Core.Maybe [NodeTaint])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeTaints' with the minimum fields required to make a request.
newNodeTaints ::
  NodeTaints
newNodeTaints = NodeTaints {taints = Core.Nothing}

instance Core.FromJSON NodeTaints where
  parseJSON =
    Core.withObject
      "NodeTaints"
      (\o -> NodeTaints Core.<$> (o Core..:? "taints"))

instance Core.ToJSON NodeTaints where
  toJSON NodeTaints {..} =
    Core.object (Core.catMaybes [("taints" Core..=) Core.<$> taints])

-- | NotificationConfig is the configuration of notifications.
--
-- /See:/ 'newNotificationConfig' smart constructor.
newtype NotificationConfig = NotificationConfig
  { -- | Notification config for Pub\/Sub.
    pubsub :: (Core.Maybe PubSub)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationConfig' with the minimum fields required to make a request.
newNotificationConfig ::
  NotificationConfig
newNotificationConfig = NotificationConfig {pubsub = Core.Nothing}

instance Core.FromJSON NotificationConfig where
  parseJSON =
    Core.withObject
      "NotificationConfig"
      (\o -> NotificationConfig Core.<$> (o Core..:? "pubsub"))

instance Core.ToJSON NotificationConfig where
  toJSON NotificationConfig {..} =
    Core.object (Core.catMaybes [("pubsub" Core..=) Core.<$> pubsub])

-- | This operation resource represents operations that may have happened or are happening on the cluster. All fields are output only.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | Which conditions caused the current cluster state. Deprecated. Use field error instead.
    clusterConditions :: (Core.Maybe [StatusCondition]),
    -- | Output only. Detailed operation progress, if available.
    detail :: (Core.Maybe Core.Text),
    -- | Output only. The time the operation completed, in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    endTime :: (Core.Maybe Core.Text),
    -- | The error result of the operation in case of failure.
    error :: (Core.Maybe Status),
    -- | Output only. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/regions-zones/regions-zones#available zone> or <https://cloud.google.com/compute/docs/regions-zones/regions-zones#available region> in which the cluster resides.
    location :: (Core.Maybe Core.Text),
    -- | Output only. The server-assigned ID for the operation.
    name :: (Core.Maybe Core.Text),
    -- | Which conditions caused the current node pool state. Deprecated. Use field error instead.
    nodepoolConditions :: (Core.Maybe [StatusCondition]),
    -- | Output only. The operation type.
    operationType :: (Core.Maybe Operation_OperationType),
    -- | Output only. Progress information for an operation.
    progress :: (Core.Maybe OperationProgress),
    -- | Output only. Server-defined URI for the operation. Example: @https:\/\/container.googleapis.com\/v1alpha1\/projects\/123\/locations\/us-central1\/operations\/operation-123@.
    selfLink :: (Core.Maybe Core.Text),
    -- | Output only. The time the operation started, in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    startTime :: (Core.Maybe Core.Text),
    -- | Output only. The current status of the operation.
    status :: (Core.Maybe Operation_Status),
    -- | Output only. If an error has occurred, a textual description of the error. Deprecated. Use the field error instead.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Output only. Server-defined URI for the target of the operation. The format of this is a URI to the resource being modified (such as a cluster, node pool, or node). For node pool repairs, there may be multiple nodes being repaired, but only one will be the target. Examples: - ## @https:\/\/container.googleapis.com\/v1\/projects\/123\/locations\/us-central1\/clusters\/my-cluster@ ## @https:\/\/container.googleapis.com\/v1\/projects\/123\/zones\/us-central1-c\/clusters\/my-cluster\/nodePools\/my-np@ @https:\/\/container.googleapis.com\/v1\/projects\/123\/zones\/us-central1-c\/clusters\/my-cluster\/nodePools\/my-np\/node\/my-node@
    targetLink :: (Core.Maybe Core.Text),
    -- | Output only. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the operation is taking place. This field is deprecated, use location instead.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { clusterConditions = Core.Nothing,
      detail = Core.Nothing,
      endTime = Core.Nothing,
      error = Core.Nothing,
      location = Core.Nothing,
      name = Core.Nothing,
      nodepoolConditions = Core.Nothing,
      operationType = Core.Nothing,
      progress = Core.Nothing,
      selfLink = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing,
      statusMessage = Core.Nothing,
      targetLink = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "clusterConditions")
            Core.<*> (o Core..:? "detail")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodepoolConditions")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "targetLink")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterConditions" Core..=) Core.<$> clusterConditions,
            ("detail" Core..=) Core.<$> detail,
            ("endTime" Core..=) Core.<$> endTime,
            ("error" Core..=) Core.<$> error,
            ("location" Core..=) Core.<$> location,
            ("name" Core..=) Core.<$> name,
            ("nodepoolConditions" Core..=) Core.<$> nodepoolConditions,
            ("operationType" Core..=) Core.<$> operationType,
            ("progress" Core..=) Core.<$> progress,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("targetLink" Core..=) Core.<$> targetLink,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | OperationError records errors seen from CloudKMS keys encountered during updates to DatabaseEncryption configuration.
--
-- /See:/ 'newOperationError' smart constructor.
data OperationError = OperationError
  { -- | Description of the error seen during the operation.
    errorMessage :: (Core.Maybe Core.Text),
    -- | CloudKMS key resource that had the error.
    keyName :: (Core.Maybe Core.Text),
    -- | Time when the CloudKMS error was seen.
    timestamp :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationError' with the minimum fields required to make a request.
newOperationError ::
  OperationError
newOperationError =
  OperationError
    { errorMessage = Core.Nothing,
      keyName = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON OperationError where
  parseJSON =
    Core.withObject
      "OperationError"
      ( \o ->
          OperationError
            Core.<$> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "keyName")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON OperationError where
  toJSON OperationError {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorMessage" Core..=) Core.<$> errorMessage,
            ("keyName" Core..=) Core.<$> keyName,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

-- | Information about operation (or operation stage) progress.
--
-- /See:/ 'newOperationProgress' smart constructor.
data OperationProgress = OperationProgress
  { -- | Progress metric bundle, for example: metrics: [{name: \"nodes done\", int/value: 15}, {name: \"nodes total\", int/value: 32}] or metrics: [{name: \"progress\", double/value: 0.56}, {name: \"progress scale\", double/value: 1.0}]
    metrics :: (Core.Maybe [Metric]),
    -- | A non-parameterized string describing an operation stage. Unset for single-stage operations.
    name :: (Core.Maybe Core.Text),
    -- | Substages of an operation or a stage.
    stages :: (Core.Maybe [OperationProgress]),
    -- | Status of an operation stage. Unset for single-stage operations.
    status :: (Core.Maybe OperationProgress_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationProgress' with the minimum fields required to make a request.
newOperationProgress ::
  OperationProgress
newOperationProgress =
  OperationProgress
    { metrics = Core.Nothing,
      name = Core.Nothing,
      stages = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON OperationProgress where
  parseJSON =
    Core.withObject
      "OperationProgress"
      ( \o ->
          OperationProgress
            Core.<$> (o Core..:? "metrics")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "stages")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON OperationProgress where
  toJSON OperationProgress {..} =
    Core.object
      ( Core.catMaybes
          [ ("metrics" Core..=) Core.<$> metrics,
            ("name" Core..=) Core.<$> name,
            ("stages" Core..=) Core.<$> stages,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Configuration for the Cloud Storage Parallelstore CSI driver.
--
-- /See:/ 'newParallelstoreCsiDriverConfig' smart constructor.
newtype ParallelstoreCsiDriverConfig = ParallelstoreCsiDriverConfig
  { -- | Whether the Cloud Storage Parallelstore CSI driver is enabled for this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParallelstoreCsiDriverConfig' with the minimum fields required to make a request.
newParallelstoreCsiDriverConfig ::
  ParallelstoreCsiDriverConfig
newParallelstoreCsiDriverConfig =
  ParallelstoreCsiDriverConfig {enabled = Core.Nothing}

instance Core.FromJSON ParallelstoreCsiDriverConfig where
  parseJSON =
    Core.withObject
      "ParallelstoreCsiDriverConfig"
      ( \o ->
          ParallelstoreCsiDriverConfig Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON ParallelstoreCsiDriverConfig where
  toJSON ParallelstoreCsiDriverConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | ParentProductConfig is the configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of a GKE cluster and take the ownership of the cluster.
--
-- /See:/ 'newParentProductConfig' smart constructor.
data ParentProductConfig = ParentProductConfig
  { -- | Labels contain the configuration of the parent product.
    labels :: (Core.Maybe ParentProductConfig_Labels),
    -- | Name of the parent product associated with the cluster.
    productName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParentProductConfig' with the minimum fields required to make a request.
newParentProductConfig ::
  ParentProductConfig
newParentProductConfig =
  ParentProductConfig
    { labels = Core.Nothing,
      productName = Core.Nothing
    }

instance Core.FromJSON ParentProductConfig where
  parseJSON =
    Core.withObject
      "ParentProductConfig"
      ( \o ->
          ParentProductConfig
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "productName")
      )

instance Core.ToJSON ParentProductConfig where
  toJSON ParentProductConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("productName" Core..=) Core.<$> productName
          ]
      )

-- | Labels contain the configuration of the parent product.
--
-- /See:/ 'newParentProductConfig_Labels' smart constructor.
newtype ParentProductConfig_Labels = ParentProductConfig_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParentProductConfig_Labels' with the minimum fields required to make a request.
newParentProductConfig_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ParentProductConfig_Labels
newParentProductConfig_Labels additional =
  ParentProductConfig_Labels {additional = additional}

instance Core.FromJSON ParentProductConfig_Labels where
  parseJSON =
    Core.withObject
      "ParentProductConfig_Labels"
      ( \o ->
          ParentProductConfig_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ParentProductConfig_Labels where
  toJSON ParentProductConfig_Labels {..} = Core.toJSON additional

-- | PlacementPolicy defines the placement policy used by the node pool.
--
-- /See:/ 'newPlacementPolicy' smart constructor.
data PlacementPolicy = PlacementPolicy
  { -- | If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
    policyName :: (Core.Maybe Core.Text),
    -- | Optional. TPU placement topology for pod slice node pool. https:\/\/cloud.google.com\/tpu\/docs\/types-topologies#tpu_topologies
    tpuTopology :: (Core.Maybe Core.Text),
    -- | The type of placement.
    type' :: (Core.Maybe PlacementPolicy_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlacementPolicy' with the minimum fields required to make a request.
newPlacementPolicy ::
  PlacementPolicy
newPlacementPolicy =
  PlacementPolicy
    { policyName = Core.Nothing,
      tpuTopology = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON PlacementPolicy where
  parseJSON =
    Core.withObject
      "PlacementPolicy"
      ( \o ->
          PlacementPolicy
            Core.<$> (o Core..:? "policyName")
            Core.<*> (o Core..:? "tpuTopology")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON PlacementPolicy where
  toJSON PlacementPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("policyName" Core..=) Core.<$> policyName,
            ("tpuTopology" Core..=) Core.<$> tpuTopology,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | [PRIVATE FIELD] Config for pod CIDR size overprovisioning.
--
-- /See:/ 'newPodCIDROverprovisionConfig' smart constructor.
newtype PodCIDROverprovisionConfig = PodCIDROverprovisionConfig
  { -- | Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
    disable :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PodCIDROverprovisionConfig' with the minimum fields required to make a request.
newPodCIDROverprovisionConfig ::
  PodCIDROverprovisionConfig
newPodCIDROverprovisionConfig =
  PodCIDROverprovisionConfig {disable = Core.Nothing}

instance Core.FromJSON PodCIDROverprovisionConfig where
  parseJSON =
    Core.withObject
      "PodCIDROverprovisionConfig"
      (\o -> PodCIDROverprovisionConfig Core.<$> (o Core..:? "disable"))

instance Core.ToJSON PodCIDROverprovisionConfig where
  toJSON PodCIDROverprovisionConfig {..} =
    Core.object
      (Core.catMaybes [("disable" Core..=) Core.<$> disable])

-- | Configuration options for private clusters.
--
-- /See:/ 'newPrivateClusterConfig' smart constructor.
data PrivateClusterConfig = PrivateClusterConfig
  { -- | Whether the master\'s internal IP address is used as the cluster endpoint. Deprecated: Use ControlPlaneEndpointsConfig.IPEndpointsConfig.enable/public/endpoint instead. Note that the value of enable/public/endpoint is reversed: if enable/private/endpoint is false, then enable/public/endpoint will be true.
    enablePrivateEndpoint :: (Core.Maybe Core.Bool),
    -- | Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking. Deprecated: Use NetworkConfig.default/enable/private_nodes instead.
    enablePrivateNodes :: (Core.Maybe Core.Bool),
    -- | Controls master global access settings. Deprecated: Use ControlPlaneEndpointsConfig.IPEndpointsConfig.enable/global/access instead.
    masterGlobalAccessConfig :: (Core.Maybe PrivateClusterMasterGlobalAccessConfig),
    -- | The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster\'s network.
    masterIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Output only. The peering name in the customer VPC used by this cluster.
    peeringName :: (Core.Maybe Core.Text),
    -- | Output only. The internal IP address of this cluster\'s master endpoint. Deprecated: Use ControlPlaneEndpointsConfig.IPEndpointsConfig.private_endpoint instead.
    privateEndpoint :: (Core.Maybe Core.Text),
    -- | Subnet to provision the master\'s private endpoint during cluster creation. Specified in projects\//\/regions\//\/subnetworks\/* format. Deprecated: Use ControlPlaneEndpointsConfig.IPEndpointsConfig.private/endpoint/subnetwork instead.
    privateEndpointSubnetwork :: (Core.Maybe Core.Text),
    -- | Output only. The external IP address of this cluster\'s master endpoint. Deprecated:Use ControlPlaneEndpointsConfig.IPEndpointsConfig.public_endpoint instead.
    publicEndpoint :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrivateClusterConfig' with the minimum fields required to make a request.
newPrivateClusterConfig ::
  PrivateClusterConfig
newPrivateClusterConfig =
  PrivateClusterConfig
    { enablePrivateEndpoint = Core.Nothing,
      enablePrivateNodes = Core.Nothing,
      masterGlobalAccessConfig = Core.Nothing,
      masterIpv4CidrBlock = Core.Nothing,
      peeringName = Core.Nothing,
      privateEndpoint = Core.Nothing,
      privateEndpointSubnetwork = Core.Nothing,
      publicEndpoint = Core.Nothing
    }

instance Core.FromJSON PrivateClusterConfig where
  parseJSON =
    Core.withObject
      "PrivateClusterConfig"
      ( \o ->
          PrivateClusterConfig
            Core.<$> (o Core..:? "enablePrivateEndpoint")
            Core.<*> (o Core..:? "enablePrivateNodes")
            Core.<*> (o Core..:? "masterGlobalAccessConfig")
            Core.<*> (o Core..:? "masterIpv4CidrBlock")
            Core.<*> (o Core..:? "peeringName")
            Core.<*> (o Core..:? "privateEndpoint")
            Core.<*> (o Core..:? "privateEndpointSubnetwork")
            Core.<*> (o Core..:? "publicEndpoint")
      )

instance Core.ToJSON PrivateClusterConfig where
  toJSON PrivateClusterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enablePrivateEndpoint" Core..=) Core.<$> enablePrivateEndpoint,
            ("enablePrivateNodes" Core..=) Core.<$> enablePrivateNodes,
            ("masterGlobalAccessConfig" Core..=)
              Core.<$> masterGlobalAccessConfig,
            ("masterIpv4CidrBlock" Core..=) Core.<$> masterIpv4CidrBlock,
            ("peeringName" Core..=) Core.<$> peeringName,
            ("privateEndpoint" Core..=) Core.<$> privateEndpoint,
            ("privateEndpointSubnetwork" Core..=)
              Core.<$> privateEndpointSubnetwork,
            ("publicEndpoint" Core..=) Core.<$> publicEndpoint
          ]
      )

-- | Configuration for controlling master global access settings.
--
-- /See:/ 'newPrivateClusterMasterGlobalAccessConfig' smart constructor.
newtype PrivateClusterMasterGlobalAccessConfig = PrivateClusterMasterGlobalAccessConfig
  { -- | Whenever master is accessible globally or not.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrivateClusterMasterGlobalAccessConfig' with the minimum fields required to make a request.
newPrivateClusterMasterGlobalAccessConfig ::
  PrivateClusterMasterGlobalAccessConfig
newPrivateClusterMasterGlobalAccessConfig =
  PrivateClusterMasterGlobalAccessConfig {enabled = Core.Nothing}

instance Core.FromJSON PrivateClusterMasterGlobalAccessConfig where
  parseJSON =
    Core.withObject
      "PrivateClusterMasterGlobalAccessConfig"
      ( \o ->
          PrivateClusterMasterGlobalAccessConfig
            Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON PrivateClusterMasterGlobalAccessConfig where
  toJSON PrivateClusterMasterGlobalAccessConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | PrivateRegistryAccessConfig contains access configuration for private container registries.
--
-- /See:/ 'newPrivateRegistryAccessConfig' smart constructor.
data PrivateRegistryAccessConfig = PrivateRegistryAccessConfig
  { -- | Private registry access configuration.
    certificateAuthorityDomainConfig :: (Core.Maybe [CertificateAuthorityDomainConfig]),
    -- | Private registry access is enabled.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrivateRegistryAccessConfig' with the minimum fields required to make a request.
newPrivateRegistryAccessConfig ::
  PrivateRegistryAccessConfig
newPrivateRegistryAccessConfig =
  PrivateRegistryAccessConfig
    { certificateAuthorityDomainConfig =
        Core.Nothing,
      enabled = Core.Nothing
    }

instance Core.FromJSON PrivateRegistryAccessConfig where
  parseJSON =
    Core.withObject
      "PrivateRegistryAccessConfig"
      ( \o ->
          PrivateRegistryAccessConfig
            Core.<$> (o Core..:? "certificateAuthorityDomainConfig")
            Core.<*> (o Core..:? "enabled")
      )

instance Core.ToJSON PrivateRegistryAccessConfig where
  toJSON PrivateRegistryAccessConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("certificateAuthorityDomainConfig" Core..=)
              Core.<$> certificateAuthorityDomainConfig,
            ("enabled" Core..=) Core.<$> enabled
          ]
      )

-- | Pub\/Sub specific notification config.
--
-- /See:/ 'newPubSub' smart constructor.
data PubSub = PubSub
  { -- | Enable notifications for Pub\/Sub.
    enabled :: (Core.Maybe Core.Bool),
    -- | Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
    filter :: (Core.Maybe Filter),
    -- | The desired Pub\/Sub topic to which notifications will be sent by GKE. Format is @projects\/{project}\/topics\/{topic}@.
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSub' with the minimum fields required to make a request.
newPubSub ::
  PubSub
newPubSub =
  PubSub
    { enabled = Core.Nothing,
      filter = Core.Nothing,
      topic = Core.Nothing
    }

instance Core.FromJSON PubSub where
  parseJSON =
    Core.withObject
      "PubSub"
      ( \o ->
          PubSub
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "topic")
      )

instance Core.ToJSON PubSub where
  toJSON PubSub {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("filter" Core..=) Core.<$> filter,
            ("topic" Core..=) Core.<$> topic
          ]
      )

-- | QueuedProvisioning defines the queued provisioning used by the node pool.
--
-- /See:/ 'newQueuedProvisioning' smart constructor.
newtype QueuedProvisioning = QueuedProvisioning
  { -- | Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueuedProvisioning' with the minimum fields required to make a request.
newQueuedProvisioning ::
  QueuedProvisioning
newQueuedProvisioning = QueuedProvisioning {enabled = Core.Nothing}

instance Core.FromJSON QueuedProvisioning where
  parseJSON =
    Core.withObject
      "QueuedProvisioning"
      (\o -> QueuedProvisioning Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON QueuedProvisioning where
  toJSON QueuedProvisioning {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created.
--
-- /See:/ 'newRBACBindingConfig' smart constructor.
data RBACBindingConfig = RBACBindingConfig
  { -- | Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjects system:authenticated.
    enableInsecureBindingSystemAuthenticated :: (Core.Maybe Core.Bool),
    -- | Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjets system:anonymous or system:unauthenticated.
    enableInsecureBindingSystemUnauthenticated :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RBACBindingConfig' with the minimum fields required to make a request.
newRBACBindingConfig ::
  RBACBindingConfig
newRBACBindingConfig =
  RBACBindingConfig
    { enableInsecureBindingSystemAuthenticated =
        Core.Nothing,
      enableInsecureBindingSystemUnauthenticated = Core.Nothing
    }

instance Core.FromJSON RBACBindingConfig where
  parseJSON =
    Core.withObject
      "RBACBindingConfig"
      ( \o ->
          RBACBindingConfig
            Core.<$> (o Core..:? "enableInsecureBindingSystemAuthenticated")
            Core.<*> (o Core..:? "enableInsecureBindingSystemUnauthenticated")
      )

instance Core.ToJSON RBACBindingConfig where
  toJSON RBACBindingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableInsecureBindingSystemAuthenticated" Core..=)
              Core.<$> enableInsecureBindingSystemAuthenticated,
            ("enableInsecureBindingSystemUnauthenticated" Core..=)
              Core.<$> enableInsecureBindingSystemUnauthenticated
          ]
      )

-- | RangeInfo contains the range name and the range utilization by this cluster.
--
-- /See:/ 'newRangeInfo' smart constructor.
data RangeInfo = RangeInfo
  { -- | Output only. Name of a range.
    rangeName :: (Core.Maybe Core.Text),
    -- | Output only. The utilization of the range.
    utilization :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RangeInfo' with the minimum fields required to make a request.
newRangeInfo ::
  RangeInfo
newRangeInfo =
  RangeInfo {rangeName = Core.Nothing, utilization = Core.Nothing}

instance Core.FromJSON RangeInfo where
  parseJSON =
    Core.withObject
      "RangeInfo"
      ( \o ->
          RangeInfo
            Core.<$> (o Core..:? "rangeName")
            Core.<*> (o Core..:? "utilization")
      )

instance Core.ToJSON RangeInfo where
  toJSON RangeInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("rangeName" Core..=) Core.<$> rangeName,
            ("utilization" Core..=) Core.<$> utilization
          ]
      )

-- | RayClusterLoggingConfig specifies configuration of Ray logging.
--
-- /See:/ 'newRayClusterLoggingConfig' smart constructor.
newtype RayClusterLoggingConfig = RayClusterLoggingConfig
  { -- | Enable log collection for Ray clusters.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RayClusterLoggingConfig' with the minimum fields required to make a request.
newRayClusterLoggingConfig ::
  RayClusterLoggingConfig
newRayClusterLoggingConfig =
  RayClusterLoggingConfig {enabled = Core.Nothing}

instance Core.FromJSON RayClusterLoggingConfig where
  parseJSON =
    Core.withObject
      "RayClusterLoggingConfig"
      (\o -> RayClusterLoggingConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON RayClusterLoggingConfig where
  toJSON RayClusterLoggingConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | RayClusterMonitoringConfig specifies monitoring configuration for Ray clusters.
--
-- /See:/ 'newRayClusterMonitoringConfig' smart constructor.
newtype RayClusterMonitoringConfig = RayClusterMonitoringConfig
  { -- | Enable metrics collection for Ray clusters.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RayClusterMonitoringConfig' with the minimum fields required to make a request.
newRayClusterMonitoringConfig ::
  RayClusterMonitoringConfig
newRayClusterMonitoringConfig =
  RayClusterMonitoringConfig {enabled = Core.Nothing}

instance Core.FromJSON RayClusterMonitoringConfig where
  parseJSON =
    Core.withObject
      "RayClusterMonitoringConfig"
      (\o -> RayClusterMonitoringConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON RayClusterMonitoringConfig where
  toJSON RayClusterMonitoringConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Configuration options for the Ray Operator add-on.
--
-- /See:/ 'newRayOperatorConfig' smart constructor.
data RayOperatorConfig = RayOperatorConfig
  { -- | Whether the Ray Operator addon is enabled for this cluster.
    enabled :: (Core.Maybe Core.Bool),
    -- | Optional. Logging configuration for Ray clusters.
    rayClusterLoggingConfig :: (Core.Maybe RayClusterLoggingConfig),
    -- | Optional. Monitoring configuration for Ray clusters.
    rayClusterMonitoringConfig :: (Core.Maybe RayClusterMonitoringConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RayOperatorConfig' with the minimum fields required to make a request.
newRayOperatorConfig ::
  RayOperatorConfig
newRayOperatorConfig =
  RayOperatorConfig
    { enabled = Core.Nothing,
      rayClusterLoggingConfig = Core.Nothing,
      rayClusterMonitoringConfig = Core.Nothing
    }

instance Core.FromJSON RayOperatorConfig where
  parseJSON =
    Core.withObject
      "RayOperatorConfig"
      ( \o ->
          RayOperatorConfig
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "rayClusterLoggingConfig")
            Core.<*> (o Core..:? "rayClusterMonitoringConfig")
      )

instance Core.ToJSON RayOperatorConfig where
  toJSON RayOperatorConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("rayClusterLoggingConfig" Core..=)
              Core.<$> rayClusterLoggingConfig,
            ("rayClusterMonitoringConfig" Core..=)
              Core.<$> rayClusterMonitoringConfig
          ]
      )

-- | Represents an arbitrary window of time that recurs.
--
-- /See:/ 'newRecurringTimeWindow' smart constructor.
data RecurringTimeWindow = RecurringTimeWindow
  { -- | An RRULE (https:\/\/tools.ietf.org\/html\/rfc5545#section-3.8.5.3) for how this window reccurs. They go on for the span of time between the start and end time. For example, to have something repeat every weekday, you\'d use: @FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR@ To repeat some window daily (equivalent to the DailyMaintenanceWindow): @FREQ=DAILY@ For the first weekend of every month: @FREQ=MONTHLY;BYSETPOS=1;BYDAY=SA,SU@ This specifies how frequently the window starts. Eg, if you wanted to have a 9-5 UTC-4 window every weekday, you\'d use something like: @start time = 2019-01-01T09:00:00-0400 end time = 2019-01-01T17:00:00-0400 recurrence = FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR@ Windows can span multiple days. Eg, to make the window encompass every weekend from midnight Saturday till the last minute of Sunday UTC: @start time = 2019-01-05T00:00:00Z end time = 2019-01-07T23:59:00Z recurrence = FREQ=WEEKLY;BYDAY=SA@ Note the start and end time\'s specific dates are largely arbitrary except to specify duration of the
    -- window and when it first starts. The FREQ values of HOURLY, MINUTELY, and SECONDLY are not supported.
    recurrence :: (Core.Maybe Core.Text),
    -- | The window of the first recurrence.
    window :: (Core.Maybe TimeWindow)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RecurringTimeWindow' with the minimum fields required to make a request.
newRecurringTimeWindow ::
  RecurringTimeWindow
newRecurringTimeWindow =
  RecurringTimeWindow
    { recurrence = Core.Nothing,
      window = Core.Nothing
    }

instance Core.FromJSON RecurringTimeWindow where
  parseJSON =
    Core.withObject
      "RecurringTimeWindow"
      ( \o ->
          RecurringTimeWindow
            Core.<$> (o Core..:? "recurrence")
            Core.<*> (o Core..:? "window")
      )

instance Core.ToJSON RecurringTimeWindow where
  toJSON RecurringTimeWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("recurrence" Core..=) Core.<$> recurrence,
            ("window" Core..=) Core.<$> window
          ]
      )

-- | ReleaseChannel indicates which release channel a cluster is subscribed to. Release channels are arranged in order of risk. When a cluster is subscribed to a release channel, Google maintains both the master version and the node version. Node auto-upgrade defaults to true and cannot be disabled.
--
-- /See:/ 'newReleaseChannel' smart constructor.
newtype ReleaseChannel = ReleaseChannel
  { -- | channel specifies which release channel the cluster is subscribed to.
    channel :: (Core.Maybe ReleaseChannel_Channel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReleaseChannel' with the minimum fields required to make a request.
newReleaseChannel ::
  ReleaseChannel
newReleaseChannel = ReleaseChannel {channel = Core.Nothing}

instance Core.FromJSON ReleaseChannel where
  parseJSON =
    Core.withObject
      "ReleaseChannel"
      (\o -> ReleaseChannel Core.<$> (o Core..:? "channel"))

instance Core.ToJSON ReleaseChannel where
  toJSON ReleaseChannel {..} =
    Core.object
      (Core.catMaybes [("channel" Core..=) Core.<$> channel])

-- | ReleaseChannelConfig exposes configuration for a release channel.
--
-- /See:/ 'newReleaseChannelConfig' smart constructor.
data ReleaseChannelConfig = ReleaseChannelConfig
  { -- | The release channel this configuration applies to.
    channel :: (Core.Maybe ReleaseChannelConfig_Channel),
    -- | The default version for newly created clusters on the channel.
    defaultVersion :: (Core.Maybe Core.Text),
    -- | The auto upgrade target version for clusters on the channel.
    upgradeTargetVersion :: (Core.Maybe Core.Text),
    -- | List of valid versions for the channel.
    validVersions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReleaseChannelConfig' with the minimum fields required to make a request.
newReleaseChannelConfig ::
  ReleaseChannelConfig
newReleaseChannelConfig =
  ReleaseChannelConfig
    { channel = Core.Nothing,
      defaultVersion = Core.Nothing,
      upgradeTargetVersion = Core.Nothing,
      validVersions = Core.Nothing
    }

instance Core.FromJSON ReleaseChannelConfig where
  parseJSON =
    Core.withObject
      "ReleaseChannelConfig"
      ( \o ->
          ReleaseChannelConfig
            Core.<$> (o Core..:? "channel")
            Core.<*> (o Core..:? "defaultVersion")
            Core.<*> (o Core..:? "upgradeTargetVersion")
            Core.<*> (o Core..:? "validVersions")
      )

instance Core.ToJSON ReleaseChannelConfig where
  toJSON ReleaseChannelConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("channel" Core..=) Core.<$> channel,
            ("defaultVersion" Core..=) Core.<$> defaultVersion,
            ("upgradeTargetVersion" Core..=) Core.<$> upgradeTargetVersion,
            ("validVersions" Core..=) Core.<$> validVersions
          ]
      )

-- | <https://cloud.google.com/compute/docs/instances/reserving-zonal-resources ReservationAffinity> is the configuration of desired reservation which instances could take capacity from.
--
-- /See:/ 'newReservationAffinity' smart constructor.
data ReservationAffinity = ReservationAffinity
  { -- | Corresponds to the type of reservation consumption.
    consumeReservationType :: (Core.Maybe ReservationAffinity_ConsumeReservationType),
    -- | Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify \"compute.googleapis.com\/reservation-name\" as the key and specify the name of your reservation as its value.
    key :: (Core.Maybe Core.Text),
    -- | Corresponds to the label value(s) of reservation resource(s).
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReservationAffinity' with the minimum fields required to make a request.
newReservationAffinity ::
  ReservationAffinity
newReservationAffinity =
  ReservationAffinity
    { consumeReservationType = Core.Nothing,
      key = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON ReservationAffinity where
  parseJSON =
    Core.withObject
      "ReservationAffinity"
      ( \o ->
          ReservationAffinity
            Core.<$> (o Core..:? "consumeReservationType")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON ReservationAffinity where
  toJSON ReservationAffinity {..} =
    Core.object
      ( Core.catMaybes
          [ ("consumeReservationType" Core..=)
              Core.<$> consumeReservationType,
            ("key" Core..=) Core.<$> key,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | Collection of <https://cloud.google.com/resource-manager/docs/creating-managing-labels GCP labels>.
--
-- /See:/ 'newResourceLabels' smart constructor.
newtype ResourceLabels = ResourceLabels
  { -- | Map of node label keys and node label values.
    labels :: (Core.Maybe ResourceLabels_Labels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceLabels' with the minimum fields required to make a request.
newResourceLabels ::
  ResourceLabels
newResourceLabels = ResourceLabels {labels = Core.Nothing}

instance Core.FromJSON ResourceLabels where
  parseJSON =
    Core.withObject
      "ResourceLabels"
      (\o -> ResourceLabels Core.<$> (o Core..:? "labels"))

instance Core.ToJSON ResourceLabels where
  toJSON ResourceLabels {..} =
    Core.object (Core.catMaybes [("labels" Core..=) Core.<$> labels])

-- | Map of node label keys and node label values.
--
-- /See:/ 'newResourceLabels_Labels' smart constructor.
newtype ResourceLabels_Labels = ResourceLabels_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceLabels_Labels' with the minimum fields required to make a request.
newResourceLabels_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ResourceLabels_Labels
newResourceLabels_Labels additional =
  ResourceLabels_Labels {additional = additional}

instance Core.FromJSON ResourceLabels_Labels where
  parseJSON =
    Core.withObject
      "ResourceLabels_Labels"
      (\o -> ResourceLabels_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON ResourceLabels_Labels where
  toJSON ResourceLabels_Labels {..} = Core.toJSON additional

-- | Contains information about amount of some resource in the cluster. For memory, value should be in GB.
--
-- /See:/ 'newResourceLimit' smart constructor.
data ResourceLimit = ResourceLimit
  { -- | Maximum amount of the resource in the cluster.
    maximum :: (Core.Maybe Core.Int64),
    -- | Minimum amount of the resource in the cluster.
    minimum :: (Core.Maybe Core.Int64),
    -- | Resource name \"cpu\", \"memory\" or gpu-specific string.
    resourceType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceLimit' with the minimum fields required to make a request.
newResourceLimit ::
  ResourceLimit
newResourceLimit =
  ResourceLimit
    { maximum = Core.Nothing,
      minimum = Core.Nothing,
      resourceType = Core.Nothing
    }

instance Core.FromJSON ResourceLimit where
  parseJSON =
    Core.withObject
      "ResourceLimit"
      ( \o ->
          ResourceLimit
            Core.<$> (o Core..:? "maximum" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "minimum" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "resourceType")
      )

instance Core.ToJSON ResourceLimit where
  toJSON ResourceLimit {..} =
    Core.object
      ( Core.catMaybes
          [ ("maximum" Core..=) Core.. Core.AsText Core.<$> maximum,
            ("minimum" Core..=) Core.. Core.AsText Core.<$> minimum,
            ("resourceType" Core..=) Core.<$> resourceType
          ]
      )

-- | A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications in https:\/\/cloud.google.com\/vpc\/docs\/tags-firewalls-overview#specifications. A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values.
--
-- /See:/ 'newResourceManagerTags' smart constructor.
newtype ResourceManagerTags = ResourceManagerTags
  { -- | TagKeyValue must be in one of the following formats ([KEY]=[VALUE]) 1. @tagKeys\/{tag_key_id}=tagValues\/{tag_value_id}@ 2. @{org_id}\/{tag_key_name}={tag_value_name}@ 3. @{project_id}\/{tag_key_name}={tag_value_name}@
    tags :: (Core.Maybe ResourceManagerTags_Tags)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceManagerTags' with the minimum fields required to make a request.
newResourceManagerTags ::
  ResourceManagerTags
newResourceManagerTags = ResourceManagerTags {tags = Core.Nothing}

instance Core.FromJSON ResourceManagerTags where
  parseJSON =
    Core.withObject
      "ResourceManagerTags"
      (\o -> ResourceManagerTags Core.<$> (o Core..:? "tags"))

instance Core.ToJSON ResourceManagerTags where
  toJSON ResourceManagerTags {..} =
    Core.object (Core.catMaybes [("tags" Core..=) Core.<$> tags])

-- | TagKeyValue must be in one of the following formats ([KEY]=[VALUE]) 1. @tagKeys\/{tag_key_id}=tagValues\/{tag_value_id}@ 2. @{org_id}\/{tag_key_name}={tag_value_name}@ 3. @{project_id}\/{tag_key_name}={tag_value_name}@
--
-- /See:/ 'newResourceManagerTags_Tags' smart constructor.
newtype ResourceManagerTags_Tags = ResourceManagerTags_Tags
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceManagerTags_Tags' with the minimum fields required to make a request.
newResourceManagerTags_Tags ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ResourceManagerTags_Tags
newResourceManagerTags_Tags additional =
  ResourceManagerTags_Tags {additional = additional}

instance Core.FromJSON ResourceManagerTags_Tags where
  parseJSON =
    Core.withObject
      "ResourceManagerTags_Tags"
      (\o -> ResourceManagerTags_Tags Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON ResourceManagerTags_Tags where
  toJSON ResourceManagerTags_Tags {..} = Core.toJSON additional

-- | Configuration for exporting cluster resource usages.
--
-- /See:/ 'newResourceUsageExportConfig' smart constructor.
data ResourceUsageExportConfig = ResourceUsageExportConfig
  { -- | Configuration to use BigQuery as usage export destination.
    bigqueryDestination :: (Core.Maybe BigQueryDestination),
    -- | Configuration to enable resource consumption metering.
    consumptionMeteringConfig :: (Core.Maybe ConsumptionMeteringConfig),
    -- | Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
    enableNetworkEgressMetering :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceUsageExportConfig' with the minimum fields required to make a request.
newResourceUsageExportConfig ::
  ResourceUsageExportConfig
newResourceUsageExportConfig =
  ResourceUsageExportConfig
    { bigqueryDestination = Core.Nothing,
      consumptionMeteringConfig = Core.Nothing,
      enableNetworkEgressMetering = Core.Nothing
    }

instance Core.FromJSON ResourceUsageExportConfig where
  parseJSON =
    Core.withObject
      "ResourceUsageExportConfig"
      ( \o ->
          ResourceUsageExportConfig
            Core.<$> (o Core..:? "bigqueryDestination")
            Core.<*> (o Core..:? "consumptionMeteringConfig")
            Core.<*> (o Core..:? "enableNetworkEgressMetering")
      )

instance Core.ToJSON ResourceUsageExportConfig where
  toJSON ResourceUsageExportConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigqueryDestination" Core..=) Core.<$> bigqueryDestination,
            ("consumptionMeteringConfig" Core..=)
              Core.<$> consumptionMeteringConfig,
            ("enableNetworkEgressMetering" Core..=)
              Core.<$> enableNetworkEgressMetering
          ]
      )

-- | RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or Failed NodePool upgrade. This will be an no-op if the last upgrade successfully completed.
--
-- /See:/ 'newRollbackNodePoolUpgradeRequest' smart constructor.
data RollbackNodePoolUpgradeRequest = RollbackNodePoolUpgradeRequest
  { -- | Deprecated. The name of the cluster to rollback. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster, node pool id) of the node poll to rollback upgrade. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the node pool to rollback. This field has been deprecated and replaced by the name field.
    nodePoolId :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Option for rollback to ignore the PodDisruptionBudget. Default value is false.
    respectPdb :: (Core.Maybe Core.Bool),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollbackNodePoolUpgradeRequest' with the minimum fields required to make a request.
newRollbackNodePoolUpgradeRequest ::
  RollbackNodePoolUpgradeRequest
newRollbackNodePoolUpgradeRequest =
  RollbackNodePoolUpgradeRequest
    { clusterId = Core.Nothing,
      name = Core.Nothing,
      nodePoolId = Core.Nothing,
      projectId = Core.Nothing,
      respectPdb = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON RollbackNodePoolUpgradeRequest where
  parseJSON =
    Core.withObject
      "RollbackNodePoolUpgradeRequest"
      ( \o ->
          RollbackNodePoolUpgradeRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodePoolId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "respectPdb")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON RollbackNodePoolUpgradeRequest where
  toJSON RollbackNodePoolUpgradeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("name" Core..=) Core.<$> name,
            ("nodePoolId" Core..=) Core.<$> nodePoolId,
            ("projectId" Core..=) Core.<$> projectId,
            ("respectPdb" Core..=) Core.<$> respectPdb,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SandboxConfig contains configurations of the sandbox to use for the node.
--
-- /See:/ 'newSandboxConfig' smart constructor.
newtype SandboxConfig = SandboxConfig
  { -- | Type of the sandbox to use for the node.
    type' :: (Core.Maybe SandboxConfig_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SandboxConfig' with the minimum fields required to make a request.
newSandboxConfig ::
  SandboxConfig
newSandboxConfig = SandboxConfig {type' = Core.Nothing}

instance Core.FromJSON SandboxConfig where
  parseJSON =
    Core.withObject
      "SandboxConfig"
      (\o -> SandboxConfig Core.<$> (o Core..:? "type"))

instance Core.ToJSON SandboxConfig where
  toJSON SandboxConfig {..} =
    Core.object (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | SecondaryBootDisk represents a persistent disk attached to a node with special configurations based on its mode.
--
-- /See:/ 'newSecondaryBootDisk' smart constructor.
data SecondaryBootDisk = SecondaryBootDisk
  { -- | Fully-qualified resource ID for an existing disk image.
    diskImage :: (Core.Maybe Core.Text),
    -- | Disk mode (container image cache, etc.)
    mode :: (Core.Maybe SecondaryBootDisk_Mode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecondaryBootDisk' with the minimum fields required to make a request.
newSecondaryBootDisk ::
  SecondaryBootDisk
newSecondaryBootDisk =
  SecondaryBootDisk {diskImage = Core.Nothing, mode = Core.Nothing}

instance Core.FromJSON SecondaryBootDisk where
  parseJSON =
    Core.withObject
      "SecondaryBootDisk"
      ( \o ->
          SecondaryBootDisk
            Core.<$> (o Core..:? "diskImage")
            Core.<*> (o Core..:? "mode")
      )

instance Core.ToJSON SecondaryBootDisk where
  toJSON SecondaryBootDisk {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskImage" Core..=) Core.<$> diskImage,
            ("mode" Core..=) Core.<$> mode
          ]
      )

-- | SecondaryBootDiskUpdateStrategy is a placeholder which will be extended in the future to define different options for updating secondary boot disks.
--
-- /See:/ 'newSecondaryBootDiskUpdateStrategy' smart constructor.
data SecondaryBootDiskUpdateStrategy = SecondaryBootDiskUpdateStrategy
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecondaryBootDiskUpdateStrategy' with the minimum fields required to make a request.
newSecondaryBootDiskUpdateStrategy ::
  SecondaryBootDiskUpdateStrategy
newSecondaryBootDiskUpdateStrategy =
  SecondaryBootDiskUpdateStrategy

instance Core.FromJSON SecondaryBootDiskUpdateStrategy where
  parseJSON =
    Core.withObject
      "SecondaryBootDiskUpdateStrategy"
      (\o -> Core.pure SecondaryBootDiskUpdateStrategy)

instance Core.ToJSON SecondaryBootDiskUpdateStrategy where
  toJSON = Core.const Core.emptyObject

-- | SecretManagerConfig is config for secret manager enablement.
--
-- /See:/ 'newSecretManagerConfig' smart constructor.
newtype SecretManagerConfig = SecretManagerConfig
  { -- | Enable\/Disable Secret Manager Config.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerConfig' with the minimum fields required to make a request.
newSecretManagerConfig ::
  SecretManagerConfig
newSecretManagerConfig =
  SecretManagerConfig {enabled = Core.Nothing}

instance Core.FromJSON SecretManagerConfig where
  parseJSON =
    Core.withObject
      "SecretManagerConfig"
      (\o -> SecretManagerConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON SecretManagerConfig where
  toJSON SecretManagerConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | SecurityBulletinEvent is a notification sent to customers when a security bulletin has been posted that they are vulnerable to.
--
-- /See:/ 'newSecurityBulletinEvent' smart constructor.
data SecurityBulletinEvent = SecurityBulletinEvent
  { -- | The GKE minor versions affected by this vulnerability.
    affectedSupportedMinors :: (Core.Maybe [Core.Text]),
    -- | A brief description of the bulletin. See the bulletin pointed to by the bulletin_uri field for an expanded description.
    briefDescription :: (Core.Maybe Core.Text),
    -- | The ID of the bulletin corresponding to the vulnerability.
    bulletinId :: (Core.Maybe Core.Text),
    -- | The URI link to the bulletin on the website for more information.
    bulletinUri :: (Core.Maybe Core.Text),
    -- | The CVEs associated with this bulletin.
    cveIds :: (Core.Maybe [Core.Text]),
    -- | If this field is specified, it means there are manual steps that the user must take to make their clusters safe.
    manualStepsRequired :: (Core.Maybe Core.Bool),
    -- | The GKE versions where this vulnerability is patched.
    patchedVersions :: (Core.Maybe [Core.Text]),
    -- | The resource type (node\/control plane) that has the vulnerability. Multiple notifications (1 notification per resource type) will be sent for a vulnerability that affects > 1 resource type.
    resourceTypeAffected :: (Core.Maybe Core.Text),
    -- | The severity of this bulletin as it relates to GKE.
    severity :: (Core.Maybe Core.Text),
    -- | This represents a version selected from the patched_versions field that the cluster receiving this notification should most likely want to upgrade to based on its current version. Note that if this notification is being received by a given cluster, it means that this version is currently available as an upgrade target in that cluster\'s location.
    suggestedUpgradeTarget :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityBulletinEvent' with the minimum fields required to make a request.
newSecurityBulletinEvent ::
  SecurityBulletinEvent
newSecurityBulletinEvent =
  SecurityBulletinEvent
    { affectedSupportedMinors = Core.Nothing,
      briefDescription = Core.Nothing,
      bulletinId = Core.Nothing,
      bulletinUri = Core.Nothing,
      cveIds = Core.Nothing,
      manualStepsRequired = Core.Nothing,
      patchedVersions = Core.Nothing,
      resourceTypeAffected = Core.Nothing,
      severity = Core.Nothing,
      suggestedUpgradeTarget = Core.Nothing
    }

instance Core.FromJSON SecurityBulletinEvent where
  parseJSON =
    Core.withObject
      "SecurityBulletinEvent"
      ( \o ->
          SecurityBulletinEvent
            Core.<$> (o Core..:? "affectedSupportedMinors")
            Core.<*> (o Core..:? "briefDescription")
            Core.<*> (o Core..:? "bulletinId")
            Core.<*> (o Core..:? "bulletinUri")
            Core.<*> (o Core..:? "cveIds")
            Core.<*> (o Core..:? "manualStepsRequired")
            Core.<*> (o Core..:? "patchedVersions")
            Core.<*> (o Core..:? "resourceTypeAffected")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "suggestedUpgradeTarget")
      )

instance Core.ToJSON SecurityBulletinEvent where
  toJSON SecurityBulletinEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("affectedSupportedMinors" Core..=)
              Core.<$> affectedSupportedMinors,
            ("briefDescription" Core..=) Core.<$> briefDescription,
            ("bulletinId" Core..=) Core.<$> bulletinId,
            ("bulletinUri" Core..=) Core.<$> bulletinUri,
            ("cveIds" Core..=) Core.<$> cveIds,
            ("manualStepsRequired" Core..=) Core.<$> manualStepsRequired,
            ("patchedVersions" Core..=) Core.<$> patchedVersions,
            ("resourceTypeAffected" Core..=) Core.<$> resourceTypeAffected,
            ("severity" Core..=) Core.<$> severity,
            ("suggestedUpgradeTarget" Core..=)
              Core.<$> suggestedUpgradeTarget
          ]
      )

-- | SecurityPostureConfig defines the flags needed to enable\/disable features for the Security Posture API.
--
-- /See:/ 'newSecurityPostureConfig' smart constructor.
data SecurityPostureConfig = SecurityPostureConfig
  { -- | Sets which mode to use for Security Posture features.
    mode :: (Core.Maybe SecurityPostureConfig_Mode),
    -- | Sets which mode to use for vulnerability scanning.
    vulnerabilityMode :: (Core.Maybe SecurityPostureConfig_VulnerabilityMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityPostureConfig' with the minimum fields required to make a request.
newSecurityPostureConfig ::
  SecurityPostureConfig
newSecurityPostureConfig =
  SecurityPostureConfig
    { mode = Core.Nothing,
      vulnerabilityMode = Core.Nothing
    }

instance Core.FromJSON SecurityPostureConfig where
  parseJSON =
    Core.withObject
      "SecurityPostureConfig"
      ( \o ->
          SecurityPostureConfig
            Core.<$> (o Core..:? "mode")
            Core.<*> (o Core..:? "vulnerabilityMode")
      )

instance Core.ToJSON SecurityPostureConfig where
  toJSON SecurityPostureConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("mode" Core..=) Core.<$> mode,
            ("vulnerabilityMode" Core..=) Core.<$> vulnerabilityMode
          ]
      )

-- | Kubernetes Engine service configuration.
--
-- /See:/ 'newServerConfig' smart constructor.
data ServerConfig = ServerConfig
  { -- | List of release channel configurations.
    channels :: (Core.Maybe [ReleaseChannelConfig]),
    -- | Version of Kubernetes the service deploys by default.
    defaultClusterVersion :: (Core.Maybe Core.Text),
    -- | Default image type.
    defaultImageType :: (Core.Maybe Core.Text),
    -- | List of valid image types.
    validImageTypes :: (Core.Maybe [Core.Text]),
    -- | List of valid master versions, in descending order.
    validMasterVersions :: (Core.Maybe [Core.Text]),
    -- | List of valid node upgrade target versions, in descending order.
    validNodeVersions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServerConfig' with the minimum fields required to make a request.
newServerConfig ::
  ServerConfig
newServerConfig =
  ServerConfig
    { channels = Core.Nothing,
      defaultClusterVersion = Core.Nothing,
      defaultImageType = Core.Nothing,
      validImageTypes = Core.Nothing,
      validMasterVersions = Core.Nothing,
      validNodeVersions = Core.Nothing
    }

instance Core.FromJSON ServerConfig where
  parseJSON =
    Core.withObject
      "ServerConfig"
      ( \o ->
          ServerConfig
            Core.<$> (o Core..:? "channels")
            Core.<*> (o Core..:? "defaultClusterVersion")
            Core.<*> (o Core..:? "defaultImageType")
            Core.<*> (o Core..:? "validImageTypes")
            Core.<*> (o Core..:? "validMasterVersions")
            Core.<*> (o Core..:? "validNodeVersions")
      )

instance Core.ToJSON ServerConfig where
  toJSON ServerConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("channels" Core..=) Core.<$> channels,
            ("defaultClusterVersion" Core..=) Core.<$> defaultClusterVersion,
            ("defaultImageType" Core..=) Core.<$> defaultImageType,
            ("validImageTypes" Core..=) Core.<$> validImageTypes,
            ("validMasterVersions" Core..=) Core.<$> validMasterVersions,
            ("validNodeVersions" Core..=) Core.<$> validNodeVersions
          ]
      )

-- | Config to block services with externalIPs field.
--
-- /See:/ 'newServiceExternalIPsConfig' smart constructor.
newtype ServiceExternalIPsConfig = ServiceExternalIPsConfig
  { -- | Whether Services with ExternalIPs field are allowed or not.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceExternalIPsConfig' with the minimum fields required to make a request.
newServiceExternalIPsConfig ::
  ServiceExternalIPsConfig
newServiceExternalIPsConfig =
  ServiceExternalIPsConfig {enabled = Core.Nothing}

instance Core.FromJSON ServiceExternalIPsConfig where
  parseJSON =
    Core.withObject
      "ServiceExternalIPsConfig"
      (\o -> ServiceExternalIPsConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON ServiceExternalIPsConfig where
  toJSON ServiceExternalIPsConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | SetAddonsConfigRequest sets the addons associated with the cluster.
--
-- /See:/ 'newSetAddonsConfigRequest' smart constructor.
data SetAddonsConfigRequest = SetAddonsConfigRequest
  { -- | Required. The desired configurations for the various addons available to run in the cluster.
    addonsConfig :: (Core.Maybe AddonsConfig),
    -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster) of the cluster to set addons. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetAddonsConfigRequest' with the minimum fields required to make a request.
newSetAddonsConfigRequest ::
  SetAddonsConfigRequest
newSetAddonsConfigRequest =
  SetAddonsConfigRequest
    { addonsConfig = Core.Nothing,
      clusterId = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetAddonsConfigRequest where
  parseJSON =
    Core.withObject
      "SetAddonsConfigRequest"
      ( \o ->
          SetAddonsConfigRequest
            Core.<$> (o Core..:? "addonsConfig")
            Core.<*> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetAddonsConfigRequest where
  toJSON SetAddonsConfigRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("addonsConfig" Core..=) Core.<$> addonsConfig,
            ("clusterId" Core..=) Core.<$> clusterId,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SetLabelsRequest sets the Google Cloud Platform labels on a Google Container Engine cluster, which will in turn set them for Google Compute Engine resources used by that cluster
--
-- /See:/ 'newSetLabelsRequest' smart constructor.
data SetLabelsRequest = SetLabelsRequest
  { -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. The fingerprint of the previous set of labels for this resource, used to detect conflicts. The fingerprint is initially generated by Kubernetes Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash when updating or changing labels. Make a @get()@ request to the resource to get the latest fingerprint.
    labelFingerprint :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster name) of the cluster to set labels. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Required. The labels to set for that cluster.
    resourceLabels :: (Core.Maybe SetLabelsRequest_ResourceLabels),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetLabelsRequest' with the minimum fields required to make a request.
newSetLabelsRequest ::
  SetLabelsRequest
newSetLabelsRequest =
  SetLabelsRequest
    { clusterId = Core.Nothing,
      labelFingerprint = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      resourceLabels = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetLabelsRequest where
  parseJSON =
    Core.withObject
      "SetLabelsRequest"
      ( \o ->
          SetLabelsRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "labelFingerprint")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "resourceLabels")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetLabelsRequest where
  toJSON SetLabelsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("labelFingerprint" Core..=) Core.<$> labelFingerprint,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("resourceLabels" Core..=) Core.<$> resourceLabels,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | Required. The labels to set for that cluster.
--
-- /See:/ 'newSetLabelsRequest_ResourceLabels' smart constructor.
newtype SetLabelsRequest_ResourceLabels = SetLabelsRequest_ResourceLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetLabelsRequest_ResourceLabels' with the minimum fields required to make a request.
newSetLabelsRequest_ResourceLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SetLabelsRequest_ResourceLabels
newSetLabelsRequest_ResourceLabels additional =
  SetLabelsRequest_ResourceLabels {additional = additional}

instance Core.FromJSON SetLabelsRequest_ResourceLabels where
  parseJSON =
    Core.withObject
      "SetLabelsRequest_ResourceLabels"
      ( \o ->
          SetLabelsRequest_ResourceLabels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SetLabelsRequest_ResourceLabels where
  toJSON SetLabelsRequest_ResourceLabels {..} = Core.toJSON additional

-- | SetLegacyAbacRequest enables or disables the ABAC authorization mechanism for a cluster.
--
-- /See:/ 'newSetLegacyAbacRequest' smart constructor.
data SetLegacyAbacRequest = SetLegacyAbacRequest
  { -- | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. Whether ABAC authorization will be enabled in the cluster.
    enabled :: (Core.Maybe Core.Bool),
    -- | The name (project, location, cluster name) of the cluster to set legacy abac. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetLegacyAbacRequest' with the minimum fields required to make a request.
newSetLegacyAbacRequest ::
  SetLegacyAbacRequest
newSetLegacyAbacRequest =
  SetLegacyAbacRequest
    { clusterId = Core.Nothing,
      enabled = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetLegacyAbacRequest where
  parseJSON =
    Core.withObject
      "SetLegacyAbacRequest"
      ( \o ->
          SetLegacyAbacRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "enabled")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetLegacyAbacRequest where
  toJSON SetLegacyAbacRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("enabled" Core..=) Core.<$> enabled,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SetLocationsRequest sets the locations of the cluster.
--
-- /See:/ 'newSetLocationsRequest' smart constructor.
data SetLocationsRequest = SetLocationsRequest
  { -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. The desired list of Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zones> in which the cluster\'s nodes should be located. Changing the locations a cluster is in will result in nodes being either created or removed from the cluster, depending on whether locations are being added or removed. This list must always include the cluster\'s primary zone.
    locations :: (Core.Maybe [Core.Text]),
    -- | The name (project, location, cluster) of the cluster to set locations. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetLocationsRequest' with the minimum fields required to make a request.
newSetLocationsRequest ::
  SetLocationsRequest
newSetLocationsRequest =
  SetLocationsRequest
    { clusterId = Core.Nothing,
      locations = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetLocationsRequest where
  parseJSON =
    Core.withObject
      "SetLocationsRequest"
      ( \o ->
          SetLocationsRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetLocationsRequest where
  toJSON SetLocationsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("locations" Core..=) Core.<$> locations,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SetLoggingServiceRequest sets the logging service of a cluster.
--
-- /See:/ 'newSetLoggingServiceRequest' smart constructor.
data SetLoggingServiceRequest = SetLoggingServiceRequest
  { -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. The logging service the cluster should use to write logs. Currently available options: * @logging.googleapis.com\/kubernetes@ - The Cloud Logging service with a Kubernetes-native resource model * @logging.googleapis.com@ - The legacy Cloud Logging service (no longer available as of GKE 1.15). * @none@ - no logs will be exported from the cluster. If left as an empty string,@logging.googleapis.com\/kubernetes@ will be used for GKE 1.14+ or @logging.googleapis.com@ for earlier versions.
    loggingService :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster) of the cluster to set logging. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetLoggingServiceRequest' with the minimum fields required to make a request.
newSetLoggingServiceRequest ::
  SetLoggingServiceRequest
newSetLoggingServiceRequest =
  SetLoggingServiceRequest
    { clusterId = Core.Nothing,
      loggingService = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetLoggingServiceRequest where
  parseJSON =
    Core.withObject
      "SetLoggingServiceRequest"
      ( \o ->
          SetLoggingServiceRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "loggingService")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetLoggingServiceRequest where
  toJSON SetLoggingServiceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("loggingService" Core..=) Core.<$> loggingService,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SetMaintenancePolicyRequest sets the maintenance policy for a cluster.
--
-- /See:/ 'newSetMaintenancePolicyRequest' smart constructor.
data SetMaintenancePolicyRequest = SetMaintenancePolicyRequest
  { -- | Required. The name of the cluster to update.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. The maintenance policy to be set for the cluster. An empty field clears the existing maintenance policy.
    maintenancePolicy :: (Core.Maybe MaintenancePolicy),
    -- | The name (project, location, cluster name) of the cluster to set maintenance policy. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Required. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>.
    projectId :: (Core.Maybe Core.Text),
    -- | Required. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetMaintenancePolicyRequest' with the minimum fields required to make a request.
newSetMaintenancePolicyRequest ::
  SetMaintenancePolicyRequest
newSetMaintenancePolicyRequest =
  SetMaintenancePolicyRequest
    { clusterId = Core.Nothing,
      maintenancePolicy = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetMaintenancePolicyRequest where
  parseJSON =
    Core.withObject
      "SetMaintenancePolicyRequest"
      ( \o ->
          SetMaintenancePolicyRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "maintenancePolicy")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetMaintenancePolicyRequest where
  toJSON SetMaintenancePolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("maintenancePolicy" Core..=) Core.<$> maintenancePolicy,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SetMasterAuthRequest updates the admin password of a cluster.
--
-- /See:/ 'newSetMasterAuthRequest' smart constructor.
data SetMasterAuthRequest = SetMasterAuthRequest
  { -- | Required. The exact form of action to be taken on the master auth.
    action :: (Core.Maybe SetMasterAuthRequest_Action),
    -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster) of the cluster to set auth. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Required. A description of the update.
    update :: (Core.Maybe MasterAuth),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetMasterAuthRequest' with the minimum fields required to make a request.
newSetMasterAuthRequest ::
  SetMasterAuthRequest
newSetMasterAuthRequest =
  SetMasterAuthRequest
    { action = Core.Nothing,
      clusterId = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      update = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetMasterAuthRequest where
  parseJSON =
    Core.withObject
      "SetMasterAuthRequest"
      ( \o ->
          SetMasterAuthRequest
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "update")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetMasterAuthRequest where
  toJSON SetMasterAuthRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("clusterId" Core..=) Core.<$> clusterId,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("update" Core..=) Core.<$> update,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SetMonitoringServiceRequest sets the monitoring service of a cluster.
--
-- /See:/ 'newSetMonitoringServiceRequest' smart constructor.
data SetMonitoringServiceRequest = SetMonitoringServiceRequest
  { -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. The monitoring service the cluster should use to write metrics. Currently available options: * \"monitoring.googleapis.com\/kubernetes\" - The Cloud Monitoring service with a Kubernetes-native resource model * @monitoring.googleapis.com@ - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * @none@ - No metrics will be exported from the cluster. If left as an empty string,@monitoring.googleapis.com\/kubernetes@ will be used for GKE 1.14+ or @monitoring.googleapis.com@ for earlier versions.
    monitoringService :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster) of the cluster to set monitoring. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetMonitoringServiceRequest' with the minimum fields required to make a request.
newSetMonitoringServiceRequest ::
  SetMonitoringServiceRequest
newSetMonitoringServiceRequest =
  SetMonitoringServiceRequest
    { clusterId = Core.Nothing,
      monitoringService = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetMonitoringServiceRequest where
  parseJSON =
    Core.withObject
      "SetMonitoringServiceRequest"
      ( \o ->
          SetMonitoringServiceRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "monitoringService")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetMonitoringServiceRequest where
  toJSON SetMonitoringServiceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("monitoringService" Core..=) Core.<$> monitoringService,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SetNetworkPolicyRequest enables\/disables network policy for a cluster.
--
-- /See:/ 'newSetNetworkPolicyRequest' smart constructor.
data SetNetworkPolicyRequest = SetNetworkPolicyRequest
  { -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster name) of the cluster to set networking policy. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Required. Configuration options for the NetworkPolicy feature.
    networkPolicy :: (Core.Maybe NetworkPolicy),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetNetworkPolicyRequest' with the minimum fields required to make a request.
newSetNetworkPolicyRequest ::
  SetNetworkPolicyRequest
newSetNetworkPolicyRequest =
  SetNetworkPolicyRequest
    { clusterId = Core.Nothing,
      name = Core.Nothing,
      networkPolicy = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetNetworkPolicyRequest where
  parseJSON =
    Core.withObject
      "SetNetworkPolicyRequest"
      ( \o ->
          SetNetworkPolicyRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networkPolicy")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetNetworkPolicyRequest where
  toJSON SetNetworkPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("name" Core..=) Core.<$> name,
            ("networkPolicy" Core..=) Core.<$> networkPolicy,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SetNodePoolAutoscalingRequest sets the autoscaler settings of a node pool.
--
-- /See:/ 'newSetNodePoolAutoscalingRequest' smart constructor.
data SetNodePoolAutoscalingRequest = SetNodePoolAutoscalingRequest
  { -- | Required. Autoscaling configuration for the node pool.
    autoscaling :: (Core.Maybe NodePoolAutoscaling),
    -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster, node pool) of the node pool to set autoscaler settings. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field.
    nodePoolId :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetNodePoolAutoscalingRequest' with the minimum fields required to make a request.
newSetNodePoolAutoscalingRequest ::
  SetNodePoolAutoscalingRequest
newSetNodePoolAutoscalingRequest =
  SetNodePoolAutoscalingRequest
    { autoscaling = Core.Nothing,
      clusterId = Core.Nothing,
      name = Core.Nothing,
      nodePoolId = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetNodePoolAutoscalingRequest where
  parseJSON =
    Core.withObject
      "SetNodePoolAutoscalingRequest"
      ( \o ->
          SetNodePoolAutoscalingRequest
            Core.<$> (o Core..:? "autoscaling")
            Core.<*> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodePoolId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetNodePoolAutoscalingRequest where
  toJSON SetNodePoolAutoscalingRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoscaling" Core..=) Core.<$> autoscaling,
            ("clusterId" Core..=) Core.<$> clusterId,
            ("name" Core..=) Core.<$> name,
            ("nodePoolId" Core..=) Core.<$> nodePoolId,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SetNodePoolManagementRequest sets the node management properties of a node pool.
--
-- /See:/ 'newSetNodePoolManagementRequest' smart constructor.
data SetNodePoolManagementRequest = SetNodePoolManagementRequest
  { -- | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. NodeManagement configuration for the node pool.
    management :: (Core.Maybe NodeManagement),
    -- | The name (project, location, cluster, node pool id) of the node pool to set management properties. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the node pool to update. This field has been deprecated and replaced by the name field.
    nodePoolId :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetNodePoolManagementRequest' with the minimum fields required to make a request.
newSetNodePoolManagementRequest ::
  SetNodePoolManagementRequest
newSetNodePoolManagementRequest =
  SetNodePoolManagementRequest
    { clusterId = Core.Nothing,
      management = Core.Nothing,
      name = Core.Nothing,
      nodePoolId = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetNodePoolManagementRequest where
  parseJSON =
    Core.withObject
      "SetNodePoolManagementRequest"
      ( \o ->
          SetNodePoolManagementRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "management")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodePoolId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetNodePoolManagementRequest where
  toJSON SetNodePoolManagementRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("management" Core..=) Core.<$> management,
            ("name" Core..=) Core.<$> name,
            ("nodePoolId" Core..=) Core.<$> nodePoolId,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | SetNodePoolSizeRequest sets the size of a node pool.
--
-- /See:/ 'newSetNodePoolSizeRequest' smart constructor.
data SetNodePoolSizeRequest = SetNodePoolSizeRequest
  { -- | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster, node pool id) of the node pool to set size. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Required. The desired node count for the pool.
    nodeCount :: (Core.Maybe Core.Int32),
    -- | Deprecated. The name of the node pool to update. This field has been deprecated and replaced by the name field.
    nodePoolId :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetNodePoolSizeRequest' with the minimum fields required to make a request.
newSetNodePoolSizeRequest ::
  SetNodePoolSizeRequest
newSetNodePoolSizeRequest =
  SetNodePoolSizeRequest
    { clusterId = Core.Nothing,
      name = Core.Nothing,
      nodeCount = Core.Nothing,
      nodePoolId = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON SetNodePoolSizeRequest where
  parseJSON =
    Core.withObject
      "SetNodePoolSizeRequest"
      ( \o ->
          SetNodePoolSizeRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodeCount")
            Core.<*> (o Core..:? "nodePoolId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON SetNodePoolSizeRequest where
  toJSON SetNodePoolSizeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("name" Core..=) Core.<$> name,
            ("nodeCount" Core..=) Core.<$> nodeCount,
            ("nodePoolId" Core..=) Core.<$> nodePoolId,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | A set of Shielded Instance options.
--
-- /See:/ 'newShieldedInstanceConfig' smart constructor.
data ShieldedInstanceConfig = ShieldedInstanceConfig
  { -- | Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the boot integrity of the instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the instance is created.
    enableIntegrityMonitoring :: (Core.Maybe Core.Bool),
    -- | Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails.
    enableSecureBoot :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShieldedInstanceConfig' with the minimum fields required to make a request.
newShieldedInstanceConfig ::
  ShieldedInstanceConfig
newShieldedInstanceConfig =
  ShieldedInstanceConfig
    { enableIntegrityMonitoring = Core.Nothing,
      enableSecureBoot = Core.Nothing
    }

instance Core.FromJSON ShieldedInstanceConfig where
  parseJSON =
    Core.withObject
      "ShieldedInstanceConfig"
      ( \o ->
          ShieldedInstanceConfig
            Core.<$> (o Core..:? "enableIntegrityMonitoring")
            Core.<*> (o Core..:? "enableSecureBoot")
      )

instance Core.ToJSON ShieldedInstanceConfig where
  toJSON ShieldedInstanceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableIntegrityMonitoring" Core..=)
              Core.<$> enableIntegrityMonitoring,
            ("enableSecureBoot" Core..=) Core.<$> enableSecureBoot
          ]
      )

-- | Configuration of Shielded Nodes feature.
--
-- /See:/ 'newShieldedNodes' smart constructor.
newtype ShieldedNodes = ShieldedNodes
  { -- | Whether Shielded Nodes features are enabled on all nodes in this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShieldedNodes' with the minimum fields required to make a request.
newShieldedNodes ::
  ShieldedNodes
newShieldedNodes = ShieldedNodes {enabled = Core.Nothing}

instance Core.FromJSON ShieldedNodes where
  parseJSON =
    Core.withObject
      "ShieldedNodes"
      (\o -> ShieldedNodes Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON ShieldedNodes where
  toJSON ShieldedNodes {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | SoleTenantConfig contains the NodeAffinities to specify what shared sole tenant node groups should back the node pool.
--
-- /See:/ 'newSoleTenantConfig' smart constructor.
newtype SoleTenantConfig = SoleTenantConfig
  { -- | NodeAffinities used to match to a shared sole tenant node group.
    nodeAffinities :: (Core.Maybe [NodeAffinity])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SoleTenantConfig' with the minimum fields required to make a request.
newSoleTenantConfig ::
  SoleTenantConfig
newSoleTenantConfig =
  SoleTenantConfig {nodeAffinities = Core.Nothing}

instance Core.FromJSON SoleTenantConfig where
  parseJSON =
    Core.withObject
      "SoleTenantConfig"
      (\o -> SoleTenantConfig Core.<$> (o Core..:? "nodeAffinities"))

instance Core.ToJSON SoleTenantConfig where
  toJSON SoleTenantConfig {..} =
    Core.object
      ( Core.catMaybes
          [("nodeAffinities" Core..=) Core.<$> nodeAffinities]
      )

-- | Standard rollout policy is the default policy for blue-green.
--
-- /See:/ 'newStandardRolloutPolicy' smart constructor.
data StandardRolloutPolicy = StandardRolloutPolicy
  { -- | Number of blue nodes to drain in a batch.
    batchNodeCount :: (Core.Maybe Core.Int32),
    -- | Percentage of the blue pool nodes to drain in a batch. The range of this field should be (0.0, 1.0].
    batchPercentage :: (Core.Maybe Core.Double),
    -- | Soak time after each batch gets drained. Default to zero.
    batchSoakDuration :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StandardRolloutPolicy' with the minimum fields required to make a request.
newStandardRolloutPolicy ::
  StandardRolloutPolicy
newStandardRolloutPolicy =
  StandardRolloutPolicy
    { batchNodeCount = Core.Nothing,
      batchPercentage = Core.Nothing,
      batchSoakDuration = Core.Nothing
    }

instance Core.FromJSON StandardRolloutPolicy where
  parseJSON =
    Core.withObject
      "StandardRolloutPolicy"
      ( \o ->
          StandardRolloutPolicy
            Core.<$> (o Core..:? "batchNodeCount")
            Core.<*> (o Core..:? "batchPercentage")
            Core.<*> (o Core..:? "batchSoakDuration")
      )

instance Core.ToJSON StandardRolloutPolicy where
  toJSON StandardRolloutPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchNodeCount" Core..=) Core.<$> batchNodeCount,
            ("batchPercentage" Core..=) Core.<$> batchPercentage,
            ("batchSoakDuration" Core..=) Core.<$> batchSoakDuration
          ]
      )

-- | StartIPRotationRequest creates a new IP for the cluster and then performs a node upgrade on each node pool to point to the new IP.
--
-- /See:/ 'newStartIPRotationRequest' smart constructor.
data StartIPRotationRequest = StartIPRotationRequest
  { -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster name) of the cluster to start IP rotation. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Whether to rotate credentials during IP rotation.
    rotateCredentials :: (Core.Maybe Core.Bool),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartIPRotationRequest' with the minimum fields required to make a request.
newStartIPRotationRequest ::
  StartIPRotationRequest
newStartIPRotationRequest =
  StartIPRotationRequest
    { clusterId = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      rotateCredentials = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON StartIPRotationRequest where
  parseJSON =
    Core.withObject
      "StartIPRotationRequest"
      ( \o ->
          StartIPRotationRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "rotateCredentials")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON StartIPRotationRequest where
  toJSON StartIPRotationRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("rotateCredentials" Core..=) Core.<$> rotateCredentials,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | Configuration for the Stateful HA add-on.
--
-- /See:/ 'newStatefulHAConfig' smart constructor.
newtype StatefulHAConfig = StatefulHAConfig
  { -- | Whether the Stateful HA add-on is enabled for this cluster.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StatefulHAConfig' with the minimum fields required to make a request.
newStatefulHAConfig ::
  StatefulHAConfig
newStatefulHAConfig = StatefulHAConfig {enabled = Core.Nothing}

instance Core.FromJSON StatefulHAConfig where
  parseJSON =
    Core.withObject
      "StatefulHAConfig"
      (\o -> StatefulHAConfig Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON StatefulHAConfig where
  toJSON StatefulHAConfig {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | StatusCondition describes why a cluster or a node pool has a certain status (e.g., ERROR or DEGRADED).
--
-- /See:/ 'newStatusCondition' smart constructor.
data StatusCondition = StatusCondition
  { -- | Canonical code of the condition.
    canonicalCode :: (Core.Maybe StatusCondition_CanonicalCode),
    -- | Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
    code :: (Core.Maybe StatusCondition_Code),
    -- | Human-friendly representation of the condition
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StatusCondition' with the minimum fields required to make a request.
newStatusCondition ::
  StatusCondition
newStatusCondition =
  StatusCondition
    { canonicalCode = Core.Nothing,
      code = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON StatusCondition where
  parseJSON =
    Core.withObject
      "StatusCondition"
      ( \o ->
          StatusCondition
            Core.<$> (o Core..:? "canonicalCode")
            Core.<*> (o Core..:? "code")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON StatusCondition where
  toJSON StatusCondition {..} =
    Core.object
      ( Core.catMaybes
          [ ("canonicalCode" Core..=) Core.<$> canonicalCode,
            ("code" Core..=) Core.<$> code,
            ("message" Core..=) Core.<$> message
          ]
      )

-- | Represents an arbitrary window of time.
--
-- /See:/ 'newTimeWindow' smart constructor.
data TimeWindow = TimeWindow
  { -- | The time that the window ends. The end time should take place after the start time.
    endTime :: (Core.Maybe Core.DateTime),
    -- | MaintenanceExclusionOptions provides maintenance exclusion related options.
    maintenanceExclusionOptions :: (Core.Maybe MaintenanceExclusionOptions),
    -- | The time that the window first starts.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeWindow' with the minimum fields required to make a request.
newTimeWindow ::
  TimeWindow
newTimeWindow =
  TimeWindow
    { endTime = Core.Nothing,
      maintenanceExclusionOptions = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON TimeWindow where
  parseJSON =
    Core.withObject
      "TimeWindow"
      ( \o ->
          TimeWindow
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "maintenanceExclusionOptions")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON TimeWindow where
  toJSON TimeWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("maintenanceExclusionOptions" Core..=)
              Core.<$> maintenanceExclusionOptions,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | UpdateClusterRequest updates the settings of a cluster.
--
-- /See:/ 'newUpdateClusterRequest' smart constructor.
data UpdateClusterRequest = UpdateClusterRequest
  { -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster) of the cluster to update. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Required. A description of the update.
    update :: (Core.Maybe ClusterUpdate),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateClusterRequest' with the minimum fields required to make a request.
newUpdateClusterRequest ::
  UpdateClusterRequest
newUpdateClusterRequest =
  UpdateClusterRequest
    { clusterId = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      update = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON UpdateClusterRequest where
  parseJSON =
    Core.withObject
      "UpdateClusterRequest"
      ( \o ->
          UpdateClusterRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "update")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON UpdateClusterRequest where
  toJSON UpdateClusterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("update" Core..=) Core.<$> update,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | UpdateInfo contains resource (instance groups, etc), status and other intermediate information relevant to a node pool upgrade.
--
-- /See:/ 'newUpdateInfo' smart constructor.
newtype UpdateInfo = UpdateInfo
  { -- | Information of a blue-green upgrade.
    blueGreenInfo :: (Core.Maybe BlueGreenInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateInfo' with the minimum fields required to make a request.
newUpdateInfo ::
  UpdateInfo
newUpdateInfo = UpdateInfo {blueGreenInfo = Core.Nothing}

instance Core.FromJSON UpdateInfo where
  parseJSON =
    Core.withObject
      "UpdateInfo"
      (\o -> UpdateInfo Core.<$> (o Core..:? "blueGreenInfo"))

instance Core.ToJSON UpdateInfo where
  toJSON UpdateInfo {..} =
    Core.object
      (Core.catMaybes [("blueGreenInfo" Core..=) Core.<$> blueGreenInfo])

-- | UpdateMasterRequest updates the master of the cluster.
--
-- /See:/ 'newUpdateMasterRequest' smart constructor.
data UpdateMasterRequest = UpdateMasterRequest
  { -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the default Kubernetes version
    masterVersion :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster) of the cluster to update. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateMasterRequest' with the minimum fields required to make a request.
newUpdateMasterRequest ::
  UpdateMasterRequest
newUpdateMasterRequest =
  UpdateMasterRequest
    { clusterId = Core.Nothing,
      masterVersion = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON UpdateMasterRequest where
  parseJSON =
    Core.withObject
      "UpdateMasterRequest"
      ( \o ->
          UpdateMasterRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "masterVersion")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON UpdateMasterRequest where
  toJSON UpdateMasterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("masterVersion" Core..=) Core.<$> masterVersion,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | UpdateNodePoolRequests update a node pool\'s image and\/or version.
--
-- /See:/ 'newUpdateNodePoolRequest' smart constructor.
data UpdateNodePoolRequest = UpdateNodePoolRequest
  { -- | A list of hardware accelerators to be attached to each node. See https:\/\/cloud.google.com\/compute\/docs\/gpus for more information about support for GPUs.
    accelerators :: (Core.Maybe [AcceleratorConfig]),
    -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.
    confidentialNodes :: (Core.Maybe ConfidentialNodes),
    -- | The desired containerd config for nodes in the node pool. Initiates an upgrade operation that recreates the nodes with the new config.
    containerdConfig :: (Core.Maybe ContainerdConfig),
    -- | Optional. The desired disk size for nodes in the node pool specified in GB. The smallest allowed disk size is 10GB. Initiates an upgrade operation that migrates the nodes in the node pool to the specified disk size.
    diskSizeGb :: (Core.Maybe Core.Int64),
    -- | Optional. The desired disk type (e.g. \'pd-standard\', \'pd-ssd\' or \'pd-balanced\') for nodes in the node pool. Initiates an upgrade operation that migrates the nodes in the node pool to the specified disk type.
    diskType :: (Core.Maybe Core.Text),
    -- | The current etag of the node pool. If an etag is provided and does not match the current etag of the node pool, update will be blocked and an ABORTED error will be returned.
    etag :: (Core.Maybe Core.Text),
    -- | Enable or disable NCCL fast socket for the node pool.
    fastSocket :: (Core.Maybe FastSocket),
    -- | GCFS config.
    gcfsConfig :: (Core.Maybe GcfsConfig),
    -- | Enable or disable gvnic on the node pool.
    gvnic :: (Core.Maybe VirtualNIC),
    -- | Required. The desired image type for the node pool. Please see https:\/\/cloud.google.com\/kubernetes-engine\/docs\/concepts\/node-images for available image types.
    imageType :: (Core.Maybe Core.Text),
    -- | Node kubelet configs.
    kubeletConfig :: (Core.Maybe NodeKubeletConfig),
    -- | The desired node labels to be applied to all nodes in the node pool. If this field is not present, the labels will not be changed. Otherwise, the existing node labels will be /replaced/ with the provided labels.
    labels :: (Core.Maybe NodeLabels),
    -- | Parameters that can be configured on Linux nodes.
    linuxNodeConfig :: (Core.Maybe LinuxNodeConfig),
    -- | The desired list of Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zones> in which the node pool\'s nodes should be located. Changing the locations for a node pool will result in nodes being either created or removed from the node pool, depending on whether locations are being added or removed.
    locations :: (Core.Maybe [Core.Text]),
    -- | Logging configuration.
    loggingConfig :: (Core.Maybe NodePoolLoggingConfig),
    -- | Optional. The desired <https://cloud.google.com/compute/docs/machine-types Google Compute Engine machine type> for nodes in the node pool. Initiates an upgrade operation that migrates the nodes in the node pool to the specified machine type.
    machineType :: (Core.Maybe Core.Text),
    -- | The maximum duration for the nodes to exist. If unspecified, the nodes can exist indefinitely.
    maxRunDuration :: (Core.Maybe Core.Duration),
    -- | The name (project, location, cluster, node pool) of the node pool to update. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Node network config.
    nodeNetworkConfig :: (Core.Maybe NodeNetworkConfig),
    -- | Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field.
    nodePoolId :: (Core.Maybe Core.Text),
    -- | Required. The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the Kubernetes master version
    nodeVersion :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Specifies the configuration of queued provisioning.
    queuedProvisioning :: (Core.Maybe QueuedProvisioning),
    -- | The resource labels for the node pool to use to annotate any related Google Compute Engine resources.
    resourceLabels :: (Core.Maybe ResourceLabels),
    -- | Desired resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Existing tags will be replaced with new values.
    resourceManagerTags :: (Core.Maybe ResourceManagerTags),
    -- | List of Storage Pools where boot disks are provisioned. Existing Storage Pools will be replaced with storage-pools.
    storagePools :: (Core.Maybe [Core.Text]),
    -- | The desired network tags to be applied to all nodes in the node pool. If this field is not present, the tags will not be changed. Otherwise, the existing network tags will be /replaced/ with the provided tags.
    tags :: (Core.Maybe NetworkTags),
    -- | The desired node taints to be applied to all nodes in the node pool. If this field is not present, the taints will not be changed. Otherwise, the existing node taints will be /replaced/ with the provided taints.
    taints :: (Core.Maybe NodeTaints),
    -- | Upgrade settings control disruption and speed of the upgrade.
    upgradeSettings :: (Core.Maybe UpgradeSettings),
    -- | Parameters that can be configured on Windows nodes.
    windowsNodeConfig :: (Core.Maybe WindowsNodeConfig),
    -- | The desired workload metadata config for the node pool.
    workloadMetadataConfig :: (Core.Maybe WorkloadMetadataConfig),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateNodePoolRequest' with the minimum fields required to make a request.
newUpdateNodePoolRequest ::
  UpdateNodePoolRequest
newUpdateNodePoolRequest =
  UpdateNodePoolRequest
    { accelerators = Core.Nothing,
      clusterId = Core.Nothing,
      confidentialNodes = Core.Nothing,
      containerdConfig = Core.Nothing,
      diskSizeGb = Core.Nothing,
      diskType = Core.Nothing,
      etag = Core.Nothing,
      fastSocket = Core.Nothing,
      gcfsConfig = Core.Nothing,
      gvnic = Core.Nothing,
      imageType = Core.Nothing,
      kubeletConfig = Core.Nothing,
      labels = Core.Nothing,
      linuxNodeConfig = Core.Nothing,
      locations = Core.Nothing,
      loggingConfig = Core.Nothing,
      machineType = Core.Nothing,
      maxRunDuration = Core.Nothing,
      name = Core.Nothing,
      nodeNetworkConfig = Core.Nothing,
      nodePoolId = Core.Nothing,
      nodeVersion = Core.Nothing,
      projectId = Core.Nothing,
      queuedProvisioning = Core.Nothing,
      resourceLabels = Core.Nothing,
      resourceManagerTags = Core.Nothing,
      storagePools = Core.Nothing,
      tags = Core.Nothing,
      taints = Core.Nothing,
      upgradeSettings = Core.Nothing,
      windowsNodeConfig = Core.Nothing,
      workloadMetadataConfig = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON UpdateNodePoolRequest where
  parseJSON =
    Core.withObject
      "UpdateNodePoolRequest"
      ( \o ->
          UpdateNodePoolRequest
            Core.<$> (o Core..:? "accelerators")
            Core.<*> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "confidentialNodes")
            Core.<*> (o Core..:? "containerdConfig")
            Core.<*> (o Core..:? "diskSizeGb" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "diskType")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "fastSocket")
            Core.<*> (o Core..:? "gcfsConfig")
            Core.<*> (o Core..:? "gvnic")
            Core.<*> (o Core..:? "imageType")
            Core.<*> (o Core..:? "kubeletConfig")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "linuxNodeConfig")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "maxRunDuration")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodeNetworkConfig")
            Core.<*> (o Core..:? "nodePoolId")
            Core.<*> (o Core..:? "nodeVersion")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "queuedProvisioning")
            Core.<*> (o Core..:? "resourceLabels")
            Core.<*> (o Core..:? "resourceManagerTags")
            Core.<*> (o Core..:? "storagePools")
            Core.<*> (o Core..:? "tags")
            Core.<*> (o Core..:? "taints")
            Core.<*> (o Core..:? "upgradeSettings")
            Core.<*> (o Core..:? "windowsNodeConfig")
            Core.<*> (o Core..:? "workloadMetadataConfig")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON UpdateNodePoolRequest where
  toJSON UpdateNodePoolRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("accelerators" Core..=) Core.<$> accelerators,
            ("clusterId" Core..=) Core.<$> clusterId,
            ("confidentialNodes" Core..=) Core.<$> confidentialNodes,
            ("containerdConfig" Core..=) Core.<$> containerdConfig,
            ("diskSizeGb" Core..=) Core.. Core.AsText Core.<$> diskSizeGb,
            ("diskType" Core..=) Core.<$> diskType,
            ("etag" Core..=) Core.<$> etag,
            ("fastSocket" Core..=) Core.<$> fastSocket,
            ("gcfsConfig" Core..=) Core.<$> gcfsConfig,
            ("gvnic" Core..=) Core.<$> gvnic,
            ("imageType" Core..=) Core.<$> imageType,
            ("kubeletConfig" Core..=) Core.<$> kubeletConfig,
            ("labels" Core..=) Core.<$> labels,
            ("linuxNodeConfig" Core..=) Core.<$> linuxNodeConfig,
            ("locations" Core..=) Core.<$> locations,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("machineType" Core..=) Core.<$> machineType,
            ("maxRunDuration" Core..=) Core.<$> maxRunDuration,
            ("name" Core..=) Core.<$> name,
            ("nodeNetworkConfig" Core..=) Core.<$> nodeNetworkConfig,
            ("nodePoolId" Core..=) Core.<$> nodePoolId,
            ("nodeVersion" Core..=) Core.<$> nodeVersion,
            ("projectId" Core..=) Core.<$> projectId,
            ("queuedProvisioning" Core..=) Core.<$> queuedProvisioning,
            ("resourceLabels" Core..=) Core.<$> resourceLabels,
            ("resourceManagerTags" Core..=) Core.<$> resourceManagerTags,
            ("storagePools" Core..=) Core.<$> storagePools,
            ("tags" Core..=) Core.<$> tags,
            ("taints" Core..=) Core.<$> taints,
            ("upgradeSettings" Core..=) Core.<$> upgradeSettings,
            ("windowsNodeConfig" Core..=) Core.<$> windowsNodeConfig,
            ("workloadMetadataConfig" Core..=) Core.<$> workloadMetadataConfig,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | UpgradeAvailableEvent is a notification sent to customers when a new available version is released.
--
-- /See:/ 'newUpgradeAvailableEvent' smart constructor.
data UpgradeAvailableEvent = UpgradeAvailableEvent
  { -- | The release channel of the version. If empty, it means a non-channel release.
    releaseChannel :: (Core.Maybe ReleaseChannel),
    -- | Optional relative path to the resource. For example, the relative path of the node pool.
    resource :: (Core.Maybe Core.Text),
    -- | The resource type of the release version.
    resourceType :: (Core.Maybe UpgradeAvailableEvent_ResourceType),
    -- | The release version available for upgrade.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeAvailableEvent' with the minimum fields required to make a request.
newUpgradeAvailableEvent ::
  UpgradeAvailableEvent
newUpgradeAvailableEvent =
  UpgradeAvailableEvent
    { releaseChannel = Core.Nothing,
      resource = Core.Nothing,
      resourceType = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON UpgradeAvailableEvent where
  parseJSON =
    Core.withObject
      "UpgradeAvailableEvent"
      ( \o ->
          UpgradeAvailableEvent
            Core.<$> (o Core..:? "releaseChannel")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "resourceType")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON UpgradeAvailableEvent where
  toJSON UpgradeAvailableEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("releaseChannel" Core..=) Core.<$> releaseChannel,
            ("resource" Core..=) Core.<$> resource,
            ("resourceType" Core..=) Core.<$> resourceType,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | UpgradeEvent is a notification sent to customers by the cluster server when a resource is upgrading.
--
-- /See:/ 'newUpgradeEvent' smart constructor.
data UpgradeEvent = UpgradeEvent
  { -- | The current version before the upgrade.
    currentVersion :: (Core.Maybe Core.Text),
    -- | The operation associated with this upgrade.
    operation :: (Core.Maybe Core.Text),
    -- | The time when the operation was started.
    operationStartTime :: (Core.Maybe Core.DateTime),
    -- | Optional relative path to the resource. For example in node pool upgrades, the relative path of the node pool.
    resource :: (Core.Maybe Core.Text),
    -- | The resource type that is upgrading.
    resourceType :: (Core.Maybe UpgradeEvent_ResourceType),
    -- | The target version for the upgrade.
    targetVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeEvent' with the minimum fields required to make a request.
newUpgradeEvent ::
  UpgradeEvent
newUpgradeEvent =
  UpgradeEvent
    { currentVersion = Core.Nothing,
      operation = Core.Nothing,
      operationStartTime = Core.Nothing,
      resource = Core.Nothing,
      resourceType = Core.Nothing,
      targetVersion = Core.Nothing
    }

instance Core.FromJSON UpgradeEvent where
  parseJSON =
    Core.withObject
      "UpgradeEvent"
      ( \o ->
          UpgradeEvent
            Core.<$> (o Core..:? "currentVersion")
            Core.<*> (o Core..:? "operation")
            Core.<*> (o Core..:? "operationStartTime")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "resourceType")
            Core.<*> (o Core..:? "targetVersion")
      )

instance Core.ToJSON UpgradeEvent where
  toJSON UpgradeEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentVersion" Core..=) Core.<$> currentVersion,
            ("operation" Core..=) Core.<$> operation,
            ("operationStartTime" Core..=) Core.<$> operationStartTime,
            ("resource" Core..=) Core.<$> resource,
            ("resourceType" Core..=) Core.<$> resourceType,
            ("targetVersion" Core..=) Core.<$> targetVersion
          ]
      )

-- | UpgradeInfoEvent is a notification sent to customers about the upgrade information of a resource.
--
-- /See:/ 'newUpgradeInfoEvent' smart constructor.
data UpgradeInfoEvent = UpgradeInfoEvent
  { -- | The current version before the upgrade.
    currentVersion :: (Core.Maybe Core.Text),
    -- | A brief description of the event.
    description :: (Core.Maybe Core.Text),
    -- | The time when the operation ended.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The type of the event.
    eventType :: (Core.Maybe UpgradeInfoEvent_EventType),
    -- | The end of extended support timestamp.
    extendedSupportEndTime :: (Core.Maybe Core.DateTime),
    -- | The operation associated with this upgrade.
    operation :: (Core.Maybe Core.Text),
    -- | Optional relative path to the resource. For example in node pool upgrades, the relative path of the node pool.
    resource :: (Core.Maybe Core.Text),
    -- | The resource type associated with the upgrade.
    resourceType :: (Core.Maybe UpgradeInfoEvent_ResourceType),
    -- | The end of standard support timestamp.
    standardSupportEndTime :: (Core.Maybe Core.DateTime),
    -- | The time when the operation was started.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The state of the upgrade.
    state :: (Core.Maybe UpgradeInfoEvent_State),
    -- | The target version for the upgrade.
    targetVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeInfoEvent' with the minimum fields required to make a request.
newUpgradeInfoEvent ::
  UpgradeInfoEvent
newUpgradeInfoEvent =
  UpgradeInfoEvent
    { currentVersion = Core.Nothing,
      description = Core.Nothing,
      endTime = Core.Nothing,
      eventType = Core.Nothing,
      extendedSupportEndTime = Core.Nothing,
      operation = Core.Nothing,
      resource = Core.Nothing,
      resourceType = Core.Nothing,
      standardSupportEndTime = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      targetVersion = Core.Nothing
    }

instance Core.FromJSON UpgradeInfoEvent where
  parseJSON =
    Core.withObject
      "UpgradeInfoEvent"
      ( \o ->
          UpgradeInfoEvent
            Core.<$> (o Core..:? "currentVersion")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "eventType")
            Core.<*> (o Core..:? "extendedSupportEndTime")
            Core.<*> (o Core..:? "operation")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "resourceType")
            Core.<*> (o Core..:? "standardSupportEndTime")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "targetVersion")
      )

instance Core.ToJSON UpgradeInfoEvent where
  toJSON UpgradeInfoEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentVersion" Core..=) Core.<$> currentVersion,
            ("description" Core..=) Core.<$> description,
            ("endTime" Core..=) Core.<$> endTime,
            ("eventType" Core..=) Core.<$> eventType,
            ("extendedSupportEndTime" Core..=) Core.<$> extendedSupportEndTime,
            ("operation" Core..=) Core.<$> operation,
            ("resource" Core..=) Core.<$> resource,
            ("resourceType" Core..=) Core.<$> resourceType,
            ("standardSupportEndTime" Core..=) Core.<$> standardSupportEndTime,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("targetVersion" Core..=) Core.<$> targetVersion
          ]
      )

-- | These upgrade settings control the level of parallelism and the level of disruption caused by an upgrade. maxUnavailable controls the number of nodes that can be simultaneously unavailable. maxSurge controls the number of additional nodes that can be added to the node pool temporarily for the time of the upgrade to increase the number of available nodes. (maxUnavailable + maxSurge) determines the level of parallelism (how many nodes are being upgraded at the same time). Note: upgrades inevitably introduce some disruption since workloads need to be moved from old nodes to new, upgraded ones. Even if maxUnavailable=0, this holds true. (Disruption stays within the limits of PodDisruptionBudget, if it is configured.) Consider a hypothetical node pool with 5 nodes having maxSurge=2, maxUnavailable=1. This means the upgrade process upgrades 3 nodes simultaneously. It creates 2 additional (upgraded) nodes, then it brings down 3 old (not yet upgraded) nodes at the same time. This ensures that there are always at
-- least 4 nodes available. These upgrade settings configure the upgrade strategy for the node pool. Use strategy to switch between the strategies applied to the node pool. If the strategy is ROLLING, use max/surge and max/unavailable to control the level of parallelism and the level of disruption caused by upgrade. 1. maxSurge controls the number of additional nodes that can be added to the node pool temporarily for the time of the upgrade to increase the number of available nodes. 2. maxUnavailable controls the number of nodes that can be simultaneously unavailable. 3. (maxUnavailable + maxSurge) determines the level of parallelism (how many nodes are being upgraded at the same time). If the strategy is BLUE/GREEN, use blue/green/settings to configure the blue-green upgrade related settings. 1. standard/rollout/policy is the default policy. The policy is used to control the way blue pool gets drained. The draining is executed in the batch mode. The batch size could be specified as either percentage of the node
-- pool size or the number of nodes. batch/soak/duration is the soak time after each batch gets drained. 2. node/pool/soak/duration is the soak time after all blue nodes are drained. After this period, the blue pool nodes will be deleted.
--
-- /See:/ 'newUpgradeSettings' smart constructor.
data UpgradeSettings = UpgradeSettings
  { -- | Settings for blue-green upgrade strategy.
    blueGreenSettings :: (Core.Maybe BlueGreenSettings),
    -- | The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process.
    maxSurge :: (Core.Maybe Core.Int32),
    -- | The maximum number of nodes that can be simultaneously unavailable during the upgrade process. A node is considered available if its status is Ready.
    maxUnavailable :: (Core.Maybe Core.Int32),
    -- | Update strategy of the node pool.
    strategy :: (Core.Maybe UpgradeSettings_Strategy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeSettings' with the minimum fields required to make a request.
newUpgradeSettings ::
  UpgradeSettings
newUpgradeSettings =
  UpgradeSettings
    { blueGreenSettings = Core.Nothing,
      maxSurge = Core.Nothing,
      maxUnavailable = Core.Nothing,
      strategy = Core.Nothing
    }

instance Core.FromJSON UpgradeSettings where
  parseJSON =
    Core.withObject
      "UpgradeSettings"
      ( \o ->
          UpgradeSettings
            Core.<$> (o Core..:? "blueGreenSettings")
            Core.<*> (o Core..:? "maxSurge")
            Core.<*> (o Core..:? "maxUnavailable")
            Core.<*> (o Core..:? "strategy")
      )

instance Core.ToJSON UpgradeSettings where
  toJSON UpgradeSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("blueGreenSettings" Core..=) Core.<$> blueGreenSettings,
            ("maxSurge" Core..=) Core.<$> maxSurge,
            ("maxUnavailable" Core..=) Core.<$> maxUnavailable,
            ("strategy" Core..=) Core.<$> strategy
          ]
      )

-- | UsableSubnetwork resource returns the subnetwork name, its associated network and the primary CIDR range.
--
-- /See:/ 'newUsableSubnetwork' smart constructor.
data UsableSubnetwork = UsableSubnetwork
  { -- | The range of internal addresses that are owned by this subnetwork.
    ipCidrRange :: (Core.Maybe Core.Text),
    -- | Network Name. Example: projects\/my-project\/global\/networks\/my-network
    network :: (Core.Maybe Core.Text),
    -- | Secondary IP ranges.
    secondaryIpRanges :: (Core.Maybe [UsableSubnetworkSecondaryRange]),
    -- | A human readable status message representing the reasons for cases where the caller cannot use the secondary ranges under the subnet. For example if the secondary/ip/ranges is empty due to a permission issue, an insufficient permission message will be given by status_message.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Subnetwork Name. Example: projects\/my-project\/regions\/us-central1\/subnetworks\/my-subnet
    subnetwork :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsableSubnetwork' with the minimum fields required to make a request.
newUsableSubnetwork ::
  UsableSubnetwork
newUsableSubnetwork =
  UsableSubnetwork
    { ipCidrRange = Core.Nothing,
      network = Core.Nothing,
      secondaryIpRanges = Core.Nothing,
      statusMessage = Core.Nothing,
      subnetwork = Core.Nothing
    }

instance Core.FromJSON UsableSubnetwork where
  parseJSON =
    Core.withObject
      "UsableSubnetwork"
      ( \o ->
          UsableSubnetwork
            Core.<$> (o Core..:? "ipCidrRange")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "secondaryIpRanges")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "subnetwork")
      )

instance Core.ToJSON UsableSubnetwork where
  toJSON UsableSubnetwork {..} =
    Core.object
      ( Core.catMaybes
          [ ("ipCidrRange" Core..=) Core.<$> ipCidrRange,
            ("network" Core..=) Core.<$> network,
            ("secondaryIpRanges" Core..=) Core.<$> secondaryIpRanges,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("subnetwork" Core..=) Core.<$> subnetwork
          ]
      )

-- | Secondary IP range of a usable subnetwork.
--
-- /See:/ 'newUsableSubnetworkSecondaryRange' smart constructor.
data UsableSubnetworkSecondaryRange = UsableSubnetworkSecondaryRange
  { -- | The range of IP addresses belonging to this subnetwork secondary range.
    ipCidrRange :: (Core.Maybe Core.Text),
    -- | The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance.
    rangeName :: (Core.Maybe Core.Text),
    -- | This field is to determine the status of the secondary range programmably.
    status :: (Core.Maybe UsableSubnetworkSecondaryRange_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsableSubnetworkSecondaryRange' with the minimum fields required to make a request.
newUsableSubnetworkSecondaryRange ::
  UsableSubnetworkSecondaryRange
newUsableSubnetworkSecondaryRange =
  UsableSubnetworkSecondaryRange
    { ipCidrRange = Core.Nothing,
      rangeName = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON UsableSubnetworkSecondaryRange where
  parseJSON =
    Core.withObject
      "UsableSubnetworkSecondaryRange"
      ( \o ->
          UsableSubnetworkSecondaryRange
            Core.<$> (o Core..:? "ipCidrRange")
            Core.<*> (o Core..:? "rangeName")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON UsableSubnetworkSecondaryRange where
  toJSON UsableSubnetworkSecondaryRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("ipCidrRange" Core..=) Core.<$> ipCidrRange,
            ("rangeName" Core..=) Core.<$> rangeName,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | UserManagedKeysConfig holds the resource address to Keys which are used for signing certs and token that are used for communication within cluster.
--
-- /See:/ 'newUserManagedKeysConfig' smart constructor.
data UserManagedKeysConfig = UserManagedKeysConfig
  { -- | The Certificate Authority Service caPool to use for the aggregation CA in this cluster.
    aggregationCa :: (Core.Maybe Core.Text),
    -- | The Certificate Authority Service caPool to use for the cluster CA in this cluster.
    clusterCa :: (Core.Maybe Core.Text),
    -- | The Cloud KMS cryptoKey to use for Confidential Hyperdisk on the control plane nodes.
    controlPlaneDiskEncryptionKey :: (Core.Maybe Core.Text),
    -- | Resource path of the Certificate Authority Service caPool to use for the etcd API CA in this cluster.
    etcdApiCa :: (Core.Maybe Core.Text),
    -- | Resource path of the Certificate Authority Service caPool to use for the etcd peer CA in this cluster.
    etcdPeerCa :: (Core.Maybe Core.Text),
    -- | Resource path of the Cloud KMS cryptoKey to use for encryption of internal etcd backups.
    gkeopsEtcdBackupEncryptionKey :: (Core.Maybe Core.Text),
    -- | The Cloud KMS cryptoKeyVersions to use for signing service account JWTs issued by this cluster. Format: @projects\/{project}\/locations\/{location}\/keyRings\/{keyring}\/cryptoKeys\/{cryptoKey}\/cryptoKeyVersions\/{cryptoKeyVersion}@
    serviceAccountSigningKeys :: (Core.Maybe [Core.Text]),
    -- | The Cloud KMS cryptoKeyVersions to use for verifying service account JWTs issued by this cluster. Format: @projects\/{project}\/locations\/{location}\/keyRings\/{keyring}\/cryptoKeys\/{cryptoKey}\/cryptoKeyVersions\/{cryptoKeyVersion}@
    serviceAccountVerificationKeys :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserManagedKeysConfig' with the minimum fields required to make a request.
newUserManagedKeysConfig ::
  UserManagedKeysConfig
newUserManagedKeysConfig =
  UserManagedKeysConfig
    { aggregationCa = Core.Nothing,
      clusterCa = Core.Nothing,
      controlPlaneDiskEncryptionKey = Core.Nothing,
      etcdApiCa = Core.Nothing,
      etcdPeerCa = Core.Nothing,
      gkeopsEtcdBackupEncryptionKey = Core.Nothing,
      serviceAccountSigningKeys = Core.Nothing,
      serviceAccountVerificationKeys = Core.Nothing
    }

instance Core.FromJSON UserManagedKeysConfig where
  parseJSON =
    Core.withObject
      "UserManagedKeysConfig"
      ( \o ->
          UserManagedKeysConfig
            Core.<$> (o Core..:? "aggregationCa")
            Core.<*> (o Core..:? "clusterCa")
            Core.<*> (o Core..:? "controlPlaneDiskEncryptionKey")
            Core.<*> (o Core..:? "etcdApiCa")
            Core.<*> (o Core..:? "etcdPeerCa")
            Core.<*> (o Core..:? "gkeopsEtcdBackupEncryptionKey")
            Core.<*> (o Core..:? "serviceAccountSigningKeys")
            Core.<*> (o Core..:? "serviceAccountVerificationKeys")
      )

instance Core.ToJSON UserManagedKeysConfig where
  toJSON UserManagedKeysConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregationCa" Core..=) Core.<$> aggregationCa,
            ("clusterCa" Core..=) Core.<$> clusterCa,
            ("controlPlaneDiskEncryptionKey" Core..=)
              Core.<$> controlPlaneDiskEncryptionKey,
            ("etcdApiCa" Core..=) Core.<$> etcdApiCa,
            ("etcdPeerCa" Core..=) Core.<$> etcdPeerCa,
            ("gkeopsEtcdBackupEncryptionKey" Core..=)
              Core.<$> gkeopsEtcdBackupEncryptionKey,
            ("serviceAccountSigningKeys" Core..=)
              Core.<$> serviceAccountSigningKeys,
            ("serviceAccountVerificationKeys" Core..=)
              Core.<$> serviceAccountVerificationKeys
          ]
      )

-- | VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
--
-- /See:/ 'newVerticalPodAutoscaling' smart constructor.
newtype VerticalPodAutoscaling = VerticalPodAutoscaling
  { -- | Enables vertical pod autoscaling.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerticalPodAutoscaling' with the minimum fields required to make a request.
newVerticalPodAutoscaling ::
  VerticalPodAutoscaling
newVerticalPodAutoscaling =
  VerticalPodAutoscaling {enabled = Core.Nothing}

instance Core.FromJSON VerticalPodAutoscaling where
  parseJSON =
    Core.withObject
      "VerticalPodAutoscaling"
      (\o -> VerticalPodAutoscaling Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON VerticalPodAutoscaling where
  toJSON VerticalPodAutoscaling {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Configuration of gVNIC feature.
--
-- /See:/ 'newVirtualNIC' smart constructor.
newtype VirtualNIC = VirtualNIC
  { -- | Whether gVNIC features are enabled in the node pool.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VirtualNIC' with the minimum fields required to make a request.
newVirtualNIC ::
  VirtualNIC
newVirtualNIC = VirtualNIC {enabled = Core.Nothing}

instance Core.FromJSON VirtualNIC where
  parseJSON =
    Core.withObject
      "VirtualNIC"
      (\o -> VirtualNIC Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON VirtualNIC where
  toJSON VirtualNIC {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings
--
-- /See:/ 'newWindowsNodeConfig' smart constructor.
newtype WindowsNodeConfig = WindowsNodeConfig
  { -- | OSVersion specifies the Windows node config to be used on the node
    osVersion :: (Core.Maybe WindowsNodeConfig_OsVersion)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WindowsNodeConfig' with the minimum fields required to make a request.
newWindowsNodeConfig ::
  WindowsNodeConfig
newWindowsNodeConfig = WindowsNodeConfig {osVersion = Core.Nothing}

instance Core.FromJSON WindowsNodeConfig where
  parseJSON =
    Core.withObject
      "WindowsNodeConfig"
      (\o -> WindowsNodeConfig Core.<$> (o Core..:? "osVersion"))

instance Core.ToJSON WindowsNodeConfig where
  toJSON WindowsNodeConfig {..} =
    Core.object
      (Core.catMaybes [("osVersion" Core..=) Core.<$> osVersion])

-- | Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
--
-- /See:/ 'newWorkloadIdentityConfig' smart constructor.
newtype WorkloadIdentityConfig = WorkloadIdentityConfig
  { -- | The workload pool to attach all Kubernetes service accounts to.
    workloadPool :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkloadIdentityConfig' with the minimum fields required to make a request.
newWorkloadIdentityConfig ::
  WorkloadIdentityConfig
newWorkloadIdentityConfig =
  WorkloadIdentityConfig {workloadPool = Core.Nothing}

instance Core.FromJSON WorkloadIdentityConfig where
  parseJSON =
    Core.withObject
      "WorkloadIdentityConfig"
      ( \o ->
          WorkloadIdentityConfig Core.<$> (o Core..:? "workloadPool")
      )

instance Core.ToJSON WorkloadIdentityConfig where
  toJSON WorkloadIdentityConfig {..} =
    Core.object
      (Core.catMaybes [("workloadPool" Core..=) Core.<$> workloadPool])

-- | WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.
--
-- /See:/ 'newWorkloadMetadataConfig' smart constructor.
newtype WorkloadMetadataConfig = WorkloadMetadataConfig
  { -- | Mode is the configuration for how to expose metadata to workloads running on the node pool.
    mode :: (Core.Maybe WorkloadMetadataConfig_Mode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkloadMetadataConfig' with the minimum fields required to make a request.
newWorkloadMetadataConfig ::
  WorkloadMetadataConfig
newWorkloadMetadataConfig =
  WorkloadMetadataConfig {mode = Core.Nothing}

instance Core.FromJSON WorkloadMetadataConfig where
  parseJSON =
    Core.withObject
      "WorkloadMetadataConfig"
      (\o -> WorkloadMetadataConfig Core.<$> (o Core..:? "mode"))

instance Core.ToJSON WorkloadMetadataConfig where
  toJSON WorkloadMetadataConfig {..} =
    Core.object (Core.catMaybes [("mode" Core..=) Core.<$> mode])

-- | WorkloadPolicyConfig is the configuration related to GCW workload policy
--
-- /See:/ 'newWorkloadPolicyConfig' smart constructor.
data WorkloadPolicyConfig = WorkloadPolicyConfig
  { -- | If true, workloads can use NET_ADMIN capability.
    allowNetAdmin :: (Core.Maybe Core.Bool),
    -- | If true, enables the GCW Auditor that audits workloads on standard clusters.
    autopilotCompatibilityAuditingEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkloadPolicyConfig' with the minimum fields required to make a request.
newWorkloadPolicyConfig ::
  WorkloadPolicyConfig
newWorkloadPolicyConfig =
  WorkloadPolicyConfig
    { allowNetAdmin = Core.Nothing,
      autopilotCompatibilityAuditingEnabled = Core.Nothing
    }

instance Core.FromJSON WorkloadPolicyConfig where
  parseJSON =
    Core.withObject
      "WorkloadPolicyConfig"
      ( \o ->
          WorkloadPolicyConfig
            Core.<$> (o Core..:? "allowNetAdmin")
            Core.<*> (o Core..:? "autopilotCompatibilityAuditingEnabled")
      )

instance Core.ToJSON WorkloadPolicyConfig where
  toJSON WorkloadPolicyConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowNetAdmin" Core..=) Core.<$> allowNetAdmin,
            ("autopilotCompatibilityAuditingEnabled" Core..=)
              Core.<$> autopilotCompatibilityAuditingEnabled
          ]
      )
