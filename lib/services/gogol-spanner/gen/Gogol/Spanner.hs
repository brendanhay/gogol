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
    (
    -- * Configuration
      spannerService

    -- * OAuth Scopes
    , cloudPlatformScope
    , spannerAdminScope
    , spannerDataScope

    -- * Resources

    -- ** spanner.projects.instanceConfigs.get
    , SpannerProjectsInstanceConfigsGetResource
    , newSpannerProjectsInstanceConfigsGet
    , SpannerProjectsInstanceConfigsGet

    -- ** spanner.projects.instanceConfigs.list
    , SpannerProjectsInstanceConfigsListResource
    , newSpannerProjectsInstanceConfigsList
    , SpannerProjectsInstanceConfigsList

    -- ** spanner.projects.instances.backupOperations.list
    , SpannerProjectsInstancesBackupOperationsListResource
    , newSpannerProjectsInstancesBackupOperationsList
    , SpannerProjectsInstancesBackupOperationsList

    -- ** spanner.projects.instances.backups.create
    , SpannerProjectsInstancesBackupsCreateResource
    , newSpannerProjectsInstancesBackupsCreate
    , SpannerProjectsInstancesBackupsCreate

    -- ** spanner.projects.instances.backups.delete
    , SpannerProjectsInstancesBackupsDeleteResource
    , newSpannerProjectsInstancesBackupsDelete
    , SpannerProjectsInstancesBackupsDelete

    -- ** spanner.projects.instances.backups.get
    , SpannerProjectsInstancesBackupsGetResource
    , newSpannerProjectsInstancesBackupsGet
    , SpannerProjectsInstancesBackupsGet

    -- ** spanner.projects.instances.backups.getIamPolicy
    , SpannerProjectsInstancesBackupsGetIamPolicyResource
    , newSpannerProjectsInstancesBackupsGetIamPolicy
    , SpannerProjectsInstancesBackupsGetIamPolicy

    -- ** spanner.projects.instances.backups.list
    , SpannerProjectsInstancesBackupsListResource
    , newSpannerProjectsInstancesBackupsList
    , SpannerProjectsInstancesBackupsList

    -- ** spanner.projects.instances.backups.operations.cancel
    , SpannerProjectsInstancesBackupsOperationsCancelResource
    , newSpannerProjectsInstancesBackupsOperationsCancel
    , SpannerProjectsInstancesBackupsOperationsCancel

    -- ** spanner.projects.instances.backups.operations.delete
    , SpannerProjectsInstancesBackupsOperationsDeleteResource
    , newSpannerProjectsInstancesBackupsOperationsDelete
    , SpannerProjectsInstancesBackupsOperationsDelete

    -- ** spanner.projects.instances.backups.operations.get
    , SpannerProjectsInstancesBackupsOperationsGetResource
    , newSpannerProjectsInstancesBackupsOperationsGet
    , SpannerProjectsInstancesBackupsOperationsGet

    -- ** spanner.projects.instances.backups.operations.list
    , SpannerProjectsInstancesBackupsOperationsListResource
    , newSpannerProjectsInstancesBackupsOperationsList
    , SpannerProjectsInstancesBackupsOperationsList

    -- ** spanner.projects.instances.backups.patch
    , SpannerProjectsInstancesBackupsPatchResource
    , newSpannerProjectsInstancesBackupsPatch
    , SpannerProjectsInstancesBackupsPatch

    -- ** spanner.projects.instances.backups.setIamPolicy
    , SpannerProjectsInstancesBackupsSetIamPolicyResource
    , newSpannerProjectsInstancesBackupsSetIamPolicy
    , SpannerProjectsInstancesBackupsSetIamPolicy

    -- ** spanner.projects.instances.backups.testIamPermissions
    , SpannerProjectsInstancesBackupsTestIamPermissionsResource
    , newSpannerProjectsInstancesBackupsTestIamPermissions
    , SpannerProjectsInstancesBackupsTestIamPermissions

    -- ** spanner.projects.instances.create
    , SpannerProjectsInstancesCreateResource
    , newSpannerProjectsInstancesCreate
    , SpannerProjectsInstancesCreate

    -- ** spanner.projects.instances.databaseOperations.list
    , SpannerProjectsInstancesDatabaseOperationsListResource
    , newSpannerProjectsInstancesDatabaseOperationsList
    , SpannerProjectsInstancesDatabaseOperationsList

    -- ** spanner.projects.instances.databases.create
    , SpannerProjectsInstancesDatabasesCreateResource
    , newSpannerProjectsInstancesDatabasesCreate
    , SpannerProjectsInstancesDatabasesCreate

    -- ** spanner.projects.instances.databases.dropDatabase
    , SpannerProjectsInstancesDatabasesDropDatabaseResource
    , newSpannerProjectsInstancesDatabasesDropDatabase
    , SpannerProjectsInstancesDatabasesDropDatabase

    -- ** spanner.projects.instances.databases.get
    , SpannerProjectsInstancesDatabasesGetResource
    , newSpannerProjectsInstancesDatabasesGet
    , SpannerProjectsInstancesDatabasesGet

    -- ** spanner.projects.instances.databases.getDdl
    , SpannerProjectsInstancesDatabasesGetDdlResource
    , newSpannerProjectsInstancesDatabasesGetDdl
    , SpannerProjectsInstancesDatabasesGetDdl

    -- ** spanner.projects.instances.databases.getIamPolicy
    , SpannerProjectsInstancesDatabasesGetIamPolicyResource
    , newSpannerProjectsInstancesDatabasesGetIamPolicy
    , SpannerProjectsInstancesDatabasesGetIamPolicy

    -- ** spanner.projects.instances.databases.getScans
    , SpannerProjectsInstancesDatabasesGetScansResource
    , newSpannerProjectsInstancesDatabasesGetScans
    , SpannerProjectsInstancesDatabasesGetScans

    -- ** spanner.projects.instances.databases.list
    , SpannerProjectsInstancesDatabasesListResource
    , newSpannerProjectsInstancesDatabasesList
    , SpannerProjectsInstancesDatabasesList

    -- ** spanner.projects.instances.databases.operations.cancel
    , SpannerProjectsInstancesDatabasesOperationsCancelResource
    , newSpannerProjectsInstancesDatabasesOperationsCancel
    , SpannerProjectsInstancesDatabasesOperationsCancel

    -- ** spanner.projects.instances.databases.operations.delete
    , SpannerProjectsInstancesDatabasesOperationsDeleteResource
    , newSpannerProjectsInstancesDatabasesOperationsDelete
    , SpannerProjectsInstancesDatabasesOperationsDelete

    -- ** spanner.projects.instances.databases.operations.get
    , SpannerProjectsInstancesDatabasesOperationsGetResource
    , newSpannerProjectsInstancesDatabasesOperationsGet
    , SpannerProjectsInstancesDatabasesOperationsGet

    -- ** spanner.projects.instances.databases.operations.list
    , SpannerProjectsInstancesDatabasesOperationsListResource
    , newSpannerProjectsInstancesDatabasesOperationsList
    , SpannerProjectsInstancesDatabasesOperationsList

    -- ** spanner.projects.instances.databases.restore
    , SpannerProjectsInstancesDatabasesRestoreResource
    , newSpannerProjectsInstancesDatabasesRestore
    , SpannerProjectsInstancesDatabasesRestore

    -- ** spanner.projects.instances.databases.sessions.batchCreate
    , SpannerProjectsInstancesDatabasesSessionsBatchCreateResource
    , newSpannerProjectsInstancesDatabasesSessionsBatchCreate
    , SpannerProjectsInstancesDatabasesSessionsBatchCreate

    -- ** spanner.projects.instances.databases.sessions.beginTransaction
    , SpannerProjectsInstancesDatabasesSessionsBeginTransactionResource
    , newSpannerProjectsInstancesDatabasesSessionsBeginTransaction
    , SpannerProjectsInstancesDatabasesSessionsBeginTransaction

    -- ** spanner.projects.instances.databases.sessions.commit
    , SpannerProjectsInstancesDatabasesSessionsCommitResource
    , newSpannerProjectsInstancesDatabasesSessionsCommit
    , SpannerProjectsInstancesDatabasesSessionsCommit

    -- ** spanner.projects.instances.databases.sessions.create
    , SpannerProjectsInstancesDatabasesSessionsCreateResource
    , newSpannerProjectsInstancesDatabasesSessionsCreate
    , SpannerProjectsInstancesDatabasesSessionsCreate

    -- ** spanner.projects.instances.databases.sessions.delete
    , SpannerProjectsInstancesDatabasesSessionsDeleteResource
    , newSpannerProjectsInstancesDatabasesSessionsDelete
    , SpannerProjectsInstancesDatabasesSessionsDelete

    -- ** spanner.projects.instances.databases.sessions.executeBatchDml
    , SpannerProjectsInstancesDatabasesSessionsExecuteBatchDmlResource
    , newSpannerProjectsInstancesDatabasesSessionsExecuteBatchDml
    , SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml

    -- ** spanner.projects.instances.databases.sessions.executeSql
    , SpannerProjectsInstancesDatabasesSessionsExecuteSqlResource
    , newSpannerProjectsInstancesDatabasesSessionsExecuteSql
    , SpannerProjectsInstancesDatabasesSessionsExecuteSql

    -- ** spanner.projects.instances.databases.sessions.executeStreamingSql
    , SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSqlResource
    , newSpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql
    , SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql

    -- ** spanner.projects.instances.databases.sessions.get
    , SpannerProjectsInstancesDatabasesSessionsGetResource
    , newSpannerProjectsInstancesDatabasesSessionsGet
    , SpannerProjectsInstancesDatabasesSessionsGet

    -- ** spanner.projects.instances.databases.sessions.list
    , SpannerProjectsInstancesDatabasesSessionsListResource
    , newSpannerProjectsInstancesDatabasesSessionsList
    , SpannerProjectsInstancesDatabasesSessionsList

    -- ** spanner.projects.instances.databases.sessions.partitionQuery
    , SpannerProjectsInstancesDatabasesSessionsPartitionQueryResource
    , newSpannerProjectsInstancesDatabasesSessionsPartitionQuery
    , SpannerProjectsInstancesDatabasesSessionsPartitionQuery

    -- ** spanner.projects.instances.databases.sessions.partitionRead
    , SpannerProjectsInstancesDatabasesSessionsPartitionReadResource
    , newSpannerProjectsInstancesDatabasesSessionsPartitionRead
    , SpannerProjectsInstancesDatabasesSessionsPartitionRead

    -- ** spanner.projects.instances.databases.sessions.read
    , SpannerProjectsInstancesDatabasesSessionsReadResource
    , newSpannerProjectsInstancesDatabasesSessionsRead
    , SpannerProjectsInstancesDatabasesSessionsRead

    -- ** spanner.projects.instances.databases.sessions.rollback
    , SpannerProjectsInstancesDatabasesSessionsRollbackResource
    , newSpannerProjectsInstancesDatabasesSessionsRollback
    , SpannerProjectsInstancesDatabasesSessionsRollback

    -- ** spanner.projects.instances.databases.sessions.streamingRead
    , SpannerProjectsInstancesDatabasesSessionsStreamingReadResource
    , newSpannerProjectsInstancesDatabasesSessionsStreamingRead
    , SpannerProjectsInstancesDatabasesSessionsStreamingRead

    -- ** spanner.projects.instances.databases.setIamPolicy
    , SpannerProjectsInstancesDatabasesSetIamPolicyResource
    , newSpannerProjectsInstancesDatabasesSetIamPolicy
    , SpannerProjectsInstancesDatabasesSetIamPolicy

    -- ** spanner.projects.instances.databases.testIamPermissions
    , SpannerProjectsInstancesDatabasesTestIamPermissionsResource
    , newSpannerProjectsInstancesDatabasesTestIamPermissions
    , SpannerProjectsInstancesDatabasesTestIamPermissions

    -- ** spanner.projects.instances.databases.updateDdl
    , SpannerProjectsInstancesDatabasesUpdateDdlResource
    , newSpannerProjectsInstancesDatabasesUpdateDdl
    , SpannerProjectsInstancesDatabasesUpdateDdl

    -- ** spanner.projects.instances.delete
    , SpannerProjectsInstancesDeleteResource
    , newSpannerProjectsInstancesDelete
    , SpannerProjectsInstancesDelete

    -- ** spanner.projects.instances.get
    , SpannerProjectsInstancesGetResource
    , newSpannerProjectsInstancesGet
    , SpannerProjectsInstancesGet

    -- ** spanner.projects.instances.getIamPolicy
    , SpannerProjectsInstancesGetIamPolicyResource
    , newSpannerProjectsInstancesGetIamPolicy
    , SpannerProjectsInstancesGetIamPolicy

    -- ** spanner.projects.instances.list
    , SpannerProjectsInstancesListResource
    , newSpannerProjectsInstancesList
    , SpannerProjectsInstancesList

    -- ** spanner.projects.instances.operations.cancel
    , SpannerProjectsInstancesOperationsCancelResource
    , newSpannerProjectsInstancesOperationsCancel
    , SpannerProjectsInstancesOperationsCancel

    -- ** spanner.projects.instances.operations.delete
    , SpannerProjectsInstancesOperationsDeleteResource
    , newSpannerProjectsInstancesOperationsDelete
    , SpannerProjectsInstancesOperationsDelete

    -- ** spanner.projects.instances.operations.get
    , SpannerProjectsInstancesOperationsGetResource
    , newSpannerProjectsInstancesOperationsGet
    , SpannerProjectsInstancesOperationsGet

    -- ** spanner.projects.instances.operations.list
    , SpannerProjectsInstancesOperationsListResource
    , newSpannerProjectsInstancesOperationsList
    , SpannerProjectsInstancesOperationsList

    -- ** spanner.projects.instances.patch
    , SpannerProjectsInstancesPatchResource
    , newSpannerProjectsInstancesPatch
    , SpannerProjectsInstancesPatch

    -- ** spanner.projects.instances.setIamPolicy
    , SpannerProjectsInstancesSetIamPolicyResource
    , newSpannerProjectsInstancesSetIamPolicy
    , SpannerProjectsInstancesSetIamPolicy

    -- ** spanner.projects.instances.testIamPermissions
    , SpannerProjectsInstancesTestIamPermissionsResource
    , newSpannerProjectsInstancesTestIamPermissions
    , SpannerProjectsInstancesTestIamPermissions

    -- ** spanner.scans.list
    , SpannerScansListResource
    , newSpannerScansList
    , SpannerScansList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Backup
    , Backup (..)
    , newBackup

    -- ** Backup_DatabaseDialect
    , Backup_DatabaseDialect (..)

    -- ** Backup_State
    , Backup_State (..)

    -- ** BackupInfo
    , BackupInfo (..)
    , newBackupInfo

    -- ** BatchCreateSessionsRequest
    , BatchCreateSessionsRequest (..)
    , newBatchCreateSessionsRequest

    -- ** BatchCreateSessionsResponse
    , BatchCreateSessionsResponse (..)
    , newBatchCreateSessionsResponse

    -- ** BeginTransactionRequest
    , BeginTransactionRequest (..)
    , newBeginTransactionRequest

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** ChildLink
    , ChildLink (..)
    , newChildLink

    -- ** CommitRequest
    , CommitRequest (..)
    , newCommitRequest

    -- ** CommitResponse
    , CommitResponse (..)
    , newCommitResponse

    -- ** CommitStats
    , CommitStats (..)
    , newCommitStats

    -- ** ContextValue
    , ContextValue (..)
    , newContextValue

    -- ** ContextValue_Severity
    , ContextValue_Severity (..)

    -- ** CreateBackupMetadata
    , CreateBackupMetadata (..)
    , newCreateBackupMetadata

    -- ** CreateDatabaseMetadata
    , CreateDatabaseMetadata (..)
    , newCreateDatabaseMetadata

    -- ** CreateDatabaseRequest
    , CreateDatabaseRequest (..)
    , newCreateDatabaseRequest

    -- ** CreateDatabaseRequest_DatabaseDialect
    , CreateDatabaseRequest_DatabaseDialect (..)

    -- ** CreateInstanceMetadata
    , CreateInstanceMetadata (..)
    , newCreateInstanceMetadata

    -- ** CreateInstanceRequest
    , CreateInstanceRequest (..)
    , newCreateInstanceRequest

    -- ** CreateSessionRequest
    , CreateSessionRequest (..)
    , newCreateSessionRequest

    -- ** Database
    , Database (..)
    , newDatabase

    -- ** Database_DatabaseDialect
    , Database_DatabaseDialect (..)

    -- ** Database_State
    , Database_State (..)

    -- ** Delete'
    , Delete' (..)
    , newDelete

    -- ** DerivedMetric
    , DerivedMetric (..)
    , newDerivedMetric

    -- ** DiagnosticMessage
    , DiagnosticMessage (..)
    , newDiagnosticMessage

    -- ** DiagnosticMessage_Severity
    , DiagnosticMessage_Severity (..)

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EncryptionConfig
    , EncryptionConfig (..)
    , newEncryptionConfig

    -- ** EncryptionInfo
    , EncryptionInfo (..)
    , newEncryptionInfo

    -- ** EncryptionInfo_EncryptionType
    , EncryptionInfo_EncryptionType (..)

    -- ** ExecuteBatchDmlRequest
    , ExecuteBatchDmlRequest (..)
    , newExecuteBatchDmlRequest

    -- ** ExecuteBatchDmlResponse
    , ExecuteBatchDmlResponse (..)
    , newExecuteBatchDmlResponse

    -- ** ExecuteSqlRequest
    , ExecuteSqlRequest (..)
    , newExecuteSqlRequest

    -- ** ExecuteSqlRequest_ParamTypes
    , ExecuteSqlRequest_ParamTypes (..)
    , newExecuteSqlRequest_ParamTypes

    -- ** ExecuteSqlRequest_Params
    , ExecuteSqlRequest_Params (..)
    , newExecuteSqlRequest_Params

    -- ** ExecuteSqlRequest_QueryMode
    , ExecuteSqlRequest_QueryMode (..)

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** Field
    , Field (..)
    , newField

    -- ** GetDatabaseDdlResponse
    , GetDatabaseDdlResponse (..)
    , newGetDatabaseDdlResponse

    -- ** GetIamPolicyRequest
    , GetIamPolicyRequest (..)
    , newGetIamPolicyRequest

    -- ** GetPolicyOptions
    , GetPolicyOptions (..)
    , newGetPolicyOptions

    -- ** IndexedHotKey
    , IndexedHotKey (..)
    , newIndexedHotKey

    -- ** IndexedHotKey_SparseHotKeys
    , IndexedHotKey_SparseHotKeys (..)
    , newIndexedHotKey_SparseHotKeys

    -- ** IndexedKeyRangeInfos
    , IndexedKeyRangeInfos (..)
    , newIndexedKeyRangeInfos

    -- ** IndexedKeyRangeInfos_KeyRangeInfos
    , IndexedKeyRangeInfos_KeyRangeInfos (..)
    , newIndexedKeyRangeInfos_KeyRangeInfos

    -- ** Instance
    , Instance (..)
    , newInstance

    -- ** Instance_Labels
    , Instance_Labels (..)
    , newInstance_Labels

    -- ** Instance_State
    , Instance_State (..)

    -- ** InstanceConfig
    , InstanceConfig (..)
    , newInstanceConfig

    -- ** KeyRange
    , KeyRange (..)
    , newKeyRange

    -- ** KeyRangeInfo
    , KeyRangeInfo (..)
    , newKeyRangeInfo

    -- ** KeyRangeInfos
    , KeyRangeInfos (..)
    , newKeyRangeInfos

    -- ** KeySet
    , KeySet (..)
    , newKeySet

    -- ** ListBackupOperationsResponse
    , ListBackupOperationsResponse (..)
    , newListBackupOperationsResponse

    -- ** ListBackupsResponse
    , ListBackupsResponse (..)
    , newListBackupsResponse

    -- ** ListDatabaseOperationsResponse
    , ListDatabaseOperationsResponse (..)
    , newListDatabaseOperationsResponse

    -- ** ListDatabasesResponse
    , ListDatabasesResponse (..)
    , newListDatabasesResponse

    -- ** ListInstanceConfigsResponse
    , ListInstanceConfigsResponse (..)
    , newListInstanceConfigsResponse

    -- ** ListInstancesResponse
    , ListInstancesResponse (..)
    , newListInstancesResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListScansResponse
    , ListScansResponse (..)
    , newListScansResponse

    -- ** ListSessionsResponse
    , ListSessionsResponse (..)
    , newListSessionsResponse

    -- ** LocalizedString
    , LocalizedString (..)
    , newLocalizedString

    -- ** LocalizedString_Args
    , LocalizedString_Args (..)
    , newLocalizedString_Args

    -- ** Metric
    , Metric (..)
    , newMetric

    -- ** Metric_Aggregation
    , Metric_Aggregation (..)

    -- ** Metric_IndexedHotKeys
    , Metric_IndexedHotKeys (..)
    , newMetric_IndexedHotKeys

    -- ** Metric_IndexedKeyRangeInfos
    , Metric_IndexedKeyRangeInfos (..)
    , newMetric_IndexedKeyRangeInfos

    -- ** MetricMatrix
    , MetricMatrix (..)
    , newMetricMatrix

    -- ** MetricMatrixRow
    , MetricMatrixRow (..)
    , newMetricMatrixRow

    -- ** Mutation
    , Mutation (..)
    , newMutation

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OperationProgress
    , OperationProgress (..)
    , newOperationProgress

    -- ** OptimizeRestoredDatabaseMetadata
    , OptimizeRestoredDatabaseMetadata (..)
    , newOptimizeRestoredDatabaseMetadata

    -- ** PartialResultSet
    , PartialResultSet (..)
    , newPartialResultSet

    -- ** Partition
    , Partition (..)
    , newPartition

    -- ** PartitionOptions
    , PartitionOptions (..)
    , newPartitionOptions

    -- ** PartitionQueryRequest
    , PartitionQueryRequest (..)
    , newPartitionQueryRequest

    -- ** PartitionQueryRequest_ParamTypes
    , PartitionQueryRequest_ParamTypes (..)
    , newPartitionQueryRequest_ParamTypes

    -- ** PartitionQueryRequest_Params
    , PartitionQueryRequest_Params (..)
    , newPartitionQueryRequest_Params

    -- ** PartitionReadRequest
    , PartitionReadRequest (..)
    , newPartitionReadRequest

    -- ** PartitionResponse
    , PartitionResponse (..)
    , newPartitionResponse

    -- ** PartitionedDml
    , PartitionedDml (..)
    , newPartitionedDml

    -- ** PlanNode
    , PlanNode (..)
    , newPlanNode

    -- ** PlanNode_ExecutionStats
    , PlanNode_ExecutionStats (..)
    , newPlanNode_ExecutionStats

    -- ** PlanNode_Kind
    , PlanNode_Kind (..)

    -- ** PlanNode_Metadata
    , PlanNode_Metadata (..)
    , newPlanNode_Metadata

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** PrefixNode
    , PrefixNode (..)
    , newPrefixNode

    -- ** QueryOptions
    , QueryOptions (..)
    , newQueryOptions

    -- ** QueryPlan
    , QueryPlan (..)
    , newQueryPlan

    -- ** ReadOnly
    , ReadOnly (..)
    , newReadOnly

    -- ** ReadRequest
    , ReadRequest (..)
    , newReadRequest

    -- ** ReadWrite
    , ReadWrite (..)
    , newReadWrite

    -- ** ReplicaInfo
    , ReplicaInfo (..)
    , newReplicaInfo

    -- ** ReplicaInfo_Type
    , ReplicaInfo_Type (..)

    -- ** RequestOptions
    , RequestOptions (..)
    , newRequestOptions

    -- ** RequestOptions_Priority
    , RequestOptions_Priority (..)

    -- ** RestoreDatabaseEncryptionConfig
    , RestoreDatabaseEncryptionConfig (..)
    , newRestoreDatabaseEncryptionConfig

    -- ** RestoreDatabaseEncryptionConfig_EncryptionType
    , RestoreDatabaseEncryptionConfig_EncryptionType (..)

    -- ** RestoreDatabaseMetadata
    , RestoreDatabaseMetadata (..)
    , newRestoreDatabaseMetadata

    -- ** RestoreDatabaseMetadata_SourceType
    , RestoreDatabaseMetadata_SourceType (..)

    -- ** RestoreDatabaseRequest
    , RestoreDatabaseRequest (..)
    , newRestoreDatabaseRequest

    -- ** RestoreInfo
    , RestoreInfo (..)
    , newRestoreInfo

    -- ** RestoreInfo_SourceType
    , RestoreInfo_SourceType (..)

    -- ** ResultSet
    , ResultSet (..)
    , newResultSet

    -- ** ResultSetMetadata
    , ResultSetMetadata (..)
    , newResultSetMetadata

    -- ** ResultSetStats
    , ResultSetStats (..)
    , newResultSetStats

    -- ** ResultSetStats_QueryStats
    , ResultSetStats_QueryStats (..)
    , newResultSetStats_QueryStats

    -- ** RollbackRequest
    , RollbackRequest (..)
    , newRollbackRequest

    -- ** Scan
    , Scan (..)
    , newScan

    -- ** Scan_Details
    , Scan_Details (..)
    , newScan_Details

    -- ** ScanData
    , ScanData (..)
    , newScanData

    -- ** Session
    , Session (..)
    , newSession

    -- ** Session_Labels
    , Session_Labels (..)
    , newSession_Labels

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** ShortRepresentation
    , ShortRepresentation (..)
    , newShortRepresentation

    -- ** ShortRepresentation_Subqueries
    , ShortRepresentation_Subqueries (..)
    , newShortRepresentation_Subqueries

    -- ** Statement
    , Statement (..)
    , newStatement

    -- ** Statement_ParamTypes
    , Statement_ParamTypes (..)
    , newStatement_ParamTypes

    -- ** Statement_Params
    , Statement_Params (..)
    , newStatement_Params

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StructType
    , StructType (..)
    , newStructType

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** Transaction
    , Transaction (..)
    , newTransaction

    -- ** TransactionOptions
    , TransactionOptions (..)
    , newTransactionOptions

    -- ** TransactionSelector
    , TransactionSelector (..)
    , newTransactionSelector

    -- ** Type
    , Type (..)
    , newType

    -- ** Type_Code
    , Type_Code (..)

    -- ** Type_TypeAnnotation
    , Type_TypeAnnotation (..)

    -- ** UpdateDatabaseDdlMetadata
    , UpdateDatabaseDdlMetadata (..)
    , newUpdateDatabaseDdlMetadata

    -- ** UpdateDatabaseDdlRequest
    , UpdateDatabaseDdlRequest (..)
    , newUpdateDatabaseDdlRequest

    -- ** UpdateInstanceMetadata
    , UpdateInstanceMetadata (..)
    , newUpdateInstanceMetadata

    -- ** UpdateInstanceRequest
    , UpdateInstanceRequest (..)
    , newUpdateInstanceRequest

    -- ** VisualizationData
    , VisualizationData (..)
    , newVisualizationData

    -- ** VisualizationData_KeyUnit
    , VisualizationData_KeyUnit (..)

    -- ** Write
    , Write (..)
    , newWrite

    -- ** ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
    , ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType (..)

    -- ** ProjectsInstancesDatabasesGetScansView
    , ProjectsInstancesDatabasesGetScansView (..)

    -- ** ScansListView
    , ScansListView (..)
    ) where

import Gogol.Spanner.Projects.InstanceConfigs.Get
import Gogol.Spanner.Projects.InstanceConfigs.List
import Gogol.Spanner.Projects.Instances.BackupOperations.List
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
