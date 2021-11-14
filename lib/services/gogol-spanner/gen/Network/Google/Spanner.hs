{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Spanner
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Spanner is a managed, mission-critical, globally consistent and
-- scalable relational database service.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference>
module Network.Google.Spanner
    (
    -- * Service Configuration
      spannerService

    -- * OAuth Scopes
    , cloudPlatformScope
    , spannerDataScope
    , spannerAdminScope

    -- * API Declaration
    , SpannerAPI

    -- * Resources

    -- ** spanner.projects.instanceConfigs.get
    , module Network.Google.Resource.Spanner.Projects.InstanceConfigs.Get

    -- ** spanner.projects.instanceConfigs.list
    , module Network.Google.Resource.Spanner.Projects.InstanceConfigs.List

    -- ** spanner.projects.instances.backupOperations.list
    , module Network.Google.Resource.Spanner.Projects.Instances.BackupOperations.List

    -- ** spanner.projects.instances.backups.create
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.Create

    -- ** spanner.projects.instances.backups.delete
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.Delete

    -- ** spanner.projects.instances.backups.get
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.Get

    -- ** spanner.projects.instances.backups.getIamPolicy
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.GetIAMPolicy

    -- ** spanner.projects.instances.backups.list
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.List

    -- ** spanner.projects.instances.backups.operations.cancel
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Cancel

    -- ** spanner.projects.instances.backups.operations.delete
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Delete

    -- ** spanner.projects.instances.backups.operations.get
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Get

    -- ** spanner.projects.instances.backups.operations.list
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.List

    -- ** spanner.projects.instances.backups.patch
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.Patch

    -- ** spanner.projects.instances.backups.setIamPolicy
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.SetIAMPolicy

    -- ** spanner.projects.instances.backups.testIamPermissions
    , module Network.Google.Resource.Spanner.Projects.Instances.Backups.TestIAMPermissions

    -- ** spanner.projects.instances.create
    , module Network.Google.Resource.Spanner.Projects.Instances.Create

    -- ** spanner.projects.instances.databaseOperations.list
    , module Network.Google.Resource.Spanner.Projects.Instances.DatabaseOperations.List

    -- ** spanner.projects.instances.databases.create
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Create

    -- ** spanner.projects.instances.databases.dropDatabase
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.DropDatabase

    -- ** spanner.projects.instances.databases.get
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Get

    -- ** spanner.projects.instances.databases.getDdl
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.GetDdl

    -- ** spanner.projects.instances.databases.getIamPolicy
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.GetIAMPolicy

    -- ** spanner.projects.instances.databases.getScans
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.GetScans

    -- ** spanner.projects.instances.databases.list
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.List

    -- ** spanner.projects.instances.databases.operations.cancel
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Cancel

    -- ** spanner.projects.instances.databases.operations.delete
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Delete

    -- ** spanner.projects.instances.databases.operations.get
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Get

    -- ** spanner.projects.instances.databases.operations.list
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.List

    -- ** spanner.projects.instances.databases.restore
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Restore

    -- ** spanner.projects.instances.databases.sessions.batchCreate
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.BatchCreate

    -- ** spanner.projects.instances.databases.sessions.beginTransaction
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.BeginTransaction

    -- ** spanner.projects.instances.databases.sessions.commit
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Commit

    -- ** spanner.projects.instances.databases.sessions.create
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Create

    -- ** spanner.projects.instances.databases.sessions.delete
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Delete

    -- ** spanner.projects.instances.databases.sessions.executeBatchDml
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteBatchDml

    -- ** spanner.projects.instances.databases.sessions.executeSql
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteSQL

    -- ** spanner.projects.instances.databases.sessions.executeStreamingSql
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteStreamingSQL

    -- ** spanner.projects.instances.databases.sessions.get
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Get

    -- ** spanner.projects.instances.databases.sessions.list
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.List

    -- ** spanner.projects.instances.databases.sessions.partitionQuery
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.PartitionQuery

    -- ** spanner.projects.instances.databases.sessions.partitionRead
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.PartitionRead

    -- ** spanner.projects.instances.databases.sessions.read
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Read

    -- ** spanner.projects.instances.databases.sessions.rollback
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Rollback

    -- ** spanner.projects.instances.databases.sessions.streamingRead
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.StreamingRead

    -- ** spanner.projects.instances.databases.setIamPolicy
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.SetIAMPolicy

    -- ** spanner.projects.instances.databases.testIamPermissions
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.TestIAMPermissions

    -- ** spanner.projects.instances.databases.updateDdl
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.UpdateDdl

    -- ** spanner.projects.instances.delete
    , module Network.Google.Resource.Spanner.Projects.Instances.Delete

    -- ** spanner.projects.instances.get
    , module Network.Google.Resource.Spanner.Projects.Instances.Get

    -- ** spanner.projects.instances.getIamPolicy
    , module Network.Google.Resource.Spanner.Projects.Instances.GetIAMPolicy

    -- ** spanner.projects.instances.list
    , module Network.Google.Resource.Spanner.Projects.Instances.List

    -- ** spanner.projects.instances.operations.cancel
    , module Network.Google.Resource.Spanner.Projects.Instances.Operations.Cancel

    -- ** spanner.projects.instances.operations.delete
    , module Network.Google.Resource.Spanner.Projects.Instances.Operations.Delete

    -- ** spanner.projects.instances.operations.get
    , module Network.Google.Resource.Spanner.Projects.Instances.Operations.Get

    -- ** spanner.projects.instances.operations.list
    , module Network.Google.Resource.Spanner.Projects.Instances.Operations.List

    -- ** spanner.projects.instances.patch
    , module Network.Google.Resource.Spanner.Projects.Instances.Patch

    -- ** spanner.projects.instances.setIamPolicy
    , module Network.Google.Resource.Spanner.Projects.Instances.SetIAMPolicy

    -- ** spanner.projects.instances.testIamPermissions
    , module Network.Google.Resource.Spanner.Projects.Instances.TestIAMPermissions

    -- ** spanner.scans.list
    , module Network.Google.Resource.Spanner.Scans.List

    -- * Types

    -- ** ExecuteSQLRequestParams
    , ExecuteSQLRequestParams
    , executeSQLRequestParams
    , esqlrpAddtional

    -- ** RestoreDatabaseRequest
    , RestoreDatabaseRequest
    , restoreDatabaseRequest
    , rdrBackup
    , rdrEncryptionConfig
    , rdrDatabaseId

    -- ** MetricIndexedHotKeys
    , MetricIndexedHotKeys
    , metricIndexedHotKeys
    , mihkAddtional

    -- ** InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

    -- ** CreateDatabaseMetadata
    , CreateDatabaseMetadata
    , createDatabaseMetadata
    , cdmDatabase

    -- ** TransactionOptions
    , TransactionOptions
    , transactionOptions
    , toReadWrite
    , toPartitionedDml
    , toReadOnly

    -- ** ListBackupsResponse
    , ListBackupsResponse
    , listBackupsResponse
    , lbrNextPageToken
    , lbrBackups

    -- ** GetDatabaseDdlResponse
    , GetDatabaseDdlResponse
    , getDatabaseDdlResponse
    , gddrStatements

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** CreateInstanceRequest
    , CreateInstanceRequest
    , createInstanceRequest
    , cirInstanceId
    , cirInstance

    -- ** BatchCreateSessionsRequest
    , BatchCreateSessionsRequest
    , batchCreateSessionsRequest
    , bcsrSessionCount
    , bcsrSessionTemplate

    -- ** ReadWrite
    , ReadWrite
    , readWrite

    -- ** RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransactionId

    -- ** IndexedKeyRangeInfosKeyRangeInfos
    , IndexedKeyRangeInfosKeyRangeInfos
    , indexedKeyRangeInfosKeyRangeInfos
    , ikrikriAddtional

    -- ** ListDatabasesResponse
    , ListDatabasesResponse
    , listDatabasesResponse
    , ldrNextPageToken
    , ldrDatabases

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- ** ChildLink
    , ChildLink
    , childLink
    , clChildIndex
    , clVariable
    , clType

    -- ** IndexedKeyRangeInfos
    , IndexedKeyRangeInfos
    , indexedKeyRangeInfos
    , ikriKeyRangeInfos

    -- ** BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrOptions
    , btrRequestOptions

    -- ** IndexedHotKeySparseHotKeys
    , IndexedHotKeySparseHotKeys
    , indexedHotKeySparseHotKeys
    , ihkshkAddtional

    -- ** ListDatabaseOperationsResponse
    , ListDatabaseOperationsResponse
    , listDatabaseOperationsResponse
    , ldorNextPageToken
    , ldorOperations

    -- ** PartitionOptions
    , PartitionOptions
    , partitionOptions
    , poMaxPartitions
    , poPartitionSizeBytes

    -- ** ResultSetStats
    , ResultSetStats
    , resultSetStats
    , rssRowCountExact
    , rssRowCountLowerBound
    , rssQueryStats
    , rssQueryPlan

    -- ** Field
    , Field
    , field
    , fName
    , fType

    -- ** QueryOptions
    , QueryOptions
    , queryOptions
    , qoOptimizerStatisticsPackage
    , qoOptimizerVersion

    -- ** TypeCode
    , TypeCode (..)

    -- ** Write
    , Write
    , write
    , wValues
    , wColumns
    , wTable

    -- ** KeySet
    , KeySet
    , keySet
    , ksAll
    , ksRanges
    , ksKeys

    -- ** Statement
    , Statement
    , statement
    , sParamTypes
    , sParams
    , sSQL

    -- ** PartitionQueryRequestParams
    , PartitionQueryRequestParams
    , partitionQueryRequestParams
    , pqrpAddtional

    -- ** ExecuteBatchDmlResponse
    , ExecuteBatchDmlResponse
    , executeBatchDmlResponse
    , ebdrStatus
    , ebdrResultSets

    -- ** ProjectsInstancesDatabasesGetScansView
    , ProjectsInstancesDatabasesGetScansView (..)

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** UpdateDatabaseDdlMetadata
    , UpdateDatabaseDdlMetadata
    , updateDatabaseDdlMetadata
    , uddmCommitTimestamps
    , uddmThrottled
    , uddmProgress
    , uddmDatabase
    , uddmStatements

    -- ** Empty
    , Empty
    , empty

    -- ** KeyRangeInfos
    , KeyRangeInfos
    , keyRangeInfos
    , kriTotalSize
    , kriInfos

    -- ** Database
    , Database
    , database
    , dState
    , dDefaultLeader
    , dEarliestVersionTime
    , dName
    , dEncryptionConfig
    , dVersionRetentionPeriod
    , dRestoreInfo
    , dEncryptionInfo
    , dCreateTime

    -- ** PrefixNode
    , PrefixNode
    , prefixNode
    , pnEndIndex
    , pnDepth
    , pnDataSourceNode
    , pnStartIndex
    , pnWord

    -- ** CommitStats
    , CommitStats
    , commitStats
    , csMutationCount

    -- ** OperationProgress
    , OperationProgress
    , operationProgress
    , opStartTime
    , opProgressPercent
    , opEndTime

    -- ** MetricAggregation
    , MetricAggregation (..)

    -- ** RestoreInfoSourceType
    , RestoreInfoSourceType (..)

    -- ** PlanNode
    , PlanNode
    , planNode
    , pnKind
    , pnShortRepresentation
    , pnMetadata
    , pnDisplayName
    , pnExecutionStats
    , pnIndex
    , pnChildLinks

    -- ** PlanNodeKind
    , PlanNodeKind (..)

    -- ** CreateSessionRequest
    , CreateSessionRequest
    , createSessionRequest
    , csrSession

    -- ** VisualizationDataKeyUnit
    , VisualizationDataKeyUnit (..)

    -- ** ScansListView
    , ScansListView (..)

    -- ** ShortRepresentation
    , ShortRepresentation
    , shortRepresentation
    , srSubqueries
    , srDescription

    -- ** ShortRepresentationSubqueries
    , ShortRepresentationSubqueries
    , shortRepresentationSubqueries
    , srsAddtional

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** PlanNodeMetadata
    , PlanNodeMetadata
    , planNodeMetadata
    , pnmAddtional

    -- ** EncryptionInfoEncryptionType
    , EncryptionInfoEncryptionType (..)

    -- ** MetricIndexedKeyRangeInfos
    , MetricIndexedKeyRangeInfos
    , metricIndexedKeyRangeInfos
    , mikriAddtional

    -- ** ReplicaInfoType
    , ReplicaInfoType (..)

    -- ** GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- ** KeyRangeInfo
    , KeyRangeInfo
    , keyRangeInfo
    , kriContextValues
    , kriTimeOffSet
    , kriValue
    , kriEndKeyIndex
    , kriStartKeyIndex
    , kriMetric
    , kriKeysCount
    , kriUnit
    , kriInfo

    -- ** PartitionedDml
    , PartitionedDml
    , partitionedDml

    -- ** Backup
    , Backup
    , backup
    , bSizeBytes
    , bState
    , bDatabase
    , bName
    , bVersionTime
    , bReferencingDatabases
    , bExpireTime
    , bEncryptionInfo
    , bCreateTime

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** StatementParamTypes
    , StatementParamTypes
    , statementParamTypes
    , sptAddtional

    -- ** UpdateDatabaseDdlRequest
    , UpdateDatabaseDdlRequest
    , updateDatabaseDdlRequest
    , uddrOperationId
    , uddrStatements

    -- ** Mutation
    , Mutation
    , mutation
    , mReplace
    , mInsert
    , mInsertOrUpdate
    , mDelete
    , mUpdate

    -- ** DerivedMetric
    , DerivedMetric
    , derivedMetric
    , dmDenominator
    , dmNumerator

    -- ** PartitionReadRequest
    , PartitionReadRequest
    , partitionReadRequest
    , prrPartitionOptions
    , prrKeySet
    , prrTransaction
    , prrColumns
    , prrIndex
    , prrTable

    -- ** ExecuteSQLRequestQueryMode
    , ExecuteSQLRequestQueryMode (..)

    -- ** ExecuteSQLRequestParamTypes
    , ExecuteSQLRequestParamTypes
    , executeSQLRequestParamTypes
    , esqlrptAddtional

    -- ** Transaction
    , Transaction
    , transaction
    , tReadTimestamp
    , tId

    -- ** DiagnosticMessage
    , DiagnosticMessage
    , diagnosticMessage
    , dmSeverity
    , dmShortMessage
    , dmMetricSpecific
    , dmMetric
    , dmInfo

    -- ** ContextValue
    , ContextValue
    , contextValue
    , cvValue
    , cvSeverity
    , cvUnit
    , cvLabel

    -- ** ListSessionsResponse
    , ListSessionsResponse
    , listSessionsResponse
    , lsrNextPageToken
    , lsrSessions

    -- ** Metric
    , Metric
    , metric
    , mDisplayLabel
    , mHasNonzeroData
    , mIndexedKeyRangeInfos
    , mCategory
    , mMatrix
    , mVisible
    , mAggregation
    , mDerived
    , mHotValue
    , mIndexedHotKeys
    , mUnit
    , mInfo

    -- ** ScanData
    , ScanData
    , scanData
    , sdStartTime
    , sdData
    , sdEndTime

    -- ** MetricMatrix
    , MetricMatrix
    , metricMatrix
    , mmRows

    -- ** Scan
    , Scan
    , scan
    , scaStartTime
    , scaName
    , scaScanData
    , scaEndTime
    , scaDetails

    -- ** DiagnosticMessageSeverity
    , DiagnosticMessageSeverity (..)

    -- ** ExecuteBatchDmlRequest
    , ExecuteBatchDmlRequest
    , executeBatchDmlRequest
    , ebdrSeqno
    , ebdrTransaction
    , ebdrStatements
    , ebdrRequestOptions

    -- ** ContextValueSeverity
    , ContextValueSeverity (..)

    -- ** RestoreDatabaseEncryptionConfigEncryptionType
    , RestoreDatabaseEncryptionConfigEncryptionType (..)

    -- ** StructType
    , StructType
    , structType
    , stFields

    -- ** CreateBackupMetadata
    , CreateBackupMetadata
    , createBackupMetadata
    , cbmProgress
    , cbmDatabase
    , cbmCancelTime
    , cbmName

    -- ** ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
    , ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType (..)

    -- ** VisualizationData
    , VisualizationData
    , visualizationData
    , vdDiagnosticMessages
    , vdMetrics
    , vdHasPii
    , vdKeySeparator
    , vdDataSourceSeparatorToken
    , vdIndexedKeys
    , vdEndKeyStrings
    , vdPrefixNodes
    , vdKeyUnit
    , vdDataSourceEndToken

    -- ** DatabaseState
    , DatabaseState (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** CommitResponse
    , CommitResponse
    , commitResponse
    , crCommitTimestamp
    , crCommitStats

    -- ** Partition
    , Partition
    , partition
    , pPartitionToken

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** LocalizedString
    , LocalizedString
    , localizedString
    , lsArgs
    , lsToken
    , lsMessage

    -- ** OptimizeRestoredDatabaseMetadata
    , OptimizeRestoredDatabaseMetadata
    , optimizeRestoredDatabaseMetadata
    , ordmProgress
    , ordmName

    -- ** ListScansResponse
    , ListScansResponse
    , listScansResponse
    , lNextPageToken
    , lScans

    -- ** ScanDetails
    , ScanDetails
    , scanDetails
    , sdAddtional

    -- ** MetricMatrixRow
    , MetricMatrixRow
    , metricMatrixRow
    , mmrCols

    -- ** PartitionQueryRequestParamTypes
    , PartitionQueryRequestParamTypes
    , partitionQueryRequestParamTypes
    , pqrptAddtional

    -- ** RestoreDatabaseMetadataSourceType
    , RestoreDatabaseMetadataSourceType (..)

    -- ** EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecKmsKeyName

    -- ** LocalizedStringArgs
    , LocalizedStringArgs
    , localizedStringArgs
    , lsaAddtional

    -- ** UpdateInstanceMetadata
    , UpdateInstanceMetadata
    , updateInstanceMetadata
    , uimStartTime
    , uimCancelTime
    , uimEndTime
    , uimInstance

    -- ** PlanNodeExecutionStats
    , PlanNodeExecutionStats
    , planNodeExecutionStats
    , pnesAddtional

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** RestoreDatabaseMetadata
    , RestoreDatabaseMetadata
    , restoreDatabaseMetadata
    , rdmSourceType
    , rdmProgress
    , rdmCancelTime
    , rdmName
    , rdmBackupInfo
    , rdmOptimizeDatabaseOperationName

    -- ** PartialResultSet
    , PartialResultSet
    , partialResultSet
    , prsResumeToken
    , prsValues
    , prsStats
    , prsMetadata
    , prsChunkedValue

    -- ** RestoreDatabaseEncryptionConfig
    , RestoreDatabaseEncryptionConfig
    , restoreDatabaseEncryptionConfig
    , rdecEncryptionType
    , rdecKmsKeyName

    -- ** BackupInfo
    , BackupInfo
    , backupInfo
    , biBackup
    , biVersionTime
    , biSourceDatabase
    , biCreateTime

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** CreateDatabaseRequest
    , CreateDatabaseRequest
    , createDatabaseRequest
    , cdrExtraStatements
    , cdrEncryptionConfig
    , cdrCreateStatement

    -- ** ExecuteSQLRequest
    , ExecuteSQLRequest
    , executeSQLRequest
    , esqlrParamTypes
    , esqlrQueryOptions
    , esqlrResumeToken
    , esqlrSeqno
    , esqlrParams
    , esqlrTransaction
    , esqlrSQL
    , esqlrPartitionToken
    , esqlrQueryMode
    , esqlrRequestOptions

    -- ** CommitRequest
    , CommitRequest
    , commitRequest
    , crReturnCommitStats
    , crMutations
    , crTransactionId
    , crSingleUseTransaction
    , crRequestOptions

    -- ** Type
    , Type
    , type'
    , tArrayElementType
    , tStructType
    , tCode

    -- ** CreateInstanceMetadata
    , CreateInstanceMetadata
    , createInstanceMetadata
    , cimStartTime
    , cimCancelTime
    , cimEndTime
    , cimInstance

    -- ** KeyRange
    , KeyRange
    , keyRange
    , krStartClosed
    , krEndOpen
    , krStartOpen
    , krEndClosed

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** InstanceConfig
    , InstanceConfig
    , instanceConfig
    , icLeaderOptions
    , icName
    , icDisplayName
    , icReplicas

    -- ** ResultSet
    , ResultSet
    , resultSet
    , rsStats
    , rsRows
    , rsMetadata

    -- ** SessionLabels
    , SessionLabels
    , sessionLabels
    , slAddtional

    -- ** ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirUnreachable
    , lirInstances

    -- ** ReadRequest
    , ReadRequest
    , readRequest
    , rrResumeToken
    , rrKeySet
    , rrTransaction
    , rrColumns
    , rrLimit
    , rrIndex
    , rrTable
    , rrPartitionToken
    , rrRequestOptions

    -- ** IndexedHotKey
    , IndexedHotKey
    , indexedHotKey
    , ihkSparseHotKeys

    -- ** RequestOptionsPriority
    , RequestOptionsPriority (..)

    -- ** ReplicaInfo
    , ReplicaInfo
    , replicaInfo
    , riDefaultLeaderLocation
    , riLocation
    , riType

    -- ** InstanceState
    , InstanceState (..)

    -- ** Session
    , Session
    , session
    , sApproximateLastUseTime
    , sName
    , sLabels
    , sCreateTime

    -- ** BatchCreateSessionsResponse
    , BatchCreateSessionsResponse
    , batchCreateSessionsResponse
    , bcsrSession

    -- ** RestoreInfo
    , RestoreInfo
    , restoreInfo
    , riSourceType
    , riBackupInfo

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** ReadOnly
    , ReadOnly
    , readOnly
    , roReadTimestamp
    , roExactStaleness
    , roMaxStaleness
    , roStrong
    , roMinReadTimestamp
    , roReturnReadTimestamp

    -- ** ResultSetMetadata
    , ResultSetMetadata
    , resultSetMetadata
    , rsmRowType
    , rsmTransaction

    -- ** Delete'
    , Delete'
    , delete'
    , dKeySet
    , dTable

    -- ** UpdateInstanceRequest
    , UpdateInstanceRequest
    , updateInstanceRequest
    , uirFieldMask
    , uirInstance

    -- ** ListBackupOperationsResponse
    , ListBackupOperationsResponse
    , listBackupOperationsResponse
    , lborNextPageToken
    , lborOperations

    -- ** BackupState
    , BackupState (..)

    -- ** ResultSetStatsQueryStats
    , ResultSetStatsQueryStats
    , resultSetStatsQueryStats
    , rssqsAddtional

    -- ** StatementParams
    , StatementParams
    , statementParams
    , spAddtional

    -- ** TransactionSelector
    , TransactionSelector
    , transactionSelector
    , tsBegin
    , tsId
    , tsSingleUse

    -- ** ListInstanceConfigsResponse
    , ListInstanceConfigsResponse
    , listInstanceConfigsResponse
    , licrNextPageToken
    , licrInstanceConfigs

    -- ** RequestOptions
    , RequestOptions
    , requestOptions
    , roPriority
    , roRequestTag
    , roTransactionTag

    -- ** EncryptionInfo
    , EncryptionInfo
    , encryptionInfo
    , eiEncryptionType
    , eiKmsKeyVersion
    , eiEncryptionStatus

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** PartitionResponse
    , PartitionResponse
    , partitionResponse
    , prPartitions
    , prTransaction

    -- ** PartitionQueryRequest
    , PartitionQueryRequest
    , partitionQueryRequest
    , pqrParamTypes
    , pqrPartitionOptions
    , pqrParams
    , pqrTransaction
    , pqrSQL

    -- ** QueryPlan
    , QueryPlan
    , queryPlan
    , qpPlanNodes

    -- ** Instance
    , Instance
    , instance'
    , iState
    , iConfig
    , iNodeCount
    , iProcessingUnits
    , iEndpointURIs
    , iName
    , iDisplayName
    , iLabels
    ) where

import Network.Google.Prelude
import Network.Google.Resource.Spanner.Projects.InstanceConfigs.Get
import Network.Google.Resource.Spanner.Projects.InstanceConfigs.List
import Network.Google.Resource.Spanner.Projects.Instances.BackupOperations.List
import Network.Google.Resource.Spanner.Projects.Instances.Backups.Create
import Network.Google.Resource.Spanner.Projects.Instances.Backups.Delete
import Network.Google.Resource.Spanner.Projects.Instances.Backups.Get
import Network.Google.Resource.Spanner.Projects.Instances.Backups.GetIAMPolicy
import Network.Google.Resource.Spanner.Projects.Instances.Backups.List
import Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Cancel
import Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Delete
import Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Get
import Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.List
import Network.Google.Resource.Spanner.Projects.Instances.Backups.Patch
import Network.Google.Resource.Spanner.Projects.Instances.Backups.SetIAMPolicy
import Network.Google.Resource.Spanner.Projects.Instances.Backups.TestIAMPermissions
import Network.Google.Resource.Spanner.Projects.Instances.Create
import Network.Google.Resource.Spanner.Projects.Instances.DatabaseOperations.List
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Create
import Network.Google.Resource.Spanner.Projects.Instances.Databases.DropDatabase
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Get
import Network.Google.Resource.Spanner.Projects.Instances.Databases.GetDdl
import Network.Google.Resource.Spanner.Projects.Instances.Databases.GetIAMPolicy
import Network.Google.Resource.Spanner.Projects.Instances.Databases.GetScans
import Network.Google.Resource.Spanner.Projects.Instances.Databases.List
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Cancel
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Delete
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Get
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.List
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Restore
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.BatchCreate
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.BeginTransaction
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Commit
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Create
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Delete
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteBatchDml
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteSQL
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteStreamingSQL
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Get
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.List
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.PartitionQuery
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.PartitionRead
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Read
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Rollback
import Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.StreamingRead
import Network.Google.Resource.Spanner.Projects.Instances.Databases.SetIAMPolicy
import Network.Google.Resource.Spanner.Projects.Instances.Databases.TestIAMPermissions
import Network.Google.Resource.Spanner.Projects.Instances.Databases.UpdateDdl
import Network.Google.Resource.Spanner.Projects.Instances.Delete
import Network.Google.Resource.Spanner.Projects.Instances.Get
import Network.Google.Resource.Spanner.Projects.Instances.GetIAMPolicy
import Network.Google.Resource.Spanner.Projects.Instances.List
import Network.Google.Resource.Spanner.Projects.Instances.Operations.Cancel
import Network.Google.Resource.Spanner.Projects.Instances.Operations.Delete
import Network.Google.Resource.Spanner.Projects.Instances.Operations.Get
import Network.Google.Resource.Spanner.Projects.Instances.Operations.List
import Network.Google.Resource.Spanner.Projects.Instances.Patch
import Network.Google.Resource.Spanner.Projects.Instances.SetIAMPolicy
import Network.Google.Resource.Spanner.Projects.Instances.TestIAMPermissions
import Network.Google.Resource.Spanner.Scans.List
import Network.Google.Spanner.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Spanner API service.
type SpannerAPI =
     ScansListResource :<|>
       ProjectsInstancesBackupsOperationsListResource
       :<|> ProjectsInstancesBackupsOperationsGetResource
       :<|> ProjectsInstancesBackupsOperationsCancelResource
       :<|> ProjectsInstancesBackupsOperationsDeleteResource
       :<|> ProjectsInstancesBackupsListResource
       :<|> ProjectsInstancesBackupsGetIAMPolicyResource
       :<|> ProjectsInstancesBackupsPatchResource
       :<|> ProjectsInstancesBackupsGetResource
       :<|> ProjectsInstancesBackupsCreateResource
       :<|> ProjectsInstancesBackupsSetIAMPolicyResource
       :<|>
       ProjectsInstancesBackupsTestIAMPermissionsResource
       :<|> ProjectsInstancesBackupsDeleteResource
       :<|> ProjectsInstancesDatabaseOperationsListResource
       :<|> ProjectsInstancesBackupOperationsListResource
       :<|> ProjectsInstancesOperationsListResource
       :<|> ProjectsInstancesOperationsGetResource
       :<|> ProjectsInstancesOperationsCancelResource
       :<|> ProjectsInstancesOperationsDeleteResource
       :<|> ProjectsInstancesDatabasesSessionsListResource
       :<|> ProjectsInstancesDatabasesSessionsReadResource
       :<|>
       ProjectsInstancesDatabasesSessionsExecuteStreamingSQLResource
       :<|>
       ProjectsInstancesDatabasesSessionsPartitionQueryResource
       :<|>
       ProjectsInstancesDatabasesSessionsBeginTransactionResource
       :<|> ProjectsInstancesDatabasesSessionsGetResource
       :<|>
       ProjectsInstancesDatabasesSessionsRollbackResource
       :<|> ProjectsInstancesDatabasesSessionsCreateResource
       :<|>
       ProjectsInstancesDatabasesSessionsBatchCreateResource
       :<|>
       ProjectsInstancesDatabasesSessionsPartitionReadResource
       :<|>
       ProjectsInstancesDatabasesSessionsExecuteBatchDmlResource
       :<|>
       ProjectsInstancesDatabasesSessionsStreamingReadResource
       :<|> ProjectsInstancesDatabasesSessionsDeleteResource
       :<|>
       ProjectsInstancesDatabasesSessionsExecuteSQLResource
       :<|> ProjectsInstancesDatabasesSessionsCommitResource
       :<|> ProjectsInstancesDatabasesOperationsListResource
       :<|> ProjectsInstancesDatabasesOperationsGetResource
       :<|>
       ProjectsInstancesDatabasesOperationsCancelResource
       :<|>
       ProjectsInstancesDatabasesOperationsDeleteResource
       :<|> ProjectsInstancesDatabasesDropDatabaseResource
       :<|> ProjectsInstancesDatabasesGetScansResource
       :<|> ProjectsInstancesDatabasesListResource
       :<|> ProjectsInstancesDatabasesUpdateDdlResource
       :<|> ProjectsInstancesDatabasesRestoreResource
       :<|> ProjectsInstancesDatabasesGetIAMPolicyResource
       :<|> ProjectsInstancesDatabasesGetResource
       :<|> ProjectsInstancesDatabasesCreateResource
       :<|> ProjectsInstancesDatabasesSetIAMPolicyResource
       :<|> ProjectsInstancesDatabasesGetDdlResource
       :<|>
       ProjectsInstancesDatabasesTestIAMPermissionsResource
       :<|> ProjectsInstancesListResource
       :<|> ProjectsInstancesGetIAMPolicyResource
       :<|> ProjectsInstancesPatchResource
       :<|> ProjectsInstancesGetResource
       :<|> ProjectsInstancesCreateResource
       :<|> ProjectsInstancesSetIAMPolicyResource
       :<|> ProjectsInstancesTestIAMPermissionsResource
       :<|> ProjectsInstancesDeleteResource
       :<|> ProjectsInstanceConfigsListResource
       :<|> ProjectsInstanceConfigsGetResource
