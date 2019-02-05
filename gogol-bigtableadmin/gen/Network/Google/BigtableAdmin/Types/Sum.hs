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

import           Network.Google.Prelude hiding (Bytes)

-- | (\`CreationOnly\`) The type of storage used by this cluster to serve its
-- parent instance\'s tables, unless explicitly overridden.
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

-- | (\`OutputOnly\`) The state of replication for the table in this cluster.
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterStateReplicationState

instance FromHttpApiData ClusterStateReplicationState where
    parseQueryParam = \case
        "STATE_NOT_KNOWN" -> Right StateNotKnown
        "INITIALIZING" -> Right Initializing
        "PLANNED_MAINTENANCE" -> Right PlannedMaintenance
        "UNPLANNED_MAINTENANCE" -> Right UnplannedMaintenance
        "READY" -> Right Ready
        x -> Left ("Unable to parse ClusterStateReplicationState from: " <> x)

instance ToHttpApiData ClusterStateReplicationState where
    toQueryParam = \case
        StateNotKnown -> "STATE_NOT_KNOWN"
        Initializing -> "INITIALIZING"
        PlannedMaintenance -> "PLANNED_MAINTENANCE"
        UnplannedMaintenance -> "UNPLANNED_MAINTENANCE"
        Ready -> "READY"

instance FromJSON ClusterStateReplicationState where
    parseJSON = parseJSONText "ClusterStateReplicationState"

instance ToJSON ClusterStateReplicationState where
    toJSON = toJSONText

-- | The type of the instance. Defaults to \`PRODUCTION\`.
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
      -- The instance is meant for development and testing purposes only; it has
      -- no performance or uptime guarantees and is not covered by SLA. After a
      -- development instance is created, it can be upgraded by updating the
      -- instance to type \`PRODUCTION\`. An instance created as a production
      -- instance cannot be changed to a development instance. When creating a
      -- development instance, \`serve_nodes\` on the cluster must not be set.
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

-- | (\`CreationOnly\`) The granularity (i.e. \`MILLIS\`) at which timestamps
-- are stored in this table. Timestamps not matching the granularity will
-- be rejected. If unspecified at creation time, the value will be set to
-- \`MILLIS\`. Views: \`SCHEMA_VIEW\`, \`FULL\`
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

-- | (\`OutputOnly\`) The current state of the cluster.
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

-- | (\`OutputOnly\`) The current state of the instance.
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
