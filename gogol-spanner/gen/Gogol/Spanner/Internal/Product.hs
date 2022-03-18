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
-- Module      : Gogol.Spanner.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Spanner.Internal.Product
  ( -- * Backup
    Backup (..),
    newBackup,

    -- * BackupInfo
    BackupInfo (..),
    newBackupInfo,

    -- * BatchCreateSessionsRequest
    BatchCreateSessionsRequest (..),
    newBatchCreateSessionsRequest,

    -- * BatchCreateSessionsResponse
    BatchCreateSessionsResponse (..),
    newBatchCreateSessionsResponse,

    -- * BeginTransactionRequest
    BeginTransactionRequest (..),
    newBeginTransactionRequest,

    -- * Binding
    Binding (..),
    newBinding,

    -- * ChildLink
    ChildLink (..),
    newChildLink,

    -- * CommitRequest
    CommitRequest (..),
    newCommitRequest,

    -- * CommitResponse
    CommitResponse (..),
    newCommitResponse,

    -- * CommitStats
    CommitStats (..),
    newCommitStats,

    -- * ContextValue
    ContextValue (..),
    newContextValue,

    -- * CreateBackupMetadata
    CreateBackupMetadata (..),
    newCreateBackupMetadata,

    -- * CreateDatabaseMetadata
    CreateDatabaseMetadata (..),
    newCreateDatabaseMetadata,

    -- * CreateDatabaseRequest
    CreateDatabaseRequest (..),
    newCreateDatabaseRequest,

    -- * CreateInstanceMetadata
    CreateInstanceMetadata (..),
    newCreateInstanceMetadata,

    -- * CreateInstanceRequest
    CreateInstanceRequest (..),
    newCreateInstanceRequest,

    -- * CreateSessionRequest
    CreateSessionRequest (..),
    newCreateSessionRequest,

    -- * Database
    Database (..),
    newDatabase,

    -- * Delete'
    Delete' (..),
    newDelete,

    -- * DerivedMetric
    DerivedMetric (..),
    newDerivedMetric,

    -- * DiagnosticMessage
    DiagnosticMessage (..),
    newDiagnosticMessage,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,

    -- * EncryptionInfo
    EncryptionInfo (..),
    newEncryptionInfo,

    -- * ExecuteBatchDmlRequest
    ExecuteBatchDmlRequest (..),
    newExecuteBatchDmlRequest,

    -- * ExecuteBatchDmlResponse
    ExecuteBatchDmlResponse (..),
    newExecuteBatchDmlResponse,

    -- * ExecuteSqlRequest
    ExecuteSqlRequest (..),
    newExecuteSqlRequest,

    -- * ExecuteSqlRequest_ParamTypes
    ExecuteSqlRequest_ParamTypes (..),
    newExecuteSqlRequest_ParamTypes,

    -- * ExecuteSqlRequest_Params
    ExecuteSqlRequest_Params (..),
    newExecuteSqlRequest_Params,

    -- * Expr
    Expr (..),
    newExpr,

    -- * Field
    Field (..),
    newField,

    -- * GetDatabaseDdlResponse
    GetDatabaseDdlResponse (..),
    newGetDatabaseDdlResponse,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * IndexedHotKey
    IndexedHotKey (..),
    newIndexedHotKey,

    -- * IndexedHotKey_SparseHotKeys
    IndexedHotKey_SparseHotKeys (..),
    newIndexedHotKey_SparseHotKeys,

    -- * IndexedKeyRangeInfos
    IndexedKeyRangeInfos (..),
    newIndexedKeyRangeInfos,

    -- * IndexedKeyRangeInfos_KeyRangeInfos
    IndexedKeyRangeInfos_KeyRangeInfos (..),
    newIndexedKeyRangeInfos_KeyRangeInfos,

    -- * Instance
    Instance (..),
    newInstance,

    -- * Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- * InstanceConfig
    InstanceConfig (..),
    newInstanceConfig,

    -- * KeyRange
    KeyRange (..),
    newKeyRange,

    -- * KeyRangeInfo
    KeyRangeInfo (..),
    newKeyRangeInfo,

    -- * KeyRangeInfos
    KeyRangeInfos (..),
    newKeyRangeInfos,

    -- * KeySet
    KeySet (..),
    newKeySet,

    -- * ListBackupOperationsResponse
    ListBackupOperationsResponse (..),
    newListBackupOperationsResponse,

    -- * ListBackupsResponse
    ListBackupsResponse (..),
    newListBackupsResponse,

    -- * ListDatabaseOperationsResponse
    ListDatabaseOperationsResponse (..),
    newListDatabaseOperationsResponse,

    -- * ListDatabasesResponse
    ListDatabasesResponse (..),
    newListDatabasesResponse,

    -- * ListInstanceConfigsResponse
    ListInstanceConfigsResponse (..),
    newListInstanceConfigsResponse,

    -- * ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListScansResponse
    ListScansResponse (..),
    newListScansResponse,

    -- * ListSessionsResponse
    ListSessionsResponse (..),
    newListSessionsResponse,

    -- * LocalizedString
    LocalizedString (..),
    newLocalizedString,

    -- * LocalizedString_Args
    LocalizedString_Args (..),
    newLocalizedString_Args,

    -- * Metric
    Metric (..),
    newMetric,

    -- * Metric_IndexedHotKeys
    Metric_IndexedHotKeys (..),
    newMetric_IndexedHotKeys,

    -- * Metric_IndexedKeyRangeInfos
    Metric_IndexedKeyRangeInfos (..),
    newMetric_IndexedKeyRangeInfos,

    -- * MetricMatrix
    MetricMatrix (..),
    newMetricMatrix,

    -- * MetricMatrixRow
    MetricMatrixRow (..),
    newMetricMatrixRow,

    -- * Mutation
    Mutation (..),
    newMutation,

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

    -- * OptimizeRestoredDatabaseMetadata
    OptimizeRestoredDatabaseMetadata (..),
    newOptimizeRestoredDatabaseMetadata,

    -- * PartialResultSet
    PartialResultSet (..),
    newPartialResultSet,

    -- * Partition
    Partition (..),
    newPartition,

    -- * PartitionOptions
    PartitionOptions (..),
    newPartitionOptions,

    -- * PartitionQueryRequest
    PartitionQueryRequest (..),
    newPartitionQueryRequest,

    -- * PartitionQueryRequest_ParamTypes
    PartitionQueryRequest_ParamTypes (..),
    newPartitionQueryRequest_ParamTypes,

    -- * PartitionQueryRequest_Params
    PartitionQueryRequest_Params (..),
    newPartitionQueryRequest_Params,

    -- * PartitionReadRequest
    PartitionReadRequest (..),
    newPartitionReadRequest,

    -- * PartitionResponse
    PartitionResponse (..),
    newPartitionResponse,

    -- * PartitionedDml
    PartitionedDml (..),
    newPartitionedDml,

    -- * PlanNode
    PlanNode (..),
    newPlanNode,

    -- * PlanNode_ExecutionStats
    PlanNode_ExecutionStats (..),
    newPlanNode_ExecutionStats,

    -- * PlanNode_Metadata
    PlanNode_Metadata (..),
    newPlanNode_Metadata,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PrefixNode
    PrefixNode (..),
    newPrefixNode,

    -- * QueryOptions
    QueryOptions (..),
    newQueryOptions,

    -- * QueryPlan
    QueryPlan (..),
    newQueryPlan,

    -- * ReadOnly
    ReadOnly (..),
    newReadOnly,

    -- * ReadRequest
    ReadRequest (..),
    newReadRequest,

    -- * ReadWrite
    ReadWrite (..),
    newReadWrite,

    -- * ReplicaInfo
    ReplicaInfo (..),
    newReplicaInfo,

    -- * RequestOptions
    RequestOptions (..),
    newRequestOptions,

    -- * RestoreDatabaseEncryptionConfig
    RestoreDatabaseEncryptionConfig (..),
    newRestoreDatabaseEncryptionConfig,

    -- * RestoreDatabaseMetadata
    RestoreDatabaseMetadata (..),
    newRestoreDatabaseMetadata,

    -- * RestoreDatabaseRequest
    RestoreDatabaseRequest (..),
    newRestoreDatabaseRequest,

    -- * RestoreInfo
    RestoreInfo (..),
    newRestoreInfo,

    -- * ResultSet
    ResultSet (..),
    newResultSet,

    -- * ResultSetMetadata
    ResultSetMetadata (..),
    newResultSetMetadata,

    -- * ResultSetStats
    ResultSetStats (..),
    newResultSetStats,

    -- * ResultSetStats_QueryStats
    ResultSetStats_QueryStats (..),
    newResultSetStats_QueryStats,

    -- * RollbackRequest
    RollbackRequest (..),
    newRollbackRequest,

    -- * Scan
    Scan (..),
    newScan,

    -- * Scan_Details
    Scan_Details (..),
    newScan_Details,

    -- * ScanData
    ScanData (..),
    newScanData,

    -- * Session
    Session (..),
    newSession,

    -- * Session_Labels
    Session_Labels (..),
    newSession_Labels,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * ShortRepresentation
    ShortRepresentation (..),
    newShortRepresentation,

    -- * ShortRepresentation_Subqueries
    ShortRepresentation_Subqueries (..),
    newShortRepresentation_Subqueries,

    -- * Statement
    Statement (..),
    newStatement,

    -- * Statement_ParamTypes
    Statement_ParamTypes (..),
    newStatement_ParamTypes,

    -- * Statement_Params
    Statement_Params (..),
    newStatement_Params,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StructType
    StructType (..),
    newStructType,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * Transaction
    Transaction (..),
    newTransaction,

    -- * TransactionOptions
    TransactionOptions (..),
    newTransactionOptions,

    -- * TransactionSelector
    TransactionSelector (..),
    newTransactionSelector,

    -- * Type
    Type (..),
    newType,

    -- * UpdateDatabaseDdlMetadata
    UpdateDatabaseDdlMetadata (..),
    newUpdateDatabaseDdlMetadata,

    -- * UpdateDatabaseDdlRequest
    UpdateDatabaseDdlRequest (..),
    newUpdateDatabaseDdlRequest,

    -- * UpdateInstanceMetadata
    UpdateInstanceMetadata (..),
    newUpdateInstanceMetadata,

    -- * UpdateInstanceRequest
    UpdateInstanceRequest (..),
    newUpdateInstanceRequest,

    -- * VisualizationData
    VisualizationData (..),
    newVisualizationData,

    -- * Write
    Write (..),
    newWrite,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Internal.Sum

-- | A backup of a Cloud Spanner database.
--
-- /See:/ 'newBackup' smart constructor.
data Backup = Backup
  { -- | Output only. The time the CreateBackup request is received. If the request does not specify @version_time@, the @version_time@ of the backup will be equivalent to the @create_time@.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Required for the CreateBackup operation. Name of the database from which this backup was created. This needs to be in the same instance as the backup. Values are of the form @projects\/\/instances\/\/databases\/@.
    database :: (Core.Maybe Core.Text),
    -- | Output only. The database dialect information for the backup.
    databaseDialect :: (Core.Maybe Backup_DatabaseDialect),
    -- | Output only. The encryption information for the backup.
    encryptionInfo :: (Core.Maybe EncryptionInfo),
    -- | Required for the CreateBackup operation. The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 366 days from the time the CreateBackup request is processed. Once the @expire_time@ has passed, the backup is eligible to be automatically deleted by Cloud Spanner to free the resources used by the backup.
    expireTime :: (Core.Maybe Core.DateTime'),
    -- | Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form @projects\/\/instances\/\/backups\/a-z*[a-z0-9]@ The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form @projects\/\/instances\/@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The names of the restored databases that reference the backup. The database names are of the form @projects\/\/instances\/\/databases\/@. Referencing databases may exist in different instances. The existence of any referencing database prevents the backup from being deleted. When a restored database from the backup enters the @READY@ state, the reference to the backup is removed.
    referencingDatabases :: (Core.Maybe [Core.Text]),
    -- | Output only. Size of the backup in bytes.
    sizeBytes :: (Core.Maybe Core.Int64),
    -- | Output only. The current state of the backup.
    state :: (Core.Maybe Backup_State),
    -- | The backup will contain an externally consistent copy of the database at the timestamp specified by @version_time@. If @version_time@ is not specified, the system will set @version_time@ to the @create_time@ of the backup.
    versionTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Backup' with the minimum fields required to make a request.
newBackup ::
  Backup
newBackup =
  Backup
    { createTime = Core.Nothing,
      database = Core.Nothing,
      databaseDialect = Core.Nothing,
      encryptionInfo = Core.Nothing,
      expireTime = Core.Nothing,
      name = Core.Nothing,
      referencingDatabases = Core.Nothing,
      sizeBytes = Core.Nothing,
      state = Core.Nothing,
      versionTime = Core.Nothing
    }

instance Core.FromJSON Backup where
  parseJSON =
    Core.withObject
      "Backup"
      ( \o ->
          Backup
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "database")
            Core.<*> (o Core..:? "databaseDialect")
            Core.<*> (o Core..:? "encryptionInfo")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "name")
            Core.<*> ( o Core..:? "referencingDatabases"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "sizeBytes")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "versionTime")
      )

instance Core.ToJSON Backup where
  toJSON Backup {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("database" Core..=) Core.<$> database,
            ("databaseDialect" Core..=) Core.<$> databaseDialect,
            ("encryptionInfo" Core..=) Core.<$> encryptionInfo,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("name" Core..=) Core.<$> name,
            ("referencingDatabases" Core..=)
              Core.<$> referencingDatabases,
            ("sizeBytes" Core..=) Core.. Core.AsText
              Core.<$> sizeBytes,
            ("state" Core..=) Core.<$> state,
            ("versionTime" Core..=) Core.<$> versionTime
          ]
      )

-- | Information about a backup.
--
-- /See:/ 'newBackupInfo' smart constructor.
data BackupInfo = BackupInfo
  { -- | Name of the backup.
    backup :: (Core.Maybe Core.Text),
    -- | The time the CreateBackup request was received.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Name of the database the backup was created from.
    sourceDatabase :: (Core.Maybe Core.Text),
    -- | The backup contains an externally consistent copy of @source_database@ at the timestamp specified by @version_time@. If the CreateBackup request did not specify @version_time@, the @version_time@ of the backup is equivalent to the @create_time@.
    versionTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupInfo' with the minimum fields required to make a request.
newBackupInfo ::
  BackupInfo
newBackupInfo =
  BackupInfo
    { backup = Core.Nothing,
      createTime = Core.Nothing,
      sourceDatabase = Core.Nothing,
      versionTime = Core.Nothing
    }

instance Core.FromJSON BackupInfo where
  parseJSON =
    Core.withObject
      "BackupInfo"
      ( \o ->
          BackupInfo
            Core.<$> (o Core..:? "backup")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "sourceDatabase")
            Core.<*> (o Core..:? "versionTime")
      )

instance Core.ToJSON BackupInfo where
  toJSON BackupInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("backup" Core..=) Core.<$> backup,
            ("createTime" Core..=) Core.<$> createTime,
            ("sourceDatabase" Core..=) Core.<$> sourceDatabase,
            ("versionTime" Core..=) Core.<$> versionTime
          ]
      )

-- | The request for BatchCreateSessions.
--
-- /See:/ 'newBatchCreateSessionsRequest' smart constructor.
data BatchCreateSessionsRequest = BatchCreateSessionsRequest
  { -- | Required. The number of sessions to be created in this batch call. The API may return fewer than the requested number of sessions. If a specific number of sessions are desired, the client can make additional calls to BatchCreateSessions (adjusting session_count as necessary).
    sessionCount :: (Core.Maybe Core.Int32),
    -- | Parameters to be applied to each created session.
    sessionTemplate :: (Core.Maybe Session)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateSessionsRequest' with the minimum fields required to make a request.
newBatchCreateSessionsRequest ::
  BatchCreateSessionsRequest
newBatchCreateSessionsRequest =
  BatchCreateSessionsRequest
    { sessionCount = Core.Nothing,
      sessionTemplate = Core.Nothing
    }

instance Core.FromJSON BatchCreateSessionsRequest where
  parseJSON =
    Core.withObject
      "BatchCreateSessionsRequest"
      ( \o ->
          BatchCreateSessionsRequest
            Core.<$> (o Core..:? "sessionCount")
            Core.<*> (o Core..:? "sessionTemplate")
      )

instance Core.ToJSON BatchCreateSessionsRequest where
  toJSON BatchCreateSessionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("sessionCount" Core..=) Core.<$> sessionCount,
            ("sessionTemplate" Core..=)
              Core.<$> sessionTemplate
          ]
      )

-- | The response for BatchCreateSessions.
--
-- /See:/ 'newBatchCreateSessionsResponse' smart constructor.
newtype BatchCreateSessionsResponse = BatchCreateSessionsResponse
  { -- | The freshly created sessions.
    session :: (Core.Maybe [Session])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateSessionsResponse' with the minimum fields required to make a request.
newBatchCreateSessionsResponse ::
  BatchCreateSessionsResponse
newBatchCreateSessionsResponse =
  BatchCreateSessionsResponse {session = Core.Nothing}

instance Core.FromJSON BatchCreateSessionsResponse where
  parseJSON =
    Core.withObject
      "BatchCreateSessionsResponse"
      ( \o ->
          BatchCreateSessionsResponse
            Core.<$> (o Core..:? "session" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchCreateSessionsResponse where
  toJSON BatchCreateSessionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("session" Core..=) Core.<$> session]
      )

-- | The request for BeginTransaction.
--
-- /See:/ 'newBeginTransactionRequest' smart constructor.
data BeginTransactionRequest = BeginTransactionRequest
  { -- | Required. Options for the new transaction.
    options :: (Core.Maybe TransactionOptions),
    -- | Common options for this request. Priority is ignored for this request. Setting the priority in this request_options struct will not do anything. To set the priority for a transaction, set it on the reads and writes that are part of this transaction instead.
    requestOptions :: (Core.Maybe RequestOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BeginTransactionRequest' with the minimum fields required to make a request.
newBeginTransactionRequest ::
  BeginTransactionRequest
newBeginTransactionRequest =
  BeginTransactionRequest
    { options = Core.Nothing,
      requestOptions = Core.Nothing
    }

instance Core.FromJSON BeginTransactionRequest where
  parseJSON =
    Core.withObject
      "BeginTransactionRequest"
      ( \o ->
          BeginTransactionRequest
            Core.<$> (o Core..:? "options")
            Core.<*> (o Core..:? "requestOptions")
      )

instance Core.ToJSON BeginTransactionRequest where
  toJSON BeginTransactionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("options" Core..=) Core.<$> options,
            ("requestOptions" Core..=) Core.<$> requestOptions
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Cloud Platform resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains
    -- the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
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
            Core.<*> (o Core..:? "members" Core..!= Core.mempty)
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

-- | Metadata associated with a parent-child relationship appearing in a PlanNode.
--
-- /See:/ 'newChildLink' smart constructor.
data ChildLink = ChildLink
  { -- | The node to which the link points.
    childIndex :: (Core.Maybe Core.Int32),
    -- | The type of the link. For example, in Hash Joins this could be used to distinguish between the build child and the probe child, or in the case of the child being an output variable, to represent the tag associated with the output variable.
    type' :: (Core.Maybe Core.Text),
    -- | Only present if the child node is SCALAR and corresponds to an output variable of the parent node. The field carries the name of the output variable. For example, a @TableScan@ operator that reads rows from a table will have child links to the @SCALAR@ nodes representing the output variables created for each column that is read by the operator. The corresponding @variable@ fields will be set to the variable names assigned to the columns.
    variable :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChildLink' with the minimum fields required to make a request.
newChildLink ::
  ChildLink
newChildLink =
  ChildLink
    { childIndex = Core.Nothing,
      type' = Core.Nothing,
      variable = Core.Nothing
    }

instance Core.FromJSON ChildLink where
  parseJSON =
    Core.withObject
      "ChildLink"
      ( \o ->
          ChildLink
            Core.<$> (o Core..:? "childIndex")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "variable")
      )

instance Core.ToJSON ChildLink where
  toJSON ChildLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("childIndex" Core..=) Core.<$> childIndex,
            ("type" Core..=) Core.<$> type',
            ("variable" Core..=) Core.<$> variable
          ]
      )

-- | The request for Commit.
--
-- /See:/ 'newCommitRequest' smart constructor.
data CommitRequest = CommitRequest
  { -- | The mutations to be executed when this transaction commits. All mutations are applied atomically, in the order they appear in this list.
    mutations :: (Core.Maybe [Mutation]),
    -- | Common options for this request.
    requestOptions :: (Core.Maybe RequestOptions),
    -- | If @true@, then statistics related to the transaction will be included in the CommitResponse. Default value is @false@.
    returnCommitStats :: (Core.Maybe Core.Bool),
    -- | Execute mutations in a temporary transaction. Note that unlike commit of a previously-started transaction, commit with a temporary transaction is non-idempotent. That is, if the @CommitRequest@ is sent to Cloud Spanner more than once (for instance, due to retries in the application, or in the transport library), it is possible that the mutations are executed more than once. If this is undesirable, use BeginTransaction and Commit instead.
    singleUseTransaction :: (Core.Maybe TransactionOptions),
    -- | Commit a previously-started transaction.
    transactionId :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommitRequest' with the minimum fields required to make a request.
newCommitRequest ::
  CommitRequest
newCommitRequest =
  CommitRequest
    { mutations = Core.Nothing,
      requestOptions = Core.Nothing,
      returnCommitStats = Core.Nothing,
      singleUseTransaction = Core.Nothing,
      transactionId = Core.Nothing
    }

instance Core.FromJSON CommitRequest where
  parseJSON =
    Core.withObject
      "CommitRequest"
      ( \o ->
          CommitRequest
            Core.<$> (o Core..:? "mutations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "requestOptions")
            Core.<*> (o Core..:? "returnCommitStats")
            Core.<*> (o Core..:? "singleUseTransaction")
            Core.<*> (o Core..:? "transactionId")
      )

instance Core.ToJSON CommitRequest where
  toJSON CommitRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("mutations" Core..=) Core.<$> mutations,
            ("requestOptions" Core..=) Core.<$> requestOptions,
            ("returnCommitStats" Core..=)
              Core.<$> returnCommitStats,
            ("singleUseTransaction" Core..=)
              Core.<$> singleUseTransaction,
            ("transactionId" Core..=) Core.<$> transactionId
          ]
      )

-- | The response for Commit.
--
-- /See:/ 'newCommitResponse' smart constructor.
data CommitResponse = CommitResponse
  { -- | The statistics about this Commit. Not returned by default. For more information, see CommitRequest.return/commit/stats.
    commitStats :: (Core.Maybe CommitStats),
    -- | The Cloud Spanner timestamp at which the transaction committed.
    commitTimestamp :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommitResponse' with the minimum fields required to make a request.
newCommitResponse ::
  CommitResponse
newCommitResponse =
  CommitResponse {commitStats = Core.Nothing, commitTimestamp = Core.Nothing}

instance Core.FromJSON CommitResponse where
  parseJSON =
    Core.withObject
      "CommitResponse"
      ( \o ->
          CommitResponse
            Core.<$> (o Core..:? "commitStats")
            Core.<*> (o Core..:? "commitTimestamp")
      )

instance Core.ToJSON CommitResponse where
  toJSON CommitResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("commitStats" Core..=) Core.<$> commitStats,
            ("commitTimestamp" Core..=)
              Core.<$> commitTimestamp
          ]
      )

-- | Additional statistics about a commit.
--
-- /See:/ 'newCommitStats' smart constructor.
newtype CommitStats = CommitStats
  { -- | The total number of mutations for the transaction. Knowing the @mutation_count@ value can help you maximize the number of mutations in a transaction and minimize the number of API round trips. You can also monitor this value to prevent transactions from exceeding the system <https://cloud.google.com/spanner/quotas#limits_for_creating_reading_updating_and_deleting_data limit>. If the number of mutations exceeds the limit, the server returns <https://cloud.google.com/spanner/docs/reference/rest/v1/Code#ENUM_VALUES.INVALID_ARGUMENT INVALID_ARGUMENT>.
    mutationCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommitStats' with the minimum fields required to make a request.
newCommitStats ::
  CommitStats
newCommitStats = CommitStats {mutationCount = Core.Nothing}

instance Core.FromJSON CommitStats where
  parseJSON =
    Core.withObject
      "CommitStats"
      ( \o ->
          CommitStats Core.<$> (o Core..:? "mutationCount")
      )

instance Core.ToJSON CommitStats where
  toJSON CommitStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("mutationCount" Core..=) Core.. Core.AsText
              Core.<$> mutationCount
          ]
      )

-- | A message representing context for a KeyRangeInfo, including a label, value, unit, and severity.
--
-- /See:/ 'newContextValue' smart constructor.
data ContextValue = ContextValue
  { -- | The label for the context value. e.g. \"latency\".
    label :: (Core.Maybe LocalizedString),
    -- | The severity of this context.
    severity :: (Core.Maybe ContextValue_Severity),
    -- | The unit of the context value.
    unit :: (Core.Maybe Core.Text),
    -- | The value for the context.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContextValue' with the minimum fields required to make a request.
newContextValue ::
  ContextValue
newContextValue =
  ContextValue
    { label = Core.Nothing,
      severity = Core.Nothing,
      unit = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON ContextValue where
  parseJSON =
    Core.withObject
      "ContextValue"
      ( \o ->
          ContextValue
            Core.<$> (o Core..:? "label")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "unit")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ContextValue where
  toJSON ContextValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("label" Core..=) Core.<$> label,
            ("severity" Core..=) Core.<$> severity,
            ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Metadata type for the operation returned by CreateBackup.
--
-- /See:/ 'newCreateBackupMetadata' smart constructor.
data CreateBackupMetadata = CreateBackupMetadata
  { -- | The time at which cancellation of this operation was received. Operations.CancelOperation starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    cancelTime :: (Core.Maybe Core.DateTime'),
    -- | The name of the database the backup is created from.
    database :: (Core.Maybe Core.Text),
    -- | The name of the backup being created.
    name :: (Core.Maybe Core.Text),
    -- | The progress of the CreateBackup operation.
    progress :: (Core.Maybe OperationProgress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateBackupMetadata' with the minimum fields required to make a request.
newCreateBackupMetadata ::
  CreateBackupMetadata
newCreateBackupMetadata =
  CreateBackupMetadata
    { cancelTime = Core.Nothing,
      database = Core.Nothing,
      name = Core.Nothing,
      progress = Core.Nothing
    }

instance Core.FromJSON CreateBackupMetadata where
  parseJSON =
    Core.withObject
      "CreateBackupMetadata"
      ( \o ->
          CreateBackupMetadata
            Core.<$> (o Core..:? "cancelTime")
            Core.<*> (o Core..:? "database")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "progress")
      )

instance Core.ToJSON CreateBackupMetadata where
  toJSON CreateBackupMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("cancelTime" Core..=) Core.<$> cancelTime,
            ("database" Core..=) Core.<$> database,
            ("name" Core..=) Core.<$> name,
            ("progress" Core..=) Core.<$> progress
          ]
      )

-- | Metadata type for the operation returned by CreateDatabase.
--
-- /See:/ 'newCreateDatabaseMetadata' smart constructor.
newtype CreateDatabaseMetadata = CreateDatabaseMetadata
  { -- | The database being created.
    database :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateDatabaseMetadata' with the minimum fields required to make a request.
newCreateDatabaseMetadata ::
  CreateDatabaseMetadata
newCreateDatabaseMetadata = CreateDatabaseMetadata {database = Core.Nothing}

instance Core.FromJSON CreateDatabaseMetadata where
  parseJSON =
    Core.withObject
      "CreateDatabaseMetadata"
      ( \o ->
          CreateDatabaseMetadata
            Core.<$> (o Core..:? "database")
      )

instance Core.ToJSON CreateDatabaseMetadata where
  toJSON CreateDatabaseMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("database" Core..=) Core.<$> database]
      )

-- | The request for CreateDatabase.
--
-- /See:/ 'newCreateDatabaseRequest' smart constructor.
data CreateDatabaseRequest = CreateDatabaseRequest
  { -- | Required. A @CREATE DATABASE@ statement, which specifies the ID of the new database. The database ID must conform to the regular expression @a-z*[a-z0-9]@ and be between 2 and 30 characters in length. If the database ID is a reserved word or if it contains a hyphen, the database ID must be enclosed in backticks (@\`@).
    createStatement :: (Core.Maybe Core.Text),
    -- | Optional. The dialect of the Cloud Spanner Database.
    databaseDialect :: (Core.Maybe CreateDatabaseRequest_DatabaseDialect),
    -- | Optional. The encryption configuration for the database. If this field is not specified, Cloud Spanner will encrypt\/decrypt all data at rest using Google default encryption.
    encryptionConfig :: (Core.Maybe EncryptionConfig),
    -- | Optional. A list of DDL statements to run inside the newly created database. Statements can create tables, indexes, etc. These statements execute atomically with the creation of the database: if there is an error in any statement, the database is not created.
    extraStatements :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateDatabaseRequest' with the minimum fields required to make a request.
newCreateDatabaseRequest ::
  CreateDatabaseRequest
newCreateDatabaseRequest =
  CreateDatabaseRequest
    { createStatement = Core.Nothing,
      databaseDialect = Core.Nothing,
      encryptionConfig = Core.Nothing,
      extraStatements = Core.Nothing
    }

instance Core.FromJSON CreateDatabaseRequest where
  parseJSON =
    Core.withObject
      "CreateDatabaseRequest"
      ( \o ->
          CreateDatabaseRequest
            Core.<$> (o Core..:? "createStatement")
            Core.<*> (o Core..:? "databaseDialect")
            Core.<*> (o Core..:? "encryptionConfig")
            Core.<*> (o Core..:? "extraStatements" Core..!= Core.mempty)
      )

instance Core.ToJSON CreateDatabaseRequest where
  toJSON CreateDatabaseRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("createStatement" Core..=)
              Core.<$> createStatement,
            ("databaseDialect" Core..=) Core.<$> databaseDialect,
            ("encryptionConfig" Core..=)
              Core.<$> encryptionConfig,
            ("extraStatements" Core..=)
              Core.<$> extraStatements
          ]
      )

-- | Metadata type for the operation returned by CreateInstance.
--
-- /See:/ 'newCreateInstanceMetadata' smart constructor.
data CreateInstanceMetadata = CreateInstanceMetadata
  { -- | The time at which this operation was cancelled. If set, this operation is in the process of undoing itself (which is guaranteed to succeed) and cannot be cancelled again.
    cancelTime :: (Core.Maybe Core.DateTime'),
    -- | The time at which this operation failed or was completed successfully.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | The instance being created.
    instance' :: (Core.Maybe Instance),
    -- | The time at which the CreateInstance request was received.
    startTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateInstanceMetadata' with the minimum fields required to make a request.
newCreateInstanceMetadata ::
  CreateInstanceMetadata
newCreateInstanceMetadata =
  CreateInstanceMetadata
    { cancelTime = Core.Nothing,
      endTime = Core.Nothing,
      instance' = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON CreateInstanceMetadata where
  parseJSON =
    Core.withObject
      "CreateInstanceMetadata"
      ( \o ->
          CreateInstanceMetadata
            Core.<$> (o Core..:? "cancelTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "instance")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON CreateInstanceMetadata where
  toJSON CreateInstanceMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("cancelTime" Core..=) Core.<$> cancelTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("instance" Core..=) Core.<$> instance',
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | The request for CreateInstance.
--
-- /See:/ 'newCreateInstanceRequest' smart constructor.
data CreateInstanceRequest = CreateInstanceRequest
  { -- | Required. The instance to create. The name may be omitted, but if specified must be @\/instances\/@.
    instance' :: (Core.Maybe Instance),
    -- | Required. The ID of the instance to create. Valid identifiers are of the form @a-z*[a-z0-9]@ and must be between 2 and 64 characters in length.
    instanceId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateInstanceRequest' with the minimum fields required to make a request.
newCreateInstanceRequest ::
  CreateInstanceRequest
newCreateInstanceRequest =
  CreateInstanceRequest {instance' = Core.Nothing, instanceId = Core.Nothing}

instance Core.FromJSON CreateInstanceRequest where
  parseJSON =
    Core.withObject
      "CreateInstanceRequest"
      ( \o ->
          CreateInstanceRequest
            Core.<$> (o Core..:? "instance")
            Core.<*> (o Core..:? "instanceId")
      )

instance Core.ToJSON CreateInstanceRequest where
  toJSON CreateInstanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("instance" Core..=) Core.<$> instance',
            ("instanceId" Core..=) Core.<$> instanceId
          ]
      )

-- | The request for CreateSession.
--
-- /See:/ 'newCreateSessionRequest' smart constructor.
newtype CreateSessionRequest = CreateSessionRequest
  { -- | Required. The session to create.
    session :: (Core.Maybe Session)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateSessionRequest' with the minimum fields required to make a request.
newCreateSessionRequest ::
  CreateSessionRequest
newCreateSessionRequest = CreateSessionRequest {session = Core.Nothing}

instance Core.FromJSON CreateSessionRequest where
  parseJSON =
    Core.withObject
      "CreateSessionRequest"
      ( \o ->
          CreateSessionRequest Core.<$> (o Core..:? "session")
      )

instance Core.ToJSON CreateSessionRequest where
  toJSON CreateSessionRequest {..} =
    Core.object
      ( Core.catMaybes
          [("session" Core..=) Core.<$> session]
      )

-- | A Cloud Spanner database.
--
-- /See:/ 'newDatabase' smart constructor.
data Database = Database
  { -- | Output only. If exists, the time at which the database creation started.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. The dialect of the Cloud Spanner Database.
    databaseDialect :: (Core.Maybe Database_DatabaseDialect),
    -- | Output only. The read-write region which contains the database\'s leader replicas. This is the same as the value of default_leader database option set using DatabaseAdmin.CreateDatabase or DatabaseAdmin.UpdateDatabaseDdl. If not explicitly set, this is empty.
    defaultLeader :: (Core.Maybe Core.Text),
    -- | Output only. Earliest timestamp at which older versions of the data can be read. This value is continuously updated by Cloud Spanner and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
    earliestVersionTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. For databases that are using customer managed encryption, this field contains the encryption configuration for the database. For databases that are using Google default or other types of encryption, this field is empty.
    encryptionConfig :: (Core.Maybe EncryptionConfig),
    -- | Output only. For databases that are using customer managed encryption, this field contains the encryption information for the database, such as encryption state and the Cloud KMS key versions that are in use. For databases that are using Google default or other types of encryption, this field is empty. This field is propagated lazily from the backend. There might be a delay from when a key version is being used and when it appears in this field.
    encryptionInfo :: (Core.Maybe [EncryptionInfo]),
    -- | Required. The name of the database. Values are of the form @projects\/\/instances\/\/databases\/@, where \`@is as specified in the@CREATE DATABASE\` statement. This name can be passed to other API methods to identify the database.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Applicable only for restored databases. Contains information about the restore source.
    restoreInfo :: (Core.Maybe RestoreInfo),
    -- | Output only. The current database state.
    state :: (Core.Maybe Database_State),
    -- | Output only. The period in which Cloud Spanner retains all versions of data for the database. This is the same as the value of version/retention/period database option set using UpdateDatabaseDdl. Defaults to 1 hour, if not set.
    versionRetentionPeriod :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Database' with the minimum fields required to make a request.
newDatabase ::
  Database
newDatabase =
  Database
    { createTime = Core.Nothing,
      databaseDialect = Core.Nothing,
      defaultLeader = Core.Nothing,
      earliestVersionTime = Core.Nothing,
      encryptionConfig = Core.Nothing,
      encryptionInfo = Core.Nothing,
      name = Core.Nothing,
      restoreInfo = Core.Nothing,
      state = Core.Nothing,
      versionRetentionPeriod = Core.Nothing
    }

instance Core.FromJSON Database where
  parseJSON =
    Core.withObject
      "Database"
      ( \o ->
          Database
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "databaseDialect")
            Core.<*> (o Core..:? "defaultLeader")
            Core.<*> (o Core..:? "earliestVersionTime")
            Core.<*> (o Core..:? "encryptionConfig")
            Core.<*> (o Core..:? "encryptionInfo" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "restoreInfo")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "versionRetentionPeriod")
      )

instance Core.ToJSON Database where
  toJSON Database {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("databaseDialect" Core..=) Core.<$> databaseDialect,
            ("defaultLeader" Core..=) Core.<$> defaultLeader,
            ("earliestVersionTime" Core..=)
              Core.<$> earliestVersionTime,
            ("encryptionConfig" Core..=)
              Core.<$> encryptionConfig,
            ("encryptionInfo" Core..=) Core.<$> encryptionInfo,
            ("name" Core..=) Core.<$> name,
            ("restoreInfo" Core..=) Core.<$> restoreInfo,
            ("state" Core..=) Core.<$> state,
            ("versionRetentionPeriod" Core..=)
              Core.<$> versionRetentionPeriod
          ]
      )

-- | Arguments to delete operations.
--
-- /See:/ 'newDelete' smart constructor.
data Delete' = Delete'
  { -- | Required. The primary keys of the rows within table to delete. The primary keys must be specified in the order in which they appear in the @PRIMARY KEY()@ clause of the table\'s equivalent DDL statement (the DDL statement used to create the table). Delete is idempotent. The transaction will succeed even if some or all rows do not exist.
    keySet :: (Core.Maybe KeySet),
    -- | Required. The table whose rows will be deleted.
    table :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Delete' with the minimum fields required to make a request.
newDelete ::
  Delete'
newDelete = Delete' {keySet = Core.Nothing, table = Core.Nothing}

instance Core.FromJSON Delete' where
  parseJSON =
    Core.withObject
      "Delete'"
      ( \o ->
          Delete'
            Core.<$> (o Core..:? "keySet") Core.<*> (o Core..:? "table")
      )

instance Core.ToJSON Delete' where
  toJSON Delete' {..} =
    Core.object
      ( Core.catMaybes
          [ ("keySet" Core..=) Core.<$> keySet,
            ("table" Core..=) Core.<$> table
          ]
      )

-- | A message representing a derived metric.
--
-- /See:/ 'newDerivedMetric' smart constructor.
data DerivedMetric = DerivedMetric
  { -- | The name of the denominator metric. e.g. \"rows\".
    denominator :: (Core.Maybe LocalizedString),
    -- | The name of the numerator metric. e.g. \"latency\".
    numerator :: (Core.Maybe LocalizedString)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DerivedMetric' with the minimum fields required to make a request.
newDerivedMetric ::
  DerivedMetric
newDerivedMetric =
  DerivedMetric {denominator = Core.Nothing, numerator = Core.Nothing}

instance Core.FromJSON DerivedMetric where
  parseJSON =
    Core.withObject
      "DerivedMetric"
      ( \o ->
          DerivedMetric
            Core.<$> (o Core..:? "denominator")
            Core.<*> (o Core..:? "numerator")
      )

instance Core.ToJSON DerivedMetric where
  toJSON DerivedMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("denominator" Core..=) Core.<$> denominator,
            ("numerator" Core..=) Core.<$> numerator
          ]
      )

-- | A message representing the key visualizer diagnostic messages.
--
-- /See:/ 'newDiagnosticMessage' smart constructor.
data DiagnosticMessage = DiagnosticMessage
  { -- | Information about this diagnostic information.
    info :: (Core.Maybe LocalizedString),
    -- | The metric.
    metric :: (Core.Maybe LocalizedString),
    -- | Whether this message is specific only for the current metric. By default Diagnostics are shown for all metrics, regardless which metric is the currently selected metric in the UI. However occasionally a metric will generate so many messages that the resulting visual clutter becomes overwhelming. In this case setting this to true, will show the diagnostic messages for that metric only if it is the currently selected metric.
    metricSpecific :: (Core.Maybe Core.Bool),
    -- | The severity of the diagnostic message.
    severity :: (Core.Maybe DiagnosticMessage_Severity),
    -- | The short message.
    shortMessage :: (Core.Maybe LocalizedString)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiagnosticMessage' with the minimum fields required to make a request.
newDiagnosticMessage ::
  DiagnosticMessage
newDiagnosticMessage =
  DiagnosticMessage
    { info = Core.Nothing,
      metric = Core.Nothing,
      metricSpecific = Core.Nothing,
      severity = Core.Nothing,
      shortMessage = Core.Nothing
    }

instance Core.FromJSON DiagnosticMessage where
  parseJSON =
    Core.withObject
      "DiagnosticMessage"
      ( \o ->
          DiagnosticMessage
            Core.<$> (o Core..:? "info")
            Core.<*> (o Core..:? "metric")
            Core.<*> (o Core..:? "metricSpecific")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "shortMessage")
      )

instance Core.ToJSON DiagnosticMessage where
  toJSON DiagnosticMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("info" Core..=) Core.<$> info,
            ("metric" Core..=) Core.<$> metric,
            ("metricSpecific" Core..=) Core.<$> metricSpecific,
            ("severity" Core..=) Core.<$> severity,
            ("shortMessage" Core..=) Core.<$> shortMessage
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
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

-- | Encryption configuration for a Cloud Spanner database.
--
-- /See:/ 'newEncryptionConfig' smart constructor.
newtype EncryptionConfig = EncryptionConfig
  { -- | The Cloud KMS key to be used for encrypting and decrypting the database. Values are of the form @projects\/\/locations\/\/keyRings\/\/cryptoKeys\/@.
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

-- | Encryption information for a Cloud Spanner database or backup.
--
-- /See:/ 'newEncryptionInfo' smart constructor.
data EncryptionInfo = EncryptionInfo
  { -- | Output only. If present, the status of a recent encrypt\/decrypt call on underlying data for this database or backup. Regardless of status, data is always encrypted at rest.
    encryptionStatus :: (Core.Maybe Status),
    -- | Output only. The type of encryption.
    encryptionType :: (Core.Maybe EncryptionInfo_EncryptionType),
    -- | Output only. A Cloud KMS key version that is being used to protect the database or backup.
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

-- | The request for ExecuteBatchDml.
--
-- /See:/ 'newExecuteBatchDmlRequest' smart constructor.
data ExecuteBatchDmlRequest = ExecuteBatchDmlRequest
  { -- | Common options for this request.
    requestOptions :: (Core.Maybe RequestOptions),
    -- | Required. A per-transaction sequence number used to identify this request. This field makes each request idempotent such that if the request is received multiple times, at most one will succeed. The sequence number must be monotonically increasing within the transaction. If a request arrives for the first time with an out-of-order sequence number, the transaction may be aborted. Replays of previously handled requests will yield the same response as the first execution.
    seqno :: (Core.Maybe Core.Int64),
    -- | Required. The list of statements to execute in this batch. Statements are executed serially, such that the effects of statement @i@ are visible to statement @i+1@. Each statement must be a DML statement. Execution stops at the first failed statement; the remaining statements are not executed. Callers must provide at least one statement.
    statements :: (Core.Maybe [Statement]),
    -- | Required. The transaction to use. Must be a read-write transaction. To protect against replays, single-use transactions are not supported. The caller must either supply an existing transaction ID or begin a new transaction.
    transaction :: (Core.Maybe TransactionSelector)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecuteBatchDmlRequest' with the minimum fields required to make a request.
newExecuteBatchDmlRequest ::
  ExecuteBatchDmlRequest
newExecuteBatchDmlRequest =
  ExecuteBatchDmlRequest
    { requestOptions = Core.Nothing,
      seqno = Core.Nothing,
      statements = Core.Nothing,
      transaction = Core.Nothing
    }

instance Core.FromJSON ExecuteBatchDmlRequest where
  parseJSON =
    Core.withObject
      "ExecuteBatchDmlRequest"
      ( \o ->
          ExecuteBatchDmlRequest
            Core.<$> (o Core..:? "requestOptions")
            Core.<*> (o Core..:? "seqno")
            Core.<*> (o Core..:? "statements" Core..!= Core.mempty)
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON ExecuteBatchDmlRequest where
  toJSON ExecuteBatchDmlRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestOptions" Core..=) Core.<$> requestOptions,
            ("seqno" Core..=) Core.. Core.AsText Core.<$> seqno,
            ("statements" Core..=) Core.<$> statements,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

-- | The response for ExecuteBatchDml. Contains a list of ResultSet messages, one for each DML statement that has successfully executed, in the same order as the statements in the request. If a statement fails, the status in the response body identifies the cause of the failure. To check for DML statements that failed, use the following approach: 1. Check the status in the response message. The google.rpc.Code enum value @OK@ indicates that all statements were executed successfully. 2. If the status was not @OK@, check the number of result sets in the response. If the response contains @N@ ResultSet messages, then statement @N+1@ in the request failed. Example 1: * Request: 5 DML statements, all executed successfully. * Response: 5 ResultSet messages, with the status @OK@. Example 2: * Request: 5 DML statements. The third statement has a syntax error. * Response: 2 ResultSet messages, and a syntax error (@INVALID_ARGUMENT@) status. The number of ResultSet messages indicates that the third statement failed, and the
-- fourth and fifth statements were not executed.
--
-- /See:/ 'newExecuteBatchDmlResponse' smart constructor.
data ExecuteBatchDmlResponse = ExecuteBatchDmlResponse
  { -- | One ResultSet for each statement in the request that ran successfully, in the same order as the statements in the request. Each ResultSet does not contain any rows. The ResultSetStats in each ResultSet contain the number of rows modified by the statement. Only the first ResultSet in the response contains valid ResultSetMetadata.
    resultSets :: (Core.Maybe [ResultSet]),
    -- | If all DML statements are executed successfully, the status is @OK@. Otherwise, the error status of the first failed statement.
    status :: (Core.Maybe Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecuteBatchDmlResponse' with the minimum fields required to make a request.
newExecuteBatchDmlResponse ::
  ExecuteBatchDmlResponse
newExecuteBatchDmlResponse =
  ExecuteBatchDmlResponse {resultSets = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON ExecuteBatchDmlResponse where
  parseJSON =
    Core.withObject
      "ExecuteBatchDmlResponse"
      ( \o ->
          ExecuteBatchDmlResponse
            Core.<$> (o Core..:? "resultSets" Core..!= Core.mempty)
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON ExecuteBatchDmlResponse where
  toJSON ExecuteBatchDmlResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("resultSets" Core..=) Core.<$> resultSets,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | The request for ExecuteSql and ExecuteStreamingSql.
--
-- /See:/ 'newExecuteSqlRequest' smart constructor.
data ExecuteSqlRequest = ExecuteSqlRequest
  { -- | It is not always possible for Cloud Spanner to infer the right SQL type from a JSON value. For example, values of type @BYTES@ and values of type @STRING@ both appear in params as JSON strings. In these cases, @param_types@ can be used to specify the exact SQL type for some or all of the SQL statement parameters. See the definition of Type for more information about SQL types.
    paramTypes :: (Core.Maybe ExecuteSqlRequest_ParamTypes),
    -- | Parameter names and values that bind to placeholders in the SQL string. A parameter placeholder consists of the @\@@ character followed by the parameter name (for example, @\@firstName@). Parameter names must conform to the naming requirements of identifiers as specified at https:\/\/cloud.google.com\/spanner\/docs\/lexical#identifiers. Parameters can appear anywhere that a literal value is expected. The same parameter name can be used more than once, for example: @\"WHERE id > \@msg_id AND id \< \@msg_id + 100\"@ It is an error to execute a SQL statement with unbound parameters.
    params :: (Core.Maybe ExecuteSqlRequest_Params),
    -- | If present, results will be restricted to the specified partition previously created using PartitionQuery(). There must be an exact match for the values of fields common to this message and the PartitionQueryRequest message used to create this partition_token.
    partitionToken :: (Core.Maybe Core.Base64),
    -- | Used to control the amount of debugging information returned in ResultSetStats. If partition/token is set, query/mode can only be set to QueryMode.NORMAL.
    queryMode :: (Core.Maybe ExecuteSqlRequest_QueryMode),
    -- | Query optimizer configuration to use for the given query.
    queryOptions :: (Core.Maybe QueryOptions),
    -- | Common options for this request.
    requestOptions :: (Core.Maybe RequestOptions),
    -- | If this request is resuming a previously interrupted SQL statement execution, @resume_token@ should be copied from the last PartialResultSet yielded before the interruption. Doing this enables the new SQL statement execution to resume where the last one left off. The rest of the request parameters must exactly match the request that yielded this token.
    resumeToken :: (Core.Maybe Core.Base64),
    -- | A per-transaction sequence number used to identify this request. This field makes each request idempotent such that if the request is received multiple times, at most one will succeed. The sequence number must be monotonically increasing within the transaction. If a request arrives for the first time with an out-of-order sequence number, the transaction may be aborted. Replays of previously handled requests will yield the same response as the first execution. Required for DML statements. Ignored for queries.
    seqno :: (Core.Maybe Core.Int64),
    -- | Required. The SQL string.
    sql :: (Core.Maybe Core.Text),
    -- | The transaction to use. For queries, if none is provided, the default is a temporary read-only transaction with strong concurrency. Standard DML statements require a read-write transaction. To protect against replays, single-use transactions are not supported. The caller must either supply an existing transaction ID or begin a new transaction. Partitioned DML requires an existing Partitioned DML transaction ID.
    transaction :: (Core.Maybe TransactionSelector)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecuteSqlRequest' with the minimum fields required to make a request.
newExecuteSqlRequest ::
  ExecuteSqlRequest
newExecuteSqlRequest =
  ExecuteSqlRequest
    { paramTypes = Core.Nothing,
      params = Core.Nothing,
      partitionToken = Core.Nothing,
      queryMode = Core.Nothing,
      queryOptions = Core.Nothing,
      requestOptions = Core.Nothing,
      resumeToken = Core.Nothing,
      seqno = Core.Nothing,
      sql = Core.Nothing,
      transaction = Core.Nothing
    }

instance Core.FromJSON ExecuteSqlRequest where
  parseJSON =
    Core.withObject
      "ExecuteSqlRequest"
      ( \o ->
          ExecuteSqlRequest
            Core.<$> (o Core..:? "paramTypes")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "partitionToken")
            Core.<*> (o Core..:? "queryMode")
            Core.<*> (o Core..:? "queryOptions")
            Core.<*> (o Core..:? "requestOptions")
            Core.<*> (o Core..:? "resumeToken")
            Core.<*> (o Core..:? "seqno")
            Core.<*> (o Core..:? "sql")
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON ExecuteSqlRequest where
  toJSON ExecuteSqlRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("paramTypes" Core..=) Core.<$> paramTypes,
            ("params" Core..=) Core.<$> params,
            ("partitionToken" Core..=) Core.<$> partitionToken,
            ("queryMode" Core..=) Core.<$> queryMode,
            ("queryOptions" Core..=) Core.<$> queryOptions,
            ("requestOptions" Core..=) Core.<$> requestOptions,
            ("resumeToken" Core..=) Core.<$> resumeToken,
            ("seqno" Core..=) Core.. Core.AsText Core.<$> seqno,
            ("sql" Core..=) Core.<$> sql,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

-- | It is not always possible for Cloud Spanner to infer the right SQL type from a JSON value. For example, values of type @BYTES@ and values of type @STRING@ both appear in params as JSON strings. In these cases, @param_types@ can be used to specify the exact SQL type for some or all of the SQL statement parameters. See the definition of Type for more information about SQL types.
--
-- /See:/ 'newExecuteSqlRequest_ParamTypes' smart constructor.
newtype ExecuteSqlRequest_ParamTypes = ExecuteSqlRequest_ParamTypes
  { -- |
    addtional :: (Core.HashMap Core.Text Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecuteSqlRequest_ParamTypes' with the minimum fields required to make a request.
newExecuteSqlRequest_ParamTypes ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Type ->
  ExecuteSqlRequest_ParamTypes
newExecuteSqlRequest_ParamTypes addtional =
  ExecuteSqlRequest_ParamTypes {addtional = addtional}

instance Core.FromJSON ExecuteSqlRequest_ParamTypes where
  parseJSON =
    Core.withObject
      "ExecuteSqlRequest_ParamTypes"
      ( \o ->
          ExecuteSqlRequest_ParamTypes
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ExecuteSqlRequest_ParamTypes where
  toJSON ExecuteSqlRequest_ParamTypes {..} =
    Core.toJSON addtional

-- | Parameter names and values that bind to placeholders in the SQL string. A parameter placeholder consists of the @\@@ character followed by the parameter name (for example, @\@firstName@). Parameter names must conform to the naming requirements of identifiers as specified at https:\/\/cloud.google.com\/spanner\/docs\/lexical#identifiers. Parameters can appear anywhere that a literal value is expected. The same parameter name can be used more than once, for example: @\"WHERE id > \@msg_id AND id \< \@msg_id + 100\"@ It is an error to execute a SQL statement with unbound parameters.
--
-- /See:/ 'newExecuteSqlRequest_Params' smart constructor.
newtype ExecuteSqlRequest_Params = ExecuteSqlRequest_Params
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecuteSqlRequest_Params' with the minimum fields required to make a request.
newExecuteSqlRequest_Params ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  ExecuteSqlRequest_Params
newExecuteSqlRequest_Params addtional =
  ExecuteSqlRequest_Params {addtional = addtional}

instance Core.FromJSON ExecuteSqlRequest_Params where
  parseJSON =
    Core.withObject
      "ExecuteSqlRequest_Params"
      ( \o ->
          ExecuteSqlRequest_Params
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ExecuteSqlRequest_Params where
  toJSON ExecuteSqlRequest_Params {..} =
    Core.toJSON addtional

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

-- | Message representing a single field of a struct.
--
-- /See:/ 'newField' smart constructor.
data Field = Field
  { -- | The name of the field. For reads, this is the column name. For SQL queries, it is the column alias (e.g., @\"Word\"@ in the query @\"SELECT \'hello\' AS Word\"@), or the column name (e.g., @\"ColName\"@ in the query @\"SELECT ColName FROM Table\"@). Some columns might have an empty name (e.g., @\"SELECT UPPER(ColName)\"@). Note that a query result can contain multiple fields with the same name.
    name :: (Core.Maybe Core.Text),
    -- | The type of the field.
    type' :: (Core.Maybe Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Field' with the minimum fields required to make a request.
newField ::
  Field
newField = Field {name = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON Field where
  parseJSON =
    Core.withObject
      "Field"
      ( \o ->
          Field
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Field where
  toJSON Field {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The response for GetDatabaseDdl.
--
-- /See:/ 'newGetDatabaseDdlResponse' smart constructor.
newtype GetDatabaseDdlResponse = GetDatabaseDdlResponse
  { -- | A list of formatted DDL statements defining the schema of the database specified in the request.
    statements :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetDatabaseDdlResponse' with the minimum fields required to make a request.
newGetDatabaseDdlResponse ::
  GetDatabaseDdlResponse
newGetDatabaseDdlResponse = GetDatabaseDdlResponse {statements = Core.Nothing}

instance Core.FromJSON GetDatabaseDdlResponse where
  parseJSON =
    Core.withObject
      "GetDatabaseDdlResponse"
      ( \o ->
          GetDatabaseDdlResponse
            Core.<$> (o Core..:? "statements" Core..!= Core.mempty)
      )

instance Core.ToJSON GetDatabaseDdlResponse where
  toJSON GetDatabaseDdlResponse {..} =
    Core.object
      ( Core.catMaybes
          [("statements" Core..=) Core.<$> statements]
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

-- | A message representing a (sparse) collection of hot keys for specific key buckets.
--
-- /See:/ 'newIndexedHotKey' smart constructor.
newtype IndexedHotKey = IndexedHotKey
  { -- | A (sparse) mapping from key bucket index to the index of the specific hot row key for that key bucket. The index of the hot row key can be translated to the actual row key via the ScanData.VisualizationData.indexed_keys repeated field.
    sparseHotKeys :: (Core.Maybe IndexedHotKey_SparseHotKeys)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndexedHotKey' with the minimum fields required to make a request.
newIndexedHotKey ::
  IndexedHotKey
newIndexedHotKey = IndexedHotKey {sparseHotKeys = Core.Nothing}

instance Core.FromJSON IndexedHotKey where
  parseJSON =
    Core.withObject
      "IndexedHotKey"
      ( \o ->
          IndexedHotKey Core.<$> (o Core..:? "sparseHotKeys")
      )

instance Core.ToJSON IndexedHotKey where
  toJSON IndexedHotKey {..} =
    Core.object
      ( Core.catMaybes
          [("sparseHotKeys" Core..=) Core.<$> sparseHotKeys]
      )

-- | A (sparse) mapping from key bucket index to the index of the specific hot row key for that key bucket. The index of the hot row key can be translated to the actual row key via the ScanData.VisualizationData.indexed_keys repeated field.
--
-- /See:/ 'newIndexedHotKey_SparseHotKeys' smart constructor.
newtype IndexedHotKey_SparseHotKeys = IndexedHotKey_SparseHotKeys
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndexedHotKey_SparseHotKeys' with the minimum fields required to make a request.
newIndexedHotKey_SparseHotKeys ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Int32 ->
  IndexedHotKey_SparseHotKeys
newIndexedHotKey_SparseHotKeys addtional =
  IndexedHotKey_SparseHotKeys {addtional = addtional}

instance Core.FromJSON IndexedHotKey_SparseHotKeys where
  parseJSON =
    Core.withObject
      "IndexedHotKey_SparseHotKeys"
      ( \o ->
          IndexedHotKey_SparseHotKeys
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON IndexedHotKey_SparseHotKeys where
  toJSON IndexedHotKey_SparseHotKeys {..} =
    Core.toJSON addtional

-- | A message representing a (sparse) collection of KeyRangeInfos for specific key buckets.
--
-- /See:/ 'newIndexedKeyRangeInfos' smart constructor.
newtype IndexedKeyRangeInfos = IndexedKeyRangeInfos
  { -- | A (sparse) mapping from key bucket index to the KeyRangeInfos for that key bucket.
    keyRangeInfos :: (Core.Maybe IndexedKeyRangeInfos_KeyRangeInfos)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndexedKeyRangeInfos' with the minimum fields required to make a request.
newIndexedKeyRangeInfos ::
  IndexedKeyRangeInfos
newIndexedKeyRangeInfos = IndexedKeyRangeInfos {keyRangeInfos = Core.Nothing}

instance Core.FromJSON IndexedKeyRangeInfos where
  parseJSON =
    Core.withObject
      "IndexedKeyRangeInfos"
      ( \o ->
          IndexedKeyRangeInfos
            Core.<$> (o Core..:? "keyRangeInfos")
      )

instance Core.ToJSON IndexedKeyRangeInfos where
  toJSON IndexedKeyRangeInfos {..} =
    Core.object
      ( Core.catMaybes
          [("keyRangeInfos" Core..=) Core.<$> keyRangeInfos]
      )

-- | A (sparse) mapping from key bucket index to the KeyRangeInfos for that key bucket.
--
-- /See:/ 'newIndexedKeyRangeInfos_KeyRangeInfos' smart constructor.
newtype IndexedKeyRangeInfos_KeyRangeInfos = IndexedKeyRangeInfos_KeyRangeInfos
  { -- |
    addtional :: (Core.HashMap Core.Text KeyRangeInfos)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndexedKeyRangeInfos_KeyRangeInfos' with the minimum fields required to make a request.
newIndexedKeyRangeInfos_KeyRangeInfos ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text KeyRangeInfos ->
  IndexedKeyRangeInfos_KeyRangeInfos
newIndexedKeyRangeInfos_KeyRangeInfos addtional =
  IndexedKeyRangeInfos_KeyRangeInfos {addtional = addtional}

instance
  Core.FromJSON
    IndexedKeyRangeInfos_KeyRangeInfos
  where
  parseJSON =
    Core.withObject
      "IndexedKeyRangeInfos_KeyRangeInfos"
      ( \o ->
          IndexedKeyRangeInfos_KeyRangeInfos
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    IndexedKeyRangeInfos_KeyRangeInfos
  where
  toJSON IndexedKeyRangeInfos_KeyRangeInfos {..} =
    Core.toJSON addtional

-- | An isolated set of Cloud Spanner resources on which databases can be hosted.
--
-- /See:/ 'newInstance' smart constructor.
data Instance = Instance
  { -- | Required. The name of the instance\'s configuration. Values are of the form @projects\/\/instanceConfigs\/@. See also InstanceConfig and ListInstanceConfigs.
    config :: (Core.Maybe Core.Text),
    -- | Required. The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length.
    displayName :: (Core.Maybe Core.Text),
    -- | Deprecated. This field is not populated.
    endpointUris :: (Core.Maybe [Core.Text]),
    -- | Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer\'s organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @a-z{0,62}@. * Label values must be between 0 and 63 characters long and must conform to the regular expression @[a-z0-9_-]{0,63}@. * No more than 64 labels can be associated with a given resource. See https:\/\/goo.gl\/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn\'t rely upon specific characters
    -- being disallowed. For example, representing labels as the string: name + \"/\" + value would prove problematic if we were to allow \"/\" in a future release.
    labels :: (Core.Maybe Instance_Labels),
    -- | Required. A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form @projects\/\/instances\/a-z*[a-z0-9]@. The final segment of the name must be between 2 and 64 characters in length.
    name :: (Core.Maybe Core.Text),
    -- | The number of nodes allocated to this instance. At most one of either node/count or processing/units should be present in the message. This may be zero in API responses for instances that are not yet in state @READY@. See <https://cloud.google.com/spanner/docs/compute-capacity the documentation> for more information about nodes and processing units.
    nodeCount :: (Core.Maybe Core.Int32),
    -- | The number of processing units allocated to this instance. At most one of processing/units or node/count should be present in the message. This may be zero in API responses for instances that are not yet in state @READY@. See <https://cloud.google.com/spanner/docs/compute-capacity the documentation> for more information about nodes and processing units.
    processingUnits :: (Core.Maybe Core.Int32),
    -- | Output only. The current instance state. For CreateInstance, the state must be either omitted or set to @CREATING@. For UpdateInstance, the state must be either omitted or set to @READY@.
    state :: (Core.Maybe Instance_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
newInstance ::
  Instance
newInstance =
  Instance
    { config = Core.Nothing,
      displayName = Core.Nothing,
      endpointUris = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      nodeCount = Core.Nothing,
      processingUnits = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON Instance where
  parseJSON =
    Core.withObject
      "Instance"
      ( \o ->
          Instance
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "endpointUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodeCount")
            Core.<*> (o Core..:? "processingUnits")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON Instance where
  toJSON Instance {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("displayName" Core..=) Core.<$> displayName,
            ("endpointUris" Core..=) Core.<$> endpointUris,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("nodeCount" Core..=) Core.<$> nodeCount,
            ("processingUnits" Core..=) Core.<$> processingUnits,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer\'s organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @a-z{0,62}@. * Label values must be between 0 and 63 characters long and must conform to the regular expression @[a-z0-9_-]{0,63}@. * No more than 64 labels can be associated with a given resource. See https:\/\/goo.gl\/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn\'t rely upon specific characters
-- being disallowed. For example, representing labels as the string: name + \"/\" + value would prove problematic if we were to allow \"/\" in a future release.
--
-- /See:/ 'newInstance_Labels' smart constructor.
newtype Instance_Labels = Instance_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance_Labels' with the minimum fields required to make a request.
newInstance_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Instance_Labels
newInstance_Labels addtional = Instance_Labels {addtional = addtional}

instance Core.FromJSON Instance_Labels where
  parseJSON =
    Core.withObject
      "Instance_Labels"
      ( \o ->
          Instance_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Instance_Labels where
  toJSON Instance_Labels {..} = Core.toJSON addtional

-- | A possible configuration for a Cloud Spanner instance. Configurations define the geographic placement of nodes and their replication.
--
-- /See:/ 'newInstanceConfig' smart constructor.
data InstanceConfig = InstanceConfig
  { -- | The name of this instance configuration as it appears in UIs.
    displayName :: (Core.Maybe Core.Text),
    -- | Allowed values of the \"default_leader\" schema option for databases in instances that use this instance configuration.
    leaderOptions :: (Core.Maybe [Core.Text]),
    -- | A unique identifier for the instance configuration. Values are of the form @projects\/\/instanceConfigs\/a-z*@.
    name :: (Core.Maybe Core.Text),
    -- | The geographic placement of nodes in this instance configuration and their replication properties.
    replicas :: (Core.Maybe [ReplicaInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceConfig' with the minimum fields required to make a request.
newInstanceConfig ::
  InstanceConfig
newInstanceConfig =
  InstanceConfig
    { displayName = Core.Nothing,
      leaderOptions = Core.Nothing,
      name = Core.Nothing,
      replicas = Core.Nothing
    }

instance Core.FromJSON InstanceConfig where
  parseJSON =
    Core.withObject
      "InstanceConfig"
      ( \o ->
          InstanceConfig
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "leaderOptions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "replicas" Core..!= Core.mempty)
      )

instance Core.ToJSON InstanceConfig where
  toJSON InstanceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("leaderOptions" Core..=) Core.<$> leaderOptions,
            ("name" Core..=) Core.<$> name,
            ("replicas" Core..=) Core.<$> replicas
          ]
      )

-- | KeyRange represents a range of rows in a table or index. A range has a start key and an end key. These keys can be open or closed, indicating if the range includes rows with that key. Keys are represented by lists, where the ith value in the list corresponds to the ith component of the table or index primary key. Individual values are encoded as described here. For example, consider the following table definition: CREATE TABLE UserEvents ( UserName STRING(MAX), EventDate STRING(10) ) PRIMARY KEY(UserName, EventDate); The following keys name rows in this table: \"Bob\", \"2014-09-23\" Since the @UserEvents@ table\'s @PRIMARY KEY@ clause names two columns, each @UserEvents@ key has two elements; the first is the @UserName@, and the second is the @EventDate@. Key ranges with multiple components are interpreted lexicographically by component using the table or index key\'s declared sort order. For example, the following range returns all events for user @\"Bob\"@ that occurred in the year 2015: \"start/closed\":
-- [\"Bob\", \"2015-01-01\"] \"end/closed\": [\"Bob\", \"2015-12-31\"] Start and end keys can omit trailing key components. This affects the inclusion and exclusion of rows that exactly match the provided key components: if the key is closed, then rows that exactly match the provided components are included; if the key is open, then rows that exactly match are not included. For example, the following range includes all events for @\"Bob\"@ that occurred during and after the year 2000: \"start/closed\": [\"Bob\", \"2000-01-01\"] \"end/closed\": [\"Bob\"] The next example retrieves all events for @\"Bob\"@: \"start/closed\": [\"Bob\"] \"end/closed\": [\"Bob\"] To retrieve events before the year 2000: \"start/closed\": [\"Bob\"] \"end/open\": [\"Bob\", \"2000-01-01\"] The following range includes all rows in the table: \"start/closed\": [] \"end/closed\": [] This range returns all users whose @UserName@ begins with any character from A to C: \"start/closed\": [\"A\"] \"end/open\": [\"D\"] This range returns all
-- users whose @UserName@ begins with B: \"start/closed\": [\"B\"] \"end/open\": [\"C\"] Key ranges honor column sort order. For example, suppose a table is defined as follows: CREATE TABLE DescendingSortedTable { Key INT64, ... ) PRIMARY KEY(Key DESC); The following range retrieves all rows with key values between 1 and 100 inclusive: \"start/closed\": [\"100\"] \"end/closed\": [\"1\"] Note that 100 is passed as the start, and 1 is passed as the end, because @Key@ is a descending column in the schema.
--
-- /See:/ 'newKeyRange' smart constructor.
data KeyRange = KeyRange
  { -- | If the end is closed, then the range includes all rows whose first @len(end_closed)@ key columns exactly match @end_closed@.
    endClosed :: (Core.Maybe [Core.Value]),
    -- | If the end is open, then the range excludes rows whose first @len(end_open)@ key columns exactly match @end_open@.
    endOpen :: (Core.Maybe [Core.Value]),
    -- | If the start is closed, then the range includes all rows whose first @len(start_closed)@ key columns exactly match @start_closed@.
    startClosed :: (Core.Maybe [Core.Value]),
    -- | If the start is open, then the range excludes rows whose first @len(start_open)@ key columns exactly match @start_open@.
    startOpen :: (Core.Maybe [Core.Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyRange' with the minimum fields required to make a request.
newKeyRange ::
  KeyRange
newKeyRange =
  KeyRange
    { endClosed = Core.Nothing,
      endOpen = Core.Nothing,
      startClosed = Core.Nothing,
      startOpen = Core.Nothing
    }

instance Core.FromJSON KeyRange where
  parseJSON =
    Core.withObject
      "KeyRange"
      ( \o ->
          KeyRange
            Core.<$> (o Core..:? "endClosed" Core..!= Core.mempty)
            Core.<*> (o Core..:? "endOpen" Core..!= Core.mempty)
            Core.<*> (o Core..:? "startClosed" Core..!= Core.mempty)
            Core.<*> (o Core..:? "startOpen" Core..!= Core.mempty)
      )

instance Core.ToJSON KeyRange where
  toJSON KeyRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("endClosed" Core..=) Core.<$> endClosed,
            ("endOpen" Core..=) Core.<$> endOpen,
            ("startClosed" Core..=) Core.<$> startClosed,
            ("startOpen" Core..=) Core.<$> startOpen
          ]
      )

-- | A message representing information for a key range (possibly one key).
--
-- /See:/ 'newKeyRangeInfo' smart constructor.
data KeyRangeInfo = KeyRangeInfo
  { -- | The list of context values for this key range.
    contextValues :: (Core.Maybe [ContextValue]),
    -- | The index of the end key in indexed_keys.
    endKeyIndex :: (Core.Maybe Core.Int32),
    -- | Information about this key range, for all metrics.
    info :: (Core.Maybe LocalizedString),
    -- | The number of keys this range covers.
    keysCount :: (Core.Maybe Core.Int64),
    -- | The name of the metric. e.g. \"latency\".
    metric :: (Core.Maybe LocalizedString),
    -- | The index of the start key in indexed_keys.
    startKeyIndex :: (Core.Maybe Core.Int32),
    -- | The time offset. This is the time since the start of the time interval.
    timeOffset :: (Core.Maybe Core.GDuration),
    -- | The unit of the metric. This is an unstructured field and will be mapped as is to the user.
    unit :: (Core.Maybe LocalizedString),
    -- | The value of the metric.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyRangeInfo' with the minimum fields required to make a request.
newKeyRangeInfo ::
  KeyRangeInfo
newKeyRangeInfo =
  KeyRangeInfo
    { contextValues = Core.Nothing,
      endKeyIndex = Core.Nothing,
      info = Core.Nothing,
      keysCount = Core.Nothing,
      metric = Core.Nothing,
      startKeyIndex = Core.Nothing,
      timeOffset = Core.Nothing,
      unit = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON KeyRangeInfo where
  parseJSON =
    Core.withObject
      "KeyRangeInfo"
      ( \o ->
          KeyRangeInfo
            Core.<$> (o Core..:? "contextValues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "endKeyIndex")
            Core.<*> (o Core..:? "info")
            Core.<*> (o Core..:? "keysCount")
            Core.<*> (o Core..:? "metric")
            Core.<*> (o Core..:? "startKeyIndex")
            Core.<*> (o Core..:? "timeOffset")
            Core.<*> (o Core..:? "unit")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON KeyRangeInfo where
  toJSON KeyRangeInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("contextValues" Core..=) Core.<$> contextValues,
            ("endKeyIndex" Core..=) Core.<$> endKeyIndex,
            ("info" Core..=) Core.<$> info,
            ("keysCount" Core..=) Core.. Core.AsText
              Core.<$> keysCount,
            ("metric" Core..=) Core.<$> metric,
            ("startKeyIndex" Core..=) Core.<$> startKeyIndex,
            ("timeOffset" Core..=) Core.<$> timeOffset,
            ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A message representing a list of specific information for multiple key ranges.
--
-- /See:/ 'newKeyRangeInfos' smart constructor.
data KeyRangeInfos = KeyRangeInfos
  { -- | The list individual KeyRangeInfos.
    infos :: (Core.Maybe [KeyRangeInfo]),
    -- | The total size of the list of all KeyRangeInfos. This may be larger than the number of repeated messages above. If that is the case, this number may be used to determine how many are not being shown.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyRangeInfos' with the minimum fields required to make a request.
newKeyRangeInfos ::
  KeyRangeInfos
newKeyRangeInfos =
  KeyRangeInfos {infos = Core.Nothing, totalSize = Core.Nothing}

instance Core.FromJSON KeyRangeInfos where
  parseJSON =
    Core.withObject
      "KeyRangeInfos"
      ( \o ->
          KeyRangeInfos
            Core.<$> (o Core..:? "infos" Core..!= Core.mempty)
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON KeyRangeInfos where
  toJSON KeyRangeInfos {..} =
    Core.object
      ( Core.catMaybes
          [ ("infos" Core..=) Core.<$> infos,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | @KeySet@ defines a collection of Cloud Spanner keys and\/or key ranges. All the keys are expected to be in the same table or index. The keys need not be sorted in any particular way. If the same key is specified multiple times in the set (for example if two ranges, two keys, or a key and a range overlap), Cloud Spanner behaves as if the key were only specified once.
--
-- /See:/ 'newKeySet' smart constructor.
data KeySet = KeySet
  { -- | For convenience @all@ can be set to @true@ to indicate that this @KeySet@ matches all keys in the table or index. Note that any keys specified in @keys@ or @ranges@ are only yielded once.
    all :: (Core.Maybe Core.Bool),
    -- | A list of specific keys. Entries in @keys@ should have exactly as many elements as there are columns in the primary or index key with which this @KeySet@ is used. Individual key values are encoded as described here.
    keys :: (Core.Maybe [[Core.Value]]),
    -- | A list of key ranges. See KeyRange for more information about key range specifications.
    ranges :: (Core.Maybe [KeyRange])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeySet' with the minimum fields required to make a request.
newKeySet ::
  KeySet
newKeySet =
  KeySet {all = Core.Nothing, keys = Core.Nothing, ranges = Core.Nothing}

instance Core.FromJSON KeySet where
  parseJSON =
    Core.withObject
      "KeySet"
      ( \o ->
          KeySet
            Core.<$> (o Core..:? "all")
            Core.<*> (o Core..:? "keys" Core..!= Core.mempty)
            Core.<*> (o Core..:? "ranges" Core..!= Core.mempty)
      )

instance Core.ToJSON KeySet where
  toJSON KeySet {..} =
    Core.object
      ( Core.catMaybes
          [ ("all" Core..=) Core.<$> all,
            ("keys" Core..=) Core.<$> keys,
            ("ranges" Core..=) Core.<$> ranges
          ]
      )

-- | The response for ListBackupOperations.
--
-- /See:/ 'newListBackupOperationsResponse' smart constructor.
data ListBackupOperationsResponse = ListBackupOperationsResponse
  { -- | @next_page_token@ can be sent in a subsequent ListBackupOperations call to fetch more of the matching metadata.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of matching backup long-running operations. Each operation\'s name will be prefixed by the backup\'s name. The operation\'s metadata field type @metadata.type_url@ describes the type of the metadata. Operations returned include those that are pending or have completed\/failed\/canceled within the last 7 days. Operations returned are ordered by @operation.metadata.value.progress.start_time@ in descending order starting from the most recently started operation.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBackupOperationsResponse' with the minimum fields required to make a request.
newListBackupOperationsResponse ::
  ListBackupOperationsResponse
newListBackupOperationsResponse =
  ListBackupOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListBackupOperationsResponse where
  parseJSON =
    Core.withObject
      "ListBackupOperationsResponse"
      ( \o ->
          ListBackupOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListBackupOperationsResponse where
  toJSON ListBackupOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | The response for ListBackups.
--
-- /See:/ 'newListBackupsResponse' smart constructor.
data ListBackupsResponse = ListBackupsResponse
  { -- | The list of matching backups. Backups returned are ordered by @create_time@ in descending order, starting from the most recent @create_time@.
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
            Core.<$> (o Core..:? "backups" Core..!= Core.mempty)
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

-- | The response for ListDatabaseOperations.
--
-- /See:/ 'newListDatabaseOperationsResponse' smart constructor.
data ListDatabaseOperationsResponse = ListDatabaseOperationsResponse
  { -- | @next_page_token@ can be sent in a subsequent ListDatabaseOperations call to fetch more of the matching metadata.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of matching database long-running operations. Each operation\'s name will be prefixed by the database\'s name. The operation\'s metadata field type @metadata.type_url@ describes the type of the metadata.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDatabaseOperationsResponse' with the minimum fields required to make a request.
newListDatabaseOperationsResponse ::
  ListDatabaseOperationsResponse
newListDatabaseOperationsResponse =
  ListDatabaseOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListDatabaseOperationsResponse where
  parseJSON =
    Core.withObject
      "ListDatabaseOperationsResponse"
      ( \o ->
          ListDatabaseOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListDatabaseOperationsResponse where
  toJSON ListDatabaseOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | The response for ListDatabases.
--
-- /See:/ 'newListDatabasesResponse' smart constructor.
data ListDatabasesResponse = ListDatabasesResponse
  { -- | Databases that matched the request.
    databases :: (Core.Maybe [Database]),
    -- | @next_page_token@ can be sent in a subsequent ListDatabases call to fetch more of the matching databases.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDatabasesResponse' with the minimum fields required to make a request.
newListDatabasesResponse ::
  ListDatabasesResponse
newListDatabasesResponse =
  ListDatabasesResponse {databases = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListDatabasesResponse where
  parseJSON =
    Core.withObject
      "ListDatabasesResponse"
      ( \o ->
          ListDatabasesResponse
            Core.<$> (o Core..:? "databases" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDatabasesResponse where
  toJSON ListDatabasesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("databases" Core..=) Core.<$> databases,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response for ListInstanceConfigs.
--
-- /See:/ 'newListInstanceConfigsResponse' smart constructor.
data ListInstanceConfigsResponse = ListInstanceConfigsResponse
  { -- | The list of requested instance configurations.
    instanceConfigs :: (Core.Maybe [InstanceConfig]),
    -- | @next_page_token@ can be sent in a subsequent ListInstanceConfigs call to fetch more of the matching instance configurations.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInstanceConfigsResponse' with the minimum fields required to make a request.
newListInstanceConfigsResponse ::
  ListInstanceConfigsResponse
newListInstanceConfigsResponse =
  ListInstanceConfigsResponse
    { instanceConfigs = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListInstanceConfigsResponse where
  parseJSON =
    Core.withObject
      "ListInstanceConfigsResponse"
      ( \o ->
          ListInstanceConfigsResponse
            Core.<$> (o Core..:? "instanceConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListInstanceConfigsResponse where
  toJSON ListInstanceConfigsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("instanceConfigs" Core..=)
              Core.<$> instanceConfigs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response for ListInstances.
--
-- /See:/ 'newListInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse
  { -- | The list of requested instances.
    instances :: (Core.Maybe [Instance]),
    -- | @next_page_token@ can be sent in a subsequent ListInstances call to fetch more of the matching instances.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of unreachable instances. It includes the names of instances whose metadata could not be retrieved within instance_deadline.
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
            Core.<$> (o Core..:? "instances" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable" Core..!= Core.mempty)
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
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | Response method from the ListScans method.
--
-- /See:/ 'newListScansResponse' smart constructor.
data ListScansResponse = ListScansResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Available scans based on the list query parameters.
    scans :: (Core.Maybe [Scan])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListScansResponse' with the minimum fields required to make a request.
newListScansResponse ::
  ListScansResponse
newListScansResponse =
  ListScansResponse {nextPageToken = Core.Nothing, scans = Core.Nothing}

instance Core.FromJSON ListScansResponse where
  parseJSON =
    Core.withObject
      "ListScansResponse"
      ( \o ->
          ListScansResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "scans" Core..!= Core.mempty)
      )

instance Core.ToJSON ListScansResponse where
  toJSON ListScansResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("scans" Core..=) Core.<$> scans
          ]
      )

-- | The response for ListSessions.
--
-- /See:/ 'newListSessionsResponse' smart constructor.
data ListSessionsResponse = ListSessionsResponse
  { -- | @next_page_token@ can be sent in a subsequent ListSessions call to fetch more of the matching sessions.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of requested sessions.
    sessions :: (Core.Maybe [Session])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSessionsResponse' with the minimum fields required to make a request.
newListSessionsResponse ::
  ListSessionsResponse
newListSessionsResponse =
  ListSessionsResponse {nextPageToken = Core.Nothing, sessions = Core.Nothing}

instance Core.FromJSON ListSessionsResponse where
  parseJSON =
    Core.withObject
      "ListSessionsResponse"
      ( \o ->
          ListSessionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sessions" Core..!= Core.mempty)
      )

instance Core.ToJSON ListSessionsResponse where
  toJSON ListSessionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sessions" Core..=) Core.<$> sessions
          ]
      )

-- | A message representing a user-facing string whose value may need to be translated before being displayed.
--
-- /See:/ 'newLocalizedString' smart constructor.
data LocalizedString = LocalizedString
  { -- | A map of arguments used when creating the localized message. Keys represent parameter names which may be used by the localized version when substituting dynamic values.
    args :: (Core.Maybe LocalizedString_Args),
    -- | The canonical English version of this message. If no token is provided or the front-end has no message associated with the token, this text will be displayed as-is.
    message :: (Core.Maybe Core.Text),
    -- | The token identifying the message, e.g. \'METRIC/READ/CPU\'. This should be unique within the service.
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalizedString' with the minimum fields required to make a request.
newLocalizedString ::
  LocalizedString
newLocalizedString =
  LocalizedString
    { args = Core.Nothing,
      message = Core.Nothing,
      token = Core.Nothing
    }

instance Core.FromJSON LocalizedString where
  parseJSON =
    Core.withObject
      "LocalizedString"
      ( \o ->
          LocalizedString
            Core.<$> (o Core..:? "args")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "token")
      )

instance Core.ToJSON LocalizedString where
  toJSON LocalizedString {..} =
    Core.object
      ( Core.catMaybes
          [ ("args" Core..=) Core.<$> args,
            ("message" Core..=) Core.<$> message,
            ("token" Core..=) Core.<$> token
          ]
      )

-- | A map of arguments used when creating the localized message. Keys represent parameter names which may be used by the localized version when substituting dynamic values.
--
-- /See:/ 'newLocalizedString_Args' smart constructor.
newtype LocalizedString_Args = LocalizedString_Args
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalizedString_Args' with the minimum fields required to make a request.
newLocalizedString_Args ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  LocalizedString_Args
newLocalizedString_Args addtional = LocalizedString_Args {addtional = addtional}

instance Core.FromJSON LocalizedString_Args where
  parseJSON =
    Core.withObject
      "LocalizedString_Args"
      ( \o ->
          LocalizedString_Args
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LocalizedString_Args where
  toJSON LocalizedString_Args {..} =
    Core.toJSON addtional

-- | A message representing the actual monitoring data, values for each key bucket over time, of a metric.
--
-- /See:/ 'newMetric' smart constructor.
data Metric = Metric
  { -- | The aggregation function used to aggregate each key bucket
    aggregation :: (Core.Maybe Metric_Aggregation),
    -- | The category of the metric, e.g. \"Activity\", \"Alerts\", \"Reads\", etc.
    category :: (Core.Maybe LocalizedString),
    -- | The references to numerator and denominator metrics for a derived metric.
    derived :: (Core.Maybe DerivedMetric),
    -- | The displayed label of the metric.
    displayLabel :: (Core.Maybe LocalizedString),
    -- | Whether the metric has any non-zero data.
    hasNonzeroData :: (Core.Maybe Core.Bool),
    -- | The value that is considered hot for the metric. On a per metric basis hotness signals high utilization and something that might potentially be a cause for concern by the end user. hot_value is used to calibrate and scale visual color scales.
    hotValue :: (Core.Maybe Core.Double),
    -- | The (sparse) mapping from time index to an IndexedHotKey message, representing those time intervals for which there are hot keys.
    indexedHotKeys :: (Core.Maybe Metric_IndexedHotKeys),
    -- | The (sparse) mapping from time interval index to an IndexedKeyRangeInfos message, representing those time intervals for which there are informational messages concerning key ranges.
    indexedKeyRangeInfos :: (Core.Maybe Metric_IndexedKeyRangeInfos),
    -- | Information about the metric.
    info :: (Core.Maybe LocalizedString),
    -- | The data for the metric as a matrix.
    matrix :: (Core.Maybe MetricMatrix),
    -- | The unit of the metric.
    unit :: (Core.Maybe LocalizedString),
    -- | Whether the metric is visible to the end user.
    visible :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric' with the minimum fields required to make a request.
newMetric ::
  Metric
newMetric =
  Metric
    { aggregation = Core.Nothing,
      category = Core.Nothing,
      derived = Core.Nothing,
      displayLabel = Core.Nothing,
      hasNonzeroData = Core.Nothing,
      hotValue = Core.Nothing,
      indexedHotKeys = Core.Nothing,
      indexedKeyRangeInfos = Core.Nothing,
      info = Core.Nothing,
      matrix = Core.Nothing,
      unit = Core.Nothing,
      visible = Core.Nothing
    }

instance Core.FromJSON Metric where
  parseJSON =
    Core.withObject
      "Metric"
      ( \o ->
          Metric
            Core.<$> (o Core..:? "aggregation")
            Core.<*> (o Core..:? "category")
            Core.<*> (o Core..:? "derived")
            Core.<*> (o Core..:? "displayLabel")
            Core.<*> (o Core..:? "hasNonzeroData")
            Core.<*> (o Core..:? "hotValue")
            Core.<*> (o Core..:? "indexedHotKeys")
            Core.<*> (o Core..:? "indexedKeyRangeInfos")
            Core.<*> (o Core..:? "info")
            Core.<*> (o Core..:? "matrix")
            Core.<*> (o Core..:? "unit")
            Core.<*> (o Core..:? "visible")
      )

instance Core.ToJSON Metric where
  toJSON Metric {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregation" Core..=) Core.<$> aggregation,
            ("category" Core..=) Core.<$> category,
            ("derived" Core..=) Core.<$> derived,
            ("displayLabel" Core..=) Core.<$> displayLabel,
            ("hasNonzeroData" Core..=) Core.<$> hasNonzeroData,
            ("hotValue" Core..=) Core.<$> hotValue,
            ("indexedHotKeys" Core..=) Core.<$> indexedHotKeys,
            ("indexedKeyRangeInfos" Core..=)
              Core.<$> indexedKeyRangeInfos,
            ("info" Core..=) Core.<$> info,
            ("matrix" Core..=) Core.<$> matrix,
            ("unit" Core..=) Core.<$> unit,
            ("visible" Core..=) Core.<$> visible
          ]
      )

-- | The (sparse) mapping from time index to an IndexedHotKey message, representing those time intervals for which there are hot keys.
--
-- /See:/ 'newMetric_IndexedHotKeys' smart constructor.
newtype Metric_IndexedHotKeys = Metric_IndexedHotKeys
  { -- |
    addtional :: (Core.HashMap Core.Text IndexedHotKey)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric_IndexedHotKeys' with the minimum fields required to make a request.
newMetric_IndexedHotKeys ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text IndexedHotKey ->
  Metric_IndexedHotKeys
newMetric_IndexedHotKeys addtional =
  Metric_IndexedHotKeys {addtional = addtional}

instance Core.FromJSON Metric_IndexedHotKeys where
  parseJSON =
    Core.withObject
      "Metric_IndexedHotKeys"
      ( \o ->
          Metric_IndexedHotKeys
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Metric_IndexedHotKeys where
  toJSON Metric_IndexedHotKeys {..} =
    Core.toJSON addtional

-- | The (sparse) mapping from time interval index to an IndexedKeyRangeInfos message, representing those time intervals for which there are informational messages concerning key ranges.
--
-- /See:/ 'newMetric_IndexedKeyRangeInfos' smart constructor.
newtype Metric_IndexedKeyRangeInfos = Metric_IndexedKeyRangeInfos
  { -- |
    addtional :: (Core.HashMap Core.Text IndexedKeyRangeInfos)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric_IndexedKeyRangeInfos' with the minimum fields required to make a request.
newMetric_IndexedKeyRangeInfos ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text IndexedKeyRangeInfos ->
  Metric_IndexedKeyRangeInfos
newMetric_IndexedKeyRangeInfos addtional =
  Metric_IndexedKeyRangeInfos {addtional = addtional}

instance Core.FromJSON Metric_IndexedKeyRangeInfos where
  parseJSON =
    Core.withObject
      "Metric_IndexedKeyRangeInfos"
      ( \o ->
          Metric_IndexedKeyRangeInfos
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Metric_IndexedKeyRangeInfos where
  toJSON Metric_IndexedKeyRangeInfos {..} =
    Core.toJSON addtional

-- | A message representing a matrix of floats.
--
-- /See:/ 'newMetricMatrix' smart constructor.
newtype MetricMatrix = MetricMatrix
  { -- | The rows of the matrix.
    rows :: (Core.Maybe [MetricMatrixRow])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricMatrix' with the minimum fields required to make a request.
newMetricMatrix ::
  MetricMatrix
newMetricMatrix = MetricMatrix {rows = Core.Nothing}

instance Core.FromJSON MetricMatrix where
  parseJSON =
    Core.withObject
      "MetricMatrix"
      ( \o ->
          MetricMatrix
            Core.<$> (o Core..:? "rows" Core..!= Core.mempty)
      )

instance Core.ToJSON MetricMatrix where
  toJSON MetricMatrix {..} =
    Core.object
      (Core.catMaybes [("rows" Core..=) Core.<$> rows])

-- | A message representing a row of a matrix of floats.
--
-- /See:/ 'newMetricMatrixRow' smart constructor.
newtype MetricMatrixRow = MetricMatrixRow
  { -- | The columns of the row.
    cols :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricMatrixRow' with the minimum fields required to make a request.
newMetricMatrixRow ::
  MetricMatrixRow
newMetricMatrixRow = MetricMatrixRow {cols = Core.Nothing}

instance Core.FromJSON MetricMatrixRow where
  parseJSON =
    Core.withObject
      "MetricMatrixRow"
      ( \o ->
          MetricMatrixRow
            Core.<$> (o Core..:? "cols" Core..!= Core.mempty)
      )

instance Core.ToJSON MetricMatrixRow where
  toJSON MetricMatrixRow {..} =
    Core.object
      (Core.catMaybes [("cols" Core..=) Core.<$> cols])

-- | A modification to one or more Cloud Spanner rows. Mutations can be applied to a Cloud Spanner database by sending them in a Commit call.
--
-- /See:/ 'newMutation' smart constructor.
data Mutation = Mutation
  { -- | Delete rows from a table. Succeeds whether or not the named rows were present.
    delete :: (Core.Maybe Delete'),
    -- | Insert new rows in a table. If any of the rows already exist, the write or transaction fails with error @ALREADY_EXISTS@.
    insert :: (Core.Maybe Write),
    -- | Like insert, except that if the row already exists, then its column values are overwritten with the ones provided. Any column values not explicitly written are preserved. When using insert/or/update, just as when using insert, all @NOT NULL@ columns in the table must be given a value. This holds true even when the row already exists and will therefore actually be updated.
    insertOrUpdate :: (Core.Maybe Write),
    -- | Like insert, except that if the row already exists, it is deleted, and the column values provided are inserted instead. Unlike insert/or/update, this means any values not explicitly written become @NULL@. In an interleaved table, if you create the child table with the @ON DELETE CASCADE@ annotation, then replacing a parent row also deletes the child rows. Otherwise, you must delete the child rows before you replace the parent row.
    replace :: (Core.Maybe Write),
    -- | Update existing rows in a table. If any of the rows does not already exist, the transaction fails with error @NOT_FOUND@.
    update :: (Core.Maybe Write)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Mutation' with the minimum fields required to make a request.
newMutation ::
  Mutation
newMutation =
  Mutation
    { delete = Core.Nothing,
      insert = Core.Nothing,
      insertOrUpdate = Core.Nothing,
      replace = Core.Nothing,
      update = Core.Nothing
    }

instance Core.FromJSON Mutation where
  parseJSON =
    Core.withObject
      "Mutation"
      ( \o ->
          Mutation
            Core.<$> (o Core..:? "delete")
            Core.<*> (o Core..:? "insert")
            Core.<*> (o Core..:? "insertOrUpdate")
            Core.<*> (o Core..:? "replace")
            Core.<*> (o Core..:? "update")
      )

instance Core.ToJSON Mutation where
  toJSON Mutation {..} =
    Core.object
      ( Core.catMaybes
          [ ("delete" Core..=) Core.<$> delete,
            ("insert" Core..=) Core.<$> insert,
            ("insertOrUpdate" Core..=) Core.<$> insertOrUpdate,
            ("replace" Core..=) Core.<$> replace,
            ("update" Core..=) Core.<$> update
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
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata addtional = Operation_Metadata {addtional = addtional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON addtional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response addtional = Operation_Response {addtional = addtional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON addtional

-- | Encapsulates progress related information for a Cloud Spanner long running operation.
--
-- /See:/ 'newOperationProgress' smart constructor.
data OperationProgress = OperationProgress
  { -- | If set, the time at which this operation failed or was completed successfully.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Percent completion of the operation. Values are between 0 and 100 inclusive.
    progressPercent :: (Core.Maybe Core.Int32),
    -- | Time the request was received.
    startTime :: (Core.Maybe Core.DateTime')
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

-- | Metadata type for the long-running operation used to track the progress of optimizations performed on a newly restored database. This long-running operation is automatically created by the system after the successful completion of a database restore, and cannot be cancelled.
--
-- /See:/ 'newOptimizeRestoredDatabaseMetadata' smart constructor.
data OptimizeRestoredDatabaseMetadata = OptimizeRestoredDatabaseMetadata
  { -- | Name of the restored database being optimized.
    name :: (Core.Maybe Core.Text),
    -- | The progress of the post-restore optimizations.
    progress :: (Core.Maybe OperationProgress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OptimizeRestoredDatabaseMetadata' with the minimum fields required to make a request.
newOptimizeRestoredDatabaseMetadata ::
  OptimizeRestoredDatabaseMetadata
newOptimizeRestoredDatabaseMetadata =
  OptimizeRestoredDatabaseMetadata
    { name = Core.Nothing,
      progress = Core.Nothing
    }

instance
  Core.FromJSON
    OptimizeRestoredDatabaseMetadata
  where
  parseJSON =
    Core.withObject
      "OptimizeRestoredDatabaseMetadata"
      ( \o ->
          OptimizeRestoredDatabaseMetadata
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "progress")
      )

instance Core.ToJSON OptimizeRestoredDatabaseMetadata where
  toJSON OptimizeRestoredDatabaseMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("progress" Core..=) Core.<$> progress
          ]
      )

-- | Partial results from a streaming read or SQL query. Streaming reads and SQL queries better tolerate large result sets, large rows, and large values, but are a little trickier to consume.
--
-- /See:/ 'newPartialResultSet' smart constructor.
data PartialResultSet = PartialResultSet
  { -- | If true, then the final value in values is chunked, and must be combined with more values from subsequent @PartialResultSet@s to obtain a complete field value.
    chunkedValue :: (Core.Maybe Core.Bool),
    -- | Metadata about the result set, such as row type information. Only present in the first response.
    metadata :: (Core.Maybe ResultSetMetadata),
    -- | Streaming calls might be interrupted for a variety of reasons, such as TCP connection loss. If this occurs, the stream of results can be resumed by re-sending the original request and including @resume_token@. Note that executing any other transaction in the same session invalidates the token.
    resumeToken :: (Core.Maybe Core.Base64),
    -- | Query plan and execution statistics for the statement that produced this streaming result set. These can be requested by setting ExecuteSqlRequest.query_mode and are sent only once with the last response in the stream. This field will also be present in the last response for DML statements.
    stats :: (Core.Maybe ResultSetStats),
    -- | A streamed result set consists of a stream of values, which might be split into many @PartialResultSet@ messages to accommodate large rows and\/or large values. Every N complete values defines a row, where N is equal to the number of entries in metadata.row/type.fields. Most values are encoded based on type as described here. It is possible that the last value in values is \"chunked\", meaning that the rest of the value is sent in subsequent @PartialResultSet@(s). This is denoted by the chunked/value field. Two or more chunked values can be merged to form a complete value as follows: * @bool\/number\/null@: cannot be chunked * @string@: concatenate the strings * @list@: concatenate the lists. If the last element in a list is a @string@, @list@, or @object@, merge it with the first element in the next list by applying these rules recursively. * @object@: concatenate the (field name, field value) pairs. If a field name is duplicated, then apply these rules recursively to merge the field values. Some examples of
    -- merging: # Strings are concatenated. \"foo\", \"bar\" => \"foobar\" # Lists of non-strings are concatenated. [2, 3], [4] => [2, 3, 4] # Lists are concatenated, but the last and first elements are merged # because they are strings. [\"a\", \"b\"], [\"c\", \"d\"] => [\"a\", \"bc\", \"d\"] # Lists are concatenated, but the last and first elements are merged # because they are lists. Recursively, the last and first elements # of the inner lists are merged because they are strings. [\"a\", [\"b\", \"c\"]], [[\"d\"], \"e\"] => [\"a\", [\"b\", \"cd\"], \"e\"] # Non-overlapping object fields are combined. {\"a\": \"1\"}, {\"b\": \"2\"} => {\"a\": \"1\", \"b\": 2\"} # Overlapping object fields are merged. {\"a\": \"1\"}, {\"a\": \"2\"} => {\"a\": \"12\"} # Examples of merging objects containing lists of strings. {\"a\": [\"1\"]}, {\"a\": [\"2\"]} => {\"a\": [\"12\"]} For a more complete example, suppose a streaming SQL query is yielding a result set whose rows contain a single string field. The following
    -- @PartialResultSet@s might be yielded: { \"metadata\": { ... } \"values\": [\"Hello\", \"W\"] \"chunked/value\": true \"resume/token\": \"Af65...\" } { \"values\": [\"orl\"] \"chunked/value\": true \"resume/token\": \"Bqp2...\" } { \"values\": [\"d\"] \"resume_token\": \"Zx1B...\" } This sequence of @PartialResultSet@s encodes two rows, one containing the field value @\"Hello\"@, and a second containing the field value @\"World\" = \"W\" + \"orl\" + \"d\"@.
    values :: (Core.Maybe [Core.Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartialResultSet' with the minimum fields required to make a request.
newPartialResultSet ::
  PartialResultSet
newPartialResultSet =
  PartialResultSet
    { chunkedValue = Core.Nothing,
      metadata = Core.Nothing,
      resumeToken = Core.Nothing,
      stats = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON PartialResultSet where
  parseJSON =
    Core.withObject
      "PartialResultSet"
      ( \o ->
          PartialResultSet
            Core.<$> (o Core..:? "chunkedValue")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "resumeToken")
            Core.<*> (o Core..:? "stats")
            Core.<*> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON PartialResultSet where
  toJSON PartialResultSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("chunkedValue" Core..=) Core.<$> chunkedValue,
            ("metadata" Core..=) Core.<$> metadata,
            ("resumeToken" Core..=) Core.<$> resumeToken,
            ("stats" Core..=) Core.<$> stats,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | Information returned for each partition returned in a PartitionResponse.
--
-- /See:/ 'newPartition' smart constructor.
newtype Partition = Partition
  { -- | This token can be passed to Read, StreamingRead, ExecuteSql, or ExecuteStreamingSql requests to restrict the results to those identified by this partition token.
    partitionToken :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Partition' with the minimum fields required to make a request.
newPartition ::
  Partition
newPartition = Partition {partitionToken = Core.Nothing}

instance Core.FromJSON Partition where
  parseJSON =
    Core.withObject
      "Partition"
      ( \o ->
          Partition Core.<$> (o Core..:? "partitionToken")
      )

instance Core.ToJSON Partition where
  toJSON Partition {..} =
    Core.object
      ( Core.catMaybes
          [("partitionToken" Core..=) Core.<$> partitionToken]
      )

-- | Options for a PartitionQueryRequest and PartitionReadRequest.
--
-- /See:/ 'newPartitionOptions' smart constructor.
data PartitionOptions = PartitionOptions
  { -- | __Note:__ This hint is currently ignored by PartitionQuery and PartitionRead requests. The desired maximum number of partitions to return. For example, this may be set to the number of workers available. The default for this option is currently 10,000. The maximum value is currently 200,000. This is only a hint. The actual number of partitions returned may be smaller or larger than this maximum count request.
    maxPartitions :: (Core.Maybe Core.Int64),
    -- | __Note:__ This hint is currently ignored by PartitionQuery and PartitionRead requests. The desired data size for each partition generated. The default for this option is currently 1 GiB. This is only a hint. The actual size of each partition may be smaller or larger than this size request.
    partitionSizeBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartitionOptions' with the minimum fields required to make a request.
newPartitionOptions ::
  PartitionOptions
newPartitionOptions =
  PartitionOptions
    { maxPartitions = Core.Nothing,
      partitionSizeBytes = Core.Nothing
    }

instance Core.FromJSON PartitionOptions where
  parseJSON =
    Core.withObject
      "PartitionOptions"
      ( \o ->
          PartitionOptions
            Core.<$> (o Core..:? "maxPartitions")
            Core.<*> (o Core..:? "partitionSizeBytes")
      )

instance Core.ToJSON PartitionOptions where
  toJSON PartitionOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxPartitions" Core..=) Core.. Core.AsText
              Core.<$> maxPartitions,
            ("partitionSizeBytes" Core..=) Core.. Core.AsText
              Core.<$> partitionSizeBytes
          ]
      )

-- | The request for PartitionQuery
--
-- /See:/ 'newPartitionQueryRequest' smart constructor.
data PartitionQueryRequest = PartitionQueryRequest
  { -- | It is not always possible for Cloud Spanner to infer the right SQL type from a JSON value. For example, values of type @BYTES@ and values of type @STRING@ both appear in params as JSON strings. In these cases, @param_types@ can be used to specify the exact SQL type for some or all of the SQL query parameters. See the definition of Type for more information about SQL types.
    paramTypes :: (Core.Maybe PartitionQueryRequest_ParamTypes),
    -- | Parameter names and values that bind to placeholders in the SQL string. A parameter placeholder consists of the @\@@ character followed by the parameter name (for example, @\@firstName@). Parameter names can contain letters, numbers, and underscores. Parameters can appear anywhere that a literal value is expected. The same parameter name can be used more than once, for example: @\"WHERE id > \@msg_id AND id \< \@msg_id + 100\"@ It is an error to execute a SQL statement with unbound parameters.
    params :: (Core.Maybe PartitionQueryRequest_Params),
    -- | Additional options that affect how many partitions are created.
    partitionOptions :: (Core.Maybe PartitionOptions),
    -- | Required. The query request to generate partitions for. The request will fail if the query is not root partitionable. The query plan of a root partitionable query has a single distributed union operator. A distributed union operator conceptually divides one or more tables into multiple splits, remotely evaluates a subquery independently on each split, and then unions all results. This must not contain DML commands, such as INSERT, UPDATE, or DELETE. Use ExecuteStreamingSql with a PartitionedDml transaction for large, partition-friendly DML operations.
    sql :: (Core.Maybe Core.Text),
    -- | Read only snapshot transactions are supported, read\/write and single use transactions are not.
    transaction :: (Core.Maybe TransactionSelector)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartitionQueryRequest' with the minimum fields required to make a request.
newPartitionQueryRequest ::
  PartitionQueryRequest
newPartitionQueryRequest =
  PartitionQueryRequest
    { paramTypes = Core.Nothing,
      params = Core.Nothing,
      partitionOptions = Core.Nothing,
      sql = Core.Nothing,
      transaction = Core.Nothing
    }

instance Core.FromJSON PartitionQueryRequest where
  parseJSON =
    Core.withObject
      "PartitionQueryRequest"
      ( \o ->
          PartitionQueryRequest
            Core.<$> (o Core..:? "paramTypes")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "partitionOptions")
            Core.<*> (o Core..:? "sql")
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON PartitionQueryRequest where
  toJSON PartitionQueryRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("paramTypes" Core..=) Core.<$> paramTypes,
            ("params" Core..=) Core.<$> params,
            ("partitionOptions" Core..=)
              Core.<$> partitionOptions,
            ("sql" Core..=) Core.<$> sql,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

-- | It is not always possible for Cloud Spanner to infer the right SQL type from a JSON value. For example, values of type @BYTES@ and values of type @STRING@ both appear in params as JSON strings. In these cases, @param_types@ can be used to specify the exact SQL type for some or all of the SQL query parameters. See the definition of Type for more information about SQL types.
--
-- /See:/ 'newPartitionQueryRequest_ParamTypes' smart constructor.
newtype PartitionQueryRequest_ParamTypes = PartitionQueryRequest_ParamTypes
  { -- |
    addtional :: (Core.HashMap Core.Text Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartitionQueryRequest_ParamTypes' with the minimum fields required to make a request.
newPartitionQueryRequest_ParamTypes ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Type ->
  PartitionQueryRequest_ParamTypes
newPartitionQueryRequest_ParamTypes addtional =
  PartitionQueryRequest_ParamTypes {addtional = addtional}

instance
  Core.FromJSON
    PartitionQueryRequest_ParamTypes
  where
  parseJSON =
    Core.withObject
      "PartitionQueryRequest_ParamTypes"
      ( \o ->
          PartitionQueryRequest_ParamTypes
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PartitionQueryRequest_ParamTypes where
  toJSON PartitionQueryRequest_ParamTypes {..} =
    Core.toJSON addtional

-- | Parameter names and values that bind to placeholders in the SQL string. A parameter placeholder consists of the @\@@ character followed by the parameter name (for example, @\@firstName@). Parameter names can contain letters, numbers, and underscores. Parameters can appear anywhere that a literal value is expected. The same parameter name can be used more than once, for example: @\"WHERE id > \@msg_id AND id \< \@msg_id + 100\"@ It is an error to execute a SQL statement with unbound parameters.
--
-- /See:/ 'newPartitionQueryRequest_Params' smart constructor.
newtype PartitionQueryRequest_Params = PartitionQueryRequest_Params
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartitionQueryRequest_Params' with the minimum fields required to make a request.
newPartitionQueryRequest_Params ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  PartitionQueryRequest_Params
newPartitionQueryRequest_Params addtional =
  PartitionQueryRequest_Params {addtional = addtional}

instance Core.FromJSON PartitionQueryRequest_Params where
  parseJSON =
    Core.withObject
      "PartitionQueryRequest_Params"
      ( \o ->
          PartitionQueryRequest_Params
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PartitionQueryRequest_Params where
  toJSON PartitionQueryRequest_Params {..} =
    Core.toJSON addtional

-- | The request for PartitionRead
--
-- /See:/ 'newPartitionReadRequest' smart constructor.
data PartitionReadRequest = PartitionReadRequest
  { -- | The columns of table to be returned for each row matching this request.
    columns :: (Core.Maybe [Core.Text]),
    -- | If non-empty, the name of an index on table. This index is used instead of the table primary key when interpreting key/set and sorting result rows. See key/set for further information.
    index :: (Core.Maybe Core.Text),
    -- | Required. @key_set@ identifies the rows to be yielded. @key_set@ names the primary keys of the rows in table to be yielded, unless index is present. If index is present, then key_set instead names index keys in index. It is not an error for the @key_set@ to name rows that do not exist in the database. Read yields nothing for nonexistent rows.
    keySet :: (Core.Maybe KeySet),
    -- | Additional options that affect how many partitions are created.
    partitionOptions :: (Core.Maybe PartitionOptions),
    -- | Required. The name of the table in the database to be read.
    table :: (Core.Maybe Core.Text),
    -- | Read only snapshot transactions are supported, read\/write and single use transactions are not.
    transaction :: (Core.Maybe TransactionSelector)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartitionReadRequest' with the minimum fields required to make a request.
newPartitionReadRequest ::
  PartitionReadRequest
newPartitionReadRequest =
  PartitionReadRequest
    { columns = Core.Nothing,
      index = Core.Nothing,
      keySet = Core.Nothing,
      partitionOptions = Core.Nothing,
      table = Core.Nothing,
      transaction = Core.Nothing
    }

instance Core.FromJSON PartitionReadRequest where
  parseJSON =
    Core.withObject
      "PartitionReadRequest"
      ( \o ->
          PartitionReadRequest
            Core.<$> (o Core..:? "columns" Core..!= Core.mempty)
            Core.<*> (o Core..:? "index")
            Core.<*> (o Core..:? "keySet")
            Core.<*> (o Core..:? "partitionOptions")
            Core.<*> (o Core..:? "table")
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON PartitionReadRequest where
  toJSON PartitionReadRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("index" Core..=) Core.<$> index,
            ("keySet" Core..=) Core.<$> keySet,
            ("partitionOptions" Core..=)
              Core.<$> partitionOptions,
            ("table" Core..=) Core.<$> table,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

-- | The response for PartitionQuery or PartitionRead
--
-- /See:/ 'newPartitionResponse' smart constructor.
data PartitionResponse = PartitionResponse
  { -- | Partitions created by this request.
    partitions :: (Core.Maybe [Partition]),
    -- | Transaction created by this request.
    transaction :: (Core.Maybe Transaction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartitionResponse' with the minimum fields required to make a request.
newPartitionResponse ::
  PartitionResponse
newPartitionResponse =
  PartitionResponse {partitions = Core.Nothing, transaction = Core.Nothing}

instance Core.FromJSON PartitionResponse where
  parseJSON =
    Core.withObject
      "PartitionResponse"
      ( \o ->
          PartitionResponse
            Core.<$> (o Core..:? "partitions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON PartitionResponse where
  toJSON PartitionResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("partitions" Core..=) Core.<$> partitions,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

-- | Message type to initiate a Partitioned DML transaction.
--
-- /See:/ 'newPartitionedDml' smart constructor.
data PartitionedDml = PartitionedDml
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartitionedDml' with the minimum fields required to make a request.
newPartitionedDml ::
  PartitionedDml
newPartitionedDml = PartitionedDml

instance Core.FromJSON PartitionedDml where
  parseJSON =
    Core.withObject
      "PartitionedDml"
      (\o -> Core.pure PartitionedDml)

instance Core.ToJSON PartitionedDml where
  toJSON = Core.const Core.emptyObject

-- | Node information for nodes appearing in a QueryPlan.plan_nodes.
--
-- /See:/ 'newPlanNode' smart constructor.
data PlanNode = PlanNode
  { -- | List of child node @index@es and their relationship to this parent.
    childLinks :: (Core.Maybe [ChildLink]),
    -- | The display name for the node.
    displayName :: (Core.Maybe Core.Text),
    -- | The execution statistics associated with the node, contained in a group of key-value pairs. Only present if the plan was returned as a result of a profile query. For example, number of executions, number of rows\/time per execution etc.
    executionStats :: (Core.Maybe PlanNode_ExecutionStats),
    -- | The @PlanNode@\'s index in node list.
    index :: (Core.Maybe Core.Int32),
    -- | Used to determine the type of node. May be needed for visualizing different kinds of nodes differently. For example, If the node is a SCALAR node, it will have a condensed representation which can be used to directly embed a description of the node in its parent.
    kind :: (Core.Maybe PlanNode_Kind),
    -- | Attributes relevant to the node contained in a group of key-value pairs. For example, a Parameter Reference node could have the following information in its metadata: { \"parameter/reference\": \"param1\", \"parameter/type\": \"array\" }
    metadata :: (Core.Maybe PlanNode_Metadata),
    -- | Condensed representation for SCALAR nodes.
    shortRepresentation :: (Core.Maybe ShortRepresentation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlanNode' with the minimum fields required to make a request.
newPlanNode ::
  PlanNode
newPlanNode =
  PlanNode
    { childLinks = Core.Nothing,
      displayName = Core.Nothing,
      executionStats = Core.Nothing,
      index = Core.Nothing,
      kind = Core.Nothing,
      metadata = Core.Nothing,
      shortRepresentation = Core.Nothing
    }

instance Core.FromJSON PlanNode where
  parseJSON =
    Core.withObject
      "PlanNode"
      ( \o ->
          PlanNode
            Core.<$> (o Core..:? "childLinks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "executionStats")
            Core.<*> (o Core..:? "index")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "shortRepresentation")
      )

instance Core.ToJSON PlanNode where
  toJSON PlanNode {..} =
    Core.object
      ( Core.catMaybes
          [ ("childLinks" Core..=) Core.<$> childLinks,
            ("displayName" Core..=) Core.<$> displayName,
            ("executionStats" Core..=) Core.<$> executionStats,
            ("index" Core..=) Core.<$> index,
            ("kind" Core..=) Core.<$> kind,
            ("metadata" Core..=) Core.<$> metadata,
            ("shortRepresentation" Core..=)
              Core.<$> shortRepresentation
          ]
      )

-- | The execution statistics associated with the node, contained in a group of key-value pairs. Only present if the plan was returned as a result of a profile query. For example, number of executions, number of rows\/time per execution etc.
--
-- /See:/ 'newPlanNode_ExecutionStats' smart constructor.
newtype PlanNode_ExecutionStats = PlanNode_ExecutionStats
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlanNode_ExecutionStats' with the minimum fields required to make a request.
newPlanNode_ExecutionStats ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  PlanNode_ExecutionStats
newPlanNode_ExecutionStats addtional =
  PlanNode_ExecutionStats {addtional = addtional}

instance Core.FromJSON PlanNode_ExecutionStats where
  parseJSON =
    Core.withObject
      "PlanNode_ExecutionStats"
      ( \o ->
          PlanNode_ExecutionStats
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PlanNode_ExecutionStats where
  toJSON PlanNode_ExecutionStats {..} =
    Core.toJSON addtional

-- | Attributes relevant to the node contained in a group of key-value pairs. For example, a Parameter Reference node could have the following information in its metadata: { \"parameter/reference\": \"param1\", \"parameter/type\": \"array\" }
--
-- /See:/ 'newPlanNode_Metadata' smart constructor.
newtype PlanNode_Metadata = PlanNode_Metadata
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlanNode_Metadata' with the minimum fields required to make a request.
newPlanNode_Metadata ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  PlanNode_Metadata
newPlanNode_Metadata addtional = PlanNode_Metadata {addtional = addtional}

instance Core.FromJSON PlanNode_Metadata where
  parseJSON =
    Core.withObject
      "PlanNode_Metadata"
      ( \o ->
          PlanNode_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PlanNode_Metadata where
  toJSON PlanNode_Metadata {..} = Core.toJSON addtional

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
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
  Policy {bindings = Core.Nothing, etag = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "bindings" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | A message representing a key prefix node in the key prefix hierarchy. for eg. Bigtable keyspaces are lexicographically ordered mappings of keys to values. Keys often have a shared prefix structure where users use the keys to organize data. Eg \/\/\/employee In this case Keysight will possibly use one node for a company and reuse it for all employees that fall under the company. Doing so improves legibility in the UI.
--
-- /See:/ 'newPrefixNode' smart constructor.
data PrefixNode = PrefixNode
  { -- | Whether this corresponds to a data_source name.
    dataSourceNode :: (Core.Maybe Core.Bool),
    -- | The depth in the prefix hierarchy.
    depth :: (Core.Maybe Core.Int32),
    -- | The index of the end key bucket of the range that this node spans.
    endIndex :: (Core.Maybe Core.Int32),
    -- | The index of the start key bucket of the range that this node spans.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The string represented by the prefix node.
    word :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrefixNode' with the minimum fields required to make a request.
newPrefixNode ::
  PrefixNode
newPrefixNode =
  PrefixNode
    { dataSourceNode = Core.Nothing,
      depth = Core.Nothing,
      endIndex = Core.Nothing,
      startIndex = Core.Nothing,
      word = Core.Nothing
    }

instance Core.FromJSON PrefixNode where
  parseJSON =
    Core.withObject
      "PrefixNode"
      ( \o ->
          PrefixNode
            Core.<$> (o Core..:? "dataSourceNode")
            Core.<*> (o Core..:? "depth")
            Core.<*> (o Core..:? "endIndex")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "word")
      )

instance Core.ToJSON PrefixNode where
  toJSON PrefixNode {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceNode" Core..=) Core.<$> dataSourceNode,
            ("depth" Core..=) Core.<$> depth,
            ("endIndex" Core..=) Core.<$> endIndex,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("word" Core..=) Core.<$> word
          ]
      )

-- | Query optimizer configuration.
--
-- /See:/ 'newQueryOptions' smart constructor.
data QueryOptions = QueryOptions
  { -- | An option to control the selection of optimizer statistics package. This parameter allows individual queries to use a different query optimizer statistics package. Specifying @latest@ as a value instructs Cloud Spanner to use the latest generated statistics package. If not specified, Cloud Spanner uses the statistics package set at the database level options, or the latest package if the database option is not set. The statistics package requested by the query has to be exempt from garbage collection. This can be achieved with the following DDL statement: @ALTER STATISTICS SET OPTIONS (allow_gc=false)@ The list of available statistics packages can be queried from @INFORMATION_SCHEMA.SPANNER_STATISTICS@. Executing a SQL statement with an invalid optimizer statistics package or with a statistics package that allows garbage collection fails with an @INVALID_ARGUMENT@ error.
    optimizerStatisticsPackage :: (Core.Maybe Core.Text),
    -- | An option to control the selection of optimizer version. This parameter allows individual queries to pick different query optimizer versions. Specifying @latest@ as a value instructs Cloud Spanner to use the latest supported query optimizer version. If not specified, Cloud Spanner uses the optimizer version set at the database level options. Any other positive integer (from the list of supported optimizer versions) overrides the default optimizer version for query execution. The list of supported optimizer versions can be queried from SPANNER/SYS.SUPPORTED/OPTIMIZER_VERSIONS. Executing a SQL statement with an invalid optimizer version fails with an @INVALID_ARGUMENT@ error. See https:\/\/cloud.google.com\/spanner\/docs\/query-optimizer\/manage-query-optimizer for more information on managing the query optimizer. The @optimizer_version@ statement hint has precedence over this setting.
    optimizerVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryOptions' with the minimum fields required to make a request.
newQueryOptions ::
  QueryOptions
newQueryOptions =
  QueryOptions
    { optimizerStatisticsPackage = Core.Nothing,
      optimizerVersion = Core.Nothing
    }

instance Core.FromJSON QueryOptions where
  parseJSON =
    Core.withObject
      "QueryOptions"
      ( \o ->
          QueryOptions
            Core.<$> (o Core..:? "optimizerStatisticsPackage")
            Core.<*> (o Core..:? "optimizerVersion")
      )

instance Core.ToJSON QueryOptions where
  toJSON QueryOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("optimizerStatisticsPackage" Core..=)
              Core.<$> optimizerStatisticsPackage,
            ("optimizerVersion" Core..=)
              Core.<$> optimizerVersion
          ]
      )

-- | Contains an ordered list of nodes appearing in the query plan.
--
-- /See:/ 'newQueryPlan' smart constructor.
newtype QueryPlan = QueryPlan
  { -- | The nodes in the query plan. Plan nodes are returned in pre-order starting with the plan root. Each PlanNode\'s @id@ corresponds to its index in @plan_nodes@.
    planNodes :: (Core.Maybe [PlanNode])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryPlan' with the minimum fields required to make a request.
newQueryPlan ::
  QueryPlan
newQueryPlan = QueryPlan {planNodes = Core.Nothing}

instance Core.FromJSON QueryPlan where
  parseJSON =
    Core.withObject
      "QueryPlan"
      ( \o ->
          QueryPlan
            Core.<$> (o Core..:? "planNodes" Core..!= Core.mempty)
      )

instance Core.ToJSON QueryPlan where
  toJSON QueryPlan {..} =
    Core.object
      ( Core.catMaybes
          [("planNodes" Core..=) Core.<$> planNodes]
      )

-- | Message type to initiate a read-only transaction.
--
-- /See:/ 'newReadOnly' smart constructor.
data ReadOnly = ReadOnly
  { -- | Executes all reads at a timestamp that is @exact_staleness@ old. The timestamp is chosen soon after the read is started. Guarantees that all writes that have committed more than the specified number of seconds ago are visible. Because Cloud Spanner chooses the exact timestamp, this mode works even if the client\'s local clock is substantially skewed from Cloud Spanner commit timestamps. Useful for reading at nearby replicas without the distributed timestamp negotiation overhead of @max_staleness@.
    exactStaleness :: (Core.Maybe Core.GDuration),
    -- | Read data at a timestamp >= @NOW - max_staleness@ seconds. Guarantees that all writes that have committed more than the specified number of seconds ago are visible. Because Cloud Spanner chooses the exact timestamp, this mode works even if the client\'s local clock is substantially skewed from Cloud Spanner commit timestamps. Useful for reading the freshest data available at a nearby replica, while bounding the possible staleness if the local replica has fallen behind. Note that this option can only be used in single-use transactions.
    maxStaleness :: (Core.Maybe Core.GDuration),
    -- | Executes all reads at a timestamp >= @min_read_timestamp@. This is useful for requesting fresher data than some previous read, or data that is fresh enough to observe the effects of some previously committed transaction whose timestamp is known. Note that this option can only be used in single-use transactions. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds. Example: @\"2014-10-02T15:01:23.045123456Z\"@.
    minReadTimestamp :: (Core.Maybe Core.DateTime'),
    -- | Executes all reads at the given timestamp. Unlike other modes, reads at a specific timestamp are repeatable; the same read at the same timestamp always returns the same data. If the timestamp is in the future, the read will block until the specified timestamp, modulo the read\'s deadline. Useful for large scale consistent reads such as mapreduces, or for coordinating many reads against a consistent snapshot of the data. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds. Example: @\"2014-10-02T15:01:23.045123456Z\"@.
    readTimestamp :: (Core.Maybe Core.DateTime'),
    -- | If true, the Cloud Spanner-selected read timestamp is included in the Transaction message that describes the transaction.
    returnReadTimestamp :: (Core.Maybe Core.Bool),
    -- | Read at a timestamp where all previously committed transactions are visible.
    strong :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadOnly' with the minimum fields required to make a request.
newReadOnly ::
  ReadOnly
newReadOnly =
  ReadOnly
    { exactStaleness = Core.Nothing,
      maxStaleness = Core.Nothing,
      minReadTimestamp = Core.Nothing,
      readTimestamp = Core.Nothing,
      returnReadTimestamp = Core.Nothing,
      strong = Core.Nothing
    }

instance Core.FromJSON ReadOnly where
  parseJSON =
    Core.withObject
      "ReadOnly"
      ( \o ->
          ReadOnly
            Core.<$> (o Core..:? "exactStaleness")
            Core.<*> (o Core..:? "maxStaleness")
            Core.<*> (o Core..:? "minReadTimestamp")
            Core.<*> (o Core..:? "readTimestamp")
            Core.<*> (o Core..:? "returnReadTimestamp")
            Core.<*> (o Core..:? "strong")
      )

instance Core.ToJSON ReadOnly where
  toJSON ReadOnly {..} =
    Core.object
      ( Core.catMaybes
          [ ("exactStaleness" Core..=) Core.<$> exactStaleness,
            ("maxStaleness" Core..=) Core.<$> maxStaleness,
            ("minReadTimestamp" Core..=)
              Core.<$> minReadTimestamp,
            ("readTimestamp" Core..=) Core.<$> readTimestamp,
            ("returnReadTimestamp" Core..=)
              Core.<$> returnReadTimestamp,
            ("strong" Core..=) Core.<$> strong
          ]
      )

-- | The request for Read and StreamingRead.
--
-- /See:/ 'newReadRequest' smart constructor.
data ReadRequest = ReadRequest
  { -- | Required. The columns of table to be returned for each row matching this request.
    columns :: (Core.Maybe [Core.Text]),
    -- | If non-empty, the name of an index on table. This index is used instead of the table primary key when interpreting key/set and sorting result rows. See key/set for further information.
    index :: (Core.Maybe Core.Text),
    -- | Required. @key_set@ identifies the rows to be yielded. @key_set@ names the primary keys of the rows in table to be yielded, unless index is present. If index is present, then key/set instead names index keys in index. If the partition/token field is empty, rows are yielded in table primary key order (if index is empty) or index key order (if index is non-empty). If the partition_token field is not empty, rows will be yielded in an unspecified order. It is not an error for the @key_set@ to name rows that do not exist in the database. Read yields nothing for nonexistent rows.
    keySet :: (Core.Maybe KeySet),
    -- | If greater than zero, only the first @limit@ rows are yielded. If @limit@ is zero, the default is no limit. A limit cannot be specified if @partition_token@ is set.
    limit :: (Core.Maybe Core.Int64),
    -- | If present, results will be restricted to the specified partition previously created using PartitionRead(). There must be an exact match for the values of fields common to this message and the PartitionReadRequest message used to create this partition_token.
    partitionToken :: (Core.Maybe Core.Base64),
    -- | Common options for this request.
    requestOptions :: (Core.Maybe RequestOptions),
    -- | If this request is resuming a previously interrupted read, @resume_token@ should be copied from the last PartialResultSet yielded before the interruption. Doing this enables the new read to resume where the last read left off. The rest of the request parameters must exactly match the request that yielded this token.
    resumeToken :: (Core.Maybe Core.Base64),
    -- | Required. The name of the table in the database to be read.
    table :: (Core.Maybe Core.Text),
    -- | The transaction to use. If none is provided, the default is a temporary read-only transaction with strong concurrency.
    transaction :: (Core.Maybe TransactionSelector)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadRequest' with the minimum fields required to make a request.
newReadRequest ::
  ReadRequest
newReadRequest =
  ReadRequest
    { columns = Core.Nothing,
      index = Core.Nothing,
      keySet = Core.Nothing,
      limit = Core.Nothing,
      partitionToken = Core.Nothing,
      requestOptions = Core.Nothing,
      resumeToken = Core.Nothing,
      table = Core.Nothing,
      transaction = Core.Nothing
    }

instance Core.FromJSON ReadRequest where
  parseJSON =
    Core.withObject
      "ReadRequest"
      ( \o ->
          ReadRequest
            Core.<$> (o Core..:? "columns" Core..!= Core.mempty)
            Core.<*> (o Core..:? "index")
            Core.<*> (o Core..:? "keySet")
            Core.<*> (o Core..:? "limit")
            Core.<*> (o Core..:? "partitionToken")
            Core.<*> (o Core..:? "requestOptions")
            Core.<*> (o Core..:? "resumeToken")
            Core.<*> (o Core..:? "table")
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON ReadRequest where
  toJSON ReadRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("index" Core..=) Core.<$> index,
            ("keySet" Core..=) Core.<$> keySet,
            ("limit" Core..=) Core.. Core.AsText Core.<$> limit,
            ("partitionToken" Core..=) Core.<$> partitionToken,
            ("requestOptions" Core..=) Core.<$> requestOptions,
            ("resumeToken" Core..=) Core.<$> resumeToken,
            ("table" Core..=) Core.<$> table,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

-- | Message type to initiate a read-write transaction. Currently this transaction type has no options.
--
-- /See:/ 'newReadWrite' smart constructor.
data ReadWrite = ReadWrite
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadWrite' with the minimum fields required to make a request.
newReadWrite ::
  ReadWrite
newReadWrite = ReadWrite

instance Core.FromJSON ReadWrite where
  parseJSON =
    Core.withObject
      "ReadWrite"
      (\o -> Core.pure ReadWrite)

instance Core.ToJSON ReadWrite where
  toJSON = Core.const Core.emptyObject

--
-- /See:/ 'newReplicaInfo' smart constructor.
data ReplicaInfo = ReplicaInfo
  { -- | If true, this location is designated as the default leader location where leader replicas are placed. See the <https://cloud.google.com/spanner/docs/instances#region_types region types documentation> for more details.
    defaultLeaderLocation :: (Core.Maybe Core.Bool),
    -- | The location of the serving resources, e.g. \"us-central1\".
    location :: (Core.Maybe Core.Text),
    -- | The type of replica.
    type' :: (Core.Maybe ReplicaInfo_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaInfo' with the minimum fields required to make a request.
newReplicaInfo ::
  ReplicaInfo
newReplicaInfo =
  ReplicaInfo
    { defaultLeaderLocation = Core.Nothing,
      location = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ReplicaInfo where
  parseJSON =
    Core.withObject
      "ReplicaInfo"
      ( \o ->
          ReplicaInfo
            Core.<$> (o Core..:? "defaultLeaderLocation")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ReplicaInfo where
  toJSON ReplicaInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultLeaderLocation" Core..=)
              Core.<$> defaultLeaderLocation,
            ("location" Core..=) Core.<$> location,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Common request options for various APIs.
--
-- /See:/ 'newRequestOptions' smart constructor.
data RequestOptions = RequestOptions
  { -- | Priority for the request.
    priority :: (Core.Maybe RequestOptions_Priority),
    -- | A per-request tag which can be applied to queries or reads, used for statistics collection. Both request/tag and transaction/tag can be specified for a read or query that belongs to a transaction. This field is ignored for requests where it\'s not applicable (e.g. CommitRequest). Legal characters for @request_tag@ values are all printable characters (ASCII 32 - 126) and the length of a request/tag is limited to 50 characters. Values that exceed this limit are truncated. Any leading underscore (/) characters will be removed from the string.
    requestTag :: (Core.Maybe Core.Text),
    -- | A tag used for statistics collection about this transaction. Both request/tag and transaction/tag can be specified for a read or query that belongs to a transaction. The value of transaction/tag should be the same for all requests belonging to the same transaction. If this request doesn\'t belong to any transaction, transaction/tag will be ignored. Legal characters for @transaction_tag@ values are all printable characters (ASCII 32 - 126) and the length of a transaction/tag is limited to 50 characters. Values that exceed this limit are truncated. Any leading underscore (/) characters will be removed from the string.
    transactionTag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestOptions' with the minimum fields required to make a request.
newRequestOptions ::
  RequestOptions
newRequestOptions =
  RequestOptions
    { priority = Core.Nothing,
      requestTag = Core.Nothing,
      transactionTag = Core.Nothing
    }

instance Core.FromJSON RequestOptions where
  parseJSON =
    Core.withObject
      "RequestOptions"
      ( \o ->
          RequestOptions
            Core.<$> (o Core..:? "priority")
            Core.<*> (o Core..:? "requestTag")
            Core.<*> (o Core..:? "transactionTag")
      )

instance Core.ToJSON RequestOptions where
  toJSON RequestOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("priority" Core..=) Core.<$> priority,
            ("requestTag" Core..=) Core.<$> requestTag,
            ("transactionTag" Core..=) Core.<$> transactionTag
          ]
      )

-- | Encryption configuration for the restored database.
--
-- /See:/ 'newRestoreDatabaseEncryptionConfig' smart constructor.
data RestoreDatabaseEncryptionConfig = RestoreDatabaseEncryptionConfig
  { -- | Required. The encryption type of the restored database.
    encryptionType :: (Core.Maybe RestoreDatabaseEncryptionConfig_EncryptionType),
    -- | Optional. The Cloud KMS key that will be used to encrypt\/decrypt the restored database. This field should be set only when encryption_type is @CUSTOMER_MANAGED_ENCRYPTION@. Values are of the form @projects\/\/locations\/\/keyRings\/\/cryptoKeys\/@.
    kmsKeyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreDatabaseEncryptionConfig' with the minimum fields required to make a request.
newRestoreDatabaseEncryptionConfig ::
  RestoreDatabaseEncryptionConfig
newRestoreDatabaseEncryptionConfig =
  RestoreDatabaseEncryptionConfig
    { encryptionType = Core.Nothing,
      kmsKeyName = Core.Nothing
    }

instance
  Core.FromJSON
    RestoreDatabaseEncryptionConfig
  where
  parseJSON =
    Core.withObject
      "RestoreDatabaseEncryptionConfig"
      ( \o ->
          RestoreDatabaseEncryptionConfig
            Core.<$> (o Core..:? "encryptionType")
            Core.<*> (o Core..:? "kmsKeyName")
      )

instance Core.ToJSON RestoreDatabaseEncryptionConfig where
  toJSON RestoreDatabaseEncryptionConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("encryptionType" Core..=) Core.<$> encryptionType,
            ("kmsKeyName" Core..=) Core.<$> kmsKeyName
          ]
      )

-- | Metadata type for the long-running operation returned by RestoreDatabase.
--
-- /See:/ 'newRestoreDatabaseMetadata' smart constructor.
data RestoreDatabaseMetadata = RestoreDatabaseMetadata
  { -- | Information about the backup used to restore the database.
    backupInfo :: (Core.Maybe BackupInfo),
    -- | The time at which cancellation of this operation was received. Operations.CancelOperation starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    cancelTime :: (Core.Maybe Core.DateTime'),
    -- | Name of the database being created and restored to.
    name :: (Core.Maybe Core.Text),
    -- | If exists, the name of the long-running operation that will be used to track the post-restore optimization process to optimize the performance of the restored database, and remove the dependency on the restore source. The name is of the form @projects\/\/instances\/\/databases\/\/operations\/@ where the is the name of database being created and restored to. The metadata type of the long-running operation is OptimizeRestoredDatabaseMetadata. This long-running operation will be automatically created by the system after the RestoreDatabase long-running operation completes successfully. This operation will not be created if the restore was not successful.
    optimizeDatabaseOperationName :: (Core.Maybe Core.Text),
    -- | The progress of the RestoreDatabase operation.
    progress :: (Core.Maybe OperationProgress),
    -- | The type of the restore source.
    sourceType :: (Core.Maybe RestoreDatabaseMetadata_SourceType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreDatabaseMetadata' with the minimum fields required to make a request.
newRestoreDatabaseMetadata ::
  RestoreDatabaseMetadata
newRestoreDatabaseMetadata =
  RestoreDatabaseMetadata
    { backupInfo = Core.Nothing,
      cancelTime = Core.Nothing,
      name = Core.Nothing,
      optimizeDatabaseOperationName = Core.Nothing,
      progress = Core.Nothing,
      sourceType = Core.Nothing
    }

instance Core.FromJSON RestoreDatabaseMetadata where
  parseJSON =
    Core.withObject
      "RestoreDatabaseMetadata"
      ( \o ->
          RestoreDatabaseMetadata
            Core.<$> (o Core..:? "backupInfo")
            Core.<*> (o Core..:? "cancelTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "optimizeDatabaseOperationName")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "sourceType")
      )

instance Core.ToJSON RestoreDatabaseMetadata where
  toJSON RestoreDatabaseMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupInfo" Core..=) Core.<$> backupInfo,
            ("cancelTime" Core..=) Core.<$> cancelTime,
            ("name" Core..=) Core.<$> name,
            ("optimizeDatabaseOperationName" Core..=)
              Core.<$> optimizeDatabaseOperationName,
            ("progress" Core..=) Core.<$> progress,
            ("sourceType" Core..=) Core.<$> sourceType
          ]
      )

-- | The request for RestoreDatabase.
--
-- /See:/ 'newRestoreDatabaseRequest' smart constructor.
data RestoreDatabaseRequest = RestoreDatabaseRequest
  { -- | Name of the backup from which to restore. Values are of the form @projects\/\/instances\/\/backups\/@.
    backup :: (Core.Maybe Core.Text),
    -- | Required. The id of the database to create and restore to. This database must not already exist. The @database_id@ appended to @parent@ forms the full database name of the form @projects\/\/instances\/\/databases\/@.
    databaseId :: (Core.Maybe Core.Text),
    -- | Optional. An encryption configuration describing the encryption type and key resources in Cloud KMS used to encrypt\/decrypt the database to restore to. If this field is not specified, the restored database will use the same encryption configuration as the backup by default, namely encryption_type = @USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION@.
    encryptionConfig :: (Core.Maybe RestoreDatabaseEncryptionConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreDatabaseRequest' with the minimum fields required to make a request.
newRestoreDatabaseRequest ::
  RestoreDatabaseRequest
newRestoreDatabaseRequest =
  RestoreDatabaseRequest
    { backup = Core.Nothing,
      databaseId = Core.Nothing,
      encryptionConfig = Core.Nothing
    }

instance Core.FromJSON RestoreDatabaseRequest where
  parseJSON =
    Core.withObject
      "RestoreDatabaseRequest"
      ( \o ->
          RestoreDatabaseRequest
            Core.<$> (o Core..:? "backup")
            Core.<*> (o Core..:? "databaseId")
            Core.<*> (o Core..:? "encryptionConfig")
      )

instance Core.ToJSON RestoreDatabaseRequest where
  toJSON RestoreDatabaseRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("backup" Core..=) Core.<$> backup,
            ("databaseId" Core..=) Core.<$> databaseId,
            ("encryptionConfig" Core..=)
              Core.<$> encryptionConfig
          ]
      )

-- | Information about the database restore.
--
-- /See:/ 'newRestoreInfo' smart constructor.
data RestoreInfo = RestoreInfo
  { -- | Information about the backup used to restore the database. The backup may no longer exist.
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

-- | Results from Read or ExecuteSql.
--
-- /See:/ 'newResultSet' smart constructor.
data ResultSet = ResultSet
  { -- | Metadata about the result set, such as row type information.
    metadata :: (Core.Maybe ResultSetMetadata),
    -- | Each element in @rows@ is a row whose format is defined by metadata.row/type. The ith element in each row matches the ith field in metadata.row/type. Elements are encoded based on type as described here.
    rows :: (Core.Maybe [[Core.Value]]),
    -- | Query plan and execution statistics for the SQL statement that produced this result set. These can be requested by setting ExecuteSqlRequest.query/mode. DML statements always produce stats containing the number of rows modified, unless executed using the ExecuteSqlRequest.QueryMode.PLAN ExecuteSqlRequest.query/mode. Other fields may or may not be populated, based on the ExecuteSqlRequest.query_mode.
    stats :: (Core.Maybe ResultSetStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultSet' with the minimum fields required to make a request.
newResultSet ::
  ResultSet
newResultSet =
  ResultSet {metadata = Core.Nothing, rows = Core.Nothing, stats = Core.Nothing}

instance Core.FromJSON ResultSet where
  parseJSON =
    Core.withObject
      "ResultSet"
      ( \o ->
          ResultSet
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "rows" Core..!= Core.mempty)
            Core.<*> (o Core..:? "stats")
      )

instance Core.ToJSON ResultSet where
  toJSON ResultSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("rows" Core..=) Core.<$> rows,
            ("stats" Core..=) Core.<$> stats
          ]
      )

-- | Metadata about a ResultSet or PartialResultSet.
--
-- /See:/ 'newResultSetMetadata' smart constructor.
data ResultSetMetadata = ResultSetMetadata
  { -- | Indicates the field names and types for the rows in the result set. For example, a SQL query like @\"SELECT UserId, UserName FROM Users\"@ could return a @row_type@ value like: \"fields\": [ { \"name\": \"UserId\", \"type\": { \"code\": \"INT64\" } }, { \"name\": \"UserName\", \"type\": { \"code\": \"STRING\" } }, ]
    rowType :: (Core.Maybe StructType),
    -- | If the read or SQL query began a transaction as a side-effect, the information about the new transaction is yielded here.
    transaction :: (Core.Maybe Transaction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultSetMetadata' with the minimum fields required to make a request.
newResultSetMetadata ::
  ResultSetMetadata
newResultSetMetadata =
  ResultSetMetadata {rowType = Core.Nothing, transaction = Core.Nothing}

instance Core.FromJSON ResultSetMetadata where
  parseJSON =
    Core.withObject
      "ResultSetMetadata"
      ( \o ->
          ResultSetMetadata
            Core.<$> (o Core..:? "rowType")
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON ResultSetMetadata where
  toJSON ResultSetMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("rowType" Core..=) Core.<$> rowType,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

-- | Additional statistics about a ResultSet or PartialResultSet.
--
-- /See:/ 'newResultSetStats' smart constructor.
data ResultSetStats = ResultSetStats
  { -- | QueryPlan for the query associated with this result.
    queryPlan :: (Core.Maybe QueryPlan),
    -- | Aggregated statistics from the execution of the query. Only present when the query is profiled. For example, a query could return the statistics as follows: { \"rows/returned\": \"3\", \"elapsed/time\": \"1.22 secs\", \"cpu_time\": \"1.19 secs\" }
    queryStats :: (Core.Maybe ResultSetStats_QueryStats),
    -- | Standard DML returns an exact count of rows that were modified.
    rowCountExact :: (Core.Maybe Core.Int64),
    -- | Partitioned DML does not offer exactly-once semantics, so it returns a lower bound of the rows modified.
    rowCountLowerBound :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultSetStats' with the minimum fields required to make a request.
newResultSetStats ::
  ResultSetStats
newResultSetStats =
  ResultSetStats
    { queryPlan = Core.Nothing,
      queryStats = Core.Nothing,
      rowCountExact = Core.Nothing,
      rowCountLowerBound = Core.Nothing
    }

instance Core.FromJSON ResultSetStats where
  parseJSON =
    Core.withObject
      "ResultSetStats"
      ( \o ->
          ResultSetStats
            Core.<$> (o Core..:? "queryPlan")
            Core.<*> (o Core..:? "queryStats")
            Core.<*> (o Core..:? "rowCountExact")
            Core.<*> (o Core..:? "rowCountLowerBound")
      )

instance Core.ToJSON ResultSetStats where
  toJSON ResultSetStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("queryPlan" Core..=) Core.<$> queryPlan,
            ("queryStats" Core..=) Core.<$> queryStats,
            ("rowCountExact" Core..=) Core.. Core.AsText
              Core.<$> rowCountExact,
            ("rowCountLowerBound" Core..=) Core.. Core.AsText
              Core.<$> rowCountLowerBound
          ]
      )

-- | Aggregated statistics from the execution of the query. Only present when the query is profiled. For example, a query could return the statistics as follows: { \"rows/returned\": \"3\", \"elapsed/time\": \"1.22 secs\", \"cpu_time\": \"1.19 secs\" }
--
-- /See:/ 'newResultSetStats_QueryStats' smart constructor.
newtype ResultSetStats_QueryStats = ResultSetStats_QueryStats
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultSetStats_QueryStats' with the minimum fields required to make a request.
newResultSetStats_QueryStats ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  ResultSetStats_QueryStats
newResultSetStats_QueryStats addtional =
  ResultSetStats_QueryStats {addtional = addtional}

instance Core.FromJSON ResultSetStats_QueryStats where
  parseJSON =
    Core.withObject
      "ResultSetStats_QueryStats"
      ( \o ->
          ResultSetStats_QueryStats
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ResultSetStats_QueryStats where
  toJSON ResultSetStats_QueryStats {..} =
    Core.toJSON addtional

-- | The request for Rollback.
--
-- /See:/ 'newRollbackRequest' smart constructor.
newtype RollbackRequest = RollbackRequest
  { -- | Required. The transaction to roll back.
    transactionId :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollbackRequest' with the minimum fields required to make a request.
newRollbackRequest ::
  RollbackRequest
newRollbackRequest = RollbackRequest {transactionId = Core.Nothing}

instance Core.FromJSON RollbackRequest where
  parseJSON =
    Core.withObject
      "RollbackRequest"
      ( \o ->
          RollbackRequest
            Core.<$> (o Core..:? "transactionId")
      )

instance Core.ToJSON RollbackRequest where
  toJSON RollbackRequest {..} =
    Core.object
      ( Core.catMaybes
          [("transactionId" Core..=) Core.<$> transactionId]
      )

-- | Scan is a structure which describes Cloud Key Visualizer scan information.
--
-- /See:/ 'newScan' smart constructor.
data Scan = Scan
  { -- | Additional information provided by the implementer.
    details :: (Core.Maybe Scan_Details),
    -- | The upper bound for when the scan is defined.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | The unique name of the scan, specific to the Database service implementing this interface.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Cloud Key Visualizer scan data. Note, this field is not available to the ListScans method.
    scanData :: (Core.Maybe ScanData),
    -- | A range of time (inclusive) for when the scan is defined. The lower bound for when the scan is defined.
    startTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Scan' with the minimum fields required to make a request.
newScan ::
  Scan
newScan =
  Scan
    { details = Core.Nothing,
      endTime = Core.Nothing,
      name = Core.Nothing,
      scanData = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON Scan where
  parseJSON =
    Core.withObject
      "Scan"
      ( \o ->
          Scan
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "scanData")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON Scan where
  toJSON Scan {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("endTime" Core..=) Core.<$> endTime,
            ("name" Core..=) Core.<$> name,
            ("scanData" Core..=) Core.<$> scanData,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Additional information provided by the implementer.
--
-- /See:/ 'newScan_Details' smart constructor.
newtype Scan_Details = Scan_Details
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Scan_Details' with the minimum fields required to make a request.
newScan_Details ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Scan_Details
newScan_Details addtional = Scan_Details {addtional = addtional}

instance Core.FromJSON Scan_Details where
  parseJSON =
    Core.withObject
      "Scan_Details"
      ( \o ->
          Scan_Details Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Scan_Details where
  toJSON Scan_Details {..} = Core.toJSON addtional

-- | ScanData contains Cloud Key Visualizer scan data used by the caller to construct a visualization.
--
-- /See:/ 'newScanData' smart constructor.
data ScanData = ScanData
  { -- | Cloud Key Visualizer scan data. The range of time this information covers is captured via the above time range fields. Note, this field is not available to the ListScans method.
    data' :: (Core.Maybe VisualizationData),
    -- | The upper bound for when the contained data is defined.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | A range of time (inclusive) for when the contained data is defined. The lower bound for when the contained data is defined.
    startTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScanData' with the minimum fields required to make a request.
newScanData ::
  ScanData
newScanData =
  ScanData
    { data' = Core.Nothing,
      endTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON ScanData where
  parseJSON =
    Core.withObject
      "ScanData"
      ( \o ->
          ScanData
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON ScanData where
  toJSON ScanData {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | A session in the Cloud Spanner API.
--
-- /See:/ 'newSession' smart constructor.
data Session = Session
  { -- | Output only. The approximate timestamp when the session is last used. It is typically earlier than the actual last use time.
    approximateLastUseTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. The timestamp when the session is created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@. * Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@. * No more than 64 labels can be associated with a given session. See https:\/\/goo.gl\/xmQnxf for more information on and examples of labels.
    labels :: (Core.Maybe Session_Labels),
    -- | Output only. The name of the session. This is always system-assigned.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Session' with the minimum fields required to make a request.
newSession ::
  Session
newSession =
  Session
    { approximateLastUseTime = Core.Nothing,
      createTime = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Session where
  parseJSON =
    Core.withObject
      "Session"
      ( \o ->
          Session
            Core.<$> (o Core..:? "approximateLastUseTime")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Session where
  toJSON Session {..} =
    Core.object
      ( Core.catMaybes
          [ ("approximateLastUseTime" Core..=)
              Core.<$> approximateLastUseTime,
            ("createTime" Core..=) Core.<$> createTime,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@. * Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@. * No more than 64 labels can be associated with a given session. See https:\/\/goo.gl\/xmQnxf for more information on and examples of labels.
--
-- /See:/ 'newSession_Labels' smart constructor.
newtype Session_Labels = Session_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Session_Labels' with the minimum fields required to make a request.
newSession_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Session_Labels
newSession_Labels addtional = Session_Labels {addtional = addtional}

instance Core.FromJSON Session_Labels where
  parseJSON =
    Core.withObject
      "Session_Labels"
      ( \o ->
          Session_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Session_Labels where
  toJSON Session_Labels {..} = Core.toJSON addtional

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest = SetIamPolicyRequest {policy = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      ( \o ->
          SetIamPolicyRequest Core.<$> (o Core..:? "policy")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      (Core.catMaybes [("policy" Core..=) Core.<$> policy])

-- | Condensed representation of a node and its subtree. Only present for @SCALAR@ PlanNode(s).
--
-- /See:/ 'newShortRepresentation' smart constructor.
data ShortRepresentation = ShortRepresentation
  { -- | A string representation of the expression subtree rooted at this node.
    description :: (Core.Maybe Core.Text),
    -- | A mapping of (subquery variable name) -> (subquery node id) for cases where the @description@ string of this node references a @SCALAR@ subquery contained in the expression subtree rooted at this node. The referenced @SCALAR@ subquery may not necessarily be a direct child of this node.
    subqueries :: (Core.Maybe ShortRepresentation_Subqueries)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShortRepresentation' with the minimum fields required to make a request.
newShortRepresentation ::
  ShortRepresentation
newShortRepresentation =
  ShortRepresentation {description = Core.Nothing, subqueries = Core.Nothing}

instance Core.FromJSON ShortRepresentation where
  parseJSON =
    Core.withObject
      "ShortRepresentation"
      ( \o ->
          ShortRepresentation
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "subqueries")
      )

instance Core.ToJSON ShortRepresentation where
  toJSON ShortRepresentation {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("subqueries" Core..=) Core.<$> subqueries
          ]
      )

-- | A mapping of (subquery variable name) -> (subquery node id) for cases where the @description@ string of this node references a @SCALAR@ subquery contained in the expression subtree rooted at this node. The referenced @SCALAR@ subquery may not necessarily be a direct child of this node.
--
-- /See:/ 'newShortRepresentation_Subqueries' smart constructor.
newtype ShortRepresentation_Subqueries = ShortRepresentation_Subqueries
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShortRepresentation_Subqueries' with the minimum fields required to make a request.
newShortRepresentation_Subqueries ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Int32 ->
  ShortRepresentation_Subqueries
newShortRepresentation_Subqueries addtional =
  ShortRepresentation_Subqueries {addtional = addtional}

instance Core.FromJSON ShortRepresentation_Subqueries where
  parseJSON =
    Core.withObject
      "ShortRepresentation_Subqueries"
      ( \o ->
          ShortRepresentation_Subqueries
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ShortRepresentation_Subqueries where
  toJSON ShortRepresentation_Subqueries {..} =
    Core.toJSON addtional

-- | A single DML statement.
--
-- /See:/ 'newStatement' smart constructor.
data Statement = Statement
  { -- | It is not always possible for Cloud Spanner to infer the right SQL type from a JSON value. For example, values of type @BYTES@ and values of type @STRING@ both appear in params as JSON strings. In these cases, @param_types@ can be used to specify the exact SQL type for some or all of the SQL statement parameters. See the definition of Type for more information about SQL types.
    paramTypes :: (Core.Maybe Statement_ParamTypes),
    -- | Parameter names and values that bind to placeholders in the DML string. A parameter placeholder consists of the @\@@ character followed by the parameter name (for example, @\@firstName@). Parameter names can contain letters, numbers, and underscores. Parameters can appear anywhere that a literal value is expected. The same parameter name can be used more than once, for example: @\"WHERE id > \@msg_id AND id \< \@msg_id + 100\"@ It is an error to execute a SQL statement with unbound parameters.
    params :: (Core.Maybe Statement_Params),
    -- | Required. The DML string.
    sql :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Statement' with the minimum fields required to make a request.
newStatement ::
  Statement
newStatement =
  Statement
    { paramTypes = Core.Nothing,
      params = Core.Nothing,
      sql = Core.Nothing
    }

instance Core.FromJSON Statement where
  parseJSON =
    Core.withObject
      "Statement"
      ( \o ->
          Statement
            Core.<$> (o Core..:? "paramTypes")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "sql")
      )

instance Core.ToJSON Statement where
  toJSON Statement {..} =
    Core.object
      ( Core.catMaybes
          [ ("paramTypes" Core..=) Core.<$> paramTypes,
            ("params" Core..=) Core.<$> params,
            ("sql" Core..=) Core.<$> sql
          ]
      )

-- | It is not always possible for Cloud Spanner to infer the right SQL type from a JSON value. For example, values of type @BYTES@ and values of type @STRING@ both appear in params as JSON strings. In these cases, @param_types@ can be used to specify the exact SQL type for some or all of the SQL statement parameters. See the definition of Type for more information about SQL types.
--
-- /See:/ 'newStatement_ParamTypes' smart constructor.
newtype Statement_ParamTypes = Statement_ParamTypes
  { -- |
    addtional :: (Core.HashMap Core.Text Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Statement_ParamTypes' with the minimum fields required to make a request.
newStatement_ParamTypes ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Type ->
  Statement_ParamTypes
newStatement_ParamTypes addtional = Statement_ParamTypes {addtional = addtional}

instance Core.FromJSON Statement_ParamTypes where
  parseJSON =
    Core.withObject
      "Statement_ParamTypes"
      ( \o ->
          Statement_ParamTypes
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Statement_ParamTypes where
  toJSON Statement_ParamTypes {..} =
    Core.toJSON addtional

-- | Parameter names and values that bind to placeholders in the DML string. A parameter placeholder consists of the @\@@ character followed by the parameter name (for example, @\@firstName@). Parameter names can contain letters, numbers, and underscores. Parameters can appear anywhere that a literal value is expected. The same parameter name can be used more than once, for example: @\"WHERE id > \@msg_id AND id \< \@msg_id + 100\"@ It is an error to execute a SQL statement with unbound parameters.
--
-- /See:/ 'newStatement_Params' smart constructor.
newtype Statement_Params = Statement_Params
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Statement_Params' with the minimum fields required to make a request.
newStatement_Params ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Statement_Params
newStatement_Params addtional = Statement_Params {addtional = addtional}

instance Core.FromJSON Statement_Params where
  parseJSON =
    Core.withObject
      "Statement_Params"
      ( \o ->
          Statement_Params Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Statement_Params where
  toJSON Statement_Params {..} = Core.toJSON addtional

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
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
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
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON addtional

-- | @StructType@ defines the fields of a STRUCT type.
--
-- /See:/ 'newStructType' smart constructor.
newtype StructType = StructType
  { -- | The list of fields that make up this struct. Order is significant, because values of this struct type are represented as lists, where the order of field values matches the order of fields in the StructType. In turn, the order of fields matches the order of columns in a read request, or the order of fields in the @SELECT@ clause of a query.
    fields :: (Core.Maybe [Field])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StructType' with the minimum fields required to make a request.
newStructType ::
  StructType
newStructType = StructType {fields = Core.Nothing}

instance Core.FromJSON StructType where
  parseJSON =
    Core.withObject
      "StructType"
      ( \o ->
          StructType
            Core.<$> (o Core..:? "fields" Core..!= Core.mempty)
      )

instance Core.ToJSON StructType where
  toJSON StructType {..} =
    Core.object
      (Core.catMaybes [("fields" Core..=) Core.<$> fields])

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | REQUIRED: The set of permissions to check for \'resource\'. Permissions with wildcards (such as \'/\', \'spanner./\', \'spanner.instances.*\') are not allowed.
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
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
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
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | A transaction.
--
-- /See:/ 'newTransaction' smart constructor.
data Transaction = Transaction
  { -- | @id@ may be used to identify the transaction in subsequent Read, ExecuteSql, Commit, or Rollback calls. Single-use read-only transactions do not have IDs, because single-use transactions do not support multiple requests.
    id :: (Core.Maybe Core.Base64),
    -- | For snapshot read-only transactions, the read timestamp chosen for the transaction. Not returned by default: see TransactionOptions.ReadOnly.return/read/timestamp. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds. Example: @\"2014-10-02T15:01:23.045123456Z\"@.
    readTimestamp :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Transaction' with the minimum fields required to make a request.
newTransaction ::
  Transaction
newTransaction = Transaction {id = Core.Nothing, readTimestamp = Core.Nothing}

instance Core.FromJSON Transaction where
  parseJSON =
    Core.withObject
      "Transaction"
      ( \o ->
          Transaction
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "readTimestamp")
      )

instance Core.ToJSON Transaction where
  toJSON Transaction {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("readTimestamp" Core..=) Core.<$> readTimestamp
          ]
      )

-- | Transactions: Each session can have at most one active transaction at a time (note that standalone reads and queries use a transaction internally and do count towards the one transaction limit). After the active transaction is completed, the session can immediately be re-used for the next transaction. It is not necessary to create a new session for each transaction. Transaction Modes: Cloud Spanner supports three transaction modes: 1. Locking read-write. This type of transaction is the only way to write data into Cloud Spanner. These transactions rely on pessimistic locking and, if necessary, two-phase commit. Locking read-write transactions may abort, requiring the application to retry. 2. Snapshot read-only. This transaction type provides guaranteed consistency across several reads, but does not allow writes. Snapshot read-only transactions can be configured to read at timestamps in the past. Snapshot read-only transactions do not need to be committed. 3. Partitioned DML. This type of transaction is used to
-- execute a single Partitioned DML statement. Partitioned DML partitions the key space and runs the DML statement over each partition in parallel using separate, internal transactions that commit independently. Partitioned DML transactions do not need to be committed. For transactions that only read, snapshot read-only transactions provide simpler semantics and are almost always faster. In particular, read-only transactions do not take locks, so they do not conflict with read-write transactions. As a consequence of not taking locks, they also do not abort, so retry loops are not needed. Transactions may only read\/write data in a single database. They may, however, read\/write data in different tables within that database. Locking Read-Write Transactions: Locking transactions may be used to atomically read-modify-write data anywhere in a database. This type of transaction is externally consistent. Clients should attempt to minimize the amount of time a transaction is active. Faster transactions commit with
-- higher probability and cause less contention. Cloud Spanner attempts to keep read locks active as long as the transaction continues to do reads, and the transaction has not been terminated by Commit or Rollback. Long periods of inactivity at the client may cause Cloud Spanner to release a transaction\'s locks and abort it. Conceptually, a read-write transaction consists of zero or more reads or SQL statements followed by Commit. At any time before Commit, the client can send a Rollback request to abort the transaction. Semantics: Cloud Spanner can commit the transaction if all read locks it acquired are still valid at commit time, and it is able to acquire write locks for all writes. Cloud Spanner can abort the transaction for any reason. If a commit attempt returns @ABORTED@, Cloud Spanner guarantees that the transaction has not modified any user data in Cloud Spanner. Unless the transaction commits, Cloud Spanner makes no guarantees about how long the transaction\'s locks were held for. It is an error to
-- use Cloud Spanner locks for any sort of mutual exclusion other than between Cloud Spanner transactions themselves. Retrying Aborted Transactions: When a transaction aborts, the application can choose to retry the whole transaction again. To maximize the chances of successfully committing the retry, the client should execute the retry in the same session as the original attempt. The original session\'s lock priority increases with each consecutive abort, meaning that each attempt has a slightly better chance of success than the previous. Under some circumstances (for example, many transactions attempting to modify the same row(s)), a transaction can abort many times in a short period before successfully committing. Thus, it is not a good idea to cap the number of retries a transaction can attempt; instead, it is better to limit the total amount of time spent retrying. Idle Transactions: A transaction is considered idle if it has no outstanding reads or SQL queries and has not started a read or SQL query within
-- the last 10 seconds. Idle transactions can be aborted by Cloud Spanner so that they don\'t hold on to locks indefinitely. If an idle transaction is aborted, the commit will fail with error @ABORTED@. If this behavior is undesirable, periodically executing a simple SQL query in the transaction (for example, @SELECT 1@) prevents the transaction from becoming idle. Snapshot Read-Only Transactions: Snapshot read-only transactions provides a simpler method than locking read-write transactions for doing several consistent reads. However, this type of transaction does not support writes. Snapshot transactions do not take locks. Instead, they work by choosing a Cloud Spanner timestamp, then executing all reads at that timestamp. Since they do not acquire locks, they do not block concurrent read-write transactions. Unlike locking read-write transactions, snapshot read-only transactions never abort. They can fail if the chosen read timestamp is garbage collected; however, the default garbage collection policy is
-- generous enough that most applications do not need to worry about this in practice. Snapshot read-only transactions do not need to call Commit or Rollback (and in fact are not permitted to do so). To execute a snapshot transaction, the client specifies a timestamp bound, which tells Cloud Spanner how to choose a read timestamp. The types of timestamp bound are: - Strong (the default). - Bounded staleness. - Exact staleness. If the Cloud Spanner database to be read is geographically distributed, stale read-only transactions can execute more quickly than strong or read-write transaction, because they are able to execute far from the leader replica. Each type of timestamp bound is discussed in detail below. Strong: Strong reads are guaranteed to see the effects of all transactions that have committed before the start of the read. Furthermore, all rows yielded by a single read are consistent with each other -- if any part of the read observes a transaction, all parts of the read see the transaction. Strong reads
-- are not repeatable: two consecutive strong read-only transactions might return inconsistent results if there are concurrent writes. If consistency across reads is required, the reads should be executed within a transaction or at an exact read timestamp. See TransactionOptions.ReadOnly.strong. Exact Staleness: These timestamp bounds execute reads at a user-specified timestamp. Reads at a timestamp are guaranteed to see a consistent prefix of the global transaction history: they observe modifications done by all transactions with a commit timestamp less than or equal to the read timestamp, and observe none of the modifications done by transactions with a larger commit timestamp. They will block until all conflicting transactions that may be assigned commit timestamps \<= the read timestamp have finished. The timestamp can either be expressed as an absolute Cloud Spanner commit timestamp or a staleness relative to the current time. These modes do not require a \"negotiation phase\" to pick a timestamp. As a
-- result, they execute slightly faster than the equivalent boundedly stale concurrency modes. On the other hand, boundedly stale reads usually return fresher results. See TransactionOptions.ReadOnly.read/timestamp and TransactionOptions.ReadOnly.exact/staleness. Bounded Staleness: Bounded staleness modes allow Cloud Spanner to pick the read timestamp, subject to a user-provided staleness bound. Cloud Spanner chooses the newest timestamp within the staleness bound that allows execution of the reads at the closest available replica without blocking. All rows yielded are consistent with each other -- if any part of the read observes a transaction, all parts of the read see the transaction. Boundedly stale reads are not repeatable: two stale reads, even if they use the same staleness bound, can execute at different timestamps and thus return inconsistent results. Boundedly stale reads execute in two phases: the first phase negotiates a timestamp among all replicas needed to serve the read. In the second phase,
-- reads are executed at the negotiated timestamp. As a result of the two phase execution, bounded staleness reads are usually a little slower than comparable exact staleness reads. However, they are typically able to return fresher results, and are more likely to execute at the closest replica. Because the timestamp negotiation requires up-front knowledge of which rows will be read, it can only be used with single-use read-only transactions. See TransactionOptions.ReadOnly.max/staleness and TransactionOptions.ReadOnly.min/read_timestamp. Old Read Timestamps and Garbage Collection: Cloud Spanner continuously garbage collects deleted and overwritten data in the background to reclaim storage space. This process is known as \"version GC\". By default, version GC reclaims versions after they are one hour old. Because of this, Cloud Spanner cannot perform reads at read timestamps more than one hour in the past. This restriction also applies to in-progress reads and\/or SQL queries whose timestamp become too old while
-- executing. Reads and SQL queries with too-old read timestamps fail with the error @FAILED_PRECONDITION@. Partitioned DML Transactions: Partitioned DML transactions are used to execute DML statements with a different execution strategy that provides different, and often better, scalability properties for large, table-wide operations than DML in a ReadWrite transaction. Smaller scoped statements, such as an OLTP workload, should prefer using ReadWrite transactions. Partitioned DML partitions the keyspace and runs the DML statement on each partition in separate, internal transactions. These transactions commit automatically when complete, and run independently from one another. To reduce lock contention, this execution strategy only acquires read locks on rows that match the WHERE clause of the statement. Additionally, the smaller per-partition transactions hold locks for less time. That said, Partitioned DML is not a drop-in replacement for standard DML used in ReadWrite transactions. - The DML statement must
-- be fully-partitionable. Specifically, the statement must be expressible as the union of many statements which each access only a single row of the table. - The statement is not applied atomically to all rows of the table. Rather, the statement is applied atomically to partitions of the table, in independent transactions. Secondary index rows are updated atomically with the base table rows. - Partitioned DML does not guarantee exactly-once execution semantics against a partition. The statement will be applied at least once to each partition. It is strongly recommended that the DML statement should be idempotent to avoid unexpected results. For instance, it is potentially dangerous to run a statement such as @UPDATE table SET column = column + 1@ as it could be run multiple times against some rows. - The partitions are committed automatically - there is no support for Commit or Rollback. If the call returns an error, or if the client issuing the ExecuteSql call dies, it is possible that some rows had the
-- statement executed on them successfully. It is also possible that statement was never executed against other rows. - Partitioned DML transactions may only contain the execution of a single DML statement via ExecuteSql or ExecuteStreamingSql. - If any error is encountered during the execution of the partitioned DML operation (for instance, a UNIQUE INDEX violation, division by zero, or a value that cannot be stored due to schema constraints), then the operation is stopped at that point and an error is returned. It is possible that at this point, some partitions have been committed (or even committed multiple times), and other partitions have not been run at all. Given the above, Partitioned DML is good fit for large, database-wide, operations that are idempotent, such as deleting old rows from a very large table.
--
-- /See:/ 'newTransactionOptions' smart constructor.
data TransactionOptions = TransactionOptions
  { -- | Partitioned DML transaction. Authorization to begin a Partitioned DML transaction requires @spanner.databases.beginPartitionedDmlTransaction@ permission on the @session@ resource.
    partitionedDml :: (Core.Maybe PartitionedDml),
    -- | Transaction will not write. Authorization to begin a read-only transaction requires @spanner.databases.beginReadOnlyTransaction@ permission on the @session@ resource.
    readOnly :: (Core.Maybe ReadOnly),
    -- | Transaction may write. Authorization to begin a read-write transaction requires @spanner.databases.beginOrRollbackReadWriteTransaction@ permission on the @session@ resource.
    readWrite :: (Core.Maybe ReadWrite)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransactionOptions' with the minimum fields required to make a request.
newTransactionOptions ::
  TransactionOptions
newTransactionOptions =
  TransactionOptions
    { partitionedDml = Core.Nothing,
      readOnly = Core.Nothing,
      readWrite = Core.Nothing
    }

instance Core.FromJSON TransactionOptions where
  parseJSON =
    Core.withObject
      "TransactionOptions"
      ( \o ->
          TransactionOptions
            Core.<$> (o Core..:? "partitionedDml")
            Core.<*> (o Core..:? "readOnly")
            Core.<*> (o Core..:? "readWrite")
      )

instance Core.ToJSON TransactionOptions where
  toJSON TransactionOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("partitionedDml" Core..=) Core.<$> partitionedDml,
            ("readOnly" Core..=) Core.<$> readOnly,
            ("readWrite" Core..=) Core.<$> readWrite
          ]
      )

-- | This message is used to select the transaction in which a Read or ExecuteSql call runs. See TransactionOptions for more information about transactions.
--
-- /See:/ 'newTransactionSelector' smart constructor.
data TransactionSelector = TransactionSelector
  { -- | Begin a new transaction and execute this read or SQL query in it. The transaction ID of the new transaction is returned in ResultSetMetadata.transaction, which is a Transaction.
    begin :: (Core.Maybe TransactionOptions),
    -- | Execute the read or SQL query in a previously-started transaction.
    id :: (Core.Maybe Core.Base64),
    -- | Execute the read or SQL query in a temporary transaction. This is the most efficient way to execute a transaction that consists of a single SQL query.
    singleUse :: (Core.Maybe TransactionOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransactionSelector' with the minimum fields required to make a request.
newTransactionSelector ::
  TransactionSelector
newTransactionSelector =
  TransactionSelector
    { begin = Core.Nothing,
      id = Core.Nothing,
      singleUse = Core.Nothing
    }

instance Core.FromJSON TransactionSelector where
  parseJSON =
    Core.withObject
      "TransactionSelector"
      ( \o ->
          TransactionSelector
            Core.<$> (o Core..:? "begin")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "singleUse")
      )

instance Core.ToJSON TransactionSelector where
  toJSON TransactionSelector {..} =
    Core.object
      ( Core.catMaybes
          [ ("begin" Core..=) Core.<$> begin,
            ("id" Core..=) Core.<$> id,
            ("singleUse" Core..=) Core.<$> singleUse
          ]
      )

-- | @Type@ indicates the type of a Cloud Spanner value, as might be stored in a table cell or returned from an SQL query.
--
-- /See:/ 'newType' smart constructor.
data Type = Type
  { -- | If code == ARRAY, then @array_element_type@ is the type of the array elements.
    arrayElementType :: (Core.Maybe Type),
    -- | Required. The TypeCode for this type.
    code :: (Core.Maybe Type_Code),
    -- | If code == STRUCT, then @struct_type@ provides type information for the struct\'s fields.
    structType :: (Core.Maybe StructType),
    -- | The TypeAnnotationCode that disambiguates SQL type that Spanner will use to represent values of this type during query processing. This is necessary for some type codes because a single TypeCode can be mapped to different SQL types depending on the SQL dialect. type_annotation typically is not needed to process the content of a value (it doesn\'t affect serialization) and clients can ignore it on the read path.
    typeAnnotation :: (Core.Maybe Type_TypeAnnotation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Type' with the minimum fields required to make a request.
newType ::
  Type
newType =
  Type
    { arrayElementType = Core.Nothing,
      code = Core.Nothing,
      structType = Core.Nothing,
      typeAnnotation = Core.Nothing
    }

instance Core.FromJSON Type where
  parseJSON =
    Core.withObject
      "Type"
      ( \o ->
          Type
            Core.<$> (o Core..:? "arrayElementType")
            Core.<*> (o Core..:? "code")
            Core.<*> (o Core..:? "structType")
            Core.<*> (o Core..:? "typeAnnotation")
      )

instance Core.ToJSON Type where
  toJSON Type {..} =
    Core.object
      ( Core.catMaybes
          [ ("arrayElementType" Core..=)
              Core.<$> arrayElementType,
            ("code" Core..=) Core.<$> code,
            ("structType" Core..=) Core.<$> structType,
            ("typeAnnotation" Core..=) Core.<$> typeAnnotation
          ]
      )

-- | Metadata type for the operation returned by UpdateDatabaseDdl.
--
-- /See:/ 'newUpdateDatabaseDdlMetadata' smart constructor.
data UpdateDatabaseDdlMetadata = UpdateDatabaseDdlMetadata
  { -- | Reports the commit timestamps of all statements that have succeeded so far, where @commit_timestamps[i]@ is the commit timestamp for the statement @statements[i]@.
    commitTimestamps :: (Core.Maybe [Core.DateTime']),
    -- | The database being modified.
    database :: (Core.Maybe Core.Text),
    -- | The progress of the UpdateDatabaseDdl operations. Currently, only index creation statements will have a continuously updating progress. For non-index creation statements, @progress[i]@ will have start time and end time populated with commit timestamp of operation, as well as a progress of 100% once the operation has completed. @progress[i]@ is the operation progress for @statements[i]@.
    progress :: (Core.Maybe [OperationProgress]),
    -- | For an update this list contains all the statements. For an individual statement, this list contains only that statement.
    statements :: (Core.Maybe [Core.Text]),
    -- | Output only. When true, indicates that the operation is throttled e.g due to resource constraints. When resources become available the operation will resume and this field will be false again.
    throttled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDatabaseDdlMetadata' with the minimum fields required to make a request.
newUpdateDatabaseDdlMetadata ::
  UpdateDatabaseDdlMetadata
newUpdateDatabaseDdlMetadata =
  UpdateDatabaseDdlMetadata
    { commitTimestamps = Core.Nothing,
      database = Core.Nothing,
      progress = Core.Nothing,
      statements = Core.Nothing,
      throttled = Core.Nothing
    }

instance Core.FromJSON UpdateDatabaseDdlMetadata where
  parseJSON =
    Core.withObject
      "UpdateDatabaseDdlMetadata"
      ( \o ->
          UpdateDatabaseDdlMetadata
            Core.<$> (o Core..:? "commitTimestamps" Core..!= Core.mempty)
            Core.<*> (o Core..:? "database")
            Core.<*> (o Core..:? "progress" Core..!= Core.mempty)
            Core.<*> (o Core..:? "statements" Core..!= Core.mempty)
            Core.<*> (o Core..:? "throttled")
      )

instance Core.ToJSON UpdateDatabaseDdlMetadata where
  toJSON UpdateDatabaseDdlMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("commitTimestamps" Core..=)
              Core.<$> commitTimestamps,
            ("database" Core..=) Core.<$> database,
            ("progress" Core..=) Core.<$> progress,
            ("statements" Core..=) Core.<$> statements,
            ("throttled" Core..=) Core.<$> throttled
          ]
      )

-- | Enqueues the given DDL statements to be applied, in order but not necessarily all at once, to the database schema at some point (or points) in the future. The server checks that the statements are executable (syntactically valid, name tables that exist, etc.) before enqueueing them, but they may still fail upon later execution (e.g., if a statement from another batch of statements is applied first and it conflicts in some way, or if there is some data-related problem like a @NULL@ value in a column to which @NOT NULL@ would be added). If a statement fails, all subsequent statements in the batch are automatically cancelled. Each batch of statements is assigned a name which can be used with the Operations API to monitor progress. See the operation_id field for more details.
--
-- /See:/ 'newUpdateDatabaseDdlRequest' smart constructor.
data UpdateDatabaseDdlRequest = UpdateDatabaseDdlRequest
  { -- | If empty, the new update request is assigned an automatically-generated operation ID. Otherwise, @operation_id@ is used to construct the name of the resulting Operation. Specifying an explicit operation ID simplifies determining whether the statements were executed in the event that the UpdateDatabaseDdl call is replayed, or the return value is otherwise lost: the database and @operation_id@ fields can be combined to form the name of the resulting longrunning.Operation: @\/operations\/@. @operation_id@ should be unique within the database, and must be a valid identifier: @a-z*@. Note that automatically-generated operation IDs always begin with an underscore. If the named operation already exists, UpdateDatabaseDdl returns @ALREADY_EXISTS@.
    operationId :: (Core.Maybe Core.Text),
    -- | Required. DDL statements to be applied to the database.
    statements :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDatabaseDdlRequest' with the minimum fields required to make a request.
newUpdateDatabaseDdlRequest ::
  UpdateDatabaseDdlRequest
newUpdateDatabaseDdlRequest =
  UpdateDatabaseDdlRequest
    { operationId = Core.Nothing,
      statements = Core.Nothing
    }

instance Core.FromJSON UpdateDatabaseDdlRequest where
  parseJSON =
    Core.withObject
      "UpdateDatabaseDdlRequest"
      ( \o ->
          UpdateDatabaseDdlRequest
            Core.<$> (o Core..:? "operationId")
            Core.<*> (o Core..:? "statements" Core..!= Core.mempty)
      )

instance Core.ToJSON UpdateDatabaseDdlRequest where
  toJSON UpdateDatabaseDdlRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("operationId" Core..=) Core.<$> operationId,
            ("statements" Core..=) Core.<$> statements
          ]
      )

-- | Metadata type for the operation returned by UpdateInstance.
--
-- /See:/ 'newUpdateInstanceMetadata' smart constructor.
data UpdateInstanceMetadata = UpdateInstanceMetadata
  { -- | The time at which this operation was cancelled. If set, this operation is in the process of undoing itself (which is guaranteed to succeed) and cannot be cancelled again.
    cancelTime :: (Core.Maybe Core.DateTime'),
    -- | The time at which this operation failed or was completed successfully.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | The desired end state of the update.
    instance' :: (Core.Maybe Instance),
    -- | The time at which UpdateInstance request was received.
    startTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateInstanceMetadata' with the minimum fields required to make a request.
newUpdateInstanceMetadata ::
  UpdateInstanceMetadata
newUpdateInstanceMetadata =
  UpdateInstanceMetadata
    { cancelTime = Core.Nothing,
      endTime = Core.Nothing,
      instance' = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON UpdateInstanceMetadata where
  parseJSON =
    Core.withObject
      "UpdateInstanceMetadata"
      ( \o ->
          UpdateInstanceMetadata
            Core.<$> (o Core..:? "cancelTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "instance")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON UpdateInstanceMetadata where
  toJSON UpdateInstanceMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("cancelTime" Core..=) Core.<$> cancelTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("instance" Core..=) Core.<$> instance',
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | The request for UpdateInstance.
--
-- /See:/ 'newUpdateInstanceRequest' smart constructor.
data UpdateInstanceRequest = UpdateInstanceRequest
  { -- | Required. A mask specifying which fields in Instance should be updated. The field mask must always be specified; this prevents any future fields in Instance from being erased accidentally by clients that do not know about them.
    fieldMask :: (Core.Maybe Core.GFieldMask),
    -- | Required. The instance to update, which must always include the instance name. Otherwise, only fields mentioned in field_mask need be included.
    instance' :: (Core.Maybe Instance)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateInstanceRequest' with the minimum fields required to make a request.
newUpdateInstanceRequest ::
  UpdateInstanceRequest
newUpdateInstanceRequest =
  UpdateInstanceRequest {fieldMask = Core.Nothing, instance' = Core.Nothing}

instance Core.FromJSON UpdateInstanceRequest where
  parseJSON =
    Core.withObject
      "UpdateInstanceRequest"
      ( \o ->
          UpdateInstanceRequest
            Core.<$> (o Core..:? "fieldMask")
            Core.<*> (o Core..:? "instance")
      )

instance Core.ToJSON UpdateInstanceRequest where
  toJSON UpdateInstanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fieldMask" Core..=) Core.<$> fieldMask,
            ("instance" Core..=) Core.<$> instance'
          ]
      )

--
-- /See:/ 'newVisualizationData' smart constructor.
data VisualizationData = VisualizationData
  { -- | The token signifying the end of a data_source.
    dataSourceEndToken :: (Core.Maybe Core.Text),
    -- | The token delimiting a datasource name from the rest of a key in a data_source.
    dataSourceSeparatorToken :: (Core.Maybe Core.Text),
    -- | The list of messages (info, alerts, ...)
    diagnosticMessages :: (Core.Maybe [DiagnosticMessage]),
    -- | We discretize the entire keyspace into buckets. Assuming each bucket has an inclusive keyrange and covers keys from k(i) ... k(n). In this case k(n) would be an end key for a given range. end/key/string is the collection of all such end keys
    endKeyStrings :: (Core.Maybe [Core.Text]),
    -- | Whether this scan contains PII.
    hasPii :: (Core.Maybe Core.Bool),
    -- | Keys of key ranges that contribute significantly to a given metric Can be thought of as heavy hitters.
    indexedKeys :: (Core.Maybe [Core.Text]),
    -- | The token delimiting the key prefixes.
    keySeparator :: (Core.Maybe Core.Text),
    -- | The unit for the key: e.g. \'key\' or \'chunk\'.
    keyUnit :: (Core.Maybe VisualizationData_KeyUnit),
    -- | The list of data objects for each metric.
    metrics :: (Core.Maybe [Metric]),
    -- | The list of extracted key prefix nodes used in the key prefix hierarchy.
    prefixNodes :: (Core.Maybe [PrefixNode])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VisualizationData' with the minimum fields required to make a request.
newVisualizationData ::
  VisualizationData
newVisualizationData =
  VisualizationData
    { dataSourceEndToken = Core.Nothing,
      dataSourceSeparatorToken = Core.Nothing,
      diagnosticMessages = Core.Nothing,
      endKeyStrings = Core.Nothing,
      hasPii = Core.Nothing,
      indexedKeys = Core.Nothing,
      keySeparator = Core.Nothing,
      keyUnit = Core.Nothing,
      metrics = Core.Nothing,
      prefixNodes = Core.Nothing
    }

instance Core.FromJSON VisualizationData where
  parseJSON =
    Core.withObject
      "VisualizationData"
      ( \o ->
          VisualizationData
            Core.<$> (o Core..:? "dataSourceEndToken")
            Core.<*> (o Core..:? "dataSourceSeparatorToken")
            Core.<*> ( o Core..:? "diagnosticMessages"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "endKeyStrings" Core..!= Core.mempty)
            Core.<*> (o Core..:? "hasPii")
            Core.<*> (o Core..:? "indexedKeys" Core..!= Core.mempty)
            Core.<*> (o Core..:? "keySeparator")
            Core.<*> (o Core..:? "keyUnit")
            Core.<*> (o Core..:? "metrics" Core..!= Core.mempty)
            Core.<*> (o Core..:? "prefixNodes" Core..!= Core.mempty)
      )

instance Core.ToJSON VisualizationData where
  toJSON VisualizationData {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceEndToken" Core..=)
              Core.<$> dataSourceEndToken,
            ("dataSourceSeparatorToken" Core..=)
              Core.<$> dataSourceSeparatorToken,
            ("diagnosticMessages" Core..=)
              Core.<$> diagnosticMessages,
            ("endKeyStrings" Core..=) Core.<$> endKeyStrings,
            ("hasPii" Core..=) Core.<$> hasPii,
            ("indexedKeys" Core..=) Core.<$> indexedKeys,
            ("keySeparator" Core..=) Core.<$> keySeparator,
            ("keyUnit" Core..=) Core.<$> keyUnit,
            ("metrics" Core..=) Core.<$> metrics,
            ("prefixNodes" Core..=) Core.<$> prefixNodes
          ]
      )

-- | Arguments to insert, update, insert/or/update, and replace operations.
--
-- /See:/ 'newWrite' smart constructor.
data Write = Write
  { -- | The names of the columns in table to be written. The list of columns must contain enough columns to allow Cloud Spanner to derive values for all primary key columns in the row(s) to be modified.
    columns :: (Core.Maybe [Core.Text]),
    -- | Required. The table whose rows will be written.
    table :: (Core.Maybe Core.Text),
    -- | The values to be written. @values@ can contain more than one list of values. If it does, then multiple rows are written, one for each entry in @values@. Each list in @values@ must have exactly as many entries as there are entries in columns above. Sending multiple lists is equivalent to sending multiple @Mutation@s, each containing one @values@ entry and repeating table and columns. Individual values in each list are encoded as described here.
    values :: (Core.Maybe [[Core.Value]])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Write' with the minimum fields required to make a request.
newWrite ::
  Write
newWrite =
  Write {columns = Core.Nothing, table = Core.Nothing, values = Core.Nothing}

instance Core.FromJSON Write where
  parseJSON =
    Core.withObject
      "Write"
      ( \o ->
          Write
            Core.<$> (o Core..:? "columns" Core..!= Core.mempty)
            Core.<*> (o Core..:? "table")
            Core.<*> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON Write where
  toJSON Write {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("table" Core..=) Core.<$> table,
            ("values" Core..=) Core.<$> values
          ]
      )
