{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Spanner.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Spanner.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Backup_DatabaseDialect
    Backup_DatabaseDialect
      (
        Backup_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
        Backup_DatabaseDialect_GOOGLESTANDARDSQL,
        Backup_DatabaseDialect_Postgresql,
        ..
      ),

    -- * Backup_State
    Backup_State
      (
        Backup_State_STATEUNSPECIFIED,
        Backup_State_Creating,
        Backup_State_Ready,
        ..
      ),

    -- * ContextValue_Severity
    ContextValue_Severity
      (
        ContextValue_Severity_SEVERITYUNSPECIFIED,
        ContextValue_Severity_Info,
        ContextValue_Severity_Warning,
        ContextValue_Severity_Error',
        ContextValue_Severity_Fatal,
        ..
      ),

    -- * CreateDatabaseRequest_DatabaseDialect
    CreateDatabaseRequest_DatabaseDialect
      (
        CreateDatabaseRequest_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
        CreateDatabaseRequest_DatabaseDialect_GOOGLESTANDARDSQL,
        CreateDatabaseRequest_DatabaseDialect_Postgresql,
        ..
      ),

    -- * Database_DatabaseDialect
    Database_DatabaseDialect
      (
        Database_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
        Database_DatabaseDialect_GOOGLESTANDARDSQL,
        Database_DatabaseDialect_Postgresql,
        ..
      ),

    -- * Database_State
    Database_State
      (
        Database_State_STATEUNSPECIFIED,
        Database_State_Creating,
        Database_State_Ready,
        Database_State_READYOPTIMIZING,
        ..
      ),

    -- * DiagnosticMessage_Severity
    DiagnosticMessage_Severity
      (
        DiagnosticMessage_Severity_SEVERITYUNSPECIFIED,
        DiagnosticMessage_Severity_Info,
        DiagnosticMessage_Severity_Warning,
        DiagnosticMessage_Severity_Error',
        DiagnosticMessage_Severity_Fatal,
        ..
      ),

    -- * EncryptionInfo_EncryptionType
    EncryptionInfo_EncryptionType
      (
        EncryptionInfo_EncryptionType_TYPEUNSPECIFIED,
        EncryptionInfo_EncryptionType_GOOGLEDEFAULTENCRYPTION,
        EncryptionInfo_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
        ..
      ),

    -- * ExecuteSqlRequest_QueryMode
    ExecuteSqlRequest_QueryMode
      (
        ExecuteSqlRequest_QueryMode_Normal,
        ExecuteSqlRequest_QueryMode_Plan,
        ExecuteSqlRequest_QueryMode_Profile,
        ..
      ),

    -- * Instance_State
    Instance_State
      (
        Instance_State_STATEUNSPECIFIED,
        Instance_State_Creating,
        Instance_State_Ready,
        ..
      ),

    -- * Metric_Aggregation
    Metric_Aggregation
      (
        Metric_Aggregation_AGGREGATIONUNSPECIFIED,
        Metric_Aggregation_Max,
        Metric_Aggregation_Sum,
        ..
      ),

    -- * PlanNode_Kind
    PlanNode_Kind
      (
        PlanNode_Kind_KINDUNSPECIFIED,
        PlanNode_Kind_Relational,
        PlanNode_Kind_Scalar,
        ..
      ),

    -- * ReplicaInfo_Type
    ReplicaInfo_Type
      (
        ReplicaInfo_Type_TYPEUNSPECIFIED,
        ReplicaInfo_Type_READWRITE,
        ReplicaInfo_Type_READONLY,
        ReplicaInfo_Type_Witness,
        ..
      ),

    -- * RequestOptions_Priority
    RequestOptions_Priority
      (
        RequestOptions_Priority_PRIORITYUNSPECIFIED,
        RequestOptions_Priority_PRIORITYLOW,
        RequestOptions_Priority_PRIORITYMEDIUM,
        RequestOptions_Priority_PRIORITYHIGH,
        ..
      ),

    -- * RestoreDatabaseEncryptionConfig_EncryptionType
    RestoreDatabaseEncryptionConfig_EncryptionType
      (
        RestoreDatabaseEncryptionConfig_EncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
        RestoreDatabaseEncryptionConfig_EncryptionType_USECONFIGDEFAULTORBACKUPENCRYPTION,
        RestoreDatabaseEncryptionConfig_EncryptionType_GOOGLEDEFAULTENCRYPTION,
        RestoreDatabaseEncryptionConfig_EncryptionType_CUSTOMERMANAGEDENCRYPTION,
        ..
      ),

    -- * RestoreDatabaseMetadata_SourceType
    RestoreDatabaseMetadata_SourceType
      (
        RestoreDatabaseMetadata_SourceType_TYPEUNSPECIFIED,
        RestoreDatabaseMetadata_SourceType_Backup,
        ..
      ),

    -- * RestoreInfo_SourceType
    RestoreInfo_SourceType
      (
        RestoreInfo_SourceType_TYPEUNSPECIFIED,
        RestoreInfo_SourceType_Backup,
        ..
      ),

    -- * Type_Code
    Type_Code
      (
        Type_Code_TYPECODEUNSPECIFIED,
        Type_Code_Bool,
        Type_Code_INT64,
        Type_Code_FLOAT64,
        Type_Code_Timestamp,
        Type_Code_Date,
        Type_Code_String,
        Type_Code_Bytes,
        Type_Code_Array,
        Type_Code_Struct,
        Type_Code_Numeric,
        Type_Code_Json,
        ..
      ),

    -- * Type_TypeAnnotation
    Type_TypeAnnotation
      (
        Type_TypeAnnotation_TYPEANNOTATIONCODEUNSPECIFIED,
        Type_TypeAnnotation_PGNUMERIC,
        ..
      ),

    -- * VisualizationData_KeyUnit
    VisualizationData_KeyUnit
      (
        VisualizationData_KeyUnit_KEYUNITUNSPECIFIED,
        VisualizationData_KeyUnit_Key,
        VisualizationData_KeyUnit_Chunk,
        ..
      ),

    -- * ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
    ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
      (
        ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_ENCRYPTIONTYPEUNSPECIFIED,
        ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_USEDATABASEENCRYPTION,
        ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_GOOGLEDEFAULTENCRYPTION,
        ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType_CUSTOMERMANAGEDENCRYPTION,
        ..
      ),

    -- * ProjectsInstancesDatabasesGetScansView
    ProjectsInstancesDatabasesGetScansView
      (
        ProjectsInstancesDatabasesGetScansView_VIEWUNSPECIFIED,
        ProjectsInstancesDatabasesGetScansView_Summary,
        ProjectsInstancesDatabasesGetScansView_Full,
        ..
      ),

    -- * ScansListView
    ScansListView
      (
        ScansListView_VIEWUNSPECIFIED,
        ScansListView_Summary,
        ScansListView_Full,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | Output only. The database dialect information for the backup.
newtype Backup_DatabaseDialect = Backup_DatabaseDialect { fromBackup_DatabaseDialect :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. This value will create a database with the GOOGLE/STANDARD/SQL dialect.
pattern Backup_DatabaseDialect_DATABASEDIALECTUNSPECIFIED :: Backup_DatabaseDialect
pattern Backup_DatabaseDialect_DATABASEDIALECTUNSPECIFIED = Backup_DatabaseDialect "DATABASE_DIALECT_UNSPECIFIED"

-- | Google standard SQL.
pattern Backup_DatabaseDialect_GOOGLESTANDARDSQL :: Backup_DatabaseDialect
pattern Backup_DatabaseDialect_GOOGLESTANDARDSQL = Backup_DatabaseDialect "GOOGLE_STANDARD_SQL"

-- | PostgreSQL supported SQL.
pattern Backup_DatabaseDialect_Postgresql :: Backup_DatabaseDialect
pattern Backup_DatabaseDialect_Postgresql = Backup_DatabaseDialect "POSTGRESQL"

{-# COMPLETE
  Backup_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
  Backup_DatabaseDialect_GOOGLESTANDARDSQL,
  Backup_DatabaseDialect_Postgresql,
  Backup_DatabaseDialect #-}

-- | Output only. The current state of the backup.
newtype Backup_State = Backup_State { fromBackup_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Backup_State #-}

-- | The severity of this context.
newtype ContextValue_Severity = ContextValue_Severity { fromContextValue_Severity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  ContextValue_Severity #-}

-- | Optional. The dialect of the Cloud Spanner Database.
newtype CreateDatabaseRequest_DatabaseDialect = CreateDatabaseRequest_DatabaseDialect { fromCreateDatabaseRequest_DatabaseDialect :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. This value will create a database with the GOOGLE/STANDARD/SQL dialect.
pattern CreateDatabaseRequest_DatabaseDialect_DATABASEDIALECTUNSPECIFIED :: CreateDatabaseRequest_DatabaseDialect
pattern CreateDatabaseRequest_DatabaseDialect_DATABASEDIALECTUNSPECIFIED = CreateDatabaseRequest_DatabaseDialect "DATABASE_DIALECT_UNSPECIFIED"

-- | Google standard SQL.
pattern CreateDatabaseRequest_DatabaseDialect_GOOGLESTANDARDSQL :: CreateDatabaseRequest_DatabaseDialect
pattern CreateDatabaseRequest_DatabaseDialect_GOOGLESTANDARDSQL = CreateDatabaseRequest_DatabaseDialect "GOOGLE_STANDARD_SQL"

-- | PostgreSQL supported SQL.
pattern CreateDatabaseRequest_DatabaseDialect_Postgresql :: CreateDatabaseRequest_DatabaseDialect
pattern CreateDatabaseRequest_DatabaseDialect_Postgresql = CreateDatabaseRequest_DatabaseDialect "POSTGRESQL"

{-# COMPLETE
  CreateDatabaseRequest_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
  CreateDatabaseRequest_DatabaseDialect_GOOGLESTANDARDSQL,
  CreateDatabaseRequest_DatabaseDialect_Postgresql,
  CreateDatabaseRequest_DatabaseDialect #-}

-- | Output only. The dialect of the Cloud Spanner Database.
newtype Database_DatabaseDialect = Database_DatabaseDialect { fromDatabase_DatabaseDialect :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. This value will create a database with the GOOGLE/STANDARD/SQL dialect.
pattern Database_DatabaseDialect_DATABASEDIALECTUNSPECIFIED :: Database_DatabaseDialect
pattern Database_DatabaseDialect_DATABASEDIALECTUNSPECIFIED = Database_DatabaseDialect "DATABASE_DIALECT_UNSPECIFIED"

-- | Google standard SQL.
pattern Database_DatabaseDialect_GOOGLESTANDARDSQL :: Database_DatabaseDialect
pattern Database_DatabaseDialect_GOOGLESTANDARDSQL = Database_DatabaseDialect "GOOGLE_STANDARD_SQL"

-- | PostgreSQL supported SQL.
pattern Database_DatabaseDialect_Postgresql :: Database_DatabaseDialect
pattern Database_DatabaseDialect_Postgresql = Database_DatabaseDialect "POSTGRESQL"

{-# COMPLETE
  Database_DatabaseDialect_DATABASEDIALECTUNSPECIFIED,
  Database_DatabaseDialect_GOOGLESTANDARDSQL,
  Database_DatabaseDialect_Postgresql,
  Database_DatabaseDialect #-}

-- | Output only. The current database state.
newtype Database_State = Database_State { fromDatabase_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Database_State #-}

-- | The severity of the diagnostic message.
newtype DiagnosticMessage_Severity = DiagnosticMessage_Severity { fromDiagnosticMessage_Severity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  DiagnosticMessage_Severity #-}

-- | Output only. The type of encryption.
newtype EncryptionInfo_EncryptionType = EncryptionInfo_EncryptionType { fromEncryptionInfo_EncryptionType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EncryptionInfo_EncryptionType #-}

-- | Used to control the amount of debugging information returned in ResultSetStats. If partition/token is set, query/mode can only be set to QueryMode.NORMAL.
newtype ExecuteSqlRequest_QueryMode = ExecuteSqlRequest_QueryMode { fromExecuteSqlRequest_QueryMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The default mode. Only the statement results are returned.
pattern ExecuteSqlRequest_QueryMode_Normal :: ExecuteSqlRequest_QueryMode
pattern ExecuteSqlRequest_QueryMode_Normal = ExecuteSqlRequest_QueryMode "NORMAL"

-- | This mode returns only the query plan, without any results or execution statistics information.
pattern ExecuteSqlRequest_QueryMode_Plan :: ExecuteSqlRequest_QueryMode
pattern ExecuteSqlRequest_QueryMode_Plan = ExecuteSqlRequest_QueryMode "PLAN"

-- | This mode returns both the query plan and the execution statistics along with the results.
pattern ExecuteSqlRequest_QueryMode_Profile :: ExecuteSqlRequest_QueryMode
pattern ExecuteSqlRequest_QueryMode_Profile = ExecuteSqlRequest_QueryMode "PROFILE"

{-# COMPLETE
  ExecuteSqlRequest_QueryMode_Normal,
  ExecuteSqlRequest_QueryMode_Plan,
  ExecuteSqlRequest_QueryMode_Profile,
  ExecuteSqlRequest_QueryMode #-}

-- | Output only. The current instance state. For CreateInstance, the state must be either omitted or set to @CREATING@. For UpdateInstance, the state must be either omitted or set to @READY@.
newtype Instance_State = Instance_State { fromInstance_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Instance_State #-}

-- | The aggregation function used to aggregate each key bucket
newtype Metric_Aggregation = Metric_Aggregation { fromMetric_Aggregation :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Metric_Aggregation #-}

-- | Used to determine the type of node. May be needed for visualizing different kinds of nodes differently. For example, If the node is a SCALAR node, it will have a condensed representation which can be used to directly embed a description of the node in its parent.
newtype PlanNode_Kind = PlanNode_Kind { fromPlanNode_Kind :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  PlanNode_Kind #-}

-- | The type of replica.
newtype ReplicaInfo_Type = ReplicaInfo_Type { fromReplicaInfo_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  ReplicaInfo_Type #-}

-- | Priority for the request.
newtype RequestOptions_Priority = RequestOptions_Priority { fromRequestOptions_Priority :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  RequestOptions_Priority #-}

-- | Required. The encryption type of the restored database.
newtype RestoreDatabaseEncryptionConfig_EncryptionType = RestoreDatabaseEncryptionConfig_EncryptionType { fromRestoreDatabaseEncryptionConfig_EncryptionType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  RestoreDatabaseEncryptionConfig_EncryptionType #-}

-- | The type of the restore source.
newtype RestoreDatabaseMetadata_SourceType = RestoreDatabaseMetadata_SourceType { fromRestoreDatabaseMetadata_SourceType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  RestoreDatabaseMetadata_SourceType #-}

-- | The type of the restore source.
newtype RestoreInfo_SourceType = RestoreInfo_SourceType { fromRestoreInfo_SourceType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  RestoreInfo_SourceType #-}

-- | Required. The TypeCode for this type.
newtype Type_Code = Type_Code { fromType_Code :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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

{-# COMPLETE
  Type_Code_TYPECODEUNSPECIFIED,
  Type_Code_Bool,
  Type_Code_INT64,
  Type_Code_FLOAT64,
  Type_Code_Timestamp,
  Type_Code_Date,
  Type_Code_String,
  Type_Code_Bytes,
  Type_Code_Array,
  Type_Code_Struct,
  Type_Code_Numeric,
  Type_Code_Json,
  Type_Code #-}

-- | The TypeAnnotationCode that disambiguates SQL type that Spanner will use to represent values of this type during query processing. This is necessary for some type codes because a single TypeCode can be mapped to different SQL types depending on the SQL dialect. type_annotation typically is not needed to process the content of a value (it doesn\'t affect serialization) and clients can ignore it on the read path.
newtype Type_TypeAnnotation = Type_TypeAnnotation { fromType_TypeAnnotation :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern Type_TypeAnnotation_TYPEANNOTATIONCODEUNSPECIFIED :: Type_TypeAnnotation
pattern Type_TypeAnnotation_TYPEANNOTATIONCODEUNSPECIFIED = Type_TypeAnnotation "TYPE_ANNOTATION_CODE_UNSPECIFIED"

-- | PostgreSQL compatible NUMERIC type. This annotation needs to be applied to Type instances having NUMERIC type code to specify that values of this type should be treated as PostgreSQL NUMERIC values. Currently this annotation is always needed for NUMERIC when a client interacts with PostgreSQL-enabled Spanner databases.
pattern Type_TypeAnnotation_PGNUMERIC :: Type_TypeAnnotation
pattern Type_TypeAnnotation_PGNUMERIC = Type_TypeAnnotation "PG_NUMERIC"

{-# COMPLETE
  Type_TypeAnnotation_TYPEANNOTATIONCODEUNSPECIFIED,
  Type_TypeAnnotation_PGNUMERIC,
  Type_TypeAnnotation #-}

-- | The unit for the key: e.g. \'key\' or \'chunk\'.
newtype VisualizationData_KeyUnit = VisualizationData_KeyUnit { fromVisualizationData_KeyUnit :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  VisualizationData_KeyUnit #-}

-- | Required. The encryption type of the backup.
newtype ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType = ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType { fromProjectsInstancesBackupsCreateEncryptionConfigEncryptionType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType #-}

-- | Specifies which parts of the Scan should be returned in the response. Note, if left unspecified, the FULL view is assumed.
newtype ProjectsInstancesDatabasesGetScansView = ProjectsInstancesDatabasesGetScansView { fromProjectsInstancesDatabasesGetScansView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  ProjectsInstancesDatabasesGetScansView #-}

-- | Specifies which parts of the Scan should be returned in the response. Note, only the SUMMARY view (the default) is currently supported for ListScans.
newtype ScansListView = ScansListView { fromScansListView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  ScansListView #-}
