{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Datastore
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses the schemaless NoSQL database to provide fully managed, robust,
-- scalable storage for your application.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference>
module Network.Google.Datastore
    (
    -- * Service Configuration
      datastoreService

    -- * OAuth Scopes
    , cloudPlatformScope
    , datastoreScope

    -- * API Declaration
    , DatastoreAPI

    -- * Resources

    -- ** datastore.projects.allocateIds
    , module Network.Google.Resource.Datastore.Projects.AllocateIds

    -- ** datastore.projects.beginTransaction
    , module Network.Google.Resource.Datastore.Projects.BeginTransaction

    -- ** datastore.projects.commit
    , module Network.Google.Resource.Datastore.Projects.Commit

    -- ** datastore.projects.export
    , module Network.Google.Resource.Datastore.Projects.Export

    -- ** datastore.projects.import
    , module Network.Google.Resource.Datastore.Projects.Import

    -- ** datastore.projects.indexes.create
    , module Network.Google.Resource.Datastore.Projects.Indexes.Create

    -- ** datastore.projects.indexes.delete
    , module Network.Google.Resource.Datastore.Projects.Indexes.Delete

    -- ** datastore.projects.indexes.get
    , module Network.Google.Resource.Datastore.Projects.Indexes.Get

    -- ** datastore.projects.indexes.list
    , module Network.Google.Resource.Datastore.Projects.Indexes.List

    -- ** datastore.projects.lookup
    , module Network.Google.Resource.Datastore.Projects.Lookup

    -- ** datastore.projects.operations.cancel
    , module Network.Google.Resource.Datastore.Projects.Operations.Cancel

    -- ** datastore.projects.operations.delete
    , module Network.Google.Resource.Datastore.Projects.Operations.Delete

    -- ** datastore.projects.operations.get
    , module Network.Google.Resource.Datastore.Projects.Operations.Get

    -- ** datastore.projects.operations.list
    , module Network.Google.Resource.Datastore.Projects.Operations.List

    -- ** datastore.projects.reserveIds
    , module Network.Google.Resource.Datastore.Projects.ReserveIds

    -- ** datastore.projects.rollback
    , module Network.Google.Resource.Datastore.Projects.Rollback

    -- ** datastore.projects.runQuery
    , module Network.Google.Resource.Datastore.Projects.RunQuery

    -- * Types

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** TransactionOptions
    , TransactionOptions
    , transactionOptions
    , toReadWrite
    , toReadOnly

    -- ** PropertyOrderDirection
    , PropertyOrderDirection (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** GoogleLongrunningOperationMetadata
    , GoogleLongrunningOperationMetadata
    , googleLongrunningOperationMetadata
    , glomAddtional

    -- ** ReadWrite
    , ReadWrite
    , readWrite
    , rwPreviousTransaction

    -- ** GoogleDatastoreAdminV1beta1ExportEntitiesResponse
    , GoogleDatastoreAdminV1beta1ExportEntitiesResponse
    , googleDatastoreAdminV1beta1ExportEntitiesResponse
    , gdaveerOutputURL

    -- ** RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- ** ReserveIdsRequest
    , ReserveIdsRequest
    , reserveIdsRequest
    , rirKeys
    , rirDatabaseId

    -- ** PartitionId
    , PartitionId
    , partitionId
    , piNamespaceId
    , piProjectId

    -- ** GoogleDatastoreAdminV1ListIndexesResponse
    , GoogleDatastoreAdminV1ListIndexesResponse
    , googleDatastoreAdminV1ListIndexesResponse
    , gdavlirNextPageToken
    , gdavlirIndexes

    -- ** QueryResultBatch
    , QueryResultBatch
    , queryResultBatch
    , qrbSkippedResults
    , qrbSkippedCursor
    , qrbEntityResultType
    , qrbSnapshotVersion
    , qrbEntityResults
    , qrbMoreResults
    , qrbEndCursor

    -- ** CompositeFilterOp
    , CompositeFilterOp (..)

    -- ** EntityProperties
    , EntityProperties
    , entityProperties
    , epAddtional

    -- ** GoogleDatastoreAdminV1ImportEntitiesRequestLabels
    , GoogleDatastoreAdminV1ImportEntitiesRequestLabels
    , googleDatastoreAdminV1ImportEntitiesRequestLabels
    , gdavierlAddtional

    -- ** BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrTransactionOptions

    -- ** RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrPartitionId
    , rqrGqlQuery
    , rqrQuery
    , rqrReadOptions

    -- ** AllocateIdsRequest
    , AllocateIdsRequest
    , allocateIdsRequest
    , airKeys

    -- ** GoogleDatastoreAdminV1ExportEntitiesMetadata
    , GoogleDatastoreAdminV1ExportEntitiesMetadata
    , googleDatastoreAdminV1ExportEntitiesMetadata
    , gdaveemProgressBytes
    , gdaveemOutputURLPrefix
    , gdaveemProgressEntities
    , gdaveemEntityFilter
    , gdaveemCommon

    -- ** QueryResultBatchEntityResultType
    , QueryResultBatchEntityResultType (..)

    -- ** GoogleDatastoreAdminV1beta1CommonMetadata
    , GoogleDatastoreAdminV1beta1CommonMetadata
    , googleDatastoreAdminV1beta1CommonMetadata
    , gdavcmState
    , gdavcmStartTime
    , gdavcmEndTime
    , gdavcmLabels
    , gdavcmOperationType

    -- ** Empty
    , Empty
    , empty

    -- ** CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOp
    , cfFilters

    -- ** GoogleDatastoreAdminV1beta1CommonMetadataOperationType
    , GoogleDatastoreAdminV1beta1CommonMetadataOperationType (..)

    -- ** QueryResultBatchMoreResults
    , QueryResultBatchMoreResults (..)

    -- ** GoogleDatastoreAdminV1IndexOperationMetadata
    , GoogleDatastoreAdminV1IndexOperationMetadata
    , googleDatastoreAdminV1IndexOperationMetadata
    , gdaviomProgressEntities
    , gdaviomCommon
    , gdaviomIndexId

    -- ** GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
    , GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
    , googleDatastoreAdminV1beta1ImportEntitiesMetadata
    , gdaviemProgressBytes
    , gdaviemProgressEntities
    , gdaviemEntityFilter
    , gdaviemInputURL
    , gdaviemCommon

    -- ** GoogleDatastoreAdminV1beta1Progress
    , GoogleDatastoreAdminV1beta1Progress
    , googleDatastoreAdminV1beta1Progress
    , gdavpWorkCompleted
    , gdavpWorkEstimated

    -- ** BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction

    -- ** MutationResult
    , MutationResult
    , mutationResult
    , mrConflictDetected
    , mrKey
    , mrVersion

    -- ** AllocateIdsResponse
    , AllocateIdsResponse
    , allocateIdsResponse
    , aKeys

    -- ** GqlQuery
    , GqlQuery
    , gqlQuery
    , gqPositionalBindings
    , gqNamedBindings
    , gqQueryString
    , gqAllowLiterals

    -- ** RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rBatch
    , rQuery

    -- ** GoogleDatastoreAdminV1ExportEntitiesRequestLabels
    , GoogleDatastoreAdminV1ExportEntitiesRequestLabels
    , googleDatastoreAdminV1ExportEntitiesRequestLabels
    , gdaveerlAddtional

    -- ** GoogleDatastoreAdminV1CommonMetadataOperationType
    , GoogleDatastoreAdminV1CommonMetadataOperationType (..)

    -- ** Value
    , Value
    , value
    , vKeyValue
    , vGeoPointValue
    , vIntegerValue
    , vTimestampValue
    , vEntityValue
    , vExcludeFromIndexes
    , vDoubleValue
    , vStringValue
    , vBooleanValue
    , vMeaning
    , vArrayValue
    , vNullValue
    , vBlobValue

    -- ** ValueNullValue
    , ValueNullValue (..)

    -- ** GoogleDatastoreAdminV1IndexedPropertyDirection
    , GoogleDatastoreAdminV1IndexedPropertyDirection (..)

    -- ** GoogleDatastoreAdminV1CommonMetadataLabels
    , GoogleDatastoreAdminV1CommonMetadataLabels
    , googleDatastoreAdminV1CommonMetadataLabels
    , gdavcmlAddtional

    -- ** GoogleDatastoreAdminV1IndexAncestor
    , GoogleDatastoreAdminV1IndexAncestor (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** LookupRequest
    , LookupRequest
    , lookupRequest
    , lrKeys
    , lrReadOptions

    -- ** ReadOptionsReadConsistency
    , ReadOptionsReadConsistency (..)

    -- ** GoogleDatastoreAdminV1CommonMetadata
    , GoogleDatastoreAdminV1CommonMetadata
    , googleDatastoreAdminV1CommonMetadata
    , gState
    , gStartTime
    , gEndTime
    , gLabels
    , gOperationType

    -- ** GoogleDatastoreAdminV1ExportEntitiesRequest
    , GoogleDatastoreAdminV1ExportEntitiesRequest
    , googleDatastoreAdminV1ExportEntitiesRequest
    , gdaveerOutputURLPrefix
    , gdaveerEntityFilter
    , gdaveerLabels

    -- ** Mutation
    , Mutation
    , mutation
    , mBaseVersion
    , mInsert
    , mUpsert
    , mDelete
    , mUpdate

    -- ** GqlQueryNamedBindings
    , GqlQueryNamedBindings
    , gqlQueryNamedBindings
    , gqnbAddtional

    -- ** GoogleDatastoreAdminV1ExportEntitiesResponse
    , GoogleDatastoreAdminV1ExportEntitiesResponse
    , googleDatastoreAdminV1ExportEntitiesResponse
    , gOutputURL

    -- ** PropertyReference
    , PropertyReference
    , propertyReference
    , prName

    -- ** Key
    , Key
    , key
    , kPartitionId
    , kPath

    -- ** GoogleDatastoreAdminV1ImportEntitiesRequest
    , GoogleDatastoreAdminV1ImportEntitiesRequest
    , googleDatastoreAdminV1ImportEntitiesRequest
    , gdavierEntityFilter
    , gdavierInputURL
    , gdavierLabels

    -- ** GoogleDatastoreAdminV1IndexState
    , GoogleDatastoreAdminV1IndexState (..)

    -- ** PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOp
    , pfValue

    -- ** Query
    , Query
    , query
    , qStartCursor
    , qOffSet
    , qKind
    , qDistinctOn
    , qEndCursor
    , qLimit
    , qProjection
    , qFilter
    , qOrder

    -- ** ArrayValue
    , ArrayValue
    , arrayValue
    , avValues

    -- ** EntityResult
    , EntityResult
    , entityResult
    , erCursor
    , erVersion
    , erEntity

    -- ** Xgafv
    , Xgafv (..)

    -- ** CommitResponse
    , CommitResponse
    , commitResponse
    , crIndexUpdates
    , crMutationResults

    -- ** KindExpression
    , KindExpression
    , kindExpression
    , keName

    -- ** GoogleLongrunningOperationResponse
    , GoogleLongrunningOperationResponse
    , googleLongrunningOperationResponse
    , glorAddtional

    -- ** ReadOptions
    , ReadOptions
    , readOptions
    , roReadConsistency
    , roTransaction

    -- ** GoogleDatastoreAdminV1beta1CommonMetadataState
    , GoogleDatastoreAdminV1beta1CommonMetadataState (..)

    -- ** GoogleDatastoreAdminV1EntityFilter
    , GoogleDatastoreAdminV1EntityFilter
    , googleDatastoreAdminV1EntityFilter
    , gdavefNamespaceIds
    , gdavefKinds

    -- ** RollbackResponse
    , RollbackResponse
    , rollbackResponse

    -- ** Projection
    , Projection
    , projection
    , pProperty

    -- ** ReserveIdsResponse
    , ReserveIdsResponse
    , reserveIdsResponse

    -- ** Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fPropertyFilter

    -- ** GoogleDatastoreAdminV1Index
    , GoogleDatastoreAdminV1Index
    , googleDatastoreAdminV1Index
    , gdaviState
    , gdaviKind
    , gdaviProjectId
    , gdaviIndexId
    , gdaviAncestor
    , gdaviProperties

    -- ** GoogleDatastoreAdminV1beta1CommonMetadataLabels
    , GoogleDatastoreAdminV1beta1CommonMetadataLabels
    , googleDatastoreAdminV1beta1CommonMetadataLabels
    , gAddtional

    -- ** PropertyFilterOp
    , PropertyFilterOp (..)

    -- ** CommitRequest
    , CommitRequest
    , commitRequest
    , crMutations
    , crMode
    , crTransaction

    -- ** CommitRequestMode
    , CommitRequestMode (..)

    -- ** GoogleLongrunningListOperationsResponse
    , GoogleLongrunningListOperationsResponse
    , googleLongrunningListOperationsResponse
    , gllorNextPageToken
    , gllorOperations

    -- ** GoogleDatastoreAdminV1ImportEntitiesMetadata
    , GoogleDatastoreAdminV1ImportEntitiesMetadata
    , googleDatastoreAdminV1ImportEntitiesMetadata
    , gProgressBytes
    , gProgressEntities
    , gEntityFilter
    , gInputURL
    , gCommon

    -- ** GoogleDatastoreAdminV1Progress
    , GoogleDatastoreAdminV1Progress
    , googleDatastoreAdminV1Progress
    , gWorkCompleted
    , gWorkEstimated

    -- ** PathElement
    , PathElement
    , pathElement
    , peKind
    , peName
    , peId

    -- ** Entity
    , Entity
    , entity
    , eKey
    , eProperties

    -- ** GoogleDatastoreAdminV1beta1EntityFilter
    , GoogleDatastoreAdminV1beta1EntityFilter
    , googleDatastoreAdminV1beta1EntityFilter
    , gNamespaceIds
    , gKinds

    -- ** ReadOnly
    , ReadOnly
    , readOnly

    -- ** GoogleDatastoreAdminV1IndexedProperty
    , GoogleDatastoreAdminV1IndexedProperty
    , googleDatastoreAdminV1IndexedProperty
    , gdavipDirection
    , gdavipName

    -- ** LookupResponse
    , LookupResponse
    , lookupResponse
    , lrDeferred
    , lrFound
    , lrMissing

    -- ** GoogleLongrunningOperation
    , GoogleLongrunningOperation
    , googleLongrunningOperation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- ** PropertyOrder
    , PropertyOrder
    , propertyOrder
    , poProperty
    , poDirection

    -- ** GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
    , GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
    , googleDatastoreAdminV1beta1ExportEntitiesMetadata
    , gooProgressBytes
    , gooOutputURLPrefix
    , gooProgressEntities
    , gooEntityFilter
    , gooCommon

    -- ** GqlQueryParameter
    , GqlQueryParameter
    , gqlQueryParameter
    , gqpCursor
    , gqpValue

    -- ** GoogleDatastoreAdminV1CommonMetadataState
    , GoogleDatastoreAdminV1CommonMetadataState (..)
    ) where

import Network.Google.Prelude
import Network.Google.Datastore.Types
import Network.Google.Resource.Datastore.Projects.AllocateIds
import Network.Google.Resource.Datastore.Projects.BeginTransaction
import Network.Google.Resource.Datastore.Projects.Commit
import Network.Google.Resource.Datastore.Projects.Export
import Network.Google.Resource.Datastore.Projects.Import
import Network.Google.Resource.Datastore.Projects.Indexes.Create
import Network.Google.Resource.Datastore.Projects.Indexes.Delete
import Network.Google.Resource.Datastore.Projects.Indexes.Get
import Network.Google.Resource.Datastore.Projects.Indexes.List
import Network.Google.Resource.Datastore.Projects.Lookup
import Network.Google.Resource.Datastore.Projects.Operations.Cancel
import Network.Google.Resource.Datastore.Projects.Operations.Delete
import Network.Google.Resource.Datastore.Projects.Operations.Get
import Network.Google.Resource.Datastore.Projects.Operations.List
import Network.Google.Resource.Datastore.Projects.ReserveIds
import Network.Google.Resource.Datastore.Projects.Rollback
import Network.Google.Resource.Datastore.Projects.RunQuery

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Datastore API service.
type DatastoreAPI =
     ProjectsIndexesListResource :<|>
       ProjectsIndexesGetResource
       :<|> ProjectsIndexesCreateResource
       :<|> ProjectsIndexesDeleteResource
       :<|> ProjectsOperationsListResource
       :<|> ProjectsOperationsGetResource
       :<|> ProjectsOperationsCancelResource
       :<|> ProjectsOperationsDeleteResource
       :<|> ProjectsExportResource
       :<|> ProjectsBeginTransactionResource
       :<|> ProjectsAllocateIdsResource
       :<|> ProjectsRunQueryResource
       :<|> ProjectsRollbackResource
       :<|> ProjectsReserveIdsResource
       :<|> ProjectsLookupResource
       :<|> ProjectsImportResource
       :<|> ProjectsCommitResource
