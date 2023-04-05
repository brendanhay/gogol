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
-- Module      : Gogol.BigtableAdmin.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.BigtableAdmin.Internal.Product
  ( -- * AppProfile
    AppProfile (..),
    newAppProfile,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * AutoscalingLimits
    AutoscalingLimits (..),
    newAutoscalingLimits,

    -- * AutoscalingTargets
    AutoscalingTargets (..),
    newAutoscalingTargets,

    -- * Backup
    Backup (..),
    newBackup,

    -- * BackupInfo
    BackupInfo (..),
    newBackupInfo,

    -- * Binding
    Binding (..),
    newBinding,

    -- * CheckConsistencyRequest
    CheckConsistencyRequest (..),
    newCheckConsistencyRequest,

    -- * CheckConsistencyResponse
    CheckConsistencyResponse (..),
    newCheckConsistencyResponse,

    -- * Cluster
    Cluster (..),
    newCluster,

    -- * ClusterAutoscalingConfig
    ClusterAutoscalingConfig (..),
    newClusterAutoscalingConfig,

    -- * ClusterConfig
    ClusterConfig (..),
    newClusterConfig,

    -- * ClusterState
    ClusterState (..),
    newClusterState,

    -- * ColumnFamily
    ColumnFamily (..),
    newColumnFamily,

    -- * ColumnFamilyStats
    ColumnFamilyStats (..),
    newColumnFamilyStats,

    -- * CopyBackupMetadata
    CopyBackupMetadata (..),
    newCopyBackupMetadata,

    -- * CopyBackupRequest
    CopyBackupRequest (..),
    newCopyBackupRequest,

    -- * CreateBackupMetadata
    CreateBackupMetadata (..),
    newCreateBackupMetadata,

    -- * CreateClusterMetadata
    CreateClusterMetadata (..),
    newCreateClusterMetadata,

    -- * CreateClusterMetadata_Tables
    CreateClusterMetadata_Tables (..),
    newCreateClusterMetadata_Tables,

    -- * CreateClusterRequest
    CreateClusterRequest (..),
    newCreateClusterRequest,

    -- * CreateInstanceMetadata
    CreateInstanceMetadata (..),
    newCreateInstanceMetadata,

    -- * CreateInstanceRequest
    CreateInstanceRequest (..),
    newCreateInstanceRequest,

    -- * CreateInstanceRequest_Clusters
    CreateInstanceRequest_Clusters (..),
    newCreateInstanceRequest_Clusters,

    -- * CreateTableRequest
    CreateTableRequest (..),
    newCreateTableRequest,

    -- * DropRowRangeRequest
    DropRowRangeRequest (..),
    newDropRowRangeRequest,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,

    -- * EncryptionInfo
    EncryptionInfo (..),
    newEncryptionInfo,

    -- * Expr
    Expr (..),
    newExpr,

    -- * GcRule
    GcRule (..),
    newGcRule,

    -- * GenerateConsistencyTokenRequest
    GenerateConsistencyTokenRequest (..),
    newGenerateConsistencyTokenRequest,

    -- * GenerateConsistencyTokenResponse
    GenerateConsistencyTokenResponse (..),
    newGenerateConsistencyTokenResponse,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * HotTablet
    HotTablet (..),
    newHotTablet,

    -- * Instance
    Instance (..),
    newInstance,

    -- * Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- * Intersection
    Intersection (..),
    newIntersection,

    -- * ListAppProfilesResponse
    ListAppProfilesResponse (..),
    newListAppProfilesResponse,

    -- * ListBackupsResponse
    ListBackupsResponse (..),
    newListBackupsResponse,

    -- * ListClustersResponse
    ListClustersResponse (..),
    newListClustersResponse,

    -- * ListHotTabletsResponse
    ListHotTabletsResponse (..),
    newListHotTabletsResponse,

    -- * ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListTablesResponse
    ListTablesResponse (..),
    newListTablesResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * Modification
    Modification (..),
    newModification,

    -- * ModifyColumnFamiliesRequest
    ModifyColumnFamiliesRequest (..),
    newModifyColumnFamiliesRequest,

    -- * MultiClusterRoutingUseAny
    MultiClusterRoutingUseAny (..),
    newMultiClusterRoutingUseAny,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationProgress
    OperationProgress (..),
    newOperationProgress,

    -- * OptimizeRestoredTableMetadata
    OptimizeRestoredTableMetadata (..),
    newOptimizeRestoredTableMetadata,

    -- * PartialUpdateClusterMetadata
    PartialUpdateClusterMetadata (..),
    newPartialUpdateClusterMetadata,

    -- * PartialUpdateClusterRequest
    PartialUpdateClusterRequest (..),
    newPartialUpdateClusterRequest,

    -- * PartialUpdateInstanceRequest
    PartialUpdateInstanceRequest (..),
    newPartialUpdateInstanceRequest,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * RestoreInfo
    RestoreInfo (..),
    newRestoreInfo,

    -- * RestoreTableMetadata
    RestoreTableMetadata (..),
    newRestoreTableMetadata,

    -- * RestoreTableRequest
    RestoreTableRequest (..),
    newRestoreTableRequest,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * SingleClusterRouting
    SingleClusterRouting (..),
    newSingleClusterRouting,

    -- * Split
    Split (..),
    newSplit,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Table
    Table (..),
    newTable,

    -- * Table_ClusterStates
    Table_ClusterStates (..),
    newTable_ClusterStates,

    -- * Table_ColumnFamilies
    Table_ColumnFamilies (..),
    newTable_ColumnFamilies,

    -- * TableProgress
    TableProgress (..),
    newTableProgress,

    -- * TableStats
    TableStats (..),
    newTableStats,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * UndeleteTableMetadata
    UndeleteTableMetadata (..),
    newUndeleteTableMetadata,

    -- * UndeleteTableRequest
    UndeleteTableRequest (..),
    newUndeleteTableRequest,

    -- * Union
    Union (..),
    newUnion,

    -- * UpdateAppProfileMetadata
    UpdateAppProfileMetadata (..),
    newUpdateAppProfileMetadata,

    -- * UpdateClusterMetadata
    UpdateClusterMetadata (..),
    newUpdateClusterMetadata,

    -- * UpdateInstanceMetadata
    UpdateInstanceMetadata (..),
    newUpdateInstanceMetadata,

    -- * UpdateTableMetadata
    UpdateTableMetadata (..),
    newUpdateTableMetadata,
  )
where

import Gogol.BigtableAdmin.Internal.Sum
import qualified Gogol.Prelude as Core

-- | A configuration object describing how Cloud Bigtable should treat traffic from a particular end user application.
--
-- /See:/ 'newAppProfile' smart constructor.
data AppProfile = AppProfile
  { -- | Long form description of the use case for this AppProfile.
    description :: (Core.Maybe Core.Text),
    -- | Strongly validated etag for optimistic concurrency control. Preserve the value returned from @GetAppProfile@ when calling @UpdateAppProfile@ to fail the request if there has been a modification in the mean time. The @update_mask@ of the request need not include @etag@ for this protection to apply. See <https://en.wikipedia.org/wiki/HTTP_ETag Wikipedia> and <https://tools.ietf.org/html/rfc7232#section-2.3 RFC 7232> for more details.
    etag :: (Core.Maybe Core.Text),
    -- | Use a multi-cluster routing policy.
    multiClusterRoutingUseAny :: (Core.Maybe MultiClusterRoutingUseAny),
    -- | The unique name of the app profile. Values are of the form @projects\/{project}\/instances\/{instance}\/appProfiles\/_a-zA-Z0-9*@.
    name :: (Core.Maybe Core.Text),
    -- | Use a single-cluster routing policy.
    singleClusterRouting :: (Core.Maybe SingleClusterRouting)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppProfile' with the minimum fields required to make a request.
newAppProfile ::
  AppProfile
newAppProfile =
  AppProfile
    { description = Core.Nothing,
      etag = Core.Nothing,
      multiClusterRoutingUseAny = Core.Nothing,
      name = Core.Nothing,
      singleClusterRouting = Core.Nothing
    }

instance Core.FromJSON AppProfile where
  parseJSON =
    Core.withObject
      "AppProfile"
      ( \o ->
          AppProfile
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "multiClusterRoutingUseAny")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "singleClusterRouting")
      )

instance Core.ToJSON AppProfile where
  toJSON AppProfile {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            ("multiClusterRoutingUseAny" Core..=)
              Core.<$> multiClusterRoutingUseAny,
            ("name" Core..=) Core.<$> name,
            ("singleClusterRouting" Core..=)
              Core.<$> singleClusterRouting
          ]
      )

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts @jose\@example.com@ from DATA/READ logging, and @aliya\@example.com@ from DATA/WRITE logging.
--
-- /See:/ 'newAuditConfig' smart constructor.
data AuditConfig = AuditConfig
  { -- | The configuration for logging of each type of permission.
    auditLogConfigs :: (Core.Maybe [AuditLogConfig]),
    -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
newAuditConfig ::
  AuditConfig
newAuditConfig =
  AuditConfig {auditLogConfigs = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON AuditConfig where
  parseJSON =
    Core.withObject
      "AuditConfig"
      ( \o ->
          AuditConfig
            Core.<$> (o Core..:? "auditLogConfigs")
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON AuditConfig where
  toJSON AuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLogConfigs" Core..=)
              Core.<$> auditLogConfigs,
            ("service" Core..=) Core.<$> service
          ]
      )

-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newAuditLogConfig' smart constructor.
data AuditLogConfig = AuditLogConfig
  { -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
    exemptedMembers :: (Core.Maybe [Core.Text]),
    -- | The log type that this config enables.
    logType :: (Core.Maybe AuditLogConfig_LogType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
newAuditLogConfig ::
  AuditLogConfig
newAuditLogConfig =
  AuditLogConfig {exemptedMembers = Core.Nothing, logType = Core.Nothing}

instance Core.FromJSON AuditLogConfig where
  parseJSON =
    Core.withObject
      "AuditLogConfig"
      ( \o ->
          AuditLogConfig
            Core.<$> (o Core..:? "exemptedMembers")
            Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON AuditLogConfig where
  toJSON AuditLogConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exemptedMembers" Core..=)
              Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | Limits for the number of nodes a Cluster can autoscale up\/down to.
--
-- /See:/ 'newAutoscalingLimits' smart constructor.
data AutoscalingLimits = AutoscalingLimits
  { -- | Required. Maximum number of nodes to scale up to.
    maxServeNodes :: (Core.Maybe Core.Int32),
    -- | Required. Minimum number of nodes to scale down to.
    minServeNodes :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoscalingLimits' with the minimum fields required to make a request.
newAutoscalingLimits ::
  AutoscalingLimits
newAutoscalingLimits =
  AutoscalingLimits {maxServeNodes = Core.Nothing, minServeNodes = Core.Nothing}

instance Core.FromJSON AutoscalingLimits where
  parseJSON =
    Core.withObject
      "AutoscalingLimits"
      ( \o ->
          AutoscalingLimits
            Core.<$> (o Core..:? "maxServeNodes")
            Core.<*> (o Core..:? "minServeNodes")
      )

instance Core.ToJSON AutoscalingLimits where
  toJSON AutoscalingLimits {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxServeNodes" Core..=) Core.<$> maxServeNodes,
            ("minServeNodes" Core..=) Core.<$> minServeNodes
          ]
      )

-- | The Autoscaling targets for a Cluster. These determine the recommended nodes.
--
-- /See:/ 'newAutoscalingTargets' smart constructor.
data AutoscalingTargets = AutoscalingTargets
  { -- | The cpu utilization that the Autoscaler should be trying to achieve. This number is on a scale from 0 (no utilization) to 100 (total utilization), and is limited between 10 and 80, otherwise it will return INVALID_ARGUMENT error.
    cpuUtilizationPercent :: (Core.Maybe Core.Int32),
    -- | The storage utilization that the Autoscaler should be trying to achieve. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16TiB) for an HDD cluster, otherwise it will return INVALID_ARGUMENT error. If this value is set to 0, it will be treated as if it were set to the default value: 2560 for SSD, 8192 for HDD.
    storageUtilizationGibPerNode :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoscalingTargets' with the minimum fields required to make a request.
newAutoscalingTargets ::
  AutoscalingTargets
newAutoscalingTargets =
  AutoscalingTargets
    { cpuUtilizationPercent = Core.Nothing,
      storageUtilizationGibPerNode = Core.Nothing
    }

instance Core.FromJSON AutoscalingTargets where
  parseJSON =
    Core.withObject
      "AutoscalingTargets"
      ( \o ->
          AutoscalingTargets
            Core.<$> (o Core..:? "cpuUtilizationPercent")
            Core.<*> (o Core..:? "storageUtilizationGibPerNode")
      )

instance Core.ToJSON AutoscalingTargets where
  toJSON AutoscalingTargets {..} =
    Core.object
      ( Core.catMaybes
          [ ("cpuUtilizationPercent" Core..=)
              Core.<$> cpuUtilizationPercent,
            ("storageUtilizationGibPerNode" Core..=)
              Core.<$> storageUtilizationGibPerNode
          ]
      )

-- | A backup of a Cloud Bigtable table.
--
-- /See:/ 'newBackup' smart constructor.
data Backup = Backup
  { -- | Output only. The encryption information for the backup.
    encryptionInfo :: (Core.Maybe EncryptionInfo),
    -- | Output only. @end_time@ is the time that the backup was finished. The row data in the backup will be no newer than this timestamp.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Required. The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 30 days from the time the request is received. Once the @expire_time@ has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | A globally unique identifier for the backup which cannot be changed. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/ backups\/_a-zA-Z0-9*@ The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Size of the backup in bytes.
    sizeBytes :: (Core.Maybe Core.Int64),
    -- | Output only. Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects\/\/instances\/\/backups\/.
    sourceBackup :: (Core.Maybe Core.Text),
    -- | Required. Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{source_table}@.
    sourceTable :: (Core.Maybe Core.Text),
    -- | Output only. @start_time@ is the time that the backup was started (i.e. approximately the time the CreateBackup request is received). The row data in this backup will be no older than this timestamp.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The current state of the backup.
    state :: (Core.Maybe Backup_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Backup' with the minimum fields required to make a request.
newBackup ::
  Backup
newBackup =
  Backup
    { encryptionInfo = Core.Nothing,
      endTime = Core.Nothing,
      expireTime = Core.Nothing,
      name = Core.Nothing,
      sizeBytes = Core.Nothing,
      sourceBackup = Core.Nothing,
      sourceTable = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON Backup where
  parseJSON =
    Core.withObject
      "Backup"
      ( \o ->
          Backup
            Core.<$> (o Core..:? "encryptionInfo")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "name")
            Core.<*> ( o Core..:? "sizeBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "sourceBackup")
            Core.<*> (o Core..:? "sourceTable")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON Backup where
  toJSON Backup {..} =
    Core.object
      ( Core.catMaybes
          [ ("encryptionInfo" Core..=) Core.<$> encryptionInfo,
            ("endTime" Core..=) Core.<$> endTime,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("name" Core..=) Core.<$> name,
            ("sizeBytes" Core..=) Core.. Core.AsText
              Core.<$> sizeBytes,
            ("sourceBackup" Core..=) Core.<$> sourceBackup,
            ("sourceTable" Core..=) Core.<$> sourceTable,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Information about a backup.
--
-- /See:/ 'newBackupInfo' smart constructor.
data BackupInfo = BackupInfo
  { -- | Output only. Name of the backup.
    backup :: (Core.Maybe Core.Text),
    -- | Output only. This time that the backup was finished. Row data in the backup will be no newer than this timestamp.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects\/\/instances\/\/backups\/.
    sourceBackup :: (Core.Maybe Core.Text),
    -- | Output only. Name of the table the backup was created from.
    sourceTable :: (Core.Maybe Core.Text),
    -- | Output only. The time that the backup was started. Row data in the backup will be no older than this timestamp.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupInfo' with the minimum fields required to make a request.
newBackupInfo ::
  BackupInfo
newBackupInfo =
  BackupInfo
    { backup = Core.Nothing,
      endTime = Core.Nothing,
      sourceBackup = Core.Nothing,
      sourceTable = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON BackupInfo where
  parseJSON =
    Core.withObject
      "BackupInfo"
      ( \o ->
          BackupInfo
            Core.<$> (o Core..:? "backup")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "sourceBackup")
            Core.<*> (o Core..:? "sourceTable")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON BackupInfo where
  toJSON BackupInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("backup" Core..=) Core.<$> backup,
            ("endTime" Core..=) Core.<$> endTime,
            ("sourceBackup" Core..=) Core.<$> sourceBackup,
            ("sourceTable" Core..=) Core.<$> sourceTable,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
    -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus
    -- unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding ::
  Binding
newBinding =
  Binding
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON Binding where
  parseJSON =
    Core.withObject
      "Binding"
      ( \o ->
          Binding
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON Binding where
  toJSON Binding {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
--
-- /See:/ 'newCheckConsistencyRequest' smart constructor.
newtype CheckConsistencyRequest = CheckConsistencyRequest
  { -- | Required. The token created using GenerateConsistencyToken for the Table.
    consistencyToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckConsistencyRequest' with the minimum fields required to make a request.
newCheckConsistencyRequest ::
  CheckConsistencyRequest
newCheckConsistencyRequest =
  CheckConsistencyRequest {consistencyToken = Core.Nothing}

instance Core.FromJSON CheckConsistencyRequest where
  parseJSON =
    Core.withObject
      "CheckConsistencyRequest"
      ( \o ->
          CheckConsistencyRequest
            Core.<$> (o Core..:? "consistencyToken")
      )

instance Core.ToJSON CheckConsistencyRequest where
  toJSON CheckConsistencyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("consistencyToken" Core..=)
              Core.<$> consistencyToken
          ]
      )

-- | Response message for google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
--
-- /See:/ 'newCheckConsistencyResponse' smart constructor.
newtype CheckConsistencyResponse = CheckConsistencyResponse
  { -- | True only if the token is consistent. A token is consistent if replication has caught up with the restrictions specified in the request.
    consistent :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckConsistencyResponse' with the minimum fields required to make a request.
newCheckConsistencyResponse ::
  CheckConsistencyResponse
newCheckConsistencyResponse =
  CheckConsistencyResponse {consistent = Core.Nothing}

instance Core.FromJSON CheckConsistencyResponse where
  parseJSON =
    Core.withObject
      "CheckConsistencyResponse"
      ( \o ->
          CheckConsistencyResponse
            Core.<$> (o Core..:? "consistent")
      )

instance Core.ToJSON CheckConsistencyResponse where
  toJSON CheckConsistencyResponse {..} =
    Core.object
      ( Core.catMaybes
          [("consistent" Core..=) Core.<$> consistent]
      )

-- | A resizable group of nodes in a particular cloud location, capable of serving all Tables in the parent Instance.
--
-- /See:/ 'newCluster' smart constructor.
data Cluster = Cluster
  { -- | Configuration for this cluster.
    clusterConfig :: (Core.Maybe ClusterConfig),
    -- | Immutable. The type of storage used by this cluster to serve its parent instance\'s tables, unless explicitly overridden.
    defaultStorageType :: (Core.Maybe Cluster_DefaultStorageType),
    -- | Immutable. The encryption configuration for CMEK-protected clusters.
    encryptionConfig :: (Core.Maybe EncryptionConfig),
    -- | Immutable. The location where this cluster\'s nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form @projects\/{project}\/locations\/{zone}@.
    location :: (Core.Maybe Core.Text),
    -- | The unique name of the cluster. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/a-z*@.
    name :: (Core.Maybe Core.Text),
    -- | The number of nodes allocated to this cluster. More nodes enable higher throughput and more consistent performance.
    serveNodes :: (Core.Maybe Core.Int32),
    -- | Output only. The current state of the cluster.
    state :: (Core.Maybe Cluster_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
newCluster ::
  Cluster
newCluster =
  Cluster
    { clusterConfig = Core.Nothing,
      defaultStorageType = Core.Nothing,
      encryptionConfig = Core.Nothing,
      location = Core.Nothing,
      name = Core.Nothing,
      serveNodes = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON Cluster where
  parseJSON =
    Core.withObject
      "Cluster"
      ( \o ->
          Cluster
            Core.<$> (o Core..:? "clusterConfig")
            Core.<*> (o Core..:? "defaultStorageType")
            Core.<*> (o Core..:? "encryptionConfig")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "serveNodes")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON Cluster where
  toJSON Cluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterConfig" Core..=) Core.<$> clusterConfig,
            ("defaultStorageType" Core..=)
              Core.<$> defaultStorageType,
            ("encryptionConfig" Core..=)
              Core.<$> encryptionConfig,
            ("location" Core..=) Core.<$> location,
            ("name" Core..=) Core.<$> name,
            ("serveNodes" Core..=) Core.<$> serveNodes,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Autoscaling config for a cluster.
--
-- /See:/ 'newClusterAutoscalingConfig' smart constructor.
data ClusterAutoscalingConfig = ClusterAutoscalingConfig
  { -- | Required. Autoscaling limits for this cluster.
    autoscalingLimits :: (Core.Maybe AutoscalingLimits),
    -- | Required. Autoscaling targets for this cluster.
    autoscalingTargets :: (Core.Maybe AutoscalingTargets)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterAutoscalingConfig' with the minimum fields required to make a request.
newClusterAutoscalingConfig ::
  ClusterAutoscalingConfig
newClusterAutoscalingConfig =
  ClusterAutoscalingConfig
    { autoscalingLimits = Core.Nothing,
      autoscalingTargets = Core.Nothing
    }

instance Core.FromJSON ClusterAutoscalingConfig where
  parseJSON =
    Core.withObject
      "ClusterAutoscalingConfig"
      ( \o ->
          ClusterAutoscalingConfig
            Core.<$> (o Core..:? "autoscalingLimits")
            Core.<*> (o Core..:? "autoscalingTargets")
      )

instance Core.ToJSON ClusterAutoscalingConfig where
  toJSON ClusterAutoscalingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoscalingLimits" Core..=)
              Core.<$> autoscalingLimits,
            ("autoscalingTargets" Core..=)
              Core.<$> autoscalingTargets
          ]
      )

-- | Configuration for a cluster.
--
-- /See:/ 'newClusterConfig' smart constructor.
newtype ClusterConfig = ClusterConfig
  { -- | Autoscaling configuration for this cluster.
    clusterAutoscalingConfig :: (Core.Maybe ClusterAutoscalingConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterConfig' with the minimum fields required to make a request.
newClusterConfig ::
  ClusterConfig
newClusterConfig = ClusterConfig {clusterAutoscalingConfig = Core.Nothing}

instance Core.FromJSON ClusterConfig where
  parseJSON =
    Core.withObject
      "ClusterConfig"
      ( \o ->
          ClusterConfig
            Core.<$> (o Core..:? "clusterAutoscalingConfig")
      )

instance Core.ToJSON ClusterConfig where
  toJSON ClusterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterAutoscalingConfig" Core..=)
              Core.<$> clusterAutoscalingConfig
          ]
      )

-- | The state of a table\'s data in a particular cluster.
--
-- /See:/ 'newClusterState' smart constructor.
data ClusterState = ClusterState
  { -- | Output only. The encryption information for the table in this cluster. If the encryption key protecting this resource is customer managed, then its version can be rotated in Cloud Key Management Service (Cloud KMS). The primary version of the key and its status will be reflected here when changes propagate from Cloud KMS.
    encryptionInfo :: (Core.Maybe [EncryptionInfo]),
    -- | Output only. The state of replication for the table in this cluster.
    replicationState :: (Core.Maybe ClusterState_ReplicationState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterState' with the minimum fields required to make a request.
newClusterState ::
  ClusterState
newClusterState =
  ClusterState {encryptionInfo = Core.Nothing, replicationState = Core.Nothing}

instance Core.FromJSON ClusterState where
  parseJSON =
    Core.withObject
      "ClusterState"
      ( \o ->
          ClusterState
            Core.<$> (o Core..:? "encryptionInfo")
            Core.<*> (o Core..:? "replicationState")
      )

instance Core.ToJSON ClusterState where
  toJSON ClusterState {..} =
    Core.object
      ( Core.catMaybes
          [ ("encryptionInfo" Core..=) Core.<$> encryptionInfo,
            ("replicationState" Core..=)
              Core.<$> replicationState
          ]
      )

-- | A set of columns within a table which share a common configuration.
--
-- /See:/ 'newColumnFamily' smart constructor.
data ColumnFamily = ColumnFamily
  { -- | Garbage collection rule specified as a protobuf. Must serialize to at most 500 bytes. NOTE: Garbage collection executes opportunistically in the background, and so it\'s possible for reads to return a cell even if it matches the active GC expression for its family.
    gcRule :: (Core.Maybe GcRule),
    -- | Only available with STATS_VIEW, this includes summary statistics about column family contents. For statistics over an entire table, see TableStats above.
    stats :: (Core.Maybe ColumnFamilyStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColumnFamily' with the minimum fields required to make a request.
newColumnFamily ::
  ColumnFamily
newColumnFamily = ColumnFamily {gcRule = Core.Nothing, stats = Core.Nothing}

instance Core.FromJSON ColumnFamily where
  parseJSON =
    Core.withObject
      "ColumnFamily"
      ( \o ->
          ColumnFamily
            Core.<$> (o Core..:? "gcRule") Core.<*> (o Core..:? "stats")
      )

instance Core.ToJSON ColumnFamily where
  toJSON ColumnFamily {..} =
    Core.object
      ( Core.catMaybes
          [ ("gcRule" Core..=) Core.<$> gcRule,
            ("stats" Core..=) Core.<$> stats
          ]
      )

-- | Approximate statistics related to a single column family within a table. This information may change rapidly, interpreting these values at a point in time may already preset out-of-date information. Everything below is approximate, unless otherwise specified.
--
-- /See:/ 'newColumnFamilyStats' smart constructor.
data ColumnFamilyStats = ColumnFamilyStats
  { -- | How many cells are present per column qualifier in this column family, averaged over all rows containing any column in the column family. e.g. For column family \"family\" in a table with 3 rows: * A row with 3 cells in \"family:col\" and 1 cell in \"other:col\" (3 cells \/ 1 column in \"family\") * A row with 1 cell in \"family:col\", 7 cells in \"family:other_col\", and 7 cells in \"other:data\" (8 cells \/ 2 columns in \"family\") * A row with 3 cells in \"other:col\" (0 columns in \"family\", \"family\" not present) would report (3 + 8 + 0)\/(1 + 2 + 0) = 3.66 in this field.
    averageCellsPerColumn :: (Core.Maybe Core.Double),
    -- | How many column qualifiers are present in this column family, averaged over all rows in the table. e.g. For column family \"family\" in a table with 3 rows: * A row with cells in \"family:col\" and \"other:col\" (1 column in \"family\") * A row with cells in \"family:col\", \"family:other_col\", and \"other:data\" (2 columns in \"family\") * A row with cells in \"other:col\" (0 columns in \"family\", \"family\" not present) would report (1 + 2 + 0)\/3 = 1.5 in this field.
    averageColumnsPerRow :: (Core.Maybe Core.Double),
    -- | How much space the data in the column family occupies. This is roughly how many bytes would be needed to read the contents of the entire column family (e.g. by streaming all contents out).
    logicalDataBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColumnFamilyStats' with the minimum fields required to make a request.
newColumnFamilyStats ::
  ColumnFamilyStats
newColumnFamilyStats =
  ColumnFamilyStats
    { averageCellsPerColumn = Core.Nothing,
      averageColumnsPerRow = Core.Nothing,
      logicalDataBytes = Core.Nothing
    }

instance Core.FromJSON ColumnFamilyStats where
  parseJSON =
    Core.withObject
      "ColumnFamilyStats"
      ( \o ->
          ColumnFamilyStats
            Core.<$> (o Core..:? "averageCellsPerColumn")
            Core.<*> (o Core..:? "averageColumnsPerRow")
            Core.<*> ( o Core..:? "logicalDataBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON ColumnFamilyStats where
  toJSON ColumnFamilyStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("averageCellsPerColumn" Core..=)
              Core.<$> averageCellsPerColumn,
            ("averageColumnsPerRow" Core..=)
              Core.<$> averageColumnsPerRow,
            ("logicalDataBytes" Core..=) Core.. Core.AsText
              Core.<$> logicalDataBytes
          ]
      )

-- | Metadata type for the google.longrunning.Operation returned by CopyBackup.
--
-- /See:/ 'newCopyBackupMetadata' smart constructor.
data CopyBackupMetadata = CopyBackupMetadata
  { -- | The name of the backup being created through the copy operation. Values are of the form @projects\/\/instances\/\/clusters\/\/backups\/@.
    name :: (Core.Maybe Core.Text),
    -- | The progress of the CopyBackup operation.
    progress :: (Core.Maybe OperationProgress),
    -- | Information about the source backup that is being copied from.
    sourceBackupInfo :: (Core.Maybe BackupInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopyBackupMetadata' with the minimum fields required to make a request.
newCopyBackupMetadata ::
  CopyBackupMetadata
newCopyBackupMetadata =
  CopyBackupMetadata
    { name = Core.Nothing,
      progress = Core.Nothing,
      sourceBackupInfo = Core.Nothing
    }

instance Core.FromJSON CopyBackupMetadata where
  parseJSON =
    Core.withObject
      "CopyBackupMetadata"
      ( \o ->
          CopyBackupMetadata
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "sourceBackupInfo")
      )

instance Core.ToJSON CopyBackupMetadata where
  toJSON CopyBackupMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("progress" Core..=) Core.<$> progress,
            ("sourceBackupInfo" Core..=)
              Core.<$> sourceBackupInfo
          ]
      )

-- | The request for CopyBackup.
--
-- /See:/ 'newCopyBackupRequest' smart constructor.
data CopyBackupRequest = CopyBackupRequest
  { -- | Required. The id of the new backup. The @backup_id@ along with @parent@ are combined as {parent}\/backups\/{backup/id} to create the full backup name, of the form: @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/backups\/{backup_id}@. This string must be between 1 and 50 characters in length and match the regex /a-zA-Z0-9*.
    backupId :: (Core.Maybe Core.Text),
    -- | Required. Required. The expiration time of the copied backup with microsecond granularity that must be at least 6 hours and at most 30 days from the time the request is received. Once the @expire_time@ has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | Required. The source backup to be copied from. The source backup needs to be in READY state for it to be copied. Copying a copied backup is not allowed. Once CopyBackup is in progress, the source backup cannot be deleted or cleaned up on expiration until CopyBackup is finished. Values are of the form: @projects\/\/instances\/\/clusters\/\/backups\/@.
    sourceBackup :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopyBackupRequest' with the minimum fields required to make a request.
newCopyBackupRequest ::
  CopyBackupRequest
newCopyBackupRequest =
  CopyBackupRequest
    { backupId = Core.Nothing,
      expireTime = Core.Nothing,
      sourceBackup = Core.Nothing
    }

instance Core.FromJSON CopyBackupRequest where
  parseJSON =
    Core.withObject
      "CopyBackupRequest"
      ( \o ->
          CopyBackupRequest
            Core.<$> (o Core..:? "backupId")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "sourceBackup")
      )

instance Core.ToJSON CopyBackupRequest where
  toJSON CopyBackupRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupId" Core..=) Core.<$> backupId,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("sourceBackup" Core..=) Core.<$> sourceBackup
          ]
      )

-- | Metadata type for the operation returned by CreateBackup.
--
-- /See:/ 'newCreateBackupMetadata' smart constructor.
data CreateBackupMetadata = CreateBackupMetadata
  { -- | If set, the time at which this operation finished or was cancelled.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The name of the backup being created.
    name :: (Core.Maybe Core.Text),
    -- | The name of the table the backup is created from.
    sourceTable :: (Core.Maybe Core.Text),
    -- | The time at which this operation started.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateBackupMetadata' with the minimum fields required to make a request.
newCreateBackupMetadata ::
  CreateBackupMetadata
newCreateBackupMetadata =
  CreateBackupMetadata
    { endTime = Core.Nothing,
      name = Core.Nothing,
      sourceTable = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON CreateBackupMetadata where
  parseJSON =
    Core.withObject
      "CreateBackupMetadata"
      ( \o ->
          CreateBackupMetadata
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sourceTable")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON CreateBackupMetadata where
  toJSON CreateBackupMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("name" Core..=) Core.<$> name,
            ("sourceTable" Core..=) Core.<$> sourceTable,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | The metadata for the Operation returned by CreateCluster.
--
-- /See:/ 'newCreateClusterMetadata' smart constructor.
data CreateClusterMetadata = CreateClusterMetadata
  { -- | The time at which the operation failed or was completed successfully.
    finishTime :: (Core.Maybe Core.DateTime),
    -- | The request that prompted the initiation of this CreateCluster operation.
    originalRequest :: (Core.Maybe CreateClusterRequest),
    -- | The time at which the original request was received.
    requestTime :: (Core.Maybe Core.DateTime),
    -- | Keys: the full @name@ of each table that existed in the instance when CreateCluster was first called, i.e. @projects\/\/instances\/\/tables\/@. Any table added to the instance by a later API call will be created in the new cluster by that API call, not this one. Values: information on how much of a table\'s data has been copied to the newly-created cluster so far.
    tables :: (Core.Maybe CreateClusterMetadata_Tables)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateClusterMetadata' with the minimum fields required to make a request.
newCreateClusterMetadata ::
  CreateClusterMetadata
newCreateClusterMetadata =
  CreateClusterMetadata
    { finishTime = Core.Nothing,
      originalRequest = Core.Nothing,
      requestTime = Core.Nothing,
      tables = Core.Nothing
    }

instance Core.FromJSON CreateClusterMetadata where
  parseJSON =
    Core.withObject
      "CreateClusterMetadata"
      ( \o ->
          CreateClusterMetadata
            Core.<$> (o Core..:? "finishTime")
            Core.<*> (o Core..:? "originalRequest")
            Core.<*> (o Core..:? "requestTime")
            Core.<*> (o Core..:? "tables")
      )

instance Core.ToJSON CreateClusterMetadata where
  toJSON CreateClusterMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("finishTime" Core..=) Core.<$> finishTime,
            ("originalRequest" Core..=) Core.<$> originalRequest,
            ("requestTime" Core..=) Core.<$> requestTime,
            ("tables" Core..=) Core.<$> tables
          ]
      )

-- | Keys: the full @name@ of each table that existed in the instance when CreateCluster was first called, i.e. @projects\/\/instances\/\/tables\/@. Any table added to the instance by a later API call will be created in the new cluster by that API call, not this one. Values: information on how much of a table\'s data has been copied to the newly-created cluster so far.
--
-- /See:/ 'newCreateClusterMetadata_Tables' smart constructor.
newtype CreateClusterMetadata_Tables = CreateClusterMetadata_Tables
  { -- |
    additional :: (Core.HashMap Core.Text TableProgress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateClusterMetadata_Tables' with the minimum fields required to make a request.
newCreateClusterMetadata_Tables ::
  -- |  See 'additional'.
  Core.HashMap Core.Text TableProgress ->
  CreateClusterMetadata_Tables
newCreateClusterMetadata_Tables additional =
  CreateClusterMetadata_Tables {additional = additional}

instance Core.FromJSON CreateClusterMetadata_Tables where
  parseJSON =
    Core.withObject
      "CreateClusterMetadata_Tables"
      ( \o ->
          CreateClusterMetadata_Tables
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CreateClusterMetadata_Tables where
  toJSON CreateClusterMetadata_Tables {..} =
    Core.toJSON additional

-- | Request message for BigtableInstanceAdmin.CreateCluster.
--
-- /See:/ 'newCreateClusterRequest' smart constructor.
data CreateClusterRequest = CreateClusterRequest
  { -- | Required. The cluster to be created. Fields marked @OutputOnly@ must be left blank.
    cluster :: (Core.Maybe Cluster),
    -- | Required. The ID to be used when referring to the new cluster within its instance, e.g., just @mycluster@ rather than @projects\/myproject\/instances\/myinstance\/clusters\/mycluster@.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the instance in which to create the new cluster. Values are of the form @projects\/{project}\/instances\/{instance}@.
    parent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateClusterRequest' with the minimum fields required to make a request.
newCreateClusterRequest ::
  CreateClusterRequest
newCreateClusterRequest =
  CreateClusterRequest
    { cluster = Core.Nothing,
      clusterId = Core.Nothing,
      parent = Core.Nothing
    }

instance Core.FromJSON CreateClusterRequest where
  parseJSON =
    Core.withObject
      "CreateClusterRequest"
      ( \o ->
          CreateClusterRequest
            Core.<$> (o Core..:? "cluster")
            Core.<*> (o Core..:? "clusterId")
            Core.<*> (o Core..:? "parent")
      )

instance Core.ToJSON CreateClusterRequest where
  toJSON CreateClusterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cluster" Core..=) Core.<$> cluster,
            ("clusterId" Core..=) Core.<$> clusterId,
            ("parent" Core..=) Core.<$> parent
          ]
      )

-- | The metadata for the Operation returned by CreateInstance.
--
-- /See:/ 'newCreateInstanceMetadata' smart constructor.
data CreateInstanceMetadata = CreateInstanceMetadata
  { -- | The time at which the operation failed or was completed successfully.
    finishTime :: (Core.Maybe Core.DateTime),
    -- | The request that prompted the initiation of this CreateInstance operation.
    originalRequest :: (Core.Maybe CreateInstanceRequest),
    -- | The time at which the original request was received.
    requestTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateInstanceMetadata' with the minimum fields required to make a request.
newCreateInstanceMetadata ::
  CreateInstanceMetadata
newCreateInstanceMetadata =
  CreateInstanceMetadata
    { finishTime = Core.Nothing,
      originalRequest = Core.Nothing,
      requestTime = Core.Nothing
    }

instance Core.FromJSON CreateInstanceMetadata where
  parseJSON =
    Core.withObject
      "CreateInstanceMetadata"
      ( \o ->
          CreateInstanceMetadata
            Core.<$> (o Core..:? "finishTime")
            Core.<*> (o Core..:? "originalRequest")
            Core.<*> (o Core..:? "requestTime")
      )

instance Core.ToJSON CreateInstanceMetadata where
  toJSON CreateInstanceMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("finishTime" Core..=) Core.<$> finishTime,
            ("originalRequest" Core..=) Core.<$> originalRequest,
            ("requestTime" Core..=) Core.<$> requestTime
          ]
      )

-- | Request message for BigtableInstanceAdmin.CreateInstance.
--
-- /See:/ 'newCreateInstanceRequest' smart constructor.
data CreateInstanceRequest = CreateInstanceRequest
  { -- | Required. The clusters to be created within the instance, mapped by desired cluster ID, e.g., just @mycluster@ rather than @projects\/myproject\/instances\/myinstance\/clusters\/mycluster@. Fields marked @OutputOnly@ must be left blank.
    clusters :: (Core.Maybe CreateInstanceRequest_Clusters),
    -- | Required. The instance to create. Fields marked @OutputOnly@ must be left blank.
    instance' :: (Core.Maybe Instance),
    -- | Required. The ID to be used when referring to the new instance within its project, e.g., just @myinstance@ rather than @projects\/myproject\/instances\/myinstance@.
    instanceId :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the project in which to create the new instance. Values are of the form @projects\/{project}@.
    parent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateInstanceRequest' with the minimum fields required to make a request.
newCreateInstanceRequest ::
  CreateInstanceRequest
newCreateInstanceRequest =
  CreateInstanceRequest
    { clusters = Core.Nothing,
      instance' = Core.Nothing,
      instanceId = Core.Nothing,
      parent = Core.Nothing
    }

instance Core.FromJSON CreateInstanceRequest where
  parseJSON =
    Core.withObject
      "CreateInstanceRequest"
      ( \o ->
          CreateInstanceRequest
            Core.<$> (o Core..:? "clusters")
            Core.<*> (o Core..:? "instance")
            Core.<*> (o Core..:? "instanceId")
            Core.<*> (o Core..:? "parent")
      )

instance Core.ToJSON CreateInstanceRequest where
  toJSON CreateInstanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusters" Core..=) Core.<$> clusters,
            ("instance" Core..=) Core.<$> instance',
            ("instanceId" Core..=) Core.<$> instanceId,
            ("parent" Core..=) Core.<$> parent
          ]
      )

-- | Required. The clusters to be created within the instance, mapped by desired cluster ID, e.g., just @mycluster@ rather than @projects\/myproject\/instances\/myinstance\/clusters\/mycluster@. Fields marked @OutputOnly@ must be left blank.
--
-- /See:/ 'newCreateInstanceRequest_Clusters' smart constructor.
newtype CreateInstanceRequest_Clusters = CreateInstanceRequest_Clusters
  { -- |
    additional :: (Core.HashMap Core.Text Cluster)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateInstanceRequest_Clusters' with the minimum fields required to make a request.
newCreateInstanceRequest_Clusters ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Cluster ->
  CreateInstanceRequest_Clusters
newCreateInstanceRequest_Clusters additional =
  CreateInstanceRequest_Clusters {additional = additional}

instance Core.FromJSON CreateInstanceRequest_Clusters where
  parseJSON =
    Core.withObject
      "CreateInstanceRequest_Clusters"
      ( \o ->
          CreateInstanceRequest_Clusters
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CreateInstanceRequest_Clusters where
  toJSON CreateInstanceRequest_Clusters {..} =
    Core.toJSON additional

-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.CreateTable
--
-- /See:/ 'newCreateTableRequest' smart constructor.
data CreateTableRequest = CreateTableRequest
  { -- | The optional list of row keys that will be used to initially split the table into several tablets (tablets are similar to HBase regions). Given two split keys, @s1@ and @s2@, three tablets will be created, spanning the key ranges: @[, s1), [s1, s2), [s2, )@. Example: * Row keys := @[\"a\", \"apple\", \"custom\", \"customer_1\", \"customer_2\",@ @\"other\", \"zz\"]@ * initial/split/keys := @[\"apple\", \"customer_1\", \"customer_2\", \"other\"]@ * Key assignment: - Tablet 1 @[, apple) => {\"a\"}.@ - Tablet 2 @[apple, customer_1) => {\"apple\", \"custom\"}.@ - Tablet 3 @[customer_1, customer_2) => {\"customer_1\"}.@ - Tablet 4 @[customer_2, other) => {\"customer_2\"}.@ - Tablet 5 @[other, ) => {\"other\", \"zz\"}.@
    initialSplits :: (Core.Maybe [Split]),
    -- | Required. The Table to create.
    table :: (Core.Maybe Table),
    -- | Required. The name by which the new table should be referred to within the parent instance, e.g., @foobar@ rather than @{parent}\/tables\/foobar@. Maximum 50 characters.
    tableId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateTableRequest' with the minimum fields required to make a request.
newCreateTableRequest ::
  CreateTableRequest
newCreateTableRequest =
  CreateTableRequest
    { initialSplits = Core.Nothing,
      table = Core.Nothing,
      tableId = Core.Nothing
    }

instance Core.FromJSON CreateTableRequest where
  parseJSON =
    Core.withObject
      "CreateTableRequest"
      ( \o ->
          CreateTableRequest
            Core.<$> (o Core..:? "initialSplits")
            Core.<*> (o Core..:? "table")
            Core.<*> (o Core..:? "tableId")
      )

instance Core.ToJSON CreateTableRequest where
  toJSON CreateTableRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("initialSplits" Core..=) Core.<$> initialSplits,
            ("table" Core..=) Core.<$> table,
            ("tableId" Core..=) Core.<$> tableId
          ]
      )

-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.DropRowRange
--
-- /See:/ 'newDropRowRangeRequest' smart constructor.
data DropRowRangeRequest = DropRowRangeRequest
  { -- | Delete all rows in the table. Setting this to false is a no-op.
    deleteAllDataFromTable :: (Core.Maybe Core.Bool),
    -- | Delete all rows that start with this row key prefix. Prefix cannot be zero length.
    rowKeyPrefix :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DropRowRangeRequest' with the minimum fields required to make a request.
newDropRowRangeRequest ::
  DropRowRangeRequest
newDropRowRangeRequest =
  DropRowRangeRequest
    { deleteAllDataFromTable = Core.Nothing,
      rowKeyPrefix = Core.Nothing
    }

instance Core.FromJSON DropRowRangeRequest where
  parseJSON =
    Core.withObject
      "DropRowRangeRequest"
      ( \o ->
          DropRowRangeRequest
            Core.<$> (o Core..:? "deleteAllDataFromTable")
            Core.<*> (o Core..:? "rowKeyPrefix")
      )

instance Core.ToJSON DropRowRangeRequest where
  toJSON DropRowRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deleteAllDataFromTable" Core..=)
              Core.<$> deleteAllDataFromTable,
            ("rowKeyPrefix" Core..=) Core.<$> rowKeyPrefix
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
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.
--
-- /See:/ 'newEncryptionConfig' smart constructor.
newtype EncryptionConfig = EncryptionConfig
  { -- | Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the @cloudkms.cryptoKeyEncrypterDecrypter@ role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster. Values are of the form @projects\/{project}\/locations\/{location}\/keyRings\/{keyring}\/cryptoKeys\/{key}@
    kmsKeyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptionConfig' with the minimum fields required to make a request.
newEncryptionConfig ::
  EncryptionConfig
newEncryptionConfig = EncryptionConfig {kmsKeyName = Core.Nothing}

instance Core.FromJSON EncryptionConfig where
  parseJSON =
    Core.withObject
      "EncryptionConfig"
      ( \o ->
          EncryptionConfig Core.<$> (o Core..:? "kmsKeyName")
      )

instance Core.ToJSON EncryptionConfig where
  toJSON EncryptionConfig {..} =
    Core.object
      ( Core.catMaybes
          [("kmsKeyName" Core..=) Core.<$> kmsKeyName]
      )

-- | Encryption information for a given resource. If this resource is protected with customer managed encryption, the in-use Cloud Key Management Service (Cloud KMS) key version is specified along with its status.
--
-- /See:/ 'newEncryptionInfo' smart constructor.
data EncryptionInfo = EncryptionInfo
  { -- | Output only. The status of encrypt\/decrypt calls on underlying data for this resource. Regardless of status, the existing data is always encrypted at rest.
    encryptionStatus :: (Core.Maybe Status),
    -- | Output only. The type of encryption used to protect this resource.
    encryptionType :: (Core.Maybe EncryptionInfo_EncryptionType),
    -- | Output only. The version of the Cloud KMS key specified in the parent cluster that is in use for the data underlying this table.
    kmsKeyVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptionInfo' with the minimum fields required to make a request.
newEncryptionInfo ::
  EncryptionInfo
newEncryptionInfo =
  EncryptionInfo
    { encryptionStatus = Core.Nothing,
      encryptionType = Core.Nothing,
      kmsKeyVersion = Core.Nothing
    }

instance Core.FromJSON EncryptionInfo where
  parseJSON =
    Core.withObject
      "EncryptionInfo"
      ( \o ->
          EncryptionInfo
            Core.<$> (o Core..:? "encryptionStatus")
            Core.<*> (o Core..:? "encryptionType")
            Core.<*> (o Core..:? "kmsKeyVersion")
      )

instance Core.ToJSON EncryptionInfo where
  toJSON EncryptionInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("encryptionStatus" Core..=)
              Core.<$> encryptionStatus,
            ("encryptionType" Core..=) Core.<$> encryptionType,
            ("kmsKeyVersion" Core..=) Core.<$> kmsKeyVersion
          ]
      )

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
  { -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    description :: (Core.Maybe Core.Text),
    -- | Textual representation of an expression in Common Expression Language syntax.
    expression :: (Core.Maybe Core.Text),
    -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    location :: (Core.Maybe Core.Text),
    -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr ::
  Expr
newExpr =
  Expr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Expr where
  parseJSON =
    Core.withObject
      "Expr"
      ( \o ->
          Expr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Expr where
  toJSON Expr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Rule for determining which cells to delete during garbage collection.
--
-- /See:/ 'newGcRule' smart constructor.
data GcRule = GcRule
  { -- | Delete cells that would be deleted by every nested rule.
    intersection :: (Core.Maybe Intersection),
    -- | Delete cells in a column older than the given age. Values must be at least one millisecond, and will be truncated to microsecond granularity.
    maxAge :: (Core.Maybe Core.Duration),
    -- | Delete all cells in a column except the most recent N.
    maxNumVersions :: (Core.Maybe Core.Int32),
    -- | Delete cells that would be deleted by any nested rule.
    union :: (Core.Maybe Union)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcRule' with the minimum fields required to make a request.
newGcRule ::
  GcRule
newGcRule =
  GcRule
    { intersection = Core.Nothing,
      maxAge = Core.Nothing,
      maxNumVersions = Core.Nothing,
      union = Core.Nothing
    }

instance Core.FromJSON GcRule where
  parseJSON =
    Core.withObject
      "GcRule"
      ( \o ->
          GcRule
            Core.<$> (o Core..:? "intersection")
            Core.<*> (o Core..:? "maxAge")
            Core.<*> (o Core..:? "maxNumVersions")
            Core.<*> (o Core..:? "union")
      )

instance Core.ToJSON GcRule where
  toJSON GcRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("intersection" Core..=) Core.<$> intersection,
            ("maxAge" Core..=) Core.<$> maxAge,
            ("maxNumVersions" Core..=) Core.<$> maxNumVersions,
            ("union" Core..=) Core.<$> union
          ]
      )

-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
--
-- /See:/ 'newGenerateConsistencyTokenRequest' smart constructor.
data GenerateConsistencyTokenRequest = GenerateConsistencyTokenRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateConsistencyTokenRequest' with the minimum fields required to make a request.
newGenerateConsistencyTokenRequest ::
  GenerateConsistencyTokenRequest
newGenerateConsistencyTokenRequest = GenerateConsistencyTokenRequest

instance
  Core.FromJSON
    GenerateConsistencyTokenRequest
  where
  parseJSON =
    Core.withObject
      "GenerateConsistencyTokenRequest"
      (\o -> Core.pure GenerateConsistencyTokenRequest)

instance Core.ToJSON GenerateConsistencyTokenRequest where
  toJSON = Core.const Core.emptyObject

-- | Response message for google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
--
-- /See:/ 'newGenerateConsistencyTokenResponse' smart constructor.
newtype GenerateConsistencyTokenResponse = GenerateConsistencyTokenResponse
  { -- | The generated consistency token.
    consistencyToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateConsistencyTokenResponse' with the minimum fields required to make a request.
newGenerateConsistencyTokenResponse ::
  GenerateConsistencyTokenResponse
newGenerateConsistencyTokenResponse =
  GenerateConsistencyTokenResponse {consistencyToken = Core.Nothing}

instance
  Core.FromJSON
    GenerateConsistencyTokenResponse
  where
  parseJSON =
    Core.withObject
      "GenerateConsistencyTokenResponse"
      ( \o ->
          GenerateConsistencyTokenResponse
            Core.<$> (o Core..:? "consistencyToken")
      )

instance Core.ToJSON GenerateConsistencyTokenResponse where
  toJSON GenerateConsistencyTokenResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("consistencyToken" Core..=)
              Core.<$> consistencyToken
          ]
      )

-- | Request message for @GetIamPolicy@ method.
--
-- /See:/ 'newGetIamPolicyRequest' smart constructor.
newtype GetIamPolicyRequest = GetIamPolicyRequest
  { -- | OPTIONAL: A @GetPolicyOptions@ object for specifying options to @GetIamPolicy@.
    options :: (Core.Maybe GetPolicyOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIamPolicyRequest' with the minimum fields required to make a request.
newGetIamPolicyRequest ::
  GetIamPolicyRequest
newGetIamPolicyRequest = GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "GetIamPolicyRequest"
      ( \o ->
          GetIamPolicyRequest Core.<$> (o Core..:? "options")
      )

instance Core.ToJSON GetIamPolicyRequest where
  toJSON GetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [("options" Core..=) Core.<$> options]
      )

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'newGetPolicyOptions' smart constructor.
newtype GetPolicyOptions = GetPolicyOptions
  { -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    requestedPolicyVersion :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
newGetPolicyOptions ::
  GetPolicyOptions
newGetPolicyOptions = GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
  parseJSON =
    Core.withObject
      "GetPolicyOptions"
      ( \o ->
          GetPolicyOptions
            Core.<$> (o Core..:? "requestedPolicyVersion")
      )

instance Core.ToJSON GetPolicyOptions where
  toJSON GetPolicyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestedPolicyVersion" Core..=)
              Core.<$> requestedPolicyVersion
          ]
      )

-- | A tablet is a defined by a start and end key and is explained in https:\/\/cloud.google.com\/bigtable\/docs\/overview#architecture and https:\/\/cloud.google.com\/bigtable\/docs\/performance#optimization. A Hot tablet is a tablet that exhibits high average cpu usage during the time interval from start time to end time.
--
-- /See:/ 'newHotTablet' smart constructor.
data HotTablet = HotTablet
  { -- | Tablet End Key (inclusive).
    endKey :: (Core.Maybe Core.Text),
    -- | Output only. The end time of the hot tablet.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The unique name of the hot tablet. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/hotTablets\/[a-zA-Z0-9_-]*@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The average CPU usage spent by a node on this tablet over the start/time to end/time time range. The percentage is the amount of CPU used by the node to serve the tablet, from 0% (tablet was not interacted with) to 100% (the node spent all cycles serving the hot tablet).
    nodeCpuUsagePercent :: (Core.Maybe Core.Double),
    -- | Tablet Start Key (inclusive).
    startKey :: (Core.Maybe Core.Text),
    -- | Output only. The start time of the hot tablet.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Name of the table that contains the tablet. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/_a-zA-Z0-9*@.
    tableName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HotTablet' with the minimum fields required to make a request.
newHotTablet ::
  HotTablet
newHotTablet =
  HotTablet
    { endKey = Core.Nothing,
      endTime = Core.Nothing,
      name = Core.Nothing,
      nodeCpuUsagePercent = Core.Nothing,
      startKey = Core.Nothing,
      startTime = Core.Nothing,
      tableName = Core.Nothing
    }

instance Core.FromJSON HotTablet where
  parseJSON =
    Core.withObject
      "HotTablet"
      ( \o ->
          HotTablet
            Core.<$> (o Core..:? "endKey")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodeCpuUsagePercent")
            Core.<*> (o Core..:? "startKey")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "tableName")
      )

instance Core.ToJSON HotTablet where
  toJSON HotTablet {..} =
    Core.object
      ( Core.catMaybes
          [ ("endKey" Core..=) Core.<$> endKey,
            ("endTime" Core..=) Core.<$> endTime,
            ("name" Core..=) Core.<$> name,
            ("nodeCpuUsagePercent" Core..=)
              Core.<$> nodeCpuUsagePercent,
            ("startKey" Core..=) Core.<$> startKey,
            ("startTime" Core..=) Core.<$> startTime,
            ("tableName" Core..=) Core.<$> tableName
          ]
      )

-- | A collection of Bigtable Tables and the resources that serve them. All tables in an instance are served from all Clusters in the instance.
--
-- /See:/ 'newInstance' smart constructor.
data Instance = Instance
  { -- | Output only. A commit timestamp representing when this Instance was created. For instances created before this field was added (August 2021), this value is @seconds: 0, nanos: 1@.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Required. The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.
    displayName :: (Core.Maybe Core.Text),
    -- | Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer\'s organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: @\\p{Ll}\\p{Lo}{0,62}@. * Label values must be between 0 and 63 characters long and must conform to the regular expression: @[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}@. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
    labels :: (Core.Maybe Instance_Labels),
    -- | The unique name of the instance. Values are of the form @projects\/{project}\/instances\/a-z+[a-z0-9]@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Reserved for future use.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | Output only. The current state of the instance.
    state :: (Core.Maybe Instance_State),
    -- | The type of the instance. Defaults to @PRODUCTION@.
    type' :: (Core.Maybe Instance_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
newInstance ::
  Instance
newInstance =
  Instance
    { createTime = Core.Nothing,
      displayName = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      state = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Instance where
  parseJSON =
    Core.withObject
      "Instance"
      ( \o ->
          Instance
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Instance where
  toJSON Instance {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("state" Core..=) Core.<$> state,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer\'s organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: @\\p{Ll}\\p{Lo}{0,62}@. * Label values must be between 0 and 63 characters long and must conform to the regular expression: @[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}@. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
--
-- /See:/ 'newInstance_Labels' smart constructor.
newtype Instance_Labels = Instance_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance_Labels' with the minimum fields required to make a request.
newInstance_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Instance_Labels
newInstance_Labels additional = Instance_Labels {additional = additional}

instance Core.FromJSON Instance_Labels where
  parseJSON =
    Core.withObject
      "Instance_Labels"
      ( \o ->
          Instance_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Instance_Labels where
  toJSON Instance_Labels {..} = Core.toJSON additional

-- | A GcRule which deletes cells matching all of the given rules.
--
-- /See:/ 'newIntersection' smart constructor.
newtype Intersection = Intersection
  { -- | Only delete cells which would be deleted by every element of @rules@.
    rules :: (Core.Maybe [GcRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Intersection' with the minimum fields required to make a request.
newIntersection ::
  Intersection
newIntersection = Intersection {rules = Core.Nothing}

instance Core.FromJSON Intersection where
  parseJSON =
    Core.withObject
      "Intersection"
      (\o -> Intersection Core.<$> (o Core..:? "rules"))

instance Core.ToJSON Intersection where
  toJSON Intersection {..} =
    Core.object
      (Core.catMaybes [("rules" Core..=) Core.<$> rules])

-- | Response message for BigtableInstanceAdmin.ListAppProfiles.
--
-- /See:/ 'newListAppProfilesResponse' smart constructor.
data ListAppProfilesResponse = ListAppProfilesResponse
  { -- | The list of requested app profiles.
    appProfiles :: (Core.Maybe [AppProfile]),
    -- | Locations from which AppProfile information could not be retrieved, due to an outage or some other transient condition. AppProfiles from these locations may be missing from @app_profiles@. Values are of the form @projects\/\/locations\/@
    failedLocations :: (Core.Maybe [Core.Text]),
    -- | Set if not all app profiles could be returned in a single response. Pass this value to @page_token@ in another request to get the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAppProfilesResponse' with the minimum fields required to make a request.
newListAppProfilesResponse ::
  ListAppProfilesResponse
newListAppProfilesResponse =
  ListAppProfilesResponse
    { appProfiles = Core.Nothing,
      failedLocations = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListAppProfilesResponse where
  parseJSON =
    Core.withObject
      "ListAppProfilesResponse"
      ( \o ->
          ListAppProfilesResponse
            Core.<$> (o Core..:? "appProfiles")
            Core.<*> (o Core..:? "failedLocations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAppProfilesResponse where
  toJSON ListAppProfilesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("appProfiles" Core..=) Core.<$> appProfiles,
            ("failedLocations" Core..=) Core.<$> failedLocations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response for ListBackups.
--
-- /See:/ 'newListBackupsResponse' smart constructor.
data ListBackupsResponse = ListBackupsResponse
  { -- | The list of matching backups.
    backups :: (Core.Maybe [Backup]),
    -- | @next_page_token@ can be sent in a subsequent ListBackups call to fetch more of the matching backups.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBackupsResponse' with the minimum fields required to make a request.
newListBackupsResponse ::
  ListBackupsResponse
newListBackupsResponse =
  ListBackupsResponse {backups = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListBackupsResponse where
  parseJSON =
    Core.withObject
      "ListBackupsResponse"
      ( \o ->
          ListBackupsResponse
            Core.<$> (o Core..:? "backups")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListBackupsResponse where
  toJSON ListBackupsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("backups" Core..=) Core.<$> backups,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for BigtableInstanceAdmin.ListClusters.
--
-- /See:/ 'newListClustersResponse' smart constructor.
data ListClustersResponse = ListClustersResponse
  { -- | The list of requested clusters.
    clusters :: (Core.Maybe [Cluster]),
    -- | Locations from which Cluster information could not be retrieved, due to an outage or some other transient condition. Clusters from these locations may be missing from @clusters@, or may only have partial information returned. Values are of the form @projects\/\/locations\/@
    failedLocations :: (Core.Maybe [Core.Text]),
    -- | DEPRECATED: This field is unused and ignored.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
newListClustersResponse ::
  ListClustersResponse
newListClustersResponse =
  ListClustersResponse
    { clusters = Core.Nothing,
      failedLocations = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListClustersResponse where
  parseJSON =
    Core.withObject
      "ListClustersResponse"
      ( \o ->
          ListClustersResponse
            Core.<$> (o Core..:? "clusters")
            Core.<*> (o Core..:? "failedLocations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListClustersResponse where
  toJSON ListClustersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusters" Core..=) Core.<$> clusters,
            ("failedLocations" Core..=) Core.<$> failedLocations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for BigtableInstanceAdmin.ListHotTablets.
--
-- /See:/ 'newListHotTabletsResponse' smart constructor.
data ListHotTabletsResponse = ListHotTabletsResponse
  { -- | List of hot tablets in the tables of the requested cluster that fall within the requested time range. Hot tablets are ordered by node cpu usage percent. If there are multiple hot tablets that correspond to the same tablet within a 15-minute interval, only the hot tablet with the highest node cpu usage will be included in the response.
    hotTablets :: (Core.Maybe [HotTablet]),
    -- | Set if not all hot tablets could be returned in a single response. Pass this value to @page_token@ in another request to get the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListHotTabletsResponse' with the minimum fields required to make a request.
newListHotTabletsResponse ::
  ListHotTabletsResponse
newListHotTabletsResponse =
  ListHotTabletsResponse
    { hotTablets = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListHotTabletsResponse where
  parseJSON =
    Core.withObject
      "ListHotTabletsResponse"
      ( \o ->
          ListHotTabletsResponse
            Core.<$> (o Core..:? "hotTablets")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListHotTabletsResponse where
  toJSON ListHotTabletsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("hotTablets" Core..=) Core.<$> hotTablets,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for BigtableInstanceAdmin.ListInstances.
--
-- /See:/ 'newListInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse
  { -- | Locations from which Instance information could not be retrieved, due to an outage or some other transient condition. Instances whose Clusters are all in one of the failed locations may be missing from @instances@, and Instances with at least one Cluster in a failed location may only have partial information returned. Values are of the form @projects\/\/locations\/@
    failedLocations :: (Core.Maybe [Core.Text]),
    -- | The list of requested instances.
    instances :: (Core.Maybe [Instance]),
    -- | DEPRECATED: This field is unused and ignored.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
newListInstancesResponse ::
  ListInstancesResponse
newListInstancesResponse =
  ListInstancesResponse
    { failedLocations = Core.Nothing,
      instances = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListInstancesResponse where
  parseJSON =
    Core.withObject
      "ListInstancesResponse"
      ( \o ->
          ListInstancesResponse
            Core.<$> (o Core..:? "failedLocations")
            Core.<*> (o Core..:? "instances")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListInstancesResponse where
  toJSON ListInstancesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("failedLocations" Core..=)
              Core.<$> failedLocations,
            ("instances" Core..=) Core.<$> instances,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
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
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

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

-- | Response message for google.bigtable.admin.v2.BigtableTableAdmin.ListTables
--
-- /See:/ 'newListTablesResponse' smart constructor.
data ListTablesResponse = ListTablesResponse
  { -- | Set if not all tables could be returned in a single response. Pass this value to @page_token@ in another request to get the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The tables present in the requested instance.
    tables :: (Core.Maybe [Table])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTablesResponse' with the minimum fields required to make a request.
newListTablesResponse ::
  ListTablesResponse
newListTablesResponse =
  ListTablesResponse {nextPageToken = Core.Nothing, tables = Core.Nothing}

instance Core.FromJSON ListTablesResponse where
  parseJSON =
    Core.withObject
      "ListTablesResponse"
      ( \o ->
          ListTablesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "tables")
      )

instance Core.ToJSON ListTablesResponse where
  toJSON ListTablesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("tables" Core..=) Core.<$> tables
          ]
      )

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | The canonical id for this location. For example: @\"us-east1\"@.
    locationId :: (Core.Maybe Core.Text),
    -- | Service-specific metadata. For example the available capacity at the given location.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
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
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional = Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      ( \o ->
          Location_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON additional

-- | Service-specific metadata. For example the available capacity at the given location.
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
newLocation_Metadata additional = Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      ( \o ->
          Location_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | A create, update, or delete of a particular column family.
--
-- /See:/ 'newModification' smart constructor.
data Modification = Modification
  { -- | Create a new column family with the specified schema, or fail if one already exists with the given ID.
    create :: (Core.Maybe ColumnFamily),
    -- | Drop (delete) the column family with the given ID, or fail if no such family exists.
    drop :: (Core.Maybe Core.Bool),
    -- | The ID of the column family to be modified.
    id :: (Core.Maybe Core.Text),
    -- | Update an existing column family to the specified schema, or fail if no column family exists with the given ID.
    update :: (Core.Maybe ColumnFamily)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Modification' with the minimum fields required to make a request.
newModification ::
  Modification
newModification =
  Modification
    { create = Core.Nothing,
      drop = Core.Nothing,
      id = Core.Nothing,
      update = Core.Nothing
    }

instance Core.FromJSON Modification where
  parseJSON =
    Core.withObject
      "Modification"
      ( \o ->
          Modification
            Core.<$> (o Core..:? "create")
            Core.<*> (o Core..:? "drop")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "update")
      )

instance Core.ToJSON Modification where
  toJSON Modification {..} =
    Core.object
      ( Core.catMaybes
          [ ("create" Core..=) Core.<$> create,
            ("drop" Core..=) Core.<$> drop,
            ("id" Core..=) Core.<$> id,
            ("update" Core..=) Core.<$> update
          ]
      )

-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.ModifyColumnFamilies
--
-- /See:/ 'newModifyColumnFamiliesRequest' smart constructor.
newtype ModifyColumnFamiliesRequest = ModifyColumnFamiliesRequest
  { -- | Required. Modifications to be atomically applied to the specified table\'s families. Entries are applied in order, meaning that earlier modifications can be masked by later ones (in the case of repeated updates to the same family, for example).
    modifications :: (Core.Maybe [Modification])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyColumnFamiliesRequest' with the minimum fields required to make a request.
newModifyColumnFamiliesRequest ::
  ModifyColumnFamiliesRequest
newModifyColumnFamiliesRequest =
  ModifyColumnFamiliesRequest {modifications = Core.Nothing}

instance Core.FromJSON ModifyColumnFamiliesRequest where
  parseJSON =
    Core.withObject
      "ModifyColumnFamiliesRequest"
      ( \o ->
          ModifyColumnFamiliesRequest
            Core.<$> (o Core..:? "modifications")
      )

instance Core.ToJSON ModifyColumnFamiliesRequest where
  toJSON ModifyColumnFamiliesRequest {..} =
    Core.object
      ( Core.catMaybes
          [("modifications" Core..=) Core.<$> modifications]
      )

-- | Read\/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes consistency to improve availability.
--
-- /See:/ 'newMultiClusterRoutingUseAny' smart constructor.
newtype MultiClusterRoutingUseAny = MultiClusterRoutingUseAny
  { -- | The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
    clusterIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MultiClusterRoutingUseAny' with the minimum fields required to make a request.
newMultiClusterRoutingUseAny ::
  MultiClusterRoutingUseAny
newMultiClusterRoutingUseAny =
  MultiClusterRoutingUseAny {clusterIds = Core.Nothing}

instance Core.FromJSON MultiClusterRoutingUseAny where
  parseJSON =
    Core.withObject
      "MultiClusterRoutingUseAny"
      ( \o ->
          MultiClusterRoutingUseAny
            Core.<$> (o Core..:? "clusterIds")
      )

instance Core.ToJSON MultiClusterRoutingUseAny where
  toJSON MultiClusterRoutingUseAny {..} =
    Core.object
      ( Core.catMaybes
          [("clusterIds" Core..=) Core.<$> clusterIds]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
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
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | Encapsulates progress related information for a Cloud Bigtable long running operation.
--
-- /See:/ 'newOperationProgress' smart constructor.
data OperationProgress = OperationProgress
  { -- | If set, the time at which this operation failed or was completed successfully.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Percent completion of the operation. Values are between 0 and 100 inclusive.
    progressPercent :: (Core.Maybe Core.Int32),
    -- | Time the request was received.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationProgress' with the minimum fields required to make a request.
newOperationProgress ::
  OperationProgress
newOperationProgress =
  OperationProgress
    { endTime = Core.Nothing,
      progressPercent = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON OperationProgress where
  parseJSON =
    Core.withObject
      "OperationProgress"
      ( \o ->
          OperationProgress
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "progressPercent")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON OperationProgress where
  toJSON OperationProgress {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("progressPercent" Core..=) Core.<$> progressPercent,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Metadata type for the long-running operation used to track the progress of optimizations performed on a newly restored table. This long-running operation is automatically created by the system after the successful completion of a table restore, and cannot be cancelled.
--
-- /See:/ 'newOptimizeRestoredTableMetadata' smart constructor.
data OptimizeRestoredTableMetadata = OptimizeRestoredTableMetadata
  { -- | Name of the restored table being optimized.
    name :: (Core.Maybe Core.Text),
    -- | The progress of the post-restore optimizations.
    progress :: (Core.Maybe OperationProgress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OptimizeRestoredTableMetadata' with the minimum fields required to make a request.
newOptimizeRestoredTableMetadata ::
  OptimizeRestoredTableMetadata
newOptimizeRestoredTableMetadata =
  OptimizeRestoredTableMetadata {name = Core.Nothing, progress = Core.Nothing}

instance Core.FromJSON OptimizeRestoredTableMetadata where
  parseJSON =
    Core.withObject
      "OptimizeRestoredTableMetadata"
      ( \o ->
          OptimizeRestoredTableMetadata
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "progress")
      )

instance Core.ToJSON OptimizeRestoredTableMetadata where
  toJSON OptimizeRestoredTableMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("progress" Core..=) Core.<$> progress
          ]
      )

-- | The metadata for the Operation returned by PartialUpdateCluster.
--
-- /See:/ 'newPartialUpdateClusterMetadata' smart constructor.
data PartialUpdateClusterMetadata = PartialUpdateClusterMetadata
  { -- | The time at which the operation failed or was completed successfully.
    finishTime :: (Core.Maybe Core.DateTime),
    -- | The original request for PartialUpdateCluster.
    originalRequest :: (Core.Maybe PartialUpdateClusterRequest),
    -- | The time at which the original request was received.
    requestTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartialUpdateClusterMetadata' with the minimum fields required to make a request.
newPartialUpdateClusterMetadata ::
  PartialUpdateClusterMetadata
newPartialUpdateClusterMetadata =
  PartialUpdateClusterMetadata
    { finishTime = Core.Nothing,
      originalRequest = Core.Nothing,
      requestTime = Core.Nothing
    }

instance Core.FromJSON PartialUpdateClusterMetadata where
  parseJSON =
    Core.withObject
      "PartialUpdateClusterMetadata"
      ( \o ->
          PartialUpdateClusterMetadata
            Core.<$> (o Core..:? "finishTime")
            Core.<*> (o Core..:? "originalRequest")
            Core.<*> (o Core..:? "requestTime")
      )

instance Core.ToJSON PartialUpdateClusterMetadata where
  toJSON PartialUpdateClusterMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("finishTime" Core..=) Core.<$> finishTime,
            ("originalRequest" Core..=) Core.<$> originalRequest,
            ("requestTime" Core..=) Core.<$> requestTime
          ]
      )

-- | Request message for BigtableInstanceAdmin.PartialUpdateCluster.
--
-- /See:/ 'newPartialUpdateClusterRequest' smart constructor.
data PartialUpdateClusterRequest = PartialUpdateClusterRequest
  { -- | Required. The Cluster which contains the partial updates to be applied, subject to the update_mask.
    cluster :: (Core.Maybe Cluster),
    -- | Required. The subset of Cluster fields which should be replaced.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartialUpdateClusterRequest' with the minimum fields required to make a request.
newPartialUpdateClusterRequest ::
  PartialUpdateClusterRequest
newPartialUpdateClusterRequest =
  PartialUpdateClusterRequest
    { cluster = Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON PartialUpdateClusterRequest where
  parseJSON =
    Core.withObject
      "PartialUpdateClusterRequest"
      ( \o ->
          PartialUpdateClusterRequest
            Core.<$> (o Core..:? "cluster")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON PartialUpdateClusterRequest where
  toJSON PartialUpdateClusterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cluster" Core..=) Core.<$> cluster,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request message for BigtableInstanceAdmin.PartialUpdateInstance.
--
-- /See:/ 'newPartialUpdateInstanceRequest' smart constructor.
data PartialUpdateInstanceRequest = PartialUpdateInstanceRequest
  { -- | Required. The Instance which will (partially) replace the current value.
    instance' :: (Core.Maybe Instance),
    -- | Required. The subset of Instance fields which should be replaced. Must be explicitly set.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartialUpdateInstanceRequest' with the minimum fields required to make a request.
newPartialUpdateInstanceRequest ::
  PartialUpdateInstanceRequest
newPartialUpdateInstanceRequest =
  PartialUpdateInstanceRequest
    { instance' = Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON PartialUpdateInstanceRequest where
  parseJSON =
    Core.withObject
      "PartialUpdateInstanceRequest"
      ( \o ->
          PartialUpdateInstanceRequest
            Core.<$> (o Core..:? "instance")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON PartialUpdateInstanceRequest where
  toJSON PartialUpdateInstanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("instance" Core..=) Core.<$> instance',
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Specifies cloud audit logging configuration for this policy.
    auditConfigs :: (Core.Maybe [AuditConfig]),
    -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    bindings :: (Core.Maybe [Binding]),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
    -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { auditConfigs = Core.Nothing,
      bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "auditConfigs")
            Core.<*> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditConfigs" Core..=) Core.<$> auditConfigs,
            ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Information about a table restore.
--
-- /See:/ 'newRestoreInfo' smart constructor.
data RestoreInfo = RestoreInfo
  { -- | Information about the backup used to restore the table. The backup may no longer exist.
    backupInfo :: (Core.Maybe BackupInfo),
    -- | The type of the restore source.
    sourceType :: (Core.Maybe RestoreInfo_SourceType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreInfo' with the minimum fields required to make a request.
newRestoreInfo ::
  RestoreInfo
newRestoreInfo =
  RestoreInfo {backupInfo = Core.Nothing, sourceType = Core.Nothing}

instance Core.FromJSON RestoreInfo where
  parseJSON =
    Core.withObject
      "RestoreInfo"
      ( \o ->
          RestoreInfo
            Core.<$> (o Core..:? "backupInfo")
            Core.<*> (o Core..:? "sourceType")
      )

instance Core.ToJSON RestoreInfo where
  toJSON RestoreInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupInfo" Core..=) Core.<$> backupInfo,
            ("sourceType" Core..=) Core.<$> sourceType
          ]
      )

-- | Metadata type for the long-running operation returned by RestoreTable.
--
-- /See:/ 'newRestoreTableMetadata' smart constructor.
data RestoreTableMetadata = RestoreTableMetadata
  { -- |
    backupInfo :: (Core.Maybe BackupInfo),
    -- | Name of the table being created and restored to.
    name :: (Core.Maybe Core.Text),
    -- | If exists, the name of the long-running operation that will be used to track the post-restore optimization process to optimize the performance of the restored table. The metadata type of the long-running operation is OptimizeRestoreTableMetadata. The response type is Empty. This long-running operation may be automatically created by the system if applicable after the RestoreTable long-running operation completes successfully. This operation may not be created if the table is already optimized or the restore was not successful.
    optimizeTableOperationName :: (Core.Maybe Core.Text),
    -- | The progress of the RestoreTable operation.
    progress :: (Core.Maybe OperationProgress),
    -- | The type of the restore source.
    sourceType :: (Core.Maybe RestoreTableMetadata_SourceType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreTableMetadata' with the minimum fields required to make a request.
newRestoreTableMetadata ::
  RestoreTableMetadata
newRestoreTableMetadata =
  RestoreTableMetadata
    { backupInfo = Core.Nothing,
      name = Core.Nothing,
      optimizeTableOperationName = Core.Nothing,
      progress = Core.Nothing,
      sourceType = Core.Nothing
    }

instance Core.FromJSON RestoreTableMetadata where
  parseJSON =
    Core.withObject
      "RestoreTableMetadata"
      ( \o ->
          RestoreTableMetadata
            Core.<$> (o Core..:? "backupInfo")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "optimizeTableOperationName")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "sourceType")
      )

instance Core.ToJSON RestoreTableMetadata where
  toJSON RestoreTableMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupInfo" Core..=) Core.<$> backupInfo,
            ("name" Core..=) Core.<$> name,
            ("optimizeTableOperationName" Core..=)
              Core.<$> optimizeTableOperationName,
            ("progress" Core..=) Core.<$> progress,
            ("sourceType" Core..=) Core.<$> sourceType
          ]
      )

-- | The request for RestoreTable.
--
-- /See:/ 'newRestoreTableRequest' smart constructor.
data RestoreTableRequest = RestoreTableRequest
  { -- | Name of the backup from which to restore. Values are of the form @projects\/\/instances\/\/clusters\/\/backups\/@.
    backup :: (Core.Maybe Core.Text),
    -- | Required. The id of the table to create and restore to. This table must not already exist. The @table_id@ appended to @parent@ forms the full table name of the form @projects\/\/instances\/\/tables\/@.
    tableId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreTableRequest' with the minimum fields required to make a request.
newRestoreTableRequest ::
  RestoreTableRequest
newRestoreTableRequest =
  RestoreTableRequest {backup = Core.Nothing, tableId = Core.Nothing}

instance Core.FromJSON RestoreTableRequest where
  parseJSON =
    Core.withObject
      "RestoreTableRequest"
      ( \o ->
          RestoreTableRequest
            Core.<$> (o Core..:? "backup")
            Core.<*> (o Core..:? "tableId")
      )

instance Core.ToJSON RestoreTableRequest where
  toJSON RestoreTableRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("backup" Core..=) Core.<$> backup,
            ("tableId" Core..=) Core.<$> tableId
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest {policy = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      ( \o ->
          SetIamPolicyRequest
            Core.<$> (o Core..:? "policy")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("policy" Core..=) Core.<$> policy,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Unconditionally routes all read\/write requests to a specific cluster. This option preserves read-your-writes consistency but does not improve availability.
--
-- /See:/ 'newSingleClusterRouting' smart constructor.
data SingleClusterRouting = SingleClusterRouting
  { -- | Whether or not @CheckAndMutateRow@ and @ReadModifyWriteRow@ requests are allowed by this app profile. It is unsafe to send these requests to the same table\/row\/column in multiple clusters.
    allowTransactionalWrites :: (Core.Maybe Core.Bool),
    -- | The cluster to which read\/write requests should be routed.
    clusterId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SingleClusterRouting' with the minimum fields required to make a request.
newSingleClusterRouting ::
  SingleClusterRouting
newSingleClusterRouting =
  SingleClusterRouting
    { allowTransactionalWrites = Core.Nothing,
      clusterId = Core.Nothing
    }

instance Core.FromJSON SingleClusterRouting where
  parseJSON =
    Core.withObject
      "SingleClusterRouting"
      ( \o ->
          SingleClusterRouting
            Core.<$> (o Core..:? "allowTransactionalWrites")
            Core.<*> (o Core..:? "clusterId")
      )

instance Core.ToJSON SingleClusterRouting where
  toJSON SingleClusterRouting {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowTransactionalWrites" Core..=)
              Core.<$> allowTransactionalWrites,
            ("clusterId" Core..=) Core.<$> clusterId
          ]
      )

-- | An initial split point for a newly created table.
--
-- /See:/ 'newSplit' smart constructor.
newtype Split = Split
  { -- | Row key to use as an initial tablet boundary.
    key :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Split' with the minimum fields required to make a request.
newSplit ::
  Split
newSplit = Split {key = Core.Nothing}

instance Core.FromJSON Split where
  parseJSON =
    Core.withObject
      "Split"
      (\o -> Split Core.<$> (o Core..:? "key"))

instance Core.ToJSON Split where
  toJSON Split {..} =
    Core.object
      (Core.catMaybes [("key" Core..=) Core.<$> key])

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

-- | A collection of user data indexed by row, column, and timestamp. Each table is served using the resources of its parent cluster.
--
-- /See:/ 'newTable' smart constructor.
data Table = Table
  { -- | Output only. Map from cluster ID to per-cluster table state. If it could not be determined whether or not the table has data in a particular cluster (for example, if its zone is unavailable), then there will be an entry for the cluster with UNKNOWN @replication_status@. Views: @REPLICATION_VIEW@, @ENCRYPTION_VIEW@, @FULL@
    clusterStates :: (Core.Maybe Table_ClusterStates),
    -- | The column families configured for this table, mapped by column family ID. Views: @SCHEMA_VIEW@, @STATS_VIEW@, @FULL@
    columnFamilies :: (Core.Maybe Table_ColumnFamilies),
    -- | Set to true to make the table protected against data loss. i.e. deleting the following resources through Admin APIs are prohibited: * The table. * The column families in the table. * The instance containing the table. Note one can still delete the data stored in the table through Data APIs.
    deletionProtection :: (Core.Maybe Core.Bool),
    -- | Immutable. The granularity (i.e. @MILLIS@) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to @MILLIS@. Views: @SCHEMA_VIEW@, @FULL@.
    granularity :: (Core.Maybe Table_Granularity),
    -- | The unique name of the table. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/_a-zA-Z0-9*@. Views: @NAME_ONLY@, @SCHEMA_VIEW@, @REPLICATION_VIEW@, @STATS_VIEW@, @FULL@
    name :: (Core.Maybe Core.Text),
    -- | Output only. If this table was restored from another data source (e.g. a backup), this field will be populated with information about the restore.
    restoreInfo :: (Core.Maybe RestoreInfo),
    -- | Only available with STATS_VIEW, this includes summary statistics about the entire table contents. For statistics about a specific column family, see ColumnFamilyStats in the mapped ColumnFamily collection above.
    stats :: (Core.Maybe TableStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
newTable ::
  Table
newTable =
  Table
    { clusterStates = Core.Nothing,
      columnFamilies = Core.Nothing,
      deletionProtection = Core.Nothing,
      granularity = Core.Nothing,
      name = Core.Nothing,
      restoreInfo = Core.Nothing,
      stats = Core.Nothing
    }

instance Core.FromJSON Table where
  parseJSON =
    Core.withObject
      "Table"
      ( \o ->
          Table
            Core.<$> (o Core..:? "clusterStates")
            Core.<*> (o Core..:? "columnFamilies")
            Core.<*> (o Core..:? "deletionProtection")
            Core.<*> (o Core..:? "granularity")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "restoreInfo")
            Core.<*> (o Core..:? "stats")
      )

instance Core.ToJSON Table where
  toJSON Table {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterStates" Core..=) Core.<$> clusterStates,
            ("columnFamilies" Core..=) Core.<$> columnFamilies,
            ("deletionProtection" Core..=)
              Core.<$> deletionProtection,
            ("granularity" Core..=) Core.<$> granularity,
            ("name" Core..=) Core.<$> name,
            ("restoreInfo" Core..=) Core.<$> restoreInfo,
            ("stats" Core..=) Core.<$> stats
          ]
      )

-- | Output only. Map from cluster ID to per-cluster table state. If it could not be determined whether or not the table has data in a particular cluster (for example, if its zone is unavailable), then there will be an entry for the cluster with UNKNOWN @replication_status@. Views: @REPLICATION_VIEW@, @ENCRYPTION_VIEW@, @FULL@
--
-- /See:/ 'newTable_ClusterStates' smart constructor.
newtype Table_ClusterStates = Table_ClusterStates
  { -- |
    additional :: (Core.HashMap Core.Text ClusterState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table_ClusterStates' with the minimum fields required to make a request.
newTable_ClusterStates ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ClusterState ->
  Table_ClusterStates
newTable_ClusterStates additional =
  Table_ClusterStates {additional = additional}

instance Core.FromJSON Table_ClusterStates where
  parseJSON =
    Core.withObject
      "Table_ClusterStates"
      ( \o ->
          Table_ClusterStates
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Table_ClusterStates where
  toJSON Table_ClusterStates {..} =
    Core.toJSON additional

-- | The column families configured for this table, mapped by column family ID. Views: @SCHEMA_VIEW@, @STATS_VIEW@, @FULL@
--
-- /See:/ 'newTable_ColumnFamilies' smart constructor.
newtype Table_ColumnFamilies = Table_ColumnFamilies
  { -- |
    additional :: (Core.HashMap Core.Text ColumnFamily)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table_ColumnFamilies' with the minimum fields required to make a request.
newTable_ColumnFamilies ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ColumnFamily ->
  Table_ColumnFamilies
newTable_ColumnFamilies additional =
  Table_ColumnFamilies {additional = additional}

instance Core.FromJSON Table_ColumnFamilies where
  parseJSON =
    Core.withObject
      "Table_ColumnFamilies"
      ( \o ->
          Table_ColumnFamilies
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Table_ColumnFamilies where
  toJSON Table_ColumnFamilies {..} =
    Core.toJSON additional

-- | Progress info for copying a table\'s data to the new cluster.
--
-- /See:/ 'newTableProgress' smart constructor.
data TableProgress = TableProgress
  { -- | Estimate of the number of bytes copied so far for this table. This will eventually reach \'estimated/size/bytes\' unless the table copy is CANCELLED.
    estimatedCopiedBytes :: (Core.Maybe Core.Int64),
    -- | Estimate of the size of the table to be copied.
    estimatedSizeBytes :: (Core.Maybe Core.Int64),
    -- |
    state :: (Core.Maybe TableProgress_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableProgress' with the minimum fields required to make a request.
newTableProgress ::
  TableProgress
newTableProgress =
  TableProgress
    { estimatedCopiedBytes = Core.Nothing,
      estimatedSizeBytes = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON TableProgress where
  parseJSON =
    Core.withObject
      "TableProgress"
      ( \o ->
          TableProgress
            Core.<$> ( o Core..:? "estimatedCopiedBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "estimatedSizeBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON TableProgress where
  toJSON TableProgress {..} =
    Core.object
      ( Core.catMaybes
          [ ("estimatedCopiedBytes" Core..=) Core.. Core.AsText
              Core.<$> estimatedCopiedBytes,
            ("estimatedSizeBytes" Core..=) Core.. Core.AsText
              Core.<$> estimatedSizeBytes,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Approximate statistics related to a table. These statistics are calculated infrequently, while simultaneously, data in the table can change rapidly. Thus the values reported here (e.g. row count) are very likely out-of date, even the instant they are received in this API. Thus, only treat these values as approximate. IMPORTANT: Everything below is approximate, unless otherwise specified.
--
-- /See:/ 'newTableStats' smart constructor.
data TableStats = TableStats
  { -- | How many cells are present per column (column family, column qualifier) combinations, averaged over all columns in all rows in the table. e.g. A table with 2 rows: * A row with 3 cells in \"family:col\" and 1 cell in \"other:col\" (4 cells \/ 2 columns) * A row with 1 cell in \"family:col\", 7 cells in \"family:other_col\", and 7 cells in \"other:data\" (15 cells \/ 3 columns) would report (4 + 15)\/(2 + 3) = 3.8 in this field.
    averageCellsPerColumn :: (Core.Maybe Core.Double),
    -- | How many (column family, column qualifier) combinations are present per row in the table, averaged over all rows in the table. e.g. A table with 2 rows: * A row with cells in \"family:col\" and \"other:col\" (2 distinct columns) * A row with cells in \"family:col\", \"family:other_col\", and \"other:data\" (3 distinct columns) would report (2 + 3)\/2 = 2.5 in this field.
    averageColumnsPerRow :: (Core.Maybe Core.Double),
    -- | This is roughly how many bytes would be needed to read the entire table (e.g. by streaming all contents out).
    logicalDataBytes :: (Core.Maybe Core.Int64),
    -- | How many rows are in the table.
    rowCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableStats' with the minimum fields required to make a request.
newTableStats ::
  TableStats
newTableStats =
  TableStats
    { averageCellsPerColumn = Core.Nothing,
      averageColumnsPerRow = Core.Nothing,
      logicalDataBytes = Core.Nothing,
      rowCount = Core.Nothing
    }

instance Core.FromJSON TableStats where
  parseJSON =
    Core.withObject
      "TableStats"
      ( \o ->
          TableStats
            Core.<$> (o Core..:? "averageCellsPerColumn")
            Core.<*> (o Core..:? "averageColumnsPerRow")
            Core.<*> ( o Core..:? "logicalDataBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "rowCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON TableStats where
  toJSON TableStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("averageCellsPerColumn" Core..=)
              Core.<$> averageCellsPerColumn,
            ("averageColumnsPerRow" Core..=)
              Core.<$> averageColumnsPerRow,
            ("logicalDataBytes" Core..=) Core.. Core.AsText
              Core.<$> logicalDataBytes,
            ("rowCount" Core..=) Core.. Core.AsText
              Core.<$> rowCount
          ]
      )

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest ::
  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest where
  parseJSON =
    Core.withObject
      "TestIamPermissionsRequest"
      ( \o ->
          TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsRequest where
  toJSON TestIamPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse ::
  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse where
  parseJSON =
    Core.withObject
      "TestIamPermissionsResponse"
      ( \o ->
          TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | Metadata type for the operation returned by google.bigtable.admin.v2.BigtableTableAdmin.UndeleteTable.
--
-- /See:/ 'newUndeleteTableMetadata' smart constructor.
data UndeleteTableMetadata = UndeleteTableMetadata
  { -- | If set, the time at which this operation finished or was cancelled.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The name of the table being restored.
    name :: (Core.Maybe Core.Text),
    -- | The time at which this operation started.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteTableMetadata' with the minimum fields required to make a request.
newUndeleteTableMetadata ::
  UndeleteTableMetadata
newUndeleteTableMetadata =
  UndeleteTableMetadata
    { endTime = Core.Nothing,
      name = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON UndeleteTableMetadata where
  parseJSON =
    Core.withObject
      "UndeleteTableMetadata"
      ( \o ->
          UndeleteTableMetadata
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON UndeleteTableMetadata where
  toJSON UndeleteTableMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("name" Core..=) Core.<$> name,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Request message for google.bigtable.admin.v2.BigtableTableAdmin.UndeleteTable
--
-- /See:/ 'newUndeleteTableRequest' smart constructor.
data UndeleteTableRequest = UndeleteTableRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteTableRequest' with the minimum fields required to make a request.
newUndeleteTableRequest ::
  UndeleteTableRequest
newUndeleteTableRequest = UndeleteTableRequest

instance Core.FromJSON UndeleteTableRequest where
  parseJSON =
    Core.withObject
      "UndeleteTableRequest"
      (\o -> Core.pure UndeleteTableRequest)

instance Core.ToJSON UndeleteTableRequest where
  toJSON = Core.const Core.emptyObject

-- | A GcRule which deletes cells matching any of the given rules.
--
-- /See:/ 'newUnion' smart constructor.
newtype Union = Union
  { -- | Delete cells which would be deleted by any element of @rules@.
    rules :: (Core.Maybe [GcRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Union' with the minimum fields required to make a request.
newUnion ::
  Union
newUnion = Union {rules = Core.Nothing}

instance Core.FromJSON Union where
  parseJSON =
    Core.withObject
      "Union"
      (\o -> Union Core.<$> (o Core..:? "rules"))

instance Core.ToJSON Union where
  toJSON Union {..} =
    Core.object
      (Core.catMaybes [("rules" Core..=) Core.<$> rules])

-- | The metadata for the Operation returned by UpdateAppProfile.
--
-- /See:/ 'newUpdateAppProfileMetadata' smart constructor.
data UpdateAppProfileMetadata = UpdateAppProfileMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateAppProfileMetadata' with the minimum fields required to make a request.
newUpdateAppProfileMetadata ::
  UpdateAppProfileMetadata
newUpdateAppProfileMetadata = UpdateAppProfileMetadata

instance Core.FromJSON UpdateAppProfileMetadata where
  parseJSON =
    Core.withObject
      "UpdateAppProfileMetadata"
      (\o -> Core.pure UpdateAppProfileMetadata)

instance Core.ToJSON UpdateAppProfileMetadata where
  toJSON = Core.const Core.emptyObject

-- | The metadata for the Operation returned by UpdateCluster.
--
-- /See:/ 'newUpdateClusterMetadata' smart constructor.
data UpdateClusterMetadata = UpdateClusterMetadata
  { -- | The time at which the operation failed or was completed successfully.
    finishTime :: (Core.Maybe Core.DateTime),
    -- | The request that prompted the initiation of this UpdateCluster operation.
    originalRequest :: (Core.Maybe Cluster),
    -- | The time at which the original request was received.
    requestTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateClusterMetadata' with the minimum fields required to make a request.
newUpdateClusterMetadata ::
  UpdateClusterMetadata
newUpdateClusterMetadata =
  UpdateClusterMetadata
    { finishTime = Core.Nothing,
      originalRequest = Core.Nothing,
      requestTime = Core.Nothing
    }

instance Core.FromJSON UpdateClusterMetadata where
  parseJSON =
    Core.withObject
      "UpdateClusterMetadata"
      ( \o ->
          UpdateClusterMetadata
            Core.<$> (o Core..:? "finishTime")
            Core.<*> (o Core..:? "originalRequest")
            Core.<*> (o Core..:? "requestTime")
      )

instance Core.ToJSON UpdateClusterMetadata where
  toJSON UpdateClusterMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("finishTime" Core..=) Core.<$> finishTime,
            ("originalRequest" Core..=) Core.<$> originalRequest,
            ("requestTime" Core..=) Core.<$> requestTime
          ]
      )

-- | The metadata for the Operation returned by UpdateInstance.
--
-- /See:/ 'newUpdateInstanceMetadata' smart constructor.
data UpdateInstanceMetadata = UpdateInstanceMetadata
  { -- | The time at which the operation failed or was completed successfully.
    finishTime :: (Core.Maybe Core.DateTime),
    -- | The request that prompted the initiation of this UpdateInstance operation.
    originalRequest :: (Core.Maybe PartialUpdateInstanceRequest),
    -- | The time at which the original request was received.
    requestTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateInstanceMetadata' with the minimum fields required to make a request.
newUpdateInstanceMetadata ::
  UpdateInstanceMetadata
newUpdateInstanceMetadata =
  UpdateInstanceMetadata
    { finishTime = Core.Nothing,
      originalRequest = Core.Nothing,
      requestTime = Core.Nothing
    }

instance Core.FromJSON UpdateInstanceMetadata where
  parseJSON =
    Core.withObject
      "UpdateInstanceMetadata"
      ( \o ->
          UpdateInstanceMetadata
            Core.<$> (o Core..:? "finishTime")
            Core.<*> (o Core..:? "originalRequest")
            Core.<*> (o Core..:? "requestTime")
      )

instance Core.ToJSON UpdateInstanceMetadata where
  toJSON UpdateInstanceMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("finishTime" Core..=) Core.<$> finishTime,
            ("originalRequest" Core..=) Core.<$> originalRequest,
            ("requestTime" Core..=) Core.<$> requestTime
          ]
      )

-- | Metadata type for the operation returned by UpdateTable.
--
-- /See:/ 'newUpdateTableMetadata' smart constructor.
data UpdateTableMetadata = UpdateTableMetadata
  { -- | If set, the time at which this operation finished or was canceled.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The name of the table being updated.
    name :: (Core.Maybe Core.Text),
    -- | The time at which this operation started.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTableMetadata' with the minimum fields required to make a request.
newUpdateTableMetadata ::
  UpdateTableMetadata
newUpdateTableMetadata =
  UpdateTableMetadata
    { endTime = Core.Nothing,
      name = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON UpdateTableMetadata where
  parseJSON =
    Core.withObject
      "UpdateTableMetadata"
      ( \o ->
          UpdateTableMetadata
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON UpdateTableMetadata where
  toJSON UpdateTableMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("name" Core..=) Core.<$> name,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )
