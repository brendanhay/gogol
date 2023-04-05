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
-- Module      : Gogol.Container
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Builds and manages container-based applications, powered by the open source Kubernetes technology.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference>
module Gogol.Container
  ( -- * Configuration
    containerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** container.projects.aggregated.usableSubnetworks.list
    ContainerProjectsAggregatedUsableSubnetworksListResource,
    ContainerProjectsAggregatedUsableSubnetworksList (..),
    newContainerProjectsAggregatedUsableSubnetworksList,

    -- ** container.projects.locations.clusters.completeIpRotation
    ContainerProjectsLocationsClustersCompleteIpRotationResource,
    ContainerProjectsLocationsClustersCompleteIpRotation (..),
    newContainerProjectsLocationsClustersCompleteIpRotation,

    -- ** container.projects.locations.clusters.create
    ContainerProjectsLocationsClustersCreateResource,
    ContainerProjectsLocationsClustersCreate (..),
    newContainerProjectsLocationsClustersCreate,

    -- ** container.projects.locations.clusters.delete
    ContainerProjectsLocationsClustersDeleteResource,
    ContainerProjectsLocationsClustersDelete (..),
    newContainerProjectsLocationsClustersDelete,

    -- ** container.projects.locations.clusters.get
    ContainerProjectsLocationsClustersGetResource,
    ContainerProjectsLocationsClustersGet (..),
    newContainerProjectsLocationsClustersGet,

    -- ** container.projects.locations.clusters.getJwks
    ContainerProjectsLocationsClustersGetJwksResource,
    ContainerProjectsLocationsClustersGetJwks (..),
    newContainerProjectsLocationsClustersGetJwks,

    -- ** container.projects.locations.clusters.list
    ContainerProjectsLocationsClustersListResource,
    ContainerProjectsLocationsClustersList (..),
    newContainerProjectsLocationsClustersList,

    -- ** container.projects.locations.clusters.nodePools.completeUpgrade
    ContainerProjectsLocationsClustersNodePoolsCompleteUpgradeResource,
    ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade (..),
    newContainerProjectsLocationsClustersNodePoolsCompleteUpgrade,

    -- ** container.projects.locations.clusters.nodePools.create
    ContainerProjectsLocationsClustersNodePoolsCreateResource,
    ContainerProjectsLocationsClustersNodePoolsCreate (..),
    newContainerProjectsLocationsClustersNodePoolsCreate,

    -- ** container.projects.locations.clusters.nodePools.delete
    ContainerProjectsLocationsClustersNodePoolsDeleteResource,
    ContainerProjectsLocationsClustersNodePoolsDelete (..),
    newContainerProjectsLocationsClustersNodePoolsDelete,

    -- ** container.projects.locations.clusters.nodePools.get
    ContainerProjectsLocationsClustersNodePoolsGetResource,
    ContainerProjectsLocationsClustersNodePoolsGet (..),
    newContainerProjectsLocationsClustersNodePoolsGet,

    -- ** container.projects.locations.clusters.nodePools.list
    ContainerProjectsLocationsClustersNodePoolsListResource,
    ContainerProjectsLocationsClustersNodePoolsList (..),
    newContainerProjectsLocationsClustersNodePoolsList,

    -- ** container.projects.locations.clusters.nodePools.rollback
    ContainerProjectsLocationsClustersNodePoolsRollbackResource,
    ContainerProjectsLocationsClustersNodePoolsRollback (..),
    newContainerProjectsLocationsClustersNodePoolsRollback,

    -- ** container.projects.locations.clusters.nodePools.setAutoscaling
    ContainerProjectsLocationsClustersNodePoolsSetAutoscalingResource,
    ContainerProjectsLocationsClustersNodePoolsSetAutoscaling (..),
    newContainerProjectsLocationsClustersNodePoolsSetAutoscaling,

    -- ** container.projects.locations.clusters.nodePools.setManagement
    ContainerProjectsLocationsClustersNodePoolsSetManagementResource,
    ContainerProjectsLocationsClustersNodePoolsSetManagement (..),
    newContainerProjectsLocationsClustersNodePoolsSetManagement,

    -- ** container.projects.locations.clusters.nodePools.setSize
    ContainerProjectsLocationsClustersNodePoolsSetSizeResource,
    ContainerProjectsLocationsClustersNodePoolsSetSize (..),
    newContainerProjectsLocationsClustersNodePoolsSetSize,

    -- ** container.projects.locations.clusters.nodePools.update
    ContainerProjectsLocationsClustersNodePoolsUpdateResource,
    ContainerProjectsLocationsClustersNodePoolsUpdate (..),
    newContainerProjectsLocationsClustersNodePoolsUpdate,

    -- ** container.projects.locations.clusters.setAddons
    ContainerProjectsLocationsClustersSetAddonsResource,
    ContainerProjectsLocationsClustersSetAddons (..),
    newContainerProjectsLocationsClustersSetAddons,

    -- ** container.projects.locations.clusters.setLegacyAbac
    ContainerProjectsLocationsClustersSetLegacyAbacResource,
    ContainerProjectsLocationsClustersSetLegacyAbac (..),
    newContainerProjectsLocationsClustersSetLegacyAbac,

    -- ** container.projects.locations.clusters.setLocations
    ContainerProjectsLocationsClustersSetLocationsResource,
    ContainerProjectsLocationsClustersSetLocations (..),
    newContainerProjectsLocationsClustersSetLocations,

    -- ** container.projects.locations.clusters.setLogging
    ContainerProjectsLocationsClustersSetLoggingResource,
    ContainerProjectsLocationsClustersSetLogging (..),
    newContainerProjectsLocationsClustersSetLogging,

    -- ** container.projects.locations.clusters.setMaintenancePolicy
    ContainerProjectsLocationsClustersSetMaintenancePolicyResource,
    ContainerProjectsLocationsClustersSetMaintenancePolicy (..),
    newContainerProjectsLocationsClustersSetMaintenancePolicy,

    -- ** container.projects.locations.clusters.setMasterAuth
    ContainerProjectsLocationsClustersSetMasterAuthResource,
    ContainerProjectsLocationsClustersSetMasterAuth (..),
    newContainerProjectsLocationsClustersSetMasterAuth,

    -- ** container.projects.locations.clusters.setMonitoring
    ContainerProjectsLocationsClustersSetMonitoringResource,
    ContainerProjectsLocationsClustersSetMonitoring (..),
    newContainerProjectsLocationsClustersSetMonitoring,

    -- ** container.projects.locations.clusters.setNetworkPolicy
    ContainerProjectsLocationsClustersSetNetworkPolicyResource,
    ContainerProjectsLocationsClustersSetNetworkPolicy (..),
    newContainerProjectsLocationsClustersSetNetworkPolicy,

    -- ** container.projects.locations.clusters.setResourceLabels
    ContainerProjectsLocationsClustersSetResourceLabelsResource,
    ContainerProjectsLocationsClustersSetResourceLabels (..),
    newContainerProjectsLocationsClustersSetResourceLabels,

    -- ** container.projects.locations.clusters.startIpRotation
    ContainerProjectsLocationsClustersStartIpRotationResource,
    ContainerProjectsLocationsClustersStartIpRotation (..),
    newContainerProjectsLocationsClustersStartIpRotation,

    -- ** container.projects.locations.clusters.update
    ContainerProjectsLocationsClustersUpdateResource,
    ContainerProjectsLocationsClustersUpdate (..),
    newContainerProjectsLocationsClustersUpdate,

    -- ** container.projects.locations.clusters.updateMaster
    ContainerProjectsLocationsClustersUpdateMasterResource,
    ContainerProjectsLocationsClustersUpdateMaster (..),
    newContainerProjectsLocationsClustersUpdateMaster,

    -- ** container.projects.locations.clusters.wellknown.getOpenidconfiguration
    ContainerProjectsLocationsClustersWellknownGetOpenidconfigurationResource,
    ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration (..),
    newContainerProjectsLocationsClustersWellknownGetOpenidconfiguration,

    -- ** container.projects.locations.getServerConfig
    ContainerProjectsLocationsGetServerConfigResource,
    ContainerProjectsLocationsGetServerConfig (..),
    newContainerProjectsLocationsGetServerConfig,

    -- ** container.projects.locations.operations.cancel
    ContainerProjectsLocationsOperationsCancelResource,
    ContainerProjectsLocationsOperationsCancel (..),
    newContainerProjectsLocationsOperationsCancel,

    -- ** container.projects.locations.operations.get
    ContainerProjectsLocationsOperationsGetResource,
    ContainerProjectsLocationsOperationsGet (..),
    newContainerProjectsLocationsOperationsGet,

    -- ** container.projects.locations.operations.list
    ContainerProjectsLocationsOperationsListResource,
    ContainerProjectsLocationsOperationsList (..),
    newContainerProjectsLocationsOperationsList,

    -- ** container.projects.zones.clusters.addons
    ContainerProjectsZonesClustersAddonsResource,
    ContainerProjectsZonesClustersAddons (..),
    newContainerProjectsZonesClustersAddons,

    -- ** container.projects.zones.clusters.completeIpRotation
    ContainerProjectsZonesClustersCompleteIpRotationResource,
    ContainerProjectsZonesClustersCompleteIpRotation (..),
    newContainerProjectsZonesClustersCompleteIpRotation,

    -- ** container.projects.zones.clusters.create
    ContainerProjectsZonesClustersCreateResource,
    ContainerProjectsZonesClustersCreate (..),
    newContainerProjectsZonesClustersCreate,

    -- ** container.projects.zones.clusters.delete
    ContainerProjectsZonesClustersDeleteResource,
    ContainerProjectsZonesClustersDelete (..),
    newContainerProjectsZonesClustersDelete,

    -- ** container.projects.zones.clusters.get
    ContainerProjectsZonesClustersGetResource,
    ContainerProjectsZonesClustersGet (..),
    newContainerProjectsZonesClustersGet,

    -- ** container.projects.zones.clusters.legacyAbac
    ContainerProjectsZonesClustersLegacyAbacResource,
    ContainerProjectsZonesClustersLegacyAbac (..),
    newContainerProjectsZonesClustersLegacyAbac,

    -- ** container.projects.zones.clusters.list
    ContainerProjectsZonesClustersListResource,
    ContainerProjectsZonesClustersList (..),
    newContainerProjectsZonesClustersList,

    -- ** container.projects.zones.clusters.locations
    ContainerProjectsZonesClustersLocationsResource,
    ContainerProjectsZonesClustersLocations (..),
    newContainerProjectsZonesClustersLocations,

    -- ** container.projects.zones.clusters.logging
    ContainerProjectsZonesClustersLoggingResource,
    ContainerProjectsZonesClustersLogging (..),
    newContainerProjectsZonesClustersLogging,

    -- ** container.projects.zones.clusters.master
    ContainerProjectsZonesClustersMasterResource,
    ContainerProjectsZonesClustersMaster (..),
    newContainerProjectsZonesClustersMaster,

    -- ** container.projects.zones.clusters.monitoring
    ContainerProjectsZonesClustersMonitoringResource,
    ContainerProjectsZonesClustersMonitoring (..),
    newContainerProjectsZonesClustersMonitoring,

    -- ** container.projects.zones.clusters.nodePools.autoscaling
    ContainerProjectsZonesClustersNodePoolsAutoscalingResource,
    ContainerProjectsZonesClustersNodePoolsAutoscaling (..),
    newContainerProjectsZonesClustersNodePoolsAutoscaling,

    -- ** container.projects.zones.clusters.nodePools.create
    ContainerProjectsZonesClustersNodePoolsCreateResource,
    ContainerProjectsZonesClustersNodePoolsCreate (..),
    newContainerProjectsZonesClustersNodePoolsCreate,

    -- ** container.projects.zones.clusters.nodePools.delete
    ContainerProjectsZonesClustersNodePoolsDeleteResource,
    ContainerProjectsZonesClustersNodePoolsDelete (..),
    newContainerProjectsZonesClustersNodePoolsDelete,

    -- ** container.projects.zones.clusters.nodePools.get
    ContainerProjectsZonesClustersNodePoolsGetResource,
    ContainerProjectsZonesClustersNodePoolsGet (..),
    newContainerProjectsZonesClustersNodePoolsGet,

    -- ** container.projects.zones.clusters.nodePools.list
    ContainerProjectsZonesClustersNodePoolsListResource,
    ContainerProjectsZonesClustersNodePoolsList (..),
    newContainerProjectsZonesClustersNodePoolsList,

    -- ** container.projects.zones.clusters.nodePools.rollback
    ContainerProjectsZonesClustersNodePoolsRollbackResource,
    ContainerProjectsZonesClustersNodePoolsRollback (..),
    newContainerProjectsZonesClustersNodePoolsRollback,

    -- ** container.projects.zones.clusters.nodePools.setManagement
    ContainerProjectsZonesClustersNodePoolsSetManagementResource,
    ContainerProjectsZonesClustersNodePoolsSetManagement (..),
    newContainerProjectsZonesClustersNodePoolsSetManagement,

    -- ** container.projects.zones.clusters.nodePools.setSize
    ContainerProjectsZonesClustersNodePoolsSetSizeResource,
    ContainerProjectsZonesClustersNodePoolsSetSize (..),
    newContainerProjectsZonesClustersNodePoolsSetSize,

    -- ** container.projects.zones.clusters.nodePools.update
    ContainerProjectsZonesClustersNodePoolsUpdateResource,
    ContainerProjectsZonesClustersNodePoolsUpdate (..),
    newContainerProjectsZonesClustersNodePoolsUpdate,

    -- ** container.projects.zones.clusters.resourceLabels
    ContainerProjectsZonesClustersResourceLabelsResource,
    ContainerProjectsZonesClustersResourceLabels (..),
    newContainerProjectsZonesClustersResourceLabels,

    -- ** container.projects.zones.clusters.setMaintenancePolicy
    ContainerProjectsZonesClustersSetMaintenancePolicyResource,
    ContainerProjectsZonesClustersSetMaintenancePolicy (..),
    newContainerProjectsZonesClustersSetMaintenancePolicy,

    -- ** container.projects.zones.clusters.setMasterAuth
    ContainerProjectsZonesClustersSetMasterAuthResource,
    ContainerProjectsZonesClustersSetMasterAuth (..),
    newContainerProjectsZonesClustersSetMasterAuth,

    -- ** container.projects.zones.clusters.setNetworkPolicy
    ContainerProjectsZonesClustersSetNetworkPolicyResource,
    ContainerProjectsZonesClustersSetNetworkPolicy (..),
    newContainerProjectsZonesClustersSetNetworkPolicy,

    -- ** container.projects.zones.clusters.startIpRotation
    ContainerProjectsZonesClustersStartIpRotationResource,
    ContainerProjectsZonesClustersStartIpRotation (..),
    newContainerProjectsZonesClustersStartIpRotation,

    -- ** container.projects.zones.clusters.update
    ContainerProjectsZonesClustersUpdateResource,
    ContainerProjectsZonesClustersUpdate (..),
    newContainerProjectsZonesClustersUpdate,

    -- ** container.projects.zones.getServerconfig
    ContainerProjectsZonesGetServerconfigResource,
    ContainerProjectsZonesGetServerconfig (..),
    newContainerProjectsZonesGetServerconfig,

    -- ** container.projects.zones.operations.cancel
    ContainerProjectsZonesOperationsCancelResource,
    ContainerProjectsZonesOperationsCancel (..),
    newContainerProjectsZonesOperationsCancel,

    -- ** container.projects.zones.operations.get
    ContainerProjectsZonesOperationsGetResource,
    ContainerProjectsZonesOperationsGet (..),
    newContainerProjectsZonesOperationsGet,

    -- ** container.projects.zones.operations.list
    ContainerProjectsZonesOperationsListResource,
    ContainerProjectsZonesOperationsList (..),
    newContainerProjectsZonesOperationsList,

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

import Gogol.Container.Projects.Aggregated.UsableSubnetworks.List
import Gogol.Container.Projects.Locations.Clusters.CompleteIpRotation
import Gogol.Container.Projects.Locations.Clusters.Create
import Gogol.Container.Projects.Locations.Clusters.Delete
import Gogol.Container.Projects.Locations.Clusters.Get
import Gogol.Container.Projects.Locations.Clusters.GetJwks
import Gogol.Container.Projects.Locations.Clusters.List
import Gogol.Container.Projects.Locations.Clusters.NodePools.CompleteUpgrade
import Gogol.Container.Projects.Locations.Clusters.NodePools.Create
import Gogol.Container.Projects.Locations.Clusters.NodePools.Delete
import Gogol.Container.Projects.Locations.Clusters.NodePools.Get
import Gogol.Container.Projects.Locations.Clusters.NodePools.List
import Gogol.Container.Projects.Locations.Clusters.NodePools.Rollback
import Gogol.Container.Projects.Locations.Clusters.NodePools.SetAutoscaling
import Gogol.Container.Projects.Locations.Clusters.NodePools.SetManagement
import Gogol.Container.Projects.Locations.Clusters.NodePools.SetSize
import Gogol.Container.Projects.Locations.Clusters.NodePools.Update
import Gogol.Container.Projects.Locations.Clusters.SetAddons
import Gogol.Container.Projects.Locations.Clusters.SetLegacyAbac
import Gogol.Container.Projects.Locations.Clusters.SetLocations
import Gogol.Container.Projects.Locations.Clusters.SetLogging
import Gogol.Container.Projects.Locations.Clusters.SetMaintenancePolicy
import Gogol.Container.Projects.Locations.Clusters.SetMasterAuth
import Gogol.Container.Projects.Locations.Clusters.SetMonitoring
import Gogol.Container.Projects.Locations.Clusters.SetNetworkPolicy
import Gogol.Container.Projects.Locations.Clusters.SetResourceLabels
import Gogol.Container.Projects.Locations.Clusters.StartIpRotation
import Gogol.Container.Projects.Locations.Clusters.Update
import Gogol.Container.Projects.Locations.Clusters.UpdateMaster
import Gogol.Container.Projects.Locations.Clusters.Wellknown.GetOpenidconfiguration
import Gogol.Container.Projects.Locations.GetServerConfig
import Gogol.Container.Projects.Locations.Operations.Cancel
import Gogol.Container.Projects.Locations.Operations.Get
import Gogol.Container.Projects.Locations.Operations.List
import Gogol.Container.Projects.Zones.Clusters.Addons
import Gogol.Container.Projects.Zones.Clusters.CompleteIpRotation
import Gogol.Container.Projects.Zones.Clusters.Create
import Gogol.Container.Projects.Zones.Clusters.Delete
import Gogol.Container.Projects.Zones.Clusters.Get
import Gogol.Container.Projects.Zones.Clusters.LegacyAbac
import Gogol.Container.Projects.Zones.Clusters.List
import Gogol.Container.Projects.Zones.Clusters.Locations
import Gogol.Container.Projects.Zones.Clusters.Logging
import Gogol.Container.Projects.Zones.Clusters.Master
import Gogol.Container.Projects.Zones.Clusters.Monitoring
import Gogol.Container.Projects.Zones.Clusters.NodePools.Autoscaling
import Gogol.Container.Projects.Zones.Clusters.NodePools.Create
import Gogol.Container.Projects.Zones.Clusters.NodePools.Delete
import Gogol.Container.Projects.Zones.Clusters.NodePools.Get
import Gogol.Container.Projects.Zones.Clusters.NodePools.List
import Gogol.Container.Projects.Zones.Clusters.NodePools.Rollback
import Gogol.Container.Projects.Zones.Clusters.NodePools.SetManagement
import Gogol.Container.Projects.Zones.Clusters.NodePools.SetSize
import Gogol.Container.Projects.Zones.Clusters.NodePools.Update
import Gogol.Container.Projects.Zones.Clusters.ResourceLabels
import Gogol.Container.Projects.Zones.Clusters.SetMaintenancePolicy
import Gogol.Container.Projects.Zones.Clusters.SetMasterAuth
import Gogol.Container.Projects.Zones.Clusters.SetNetworkPolicy
import Gogol.Container.Projects.Zones.Clusters.StartIpRotation
import Gogol.Container.Projects.Zones.Clusters.Update
import Gogol.Container.Projects.Zones.GetServerconfig
import Gogol.Container.Projects.Zones.Operations.Cancel
import Gogol.Container.Projects.Zones.Operations.Get
import Gogol.Container.Projects.Zones.Operations.List
import Gogol.Container.Types
