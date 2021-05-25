{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SQLAdmin.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SQLAdmin.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The database engine type and version. The **databaseVersion** field
-- cannot be changed after instance creation. MySQL instances:
-- **MYSQL_8_0**, **MYSQL_5_7** (default), or **MYSQL_5_6**. PostgreSQL
-- instances: **POSTGRES_9_6**, **POSTGRES_10**, **POSTGRES_11** or
-- **POSTGRES_12** (default). SQL Server instances:
-- **SQLSERVER_2017_STANDARD** (default), **SQLSERVER_2017_ENTERPRISE**,
-- **SQLSERVER_2017_EXPRESS**, or **SQLSERVER_2017_WEB**.
data ConnectSettingsDatabaseVersion
    = SQLDatabaseVersionUnspecified
      -- ^ @SQL_DATABASE_VERSION_UNSPECIFIED@
      -- This is an unknown database version.
    | Mysql51
      -- ^ @MYSQL_5_1@
      -- The database version is MySQL 5.1.
    | Mysql55
      -- ^ @MYSQL_5_5@
      -- The database version is MySQL 5.5.
    | Mysql56
      -- ^ @MYSQL_5_6@
      -- The database version is MySQL 5.6.
    | Mysql57
      -- ^ @MYSQL_5_7@
      -- The database version is MySQL 5.7.
    | Postgres96
      -- ^ @POSTGRES_9_6@
      -- The database version is PostgreSQL 9.6.
    | Postgres11
      -- ^ @POSTGRES_11@
      -- The database version is PostgreSQL 11.
    | SQLserver2017Standard
      -- ^ @SQLSERVER_2017_STANDARD@
      -- The database version is SQL Server 2017 Standard.
    | SQLserver2017Enterprise
      -- ^ @SQLSERVER_2017_ENTERPRISE@
      -- The database version is SQL Server 2017 Enterprise.
    | SQLserver2017Express
      -- ^ @SQLSERVER_2017_EXPRESS@
      -- The database version is SQL Server 2017 Express.
    | SQLserver2017Web
      -- ^ @SQLSERVER_2017_WEB@
      -- The database version is SQL Server 2017 Web.
    | Postgres10
      -- ^ @POSTGRES_10@
      -- The database version is PostgreSQL 10.
    | Postgres12
      -- ^ @POSTGRES_12@
      -- The database version is PostgreSQL 12.
    | Postgres13
      -- ^ @POSTGRES_13@
      -- The database version is PostgreSQL 13.
    | SQLserver2019Standard
      -- ^ @SQLSERVER_2019_STANDARD@
      -- The database version is SQL Server 2019 Standard.
    | SQLserver2019Enterprise
      -- ^ @SQLSERVER_2019_ENTERPRISE@
      -- The database version is SQL Server 2019 Enterprise.
    | SQLserver2019Express
      -- ^ @SQLSERVER_2019_EXPRESS@
      -- The database version is SQL Server 2019 Express.
    | SQLserver2019Web
      -- ^ @SQLSERVER_2019_WEB@
      -- The database version is SQL Server 2019 Web.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConnectSettingsDatabaseVersion

instance FromHttpApiData ConnectSettingsDatabaseVersion where
    parseQueryParam = \case
        "SQL_DATABASE_VERSION_UNSPECIFIED" -> Right SQLDatabaseVersionUnspecified
        "MYSQL_5_1" -> Right Mysql51
        "MYSQL_5_5" -> Right Mysql55
        "MYSQL_5_6" -> Right Mysql56
        "MYSQL_5_7" -> Right Mysql57
        "POSTGRES_9_6" -> Right Postgres96
        "POSTGRES_11" -> Right Postgres11
        "SQLSERVER_2017_STANDARD" -> Right SQLserver2017Standard
        "SQLSERVER_2017_ENTERPRISE" -> Right SQLserver2017Enterprise
        "SQLSERVER_2017_EXPRESS" -> Right SQLserver2017Express
        "SQLSERVER_2017_WEB" -> Right SQLserver2017Web
        "POSTGRES_10" -> Right Postgres10
        "POSTGRES_12" -> Right Postgres12
        "POSTGRES_13" -> Right Postgres13
        "SQLSERVER_2019_STANDARD" -> Right SQLserver2019Standard
        "SQLSERVER_2019_ENTERPRISE" -> Right SQLserver2019Enterprise
        "SQLSERVER_2019_EXPRESS" -> Right SQLserver2019Express
        "SQLSERVER_2019_WEB" -> Right SQLserver2019Web
        x -> Left ("Unable to parse ConnectSettingsDatabaseVersion from: " <> x)

instance ToHttpApiData ConnectSettingsDatabaseVersion where
    toQueryParam = \case
        SQLDatabaseVersionUnspecified -> "SQL_DATABASE_VERSION_UNSPECIFIED"
        Mysql51 -> "MYSQL_5_1"
        Mysql55 -> "MYSQL_5_5"
        Mysql56 -> "MYSQL_5_6"
        Mysql57 -> "MYSQL_5_7"
        Postgres96 -> "POSTGRES_9_6"
        Postgres11 -> "POSTGRES_11"
        SQLserver2017Standard -> "SQLSERVER_2017_STANDARD"
        SQLserver2017Enterprise -> "SQLSERVER_2017_ENTERPRISE"
        SQLserver2017Express -> "SQLSERVER_2017_EXPRESS"
        SQLserver2017Web -> "SQLSERVER_2017_WEB"
        Postgres10 -> "POSTGRES_10"
        Postgres12 -> "POSTGRES_12"
        Postgres13 -> "POSTGRES_13"
        SQLserver2019Standard -> "SQLSERVER_2019_STANDARD"
        SQLserver2019Enterprise -> "SQLSERVER_2019_ENTERPRISE"
        SQLserver2019Express -> "SQLSERVER_2019_EXPRESS"
        SQLserver2019Web -> "SQLSERVER_2019_WEB"

instance FromJSON ConnectSettingsDatabaseVersion where
    parseJSON = parseJSONText "ConnectSettingsDatabaseVersion"

instance ToJSON ConnectSettingsDatabaseVersion where
    toJSON = toJSONText

-- | The type of the flag. Flags are typed to being **BOOLEAN**, **STRING**,
-- **INTEGER** or **NONE**. **NONE** is used for flags which do not take a
-- value, such as **skip_grant_tables**.
data FlagType
    = SQLFlagTypeUnspecified
      -- ^ @SQL_FLAG_TYPE_UNSPECIFIED@
      -- This is an unknown flag type.
    | Boolean
      -- ^ @BOOLEAN@
      -- Boolean type flag.
    | String
      -- ^ @STRING@
      -- String type flag.
    | Integer
      -- ^ @INTEGER@
      -- Integer type flag.
    | None
      -- ^ @NONE@
      -- Flag type used for a server startup option.
    | MysqlTimezoneOffSet
      -- ^ @MYSQL_TIMEZONE_OFFSET@
      -- Type introduced specially for MySQL TimeZone offset. Accept a string
      -- value with the format [-12:59, 13:00].
    | Float
      -- ^ @FLOAT@
      -- Float type flag.
    | RepeatedString
      -- ^ @REPEATED_STRING@
      -- Comma-separated list of the strings in a SqlFlagType enum.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FlagType

instance FromHttpApiData FlagType where
    parseQueryParam = \case
        "SQL_FLAG_TYPE_UNSPECIFIED" -> Right SQLFlagTypeUnspecified
        "BOOLEAN" -> Right Boolean
        "STRING" -> Right String
        "INTEGER" -> Right Integer
        "NONE" -> Right None
        "MYSQL_TIMEZONE_OFFSET" -> Right MysqlTimezoneOffSet
        "FLOAT" -> Right Float
        "REPEATED_STRING" -> Right RepeatedString
        x -> Left ("Unable to parse FlagType from: " <> x)

instance ToHttpApiData FlagType where
    toQueryParam = \case
        SQLFlagTypeUnspecified -> "SQL_FLAG_TYPE_UNSPECIFIED"
        Boolean -> "BOOLEAN"
        String -> "STRING"
        Integer -> "INTEGER"
        None -> "NONE"
        MysqlTimezoneOffSet -> "MYSQL_TIMEZONE_OFFSET"
        Float -> "FLOAT"
        RepeatedString -> "REPEATED_STRING"

instance FromJSON FlagType where
    parseJSON = parseJSONText "FlagType"

instance ToJSON FlagType where
    toJSON = toJSONText

-- | The type of this run; can be either \"AUTOMATED\" or \"ON_DEMAND\". This
-- field defaults to \"ON_DEMAND\" and is ignored, when specified for
-- insert requests.
data BackupRunType
    = SQLBackupRunTypeUnspecified
      -- ^ @SQL_BACKUP_RUN_TYPE_UNSPECIFIED@
      -- This is an unknown BackupRun type.
    | Automated
      -- ^ @AUTOMATED@
      -- The backup schedule automatically triggers a backup.
    | OnDemand
      -- ^ @ON_DEMAND@
      -- The user manually triggers a backup.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackupRunType

instance FromHttpApiData BackupRunType where
    parseQueryParam = \case
        "SQL_BACKUP_RUN_TYPE_UNSPECIFIED" -> Right SQLBackupRunTypeUnspecified
        "AUTOMATED" -> Right Automated
        "ON_DEMAND" -> Right OnDemand
        x -> Left ("Unable to parse BackupRunType from: " <> x)

instance ToHttpApiData BackupRunType where
    toQueryParam = \case
        SQLBackupRunTypeUnspecified -> "SQL_BACKUP_RUN_TYPE_UNSPECIFIED"
        Automated -> "AUTOMATED"
        OnDemand -> "ON_DEMAND"

instance FromJSON BackupRunType where
    parseJSON = parseJSONText "BackupRunType"

instance ToJSON BackupRunType where
    toJSON = toJSONText

-- | **SECOND_GEN**: Cloud SQL database instance. **EXTERNAL**: A database
-- server that is not managed by Google. This property is read-only; use
-- the **tier** property in the **settings** object to determine the
-- database type.
data ConnectSettingsBackendType
    = SQLBackendTypeUnspecified
      -- ^ @SQL_BACKEND_TYPE_UNSPECIFIED@
      -- This is an unknown backend type for instance.
    | FirstGen
      -- ^ @FIRST_GEN@
      -- V1 speckle instance.
    | SecondGen
      -- ^ @SECOND_GEN@
      -- V2 speckle instance.
    | External
      -- ^ @EXTERNAL@
      -- On premises instance.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConnectSettingsBackendType

instance FromHttpApiData ConnectSettingsBackendType where
    parseQueryParam = \case
        "SQL_BACKEND_TYPE_UNSPECIFIED" -> Right SQLBackendTypeUnspecified
        "FIRST_GEN" -> Right FirstGen
        "SECOND_GEN" -> Right SecondGen
        "EXTERNAL" -> Right External
        x -> Left ("Unable to parse ConnectSettingsBackendType from: " <> x)

instance ToHttpApiData ConnectSettingsBackendType where
    toQueryParam = \case
        SQLBackendTypeUnspecified -> "SQL_BACKEND_TYPE_UNSPECIFIED"
        FirstGen -> "FIRST_GEN"
        SecondGen -> "SECOND_GEN"
        External -> "EXTERNAL"

instance FromJSON ConnectSettingsBackendType where
    parseJSON = parseJSONText "ConnectSettingsBackendType"

instance ToJSON ConnectSettingsBackendType where
    toJSON = toJSONText

-- | The unit that \'retained_backups\' represents.
data BackupRetentionSettingsRetentionUnit
    = RetentionUnitUnspecified
      -- ^ @RETENTION_UNIT_UNSPECIFIED@
      -- Backup retention unit is unspecified, will be treated as COUNT.
    | Count
      -- ^ @COUNT@
      -- Retention will be by count, eg. \"retain the most recent 7 backups\".
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackupRetentionSettingsRetentionUnit

instance FromHttpApiData BackupRetentionSettingsRetentionUnit where
    parseQueryParam = \case
        "RETENTION_UNIT_UNSPECIFIED" -> Right RetentionUnitUnspecified
        "COUNT" -> Right Count
        x -> Left ("Unable to parse BackupRetentionSettingsRetentionUnit from: " <> x)

instance ToHttpApiData BackupRetentionSettingsRetentionUnit where
    toQueryParam = \case
        RetentionUnitUnspecified -> "RETENTION_UNIT_UNSPECIFIED"
        Count -> "COUNT"

instance FromJSON BackupRetentionSettingsRetentionUnit where
    parseJSON = parseJSONText "BackupRetentionSettingsRetentionUnit"

instance ToJSON BackupRetentionSettingsRetentionUnit where
    toJSON = toJSONText

data FlagAppliesToItem
    = FATISQLDatabaseVersionUnspecified
      -- ^ @SQL_DATABASE_VERSION_UNSPECIFIED@
      -- This is an unknown database version.
    | FATIMysql51
      -- ^ @MYSQL_5_1@
      -- The database version is MySQL 5.1.
    | FATIMysql55
      -- ^ @MYSQL_5_5@
      -- The database version is MySQL 5.5.
    | FATIMysql56
      -- ^ @MYSQL_5_6@
      -- The database version is MySQL 5.6.
    | FATIMysql57
      -- ^ @MYSQL_5_7@
      -- The database version is MySQL 5.7.
    | FATIPostgres96
      -- ^ @POSTGRES_9_6@
      -- The database version is PostgreSQL 9.6.
    | FATIPostgres11
      -- ^ @POSTGRES_11@
      -- The database version is PostgreSQL 11.
    | FATISQLserver2017Standard
      -- ^ @SQLSERVER_2017_STANDARD@
      -- The database version is SQL Server 2017 Standard.
    | FATISQLserver2017Enterprise
      -- ^ @SQLSERVER_2017_ENTERPRISE@
      -- The database version is SQL Server 2017 Enterprise.
    | FATISQLserver2017Express
      -- ^ @SQLSERVER_2017_EXPRESS@
      -- The database version is SQL Server 2017 Express.
    | FATISQLserver2017Web
      -- ^ @SQLSERVER_2017_WEB@
      -- The database version is SQL Server 2017 Web.
    | FATIPostgres10
      -- ^ @POSTGRES_10@
      -- The database version is PostgreSQL 10.
    | FATIPostgres12
      -- ^ @POSTGRES_12@
      -- The database version is PostgreSQL 12.
    | FATIPostgres13
      -- ^ @POSTGRES_13@
      -- The database version is PostgreSQL 13.
    | FATISQLserver2019Standard
      -- ^ @SQLSERVER_2019_STANDARD@
      -- The database version is SQL Server 2019 Standard.
    | FATISQLserver2019Enterprise
      -- ^ @SQLSERVER_2019_ENTERPRISE@
      -- The database version is SQL Server 2019 Enterprise.
    | FATISQLserver2019Express
      -- ^ @SQLSERVER_2019_EXPRESS@
      -- The database version is SQL Server 2019 Express.
    | FATISQLserver2019Web
      -- ^ @SQLSERVER_2019_WEB@
      -- The database version is SQL Server 2019 Web.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FlagAppliesToItem

instance FromHttpApiData FlagAppliesToItem where
    parseQueryParam = \case
        "SQL_DATABASE_VERSION_UNSPECIFIED" -> Right FATISQLDatabaseVersionUnspecified
        "MYSQL_5_1" -> Right FATIMysql51
        "MYSQL_5_5" -> Right FATIMysql55
        "MYSQL_5_6" -> Right FATIMysql56
        "MYSQL_5_7" -> Right FATIMysql57
        "POSTGRES_9_6" -> Right FATIPostgres96
        "POSTGRES_11" -> Right FATIPostgres11
        "SQLSERVER_2017_STANDARD" -> Right FATISQLserver2017Standard
        "SQLSERVER_2017_ENTERPRISE" -> Right FATISQLserver2017Enterprise
        "SQLSERVER_2017_EXPRESS" -> Right FATISQLserver2017Express
        "SQLSERVER_2017_WEB" -> Right FATISQLserver2017Web
        "POSTGRES_10" -> Right FATIPostgres10
        "POSTGRES_12" -> Right FATIPostgres12
        "POSTGRES_13" -> Right FATIPostgres13
        "SQLSERVER_2019_STANDARD" -> Right FATISQLserver2019Standard
        "SQLSERVER_2019_ENTERPRISE" -> Right FATISQLserver2019Enterprise
        "SQLSERVER_2019_EXPRESS" -> Right FATISQLserver2019Express
        "SQLSERVER_2019_WEB" -> Right FATISQLserver2019Web
        x -> Left ("Unable to parse FlagAppliesToItem from: " <> x)

instance ToHttpApiData FlagAppliesToItem where
    toQueryParam = \case
        FATISQLDatabaseVersionUnspecified -> "SQL_DATABASE_VERSION_UNSPECIFIED"
        FATIMysql51 -> "MYSQL_5_1"
        FATIMysql55 -> "MYSQL_5_5"
        FATIMysql56 -> "MYSQL_5_6"
        FATIMysql57 -> "MYSQL_5_7"
        FATIPostgres96 -> "POSTGRES_9_6"
        FATIPostgres11 -> "POSTGRES_11"
        FATISQLserver2017Standard -> "SQLSERVER_2017_STANDARD"
        FATISQLserver2017Enterprise -> "SQLSERVER_2017_ENTERPRISE"
        FATISQLserver2017Express -> "SQLSERVER_2017_EXPRESS"
        FATISQLserver2017Web -> "SQLSERVER_2017_WEB"
        FATIPostgres10 -> "POSTGRES_10"
        FATIPostgres12 -> "POSTGRES_12"
        FATIPostgres13 -> "POSTGRES_13"
        FATISQLserver2019Standard -> "SQLSERVER_2019_STANDARD"
        FATISQLserver2019Enterprise -> "SQLSERVER_2019_ENTERPRISE"
        FATISQLserver2019Express -> "SQLSERVER_2019_EXPRESS"
        FATISQLserver2019Web -> "SQLSERVER_2019_WEB"

instance FromJSON FlagAppliesToItem where
    parseJSON = parseJSONText "FlagAppliesToItem"

instance ToJSON FlagAppliesToItem where
    toJSON = toJSONText

-- | The type of the operation. Valid values are: **CREATE** **DELETE**
-- **UPDATE** **RESTART** **IMPORT** **EXPORT** **BACKUP_VOLUME**
-- **RESTORE_VOLUME** **CREATE_USER** **DELETE_USER** **CREATE_DATABASE**
-- **DELETE_DATABASE**
data OperationOperationType
    = SQLOperationTypeUnspecified
      -- ^ @SQL_OPERATION_TYPE_UNSPECIFIED@
      -- Unknown operation type.
    | Import
      -- ^ @IMPORT@
      -- Imports data into a Cloud SQL instance.
    | Export
      -- ^ @EXPORT@
      -- Exports data from a Cloud SQL instance to a Cloud Storage bucket.
    | Create
      -- ^ @CREATE@
      -- Creates a new Cloud SQL instance.
    | Update
      -- ^ @UPDATE@
      -- Updates the settings of a Cloud SQL instance.
    | Delete'
      -- ^ @DELETE@
      -- Deletes a Cloud SQL instance.
    | Restart
      -- ^ @RESTART@
      -- Restarts the Cloud SQL instance.
    | Backup
      -- ^ @BACKUP@
    | Snapshot
      -- ^ @SNAPSHOT@
    | BackupVolume
      -- ^ @BACKUP_VOLUME@
      -- Performs instance backup.
    | DeleteVolume
      -- ^ @DELETE_VOLUME@
      -- Deletes an instance backup.
    | RestoreVolume
      -- ^ @RESTORE_VOLUME@
      -- Restores an instance backup.
    | InjectUser
      -- ^ @INJECT_USER@
      -- Injects a privileged user in mysql for MOB instances.
    | Clone
      -- ^ @CLONE@
      -- Clones a Cloud SQL instance.
    | StopReplica
      -- ^ @STOP_REPLICA@
      -- Stops replication on a Cloud SQL read replica instance.
    | StartReplica
      -- ^ @START_REPLICA@
      -- Starts replication on a Cloud SQL read replica instance.
    | PromoteReplica
      -- ^ @PROMOTE_REPLICA@
      -- Promotes a Cloud SQL replica instance.
    | CreateReplica
      -- ^ @CREATE_REPLICA@
      -- Creates a Cloud SQL replica instance.
    | CreateUser
      -- ^ @CREATE_USER@
      -- Creates a new user in a Cloud SQL instance.
    | DeleteUser
      -- ^ @DELETE_USER@
      -- Deletes a user from a Cloud SQL instance.
    | UpdateUser
      -- ^ @UPDATE_USER@
      -- Updates an existing user in a Cloud SQL instance.
    | CreateDatabase
      -- ^ @CREATE_DATABASE@
      -- Creates a database in the Cloud SQL instance.
    | DeleteDatabase
      -- ^ @DELETE_DATABASE@
      -- Deletes a database in the Cloud SQL instance.
    | UpdateDatabase
      -- ^ @UPDATE_DATABASE@
      -- Updates a database in the Cloud SQL instance.
    | Failover
      -- ^ @FAILOVER@
      -- Performs failover of an HA-enabled Cloud SQL failover replica.
    | DeleteBackup
      -- ^ @DELETE_BACKUP@
      -- Deletes the backup taken by a backup run.
    | RecreateReplica
      -- ^ @RECREATE_REPLICA@
    | TruncateLog
      -- ^ @TRUNCATE_LOG@
      -- Truncates a general or slow log table in MySQL.
    | DemoteMaster
      -- ^ @DEMOTE_MASTER@
      -- Demotes the stand-alone instance to be a Cloud SQL read replica for an
      -- external database server.
    | Maintenance
      -- ^ @MAINTENANCE@
      -- Indicates that the instance is currently in maintenance. Maintenance
      -- typically causes the instance to be unavailable for 1-3 minutes.
    | EnablePrivateIP
      -- ^ @ENABLE_PRIVATE_IP@
      -- This field is deprecated, and will be removed in future version of API.
    | DeferMaintenance
      -- ^ @DEFER_MAINTENANCE@
    | CreateClone
      -- ^ @CREATE_CLONE@
      -- Creates clone instance.
    | RescheduleMaintenance
      -- ^ @RESCHEDULE_MAINTENANCE@
      -- Reschedule maintenance to another time.
    | StartExternalSync
      -- ^ @START_EXTERNAL_SYNC@
      -- Starts external sync of a Cloud SQL EM replica to an external primary
      -- instance.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationOperationType

instance FromHttpApiData OperationOperationType where
    parseQueryParam = \case
        "SQL_OPERATION_TYPE_UNSPECIFIED" -> Right SQLOperationTypeUnspecified
        "IMPORT" -> Right Import
        "EXPORT" -> Right Export
        "CREATE" -> Right Create
        "UPDATE" -> Right Update
        "DELETE" -> Right Delete'
        "RESTART" -> Right Restart
        "BACKUP" -> Right Backup
        "SNAPSHOT" -> Right Snapshot
        "BACKUP_VOLUME" -> Right BackupVolume
        "DELETE_VOLUME" -> Right DeleteVolume
        "RESTORE_VOLUME" -> Right RestoreVolume
        "INJECT_USER" -> Right InjectUser
        "CLONE" -> Right Clone
        "STOP_REPLICA" -> Right StopReplica
        "START_REPLICA" -> Right StartReplica
        "PROMOTE_REPLICA" -> Right PromoteReplica
        "CREATE_REPLICA" -> Right CreateReplica
        "CREATE_USER" -> Right CreateUser
        "DELETE_USER" -> Right DeleteUser
        "UPDATE_USER" -> Right UpdateUser
        "CREATE_DATABASE" -> Right CreateDatabase
        "DELETE_DATABASE" -> Right DeleteDatabase
        "UPDATE_DATABASE" -> Right UpdateDatabase
        "FAILOVER" -> Right Failover
        "DELETE_BACKUP" -> Right DeleteBackup
        "RECREATE_REPLICA" -> Right RecreateReplica
        "TRUNCATE_LOG" -> Right TruncateLog
        "DEMOTE_MASTER" -> Right DemoteMaster
        "MAINTENANCE" -> Right Maintenance
        "ENABLE_PRIVATE_IP" -> Right EnablePrivateIP
        "DEFER_MAINTENANCE" -> Right DeferMaintenance
        "CREATE_CLONE" -> Right CreateClone
        "RESCHEDULE_MAINTENANCE" -> Right RescheduleMaintenance
        "START_EXTERNAL_SYNC" -> Right StartExternalSync
        x -> Left ("Unable to parse OperationOperationType from: " <> x)

instance ToHttpApiData OperationOperationType where
    toQueryParam = \case
        SQLOperationTypeUnspecified -> "SQL_OPERATION_TYPE_UNSPECIFIED"
        Import -> "IMPORT"
        Export -> "EXPORT"
        Create -> "CREATE"
        Update -> "UPDATE"
        Delete' -> "DELETE"
        Restart -> "RESTART"
        Backup -> "BACKUP"
        Snapshot -> "SNAPSHOT"
        BackupVolume -> "BACKUP_VOLUME"
        DeleteVolume -> "DELETE_VOLUME"
        RestoreVolume -> "RESTORE_VOLUME"
        InjectUser -> "INJECT_USER"
        Clone -> "CLONE"
        StopReplica -> "STOP_REPLICA"
        StartReplica -> "START_REPLICA"
        PromoteReplica -> "PROMOTE_REPLICA"
        CreateReplica -> "CREATE_REPLICA"
        CreateUser -> "CREATE_USER"
        DeleteUser -> "DELETE_USER"
        UpdateUser -> "UPDATE_USER"
        CreateDatabase -> "CREATE_DATABASE"
        DeleteDatabase -> "DELETE_DATABASE"
        UpdateDatabase -> "UPDATE_DATABASE"
        Failover -> "FAILOVER"
        DeleteBackup -> "DELETE_BACKUP"
        RecreateReplica -> "RECREATE_REPLICA"
        TruncateLog -> "TRUNCATE_LOG"
        DemoteMaster -> "DEMOTE_MASTER"
        Maintenance -> "MAINTENANCE"
        EnablePrivateIP -> "ENABLE_PRIVATE_IP"
        DeferMaintenance -> "DEFER_MAINTENANCE"
        CreateClone -> "CREATE_CLONE"
        RescheduleMaintenance -> "RESCHEDULE_MAINTENANCE"
        StartExternalSync -> "START_EXTERNAL_SYNC"

instance FromJSON OperationOperationType where
    parseJSON = parseJSONText "OperationOperationType"

instance ToJSON OperationOperationType where
    toJSON = toJSONText

-- | The pricing plan for this instance. This can be either **PER_USE** or
-- **PACKAGE**. Only **PER_USE** is supported for Second Generation
-- instances.
data SettingsPricingPlan
    = SQLPricingPlanUnspecified
      -- ^ @SQL_PRICING_PLAN_UNSPECIFIED@
      -- This is an unknown pricing plan for this instance.
    | Package
      -- ^ @PACKAGE@
      -- The instance is billed at a monthly flat rate.
    | PerUse
      -- ^ @PER_USE@
      -- The instance is billed per usage.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SettingsPricingPlan

instance FromHttpApiData SettingsPricingPlan where
    parseQueryParam = \case
        "SQL_PRICING_PLAN_UNSPECIFIED" -> Right SQLPricingPlanUnspecified
        "PACKAGE" -> Right Package
        "PER_USE" -> Right PerUse
        x -> Left ("Unable to parse SettingsPricingPlan from: " <> x)

instance ToHttpApiData SettingsPricingPlan where
    toQueryParam = \case
        SQLPricingPlanUnspecified -> "SQL_PRICING_PLAN_UNSPECIFIED"
        Package -> "PACKAGE"
        PerUse -> "PER_USE"

instance FromJSON SettingsPricingPlan where
    parseJSON = parseJSONText "SettingsPricingPlan"

instance ToJSON SettingsPricingPlan where
    toJSON = toJSONText

-- | Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
data BackupRunBackupKind
    = BRBKSQLBackupKindUnspecified
      -- ^ @SQL_BACKUP_KIND_UNSPECIFIED@
      -- This is an unknown BackupKind.
    | BRBKSnapshot
      -- ^ @SNAPSHOT@
      -- The snapshot based backups
    | BRBKPhysical
      -- ^ @PHYSICAL@
      -- Physical backups
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackupRunBackupKind

instance FromHttpApiData BackupRunBackupKind where
    parseQueryParam = \case
        "SQL_BACKUP_KIND_UNSPECIFIED" -> Right BRBKSQLBackupKindUnspecified
        "SNAPSHOT" -> Right BRBKSnapshot
        "PHYSICAL" -> Right BRBKPhysical
        x -> Left ("Unable to parse BackupRunBackupKind from: " <> x)

instance ToHttpApiData BackupRunBackupKind where
    toQueryParam = \case
        BRBKSQLBackupKindUnspecified -> "SQL_BACKUP_KIND_UNSPECIFIED"
        BRBKSnapshot -> "SNAPSHOT"
        BRBKPhysical -> "PHYSICAL"

instance FromJSON BackupRunBackupKind where
    parseJSON = parseJSONText "BackupRunBackupKind"

instance ToJSON BackupRunBackupKind where
    toJSON = toJSONText

-- | The status of an operation. Valid values are: **PENDING** **RUNNING**
-- **DONE** **SQL_OPERATION_STATUS_UNSPECIFIED**
data OperationStatus
    = SQLOperationStatusUnspecified
      -- ^ @SQL_OPERATION_STATUS_UNSPECIFIED@
      -- The state of the operation is unknown.
    | Pending
      -- ^ @PENDING@
      -- The operation has been queued, but has not started yet.
    | Running
      -- ^ @RUNNING@
      -- The operation is running.
    | Done
      -- ^ @DONE@
      -- The operation completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationStatus

instance FromHttpApiData OperationStatus where
    parseQueryParam = \case
        "SQL_OPERATION_STATUS_UNSPECIFIED" -> Right SQLOperationStatusUnspecified
        "PENDING" -> Right Pending
        "RUNNING" -> Right Running
        "DONE" -> Right Done
        x -> Left ("Unable to parse OperationStatus from: " <> x)

instance ToHttpApiData OperationStatus where
    toQueryParam = \case
        SQLOperationStatusUnspecified -> "SQL_OPERATION_STATUS_UNSPECIFIED"
        Pending -> "PENDING"
        Running -> "RUNNING"
        Done -> "DONE"

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"

instance ToJSON OperationStatus where
    toJSON = toJSONText

-- | The activation policy specifies when the instance is activated; it is
-- applicable only when the instance state is RUNNABLE. Valid values:
-- **ALWAYS**: The instance is on, and remains so even in the absence of
-- connection requests. **NEVER**: The instance is off; it is not
-- activated, even if a connection request arrives.
data SettingsActivationPolicy
    = SAPSQLActivationPolicyUnspecified
      -- ^ @SQL_ACTIVATION_POLICY_UNSPECIFIED@
      -- Unknown activation plan.
    | SAPAlways
      -- ^ @ALWAYS@
      -- The instance is always up and running.
    | SAPNever
      -- ^ @NEVER@
      -- The instance never starts.
    | SAPOnDemand
      -- ^ @ON_DEMAND@
      -- The instance starts upon receiving requests.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SettingsActivationPolicy

instance FromHttpApiData SettingsActivationPolicy where
    parseQueryParam = \case
        "SQL_ACTIVATION_POLICY_UNSPECIFIED" -> Right SAPSQLActivationPolicyUnspecified
        "ALWAYS" -> Right SAPAlways
        "NEVER" -> Right SAPNever
        "ON_DEMAND" -> Right SAPOnDemand
        x -> Left ("Unable to parse SettingsActivationPolicy from: " <> x)

instance ToHttpApiData SettingsActivationPolicy where
    toQueryParam = \case
        SAPSQLActivationPolicyUnspecified -> "SQL_ACTIVATION_POLICY_UNSPECIFIED"
        SAPAlways -> "ALWAYS"
        SAPNever -> "NEVER"
        SAPOnDemand -> "ON_DEMAND"

instance FromJSON SettingsActivationPolicy where
    parseJSON = parseJSONText "SettingsActivationPolicy"

instance ToJSON SettingsActivationPolicy where
    toJSON = toJSONText

-- | The file type for the specified uri. **SQL**: The file contains SQL
-- statements. **CSV**: The file contains CSV data.
data ImportContextFileType
    = SQLFileTypeUnspecified
      -- ^ @SQL_FILE_TYPE_UNSPECIFIED@
      -- Unknown file type.
    | SQL
      -- ^ @SQL@
      -- File containing SQL statements.
    | CSV
      -- ^ @CSV@
      -- File in CSV format.
    | Bak
      -- ^ @BAK@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImportContextFileType

instance FromHttpApiData ImportContextFileType where
    parseQueryParam = \case
        "SQL_FILE_TYPE_UNSPECIFIED" -> Right SQLFileTypeUnspecified
        "SQL" -> Right SQL
        "CSV" -> Right CSV
        "BAK" -> Right Bak
        x -> Left ("Unable to parse ImportContextFileType from: " <> x)

instance ToHttpApiData ImportContextFileType where
    toQueryParam = \case
        SQLFileTypeUnspecified -> "SQL_FILE_TYPE_UNSPECIFIED"
        SQL -> "SQL"
        CSV -> "CSV"
        Bak -> "BAK"

instance FromJSON ImportContextFileType where
    parseJSON = parseJSONText "ImportContextFileType"

instance ToJSON ImportContextFileType where
    toJSON = toJSONText

-- | Availability type. Potential values: **ZONAL**: The instance serves data
-- from only one zone. Outages in that zone affect data accessibility.
-- **REGIONAL**: The instance can serve data from more than one zone in a
-- region (it is highly available). For more information, see [Overview of
-- the High Availability
-- Configuration](https:\/\/cloud.google.com\/sql\/docs\/mysql\/high-availability).
data SettingsAvailabilityType
    = SQLAvailabilityTypeUnspecified
      -- ^ @SQL_AVAILABILITY_TYPE_UNSPECIFIED@
      -- This is an unknown Availability type.
    | Zonal
      -- ^ @ZONAL@
      -- Zonal available instance.
    | Regional
      -- ^ @REGIONAL@
      -- Regional available instance.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SettingsAvailabilityType

instance FromHttpApiData SettingsAvailabilityType where
    parseQueryParam = \case
        "SQL_AVAILABILITY_TYPE_UNSPECIFIED" -> Right SQLAvailabilityTypeUnspecified
        "ZONAL" -> Right Zonal
        "REGIONAL" -> Right Regional
        x -> Left ("Unable to parse SettingsAvailabilityType from: " <> x)

instance ToHttpApiData SettingsAvailabilityType where
    toQueryParam = \case
        SQLAvailabilityTypeUnspecified -> "SQL_AVAILABILITY_TYPE_UNSPECIFIED"
        Zonal -> "ZONAL"
        Regional -> "REGIONAL"

instance FromJSON SettingsAvailabilityType where
    parseJSON = parseJSONText "SettingsAvailabilityType"

instance ToJSON SettingsAvailabilityType where
    toJSON = toJSONText

-- | Maintenance timing setting: **canary** (Earlier) or **stable** (Later).
-- [Learn more]
-- (https:\/\/cloud.google.com\/sql\/docs\/mysql\/instance-settings#maintenance-timing-2ndgen).
data MaintenanceWindowUpdateTrack
    = SQLUpdateTrackUnspecified
      -- ^ @SQL_UPDATE_TRACK_UNSPECIFIED@
      -- This is an unknown maintenance timing preference.
    | Canary
      -- ^ @canary@
      -- For instance update that requires a restart, this update track indicates
      -- your instance prefer to restart for new version early in maintenance
      -- window.
    | Stable
      -- ^ @stable@
      -- For instance update that requires a restart, this update track indicates
      -- your instance prefer to let Cloud SQL choose the timing of restart
      -- (within its Maintenance window, if applicable).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MaintenanceWindowUpdateTrack

instance FromHttpApiData MaintenanceWindowUpdateTrack where
    parseQueryParam = \case
        "SQL_UPDATE_TRACK_UNSPECIFIED" -> Right SQLUpdateTrackUnspecified
        "canary" -> Right Canary
        "stable" -> Right Stable
        x -> Left ("Unable to parse MaintenanceWindowUpdateTrack from: " <> x)

instance ToHttpApiData MaintenanceWindowUpdateTrack where
    toQueryParam = \case
        SQLUpdateTrackUnspecified -> "SQL_UPDATE_TRACK_UNSPECIFIED"
        Canary -> "canary"
        Stable -> "stable"

instance FromJSON MaintenanceWindowUpdateTrack where
    parseJSON = parseJSONText "MaintenanceWindowUpdateTrack"

instance ToJSON MaintenanceWindowUpdateTrack where
    toJSON = toJSONText

-- | Code to uniquely identify the warning type.
data APIWarningCode
    = SQLAPIWarningCodeUnspecified
      -- ^ @SQL_API_WARNING_CODE_UNSPECIFIED@
      -- An unknown or unset warning type from Cloud SQL API.
    | RegionUnreachable
      -- ^ @REGION_UNREACHABLE@
      -- Warning when one or more regions are not reachable. The returned result
      -- set may be incomplete.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable APIWarningCode

instance FromHttpApiData APIWarningCode where
    parseQueryParam = \case
        "SQL_API_WARNING_CODE_UNSPECIFIED" -> Right SQLAPIWarningCodeUnspecified
        "REGION_UNREACHABLE" -> Right RegionUnreachable
        x -> Left ("Unable to parse APIWarningCode from: " <> x)

instance ToHttpApiData APIWarningCode where
    toQueryParam = \case
        SQLAPIWarningCodeUnspecified -> "SQL_API_WARNING_CODE_UNSPECIFIED"
        RegionUnreachable -> "REGION_UNREACHABLE"

instance FromJSON APIWarningCode where
    parseJSON = parseJSONText "APIWarningCode"

instance ToJSON APIWarningCode where
    toJSON = toJSONText

-- | External sync mode.
data ProjectsInstancesStartExternalSyncSyncMode
    = ExternalSyncModeUnspecified
      -- ^ @EXTERNAL_SYNC_MODE_UNSPECIFIED@
      -- Unknown external sync mode, will be defaulted to ONLINE mode
    | Online
      -- ^ @ONLINE@
      -- Online external sync will set up replication after initial data external
      -- sync
    | Offline
      -- ^ @OFFLINE@
      -- Offline external sync only dumps and loads a one-time snapshot of the
      -- primary instance\'s data
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsInstancesStartExternalSyncSyncMode

instance FromHttpApiData ProjectsInstancesStartExternalSyncSyncMode where
    parseQueryParam = \case
        "EXTERNAL_SYNC_MODE_UNSPECIFIED" -> Right ExternalSyncModeUnspecified
        "ONLINE" -> Right Online
        "OFFLINE" -> Right Offline
        x -> Left ("Unable to parse ProjectsInstancesStartExternalSyncSyncMode from: " <> x)

instance ToHttpApiData ProjectsInstancesStartExternalSyncSyncMode where
    toQueryParam = \case
        ExternalSyncModeUnspecified -> "EXTERNAL_SYNC_MODE_UNSPECIFIED"
        Online -> "ONLINE"
        Offline -> "OFFLINE"

instance FromJSON ProjectsInstancesStartExternalSyncSyncMode where
    parseJSON = parseJSONText "ProjectsInstancesStartExternalSyncSyncMode"

instance ToJSON ProjectsInstancesStartExternalSyncSyncMode where
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

-- | Identifies the specific error that occurred.
data SQLExternalSyncSettingErrorType
    = SQLExternalSyncSettingErrorTypeUnspecified
      -- ^ @SQL_EXTERNAL_SYNC_SETTING_ERROR_TYPE_UNSPECIFIED@
    | ConnectionFailure
      -- ^ @CONNECTION_FAILURE@
    | BinlogNotEnabled
      -- ^ @BINLOG_NOT_ENABLED@
    | IncompatibleDatabaseVersion
      -- ^ @INCOMPATIBLE_DATABASE_VERSION@
    | ReplicaAlreadySetup
      -- ^ @REPLICA_ALREADY_SETUP@
    | InsufficientPrivilege
      -- ^ @INSUFFICIENT_PRIVILEGE@
    | UnsupportedMigrationType
      -- ^ @UNSUPPORTED_MIGRATION_TYPE@
      -- Unsupported migration type.
    | NoPglogicalInstalled
      -- ^ @NO_PGLOGICAL_INSTALLED@
      -- No pglogical extension installed on databases, applicable for postgres.
    | PglogicalNodeAlreadyExists
      -- ^ @PGLOGICAL_NODE_ALREADY_EXISTS@
      -- pglogical node already exists on databases, applicable for postgres.
    | InvalidWalLevel
      -- ^ @INVALID_WAL_LEVEL@
      -- The value of parameter wal_level is not set to logical.
    | InvalidSharedPreLoadLibrary
      -- ^ @INVALID_SHARED_PRELOAD_LIBRARY@
      -- The value of parameter shared_preload_libraries does not include
      -- pglogical.
    | InsufficientMaxReplicationSlots
      -- ^ @INSUFFICIENT_MAX_REPLICATION_SLOTS@
      -- The value of parameter max_replication_slots is not sufficient.
    | InsufficientMaxWalSenders
      -- ^ @INSUFFICIENT_MAX_WAL_SENDERS@
      -- The value of parameter max_wal_senders is not sufficient.
    | InsufficientMaxWorkerProcesses
      -- ^ @INSUFFICIENT_MAX_WORKER_PROCESSES@
      -- The value of parameter max_worker_processes is not sufficient.
    | UnsupportedExtensions
      -- ^ @UNSUPPORTED_EXTENSIONS@
      -- Extensions installed are either not supported or having unsupported
      -- versions
    | InvalidRdsLogicalReplication
      -- ^ @INVALID_RDS_LOGICAL_REPLICATION@
      -- The value of parameter rds.logical_replication is not set to 1.
    | InvalidLoggingSetup
      -- ^ @INVALID_LOGGING_SETUP@
      -- The primary instance logging setup doesn\'t allow EM sync.
    | InvalidDBParam
      -- ^ @INVALID_DB_PARAM@
      -- The primary instance database parameter setup doesn\'t allow EM sync.
    | UnsupportedGtidMode
      -- ^ @UNSUPPORTED_GTID_MODE@
      -- The gtid_mode is not supported, applicable for MySQL.
    | SQLserverAgentNotRunning
      -- ^ @SQLSERVER_AGENT_NOT_RUNNING@
      -- SQL Server Agent is not running.
    | UnsupportedTableDefinition
      -- ^ @UNSUPPORTED_TABLE_DEFINITION@
      -- The table definition is not support due to missing primary key or
      -- replica identity, applicable for postgres.
    | UnsupportedDefiner
      -- ^ @UNSUPPORTED_DEFINER@
      -- The customer has a definer that will break EM setup.
    | SQLserverServernameMismatch
      -- ^ @SQLSERVER_SERVERNAME_MISMATCH@
      -- SQL Server \@\@SERVERNAME does not match actual host name
    | PrimaryAlreadySetup
      -- ^ @PRIMARY_ALREADY_SETUP@
      -- The primary instance has been setup and will fail the setup.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SQLExternalSyncSettingErrorType

instance FromHttpApiData SQLExternalSyncSettingErrorType where
    parseQueryParam = \case
        "SQL_EXTERNAL_SYNC_SETTING_ERROR_TYPE_UNSPECIFIED" -> Right SQLExternalSyncSettingErrorTypeUnspecified
        "CONNECTION_FAILURE" -> Right ConnectionFailure
        "BINLOG_NOT_ENABLED" -> Right BinlogNotEnabled
        "INCOMPATIBLE_DATABASE_VERSION" -> Right IncompatibleDatabaseVersion
        "REPLICA_ALREADY_SETUP" -> Right ReplicaAlreadySetup
        "INSUFFICIENT_PRIVILEGE" -> Right InsufficientPrivilege
        "UNSUPPORTED_MIGRATION_TYPE" -> Right UnsupportedMigrationType
        "NO_PGLOGICAL_INSTALLED" -> Right NoPglogicalInstalled
        "PGLOGICAL_NODE_ALREADY_EXISTS" -> Right PglogicalNodeAlreadyExists
        "INVALID_WAL_LEVEL" -> Right InvalidWalLevel
        "INVALID_SHARED_PRELOAD_LIBRARY" -> Right InvalidSharedPreLoadLibrary
        "INSUFFICIENT_MAX_REPLICATION_SLOTS" -> Right InsufficientMaxReplicationSlots
        "INSUFFICIENT_MAX_WAL_SENDERS" -> Right InsufficientMaxWalSenders
        "INSUFFICIENT_MAX_WORKER_PROCESSES" -> Right InsufficientMaxWorkerProcesses
        "UNSUPPORTED_EXTENSIONS" -> Right UnsupportedExtensions
        "INVALID_RDS_LOGICAL_REPLICATION" -> Right InvalidRdsLogicalReplication
        "INVALID_LOGGING_SETUP" -> Right InvalidLoggingSetup
        "INVALID_DB_PARAM" -> Right InvalidDBParam
        "UNSUPPORTED_GTID_MODE" -> Right UnsupportedGtidMode
        "SQLSERVER_AGENT_NOT_RUNNING" -> Right SQLserverAgentNotRunning
        "UNSUPPORTED_TABLE_DEFINITION" -> Right UnsupportedTableDefinition
        "UNSUPPORTED_DEFINER" -> Right UnsupportedDefiner
        "SQLSERVER_SERVERNAME_MISMATCH" -> Right SQLserverServernameMismatch
        "PRIMARY_ALREADY_SETUP" -> Right PrimaryAlreadySetup
        x -> Left ("Unable to parse SQLExternalSyncSettingErrorType from: " <> x)

instance ToHttpApiData SQLExternalSyncSettingErrorType where
    toQueryParam = \case
        SQLExternalSyncSettingErrorTypeUnspecified -> "SQL_EXTERNAL_SYNC_SETTING_ERROR_TYPE_UNSPECIFIED"
        ConnectionFailure -> "CONNECTION_FAILURE"
        BinlogNotEnabled -> "BINLOG_NOT_ENABLED"
        IncompatibleDatabaseVersion -> "INCOMPATIBLE_DATABASE_VERSION"
        ReplicaAlreadySetup -> "REPLICA_ALREADY_SETUP"
        InsufficientPrivilege -> "INSUFFICIENT_PRIVILEGE"
        UnsupportedMigrationType -> "UNSUPPORTED_MIGRATION_TYPE"
        NoPglogicalInstalled -> "NO_PGLOGICAL_INSTALLED"
        PglogicalNodeAlreadyExists -> "PGLOGICAL_NODE_ALREADY_EXISTS"
        InvalidWalLevel -> "INVALID_WAL_LEVEL"
        InvalidSharedPreLoadLibrary -> "INVALID_SHARED_PRELOAD_LIBRARY"
        InsufficientMaxReplicationSlots -> "INSUFFICIENT_MAX_REPLICATION_SLOTS"
        InsufficientMaxWalSenders -> "INSUFFICIENT_MAX_WAL_SENDERS"
        InsufficientMaxWorkerProcesses -> "INSUFFICIENT_MAX_WORKER_PROCESSES"
        UnsupportedExtensions -> "UNSUPPORTED_EXTENSIONS"
        InvalidRdsLogicalReplication -> "INVALID_RDS_LOGICAL_REPLICATION"
        InvalidLoggingSetup -> "INVALID_LOGGING_SETUP"
        InvalidDBParam -> "INVALID_DB_PARAM"
        UnsupportedGtidMode -> "UNSUPPORTED_GTID_MODE"
        SQLserverAgentNotRunning -> "SQLSERVER_AGENT_NOT_RUNNING"
        UnsupportedTableDefinition -> "UNSUPPORTED_TABLE_DEFINITION"
        UnsupportedDefiner -> "UNSUPPORTED_DEFINER"
        SQLserverServernameMismatch -> "SQLSERVER_SERVERNAME_MISMATCH"
        PrimaryAlreadySetup -> "PRIMARY_ALREADY_SETUP"

instance FromJSON SQLExternalSyncSettingErrorType where
    parseJSON = parseJSONText "SQLExternalSyncSettingErrorType"

instance ToJSON SQLExternalSyncSettingErrorType where
    toJSON = toJSONText

-- | The instance type. This can be one of the following.
-- *CLOUD_SQL_INSTANCE*: A Cloud SQL instance that is not replicating from
-- a primary instance. *ON_PREMISES_INSTANCE*: An instance running on the
-- customer\'s premises. *READ_REPLICA_INSTANCE*: A Cloud SQL instance
-- configured as a read-replica.
data DatabaseInstanceInstanceType
    = SQLInstanceTypeUnspecified
      -- ^ @SQL_INSTANCE_TYPE_UNSPECIFIED@
      -- This is an unknown Cloud SQL instance type.
    | CloudSQLInstance
      -- ^ @CLOUD_SQL_INSTANCE@
      -- A regular Cloud SQL instance.
    | OnPremisesInstance
      -- ^ @ON_PREMISES_INSTANCE@
      -- An instance running on the customer\'s premises that is not managed by
      -- Cloud SQL.
    | ReadReplicaInstance
      -- ^ @READ_REPLICA_INSTANCE@
      -- A Cloud SQL instance acting as a read-replica.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DatabaseInstanceInstanceType

instance FromHttpApiData DatabaseInstanceInstanceType where
    parseQueryParam = \case
        "SQL_INSTANCE_TYPE_UNSPECIFIED" -> Right SQLInstanceTypeUnspecified
        "CLOUD_SQL_INSTANCE" -> Right CloudSQLInstance
        "ON_PREMISES_INSTANCE" -> Right OnPremisesInstance
        "READ_REPLICA_INSTANCE" -> Right ReadReplicaInstance
        x -> Left ("Unable to parse DatabaseInstanceInstanceType from: " <> x)

instance ToHttpApiData DatabaseInstanceInstanceType where
    toQueryParam = \case
        SQLInstanceTypeUnspecified -> "SQL_INSTANCE_TYPE_UNSPECIFIED"
        CloudSQLInstance -> "CLOUD_SQL_INSTANCE"
        OnPremisesInstance -> "ON_PREMISES_INSTANCE"
        ReadReplicaInstance -> "READ_REPLICA_INSTANCE"

instance FromJSON DatabaseInstanceInstanceType where
    parseJSON = parseJSONText "DatabaseInstanceInstanceType"

instance ToJSON DatabaseInstanceInstanceType where
    toJSON = toJSONText

-- | The type of this IP address. A **PRIMARY** address is a public address
-- that can accept incoming connections. A **PRIVATE** address is a private
-- address that can accept incoming connections. An **OUTGOING** address is
-- the source address of connections originating from the instance, if
-- supported.
data IPMAppingType
    = SQLIPAddressTypeUnspecified
      -- ^ @SQL_IP_ADDRESS_TYPE_UNSPECIFIED@
      -- This is an unknown IP address type.
    | Primary
      -- ^ @PRIMARY@
      -- IP address the customer is supposed to connect to. Usually this is the
      -- load balancer\'s IP address
    | Outgoing
      -- ^ @OUTGOING@
      -- Source IP address of the connection a read replica establishes to its
      -- external primary instance. This IP address can be allowlisted by the
      -- customer in case it has a firewall that filters incoming connection to
      -- its on premises primary instance.
    | Private
      -- ^ @PRIVATE@
      -- Private IP used when using private IPs and network peering.
    | Migrated1STGen
      -- ^ @MIGRATED_1ST_GEN@
      -- V1 IP of a migrated instance. We want the user to decommission this IP
      -- as soon as the migration is complete. Note: V1 instances with V1 ip
      -- addresses will be counted as PRIMARY.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable IPMAppingType

instance FromHttpApiData IPMAppingType where
    parseQueryParam = \case
        "SQL_IP_ADDRESS_TYPE_UNSPECIFIED" -> Right SQLIPAddressTypeUnspecified
        "PRIMARY" -> Right Primary
        "OUTGOING" -> Right Outgoing
        "PRIVATE" -> Right Private
        "MIGRATED_1ST_GEN" -> Right Migrated1STGen
        x -> Left ("Unable to parse IPMAppingType from: " <> x)

instance ToHttpApiData IPMAppingType where
    toQueryParam = \case
        SQLIPAddressTypeUnspecified -> "SQL_IP_ADDRESS_TYPE_UNSPECIFIED"
        Primary -> "PRIMARY"
        Outgoing -> "OUTGOING"
        Private -> "PRIVATE"
        Migrated1STGen -> "MIGRATED_1ST_GEN"

instance FromJSON IPMAppingType where
    parseJSON = parseJSONText "IPMAppingType"

instance ToJSON IPMAppingType where
    toJSON = toJSONText

-- | The file type for the specified uri. **SQL**: The file contains SQL
-- statements. **CSV**: The file contains CSV data. **BAK**: The file
-- contains backup data for a SQL Server instance.
data ExportContextFileType
    = ECFTSQLFileTypeUnspecified
      -- ^ @SQL_FILE_TYPE_UNSPECIFIED@
      -- Unknown file type.
    | ECFTSQL
      -- ^ @SQL@
      -- File containing SQL statements.
    | ECFTCSV
      -- ^ @CSV@
      -- File in CSV format.
    | ECFTBak
      -- ^ @BAK@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ExportContextFileType

instance FromHttpApiData ExportContextFileType where
    parseQueryParam = \case
        "SQL_FILE_TYPE_UNSPECIFIED" -> Right ECFTSQLFileTypeUnspecified
        "SQL" -> Right ECFTSQL
        "CSV" -> Right ECFTCSV
        "BAK" -> Right ECFTBak
        x -> Left ("Unable to parse ExportContextFileType from: " <> x)

instance ToHttpApiData ExportContextFileType where
    toQueryParam = \case
        ECFTSQLFileTypeUnspecified -> "SQL_FILE_TYPE_UNSPECIFIED"
        ECFTSQL -> "SQL"
        ECFTCSV -> "CSV"
        ECFTBak -> "BAK"

instance FromJSON ExportContextFileType where
    parseJSON = parseJSONText "ExportContextFileType"

instance ToJSON ExportContextFileType where
    toJSON = toJSONText

-- | Required. The type of the reschedule.
data RescheduleRescheduleType
    = RescheduleTypeUnspecified
      -- ^ @RESCHEDULE_TYPE_UNSPECIFIED@
    | Immediate
      -- ^ @IMMEDIATE@
      -- Reschedules maintenance to happen now (within 5 minutes).
    | NextAvailableWindow
      -- ^ @NEXT_AVAILABLE_WINDOW@
      -- Reschedules maintenance to occur within one week from the originally
      -- scheduled day and time.
    | SpecificTime
      -- ^ @SPECIFIC_TIME@
      -- Reschedules maintenance to a specific time and day.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RescheduleRescheduleType

instance FromHttpApiData RescheduleRescheduleType where
    parseQueryParam = \case
        "RESCHEDULE_TYPE_UNSPECIFIED" -> Right RescheduleTypeUnspecified
        "IMMEDIATE" -> Right Immediate
        "NEXT_AVAILABLE_WINDOW" -> Right NextAvailableWindow
        "SPECIFIC_TIME" -> Right SpecificTime
        x -> Left ("Unable to parse RescheduleRescheduleType from: " <> x)

instance ToHttpApiData RescheduleRescheduleType where
    toQueryParam = \case
        RescheduleTypeUnspecified -> "RESCHEDULE_TYPE_UNSPECIFIED"
        Immediate -> "IMMEDIATE"
        NextAvailableWindow -> "NEXT_AVAILABLE_WINDOW"
        SpecificTime -> "SPECIFIC_TIME"

instance FromJSON RescheduleRescheduleType where
    parseJSON = parseJSONText "RescheduleRescheduleType"

instance ToJSON RescheduleRescheduleType where
    toJSON = toJSONText

-- | External sync mode
data ProjectsInstancesVerifyExternalSyncSettingsSyncMode
    = PIVESSSMExternalSyncModeUnspecified
      -- ^ @EXTERNAL_SYNC_MODE_UNSPECIFIED@
      -- Unknown external sync mode, will be defaulted to ONLINE mode
    | PIVESSSMOnline
      -- ^ @ONLINE@
      -- Online external sync will set up replication after initial data external
      -- sync
    | PIVESSSMOffline
      -- ^ @OFFLINE@
      -- Offline external sync only dumps and loads a one-time snapshot of the
      -- primary instance\'s data
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsInstancesVerifyExternalSyncSettingsSyncMode

instance FromHttpApiData ProjectsInstancesVerifyExternalSyncSettingsSyncMode where
    parseQueryParam = \case
        "EXTERNAL_SYNC_MODE_UNSPECIFIED" -> Right PIVESSSMExternalSyncModeUnspecified
        "ONLINE" -> Right PIVESSSMOnline
        "OFFLINE" -> Right PIVESSSMOffline
        x -> Left ("Unable to parse ProjectsInstancesVerifyExternalSyncSettingsSyncMode from: " <> x)

instance ToHttpApiData ProjectsInstancesVerifyExternalSyncSettingsSyncMode where
    toQueryParam = \case
        PIVESSSMExternalSyncModeUnspecified -> "EXTERNAL_SYNC_MODE_UNSPECIFIED"
        PIVESSSMOnline -> "ONLINE"
        PIVESSSMOffline -> "OFFLINE"

instance FromJSON ProjectsInstancesVerifyExternalSyncSettingsSyncMode where
    parseJSON = parseJSONText "ProjectsInstancesVerifyExternalSyncSettingsSyncMode"

instance ToJSON ProjectsInstancesVerifyExternalSyncSettingsSyncMode where
    toJSON = toJSONText

-- | The user type. It determines the method to authenticate the user during
-- login. The default is the database\'s built-in user type.
data UsersListBodyType
    = BuiltIn
      -- ^ @BUILT_IN@
      -- The database\'s built-in user type.
    | CloudIAMUser
      -- ^ @CLOUD_IAM_USER@
      -- Cloud IAM user.
    | CloudIAMServiceAccount
      -- ^ @CLOUD_IAM_SERVICE_ACCOUNT@
      -- Cloud IAM service account.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersListBodyType

instance FromHttpApiData UsersListBodyType where
    parseQueryParam = \case
        "BUILT_IN" -> Right BuiltIn
        "CLOUD_IAM_USER" -> Right CloudIAMUser
        "CLOUD_IAM_SERVICE_ACCOUNT" -> Right CloudIAMServiceAccount
        x -> Left ("Unable to parse UsersListBodyType from: " <> x)

instance ToHttpApiData UsersListBodyType where
    toQueryParam = \case
        BuiltIn -> "BUILT_IN"
        CloudIAMUser -> "CLOUD_IAM_USER"
        CloudIAMServiceAccount -> "CLOUD_IAM_SERVICE_ACCOUNT"

instance FromJSON UsersListBodyType where
    parseJSON = parseJSONText "UsersListBodyType"

instance ToJSON UsersListBodyType where
    toJSON = toJSONText

-- | The type of data disk: **PD_SSD** (default) or **PD_HDD**.
data SettingsDataDiskType
    = SQLDataDiskTypeUnspecified
      -- ^ @SQL_DATA_DISK_TYPE_UNSPECIFIED@
      -- This is an unknown data disk type.
    | PdSsd
      -- ^ @PD_SSD@
      -- An SSD data disk.
    | PdHdd
      -- ^ @PD_HDD@
      -- An HDD data disk.
    | ObsoleteLocalSsd
      -- ^ @OBSOLETE_LOCAL_SSD@
      -- This field is deprecated and will be removed from a future version of
      -- the API.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SettingsDataDiskType

instance FromHttpApiData SettingsDataDiskType where
    parseQueryParam = \case
        "SQL_DATA_DISK_TYPE_UNSPECIFIED" -> Right SQLDataDiskTypeUnspecified
        "PD_SSD" -> Right PdSsd
        "PD_HDD" -> Right PdHdd
        "OBSOLETE_LOCAL_SSD" -> Right ObsoleteLocalSsd
        x -> Left ("Unable to parse SettingsDataDiskType from: " <> x)

instance ToHttpApiData SettingsDataDiskType where
    toQueryParam = \case
        SQLDataDiskTypeUnspecified -> "SQL_DATA_DISK_TYPE_UNSPECIFIED"
        PdSsd -> "PD_SSD"
        PdHdd -> "PD_HDD"
        ObsoleteLocalSsd -> "OBSOLETE_LOCAL_SSD"

instance FromJSON SettingsDataDiskType where
    parseJSON = parseJSONText "SettingsDataDiskType"

instance ToJSON SettingsDataDiskType where
    toJSON = toJSONText

-- | *SECOND_GEN*: Cloud SQL database instance. *EXTERNAL*: A database server
-- that is not managed by Google. This property is read-only; use the
-- *tier* property in the *settings* object to determine the database type.
data DatabaseInstanceBackendType
    = DIBTSQLBackendTypeUnspecified
      -- ^ @SQL_BACKEND_TYPE_UNSPECIFIED@
      -- This is an unknown backend type for instance.
    | DIBTFirstGen
      -- ^ @FIRST_GEN@
      -- V1 speckle instance.
    | DIBTSecondGen
      -- ^ @SECOND_GEN@
      -- V2 speckle instance.
    | DIBTExternal
      -- ^ @EXTERNAL@
      -- On premises instance.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DatabaseInstanceBackendType

instance FromHttpApiData DatabaseInstanceBackendType where
    parseQueryParam = \case
        "SQL_BACKEND_TYPE_UNSPECIFIED" -> Right DIBTSQLBackendTypeUnspecified
        "FIRST_GEN" -> Right DIBTFirstGen
        "SECOND_GEN" -> Right DIBTSecondGen
        "EXTERNAL" -> Right DIBTExternal
        x -> Left ("Unable to parse DatabaseInstanceBackendType from: " <> x)

instance ToHttpApiData DatabaseInstanceBackendType where
    toQueryParam = \case
        DIBTSQLBackendTypeUnspecified -> "SQL_BACKEND_TYPE_UNSPECIFIED"
        DIBTFirstGen -> "FIRST_GEN"
        DIBTSecondGen -> "SECOND_GEN"
        DIBTExternal -> "EXTERNAL"

instance FromJSON DatabaseInstanceBackendType where
    parseJSON = parseJSONText "DatabaseInstanceBackendType"

instance ToJSON DatabaseInstanceBackendType where
    toJSON = toJSONText

data DatabaseInstanceSuspensionReasonItem
    = SQLSuspensionReasonUnspecified
      -- ^ @SQL_SUSPENSION_REASON_UNSPECIFIED@
      -- This is an unknown suspension reason.
    | BillingIssue
      -- ^ @BILLING_ISSUE@
      -- The instance is suspended due to billing issues (for example:, GCP
      -- account issue)
    | LegalIssue
      -- ^ @LEGAL_ISSUE@
      -- The instance is suspended due to illegal content (for example:, child
      -- pornography, copyrighted material, etc.).
    | OperationalIssue
      -- ^ @OPERATIONAL_ISSUE@
      -- The instance is causing operational issues (for example:, causing the
      -- database to crash).
    | KmsKeyIssue
      -- ^ @KMS_KEY_ISSUE@
      -- The KMS key used by the instance is either revoked or denied access to
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DatabaseInstanceSuspensionReasonItem

instance FromHttpApiData DatabaseInstanceSuspensionReasonItem where
    parseQueryParam = \case
        "SQL_SUSPENSION_REASON_UNSPECIFIED" -> Right SQLSuspensionReasonUnspecified
        "BILLING_ISSUE" -> Right BillingIssue
        "LEGAL_ISSUE" -> Right LegalIssue
        "OPERATIONAL_ISSUE" -> Right OperationalIssue
        "KMS_KEY_ISSUE" -> Right KmsKeyIssue
        x -> Left ("Unable to parse DatabaseInstanceSuspensionReasonItem from: " <> x)

instance ToHttpApiData DatabaseInstanceSuspensionReasonItem where
    toQueryParam = \case
        SQLSuspensionReasonUnspecified -> "SQL_SUSPENSION_REASON_UNSPECIFIED"
        BillingIssue -> "BILLING_ISSUE"
        LegalIssue -> "LEGAL_ISSUE"
        OperationalIssue -> "OPERATIONAL_ISSUE"
        KmsKeyIssue -> "KMS_KEY_ISSUE"

instance FromJSON DatabaseInstanceSuspensionReasonItem where
    parseJSON = parseJSONText "DatabaseInstanceSuspensionReasonItem"

instance ToJSON DatabaseInstanceSuspensionReasonItem where
    toJSON = toJSONText

-- | The status of this run.
data BackupRunStatus
    = BRSSQLBackupRunStatusUnspecified
      -- ^ @SQL_BACKUP_RUN_STATUS_UNSPECIFIED@
      -- The status of the run is unknown.
    | BRSEnQueued
      -- ^ @ENQUEUED@
      -- The backup operation was enqueued.
    | BRSOverdue
      -- ^ @OVERDUE@
      -- The backup is overdue across a given backup window. Indicates a problem.
      -- Example: Long-running operation in progress during the whole window.
    | BRSRunning
      -- ^ @RUNNING@
      -- The backup is in progress.
    | BRSFailed
      -- ^ @FAILED@
      -- The backup failed.
    | BRSSuccessful
      -- ^ @SUCCESSFUL@
      -- The backup was successful.
    | BRSSkipped
      -- ^ @SKIPPED@
      -- The backup was skipped (without problems) for a given backup window.
      -- Example: Instance was idle.
    | BRSDeletionPending
      -- ^ @DELETION_PENDING@
      -- The backup is about to be deleted.
    | BRSDeletionFailed
      -- ^ @DELETION_FAILED@
      -- The backup deletion failed.
    | BRSDeleted
      -- ^ @DELETED@
      -- The backup has been deleted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackupRunStatus

instance FromHttpApiData BackupRunStatus where
    parseQueryParam = \case
        "SQL_BACKUP_RUN_STATUS_UNSPECIFIED" -> Right BRSSQLBackupRunStatusUnspecified
        "ENQUEUED" -> Right BRSEnQueued
        "OVERDUE" -> Right BRSOverdue
        "RUNNING" -> Right BRSRunning
        "FAILED" -> Right BRSFailed
        "SUCCESSFUL" -> Right BRSSuccessful
        "SKIPPED" -> Right BRSSkipped
        "DELETION_PENDING" -> Right BRSDeletionPending
        "DELETION_FAILED" -> Right BRSDeletionFailed
        "DELETED" -> Right BRSDeleted
        x -> Left ("Unable to parse BackupRunStatus from: " <> x)

instance ToHttpApiData BackupRunStatus where
    toQueryParam = \case
        BRSSQLBackupRunStatusUnspecified -> "SQL_BACKUP_RUN_STATUS_UNSPECIFIED"
        BRSEnQueued -> "ENQUEUED"
        BRSOverdue -> "OVERDUE"
        BRSRunning -> "RUNNING"
        BRSFailed -> "FAILED"
        BRSSuccessful -> "SUCCESSFUL"
        BRSSkipped -> "SKIPPED"
        BRSDeletionPending -> "DELETION_PENDING"
        BRSDeletionFailed -> "DELETION_FAILED"
        BRSDeleted -> "DELETED"

instance FromJSON BackupRunStatus where
    parseJSON = parseJSONText "BackupRunStatus"

instance ToJSON BackupRunStatus where
    toJSON = toJSONText

-- | The current serving state of the Cloud SQL instance. This can be one of
-- the following. *SQL_INSTANCE_STATE_UNSPECIFIED*: The state of the
-- instance is unknown. *RUNNABLE*: The instance is running, or has been
-- stopped by owner. *SUSPENDED*: The instance is not available, for
-- example due to problems with billing. *PENDING_DELETE*: The instance is
-- being deleted. *PENDING_CREATE*: The instance is being created.
-- *MAINTENANCE*: The instance is down for maintenance. *FAILED*: The
-- instance creation failed.
data DatabaseInstanceState
    = DISSQLInstanceStateUnspecified
      -- ^ @SQL_INSTANCE_STATE_UNSPECIFIED@
      -- The state of the instance is unknown.
    | DISRunnable
      -- ^ @RUNNABLE@
      -- The instance is running, or has been stopped by owner.
    | DISSuspended
      -- ^ @SUSPENDED@
      -- The instance is not available, for example due to problems with billing.
    | DISPendingDelete
      -- ^ @PENDING_DELETE@
      -- The instance is being deleted.
    | DISPendingCreate
      -- ^ @PENDING_CREATE@
      -- The instance is being created.
    | DISMaintenance
      -- ^ @MAINTENANCE@
      -- The instance is down for maintenance.
    | DISFailed
      -- ^ @FAILED@
      -- The creation of the instance failed or a fatal error occurred during
      -- maintenance.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DatabaseInstanceState

instance FromHttpApiData DatabaseInstanceState where
    parseQueryParam = \case
        "SQL_INSTANCE_STATE_UNSPECIFIED" -> Right DISSQLInstanceStateUnspecified
        "RUNNABLE" -> Right DISRunnable
        "SUSPENDED" -> Right DISSuspended
        "PENDING_DELETE" -> Right DISPendingDelete
        "PENDING_CREATE" -> Right DISPendingCreate
        "MAINTENANCE" -> Right DISMaintenance
        "FAILED" -> Right DISFailed
        x -> Left ("Unable to parse DatabaseInstanceState from: " <> x)

instance ToHttpApiData DatabaseInstanceState where
    toQueryParam = \case
        DISSQLInstanceStateUnspecified -> "SQL_INSTANCE_STATE_UNSPECIFIED"
        DISRunnable -> "RUNNABLE"
        DISSuspended -> "SUSPENDED"
        DISPendingDelete -> "PENDING_DELETE"
        DISPendingCreate -> "PENDING_CREATE"
        DISMaintenance -> "MAINTENANCE"
        DISFailed -> "FAILED"

instance FromJSON DatabaseInstanceState where
    parseJSON = parseJSONText "DatabaseInstanceState"

instance ToJSON DatabaseInstanceState where
    toJSON = toJSONText

-- | The database engine type and version. The *databaseVersion* field cannot
-- be changed after instance creation. MySQL instances: *MYSQL_8_0*,
-- *MYSQL_5_7* (default), or *MYSQL_5_6*. PostgreSQL instances:
-- *POSTGRES_9_6*, *POSTGRES_10*, *POSTGRES_11*, *POSTGRES_12*,
-- *POSTGRES_13* (default). SQL Server instances:
-- *SQLSERVER_2019_STANDARD*, *SQLSERVER_2019_ENTERPRISE*,
-- *SQLSERVER_2019_EXPRESS*, or *SQLSERVER_2019_WEB*,
-- *SQLSERVER_2017_STANDARD* (default), *SQLSERVER_2017_ENTERPRISE*,
-- *SQLSERVER_2017_EXPRESS*, or *SQLSERVER_2017_WEB*.
data DatabaseInstanceDatabaseVersion
    = DIDVSQLDatabaseVersionUnspecified
      -- ^ @SQL_DATABASE_VERSION_UNSPECIFIED@
      -- This is an unknown database version.
    | DIDVMysql51
      -- ^ @MYSQL_5_1@
      -- The database version is MySQL 5.1.
    | DIDVMysql55
      -- ^ @MYSQL_5_5@
      -- The database version is MySQL 5.5.
    | DIDVMysql56
      -- ^ @MYSQL_5_6@
      -- The database version is MySQL 5.6.
    | DIDVMysql57
      -- ^ @MYSQL_5_7@
      -- The database version is MySQL 5.7.
    | DIDVPostgres96
      -- ^ @POSTGRES_9_6@
      -- The database version is PostgreSQL 9.6.
    | DIDVPostgres11
      -- ^ @POSTGRES_11@
      -- The database version is PostgreSQL 11.
    | DIDVSQLserver2017Standard
      -- ^ @SQLSERVER_2017_STANDARD@
      -- The database version is SQL Server 2017 Standard.
    | DIDVSQLserver2017Enterprise
      -- ^ @SQLSERVER_2017_ENTERPRISE@
      -- The database version is SQL Server 2017 Enterprise.
    | DIDVSQLserver2017Express
      -- ^ @SQLSERVER_2017_EXPRESS@
      -- The database version is SQL Server 2017 Express.
    | DIDVSQLserver2017Web
      -- ^ @SQLSERVER_2017_WEB@
      -- The database version is SQL Server 2017 Web.
    | DIDVPostgres10
      -- ^ @POSTGRES_10@
      -- The database version is PostgreSQL 10.
    | DIDVPostgres12
      -- ^ @POSTGRES_12@
      -- The database version is PostgreSQL 12.
    | DIDVPostgres13
      -- ^ @POSTGRES_13@
      -- The database version is PostgreSQL 13.
    | DIDVSQLserver2019Standard
      -- ^ @SQLSERVER_2019_STANDARD@
      -- The database version is SQL Server 2019 Standard.
    | DIDVSQLserver2019Enterprise
      -- ^ @SQLSERVER_2019_ENTERPRISE@
      -- The database version is SQL Server 2019 Enterprise.
    | DIDVSQLserver2019Express
      -- ^ @SQLSERVER_2019_EXPRESS@
      -- The database version is SQL Server 2019 Express.
    | DIDVSQLserver2019Web
      -- ^ @SQLSERVER_2019_WEB@
      -- The database version is SQL Server 2019 Web.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DatabaseInstanceDatabaseVersion

instance FromHttpApiData DatabaseInstanceDatabaseVersion where
    parseQueryParam = \case
        "SQL_DATABASE_VERSION_UNSPECIFIED" -> Right DIDVSQLDatabaseVersionUnspecified
        "MYSQL_5_1" -> Right DIDVMysql51
        "MYSQL_5_5" -> Right DIDVMysql55
        "MYSQL_5_6" -> Right DIDVMysql56
        "MYSQL_5_7" -> Right DIDVMysql57
        "POSTGRES_9_6" -> Right DIDVPostgres96
        "POSTGRES_11" -> Right DIDVPostgres11
        "SQLSERVER_2017_STANDARD" -> Right DIDVSQLserver2017Standard
        "SQLSERVER_2017_ENTERPRISE" -> Right DIDVSQLserver2017Enterprise
        "SQLSERVER_2017_EXPRESS" -> Right DIDVSQLserver2017Express
        "SQLSERVER_2017_WEB" -> Right DIDVSQLserver2017Web
        "POSTGRES_10" -> Right DIDVPostgres10
        "POSTGRES_12" -> Right DIDVPostgres12
        "POSTGRES_13" -> Right DIDVPostgres13
        "SQLSERVER_2019_STANDARD" -> Right DIDVSQLserver2019Standard
        "SQLSERVER_2019_ENTERPRISE" -> Right DIDVSQLserver2019Enterprise
        "SQLSERVER_2019_EXPRESS" -> Right DIDVSQLserver2019Express
        "SQLSERVER_2019_WEB" -> Right DIDVSQLserver2019Web
        x -> Left ("Unable to parse DatabaseInstanceDatabaseVersion from: " <> x)

instance ToHttpApiData DatabaseInstanceDatabaseVersion where
    toQueryParam = \case
        DIDVSQLDatabaseVersionUnspecified -> "SQL_DATABASE_VERSION_UNSPECIFIED"
        DIDVMysql51 -> "MYSQL_5_1"
        DIDVMysql55 -> "MYSQL_5_5"
        DIDVMysql56 -> "MYSQL_5_6"
        DIDVMysql57 -> "MYSQL_5_7"
        DIDVPostgres96 -> "POSTGRES_9_6"
        DIDVPostgres11 -> "POSTGRES_11"
        DIDVSQLserver2017Standard -> "SQLSERVER_2017_STANDARD"
        DIDVSQLserver2017Enterprise -> "SQLSERVER_2017_ENTERPRISE"
        DIDVSQLserver2017Express -> "SQLSERVER_2017_EXPRESS"
        DIDVSQLserver2017Web -> "SQLSERVER_2017_WEB"
        DIDVPostgres10 -> "POSTGRES_10"
        DIDVPostgres12 -> "POSTGRES_12"
        DIDVPostgres13 -> "POSTGRES_13"
        DIDVSQLserver2019Standard -> "SQLSERVER_2019_STANDARD"
        DIDVSQLserver2019Enterprise -> "SQLSERVER_2019_ENTERPRISE"
        DIDVSQLserver2019Express -> "SQLSERVER_2019_EXPRESS"
        DIDVSQLserver2019Web -> "SQLSERVER_2019_WEB"

instance FromJSON DatabaseInstanceDatabaseVersion where
    parseJSON = parseJSONText "DatabaseInstanceDatabaseVersion"

instance ToJSON DatabaseInstanceDatabaseVersion where
    toJSON = toJSONText

-- | The user type. It determines the method to authenticate the user during
-- login. The default is the database\'s built-in user type.
data UserType
    = UTBuiltIn
      -- ^ @BUILT_IN@
      -- The database\'s built-in user type.
    | UTCloudIAMUser
      -- ^ @CLOUD_IAM_USER@
      -- Cloud IAM user.
    | UTCloudIAMServiceAccount
      -- ^ @CLOUD_IAM_SERVICE_ACCOUNT@
      -- Cloud IAM service account.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserType

instance FromHttpApiData UserType where
    parseQueryParam = \case
        "BUILT_IN" -> Right UTBuiltIn
        "CLOUD_IAM_USER" -> Right UTCloudIAMUser
        "CLOUD_IAM_SERVICE_ACCOUNT" -> Right UTCloudIAMServiceAccount
        x -> Left ("Unable to parse UserType from: " <> x)

instance ToHttpApiData UserType where
    toQueryParam = \case
        UTBuiltIn -> "BUILT_IN"
        UTCloudIAMUser -> "CLOUD_IAM_USER"
        UTCloudIAMServiceAccount -> "CLOUD_IAM_SERVICE_ACCOUNT"

instance FromJSON UserType where
    parseJSON = parseJSONText "UserType"

instance ToJSON UserType where
    toJSON = toJSONText

-- | The type of replication this instance uses. This can be either
-- **ASYNCHRONOUS** or **SYNCHRONOUS**. (Deprecated) This property was only
-- applicable to First Generation instances.
data SettingsReplicationType
    = SQLReplicationTypeUnspecified
      -- ^ @SQL_REPLICATION_TYPE_UNSPECIFIED@
      -- This is an unknown replication type for a Cloud SQL instance.
    | Synchronous
      -- ^ @SYNCHRONOUS@
      -- The synchronous replication mode for First Generation instances. It is
      -- the default value.
    | Asynchronous
      -- ^ @ASYNCHRONOUS@
      -- The asynchronous replication mode for First Generation instances. It
      -- provides a slight performance gain, but if an outage occurs while this
      -- option is set to asynchronous, you can lose up to a few seconds of
      -- updates to your data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SettingsReplicationType

instance FromHttpApiData SettingsReplicationType where
    parseQueryParam = \case
        "SQL_REPLICATION_TYPE_UNSPECIFIED" -> Right SQLReplicationTypeUnspecified
        "SYNCHRONOUS" -> Right Synchronous
        "ASYNCHRONOUS" -> Right Asynchronous
        x -> Left ("Unable to parse SettingsReplicationType from: " <> x)

instance ToHttpApiData SettingsReplicationType where
    toQueryParam = \case
        SQLReplicationTypeUnspecified -> "SQL_REPLICATION_TYPE_UNSPECIFIED"
        Synchronous -> "SYNCHRONOUS"
        Asynchronous -> "ASYNCHRONOUS"

instance FromJSON SettingsReplicationType where
    parseJSON = parseJSONText "SettingsReplicationType"

instance ToJSON SettingsReplicationType where
    toJSON = toJSONText

-- | This field represents the state generated by the proactive database
-- wellness job for OutOfDisk issues. Writers: -- the proactive database
-- wellness job for OOD. Readers: -- the Pantheon frontend -- the proactive
-- database wellness job
data SQLOutOfDiskReportSQLOutOfDiskState
    = SQLOutOfDiskStateUnspecified
      -- ^ @SQL_OUT_OF_DISK_STATE_UNSPECIFIED@
      -- Unspecified state
    | Normal
      -- ^ @NORMAL@
      -- The instance has plenty space on data disk
    | SoftShutdown
      -- ^ @SOFT_SHUTDOWN@
      -- Data disk is almost used up. It is shutdown to prevent data corruption.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SQLOutOfDiskReportSQLOutOfDiskState

instance FromHttpApiData SQLOutOfDiskReportSQLOutOfDiskState where
    parseQueryParam = \case
        "SQL_OUT_OF_DISK_STATE_UNSPECIFIED" -> Right SQLOutOfDiskStateUnspecified
        "NORMAL" -> Right Normal
        "SOFT_SHUTDOWN" -> Right SoftShutdown
        x -> Left ("Unable to parse SQLOutOfDiskReportSQLOutOfDiskState from: " <> x)

instance ToHttpApiData SQLOutOfDiskReportSQLOutOfDiskState where
    toQueryParam = \case
        SQLOutOfDiskStateUnspecified -> "SQL_OUT_OF_DISK_STATE_UNSPECIFIED"
        Normal -> "NORMAL"
        SoftShutdown -> "SOFT_SHUTDOWN"

instance FromJSON SQLOutOfDiskReportSQLOutOfDiskState where
    parseJSON = parseJSONText "SQLOutOfDiskReportSQLOutOfDiskState"

instance ToJSON SQLOutOfDiskReportSQLOutOfDiskState where
    toJSON = toJSONText
