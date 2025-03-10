{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Redis
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages Redis instances on the Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference>
module Gogol.Redis
  ( -- * Configuration
    redisService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** redis.projects.locations.backupCollections.backups.delete
    RedisProjectsLocationsBackupCollectionsBackupsDeleteResource,
    RedisProjectsLocationsBackupCollectionsBackupsDelete (..),
    newRedisProjectsLocationsBackupCollectionsBackupsDelete,

    -- ** redis.projects.locations.backupCollections.backups.export
    RedisProjectsLocationsBackupCollectionsBackupsExportResource,
    RedisProjectsLocationsBackupCollectionsBackupsExport (..),
    newRedisProjectsLocationsBackupCollectionsBackupsExport,

    -- ** redis.projects.locations.backupCollections.backups.get
    RedisProjectsLocationsBackupCollectionsBackupsGetResource,
    RedisProjectsLocationsBackupCollectionsBackupsGet (..),
    newRedisProjectsLocationsBackupCollectionsBackupsGet,

    -- ** redis.projects.locations.backupCollections.backups.list
    RedisProjectsLocationsBackupCollectionsBackupsListResource,
    RedisProjectsLocationsBackupCollectionsBackupsList (..),
    newRedisProjectsLocationsBackupCollectionsBackupsList,

    -- ** redis.projects.locations.backupCollections.get
    RedisProjectsLocationsBackupCollectionsGetResource,
    RedisProjectsLocationsBackupCollectionsGet (..),
    newRedisProjectsLocationsBackupCollectionsGet,

    -- ** redis.projects.locations.backupCollections.list
    RedisProjectsLocationsBackupCollectionsListResource,
    RedisProjectsLocationsBackupCollectionsList (..),
    newRedisProjectsLocationsBackupCollectionsList,

    -- ** redis.projects.locations.clusters.backup
    RedisProjectsLocationsClustersBackupResource,
    RedisProjectsLocationsClustersBackup (..),
    newRedisProjectsLocationsClustersBackup,

    -- ** redis.projects.locations.clusters.create
    RedisProjectsLocationsClustersCreateResource,
    RedisProjectsLocationsClustersCreate (..),
    newRedisProjectsLocationsClustersCreate,

    -- ** redis.projects.locations.clusters.delete
    RedisProjectsLocationsClustersDeleteResource,
    RedisProjectsLocationsClustersDelete (..),
    newRedisProjectsLocationsClustersDelete,

    -- ** redis.projects.locations.clusters.get
    RedisProjectsLocationsClustersGetResource,
    RedisProjectsLocationsClustersGet (..),
    newRedisProjectsLocationsClustersGet,

    -- ** redis.projects.locations.clusters.getCertificateAuthority
    RedisProjectsLocationsClustersGetCertificateAuthorityResource,
    RedisProjectsLocationsClustersGetCertificateAuthority (..),
    newRedisProjectsLocationsClustersGetCertificateAuthority,

    -- ** redis.projects.locations.clusters.list
    RedisProjectsLocationsClustersListResource,
    RedisProjectsLocationsClustersList (..),
    newRedisProjectsLocationsClustersList,

    -- ** redis.projects.locations.clusters.patch
    RedisProjectsLocationsClustersPatchResource,
    RedisProjectsLocationsClustersPatch (..),
    newRedisProjectsLocationsClustersPatch,

    -- ** redis.projects.locations.clusters.rescheduleClusterMaintenance
    RedisProjectsLocationsClustersRescheduleClusterMaintenanceResource,
    RedisProjectsLocationsClustersRescheduleClusterMaintenance (..),
    newRedisProjectsLocationsClustersRescheduleClusterMaintenance,

    -- ** redis.projects.locations.get
    RedisProjectsLocationsGetResource,
    RedisProjectsLocationsGet (..),
    newRedisProjectsLocationsGet,

    -- ** redis.projects.locations.instances.create
    RedisProjectsLocationsInstancesCreateResource,
    RedisProjectsLocationsInstancesCreate (..),
    newRedisProjectsLocationsInstancesCreate,

    -- ** redis.projects.locations.instances.delete
    RedisProjectsLocationsInstancesDeleteResource,
    RedisProjectsLocationsInstancesDelete (..),
    newRedisProjectsLocationsInstancesDelete,

    -- ** redis.projects.locations.instances.export
    RedisProjectsLocationsInstancesExportResource,
    RedisProjectsLocationsInstancesExport (..),
    newRedisProjectsLocationsInstancesExport,

    -- ** redis.projects.locations.instances.failover
    RedisProjectsLocationsInstancesFailoverResource,
    RedisProjectsLocationsInstancesFailover (..),
    newRedisProjectsLocationsInstancesFailover,

    -- ** redis.projects.locations.instances.get
    RedisProjectsLocationsInstancesGetResource,
    RedisProjectsLocationsInstancesGet (..),
    newRedisProjectsLocationsInstancesGet,

    -- ** redis.projects.locations.instances.getAuthString
    RedisProjectsLocationsInstancesGetAuthStringResource,
    RedisProjectsLocationsInstancesGetAuthString (..),
    newRedisProjectsLocationsInstancesGetAuthString,

    -- ** redis.projects.locations.instances.import
    RedisProjectsLocationsInstancesImportResource,
    RedisProjectsLocationsInstancesImport (..),
    newRedisProjectsLocationsInstancesImport,

    -- ** redis.projects.locations.instances.list
    RedisProjectsLocationsInstancesListResource,
    RedisProjectsLocationsInstancesList (..),
    newRedisProjectsLocationsInstancesList,

    -- ** redis.projects.locations.instances.patch
    RedisProjectsLocationsInstancesPatchResource,
    RedisProjectsLocationsInstancesPatch (..),
    newRedisProjectsLocationsInstancesPatch,

    -- ** redis.projects.locations.instances.rescheduleMaintenance
    RedisProjectsLocationsInstancesRescheduleMaintenanceResource,
    RedisProjectsLocationsInstancesRescheduleMaintenance (..),
    newRedisProjectsLocationsInstancesRescheduleMaintenance,

    -- ** redis.projects.locations.instances.upgrade
    RedisProjectsLocationsInstancesUpgradeResource,
    RedisProjectsLocationsInstancesUpgrade (..),
    newRedisProjectsLocationsInstancesUpgrade,

    -- ** redis.projects.locations.list
    RedisProjectsLocationsListResource,
    RedisProjectsLocationsList (..),
    newRedisProjectsLocationsList,

    -- ** redis.projects.locations.operations.cancel
    RedisProjectsLocationsOperationsCancelResource,
    RedisProjectsLocationsOperationsCancel (..),
    newRedisProjectsLocationsOperationsCancel,

    -- ** redis.projects.locations.operations.delete
    RedisProjectsLocationsOperationsDeleteResource,
    RedisProjectsLocationsOperationsDelete (..),
    newRedisProjectsLocationsOperationsDelete,

    -- ** redis.projects.locations.operations.get
    RedisProjectsLocationsOperationsGetResource,
    RedisProjectsLocationsOperationsGet (..),
    newRedisProjectsLocationsOperationsGet,

    -- ** redis.projects.locations.operations.list
    RedisProjectsLocationsOperationsListResource,
    RedisProjectsLocationsOperationsList (..),
    newRedisProjectsLocationsOperationsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AOFConfig
    AOFConfig (..),
    newAOFConfig,

    -- ** AOFConfig_AppendFsync
    AOFConfig_AppendFsync (..),

    -- ** AutomatedBackupConfig
    AutomatedBackupConfig (..),
    newAutomatedBackupConfig,

    -- ** AutomatedBackupConfig_AutomatedBackupMode
    AutomatedBackupConfig_AutomatedBackupMode (..),

    -- ** AvailabilityConfiguration
    AvailabilityConfiguration (..),
    newAvailabilityConfiguration,

    -- ** AvailabilityConfiguration_AvailabilityType
    AvailabilityConfiguration_AvailabilityType (..),

    -- ** Backup
    Backup (..),
    newBackup,

    -- ** Backup_BackupType
    Backup_BackupType (..),

    -- ** Backup_NodeType
    Backup_NodeType (..),

    -- ** Backup_State
    Backup_State (..),

    -- ** BackupClusterRequest
    BackupClusterRequest (..),
    newBackupClusterRequest,

    -- ** BackupCollection
    BackupCollection (..),
    newBackupCollection,

    -- ** BackupConfiguration
    BackupConfiguration (..),
    newBackupConfiguration,

    -- ** BackupFile
    BackupFile (..),
    newBackupFile,

    -- ** BackupRun
    BackupRun (..),
    newBackupRun,

    -- ** BackupRun_Status
    BackupRun_Status (..),

    -- ** CertChain
    CertChain (..),
    newCertChain,

    -- ** CertificateAuthority
    CertificateAuthority (..),
    newCertificateAuthority,

    -- ** Cluster
    Cluster (..),
    newCluster,

    -- ** Cluster_AuthorizationMode
    Cluster_AuthorizationMode (..),

    -- ** Cluster_NodeType
    Cluster_NodeType (..),

    -- ** Cluster_RedisConfigs
    Cluster_RedisConfigs (..),
    newCluster_RedisConfigs,

    -- ** Cluster_State
    Cluster_State (..),

    -- ** Cluster_TransitEncryptionMode
    Cluster_TransitEncryptionMode (..),

    -- ** ClusterEndpoint
    ClusterEndpoint (..),
    newClusterEndpoint,

    -- ** ClusterMaintenancePolicy
    ClusterMaintenancePolicy (..),
    newClusterMaintenancePolicy,

    -- ** ClusterMaintenanceSchedule
    ClusterMaintenanceSchedule (..),
    newClusterMaintenanceSchedule,

    -- ** ClusterPersistenceConfig
    ClusterPersistenceConfig (..),
    newClusterPersistenceConfig,

    -- ** ClusterPersistenceConfig_Mode
    ClusterPersistenceConfig_Mode (..),

    -- ** ClusterWeeklyMaintenanceWindow
    ClusterWeeklyMaintenanceWindow (..),
    newClusterWeeklyMaintenanceWindow,

    -- ** ClusterWeeklyMaintenanceWindow_Day
    ClusterWeeklyMaintenanceWindow_Day (..),

    -- ** Compliance
    Compliance (..),
    newCompliance,

    -- ** ConnectionDetail
    ConnectionDetail (..),
    newConnectionDetail,

    -- ** CrossClusterReplicationConfig
    CrossClusterReplicationConfig (..),
    newCrossClusterReplicationConfig,

    -- ** CrossClusterReplicationConfig_ClusterRole
    CrossClusterReplicationConfig_ClusterRole (..),

    -- ** CustomMetadataData
    CustomMetadataData (..),
    newCustomMetadataData,

    -- ** DatabaseResourceFeed
    DatabaseResourceFeed (..),
    newDatabaseResourceFeed,

    -- ** DatabaseResourceFeed_FeedType
    DatabaseResourceFeed_FeedType (..),

    -- ** DatabaseResourceHealthSignalData
    DatabaseResourceHealthSignalData (..),
    newDatabaseResourceHealthSignalData,

    -- ** DatabaseResourceHealthSignalData_AdditionalMetadata
    DatabaseResourceHealthSignalData_AdditionalMetadata (..),
    newDatabaseResourceHealthSignalData_AdditionalMetadata,

    -- ** DatabaseResourceHealthSignalData_Provider
    DatabaseResourceHealthSignalData_Provider (..),

    -- ** DatabaseResourceHealthSignalData_SignalClass
    DatabaseResourceHealthSignalData_SignalClass (..),

    -- ** DatabaseResourceHealthSignalData_SignalSeverity
    DatabaseResourceHealthSignalData_SignalSeverity (..),

    -- ** DatabaseResourceHealthSignalData_SignalType
    DatabaseResourceHealthSignalData_SignalType (..),

    -- ** DatabaseResourceHealthSignalData_State
    DatabaseResourceHealthSignalData_State (..),

    -- ** DatabaseResourceId
    DatabaseResourceId (..),
    newDatabaseResourceId,

    -- ** DatabaseResourceId_Provider
    DatabaseResourceId_Provider (..),

    -- ** DatabaseResourceMetadata
    DatabaseResourceMetadata (..),
    newDatabaseResourceMetadata,

    -- ** DatabaseResourceMetadata_CurrentState
    DatabaseResourceMetadata_CurrentState (..),

    -- ** DatabaseResourceMetadata_Edition
    DatabaseResourceMetadata_Edition (..),

    -- ** DatabaseResourceMetadata_ExpectedState
    DatabaseResourceMetadata_ExpectedState (..),

    -- ** DatabaseResourceMetadata_InstanceType
    DatabaseResourceMetadata_InstanceType (..),

    -- ** DatabaseResourceMetadata_SuspensionReason
    DatabaseResourceMetadata_SuspensionReason (..),

    -- ** DatabaseResourceRecommendationSignalData
    DatabaseResourceRecommendationSignalData (..),
    newDatabaseResourceRecommendationSignalData,

    -- ** DatabaseResourceRecommendationSignalData_AdditionalMetadata
    DatabaseResourceRecommendationSignalData_AdditionalMetadata (..),
    newDatabaseResourceRecommendationSignalData_AdditionalMetadata,

    -- ** DatabaseResourceRecommendationSignalData_RecommendationState
    DatabaseResourceRecommendationSignalData_RecommendationState (..),

    -- ** DatabaseResourceRecommendationSignalData_SignalType
    DatabaseResourceRecommendationSignalData_SignalType (..),

    -- ** DiscoveryEndpoint
    DiscoveryEndpoint (..),
    newDiscoveryEndpoint,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EncryptionInfo
    EncryptionInfo (..),
    newEncryptionInfo,

    -- ** EncryptionInfo_EncryptionType
    EncryptionInfo_EncryptionType (..),

    -- ** EncryptionInfo_KmsKeyPrimaryState
    EncryptionInfo_KmsKeyPrimaryState (..),

    -- ** Entitlement
    Entitlement (..),
    newEntitlement,

    -- ** Entitlement_EntitlementState
    Entitlement_EntitlementState (..),

    -- ** Entitlement_Type
    Entitlement_Type (..),

    -- ** ExportBackupRequest
    ExportBackupRequest (..),
    newExportBackupRequest,

    -- ** ExportInstanceRequest
    ExportInstanceRequest (..),
    newExportInstanceRequest,

    -- ** FailoverInstanceRequest
    FailoverInstanceRequest (..),
    newFailoverInstanceRequest,

    -- ** FailoverInstanceRequest_DataProtectionMode
    FailoverInstanceRequest_DataProtectionMode (..),

    -- ** FixedFrequencySchedule
    FixedFrequencySchedule (..),
    newFixedFrequencySchedule,

    -- ** GCBDRConfiguration
    GCBDRConfiguration (..),
    newGCBDRConfiguration,

    -- ** GcsBackupSource
    GcsBackupSource (..),
    newGcsBackupSource,

    -- ** GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- ** GcsSource
    GcsSource (..),
    newGcsSource,

    -- ** GoogleCloudRedisV1LocationMetadata
    GoogleCloudRedisV1LocationMetadata (..),
    newGoogleCloudRedisV1LocationMetadata,

    -- ** GoogleCloudRedisV1LocationMetadata_AvailableZones
    GoogleCloudRedisV1LocationMetadata_AvailableZones (..),
    newGoogleCloudRedisV1LocationMetadata_AvailableZones,

    -- ** GoogleCloudRedisV1OperationMetadata
    GoogleCloudRedisV1OperationMetadata (..),
    newGoogleCloudRedisV1OperationMetadata,

    -- ** GoogleCloudRedisV1ZoneMetadata
    GoogleCloudRedisV1ZoneMetadata (..),
    newGoogleCloudRedisV1ZoneMetadata,

    -- ** ImportInstanceRequest
    ImportInstanceRequest (..),
    newImportInstanceRequest,

    -- ** InputConfig
    InputConfig (..),
    newInputConfig,

    -- ** Instance
    Instance (..),
    newInstance,

    -- ** Instance_ConnectMode
    Instance_ConnectMode (..),

    -- ** Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- ** Instance_ReadReplicasMode
    Instance_ReadReplicasMode (..),

    -- ** Instance_RedisConfigs
    Instance_RedisConfigs (..),
    newInstance_RedisConfigs,

    -- ** Instance_State
    Instance_State (..),

    -- ** Instance_SuspensionReasonsItem
    Instance_SuspensionReasonsItem (..),

    -- ** Instance_Tier
    Instance_Tier (..),

    -- ** Instance_TransitEncryptionMode
    Instance_TransitEncryptionMode (..),

    -- ** InstanceAuthString
    InstanceAuthString (..),
    newInstanceAuthString,

    -- ** InternalResourceMetadata
    InternalResourceMetadata (..),
    newInternalResourceMetadata,

    -- ** ListBackupCollectionsResponse
    ListBackupCollectionsResponse (..),
    newListBackupCollectionsResponse,

    -- ** ListBackupsResponse
    ListBackupsResponse (..),
    newListBackupsResponse,

    -- ** ListClustersResponse
    ListClustersResponse (..),
    newListClustersResponse,

    -- ** ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** MachineConfiguration
    MachineConfiguration (..),
    newMachineConfiguration,

    -- ** MaintenancePolicy
    MaintenancePolicy (..),
    newMaintenancePolicy,

    -- ** MaintenanceSchedule
    MaintenanceSchedule (..),
    newMaintenanceSchedule,

    -- ** ManagedBackupSource
    ManagedBackupSource (..),
    newManagedBackupSource,

    -- ** ManagedCertificateAuthority
    ManagedCertificateAuthority (..),
    newManagedCertificateAuthority,

    -- ** Membership
    Membership (..),
    newMembership,

    -- ** NodeInfo
    NodeInfo (..),
    newNodeInfo,

    -- ** ObservabilityMetricData
    ObservabilityMetricData (..),
    newObservabilityMetricData,

    -- ** ObservabilityMetricData_AggregationType
    ObservabilityMetricData_AggregationType (..),

    -- ** ObservabilityMetricData_MetricType
    ObservabilityMetricData_MetricType (..),

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationError
    OperationError (..),
    newOperationError,

    -- ** OperationError_ErrorType
    OperationError_ErrorType (..),

    -- ** OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- ** OutputConfig
    OutputConfig (..),
    newOutputConfig,

    -- ** PersistenceConfig
    PersistenceConfig (..),
    newPersistenceConfig,

    -- ** PersistenceConfig_PersistenceMode
    PersistenceConfig_PersistenceMode (..),

    -- ** PersistenceConfig_RdbSnapshotPeriod
    PersistenceConfig_RdbSnapshotPeriod (..),

    -- ** Product
    Product (..),
    newProduct,

    -- ** Product_Engine
    Product_Engine (..),

    -- ** Product_Type
    Product_Type (..),

    -- ** PscAutoConnection
    PscAutoConnection (..),
    newPscAutoConnection,

    -- ** PscAutoConnection_ConnectionType
    PscAutoConnection_ConnectionType (..),

    -- ** PscAutoConnection_PscConnectionStatus
    PscAutoConnection_PscConnectionStatus (..),

    -- ** PscConfig
    PscConfig (..),
    newPscConfig,

    -- ** PscConnection
    PscConnection (..),
    newPscConnection,

    -- ** PscConnection_ConnectionType
    PscConnection_ConnectionType (..),

    -- ** PscConnection_PscConnectionStatus
    PscConnection_PscConnectionStatus (..),

    -- ** PscServiceAttachment
    PscServiceAttachment (..),
    newPscServiceAttachment,

    -- ** PscServiceAttachment_ConnectionType
    PscServiceAttachment_ConnectionType (..),

    -- ** RDBConfig
    RDBConfig (..),
    newRDBConfig,

    -- ** RDBConfig_RdbSnapshotPeriod
    RDBConfig_RdbSnapshotPeriod (..),

    -- ** ReconciliationOperationMetadata
    ReconciliationOperationMetadata (..),
    newReconciliationOperationMetadata,

    -- ** ReconciliationOperationMetadata_ExclusiveAction
    ReconciliationOperationMetadata_ExclusiveAction (..),

    -- ** RemoteCluster
    RemoteCluster (..),
    newRemoteCluster,

    -- ** RescheduleClusterMaintenanceRequest
    RescheduleClusterMaintenanceRequest (..),
    newRescheduleClusterMaintenanceRequest,

    -- ** RescheduleClusterMaintenanceRequest_RescheduleType
    RescheduleClusterMaintenanceRequest_RescheduleType (..),

    -- ** RescheduleMaintenanceRequest
    RescheduleMaintenanceRequest (..),
    newRescheduleMaintenanceRequest,

    -- ** RescheduleMaintenanceRequest_RescheduleType
    RescheduleMaintenanceRequest_RescheduleType (..),

    -- ** RetentionSettings
    RetentionSettings (..),
    newRetentionSettings,

    -- ** RetentionSettings_RetentionUnit
    RetentionSettings_RetentionUnit (..),

    -- ** StateInfo
    StateInfo (..),
    newStateInfo,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Tags
    Tags (..),
    newTags,

    -- ** Tags_Tags
    Tags_Tags (..),
    newTags_Tags,

    -- ** TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- ** TlsCertificate
    TlsCertificate (..),
    newTlsCertificate,

    -- ** TypedValue
    TypedValue (..),
    newTypedValue,

    -- ** UpdateInfo
    UpdateInfo (..),
    newUpdateInfo,

    -- ** UpdateInfo_TargetNodeType
    UpdateInfo_TargetNodeType (..),

    -- ** UpgradeInstanceRequest
    UpgradeInstanceRequest (..),
    newUpgradeInstanceRequest,

    -- ** UserLabels
    UserLabels (..),
    newUserLabels,

    -- ** UserLabels_Labels
    UserLabels_Labels (..),
    newUserLabels_Labels,

    -- ** WeeklyMaintenanceWindow
    WeeklyMaintenanceWindow (..),
    newWeeklyMaintenanceWindow,

    -- ** WeeklyMaintenanceWindow_Day
    WeeklyMaintenanceWindow_Day (..),

    -- ** ZoneDistributionConfig
    ZoneDistributionConfig (..),
    newZoneDistributionConfig,

    -- ** ZoneDistributionConfig_Mode
    ZoneDistributionConfig_Mode (..),
  )
where

import Gogol.Redis.Projects.Locations.BackupCollections.Backups.Delete
import Gogol.Redis.Projects.Locations.BackupCollections.Backups.Export
import Gogol.Redis.Projects.Locations.BackupCollections.Backups.Get
import Gogol.Redis.Projects.Locations.BackupCollections.Backups.List
import Gogol.Redis.Projects.Locations.BackupCollections.Get
import Gogol.Redis.Projects.Locations.BackupCollections.List
import Gogol.Redis.Projects.Locations.Clusters.Backup
import Gogol.Redis.Projects.Locations.Clusters.Create
import Gogol.Redis.Projects.Locations.Clusters.Delete
import Gogol.Redis.Projects.Locations.Clusters.Get
import Gogol.Redis.Projects.Locations.Clusters.GetCertificateAuthority
import Gogol.Redis.Projects.Locations.Clusters.List
import Gogol.Redis.Projects.Locations.Clusters.Patch
import Gogol.Redis.Projects.Locations.Clusters.RescheduleClusterMaintenance
import Gogol.Redis.Projects.Locations.Get
import Gogol.Redis.Projects.Locations.Instances.Create
import Gogol.Redis.Projects.Locations.Instances.Delete
import Gogol.Redis.Projects.Locations.Instances.Export
import Gogol.Redis.Projects.Locations.Instances.Failover
import Gogol.Redis.Projects.Locations.Instances.Get
import Gogol.Redis.Projects.Locations.Instances.GetAuthString
import Gogol.Redis.Projects.Locations.Instances.Import
import Gogol.Redis.Projects.Locations.Instances.List
import Gogol.Redis.Projects.Locations.Instances.Patch
import Gogol.Redis.Projects.Locations.Instances.RescheduleMaintenance
import Gogol.Redis.Projects.Locations.Instances.Upgrade
import Gogol.Redis.Projects.Locations.List
import Gogol.Redis.Projects.Locations.Operations.Cancel
import Gogol.Redis.Projects.Locations.Operations.Delete
import Gogol.Redis.Projects.Locations.Operations.Get
import Gogol.Redis.Projects.Locations.Operations.List
import Gogol.Redis.Types
