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
-- Module      : Gogol.Spanner.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Spanner.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Backup_DatabaseDialect
    Backup_DatabaseDialect
      ( Backup_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
        Backup_DatabaseDialect_GOOGLESTANDARDSQL,
        Backup_DatabaseDialect_Postgresql,
        ..
      ),

    -- * Backup_State
    Backup_State
      ( Backup_State_STATEUNSPECIFIED,
        Backup_State_Creating,
        Backup_State_Ready,
        ..
      ),

    -- * ContextValue_Severity
    ContextValue_Severity
      ( ContextValue_Severity_SEVERITYUNSPECIFIED,
        ContextValue_Severity_Info,
        ContextValue_Severity_Warning,
        ContextValue_Severity_Error',
        ContextValue_Severity_Fatal,
        ..
      ),

    -- * CopyBackupEncryptionConfig_EncryptionType
    CopyBackupEncryptionConfig_EncryptionType
      ( CopyBackupEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
        CopyBackupEncryptionConfig_EncryptionType_USECONFIGDEFAULTORBACKUPENCRYPTION,
        CopyBackupEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION,
        CopyBackupEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
        ..
      ),

    -- * CreateBackupEncryptionConfig_EncryptionType
    CreateBackupEncryptionConfig_EncryptionType
      ( CreateBackupEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
        CreateBackupEncryptionConfig_EncryptionType_USEDATABASEENCRYPTION,
        CreateBackupEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION,
        CreateBackupEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
        ..
      ),

    -- * CreateDatabaseRequest_DatabaseDialect
    CreateDatabaseRequest_DatabaseDialect
      ( CreateDatabaseRequest_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
        CreateDatabaseRequest_DatabaseDialect_GOOGLESTANDARDSQL,
        CreateDatabaseRequest_DatabaseDialect_Postgresql,
        ..
      ),

    -- * CreateInstanceMetadata_ExpectedFulfillmentPeriod
    CreateInstanceMetadata_ExpectedFulfillmentPeriod
      ( CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODUNSPECIFIED,
        CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODNORMAL,
        CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODEXTENDED,
        ..
      ),

    -- * Database_DatabaseDialect
    Database_DatabaseDialect
      ( Database_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
        Database_DatabaseDialect_GOOGLESTANDARDSQL,
        Database_DatabaseDialect_Postgresql,
        ..
      ),

    -- * Database_State
    Database_State
      ( Database_State_STATEUNSPECIFIED,
        Database_State_Creating,
        Database_State_Ready,
        Database_State_READYOPTIMIZING,
        ..
      ),

    -- * DiagnosticMessage_Severity
    DiagnosticMessage_Severity
      ( DiagnosticMessage_Severity_SEVERITYUNSPECIFIED,
        DiagnosticMessage_Severity_Info,
        DiagnosticMessage_Severity_Warning,
        DiagnosticMessage_Severity_Error',
        DiagnosticMessage_Severity_Fatal,
        ..
      ),

    -- * EncryptionInfo_EncryptionType
    EncryptionInfo_EncryptionType
      ( EncryptionInfo_EncryptionType_TYPEUNSPECIFIED,
        EncryptionInfo_EncryptionType_GOOGLEDEFAULTENCRYPTION,
        EncryptionInfo_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
        ..
      ),

    -- * ExecuteSqlRequest_QueryMode
    ExecuteSqlRequest_QueryMode
      ( ExecuteSqlRequest_QueryMode_Normal,
        ExecuteSqlRequest_QueryMode_Plan,
        ExecuteSqlRequest_QueryMode_Profile,
        ExecuteSqlRequest_QueryMode_WITHSTATS,
        ExecuteSqlRequest_QueryMode_WITHPLANANDSTATS,
        ..
      ),

    -- * FreeInstanceMetadata_ExpireBehavior
    FreeInstanceMetadata_ExpireBehavior
      ( FreeInstanceMetadata_ExpireBehavior_EXPIREBEHAVIORUNSPECIFIED,
        FreeInstanceMetadata_ExpireBehavior_FREETOPROVISIONED,
        FreeInstanceMetadata_ExpireBehavior_REMOVEAFTERGRACEPERIOD,
        ..
      ),

    -- * Instance_DefaultBackupScheduleType
    Instance_DefaultBackupScheduleType
      ( Instance_DefaultBackupScheduleType_DEFAULTBACKUPSCHEDULETYPEUNSPECIFIED,
        Instance_DefaultBackupScheduleType_None,
        Instance_DefaultBackupScheduleType_Automatic,
        ..
      ),

    -- * Instance_Edition
    Instance_Edition
      ( Instance_Edition_EDITIONUNSPECIFIED,
        Instance_Edition_Standard,
        Instance_Edition_Enterprise,
        Instance_Edition_ENTERPRISEPLUS,
        ..
      ),

    -- * Instance_InstanceType
    Instance_InstanceType
      ( Instance_InstanceType_INSTANCETYPEUNSPECIFIED,
        Instance_InstanceType_Provisioned,
        Instance_InstanceType_FREEINSTANCE,
        ..
      ),

    -- * Instance_State
    Instance_State
      ( Instance_State_STATEUNSPECIFIED,
        Instance_State_Creating,
        Instance_State_Ready,
        ..
      ),

    -- * InstanceConfig_ConfigType
    InstanceConfig_ConfigType
      ( InstanceConfig_ConfigType_TYPEUNSPECIFIED,
        InstanceConfig_ConfigType_GOOGLEMANAGED,
        InstanceConfig_ConfigType_USERMANAGED,
        ..
      ),

    -- * InstanceConfig_FreeInstanceAvailability
    InstanceConfig_FreeInstanceAvailability
      ( InstanceConfig_FreeInstanceAvailability_FREEINSTANCEAVAILABILITYUNSPECIFIED,
        InstanceConfig_FreeInstanceAvailability_Available,
        InstanceConfig_FreeInstanceAvailability_Unsupported,
        InstanceConfig_FreeInstanceAvailability_Disabled,
        InstanceConfig_FreeInstanceAvailability_QUOTAEXCEEDED,
        ..
      ),

    -- * InstanceConfig_QuorumType
    InstanceConfig_QuorumType
      ( InstanceConfig_QuorumType_QUORUMTYPEUNSPECIFIED,
        InstanceConfig_QuorumType_Region,
        InstanceConfig_QuorumType_DUALREGION,
        InstanceConfig_QuorumType_MULTIREGION,
        ..
      ),

    -- * InstanceConfig_State
    InstanceConfig_State
      ( InstanceConfig_State_STATEUNSPECIFIED,
        InstanceConfig_State_Creating,
        InstanceConfig_State_Ready,
        ..
      ),

    -- * InstancePartition_State
    InstancePartition_State
      ( InstancePartition_State_STATEUNSPECIFIED,
        InstancePartition_State_Creating,
        InstancePartition_State_Ready,
        ..
      ),

    -- * Metric_Aggregation
    Metric_Aggregation
      ( Metric_Aggregation_AGGREGATIONUNSPECIFIED,
        Metric_Aggregation_Max,
        Metric_Aggregation_Sum,
        ..
      ),

    -- * PlanNode_Kind
    PlanNode_Kind
      ( PlanNode_Kind_KINDUNSPECIFIED,
        PlanNode_Kind_Relational,
        PlanNode_Kind_Scalar,
        ..
      ),

    -- * QuorumInfo_Initiator
    QuorumInfo_Initiator
      ( QuorumInfo_Initiator_INITIATORUNSPECIFIED,
        QuorumInfo_Initiator_Google,
        QuorumInfo_Initiator_User,
        ..
      ),

    -- * ReadRequest_LockHint
    ReadRequest_LockHint
      ( ReadRequest_LockHint_LOCKHINTUNSPECIFIED,
        ReadRequest_LockHint_LOCKHINTSHARED,
        ReadRequest_LockHint_LOCKHINTEXCLUSIVE,
        ..
      ),

    -- * ReadRequest_OrderBy
    ReadRequest_OrderBy
      ( ReadRequest_OrderBy_ORDERBYUNSPECIFIED,
        ReadRequest_OrderBy_ORDERBYPRIMARYKEY,
        ReadRequest_OrderBy_ORDERBYNOORDER,
        ..
      ),

    -- * ReadWrite_ReadLockMode
    ReadWrite_ReadLockMode
      ( ReadWrite_ReadLockMode_READLOCKMODEUNSPECIFIED,
        ReadWrite_ReadLockMode_Pessimistic,
        ReadWrite_ReadLockMode_Optimistic,
        ..
      ),

    -- * ReplicaInfo_Type
    ReplicaInfo_Type
      ( ReplicaInfo_Type_TYPEUNSPECIFIED,
        ReplicaInfo_Type_READWRITE,
        ReplicaInfo_Type_READONLY,
        ReplicaInfo_Type_Witness,
        ..
      ),

    -- * ReplicaSelection_Type
    ReplicaSelection_Type
      ( ReplicaSelection_Type_TYPEUNSPECIFIED,
        ReplicaSelection_Type_READWRITE,
        ReplicaSelection_Type_READONLY,
        ..
      ),

    -- * RequestOptions_Priority
    RequestOptions_Priority
      ( RequestOptions_Priority_PRIORITYUNSPECIFIED,
        RequestOptions_Priority_PRIORITYLOW,
        RequestOptions_Priority_PRIORITYMEDIUM,
        RequestOptions_Priority_PRIORITYHIGH,
        ..
      ),

    -- * RestoreDatabaseEncryptionConfig_EncryptionType
    RestoreDatabaseEncryptionConfig_EncryptionType
      ( RestoreDatabaseEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
        RestoreDatabaseEncryptionConfig_EncryptionType_USECONFIGDEFAULTORBACKUPENCRYPTION,
        RestoreDatabaseEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION,
        RestoreDatabaseEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
        ..
      ),

    -- * RestoreDatabaseMetadata_SourceType
    RestoreDatabaseMetadata_SourceType
      ( RestoreDatabaseMetadata_SourceType_TYPEUNSPECIFIED,
        RestoreDatabaseMetadata_SourceType_Backup,
        ..
      ),

    -- * RestoreInfo_SourceType
    RestoreInfo_SourceType
      ( RestoreInfo_SourceType_TYPEUNSPECIFIED,
        RestoreInfo_SourceType_Backup,
        ..
      ),

    -- * Type_Code
    Type_Code
      ( Type_Code_TYPECODEUNSPECIFIED,
        Type_Code_Bool,
        Type_Code_INT64,
        Type_Code_FLOAT64,
        Type_Code_FLOAT32,
        Type_Code_Timestamp,
        Type_Code_Date,
        Type_Code_String,
        Type_Code_Bytes,
        Type_Code_Array,
        Type_Code_Struct,
        Type_Code_Numeric,
        Type_Code_Json,
        Type_Code_Proto,
        Type_Code_Enum',
        Type_Code_Interval,
        ..
      ),

    -- * Type_TypeAnnotation
    Type_TypeAnnotation
      ( Type_TypeAnnotation_TYPEANNOTATIONCODEUNSPECIFIED,
        Type_TypeAnnotation_PGNUMERIC,
        Type_TypeAnnotation_PGJSONB,
        ..
      ),

    -- * UpdateInstanceMetadata_ExpectedFulfillmentPeriod
    UpdateInstanceMetadata_ExpectedFulfillmentPeriod
      ( UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODUNSPECIFIED,
        UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODNORMAL,
        UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODEXTENDED,
        ..
      ),

    -- * VisualizationData_KeyUnit
    VisualizationData_KeyUnit
      ( VisualizationData_KeyUnit_KEYUNITUNSPECIFIED,
        VisualizationData_KeyUnit_Key,
        VisualizationData_KeyUnit_Chunk,
        ..
      ),

    -- * ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
    ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
      ( ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
        ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_USEDATABASEENCRYPTION,
        ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_GOOGLEDEFAULTENCRYPTION,
        ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_CUSTOMERMANAGEDENCRYPTION,
        ..
      ),

    -- * ProjectsInstancesDatabasesGetScansView
    ProjectsInstancesDatabasesGetScansView
      ( ProjectsInstancesDatabasesGetScansView_VIEWUNSPECIFIED,
        ProjectsInstancesDatabasesGetScansView_Summary,
        ProjectsInstancesDatabasesGetScansView_Full,
        ..
      ),

    -- * ScansListView
    ScansListView
      ( ScansListView_VIEWUNSPECIFIED,
        ScansListView_Summary,
        ScansListView_Full,
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

-- | Output only. The database dialect information for the backup.
newtype Backup_DatabaseDialect = Backup_DatabaseDialect {fromBackup_DatabaseDialect :: Core.Text}
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

-- | Default value. This value will create a database with the GOOGLE/STANDARD/SQL dialect.
pattern Backup_DatabaseDialect_DATABASEDIALECTUNSPECIFIED :: Backup_DatabaseDialect
pattern Backup_DatabaseDialect_DATABASEDIALECTUNSPECIFIED = Backup_DatabaseDialect "DATABASE_DIALECT_UNSPECIFIED"

-- | GoogleSQL supported SQL.
pattern Backup_DatabaseDialect_GOOGLESTANDARDSQL :: Backup_DatabaseDialect
pattern Backup_DatabaseDialect_GOOGLESTANDARDSQL = Backup_DatabaseDialect "GOOGLE_STANDARD_SQL"

-- | PostgreSQL supported SQL.
pattern Backup_DatabaseDialect_Postgresql :: Backup_DatabaseDialect
pattern Backup_DatabaseDialect_Postgresql = Backup_DatabaseDialect "POSTGRESQL"

{-# COMPLETE
  Backup_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
  Backup_DatabaseDialect_GOOGLESTANDARDSQL,
  Backup_DatabaseDialect_Postgresql,
  Backup_DatabaseDialect
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

-- | The severity of this context.
newtype ContextValue_Severity = ContextValue_Severity {fromContextValue_Severity :: Core.Text}
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

-- | Required default value.
pattern ContextValue_Severity_SEVERITYUNSPECIFIED :: ContextValue_Severity
pattern ContextValue_Severity_SEVERITYUNSPECIFIED = ContextValue_Severity "SEVERITY_UNSPECIFIED"

-- | Lowest severity level \"Info\".
pattern ContextValue_Severity_Info :: ContextValue_Severity
pattern ContextValue_Severity_Info = ContextValue_Severity "INFO"

-- | Middle severity level \"Warning\".
pattern ContextValue_Severity_Warning :: ContextValue_Severity
pattern ContextValue_Severity_Warning = ContextValue_Severity "WARNING"

-- | Severity level signaling an error \"Error\"
pattern ContextValue_Severity_Error' :: ContextValue_Severity
pattern ContextValue_Severity_Error' = ContextValue_Severity "ERROR"

-- | Severity level signaling a non recoverable error \"Fatal\"
pattern ContextValue_Severity_Fatal :: ContextValue_Severity
pattern ContextValue_Severity_Fatal = ContextValue_Severity "FATAL"

{-# COMPLETE
  ContextValue_Severity_SEVERITYUNSPECIFIED,
  ContextValue_Severity_Info,
  ContextValue_Severity_Warning,
  ContextValue_Severity_Error',
  ContextValue_Severity_Fatal,
  ContextValue_Severity
  #-}

-- | Required. The encryption type of the backup.
newtype CopyBackupEncryptionConfig_EncryptionType = CopyBackupEncryptionConfig_EncryptionType {fromCopyBackupEncryptionConfig_EncryptionType :: Core.Text}
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

-- | Unspecified. Do not use.
pattern CopyBackupEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED :: CopyBackupEncryptionConfig_EncryptionType
pattern CopyBackupEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED = CopyBackupEncryptionConfig_EncryptionType "ENCRYPTION_TYPE_UNSPECIFIED"

-- | This is the default option for CopyBackup when encryption_config is not specified. For example, if the source backup is using @Customer_Managed_Encryption@, the backup will be using the same Cloud KMS key as the source backup.
pattern CopyBackupEncryptionConfig_EncryptionType_USECONFIGDEFAULTORBACKUPENCRYPTION :: CopyBackupEncryptionConfig_EncryptionType
pattern CopyBackupEncryptionConfig_EncryptionType_USECONFIGDEFAULTORBACKUPENCRYPTION = CopyBackupEncryptionConfig_EncryptionType "USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION"

-- | Use Google default encryption.
pattern CopyBackupEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION :: CopyBackupEncryptionConfig_EncryptionType
pattern CopyBackupEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION = CopyBackupEncryptionConfig_EncryptionType "GOOGLE_DEFAULT_ENCRYPTION"

-- | Use customer managed encryption. If specified, either @kms_key_name@ or @kms_key_names@ must contain valid Cloud KMS key(s).
pattern CopyBackupEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION :: CopyBackupEncryptionConfig_EncryptionType
pattern CopyBackupEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION = CopyBackupEncryptionConfig_EncryptionType "CUSTOMER_MANAGED_ENCRYPTION"

{-# COMPLETE
  CopyBackupEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
  CopyBackupEncryptionConfig_EncryptionType_USECONFIGDEFAULTORBACKUPENCRYPTION,
  CopyBackupEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION,
  CopyBackupEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
  CopyBackupEncryptionConfig_EncryptionType
  #-}

-- | Required. The encryption type of the backup.
newtype CreateBackupEncryptionConfig_EncryptionType = CreateBackupEncryptionConfig_EncryptionType {fromCreateBackupEncryptionConfig_EncryptionType :: Core.Text}
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

-- | Unspecified. Do not use.
pattern CreateBackupEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED :: CreateBackupEncryptionConfig_EncryptionType
pattern CreateBackupEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED = CreateBackupEncryptionConfig_EncryptionType "ENCRYPTION_TYPE_UNSPECIFIED"

-- | Use the same encryption configuration as the database. This is the default option when encryption_config is empty. For example, if the database is using @Customer_Managed_Encryption@, the backup will be using the same Cloud KMS key as the database.
pattern CreateBackupEncryptionConfig_EncryptionType_USEDATABASEENCRYPTION :: CreateBackupEncryptionConfig_EncryptionType
pattern CreateBackupEncryptionConfig_EncryptionType_USEDATABASEENCRYPTION = CreateBackupEncryptionConfig_EncryptionType "USE_DATABASE_ENCRYPTION"

-- | Use Google default encryption.
pattern CreateBackupEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION :: CreateBackupEncryptionConfig_EncryptionType
pattern CreateBackupEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION = CreateBackupEncryptionConfig_EncryptionType "GOOGLE_DEFAULT_ENCRYPTION"

-- | Use customer managed encryption. If specified, @kms_key_name@ must contain a valid Cloud KMS key.
pattern CreateBackupEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION :: CreateBackupEncryptionConfig_EncryptionType
pattern CreateBackupEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION = CreateBackupEncryptionConfig_EncryptionType "CUSTOMER_MANAGED_ENCRYPTION"

{-# COMPLETE
  CreateBackupEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
  CreateBackupEncryptionConfig_EncryptionType_USEDATABASEENCRYPTION,
  CreateBackupEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION,
  CreateBackupEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
  CreateBackupEncryptionConfig_EncryptionType
  #-}

-- | Optional. The dialect of the Cloud Spanner Database.
newtype CreateDatabaseRequest_DatabaseDialect = CreateDatabaseRequest_DatabaseDialect {fromCreateDatabaseRequest_DatabaseDialect :: Core.Text}
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

-- | Default value. This value will create a database with the GOOGLE/STANDARD/SQL dialect.
pattern CreateDatabaseRequest_DatabaseDialect_DATABASEDIALECTUNSPECIFIED :: CreateDatabaseRequest_DatabaseDialect
pattern CreateDatabaseRequest_DatabaseDialect_DATABASEDIALECTUNSPECIFIED = CreateDatabaseRequest_DatabaseDialect "DATABASE_DIALECT_UNSPECIFIED"

-- | GoogleSQL supported SQL.
pattern CreateDatabaseRequest_DatabaseDialect_GOOGLESTANDARDSQL :: CreateDatabaseRequest_DatabaseDialect
pattern CreateDatabaseRequest_DatabaseDialect_GOOGLESTANDARDSQL = CreateDatabaseRequest_DatabaseDialect "GOOGLE_STANDARD_SQL"

-- | PostgreSQL supported SQL.
pattern CreateDatabaseRequest_DatabaseDialect_Postgresql :: CreateDatabaseRequest_DatabaseDialect
pattern CreateDatabaseRequest_DatabaseDialect_Postgresql = CreateDatabaseRequest_DatabaseDialect "POSTGRESQL"

{-# COMPLETE
  CreateDatabaseRequest_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
  CreateDatabaseRequest_DatabaseDialect_GOOGLESTANDARDSQL,
  CreateDatabaseRequest_DatabaseDialect_Postgresql,
  CreateDatabaseRequest_DatabaseDialect
  #-}

-- | The expected fulfillment period of this create operation.
newtype CreateInstanceMetadata_ExpectedFulfillmentPeriod = CreateInstanceMetadata_ExpectedFulfillmentPeriod {fromCreateInstanceMetadata_ExpectedFulfillmentPeriod :: Core.Text}
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
pattern CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODUNSPECIFIED :: CreateInstanceMetadata_ExpectedFulfillmentPeriod
pattern CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODUNSPECIFIED = CreateInstanceMetadata_ExpectedFulfillmentPeriod "FULFILLMENT_PERIOD_UNSPECIFIED"

-- | Normal fulfillment period. The operation is expected to complete within minutes.
pattern CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODNORMAL :: CreateInstanceMetadata_ExpectedFulfillmentPeriod
pattern CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODNORMAL = CreateInstanceMetadata_ExpectedFulfillmentPeriod "FULFILLMENT_PERIOD_NORMAL"

-- | Extended fulfillment period. It can take up to an hour for the operation to complete.
pattern CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODEXTENDED :: CreateInstanceMetadata_ExpectedFulfillmentPeriod
pattern CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODEXTENDED = CreateInstanceMetadata_ExpectedFulfillmentPeriod "FULFILLMENT_PERIOD_EXTENDED"

{-# COMPLETE
  CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODUNSPECIFIED,
  CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODNORMAL,
  CreateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODEXTENDED,
  CreateInstanceMetadata_ExpectedFulfillmentPeriod
  #-}

-- | Output only. The dialect of the Cloud Spanner Database.
newtype Database_DatabaseDialect = Database_DatabaseDialect {fromDatabase_DatabaseDialect :: Core.Text}
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

-- | Default value. This value will create a database with the GOOGLE/STANDARD/SQL dialect.
pattern Database_DatabaseDialect_DATABASEDIALECTUNSPECIFIED :: Database_DatabaseDialect
pattern Database_DatabaseDialect_DATABASEDIALECTUNSPECIFIED = Database_DatabaseDialect "DATABASE_DIALECT_UNSPECIFIED"

-- | GoogleSQL supported SQL.
pattern Database_DatabaseDialect_GOOGLESTANDARDSQL :: Database_DatabaseDialect
pattern Database_DatabaseDialect_GOOGLESTANDARDSQL = Database_DatabaseDialect "GOOGLE_STANDARD_SQL"

-- | PostgreSQL supported SQL.
pattern Database_DatabaseDialect_Postgresql :: Database_DatabaseDialect
pattern Database_DatabaseDialect_Postgresql = Database_DatabaseDialect "POSTGRESQL"

{-# COMPLETE
  Database_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
  Database_DatabaseDialect_GOOGLESTANDARDSQL,
  Database_DatabaseDialect_Postgresql,
  Database_DatabaseDialect
  #-}

-- | Output only. The current database state.
newtype Database_State = Database_State {fromDatabase_State :: Core.Text}
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
pattern Database_State_STATEUNSPECIFIED :: Database_State
pattern Database_State_STATEUNSPECIFIED = Database_State "STATE_UNSPECIFIED"

-- | The database is still being created. Operations on the database may fail with @FAILED_PRECONDITION@ in this state.
pattern Database_State_Creating :: Database_State
pattern Database_State_Creating = Database_State "CREATING"

-- | The database is fully created and ready for use.
pattern Database_State_Ready :: Database_State
pattern Database_State_Ready = Database_State "READY"

-- | The database is fully created and ready for use, but is still being optimized for performance and cannot handle full load. In this state, the database still references the backup it was restore from, preventing the backup from being deleted. When optimizations are complete, the full performance of the database will be restored, and the database will transition to @READY@ state.
pattern Database_State_READYOPTIMIZING :: Database_State
pattern Database_State_READYOPTIMIZING = Database_State "READY_OPTIMIZING"

{-# COMPLETE
  Database_State_STATEUNSPECIFIED,
  Database_State_Creating,
  Database_State_Ready,
  Database_State_READYOPTIMIZING,
  Database_State
  #-}

-- | The severity of the diagnostic message.
newtype DiagnosticMessage_Severity = DiagnosticMessage_Severity {fromDiagnosticMessage_Severity :: Core.Text}
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

-- | Required default value.
pattern DiagnosticMessage_Severity_SEVERITYUNSPECIFIED :: DiagnosticMessage_Severity
pattern DiagnosticMessage_Severity_SEVERITYUNSPECIFIED = DiagnosticMessage_Severity "SEVERITY_UNSPECIFIED"

-- | Lowest severity level \"Info\".
pattern DiagnosticMessage_Severity_Info :: DiagnosticMessage_Severity
pattern DiagnosticMessage_Severity_Info = DiagnosticMessage_Severity "INFO"

-- | Middle severity level \"Warning\".
pattern DiagnosticMessage_Severity_Warning :: DiagnosticMessage_Severity
pattern DiagnosticMessage_Severity_Warning = DiagnosticMessage_Severity "WARNING"

-- | Severity level signaling an error \"Error\"
pattern DiagnosticMessage_Severity_Error' :: DiagnosticMessage_Severity
pattern DiagnosticMessage_Severity_Error' = DiagnosticMessage_Severity "ERROR"

-- | Severity level signaling a non recoverable error \"Fatal\"
pattern DiagnosticMessage_Severity_Fatal :: DiagnosticMessage_Severity
pattern DiagnosticMessage_Severity_Fatal = DiagnosticMessage_Severity "FATAL"

{-# COMPLETE
  DiagnosticMessage_Severity_SEVERITYUNSPECIFIED,
  DiagnosticMessage_Severity_Info,
  DiagnosticMessage_Severity_Warning,
  DiagnosticMessage_Severity_Error',
  DiagnosticMessage_Severity_Fatal,
  DiagnosticMessage_Severity
  #-}

-- | Output only. The type of encryption.
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
pattern EncryptionInfo_EncryptionType_TYPEUNSPECIFIED :: EncryptionInfo_EncryptionType
pattern EncryptionInfo_EncryptionType_TYPEUNSPECIFIED = EncryptionInfo_EncryptionType "TYPE_UNSPECIFIED"

-- | The data is encrypted at rest with a key that is fully managed by Google. No key version or status will be populated. This is the default state.
pattern EncryptionInfo_EncryptionType_GOOGLEDEFAULTENCRYPTION :: EncryptionInfo_EncryptionType
pattern EncryptionInfo_EncryptionType_GOOGLEDEFAULTENCRYPTION = EncryptionInfo_EncryptionType "GOOGLE_DEFAULT_ENCRYPTION"

-- | The data is encrypted at rest with a key that is managed by the customer. The active version of the key. @kms_key_version@ will be populated, and @encryption_status@ may be populated.
pattern EncryptionInfo_EncryptionType_CUSTOMERMANAGEDENCRYPTION :: EncryptionInfo_EncryptionType
pattern EncryptionInfo_EncryptionType_CUSTOMERMANAGEDENCRYPTION = EncryptionInfo_EncryptionType "CUSTOMER_MANAGED_ENCRYPTION"

{-# COMPLETE
  EncryptionInfo_EncryptionType_TYPEUNSPECIFIED,
  EncryptionInfo_EncryptionType_GOOGLEDEFAULTENCRYPTION,
  EncryptionInfo_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
  EncryptionInfo_EncryptionType
  #-}

-- | Used to control the amount of debugging information returned in ResultSetStats. If partition/token is set, query/mode can only be set to QueryMode.NORMAL.
newtype ExecuteSqlRequest_QueryMode = ExecuteSqlRequest_QueryMode {fromExecuteSqlRequest_QueryMode :: Core.Text}
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

-- | The default mode. Only the statement results are returned.
pattern ExecuteSqlRequest_QueryMode_Normal :: ExecuteSqlRequest_QueryMode
pattern ExecuteSqlRequest_QueryMode_Normal = ExecuteSqlRequest_QueryMode "NORMAL"

-- | This mode returns only the query plan, without any results or execution statistics information.
pattern ExecuteSqlRequest_QueryMode_Plan :: ExecuteSqlRequest_QueryMode
pattern ExecuteSqlRequest_QueryMode_Plan = ExecuteSqlRequest_QueryMode "PLAN"

-- | This mode returns the query plan, overall execution statistics, operator level execution statistics along with the results. This has a performance overhead compared to the other modes. It is not recommended to use this mode for production traffic.
pattern ExecuteSqlRequest_QueryMode_Profile :: ExecuteSqlRequest_QueryMode
pattern ExecuteSqlRequest_QueryMode_Profile = ExecuteSqlRequest_QueryMode "PROFILE"

-- | This mode returns the overall (but not operator-level) execution statistics along with the results.
pattern ExecuteSqlRequest_QueryMode_WITHSTATS :: ExecuteSqlRequest_QueryMode
pattern ExecuteSqlRequest_QueryMode_WITHSTATS = ExecuteSqlRequest_QueryMode "WITH_STATS"

-- | This mode returns the query plan, overall (but not operator-level) execution statistics along with the results.
pattern ExecuteSqlRequest_QueryMode_WITHPLANANDSTATS :: ExecuteSqlRequest_QueryMode
pattern ExecuteSqlRequest_QueryMode_WITHPLANANDSTATS = ExecuteSqlRequest_QueryMode "WITH_PLAN_AND_STATS"

{-# COMPLETE
  ExecuteSqlRequest_QueryMode_Normal,
  ExecuteSqlRequest_QueryMode_Plan,
  ExecuteSqlRequest_QueryMode_Profile,
  ExecuteSqlRequest_QueryMode_WITHSTATS,
  ExecuteSqlRequest_QueryMode_WITHPLANANDSTATS,
  ExecuteSqlRequest_QueryMode
  #-}

-- | Specifies the expiration behavior of a free instance. The default of ExpireBehavior is @REMOVE_AFTER_GRACE_PERIOD@. This can be modified during or after creation, and before expiration.
newtype FreeInstanceMetadata_ExpireBehavior = FreeInstanceMetadata_ExpireBehavior {fromFreeInstanceMetadata_ExpireBehavior :: Core.Text}
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
pattern FreeInstanceMetadata_ExpireBehavior_EXPIREBEHAVIORUNSPECIFIED :: FreeInstanceMetadata_ExpireBehavior
pattern FreeInstanceMetadata_ExpireBehavior_EXPIREBEHAVIORUNSPECIFIED = FreeInstanceMetadata_ExpireBehavior "EXPIRE_BEHAVIOR_UNSPECIFIED"

-- | When the free instance expires, upgrade the instance to a provisioned instance.
pattern FreeInstanceMetadata_ExpireBehavior_FREETOPROVISIONED :: FreeInstanceMetadata_ExpireBehavior
pattern FreeInstanceMetadata_ExpireBehavior_FREETOPROVISIONED = FreeInstanceMetadata_ExpireBehavior "FREE_TO_PROVISIONED"

-- | When the free instance expires, disable the instance, and delete it after the grace period passes if it has not been upgraded.
pattern FreeInstanceMetadata_ExpireBehavior_REMOVEAFTERGRACEPERIOD :: FreeInstanceMetadata_ExpireBehavior
pattern FreeInstanceMetadata_ExpireBehavior_REMOVEAFTERGRACEPERIOD = FreeInstanceMetadata_ExpireBehavior "REMOVE_AFTER_GRACE_PERIOD"

{-# COMPLETE
  FreeInstanceMetadata_ExpireBehavior_EXPIREBEHAVIORUNSPECIFIED,
  FreeInstanceMetadata_ExpireBehavior_FREETOPROVISIONED,
  FreeInstanceMetadata_ExpireBehavior_REMOVEAFTERGRACEPERIOD,
  FreeInstanceMetadata_ExpireBehavior
  #-}

-- | Optional. Controls the default backup behavior for new databases within the instance. Note that @AUTOMATIC@ is not permitted for free instances, as backups and backup schedules are not allowed for free instances. In the @GetInstance@ or @ListInstances@ response, if the value of default/backup/schedule_type is unset or NONE, no default backup schedule will be created for new databases within the instance.
newtype Instance_DefaultBackupScheduleType = Instance_DefaultBackupScheduleType {fromInstance_DefaultBackupScheduleType :: Core.Text}
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
pattern Instance_DefaultBackupScheduleType_DEFAULTBACKUPSCHEDULETYPEUNSPECIFIED :: Instance_DefaultBackupScheduleType
pattern Instance_DefaultBackupScheduleType_DEFAULTBACKUPSCHEDULETYPEUNSPECIFIED = Instance_DefaultBackupScheduleType "DEFAULT_BACKUP_SCHEDULE_TYPE_UNSPECIFIED"

-- | No default backup schedule will be created automatically on creation of a database within the instance.
pattern Instance_DefaultBackupScheduleType_None :: Instance_DefaultBackupScheduleType
pattern Instance_DefaultBackupScheduleType_None = Instance_DefaultBackupScheduleType "NONE"

-- | A default backup schedule will be created automatically on creation of a database within the instance. Once created, the default backup schedule can be edited or deleted just like any other backup schedule. Currently, the default backup schedule creates a full backup every 24 hours and retains the backup for a period of 7 days.
pattern Instance_DefaultBackupScheduleType_Automatic :: Instance_DefaultBackupScheduleType
pattern Instance_DefaultBackupScheduleType_Automatic = Instance_DefaultBackupScheduleType "AUTOMATIC"

{-# COMPLETE
  Instance_DefaultBackupScheduleType_DEFAULTBACKUPSCHEDULETYPEUNSPECIFIED,
  Instance_DefaultBackupScheduleType_None,
  Instance_DefaultBackupScheduleType_Automatic,
  Instance_DefaultBackupScheduleType
  #-}

-- | Optional. The @Edition@ of the current instance.
newtype Instance_Edition = Instance_Edition {fromInstance_Edition :: Core.Text}
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

-- | Edition not specified.
pattern Instance_Edition_EDITIONUNSPECIFIED :: Instance_Edition
pattern Instance_Edition_EDITIONUNSPECIFIED = Instance_Edition "EDITION_UNSPECIFIED"

-- | Standard edition.
pattern Instance_Edition_Standard :: Instance_Edition
pattern Instance_Edition_Standard = Instance_Edition "STANDARD"

-- | Enterprise edition.
pattern Instance_Edition_Enterprise :: Instance_Edition
pattern Instance_Edition_Enterprise = Instance_Edition "ENTERPRISE"

-- | Enterprise Plus edition.
pattern Instance_Edition_ENTERPRISEPLUS :: Instance_Edition
pattern Instance_Edition_ENTERPRISEPLUS = Instance_Edition "ENTERPRISE_PLUS"

{-# COMPLETE
  Instance_Edition_EDITIONUNSPECIFIED,
  Instance_Edition_Standard,
  Instance_Edition_Enterprise,
  Instance_Edition_ENTERPRISEPLUS,
  Instance_Edition
  #-}

-- | The @InstanceType@ of the current instance.
newtype Instance_InstanceType = Instance_InstanceType {fromInstance_InstanceType :: Core.Text}
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
pattern Instance_InstanceType_INSTANCETYPEUNSPECIFIED :: Instance_InstanceType
pattern Instance_InstanceType_INSTANCETYPEUNSPECIFIED = Instance_InstanceType "INSTANCE_TYPE_UNSPECIFIED"

-- | Provisioned instances have dedicated resources, standard usage limits and support.
pattern Instance_InstanceType_Provisioned :: Instance_InstanceType
pattern Instance_InstanceType_Provisioned = Instance_InstanceType "PROVISIONED"

-- | Free instances provide no guarantee for dedicated resources, [node/count, processing/units] should be 0. They come with stricter usage limits and limited support.
pattern Instance_InstanceType_FREEINSTANCE :: Instance_InstanceType
pattern Instance_InstanceType_FREEINSTANCE = Instance_InstanceType "FREE_INSTANCE"

{-# COMPLETE
  Instance_InstanceType_INSTANCETYPEUNSPECIFIED,
  Instance_InstanceType_Provisioned,
  Instance_InstanceType_FREEINSTANCE,
  Instance_InstanceType
  #-}

-- | Output only. The current instance state. For CreateInstance, the state must be either omitted or set to @CREATING@. For UpdateInstance, the state must be either omitted or set to @READY@.
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

-- | Not specified.
pattern Instance_State_STATEUNSPECIFIED :: Instance_State
pattern Instance_State_STATEUNSPECIFIED = Instance_State "STATE_UNSPECIFIED"

-- | The instance is still being created. Resources may not be available yet, and operations such as database creation may not work.
pattern Instance_State_Creating :: Instance_State
pattern Instance_State_Creating = Instance_State "CREATING"

-- | The instance is fully created and ready to do work such as creating databases.
pattern Instance_State_Ready :: Instance_State
pattern Instance_State_Ready = Instance_State "READY"

{-# COMPLETE
  Instance_State_STATEUNSPECIFIED,
  Instance_State_Creating,
  Instance_State_Ready,
  Instance_State
  #-}

-- | Output only. Whether this instance configuration is a Google-managed or user-managed configuration.
newtype InstanceConfig_ConfigType = InstanceConfig_ConfigType {fromInstanceConfig_ConfigType :: Core.Text}
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

-- | Unspecified.
pattern InstanceConfig_ConfigType_TYPEUNSPECIFIED :: InstanceConfig_ConfigType
pattern InstanceConfig_ConfigType_TYPEUNSPECIFIED = InstanceConfig_ConfigType "TYPE_UNSPECIFIED"

-- | Google-managed configuration.
pattern InstanceConfig_ConfigType_GOOGLEMANAGED :: InstanceConfig_ConfigType
pattern InstanceConfig_ConfigType_GOOGLEMANAGED = InstanceConfig_ConfigType "GOOGLE_MANAGED"

-- | User-managed configuration.
pattern InstanceConfig_ConfigType_USERMANAGED :: InstanceConfig_ConfigType
pattern InstanceConfig_ConfigType_USERMANAGED = InstanceConfig_ConfigType "USER_MANAGED"

{-# COMPLETE
  InstanceConfig_ConfigType_TYPEUNSPECIFIED,
  InstanceConfig_ConfigType_GOOGLEMANAGED,
  InstanceConfig_ConfigType_USERMANAGED,
  InstanceConfig_ConfigType
  #-}

-- | Output only. Describes whether free instances are available to be created in this instance configuration.
newtype InstanceConfig_FreeInstanceAvailability = InstanceConfig_FreeInstanceAvailability {fromInstanceConfig_FreeInstanceAvailability :: Core.Text}
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
pattern InstanceConfig_FreeInstanceAvailability_FREEINSTANCEAVAILABILITYUNSPECIFIED :: InstanceConfig_FreeInstanceAvailability
pattern InstanceConfig_FreeInstanceAvailability_FREEINSTANCEAVAILABILITYUNSPECIFIED = InstanceConfig_FreeInstanceAvailability "FREE_INSTANCE_AVAILABILITY_UNSPECIFIED"

-- | Indicates that free instances are available to be created in this instance configuration.
pattern InstanceConfig_FreeInstanceAvailability_Available :: InstanceConfig_FreeInstanceAvailability
pattern InstanceConfig_FreeInstanceAvailability_Available = InstanceConfig_FreeInstanceAvailability "AVAILABLE"

-- | Indicates that free instances are not supported in this instance configuration.
pattern InstanceConfig_FreeInstanceAvailability_Unsupported :: InstanceConfig_FreeInstanceAvailability
pattern InstanceConfig_FreeInstanceAvailability_Unsupported = InstanceConfig_FreeInstanceAvailability "UNSUPPORTED"

-- | Indicates that free instances are currently not available to be created in this instance configuration.
pattern InstanceConfig_FreeInstanceAvailability_Disabled :: InstanceConfig_FreeInstanceAvailability
pattern InstanceConfig_FreeInstanceAvailability_Disabled = InstanceConfig_FreeInstanceAvailability "DISABLED"

-- | Indicates that additional free instances cannot be created in this instance configuration because the project has reached its limit of free instances.
pattern InstanceConfig_FreeInstanceAvailability_QUOTAEXCEEDED :: InstanceConfig_FreeInstanceAvailability
pattern InstanceConfig_FreeInstanceAvailability_QUOTAEXCEEDED = InstanceConfig_FreeInstanceAvailability "QUOTA_EXCEEDED"

{-# COMPLETE
  InstanceConfig_FreeInstanceAvailability_FREEINSTANCEAVAILABILITYUNSPECIFIED,
  InstanceConfig_FreeInstanceAvailability_Available,
  InstanceConfig_FreeInstanceAvailability_Unsupported,
  InstanceConfig_FreeInstanceAvailability_Disabled,
  InstanceConfig_FreeInstanceAvailability_QUOTAEXCEEDED,
  InstanceConfig_FreeInstanceAvailability
  #-}

-- | Output only. The @QuorumType@ of the instance configuration.
newtype InstanceConfig_QuorumType = InstanceConfig_QuorumType {fromInstanceConfig_QuorumType :: Core.Text}
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

-- | Quorum type not specified.
pattern InstanceConfig_QuorumType_QUORUMTYPEUNSPECIFIED :: InstanceConfig_QuorumType
pattern InstanceConfig_QuorumType_QUORUMTYPEUNSPECIFIED = InstanceConfig_QuorumType "QUORUM_TYPE_UNSPECIFIED"

-- | An instance configuration tagged with @REGION@ quorum type forms a write quorum in a single region.
pattern InstanceConfig_QuorumType_Region :: InstanceConfig_QuorumType
pattern InstanceConfig_QuorumType_Region = InstanceConfig_QuorumType "REGION"

-- | An instance configuration tagged with the @DUAL_REGION@ quorum type forms a write quorum with exactly two read-write regions in a multi-region configuration. This instance configuration requires failover in the event of regional failures.
pattern InstanceConfig_QuorumType_DUALREGION :: InstanceConfig_QuorumType
pattern InstanceConfig_QuorumType_DUALREGION = InstanceConfig_QuorumType "DUAL_REGION"

-- | An instance configuration tagged with the @MULTI_REGION@ quorum type forms a write quorum from replicas that are spread across more than one region in a multi-region configuration.
pattern InstanceConfig_QuorumType_MULTIREGION :: InstanceConfig_QuorumType
pattern InstanceConfig_QuorumType_MULTIREGION = InstanceConfig_QuorumType "MULTI_REGION"

{-# COMPLETE
  InstanceConfig_QuorumType_QUORUMTYPEUNSPECIFIED,
  InstanceConfig_QuorumType_Region,
  InstanceConfig_QuorumType_DUALREGION,
  InstanceConfig_QuorumType_MULTIREGION,
  InstanceConfig_QuorumType
  #-}

-- | Output only. The current instance configuration state. Applicable only for @USER_MANAGED@ configurations.
newtype InstanceConfig_State = InstanceConfig_State {fromInstanceConfig_State :: Core.Text}
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
pattern InstanceConfig_State_STATEUNSPECIFIED :: InstanceConfig_State
pattern InstanceConfig_State_STATEUNSPECIFIED = InstanceConfig_State "STATE_UNSPECIFIED"

-- | The instance configuration is still being created.
pattern InstanceConfig_State_Creating :: InstanceConfig_State
pattern InstanceConfig_State_Creating = InstanceConfig_State "CREATING"

-- | The instance configuration is fully created and ready to be used to create instances.
pattern InstanceConfig_State_Ready :: InstanceConfig_State
pattern InstanceConfig_State_Ready = InstanceConfig_State "READY"

{-# COMPLETE
  InstanceConfig_State_STATEUNSPECIFIED,
  InstanceConfig_State_Creating,
  InstanceConfig_State_Ready,
  InstanceConfig_State
  #-}

-- | Output only. The current instance partition state.
newtype InstancePartition_State = InstancePartition_State {fromInstancePartition_State :: Core.Text}
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
pattern InstancePartition_State_STATEUNSPECIFIED :: InstancePartition_State
pattern InstancePartition_State_STATEUNSPECIFIED = InstancePartition_State "STATE_UNSPECIFIED"

-- | The instance partition is still being created. Resources may not be available yet, and operations such as creating placements using this instance partition may not work.
pattern InstancePartition_State_Creating :: InstancePartition_State
pattern InstancePartition_State_Creating = InstancePartition_State "CREATING"

-- | The instance partition is fully created and ready to do work such as creating placements and using in databases.
pattern InstancePartition_State_Ready :: InstancePartition_State
pattern InstancePartition_State_Ready = InstancePartition_State "READY"

{-# COMPLETE
  InstancePartition_State_STATEUNSPECIFIED,
  InstancePartition_State_Creating,
  InstancePartition_State_Ready,
  InstancePartition_State
  #-}

-- | The aggregation function used to aggregate each key bucket
newtype Metric_Aggregation = Metric_Aggregation {fromMetric_Aggregation :: Core.Text}
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

-- | Required default value.
pattern Metric_Aggregation_AGGREGATIONUNSPECIFIED :: Metric_Aggregation
pattern Metric_Aggregation_AGGREGATIONUNSPECIFIED = Metric_Aggregation "AGGREGATION_UNSPECIFIED"

-- | Use the maximum of all values.
pattern Metric_Aggregation_Max :: Metric_Aggregation
pattern Metric_Aggregation_Max = Metric_Aggregation "MAX"

-- | Use the sum of all values.
pattern Metric_Aggregation_Sum :: Metric_Aggregation
pattern Metric_Aggregation_Sum = Metric_Aggregation "SUM"

{-# COMPLETE
  Metric_Aggregation_AGGREGATIONUNSPECIFIED,
  Metric_Aggregation_Max,
  Metric_Aggregation_Sum,
  Metric_Aggregation
  #-}

-- | Used to determine the type of node. May be needed for visualizing different kinds of nodes differently. For example, If the node is a SCALAR node, it will have a condensed representation which can be used to directly embed a description of the node in its parent.
newtype PlanNode_Kind = PlanNode_Kind {fromPlanNode_Kind :: Core.Text}
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
pattern PlanNode_Kind_KINDUNSPECIFIED :: PlanNode_Kind
pattern PlanNode_Kind_KINDUNSPECIFIED = PlanNode_Kind "KIND_UNSPECIFIED"

-- | Denotes a Relational operator node in the expression tree. Relational operators represent iterative processing of rows during query execution. For example, a @TableScan@ operation that reads rows from a table.
pattern PlanNode_Kind_Relational :: PlanNode_Kind
pattern PlanNode_Kind_Relational = PlanNode_Kind "RELATIONAL"

-- | Denotes a Scalar node in the expression tree. Scalar nodes represent non-iterable entities in the query plan. For example, constants or arithmetic operators appearing inside predicate expressions or references to column names.
pattern PlanNode_Kind_Scalar :: PlanNode_Kind
pattern PlanNode_Kind_Scalar = PlanNode_Kind "SCALAR"

{-# COMPLETE
  PlanNode_Kind_KINDUNSPECIFIED,
  PlanNode_Kind_Relational,
  PlanNode_Kind_Scalar,
  PlanNode_Kind
  #-}

-- | Output only. Whether this @ChangeQuorum@ is Google or User initiated.
newtype QuorumInfo_Initiator = QuorumInfo_Initiator {fromQuorumInfo_Initiator :: Core.Text}
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

-- | Unspecified.
pattern QuorumInfo_Initiator_INITIATORUNSPECIFIED :: QuorumInfo_Initiator
pattern QuorumInfo_Initiator_INITIATORUNSPECIFIED = QuorumInfo_Initiator "INITIATOR_UNSPECIFIED"

-- | @ChangeQuorum@ initiated by Google.
pattern QuorumInfo_Initiator_Google :: QuorumInfo_Initiator
pattern QuorumInfo_Initiator_Google = QuorumInfo_Initiator "GOOGLE"

-- | @ChangeQuorum@ initiated by User.
pattern QuorumInfo_Initiator_User :: QuorumInfo_Initiator
pattern QuorumInfo_Initiator_User = QuorumInfo_Initiator "USER"

{-# COMPLETE
  QuorumInfo_Initiator_INITIATORUNSPECIFIED,
  QuorumInfo_Initiator_Google,
  QuorumInfo_Initiator_User,
  QuorumInfo_Initiator
  #-}

-- | Optional. Lock Hint for the request, it can only be used with read-write transactions.
newtype ReadRequest_LockHint = ReadRequest_LockHint {fromReadRequest_LockHint :: Core.Text}
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

-- | Default value. LOCK/HINT/UNSPECIFIED is equivalent to LOCK/HINT/SHARED.
pattern ReadRequest_LockHint_LOCKHINTUNSPECIFIED :: ReadRequest_LockHint
pattern ReadRequest_LockHint_LOCKHINTUNSPECIFIED = ReadRequest_LockHint "LOCK_HINT_UNSPECIFIED"

-- | Acquire shared locks. By default when you perform a read as part of a read-write transaction, Spanner acquires shared read locks, which allows other reads to still access the data until your transaction is ready to commit. When your transaction is committing and writes are being applied, the transaction attempts to upgrade to an exclusive lock for any data you are writing. For more information about locks, see <https://cloud.google.com/spanner/docs/introspection/lock-statistics#explain-lock-modes Lock modes>.
pattern ReadRequest_LockHint_LOCKHINTSHARED :: ReadRequest_LockHint
pattern ReadRequest_LockHint_LOCKHINTSHARED = ReadRequest_LockHint "LOCK_HINT_SHARED"

-- | Acquire exclusive locks. Requesting exclusive locks is beneficial if you observe high write contention, which means you notice that multiple transactions are concurrently trying to read and write to the same data, resulting in a large number of aborts. This problem occurs when two transactions initially acquire shared locks and then both try to upgrade to exclusive locks at the same time. In this situation both transactions are waiting for the other to give up their lock, resulting in a deadlocked situation. Spanner is able to detect this occurring and force one of the transactions to abort. However, this is a slow and expensive operation and results in lower performance. In this case it makes sense to acquire exclusive locks at the start of the transaction because then when multiple transactions try to act on the same data, they automatically get serialized. Each transaction waits its turn to acquire the lock and avoids getting into deadlock situations. Because the exclusive lock hint is just a hint, it
-- should not be considered equivalent to a mutex. In other words, you should not use Spanner exclusive locks as a mutual exclusion mechanism for the execution of code outside of Spanner. __Note:__ Request exclusive locks judiciously because they block others from reading that data for the entire transaction, rather than just when the writes are being performed. Unless you observe high write contention, you should use the default of shared read locks so you don\'t prematurely block other clients from reading the data that you\'re writing to.
pattern ReadRequest_LockHint_LOCKHINTEXCLUSIVE :: ReadRequest_LockHint
pattern ReadRequest_LockHint_LOCKHINTEXCLUSIVE = ReadRequest_LockHint "LOCK_HINT_EXCLUSIVE"

{-# COMPLETE
  ReadRequest_LockHint_LOCKHINTUNSPECIFIED,
  ReadRequest_LockHint_LOCKHINTSHARED,
  ReadRequest_LockHint_LOCKHINTEXCLUSIVE,
  ReadRequest_LockHint
  #-}

-- | Optional. Order for the returned rows. By default, Spanner will return result rows in primary key order except for PartitionRead requests. For applications that do not require rows to be returned in primary key (@ORDER_BY_PRIMARY_KEY@) order, setting @ORDER_BY_NO_ORDER@ option allows Spanner to optimize row retrieval, resulting in lower latencies in certain cases (e.g. bulk point lookups).
newtype ReadRequest_OrderBy = ReadRequest_OrderBy {fromReadRequest_OrderBy :: Core.Text}
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

-- | Default value. ORDER/BY/UNSPECIFIED is equivalent to ORDER/BY/PRIMARY_KEY.
pattern ReadRequest_OrderBy_ORDERBYUNSPECIFIED :: ReadRequest_OrderBy
pattern ReadRequest_OrderBy_ORDERBYUNSPECIFIED = ReadRequest_OrderBy "ORDER_BY_UNSPECIFIED"

-- | Read rows are returned in primary key order. In the event that this option is used in conjunction with the @partition_token@ field, the API will return an @INVALID_ARGUMENT@ error.
pattern ReadRequest_OrderBy_ORDERBYPRIMARYKEY :: ReadRequest_OrderBy
pattern ReadRequest_OrderBy_ORDERBYPRIMARYKEY = ReadRequest_OrderBy "ORDER_BY_PRIMARY_KEY"

-- | Read rows are returned in any order.
pattern ReadRequest_OrderBy_ORDERBYNOORDER :: ReadRequest_OrderBy
pattern ReadRequest_OrderBy_ORDERBYNOORDER = ReadRequest_OrderBy "ORDER_BY_NO_ORDER"

{-# COMPLETE
  ReadRequest_OrderBy_ORDERBYUNSPECIFIED,
  ReadRequest_OrderBy_ORDERBYPRIMARYKEY,
  ReadRequest_OrderBy_ORDERBYNOORDER,
  ReadRequest_OrderBy
  #-}

-- | Read lock mode for the transaction.
newtype ReadWrite_ReadLockMode = ReadWrite_ReadLockMode {fromReadWrite_ReadLockMode :: Core.Text}
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

-- | Default value. If the value is not specified, the pessimistic read lock is used.
pattern ReadWrite_ReadLockMode_READLOCKMODEUNSPECIFIED :: ReadWrite_ReadLockMode
pattern ReadWrite_ReadLockMode_READLOCKMODEUNSPECIFIED = ReadWrite_ReadLockMode "READ_LOCK_MODE_UNSPECIFIED"

-- | Pessimistic lock mode. Read locks are acquired immediately on read.
pattern ReadWrite_ReadLockMode_Pessimistic :: ReadWrite_ReadLockMode
pattern ReadWrite_ReadLockMode_Pessimistic = ReadWrite_ReadLockMode "PESSIMISTIC"

-- | Optimistic lock mode. Locks for reads within the transaction are not acquired on read. Instead the locks are acquired on a commit to validate that read\/queried data has not changed since the transaction started.
pattern ReadWrite_ReadLockMode_Optimistic :: ReadWrite_ReadLockMode
pattern ReadWrite_ReadLockMode_Optimistic = ReadWrite_ReadLockMode "OPTIMISTIC"

{-# COMPLETE
  ReadWrite_ReadLockMode_READLOCKMODEUNSPECIFIED,
  ReadWrite_ReadLockMode_Pessimistic,
  ReadWrite_ReadLockMode_Optimistic,
  ReadWrite_ReadLockMode
  #-}

-- | The type of replica.
newtype ReplicaInfo_Type = ReplicaInfo_Type {fromReplicaInfo_Type :: Core.Text}
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
pattern ReplicaInfo_Type_TYPEUNSPECIFIED :: ReplicaInfo_Type
pattern ReplicaInfo_Type_TYPEUNSPECIFIED = ReplicaInfo_Type "TYPE_UNSPECIFIED"

-- | Read-write replicas support both reads and writes. These replicas: * Maintain a full copy of your data. * Serve reads. * Can vote whether to commit a write. * Participate in leadership election. * Are eligible to become a leader.
pattern ReplicaInfo_Type_READWRITE :: ReplicaInfo_Type
pattern ReplicaInfo_Type_READWRITE = ReplicaInfo_Type "READ_WRITE"

-- | Read-only replicas only support reads (not writes). Read-only replicas: * Maintain a full copy of your data. * Serve reads. * Do not participate in voting to commit writes. * Are not eligible to become a leader.
pattern ReplicaInfo_Type_READONLY :: ReplicaInfo_Type
pattern ReplicaInfo_Type_READONLY = ReplicaInfo_Type "READ_ONLY"

-- | Witness replicas don\'t support reads but do participate in voting to commit writes. Witness replicas: * Do not maintain a full copy of data. * Do not serve reads. * Vote whether to commit writes. * Participate in leader election but are not eligible to become leader.
pattern ReplicaInfo_Type_Witness :: ReplicaInfo_Type
pattern ReplicaInfo_Type_Witness = ReplicaInfo_Type "WITNESS"

{-# COMPLETE
  ReplicaInfo_Type_TYPEUNSPECIFIED,
  ReplicaInfo_Type_READWRITE,
  ReplicaInfo_Type_READONLY,
  ReplicaInfo_Type_Witness,
  ReplicaInfo_Type
  #-}

-- | The type of replica.
newtype ReplicaSelection_Type = ReplicaSelection_Type {fromReplicaSelection_Type :: Core.Text}
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
pattern ReplicaSelection_Type_TYPEUNSPECIFIED :: ReplicaSelection_Type
pattern ReplicaSelection_Type_TYPEUNSPECIFIED = ReplicaSelection_Type "TYPE_UNSPECIFIED"

-- | Read-write replicas support both reads and writes.
pattern ReplicaSelection_Type_READWRITE :: ReplicaSelection_Type
pattern ReplicaSelection_Type_READWRITE = ReplicaSelection_Type "READ_WRITE"

-- | Read-only replicas only support reads (not writes).
pattern ReplicaSelection_Type_READONLY :: ReplicaSelection_Type
pattern ReplicaSelection_Type_READONLY = ReplicaSelection_Type "READ_ONLY"

{-# COMPLETE
  ReplicaSelection_Type_TYPEUNSPECIFIED,
  ReplicaSelection_Type_READWRITE,
  ReplicaSelection_Type_READONLY,
  ReplicaSelection_Type
  #-}

-- | Priority for the request.
newtype RequestOptions_Priority = RequestOptions_Priority {fromRequestOptions_Priority :: Core.Text}
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

-- | @PRIORITY_UNSPECIFIED@ is equivalent to @PRIORITY_HIGH@.
pattern RequestOptions_Priority_PRIORITYUNSPECIFIED :: RequestOptions_Priority
pattern RequestOptions_Priority_PRIORITYUNSPECIFIED = RequestOptions_Priority "PRIORITY_UNSPECIFIED"

-- | This specifies that the request is low priority.
pattern RequestOptions_Priority_PRIORITYLOW :: RequestOptions_Priority
pattern RequestOptions_Priority_PRIORITYLOW = RequestOptions_Priority "PRIORITY_LOW"

-- | This specifies that the request is medium priority.
pattern RequestOptions_Priority_PRIORITYMEDIUM :: RequestOptions_Priority
pattern RequestOptions_Priority_PRIORITYMEDIUM = RequestOptions_Priority "PRIORITY_MEDIUM"

-- | This specifies that the request is high priority.
pattern RequestOptions_Priority_PRIORITYHIGH :: RequestOptions_Priority
pattern RequestOptions_Priority_PRIORITYHIGH = RequestOptions_Priority "PRIORITY_HIGH"

{-# COMPLETE
  RequestOptions_Priority_PRIORITYUNSPECIFIED,
  RequestOptions_Priority_PRIORITYLOW,
  RequestOptions_Priority_PRIORITYMEDIUM,
  RequestOptions_Priority_PRIORITYHIGH,
  RequestOptions_Priority
  #-}

-- | Required. The encryption type of the restored database.
newtype RestoreDatabaseEncryptionConfig_EncryptionType = RestoreDatabaseEncryptionConfig_EncryptionType {fromRestoreDatabaseEncryptionConfig_EncryptionType :: Core.Text}
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

-- | Unspecified. Do not use.
pattern RestoreDatabaseEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED :: RestoreDatabaseEncryptionConfig_EncryptionType
pattern RestoreDatabaseEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED = RestoreDatabaseEncryptionConfig_EncryptionType "ENCRYPTION_TYPE_UNSPECIFIED"

-- | This is the default option when encryption_config is not specified.
pattern RestoreDatabaseEncryptionConfig_EncryptionType_USECONFIGDEFAULTORBACKUPENCRYPTION :: RestoreDatabaseEncryptionConfig_EncryptionType
pattern RestoreDatabaseEncryptionConfig_EncryptionType_USECONFIGDEFAULTORBACKUPENCRYPTION = RestoreDatabaseEncryptionConfig_EncryptionType "USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION"

-- | Use Google default encryption.
pattern RestoreDatabaseEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION :: RestoreDatabaseEncryptionConfig_EncryptionType
pattern RestoreDatabaseEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION = RestoreDatabaseEncryptionConfig_EncryptionType "GOOGLE_DEFAULT_ENCRYPTION"

-- | Use customer managed encryption. If specified, @kms_key_name@ must must contain a valid Cloud KMS key.
pattern RestoreDatabaseEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION :: RestoreDatabaseEncryptionConfig_EncryptionType
pattern RestoreDatabaseEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION = RestoreDatabaseEncryptionConfig_EncryptionType "CUSTOMER_MANAGED_ENCRYPTION"

{-# COMPLETE
  RestoreDatabaseEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
  RestoreDatabaseEncryptionConfig_EncryptionType_USECONFIGDEFAULTORBACKUPENCRYPTION,
  RestoreDatabaseEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION,
  RestoreDatabaseEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
  RestoreDatabaseEncryptionConfig_EncryptionType
  #-}

-- | The type of the restore source.
newtype RestoreDatabaseMetadata_SourceType = RestoreDatabaseMetadata_SourceType {fromRestoreDatabaseMetadata_SourceType :: Core.Text}
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
pattern RestoreDatabaseMetadata_SourceType_TYPEUNSPECIFIED :: RestoreDatabaseMetadata_SourceType
pattern RestoreDatabaseMetadata_SourceType_TYPEUNSPECIFIED = RestoreDatabaseMetadata_SourceType "TYPE_UNSPECIFIED"

-- | A backup was used as the source of the restore.
pattern RestoreDatabaseMetadata_SourceType_Backup :: RestoreDatabaseMetadata_SourceType
pattern RestoreDatabaseMetadata_SourceType_Backup = RestoreDatabaseMetadata_SourceType "BACKUP"

{-# COMPLETE
  RestoreDatabaseMetadata_SourceType_TYPEUNSPECIFIED,
  RestoreDatabaseMetadata_SourceType_Backup,
  RestoreDatabaseMetadata_SourceType
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
pattern RestoreInfo_SourceType_TYPEUNSPECIFIED :: RestoreInfo_SourceType
pattern RestoreInfo_SourceType_TYPEUNSPECIFIED = RestoreInfo_SourceType "TYPE_UNSPECIFIED"

-- | A backup was used as the source of the restore.
pattern RestoreInfo_SourceType_Backup :: RestoreInfo_SourceType
pattern RestoreInfo_SourceType_Backup = RestoreInfo_SourceType "BACKUP"

{-# COMPLETE
  RestoreInfo_SourceType_TYPEUNSPECIFIED,
  RestoreInfo_SourceType_Backup,
  RestoreInfo_SourceType
  #-}

-- | Required. The TypeCode for this type.
newtype Type_Code = Type_Code {fromType_Code :: Core.Text}
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
pattern Type_Code_TYPECODEUNSPECIFIED :: Type_Code
pattern Type_Code_TYPECODEUNSPECIFIED = Type_Code "TYPE_CODE_UNSPECIFIED"

-- | Encoded as JSON @true@ or @false@.
pattern Type_Code_Bool :: Type_Code
pattern Type_Code_Bool = Type_Code "BOOL"

-- | Encoded as @string@, in decimal format.
pattern Type_Code_INT64 :: Type_Code
pattern Type_Code_INT64 = Type_Code "INT64"

-- | Encoded as @number@, or the strings @\"NaN\"@, @\"Infinity\"@, or @\"-Infinity\"@.
pattern Type_Code_FLOAT64 :: Type_Code
pattern Type_Code_FLOAT64 = Type_Code "FLOAT64"

-- | Encoded as @number@, or the strings @\"NaN\"@, @\"Infinity\"@, or @\"-Infinity\"@.
pattern Type_Code_FLOAT32 :: Type_Code
pattern Type_Code_FLOAT32 = Type_Code "FLOAT32"

-- | Encoded as @string@ in RFC 3339 timestamp format. The time zone must be present, and must be @\"Z\"@. If the schema has the column option @allow_commit_timestamp=true@, the placeholder string @\"spanner.commit_timestamp()\"@ can be used to instruct the system to insert the commit timestamp associated with the transaction commit.
pattern Type_Code_Timestamp :: Type_Code
pattern Type_Code_Timestamp = Type_Code "TIMESTAMP"

-- | Encoded as @string@ in RFC 3339 date format.
pattern Type_Code_Date :: Type_Code
pattern Type_Code_Date = Type_Code "DATE"

-- | Encoded as @string@.
pattern Type_Code_String :: Type_Code
pattern Type_Code_String = Type_Code "STRING"

-- | Encoded as a base64-encoded @string@, as described in RFC 4648, section 4.
pattern Type_Code_Bytes :: Type_Code
pattern Type_Code_Bytes = Type_Code "BYTES"

-- | Encoded as @list@, where the list elements are represented according to array/element/type.
pattern Type_Code_Array :: Type_Code
pattern Type_Code_Array = Type_Code "ARRAY"

-- | Encoded as @list@, where list element @i@ is represented according to [struct_type.fields[i]][google.spanner.v1.StructType.fields].
pattern Type_Code_Struct :: Type_Code
pattern Type_Code_Struct = Type_Code "STRUCT"

-- | Encoded as @string@, in decimal format or scientific notation format. Decimal format: @[+-]Digits[.[Digits]]@ or @+-.Digits@ Scientific notation: @[+-]Digits[.[Digits]][ExponentIndicator[+-]Digits]@ or @+-.Digits[ExponentIndicator[+-]Digits]@ (ExponentIndicator is @\"e\"@ or @\"E\"@)
pattern Type_Code_Numeric :: Type_Code
pattern Type_Code_Numeric = Type_Code "NUMERIC"

-- | Encoded as a JSON-formatted @string@ as described in RFC 7159. The following rules are applied when parsing JSON input: - Whitespace characters are not preserved. - If a JSON object has duplicate keys, only the first key is preserved. - Members of a JSON object are not guaranteed to have their order preserved. - JSON array elements will have their order preserved.
pattern Type_Code_Json :: Type_Code
pattern Type_Code_Json = Type_Code "JSON"

-- | Encoded as a base64-encoded @string@, as described in RFC 4648, section 4.
pattern Type_Code_Proto :: Type_Code
pattern Type_Code_Proto = Type_Code "PROTO"

-- | Encoded as @string@, in decimal format.
pattern Type_Code_Enum' :: Type_Code
pattern Type_Code_Enum' = Type_Code "ENUM"

-- | Encoded as @string@, in @ISO8601@ duration format - @P[n]Y[n]M[n]DT[n]H[n]M[n[.fraction]]S@ where @n@ is an integer. For example, @P1Y2M3DT4H5M6.5S@ represents time duration of 1 year, 2 months, 3 days, 4 hours, 5 minutes, and 6.5 seconds.
pattern Type_Code_Interval :: Type_Code
pattern Type_Code_Interval = Type_Code "INTERVAL"

{-# COMPLETE
  Type_Code_TYPECODEUNSPECIFIED,
  Type_Code_Bool,
  Type_Code_INT64,
  Type_Code_FLOAT64,
  Type_Code_FLOAT32,
  Type_Code_Timestamp,
  Type_Code_Date,
  Type_Code_String,
  Type_Code_Bytes,
  Type_Code_Array,
  Type_Code_Struct,
  Type_Code_Numeric,
  Type_Code_Json,
  Type_Code_Proto,
  Type_Code_Enum',
  Type_Code_Interval,
  Type_Code
  #-}

-- | The TypeAnnotationCode that disambiguates SQL type that Spanner will use to represent values of this type during query processing. This is necessary for some type codes because a single TypeCode can be mapped to different SQL types depending on the SQL dialect. type_annotation typically is not needed to process the content of a value (it doesn\'t affect serialization) and clients can ignore it on the read path.
newtype Type_TypeAnnotation = Type_TypeAnnotation {fromType_TypeAnnotation :: Core.Text}
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
pattern Type_TypeAnnotation_TYPEANNOTATIONCODEUNSPECIFIED :: Type_TypeAnnotation
pattern Type_TypeAnnotation_TYPEANNOTATIONCODEUNSPECIFIED = Type_TypeAnnotation "TYPE_ANNOTATION_CODE_UNSPECIFIED"

-- | PostgreSQL compatible NUMERIC type. This annotation needs to be applied to Type instances having NUMERIC type code to specify that values of this type should be treated as PostgreSQL NUMERIC values. Currently this annotation is always needed for NUMERIC when a client interacts with PostgreSQL-enabled Spanner databases.
pattern Type_TypeAnnotation_PGNUMERIC :: Type_TypeAnnotation
pattern Type_TypeAnnotation_PGNUMERIC = Type_TypeAnnotation "PG_NUMERIC"

-- | PostgreSQL compatible JSONB type. This annotation needs to be applied to Type instances having JSON type code to specify that values of this type should be treated as PostgreSQL JSONB values. Currently this annotation is always needed for JSON when a client interacts with PostgreSQL-enabled Spanner databases.
pattern Type_TypeAnnotation_PGJSONB :: Type_TypeAnnotation
pattern Type_TypeAnnotation_PGJSONB = Type_TypeAnnotation "PG_JSONB"

{-# COMPLETE
  Type_TypeAnnotation_TYPEANNOTATIONCODEUNSPECIFIED,
  Type_TypeAnnotation_PGNUMERIC,
  Type_TypeAnnotation_PGJSONB,
  Type_TypeAnnotation
  #-}

-- | The expected fulfillment period of this update operation.
newtype UpdateInstanceMetadata_ExpectedFulfillmentPeriod = UpdateInstanceMetadata_ExpectedFulfillmentPeriod {fromUpdateInstanceMetadata_ExpectedFulfillmentPeriod :: Core.Text}
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
pattern UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODUNSPECIFIED :: UpdateInstanceMetadata_ExpectedFulfillmentPeriod
pattern UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODUNSPECIFIED = UpdateInstanceMetadata_ExpectedFulfillmentPeriod "FULFILLMENT_PERIOD_UNSPECIFIED"

-- | Normal fulfillment period. The operation is expected to complete within minutes.
pattern UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODNORMAL :: UpdateInstanceMetadata_ExpectedFulfillmentPeriod
pattern UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODNORMAL = UpdateInstanceMetadata_ExpectedFulfillmentPeriod "FULFILLMENT_PERIOD_NORMAL"

-- | Extended fulfillment period. It can take up to an hour for the operation to complete.
pattern UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODEXTENDED :: UpdateInstanceMetadata_ExpectedFulfillmentPeriod
pattern UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODEXTENDED = UpdateInstanceMetadata_ExpectedFulfillmentPeriod "FULFILLMENT_PERIOD_EXTENDED"

{-# COMPLETE
  UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODUNSPECIFIED,
  UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODNORMAL,
  UpdateInstanceMetadata_ExpectedFulfillmentPeriod_FULFILLMENTPERIODEXTENDED,
  UpdateInstanceMetadata_ExpectedFulfillmentPeriod
  #-}

-- | The unit for the key: e.g. \'key\' or \'chunk\'.
newtype VisualizationData_KeyUnit = VisualizationData_KeyUnit {fromVisualizationData_KeyUnit :: Core.Text}
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

-- | Required default value
pattern VisualizationData_KeyUnit_KEYUNITUNSPECIFIED :: VisualizationData_KeyUnit
pattern VisualizationData_KeyUnit_KEYUNITUNSPECIFIED = VisualizationData_KeyUnit "KEY_UNIT_UNSPECIFIED"

-- | Each entry corresponds to one key
pattern VisualizationData_KeyUnit_Key :: VisualizationData_KeyUnit
pattern VisualizationData_KeyUnit_Key = VisualizationData_KeyUnit "KEY"

-- | Each entry corresponds to a chunk of keys
pattern VisualizationData_KeyUnit_Chunk :: VisualizationData_KeyUnit
pattern VisualizationData_KeyUnit_Chunk = VisualizationData_KeyUnit "CHUNK"

{-# COMPLETE
  VisualizationData_KeyUnit_KEYUNITUNSPECIFIED,
  VisualizationData_KeyUnit_Key,
  VisualizationData_KeyUnit_Chunk,
  VisualizationData_KeyUnit
  #-}

-- | Required. The encryption type of the backup.
newtype ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType = ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType {fromProjectsInstancesBackupsCreateEncryptionConfigEncryptionType :: Core.Text}
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

-- | Unspecified. Do not use.
pattern ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_ENCRYPTIONTYPEUNSPECIFIED :: ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
pattern ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_ENCRYPTIONTYPEUNSPECIFIED = ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType "ENCRYPTION_TYPE_UNSPECIFIED"

-- | Use the same encryption configuration as the database. This is the default option when encryption_config is empty. For example, if the database is using @Customer_Managed_Encryption@, the backup will be using the same Cloud KMS key as the database.
pattern ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_USEDATABASEENCRYPTION :: ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
pattern ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_USEDATABASEENCRYPTION = ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType "USE_DATABASE_ENCRYPTION"

-- | Use Google default encryption.
pattern ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_GOOGLEDEFAULTENCRYPTION :: ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
pattern ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_GOOGLEDEFAULTENCRYPTION = ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType "GOOGLE_DEFAULT_ENCRYPTION"

-- | Use customer managed encryption. If specified, @kms_key_name@ must contain a valid Cloud KMS key.
pattern ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_CUSTOMERMANAGEDENCRYPTION :: ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
pattern ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_CUSTOMERMANAGEDENCRYPTION = ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType "CUSTOMER_MANAGED_ENCRYPTION"

{-# COMPLETE
  ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
  ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_USEDATABASEENCRYPTION,
  ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_GOOGLEDEFAULTENCRYPTION,
  ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_CUSTOMERMANAGEDENCRYPTION,
  ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
  #-}

-- | Specifies which parts of the Scan should be returned in the response. Note, if left unspecified, the FULL view is assumed.
newtype ProjectsInstancesDatabasesGetScansView = ProjectsInstancesDatabasesGetScansView {fromProjectsInstancesDatabasesGetScansView :: Core.Text}
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

-- | Not specified, equivalent to SUMMARY.
pattern ProjectsInstancesDatabasesGetScansView_VIEWUNSPECIFIED :: ProjectsInstancesDatabasesGetScansView
pattern ProjectsInstancesDatabasesGetScansView_VIEWUNSPECIFIED = ProjectsInstancesDatabasesGetScansView "VIEW_UNSPECIFIED"

-- | Server responses only include @name@, @details@, @start_time@ and @end_time@. The default value. Note, the ListScans method may only use this view type, others view types are not supported.
pattern ProjectsInstancesDatabasesGetScansView_Summary :: ProjectsInstancesDatabasesGetScansView
pattern ProjectsInstancesDatabasesGetScansView_Summary = ProjectsInstancesDatabasesGetScansView "SUMMARY"

-- | Full representation of the scan is returned in the server response, including @data@.
pattern ProjectsInstancesDatabasesGetScansView_Full :: ProjectsInstancesDatabasesGetScansView
pattern ProjectsInstancesDatabasesGetScansView_Full = ProjectsInstancesDatabasesGetScansView "FULL"

{-# COMPLETE
  ProjectsInstancesDatabasesGetScansView_VIEWUNSPECIFIED,
  ProjectsInstancesDatabasesGetScansView_Summary,
  ProjectsInstancesDatabasesGetScansView_Full,
  ProjectsInstancesDatabasesGetScansView
  #-}

-- | Specifies which parts of the Scan should be returned in the response. Note, only the SUMMARY view (the default) is currently supported for ListScans.
newtype ScansListView = ScansListView {fromScansListView :: Core.Text}
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

-- | Not specified, equivalent to SUMMARY.
pattern ScansListView_VIEWUNSPECIFIED :: ScansListView
pattern ScansListView_VIEWUNSPECIFIED = ScansListView "VIEW_UNSPECIFIED"

-- | Server responses only include @name@, @details@, @start_time@ and @end_time@. The default value. Note, the ListScans method may only use this view type, others view types are not supported.
pattern ScansListView_Summary :: ScansListView
pattern ScansListView_Summary = ScansListView "SUMMARY"

-- | Full representation of the scan is returned in the server response, including @data@.
pattern ScansListView_Full :: ScansListView
pattern ScansListView_Full = ScansListView "FULL"

{-# COMPLETE
  ScansListView_VIEWUNSPECIFIED,
  ScansListView_Summary,
  ScansListView_Full,
  ScansListView
  #-}
