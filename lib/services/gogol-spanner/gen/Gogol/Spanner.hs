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
-- Module      : Gogol.Spanner
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Spanner is a managed, mission-critical, globally consistent and scalable relational database service.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference>
module Gogol.Spanner
  ( -- * Configuration
    spannerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Spanner'Admin,
    Spanner'Data,

    -- * Resources

    -- ** spanner.projects.instanceConfigOperations.list
    SpannerProjectsInstanceConfigOperationsListResource,
    SpannerProjectsInstanceConfigOperationsList (..),
    newSpannerProjectsInstanceConfigOperationsList,

    -- ** spanner.projects.instanceConfigs.create
    SpannerProjectsInstanceConfigsCreateResource,
    SpannerProjectsInstanceConfigsCreate (..),
    newSpannerProjectsInstanceConfigsCreate,

    -- ** spanner.projects.instanceConfigs.delete
    SpannerProjectsInstanceConfigsDeleteResource,
    SpannerProjectsInstanceConfigsDelete (..),
    newSpannerProjectsInstanceConfigsDelete,

    -- ** spanner.projects.instanceConfigs.get
    SpannerProjectsInstanceConfigsGetResource,
    SpannerProjectsInstanceConfigsGet (..),
    newSpannerProjectsInstanceConfigsGet,

    -- ** spanner.projects.instanceConfigs.list
    SpannerProjectsInstanceConfigsListResource,
    SpannerProjectsInstanceConfigsList (..),
    newSpannerProjectsInstanceConfigsList,

    -- ** spanner.projects.instanceConfigs.operations.cancel
    SpannerProjectsInstanceConfigsOperationsCancelResource,
    SpannerProjectsInstanceConfigsOperationsCancel (..),
    newSpannerProjectsInstanceConfigsOperationsCancel,

    -- ** spanner.projects.instanceConfigs.operations.delete
    SpannerProjectsInstanceConfigsOperationsDeleteResource,
    SpannerProjectsInstanceConfigsOperationsDelete (..),
    newSpannerProjectsInstanceConfigsOperationsDelete,

    -- ** spanner.projects.instanceConfigs.operations.get
    SpannerProjectsInstanceConfigsOperationsGetResource,
    SpannerProjectsInstanceConfigsOperationsGet (..),
    newSpannerProjectsInstanceConfigsOperationsGet,

    -- ** spanner.projects.instanceConfigs.operations.list
    SpannerProjectsInstanceConfigsOperationsListResource,
    SpannerProjectsInstanceConfigsOperationsList (..),
    newSpannerProjectsInstanceConfigsOperationsList,

    -- ** spanner.projects.instanceConfigs.patch
    SpannerProjectsInstanceConfigsPatchResource,
    SpannerProjectsInstanceConfigsPatch (..),
    newSpannerProjectsInstanceConfigsPatch,

    -- ** spanner.projects.instances.backupOperations.list
    SpannerProjectsInstancesBackupOperationsListResource,
    SpannerProjectsInstancesBackupOperationsList (..),
    newSpannerProjectsInstancesBackupOperationsList,

    -- ** spanner.projects.instances.backups.copy
    SpannerProjectsInstancesBackupsCopyResource,
    SpannerProjectsInstancesBackupsCopy (..),
    newSpannerProjectsInstancesBackupsCopy,

    -- ** spanner.projects.instances.backups.create
    SpannerProjectsInstancesBackupsCreateResource,
    SpannerProjectsInstancesBackupsCreate (..),
    newSpannerProjectsInstancesBackupsCreate,

    -- ** spanner.projects.instances.backups.delete
    SpannerProjectsInstancesBackupsDeleteResource,
    SpannerProjectsInstancesBackupsDelete (..),
    newSpannerProjectsInstancesBackupsDelete,

    -- ** spanner.projects.instances.backups.get
    SpannerProjectsInstancesBackupsGetResource,
    SpannerProjectsInstancesBackupsGet (..),
    newSpannerProjectsInstancesBackupsGet,

    -- ** spanner.projects.instances.backups.getIamPolicy
    SpannerProjectsInstancesBackupsGetIamPolicyResource,
    SpannerProjectsInstancesBackupsGetIamPolicy (..),
    newSpannerProjectsInstancesBackupsGetIamPolicy,

    -- ** spanner.projects.instances.backups.list
    SpannerProjectsInstancesBackupsListResource,
    SpannerProjectsInstancesBackupsList (..),
    newSpannerProjectsInstancesBackupsList,

    -- ** spanner.projects.instances.backups.operations.cancel
    SpannerProjectsInstancesBackupsOperationsCancelResource,
    SpannerProjectsInstancesBackupsOperationsCancel (..),
    newSpannerProjectsInstancesBackupsOperationsCancel,

    -- ** spanner.projects.instances.backups.operations.delete
    SpannerProjectsInstancesBackupsOperationsDeleteResource,
    SpannerProjectsInstancesBackupsOperationsDelete (..),
    newSpannerProjectsInstancesBackupsOperationsDelete,

    -- ** spanner.projects.instances.backups.operations.get
    SpannerProjectsInstancesBackupsOperationsGetResource,
    SpannerProjectsInstancesBackupsOperationsGet (..),
    newSpannerProjectsInstancesBackupsOperationsGet,

    -- ** spanner.projects.instances.backups.operations.list
    SpannerProjectsInstancesBackupsOperationsListResource,
    SpannerProjectsInstancesBackupsOperationsList (..),
    newSpannerProjectsInstancesBackupsOperationsList,

    -- ** spanner.projects.instances.backups.patch
    SpannerProjectsInstancesBackupsPatchResource,
    SpannerProjectsInstancesBackupsPatch (..),
    newSpannerProjectsInstancesBackupsPatch,

    -- ** spanner.projects.instances.backups.setIamPolicy
    SpannerProjectsInstancesBackupsSetIamPolicyResource,
    SpannerProjectsInstancesBackupsSetIamPolicy (..),
    newSpannerProjectsInstancesBackupsSetIamPolicy,

    -- ** spanner.projects.instances.backups.testIamPermissions
    SpannerProjectsInstancesBackupsTestIamPermissionsResource,
    SpannerProjectsInstancesBackupsTestIamPermissions (..),
    newSpannerProjectsInstancesBackupsTestIamPermissions,

    -- ** spanner.projects.instances.create
    SpannerProjectsInstancesCreateResource,
    SpannerProjectsInstancesCreate (..),
    newSpannerProjectsInstancesCreate,

    -- ** spanner.projects.instances.databaseOperations.list
    SpannerProjectsInstancesDatabaseOperationsListResource,
    SpannerProjectsInstancesDatabaseOperationsList (..),
    newSpannerProjectsInstancesDatabaseOperationsList,

    -- ** spanner.projects.instances.databases.create
    SpannerProjectsInstancesDatabasesCreateResource,
    SpannerProjectsInstancesDatabasesCreate (..),
    newSpannerProjectsInstancesDatabasesCreate,

    -- ** spanner.projects.instances.databases.databaseRoles.list
    SpannerProjectsInstancesDatabasesDatabaseRolesListResource,
    SpannerProjectsInstancesDatabasesDatabaseRolesList (..),
    newSpannerProjectsInstancesDatabasesDatabaseRolesList,

    -- ** spanner.projects.instances.databases.databaseRoles.testIamPermissions
    SpannerProjectsInstancesDatabasesDatabaseRolesTestIamPermissionsResource,
    SpannerProjectsInstancesDatabasesDatabaseRolesTestIamPermissions (..),
    newSpannerProjectsInstancesDatabasesDatabaseRolesTestIamPermissions,

    -- ** spanner.projects.instances.databases.dropDatabase
    SpannerProjectsInstancesDatabasesDropDatabaseResource,
    SpannerProjectsInstancesDatabasesDropDatabase (..),
    newSpannerProjectsInstancesDatabasesDropDatabase,

    -- ** spanner.projects.instances.databases.get
    SpannerProjectsInstancesDatabasesGetResource,
    SpannerProjectsInstancesDatabasesGet (..),
    newSpannerProjectsInstancesDatabasesGet,

    -- ** spanner.projects.instances.databases.getDdl
    SpannerProjectsInstancesDatabasesGetDdlResource,
    SpannerProjectsInstancesDatabasesGetDdl (..),
    newSpannerProjectsInstancesDatabasesGetDdl,

    -- ** spanner.projects.instances.databases.getIamPolicy
    SpannerProjectsInstancesDatabasesGetIamPolicyResource,
    SpannerProjectsInstancesDatabasesGetIamPolicy (..),
    newSpannerProjectsInstancesDatabasesGetIamPolicy,

    -- ** spanner.projects.instances.databases.getScans
    SpannerProjectsInstancesDatabasesGetScansResource,
    SpannerProjectsInstancesDatabasesGetScans (..),
    newSpannerProjectsInstancesDatabasesGetScans,

    -- ** spanner.projects.instances.databases.list
    SpannerProjectsInstancesDatabasesListResource,
    SpannerProjectsInstancesDatabasesList (..),
    newSpannerProjectsInstancesDatabasesList,

    -- ** spanner.projects.instances.databases.operations.cancel
    SpannerProjectsInstancesDatabasesOperationsCancelResource,
    SpannerProjectsInstancesDatabasesOperationsCancel (..),
    newSpannerProjectsInstancesDatabasesOperationsCancel,

    -- ** spanner.projects.instances.databases.operations.delete
    SpannerProjectsInstancesDatabasesOperationsDeleteResource,
    SpannerProjectsInstancesDatabasesOperationsDelete (..),
    newSpannerProjectsInstancesDatabasesOperationsDelete,

    -- ** spanner.projects.instances.databases.operations.get
    SpannerProjectsInstancesDatabasesOperationsGetResource,
    SpannerProjectsInstancesDatabasesOperationsGet (..),
    newSpannerProjectsInstancesDatabasesOperationsGet,

    -- ** spanner.projects.instances.databases.operations.list
    SpannerProjectsInstancesDatabasesOperationsListResource,
    SpannerProjectsInstancesDatabasesOperationsList (..),
    newSpannerProjectsInstancesDatabasesOperationsList,

    -- ** spanner.projects.instances.databases.restore
    SpannerProjectsInstancesDatabasesRestoreResource,
    SpannerProjectsInstancesDatabasesRestore (..),
    newSpannerProjectsInstancesDatabasesRestore,

    -- ** spanner.projects.instances.databases.sessions.batchCreate
    SpannerProjectsInstancesDatabasesSessionsBatchCreateResource,
    SpannerProjectsInstancesDatabasesSessionsBatchCreate (..),
    newSpannerProjectsInstancesDatabasesSessionsBatchCreate,

    -- ** spanner.projects.instances.databases.sessions.beginTransaction
    SpannerProjectsInstancesDatabasesSessionsBeginTransactionResource,
    SpannerProjectsInstancesDatabasesSessionsBeginTransaction (..),
    newSpannerProjectsInstancesDatabasesSessionsBeginTransaction,

    -- ** spanner.projects.instances.databases.sessions.commit
    SpannerProjectsInstancesDatabasesSessionsCommitResource,
    SpannerProjectsInstancesDatabasesSessionsCommit (..),
    newSpannerProjectsInstancesDatabasesSessionsCommit,

    -- ** spanner.projects.instances.databases.sessions.create
    SpannerProjectsInstancesDatabasesSessionsCreateResource,
    SpannerProjectsInstancesDatabasesSessionsCreate (..),
    newSpannerProjectsInstancesDatabasesSessionsCreate,

    -- ** spanner.projects.instances.databases.sessions.delete
    SpannerProjectsInstancesDatabasesSessionsDeleteResource,
    SpannerProjectsInstancesDatabasesSessionsDelete (..),
    newSpannerProjectsInstancesDatabasesSessionsDelete,

    -- ** spanner.projects.instances.databases.sessions.executeBatchDml
    SpannerProjectsInstancesDatabasesSessionsExecuteBatchDmlResource,
    SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml (..),
    newSpannerProjectsInstancesDatabasesSessionsExecuteBatchDml,

    -- ** spanner.projects.instances.databases.sessions.executeSql
    SpannerProjectsInstancesDatabasesSessionsExecuteSqlResource,
    SpannerProjectsInstancesDatabasesSessionsExecuteSql (..),
    newSpannerProjectsInstancesDatabasesSessionsExecuteSql,

    -- ** spanner.projects.instances.databases.sessions.executeStreamingSql
    SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSqlResource,
    SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql (..),
    newSpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql,

    -- ** spanner.projects.instances.databases.sessions.get
    SpannerProjectsInstancesDatabasesSessionsGetResource,
    SpannerProjectsInstancesDatabasesSessionsGet (..),
    newSpannerProjectsInstancesDatabasesSessionsGet,

    -- ** spanner.projects.instances.databases.sessions.list
    SpannerProjectsInstancesDatabasesSessionsListResource,
    SpannerProjectsInstancesDatabasesSessionsList (..),
    newSpannerProjectsInstancesDatabasesSessionsList,

    -- ** spanner.projects.instances.databases.sessions.partitionQuery
    SpannerProjectsInstancesDatabasesSessionsPartitionQueryResource,
    SpannerProjectsInstancesDatabasesSessionsPartitionQuery (..),
    newSpannerProjectsInstancesDatabasesSessionsPartitionQuery,

    -- ** spanner.projects.instances.databases.sessions.partitionRead
    SpannerProjectsInstancesDatabasesSessionsPartitionReadResource,
    SpannerProjectsInstancesDatabasesSessionsPartitionRead (..),
    newSpannerProjectsInstancesDatabasesSessionsPartitionRead,

    -- ** spanner.projects.instances.databases.sessions.read
    SpannerProjectsInstancesDatabasesSessionsReadResource,
    SpannerProjectsInstancesDatabasesSessionsRead (..),
    newSpannerProjectsInstancesDatabasesSessionsRead,

    -- ** spanner.projects.instances.databases.sessions.rollback
    SpannerProjectsInstancesDatabasesSessionsRollbackResource,
    SpannerProjectsInstancesDatabasesSessionsRollback (..),
    newSpannerProjectsInstancesDatabasesSessionsRollback,

    -- ** spanner.projects.instances.databases.sessions.streamingRead
    SpannerProjectsInstancesDatabasesSessionsStreamingReadResource,
    SpannerProjectsInstancesDatabasesSessionsStreamingRead (..),
    newSpannerProjectsInstancesDatabasesSessionsStreamingRead,

    -- ** spanner.projects.instances.databases.setIamPolicy
    SpannerProjectsInstancesDatabasesSetIamPolicyResource,
    SpannerProjectsInstancesDatabasesSetIamPolicy (..),
    newSpannerProjectsInstancesDatabasesSetIamPolicy,

    -- ** spanner.projects.instances.databases.testIamPermissions
    SpannerProjectsInstancesDatabasesTestIamPermissionsResource,
    SpannerProjectsInstancesDatabasesTestIamPermissions (..),
    newSpannerProjectsInstancesDatabasesTestIamPermissions,

    -- ** spanner.projects.instances.databases.updateDdl
    SpannerProjectsInstancesDatabasesUpdateDdlResource,
    SpannerProjectsInstancesDatabasesUpdateDdl (..),
    newSpannerProjectsInstancesDatabasesUpdateDdl,

    -- ** spanner.projects.instances.delete
    SpannerProjectsInstancesDeleteResource,
    SpannerProjectsInstancesDelete (..),
    newSpannerProjectsInstancesDelete,

    -- ** spanner.projects.instances.get
    SpannerProjectsInstancesGetResource,
    SpannerProjectsInstancesGet (..),
    newSpannerProjectsInstancesGet,

    -- ** spanner.projects.instances.getIamPolicy
    SpannerProjectsInstancesGetIamPolicyResource,
    SpannerProjectsInstancesGetIamPolicy (..),
    newSpannerProjectsInstancesGetIamPolicy,

    -- ** spanner.projects.instances.list
    SpannerProjectsInstancesListResource,
    SpannerProjectsInstancesList (..),
    newSpannerProjectsInstancesList,

    -- ** spanner.projects.instances.operations.cancel
    SpannerProjectsInstancesOperationsCancelResource,
    SpannerProjectsInstancesOperationsCancel (..),
    newSpannerProjectsInstancesOperationsCancel,

    -- ** spanner.projects.instances.operations.delete
    SpannerProjectsInstancesOperationsDeleteResource,
    SpannerProjectsInstancesOperationsDelete (..),
    newSpannerProjectsInstancesOperationsDelete,

    -- ** spanner.projects.instances.operations.get
    SpannerProjectsInstancesOperationsGetResource,
    SpannerProjectsInstancesOperationsGet (..),
    newSpannerProjectsInstancesOperationsGet,

    -- ** spanner.projects.instances.operations.list
    SpannerProjectsInstancesOperationsListResource,
    SpannerProjectsInstancesOperationsList (..),
    newSpannerProjectsInstancesOperationsList,

    -- ** spanner.projects.instances.patch
    SpannerProjectsInstancesPatchResource,
    SpannerProjectsInstancesPatch (..),
    newSpannerProjectsInstancesPatch,

    -- ** spanner.projects.instances.setIamPolicy
    SpannerProjectsInstancesSetIamPolicyResource,
    SpannerProjectsInstancesSetIamPolicy (..),
    newSpannerProjectsInstancesSetIamPolicy,

    -- ** spanner.projects.instances.testIamPermissions
    SpannerProjectsInstancesTestIamPermissionsResource,
    SpannerProjectsInstancesTestIamPermissions (..),
    newSpannerProjectsInstancesTestIamPermissions,

    -- ** spanner.scans.list
    SpannerScansListResource,
    SpannerScansList (..),
    newSpannerScansList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Backup
    Backup (..),
    newBackup,

    -- ** Backup_DatabaseDialect
    Backup_DatabaseDialect (..),

    -- ** Backup_State
    Backup_State (..),

    -- ** BackupInfo
    BackupInfo (..),
    newBackupInfo,

    -- ** BatchCreateSessionsRequest
    BatchCreateSessionsRequest (..),
    newBatchCreateSessionsRequest,

    -- ** BatchCreateSessionsResponse
    BatchCreateSessionsResponse (..),
    newBatchCreateSessionsResponse,

    -- ** BeginTransactionRequest
    BeginTransactionRequest (..),
    newBeginTransactionRequest,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** ChildLink
    ChildLink (..),
    newChildLink,

    -- ** CommitRequest
    CommitRequest (..),
    newCommitRequest,

    -- ** CommitResponse
    CommitResponse (..),
    newCommitResponse,

    -- ** CommitStats
    CommitStats (..),
    newCommitStats,

    -- ** ContextValue
    ContextValue (..),
    newContextValue,

    -- ** ContextValue_Severity
    ContextValue_Severity (..),

    -- ** CopyBackupEncryptionConfig
    CopyBackupEncryptionConfig (..),
    newCopyBackupEncryptionConfig,

    -- ** CopyBackupEncryptionConfig_EncryptionType
    CopyBackupEncryptionConfig_EncryptionType (..),

    -- ** CopyBackupMetadata
    CopyBackupMetadata (..),
    newCopyBackupMetadata,

    -- ** CopyBackupRequest
    CopyBackupRequest (..),
    newCopyBackupRequest,

    -- ** CreateBackupMetadata
    CreateBackupMetadata (..),
    newCreateBackupMetadata,

    -- ** CreateDatabaseMetadata
    CreateDatabaseMetadata (..),
    newCreateDatabaseMetadata,

    -- ** CreateDatabaseRequest
    CreateDatabaseRequest (..),
    newCreateDatabaseRequest,

    -- ** CreateDatabaseRequest_DatabaseDialect
    CreateDatabaseRequest_DatabaseDialect (..),

    -- ** CreateInstanceConfigMetadata
    CreateInstanceConfigMetadata (..),
    newCreateInstanceConfigMetadata,

    -- ** CreateInstanceConfigRequest
    CreateInstanceConfigRequest (..),
    newCreateInstanceConfigRequest,

    -- ** CreateInstanceMetadata
    CreateInstanceMetadata (..),
    newCreateInstanceMetadata,

    -- ** CreateInstanceRequest
    CreateInstanceRequest (..),
    newCreateInstanceRequest,

    -- ** CreateSessionRequest
    CreateSessionRequest (..),
    newCreateSessionRequest,

    -- ** Database
    Database (..),
    newDatabase,

    -- ** Database_DatabaseDialect
    Database_DatabaseDialect (..),

    -- ** Database_State
    Database_State (..),

    -- ** DatabaseRole
    DatabaseRole (..),
    newDatabaseRole,

    -- ** Delete'
    Delete' (..),
    newDelete,

    -- ** DerivedMetric
    DerivedMetric (..),
    newDerivedMetric,

    -- ** DiagnosticMessage
    DiagnosticMessage (..),
    newDiagnosticMessage,

    -- ** DiagnosticMessage_Severity
    DiagnosticMessage_Severity (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,

    -- ** EncryptionInfo
    EncryptionInfo (..),
    newEncryptionInfo,

    -- ** EncryptionInfo_EncryptionType
    EncryptionInfo_EncryptionType (..),

    -- ** ExecuteBatchDmlRequest
    ExecuteBatchDmlRequest (..),
    newExecuteBatchDmlRequest,

    -- ** ExecuteBatchDmlResponse
    ExecuteBatchDmlResponse (..),
    newExecuteBatchDmlResponse,

    -- ** ExecuteSqlRequest
    ExecuteSqlRequest (..),
    newExecuteSqlRequest,

    -- ** ExecuteSqlRequest_ParamTypes
    ExecuteSqlRequest_ParamTypes (..),
    newExecuteSqlRequest_ParamTypes,

    -- ** ExecuteSqlRequest_Params
    ExecuteSqlRequest_Params (..),
    newExecuteSqlRequest_Params,

    -- ** ExecuteSqlRequest_QueryMode
    ExecuteSqlRequest_QueryMode (..),

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** Field
    Field (..),
    newField,

    -- ** FreeInstanceMetadata
    FreeInstanceMetadata (..),
    newFreeInstanceMetadata,

    -- ** FreeInstanceMetadata_ExpireBehavior
    FreeInstanceMetadata_ExpireBehavior (..),

    -- ** GetDatabaseDdlResponse
    GetDatabaseDdlResponse (..),
    newGetDatabaseDdlResponse,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** IndexedHotKey
    IndexedHotKey (..),
    newIndexedHotKey,

    -- ** IndexedHotKey_SparseHotKeys
    IndexedHotKey_SparseHotKeys (..),
    newIndexedHotKey_SparseHotKeys,

    -- ** IndexedKeyRangeInfos
    IndexedKeyRangeInfos (..),
    newIndexedKeyRangeInfos,

    -- ** IndexedKeyRangeInfos_KeyRangeInfos
    IndexedKeyRangeInfos_KeyRangeInfos (..),
    newIndexedKeyRangeInfos_KeyRangeInfos,

    -- ** Instance
    Instance (..),
    newInstance,

    -- ** Instance_InstanceType
    Instance_InstanceType (..),

    -- ** Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- ** Instance_State
    Instance_State (..),

    -- ** InstanceConfig
    InstanceConfig (..),
    newInstanceConfig,

    -- ** InstanceConfig_ConfigType
    InstanceConfig_ConfigType (..),

    -- ** InstanceConfig_FreeInstanceAvailability
    InstanceConfig_FreeInstanceAvailability (..),

    -- ** InstanceConfig_Labels
    InstanceConfig_Labels (..),
    newInstanceConfig_Labels,

    -- ** InstanceConfig_State
    InstanceConfig_State (..),

    -- ** InstanceOperationProgress
    InstanceOperationProgress (..),
    newInstanceOperationProgress,

    -- ** KeyRange
    KeyRange (..),
    newKeyRange,

    -- ** KeyRangeInfo
    KeyRangeInfo (..),
    newKeyRangeInfo,

    -- ** KeyRangeInfos
    KeyRangeInfos (..),
    newKeyRangeInfos,

    -- ** KeySet
    KeySet (..),
    newKeySet,

    -- ** ListBackupOperationsResponse
    ListBackupOperationsResponse (..),
    newListBackupOperationsResponse,

    -- ** ListBackupsResponse
    ListBackupsResponse (..),
    newListBackupsResponse,

    -- ** ListDatabaseOperationsResponse
    ListDatabaseOperationsResponse (..),
    newListDatabaseOperationsResponse,

    -- ** ListDatabaseRolesResponse
    ListDatabaseRolesResponse (..),
    newListDatabaseRolesResponse,

    -- ** ListDatabasesResponse
    ListDatabasesResponse (..),
    newListDatabasesResponse,

    -- ** ListInstanceConfigOperationsResponse
    ListInstanceConfigOperationsResponse (..),
    newListInstanceConfigOperationsResponse,

    -- ** ListInstanceConfigsResponse
    ListInstanceConfigsResponse (..),
    newListInstanceConfigsResponse,

    -- ** ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListScansResponse
    ListScansResponse (..),
    newListScansResponse,

    -- ** ListSessionsResponse
    ListSessionsResponse (..),
    newListSessionsResponse,

    -- ** LocalizedString
    LocalizedString (..),
    newLocalizedString,

    -- ** LocalizedString_Args
    LocalizedString_Args (..),
    newLocalizedString_Args,

    -- ** Metric
    Metric (..),
    newMetric,

    -- ** Metric_Aggregation
    Metric_Aggregation (..),

    -- ** Metric_IndexedHotKeys
    Metric_IndexedHotKeys (..),
    newMetric_IndexedHotKeys,

    -- ** Metric_IndexedKeyRangeInfos
    Metric_IndexedKeyRangeInfos (..),
    newMetric_IndexedKeyRangeInfos,

    -- ** MetricMatrix
    MetricMatrix (..),
    newMetricMatrix,

    -- ** MetricMatrixRow
    MetricMatrixRow (..),
    newMetricMatrixRow,

    -- ** Mutation
    Mutation (..),
    newMutation,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationProgress
    OperationProgress (..),
    newOperationProgress,

    -- ** OptimizeRestoredDatabaseMetadata
    OptimizeRestoredDatabaseMetadata (..),
    newOptimizeRestoredDatabaseMetadata,

    -- ** PartialResultSet
    PartialResultSet (..),
    newPartialResultSet,

    -- ** Partition
    Partition (..),
    newPartition,

    -- ** PartitionOptions
    PartitionOptions (..),
    newPartitionOptions,

    -- ** PartitionQueryRequest
    PartitionQueryRequest (..),
    newPartitionQueryRequest,

    -- ** PartitionQueryRequest_ParamTypes
    PartitionQueryRequest_ParamTypes (..),
    newPartitionQueryRequest_ParamTypes,

    -- ** PartitionQueryRequest_Params
    PartitionQueryRequest_Params (..),
    newPartitionQueryRequest_Params,

    -- ** PartitionReadRequest
    PartitionReadRequest (..),
    newPartitionReadRequest,

    -- ** PartitionResponse
    PartitionResponse (..),
    newPartitionResponse,

    -- ** PartitionedDml
    PartitionedDml (..),
    newPartitionedDml,

    -- ** PlanNode
    PlanNode (..),
    newPlanNode,

    -- ** PlanNode_ExecutionStats
    PlanNode_ExecutionStats (..),
    newPlanNode_ExecutionStats,

    -- ** PlanNode_Kind
    PlanNode_Kind (..),

    -- ** PlanNode_Metadata
    PlanNode_Metadata (..),
    newPlanNode_Metadata,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PrefixNode
    PrefixNode (..),
    newPrefixNode,

    -- ** QueryOptions
    QueryOptions (..),
    newQueryOptions,

    -- ** QueryPlan
    QueryPlan (..),
    newQueryPlan,

    -- ** ReadOnly
    ReadOnly (..),
    newReadOnly,

    -- ** ReadRequest
    ReadRequest (..),
    newReadRequest,

    -- ** ReadWrite
    ReadWrite (..),
    newReadWrite,

    -- ** ReadWrite_ReadLockMode
    ReadWrite_ReadLockMode (..),

    -- ** ReplicaInfo
    ReplicaInfo (..),
    newReplicaInfo,

    -- ** ReplicaInfo_Type
    ReplicaInfo_Type (..),

    -- ** RequestOptions
    RequestOptions (..),
    newRequestOptions,

    -- ** RequestOptions_Priority
    RequestOptions_Priority (..),

    -- ** RestoreDatabaseEncryptionConfig
    RestoreDatabaseEncryptionConfig (..),
    newRestoreDatabaseEncryptionConfig,

    -- ** RestoreDatabaseEncryptionConfig_EncryptionType
    RestoreDatabaseEncryptionConfig_EncryptionType (..),

    -- ** RestoreDatabaseMetadata
    RestoreDatabaseMetadata (..),
    newRestoreDatabaseMetadata,

    -- ** RestoreDatabaseMetadata_SourceType
    RestoreDatabaseMetadata_SourceType (..),

    -- ** RestoreDatabaseRequest
    RestoreDatabaseRequest (..),
    newRestoreDatabaseRequest,

    -- ** RestoreInfo
    RestoreInfo (..),
    newRestoreInfo,

    -- ** RestoreInfo_SourceType
    RestoreInfo_SourceType (..),

    -- ** ResultSet
    ResultSet (..),
    newResultSet,

    -- ** ResultSetMetadata
    ResultSetMetadata (..),
    newResultSetMetadata,

    -- ** ResultSetStats
    ResultSetStats (..),
    newResultSetStats,

    -- ** ResultSetStats_QueryStats
    ResultSetStats_QueryStats (..),
    newResultSetStats_QueryStats,

    -- ** RollbackRequest
    RollbackRequest (..),
    newRollbackRequest,

    -- ** Scan
    Scan (..),
    newScan,

    -- ** Scan_Details
    Scan_Details (..),
    newScan_Details,

    -- ** ScanData
    ScanData (..),
    newScanData,

    -- ** Session
    Session (..),
    newSession,

    -- ** Session_Labels
    Session_Labels (..),
    newSession_Labels,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** ShortRepresentation
    ShortRepresentation (..),
    newShortRepresentation,

    -- ** ShortRepresentation_Subqueries
    ShortRepresentation_Subqueries (..),
    newShortRepresentation_Subqueries,

    -- ** Statement
    Statement (..),
    newStatement,

    -- ** Statement_ParamTypes
    Statement_ParamTypes (..),
    newStatement_ParamTypes,

    -- ** Statement_Params
    Statement_Params (..),
    newStatement_Params,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StructType
    StructType (..),
    newStructType,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** Transaction
    Transaction (..),
    newTransaction,

    -- ** TransactionOptions
    TransactionOptions (..),
    newTransactionOptions,

    -- ** TransactionSelector
    TransactionSelector (..),
    newTransactionSelector,

    -- ** Type
    Type (..),
    newType,

    -- ** Type_Code
    Type_Code (..),

    -- ** Type_TypeAnnotation
    Type_TypeAnnotation (..),

    -- ** UpdateDatabaseDdlMetadata
    UpdateDatabaseDdlMetadata (..),
    newUpdateDatabaseDdlMetadata,

    -- ** UpdateDatabaseDdlRequest
    UpdateDatabaseDdlRequest (..),
    newUpdateDatabaseDdlRequest,

    -- ** UpdateInstanceConfigMetadata
    UpdateInstanceConfigMetadata (..),
    newUpdateInstanceConfigMetadata,

    -- ** UpdateInstanceConfigRequest
    UpdateInstanceConfigRequest (..),
    newUpdateInstanceConfigRequest,

    -- ** UpdateInstanceMetadata
    UpdateInstanceMetadata (..),
    newUpdateInstanceMetadata,

    -- ** UpdateInstanceRequest
    UpdateInstanceRequest (..),
    newUpdateInstanceRequest,

    -- ** VisualizationData
    VisualizationData (..),
    newVisualizationData,

    -- ** VisualizationData_KeyUnit
    VisualizationData_KeyUnit (..),

    -- ** Write
    Write (..),
    newWrite,

    -- ** ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
    ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType (..),

    -- ** ProjectsInstancesDatabasesGetScansView
    ProjectsInstancesDatabasesGetScansView (..),

    -- ** ScansListView
    ScansListView (..),
  )
where

import Gogol.Spanner.Projects.InstanceConfigOperations.List
import Gogol.Spanner.Projects.InstanceConfigs.Create
import Gogol.Spanner.Projects.InstanceConfigs.Delete
import Gogol.Spanner.Projects.InstanceConfigs.Get
import Gogol.Spanner.Projects.InstanceConfigs.List
import Gogol.Spanner.Projects.InstanceConfigs.Operations.Cancel
import Gogol.Spanner.Projects.InstanceConfigs.Operations.Delete
import Gogol.Spanner.Projects.InstanceConfigs.Operations.Get
import Gogol.Spanner.Projects.InstanceConfigs.Operations.List
import Gogol.Spanner.Projects.InstanceConfigs.Patch
import Gogol.Spanner.Projects.Instances.BackupOperations.List
import Gogol.Spanner.Projects.Instances.Backups.Copy
import Gogol.Spanner.Projects.Instances.Backups.Create
import Gogol.Spanner.Projects.Instances.Backups.Delete
import Gogol.Spanner.Projects.Instances.Backups.Get
import Gogol.Spanner.Projects.Instances.Backups.GetIamPolicy
import Gogol.Spanner.Projects.Instances.Backups.List
import Gogol.Spanner.Projects.Instances.Backups.Operations.Cancel
import Gogol.Spanner.Projects.Instances.Backups.Operations.Delete
import Gogol.Spanner.Projects.Instances.Backups.Operations.Get
import Gogol.Spanner.Projects.Instances.Backups.Operations.List
import Gogol.Spanner.Projects.Instances.Backups.Patch
import Gogol.Spanner.Projects.Instances.Backups.SetIamPolicy
import Gogol.Spanner.Projects.Instances.Backups.TestIamPermissions
import Gogol.Spanner.Projects.Instances.Create
import Gogol.Spanner.Projects.Instances.DatabaseOperations.List
import Gogol.Spanner.Projects.Instances.Databases.Create
import Gogol.Spanner.Projects.Instances.Databases.DatabaseRoles.List
import Gogol.Spanner.Projects.Instances.Databases.DatabaseRoles.TestIamPermissions
import Gogol.Spanner.Projects.Instances.Databases.DropDatabase
import Gogol.Spanner.Projects.Instances.Databases.Get
import Gogol.Spanner.Projects.Instances.Databases.GetDdl
import Gogol.Spanner.Projects.Instances.Databases.GetIamPolicy
import Gogol.Spanner.Projects.Instances.Databases.GetScans
import Gogol.Spanner.Projects.Instances.Databases.List
import Gogol.Spanner.Projects.Instances.Databases.Operations.Cancel
import Gogol.Spanner.Projects.Instances.Databases.Operations.Delete
import Gogol.Spanner.Projects.Instances.Databases.Operations.Get
import Gogol.Spanner.Projects.Instances.Databases.Operations.List
import Gogol.Spanner.Projects.Instances.Databases.Restore
import Gogol.Spanner.Projects.Instances.Databases.Sessions.BatchCreate
import Gogol.Spanner.Projects.Instances.Databases.Sessions.BeginTransaction
import Gogol.Spanner.Projects.Instances.Databases.Sessions.Commit
import Gogol.Spanner.Projects.Instances.Databases.Sessions.Create
import Gogol.Spanner.Projects.Instances.Databases.Sessions.Delete
import Gogol.Spanner.Projects.Instances.Databases.Sessions.ExecuteBatchDml
import Gogol.Spanner.Projects.Instances.Databases.Sessions.ExecuteSql
import Gogol.Spanner.Projects.Instances.Databases.Sessions.ExecuteStreamingSql
import Gogol.Spanner.Projects.Instances.Databases.Sessions.Get
import Gogol.Spanner.Projects.Instances.Databases.Sessions.List
import Gogol.Spanner.Projects.Instances.Databases.Sessions.PartitionQuery
import Gogol.Spanner.Projects.Instances.Databases.Sessions.PartitionRead
import Gogol.Spanner.Projects.Instances.Databases.Sessions.Read
import Gogol.Spanner.Projects.Instances.Databases.Sessions.Rollback
import Gogol.Spanner.Projects.Instances.Databases.Sessions.StreamingRead
import Gogol.Spanner.Projects.Instances.Databases.SetIamPolicy
import Gogol.Spanner.Projects.Instances.Databases.TestIamPermissions
import Gogol.Spanner.Projects.Instances.Databases.UpdateDdl
import Gogol.Spanner.Projects.Instances.Delete
import Gogol.Spanner.Projects.Instances.Get
import Gogol.Spanner.Projects.Instances.GetIamPolicy
import Gogol.Spanner.Projects.Instances.List
import Gogol.Spanner.Projects.Instances.Operations.Cancel
import Gogol.Spanner.Projects.Instances.Operations.Delete
import Gogol.Spanner.Projects.Instances.Operations.Get
import Gogol.Spanner.Projects.Instances.Operations.List
import Gogol.Spanner.Projects.Instances.Patch
import Gogol.Spanner.Projects.Instances.SetIamPolicy
import Gogol.Spanner.Projects.Instances.TestIamPermissions
import Gogol.Spanner.Scans.List
import Gogol.Spanner.Types