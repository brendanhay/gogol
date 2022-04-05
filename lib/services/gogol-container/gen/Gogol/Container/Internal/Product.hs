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
-- Module      : Gogol.Container.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Container.Internal.Product
  ( -- * AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

    -- * AddonsConfig
    AddonsConfig (..),
    newAddonsConfig,

    -- * AdvancedMachineFeatures
    AdvancedMachineFeatures (..),
    newAdvancedMachineFeatures,

    -- * AuthenticatorGroupsConfig
    AuthenticatorGroupsConfig (..),
    newAuthenticatorGroupsConfig,

    -- * AutoUpgradeOptions
    AutoUpgradeOptions (..),
    newAutoUpgradeOptions,

    -- * Autopilot
    Autopilot (..),
    newAutopilot,

    -- * AutoprovisioningNodePoolDefaults
    AutoprovisioningNodePoolDefaults (..),
    newAutoprovisioningNodePoolDefaults,

    -- * BigQueryDestination
    BigQueryDestination (..),
    newBigQueryDestination,

    -- * BinaryAuthorization
    BinaryAuthorization (..),
    newBinaryAuthorization,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

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

    -- * ClusterUpdate
    ClusterUpdate (..),
    newClusterUpdate,

    -- * CompleteIPRotationRequest
    CompleteIPRotationRequest (..),
    newCompleteIPRotationRequest,

    -- * ConfidentialNodes
    ConfidentialNodes (..),
    newConfidentialNodes,

    -- * ConfigConnectorConfig
    ConfigConnectorConfig (..),
    newConfigConnectorConfig,

    -- * ConsumptionMeteringConfig
    ConsumptionMeteringConfig (..),
    newConsumptionMeteringConfig,

    -- * CreateClusterRequest
    CreateClusterRequest (..),
    newCreateClusterRequest,

    -- * CreateNodePoolRequest
    CreateNodePoolRequest (..),
    newCreateNodePoolRequest,

    -- * DNSConfig
    DNSConfig (..),
    newDNSConfig,

    -- * DailyMaintenanceWindow
    DailyMaintenanceWindow (..),
    newDailyMaintenanceWindow,

    -- * DatabaseEncryption
    DatabaseEncryption (..),
    newDatabaseEncryption,

    -- * DefaultSnatStatus
    DefaultSnatStatus (..),
    newDefaultSnatStatus,

    -- * DnsCacheConfig
    DnsCacheConfig (..),
    newDnsCacheConfig,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Filter
    Filter (..),
    newFilter,

    -- * GcePersistentDiskCsiDriverConfig
    GcePersistentDiskCsiDriverConfig (..),
    newGcePersistentDiskCsiDriverConfig,

    -- * GcfsConfig
    GcfsConfig (..),
    newGcfsConfig,

    -- * GcpFilestoreCsiDriverConfig
    GcpFilestoreCsiDriverConfig (..),
    newGcpFilestoreCsiDriverConfig,

    -- * GetJSONWebKeysResponse
    GetJSONWebKeysResponse (..),
    newGetJSONWebKeysResponse,

    -- * GetOpenIDConfigResponse
    GetOpenIDConfigResponse (..),
    newGetOpenIDConfigResponse,

    -- * HorizontalPodAutoscaling
    HorizontalPodAutoscaling (..),
    newHorizontalPodAutoscaling,

    -- * HttpCacheControlResponseHeader
    HttpCacheControlResponseHeader (..),
    newHttpCacheControlResponseHeader,

    -- * HttpLoadBalancing
    HttpLoadBalancing (..),
    newHttpLoadBalancing,

    -- * ILBSubsettingConfig
    ILBSubsettingConfig (..),
    newILBSubsettingConfig,

    -- * IPAllocationPolicy
    IPAllocationPolicy (..),
    newIPAllocationPolicy,

    -- * IdentityServiceConfig
    IdentityServiceConfig (..),
    newIdentityServiceConfig,

    -- * IntraNodeVisibilityConfig
    IntraNodeVisibilityConfig (..),
    newIntraNodeVisibilityConfig,

    -- * Jwk
    Jwk (..),
    newJwk,

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

    -- * LoggingComponentConfig
    LoggingComponentConfig (..),
    newLoggingComponentConfig,

    -- * LoggingConfig
    LoggingConfig (..),
    newLoggingConfig,

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

    -- * NetworkPolicy
    NetworkPolicy (..),
    newNetworkPolicy,

    -- * NetworkPolicyConfig
    NetworkPolicyConfig (..),
    newNetworkPolicyConfig,

    -- * NetworkTags
    NetworkTags (..),
    newNetworkTags,

    -- * NodeConfig
    NodeConfig (..),
    newNodeConfig,

    -- * NodeConfig_Labels
    NodeConfig_Labels (..),
    newNodeConfig_Labels,

    -- * NodeConfig_Metadata
    NodeConfig_Metadata (..),
    newNodeConfig_Metadata,

    -- * NodeConfigDefaults
    NodeConfigDefaults (..),
    newNodeConfigDefaults,

    -- * NodeKubeletConfig
    NodeKubeletConfig (..),
    newNodeKubeletConfig,

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

    -- * NodeTaint
    NodeTaint (..),
    newNodeTaint,

    -- * NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- * Operation
    Operation (..),
    newOperation,

    -- * OperationProgress
    OperationProgress (..),
    newOperationProgress,

    -- * PrivateClusterConfig
    PrivateClusterConfig (..),
    newPrivateClusterConfig,

    -- * PrivateClusterMasterGlobalAccessConfig
    PrivateClusterMasterGlobalAccessConfig (..),
    newPrivateClusterMasterGlobalAccessConfig,

    -- * PubSub
    PubSub (..),
    newPubSub,

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

    -- * ResourceLimit
    ResourceLimit (..),
    newResourceLimit,

    -- * ResourceUsageExportConfig
    ResourceUsageExportConfig (..),
    newResourceUsageExportConfig,

    -- * RollbackNodePoolUpgradeRequest
    RollbackNodePoolUpgradeRequest (..),
    newRollbackNodePoolUpgradeRequest,

    -- * SandboxConfig
    SandboxConfig (..),
    newSandboxConfig,

    -- * SecurityBulletinEvent
    SecurityBulletinEvent (..),
    newSecurityBulletinEvent,

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

    -- * StartIPRotationRequest
    StartIPRotationRequest (..),
    newStartIPRotationRequest,

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

    -- * UpgradeSettings
    UpgradeSettings (..),
    newUpgradeSettings,

    -- * UsableSubnetwork
    UsableSubnetwork (..),
    newUsableSubnetwork,

    -- * UsableSubnetworkSecondaryRange
    UsableSubnetworkSecondaryRange (..),
    newUsableSubnetworkSecondaryRange,

    -- * VerticalPodAutoscaling
    VerticalPodAutoscaling (..),
    newVerticalPodAutoscaling,

    -- * VirtualNIC
    VirtualNIC (..),
    newVirtualNIC,

    -- * WorkloadIdentityConfig
    WorkloadIdentityConfig (..),
    newWorkloadIdentityConfig,

    -- * WorkloadMetadataConfig
    WorkloadMetadataConfig (..),
    newWorkloadMetadataConfig,
  )
where

import Gogol.Container.Internal.Sum
import qualified Gogol.Prelude as Core

-- | AcceleratorConfig represents a Hardware Accelerator request.
--
-- /See:/ 'newAcceleratorConfig' smart constructor.
data AcceleratorConfig = AcceleratorConfig
  { -- | The number of the accelerator cards exposed to an instance.
    acceleratorCount :: (Core.Maybe Core.Int64),
    -- | The accelerator type resource name. List of supported accelerators <https://cloud.google.com/compute/docs/gpus here>
    acceleratorType :: (Core.Maybe Core.Text),
    -- | Size of partitions to create on the GPU. Valid values are described in the NVIDIA <https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning mig user guide>.
    gpuPartitionSize :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcceleratorConfig' with the minimum fields required to make a request.
newAcceleratorConfig ::
  AcceleratorConfig
newAcceleratorConfig =
  AcceleratorConfig
    { acceleratorCount = Core.Nothing,
      acceleratorType = Core.Nothing,
      gpuPartitionSize = Core.Nothing
    }

instance Core.FromJSON AcceleratorConfig where
  parseJSON =
    Core.withObject
      "AcceleratorConfig"
      ( \o ->
          AcceleratorConfig
            Core.<$> ( o Core..:? "acceleratorCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "acceleratorType")
            Core.<*> (o Core..:? "gpuPartitionSize")
      )

instance Core.ToJSON AcceleratorConfig where
  toJSON AcceleratorConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorCount" Core..=) Core.. Core.AsText
              Core.<$> acceleratorCount,
            ("acceleratorType" Core..=) Core.<$> acceleratorType,
            ("gpuPartitionSize" Core..=)
              Core.<$> gpuPartitionSize
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
    -- | Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
    horizontalPodAutoscaling :: (Core.Maybe HorizontalPodAutoscaling),
    -- | Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
    httpLoadBalancing :: (Core.Maybe HttpLoadBalancing),
    -- | Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https:\/\/cloud.google.com\/kubernetes-engine\/docs\/concepts\/dashboards
    kubernetesDashboard :: (Core.Maybe KubernetesDashboard),
    -- | Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
    networkPolicyConfig :: (Core.Maybe NetworkPolicyConfig)
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
      horizontalPodAutoscaling = Core.Nothing,
      httpLoadBalancing = Core.Nothing,
      kubernetesDashboard = Core.Nothing,
      networkPolicyConfig = Core.Nothing
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
            Core.<*> (o Core..:? "horizontalPodAutoscaling")
            Core.<*> (o Core..:? "httpLoadBalancing")
            Core.<*> (o Core..:? "kubernetesDashboard")
            Core.<*> (o Core..:? "networkPolicyConfig")
      )

instance Core.ToJSON AddonsConfig where
  toJSON AddonsConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudRunConfig" Core..=) Core.<$> cloudRunConfig,
            ("configConnectorConfig" Core..=)
              Core.<$> configConnectorConfig,
            ("dnsCacheConfig" Core..=) Core.<$> dnsCacheConfig,
            ("gcePersistentDiskCsiDriverConfig" Core..=)
              Core.<$> gcePersistentDiskCsiDriverConfig,
            ("gcpFilestoreCsiDriverConfig" Core..=)
              Core.<$> gcpFilestoreCsiDriverConfig,
            ("horizontalPodAutoscaling" Core..=)
              Core.<$> horizontalPodAutoscaling,
            ("httpLoadBalancing" Core..=)
              Core.<$> httpLoadBalancing,
            ("kubernetesDashboard" Core..=)
              Core.<$> kubernetesDashboard,
            ("networkPolicyConfig" Core..=)
              Core.<$> networkPolicyConfig
          ]
      )

-- | Specifies options for controlling advanced machine features.
--
-- /See:/ 'newAdvancedMachineFeatures' smart constructor.
newtype AdvancedMachineFeatures = AdvancedMachineFeatures
  { -- | The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
    threadsPerCore :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdvancedMachineFeatures' with the minimum fields required to make a request.
newAdvancedMachineFeatures ::
  AdvancedMachineFeatures
newAdvancedMachineFeatures =
  AdvancedMachineFeatures {threadsPerCore = Core.Nothing}

instance Core.FromJSON AdvancedMachineFeatures where
  parseJSON =
    Core.withObject
      "AdvancedMachineFeatures"
      ( \o ->
          AdvancedMachineFeatures
            Core.<$> ( o Core..:? "threadsPerCore"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON AdvancedMachineFeatures where
  toJSON AdvancedMachineFeatures {..} =
    Core.object
      ( Core.catMaybes
          [ ("threadsPerCore" Core..=) Core.. Core.AsText
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

-- | AutoUpgradeOptions defines the set of options for the user to control how the Auto Upgrades will proceed.
--
-- /See:/ 'newAutoUpgradeOptions' smart constructor.
data AutoUpgradeOptions = AutoUpgradeOptions
  { -- | [Output only] This field is set when upgrades are about to commence with the approximate start time for the upgrades, in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    autoUpgradeStartTime :: (Core.Maybe Core.Text),
    -- | [Output only] This field is set when upgrades are about to commence with the description of the upgrade.
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
          [ ("autoUpgradeStartTime" Core..=)
              Core.<$> autoUpgradeStartTime,
            ("description" Core..=) Core.<$> description
          ]
      )

-- | Autopilot is the configuration for Autopilot settings on the cluster.
--
-- /See:/ 'newAutopilot' smart constructor.
newtype Autopilot = Autopilot
  { -- | Enable Autopilot
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Autopilot' with the minimum fields required to make a request.
newAutopilot ::
  Autopilot
newAutopilot = Autopilot {enabled = Core.Nothing}

instance Core.FromJSON Autopilot where
  parseJSON =
    Core.withObject
      "Autopilot"
      (\o -> Autopilot Core.<$> (o Core..:? "enabled"))

instance Core.ToJSON Autopilot where
  toJSON Autopilot {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

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
    -- | The image type to use for NAP created node.
    imageType :: (Core.Maybe Core.Text),
    -- | Specifies the node management options for NAP created node-pools.
    management :: (Core.Maybe NodeManagement),
    -- | Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read <https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform how to specify min CPU platform> This field is deprecated, min/cpu/platform should be specified using cloud.google.com\/requested-min-cpu-platform label selector on the pod. To unset the min cpu platform field pass \"automatic\" as field value.
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
      management = Core.Nothing,
      minCpuPlatform = Core.Nothing,
      oauthScopes = Core.Nothing,
      serviceAccount = Core.Nothing,
      shieldedInstanceConfig = Core.Nothing,
      upgradeSettings = Core.Nothing
    }

instance
  Core.FromJSON
    AutoprovisioningNodePoolDefaults
  where
  parseJSON =
    Core.withObject
      "AutoprovisioningNodePoolDefaults"
      ( \o ->
          AutoprovisioningNodePoolDefaults
            Core.<$> (o Core..:? "bootDiskKmsKey")
            Core.<*> (o Core..:? "diskSizeGb")
            Core.<*> (o Core..:? "diskType")
            Core.<*> (o Core..:? "imageType")
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
            ("management" Core..=) Core.<$> management,
            ("minCpuPlatform" Core..=) Core.<$> minCpuPlatform,
            ("oauthScopes" Core..=) Core.<$> oauthScopes,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("shieldedInstanceConfig" Core..=)
              Core.<$> shieldedInstanceConfig,
            ("upgradeSettings" Core..=)
              Core.<$> upgradeSettings
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
newBigQueryDestination = BigQueryDestination {datasetId = Core.Nothing}

instance Core.FromJSON BigQueryDestination where
  parseJSON =
    Core.withObject
      "BigQueryDestination"
      ( \o ->
          BigQueryDestination
            Core.<$> (o Core..:? "datasetId")
      )

instance Core.ToJSON BigQueryDestination where
  toJSON BigQueryDestination {..} =
    Core.object
      ( Core.catMaybes
          [("datasetId" Core..=) Core.<$> datasetId]
      )

-- | Configuration for Binary Authorization.
--
-- /See:/ 'newBinaryAuthorization' smart constructor.
newtype BinaryAuthorization = BinaryAuthorization
  { -- | Enable Binary Authorization for this cluster. If enabled, all container images will be validated by Binary Authorization.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorization' with the minimum fields required to make a request.
newBinaryAuthorization ::
  BinaryAuthorization
newBinaryAuthorization = BinaryAuthorization {enabled = Core.Nothing}

instance Core.FromJSON BinaryAuthorization where
  parseJSON =
    Core.withObject
      "BinaryAuthorization"
      ( \o ->
          BinaryAuthorization Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON BinaryAuthorization where
  toJSON BinaryAuthorization {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

-- | CancelOperationRequest cancels a single operation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  { -- | The name (project, location, operation id) of the operation to cancel. Specified in the format @projects\/*\/locations\/*\/operations\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The server-assigned @name@ of the operation. This field has been deprecated and replaced by the name field.
    operationId :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
newCidrBlock = CidrBlock {cidrBlock = Core.Nothing, displayName = Core.Nothing}

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
  CloudRunConfig {disabled = Core.Nothing, loadBalancerType = Core.Nothing}

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
            ("loadBalancerType" Core..=)
              Core.<$> loadBalancerType
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
    -- | Which conditions caused the current cluster state.
    conditions :: (Core.Maybe [StatusCondition]),
    -- | Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
    confidentialNodes :: (Core.Maybe ConfidentialNodes),
    -- | [Output only] The time the cluster was created, in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    createTime :: (Core.Maybe Core.Text),
    -- | [Output only] The current software version of the master endpoint.
    currentMasterVersion :: (Core.Maybe Core.Text),
    -- | [Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
    currentNodeCount :: (Core.Maybe Core.Int32),
    -- | [Output only] Deprecated, use <https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools NodePools.version> instead. The current version of the node software components. If they are currently at multiple versions because they\'re in the process of being upgraded, this reflects the minimum version of all nodes.
    currentNodeVersion :: (Core.Maybe Core.Text),
    -- | Configuration of etcd encryption.
    databaseEncryption :: (Core.Maybe DatabaseEncryption),
    -- | The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
    defaultMaxPodsConstraint :: (Core.Maybe MaxPodsConstraint),
    -- | An optional description of this cluster.
    description :: (Core.Maybe Core.Text),
    -- | Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alpha1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master\/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
    enableKubernetesAlpha :: (Core.Maybe Core.Bool),
    -- | Enable the ability to use Cloud TPUs in this cluster.
    enableTpu :: (Core.Maybe Core.Bool),
    -- | [Output only] The IP address of this cluster\'s master endpoint. The endpoint can be accessed from the internet at @https:\/\/username:password\@endpoint\/@. See the @masterAuth@ property of this resource for username and password information.
    endpoint :: (Core.Maybe Core.Text),
    -- | [Output only] The time the cluster will be automatically deleted in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    expireTime :: (Core.Maybe Core.Text),
    -- | Output only. Unique id for the cluster.
    id :: (Core.Maybe Core.Text),
    -- | Configuration for Identity Service component.
    identityServiceConfig :: (Core.Maybe IdentityServiceConfig),
    -- | The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"\",\"-\": picks the default Kubernetes version
    initialClusterVersion :: (Core.Maybe Core.Text),
    -- | The number of nodes to create in this cluster. You must ensure that your Compute Engine <https://cloud.google.com/compute/quotas resource quota> is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a \"node/pool\" object, since this configuration (along with the \"node/config\") will be used to create a \"NodePool\" object with an auto-generated name. Do not use this and a node/pool at the same time. This field is deprecated, use node/pool.initial/node/count instead.
    initialNodeCount :: (Core.Maybe Core.Int32),
    -- | Deprecated. Use node/pools.instance/group_urls.
    instanceGroupUrls :: (Core.Maybe [Core.Text]),
    -- | Configuration for cluster IP allocation.
    ipAllocationPolicy :: (Core.Maybe IPAllocationPolicy),
    -- | The fingerprint of the set of labels for this cluster.
    labelFingerprint :: (Core.Maybe Core.Text),
    -- | Configuration for the legacy ABAC authorization mode.
    legacyAbac :: (Core.Maybe LegacyAbac),
    -- | [Output only] The name of the Google Compute Engine <https://cloud.google.com/compute/docs/regions-zones/regions-zones#available zone> or <https://cloud.google.com/compute/docs/regions-zones/regions-zones#available region> in which the cluster resides.
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
    -- | The configuration options for master authorized networks feature.
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
    -- | [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the @container_ipv4_cidr@ range. This field will only be set when cluster is in route-based network mode.
    nodeIpv4CidrSize :: (Core.Maybe Core.Int32),
    -- | Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
    nodePoolAutoConfig :: (Core.Maybe NodePoolAutoConfig),
    -- | Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
    nodePoolDefaults :: (Core.Maybe NodePoolDefaults),
    -- | The node pools associated with this cluster. This field should not be set if \"node/config\" or \"initial/node_count\" are specified.
    nodePools :: (Core.Maybe [NodePool]),
    -- | Notification configuration of the cluster.
    notificationConfig :: (Core.Maybe NotificationConfig),
    -- | Configuration for private cluster.
    privateClusterConfig :: (Core.Maybe PrivateClusterConfig),
    -- | Release channel configuration.
    releaseChannel :: (Core.Maybe ReleaseChannel),
    -- | The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
    resourceLabels :: (Core.Maybe Cluster_ResourceLabels),
    -- | Configuration for exporting resource usages. Resource usage export is disabled when this config is unspecified.
    resourceUsageExportConfig :: (Core.Maybe ResourceUsageExportConfig),
    -- | [Output only] Server-defined URL for the resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | [Output only] The IP address range of the Kubernetes services in this cluster, in <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @1.2.3.4\/29@). Service addresses are typically put in the last @\/16@ from the container CIDR.
    servicesIpv4Cidr :: (Core.Maybe Core.Text),
    -- | Shielded Nodes configuration.
    shieldedNodes :: (Core.Maybe ShieldedNodes),
    -- | [Output only] The current status of this cluster.
    status :: (Core.Maybe Cluster_Status),
    -- | [Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
    statusMessage :: (Core.Maybe Core.Text),
    -- | The name of the Google Compute Engine <https://cloud.google.com/compute/docs/subnetworks subnetwork> to which the cluster is connected.
    subnetwork :: (Core.Maybe Core.Text),
    -- | [Output only] The IP address range of the Cloud TPUs in this cluster, in <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @1.2.3.4\/29@).
    tpuIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Cluster-level Vertical Pod Autoscaling configuration.
    verticalPodAutoscaling :: (Core.Maybe VerticalPodAutoscaling),
    -- | Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
    workloadIdentityConfig :: (Core.Maybe WorkloadIdentityConfig),
    -- | [Output only] The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field is deprecated, use location instead.
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
      conditions = Core.Nothing,
      confidentialNodes = Core.Nothing,
      createTime = Core.Nothing,
      currentMasterVersion = Core.Nothing,
      currentNodeCount = Core.Nothing,
      currentNodeVersion = Core.Nothing,
      databaseEncryption = Core.Nothing,
      defaultMaxPodsConstraint = Core.Nothing,
      description = Core.Nothing,
      enableKubernetesAlpha = Core.Nothing,
      enableTpu = Core.Nothing,
      endpoint = Core.Nothing,
      expireTime = Core.Nothing,
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
      privateClusterConfig = Core.Nothing,
      releaseChannel = Core.Nothing,
      resourceLabels = Core.Nothing,
      resourceUsageExportConfig = Core.Nothing,
      selfLink = Core.Nothing,
      servicesIpv4Cidr = Core.Nothing,
      shieldedNodes = Core.Nothing,
      status = Core.Nothing,
      statusMessage = Core.Nothing,
      subnetwork = Core.Nothing,
      tpuIpv4CidrBlock = Core.Nothing,
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
            Core.<*> (o Core..:? "conditions")
            Core.<*> (o Core..:? "confidentialNodes")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "currentMasterVersion")
            Core.<*> (o Core..:? "currentNodeCount")
            Core.<*> (o Core..:? "currentNodeVersion")
            Core.<*> (o Core..:? "databaseEncryption")
            Core.<*> (o Core..:? "defaultMaxPodsConstraint")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "enableKubernetesAlpha")
            Core.<*> (o Core..:? "enableTpu")
            Core.<*> (o Core..:? "endpoint")
            Core.<*> (o Core..:? "expireTime")
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
            Core.<*> (o Core..:? "privateClusterConfig")
            Core.<*> (o Core..:? "releaseChannel")
            Core.<*> (o Core..:? "resourceLabels")
            Core.<*> (o Core..:? "resourceUsageExportConfig")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "servicesIpv4Cidr")
            Core.<*> (o Core..:? "shieldedNodes")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "subnetwork")
            Core.<*> (o Core..:? "tpuIpv4CidrBlock")
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
            ("binaryAuthorization" Core..=)
              Core.<$> binaryAuthorization,
            ("clusterIpv4Cidr" Core..=) Core.<$> clusterIpv4Cidr,
            ("conditions" Core..=) Core.<$> conditions,
            ("confidentialNodes" Core..=)
              Core.<$> confidentialNodes,
            ("createTime" Core..=) Core.<$> createTime,
            ("currentMasterVersion" Core..=)
              Core.<$> currentMasterVersion,
            ("currentNodeCount" Core..=)
              Core.<$> currentNodeCount,
            ("currentNodeVersion" Core..=)
              Core.<$> currentNodeVersion,
            ("databaseEncryption" Core..=)
              Core.<$> databaseEncryption,
            ("defaultMaxPodsConstraint" Core..=)
              Core.<$> defaultMaxPodsConstraint,
            ("description" Core..=) Core.<$> description,
            ("enableKubernetesAlpha" Core..=)
              Core.<$> enableKubernetesAlpha,
            ("enableTpu" Core..=) Core.<$> enableTpu,
            ("endpoint" Core..=) Core.<$> endpoint,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("id" Core..=) Core.<$> id,
            ("identityServiceConfig" Core..=)
              Core.<$> identityServiceConfig,
            ("initialClusterVersion" Core..=)
              Core.<$> initialClusterVersion,
            ("initialNodeCount" Core..=)
              Core.<$> initialNodeCount,
            ("instanceGroupUrls" Core..=)
              Core.<$> instanceGroupUrls,
            ("ipAllocationPolicy" Core..=)
              Core.<$> ipAllocationPolicy,
            ("labelFingerprint" Core..=)
              Core.<$> labelFingerprint,
            ("legacyAbac" Core..=) Core.<$> legacyAbac,
            ("location" Core..=) Core.<$> location,
            ("locations" Core..=) Core.<$> locations,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("loggingService" Core..=) Core.<$> loggingService,
            ("maintenancePolicy" Core..=)
              Core.<$> maintenancePolicy,
            ("masterAuth" Core..=) Core.<$> masterAuth,
            ("masterAuthorizedNetworksConfig" Core..=)
              Core.<$> masterAuthorizedNetworksConfig,
            ("meshCertificates" Core..=)
              Core.<$> meshCertificates,
            ("monitoringConfig" Core..=)
              Core.<$> monitoringConfig,
            ("monitoringService" Core..=)
              Core.<$> monitoringService,
            ("name" Core..=) Core.<$> name,
            ("network" Core..=) Core.<$> network,
            ("networkConfig" Core..=) Core.<$> networkConfig,
            ("networkPolicy" Core..=) Core.<$> networkPolicy,
            ("nodeConfig" Core..=) Core.<$> nodeConfig,
            ("nodeIpv4CidrSize" Core..=)
              Core.<$> nodeIpv4CidrSize,
            ("nodePoolAutoConfig" Core..=)
              Core.<$> nodePoolAutoConfig,
            ("nodePoolDefaults" Core..=)
              Core.<$> nodePoolDefaults,
            ("nodePools" Core..=) Core.<$> nodePools,
            ("notificationConfig" Core..=)
              Core.<$> notificationConfig,
            ("privateClusterConfig" Core..=)
              Core.<$> privateClusterConfig,
            ("releaseChannel" Core..=) Core.<$> releaseChannel,
            ("resourceLabels" Core..=) Core.<$> resourceLabels,
            ("resourceUsageExportConfig" Core..=)
              Core.<$> resourceUsageExportConfig,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("servicesIpv4Cidr" Core..=)
              Core.<$> servicesIpv4Cidr,
            ("shieldedNodes" Core..=) Core.<$> shieldedNodes,
            ("status" Core..=) Core.<$> status,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("subnetwork" Core..=) Core.<$> subnetwork,
            ("tpuIpv4CidrBlock" Core..=)
              Core.<$> tpuIpv4CidrBlock,
            ("verticalPodAutoscaling" Core..=)
              Core.<$> verticalPodAutoscaling,
            ("workloadIdentityConfig" Core..=)
              Core.<$> workloadIdentityConfig,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
--
-- /See:/ 'newCluster_ResourceLabels' smart constructor.
newtype Cluster_ResourceLabels = Cluster_ResourceLabels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
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
      ( \o ->
          Cluster_ResourceLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Cluster_ResourceLabels where
  toJSON Cluster_ResourceLabels {..} =
    Core.toJSON additional

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
            ("autoscalingProfile" Core..=)
              Core.<$> autoscalingProfile,
            ("enableNodeAutoprovisioning" Core..=)
              Core.<$> enableNodeAutoprovisioning,
            ("resourceLimits" Core..=) Core.<$> resourceLimits
          ]
      )

-- | ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.
--
-- /See:/ 'newClusterUpdate' smart constructor.
data ClusterUpdate = ClusterUpdate
  { -- | Configurations for the various addons available to run in the cluster.
    desiredAddonsConfig :: (Core.Maybe AddonsConfig),
    -- | The desired authenticator groups config for the cluster.
    desiredAuthenticatorGroupsConfig :: (Core.Maybe AuthenticatorGroupsConfig),
    -- | The desired configuration options for the Binary Authorization feature.
    desiredBinaryAuthorization :: (Core.Maybe BinaryAuthorization),
    -- | Cluster-level autoscaling configuration.
    desiredClusterAutoscaling :: (Core.Maybe ClusterAutoscaling),
    -- | Configuration of etcd encryption.
    desiredDatabaseEncryption :: (Core.Maybe DatabaseEncryption),
    -- | The desired datapath provider for the cluster.
    desiredDatapathProvider :: (Core.Maybe ClusterUpdate_DesiredDatapathProvider),
    -- | The desired status of whether to disable default sNAT for this cluster.
    desiredDefaultSnatStatus :: (Core.Maybe DefaultSnatStatus),
    -- | DNSConfig contains clusterDNS config for this cluster.
    desiredDnsConfig :: (Core.Maybe DNSConfig),
    -- | The desired GCFS config for the cluster
    desiredGcfsConfig :: (Core.Maybe GcfsConfig),
    -- | The desired Identity Service component configuration.
    desiredIdentityServiceConfig :: (Core.Maybe IdentityServiceConfig),
    -- | The desired image type for the node pool. NOTE: Set the \"desired/node/pool\" field as well.
    desiredImageType :: (Core.Maybe Core.Text),
    -- | The desired config of Intra-node visibility.
    desiredIntraNodeVisibilityConfig :: (Core.Maybe IntraNodeVisibilityConfig),
    -- | The desired L4 Internal Load Balancer Subsetting configuration.
    desiredL4ilbSubsettingConfig :: (Core.Maybe ILBSubsettingConfig),
    -- | The desired list of Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zones> in which the cluster\'s nodes should be located. This list must always include the cluster\'s primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and\/or removed.
    desiredLocations :: (Core.Maybe [Core.Text]),
    -- | The desired logging configuration.
    desiredLoggingConfig :: (Core.Maybe LoggingConfig),
    -- | The logging service the cluster should use to write logs. Currently available options: * @logging.googleapis.com\/kubernetes@ - The Cloud Logging service with a Kubernetes-native resource model * @logging.googleapis.com@ - The legacy Cloud Logging service (no longer available as of GKE 1.15). * @none@ - no logs will be exported from the cluster. If left as an empty string,@logging.googleapis.com\/kubernetes@ will be used for GKE 1.14+ or @logging.googleapis.com@ for earlier versions.
    desiredLoggingService :: (Core.Maybe Core.Text),
    -- | The desired configuration options for master authorized networks feature.
    desiredMasterAuthorizedNetworksConfig :: (Core.Maybe MasterAuthorizedNetworksConfig),
    -- | The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the default Kubernetes version
    desiredMasterVersion :: (Core.Maybe Core.Text),
    -- | Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
    desiredMeshCertificates :: (Core.Maybe MeshCertificates),
    -- | The desired monitoring configuration.
    desiredMonitoringConfig :: (Core.Maybe MonitoringConfig),
    -- | The monitoring service the cluster should use to write metrics. Currently available options: * \"monitoring.googleapis.com\/kubernetes\" - The Cloud Monitoring service with a Kubernetes-native resource model * @monitoring.googleapis.com@ - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * @none@ - No metrics will be exported from the cluster. If left as an empty string,@monitoring.googleapis.com\/kubernetes@ will be used for GKE 1.14+ or @monitoring.googleapis.com@ for earlier versions.
    desiredMonitoringService :: (Core.Maybe Core.Text),
    -- | The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
    desiredNodePoolAutoConfigNetworkTags :: (Core.Maybe NetworkTags),
    -- | Autoscaler configuration for the node pool specified in desired/node/pool/id. If there is only one pool in the cluster and desired/node/pool/id is not provided then the change applies to that single node pool.
    desiredNodePoolAutoscaling :: (Core.Maybe NodePoolAutoscaling),
    -- | The node pool to be upgraded. This field is mandatory if \"desired/node/version\", \"desired/image/family\" or \"desired/node/pool_autoscaling\" is specified and there is more than one node pool on the cluster.
    desiredNodePoolId :: (Core.Maybe Core.Text),
    -- | The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the Kubernetes master version
    desiredNodeVersion :: (Core.Maybe Core.Text),
    -- | The desired notification configuration.
    desiredNotificationConfig :: (Core.Maybe NotificationConfig),
    -- | The desired private cluster configuration.
    desiredPrivateClusterConfig :: (Core.Maybe PrivateClusterConfig),
    -- | The desired state of IPv6 connectivity to Google Services.
    desiredPrivateIpv6GoogleAccess :: (Core.Maybe ClusterUpdate_DesiredPrivateIpv6GoogleAccess),
    -- | The desired release channel configuration.
    desiredReleaseChannel :: (Core.Maybe ReleaseChannel),
    -- | The desired configuration for exporting resource usage.
    desiredResourceUsageExportConfig :: (Core.Maybe ResourceUsageExportConfig),
    -- | ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
    desiredServiceExternalIpsConfig :: (Core.Maybe ServiceExternalIPsConfig),
    -- | Configuration for Shielded Nodes.
    desiredShieldedNodes :: (Core.Maybe ShieldedNodes),
    -- | Cluster-level Vertical Pod Autoscaling configuration.
    desiredVerticalPodAutoscaling :: (Core.Maybe VerticalPodAutoscaling),
    -- | Configuration for Workload Identity.
    desiredWorkloadIdentityConfig :: (Core.Maybe WorkloadIdentityConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterUpdate' with the minimum fields required to make a request.
newClusterUpdate ::
  ClusterUpdate
newClusterUpdate =
  ClusterUpdate
    { desiredAddonsConfig = Core.Nothing,
      desiredAuthenticatorGroupsConfig = Core.Nothing,
      desiredBinaryAuthorization = Core.Nothing,
      desiredClusterAutoscaling = Core.Nothing,
      desiredDatabaseEncryption = Core.Nothing,
      desiredDatapathProvider = Core.Nothing,
      desiredDefaultSnatStatus = Core.Nothing,
      desiredDnsConfig = Core.Nothing,
      desiredGcfsConfig = Core.Nothing,
      desiredIdentityServiceConfig = Core.Nothing,
      desiredImageType = Core.Nothing,
      desiredIntraNodeVisibilityConfig = Core.Nothing,
      desiredL4ilbSubsettingConfig = Core.Nothing,
      desiredLocations = Core.Nothing,
      desiredLoggingConfig = Core.Nothing,
      desiredLoggingService = Core.Nothing,
      desiredMasterAuthorizedNetworksConfig = Core.Nothing,
      desiredMasterVersion = Core.Nothing,
      desiredMeshCertificates = Core.Nothing,
      desiredMonitoringConfig = Core.Nothing,
      desiredMonitoringService = Core.Nothing,
      desiredNodePoolAutoConfigNetworkTags = Core.Nothing,
      desiredNodePoolAutoscaling = Core.Nothing,
      desiredNodePoolId = Core.Nothing,
      desiredNodeVersion = Core.Nothing,
      desiredNotificationConfig = Core.Nothing,
      desiredPrivateClusterConfig = Core.Nothing,
      desiredPrivateIpv6GoogleAccess = Core.Nothing,
      desiredReleaseChannel = Core.Nothing,
      desiredResourceUsageExportConfig = Core.Nothing,
      desiredServiceExternalIpsConfig = Core.Nothing,
      desiredShieldedNodes = Core.Nothing,
      desiredVerticalPodAutoscaling = Core.Nothing,
      desiredWorkloadIdentityConfig = Core.Nothing
    }

instance Core.FromJSON ClusterUpdate where
  parseJSON =
    Core.withObject
      "ClusterUpdate"
      ( \o ->
          ClusterUpdate
            Core.<$> (o Core..:? "desiredAddonsConfig")
            Core.<*> (o Core..:? "desiredAuthenticatorGroupsConfig")
            Core.<*> (o Core..:? "desiredBinaryAuthorization")
            Core.<*> (o Core..:? "desiredClusterAutoscaling")
            Core.<*> (o Core..:? "desiredDatabaseEncryption")
            Core.<*> (o Core..:? "desiredDatapathProvider")
            Core.<*> (o Core..:? "desiredDefaultSnatStatus")
            Core.<*> (o Core..:? "desiredDnsConfig")
            Core.<*> (o Core..:? "desiredGcfsConfig")
            Core.<*> (o Core..:? "desiredIdentityServiceConfig")
            Core.<*> (o Core..:? "desiredImageType")
            Core.<*> (o Core..:? "desiredIntraNodeVisibilityConfig")
            Core.<*> (o Core..:? "desiredL4ilbSubsettingConfig")
            Core.<*> (o Core..:? "desiredLocations")
            Core.<*> (o Core..:? "desiredLoggingConfig")
            Core.<*> (o Core..:? "desiredLoggingService")
            Core.<*> (o Core..:? "desiredMasterAuthorizedNetworksConfig")
            Core.<*> (o Core..:? "desiredMasterVersion")
            Core.<*> (o Core..:? "desiredMeshCertificates")
            Core.<*> (o Core..:? "desiredMonitoringConfig")
            Core.<*> (o Core..:? "desiredMonitoringService")
            Core.<*> (o Core..:? "desiredNodePoolAutoConfigNetworkTags")
            Core.<*> (o Core..:? "desiredNodePoolAutoscaling")
            Core.<*> (o Core..:? "desiredNodePoolId")
            Core.<*> (o Core..:? "desiredNodeVersion")
            Core.<*> (o Core..:? "desiredNotificationConfig")
            Core.<*> (o Core..:? "desiredPrivateClusterConfig")
            Core.<*> (o Core..:? "desiredPrivateIpv6GoogleAccess")
            Core.<*> (o Core..:? "desiredReleaseChannel")
            Core.<*> (o Core..:? "desiredResourceUsageExportConfig")
            Core.<*> (o Core..:? "desiredServiceExternalIpsConfig")
            Core.<*> (o Core..:? "desiredShieldedNodes")
            Core.<*> (o Core..:? "desiredVerticalPodAutoscaling")
            Core.<*> (o Core..:? "desiredWorkloadIdentityConfig")
      )

instance Core.ToJSON ClusterUpdate where
  toJSON ClusterUpdate {..} =
    Core.object
      ( Core.catMaybes
          [ ("desiredAddonsConfig" Core..=)
              Core.<$> desiredAddonsConfig,
            ("desiredAuthenticatorGroupsConfig" Core..=)
              Core.<$> desiredAuthenticatorGroupsConfig,
            ("desiredBinaryAuthorization" Core..=)
              Core.<$> desiredBinaryAuthorization,
            ("desiredClusterAutoscaling" Core..=)
              Core.<$> desiredClusterAutoscaling,
            ("desiredDatabaseEncryption" Core..=)
              Core.<$> desiredDatabaseEncryption,
            ("desiredDatapathProvider" Core..=)
              Core.<$> desiredDatapathProvider,
            ("desiredDefaultSnatStatus" Core..=)
              Core.<$> desiredDefaultSnatStatus,
            ("desiredDnsConfig" Core..=)
              Core.<$> desiredDnsConfig,
            ("desiredGcfsConfig" Core..=)
              Core.<$> desiredGcfsConfig,
            ("desiredIdentityServiceConfig" Core..=)
              Core.<$> desiredIdentityServiceConfig,
            ("desiredImageType" Core..=)
              Core.<$> desiredImageType,
            ("desiredIntraNodeVisibilityConfig" Core..=)
              Core.<$> desiredIntraNodeVisibilityConfig,
            ("desiredL4ilbSubsettingConfig" Core..=)
              Core.<$> desiredL4ilbSubsettingConfig,
            ("desiredLocations" Core..=)
              Core.<$> desiredLocations,
            ("desiredLoggingConfig" Core..=)
              Core.<$> desiredLoggingConfig,
            ("desiredLoggingService" Core..=)
              Core.<$> desiredLoggingService,
            ("desiredMasterAuthorizedNetworksConfig" Core..=)
              Core.<$> desiredMasterAuthorizedNetworksConfig,
            ("desiredMasterVersion" Core..=)
              Core.<$> desiredMasterVersion,
            ("desiredMeshCertificates" Core..=)
              Core.<$> desiredMeshCertificates,
            ("desiredMonitoringConfig" Core..=)
              Core.<$> desiredMonitoringConfig,
            ("desiredMonitoringService" Core..=)
              Core.<$> desiredMonitoringService,
            ("desiredNodePoolAutoConfigNetworkTags" Core..=)
              Core.<$> desiredNodePoolAutoConfigNetworkTags,
            ("desiredNodePoolAutoscaling" Core..=)
              Core.<$> desiredNodePoolAutoscaling,
            ("desiredNodePoolId" Core..=)
              Core.<$> desiredNodePoolId,
            ("desiredNodeVersion" Core..=)
              Core.<$> desiredNodeVersion,
            ("desiredNotificationConfig" Core..=)
              Core.<$> desiredNotificationConfig,
            ("desiredPrivateClusterConfig" Core..=)
              Core.<$> desiredPrivateClusterConfig,
            ("desiredPrivateIpv6GoogleAccess" Core..=)
              Core.<$> desiredPrivateIpv6GoogleAccess,
            ("desiredReleaseChannel" Core..=)
              Core.<$> desiredReleaseChannel,
            ("desiredResourceUsageExportConfig" Core..=)
              Core.<$> desiredResourceUsageExportConfig,
            ("desiredServiceExternalIpsConfig" Core..=)
              Core.<$> desiredServiceExternalIpsConfig,
            ("desiredShieldedNodes" Core..=)
              Core.<$> desiredShieldedNodes,
            ("desiredVerticalPodAutoscaling" Core..=)
              Core.<$> desiredVerticalPodAutoscaling,
            ("desiredWorkloadIdentityConfig" Core..=)
              Core.<$> desiredWorkloadIdentityConfig
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
    -- | Deprecated. The Google Developers Console <https://developers.google.com/console/help/new/#projectnumber project ID or project number>. This field has been deprecated and replaced by the name field.
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
      ( \o ->
          ConfidentialNodes Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON ConfidentialNodes where
  toJSON ConfidentialNodes {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

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
newConfigConnectorConfig = ConfigConnectorConfig {enabled = Core.Nothing}

instance Core.FromJSON ConfigConnectorConfig where
  parseJSON =
    Core.withObject
      "ConfigConnectorConfig"
      ( \o ->
          ConfigConnectorConfig
            Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON ConfigConnectorConfig where
  toJSON ConfigConnectorConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

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
      ( \o ->
          ConsumptionMeteringConfig
            Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON ConsumptionMeteringConfig where
  toJSON ConsumptionMeteringConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

-- | CreateClusterRequest creates a cluster.
--
-- /See:/ 'newCreateClusterRequest' smart constructor.
data CreateClusterRequest = CreateClusterRequest
  { -- | Required. A <https://cloud.google.com/container-engine/reference/rest/v1/projects.locations.clusters cluster resource>
    cluster :: (Core.Maybe Cluster),
    -- | The parent (project and location) where the cluster will be created. Specified in the format @projects\/*\/locations\/*@.
    parent :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the parent field.
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
    -- | Deprecated. The Google Developers Console <https://developers.google.com/console/help/new/#projectnumber project ID or project number>. This field has been deprecated and replaced by the parent field.
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
  { -- | cluster_dns indicates which in-cluster DNS provider should be used.
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
    { clusterDns = Core.Nothing,
      clusterDnsDomain = Core.Nothing,
      clusterDnsScope = Core.Nothing
    }

instance Core.FromJSON DNSConfig where
  parseJSON =
    Core.withObject
      "DNSConfig"
      ( \o ->
          DNSConfig
            Core.<$> (o Core..:? "clusterDns")
            Core.<*> (o Core..:? "clusterDnsDomain")
            Core.<*> (o Core..:? "clusterDnsScope")
      )

instance Core.ToJSON DNSConfig where
  toJSON DNSConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterDns" Core..=) Core.<$> clusterDns,
            ("clusterDnsDomain" Core..=)
              Core.<$> clusterDnsDomain,
            ("clusterDnsScope" Core..=)
              Core.<$> clusterDnsScope
          ]
      )

-- | Time window specified for daily maintenance operations.
--
-- /See:/ 'newDailyMaintenanceWindow' smart constructor.
data DailyMaintenanceWindow = DailyMaintenanceWindow
  { -- | [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario. Duration will be in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> format \"PTnHnMnS\".
    duration :: (Core.Maybe Core.Text),
    -- | Time within the maintenance window to start the maintenance operations. Time format should be in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> format \"HH:MM\", where HH : [00-23] and MM : [00-59] GMT.
    startTime :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DailyMaintenanceWindow' with the minimum fields required to make a request.
newDailyMaintenanceWindow ::
  DailyMaintenanceWindow
newDailyMaintenanceWindow =
  DailyMaintenanceWindow {duration = Core.Nothing, startTime = Core.Nothing}

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
  { -- | Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects\/my-project\/locations\/global\/keyRings\/my-ring\/cryptoKeys\/my-key
    keyName :: (Core.Maybe Core.Text),
    -- | Denotes the state of etcd encryption.
    state :: (Core.Maybe DatabaseEncryption_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseEncryption' with the minimum fields required to make a request.
newDatabaseEncryption ::
  DatabaseEncryption
newDatabaseEncryption =
  DatabaseEncryption {keyName = Core.Nothing, state = Core.Nothing}

instance Core.FromJSON DatabaseEncryption where
  parseJSON =
    Core.withObject
      "DatabaseEncryption"
      ( \o ->
          DatabaseEncryption
            Core.<$> (o Core..:? "keyName") Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON DatabaseEncryption where
  toJSON DatabaseEncryption {..} =
    Core.object
      ( Core.catMaybes
          [ ("keyName" Core..=) Core.<$> keyName,
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
      ( \o ->
          DefaultSnatStatus Core.<$> (o Core..:? "disabled")
      )

instance Core.ToJSON DefaultSnatStatus where
  toJSON DefaultSnatStatus {..} =
    Core.object
      ( Core.catMaybes
          [("disabled" Core..=) Core.<$> disabled]
      )

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
      ( \o ->
          DnsCacheConfig Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON DnsCacheConfig where
  toJSON DnsCacheConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

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
      ( Core.catMaybes
          [("eventType" Core..=) Core.<$> eventType]
      )

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

instance
  Core.FromJSON
    GcePersistentDiskCsiDriverConfig
  where
  parseJSON =
    Core.withObject
      "GcePersistentDiskCsiDriverConfig"
      ( \o ->
          GcePersistentDiskCsiDriverConfig
            Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON GcePersistentDiskCsiDriverConfig where
  toJSON GcePersistentDiskCsiDriverConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

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
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

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
          GcpFilestoreCsiDriverConfig
            Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON GcpFilestoreCsiDriverConfig where
  toJSON GcpFilestoreCsiDriverConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

-- | GetJSONWebKeysResponse is a valid JSON Web Key Set as specififed in rfc 7517
--
-- /See:/ 'newGetJSONWebKeysResponse' smart constructor.
data GetJSONWebKeysResponse = GetJSONWebKeysResponse
  { -- | OnePlatform automatically extracts this field and uses it to set the HTTP Cache-Control header.
    cacheHeader :: (Core.Maybe HttpCacheControlResponseHeader),
    -- | The public component of the keys used by the cluster to sign token requests.
    keys :: (Core.Maybe [Jwk])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetJSONWebKeysResponse' with the minimum fields required to make a request.
newGetJSONWebKeysResponse ::
  GetJSONWebKeysResponse
newGetJSONWebKeysResponse =
  GetJSONWebKeysResponse {cacheHeader = Core.Nothing, keys = Core.Nothing}

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
  { -- | OnePlatform automatically extracts this field and uses it to set the HTTP Cache-Control header.
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
            ("claims_supported" Core..=)
              Core.<$> claimsSupported,
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
newHorizontalPodAutoscaling = HorizontalPodAutoscaling {disabled = Core.Nothing}

instance Core.FromJSON HorizontalPodAutoscaling where
  parseJSON =
    Core.withObject
      "HorizontalPodAutoscaling"
      ( \o ->
          HorizontalPodAutoscaling
            Core.<$> (o Core..:? "disabled")
      )

instance Core.ToJSON HorizontalPodAutoscaling where
  toJSON HorizontalPodAutoscaling {..} =
    Core.object
      ( Core.catMaybes
          [("disabled" Core..=) Core.<$> disabled]
      )

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
      ( \o ->
          HttpLoadBalancing Core.<$> (o Core..:? "disabled")
      )

instance Core.ToJSON HttpLoadBalancing where
  toJSON HttpLoadBalancing {..} =
    Core.object
      ( Core.catMaybes
          [("disabled" Core..=) Core.<$> disabled]
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
newILBSubsettingConfig = ILBSubsettingConfig {enabled = Core.Nothing}

instance Core.FromJSON ILBSubsettingConfig where
  parseJSON =
    Core.withObject
      "ILBSubsettingConfig"
      ( \o ->
          ILBSubsettingConfig Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON ILBSubsettingConfig where
  toJSON ILBSubsettingConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

-- | Configuration for controlling how IPs are allocated in the cluster.
--
-- /See:/ 'newIPAllocationPolicy' smart constructor.
data IPAllocationPolicy = IPAllocationPolicy
  { -- | This field is deprecated, use cluster/ipv4/cidr_block.
    clusterIpv4Cidr :: (Core.Maybe Core.Text),
    -- | The IP address range for the cluster pod IPs. If this field is set, then @cluster.cluster_ipv4_cidr@ must be left blank. This field is only applicable when @use_ip_aliases@ is true. Set to blank to have a range chosen with the default size. Set to \/netmask (e.g. @\/14@) to have a range chosen with a specific netmask. Set to a <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) from the RFC-1918 private networks (e.g. @10.0.0.0\/8@, @172.16.0.0\/12@, @192.168.0.0\/16@) to pick a specific range to use.
    clusterIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use/ip/aliases is true and create_subnetwork is false.
    clusterSecondaryRangeName :: (Core.Maybe Core.Text),
    -- | Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when @use_ip_aliases@ is true.
    createSubnetwork :: (Core.Maybe Core.Bool),
    -- | This field is deprecated, use node/ipv4/cidr_block.
    nodeIpv4Cidr :: (Core.Maybe Core.Text),
    -- | The IP address range of the instance IPs in this cluster. This is applicable only if @create_subnetwork@ is true. Set to blank to have a range chosen with the default size. Set to \/netmask (e.g. @\/14@) to have a range chosen with a specific netmask. Set to a <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) from the RFC-1918 private networks (e.g. @10.0.0.0\/8@, @172.16.0.0\/12@, @192.168.0.0\/16@) to pick a specific range to use.
    nodeIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | This field is deprecated, use services/ipv4/cidr_block.
    servicesIpv4Cidr :: (Core.Maybe Core.Text),
    -- | The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when @use_ip_aliases@ is true. Set to blank to have a range chosen with the default size. Set to \/netmask (e.g. @\/14@) to have a range chosen with a specific netmask. Set to a <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) from the RFC-1918 private networks (e.g. @10.0.0.0\/8@, @172.16.0.0\/12@, @192.168.0.0\/16@) to pick a specific range to use.
    servicesIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use/ip/aliases is true and create_subnetwork is false.
    servicesSecondaryRangeName :: (Core.Maybe Core.Text),
    -- | A custom subnetwork name to be used if @create_subnetwork@ is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.
    subnetworkName :: (Core.Maybe Core.Text),
    -- | The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when @use_ip_aliases@ is true. If unspecified, the range will use the default size. Set to \/netmask (e.g. @\/14@) to have a range chosen with a specific netmask. Set to a <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) from the RFC-1918 private networks (e.g. @10.0.0.0\/8@, @172.16.0.0\/12@, @192.168.0.0\/16@) to pick a specific range to use.
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
    { clusterIpv4Cidr = Core.Nothing,
      clusterIpv4CidrBlock = Core.Nothing,
      clusterSecondaryRangeName = Core.Nothing,
      createSubnetwork = Core.Nothing,
      nodeIpv4Cidr = Core.Nothing,
      nodeIpv4CidrBlock = Core.Nothing,
      servicesIpv4Cidr = Core.Nothing,
      servicesIpv4CidrBlock = Core.Nothing,
      servicesSecondaryRangeName = Core.Nothing,
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
            Core.<$> (o Core..:? "clusterIpv4Cidr")
            Core.<*> (o Core..:? "clusterIpv4CidrBlock")
            Core.<*> (o Core..:? "clusterSecondaryRangeName")
            Core.<*> (o Core..:? "createSubnetwork")
            Core.<*> (o Core..:? "nodeIpv4Cidr")
            Core.<*> (o Core..:? "nodeIpv4CidrBlock")
            Core.<*> (o Core..:? "servicesIpv4Cidr")
            Core.<*> (o Core..:? "servicesIpv4CidrBlock")
            Core.<*> (o Core..:? "servicesSecondaryRangeName")
            Core.<*> (o Core..:? "subnetworkName")
            Core.<*> (o Core..:? "tpuIpv4CidrBlock")
            Core.<*> (o Core..:? "useIpAliases")
            Core.<*> (o Core..:? "useRoutes")
      )

instance Core.ToJSON IPAllocationPolicy where
  toJSON IPAllocationPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterIpv4Cidr" Core..=)
              Core.<$> clusterIpv4Cidr,
            ("clusterIpv4CidrBlock" Core..=)
              Core.<$> clusterIpv4CidrBlock,
            ("clusterSecondaryRangeName" Core..=)
              Core.<$> clusterSecondaryRangeName,
            ("createSubnetwork" Core..=)
              Core.<$> createSubnetwork,
            ("nodeIpv4Cidr" Core..=) Core.<$> nodeIpv4Cidr,
            ("nodeIpv4CidrBlock" Core..=)
              Core.<$> nodeIpv4CidrBlock,
            ("servicesIpv4Cidr" Core..=)
              Core.<$> servicesIpv4Cidr,
            ("servicesIpv4CidrBlock" Core..=)
              Core.<$> servicesIpv4CidrBlock,
            ("servicesSecondaryRangeName" Core..=)
              Core.<$> servicesSecondaryRangeName,
            ("subnetworkName" Core..=) Core.<$> subnetworkName,
            ("tpuIpv4CidrBlock" Core..=)
              Core.<$> tpuIpv4CidrBlock,
            ("useIpAliases" Core..=) Core.<$> useIpAliases,
            ("useRoutes" Core..=) Core.<$> useRoutes
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
newIdentityServiceConfig = IdentityServiceConfig {enabled = Core.Nothing}

instance Core.FromJSON IdentityServiceConfig where
  parseJSON =
    Core.withObject
      "IdentityServiceConfig"
      ( \o ->
          IdentityServiceConfig
            Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON IdentityServiceConfig where
  toJSON IdentityServiceConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

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
      ( \o ->
          IntraNodeVisibilityConfig
            Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON IntraNodeVisibilityConfig where
  toJSON IntraNodeVisibilityConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

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
newKubernetesDashboard = KubernetesDashboard {disabled = Core.Nothing}

instance Core.FromJSON KubernetesDashboard where
  parseJSON =
    Core.withObject
      "KubernetesDashboard"
      ( \o ->
          KubernetesDashboard Core.<$> (o Core..:? "disabled")
      )

instance Core.ToJSON KubernetesDashboard where
  toJSON KubernetesDashboard {..} =
    Core.object
      ( Core.catMaybes
          [("disabled" Core..=) Core.<$> disabled]
      )

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
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

-- | Parameters that can be configured on Linux nodes.
--
-- /See:/ 'newLinuxNodeConfig' smart constructor.
newtype LinuxNodeConfig = LinuxNodeConfig
  { -- | The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.netdev/max/backlog net.core.rmem/max net.core.wmem/default net.core.wmem/max net.core.optmem/max net.core.somaxconn net.ipv4.tcp/rmem net.ipv4.tcp/wmem net.ipv4.tcp/tw/reuse
    sysctls :: (Core.Maybe LinuxNodeConfig_Sysctls)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LinuxNodeConfig' with the minimum fields required to make a request.
newLinuxNodeConfig ::
  LinuxNodeConfig
newLinuxNodeConfig = LinuxNodeConfig {sysctls = Core.Nothing}

instance Core.FromJSON LinuxNodeConfig where
  parseJSON =
    Core.withObject
      "LinuxNodeConfig"
      ( \o ->
          LinuxNodeConfig Core.<$> (o Core..:? "sysctls")
      )

instance Core.ToJSON LinuxNodeConfig where
  toJSON LinuxNodeConfig {..} =
    Core.object
      ( Core.catMaybes
          [("sysctls" Core..=) Core.<$> sysctls]
      )

-- | The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.netdev/max/backlog net.core.rmem/max net.core.wmem/default net.core.wmem/max net.core.optmem/max net.core.somaxconn net.ipv4.tcp/rmem net.ipv4.tcp/wmem net.ipv4.tcp/tw/reuse
--
-- /See:/ 'newLinuxNodeConfig_Sysctls' smart constructor.
newtype LinuxNodeConfig_Sysctls = LinuxNodeConfig_Sysctls
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
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
      ( \o ->
          LinuxNodeConfig_Sysctls
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LinuxNodeConfig_Sysctls where
  toJSON LinuxNodeConfig_Sysctls {..} =
    Core.toJSON additional

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
  ListClustersResponse {clusters = Core.Nothing, missingZones = Core.Nothing}

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
newListNodePoolsResponse = ListNodePoolsResponse {nodePools = Core.Nothing}

instance Core.FromJSON ListNodePoolsResponse where
  parseJSON =
    Core.withObject
      "ListNodePoolsResponse"
      ( \o ->
          ListNodePoolsResponse
            Core.<$> (o Core..:? "nodePools")
      )

instance Core.ToJSON ListNodePoolsResponse where
  toJSON ListNodePoolsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("nodePools" Core..=) Core.<$> nodePools]
      )

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
          LoggingComponentConfig
            Core.<$> (o Core..:? "enableComponents")
      )

instance Core.ToJSON LoggingComponentConfig where
  toJSON LoggingComponentConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableComponents" Core..=)
              Core.<$> enableComponents
          ]
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
      ( \o ->
          LoggingConfig
            Core.<$> (o Core..:? "componentConfig")
      )

instance Core.ToJSON LoggingConfig where
  toJSON LoggingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("componentConfig" Core..=)
              Core.<$> componentConfig
          ]
      )

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
      ( \o ->
          MaintenanceExclusionOptions
            Core.<$> (o Core..:? "scope")
      )

instance Core.ToJSON MaintenanceExclusionOptions where
  toJSON MaintenanceExclusionOptions {..} =
    Core.object
      (Core.catMaybes [("scope" Core..=) Core.<$> scope])

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
  MaintenancePolicy {resourceVersion = Core.Nothing, window = Core.Nothing}

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
          [ ("resourceVersion" Core..=)
              Core.<$> resourceVersion,
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
            ("maintenanceExclusions" Core..=)
              Core.<$> maintenanceExclusions,
            ("recurringWindow" Core..=)
              Core.<$> recurringWindow
          ]
      )

-- | Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
--
-- /See:/ 'newMaintenanceWindow_MaintenanceExclusions' smart constructor.
newtype MaintenanceWindow_MaintenanceExclusions = MaintenanceWindow_MaintenanceExclusions
  { -- |
    additional :: (Core.HashMap Core.Text TimeWindow)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceWindow_MaintenanceExclusions' with the minimum fields required to make a request.
newMaintenanceWindow_MaintenanceExclusions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text TimeWindow ->
  MaintenanceWindow_MaintenanceExclusions
newMaintenanceWindow_MaintenanceExclusions additional =
  MaintenanceWindow_MaintenanceExclusions {additional = additional}

instance
  Core.FromJSON
    MaintenanceWindow_MaintenanceExclusions
  where
  parseJSON =
    Core.withObject
      "MaintenanceWindow_MaintenanceExclusions"
      ( \o ->
          MaintenanceWindow_MaintenanceExclusions
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    MaintenanceWindow_MaintenanceExclusions
  where
  toJSON MaintenanceWindow_MaintenanceExclusions {..} =
    Core.toJSON additional

-- | The authentication information for accessing the master endpoint. Authentication can be done using HTTP basic auth or using client certificates.
--
-- /See:/ 'newMasterAuth' smart constructor.
data MasterAuth = MasterAuth
  { -- | [Output only] Base64-encoded public certificate used by clients to authenticate to the cluster endpoint.
    clientCertificate :: (Core.Maybe Core.Text),
    -- | Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.
    clientCertificateConfig :: (Core.Maybe ClientCertificateConfig),
    -- | [Output only] Base64-encoded private key used by clients to authenticate to the cluster endpoint.
    clientKey :: (Core.Maybe Core.Text),
    -- | [Output only] Base64-encoded public certificate that is the root of trust for the cluster.
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
          [ ("clientCertificate" Core..=)
              Core.<$> clientCertificate,
            ("clientCertificateConfig" Core..=)
              Core.<$> clientCertificateConfig,
            ("clientKey" Core..=) Core.<$> clientKey,
            ("clusterCaCertificate" Core..=)
              Core.<$> clusterCaCertificate,
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
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MasterAuthorizedNetworksConfig' with the minimum fields required to make a request.
newMasterAuthorizedNetworksConfig ::
  MasterAuthorizedNetworksConfig
newMasterAuthorizedNetworksConfig =
  MasterAuthorizedNetworksConfig
    { cidrBlocks = Core.Nothing,
      enabled = Core.Nothing
    }

instance Core.FromJSON MasterAuthorizedNetworksConfig where
  parseJSON =
    Core.withObject
      "MasterAuthorizedNetworksConfig"
      ( \o ->
          MasterAuthorizedNetworksConfig
            Core.<$> (o Core..:? "cidrBlocks")
            Core.<*> (o Core..:? "enabled")
      )

instance Core.ToJSON MasterAuthorizedNetworksConfig where
  toJSON MasterAuthorizedNetworksConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("cidrBlocks" Core..=) Core.<$> cidrBlocks,
            ("enabled" Core..=) Core.<$> enabled
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
newMaxPodsConstraint = MaxPodsConstraint {maxPodsPerNode = Core.Nothing}

instance Core.FromJSON MaxPodsConstraint where
  parseJSON =
    Core.withObject
      "MaxPodsConstraint"
      ( \o ->
          MaxPodsConstraint
            Core.<$> ( o Core..:? "maxPodsPerNode"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON MaxPodsConstraint where
  toJSON MaxPodsConstraint {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxPodsPerNode" Core..=) Core.. Core.AsText
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
newMeshCertificates = MeshCertificates {enableCertificates = Core.Nothing}

instance Core.FromJSON MeshCertificates where
  parseJSON =
    Core.withObject
      "MeshCertificates"
      ( \o ->
          MeshCertificates
            Core.<$> (o Core..:? "enableCertificates")
      )

instance Core.ToJSON MeshCertificates where
  toJSON MeshCertificates {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableCertificates" Core..=)
              Core.<$> enableCertificates
          ]
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
            Core.<*> ( o Core..:? "intValue"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "stringValue")
      )

instance Core.ToJSON Metric where
  toJSON Metric {..} =
    Core.object
      ( Core.catMaybes
          [ ("doubleValue" Core..=) Core.<$> doubleValue,
            ("intValue" Core..=) Core.. Core.AsText
              Core.<$> intValue,
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
          MonitoringComponentConfig
            Core.<$> (o Core..:? "enableComponents")
      )

instance Core.ToJSON MonitoringComponentConfig where
  toJSON MonitoringComponentConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableComponents" Core..=)
              Core.<$> enableComponents
          ]
      )

-- | MonitoringConfig is cluster monitoring configuration.
--
-- /See:/ 'newMonitoringConfig' smart constructor.
newtype MonitoringConfig = MonitoringConfig
  { -- | Monitoring components configuration
    componentConfig :: (Core.Maybe MonitoringComponentConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringConfig' with the minimum fields required to make a request.
newMonitoringConfig ::
  MonitoringConfig
newMonitoringConfig = MonitoringConfig {componentConfig = Core.Nothing}

instance Core.FromJSON MonitoringConfig where
  parseJSON =
    Core.withObject
      "MonitoringConfig"
      ( \o ->
          MonitoringConfig
            Core.<$> (o Core..:? "componentConfig")
      )

instance Core.ToJSON MonitoringConfig where
  toJSON MonitoringConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("componentConfig" Core..=)
              Core.<$> componentConfig
          ]
      )

-- | NetworkConfig reports the relative names of network & subnetwork.
--
-- /See:/ 'newNetworkConfig' smart constructor.
data NetworkConfig = NetworkConfig
  { -- | The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
    datapathProvider :: (Core.Maybe NetworkConfig_DatapathProvider),
    -- | Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default/snat/status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
    defaultSnatStatus :: (Core.Maybe DefaultSnatStatus),
    -- | DNSConfig contains clusterDNS config for this cluster.
    dnsConfig :: (Core.Maybe DNSConfig),
    -- | Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
    enableIntraNodeVisibility :: (Core.Maybe Core.Bool),
    -- | Whether L4ILB Subsetting is enabled for this cluster.
    enableL4ilbSubsetting :: (Core.Maybe Core.Bool),
    -- | Output only. The relative name of the Google Compute Engine network(https:\/\/cloud.google.com\/compute\/docs\/networks-and-firewalls#networks) to which the cluster is connected. Example: projects\/my-project\/global\/networks\/my-network
    network :: (Core.Maybe Core.Text),
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
      defaultSnatStatus = Core.Nothing,
      dnsConfig = Core.Nothing,
      enableIntraNodeVisibility = Core.Nothing,
      enableL4ilbSubsetting = Core.Nothing,
      network = Core.Nothing,
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
            Core.<*> (o Core..:? "defaultSnatStatus")
            Core.<*> (o Core..:? "dnsConfig")
            Core.<*> (o Core..:? "enableIntraNodeVisibility")
            Core.<*> (o Core..:? "enableL4ilbSubsetting")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "privateIpv6GoogleAccess")
            Core.<*> (o Core..:? "serviceExternalIpsConfig")
            Core.<*> (o Core..:? "subnetwork")
      )

instance Core.ToJSON NetworkConfig where
  toJSON NetworkConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("datapathProvider" Core..=)
              Core.<$> datapathProvider,
            ("defaultSnatStatus" Core..=)
              Core.<$> defaultSnatStatus,
            ("dnsConfig" Core..=) Core.<$> dnsConfig,
            ("enableIntraNodeVisibility" Core..=)
              Core.<$> enableIntraNodeVisibility,
            ("enableL4ilbSubsetting" Core..=)
              Core.<$> enableL4ilbSubsetting,
            ("network" Core..=) Core.<$> network,
            ("privateIpv6GoogleAccess" Core..=)
              Core.<$> privateIpv6GoogleAccess,
            ("serviceExternalIpsConfig" Core..=)
              Core.<$> serviceExternalIpsConfig,
            ("subnetwork" Core..=) Core.<$> subnetwork
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
newNetworkPolicyConfig = NetworkPolicyConfig {disabled = Core.Nothing}

instance Core.FromJSON NetworkPolicyConfig where
  parseJSON =
    Core.withObject
      "NetworkPolicyConfig"
      ( \o ->
          NetworkPolicyConfig Core.<$> (o Core..:? "disabled")
      )

instance Core.ToJSON NetworkPolicyConfig where
  toJSON NetworkPolicyConfig {..} =
    Core.object
      ( Core.catMaybes
          [("disabled" Core..=) Core.<$> disabled]
      )

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
    Core.object
      (Core.catMaybes [("tags" Core..=) Core.<$> tags])

-- | Parameters that describe the nodes in a cluster.
--
-- /See:/ 'newNodeConfig' smart constructor.
data NodeConfig = NodeConfig
  { -- | A list of hardware accelerators to be attached to each node. See https:\/\/cloud.google.com\/compute\/docs\/gpus for more information about support for GPUs.
    accelerators :: (Core.Maybe [AcceleratorConfig]),
    -- | Advanced features for the Compute Engine VM.
    advancedMachineFeatures :: (Core.Maybe AdvancedMachineFeatures),
    -- | The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects\/[KEY/PROJECT/ID]\/locations\/[LOCATION]\/keyRings\/[RING/NAME]\/cryptoKeys\/[KEY/NAME]. For more information about protecting resources with Cloud KMS Keys please see: https:\/\/cloud.google.com\/compute\/docs\/disks\/customer-managed-encryption
    bootDiskKmsKey :: (Core.Maybe Core.Text),
    -- | Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
    diskSizeGb :: (Core.Maybe Core.Int32),
    -- | Type of the disk attached to each node (e.g. \'pd-standard\', \'pd-ssd\' or \'pd-balanced\') If unspecified, the default disk type is \'pd-standard\'
    diskType :: (Core.Maybe Core.Text),
    -- | Google Container File System (image streaming) configs.
    gcfsConfig :: (Core.Maybe GcfsConfig),
    -- | Enable or disable gvnic in the node pool.
    gvnic :: (Core.Maybe VirtualNIC),
    -- | The image type to use for this node. Note that for a given image type, the latest version of it will be used.
    imageType :: (Core.Maybe Core.Text),
    -- | Node kubelet configs.
    kubeletConfig :: (Core.Maybe NodeKubeletConfig),
    -- | The map of Kubernetes labels (key\/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it\'s best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/labels\/
    labels :: (Core.Maybe NodeConfig_Labels),
    -- | Parameters that can be configured on Linux nodes.
    linuxNodeConfig :: (Core.Maybe LinuxNodeConfig),
    -- | The number of local SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd for more information.
    localSsdCount :: (Core.Maybe Core.Int32),
    -- | The name of a Google Compute Engine <https://cloud.google.com/compute/docs/machine-types machine type> If unspecified, the default machine type is @e2-medium@.
    machineType :: (Core.Maybe Core.Text),
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
    -- | Sandbox configuration for this node.
    sandboxConfig :: (Core.Maybe SandboxConfig),
    -- | The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the \"default\" service account is used.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Shielded Instance options.
    shieldedInstanceConfig :: (Core.Maybe ShieldedInstanceConfig),
    -- | Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.
    spot :: (Core.Maybe Core.Bool),
    -- | The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.
    tags :: (Core.Maybe [Core.Text]),
    -- | List of kubernetes taints to be applied to each node. For more information, including usage and the valid values, see: https:\/\/kubernetes.io\/docs\/concepts\/configuration\/taint-and-toleration\/
    taints :: (Core.Maybe [NodeTaint]),
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
      diskSizeGb = Core.Nothing,
      diskType = Core.Nothing,
      gcfsConfig = Core.Nothing,
      gvnic = Core.Nothing,
      imageType = Core.Nothing,
      kubeletConfig = Core.Nothing,
      labels = Core.Nothing,
      linuxNodeConfig = Core.Nothing,
      localSsdCount = Core.Nothing,
      machineType = Core.Nothing,
      metadata = Core.Nothing,
      minCpuPlatform = Core.Nothing,
      nodeGroup = Core.Nothing,
      oauthScopes = Core.Nothing,
      preemptible = Core.Nothing,
      reservationAffinity = Core.Nothing,
      sandboxConfig = Core.Nothing,
      serviceAccount = Core.Nothing,
      shieldedInstanceConfig = Core.Nothing,
      spot = Core.Nothing,
      tags = Core.Nothing,
      taints = Core.Nothing,
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
            Core.<*> (o Core..:? "diskSizeGb")
            Core.<*> (o Core..:? "diskType")
            Core.<*> (o Core..:? "gcfsConfig")
            Core.<*> (o Core..:? "gvnic")
            Core.<*> (o Core..:? "imageType")
            Core.<*> (o Core..:? "kubeletConfig")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "linuxNodeConfig")
            Core.<*> (o Core..:? "localSsdCount")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "minCpuPlatform")
            Core.<*> (o Core..:? "nodeGroup")
            Core.<*> (o Core..:? "oauthScopes")
            Core.<*> (o Core..:? "preemptible")
            Core.<*> (o Core..:? "reservationAffinity")
            Core.<*> (o Core..:? "sandboxConfig")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "shieldedInstanceConfig")
            Core.<*> (o Core..:? "spot")
            Core.<*> (o Core..:? "tags")
            Core.<*> (o Core..:? "taints")
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
            ("diskSizeGb" Core..=) Core.<$> diskSizeGb,
            ("diskType" Core..=) Core.<$> diskType,
            ("gcfsConfig" Core..=) Core.<$> gcfsConfig,
            ("gvnic" Core..=) Core.<$> gvnic,
            ("imageType" Core..=) Core.<$> imageType,
            ("kubeletConfig" Core..=) Core.<$> kubeletConfig,
            ("labels" Core..=) Core.<$> labels,
            ("linuxNodeConfig" Core..=) Core.<$> linuxNodeConfig,
            ("localSsdCount" Core..=) Core.<$> localSsdCount,
            ("machineType" Core..=) Core.<$> machineType,
            ("metadata" Core..=) Core.<$> metadata,
            ("minCpuPlatform" Core..=) Core.<$> minCpuPlatform,
            ("nodeGroup" Core..=) Core.<$> nodeGroup,
            ("oauthScopes" Core..=) Core.<$> oauthScopes,
            ("preemptible" Core..=) Core.<$> preemptible,
            ("reservationAffinity" Core..=)
              Core.<$> reservationAffinity,
            ("sandboxConfig" Core..=) Core.<$> sandboxConfig,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("shieldedInstanceConfig" Core..=)
              Core.<$> shieldedInstanceConfig,
            ("spot" Core..=) Core.<$> spot,
            ("tags" Core..=) Core.<$> tags,
            ("taints" Core..=) Core.<$> taints,
            ("workloadMetadataConfig" Core..=)
              Core.<$> workloadMetadataConfig
          ]
      )

-- | The map of Kubernetes labels (key\/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it\'s best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/labels\/
--
-- /See:/ 'newNodeConfig_Labels' smart constructor.
newtype NodeConfig_Labels = NodeConfig_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeConfig_Labels' with the minimum fields required to make a request.
newNodeConfig_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  NodeConfig_Labels
newNodeConfig_Labels additional = NodeConfig_Labels {additional = additional}

instance Core.FromJSON NodeConfig_Labels where
  parseJSON =
    Core.withObject
      "NodeConfig_Labels"
      ( \o ->
          NodeConfig_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON NodeConfig_Labels where
  toJSON NodeConfig_Labels {..} = Core.toJSON additional

-- | The metadata key\/value pairs assigned to instances in the cluster. Keys must conform to the regexp @[a-zA-Z0-9-_]+@ and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - \"cluster-location\" - \"cluster-name\" - \"cluster-uid\" - \"configure-sh\" - \"containerd-configure-sh\" - \"enable-os-login\" - \"gci-ensure-gke-docker\" - \"gci-metrics-enabled\" - \"gci-update-strategy\" - \"instance-template\" - \"kube-env\" - \"startup-script\" - \"user-data\" - \"disable-address-manager\" - \"windows-startup-script-ps1\" - \"common-psm1\" - \"k8s-node-setup-psm1\" - \"install-ssh-psm1\" - \"user-profile-psm1\" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value\'s size must be less than or equal to 32 KB. The total size of all keys
-- and values must be less than 512 KB.
--
-- /See:/ 'newNodeConfig_Metadata' smart constructor.
newtype NodeConfig_Metadata = NodeConfig_Metadata
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
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
      ( \o ->
          NodeConfig_Metadata
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON NodeConfig_Metadata where
  toJSON NodeConfig_Metadata {..} =
    Core.toJSON additional

-- | Subset of NodeConfig message that has defaults.
--
-- /See:/ 'newNodeConfigDefaults' smart constructor.
newtype NodeConfigDefaults = NodeConfigDefaults
  { -- | GCFS (Google Container File System, a.k.a Riptide) options.
    gcfsConfig :: (Core.Maybe GcfsConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeConfigDefaults' with the minimum fields required to make a request.
newNodeConfigDefaults ::
  NodeConfigDefaults
newNodeConfigDefaults = NodeConfigDefaults {gcfsConfig = Core.Nothing}

instance Core.FromJSON NodeConfigDefaults where
  parseJSON =
    Core.withObject
      "NodeConfigDefaults"
      ( \o ->
          NodeConfigDefaults
            Core.<$> (o Core..:? "gcfsConfig")
      )

instance Core.ToJSON NodeConfigDefaults where
  toJSON NodeConfigDefaults {..} =
    Core.object
      ( Core.catMaybes
          [("gcfsConfig" Core..=) Core.<$> gcfsConfig]
      )

-- | Node kubelet configs.
--
-- /See:/ 'newNodeKubeletConfig' smart constructor.
data NodeKubeletConfig = NodeKubeletConfig
  { -- | Enable CPU CFS quota enforcement for containers that specify CPU limits. This option is enabled by default which makes kubelet use CFS quota (https:\/\/www.kernel.org\/doc\/Documentation\/scheduler\/sched-bwc.txt) to enforce container CPU limits. Otherwise, CPU limits will not be enforced at all. Disable this option to mitigate CPU throttling problems while still having your pods to be in Guaranteed QoS class by specifying the CPU limits. The default value is \'true\' if unspecified.
    cpuCfsQuota :: (Core.Maybe Core.Bool),
    -- | Set the CPU CFS quota period value \'cpu.cfs/period/us\'. The string must be a sequence of decimal numbers, each with optional fraction and a unit suffix, such as \"300ms\". Valid time units are \"ns\", \"us\" (or \"µs\"), \"ms\", \"s\", \"m\", \"h\". The value must be a positive duration.
    cpuCfsQuotaPeriod :: (Core.Maybe Core.Text),
    -- | Control the CPU management policy on the node. See https:\/\/kubernetes.io\/docs\/tasks\/administer-cluster\/cpu-management-policies\/ The following values are allowed. * \"none\": the default, which represents the existing scheduling behavior. * \"static\": allows pods with certain resource characteristics to be granted increased CPU affinity and exclusivity on the node. The default value is \'none\' if unspecified.
    cpuManagerPolicy :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeKubeletConfig' with the minimum fields required to make a request.
newNodeKubeletConfig ::
  NodeKubeletConfig
newNodeKubeletConfig =
  NodeKubeletConfig
    { cpuCfsQuota = Core.Nothing,
      cpuCfsQuotaPeriod = Core.Nothing,
      cpuManagerPolicy = Core.Nothing
    }

instance Core.FromJSON NodeKubeletConfig where
  parseJSON =
    Core.withObject
      "NodeKubeletConfig"
      ( \o ->
          NodeKubeletConfig
            Core.<$> (o Core..:? "cpuCfsQuota")
            Core.<*> (o Core..:? "cpuCfsQuotaPeriod")
            Core.<*> (o Core..:? "cpuManagerPolicy")
      )

instance Core.ToJSON NodeKubeletConfig where
  toJSON NodeKubeletConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("cpuCfsQuota" Core..=) Core.<$> cpuCfsQuota,
            ("cpuCfsQuotaPeriod" Core..=)
              Core.<$> cpuCfsQuotaPeriod,
            ("cpuManagerPolicy" Core..=)
              Core.<$> cpuManagerPolicy
          ]
      )

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
  { -- | Input only. Whether to create a new range for pod IPs in this node pool. Defaults are provided for @pod_range@ and @pod_ipv4_cidr_block@ if they are not specified. If neither @create_pod_range@ or @pod_range@ are specified, the cluster-level default (@ip_allocation_policy.cluster_ipv4_cidr_block@) is used. Only applicable if @ip_allocation_policy.use_ip_aliases@ is true. This field cannot be changed after the node pool has been created.
    createPodRange :: (Core.Maybe Core.Bool),
    -- | The IP address range for pod IPs in this node pool. Only applicable if @create_pod_range@ is true. Set to blank to have a range chosen with the default size. Set to \/netmask (e.g. @\/14@) to have a range chosen with a specific netmask. Set to a <https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) to pick a specific range to use. Only applicable if @ip_allocation_policy.use_ip_aliases@ is true. This field cannot be changed after the node pool has been created.
    podIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | The ID of the secondary range for pod IPs. If @create_pod_range@ is true, this ID is used for the new range. If @create_pod_range@ is false, uses an existing secondary range with this ID. Only applicable if @ip_allocation_policy.use_ip_aliases@ is true. This field cannot be changed after the node pool has been created.
    podRange :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeNetworkConfig' with the minimum fields required to make a request.
newNodeNetworkConfig ::
  NodeNetworkConfig
newNodeNetworkConfig =
  NodeNetworkConfig
    { createPodRange = Core.Nothing,
      podIpv4CidrBlock = Core.Nothing,
      podRange = Core.Nothing
    }

instance Core.FromJSON NodeNetworkConfig where
  parseJSON =
    Core.withObject
      "NodeNetworkConfig"
      ( \o ->
          NodeNetworkConfig
            Core.<$> (o Core..:? "createPodRange")
            Core.<*> (o Core..:? "podIpv4CidrBlock")
            Core.<*> (o Core..:? "podRange")
      )

instance Core.ToJSON NodeNetworkConfig where
  toJSON NodeNetworkConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("createPodRange" Core..=) Core.<$> createPodRange,
            ("podIpv4CidrBlock" Core..=)
              Core.<$> podIpv4CidrBlock,
            ("podRange" Core..=) Core.<$> podRange
          ]
      )

-- | NodePool contains the name and configuration for a cluster\'s node pool. Node pools are a set of nodes (i.e. VM\'s), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.
--
-- /See:/ 'newNodePool' smart constructor.
data NodePool = NodePool
  { -- | Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
    autoscaling :: (Core.Maybe NodePoolAutoscaling),
    -- | Which conditions caused the current node pool state.
    conditions :: (Core.Maybe [StatusCondition]),
    -- | The node configuration of the pool.
    config :: (Core.Maybe NodeConfig),
    -- | The initial node count for the pool. You must ensure that your Compute Engine <https://cloud.google.com/compute/quotas resource quota> is sufficient for this number of instances. You must also have available firewall and routes quota.
    initialNodeCount :: (Core.Maybe Core.Int32),
    -- | [Output only] The resource URLs of the <https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances managed instance groups> associated with this node pool.
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
    -- | [Output only] The pod CIDR block size per node in this node pool.
    podIpv4CidrSize :: (Core.Maybe Core.Int32),
    -- | [Output only] Server-defined URL for the resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | [Output only] The status of the nodes in this pool instance.
    status :: (Core.Maybe NodePool_Status),
    -- | [Output only] Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Upgrade settings control disruption and speed of the upgrade.
    upgradeSettings :: (Core.Maybe UpgradeSettings),
    -- | The version of the Kubernetes of this node.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodePool' with the minimum fields required to make a request.
newNodePool ::
  NodePool
newNodePool =
  NodePool
    { autoscaling = Core.Nothing,
      conditions = Core.Nothing,
      config = Core.Nothing,
      initialNodeCount = Core.Nothing,
      instanceGroupUrls = Core.Nothing,
      locations = Core.Nothing,
      management = Core.Nothing,
      maxPodsConstraint = Core.Nothing,
      name = Core.Nothing,
      networkConfig = Core.Nothing,
      podIpv4CidrSize = Core.Nothing,
      selfLink = Core.Nothing,
      status = Core.Nothing,
      statusMessage = Core.Nothing,
      upgradeSettings = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON NodePool where
  parseJSON =
    Core.withObject
      "NodePool"
      ( \o ->
          NodePool
            Core.<$> (o Core..:? "autoscaling")
            Core.<*> (o Core..:? "conditions")
            Core.<*> (o Core..:? "config")
            Core.<*> (o Core..:? "initialNodeCount")
            Core.<*> (o Core..:? "instanceGroupUrls")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "management")
            Core.<*> (o Core..:? "maxPodsConstraint")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networkConfig")
            Core.<*> (o Core..:? "podIpv4CidrSize")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "upgradeSettings")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON NodePool where
  toJSON NodePool {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoscaling" Core..=) Core.<$> autoscaling,
            ("conditions" Core..=) Core.<$> conditions,
            ("config" Core..=) Core.<$> config,
            ("initialNodeCount" Core..=)
              Core.<$> initialNodeCount,
            ("instanceGroupUrls" Core..=)
              Core.<$> instanceGroupUrls,
            ("locations" Core..=) Core.<$> locations,
            ("management" Core..=) Core.<$> management,
            ("maxPodsConstraint" Core..=)
              Core.<$> maxPodsConstraint,
            ("name" Core..=) Core.<$> name,
            ("networkConfig" Core..=) Core.<$> networkConfig,
            ("podIpv4CidrSize" Core..=) Core.<$> podIpv4CidrSize,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("status" Core..=) Core.<$> status,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("upgradeSettings" Core..=) Core.<$> upgradeSettings,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
--
-- /See:/ 'newNodePoolAutoConfig' smart constructor.
newtype NodePoolAutoConfig = NodePoolAutoConfig
  { -- | The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
    networkTags :: (Core.Maybe NetworkTags)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodePoolAutoConfig' with the minimum fields required to make a request.
newNodePoolAutoConfig ::
  NodePoolAutoConfig
newNodePoolAutoConfig = NodePoolAutoConfig {networkTags = Core.Nothing}

instance Core.FromJSON NodePoolAutoConfig where
  parseJSON =
    Core.withObject
      "NodePoolAutoConfig"
      ( \o ->
          NodePoolAutoConfig
            Core.<$> (o Core..:? "networkTags")
      )

instance Core.ToJSON NodePoolAutoConfig where
  toJSON NodePoolAutoConfig {..} =
    Core.object
      ( Core.catMaybes
          [("networkTags" Core..=) Core.<$> networkTags]
      )

-- | NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
--
-- /See:/ 'newNodePoolAutoscaling' smart constructor.
data NodePoolAutoscaling = NodePoolAutoscaling
  { -- | Can this node pool be deleted automatically.
    autoprovisioned :: (Core.Maybe Core.Bool),
    -- | Is autoscaling enabled for this node pool.
    enabled :: (Core.Maybe Core.Bool),
    -- | Maximum number of nodes for one location in the NodePool. Must be >= min/node/count. There has to be enough quota to scale up the cluster.
    maxNodeCount :: (Core.Maybe Core.Int32),
    -- | Minimum number of nodes for one location in the NodePool. Must be >= 1 and \<= max/node/count.
    minNodeCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodePoolAutoscaling' with the minimum fields required to make a request.
newNodePoolAutoscaling ::
  NodePoolAutoscaling
newNodePoolAutoscaling =
  NodePoolAutoscaling
    { autoprovisioned = Core.Nothing,
      enabled = Core.Nothing,
      maxNodeCount = Core.Nothing,
      minNodeCount = Core.Nothing
    }

instance Core.FromJSON NodePoolAutoscaling where
  parseJSON =
    Core.withObject
      "NodePoolAutoscaling"
      ( \o ->
          NodePoolAutoscaling
            Core.<$> (o Core..:? "autoprovisioned")
            Core.<*> (o Core..:? "enabled")
            Core.<*> (o Core..:? "maxNodeCount")
            Core.<*> (o Core..:? "minNodeCount")
      )

instance Core.ToJSON NodePoolAutoscaling where
  toJSON NodePoolAutoscaling {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoprovisioned" Core..=)
              Core.<$> autoprovisioned,
            ("enabled" Core..=) Core.<$> enabled,
            ("maxNodeCount" Core..=) Core.<$> maxNodeCount,
            ("minNodeCount" Core..=) Core.<$> minNodeCount
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
newNodePoolDefaults = NodePoolDefaults {nodeConfigDefaults = Core.Nothing}

instance Core.FromJSON NodePoolDefaults where
  parseJSON =
    Core.withObject
      "NodePoolDefaults"
      ( \o ->
          NodePoolDefaults
            Core.<$> (o Core..:? "nodeConfigDefaults")
      )

instance Core.ToJSON NodePoolDefaults where
  toJSON NodePoolDefaults {..} =
    Core.object
      ( Core.catMaybes
          [ ("nodeConfigDefaults" Core..=)
              Core.<$> nodeConfigDefaults
          ]
      )

-- | Kubernetes taint is comprised of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See <https://kubernetes.io/docs/concepts/configuration/taint-and-toleration here> for more information, including usage and the valid values.
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
  NodeTaint {effect = Core.Nothing, key = Core.Nothing, value = Core.Nothing}

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
      ( \o ->
          NotificationConfig Core.<$> (o Core..:? "pubsub")
      )

instance Core.ToJSON NotificationConfig where
  toJSON NotificationConfig {..} =
    Core.object
      (Core.catMaybes [("pubsub" Core..=) Core.<$> pubsub])

-- | This operation resource represents operations that may have happened or are happening on the cluster. All fields are output only.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | Which conditions caused the current cluster state. Deprecated. Use field error instead.
    clusterConditions :: (Core.Maybe [StatusCondition]),
    -- | Detailed operation progress, if available.
    detail :: (Core.Maybe Core.Text),
    -- | [Output only] The time the operation completed, in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    endTime :: (Core.Maybe Core.Text),
    -- | The error result of the operation in case of failure.
    error :: (Core.Maybe Status),
    -- | [Output only] The name of the Google Compute Engine <https://cloud.google.com/compute/docs/regions-zones/regions-zones#available zone> or <https://cloud.google.com/compute/docs/regions-zones/regions-zones#available region> in which the cluster resides.
    location :: (Core.Maybe Core.Text),
    -- | The server-assigned ID for the operation.
    name :: (Core.Maybe Core.Text),
    -- | Which conditions caused the current node pool state. Deprecated. Use field error instead.
    nodepoolConditions :: (Core.Maybe [StatusCondition]),
    -- | The operation type.
    operationType :: (Core.Maybe Operation_OperationType),
    -- | Output only. [Output only] Progress information for an operation.
    progress :: (Core.Maybe OperationProgress),
    -- | Server-defined URL for the resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | [Output only] The time the operation started, in <https://www.ietf.org/rfc/rfc3339.txt RFC3339> text format.
    startTime :: (Core.Maybe Core.Text),
    -- | The current status of the operation.
    status :: (Core.Maybe Operation_Status),
    -- | Output only. If an error has occurred, a textual description of the error. Deprecated. Use the field error instead.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Server-defined URL for the target of the operation.
    targetLink :: (Core.Maybe Core.Text),
    -- | The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the operation is taking place. This field is deprecated, use location instead.
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
          [ ("clusterConditions" Core..=)
              Core.<$> clusterConditions,
            ("detail" Core..=) Core.<$> detail,
            ("endTime" Core..=) Core.<$> endTime,
            ("error" Core..=) Core.<$> error,
            ("location" Core..=) Core.<$> location,
            ("name" Core..=) Core.<$> name,
            ("nodepoolConditions" Core..=)
              Core.<$> nodepoolConditions,
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

-- | Configuration options for private clusters.
--
-- /See:/ 'newPrivateClusterConfig' smart constructor.
data PrivateClusterConfig = PrivateClusterConfig
  { -- | Whether the master\'s internal IP address is used as the cluster endpoint.
    enablePrivateEndpoint :: (Core.Maybe Core.Bool),
    -- | Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking.
    enablePrivateNodes :: (Core.Maybe Core.Bool),
    -- | Controls master global access settings.
    masterGlobalAccessConfig :: (Core.Maybe PrivateClusterMasterGlobalAccessConfig),
    -- | The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster\'s network.
    masterIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Output only. The peering name in the customer VPC used by this cluster.
    peeringName :: (Core.Maybe Core.Text),
    -- | Output only. The internal IP address of this cluster\'s master endpoint.
    privateEndpoint :: (Core.Maybe Core.Text),
    -- | Output only. The external IP address of this cluster\'s master endpoint.
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
            Core.<*> (o Core..:? "publicEndpoint")
      )

instance Core.ToJSON PrivateClusterConfig where
  toJSON PrivateClusterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enablePrivateEndpoint" Core..=)
              Core.<$> enablePrivateEndpoint,
            ("enablePrivateNodes" Core..=)
              Core.<$> enablePrivateNodes,
            ("masterGlobalAccessConfig" Core..=)
              Core.<$> masterGlobalAccessConfig,
            ("masterIpv4CidrBlock" Core..=)
              Core.<$> masterIpv4CidrBlock,
            ("peeringName" Core..=) Core.<$> peeringName,
            ("privateEndpoint" Core..=) Core.<$> privateEndpoint,
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

instance
  Core.FromJSON
    PrivateClusterMasterGlobalAccessConfig
  where
  parseJSON =
    Core.withObject
      "PrivateClusterMasterGlobalAccessConfig"
      ( \o ->
          PrivateClusterMasterGlobalAccessConfig
            Core.<$> (o Core..:? "enabled")
      )

instance
  Core.ToJSON
    PrivateClusterMasterGlobalAccessConfig
  where
  toJSON PrivateClusterMasterGlobalAccessConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
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
  PubSub {enabled = Core.Nothing, filter = Core.Nothing, topic = Core.Nothing}

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
  RecurringTimeWindow {recurrence = Core.Nothing, window = Core.Nothing}

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
      ( \o ->
          ReleaseChannel Core.<$> (o Core..:? "channel")
      )

instance Core.ToJSON ReleaseChannel where
  toJSON ReleaseChannel {..} =
    Core.object
      ( Core.catMaybes
          [("channel" Core..=) Core.<$> channel]
      )

-- | ReleaseChannelConfig exposes configuration for a release channel.
--
-- /See:/ 'newReleaseChannelConfig' smart constructor.
data ReleaseChannelConfig = ReleaseChannelConfig
  { -- | The release channel this configuration applies to.
    channel :: (Core.Maybe ReleaseChannelConfig_Channel),
    -- | The default version for newly created clusters on the channel.
    defaultVersion :: (Core.Maybe Core.Text),
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
            Core.<*> (o Core..:? "validVersions")
      )

instance Core.ToJSON ReleaseChannelConfig where
  toJSON ReleaseChannelConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("channel" Core..=) Core.<$> channel,
            ("defaultVersion" Core..=) Core.<$> defaultVersion,
            ("validVersions" Core..=) Core.<$> validVersions
          ]
      )

-- | <https://cloud.google.com/compute/docs/instances/reserving-zonal-resources ReservationAffinity> is the configuration of desired reservation which instances could take capacity from.
--
-- /See:/ 'newReservationAffinity' smart constructor.
data ReservationAffinity = ReservationAffinity
  { -- | Corresponds to the type of reservation consumption.
    consumeReservationType :: (Core.Maybe ReservationAffinity_ConsumeReservationType),
    -- | Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify \"googleapis.com\/reservation-name\" as the key and specify the name of your reservation as its value.
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
            Core.<$> ( o Core..:? "maximum"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "minimum"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "resourceType")
      )

instance Core.ToJSON ResourceLimit where
  toJSON ResourceLimit {..} =
    Core.object
      ( Core.catMaybes
          [ ("maximum" Core..=) Core.. Core.AsText
              Core.<$> maximum,
            ("minimum" Core..=) Core.. Core.AsText
              Core.<$> minimum,
            ("resourceType" Core..=) Core.<$> resourceType
          ]
      )

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
          [ ("bigqueryDestination" Core..=)
              Core.<$> bigqueryDestination,
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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
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
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

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
            ("briefDescription" Core..=)
              Core.<$> briefDescription,
            ("bulletinId" Core..=) Core.<$> bulletinId,
            ("bulletinUri" Core..=) Core.<$> bulletinUri,
            ("cveIds" Core..=) Core.<$> cveIds,
            ("manualStepsRequired" Core..=)
              Core.<$> manualStepsRequired,
            ("patchedVersions" Core..=) Core.<$> patchedVersions,
            ("resourceTypeAffected" Core..=)
              Core.<$> resourceTypeAffected,
            ("severity" Core..=) Core.<$> severity,
            ("suggestedUpgradeTarget" Core..=)
              Core.<$> suggestedUpgradeTarget
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
            ("defaultClusterVersion" Core..=)
              Core.<$> defaultClusterVersion,
            ("defaultImageType" Core..=)
              Core.<$> defaultImageType,
            ("validImageTypes" Core..=) Core.<$> validImageTypes,
            ("validMasterVersions" Core..=)
              Core.<$> validMasterVersions,
            ("validNodeVersions" Core..=)
              Core.<$> validNodeVersions
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
newServiceExternalIPsConfig = ServiceExternalIPsConfig {enabled = Core.Nothing}

instance Core.FromJSON ServiceExternalIPsConfig where
  parseJSON =
    Core.withObject
      "ServiceExternalIPsConfig"
      ( \o ->
          ServiceExternalIPsConfig
            Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON ServiceExternalIPsConfig where
  toJSON ServiceExternalIPsConfig {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
    -- | Deprecated. The Google Developers Console <https://developers.google.com/console/help/new/#projectnumber project ID or project number>. This field has been deprecated and replaced by the name field.
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
            ("labelFingerprint" Core..=)
              Core.<$> labelFingerprint,
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
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetLabelsRequest_ResourceLabels' with the minimum fields required to make a request.
newSetLabelsRequest_ResourceLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SetLabelsRequest_ResourceLabels
newSetLabelsRequest_ResourceLabels additional =
  SetLabelsRequest_ResourceLabels {additional = additional}

instance
  Core.FromJSON
    SetLabelsRequest_ResourceLabels
  where
  parseJSON =
    Core.withObject
      "SetLabelsRequest_ResourceLabels"
      ( \o ->
          SetLabelsRequest_ResourceLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SetLabelsRequest_ResourceLabels where
  toJSON SetLabelsRequest_ResourceLabels {..} =
    Core.toJSON additional

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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
    -- | Required. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>.
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
            ("maintenancePolicy" Core..=)
              Core.<$> maintenancePolicy,
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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
            ("monitoringService" Core..=)
              Core.<$> monitoringService,
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
    -- | Deprecated. The Google Developers Console <https://developers.google.com/console/help/new/#projectnumber project ID or project number>. This field has been deprecated and replaced by the name field.
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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
            ("enableSecureBoot" Core..=)
              Core.<$> enableSecureBoot
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
      ( \o ->
          ShieldedNodes Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON ShieldedNodes where
  toJSON ShieldedNodes {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

-- | StartIPRotationRequest creates a new IP for the cluster and then performs a node upgrade on each node pool to point to the new IP.
--
-- /See:/ 'newStartIPRotationRequest' smart constructor.
data StartIPRotationRequest = StartIPRotationRequest
  { -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster name) of the cluster to start IP rotation. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://developers.google.com/console/help/new/#projectnumber project ID or project number>. This field has been deprecated and replaced by the name field.
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
            ("rotateCredentials" Core..=)
              Core.<$> rotateCredentials,
            ("zone" Core..=) Core.<$> zone
          ]
      )

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
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

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
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
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
  { -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | GCFS config.
    gcfsConfig :: (Core.Maybe GcfsConfig),
    -- | Enable or disable gvnic on the node pool.
    gvnic :: (Core.Maybe VirtualNIC),
    -- | Required. The desired image type for the node pool.
    imageType :: (Core.Maybe Core.Text),
    -- | Node kubelet configs.
    kubeletConfig :: (Core.Maybe NodeKubeletConfig),
    -- | Parameters that can be configured on Linux nodes.
    linuxNodeConfig :: (Core.Maybe LinuxNodeConfig),
    -- | The desired list of Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zones> in which the node pool\'s nodes should be located. Changing the locations for a node pool will result in nodes being either created or removed from the node pool, depending on whether locations are being added or removed.
    locations :: (Core.Maybe [Core.Text]),
    -- | The name (project, location, cluster, node pool) of the node pool to update. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field.
    nodePoolId :: (Core.Maybe Core.Text),
    -- | Required. The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the Kubernetes master version
    nodeVersion :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Upgrade settings control disruption and speed of the upgrade.
    upgradeSettings :: (Core.Maybe UpgradeSettings),
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
    { clusterId = Core.Nothing,
      gcfsConfig = Core.Nothing,
      gvnic = Core.Nothing,
      imageType = Core.Nothing,
      kubeletConfig = Core.Nothing,
      linuxNodeConfig = Core.Nothing,
      locations = Core.Nothing,
      name = Core.Nothing,
      nodePoolId = Core.Nothing,
      nodeVersion = Core.Nothing,
      projectId = Core.Nothing,
      upgradeSettings = Core.Nothing,
      workloadMetadataConfig = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON UpdateNodePoolRequest where
  parseJSON =
    Core.withObject
      "UpdateNodePoolRequest"
      ( \o ->
          UpdateNodePoolRequest
            Core.<$> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "gcfsConfig")
            Core.<*> (o Core..:? "gvnic")
            Core.<*> (o Core..:? "imageType")
            Core.<*> (o Core..:? "kubeletConfig")
            Core.<*> (o Core..:? "linuxNodeConfig")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodePoolId")
            Core.<*> (o Core..:? "nodeVersion")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "upgradeSettings")
            Core.<*> (o Core..:? "workloadMetadataConfig")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON UpdateNodePoolRequest where
  toJSON UpdateNodePoolRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterId" Core..=) Core.<$> clusterId,
            ("gcfsConfig" Core..=) Core.<$> gcfsConfig,
            ("gvnic" Core..=) Core.<$> gvnic,
            ("imageType" Core..=) Core.<$> imageType,
            ("kubeletConfig" Core..=) Core.<$> kubeletConfig,
            ("linuxNodeConfig" Core..=) Core.<$> linuxNodeConfig,
            ("locations" Core..=) Core.<$> locations,
            ("name" Core..=) Core.<$> name,
            ("nodePoolId" Core..=) Core.<$> nodePoolId,
            ("nodeVersion" Core..=) Core.<$> nodeVersion,
            ("projectId" Core..=) Core.<$> projectId,
            ("upgradeSettings" Core..=) Core.<$> upgradeSettings,
            ("workloadMetadataConfig" Core..=)
              Core.<$> workloadMetadataConfig,
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
            ("operationStartTime" Core..=)
              Core.<$> operationStartTime,
            ("resource" Core..=) Core.<$> resource,
            ("resourceType" Core..=) Core.<$> resourceType,
            ("targetVersion" Core..=) Core.<$> targetVersion
          ]
      )

-- | These upgrade settings control the level of parallelism and the level of disruption caused by an upgrade. maxUnavailable controls the number of nodes that can be simultaneously unavailable. maxSurge controls the number of additional nodes that can be added to the node pool temporarily for the time of the upgrade to increase the number of available nodes. (maxUnavailable + maxSurge) determines the level of parallelism (how many nodes are being upgraded at the same time). Note: upgrades inevitably introduce some disruption since workloads need to be moved from old nodes to new, upgraded ones. Even if maxUnavailable=0, this holds true. (Disruption stays within the limits of PodDisruptionBudget, if it is configured.) Consider a hypothetical node pool with 5 nodes having maxSurge=2, maxUnavailable=1. This means the upgrade process upgrades 3 nodes simultaneously. It creates 2 additional (upgraded) nodes, then it brings down 3 old (not yet upgraded) nodes at the same time. This ensures that there are always at
-- least 4 nodes available.
--
-- /See:/ 'newUpgradeSettings' smart constructor.
data UpgradeSettings = UpgradeSettings
  { -- | The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process.
    maxSurge :: (Core.Maybe Core.Int32),
    -- | The maximum number of nodes that can be simultaneously unavailable during the upgrade process. A node is considered available if its status is Ready.
    maxUnavailable :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeSettings' with the minimum fields required to make a request.
newUpgradeSettings ::
  UpgradeSettings
newUpgradeSettings =
  UpgradeSettings {maxSurge = Core.Nothing, maxUnavailable = Core.Nothing}

instance Core.FromJSON UpgradeSettings where
  parseJSON =
    Core.withObject
      "UpgradeSettings"
      ( \o ->
          UpgradeSettings
            Core.<$> (o Core..:? "maxSurge")
            Core.<*> (o Core..:? "maxUnavailable")
      )

instance Core.ToJSON UpgradeSettings where
  toJSON UpgradeSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxSurge" Core..=) Core.<$> maxSurge,
            ("maxUnavailable" Core..=) Core.<$> maxUnavailable
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
            ("secondaryIpRanges" Core..=)
              Core.<$> secondaryIpRanges,
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
newVerticalPodAutoscaling = VerticalPodAutoscaling {enabled = Core.Nothing}

instance Core.FromJSON VerticalPodAutoscaling where
  parseJSON =
    Core.withObject
      "VerticalPodAutoscaling"
      ( \o ->
          VerticalPodAutoscaling
            Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON VerticalPodAutoscaling where
  toJSON VerticalPodAutoscaling {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

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
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

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
newWorkloadIdentityConfig = WorkloadIdentityConfig {workloadPool = Core.Nothing}

instance Core.FromJSON WorkloadIdentityConfig where
  parseJSON =
    Core.withObject
      "WorkloadIdentityConfig"
      ( \o ->
          WorkloadIdentityConfig
            Core.<$> (o Core..:? "workloadPool")
      )

instance Core.ToJSON WorkloadIdentityConfig where
  toJSON WorkloadIdentityConfig {..} =
    Core.object
      ( Core.catMaybes
          [("workloadPool" Core..=) Core.<$> workloadPool]
      )

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
newWorkloadMetadataConfig = WorkloadMetadataConfig {mode = Core.Nothing}

instance Core.FromJSON WorkloadMetadataConfig where
  parseJSON =
    Core.withObject
      "WorkloadMetadataConfig"
      ( \o ->
          WorkloadMetadataConfig Core.<$> (o Core..:? "mode")
      )

instance Core.ToJSON WorkloadMetadataConfig where
  toJSON WorkloadMetadataConfig {..} =
    Core.object
      (Core.catMaybes [("mode" Core..=) Core.<$> mode])
