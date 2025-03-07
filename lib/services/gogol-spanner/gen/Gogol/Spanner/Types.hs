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
-- Module      : Gogol.Spanner.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Spanner.Types
  ( -- * Configuration
    spannerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Spanner'Admin,
    Spanner'Data,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AsymmetricAutoscalingOption
    AsymmetricAutoscalingOption (..),
    newAsymmetricAutoscalingOption,

    -- ** AutoscalingConfig
    AutoscalingConfig (..),
    newAutoscalingConfig,

    -- ** AutoscalingConfigOverrides
    AutoscalingConfigOverrides (..),
    newAutoscalingConfigOverrides,

    -- ** AutoscalingLimits
    AutoscalingLimits (..),
    newAutoscalingLimits,

    -- ** AutoscalingTargets
    AutoscalingTargets (..),
    newAutoscalingTargets,

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

    -- ** BackupSchedule
    BackupSchedule (..),
    newBackupSchedule,

    -- ** BackupScheduleSpec
    BackupScheduleSpec (..),
    newBackupScheduleSpec,

    -- ** BatchCreateSessionsRequest
    BatchCreateSessionsRequest (..),
    newBatchCreateSessionsRequest,

    -- ** BatchCreateSessionsResponse
    BatchCreateSessionsResponse (..),
    newBatchCreateSessionsResponse,

    -- ** BatchWriteRequest
    BatchWriteRequest (..),
    newBatchWriteRequest,

    -- ** BatchWriteResponse
    BatchWriteResponse (..),
    newBatchWriteResponse,

    -- ** BeginTransactionRequest
    BeginTransactionRequest (..),
    newBeginTransactionRequest,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** ChangeQuorumMetadata
    ChangeQuorumMetadata (..),
    newChangeQuorumMetadata,

    -- ** ChangeQuorumRequest
    ChangeQuorumRequest (..),
    newChangeQuorumRequest,

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

    -- ** CreateBackupEncryptionConfig
    CreateBackupEncryptionConfig (..),
    newCreateBackupEncryptionConfig,

    -- ** CreateBackupEncryptionConfig_EncryptionType
    CreateBackupEncryptionConfig_EncryptionType (..),

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

    -- ** CreateInstanceMetadata_ExpectedFulfillmentPeriod
    CreateInstanceMetadata_ExpectedFulfillmentPeriod (..),

    -- ** CreateInstancePartitionMetadata
    CreateInstancePartitionMetadata (..),
    newCreateInstancePartitionMetadata,

    -- ** CreateInstancePartitionRequest
    CreateInstancePartitionRequest (..),
    newCreateInstancePartitionRequest,

    -- ** CreateInstanceRequest
    CreateInstanceRequest (..),
    newCreateInstanceRequest,

    -- ** CreateSessionRequest
    CreateSessionRequest (..),
    newCreateSessionRequest,

    -- ** CrontabSpec
    CrontabSpec (..),
    newCrontabSpec,

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

    -- ** DdlStatementActionInfo
    DdlStatementActionInfo (..),
    newDdlStatementActionInfo,

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

    -- ** DirectedReadOptions
    DirectedReadOptions (..),
    newDirectedReadOptions,

    -- ** DualRegionQuorum
    DualRegionQuorum (..),
    newDualRegionQuorum,

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

    -- ** ExcludeReplicas
    ExcludeReplicas (..),
    newExcludeReplicas,

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

    -- ** FullBackupSpec
    FullBackupSpec (..),
    newFullBackupSpec,

    -- ** GetDatabaseDdlResponse
    GetDatabaseDdlResponse (..),
    newGetDatabaseDdlResponse,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** IncludeReplicas
    IncludeReplicas (..),
    newIncludeReplicas,

    -- ** IncrementalBackupSpec
    IncrementalBackupSpec (..),
    newIncrementalBackupSpec,

    -- ** IndexAdvice
    IndexAdvice (..),
    newIndexAdvice,

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

    -- ** Instance_DefaultBackupScheduleType
    Instance_DefaultBackupScheduleType (..),

    -- ** Instance_Edition
    Instance_Edition (..),

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

    -- ** InstanceConfig_QuorumType
    InstanceConfig_QuorumType (..),

    -- ** InstanceConfig_State
    InstanceConfig_State (..),

    -- ** InstanceOperationProgress
    InstanceOperationProgress (..),
    newInstanceOperationProgress,

    -- ** InstancePartition
    InstancePartition (..),
    newInstancePartition,

    -- ** InstancePartition_State
    InstancePartition_State (..),

    -- ** InstanceReplicaSelection
    InstanceReplicaSelection (..),
    newInstanceReplicaSelection,

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

    -- ** ListBackupSchedulesResponse
    ListBackupSchedulesResponse (..),
    newListBackupSchedulesResponse,

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

    -- ** ListInstancePartitionOperationsResponse
    ListInstancePartitionOperationsResponse (..),
    newListInstancePartitionOperationsResponse,

    -- ** ListInstancePartitionsResponse
    ListInstancePartitionsResponse (..),
    newListInstancePartitionsResponse,

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

    -- ** MoveInstanceRequest
    MoveInstanceRequest (..),
    newMoveInstanceRequest,

    -- ** MultiplexedSessionPrecommitToken
    MultiplexedSessionPrecommitToken (..),
    newMultiplexedSessionPrecommitToken,

    -- ** Mutation
    Mutation (..),
    newMutation,

    -- ** MutationGroup
    MutationGroup (..),
    newMutationGroup,

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

    -- ** QueryAdvisorResult
    QueryAdvisorResult (..),
    newQueryAdvisorResult,

    -- ** QueryOptions
    QueryOptions (..),
    newQueryOptions,

    -- ** QueryPlan
    QueryPlan (..),
    newQueryPlan,

    -- ** QuorumInfo
    QuorumInfo (..),
    newQuorumInfo,

    -- ** QuorumInfo_Initiator
    QuorumInfo_Initiator (..),

    -- ** QuorumType
    QuorumType (..),
    newQuorumType,

    -- ** ReadOnly
    ReadOnly (..),
    newReadOnly,

    -- ** ReadRequest
    ReadRequest (..),
    newReadRequest,

    -- ** ReadRequest_LockHint
    ReadRequest_LockHint (..),

    -- ** ReadRequest_OrderBy
    ReadRequest_OrderBy (..),

    -- ** ReadWrite
    ReadWrite (..),
    newReadWrite,

    -- ** ReadWrite_ReadLockMode
    ReadWrite_ReadLockMode (..),

    -- ** ReplicaComputeCapacity
    ReplicaComputeCapacity (..),
    newReplicaComputeCapacity,

    -- ** ReplicaInfo
    ReplicaInfo (..),
    newReplicaInfo,

    -- ** ReplicaInfo_Type
    ReplicaInfo_Type (..),

    -- ** ReplicaSelection
    ReplicaSelection (..),
    newReplicaSelection,

    -- ** ReplicaSelection_Type
    ReplicaSelection_Type (..),

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

    -- ** SingleRegionQuorum
    SingleRegionQuorum (..),
    newSingleRegionQuorum,

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

    -- ** UpdateDatabaseMetadata
    UpdateDatabaseMetadata (..),
    newUpdateDatabaseMetadata,

    -- ** UpdateDatabaseRequest
    UpdateDatabaseRequest (..),
    newUpdateDatabaseRequest,

    -- ** UpdateInstanceConfigMetadata
    UpdateInstanceConfigMetadata (..),
    newUpdateInstanceConfigMetadata,

    -- ** UpdateInstanceConfigRequest
    UpdateInstanceConfigRequest (..),
    newUpdateInstanceConfigRequest,

    -- ** UpdateInstanceMetadata
    UpdateInstanceMetadata (..),
    newUpdateInstanceMetadata,

    -- ** UpdateInstanceMetadata_ExpectedFulfillmentPeriod
    UpdateInstanceMetadata_ExpectedFulfillmentPeriod (..),

    -- ** UpdateInstancePartitionMetadata
    UpdateInstancePartitionMetadata (..),
    newUpdateInstancePartitionMetadata,

    -- ** UpdateInstancePartitionRequest
    UpdateInstancePartitionRequest (..),
    newUpdateInstancePartitionRequest,

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

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Internal.Product
import Gogol.Spanner.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Spanner API. This contains the host and root path used as a starting point for constructing service requests.
spannerService :: Core.ServiceConfig
spannerService =
  Core.defaultService
    (Core.ServiceId "spanner:v1")
    "spanner.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | Administer your Spanner databases
type Spanner'Admin =
  "https://www.googleapis.com/auth/spanner.admin"

-- | View and manage the contents of your Spanner databases
type Spanner'Data = "https://www.googleapis.com/auth/spanner.data"
