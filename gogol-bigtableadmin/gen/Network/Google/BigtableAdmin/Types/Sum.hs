{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigtableAdmin.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigtableAdmin.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Immutable. The type of storage used by this cluster to serve its parent
-- instance\'s tables, unless explicitly overridden.
data ClusterDefaultStorageType
    = StorageTypeUnspecified
      -- ^ @STORAGE_TYPE_UNSPECIFIED@
      -- The user did not specify a storage type.
    | Ssd
      -- ^ @SSD@
      -- Flash (SSD) storage should be used.
    | Hdd
      -- ^ @HDD@
      -- Magnetic drive (HDD) storage should be used.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterDefaultStorageType

instance FromHttpApiData ClusterDefaultStorageType where
    parseQueryParam = \case
        "STORAGE_TYPE_UNSPECIFIED" -> Right StorageTypeUnspecified
        "SSD" -> Right Ssd
        "HDD" -> Right Hdd
        x -> Left ("Unable to parse ClusterDefaultStorageType from: " <> x)

instance ToHttpApiData ClusterDefaultStorageType where
    toQueryParam = \case
        StorageTypeUnspecified -> "STORAGE_TYPE_UNSPECIFIED"
        Ssd -> "SSD"
        Hdd -> "HDD"

instance FromJSON ClusterDefaultStorageType where
    parseJSON = parseJSONText "ClusterDefaultStorageType"

instance ToJSON ClusterDefaultStorageType where
    toJSON = toJSONText

-- | The type of the restore source.
data RestoreInfoSourceType
    = RISTRestoreSourceTypeUnspecified
      -- ^ @RESTORE_SOURCE_TYPE_UNSPECIFIED@
      -- No restore associated.
    | RISTBackup
      -- ^ @BACKUP@
      -- A backup was used as the source of the restore.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RestoreInfoSourceType

instance FromHttpApiData RestoreInfoSourceType where
    parseQueryParam = \case
        "RESTORE_SOURCE_TYPE_UNSPECIFIED" -> Right RISTRestoreSourceTypeUnspecified
        "BACKUP" -> Right RISTBackup
        x -> Left ("Unable to parse RestoreInfoSourceType from: " <> x)

instance ToHttpApiData RestoreInfoSourceType where
    toQueryParam = \case
        RISTRestoreSourceTypeUnspecified -> "RESTORE_SOURCE_TYPE_UNSPECIFIED"
        RISTBackup -> "BACKUP"

instance FromJSON RestoreInfoSourceType where
    parseJSON = parseJSONText "RestoreInfoSourceType"

instance ToJSON RestoreInfoSourceType where
    toJSON = toJSONText

-- | The view to be applied to the returned tables\' fields. Only NAME_ONLY
-- view (default) and REPLICATION_VIEW are supported.
data ProjectsInstancesTablesListView
    = ViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Uses the default view for each method as documented in its request.
    | NameOnly
      -- ^ @NAME_ONLY@
      -- Only populates \`name\`.
    | SchemaView
      -- ^ @SCHEMA_VIEW@
      -- Only populates \`name\` and fields related to the table\'s schema.
    | ReplicationView
      -- ^ @REPLICATION_VIEW@
      -- Only populates \`name\` and fields related to the table\'s replication
      -- state.
    | EncryptionView
      -- ^ @ENCRYPTION_VIEW@
      -- Only populates \`name\` and fields related to the table\'s encryption
      -- state.
    | Full
      -- ^ @FULL@
      -- Populates all fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsInstancesTablesListView

instance FromHttpApiData ProjectsInstancesTablesListView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right ViewUnspecified
        "NAME_ONLY" -> Right NameOnly
        "SCHEMA_VIEW" -> Right SchemaView
        "REPLICATION_VIEW" -> Right ReplicationView
        "ENCRYPTION_VIEW" -> Right EncryptionView
        "FULL" -> Right Full
        x -> Left ("Unable to parse ProjectsInstancesTablesListView from: " <> x)

instance ToHttpApiData ProjectsInstancesTablesListView where
    toQueryParam = \case
        ViewUnspecified -> "VIEW_UNSPECIFIED"
        NameOnly -> "NAME_ONLY"
        SchemaView -> "SCHEMA_VIEW"
        ReplicationView -> "REPLICATION_VIEW"
        EncryptionView -> "ENCRYPTION_VIEW"
        Full -> "FULL"

instance FromJSON ProjectsInstancesTablesListView where
    parseJSON = parseJSONText "ProjectsInstancesTablesListView"

instance ToJSON ProjectsInstancesTablesListView where
    toJSON = toJSONText

-- | Output only. The type of encryption used to protect this resource.
data EncryptionInfoEncryptionType
    = EncryptionTypeUnspecified
      -- ^ @ENCRYPTION_TYPE_UNSPECIFIED@
      -- Encryption type was not specified, though data at rest remains
      -- encrypted.
    | GoogleDefaultEncryption
      -- ^ @GOOGLE_DEFAULT_ENCRYPTION@
      -- The data backing this resource is encrypted at rest with a key that is
      -- fully managed by Google. No key version or status will be populated.
      -- This is the default state.
    | CustomerManagedEncryption
      -- ^ @CUSTOMER_MANAGED_ENCRYPTION@
      -- The data backing this resource is encrypted at rest with a key that is
      -- managed by the customer. The in-use version of the key and its status
      -- are populated for CMEK-protected tables. CMEK-protected backups are
      -- pinned to the key version that was in use at the time the backup was
      -- taken. This key version is populated but its status is not tracked and
      -- is reported as \`UNKNOWN\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EncryptionInfoEncryptionType

instance FromHttpApiData EncryptionInfoEncryptionType where
    parseQueryParam = \case
        "ENCRYPTION_TYPE_UNSPECIFIED" -> Right EncryptionTypeUnspecified
        "GOOGLE_DEFAULT_ENCRYPTION" -> Right GoogleDefaultEncryption
        "CUSTOMER_MANAGED_ENCRYPTION" -> Right CustomerManagedEncryption
        x -> Left ("Unable to parse EncryptionInfoEncryptionType from: " <> x)

instance ToHttpApiData EncryptionInfoEncryptionType where
    toQueryParam = \case
        EncryptionTypeUnspecified -> "ENCRYPTION_TYPE_UNSPECIFIED"
        GoogleDefaultEncryption -> "GOOGLE_DEFAULT_ENCRYPTION"
        CustomerManagedEncryption -> "CUSTOMER_MANAGED_ENCRYPTION"

instance FromJSON EncryptionInfoEncryptionType where
    parseJSON = parseJSONText "EncryptionInfoEncryptionType"

instance ToJSON EncryptionInfoEncryptionType where
    toJSON = toJSONText

-- | The type of the restore source.
data RestoreTableMetadataSourceType
    = RTMSTRestoreSourceTypeUnspecified
      -- ^ @RESTORE_SOURCE_TYPE_UNSPECIFIED@
      -- No restore associated.
    | RTMSTBackup
      -- ^ @BACKUP@
      -- A backup was used as the source of the restore.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RestoreTableMetadataSourceType

instance FromHttpApiData RestoreTableMetadataSourceType where
    parseQueryParam = \case
        "RESTORE_SOURCE_TYPE_UNSPECIFIED" -> Right RTMSTRestoreSourceTypeUnspecified
        "BACKUP" -> Right RTMSTBackup
        x -> Left ("Unable to parse RestoreTableMetadataSourceType from: " <> x)

instance ToHttpApiData RestoreTableMetadataSourceType where
    toQueryParam = \case
        RTMSTRestoreSourceTypeUnspecified -> "RESTORE_SOURCE_TYPE_UNSPECIFIED"
        RTMSTBackup -> "BACKUP"

instance FromJSON RestoreTableMetadataSourceType where
    parseJSON = parseJSONText "RestoreTableMetadataSourceType"

instance ToJSON RestoreTableMetadataSourceType where
    toJSON = toJSONText

-- | Output only. The state of replication for the table in this cluster.
data ClusterStateReplicationState
    = StateNotKnown
      -- ^ @STATE_NOT_KNOWN@
      -- The replication state of the table is unknown in this cluster.
    | Initializing
      -- ^ @INITIALIZING@
      -- The cluster was recently created, and the table must finish copying over
      -- pre-existing data from other clusters before it can begin receiving live
      -- replication updates and serving Data API requests.
    | PlannedMaintenance
      -- ^ @PLANNED_MAINTENANCE@
      -- The table is temporarily unable to serve Data API requests from this
      -- cluster due to planned internal maintenance.
    | UnplannedMaintenance
      -- ^ @UNPLANNED_MAINTENANCE@
      -- The table is temporarily unable to serve Data API requests from this
      -- cluster due to unplanned or emergency maintenance.
    | Ready
      -- ^ @READY@
      -- The table can serve Data API requests from this cluster. Depending on
      -- replication delay, reads may not immediately reflect the state of the
      -- table in other clusters.
    | ReadyOptimizing
      -- ^ @READY_OPTIMIZING@
      -- The table is fully created and ready for use after a restore, and is
      -- being optimized for performance. When optimizations are complete, the
      -- table will transition to \`READY\` state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterStateReplicationState

instance FromHttpApiData ClusterStateReplicationState where
    parseQueryParam = \case
        "STATE_NOT_KNOWN" -> Right StateNotKnown
        "INITIALIZING" -> Right Initializing
        "PLANNED_MAINTENANCE" -> Right PlannedMaintenance
        "UNPLANNED_MAINTENANCE" -> Right UnplannedMaintenance
        "READY" -> Right Ready
        "READY_OPTIMIZING" -> Right ReadyOptimizing
        x -> Left ("Unable to parse ClusterStateReplicationState from: " <> x)

instance ToHttpApiData ClusterStateReplicationState where
    toQueryParam = \case
        StateNotKnown -> "STATE_NOT_KNOWN"
        Initializing -> "INITIALIZING"
        PlannedMaintenance -> "PLANNED_MAINTENANCE"
        UnplannedMaintenance -> "UNPLANNED_MAINTENANCE"
        Ready -> "READY"
        ReadyOptimizing -> "READY_OPTIMIZING"

instance FromJSON ClusterStateReplicationState where
    parseJSON = parseJSONText "ClusterStateReplicationState"

instance ToJSON ClusterStateReplicationState where
    toJSON = toJSONText

-- | Required. The type of the instance. Defaults to \`PRODUCTION\`.
data InstanceType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- The type of the instance is unspecified. If set when creating an
      -- instance, a \`PRODUCTION\` instance will be created. If set when
      -- updating an instance, the type will be left unchanged.
    | Production
      -- ^ @PRODUCTION@
      -- An instance meant for production use. \`serve_nodes\` must be set on the
      -- cluster.
    | Development
      -- ^ @DEVELOPMENT@
      -- DEPRECATED: Prefer PRODUCTION for all use cases, as it no longer
      -- enforces a higher minimum node count than DEVELOPMENT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceType

instance FromHttpApiData InstanceType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "PRODUCTION" -> Right Production
        "DEVELOPMENT" -> Right Development
        x -> Left ("Unable to parse InstanceType from: " <> x)

instance ToHttpApiData InstanceType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Production -> "PRODUCTION"
        Development -> "DEVELOPMENT"

instance FromJSON InstanceType where
    parseJSON = parseJSONText "InstanceType"

instance ToJSON InstanceType where
    toJSON = toJSONText

data TableProgressState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
    | Pending
      -- ^ @PENDING@
      -- The table has not yet begun copying to the new cluster.
    | Copying
      -- ^ @COPYING@
      -- The table is actively being copied to the new cluster.
    | Completed
      -- ^ @COMPLETED@
      -- The table has been fully copied to the new cluster.
    | Cancelled
      -- ^ @CANCELLED@
      -- The table was deleted before it finished copying to the new cluster.
      -- Note that tables deleted after completion will stay marked as COMPLETED,
      -- not CANCELLED.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TableProgressState

instance FromHttpApiData TableProgressState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "PENDING" -> Right Pending
        "COPYING" -> Right Copying
        "COMPLETED" -> Right Completed
        "CANCELLED" -> Right Cancelled
        x -> Left ("Unable to parse TableProgressState from: " <> x)

instance ToHttpApiData TableProgressState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Pending -> "PENDING"
        Copying -> "COPYING"
        Completed -> "COMPLETED"
        Cancelled -> "CANCELLED"

instance FromJSON TableProgressState where
    parseJSON = parseJSONText "TableProgressState"

instance ToJSON TableProgressState where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Immutable. The granularity (i.e. \`MILLIS\`) at which timestamps are
-- stored in this table. Timestamps not matching the granularity will be
-- rejected. If unspecified at creation time, the value will be set to
-- \`MILLIS\`. Views: \`SCHEMA_VIEW\`, \`FULL\`.
data TableGranularity
    = TimestampGranularityUnspecified
      -- ^ @TIMESTAMP_GRANULARITY_UNSPECIFIED@
      -- The user did not specify a granularity. Should not be returned. When
      -- specified during table creation, MILLIS will be used.
    | Millis
      -- ^ @MILLIS@
      -- The table keeps data versioned at a granularity of 1ms.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TableGranularity

instance FromHttpApiData TableGranularity where
    parseQueryParam = \case
        "TIMESTAMP_GRANULARITY_UNSPECIFIED" -> Right TimestampGranularityUnspecified
        "MILLIS" -> Right Millis
        x -> Left ("Unable to parse TableGranularity from: " <> x)

instance ToHttpApiData TableGranularity where
    toQueryParam = \case
        TimestampGranularityUnspecified -> "TIMESTAMP_GRANULARITY_UNSPECIFIED"
        Millis -> "MILLIS"

instance FromJSON TableGranularity where
    parseJSON = parseJSONText "TableGranularity"

instance ToJSON TableGranularity where
    toJSON = toJSONText

-- | Output only. The current state of the cluster.
data ClusterType
    = CTStateNotKnown
      -- ^ @STATE_NOT_KNOWN@
      -- The state of the cluster could not be determined.
    | CTReady
      -- ^ @READY@
      -- The cluster has been successfully created and is ready to serve
      -- requests.
    | CTCreating
      -- ^ @CREATING@
      -- The cluster is currently being created, and may be destroyed if the
      -- creation process encounters an error. A cluster may not be able to serve
      -- requests while being created.
    | CTResizing
      -- ^ @RESIZING@
      -- The cluster is currently being resized, and may revert to its previous
      -- node count if the process encounters an error. A cluster is still
      -- capable of serving requests while being resized, but may exhibit
      -- performance as if its number of allocated nodes is between the starting
      -- and requested states.
    | CTDisabled
      -- ^ @DISABLED@
      -- The cluster has no backing nodes. The data (tables) still exist, but no
      -- operations can be performed on the cluster.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterType

instance FromHttpApiData ClusterType where
    parseQueryParam = \case
        "STATE_NOT_KNOWN" -> Right CTStateNotKnown
        "READY" -> Right CTReady
        "CREATING" -> Right CTCreating
        "RESIZING" -> Right CTResizing
        "DISABLED" -> Right CTDisabled
        x -> Left ("Unable to parse ClusterType from: " <> x)

instance ToHttpApiData ClusterType where
    toQueryParam = \case
        CTStateNotKnown -> "STATE_NOT_KNOWN"
        CTReady -> "READY"
        CTCreating -> "CREATING"
        CTResizing -> "RESIZING"
        CTDisabled -> "DISABLED"

instance FromJSON ClusterType where
    parseJSON = parseJSONText "ClusterType"

instance ToJSON ClusterType where
    toJSON = toJSONText

-- | The view to be applied to the returned table\'s fields. Defaults to
-- \`SCHEMA_VIEW\` if unspecified.
data ProjectsInstancesTablesGetView
    = PITGVViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Uses the default view for each method as documented in its request.
    | PITGVNameOnly
      -- ^ @NAME_ONLY@
      -- Only populates \`name\`.
    | PITGVSchemaView
      -- ^ @SCHEMA_VIEW@
      -- Only populates \`name\` and fields related to the table\'s schema.
    | PITGVReplicationView
      -- ^ @REPLICATION_VIEW@
      -- Only populates \`name\` and fields related to the table\'s replication
      -- state.
    | PITGVEncryptionView
      -- ^ @ENCRYPTION_VIEW@
      -- Only populates \`name\` and fields related to the table\'s encryption
      -- state.
    | PITGVFull
      -- ^ @FULL@
      -- Populates all fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsInstancesTablesGetView

instance FromHttpApiData ProjectsInstancesTablesGetView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right PITGVViewUnspecified
        "NAME_ONLY" -> Right PITGVNameOnly
        "SCHEMA_VIEW" -> Right PITGVSchemaView
        "REPLICATION_VIEW" -> Right PITGVReplicationView
        "ENCRYPTION_VIEW" -> Right PITGVEncryptionView
        "FULL" -> Right PITGVFull
        x -> Left ("Unable to parse ProjectsInstancesTablesGetView from: " <> x)

instance ToHttpApiData ProjectsInstancesTablesGetView where
    toQueryParam = \case
        PITGVViewUnspecified -> "VIEW_UNSPECIFIED"
        PITGVNameOnly -> "NAME_ONLY"
        PITGVSchemaView -> "SCHEMA_VIEW"
        PITGVReplicationView -> "REPLICATION_VIEW"
        PITGVEncryptionView -> "ENCRYPTION_VIEW"
        PITGVFull -> "FULL"

instance FromJSON ProjectsInstancesTablesGetView where
    parseJSON = parseJSONText "ProjectsInstancesTablesGetView"

instance ToJSON ProjectsInstancesTablesGetView where
    toJSON = toJSONText

-- | Output only. The current state of the instance.
data InstanceState
    = ISStateNotKnown
      -- ^ @STATE_NOT_KNOWN@
      -- The state of the instance could not be determined.
    | ISReady
      -- ^ @READY@
      -- The instance has been successfully created and can serve requests to its
      -- tables.
    | ISCreating
      -- ^ @CREATING@
      -- The instance is currently being created, and may be destroyed if the
      -- creation process encounters an error.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceState

instance FromHttpApiData InstanceState where
    parseQueryParam = \case
        "STATE_NOT_KNOWN" -> Right ISStateNotKnown
        "READY" -> Right ISReady
        "CREATING" -> Right ISCreating
        x -> Left ("Unable to parse InstanceState from: " <> x)

instance ToHttpApiData InstanceState where
    toQueryParam = \case
        ISStateNotKnown -> "STATE_NOT_KNOWN"
        ISReady -> "READY"
        ISCreating -> "CREATING"

instance FromJSON InstanceState where
    parseJSON = parseJSONText "InstanceState"

instance ToJSON InstanceState where
    toJSON = toJSONText

-- | Output only. The current state of the backup.
data BackupState
    = BSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not specified.
    | BSCreating
      -- ^ @CREATING@
      -- The pending backup is still being created. Operations on the backup may
      -- fail with \`FAILED_PRECONDITION\` in this state.
    | BSReady
      -- ^ @READY@
      -- The backup is complete and ready for use.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackupState

instance FromHttpApiData BackupState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right BSStateUnspecified
        "CREATING" -> Right BSCreating
        "READY" -> Right BSReady
        x -> Left ("Unable to parse BackupState from: " <> x)

instance ToHttpApiData BackupState where
    toQueryParam = \case
        BSStateUnspecified -> "STATE_UNSPECIFIED"
        BSCreating -> "CREATING"
        BSReady -> "READY"

instance FromJSON BackupState where
    parseJSON = parseJSONText "BackupState"

instance ToJSON BackupState where
    toJSON = toJSONText
