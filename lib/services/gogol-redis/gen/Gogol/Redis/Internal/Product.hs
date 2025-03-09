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
-- Module      : Gogol.Redis.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Redis.Internal.Product
  ( -- * AOFConfig
    AOFConfig (..),
    newAOFConfig,

    -- * AutomatedBackupConfig
    AutomatedBackupConfig (..),
    newAutomatedBackupConfig,

    -- * AvailabilityConfiguration
    AvailabilityConfiguration (..),
    newAvailabilityConfiguration,

    -- * Backup
    Backup (..),
    newBackup,

    -- * BackupClusterRequest
    BackupClusterRequest (..),
    newBackupClusterRequest,

    -- * BackupCollection
    BackupCollection (..),
    newBackupCollection,

    -- * BackupConfiguration
    BackupConfiguration (..),
    newBackupConfiguration,

    -- * BackupFile
    BackupFile (..),
    newBackupFile,

    -- * BackupRun
    BackupRun (..),
    newBackupRun,

    -- * CertChain
    CertChain (..),
    newCertChain,

    -- * CertificateAuthority
    CertificateAuthority (..),
    newCertificateAuthority,

    -- * Cluster
    Cluster (..),
    newCluster,

    -- * Cluster_RedisConfigs
    Cluster_RedisConfigs (..),
    newCluster_RedisConfigs,

    -- * ClusterEndpoint
    ClusterEndpoint (..),
    newClusterEndpoint,

    -- * ClusterMaintenancePolicy
    ClusterMaintenancePolicy (..),
    newClusterMaintenancePolicy,

    -- * ClusterMaintenanceSchedule
    ClusterMaintenanceSchedule (..),
    newClusterMaintenanceSchedule,

    -- * ClusterPersistenceConfig
    ClusterPersistenceConfig (..),
    newClusterPersistenceConfig,

    -- * ClusterWeeklyMaintenanceWindow
    ClusterWeeklyMaintenanceWindow (..),
    newClusterWeeklyMaintenanceWindow,

    -- * Compliance
    Compliance (..),
    newCompliance,

    -- * ConnectionDetail
    ConnectionDetail (..),
    newConnectionDetail,

    -- * CrossClusterReplicationConfig
    CrossClusterReplicationConfig (..),
    newCrossClusterReplicationConfig,

    -- * CustomMetadataData
    CustomMetadataData (..),
    newCustomMetadataData,

    -- * DatabaseResourceFeed
    DatabaseResourceFeed (..),
    newDatabaseResourceFeed,

    -- * DatabaseResourceHealthSignalData
    DatabaseResourceHealthSignalData (..),
    newDatabaseResourceHealthSignalData,

    -- * DatabaseResourceHealthSignalData_AdditionalMetadata
    DatabaseResourceHealthSignalData_AdditionalMetadata (..),
    newDatabaseResourceHealthSignalData_AdditionalMetadata,

    -- * DatabaseResourceId
    DatabaseResourceId (..),
    newDatabaseResourceId,

    -- * DatabaseResourceMetadata
    DatabaseResourceMetadata (..),
    newDatabaseResourceMetadata,

    -- * DatabaseResourceRecommendationSignalData
    DatabaseResourceRecommendationSignalData (..),
    newDatabaseResourceRecommendationSignalData,

    -- * DatabaseResourceRecommendationSignalData_AdditionalMetadata
    DatabaseResourceRecommendationSignalData_AdditionalMetadata (..),
    newDatabaseResourceRecommendationSignalData_AdditionalMetadata,

    -- * DiscoveryEndpoint
    DiscoveryEndpoint (..),
    newDiscoveryEndpoint,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EncryptionInfo
    EncryptionInfo (..),
    newEncryptionInfo,

    -- * Entitlement
    Entitlement (..),
    newEntitlement,

    -- * ExportBackupRequest
    ExportBackupRequest (..),
    newExportBackupRequest,

    -- * ExportInstanceRequest
    ExportInstanceRequest (..),
    newExportInstanceRequest,

    -- * FailoverInstanceRequest
    FailoverInstanceRequest (..),
    newFailoverInstanceRequest,

    -- * FixedFrequencySchedule
    FixedFrequencySchedule (..),
    newFixedFrequencySchedule,

    -- * GCBDRConfiguration
    GCBDRConfiguration (..),
    newGCBDRConfiguration,

    -- * GcsBackupSource
    GcsBackupSource (..),
    newGcsBackupSource,

    -- * GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- * GcsSource
    GcsSource (..),
    newGcsSource,

    -- * GoogleCloudRedisV1LocationMetadata
    GoogleCloudRedisV1LocationMetadata (..),
    newGoogleCloudRedisV1LocationMetadata,

    -- * GoogleCloudRedisV1LocationMetadata_AvailableZones
    GoogleCloudRedisV1LocationMetadata_AvailableZones (..),
    newGoogleCloudRedisV1LocationMetadata_AvailableZones,

    -- * GoogleCloudRedisV1OperationMetadata
    GoogleCloudRedisV1OperationMetadata (..),
    newGoogleCloudRedisV1OperationMetadata,

    -- * GoogleCloudRedisV1ZoneMetadata
    GoogleCloudRedisV1ZoneMetadata (..),
    newGoogleCloudRedisV1ZoneMetadata,

    -- * ImportInstanceRequest
    ImportInstanceRequest (..),
    newImportInstanceRequest,

    -- * InputConfig
    InputConfig (..),
    newInputConfig,

    -- * Instance
    Instance (..),
    newInstance,

    -- * Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- * Instance_RedisConfigs
    Instance_RedisConfigs (..),
    newInstance_RedisConfigs,

    -- * InstanceAuthString
    InstanceAuthString (..),
    newInstanceAuthString,

    -- * InternalResourceMetadata
    InternalResourceMetadata (..),
    newInternalResourceMetadata,

    -- * ListBackupCollectionsResponse
    ListBackupCollectionsResponse (..),
    newListBackupCollectionsResponse,

    -- * ListBackupsResponse
    ListBackupsResponse (..),
    newListBackupsResponse,

    -- * ListClustersResponse
    ListClustersResponse (..),
    newListClustersResponse,

    -- * ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * MachineConfiguration
    MachineConfiguration (..),
    newMachineConfiguration,

    -- * MaintenancePolicy
    MaintenancePolicy (..),
    newMaintenancePolicy,

    -- * MaintenanceSchedule
    MaintenanceSchedule (..),
    newMaintenanceSchedule,

    -- * ManagedBackupSource
    ManagedBackupSource (..),
    newManagedBackupSource,

    -- * ManagedCertificateAuthority
    ManagedCertificateAuthority (..),
    newManagedCertificateAuthority,

    -- * Membership
    Membership (..),
    newMembership,

    -- * NodeInfo
    NodeInfo (..),
    newNodeInfo,

    -- * ObservabilityMetricData
    ObservabilityMetricData (..),
    newObservabilityMetricData,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationError
    OperationError (..),
    newOperationError,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * OutputConfig
    OutputConfig (..),
    newOutputConfig,

    -- * PersistenceConfig
    PersistenceConfig (..),
    newPersistenceConfig,

    -- * Product
    Product (..),
    newProduct,

    -- * PscAutoConnection
    PscAutoConnection (..),
    newPscAutoConnection,

    -- * PscConfig
    PscConfig (..),
    newPscConfig,

    -- * PscConnection
    PscConnection (..),
    newPscConnection,

    -- * PscServiceAttachment
    PscServiceAttachment (..),
    newPscServiceAttachment,

    -- * RDBConfig
    RDBConfig (..),
    newRDBConfig,

    -- * ReconciliationOperationMetadata
    ReconciliationOperationMetadata (..),
    newReconciliationOperationMetadata,

    -- * RemoteCluster
    RemoteCluster (..),
    newRemoteCluster,

    -- * RescheduleClusterMaintenanceRequest
    RescheduleClusterMaintenanceRequest (..),
    newRescheduleClusterMaintenanceRequest,

    -- * RescheduleMaintenanceRequest
    RescheduleMaintenanceRequest (..),
    newRescheduleMaintenanceRequest,

    -- * RetentionSettings
    RetentionSettings (..),
    newRetentionSettings,

    -- * StateInfo
    StateInfo (..),
    newStateInfo,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Tags
    Tags (..),
    newTags,

    -- * Tags_Tags
    Tags_Tags (..),
    newTags_Tags,

    -- * TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- * TlsCertificate
    TlsCertificate (..),
    newTlsCertificate,

    -- * TypedValue
    TypedValue (..),
    newTypedValue,

    -- * UpdateInfo
    UpdateInfo (..),
    newUpdateInfo,

    -- * UpgradeInstanceRequest
    UpgradeInstanceRequest (..),
    newUpgradeInstanceRequest,

    -- * UserLabels
    UserLabels (..),
    newUserLabels,

    -- * UserLabels_Labels
    UserLabels_Labels (..),
    newUserLabels_Labels,

    -- * WeeklyMaintenanceWindow
    WeeklyMaintenanceWindow (..),
    newWeeklyMaintenanceWindow,

    -- * ZoneDistributionConfig
    ZoneDistributionConfig (..),
    newZoneDistributionConfig,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Redis.Internal.Sum

-- | Configuration of the AOF based persistence.
--
-- /See:/ 'newAOFConfig' smart constructor.
newtype AOFConfig = AOFConfig
  { -- | Optional. fsync configuration.
    appendFsync :: (Core.Maybe AOFConfig_AppendFsync)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AOFConfig' with the minimum fields required to make a request.
newAOFConfig ::
  AOFConfig
newAOFConfig = AOFConfig {appendFsync = Core.Nothing}

instance Core.FromJSON AOFConfig where
  parseJSON =
    Core.withObject
      "AOFConfig"
      (\o -> AOFConfig Core.<$> (o Core..:? "appendFsync"))

instance Core.ToJSON AOFConfig where
  toJSON AOFConfig {..} =
    Core.object
      (Core.catMaybes [("appendFsync" Core..=) Core.<$> appendFsync])

-- | The automated backup config for a cluster.
--
-- /See:/ 'newAutomatedBackupConfig' smart constructor.
data AutomatedBackupConfig = AutomatedBackupConfig
  { -- | Optional. The automated backup mode. If the mode is disabled, the other fields will be ignored.
    automatedBackupMode :: (Core.Maybe AutomatedBackupConfig_AutomatedBackupMode),
    -- | Optional. Trigger automated backups at a fixed frequency.
    fixedFrequencySchedule :: (Core.Maybe FixedFrequencySchedule),
    -- | Optional. How long to keep automated backups before the backups are deleted. The value should be between 1 day and 365 days. If not specified, the default value is 35 days.
    retention :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutomatedBackupConfig' with the minimum fields required to make a request.
newAutomatedBackupConfig ::
  AutomatedBackupConfig
newAutomatedBackupConfig =
  AutomatedBackupConfig
    { automatedBackupMode = Core.Nothing,
      fixedFrequencySchedule = Core.Nothing,
      retention = Core.Nothing
    }

instance Core.FromJSON AutomatedBackupConfig where
  parseJSON =
    Core.withObject
      "AutomatedBackupConfig"
      ( \o ->
          AutomatedBackupConfig
            Core.<$> (o Core..:? "automatedBackupMode")
            Core.<*> (o Core..:? "fixedFrequencySchedule")
            Core.<*> (o Core..:? "retention")
      )

instance Core.ToJSON AutomatedBackupConfig where
  toJSON AutomatedBackupConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("automatedBackupMode" Core..=) Core.<$> automatedBackupMode,
            ("fixedFrequencySchedule" Core..=) Core.<$> fixedFrequencySchedule,
            ("retention" Core..=) Core.<$> retention
          ]
      )

-- | Configuration for availability of database instance
--
-- /See:/ 'newAvailabilityConfiguration' smart constructor.
data AvailabilityConfiguration = AvailabilityConfiguration
  { -- | Checks for existence of (multi-cluster) routing configuration that allows automatic failover to a different zone\/region in case of an outage. Applicable to Bigtable resources.
    automaticFailoverRoutingConfigured :: (Core.Maybe Core.Bool),
    -- | Availability type. Potential values: * @ZONAL@: The instance serves data from only one zone. Outages in that zone affect data accessibility. * @REGIONAL@: The instance can serve data from more than one zone in a region (it is highly available).
    availabilityType :: (Core.Maybe AvailabilityConfiguration_AvailabilityType),
    -- | Checks for resources that are configured to have redundancy, and ongoing replication across regions
    crossRegionReplicaConfigured :: (Core.Maybe Core.Bool),
    externalReplicaConfigured :: (Core.Maybe Core.Bool),
    promotableReplicaConfigured :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AvailabilityConfiguration' with the minimum fields required to make a request.
newAvailabilityConfiguration ::
  AvailabilityConfiguration
newAvailabilityConfiguration =
  AvailabilityConfiguration
    { automaticFailoverRoutingConfigured =
        Core.Nothing,
      availabilityType = Core.Nothing,
      crossRegionReplicaConfigured = Core.Nothing,
      externalReplicaConfigured = Core.Nothing,
      promotableReplicaConfigured = Core.Nothing
    }

instance Core.FromJSON AvailabilityConfiguration where
  parseJSON =
    Core.withObject
      "AvailabilityConfiguration"
      ( \o ->
          AvailabilityConfiguration
            Core.<$> (o Core..:? "automaticFailoverRoutingConfigured")
            Core.<*> (o Core..:? "availabilityType")
            Core.<*> (o Core..:? "crossRegionReplicaConfigured")
            Core.<*> (o Core..:? "externalReplicaConfigured")
            Core.<*> (o Core..:? "promotableReplicaConfigured")
      )

instance Core.ToJSON AvailabilityConfiguration where
  toJSON AvailabilityConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("automaticFailoverRoutingConfigured" Core..=)
              Core.<$> automaticFailoverRoutingConfigured,
            ("availabilityType" Core..=) Core.<$> availabilityType,
            ("crossRegionReplicaConfigured" Core..=)
              Core.<$> crossRegionReplicaConfigured,
            ("externalReplicaConfigured" Core..=)
              Core.<$> externalReplicaConfigured,
            ("promotableReplicaConfigured" Core..=)
              Core.<$> promotableReplicaConfigured
          ]
      )

-- | Backup of a cluster.
--
-- /See:/ 'newBackup' smart constructor.
data Backup = Backup
  { -- | Output only. List of backup files of the backup.
    backupFiles :: (Core.Maybe [BackupFile]),
    -- | Output only. Type of the backup.
    backupType :: (Core.Maybe Backup_BackupType),
    -- | Output only. Cluster resource path of this backup.
    cluster :: (Core.Maybe Core.Text),
    -- | Output only. Cluster uid of this backup.
    clusterUid :: (Core.Maybe Core.Text),
    -- | Output only. The time when the backup was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Encryption information of the backup.
    encryptionInfo :: (Core.Maybe EncryptionInfo),
    -- | Output only. redis-7.2, valkey-7.5
    engineVersion :: (Core.Maybe Core.Text),
    -- | Output only. The time when the backup will expire.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | Identifier. Full resource path of the backup. the last part of the name is the backup id with the following format: [YYYYMMDDHHMMSS]/[Shorted Cluster UID] OR customer specified while backup cluster. Example: 20240515123000/1234
    name :: (Core.Maybe Core.Text),
    -- | Output only. Node type of the cluster.
    nodeType :: (Core.Maybe Backup_NodeType),
    -- | Output only. Number of replicas for the cluster.
    replicaCount :: (Core.Maybe Core.Int32),
    -- | Output only. Number of shards for the cluster.
    shardCount :: (Core.Maybe Core.Int32),
    -- | Output only. State of the backup.
    state :: (Core.Maybe Backup_State),
    -- | Output only. Total size of the backup in bytes.
    totalSizeBytes :: (Core.Maybe Core.Int64),
    -- | Output only. System assigned unique identifier of the backup.
    uid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Backup' with the minimum fields required to make a request.
newBackup ::
  Backup
newBackup =
  Backup
    { backupFiles = Core.Nothing,
      backupType = Core.Nothing,
      cluster = Core.Nothing,
      clusterUid = Core.Nothing,
      createTime = Core.Nothing,
      encryptionInfo = Core.Nothing,
      engineVersion = Core.Nothing,
      expireTime = Core.Nothing,
      name = Core.Nothing,
      nodeType = Core.Nothing,
      replicaCount = Core.Nothing,
      shardCount = Core.Nothing,
      state = Core.Nothing,
      totalSizeBytes = Core.Nothing,
      uid = Core.Nothing
    }

instance Core.FromJSON Backup where
  parseJSON =
    Core.withObject
      "Backup"
      ( \o ->
          Backup
            Core.<$> (o Core..:? "backupFiles")
            Core.<*> (o Core..:? "backupType")
            Core.<*> (o Core..:? "cluster")
            Core.<*> (o Core..:? "clusterUid")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "encryptionInfo")
            Core.<*> (o Core..:? "engineVersion")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodeType")
            Core.<*> (o Core..:? "replicaCount")
            Core.<*> (o Core..:? "shardCount")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "totalSizeBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "uid")
      )

instance Core.ToJSON Backup where
  toJSON Backup {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupFiles" Core..=) Core.<$> backupFiles,
            ("backupType" Core..=) Core.<$> backupType,
            ("cluster" Core..=) Core.<$> cluster,
            ("clusterUid" Core..=) Core.<$> clusterUid,
            ("createTime" Core..=) Core.<$> createTime,
            ("encryptionInfo" Core..=) Core.<$> encryptionInfo,
            ("engineVersion" Core..=) Core.<$> engineVersion,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("name" Core..=) Core.<$> name,
            ("nodeType" Core..=) Core.<$> nodeType,
            ("replicaCount" Core..=) Core.<$> replicaCount,
            ("shardCount" Core..=) Core.<$> shardCount,
            ("state" Core..=) Core.<$> state,
            ("totalSizeBytes" Core..=)
              Core.. Core.AsText
              Core.<$> totalSizeBytes,
            ("uid" Core..=) Core.<$> uid
          ]
      )

-- | Request for [BackupCluster].
--
-- /See:/ 'newBackupClusterRequest' smart constructor.
data BackupClusterRequest = BackupClusterRequest
  { -- | Optional. The id of the backup to be created. If not specified, the default value ([YYYYMMDDHHMMSS]_[Shortened Cluster UID] is used.
    backupId :: (Core.Maybe Core.Text),
    -- | Optional. TTL for the backup to expire. Value range is 1 day to 100 years. If not specified, the default value is 100 years.
    ttl :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupClusterRequest' with the minimum fields required to make a request.
newBackupClusterRequest ::
  BackupClusterRequest
newBackupClusterRequest =
  BackupClusterRequest {backupId = Core.Nothing, ttl = Core.Nothing}

instance Core.FromJSON BackupClusterRequest where
  parseJSON =
    Core.withObject
      "BackupClusterRequest"
      ( \o ->
          BackupClusterRequest
            Core.<$> (o Core..:? "backupId")
            Core.<*> (o Core..:? "ttl")
      )

instance Core.ToJSON BackupClusterRequest where
  toJSON BackupClusterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupId" Core..=) Core.<$> backupId,
            ("ttl" Core..=) Core.<$> ttl
          ]
      )

-- | BackupCollection of a cluster.
--
-- /See:/ 'newBackupCollection' smart constructor.
data BackupCollection = BackupCollection
  { -- | Output only. The full resource path of the cluster the backup collection belongs to. Example: projects\/{project}\/locations\/{location}\/clusters\/{cluster}
    cluster :: (Core.Maybe Core.Text),
    -- | Output only. The cluster uid of the backup collection.
    clusterUid :: (Core.Maybe Core.Text),
    -- | Output only. The time when the backup collection was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The KMS key used to encrypt the backups under this backup collection.
    kmsKey :: (Core.Maybe Core.Text),
    -- | Identifier. Full resource path of the backup collection.
    name :: (Core.Maybe Core.Text),
    -- | Output only. System assigned unique identifier of the backup collection.
    uid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupCollection' with the minimum fields required to make a request.
newBackupCollection ::
  BackupCollection
newBackupCollection =
  BackupCollection
    { cluster = Core.Nothing,
      clusterUid = Core.Nothing,
      createTime = Core.Nothing,
      kmsKey = Core.Nothing,
      name = Core.Nothing,
      uid = Core.Nothing
    }

instance Core.FromJSON BackupCollection where
  parseJSON =
    Core.withObject
      "BackupCollection"
      ( \o ->
          BackupCollection
            Core.<$> (o Core..:? "cluster")
            Core.<*> (o Core..:? "clusterUid")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "kmsKey")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "uid")
      )

instance Core.ToJSON BackupCollection where
  toJSON BackupCollection {..} =
    Core.object
      ( Core.catMaybes
          [ ("cluster" Core..=) Core.<$> cluster,
            ("clusterUid" Core..=) Core.<$> clusterUid,
            ("createTime" Core..=) Core.<$> createTime,
            ("kmsKey" Core..=) Core.<$> kmsKey,
            ("name" Core..=) Core.<$> name,
            ("uid" Core..=) Core.<$> uid
          ]
      )

-- | Configuration for automatic backups
--
-- /See:/ 'newBackupConfiguration' smart constructor.
data BackupConfiguration = BackupConfiguration
  { -- | Whether customer visible automated backups are enabled on the instance.
    automatedBackupEnabled :: (Core.Maybe Core.Bool),
    -- | Backup retention settings.
    backupRetentionSettings :: (Core.Maybe RetentionSettings),
    -- | Whether point-in-time recovery is enabled. This is optional field, if the database service does not have this feature or metadata is not available in control plane, this can be omitted.
    pointInTimeRecoveryEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupConfiguration' with the minimum fields required to make a request.
newBackupConfiguration ::
  BackupConfiguration
newBackupConfiguration =
  BackupConfiguration
    { automatedBackupEnabled = Core.Nothing,
      backupRetentionSettings = Core.Nothing,
      pointInTimeRecoveryEnabled = Core.Nothing
    }

instance Core.FromJSON BackupConfiguration where
  parseJSON =
    Core.withObject
      "BackupConfiguration"
      ( \o ->
          BackupConfiguration
            Core.<$> (o Core..:? "automatedBackupEnabled")
            Core.<*> (o Core..:? "backupRetentionSettings")
            Core.<*> (o Core..:? "pointInTimeRecoveryEnabled")
      )

instance Core.ToJSON BackupConfiguration where
  toJSON BackupConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("automatedBackupEnabled" Core..=)
              Core.<$> automatedBackupEnabled,
            ("backupRetentionSettings" Core..=)
              Core.<$> backupRetentionSettings,
            ("pointInTimeRecoveryEnabled" Core..=)
              Core.<$> pointInTimeRecoveryEnabled
          ]
      )

-- | Backup is consisted of multiple backup files.
--
-- /See:/ 'newBackupFile' smart constructor.
data BackupFile = BackupFile
  { -- | Output only. The time when the backup file was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. e.g: .rdb
    fileName :: (Core.Maybe Core.Text),
    -- | Output only. Size of the backup file in bytes.
    sizeBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupFile' with the minimum fields required to make a request.
newBackupFile ::
  BackupFile
newBackupFile =
  BackupFile
    { createTime = Core.Nothing,
      fileName = Core.Nothing,
      sizeBytes = Core.Nothing
    }

instance Core.FromJSON BackupFile where
  parseJSON =
    Core.withObject
      "BackupFile"
      ( \o ->
          BackupFile
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "fileName")
            Core.<*> (o Core..:? "sizeBytes" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON BackupFile where
  toJSON BackupFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("fileName" Core..=) Core.<$> fileName,
            ("sizeBytes" Core..=) Core.. Core.AsText Core.<$> sizeBytes
          ]
      )

-- | A backup run.
--
-- /See:/ 'newBackupRun' smart constructor.
data BackupRun = BackupRun
  { -- | The time the backup operation completed. REQUIRED
    endTime :: (Core.Maybe Core.DateTime),
    -- | Information about why the backup operation failed. This is only present if the run has the FAILED status. OPTIONAL
    error :: (Core.Maybe OperationError),
    -- | The time the backup operation started. REQUIRED
    startTime :: (Core.Maybe Core.DateTime),
    -- | The status of this run. REQUIRED
    status :: (Core.Maybe BackupRun_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupRun' with the minimum fields required to make a request.
newBackupRun ::
  BackupRun
newBackupRun =
  BackupRun
    { endTime = Core.Nothing,
      error = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON BackupRun where
  parseJSON =
    Core.withObject
      "BackupRun"
      ( \o ->
          BackupRun
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON BackupRun where
  toJSON BackupRun {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("error" Core..=) Core.<$> error,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newCertChain' smart constructor.
newtype CertChain = CertChain
  { -- | The certificates that form the CA chain, from leaf to root order.
    certificates :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CertChain' with the minimum fields required to make a request.
newCertChain ::
  CertChain
newCertChain = CertChain {certificates = Core.Nothing}

instance Core.FromJSON CertChain where
  parseJSON =
    Core.withObject
      "CertChain"
      (\o -> CertChain Core.<$> (o Core..:? "certificates"))

instance Core.ToJSON CertChain where
  toJSON CertChain {..} =
    Core.object
      (Core.catMaybes [("certificates" Core..=) Core.<$> certificates])

-- | Redis cluster certificate authority
--
-- /See:/ 'newCertificateAuthority' smart constructor.
data CertificateAuthority = CertificateAuthority
  { managedServerCa :: (Core.Maybe ManagedCertificateAuthority),
    -- | Identifier. Unique name of the resource in this scope including project, location and cluster using the form: @projects\/{project}\/locations\/{location}\/clusters\/{cluster}\/certificateAuthority@
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CertificateAuthority' with the minimum fields required to make a request.
newCertificateAuthority ::
  CertificateAuthority
newCertificateAuthority =
  CertificateAuthority
    { managedServerCa = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON CertificateAuthority where
  parseJSON =
    Core.withObject
      "CertificateAuthority"
      ( \o ->
          CertificateAuthority
            Core.<$> (o Core..:? "managedServerCa")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON CertificateAuthority where
  toJSON CertificateAuthority {..} =
    Core.object
      ( Core.catMaybes
          [ ("managedServerCa" Core..=) Core.<$> managedServerCa,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | A cluster instance.
--
-- /See:/ 'newCluster' smart constructor.
data Cluster = Cluster
  { -- | Optional. If true, cluster endpoints that are created and registered by customers can be deleted asynchronously. That is, such a cluster endpoint can be de-registered before the forwarding rules in the cluster endpoint are deleted.
    asyncClusterEndpointsDeletionEnabled :: (Core.Maybe Core.Bool),
    -- | Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
    authorizationMode :: (Core.Maybe Cluster_AuthorizationMode),
    -- | Optional. The automated backup config for the cluster.
    automatedBackupConfig :: (Core.Maybe AutomatedBackupConfig),
    -- | Optional. Output only. The backup collection full resource name. Example: projects\/{project}\/locations\/{location}\/backupCollections\/{collection}
    backupCollection :: (Core.Maybe Core.Text),
    -- | Optional. A list of cluster endpoints.
    clusterEndpoints :: (Core.Maybe [ClusterEndpoint]),
    -- | Output only. The timestamp associated with the cluster creation request.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Cross cluster replication config.
    crossClusterReplicationConfig :: (Core.Maybe CrossClusterReplicationConfig),
    -- | Optional. The delete operation will fail when the value is set to true.
    deletionProtectionEnabled :: (Core.Maybe Core.Bool),
    -- | Output only. Endpoints created on each given network, for Redis clients to connect to the cluster. Currently only one discovery endpoint is supported.
    discoveryEndpoints :: (Core.Maybe [DiscoveryEndpoint]),
    -- | Output only. Encryption information of the data at rest of the cluster.
    encryptionInfo :: (Core.Maybe EncryptionInfo),
    -- | Optional. Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters. Read permission is required to import from the provided Cloud Storage objects.
    gcsSource :: (Core.Maybe GcsBackupSource),
    -- | Optional. The KMS key used to encrypt the at-rest data of the cluster.
    kmsKey :: (Core.Maybe Core.Text),
    -- | Optional. ClusterMaintenancePolicy determines when to allow or deny updates.
    maintenancePolicy :: (Core.Maybe ClusterMaintenancePolicy),
    -- | Output only. ClusterMaintenanceSchedule Output only Published maintenance schedule.
    maintenanceSchedule :: (Core.Maybe ClusterMaintenanceSchedule),
    -- | Optional. Backups generated and managed by memorystore service.
    managedBackupSource :: (Core.Maybe ManagedBackupSource),
    -- | Required. Identifier. Unique name of the resource in this scope including project and location using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}@
    name :: (Core.Maybe Core.Text),
    -- | Optional. The type of a redis node in the cluster. NodeType determines the underlying machine-type of a redis node.
    nodeType :: (Core.Maybe Cluster_NodeType),
    -- | Optional. Input only. Ondemand maintenance for the cluster. This field can be used to trigger ondemand critical update on the cluster.
    ondemandMaintenance :: (Core.Maybe Core.Bool),
    -- | Optional. Persistence config (RDB, AOF) for the cluster.
    persistenceConfig :: (Core.Maybe ClusterPersistenceConfig),
    -- | Output only. Precise value of redis memory size in GB for the entire cluster.
    preciseSizeGb :: (Core.Maybe Core.Double),
    -- | Optional. Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
    pscConfigs :: (Core.Maybe [PscConfig]),
    -- | Output only. The list of PSC connections that are auto-created through service connectivity automation.
    pscConnections :: (Core.Maybe [PscConnection]),
    -- | Output only. Service attachment details to configure Psc connections
    pscServiceAttachments :: (Core.Maybe [PscServiceAttachment]),
    -- | Optional. Key\/Value pairs of customer overrides for mutable Redis Configs
    redisConfigs :: (Core.Maybe Cluster_RedisConfigs),
    -- | Optional. The number of replica nodes per shard.
    replicaCount :: (Core.Maybe Core.Int32),
    -- | Optional. Number of shards for the Redis cluster.
    shardCount :: (Core.Maybe Core.Int32),
    -- | Output only. Redis memory size in GB for the entire cluster rounded up to the next integer.
    sizeGb :: (Core.Maybe Core.Int32),
    -- | Output only. The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
    state :: (Core.Maybe Cluster_State),
    -- | Output only. Additional information about the current state of the cluster.
    stateInfo :: (Core.Maybe StateInfo),
    -- | Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
    transitEncryptionMode :: (Core.Maybe Cluster_TransitEncryptionMode),
    -- | Output only. System assigned, unique identifier for the cluster.
    uid :: (Core.Maybe Core.Text),
    -- | Optional. This config will be used to determine how the customer wants us to distribute cluster resources within the region.
    zoneDistributionConfig :: (Core.Maybe ZoneDistributionConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
newCluster ::
  Cluster
newCluster =
  Cluster
    { asyncClusterEndpointsDeletionEnabled = Core.Nothing,
      authorizationMode = Core.Nothing,
      automatedBackupConfig = Core.Nothing,
      backupCollection = Core.Nothing,
      clusterEndpoints = Core.Nothing,
      createTime = Core.Nothing,
      crossClusterReplicationConfig = Core.Nothing,
      deletionProtectionEnabled = Core.Nothing,
      discoveryEndpoints = Core.Nothing,
      encryptionInfo = Core.Nothing,
      gcsSource = Core.Nothing,
      kmsKey = Core.Nothing,
      maintenancePolicy = Core.Nothing,
      maintenanceSchedule = Core.Nothing,
      managedBackupSource = Core.Nothing,
      name = Core.Nothing,
      nodeType = Core.Nothing,
      ondemandMaintenance = Core.Nothing,
      persistenceConfig = Core.Nothing,
      preciseSizeGb = Core.Nothing,
      pscConfigs = Core.Nothing,
      pscConnections = Core.Nothing,
      pscServiceAttachments = Core.Nothing,
      redisConfigs = Core.Nothing,
      replicaCount = Core.Nothing,
      shardCount = Core.Nothing,
      sizeGb = Core.Nothing,
      state = Core.Nothing,
      stateInfo = Core.Nothing,
      transitEncryptionMode = Core.Nothing,
      uid = Core.Nothing,
      zoneDistributionConfig = Core.Nothing
    }

instance Core.FromJSON Cluster where
  parseJSON =
    Core.withObject
      "Cluster"
      ( \o ->
          Cluster
            Core.<$> (o Core..:? "asyncClusterEndpointsDeletionEnabled")
            Core.<*> (o Core..:? "authorizationMode")
            Core.<*> (o Core..:? "automatedBackupConfig")
            Core.<*> (o Core..:? "backupCollection")
            Core.<*> (o Core..:? "clusterEndpoints")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "crossClusterReplicationConfig")
            Core.<*> (o Core..:? "deletionProtectionEnabled")
            Core.<*> (o Core..:? "discoveryEndpoints")
            Core.<*> (o Core..:? "encryptionInfo")
            Core.<*> (o Core..:? "gcsSource")
            Core.<*> (o Core..:? "kmsKey")
            Core.<*> (o Core..:? "maintenancePolicy")
            Core.<*> (o Core..:? "maintenanceSchedule")
            Core.<*> (o Core..:? "managedBackupSource")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodeType")
            Core.<*> (o Core..:? "ondemandMaintenance")
            Core.<*> (o Core..:? "persistenceConfig")
            Core.<*> (o Core..:? "preciseSizeGb")
            Core.<*> (o Core..:? "pscConfigs")
            Core.<*> (o Core..:? "pscConnections")
            Core.<*> (o Core..:? "pscServiceAttachments")
            Core.<*> (o Core..:? "redisConfigs")
            Core.<*> (o Core..:? "replicaCount")
            Core.<*> (o Core..:? "shardCount")
            Core.<*> (o Core..:? "sizeGb")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateInfo")
            Core.<*> (o Core..:? "transitEncryptionMode")
            Core.<*> (o Core..:? "uid")
            Core.<*> (o Core..:? "zoneDistributionConfig")
      )

instance Core.ToJSON Cluster where
  toJSON Cluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("asyncClusterEndpointsDeletionEnabled" Core..=)
              Core.<$> asyncClusterEndpointsDeletionEnabled,
            ("authorizationMode" Core..=) Core.<$> authorizationMode,
            ("automatedBackupConfig" Core..=) Core.<$> automatedBackupConfig,
            ("backupCollection" Core..=) Core.<$> backupCollection,
            ("clusterEndpoints" Core..=) Core.<$> clusterEndpoints,
            ("createTime" Core..=) Core.<$> createTime,
            ("crossClusterReplicationConfig" Core..=)
              Core.<$> crossClusterReplicationConfig,
            ("deletionProtectionEnabled" Core..=)
              Core.<$> deletionProtectionEnabled,
            ("discoveryEndpoints" Core..=) Core.<$> discoveryEndpoints,
            ("encryptionInfo" Core..=) Core.<$> encryptionInfo,
            ("gcsSource" Core..=) Core.<$> gcsSource,
            ("kmsKey" Core..=) Core.<$> kmsKey,
            ("maintenancePolicy" Core..=) Core.<$> maintenancePolicy,
            ("maintenanceSchedule" Core..=) Core.<$> maintenanceSchedule,
            ("managedBackupSource" Core..=) Core.<$> managedBackupSource,
            ("name" Core..=) Core.<$> name,
            ("nodeType" Core..=) Core.<$> nodeType,
            ("ondemandMaintenance" Core..=) Core.<$> ondemandMaintenance,
            ("persistenceConfig" Core..=) Core.<$> persistenceConfig,
            ("preciseSizeGb" Core..=) Core.<$> preciseSizeGb,
            ("pscConfigs" Core..=) Core.<$> pscConfigs,
            ("pscConnections" Core..=) Core.<$> pscConnections,
            ("pscServiceAttachments" Core..=) Core.<$> pscServiceAttachments,
            ("redisConfigs" Core..=) Core.<$> redisConfigs,
            ("replicaCount" Core..=) Core.<$> replicaCount,
            ("shardCount" Core..=) Core.<$> shardCount,
            ("sizeGb" Core..=) Core.<$> sizeGb,
            ("state" Core..=) Core.<$> state,
            ("stateInfo" Core..=) Core.<$> stateInfo,
            ("transitEncryptionMode" Core..=) Core.<$> transitEncryptionMode,
            ("uid" Core..=) Core.<$> uid,
            ("zoneDistributionConfig" Core..=)
              Core.<$> zoneDistributionConfig
          ]
      )

-- | Optional. Key\/Value pairs of customer overrides for mutable Redis Configs
--
-- /See:/ 'newCluster_RedisConfigs' smart constructor.
newtype Cluster_RedisConfigs = Cluster_RedisConfigs
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cluster_RedisConfigs' with the minimum fields required to make a request.
newCluster_RedisConfigs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Cluster_RedisConfigs
newCluster_RedisConfigs additional =
  Cluster_RedisConfigs {additional = additional}

instance Core.FromJSON Cluster_RedisConfigs where
  parseJSON =
    Core.withObject
      "Cluster_RedisConfigs"
      (\o -> Cluster_RedisConfigs Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Cluster_RedisConfigs where
  toJSON Cluster_RedisConfigs {..} = Core.toJSON additional

-- | ClusterEndpoint consists of PSC connections that are created as a group in each VPC network for accessing the cluster. In each group, there shall be one connection for each service attachment in the cluster.
--
-- /See:/ 'newClusterEndpoint' smart constructor.
newtype ClusterEndpoint = ClusterEndpoint
  { -- | Required. A group of PSC connections. They are created in the same VPC network, one for each service attachment in the cluster.
    connections :: (Core.Maybe [ConnectionDetail])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterEndpoint' with the minimum fields required to make a request.
newClusterEndpoint ::
  ClusterEndpoint
newClusterEndpoint = ClusterEndpoint {connections = Core.Nothing}

instance Core.FromJSON ClusterEndpoint where
  parseJSON =
    Core.withObject
      "ClusterEndpoint"
      (\o -> ClusterEndpoint Core.<$> (o Core..:? "connections"))

instance Core.ToJSON ClusterEndpoint where
  toJSON ClusterEndpoint {..} =
    Core.object
      (Core.catMaybes [("connections" Core..=) Core.<$> connections])

-- | Maintenance policy per cluster.
--
-- /See:/ 'newClusterMaintenancePolicy' smart constructor.
data ClusterMaintenancePolicy = ClusterMaintenancePolicy
  { -- | Output only. The time when the policy was created i.e. Maintenance Window or Deny Period was assigned.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time when the policy was updated i.e. Maintenance Window or Deny Period was updated.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly/maintenance/window is expected to be one.
    weeklyMaintenanceWindow :: (Core.Maybe [ClusterWeeklyMaintenanceWindow])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterMaintenancePolicy' with the minimum fields required to make a request.
newClusterMaintenancePolicy ::
  ClusterMaintenancePolicy
newClusterMaintenancePolicy =
  ClusterMaintenancePolicy
    { createTime = Core.Nothing,
      updateTime = Core.Nothing,
      weeklyMaintenanceWindow = Core.Nothing
    }

instance Core.FromJSON ClusterMaintenancePolicy where
  parseJSON =
    Core.withObject
      "ClusterMaintenancePolicy"
      ( \o ->
          ClusterMaintenancePolicy
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "weeklyMaintenanceWindow")
      )

instance Core.ToJSON ClusterMaintenancePolicy where
  toJSON ClusterMaintenancePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("weeklyMaintenanceWindow" Core..=)
              Core.<$> weeklyMaintenanceWindow
          ]
      )

-- | Upcoming maintenance schedule.
--
-- /See:/ 'newClusterMaintenanceSchedule' smart constructor.
data ClusterMaintenanceSchedule = ClusterMaintenanceSchedule
  { -- | Output only. The end time of any upcoming scheduled maintenance for this instance.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The start time of any upcoming scheduled maintenance for this instance.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterMaintenanceSchedule' with the minimum fields required to make a request.
newClusterMaintenanceSchedule ::
  ClusterMaintenanceSchedule
newClusterMaintenanceSchedule =
  ClusterMaintenanceSchedule
    { endTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON ClusterMaintenanceSchedule where
  parseJSON =
    Core.withObject
      "ClusterMaintenanceSchedule"
      ( \o ->
          ClusterMaintenanceSchedule
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON ClusterMaintenanceSchedule where
  toJSON ClusterMaintenanceSchedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Configuration of the persistence functionality.
--
-- /See:/ 'newClusterPersistenceConfig' smart constructor.
data ClusterPersistenceConfig = ClusterPersistenceConfig
  { -- | Optional. AOF configuration. This field will be ignored if mode is not AOF.
    aofConfig :: (Core.Maybe AOFConfig),
    -- | Optional. The mode of persistence.
    mode :: (Core.Maybe ClusterPersistenceConfig_Mode),
    -- | Optional. RDB configuration. This field will be ignored if mode is not RDB.
    rdbConfig :: (Core.Maybe RDBConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterPersistenceConfig' with the minimum fields required to make a request.
newClusterPersistenceConfig ::
  ClusterPersistenceConfig
newClusterPersistenceConfig =
  ClusterPersistenceConfig
    { aofConfig = Core.Nothing,
      mode = Core.Nothing,
      rdbConfig = Core.Nothing
    }

instance Core.FromJSON ClusterPersistenceConfig where
  parseJSON =
    Core.withObject
      "ClusterPersistenceConfig"
      ( \o ->
          ClusterPersistenceConfig
            Core.<$> (o Core..:? "aofConfig")
            Core.<*> (o Core..:? "mode")
            Core.<*> (o Core..:? "rdbConfig")
      )

instance Core.ToJSON ClusterPersistenceConfig where
  toJSON ClusterPersistenceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("aofConfig" Core..=) Core.<$> aofConfig,
            ("mode" Core..=) Core.<$> mode,
            ("rdbConfig" Core..=) Core.<$> rdbConfig
          ]
      )

-- | Time window specified for weekly operations.
--
-- /See:/ 'newClusterWeeklyMaintenanceWindow' smart constructor.
data ClusterWeeklyMaintenanceWindow = ClusterWeeklyMaintenanceWindow
  { -- | Allows to define schedule that runs specified day of the week.
    day :: (Core.Maybe ClusterWeeklyMaintenanceWindow_Day),
    -- | Start time of the window in UTC.
    startTime :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterWeeklyMaintenanceWindow' with the minimum fields required to make a request.
newClusterWeeklyMaintenanceWindow ::
  ClusterWeeklyMaintenanceWindow
newClusterWeeklyMaintenanceWindow =
  ClusterWeeklyMaintenanceWindow
    { day = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON ClusterWeeklyMaintenanceWindow where
  parseJSON =
    Core.withObject
      "ClusterWeeklyMaintenanceWindow"
      ( \o ->
          ClusterWeeklyMaintenanceWindow
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON ClusterWeeklyMaintenanceWindow where
  toJSON ClusterWeeklyMaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Contains compliance information about a security standard indicating unmet recommendations.
--
-- /See:/ 'newCompliance' smart constructor.
data Compliance = Compliance
  { -- | Industry-wide compliance standards or benchmarks, such as CIS, PCI, and OWASP.
    standard :: (Core.Maybe Core.Text),
    -- | Version of the standard or benchmark, for example, 1.1
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Compliance' with the minimum fields required to make a request.
newCompliance ::
  Compliance
newCompliance =
  Compliance {standard = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Compliance where
  parseJSON =
    Core.withObject
      "Compliance"
      ( \o ->
          Compliance
            Core.<$> (o Core..:? "standard")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Compliance where
  toJSON Compliance {..} =
    Core.object
      ( Core.catMaybes
          [ ("standard" Core..=) Core.<$> standard,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Detailed information of each PSC connection.
--
-- /See:/ 'newConnectionDetail' smart constructor.
data ConnectionDetail = ConnectionDetail
  { -- | Detailed information of a PSC connection that is created through service connectivity automation.
    pscAutoConnection :: (Core.Maybe PscAutoConnection),
    -- | Detailed information of a PSC connection that is created by the customer who owns the cluster.
    pscConnection :: (Core.Maybe PscConnection)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConnectionDetail' with the minimum fields required to make a request.
newConnectionDetail ::
  ConnectionDetail
newConnectionDetail =
  ConnectionDetail
    { pscAutoConnection = Core.Nothing,
      pscConnection = Core.Nothing
    }

instance Core.FromJSON ConnectionDetail where
  parseJSON =
    Core.withObject
      "ConnectionDetail"
      ( \o ->
          ConnectionDetail
            Core.<$> (o Core..:? "pscAutoConnection")
            Core.<*> (o Core..:? "pscConnection")
      )

instance Core.ToJSON ConnectionDetail where
  toJSON ConnectionDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("pscAutoConnection" Core..=) Core.<$> pscAutoConnection,
            ("pscConnection" Core..=) Core.<$> pscConnection
          ]
      )

-- | Cross cluster replication config.
--
-- /See:/ 'newCrossClusterReplicationConfig' smart constructor.
data CrossClusterReplicationConfig = CrossClusterReplicationConfig
  { -- | The role of the cluster in cross cluster replication.
    clusterRole :: (Core.Maybe CrossClusterReplicationConfig_ClusterRole),
    -- | Output only. An output only view of all the member clusters participating in the cross cluster replication. This view will be provided by every member cluster irrespective of its cluster role(primary or secondary). A primary cluster can provide information about all the secondary clusters replicating from it. However, a secondary cluster only knows about the primary cluster from which it is replicating. However, for scenarios, where the primary cluster is unavailable(e.g. regional outage), a GetCluster request can be sent to any other member cluster and this field will list all the member clusters participating in cross cluster replication.
    membership :: (Core.Maybe Membership),
    -- | Details of the primary cluster that is used as the replication source for this secondary cluster. This field is only set for a secondary cluster.
    primaryCluster :: (Core.Maybe RemoteCluster),
    -- | List of secondary clusters that are replicating from this primary cluster. This field is only set for a primary cluster.
    secondaryClusters :: (Core.Maybe [RemoteCluster]),
    -- | Output only. The last time cross cluster replication config was updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CrossClusterReplicationConfig' with the minimum fields required to make a request.
newCrossClusterReplicationConfig ::
  CrossClusterReplicationConfig
newCrossClusterReplicationConfig =
  CrossClusterReplicationConfig
    { clusterRole = Core.Nothing,
      membership = Core.Nothing,
      primaryCluster = Core.Nothing,
      secondaryClusters = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON CrossClusterReplicationConfig where
  parseJSON =
    Core.withObject
      "CrossClusterReplicationConfig"
      ( \o ->
          CrossClusterReplicationConfig
            Core.<$> (o Core..:? "clusterRole")
            Core.<*> (o Core..:? "membership")
            Core.<*> (o Core..:? "primaryCluster")
            Core.<*> (o Core..:? "secondaryClusters")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON CrossClusterReplicationConfig where
  toJSON CrossClusterReplicationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterRole" Core..=) Core.<$> clusterRole,
            ("membership" Core..=) Core.<$> membership,
            ("primaryCluster" Core..=) Core.<$> primaryCluster,
            ("secondaryClusters" Core..=) Core.<$> secondaryClusters,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Any custom metadata associated with the resource. e.g. A spanner instance can have multiple databases with its own unique metadata. Information for these individual databases can be captured in custom metadata data
--
-- /See:/ 'newCustomMetadataData' smart constructor.
newtype CustomMetadataData = CustomMetadataData
  { -- | Metadata for individual internal resources in an instance. e.g. spanner instance can have multiple databases with unique configuration.
    internalResourceMetadata :: (Core.Maybe [InternalResourceMetadata])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomMetadataData' with the minimum fields required to make a request.
newCustomMetadataData ::
  CustomMetadataData
newCustomMetadataData =
  CustomMetadataData {internalResourceMetadata = Core.Nothing}

instance Core.FromJSON CustomMetadataData where
  parseJSON =
    Core.withObject
      "CustomMetadataData"
      ( \o ->
          CustomMetadataData
            Core.<$> (o Core..:? "internalResourceMetadata")
      )

instance Core.ToJSON CustomMetadataData where
  toJSON CustomMetadataData {..} =
    Core.object
      ( Core.catMaybes
          [ ("internalResourceMetadata" Core..=)
              Core.<$> internalResourceMetadata
          ]
      )

-- | DatabaseResourceFeed is the top level proto to be used to ingest different database resource level events into Condor platform.
--
-- /See:/ 'newDatabaseResourceFeed' smart constructor.
data DatabaseResourceFeed = DatabaseResourceFeed
  { -- | Required. Timestamp when feed is generated.
    feedTimestamp :: (Core.Maybe Core.DateTime),
    -- | Required. Type feed to be ingested into condor
    feedType :: (Core.Maybe DatabaseResourceFeed_FeedType),
    observabilityMetricData :: (Core.Maybe ObservabilityMetricData),
    recommendationSignalData :: (Core.Maybe DatabaseResourceRecommendationSignalData),
    resourceHealthSignalData :: (Core.Maybe DatabaseResourceHealthSignalData),
    -- | Primary key associated with the Resource. resource_id is available in individual feed level as well.
    resourceId :: (Core.Maybe DatabaseResourceId),
    resourceMetadata :: (Core.Maybe DatabaseResourceMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseResourceFeed' with the minimum fields required to make a request.
newDatabaseResourceFeed ::
  DatabaseResourceFeed
newDatabaseResourceFeed =
  DatabaseResourceFeed
    { feedTimestamp = Core.Nothing,
      feedType = Core.Nothing,
      observabilityMetricData = Core.Nothing,
      recommendationSignalData = Core.Nothing,
      resourceHealthSignalData = Core.Nothing,
      resourceId = Core.Nothing,
      resourceMetadata = Core.Nothing
    }

instance Core.FromJSON DatabaseResourceFeed where
  parseJSON =
    Core.withObject
      "DatabaseResourceFeed"
      ( \o ->
          DatabaseResourceFeed
            Core.<$> (o Core..:? "feedTimestamp")
            Core.<*> (o Core..:? "feedType")
            Core.<*> (o Core..:? "observabilityMetricData")
            Core.<*> (o Core..:? "recommendationSignalData")
            Core.<*> (o Core..:? "resourceHealthSignalData")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "resourceMetadata")
      )

instance Core.ToJSON DatabaseResourceFeed where
  toJSON DatabaseResourceFeed {..} =
    Core.object
      ( Core.catMaybes
          [ ("feedTimestamp" Core..=) Core.<$> feedTimestamp,
            ("feedType" Core..=) Core.<$> feedType,
            ("observabilityMetricData" Core..=)
              Core.<$> observabilityMetricData,
            ("recommendationSignalData" Core..=)
              Core.<$> recommendationSignalData,
            ("resourceHealthSignalData" Core..=)
              Core.<$> resourceHealthSignalData,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("resourceMetadata" Core..=) Core.<$> resourceMetadata
          ]
      )

-- | Common model for database resource health signal data.
--
-- /See:/ 'newDatabaseResourceHealthSignalData' smart constructor.
data DatabaseResourceHealthSignalData = DatabaseResourceHealthSignalData
  { -- | Any other additional metadata
    additionalMetadata :: (Core.Maybe DatabaseResourceHealthSignalData_AdditionalMetadata),
    -- | Industry standards associated with this signal; if this signal is an issue, that could be a violation of the associated industry standard(s). For example, AUTO/BACKUP/DISABLED signal is associated with CIS GCP 1.1, CIS GCP 1.2, CIS GCP 1.3, NIST 800-53 and ISO-27001 compliance standards. If a database resource does not have automated backup enable, it will violate these following industry standards.
    compliance :: (Core.Maybe [Compliance]),
    -- | Description associated with signal
    description :: (Core.Maybe Core.Text),
    -- | Required. The last time at which the event described by this signal took place
    eventTime :: (Core.Maybe Core.DateTime),
    -- | The external-uri of the signal, using which more information about this signal can be obtained. In GCP, this will take user to SCC page to get more details about signals.
    externalUri :: (Core.Maybe Core.Text),
    -- | Required. The name of the signal, ex: PUBLIC/SQL/INSTANCE, SQL/LOG/ERROR_VERBOSITY etc.
    name :: (Core.Maybe Core.Text),
    -- | Cloud provider name. Ex: GCP\/AWS\/Azure\/OnPrem\/SelfManaged
    provider :: (Core.Maybe DatabaseResourceHealthSignalData_Provider),
    -- | Closest parent container of this resource. In GCP, \'container\' refers to a Cloud Resource Manager project. It must be resource name of a Cloud Resource Manager project with the format of \"provider\/\/\", such as \"projects\/123\". For GCP provided resources, number should be project number.
    resourceContainer :: (Core.Maybe Core.Text),
    -- | Required. Database resource name associated with the signal. Resource name to follow CAIS resource_name format as noted here go\/condor-common-datamodel
    resourceName :: (Core.Maybe Core.Text),
    -- | Required. The class of the signal, such as if it\'s a THREAT or VULNERABILITY.
    signalClass :: (Core.Maybe DatabaseResourceHealthSignalData_SignalClass),
    -- | Required. Unique identifier for the signal. This is an unique id which would be mainatined by partner to identify a signal.
    signalId :: (Core.Maybe Core.Text),
    -- | The severity of the signal, such as if it\'s a HIGH or LOW severity.
    signalSeverity :: (Core.Maybe DatabaseResourceHealthSignalData_SignalSeverity),
    -- | Required. Type of signal, for example, @AVAILABLE_IN_MULTIPLE_ZONES@, @LOGGING_MOST_ERRORS@, etc.
    signalType :: (Core.Maybe DatabaseResourceHealthSignalData_SignalType),
    state :: (Core.Maybe DatabaseResourceHealthSignalData_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseResourceHealthSignalData' with the minimum fields required to make a request.
newDatabaseResourceHealthSignalData ::
  DatabaseResourceHealthSignalData
newDatabaseResourceHealthSignalData =
  DatabaseResourceHealthSignalData
    { additionalMetadata =
        Core.Nothing,
      compliance = Core.Nothing,
      description = Core.Nothing,
      eventTime = Core.Nothing,
      externalUri = Core.Nothing,
      name = Core.Nothing,
      provider = Core.Nothing,
      resourceContainer = Core.Nothing,
      resourceName = Core.Nothing,
      signalClass = Core.Nothing,
      signalId = Core.Nothing,
      signalSeverity = Core.Nothing,
      signalType = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON DatabaseResourceHealthSignalData where
  parseJSON =
    Core.withObject
      "DatabaseResourceHealthSignalData"
      ( \o ->
          DatabaseResourceHealthSignalData
            Core.<$> (o Core..:? "additionalMetadata")
            Core.<*> (o Core..:? "compliance")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "eventTime")
            Core.<*> (o Core..:? "externalUri")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "provider")
            Core.<*> (o Core..:? "resourceContainer")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "signalClass")
            Core.<*> (o Core..:? "signalId")
            Core.<*> (o Core..:? "signalSeverity")
            Core.<*> (o Core..:? "signalType")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON DatabaseResourceHealthSignalData where
  toJSON DatabaseResourceHealthSignalData {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalMetadata" Core..=) Core.<$> additionalMetadata,
            ("compliance" Core..=) Core.<$> compliance,
            ("description" Core..=) Core.<$> description,
            ("eventTime" Core..=) Core.<$> eventTime,
            ("externalUri" Core..=) Core.<$> externalUri,
            ("name" Core..=) Core.<$> name,
            ("provider" Core..=) Core.<$> provider,
            ("resourceContainer" Core..=) Core.<$> resourceContainer,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("signalClass" Core..=) Core.<$> signalClass,
            ("signalId" Core..=) Core.<$> signalId,
            ("signalSeverity" Core..=) Core.<$> signalSeverity,
            ("signalType" Core..=) Core.<$> signalType,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Any other additional metadata
--
-- /See:/ 'newDatabaseResourceHealthSignalData_AdditionalMetadata' smart constructor.
newtype DatabaseResourceHealthSignalData_AdditionalMetadata = DatabaseResourceHealthSignalData_AdditionalMetadata
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseResourceHealthSignalData_AdditionalMetadata' with the minimum fields required to make a request.
newDatabaseResourceHealthSignalData_AdditionalMetadata ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  DatabaseResourceHealthSignalData_AdditionalMetadata
newDatabaseResourceHealthSignalData_AdditionalMetadata additional =
  DatabaseResourceHealthSignalData_AdditionalMetadata
    { additional =
        additional
    }

instance
  Core.FromJSON
    DatabaseResourceHealthSignalData_AdditionalMetadata
  where
  parseJSON =
    Core.withObject
      "DatabaseResourceHealthSignalData_AdditionalMetadata"
      ( \o ->
          DatabaseResourceHealthSignalData_AdditionalMetadata
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    DatabaseResourceHealthSignalData_AdditionalMetadata
  where
  toJSON DatabaseResourceHealthSignalData_AdditionalMetadata {..} =
    Core.toJSON additional

-- | DatabaseResourceId will serve as primary key for any resource ingestion event.
--
-- /See:/ 'newDatabaseResourceId' smart constructor.
data DatabaseResourceId = DatabaseResourceId
  { -- | Required. Cloud provider name. Ex: GCP\/AWS\/Azure\/OnPrem\/SelfManaged
    provider :: (Core.Maybe DatabaseResourceId_Provider),
    -- | Optional. Needs to be used only when the provider is PROVIDER_OTHER.
    providerDescription :: (Core.Maybe Core.Text),
    -- | Required. The type of resource this ID is identifying. Ex redis.googleapis.com\/Instance, redis.googleapis.com\/Cluster, alloydb.googleapis.com\/Cluster, alloydb.googleapis.com\/Instance, spanner.googleapis.com\/Instance, spanner.googleapis.com\/Database, firestore.googleapis.com\/Database, sqladmin.googleapis.com\/Instance, bigtableadmin.googleapis.com\/Cluster, bigtableadmin.googleapis.com\/Instance REQUIRED Please refer go\/condor-common-datamodel
    resourceType :: (Core.Maybe Core.Text),
    -- | Required. A service-local token that distinguishes this resource from other resources within the same service.
    uniqueId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseResourceId' with the minimum fields required to make a request.
newDatabaseResourceId ::
  DatabaseResourceId
newDatabaseResourceId =
  DatabaseResourceId
    { provider = Core.Nothing,
      providerDescription = Core.Nothing,
      resourceType = Core.Nothing,
      uniqueId = Core.Nothing
    }

instance Core.FromJSON DatabaseResourceId where
  parseJSON =
    Core.withObject
      "DatabaseResourceId"
      ( \o ->
          DatabaseResourceId
            Core.<$> (o Core..:? "provider")
            Core.<*> (o Core..:? "providerDescription")
            Core.<*> (o Core..:? "resourceType")
            Core.<*> (o Core..:? "uniqueId")
      )

instance Core.ToJSON DatabaseResourceId where
  toJSON DatabaseResourceId {..} =
    Core.object
      ( Core.catMaybes
          [ ("provider" Core..=) Core.<$> provider,
            ("providerDescription" Core..=) Core.<$> providerDescription,
            ("resourceType" Core..=) Core.<$> resourceType,
            ("uniqueId" Core..=) Core.<$> uniqueId
          ]
      )

-- | Common model for database resource instance metadata. Next ID: 25
--
-- /See:/ 'newDatabaseResourceMetadata' smart constructor.
data DatabaseResourceMetadata = DatabaseResourceMetadata
  { -- | Availability configuration for this instance
    availabilityConfiguration :: (Core.Maybe AvailabilityConfiguration),
    -- | Backup configuration for this instance
    backupConfiguration :: (Core.Maybe BackupConfiguration),
    -- | Latest backup run information for this instance
    backupRun :: (Core.Maybe BackupRun),
    -- | The creation time of the resource, i.e. the time when resource is created and recorded in partner service.
    creationTime :: (Core.Maybe Core.DateTime),
    -- | Current state of the instance.
    currentState :: (Core.Maybe DatabaseResourceMetadata_CurrentState),
    -- | Any custom metadata associated with the resource
    customMetadata :: (Core.Maybe CustomMetadataData),
    -- | Optional. Edition represents whether the instance is ENTERPRISE or ENTERPRISE_PLUS. This information is core to Cloud SQL only and is used to identify the edition of the instance.
    edition :: (Core.Maybe DatabaseResourceMetadata_Edition),
    -- | Entitlements associated with the resource
    entitlements :: (Core.Maybe [Entitlement]),
    -- | The state that the instance is expected to be in. For example, an instance state can transition to UNHEALTHY due to wrong patch update, while the expected state will remain at the HEALTHY.
    expectedState :: (Core.Maybe DatabaseResourceMetadata_ExpectedState),
    -- | GCBDR configuration for the resource.
    gcbdrConfiguration :: (Core.Maybe GCBDRConfiguration),
    -- | Required. Unique identifier for a Database resource
    id :: (Core.Maybe DatabaseResourceId),
    -- | The type of the instance. Specified at creation time.
    instanceType :: (Core.Maybe DatabaseResourceMetadata_InstanceType),
    -- | The resource location. REQUIRED
    location :: (Core.Maybe Core.Text),
    -- | Machine configuration for this resource.
    machineConfiguration :: (Core.Maybe MachineConfiguration),
    -- | Identifier for this resource\'s immediate parent\/primary resource if the current resource is a replica or derived form of another Database resource. Else it would be NULL. REQUIRED if the immediate parent exists when first time resource is getting ingested, otherwise optional.
    primaryResourceId :: (Core.Maybe DatabaseResourceId),
    -- | Primary resource location. REQUIRED if the immediate parent exists when first time resource is getting ingested, otherwise optional.
    primaryResourceLocation :: (Core.Maybe Core.Text),
    -- | The product this resource represents.
    product :: (Core.Maybe Product),
    -- | Closest parent Cloud Resource Manager container of this resource. It must be resource name of a Cloud Resource Manager project with the format of \"\/\", such as \"projects\/123\". For GCP provided resources, number should be project number.
    resourceContainer :: (Core.Maybe Core.Text),
    -- | Required. Different from DatabaseResourceId.unique/id, a resource name can be reused over time. That is, after a resource named \"ABC\" is deleted, the name \"ABC\" can be used to to create a new resource within the same source. Resource name to follow CAIS resource/name format as noted here go\/condor-common-datamodel
    resourceName :: (Core.Maybe Core.Text),
    -- | Optional. Suspension reason for the resource.
    suspensionReason :: (Core.Maybe DatabaseResourceMetadata_SuspensionReason),
    -- | Optional. Tags associated with this resources.
    tagsSet :: (Core.Maybe Tags),
    -- | The time at which the resource was updated and recorded at partner service.
    updationTime :: (Core.Maybe Core.DateTime),
    -- | User-provided labels associated with the resource
    userLabelSet :: (Core.Maybe UserLabels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseResourceMetadata' with the minimum fields required to make a request.
newDatabaseResourceMetadata ::
  DatabaseResourceMetadata
newDatabaseResourceMetadata =
  DatabaseResourceMetadata
    { availabilityConfiguration =
        Core.Nothing,
      backupConfiguration = Core.Nothing,
      backupRun = Core.Nothing,
      creationTime = Core.Nothing,
      currentState = Core.Nothing,
      customMetadata = Core.Nothing,
      edition = Core.Nothing,
      entitlements = Core.Nothing,
      expectedState = Core.Nothing,
      gcbdrConfiguration = Core.Nothing,
      id = Core.Nothing,
      instanceType = Core.Nothing,
      location = Core.Nothing,
      machineConfiguration = Core.Nothing,
      primaryResourceId = Core.Nothing,
      primaryResourceLocation = Core.Nothing,
      product = Core.Nothing,
      resourceContainer = Core.Nothing,
      resourceName = Core.Nothing,
      suspensionReason = Core.Nothing,
      tagsSet = Core.Nothing,
      updationTime = Core.Nothing,
      userLabelSet = Core.Nothing
    }

instance Core.FromJSON DatabaseResourceMetadata where
  parseJSON =
    Core.withObject
      "DatabaseResourceMetadata"
      ( \o ->
          DatabaseResourceMetadata
            Core.<$> (o Core..:? "availabilityConfiguration")
            Core.<*> (o Core..:? "backupConfiguration")
            Core.<*> (o Core..:? "backupRun")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "currentState")
            Core.<*> (o Core..:? "customMetadata")
            Core.<*> (o Core..:? "edition")
            Core.<*> (o Core..:? "entitlements")
            Core.<*> (o Core..:? "expectedState")
            Core.<*> (o Core..:? "gcbdrConfiguration")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "instanceType")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "machineConfiguration")
            Core.<*> (o Core..:? "primaryResourceId")
            Core.<*> (o Core..:? "primaryResourceLocation")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "resourceContainer")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "suspensionReason")
            Core.<*> (o Core..:? "tagsSet")
            Core.<*> (o Core..:? "updationTime")
            Core.<*> (o Core..:? "userLabelSet")
      )

instance Core.ToJSON DatabaseResourceMetadata where
  toJSON DatabaseResourceMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("availabilityConfiguration" Core..=)
              Core.<$> availabilityConfiguration,
            ("backupConfiguration" Core..=) Core.<$> backupConfiguration,
            ("backupRun" Core..=) Core.<$> backupRun,
            ("creationTime" Core..=) Core.<$> creationTime,
            ("currentState" Core..=) Core.<$> currentState,
            ("customMetadata" Core..=) Core.<$> customMetadata,
            ("edition" Core..=) Core.<$> edition,
            ("entitlements" Core..=) Core.<$> entitlements,
            ("expectedState" Core..=) Core.<$> expectedState,
            ("gcbdrConfiguration" Core..=) Core.<$> gcbdrConfiguration,
            ("id" Core..=) Core.<$> id,
            ("instanceType" Core..=) Core.<$> instanceType,
            ("location" Core..=) Core.<$> location,
            ("machineConfiguration" Core..=) Core.<$> machineConfiguration,
            ("primaryResourceId" Core..=) Core.<$> primaryResourceId,
            ("primaryResourceLocation" Core..=)
              Core.<$> primaryResourceLocation,
            ("product" Core..=) Core.<$> product,
            ("resourceContainer" Core..=) Core.<$> resourceContainer,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("suspensionReason" Core..=) Core.<$> suspensionReason,
            ("tagsSet" Core..=) Core.<$> tagsSet,
            ("updationTime" Core..=) Core.<$> updationTime,
            ("userLabelSet" Core..=) Core.<$> userLabelSet
          ]
      )

-- | Common model for database resource recommendation signal data.
--
-- /See:/ 'newDatabaseResourceRecommendationSignalData' smart constructor.
data DatabaseResourceRecommendationSignalData = DatabaseResourceRecommendationSignalData
  { -- | Optional. Any other additional metadata specific to recommendation
    additionalMetadata ::
      ( Core.Maybe
          DatabaseResourceRecommendationSignalData_AdditionalMetadata
      ),
    -- | Required. last time recommendationw as refreshed
    lastRefreshTime :: (Core.Maybe Core.DateTime),
    -- | Required. Recommendation state
    recommendationState ::
      ( Core.Maybe
          DatabaseResourceRecommendationSignalData_RecommendationState
      ),
    -- | Required. Name of recommendation. Examples: organizations\/1234\/locations\/us-central1\/recommenders\/google.cloudsql.instance.PerformanceRecommender\/recommendations\/9876
    recommender :: (Core.Maybe Core.Text),
    -- | Required. ID of recommender. Examples: \"google.cloudsql.instance.PerformanceRecommender\"
    recommenderId :: (Core.Maybe Core.Text),
    -- | Required. Contains an identifier for a subtype of recommendations produced for the same recommender. Subtype is a function of content and impact, meaning a new subtype might be added when significant changes to @content@ or @primary_impact.category@ are introduced. See the Recommenders section to see a list of subtypes for a given Recommender. Examples: For recommender = \"google.cloudsql.instance.PerformanceRecommender\", recommender/subtype can be \"MYSQL/HIGH/NUMBER/OF/OPEN/TABLES/BEST/PRACTICE\"\/\"POSTGRES/HIGH/TRANSACTION/ID/UTILIZATION/BEST/PRACTICE\"
    recommenderSubtype :: (Core.Maybe Core.Text),
    -- | Required. Database resource name associated with the signal. Resource name to follow CAIS resource_name format as noted here go\/condor-common-datamodel
    resourceName :: (Core.Maybe Core.Text),
    -- | Required. Type of signal, for example, @SIGNAL_TYPE_IDLE@, @SIGNAL_TYPE_HIGH_NUMBER_OF_TABLES@, etc.
    signalType :: (Core.Maybe DatabaseResourceRecommendationSignalData_SignalType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseResourceRecommendationSignalData' with the minimum fields required to make a request.
newDatabaseResourceRecommendationSignalData ::
  DatabaseResourceRecommendationSignalData
newDatabaseResourceRecommendationSignalData =
  DatabaseResourceRecommendationSignalData
    { additionalMetadata =
        Core.Nothing,
      lastRefreshTime = Core.Nothing,
      recommendationState = Core.Nothing,
      recommender = Core.Nothing,
      recommenderId = Core.Nothing,
      recommenderSubtype = Core.Nothing,
      resourceName = Core.Nothing,
      signalType = Core.Nothing
    }

instance Core.FromJSON DatabaseResourceRecommendationSignalData where
  parseJSON =
    Core.withObject
      "DatabaseResourceRecommendationSignalData"
      ( \o ->
          DatabaseResourceRecommendationSignalData
            Core.<$> (o Core..:? "additionalMetadata")
            Core.<*> (o Core..:? "lastRefreshTime")
            Core.<*> (o Core..:? "recommendationState")
            Core.<*> (o Core..:? "recommender")
            Core.<*> (o Core..:? "recommenderId")
            Core.<*> (o Core..:? "recommenderSubtype")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "signalType")
      )

instance Core.ToJSON DatabaseResourceRecommendationSignalData where
  toJSON DatabaseResourceRecommendationSignalData {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalMetadata" Core..=) Core.<$> additionalMetadata,
            ("lastRefreshTime" Core..=) Core.<$> lastRefreshTime,
            ("recommendationState" Core..=) Core.<$> recommendationState,
            ("recommender" Core..=) Core.<$> recommender,
            ("recommenderId" Core..=) Core.<$> recommenderId,
            ("recommenderSubtype" Core..=) Core.<$> recommenderSubtype,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("signalType" Core..=) Core.<$> signalType
          ]
      )

-- | Optional. Any other additional metadata specific to recommendation
--
-- /See:/ 'newDatabaseResourceRecommendationSignalData_AdditionalMetadata' smart constructor.
newtype DatabaseResourceRecommendationSignalData_AdditionalMetadata = DatabaseResourceRecommendationSignalData_AdditionalMetadata
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseResourceRecommendationSignalData_AdditionalMetadata' with the minimum fields required to make a request.
newDatabaseResourceRecommendationSignalData_AdditionalMetadata ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  DatabaseResourceRecommendationSignalData_AdditionalMetadata
newDatabaseResourceRecommendationSignalData_AdditionalMetadata
  additional =
    DatabaseResourceRecommendationSignalData_AdditionalMetadata
      { additional =
          additional
      }

instance
  Core.FromJSON
    DatabaseResourceRecommendationSignalData_AdditionalMetadata
  where
  parseJSON =
    Core.withObject
      "DatabaseResourceRecommendationSignalData_AdditionalMetadata"
      ( \o ->
          DatabaseResourceRecommendationSignalData_AdditionalMetadata
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    DatabaseResourceRecommendationSignalData_AdditionalMetadata
  where
  toJSON
    DatabaseResourceRecommendationSignalData_AdditionalMetadata {..} =
      Core.toJSON additional

-- | Endpoints on each network, for Redis clients to connect to the cluster.
--
-- /See:/ 'newDiscoveryEndpoint' smart constructor.
data DiscoveryEndpoint = DiscoveryEndpoint
  { -- | Output only. Address of the exposed Redis endpoint used by clients to connect to the service. The address could be either IP or hostname.
    address :: (Core.Maybe Core.Text),
    -- | Output only. The port number of the exposed Redis endpoint.
    port :: (Core.Maybe Core.Int32),
    -- | Output only. Customer configuration for where the endpoint is created and accessed from.
    pscConfig :: (Core.Maybe PscConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiscoveryEndpoint' with the minimum fields required to make a request.
newDiscoveryEndpoint ::
  DiscoveryEndpoint
newDiscoveryEndpoint =
  DiscoveryEndpoint
    { address = Core.Nothing,
      port = Core.Nothing,
      pscConfig = Core.Nothing
    }

instance Core.FromJSON DiscoveryEndpoint where
  parseJSON =
    Core.withObject
      "DiscoveryEndpoint"
      ( \o ->
          DiscoveryEndpoint
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "port")
            Core.<*> (o Core..:? "pscConfig")
      )

instance Core.ToJSON DiscoveryEndpoint where
  toJSON DiscoveryEndpoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("port" Core..=) Core.<$> port,
            ("pscConfig" Core..=) Core.<$> pscConfig
          ]
      )

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

-- | EncryptionInfo describes the encryption information of a cluster or a backup.
--
-- /See:/ 'newEncryptionInfo' smart constructor.
data EncryptionInfo = EncryptionInfo
  { -- | Output only. Type of encryption.
    encryptionType :: (Core.Maybe EncryptionInfo_EncryptionType),
    -- | Output only. The state of the primary version of the KMS key perceived by the system. This field is not populated in backups.
    kmsKeyPrimaryState :: (Core.Maybe EncryptionInfo_KmsKeyPrimaryState),
    -- | Output only. KMS key versions that are being used to protect the data at-rest.
    kmsKeyVersions :: (Core.Maybe [Core.Text]),
    -- | Output only. The most recent time when the encryption info was updated.
    lastUpdateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptionInfo' with the minimum fields required to make a request.
newEncryptionInfo ::
  EncryptionInfo
newEncryptionInfo =
  EncryptionInfo
    { encryptionType = Core.Nothing,
      kmsKeyPrimaryState = Core.Nothing,
      kmsKeyVersions = Core.Nothing,
      lastUpdateTime = Core.Nothing
    }

instance Core.FromJSON EncryptionInfo where
  parseJSON =
    Core.withObject
      "EncryptionInfo"
      ( \o ->
          EncryptionInfo
            Core.<$> (o Core..:? "encryptionType")
            Core.<*> (o Core..:? "kmsKeyPrimaryState")
            Core.<*> (o Core..:? "kmsKeyVersions")
            Core.<*> (o Core..:? "lastUpdateTime")
      )

instance Core.ToJSON EncryptionInfo where
  toJSON EncryptionInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("encryptionType" Core..=) Core.<$> encryptionType,
            ("kmsKeyPrimaryState" Core..=) Core.<$> kmsKeyPrimaryState,
            ("kmsKeyVersions" Core..=) Core.<$> kmsKeyVersions,
            ("lastUpdateTime" Core..=) Core.<$> lastUpdateTime
          ]
      )

-- | Proto representing the access that a user has to a specific feature\/service. NextId: 3.
--
-- /See:/ 'newEntitlement' smart constructor.
data Entitlement = Entitlement
  { -- | The current state of user\'s accessibility to a feature\/benefit.
    entitlementState :: (Core.Maybe Entitlement_EntitlementState),
    -- | An enum that represents the type of this entitlement.
    type' :: (Core.Maybe Entitlement_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entitlement' with the minimum fields required to make a request.
newEntitlement ::
  Entitlement
newEntitlement =
  Entitlement
    { entitlementState = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Entitlement where
  parseJSON =
    Core.withObject
      "Entitlement"
      ( \o ->
          Entitlement
            Core.<$> (o Core..:? "entitlementState")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Entitlement where
  toJSON Entitlement {..} =
    Core.object
      ( Core.catMaybes
          [ ("entitlementState" Core..=) Core.<$> entitlementState,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Request for [ExportBackup].
--
-- /See:/ 'newExportBackupRequest' smart constructor.
newtype ExportBackupRequest = ExportBackupRequest
  { -- | Google Cloud Storage bucket, like \"my-bucket\".
    gcsBucket :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportBackupRequest' with the minimum fields required to make a request.
newExportBackupRequest ::
  ExportBackupRequest
newExportBackupRequest =
  ExportBackupRequest {gcsBucket = Core.Nothing}

instance Core.FromJSON ExportBackupRequest where
  parseJSON =
    Core.withObject
      "ExportBackupRequest"
      (\o -> ExportBackupRequest Core.<$> (o Core..:? "gcsBucket"))

instance Core.ToJSON ExportBackupRequest where
  toJSON ExportBackupRequest {..} =
    Core.object
      (Core.catMaybes [("gcsBucket" Core..=) Core.<$> gcsBucket])

-- | Request for Export.
--
-- /See:/ 'newExportInstanceRequest' smart constructor.
newtype ExportInstanceRequest = ExportInstanceRequest
  { -- | Required. Specify data to be exported.
    outputConfig :: (Core.Maybe OutputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportInstanceRequest' with the minimum fields required to make a request.
newExportInstanceRequest ::
  ExportInstanceRequest
newExportInstanceRequest =
  ExportInstanceRequest {outputConfig = Core.Nothing}

instance Core.FromJSON ExportInstanceRequest where
  parseJSON =
    Core.withObject
      "ExportInstanceRequest"
      (\o -> ExportInstanceRequest Core.<$> (o Core..:? "outputConfig"))

instance Core.ToJSON ExportInstanceRequest where
  toJSON ExportInstanceRequest {..} =
    Core.object
      (Core.catMaybes [("outputConfig" Core..=) Core.<$> outputConfig])

-- | Request for Failover.
--
-- /See:/ 'newFailoverInstanceRequest' smart constructor.
newtype FailoverInstanceRequest = FailoverInstanceRequest
  { -- | Optional. Available data protection modes that the user can choose. If it\'s unspecified, data protection mode will be LIMITED/DATA/LOSS by default.
    dataProtectionMode :: (Core.Maybe FailoverInstanceRequest_DataProtectionMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FailoverInstanceRequest' with the minimum fields required to make a request.
newFailoverInstanceRequest ::
  FailoverInstanceRequest
newFailoverInstanceRequest =
  FailoverInstanceRequest {dataProtectionMode = Core.Nothing}

instance Core.FromJSON FailoverInstanceRequest where
  parseJSON =
    Core.withObject
      "FailoverInstanceRequest"
      ( \o ->
          FailoverInstanceRequest Core.<$> (o Core..:? "dataProtectionMode")
      )

instance Core.ToJSON FailoverInstanceRequest where
  toJSON FailoverInstanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [("dataProtectionMode" Core..=) Core.<$> dataProtectionMode]
      )

-- | This schedule allows the backup to be triggered at a fixed frequency (currently only daily is supported).
--
-- /See:/ 'newFixedFrequencySchedule' smart constructor.
newtype FixedFrequencySchedule = FixedFrequencySchedule
  { -- | Required. The start time of every automated backup in UTC. It must be set to the start of an hour. This field is required.
    startTime :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FixedFrequencySchedule' with the minimum fields required to make a request.
newFixedFrequencySchedule ::
  FixedFrequencySchedule
newFixedFrequencySchedule =
  FixedFrequencySchedule {startTime = Core.Nothing}

instance Core.FromJSON FixedFrequencySchedule where
  parseJSON =
    Core.withObject
      "FixedFrequencySchedule"
      (\o -> FixedFrequencySchedule Core.<$> (o Core..:? "startTime"))

instance Core.ToJSON FixedFrequencySchedule where
  toJSON FixedFrequencySchedule {..} =
    Core.object
      (Core.catMaybes [("startTime" Core..=) Core.<$> startTime])

-- | GCBDR Configuration for the resource.
--
-- /See:/ 'newGCBDRConfiguration' smart constructor.
newtype GCBDRConfiguration = GCBDRConfiguration
  { -- | Whether the resource is managed by GCBDR.
    gcbdrManaged :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GCBDRConfiguration' with the minimum fields required to make a request.
newGCBDRConfiguration ::
  GCBDRConfiguration
newGCBDRConfiguration =
  GCBDRConfiguration {gcbdrManaged = Core.Nothing}

instance Core.FromJSON GCBDRConfiguration where
  parseJSON =
    Core.withObject
      "GCBDRConfiguration"
      (\o -> GCBDRConfiguration Core.<$> (o Core..:? "gcbdrManaged"))

instance Core.ToJSON GCBDRConfiguration where
  toJSON GCBDRConfiguration {..} =
    Core.object
      (Core.catMaybes [("gcbdrManaged" Core..=) Core.<$> gcbdrManaged])

-- | Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.
--
-- /See:/ 'newGcsBackupSource' smart constructor.
newtype GcsBackupSource = GcsBackupSource
  { -- | Optional. URIs of the Cloud Storage objects to import. Example: gs:\/\/bucket1\/object1, gs:\/\/bucket2\/folder2\/object2
    uris :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsBackupSource' with the minimum fields required to make a request.
newGcsBackupSource ::
  GcsBackupSource
newGcsBackupSource = GcsBackupSource {uris = Core.Nothing}

instance Core.FromJSON GcsBackupSource where
  parseJSON =
    Core.withObject
      "GcsBackupSource"
      (\o -> GcsBackupSource Core.<$> (o Core..:? "uris"))

instance Core.ToJSON GcsBackupSource where
  toJSON GcsBackupSource {..} =
    Core.object (Core.catMaybes [("uris" Core..=) Core.<$> uris])

-- | The Cloud Storage location for the output content
--
-- /See:/ 'newGcsDestination' smart constructor.
newtype GcsDestination = GcsDestination
  { -- | Required. Data destination URI (e.g. \'gs:\/\/my/bucket\/my/object\'). Existing files will be overwritten.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsDestination' with the minimum fields required to make a request.
newGcsDestination ::
  GcsDestination
newGcsDestination = GcsDestination {uri = Core.Nothing}

instance Core.FromJSON GcsDestination where
  parseJSON =
    Core.withObject
      "GcsDestination"
      (\o -> GcsDestination Core.<$> (o Core..:? "uri"))

instance Core.ToJSON GcsDestination where
  toJSON GcsDestination {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | The Cloud Storage location for the input content
--
-- /See:/ 'newGcsSource' smart constructor.
newtype GcsSource = GcsSource
  { -- | Required. Source data URI. (e.g. \'gs:\/\/my/bucket\/my/object\').
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsSource' with the minimum fields required to make a request.
newGcsSource ::
  GcsSource
newGcsSource = GcsSource {uri = Core.Nothing}

instance Core.FromJSON GcsSource where
  parseJSON =
    Core.withObject
      "GcsSource"
      (\o -> GcsSource Core.<$> (o Core..:? "uri"))

instance Core.ToJSON GcsSource where
  toJSON GcsSource {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | This location metadata represents additional configuration options for a given location where a Redis instance may be created. All fields are output only. It is returned as content of the @google.cloud.location.Location.metadata@ field.
--
-- /See:/ 'newGoogleCloudRedisV1LocationMetadata' smart constructor.
newtype GoogleCloudRedisV1LocationMetadata = GoogleCloudRedisV1LocationMetadata
  { -- | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by GCE. These keys can be specified in @location_id@ or @alternative_location_id@ fields when creating a Redis instance.
    availableZones :: (Core.Maybe GoogleCloudRedisV1LocationMetadata_AvailableZones)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRedisV1LocationMetadata' with the minimum fields required to make a request.
newGoogleCloudRedisV1LocationMetadata ::
  GoogleCloudRedisV1LocationMetadata
newGoogleCloudRedisV1LocationMetadata =
  GoogleCloudRedisV1LocationMetadata {availableZones = Core.Nothing}

instance Core.FromJSON GoogleCloudRedisV1LocationMetadata where
  parseJSON =
    Core.withObject
      "GoogleCloudRedisV1LocationMetadata"
      ( \o ->
          GoogleCloudRedisV1LocationMetadata
            Core.<$> (o Core..:? "availableZones")
      )

instance Core.ToJSON GoogleCloudRedisV1LocationMetadata where
  toJSON GoogleCloudRedisV1LocationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("availableZones" Core..=) Core.<$> availableZones]
      )

-- | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by GCE. These keys can be specified in @location_id@ or @alternative_location_id@ fields when creating a Redis instance.
--
-- /See:/ 'newGoogleCloudRedisV1LocationMetadata_AvailableZones' smart constructor.
newtype GoogleCloudRedisV1LocationMetadata_AvailableZones = GoogleCloudRedisV1LocationMetadata_AvailableZones
  { additional :: (Core.HashMap Core.Text GoogleCloudRedisV1ZoneMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRedisV1LocationMetadata_AvailableZones' with the minimum fields required to make a request.
newGoogleCloudRedisV1LocationMetadata_AvailableZones ::
  -- |  See 'additional'.
  Core.HashMap
    Core.Text
    GoogleCloudRedisV1ZoneMetadata ->
  GoogleCloudRedisV1LocationMetadata_AvailableZones
newGoogleCloudRedisV1LocationMetadata_AvailableZones additional =
  GoogleCloudRedisV1LocationMetadata_AvailableZones
    { additional =
        additional
    }

instance
  Core.FromJSON
    GoogleCloudRedisV1LocationMetadata_AvailableZones
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRedisV1LocationMetadata_AvailableZones"
      ( \o ->
          GoogleCloudRedisV1LocationMetadata_AvailableZones
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudRedisV1LocationMetadata_AvailableZones
  where
  toJSON GoogleCloudRedisV1LocationMetadata_AvailableZones {..} =
    Core.toJSON additional

-- | Represents the v1 metadata of the long-running operation.
--
-- /See:/ 'newGoogleCloudRedisV1OperationMetadata' smart constructor.
data GoogleCloudRedisV1OperationMetadata = GoogleCloudRedisV1OperationMetadata
  { -- | API version.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Specifies if cancellation was requested for the operation.
    cancelRequested :: (Core.Maybe Core.Bool),
    -- | Creation timestamp.
    createTime :: (Core.Maybe Core.DateTime),
    -- | End timestamp.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Operation status details.
    statusDetail :: (Core.Maybe Core.Text),
    -- | Operation target.
    target :: (Core.Maybe Core.Text),
    -- | Operation verb.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRedisV1OperationMetadata' with the minimum fields required to make a request.
newGoogleCloudRedisV1OperationMetadata ::
  GoogleCloudRedisV1OperationMetadata
newGoogleCloudRedisV1OperationMetadata =
  GoogleCloudRedisV1OperationMetadata
    { apiVersion = Core.Nothing,
      cancelRequested = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      statusDetail = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRedisV1OperationMetadata where
  parseJSON =
    Core.withObject
      "GoogleCloudRedisV1OperationMetadata"
      ( \o ->
          GoogleCloudRedisV1OperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "cancelRequested")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance Core.ToJSON GoogleCloudRedisV1OperationMetadata where
  toJSON GoogleCloudRedisV1OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("cancelRequested" Core..=) Core.<$> cancelRequested,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("statusDetail" Core..=) Core.<$> statusDetail,
            ("target" Core..=) Core.<$> target,
            ("verb" Core..=) Core.<$> verb
          ]
      )

-- | Defines specific information for a particular zone. Currently empty and reserved for future use only.
--
-- /See:/ 'newGoogleCloudRedisV1ZoneMetadata' smart constructor.
data GoogleCloudRedisV1ZoneMetadata = GoogleCloudRedisV1ZoneMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRedisV1ZoneMetadata' with the minimum fields required to make a request.
newGoogleCloudRedisV1ZoneMetadata ::
  GoogleCloudRedisV1ZoneMetadata
newGoogleCloudRedisV1ZoneMetadata = GoogleCloudRedisV1ZoneMetadata

instance Core.FromJSON GoogleCloudRedisV1ZoneMetadata where
  parseJSON =
    Core.withObject
      "GoogleCloudRedisV1ZoneMetadata"
      (\o -> Core.pure GoogleCloudRedisV1ZoneMetadata)

instance Core.ToJSON GoogleCloudRedisV1ZoneMetadata where
  toJSON = Core.const Core.emptyObject

-- | Request for Import.
--
-- /See:/ 'newImportInstanceRequest' smart constructor.
newtype ImportInstanceRequest = ImportInstanceRequest
  { -- | Required. Specify data to be imported.
    inputConfig :: (Core.Maybe InputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportInstanceRequest' with the minimum fields required to make a request.
newImportInstanceRequest ::
  ImportInstanceRequest
newImportInstanceRequest =
  ImportInstanceRequest {inputConfig = Core.Nothing}

instance Core.FromJSON ImportInstanceRequest where
  parseJSON =
    Core.withObject
      "ImportInstanceRequest"
      (\o -> ImportInstanceRequest Core.<$> (o Core..:? "inputConfig"))

instance Core.ToJSON ImportInstanceRequest where
  toJSON ImportInstanceRequest {..} =
    Core.object
      (Core.catMaybes [("inputConfig" Core..=) Core.<$> inputConfig])

-- | The input content
--
-- /See:/ 'newInputConfig' smart constructor.
newtype InputConfig = InputConfig
  { -- | Google Cloud Storage location where input content is located.
    gcsSource :: (Core.Maybe GcsSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputConfig' with the minimum fields required to make a request.
newInputConfig ::
  InputConfig
newInputConfig = InputConfig {gcsSource = Core.Nothing}

instance Core.FromJSON InputConfig where
  parseJSON =
    Core.withObject
      "InputConfig"
      (\o -> InputConfig Core.<$> (o Core..:? "gcsSource"))

instance Core.ToJSON InputConfig where
  toJSON InputConfig {..} =
    Core.object
      (Core.catMaybes [("gcsSource" Core..=) Core.<$> gcsSource])

-- | A Memorystore for Redis instance.
--
-- /See:/ 'newInstance' smart constructor.
data Instance = Instance
  { -- | Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location/id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location/id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
    alternativeLocationId :: (Core.Maybe Core.Text),
    -- | Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to \"true\" AUTH is enabled on the instance. Default value is \"false\" meaning AUTH is disabled.
    authEnabled :: (Core.Maybe Core.Bool),
    -- | Optional. The full name of the Google Compute Engine <https://cloud.google.com/vpc/docs/vpc network> to which the instance is connected. If left unspecified, the @default@ network will be used.
    authorizedNetwork :: (Core.Maybe Core.Text),
    -- | Optional. The available maintenance versions that an instance could update to.
    availableMaintenanceVersions :: (Core.Maybe [Core.Text]),
    -- | Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
    connectMode :: (Core.Maybe Instance_ConnectMode),
    -- | Output only. The time the instance was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The current zone where the Redis primary node is located. In basic tier, this will always be the same as [location_id]. In standard tier, this can be the zone of any node in the instance.
    currentLocationId :: (Core.Maybe Core.Text),
    -- | Optional. The KMS key reference that the customer provides when trying to create the instance.
    customerManagedKey :: (Core.Maybe Core.Text),
    -- | An arbitrary and optional user-provided name for the instance.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service.
    host :: (Core.Maybe Core.Text),
    -- | Resource labels to represent user provided metadata
    labels :: (Core.Maybe Instance_Labels),
    -- | Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.
    locationId :: (Core.Maybe Core.Text),
    -- | Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
    maintenancePolicy :: (Core.Maybe MaintenancePolicy),
    -- | Output only. Date and time of upcoming maintenance events which have been scheduled.
    maintenanceSchedule :: (Core.Maybe MaintenanceSchedule),
    -- | Optional. The self service update maintenance version. The version is date based such as \"20210712/00/00\".
    maintenanceVersion :: (Core.Maybe Core.Text),
    -- | Required. Redis memory size in GiB.
    memorySizeGb :: (Core.Maybe Core.Int32),
    -- | Required. Unique name of the resource in this scope including project and location using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ Note: Redis instances are managed and addressed at regional level so location/id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location/id and alternative/location/id fields for more details.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Info per node.
    nodes :: (Core.Maybe [NodeInfo]),
    -- | Optional. Persistence configuration parameters
    persistenceConfig :: (Core.Maybe PersistenceConfig),
    -- | Output only. Cloud IAM identity used by import \/ export operations to transfer data to\/from Cloud Storage. Format is \"serviceAccount:\". The value may change over time for a given instance so should be checked before each import\/export operation.
    persistenceIamIdentity :: (Core.Maybe Core.Text),
    -- | Output only. The port number of the exposed Redis endpoint.
    port :: (Core.Maybe Core.Int32),
    -- | Output only. Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only. Targets all healthy replica nodes in instance. Replication is asynchronous and replica nodes will exhibit some lag behind the primary. Write requests must target \'host\'.
    readEndpoint :: (Core.Maybe Core.Text),
    -- | Output only. The port number of the exposed readonly redis endpoint. Standard tier only. Write requests should target \'port\'.
    readEndpointPort :: (Core.Maybe Core.Int32),
    -- | Optional. Read replicas mode for the instance. Defaults to READ/REPLICAS/DISABLED.
    readReplicasMode :: (Core.Maybe Instance_ReadReplicasMode),
    -- | Optional. Redis configuration parameters, according to http:\/\/redis.io\/topics\/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
    redisConfigs :: (Core.Maybe Instance_RedisConfigs),
    -- | Optional. The version of Redis software. If not provided, the default version will be used. Currently, the supported values are: * @REDIS_3_2@ for Redis 3.2 compatibility * @REDIS_4_0@ for Redis 4.0 compatibility * @REDIS_5_0@ for Redis 5.0 compatibility * @REDIS_6_X@ for Redis 6.x compatibility * @REDIS_7_0@ for Redis 7.0 compatibility (default) * @REDIS_7_2@ for Redis 7.2 compatibility
    redisVersion :: (Core.Maybe Core.Text),
    -- | Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
    replicaCount :: (Core.Maybe Core.Int32),
    -- | Optional. For DIRECT/PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE/SERVICE/ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused \/29 block, for example, 10.0.0.0\/29 or 192.168.0.0\/29. For READ/REPLICAS_ENABLED the default block size is \/28.
    reservedIpRange :: (Core.Maybe Core.Text),
    -- | Optional. Output only. Reserved for future use.
    satisfiesPzi :: (Core.Maybe Core.Bool),
    -- | Optional. Output only. Reserved for future use.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT/PEERING mode value must be a CIDR range of size \/28, or \"auto\". For PRIVATE/SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or \"auto\".
    secondaryIpRange :: (Core.Maybe Core.Text),
    -- | Output only. List of server CA certificates for the instance.
    serverCaCerts :: (Core.Maybe [TlsCertificate]),
    -- | Output only. The current state of this instance.
    state :: (Core.Maybe Instance_State),
    -- | Output only. Additional information about the current status of this instance, if available.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Optional. reasons that causes instance in \"SUSPENDED\" state.
    suspensionReasons :: (Core.Maybe [Instance_SuspensionReasonsItem]),
    -- | Required. The service tier of the instance.
    tier :: (Core.Maybe Instance_Tier),
    -- | Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
    transitEncryptionMode :: (Core.Maybe Instance_TransitEncryptionMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
newInstance ::
  Instance
newInstance =
  Instance
    { alternativeLocationId = Core.Nothing,
      authEnabled = Core.Nothing,
      authorizedNetwork = Core.Nothing,
      availableMaintenanceVersions = Core.Nothing,
      connectMode = Core.Nothing,
      createTime = Core.Nothing,
      currentLocationId = Core.Nothing,
      customerManagedKey = Core.Nothing,
      displayName = Core.Nothing,
      host = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      maintenancePolicy = Core.Nothing,
      maintenanceSchedule = Core.Nothing,
      maintenanceVersion = Core.Nothing,
      memorySizeGb = Core.Nothing,
      name = Core.Nothing,
      nodes = Core.Nothing,
      persistenceConfig = Core.Nothing,
      persistenceIamIdentity = Core.Nothing,
      port = Core.Nothing,
      readEndpoint = Core.Nothing,
      readEndpointPort = Core.Nothing,
      readReplicasMode = Core.Nothing,
      redisConfigs = Core.Nothing,
      redisVersion = Core.Nothing,
      replicaCount = Core.Nothing,
      reservedIpRange = Core.Nothing,
      satisfiesPzi = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      secondaryIpRange = Core.Nothing,
      serverCaCerts = Core.Nothing,
      state = Core.Nothing,
      statusMessage = Core.Nothing,
      suspensionReasons = Core.Nothing,
      tier = Core.Nothing,
      transitEncryptionMode = Core.Nothing
    }

instance Core.FromJSON Instance where
  parseJSON =
    Core.withObject
      "Instance"
      ( \o ->
          Instance
            Core.<$> (o Core..:? "alternativeLocationId")
            Core.<*> (o Core..:? "authEnabled")
            Core.<*> (o Core..:? "authorizedNetwork")
            Core.<*> (o Core..:? "availableMaintenanceVersions")
            Core.<*> (o Core..:? "connectMode")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "currentLocationId")
            Core.<*> (o Core..:? "customerManagedKey")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "host")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "maintenancePolicy")
            Core.<*> (o Core..:? "maintenanceSchedule")
            Core.<*> (o Core..:? "maintenanceVersion")
            Core.<*> (o Core..:? "memorySizeGb")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodes")
            Core.<*> (o Core..:? "persistenceConfig")
            Core.<*> (o Core..:? "persistenceIamIdentity")
            Core.<*> (o Core..:? "port")
            Core.<*> (o Core..:? "readEndpoint")
            Core.<*> (o Core..:? "readEndpointPort")
            Core.<*> (o Core..:? "readReplicasMode")
            Core.<*> (o Core..:? "redisConfigs")
            Core.<*> (o Core..:? "redisVersion")
            Core.<*> (o Core..:? "replicaCount")
            Core.<*> (o Core..:? "reservedIpRange")
            Core.<*> (o Core..:? "satisfiesPzi")
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "secondaryIpRange")
            Core.<*> (o Core..:? "serverCaCerts")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "suspensionReasons")
            Core.<*> (o Core..:? "tier")
            Core.<*> (o Core..:? "transitEncryptionMode")
      )

instance Core.ToJSON Instance where
  toJSON Instance {..} =
    Core.object
      ( Core.catMaybes
          [ ("alternativeLocationId" Core..=) Core.<$> alternativeLocationId,
            ("authEnabled" Core..=) Core.<$> authEnabled,
            ("authorizedNetwork" Core..=) Core.<$> authorizedNetwork,
            ("availableMaintenanceVersions" Core..=)
              Core.<$> availableMaintenanceVersions,
            ("connectMode" Core..=) Core.<$> connectMode,
            ("createTime" Core..=) Core.<$> createTime,
            ("currentLocationId" Core..=) Core.<$> currentLocationId,
            ("customerManagedKey" Core..=) Core.<$> customerManagedKey,
            ("displayName" Core..=) Core.<$> displayName,
            ("host" Core..=) Core.<$> host,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("maintenancePolicy" Core..=) Core.<$> maintenancePolicy,
            ("maintenanceSchedule" Core..=) Core.<$> maintenanceSchedule,
            ("maintenanceVersion" Core..=) Core.<$> maintenanceVersion,
            ("memorySizeGb" Core..=) Core.<$> memorySizeGb,
            ("name" Core..=) Core.<$> name,
            ("nodes" Core..=) Core.<$> nodes,
            ("persistenceConfig" Core..=) Core.<$> persistenceConfig,
            ("persistenceIamIdentity" Core..=) Core.<$> persistenceIamIdentity,
            ("port" Core..=) Core.<$> port,
            ("readEndpoint" Core..=) Core.<$> readEndpoint,
            ("readEndpointPort" Core..=) Core.<$> readEndpointPort,
            ("readReplicasMode" Core..=) Core.<$> readReplicasMode,
            ("redisConfigs" Core..=) Core.<$> redisConfigs,
            ("redisVersion" Core..=) Core.<$> redisVersion,
            ("replicaCount" Core..=) Core.<$> replicaCount,
            ("reservedIpRange" Core..=) Core.<$> reservedIpRange,
            ("satisfiesPzi" Core..=) Core.<$> satisfiesPzi,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("secondaryIpRange" Core..=) Core.<$> secondaryIpRange,
            ("serverCaCerts" Core..=) Core.<$> serverCaCerts,
            ("state" Core..=) Core.<$> state,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("suspensionReasons" Core..=) Core.<$> suspensionReasons,
            ("tier" Core..=) Core.<$> tier,
            ("transitEncryptionMode" Core..=) Core.<$> transitEncryptionMode
          ]
      )

-- | Resource labels to represent user provided metadata
--
-- /See:/ 'newInstance_Labels' smart constructor.
newtype Instance_Labels = Instance_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance_Labels' with the minimum fields required to make a request.
newInstance_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Instance_Labels
newInstance_Labels additional =
  Instance_Labels {additional = additional}

instance Core.FromJSON Instance_Labels where
  parseJSON =
    Core.withObject
      "Instance_Labels"
      (\o -> Instance_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Instance_Labels where
  toJSON Instance_Labels {..} = Core.toJSON additional

-- | Optional. Redis configuration parameters, according to http:\/\/redis.io\/topics\/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
--
-- /See:/ 'newInstance_RedisConfigs' smart constructor.
newtype Instance_RedisConfigs = Instance_RedisConfigs
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance_RedisConfigs' with the minimum fields required to make a request.
newInstance_RedisConfigs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Instance_RedisConfigs
newInstance_RedisConfigs additional =
  Instance_RedisConfigs {additional = additional}

instance Core.FromJSON Instance_RedisConfigs where
  parseJSON =
    Core.withObject
      "Instance_RedisConfigs"
      (\o -> Instance_RedisConfigs Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Instance_RedisConfigs where
  toJSON Instance_RedisConfigs {..} = Core.toJSON additional

-- | Instance AUTH string details.
--
-- /See:/ 'newInstanceAuthString' smart constructor.
newtype InstanceAuthString = InstanceAuthString
  { -- | AUTH string set on the instance.
    authString :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceAuthString' with the minimum fields required to make a request.
newInstanceAuthString ::
  InstanceAuthString
newInstanceAuthString =
  InstanceAuthString {authString = Core.Nothing}

instance Core.FromJSON InstanceAuthString where
  parseJSON =
    Core.withObject
      "InstanceAuthString"
      (\o -> InstanceAuthString Core.<$> (o Core..:? "authString"))

instance Core.ToJSON InstanceAuthString where
  toJSON InstanceAuthString {..} =
    Core.object
      (Core.catMaybes [("authString" Core..=) Core.<$> authString])

-- | Metadata for individual internal resources in an instance. e.g. spanner instance can have multiple databases with unique configuration settings. Similarly bigtable can have multiple clusters within same bigtable instance.
--
-- /See:/ 'newInternalResourceMetadata' smart constructor.
data InternalResourceMetadata = InternalResourceMetadata
  { -- | Backup configuration for this database
    backupConfiguration :: (Core.Maybe BackupConfiguration),
    -- | Information about the last backup attempt for this database
    backupRun :: (Core.Maybe BackupRun),
    -- | Whether deletion protection is enabled for this internal resource.
    isDeletionProtectionEnabled :: (Core.Maybe Core.Bool),
    product :: (Core.Maybe Product),
    resourceId :: (Core.Maybe DatabaseResourceId),
    -- | Required. internal resource name for spanner this will be database name e.g.\"spanner.googleapis.com\/projects\/123\/abc\/instances\/inst1\/databases\/db1\"
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InternalResourceMetadata' with the minimum fields required to make a request.
newInternalResourceMetadata ::
  InternalResourceMetadata
newInternalResourceMetadata =
  InternalResourceMetadata
    { backupConfiguration = Core.Nothing,
      backupRun = Core.Nothing,
      isDeletionProtectionEnabled = Core.Nothing,
      product = Core.Nothing,
      resourceId = Core.Nothing,
      resourceName = Core.Nothing
    }

instance Core.FromJSON InternalResourceMetadata where
  parseJSON =
    Core.withObject
      "InternalResourceMetadata"
      ( \o ->
          InternalResourceMetadata
            Core.<$> (o Core..:? "backupConfiguration")
            Core.<*> (o Core..:? "backupRun")
            Core.<*> (o Core..:? "isDeletionProtectionEnabled")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "resourceName")
      )

instance Core.ToJSON InternalResourceMetadata where
  toJSON InternalResourceMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupConfiguration" Core..=) Core.<$> backupConfiguration,
            ("backupRun" Core..=) Core.<$> backupRun,
            ("isDeletionProtectionEnabled" Core..=)
              Core.<$> isDeletionProtectionEnabled,
            ("product" Core..=) Core.<$> product,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("resourceName" Core..=) Core.<$> resourceName
          ]
      )

-- | Response for [ListBackupCollections].
--
-- /See:/ 'newListBackupCollectionsResponse' smart constructor.
data ListBackupCollectionsResponse = ListBackupCollectionsResponse
  { -- | A list of backupCollections in the project. If the @location_id@ in the parent field of the request is \"-\", all regions available to the project are queried, and the results aggregated. If in such an aggregated query a location is unavailable, a placeholder backupCollection entry is included in the response with the @name@ field set to a value of the form @projects\/{project_id}\/locations\/{location_id}\/backupCollections\/@- and the @status@ field set to ERROR and @status_message@ field set to \"location not available for ListBackupCollections\".
    backupCollections :: (Core.Maybe [BackupCollection]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Locations that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBackupCollectionsResponse' with the minimum fields required to make a request.
newListBackupCollectionsResponse ::
  ListBackupCollectionsResponse
newListBackupCollectionsResponse =
  ListBackupCollectionsResponse
    { backupCollections = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListBackupCollectionsResponse where
  parseJSON =
    Core.withObject
      "ListBackupCollectionsResponse"
      ( \o ->
          ListBackupCollectionsResponse
            Core.<$> (o Core..:? "backupCollections")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable")
      )

instance Core.ToJSON ListBackupCollectionsResponse where
  toJSON ListBackupCollectionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupCollections" Core..=) Core.<$> backupCollections,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | Response for [ListBackups].
--
-- /See:/ 'newListBackupsResponse' smart constructor.
data ListBackupsResponse = ListBackupsResponse
  { -- | A list of backups in the project.
    backups :: (Core.Maybe [Backup]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Backups that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBackupsResponse' with the minimum fields required to make a request.
newListBackupsResponse ::
  ListBackupsResponse
newListBackupsResponse =
  ListBackupsResponse
    { backups = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListBackupsResponse where
  parseJSON =
    Core.withObject
      "ListBackupsResponse"
      ( \o ->
          ListBackupsResponse
            Core.<$> (o Core..:? "backups")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable")
      )

instance Core.ToJSON ListBackupsResponse where
  toJSON ListBackupsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("backups" Core..=) Core.<$> backups,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | Response for ListClusters.
--
-- /See:/ 'newListClustersResponse' smart constructor.
data ListClustersResponse = ListClustersResponse
  { -- | A list of Redis clusters in the project in the specified location, or across all locations. If the @location_id@ in the parent field of the request is \"-\", all regions available to the project are queried, and the results aggregated. If in such an aggregated query a location is unavailable, a placeholder Redis entry is included in the response with the @name@ field set to a value of the form @projects\/{project_id}\/locations\/{location_id}\/clusters\/@- and the @status@ field set to ERROR and @status_message@ field set to \"location not available for ListClusters\".
    clusters :: (Core.Maybe [Cluster]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Locations that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
newListClustersResponse ::
  ListClustersResponse
newListClustersResponse =
  ListClustersResponse
    { clusters = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListClustersResponse where
  parseJSON =
    Core.withObject
      "ListClustersResponse"
      ( \o ->
          ListClustersResponse
            Core.<$> (o Core..:? "clusters")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable")
      )

instance Core.ToJSON ListClustersResponse where
  toJSON ListClustersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusters" Core..=) Core.<$> clusters,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | Response for ListInstances.
--
-- /See:/ 'newListInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse
  { -- | A list of Redis instances in the project in the specified location, or across all locations. If the @location_id@ in the parent field of the request is \"-\", all regions available to the project are queried, and the results aggregated. If in such an aggregated query a location is unavailable, a placeholder Redis entry is included in the response with the @name@ field set to a value of the form @projects\/{project_id}\/locations\/{location_id}\/instances\/@- and the @status@ field set to ERROR and @status_message@ field set to \"location not available for ListInstances\".
    instances :: (Core.Maybe [Instance]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Locations that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
newListInstancesResponse ::
  ListInstancesResponse
newListInstancesResponse =
  ListInstancesResponse
    { instances = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListInstancesResponse where
  parseJSON =
    Core.withObject
      "ListInstancesResponse"
      ( \o ->
          ListInstancesResponse
            Core.<$> (o Core..:? "instances")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable")
      )

instance Core.ToJSON ListInstancesResponse where
  toJSON ListInstancesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("instances" Core..=) Core.<$> instances,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
  { -- | A list of locations that matches the specified filter in the request.
    locations :: (Core.Maybe [Location]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse ::
  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse
    { locations = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLocationsResponse where
  toJSON ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | A resource that represents a Google Cloud location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | Resource ID for the region. For example: \"us-east1\".
    locationId :: (Core.Maybe Core.Text),
    -- | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by Compute Engine. These keys can be specified in @location_id@ or @alternative_location_id@ fields when creating a Redis instance.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Full resource name for the region. For example: \"projects\/example-project\/locations\/us-east1\".
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { displayName = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional =
  Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      (\o -> Location_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON additional

-- | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by Compute Engine. These keys can be specified in @location_id@ or @alternative_location_id@ fields when creating a Redis instance.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata additional =
  Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      (\o -> Location_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | MachineConfiguration describes the configuration of a machine specific to Database Resource.
--
-- /See:/ 'newMachineConfiguration' smart constructor.
data MachineConfiguration = MachineConfiguration
  { -- | The number of CPUs. Deprecated. Use vcpu_count instead. TODO(b\/342344482) add proto validations again after bug fix.
    cpuCount :: (Core.Maybe Core.Int32),
    -- | Memory size in bytes. TODO(b\/342344482) add proto validations again after bug fix.
    memorySizeInBytes :: (Core.Maybe Core.Int64),
    -- | Optional. Number of shards (if applicable).
    shardCount :: (Core.Maybe Core.Int32),
    -- | Optional. The number of vCPUs. TODO(b\/342344482) add proto validations again after bug fix.
    vcpuCount :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MachineConfiguration' with the minimum fields required to make a request.
newMachineConfiguration ::
  MachineConfiguration
newMachineConfiguration =
  MachineConfiguration
    { cpuCount = Core.Nothing,
      memorySizeInBytes = Core.Nothing,
      shardCount = Core.Nothing,
      vcpuCount = Core.Nothing
    }

instance Core.FromJSON MachineConfiguration where
  parseJSON =
    Core.withObject
      "MachineConfiguration"
      ( \o ->
          MachineConfiguration
            Core.<$> (o Core..:? "cpuCount")
            Core.<*> (o Core..:? "memorySizeInBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "shardCount")
            Core.<*> (o Core..:? "vcpuCount")
      )

instance Core.ToJSON MachineConfiguration where
  toJSON MachineConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("cpuCount" Core..=) Core.<$> cpuCount,
            ("memorySizeInBytes" Core..=)
              Core.. Core.AsText
              Core.<$> memorySizeInBytes,
            ("shardCount" Core..=) Core.<$> shardCount,
            ("vcpuCount" Core..=) Core.<$> vcpuCount
          ]
      )

-- | Maintenance policy for an instance.
--
-- /See:/ 'newMaintenancePolicy' smart constructor.
data MaintenancePolicy = MaintenancePolicy
  { -- | Output only. The time when the policy was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Description of what this policy is for. Create\/Update methods return INVALID_ARGUMENT if the length is greater than 512.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The time when the policy was last updated.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
    weeklyMaintenanceWindow :: (Core.Maybe [WeeklyMaintenanceWindow])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenancePolicy' with the minimum fields required to make a request.
newMaintenancePolicy ::
  MaintenancePolicy
newMaintenancePolicy =
  MaintenancePolicy
    { createTime = Core.Nothing,
      description = Core.Nothing,
      updateTime = Core.Nothing,
      weeklyMaintenanceWindow = Core.Nothing
    }

instance Core.FromJSON MaintenancePolicy where
  parseJSON =
    Core.withObject
      "MaintenancePolicy"
      ( \o ->
          MaintenancePolicy
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "weeklyMaintenanceWindow")
      )

instance Core.ToJSON MaintenancePolicy where
  toJSON MaintenancePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("weeklyMaintenanceWindow" Core..=)
              Core.<$> weeklyMaintenanceWindow
          ]
      )

-- | Upcoming maintenance schedule. If no maintenance is scheduled, fields are not populated.
--
-- /See:/ 'newMaintenanceSchedule' smart constructor.
data MaintenanceSchedule = MaintenanceSchedule
  { -- | If the scheduled maintenance can be rescheduled, default is true.
    canReschedule :: (Core.Maybe Core.Bool),
    -- | Output only. The end time of any upcoming scheduled maintenance for this instance.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The deadline that the maintenance schedule start time can not go beyond, including reschedule.
    scheduleDeadlineTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The start time of any upcoming scheduled maintenance for this instance.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceSchedule' with the minimum fields required to make a request.
newMaintenanceSchedule ::
  MaintenanceSchedule
newMaintenanceSchedule =
  MaintenanceSchedule
    { canReschedule = Core.Nothing,
      endTime = Core.Nothing,
      scheduleDeadlineTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON MaintenanceSchedule where
  parseJSON =
    Core.withObject
      "MaintenanceSchedule"
      ( \o ->
          MaintenanceSchedule
            Core.<$> (o Core..:? "canReschedule")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "scheduleDeadlineTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON MaintenanceSchedule where
  toJSON MaintenanceSchedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("canReschedule" Core..=) Core.<$> canReschedule,
            ("endTime" Core..=) Core.<$> endTime,
            ("scheduleDeadlineTime" Core..=) Core.<$> scheduleDeadlineTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Backups that generated and managed by memorystore.
--
-- /See:/ 'newManagedBackupSource' smart constructor.
newtype ManagedBackupSource = ManagedBackupSource
  { -- | Optional. Example: \/\/redis.googleapis.com\/projects\/{project}\/locations\/{location}\/backupCollections\/{collection}\/backups\/{backup} A shorter version (without the prefix) of the backup name is also supported, like projects\/{project}\/locations\/{location}\/backupCollections\/{collection}\/backups\/{backup_id} In this case, it assumes the backup is under redis.googleapis.com.
    backup :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedBackupSource' with the minimum fields required to make a request.
newManagedBackupSource ::
  ManagedBackupSource
newManagedBackupSource = ManagedBackupSource {backup = Core.Nothing}

instance Core.FromJSON ManagedBackupSource where
  parseJSON =
    Core.withObject
      "ManagedBackupSource"
      (\o -> ManagedBackupSource Core.<$> (o Core..:? "backup"))

instance Core.ToJSON ManagedBackupSource where
  toJSON ManagedBackupSource {..} =
    Core.object (Core.catMaybes [("backup" Core..=) Core.<$> backup])

--
-- /See:/ 'newManagedCertificateAuthority' smart constructor.
newtype ManagedCertificateAuthority = ManagedCertificateAuthority
  { -- | The PEM encoded CA certificate chains for redis managed server authentication
    caCerts :: (Core.Maybe [CertChain])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedCertificateAuthority' with the minimum fields required to make a request.
newManagedCertificateAuthority ::
  ManagedCertificateAuthority
newManagedCertificateAuthority =
  ManagedCertificateAuthority {caCerts = Core.Nothing}

instance Core.FromJSON ManagedCertificateAuthority where
  parseJSON =
    Core.withObject
      "ManagedCertificateAuthority"
      ( \o ->
          ManagedCertificateAuthority Core.<$> (o Core..:? "caCerts")
      )

instance Core.ToJSON ManagedCertificateAuthority where
  toJSON ManagedCertificateAuthority {..} =
    Core.object
      (Core.catMaybes [("caCerts" Core..=) Core.<$> caCerts])

-- | An output only view of all the member clusters participating in the cross cluster replication.
--
-- /See:/ 'newMembership' smart constructor.
data Membership = Membership
  { -- | Output only. The primary cluster that acts as the source of replication for the secondary clusters.
    primaryCluster :: (Core.Maybe RemoteCluster),
    -- | Output only. The list of secondary clusters replicating from the primary cluster.
    secondaryClusters :: (Core.Maybe [RemoteCluster])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Membership' with the minimum fields required to make a request.
newMembership ::
  Membership
newMembership =
  Membership
    { primaryCluster = Core.Nothing,
      secondaryClusters = Core.Nothing
    }

instance Core.FromJSON Membership where
  parseJSON =
    Core.withObject
      "Membership"
      ( \o ->
          Membership
            Core.<$> (o Core..:? "primaryCluster")
            Core.<*> (o Core..:? "secondaryClusters")
      )

instance Core.ToJSON Membership where
  toJSON Membership {..} =
    Core.object
      ( Core.catMaybes
          [ ("primaryCluster" Core..=) Core.<$> primaryCluster,
            ("secondaryClusters" Core..=) Core.<$> secondaryClusters
          ]
      )

-- | Node specific properties.
--
-- /See:/ 'newNodeInfo' smart constructor.
data NodeInfo = NodeInfo
  { -- | Output only. Node identifying string. e.g. \'node-0\', \'node-1\'
    id :: (Core.Maybe Core.Text),
    -- | Output only. Location of the node.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeInfo' with the minimum fields required to make a request.
newNodeInfo ::
  NodeInfo
newNodeInfo = NodeInfo {id = Core.Nothing, zone = Core.Nothing}

instance Core.FromJSON NodeInfo where
  parseJSON =
    Core.withObject
      "NodeInfo"
      ( \o ->
          NodeInfo Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON NodeInfo where
  toJSON NodeInfo {..} =
    Core.object
      ( Core.catMaybes
          [("id" Core..=) Core.<$> id, ("zone" Core..=) Core.<$> zone]
      )

--
-- /See:/ 'newObservabilityMetricData' smart constructor.
data ObservabilityMetricData = ObservabilityMetricData
  { -- | Required. Type of aggregation performed on the metric.
    aggregationType :: (Core.Maybe ObservabilityMetricData_AggregationType),
    -- | Required. Type of metric like CPU, Memory, etc.
    metricType :: (Core.Maybe ObservabilityMetricData_MetricType),
    -- | Required. The time the metric value was observed.
    observationTime :: (Core.Maybe Core.DateTime),
    -- | Required. Database resource name associated with the signal. Resource name to follow CAIS resource_name format as noted here go\/condor-common-datamodel
    resourceName :: (Core.Maybe Core.Text),
    -- | Required. Value of the metric type.
    value :: (Core.Maybe TypedValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObservabilityMetricData' with the minimum fields required to make a request.
newObservabilityMetricData ::
  ObservabilityMetricData
newObservabilityMetricData =
  ObservabilityMetricData
    { aggregationType = Core.Nothing,
      metricType = Core.Nothing,
      observationTime = Core.Nothing,
      resourceName = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON ObservabilityMetricData where
  parseJSON =
    Core.withObject
      "ObservabilityMetricData"
      ( \o ->
          ObservabilityMetricData
            Core.<$> (o Core..:? "aggregationType")
            Core.<*> (o Core..:? "metricType")
            Core.<*> (o Core..:? "observationTime")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ObservabilityMetricData where
  toJSON ObservabilityMetricData {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregationType" Core..=) Core.<$> aggregationType,
            ("metricType" Core..=) Core.<$> metricType,
            ("observationTime" Core..=) Core.<$> observationTime,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | { @createTime@: The time the operation was created. @endTime@: The time the operation finished running. @target@: Server-defined resource path for the target of the operation. @verb@: Name of the verb executed by the operation. @statusDetail@: Human-readable status of the operation, if any. @cancelRequested@: Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@. @apiVersion@: API version used to start the operation. }
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | { @createTime@: The time the operation was created. @endTime@: The time the operation finished running. @target@: Server-defined resource path for the target of the operation. @verb@: Name of the verb executed by the operation. @statusDetail@: Human-readable status of the operation, if any. @cancelRequested@: Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@. @apiVersion@: API version used to start the operation. }
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional =
  Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      (\o -> Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON additional

-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional =
  Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      (\o -> Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON additional

-- | An error that occurred during a backup creation operation.
--
-- /See:/ 'newOperationError' smart constructor.
data OperationError = OperationError
  { -- | Identifies the specific error that occurred. REQUIRED
    code :: (Core.Maybe Core.Text),
    errorType :: (Core.Maybe OperationError_ErrorType),
    -- | Additional information about the error encountered. REQUIRED
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationError' with the minimum fields required to make a request.
newOperationError ::
  OperationError
newOperationError =
  OperationError
    { code = Core.Nothing,
      errorType = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON OperationError where
  parseJSON =
    Core.withObject
      "OperationError"
      ( \o ->
          OperationError
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "errorType")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON OperationError where
  toJSON OperationError {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("errorType" Core..=) Core.<$> errorType,
            ("message" Core..=) Core.<$> message
          ]
      )

-- | Pre-defined metadata fields.
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
  { -- | Output only. API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Output only. The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    requestedCancellation :: (Core.Maybe Core.Bool),
    -- | Output only. Human-readable status of the operation, if any.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Output only. Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Output only. Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata ::
  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { apiVersion = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      requestedCancellation = Core.Nothing,
      statusMessage = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
  parseJSON =
    Core.withObject
      "OperationMetadata"
      ( \o ->
          OperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "requestedCancellation")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance Core.ToJSON OperationMetadata where
  toJSON OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("requestedCancellation" Core..=) Core.<$> requestedCancellation,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("target" Core..=) Core.<$> target,
            ("verb" Core..=) Core.<$> verb
          ]
      )

-- | The output content
--
-- /See:/ 'newOutputConfig' smart constructor.
newtype OutputConfig = OutputConfig
  { -- | Google Cloud Storage destination for output content.
    gcsDestination :: (Core.Maybe GcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OutputConfig' with the minimum fields required to make a request.
newOutputConfig ::
  OutputConfig
newOutputConfig = OutputConfig {gcsDestination = Core.Nothing}

instance Core.FromJSON OutputConfig where
  parseJSON =
    Core.withObject
      "OutputConfig"
      (\o -> OutputConfig Core.<$> (o Core..:? "gcsDestination"))

instance Core.ToJSON OutputConfig where
  toJSON OutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [("gcsDestination" Core..=) Core.<$> gcsDestination]
      )

-- | Configuration of the persistence functionality.
--
-- /See:/ 'newPersistenceConfig' smart constructor.
data PersistenceConfig = PersistenceConfig
  { -- | Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
    persistenceMode :: (Core.Maybe PersistenceConfig_PersistenceMode),
    -- | Output only. The next time that a snapshot attempt is scheduled to occur.
    rdbNextSnapshotTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01\/01\/2033 06:45 and SIX/HOURS snapshot period will do nothing until 01\/01\/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY/FOUR_HOURS will be used as default.
    rdbSnapshotPeriod :: (Core.Maybe PersistenceConfig_RdbSnapshotPeriod),
    -- | Optional. Date and time that the first snapshot was\/will be attempted, and to which future snapshots will be aligned. If not provided, the current time will be used.
    rdbSnapshotStartTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PersistenceConfig' with the minimum fields required to make a request.
newPersistenceConfig ::
  PersistenceConfig
newPersistenceConfig =
  PersistenceConfig
    { persistenceMode = Core.Nothing,
      rdbNextSnapshotTime = Core.Nothing,
      rdbSnapshotPeriod = Core.Nothing,
      rdbSnapshotStartTime = Core.Nothing
    }

instance Core.FromJSON PersistenceConfig where
  parseJSON =
    Core.withObject
      "PersistenceConfig"
      ( \o ->
          PersistenceConfig
            Core.<$> (o Core..:? "persistenceMode")
            Core.<*> (o Core..:? "rdbNextSnapshotTime")
            Core.<*> (o Core..:? "rdbSnapshotPeriod")
            Core.<*> (o Core..:? "rdbSnapshotStartTime")
      )

instance Core.ToJSON PersistenceConfig where
  toJSON PersistenceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("persistenceMode" Core..=) Core.<$> persistenceMode,
            ("rdbNextSnapshotTime" Core..=) Core.<$> rdbNextSnapshotTime,
            ("rdbSnapshotPeriod" Core..=) Core.<$> rdbSnapshotPeriod,
            ("rdbSnapshotStartTime" Core..=) Core.<$> rdbSnapshotStartTime
          ]
      )

-- | Product specification for Condor resources.
--
-- /See:/ 'newProduct' smart constructor.
data Product = Product
  { -- | The specific engine that the underlying database is running.
    engine :: (Core.Maybe Product_Engine),
    -- | Type of specific database product. It could be CloudSQL, AlloyDB etc..
    type' :: (Core.Maybe Product_Type),
    -- | Version of the underlying database engine. Example values: For MySQL, it could be \"8.0\", \"5.7\" etc.. For Postgres, it could be \"14\", \"15\" etc..
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
newProduct ::
  Product
newProduct =
  Product
    { engine = Core.Nothing,
      type' = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Product where
  parseJSON =
    Core.withObject
      "Product"
      ( \o ->
          Product
            Core.<$> (o Core..:? "engine")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Product where
  toJSON Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("engine" Core..=) Core.<$> engine,
            ("type" Core..=) Core.<$> type',
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Details of consumer resources in a PSC connection that is created through Service Connectivity Automation.
--
-- /See:/ 'newPscAutoConnection' smart constructor.
data PscAutoConnection = PscAutoConnection
  { -- | Output only. The IP allocated on the consumer network for the PSC forwarding rule.
    address :: (Core.Maybe Core.Text),
    -- | Output only. Type of the PSC connection.
    connectionType :: (Core.Maybe PscAutoConnection_ConnectionType),
    -- | Output only. The URI of the consumer side forwarding rule. Example: projects\/{projectNumOrId}\/regions\/us-east1\/forwardingRules\/{resourceId}.
    forwardingRule :: (Core.Maybe Core.Text),
    -- | Required. The consumer network where the IP address resides, in the form of projects\/{project/id}\/global\/networks\/{network/id}.
    network :: (Core.Maybe Core.Text),
    -- | Required. The consumer project_id where the forwarding rule is created from.
    projectId :: (Core.Maybe Core.Text),
    -- | Output only. The PSC connection id of the forwarding rule connected to the service attachment.
    pscConnectionId :: (Core.Maybe Core.Text),
    -- | Output only. The status of the PSC connection. Please note that this value is updated periodically. Please use Private Service Connect APIs for the latest status.
    pscConnectionStatus :: (Core.Maybe PscAutoConnection_PscConnectionStatus),
    -- | Output only. The service attachment which is the target of the PSC connection, in the form of projects\/{project-id}\/regions\/{region}\/serviceAttachments\/{service-attachment-id}.
    serviceAttachment :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PscAutoConnection' with the minimum fields required to make a request.
newPscAutoConnection ::
  PscAutoConnection
newPscAutoConnection =
  PscAutoConnection
    { address = Core.Nothing,
      connectionType = Core.Nothing,
      forwardingRule = Core.Nothing,
      network = Core.Nothing,
      projectId = Core.Nothing,
      pscConnectionId = Core.Nothing,
      pscConnectionStatus = Core.Nothing,
      serviceAttachment = Core.Nothing
    }

instance Core.FromJSON PscAutoConnection where
  parseJSON =
    Core.withObject
      "PscAutoConnection"
      ( \o ->
          PscAutoConnection
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "connectionType")
            Core.<*> (o Core..:? "forwardingRule")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "pscConnectionId")
            Core.<*> (o Core..:? "pscConnectionStatus")
            Core.<*> (o Core..:? "serviceAttachment")
      )

instance Core.ToJSON PscAutoConnection where
  toJSON PscAutoConnection {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("connectionType" Core..=) Core.<$> connectionType,
            ("forwardingRule" Core..=) Core.<$> forwardingRule,
            ("network" Core..=) Core.<$> network,
            ("projectId" Core..=) Core.<$> projectId,
            ("pscConnectionId" Core..=) Core.<$> pscConnectionId,
            ("pscConnectionStatus" Core..=) Core.<$> pscConnectionStatus,
            ("serviceAttachment" Core..=) Core.<$> serviceAttachment
          ]
      )

--
-- /See:/ 'newPscConfig' smart constructor.
newtype PscConfig = PscConfig
  { -- | Required. The network where the IP address of the discovery endpoint will be reserved, in the form of projects\/{network/project}\/global\/networks\/{network/id}.
    network :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PscConfig' with the minimum fields required to make a request.
newPscConfig ::
  PscConfig
newPscConfig = PscConfig {network = Core.Nothing}

instance Core.FromJSON PscConfig where
  parseJSON =
    Core.withObject
      "PscConfig"
      (\o -> PscConfig Core.<$> (o Core..:? "network"))

instance Core.ToJSON PscConfig where
  toJSON PscConfig {..} =
    Core.object
      (Core.catMaybes [("network" Core..=) Core.<$> network])

-- | Details of consumer resources in a PSC connection.
--
-- /See:/ 'newPscConnection' smart constructor.
data PscConnection = PscConnection
  { -- | Required. The IP allocated on the consumer network for the PSC forwarding rule.
    address :: (Core.Maybe Core.Text),
    -- | Output only. Type of the PSC connection.
    connectionType :: (Core.Maybe PscConnection_ConnectionType),
    -- | Required. The URI of the consumer side forwarding rule. Example: projects\/{projectNumOrId}\/regions\/us-east1\/forwardingRules\/{resourceId}.
    forwardingRule :: (Core.Maybe Core.Text),
    -- | Required. The consumer network where the IP address resides, in the form of projects\/{project/id}\/global\/networks\/{network/id}.
    network :: (Core.Maybe Core.Text),
    -- | Output only. The port number of the exposed discovery endpoint.
    port :: (Core.Maybe Core.Int32),
    -- | Optional. Project ID of the consumer project where the forwarding rule is created in.
    projectId :: (Core.Maybe Core.Text),
    -- | Required. The PSC connection id of the forwarding rule connected to the service attachment.
    pscConnectionId :: (Core.Maybe Core.Text),
    -- | Output only. The status of the PSC connection. Please note that this value is updated periodically. To get the latest status of a PSC connection, follow https:\/\/cloud.google.com\/vpc\/docs\/configure-private-service-connect-services#endpoint-details.
    pscConnectionStatus :: (Core.Maybe PscConnection_PscConnectionStatus),
    -- | Required. The service attachment which is the target of the PSC connection, in the form of projects\/{project-id}\/regions\/{region}\/serviceAttachments\/{service-attachment-id}.
    serviceAttachment :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PscConnection' with the minimum fields required to make a request.
newPscConnection ::
  PscConnection
newPscConnection =
  PscConnection
    { address = Core.Nothing,
      connectionType = Core.Nothing,
      forwardingRule = Core.Nothing,
      network = Core.Nothing,
      port = Core.Nothing,
      projectId = Core.Nothing,
      pscConnectionId = Core.Nothing,
      pscConnectionStatus = Core.Nothing,
      serviceAttachment = Core.Nothing
    }

instance Core.FromJSON PscConnection where
  parseJSON =
    Core.withObject
      "PscConnection"
      ( \o ->
          PscConnection
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "connectionType")
            Core.<*> (o Core..:? "forwardingRule")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "port")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "pscConnectionId")
            Core.<*> (o Core..:? "pscConnectionStatus")
            Core.<*> (o Core..:? "serviceAttachment")
      )

instance Core.ToJSON PscConnection where
  toJSON PscConnection {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("connectionType" Core..=) Core.<$> connectionType,
            ("forwardingRule" Core..=) Core.<$> forwardingRule,
            ("network" Core..=) Core.<$> network,
            ("port" Core..=) Core.<$> port,
            ("projectId" Core..=) Core.<$> projectId,
            ("pscConnectionId" Core..=) Core.<$> pscConnectionId,
            ("pscConnectionStatus" Core..=) Core.<$> pscConnectionStatus,
            ("serviceAttachment" Core..=) Core.<$> serviceAttachment
          ]
      )

-- | Configuration of a service attachment of the cluster, for creating PSC connections.
--
-- /See:/ 'newPscServiceAttachment' smart constructor.
data PscServiceAttachment = PscServiceAttachment
  { -- | Output only. Type of a PSC connection targeting this service attachment.
    connectionType :: (Core.Maybe PscServiceAttachment_ConnectionType),
    -- | Output only. Service attachment URI which your self-created PscConnection should use as target
    serviceAttachment :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PscServiceAttachment' with the minimum fields required to make a request.
newPscServiceAttachment ::
  PscServiceAttachment
newPscServiceAttachment =
  PscServiceAttachment
    { connectionType = Core.Nothing,
      serviceAttachment = Core.Nothing
    }

instance Core.FromJSON PscServiceAttachment where
  parseJSON =
    Core.withObject
      "PscServiceAttachment"
      ( \o ->
          PscServiceAttachment
            Core.<$> (o Core..:? "connectionType")
            Core.<*> (o Core..:? "serviceAttachment")
      )

instance Core.ToJSON PscServiceAttachment where
  toJSON PscServiceAttachment {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectionType" Core..=) Core.<$> connectionType,
            ("serviceAttachment" Core..=) Core.<$> serviceAttachment
          ]
      )

-- | Configuration of the RDB based persistence.
--
-- /See:/ 'newRDBConfig' smart constructor.
data RDBConfig = RDBConfig
  { -- | Optional. Period between RDB snapshots.
    rdbSnapshotPeriod :: (Core.Maybe RDBConfig_RdbSnapshotPeriod),
    -- | Optional. The time that the first snapshot was\/will be attempted, and to which future snapshots will be aligned. If not provided, the current time will be used.
    rdbSnapshotStartTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RDBConfig' with the minimum fields required to make a request.
newRDBConfig ::
  RDBConfig
newRDBConfig =
  RDBConfig
    { rdbSnapshotPeriod = Core.Nothing,
      rdbSnapshotStartTime = Core.Nothing
    }

instance Core.FromJSON RDBConfig where
  parseJSON =
    Core.withObject
      "RDBConfig"
      ( \o ->
          RDBConfig
            Core.<$> (o Core..:? "rdbSnapshotPeriod")
            Core.<*> (o Core..:? "rdbSnapshotStartTime")
      )

instance Core.ToJSON RDBConfig where
  toJSON RDBConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("rdbSnapshotPeriod" Core..=) Core.<$> rdbSnapshotPeriod,
            ("rdbSnapshotStartTime" Core..=) Core.<$> rdbSnapshotStartTime
          ]
      )

-- | Operation metadata returned by the CLH during resource state reconciliation.
--
-- /See:/ 'newReconciliationOperationMetadata' smart constructor.
data ReconciliationOperationMetadata = ReconciliationOperationMetadata
  { -- | DEPRECATED. Use exclusive_action instead.
    deleteResource :: (Core.Maybe Core.Bool),
    -- | Excluisive action returned by the CLH.
    exclusiveAction :: (Core.Maybe ReconciliationOperationMetadata_ExclusiveAction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReconciliationOperationMetadata' with the minimum fields required to make a request.
newReconciliationOperationMetadata ::
  ReconciliationOperationMetadata
newReconciliationOperationMetadata =
  ReconciliationOperationMetadata
    { deleteResource = Core.Nothing,
      exclusiveAction = Core.Nothing
    }

instance Core.FromJSON ReconciliationOperationMetadata where
  parseJSON =
    Core.withObject
      "ReconciliationOperationMetadata"
      ( \o ->
          ReconciliationOperationMetadata
            Core.<$> (o Core..:? "deleteResource")
            Core.<*> (o Core..:? "exclusiveAction")
      )

instance Core.ToJSON ReconciliationOperationMetadata where
  toJSON ReconciliationOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("deleteResource" Core..=) Core.<$> deleteResource,
            ("exclusiveAction" Core..=) Core.<$> exclusiveAction
          ]
      )

-- | Details of the remote cluster associated with this cluster in a cross cluster replication setup.
--
-- /See:/ 'newRemoteCluster' smart constructor.
data RemoteCluster = RemoteCluster
  { -- | The full resource path of the remote cluster in the format: projects\/\/locations\/\/clusters\/
    cluster :: (Core.Maybe Core.Text),
    -- | Output only. The unique identifier of the remote cluster.
    uid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteCluster' with the minimum fields required to make a request.
newRemoteCluster ::
  RemoteCluster
newRemoteCluster =
  RemoteCluster {cluster = Core.Nothing, uid = Core.Nothing}

instance Core.FromJSON RemoteCluster where
  parseJSON =
    Core.withObject
      "RemoteCluster"
      ( \o ->
          RemoteCluster
            Core.<$> (o Core..:? "cluster")
            Core.<*> (o Core..:? "uid")
      )

instance Core.ToJSON RemoteCluster where
  toJSON RemoteCluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("cluster" Core..=) Core.<$> cluster,
            ("uid" Core..=) Core.<$> uid
          ]
      )

-- | Request for rescheduling a cluster maintenance.
--
-- /See:/ 'newRescheduleClusterMaintenanceRequest' smart constructor.
data RescheduleClusterMaintenanceRequest = RescheduleClusterMaintenanceRequest
  { -- | Required. If reschedule type is SPECIFIC/TIME, must set up schedule/time as well.
    rescheduleType :: (Core.Maybe RescheduleClusterMaintenanceRequest_RescheduleType),
    -- | Optional. Timestamp when the maintenance shall be rescheduled to if reschedule/type=SPECIFIC/TIME, in RFC 3339 format, for example @2012-11-15T16:19:00.094Z@.
    scheduleTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RescheduleClusterMaintenanceRequest' with the minimum fields required to make a request.
newRescheduleClusterMaintenanceRequest ::
  RescheduleClusterMaintenanceRequest
newRescheduleClusterMaintenanceRequest =
  RescheduleClusterMaintenanceRequest
    { rescheduleType =
        Core.Nothing,
      scheduleTime = Core.Nothing
    }

instance Core.FromJSON RescheduleClusterMaintenanceRequest where
  parseJSON =
    Core.withObject
      "RescheduleClusterMaintenanceRequest"
      ( \o ->
          RescheduleClusterMaintenanceRequest
            Core.<$> (o Core..:? "rescheduleType")
            Core.<*> (o Core..:? "scheduleTime")
      )

instance Core.ToJSON RescheduleClusterMaintenanceRequest where
  toJSON RescheduleClusterMaintenanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("rescheduleType" Core..=) Core.<$> rescheduleType,
            ("scheduleTime" Core..=) Core.<$> scheduleTime
          ]
      )

-- | Request for RescheduleMaintenance.
--
-- /See:/ 'newRescheduleMaintenanceRequest' smart constructor.
data RescheduleMaintenanceRequest = RescheduleMaintenanceRequest
  { -- | Required. If reschedule type is SPECIFIC/TIME, must set up schedule/time as well.
    rescheduleType :: (Core.Maybe RescheduleMaintenanceRequest_RescheduleType),
    -- | Optional. Timestamp when the maintenance shall be rescheduled to if reschedule/type=SPECIFIC/TIME, in RFC 3339 format, for example @2012-11-15T16:19:00.094Z@.
    scheduleTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RescheduleMaintenanceRequest' with the minimum fields required to make a request.
newRescheduleMaintenanceRequest ::
  RescheduleMaintenanceRequest
newRescheduleMaintenanceRequest =
  RescheduleMaintenanceRequest
    { rescheduleType = Core.Nothing,
      scheduleTime = Core.Nothing
    }

instance Core.FromJSON RescheduleMaintenanceRequest where
  parseJSON =
    Core.withObject
      "RescheduleMaintenanceRequest"
      ( \o ->
          RescheduleMaintenanceRequest
            Core.<$> (o Core..:? "rescheduleType")
            Core.<*> (o Core..:? "scheduleTime")
      )

instance Core.ToJSON RescheduleMaintenanceRequest where
  toJSON RescheduleMaintenanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("rescheduleType" Core..=) Core.<$> rescheduleType,
            ("scheduleTime" Core..=) Core.<$> scheduleTime
          ]
      )

--
-- /See:/ 'newRetentionSettings' smart constructor.
data RetentionSettings = RetentionSettings
  { -- | Duration based retention period i.e. 172800 seconds (2 days)
    durationBasedRetention :: (Core.Maybe Core.Duration),
    quantityBasedRetention :: (Core.Maybe Core.Int32),
    -- | The unit that \'retained_backups\' represents.
    retentionUnit :: (Core.Maybe RetentionSettings_RetentionUnit),
    timeBasedRetention :: (Core.Maybe Core.Duration),
    -- | Timestamp based retention period i.e. 2024-05-01T00:00:00Z
    timestampBasedRetentionTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RetentionSettings' with the minimum fields required to make a request.
newRetentionSettings ::
  RetentionSettings
newRetentionSettings =
  RetentionSettings
    { durationBasedRetention = Core.Nothing,
      quantityBasedRetention = Core.Nothing,
      retentionUnit = Core.Nothing,
      timeBasedRetention = Core.Nothing,
      timestampBasedRetentionTime = Core.Nothing
    }

instance Core.FromJSON RetentionSettings where
  parseJSON =
    Core.withObject
      "RetentionSettings"
      ( \o ->
          RetentionSettings
            Core.<$> (o Core..:? "durationBasedRetention")
            Core.<*> (o Core..:? "quantityBasedRetention")
            Core.<*> (o Core..:? "retentionUnit")
            Core.<*> (o Core..:? "timeBasedRetention")
            Core.<*> (o Core..:? "timestampBasedRetentionTime")
      )

instance Core.ToJSON RetentionSettings where
  toJSON RetentionSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("durationBasedRetention" Core..=)
              Core.<$> durationBasedRetention,
            ("quantityBasedRetention" Core..=) Core.<$> quantityBasedRetention,
            ("retentionUnit" Core..=) Core.<$> retentionUnit,
            ("timeBasedRetention" Core..=) Core.<$> timeBasedRetention,
            ("timestampBasedRetentionTime" Core..=)
              Core.<$> timestampBasedRetentionTime
          ]
      )

-- | Represents additional information about the state of the cluster.
--
-- /See:/ 'newStateInfo' smart constructor.
newtype StateInfo = StateInfo
  { -- | Describes ongoing update on the cluster when cluster state is UPDATING.
    updateInfo :: (Core.Maybe UpdateInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StateInfo' with the minimum fields required to make a request.
newStateInfo ::
  StateInfo
newStateInfo = StateInfo {updateInfo = Core.Nothing}

instance Core.FromJSON StateInfo where
  parseJSON =
    Core.withObject
      "StateInfo"
      (\o -> StateInfo Core.<$> (o Core..:? "updateInfo"))

instance Core.ToJSON StateInfo where
  toJSON StateInfo {..} =
    Core.object
      (Core.catMaybes [("updateInfo" Core..=) Core.<$> updateInfo])

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

-- | Message type for storing tags. Tags provide a way to create annotations for resources, and in some cases conditionally allow or deny policies based on whether a resource has a specific tag.
--
-- /See:/ 'newTags' smart constructor.
newtype Tags = Tags
  { -- | The Tag key\/value mappings.
    tags :: (Core.Maybe Tags_Tags)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tags' with the minimum fields required to make a request.
newTags ::
  Tags
newTags = Tags {tags = Core.Nothing}

instance Core.FromJSON Tags where
  parseJSON =
    Core.withObject "Tags" (\o -> Tags Core.<$> (o Core..:? "tags"))

instance Core.ToJSON Tags where
  toJSON Tags {..} =
    Core.object (Core.catMaybes [("tags" Core..=) Core.<$> tags])

-- | The Tag key\/value mappings.
--
-- /See:/ 'newTags_Tags' smart constructor.
newtype Tags_Tags = Tags_Tags
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tags_Tags' with the minimum fields required to make a request.
newTags_Tags ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Tags_Tags
newTags_Tags additional = Tags_Tags {additional = additional}

instance Core.FromJSON Tags_Tags where
  parseJSON =
    Core.withObject
      "Tags_Tags"
      (\o -> Tags_Tags Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Tags_Tags where
  toJSON Tags_Tags {..} = Core.toJSON additional

-- | Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and @google.protobuf.Timestamp@.
--
-- /See:/ 'newTimeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay'
  { -- | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59.
    minutes :: (Core.Maybe Core.Int32),
    -- | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal to 999,999,999.
    nanos :: (Core.Maybe Core.Int32),
    -- | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal to 59. An API may allow the value 60 if it allows leap-seconds.
    seconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
newTimeOfDay ::
  TimeOfDay'
newTimeOfDay =
  TimeOfDay'
    { hours = Core.Nothing,
      minutes = Core.Nothing,
      nanos = Core.Nothing,
      seconds = Core.Nothing
    }

instance Core.FromJSON TimeOfDay' where
  parseJSON =
    Core.withObject
      "TimeOfDay'"
      ( \o ->
          TimeOfDay'
            Core.<$> (o Core..:? "hours")
            Core.<*> (o Core..:? "minutes")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "seconds")
      )

instance Core.ToJSON TimeOfDay' where
  toJSON TimeOfDay' {..} =
    Core.object
      ( Core.catMaybes
          [ ("hours" Core..=) Core.<$> hours,
            ("minutes" Core..=) Core.<$> minutes,
            ("nanos" Core..=) Core.<$> nanos,
            ("seconds" Core..=) Core.<$> seconds
          ]
      )

-- | TlsCertificate Resource
--
-- /See:/ 'newTlsCertificate' smart constructor.
data TlsCertificate = TlsCertificate
  { -- | PEM representation.
    cert :: (Core.Maybe Core.Text),
    -- | Output only. The time when the certificate was created in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2020-05-18T00:00:00.094Z@.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time when the certificate expires in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2020-05-18T00:00:00.094Z@.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | Serial number, as extracted from the certificate.
    serialNumber :: (Core.Maybe Core.Text),
    -- | Sha1 Fingerprint of the certificate.
    sha1Fingerprint :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TlsCertificate' with the minimum fields required to make a request.
newTlsCertificate ::
  TlsCertificate
newTlsCertificate =
  TlsCertificate
    { cert = Core.Nothing,
      createTime = Core.Nothing,
      expireTime = Core.Nothing,
      serialNumber = Core.Nothing,
      sha1Fingerprint = Core.Nothing
    }

instance Core.FromJSON TlsCertificate where
  parseJSON =
    Core.withObject
      "TlsCertificate"
      ( \o ->
          TlsCertificate
            Core.<$> (o Core..:? "cert")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "serialNumber")
            Core.<*> (o Core..:? "sha1Fingerprint")
      )

instance Core.ToJSON TlsCertificate where
  toJSON TlsCertificate {..} =
    Core.object
      ( Core.catMaybes
          [ ("cert" Core..=) Core.<$> cert,
            ("createTime" Core..=) Core.<$> createTime,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("serialNumber" Core..=) Core.<$> serialNumber,
            ("sha1Fingerprint" Core..=) Core.<$> sha1Fingerprint
          ]
      )

-- | TypedValue represents the value of a metric type. It can either be a double, an int64, a string or a bool.
--
-- /See:/ 'newTypedValue' smart constructor.
data TypedValue = TypedValue
  { -- | For boolean value
    boolValue :: (Core.Maybe Core.Bool),
    -- | For double value
    doubleValue :: (Core.Maybe Core.Double),
    -- | For integer value
    int64Value :: (Core.Maybe Core.Int64),
    -- | For string value
    stringValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TypedValue' with the minimum fields required to make a request.
newTypedValue ::
  TypedValue
newTypedValue =
  TypedValue
    { boolValue = Core.Nothing,
      doubleValue = Core.Nothing,
      int64Value = Core.Nothing,
      stringValue = Core.Nothing
    }

instance Core.FromJSON TypedValue where
  parseJSON =
    Core.withObject
      "TypedValue"
      ( \o ->
          TypedValue
            Core.<$> (o Core..:? "boolValue")
            Core.<*> (o Core..:? "doubleValue")
            Core.<*> (o Core..:? "int64Value" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "stringValue")
      )

instance Core.ToJSON TypedValue where
  toJSON TypedValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("boolValue" Core..=) Core.<$> boolValue,
            ("doubleValue" Core..=) Core.<$> doubleValue,
            ("int64Value" Core..=) Core.. Core.AsText Core.<$> int64Value,
            ("stringValue" Core..=) Core.<$> stringValue
          ]
      )

-- | Represents information about an updating cluster.
--
-- /See:/ 'newUpdateInfo' smart constructor.
data UpdateInfo = UpdateInfo
  { -- | Target node type for redis cluster.
    targetNodeType :: (Core.Maybe UpdateInfo_TargetNodeType),
    -- | Target number of replica nodes per shard.
    targetReplicaCount :: (Core.Maybe Core.Int32),
    -- | Target number of shards for redis cluster
    targetShardCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateInfo' with the minimum fields required to make a request.
newUpdateInfo ::
  UpdateInfo
newUpdateInfo =
  UpdateInfo
    { targetNodeType = Core.Nothing,
      targetReplicaCount = Core.Nothing,
      targetShardCount = Core.Nothing
    }

instance Core.FromJSON UpdateInfo where
  parseJSON =
    Core.withObject
      "UpdateInfo"
      ( \o ->
          UpdateInfo
            Core.<$> (o Core..:? "targetNodeType")
            Core.<*> (o Core..:? "targetReplicaCount")
            Core.<*> (o Core..:? "targetShardCount")
      )

instance Core.ToJSON UpdateInfo where
  toJSON UpdateInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("targetNodeType" Core..=) Core.<$> targetNodeType,
            ("targetReplicaCount" Core..=) Core.<$> targetReplicaCount,
            ("targetShardCount" Core..=) Core.<$> targetShardCount
          ]
      )

-- | Request for UpgradeInstance.
--
-- /See:/ 'newUpgradeInstanceRequest' smart constructor.
newtype UpgradeInstanceRequest = UpgradeInstanceRequest
  { -- | Required. Specifies the target version of Redis software to upgrade to.
    redisVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeInstanceRequest' with the minimum fields required to make a request.
newUpgradeInstanceRequest ::
  UpgradeInstanceRequest
newUpgradeInstanceRequest =
  UpgradeInstanceRequest {redisVersion = Core.Nothing}

instance Core.FromJSON UpgradeInstanceRequest where
  parseJSON =
    Core.withObject
      "UpgradeInstanceRequest"
      ( \o ->
          UpgradeInstanceRequest Core.<$> (o Core..:? "redisVersion")
      )

instance Core.ToJSON UpgradeInstanceRequest where
  toJSON UpgradeInstanceRequest {..} =
    Core.object
      (Core.catMaybes [("redisVersion" Core..=) Core.<$> redisVersion])

-- | Message type for storing user labels. User labels are used to tag App Engine resources, allowing users to search for resources matching a set of labels and to aggregate usage data by labels.
--
-- /See:/ 'newUserLabels' smart constructor.
newtype UserLabels = UserLabels
  { labels :: (Core.Maybe UserLabels_Labels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserLabels' with the minimum fields required to make a request.
newUserLabels ::
  UserLabels
newUserLabels = UserLabels {labels = Core.Nothing}

instance Core.FromJSON UserLabels where
  parseJSON =
    Core.withObject
      "UserLabels"
      (\o -> UserLabels Core.<$> (o Core..:? "labels"))

instance Core.ToJSON UserLabels where
  toJSON UserLabels {..} =
    Core.object (Core.catMaybes [("labels" Core..=) Core.<$> labels])

--
-- /See:/ 'newUserLabels_Labels' smart constructor.
newtype UserLabels_Labels = UserLabels_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserLabels_Labels' with the minimum fields required to make a request.
newUserLabels_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  UserLabels_Labels
newUserLabels_Labels additional =
  UserLabels_Labels {additional = additional}

instance Core.FromJSON UserLabels_Labels where
  parseJSON =
    Core.withObject
      "UserLabels_Labels"
      (\o -> UserLabels_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON UserLabels_Labels where
  toJSON UserLabels_Labels {..} = Core.toJSON additional

-- | Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
--
-- /See:/ 'newWeeklyMaintenanceWindow' smart constructor.
data WeeklyMaintenanceWindow = WeeklyMaintenanceWindow
  { -- | Required. The day of week that maintenance updates occur.
    day :: (Core.Maybe WeeklyMaintenanceWindow_Day),
    -- | Output only. Duration of the maintenance window. The current window is fixed at 1 hour.
    duration :: (Core.Maybe Core.Duration),
    -- | Required. Start time of the window in UTC time.
    startTime :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WeeklyMaintenanceWindow' with the minimum fields required to make a request.
newWeeklyMaintenanceWindow ::
  WeeklyMaintenanceWindow
newWeeklyMaintenanceWindow =
  WeeklyMaintenanceWindow
    { day = Core.Nothing,
      duration = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON WeeklyMaintenanceWindow where
  parseJSON =
    Core.withObject
      "WeeklyMaintenanceWindow"
      ( \o ->
          WeeklyMaintenanceWindow
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "duration")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON WeeklyMaintenanceWindow where
  toJSON WeeklyMaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("duration" Core..=) Core.<$> duration,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Zone distribution config for allocation of cluster resources.
--
-- /See:/ 'newZoneDistributionConfig' smart constructor.
data ZoneDistributionConfig = ZoneDistributionConfig
  { -- | Optional. The mode of zone distribution. Defaults to MULTI_ZONE, when not specified.
    mode :: (Core.Maybe ZoneDistributionConfig_Mode),
    -- | Optional. When SINGLE ZONE distribution is selected, zone field would be used to allocate all resources in that zone. This is not applicable to MULTI/ZONE, and would be ignored for MULTI/ZONE clusters.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ZoneDistributionConfig' with the minimum fields required to make a request.
newZoneDistributionConfig ::
  ZoneDistributionConfig
newZoneDistributionConfig =
  ZoneDistributionConfig {mode = Core.Nothing, zone = Core.Nothing}

instance Core.FromJSON ZoneDistributionConfig where
  parseJSON =
    Core.withObject
      "ZoneDistributionConfig"
      ( \o ->
          ZoneDistributionConfig
            Core.<$> (o Core..:? "mode")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON ZoneDistributionConfig where
  toJSON ZoneDistributionConfig {..} =
    Core.object
      ( Core.catMaybes
          [("mode" Core..=) Core.<$> mode, ("zone" Core..=) Core.<$> zone]
      )
