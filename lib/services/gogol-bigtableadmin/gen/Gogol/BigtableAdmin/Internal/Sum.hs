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
-- Module      : Gogol.BigtableAdmin.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.BigtableAdmin.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AppProfile_Priority
    AppProfile_Priority
      ( AppProfile_Priority_PRIORITYUNSPECIFIED,
        AppProfile_Priority_PRIORITYLOW,
        AppProfile_Priority_PRIORITYMEDIUM,
        AppProfile_Priority_PRIORITYHIGH,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      ( AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * Backup_BackupType
    Backup_BackupType
      ( Backup_BackupType_BACKUPTYPEUNSPECIFIED,
        Backup_BackupType_Standard,
        Backup_BackupType_Hot,
        ..
      ),

    -- * Backup_State
    Backup_State
      ( Backup_State_STATEUNSPECIFIED,
        Backup_State_Creating,
        Backup_State_Ready,
        ..
      ),

    -- * Cluster_DefaultStorageType
    Cluster_DefaultStorageType
      ( Cluster_DefaultStorageType_STORAGETYPEUNSPECIFIED,
        Cluster_DefaultStorageType_Ssd,
        Cluster_DefaultStorageType_Hdd,
        ..
      ),

    -- * Cluster_NodeScalingFactor
    Cluster_NodeScalingFactor
      ( Cluster_NodeScalingFactor_NODESCALINGFACTORUNSPECIFIED,
        Cluster_NodeScalingFactor_NODESCALINGFACTOR1X,
        Cluster_NodeScalingFactor_NODESCALINGFACTOR2X,
        ..
      ),

    -- * Cluster_State
    Cluster_State
      ( Cluster_State_STATENOTKNOWN,
        Cluster_State_Ready,
        Cluster_State_Creating,
        Cluster_State_Resizing,
        Cluster_State_Disabled,
        ..
      ),

    -- * ClusterState_ReplicationState
    ClusterState_ReplicationState
      ( ClusterState_ReplicationState_STATENOTKNOWN,
        ClusterState_ReplicationState_Initializing,
        ClusterState_ReplicationState_PLANNEDMAINTENANCE,
        ClusterState_ReplicationState_UNPLANNEDMAINTENANCE,
        ClusterState_ReplicationState_Ready,
        ClusterState_ReplicationState_READYOPTIMIZING,
        ..
      ),

    -- * DataBoostIsolationReadOnly_ComputeBillingOwner
    DataBoostIsolationReadOnly_ComputeBillingOwner
      ( DataBoostIsolationReadOnly_ComputeBillingOwner_COMPUTEBILLINGOWNERUNSPECIFIED,
        DataBoostIsolationReadOnly_ComputeBillingOwner_HOSTPAYS,
        ..
      ),

    -- * EncryptionInfo_EncryptionType
    EncryptionInfo_EncryptionType
      ( EncryptionInfo_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
        EncryptionInfo_EncryptionType_GOOGLEDEFAULTENCRYPTION,
        EncryptionInfo_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
        ..
      ),

    -- * Instance_State
    Instance_State
      ( Instance_State_STATENOTKNOWN,
        Instance_State_Ready,
        Instance_State_Creating,
        ..
      ),

    -- * Instance_Type
    Instance_Type
      ( Instance_Type_TYPEUNSPECIFIED,
        Instance_Type_Production,
        Instance_Type_Development,
        ..
      ),

    -- * RestoreInfo_SourceType
    RestoreInfo_SourceType
      ( RestoreInfo_SourceType_RESTORESOURCETYPEUNSPECIFIED,
        RestoreInfo_SourceType_Backup,
        ..
      ),

    -- * RestoreTableMetadata_SourceType
    RestoreTableMetadata_SourceType
      ( RestoreTableMetadata_SourceType_RESTORESOURCETYPEUNSPECIFIED,
        RestoreTableMetadata_SourceType_Backup,
        ..
      ),

    -- * StandardIsolation_Priority
    StandardIsolation_Priority
      ( StandardIsolation_Priority_PRIORITYUNSPECIFIED,
        StandardIsolation_Priority_PRIORITYLOW,
        StandardIsolation_Priority_PRIORITYMEDIUM,
        StandardIsolation_Priority_PRIORITYHIGH,
        ..
      ),

    -- * Table_Granularity
    Table_Granularity
      ( Table_Granularity_TIMESTAMPGRANULARITYUNSPECIFIED,
        Table_Granularity_Millis,
        ..
      ),

    -- * TableProgress_State
    TableProgress_State
      ( TableProgress_State_STATEUNSPECIFIED,
        TableProgress_State_Pending,
        TableProgress_State_Copying,
        TableProgress_State_Completed,
        TableProgress_State_Cancelled,
        ..
      ),

    -- * ProjectsInstancesTablesAuthorizedViewsGetView
    ProjectsInstancesTablesAuthorizedViewsGetView
      ( ProjectsInstancesTablesAuthorizedViewsGetView_RESPONSEVIEWUNSPECIFIED,
        ProjectsInstancesTablesAuthorizedViewsGetView_NAMEONLY,
        ProjectsInstancesTablesAuthorizedViewsGetView_Basic,
        ProjectsInstancesTablesAuthorizedViewsGetView_Full,
        ..
      ),

    -- * ProjectsInstancesTablesAuthorizedViewsListView
    ProjectsInstancesTablesAuthorizedViewsListView
      ( ProjectsInstancesTablesAuthorizedViewsListView_RESPONSEVIEWUNSPECIFIED,
        ProjectsInstancesTablesAuthorizedViewsListView_NAMEONLY,
        ProjectsInstancesTablesAuthorizedViewsListView_Basic,
        ProjectsInstancesTablesAuthorizedViewsListView_Full,
        ..
      ),

    -- * ProjectsInstancesTablesGetView
    ProjectsInstancesTablesGetView
      ( ProjectsInstancesTablesGetView_VIEWUNSPECIFIED,
        ProjectsInstancesTablesGetView_NAMEONLY,
        ProjectsInstancesTablesGetView_SCHEMAVIEW,
        ProjectsInstancesTablesGetView_REPLICATIONVIEW,
        ProjectsInstancesTablesGetView_ENCRYPTIONVIEW,
        ProjectsInstancesTablesGetView_STATSVIEW,
        ProjectsInstancesTablesGetView_Full,
        ..
      ),

    -- * ProjectsInstancesTablesListView
    ProjectsInstancesTablesListView
      ( ProjectsInstancesTablesListView_VIEWUNSPECIFIED,
        ProjectsInstancesTablesListView_NAMEONLY,
        ProjectsInstancesTablesListView_SCHEMAVIEW,
        ProjectsInstancesTablesListView_REPLICATIONVIEW,
        ProjectsInstancesTablesListView_ENCRYPTIONVIEW,
        ProjectsInstancesTablesListView_STATSVIEW,
        ProjectsInstancesTablesListView_Full,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | This field has been deprecated in favor of @standard_isolation.priority@. If you set this field, @standard_isolation.priority@ will be set instead. The priority of requests sent using this app profile.
newtype AppProfile_Priority = AppProfile_Priority {fromAppProfile_Priority :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Mapped to PRIORITY_HIGH (the legacy behavior) on creation.
pattern AppProfile_Priority_PRIORITYUNSPECIFIED :: AppProfile_Priority
pattern AppProfile_Priority_PRIORITYUNSPECIFIED = AppProfile_Priority "PRIORITY_UNSPECIFIED"

pattern AppProfile_Priority_PRIORITYLOW :: AppProfile_Priority
pattern AppProfile_Priority_PRIORITYLOW = AppProfile_Priority "PRIORITY_LOW"

pattern AppProfile_Priority_PRIORITYMEDIUM :: AppProfile_Priority
pattern AppProfile_Priority_PRIORITYMEDIUM = AppProfile_Priority "PRIORITY_MEDIUM"

pattern AppProfile_Priority_PRIORITYHIGH :: AppProfile_Priority
pattern AppProfile_Priority_PRIORITYHIGH = AppProfile_Priority "PRIORITY_HIGH"

{-# COMPLETE
  AppProfile_Priority_PRIORITYUNSPECIFIED,
  AppProfile_Priority_PRIORITYLOW,
  AppProfile_Priority_PRIORITYMEDIUM,
  AppProfile_Priority_PRIORITYHIGH,
  AppProfile_Priority
  #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType {fromAuditLogConfig_LogType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType
  #-}

-- | Indicates the backup type of the backup.
newtype Backup_BackupType = Backup_BackupType {fromBackup_BackupType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not specified.
pattern Backup_BackupType_BACKUPTYPEUNSPECIFIED :: Backup_BackupType
pattern Backup_BackupType_BACKUPTYPEUNSPECIFIED = Backup_BackupType "BACKUP_TYPE_UNSPECIFIED"

-- | The default type for Cloud Bigtable managed backups. Supported for backups created in both HDD and SSD instances. Requires optimization when restored to a table in an SSD instance.
pattern Backup_BackupType_Standard :: Backup_BackupType
pattern Backup_BackupType_Standard = Backup_BackupType "STANDARD"

-- | A backup type with faster restore to SSD performance. Only supported for backups created in SSD instances. A new SSD table restored from a hot backup reaches production performance more quickly than a standard backup.
pattern Backup_BackupType_Hot :: Backup_BackupType
pattern Backup_BackupType_Hot = Backup_BackupType "HOT"

{-# COMPLETE
  Backup_BackupType_BACKUPTYPEUNSPECIFIED,
  Backup_BackupType_Standard,
  Backup_BackupType_Hot,
  Backup_BackupType
  #-}

-- | Output only. The current state of the backup.
newtype Backup_State = Backup_State {fromBackup_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not specified.
pattern Backup_State_STATEUNSPECIFIED :: Backup_State
pattern Backup_State_STATEUNSPECIFIED = Backup_State "STATE_UNSPECIFIED"

-- | The pending backup is still being created. Operations on the backup may fail with @FAILED_PRECONDITION@ in this state.
pattern Backup_State_Creating :: Backup_State
pattern Backup_State_Creating = Backup_State "CREATING"

-- | The backup is complete and ready for use.
pattern Backup_State_Ready :: Backup_State
pattern Backup_State_Ready = Backup_State "READY"

{-# COMPLETE
  Backup_State_STATEUNSPECIFIED,
  Backup_State_Creating,
  Backup_State_Ready,
  Backup_State
  #-}

-- | Immutable. The type of storage used by this cluster to serve its parent instance\'s tables, unless explicitly overridden.
newtype Cluster_DefaultStorageType = Cluster_DefaultStorageType {fromCluster_DefaultStorageType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The user did not specify a storage type.
pattern Cluster_DefaultStorageType_STORAGETYPEUNSPECIFIED :: Cluster_DefaultStorageType
pattern Cluster_DefaultStorageType_STORAGETYPEUNSPECIFIED = Cluster_DefaultStorageType "STORAGE_TYPE_UNSPECIFIED"

-- | Flash (SSD) storage should be used.
pattern Cluster_DefaultStorageType_Ssd :: Cluster_DefaultStorageType
pattern Cluster_DefaultStorageType_Ssd = Cluster_DefaultStorageType "SSD"

-- | Magnetic drive (HDD) storage should be used.
pattern Cluster_DefaultStorageType_Hdd :: Cluster_DefaultStorageType
pattern Cluster_DefaultStorageType_Hdd = Cluster_DefaultStorageType "HDD"

{-# COMPLETE
  Cluster_DefaultStorageType_STORAGETYPEUNSPECIFIED,
  Cluster_DefaultStorageType_Ssd,
  Cluster_DefaultStorageType_Hdd,
  Cluster_DefaultStorageType
  #-}

-- | Immutable. The node scaling factor of this cluster.
newtype Cluster_NodeScalingFactor = Cluster_NodeScalingFactor {fromCluster_NodeScalingFactor :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No node scaling specified. Defaults to NODE/SCALING/FACTOR_1X.
pattern Cluster_NodeScalingFactor_NODESCALINGFACTORUNSPECIFIED :: Cluster_NodeScalingFactor
pattern Cluster_NodeScalingFactor_NODESCALINGFACTORUNSPECIFIED = Cluster_NodeScalingFactor "NODE_SCALING_FACTOR_UNSPECIFIED"

-- | The cluster is running with a scaling factor of 1.
pattern Cluster_NodeScalingFactor_NODESCALINGFACTOR1X :: Cluster_NodeScalingFactor
pattern Cluster_NodeScalingFactor_NODESCALINGFACTOR1X = Cluster_NodeScalingFactor "NODE_SCALING_FACTOR_1X"

-- | The cluster is running with a scaling factor of 2. All node count values must be in increments of 2 with this scaling factor enabled, otherwise an INVALID_ARGUMENT error will be returned.
pattern Cluster_NodeScalingFactor_NODESCALINGFACTOR2X :: Cluster_NodeScalingFactor
pattern Cluster_NodeScalingFactor_NODESCALINGFACTOR2X = Cluster_NodeScalingFactor "NODE_SCALING_FACTOR_2X"

{-# COMPLETE
  Cluster_NodeScalingFactor_NODESCALINGFACTORUNSPECIFIED,
  Cluster_NodeScalingFactor_NODESCALINGFACTOR1X,
  Cluster_NodeScalingFactor_NODESCALINGFACTOR2X,
  Cluster_NodeScalingFactor
  #-}

-- | Output only. The current state of the cluster.
newtype Cluster_State = Cluster_State {fromCluster_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The state of the cluster could not be determined.
pattern Cluster_State_STATENOTKNOWN :: Cluster_State
pattern Cluster_State_STATENOTKNOWN = Cluster_State "STATE_NOT_KNOWN"

-- | The cluster has been successfully created and is ready to serve requests.
pattern Cluster_State_Ready :: Cluster_State
pattern Cluster_State_Ready = Cluster_State "READY"

-- | The cluster is currently being created, and may be destroyed if the creation process encounters an error. A cluster may not be able to serve requests while being created.
pattern Cluster_State_Creating :: Cluster_State
pattern Cluster_State_Creating = Cluster_State "CREATING"

-- | The cluster is currently being resized, and may revert to its previous node count if the process encounters an error. A cluster is still capable of serving requests while being resized, but may exhibit performance as if its number of allocated nodes is between the starting and requested states.
pattern Cluster_State_Resizing :: Cluster_State
pattern Cluster_State_Resizing = Cluster_State "RESIZING"

-- | The cluster has no backing nodes. The data (tables) still exist, but no operations can be performed on the cluster.
pattern Cluster_State_Disabled :: Cluster_State
pattern Cluster_State_Disabled = Cluster_State "DISABLED"

{-# COMPLETE
  Cluster_State_STATENOTKNOWN,
  Cluster_State_Ready,
  Cluster_State_Creating,
  Cluster_State_Resizing,
  Cluster_State_Disabled,
  Cluster_State
  #-}

-- | Output only. The state of replication for the table in this cluster.
newtype ClusterState_ReplicationState = ClusterState_ReplicationState {fromClusterState_ReplicationState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The replication state of the table is unknown in this cluster.
pattern ClusterState_ReplicationState_STATENOTKNOWN :: ClusterState_ReplicationState
pattern ClusterState_ReplicationState_STATENOTKNOWN = ClusterState_ReplicationState "STATE_NOT_KNOWN"

-- | The cluster was recently created, and the table must finish copying over pre-existing data from other clusters before it can begin receiving live replication updates and serving Data API requests.
pattern ClusterState_ReplicationState_Initializing :: ClusterState_ReplicationState
pattern ClusterState_ReplicationState_Initializing = ClusterState_ReplicationState "INITIALIZING"

-- | The table is temporarily unable to serve Data API requests from this cluster due to planned internal maintenance.
pattern ClusterState_ReplicationState_PLANNEDMAINTENANCE :: ClusterState_ReplicationState
pattern ClusterState_ReplicationState_PLANNEDMAINTENANCE = ClusterState_ReplicationState "PLANNED_MAINTENANCE"

-- | The table is temporarily unable to serve Data API requests from this cluster due to unplanned or emergency maintenance.
pattern ClusterState_ReplicationState_UNPLANNEDMAINTENANCE :: ClusterState_ReplicationState
pattern ClusterState_ReplicationState_UNPLANNEDMAINTENANCE = ClusterState_ReplicationState "UNPLANNED_MAINTENANCE"

-- | The table can serve Data API requests from this cluster. Depending on replication delay, reads may not immediately reflect the state of the table in other clusters.
pattern ClusterState_ReplicationState_Ready :: ClusterState_ReplicationState
pattern ClusterState_ReplicationState_Ready = ClusterState_ReplicationState "READY"

-- | The table is fully created and ready for use after a restore, and is being optimized for performance. When optimizations are complete, the table will transition to @READY@ state.
pattern ClusterState_ReplicationState_READYOPTIMIZING :: ClusterState_ReplicationState
pattern ClusterState_ReplicationState_READYOPTIMIZING = ClusterState_ReplicationState "READY_OPTIMIZING"

{-# COMPLETE
  ClusterState_ReplicationState_STATENOTKNOWN,
  ClusterState_ReplicationState_Initializing,
  ClusterState_ReplicationState_PLANNEDMAINTENANCE,
  ClusterState_ReplicationState_UNPLANNEDMAINTENANCE,
  ClusterState_ReplicationState_Ready,
  ClusterState_ReplicationState_READYOPTIMIZING,
  ClusterState_ReplicationState
  #-}

-- | The Compute Billing Owner for this Data Boost App Profile.
newtype DataBoostIsolationReadOnly_ComputeBillingOwner = DataBoostIsolationReadOnly_ComputeBillingOwner {fromDataBoostIsolationReadOnly_ComputeBillingOwner :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified value.
pattern DataBoostIsolationReadOnly_ComputeBillingOwner_COMPUTEBILLINGOWNERUNSPECIFIED :: DataBoostIsolationReadOnly_ComputeBillingOwner
pattern DataBoostIsolationReadOnly_ComputeBillingOwner_COMPUTEBILLINGOWNERUNSPECIFIED = DataBoostIsolationReadOnly_ComputeBillingOwner "COMPUTE_BILLING_OWNER_UNSPECIFIED"

-- | The host Cloud Project containing the targeted Bigtable Instance \/ Table pays for compute.
pattern DataBoostIsolationReadOnly_ComputeBillingOwner_HOSTPAYS :: DataBoostIsolationReadOnly_ComputeBillingOwner
pattern DataBoostIsolationReadOnly_ComputeBillingOwner_HOSTPAYS = DataBoostIsolationReadOnly_ComputeBillingOwner "HOST_PAYS"

{-# COMPLETE
  DataBoostIsolationReadOnly_ComputeBillingOwner_COMPUTEBILLINGOWNERUNSPECIFIED,
  DataBoostIsolationReadOnly_ComputeBillingOwner_HOSTPAYS,
  DataBoostIsolationReadOnly_ComputeBillingOwner
  #-}

-- | Output only. The type of encryption used to protect this resource.
newtype EncryptionInfo_EncryptionType = EncryptionInfo_EncryptionType {fromEncryptionInfo_EncryptionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Encryption type was not specified, though data at rest remains encrypted.
pattern EncryptionInfo_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED :: EncryptionInfo_EncryptionType
pattern EncryptionInfo_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED = EncryptionInfo_EncryptionType "ENCRYPTION_TYPE_UNSPECIFIED"

-- | The data backing this resource is encrypted at rest with a key that is fully managed by Google. No key version or status will be populated. This is the default state.
pattern EncryptionInfo_EncryptionType_GOOGLEDEFAULTENCRYPTION :: EncryptionInfo_EncryptionType
pattern EncryptionInfo_EncryptionType_GOOGLEDEFAULTENCRYPTION = EncryptionInfo_EncryptionType "GOOGLE_DEFAULT_ENCRYPTION"

-- | The data backing this resource is encrypted at rest with a key that is managed by the customer. The in-use version of the key and its status are populated for CMEK-protected tables. CMEK-protected backups are pinned to the key version that was in use at the time the backup was taken. This key version is populated but its status is not tracked and is reported as @UNKNOWN@.
pattern EncryptionInfo_EncryptionType_CUSTOMERMANAGEDENCRYPTION :: EncryptionInfo_EncryptionType
pattern EncryptionInfo_EncryptionType_CUSTOMERMANAGEDENCRYPTION = EncryptionInfo_EncryptionType "CUSTOMER_MANAGED_ENCRYPTION"

{-# COMPLETE
  EncryptionInfo_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
  EncryptionInfo_EncryptionType_GOOGLEDEFAULTENCRYPTION,
  EncryptionInfo_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
  EncryptionInfo_EncryptionType
  #-}

-- | Output only. The current state of the instance.
newtype Instance_State = Instance_State {fromInstance_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The state of the instance could not be determined.
pattern Instance_State_STATENOTKNOWN :: Instance_State
pattern Instance_State_STATENOTKNOWN = Instance_State "STATE_NOT_KNOWN"

-- | The instance has been successfully created and can serve requests to its tables.
pattern Instance_State_Ready :: Instance_State
pattern Instance_State_Ready = Instance_State "READY"

-- | The instance is currently being created, and may be destroyed if the creation process encounters an error.
pattern Instance_State_Creating :: Instance_State
pattern Instance_State_Creating = Instance_State "CREATING"

{-# COMPLETE
  Instance_State_STATENOTKNOWN,
  Instance_State_Ready,
  Instance_State_Creating,
  Instance_State
  #-}

-- | The type of the instance. Defaults to @PRODUCTION@.
newtype Instance_Type = Instance_Type {fromInstance_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The type of the instance is unspecified. If set when creating an instance, a @PRODUCTION@ instance will be created. If set when updating an instance, the type will be left unchanged.
pattern Instance_Type_TYPEUNSPECIFIED :: Instance_Type
pattern Instance_Type_TYPEUNSPECIFIED = Instance_Type "TYPE_UNSPECIFIED"

-- | An instance meant for production use. @serve_nodes@ must be set on the cluster.
pattern Instance_Type_Production :: Instance_Type
pattern Instance_Type_Production = Instance_Type "PRODUCTION"

-- | DEPRECATED: Prefer PRODUCTION for all use cases, as it no longer enforces a higher minimum node count than DEVELOPMENT.
pattern Instance_Type_Development :: Instance_Type
pattern Instance_Type_Development = Instance_Type "DEVELOPMENT"

{-# COMPLETE
  Instance_Type_TYPEUNSPECIFIED,
  Instance_Type_Production,
  Instance_Type_Development,
  Instance_Type
  #-}

-- | The type of the restore source.
newtype RestoreInfo_SourceType = RestoreInfo_SourceType {fromRestoreInfo_SourceType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No restore associated.
pattern RestoreInfo_SourceType_RESTORESOURCETYPEUNSPECIFIED :: RestoreInfo_SourceType
pattern RestoreInfo_SourceType_RESTORESOURCETYPEUNSPECIFIED = RestoreInfo_SourceType "RESTORE_SOURCE_TYPE_UNSPECIFIED"

-- | A backup was used as the source of the restore.
pattern RestoreInfo_SourceType_Backup :: RestoreInfo_SourceType
pattern RestoreInfo_SourceType_Backup = RestoreInfo_SourceType "BACKUP"

{-# COMPLETE
  RestoreInfo_SourceType_RESTORESOURCETYPEUNSPECIFIED,
  RestoreInfo_SourceType_Backup,
  RestoreInfo_SourceType
  #-}

-- | The type of the restore source.
newtype RestoreTableMetadata_SourceType = RestoreTableMetadata_SourceType {fromRestoreTableMetadata_SourceType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No restore associated.
pattern RestoreTableMetadata_SourceType_RESTORESOURCETYPEUNSPECIFIED :: RestoreTableMetadata_SourceType
pattern RestoreTableMetadata_SourceType_RESTORESOURCETYPEUNSPECIFIED = RestoreTableMetadata_SourceType "RESTORE_SOURCE_TYPE_UNSPECIFIED"

-- | A backup was used as the source of the restore.
pattern RestoreTableMetadata_SourceType_Backup :: RestoreTableMetadata_SourceType
pattern RestoreTableMetadata_SourceType_Backup = RestoreTableMetadata_SourceType "BACKUP"

{-# COMPLETE
  RestoreTableMetadata_SourceType_RESTORESOURCETYPEUNSPECIFIED,
  RestoreTableMetadata_SourceType_Backup,
  RestoreTableMetadata_SourceType
  #-}

-- | The priority of requests sent using this app profile.
newtype StandardIsolation_Priority = StandardIsolation_Priority {fromStandardIsolation_Priority :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Mapped to PRIORITY_HIGH (the legacy behavior) on creation.
pattern StandardIsolation_Priority_PRIORITYUNSPECIFIED :: StandardIsolation_Priority
pattern StandardIsolation_Priority_PRIORITYUNSPECIFIED = StandardIsolation_Priority "PRIORITY_UNSPECIFIED"

pattern StandardIsolation_Priority_PRIORITYLOW :: StandardIsolation_Priority
pattern StandardIsolation_Priority_PRIORITYLOW = StandardIsolation_Priority "PRIORITY_LOW"

pattern StandardIsolation_Priority_PRIORITYMEDIUM :: StandardIsolation_Priority
pattern StandardIsolation_Priority_PRIORITYMEDIUM = StandardIsolation_Priority "PRIORITY_MEDIUM"

pattern StandardIsolation_Priority_PRIORITYHIGH :: StandardIsolation_Priority
pattern StandardIsolation_Priority_PRIORITYHIGH = StandardIsolation_Priority "PRIORITY_HIGH"

{-# COMPLETE
  StandardIsolation_Priority_PRIORITYUNSPECIFIED,
  StandardIsolation_Priority_PRIORITYLOW,
  StandardIsolation_Priority_PRIORITYMEDIUM,
  StandardIsolation_Priority_PRIORITYHIGH,
  StandardIsolation_Priority
  #-}

-- | Immutable. The granularity (i.e. @MILLIS@) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to @MILLIS@. Views: @SCHEMA_VIEW@, @FULL@.
newtype Table_Granularity = Table_Granularity {fromTable_Granularity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The user did not specify a granularity. Should not be returned. When specified during table creation, MILLIS will be used.
pattern Table_Granularity_TIMESTAMPGRANULARITYUNSPECIFIED :: Table_Granularity
pattern Table_Granularity_TIMESTAMPGRANULARITYUNSPECIFIED = Table_Granularity "TIMESTAMP_GRANULARITY_UNSPECIFIED"

-- | The table keeps data versioned at a granularity of 1ms.
pattern Table_Granularity_Millis :: Table_Granularity
pattern Table_Granularity_Millis = Table_Granularity "MILLIS"

{-# COMPLETE
  Table_Granularity_TIMESTAMPGRANULARITYUNSPECIFIED,
  Table_Granularity_Millis,
  Table_Granularity
  #-}

newtype TableProgress_State = TableProgress_State {fromTableProgress_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern TableProgress_State_STATEUNSPECIFIED :: TableProgress_State
pattern TableProgress_State_STATEUNSPECIFIED = TableProgress_State "STATE_UNSPECIFIED"

-- | The table has not yet begun copying to the new cluster.
pattern TableProgress_State_Pending :: TableProgress_State
pattern TableProgress_State_Pending = TableProgress_State "PENDING"

-- | The table is actively being copied to the new cluster.
pattern TableProgress_State_Copying :: TableProgress_State
pattern TableProgress_State_Copying = TableProgress_State "COPYING"

-- | The table has been fully copied to the new cluster.
pattern TableProgress_State_Completed :: TableProgress_State
pattern TableProgress_State_Completed = TableProgress_State "COMPLETED"

-- | The table was deleted before it finished copying to the new cluster. Note that tables deleted after completion will stay marked as COMPLETED, not CANCELLED.
pattern TableProgress_State_Cancelled :: TableProgress_State
pattern TableProgress_State_Cancelled = TableProgress_State "CANCELLED"

{-# COMPLETE
  TableProgress_State_STATEUNSPECIFIED,
  TableProgress_State_Pending,
  TableProgress_State_Copying,
  TableProgress_State_Completed,
  TableProgress_State_Cancelled,
  TableProgress_State
  #-}

-- | Optional. The resource_view to be applied to the returned AuthorizedView\'s fields. Default to BASIC.
newtype ProjectsInstancesTablesAuthorizedViewsGetView = ProjectsInstancesTablesAuthorizedViewsGetView {fromProjectsInstancesTablesAuthorizedViewsGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Uses the default view for each method as documented in the request.
pattern ProjectsInstancesTablesAuthorizedViewsGetView_RESPONSEVIEWUNSPECIFIED :: ProjectsInstancesTablesAuthorizedViewsGetView
pattern ProjectsInstancesTablesAuthorizedViewsGetView_RESPONSEVIEWUNSPECIFIED = ProjectsInstancesTablesAuthorizedViewsGetView "RESPONSE_VIEW_UNSPECIFIED"

-- | Only populates @name@.
pattern ProjectsInstancesTablesAuthorizedViewsGetView_NAMEONLY :: ProjectsInstancesTablesAuthorizedViewsGetView
pattern ProjectsInstancesTablesAuthorizedViewsGetView_NAMEONLY = ProjectsInstancesTablesAuthorizedViewsGetView "NAME_ONLY"

-- | Only populates the AuthorizedView\'s basic metadata. This includes: name, deletion_protection, etag.
pattern ProjectsInstancesTablesAuthorizedViewsGetView_Basic :: ProjectsInstancesTablesAuthorizedViewsGetView
pattern ProjectsInstancesTablesAuthorizedViewsGetView_Basic = ProjectsInstancesTablesAuthorizedViewsGetView "BASIC"

-- | Populates every fields.
pattern ProjectsInstancesTablesAuthorizedViewsGetView_Full :: ProjectsInstancesTablesAuthorizedViewsGetView
pattern ProjectsInstancesTablesAuthorizedViewsGetView_Full = ProjectsInstancesTablesAuthorizedViewsGetView "FULL"

{-# COMPLETE
  ProjectsInstancesTablesAuthorizedViewsGetView_RESPONSEVIEWUNSPECIFIED,
  ProjectsInstancesTablesAuthorizedViewsGetView_NAMEONLY,
  ProjectsInstancesTablesAuthorizedViewsGetView_Basic,
  ProjectsInstancesTablesAuthorizedViewsGetView_Full,
  ProjectsInstancesTablesAuthorizedViewsGetView
  #-}

-- | Optional. The resource/view to be applied to the returned AuthorizedViews\' fields. Default to NAME/ONLY.
newtype ProjectsInstancesTablesAuthorizedViewsListView = ProjectsInstancesTablesAuthorizedViewsListView {fromProjectsInstancesTablesAuthorizedViewsListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Uses the default view for each method as documented in the request.
pattern ProjectsInstancesTablesAuthorizedViewsListView_RESPONSEVIEWUNSPECIFIED :: ProjectsInstancesTablesAuthorizedViewsListView
pattern ProjectsInstancesTablesAuthorizedViewsListView_RESPONSEVIEWUNSPECIFIED = ProjectsInstancesTablesAuthorizedViewsListView "RESPONSE_VIEW_UNSPECIFIED"

-- | Only populates @name@.
pattern ProjectsInstancesTablesAuthorizedViewsListView_NAMEONLY :: ProjectsInstancesTablesAuthorizedViewsListView
pattern ProjectsInstancesTablesAuthorizedViewsListView_NAMEONLY = ProjectsInstancesTablesAuthorizedViewsListView "NAME_ONLY"

-- | Only populates the AuthorizedView\'s basic metadata. This includes: name, deletion_protection, etag.
pattern ProjectsInstancesTablesAuthorizedViewsListView_Basic :: ProjectsInstancesTablesAuthorizedViewsListView
pattern ProjectsInstancesTablesAuthorizedViewsListView_Basic = ProjectsInstancesTablesAuthorizedViewsListView "BASIC"

-- | Populates every fields.
pattern ProjectsInstancesTablesAuthorizedViewsListView_Full :: ProjectsInstancesTablesAuthorizedViewsListView
pattern ProjectsInstancesTablesAuthorizedViewsListView_Full = ProjectsInstancesTablesAuthorizedViewsListView "FULL"

{-# COMPLETE
  ProjectsInstancesTablesAuthorizedViewsListView_RESPONSEVIEWUNSPECIFIED,
  ProjectsInstancesTablesAuthorizedViewsListView_NAMEONLY,
  ProjectsInstancesTablesAuthorizedViewsListView_Basic,
  ProjectsInstancesTablesAuthorizedViewsListView_Full,
  ProjectsInstancesTablesAuthorizedViewsListView
  #-}

-- | The view to be applied to the returned table\'s fields. Defaults to @SCHEMA_VIEW@ if unspecified.
newtype ProjectsInstancesTablesGetView = ProjectsInstancesTablesGetView {fromProjectsInstancesTablesGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Uses the default view for each method as documented in its request.
pattern ProjectsInstancesTablesGetView_VIEWUNSPECIFIED :: ProjectsInstancesTablesGetView
pattern ProjectsInstancesTablesGetView_VIEWUNSPECIFIED = ProjectsInstancesTablesGetView "VIEW_UNSPECIFIED"

-- | Only populates @name@.
pattern ProjectsInstancesTablesGetView_NAMEONLY :: ProjectsInstancesTablesGetView
pattern ProjectsInstancesTablesGetView_NAMEONLY = ProjectsInstancesTablesGetView "NAME_ONLY"

-- | Only populates @name@ and fields related to the table\'s schema.
pattern ProjectsInstancesTablesGetView_SCHEMAVIEW :: ProjectsInstancesTablesGetView
pattern ProjectsInstancesTablesGetView_SCHEMAVIEW = ProjectsInstancesTablesGetView "SCHEMA_VIEW"

-- | Only populates @name@ and fields related to the table\'s replication state.
pattern ProjectsInstancesTablesGetView_REPLICATIONVIEW :: ProjectsInstancesTablesGetView
pattern ProjectsInstancesTablesGetView_REPLICATIONVIEW = ProjectsInstancesTablesGetView "REPLICATION_VIEW"

-- | Only populates @name@ and fields related to the table\'s encryption state.
pattern ProjectsInstancesTablesGetView_ENCRYPTIONVIEW :: ProjectsInstancesTablesGetView
pattern ProjectsInstancesTablesGetView_ENCRYPTIONVIEW = ProjectsInstancesTablesGetView "ENCRYPTION_VIEW"

-- | Only populates @name@ and fields related to the table\'s stats (e.g. TableStats and ColumnFamilyStats).
pattern ProjectsInstancesTablesGetView_STATSVIEW :: ProjectsInstancesTablesGetView
pattern ProjectsInstancesTablesGetView_STATSVIEW = ProjectsInstancesTablesGetView "STATS_VIEW"

-- | Populates all fields except for stats. See STATS_VIEW to request stats.
pattern ProjectsInstancesTablesGetView_Full :: ProjectsInstancesTablesGetView
pattern ProjectsInstancesTablesGetView_Full = ProjectsInstancesTablesGetView "FULL"

{-# COMPLETE
  ProjectsInstancesTablesGetView_VIEWUNSPECIFIED,
  ProjectsInstancesTablesGetView_NAMEONLY,
  ProjectsInstancesTablesGetView_SCHEMAVIEW,
  ProjectsInstancesTablesGetView_REPLICATIONVIEW,
  ProjectsInstancesTablesGetView_ENCRYPTIONVIEW,
  ProjectsInstancesTablesGetView_STATSVIEW,
  ProjectsInstancesTablesGetView_Full,
  ProjectsInstancesTablesGetView
  #-}

-- | The view to be applied to the returned tables\' fields. Only NAME/ONLY view (default), REPLICATION/VIEW and ENCRYPTION_VIEW are supported.
newtype ProjectsInstancesTablesListView = ProjectsInstancesTablesListView {fromProjectsInstancesTablesListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Uses the default view for each method as documented in its request.
pattern ProjectsInstancesTablesListView_VIEWUNSPECIFIED :: ProjectsInstancesTablesListView
pattern ProjectsInstancesTablesListView_VIEWUNSPECIFIED = ProjectsInstancesTablesListView "VIEW_UNSPECIFIED"

-- | Only populates @name@.
pattern ProjectsInstancesTablesListView_NAMEONLY :: ProjectsInstancesTablesListView
pattern ProjectsInstancesTablesListView_NAMEONLY = ProjectsInstancesTablesListView "NAME_ONLY"

-- | Only populates @name@ and fields related to the table\'s schema.
pattern ProjectsInstancesTablesListView_SCHEMAVIEW :: ProjectsInstancesTablesListView
pattern ProjectsInstancesTablesListView_SCHEMAVIEW = ProjectsInstancesTablesListView "SCHEMA_VIEW"

-- | Only populates @name@ and fields related to the table\'s replication state.
pattern ProjectsInstancesTablesListView_REPLICATIONVIEW :: ProjectsInstancesTablesListView
pattern ProjectsInstancesTablesListView_REPLICATIONVIEW = ProjectsInstancesTablesListView "REPLICATION_VIEW"

-- | Only populates @name@ and fields related to the table\'s encryption state.
pattern ProjectsInstancesTablesListView_ENCRYPTIONVIEW :: ProjectsInstancesTablesListView
pattern ProjectsInstancesTablesListView_ENCRYPTIONVIEW = ProjectsInstancesTablesListView "ENCRYPTION_VIEW"

-- | Only populates @name@ and fields related to the table\'s stats (e.g. TableStats and ColumnFamilyStats).
pattern ProjectsInstancesTablesListView_STATSVIEW :: ProjectsInstancesTablesListView
pattern ProjectsInstancesTablesListView_STATSVIEW = ProjectsInstancesTablesListView "STATS_VIEW"

-- | Populates all fields except for stats. See STATS_VIEW to request stats.
pattern ProjectsInstancesTablesListView_Full :: ProjectsInstancesTablesListView
pattern ProjectsInstancesTablesListView_Full = ProjectsInstancesTablesListView "FULL"

{-# COMPLETE
  ProjectsInstancesTablesListView_VIEWUNSPECIFIED,
  ProjectsInstancesTablesListView_NAMEONLY,
  ProjectsInstancesTablesListView_SCHEMAVIEW,
  ProjectsInstancesTablesListView_REPLICATIONVIEW,
  ProjectsInstancesTablesListView_ENCRYPTIONVIEW,
  ProjectsInstancesTablesListView_STATSVIEW,
  ProjectsInstancesTablesListView_Full,
  ProjectsInstancesTablesListView
  #-}
