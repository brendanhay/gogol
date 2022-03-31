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
    newContainerProjectsAggregatedUsableSubnetworksList,
    ContainerProjectsAggregatedUsableSubnetworksList,

    -- ** container.projects.locations.clusters.completeIpRotation
    ContainerProjectsLocationsClustersCompleteIpRotationResource,
    newContainerProjectsLocationsClustersCompleteIpRotation,
    ContainerProjectsLocationsClustersCompleteIpRotation,

    -- ** container.projects.locations.clusters.create
    ContainerProjectsLocationsClustersCreateResource,
    newContainerProjectsLocationsClustersCreate,
    ContainerProjectsLocationsClustersCreate,

    -- ** container.projects.locations.clusters.delete
    ContainerProjectsLocationsClustersDeleteResource,
    newContainerProjectsLocationsClustersDelete,
    ContainerProjectsLocationsClustersDelete,

    -- ** container.projects.locations.clusters.get
    ContainerProjectsLocationsClustersGetResource,
    newContainerProjectsLocationsClustersGet,
    ContainerProjectsLocationsClustersGet,

    -- ** container.projects.locations.clusters.getJwks
    ContainerProjectsLocationsClustersGetJwksResource,
    newContainerProjectsLocationsClustersGetJwks,
    ContainerProjectsLocationsClustersGetJwks,

    -- ** container.projects.locations.clusters.list
    ContainerProjectsLocationsClustersListResource,
    newContainerProjectsLocationsClustersList,
    ContainerProjectsLocationsClustersList,

    -- ** container.projects.locations.clusters.nodePools.create
    ContainerProjectsLocationsClustersNodePoolsCreateResource,
    newContainerProjectsLocationsClustersNodePoolsCreate,
    ContainerProjectsLocationsClustersNodePoolsCreate,

    -- ** container.projects.locations.clusters.nodePools.delete
    ContainerProjectsLocationsClustersNodePoolsDeleteResource,
    newContainerProjectsLocationsClustersNodePoolsDelete,
    ContainerProjectsLocationsClustersNodePoolsDelete,

    -- ** container.projects.locations.clusters.nodePools.get
    ContainerProjectsLocationsClustersNodePoolsGetResource,
    newContainerProjectsLocationsClustersNodePoolsGet,
    ContainerProjectsLocationsClustersNodePoolsGet,

    -- ** container.projects.locations.clusters.nodePools.list
    ContainerProjectsLocationsClustersNodePoolsListResource,
    newContainerProjectsLocationsClustersNodePoolsList,
    ContainerProjectsLocationsClustersNodePoolsList,

    -- ** container.projects.locations.clusters.nodePools.rollback
    ContainerProjectsLocationsClustersNodePoolsRollbackResource,
    newContainerProjectsLocationsClustersNodePoolsRollback,
    ContainerProjectsLocationsClustersNodePoolsRollback,

    -- ** container.projects.locations.clusters.nodePools.setAutoscaling
    ContainerProjectsLocationsClustersNodePoolsSetAutoscalingResource,
    newContainerProjectsLocationsClustersNodePoolsSetAutoscaling,
    ContainerProjectsLocationsClustersNodePoolsSetAutoscaling,

    -- ** container.projects.locations.clusters.nodePools.setManagement
    ContainerProjectsLocationsClustersNodePoolsSetManagementResource,
    newContainerProjectsLocationsClustersNodePoolsSetManagement,
    ContainerProjectsLocationsClustersNodePoolsSetManagement,

    -- ** container.projects.locations.clusters.nodePools.setSize
    ContainerProjectsLocationsClustersNodePoolsSetSizeResource,
    newContainerProjectsLocationsClustersNodePoolsSetSize,
    ContainerProjectsLocationsClustersNodePoolsSetSize,

    -- ** container.projects.locations.clusters.nodePools.update
    ContainerProjectsLocationsClustersNodePoolsUpdateResource,
    newContainerProjectsLocationsClustersNodePoolsUpdate,
    ContainerProjectsLocationsClustersNodePoolsUpdate,

    -- ** container.projects.locations.clusters.setAddons
    ContainerProjectsLocationsClustersSetAddonsResource,
    newContainerProjectsLocationsClustersSetAddons,
    ContainerProjectsLocationsClustersSetAddons,

    -- ** container.projects.locations.clusters.setLegacyAbac
    ContainerProjectsLocationsClustersSetLegacyAbacResource,
    newContainerProjectsLocationsClustersSetLegacyAbac,
    ContainerProjectsLocationsClustersSetLegacyAbac,

    -- ** container.projects.locations.clusters.setLocations
    ContainerProjectsLocationsClustersSetLocationsResource,
    newContainerProjectsLocationsClustersSetLocations,
    ContainerProjectsLocationsClustersSetLocations,

    -- ** container.projects.locations.clusters.setLogging
    ContainerProjectsLocationsClustersSetLoggingResource,
    newContainerProjectsLocationsClustersSetLogging,
    ContainerProjectsLocationsClustersSetLogging,

    -- ** container.projects.locations.clusters.setMaintenancePolicy
    ContainerProjectsLocationsClustersSetMaintenancePolicyResource,
    newContainerProjectsLocationsClustersSetMaintenancePolicy,
    ContainerProjectsLocationsClustersSetMaintenancePolicy,

    -- ** container.projects.locations.clusters.setMasterAuth
    ContainerProjectsLocationsClustersSetMasterAuthResource,
    newContainerProjectsLocationsClustersSetMasterAuth,
    ContainerProjectsLocationsClustersSetMasterAuth,

    -- ** container.projects.locations.clusters.setMonitoring
    ContainerProjectsLocationsClustersSetMonitoringResource,
    newContainerProjectsLocationsClustersSetMonitoring,
    ContainerProjectsLocationsClustersSetMonitoring,

    -- ** container.projects.locations.clusters.setNetworkPolicy
    ContainerProjectsLocationsClustersSetNetworkPolicyResource,
    newContainerProjectsLocationsClustersSetNetworkPolicy,
    ContainerProjectsLocationsClustersSetNetworkPolicy,

    -- ** container.projects.locations.clusters.setResourceLabels
    ContainerProjectsLocationsClustersSetResourceLabelsResource,
    newContainerProjectsLocationsClustersSetResourceLabels,
    ContainerProjectsLocationsClustersSetResourceLabels,

    -- ** container.projects.locations.clusters.startIpRotation
    ContainerProjectsLocationsClustersStartIpRotationResource,
    newContainerProjectsLocationsClustersStartIpRotation,
    ContainerProjectsLocationsClustersStartIpRotation,

    -- ** container.projects.locations.clusters.update
    ContainerProjectsLocationsClustersUpdateResource,
    newContainerProjectsLocationsClustersUpdate,
    ContainerProjectsLocationsClustersUpdate,

    -- ** container.projects.locations.clusters.updateMaster
    ContainerProjectsLocationsClustersUpdateMasterResource,
    newContainerProjectsLocationsClustersUpdateMaster,
    ContainerProjectsLocationsClustersUpdateMaster,

    -- ** container.projects.locations.clusters.wellknown.getOpenidconfiguration
    ContainerProjectsLocationsClustersWellknownGetOpenidconfigurationResource,
    newContainerProjectsLocationsClustersWellknownGetOpenidconfiguration,
    ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration,

    -- ** container.projects.locations.getServerConfig
    ContainerProjectsLocationsGetServerConfigResource,
    newContainerProjectsLocationsGetServerConfig,
    ContainerProjectsLocationsGetServerConfig,

    -- ** container.projects.locations.operations.cancel
    ContainerProjectsLocationsOperationsCancelResource,
    newContainerProjectsLocationsOperationsCancel,
    ContainerProjectsLocationsOperationsCancel,

    -- ** container.projects.locations.operations.get
    ContainerProjectsLocationsOperationsGetResource,
    newContainerProjectsLocationsOperationsGet,
    ContainerProjectsLocationsOperationsGet,

    -- ** container.projects.locations.operations.list
    ContainerProjectsLocationsOperationsListResource,
    newContainerProjectsLocationsOperationsList,
    ContainerProjectsLocationsOperationsList,

    -- ** container.projects.zones.clusters.addons
    ContainerProjectsZonesClustersAddonsResource,
    newContainerProjectsZonesClustersAddons,
    ContainerProjectsZonesClustersAddons,

    -- ** container.projects.zones.clusters.completeIpRotation
    ContainerProjectsZonesClustersCompleteIpRotationResource,
    newContainerProjectsZonesClustersCompleteIpRotation,
    ContainerProjectsZonesClustersCompleteIpRotation,

    -- ** container.projects.zones.clusters.create
    ContainerProjectsZonesClustersCreateResource,
    newContainerProjectsZonesClustersCreate,
    ContainerProjectsZonesClustersCreate,

    -- ** container.projects.zones.clusters.delete
    ContainerProjectsZonesClustersDeleteResource,
    newContainerProjectsZonesClustersDelete,
    ContainerProjectsZonesClustersDelete,

    -- ** container.projects.zones.clusters.get
    ContainerProjectsZonesClustersGetResource,
    newContainerProjectsZonesClustersGet,
    ContainerProjectsZonesClustersGet,

    -- ** container.projects.zones.clusters.legacyAbac
    ContainerProjectsZonesClustersLegacyAbacResource,
    newContainerProjectsZonesClustersLegacyAbac,
    ContainerProjectsZonesClustersLegacyAbac,

    -- ** container.projects.zones.clusters.list
    ContainerProjectsZonesClustersListResource,
    newContainerProjectsZonesClustersList,
    ContainerProjectsZonesClustersList,

    -- ** container.projects.zones.clusters.locations
    ContainerProjectsZonesClustersLocationsResource,
    newContainerProjectsZonesClustersLocations,
    ContainerProjectsZonesClustersLocations,

    -- ** container.projects.zones.clusters.logging
    ContainerProjectsZonesClustersLoggingResource,
    newContainerProjectsZonesClustersLogging,
    ContainerProjectsZonesClustersLogging,

    -- ** container.projects.zones.clusters.master
    ContainerProjectsZonesClustersMasterResource,
    newContainerProjectsZonesClustersMaster,
    ContainerProjectsZonesClustersMaster,

    -- ** container.projects.zones.clusters.monitoring
    ContainerProjectsZonesClustersMonitoringResource,
    newContainerProjectsZonesClustersMonitoring,
    ContainerProjectsZonesClustersMonitoring,

    -- ** container.projects.zones.clusters.nodePools.autoscaling
    ContainerProjectsZonesClustersNodePoolsAutoscalingResource,
    newContainerProjectsZonesClustersNodePoolsAutoscaling,
    ContainerProjectsZonesClustersNodePoolsAutoscaling,

    -- ** container.projects.zones.clusters.nodePools.create
    ContainerProjectsZonesClustersNodePoolsCreateResource,
    newContainerProjectsZonesClustersNodePoolsCreate,
    ContainerProjectsZonesClustersNodePoolsCreate,

    -- ** container.projects.zones.clusters.nodePools.delete
    ContainerProjectsZonesClustersNodePoolsDeleteResource,
    newContainerProjectsZonesClustersNodePoolsDelete,
    ContainerProjectsZonesClustersNodePoolsDelete,

    -- ** container.projects.zones.clusters.nodePools.get
    ContainerProjectsZonesClustersNodePoolsGetResource,
    newContainerProjectsZonesClustersNodePoolsGet,
    ContainerProjectsZonesClustersNodePoolsGet,

    -- ** container.projects.zones.clusters.nodePools.list
    ContainerProjectsZonesClustersNodePoolsListResource,
    newContainerProjectsZonesClustersNodePoolsList,
    ContainerProjectsZonesClustersNodePoolsList,

    -- ** container.projects.zones.clusters.nodePools.rollback
    ContainerProjectsZonesClustersNodePoolsRollbackResource,
    newContainerProjectsZonesClustersNodePoolsRollback,
    ContainerProjectsZonesClustersNodePoolsRollback,

    -- ** container.projects.zones.clusters.nodePools.setManagement
    ContainerProjectsZonesClustersNodePoolsSetManagementResource,
    newContainerProjectsZonesClustersNodePoolsSetManagement,
    ContainerProjectsZonesClustersNodePoolsSetManagement,

    -- ** container.projects.zones.clusters.nodePools.setSize
    ContainerProjectsZonesClustersNodePoolsSetSizeResource,
    newContainerProjectsZonesClustersNodePoolsSetSize,
    ContainerProjectsZonesClustersNodePoolsSetSize,

    -- ** container.projects.zones.clusters.nodePools.update
    ContainerProjectsZonesClustersNodePoolsUpdateResource,
    newContainerProjectsZonesClustersNodePoolsUpdate,
    ContainerProjectsZonesClustersNodePoolsUpdate,

    -- ** container.projects.zones.clusters.resourceLabels
    ContainerProjectsZonesClustersResourceLabelsResource,
    newContainerProjectsZonesClustersResourceLabels,
    ContainerProjectsZonesClustersResourceLabels,

    -- ** container.projects.zones.clusters.setMaintenancePolicy
    ContainerProjectsZonesClustersSetMaintenancePolicyResource,
    newContainerProjectsZonesClustersSetMaintenancePolicy,
    ContainerProjectsZonesClustersSetMaintenancePolicy,

    -- ** container.projects.zones.clusters.setMasterAuth
    ContainerProjectsZonesClustersSetMasterAuthResource,
    newContainerProjectsZonesClustersSetMasterAuth,
    ContainerProjectsZonesClustersSetMasterAuth,

    -- ** container.projects.zones.clusters.setNetworkPolicy
    ContainerProjectsZonesClustersSetNetworkPolicyResource,
    newContainerProjectsZonesClustersSetNetworkPolicy,
    ContainerProjectsZonesClustersSetNetworkPolicy,

    -- ** container.projects.zones.clusters.startIpRotation
    ContainerProjectsZonesClustersStartIpRotationResource,
    newContainerProjectsZonesClustersStartIpRotation,
    ContainerProjectsZonesClustersStartIpRotation,

    -- ** container.projects.zones.clusters.update
    ContainerProjectsZonesClustersUpdateResource,
    newContainerProjectsZonesClustersUpdate,
    ContainerProjectsZonesClustersUpdate,

    -- ** container.projects.zones.getServerconfig
    ContainerProjectsZonesGetServerconfigResource,
    newContainerProjectsZonesGetServerconfig,
    ContainerProjectsZonesGetServerconfig,

    -- ** container.projects.zones.operations.cancel
    ContainerProjectsZonesOperationsCancelResource,
    newContainerProjectsZonesOperationsCancel,
    ContainerProjectsZonesOperationsCancel,

    -- ** container.projects.zones.operations.get
    ContainerProjectsZonesOperationsGetResource,
    newContainerProjectsZonesOperationsGet,
    ContainerProjectsZonesOperationsGet,

    -- ** container.projects.zones.operations.list
    ContainerProjectsZonesOperationsListResource,
    newContainerProjectsZonesOperationsList,
    ContainerProjectsZonesOperationsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

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

    -- ** CompleteIPRotationRequest
    CompleteIPRotationRequest (..),
    newCompleteIPRotationRequest,

    -- ** ConfidentialNodes
    ConfidentialNodes (..),
    newConfidentialNodes,

    -- ** ConfigConnectorConfig
    ConfigConnectorConfig (..),
    newConfigConnectorConfig,

    -- ** ConsumptionMeteringConfig
    ConsumptionMeteringConfig (..),
    newConsumptionMeteringConfig,

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

    -- ** Filter
    Filter (..),
    newFilter,

    -- ** Filter_EventTypeItem
    Filter_EventTypeItem (..),

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

    -- ** LoggingComponentConfig
    LoggingComponentConfig (..),
    newLoggingComponentConfig,

    -- ** LoggingComponentConfig_EnableComponentsItem
    LoggingComponentConfig_EnableComponentsItem (..),

    -- ** LoggingConfig
    LoggingConfig (..),
    newLoggingConfig,

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

    -- ** NodeConfigDefaults
    NodeConfigDefaults (..),
    newNodeConfigDefaults,

    -- ** NodeKubeletConfig
    NodeKubeletConfig (..),
    newNodeKubeletConfig,

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

    -- ** NodePoolDefaults
    NodePoolDefaults (..),
    newNodePoolDefaults,

    -- ** NodeTaint
    NodeTaint (..),
    newNodeTaint,

    -- ** NodeTaint_Effect
    NodeTaint_Effect (..),

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
