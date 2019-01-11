{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Spanner
-- Copyright   : (c) 2015-2016 Brendan Hay
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

    -- ** spanner.projects.instances.create
    , module Network.Google.Resource.Spanner.Projects.Instances.Create

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

    -- ** spanner.projects.instances.databases.sessions.beginTransaction
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.BeginTransaction

    -- ** spanner.projects.instances.databases.sessions.commit
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Commit

    -- ** spanner.projects.instances.databases.sessions.create
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Create

    -- ** spanner.projects.instances.databases.sessions.delete
    , module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Delete

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

    -- * Types

    -- ** ExecuteSQLRequestParams
    , ExecuteSQLRequestParams
    , executeSQLRequestParams
    , esqlrpAddtional

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

    -- ** ReadWrite
    , ReadWrite
    , readWrite

    -- ** RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransactionId

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

    -- ** ChildLink
    , ChildLink
    , childLink
    , clChildIndex
    , clVariable
    , clType

    -- ** BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrOptions

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

    -- ** PartitionQueryRequestParams
    , PartitionQueryRequestParams
    , partitionQueryRequestParams
    , pqrpAddtional

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
    , uddmDatabase
    , uddmStatements

    -- ** Empty
    , Empty
    , empty

    -- ** Database
    , Database
    , database
    , dState
    , dName

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

    -- ** PartitionedDml
    , PartitionedDml
    , partitionedDml

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

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

    -- ** ListSessionsResponse
    , ListSessionsResponse
    , listSessionsResponse
    , lsrNextPageToken
    , lsrSessions

    -- ** StructType
    , StructType
    , structType
    , stFields

    -- ** DatabaseState
    , DatabaseState (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** CommitResponse
    , CommitResponse
    , commitResponse
    , crCommitTimestamp

    -- ** Partition
    , Partition
    , partition
    , pPartitionToken

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** PartitionQueryRequestParamTypes
    , PartitionQueryRequestParamTypes
    , partitionQueryRequestParamTypes
    , pqrptAddtional

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

    -- ** PartialResultSet
    , PartialResultSet
    , partialResultSet
    , prsResumeToken
    , prsValues
    , prsStats
    , prsMetadata
    , prsChunkedValue

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
    , cdrCreateStatement

    -- ** ExecuteSQLRequest
    , ExecuteSQLRequest
    , executeSQLRequest
    , esqlrParamTypes
    , esqlrResumeToken
    , esqlrSeqno
    , esqlrParams
    , esqlrTransaction
    , esqlrSQL
    , esqlrPartitionToken
    , esqlrQueryMode

    -- ** CommitRequest
    , CommitRequest
    , commitRequest
    , crMutations
    , crTransactionId
    , crSingleUseTransaction

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
    , icName
    , icDisplayName

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

    -- ** InstanceState
    , InstanceState (..)

    -- ** Session
    , Session
    , session
    , sApproximateLastUseTime
    , sName
    , sLabels
    , sCreateTime

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

    -- ** ResultSetStatsQueryStats
    , ResultSetStatsQueryStats
    , resultSetStatsQueryStats
    , rssqsAddtional

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
    , iName
    , iDisplayName
    , iLabels
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Spanner.Projects.InstanceConfigs.Get
import           Network.Google.Resource.Spanner.Projects.InstanceConfigs.List
import           Network.Google.Resource.Spanner.Projects.Instances.Create
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Create
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.DropDatabase
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Get
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.GetDdl
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.GetIAMPolicy
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.List
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Cancel
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Delete
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Get
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.List
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.BeginTransaction
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Commit
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Create
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Delete
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteSQL
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteStreamingSQL
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Get
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.List
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.PartitionQuery
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.PartitionRead
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Read
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Rollback
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.StreamingRead
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.SetIAMPolicy
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.TestIAMPermissions
import           Network.Google.Resource.Spanner.Projects.Instances.Databases.UpdateDdl
import           Network.Google.Resource.Spanner.Projects.Instances.Delete
import           Network.Google.Resource.Spanner.Projects.Instances.Get
import           Network.Google.Resource.Spanner.Projects.Instances.GetIAMPolicy
import           Network.Google.Resource.Spanner.Projects.Instances.List
import           Network.Google.Resource.Spanner.Projects.Instances.Operations.Cancel
import           Network.Google.Resource.Spanner.Projects.Instances.Operations.Delete
import           Network.Google.Resource.Spanner.Projects.Instances.Operations.Get
import           Network.Google.Resource.Spanner.Projects.Instances.Operations.List
import           Network.Google.Resource.Spanner.Projects.Instances.Patch
import           Network.Google.Resource.Spanner.Projects.Instances.SetIAMPolicy
import           Network.Google.Resource.Spanner.Projects.Instances.TestIAMPermissions
import           Network.Google.Spanner.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Spanner API service.
type SpannerAPI =
     ProjectsInstancesOperationsListResource :<|>
       ProjectsInstancesOperationsGetResource
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
       ProjectsInstancesDatabasesSessionsPartitionReadResource
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
       :<|> ProjectsInstancesDatabasesListResource
       :<|> ProjectsInstancesDatabasesUpdateDdlResource
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
