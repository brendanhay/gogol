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
-- Module      : Gogol.Redis.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Redis.Types
  ( -- * Configuration
    redisService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

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

import Gogol.Prelude qualified as Core
import Gogol.Redis.Internal.Product
import Gogol.Redis.Internal.Sum

-- | Default request referring to version @v1@ of the Google Cloud Memorystore for Redis API. This contains the host and root path used as a starting point for constructing service requests.
redisService :: Core.ServiceConfig
redisService =
  Core.defaultService
    (Core.ServiceId "redis:v1")
    "redis.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
