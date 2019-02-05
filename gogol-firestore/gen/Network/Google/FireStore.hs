{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FireStore
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses the NoSQL document database built for automatic scaling, high
-- performance, and ease of application development.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference>
module Network.Google.FireStore
    (
    -- * Service Configuration
      fireStoreService

    -- * OAuth Scopes
    , cloudPlatformScope
    , datastoreScope

    -- * API Declaration
    , FireStoreAPI

    -- * Resources

    -- ** firestore.projects.databases.collectionGroups.fields.get
    , module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.Get

    -- ** firestore.projects.databases.collectionGroups.fields.list
    , module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.List

    -- ** firestore.projects.databases.collectionGroups.fields.patch
    , module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.Patch

    -- ** firestore.projects.databases.collectionGroups.indexes.create
    , module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Create

    -- ** firestore.projects.databases.collectionGroups.indexes.delete
    , module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Delete

    -- ** firestore.projects.databases.collectionGroups.indexes.get
    , module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Get

    -- ** firestore.projects.databases.collectionGroups.indexes.list
    , module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.List

    -- ** firestore.projects.databases.documents.batchGet
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.BatchGet

    -- ** firestore.projects.databases.documents.beginTransaction
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.BeginTransaction

    -- ** firestore.projects.databases.documents.commit
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.Commit

    -- ** firestore.projects.databases.documents.createDocument
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.CreateDocument

    -- ** firestore.projects.databases.documents.delete
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.Delete

    -- ** firestore.projects.databases.documents.get
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.Get

    -- ** firestore.projects.databases.documents.list
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.List

    -- ** firestore.projects.databases.documents.listCollectionIds
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.ListCollectionIds

    -- ** firestore.projects.databases.documents.listen
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.Listen

    -- ** firestore.projects.databases.documents.patch
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.Patch

    -- ** firestore.projects.databases.documents.rollback
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.Rollback

    -- ** firestore.projects.databases.documents.runQuery
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.RunQuery

    -- ** firestore.projects.databases.documents.write
    , module Network.Google.Resource.FireStore.Projects.Databases.Documents.Write

    -- ** firestore.projects.databases.exportDocuments
    , module Network.Google.Resource.FireStore.Projects.Databases.ExportDocuments

    -- ** firestore.projects.databases.importDocuments
    , module Network.Google.Resource.FireStore.Projects.Databases.ImportDocuments

    -- ** firestore.projects.databases.operations.cancel
    , module Network.Google.Resource.FireStore.Projects.Databases.Operations.Cancel

    -- ** firestore.projects.databases.operations.delete
    , module Network.Google.Resource.FireStore.Projects.Databases.Operations.Delete

    -- ** firestore.projects.databases.operations.get
    , module Network.Google.Resource.FireStore.Projects.Databases.Operations.Get

    -- ** firestore.projects.databases.operations.list
    , module Network.Google.Resource.FireStore.Projects.Databases.Operations.List

    -- ** firestore.projects.locations.get
    , module Network.Google.Resource.FireStore.Projects.Locations.Get

    -- ** firestore.projects.locations.list
    , module Network.Google.Resource.FireStore.Projects.Locations.List

    -- * Types

    -- ** WriteRequest
    , WriteRequest
    , writeRequest
    , wrStreamToken
    , wrLabels
    , wrWrites
    , wrStreamId

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** GoogleFirestoreAdminV1IndexFieldOrder
    , GoogleFirestoreAdminV1IndexFieldOrder (..)

    -- ** WriteResult
    , WriteResult
    , writeResult
    , wrUpdateTime
    , wrTransformResults

    -- ** GoogleFirestoreAdminV1Field
    , GoogleFirestoreAdminV1Field
    , googleFirestoreAdminV1Field
    , gfavfIndexConfig
    , gfavfName

    -- ** TransactionOptions
    , TransactionOptions
    , transactionOptions
    , toReadWrite
    , toReadOnly

    -- ** GoogleFirestoreAdminV1IndexConfigDeltaChangeType
    , GoogleFirestoreAdminV1IndexConfigDeltaChangeType (..)

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

    -- ** Precondition
    , Precondition
    , precondition
    , pExists
    , pUpdateTime

    -- ** ReadWrite
    , ReadWrite
    , readWrite
    , rwRetryTransaction

    -- ** RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- ** GoogleFirestoreAdminV1ExportDocumentsRequest
    , GoogleFirestoreAdminV1ExportDocumentsRequest
    , googleFirestoreAdminV1ExportDocumentsRequest
    , gfavedrCollectionIds
    , gfavedrOutputURIPrefix

    -- ** TargetChange
    , TargetChange
    , targetChange
    , tcReadTime
    , tcResumeToken
    , tcCause
    , tcTargetChangeType
    , tcTargetIds

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** GoogleFirestoreAdminV1IndexState
    , GoogleFirestoreAdminV1IndexState (..)

    -- ** CompositeFilterOp
    , CompositeFilterOp (..)

    -- ** Cursor
    , Cursor
    , cursor
    , cValues
    , cBefore

    -- ** GoogleFirestoreAdminV1ImportDocumentsMetadata
    , GoogleFirestoreAdminV1ImportDocumentsMetadata
    , googleFirestoreAdminV1ImportDocumentsMetadata
    , gfavidmProgressBytes
    , gfavidmStartTime
    , gfavidmInputURIPrefix
    , gfavidmCollectionIds
    , gfavidmProgressDocuments
    , gfavidmEndTime
    , gfavidmOperationState

    -- ** BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrOptions

    -- ** RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReadTime
    , rqrNewTransaction
    , rqrStructuredQuery
    , rqrTransaction

    -- ** GoogleFirestoreAdminV1IndexConfigDelta
    , GoogleFirestoreAdminV1IndexConfigDelta
    , googleFirestoreAdminV1IndexConfigDelta
    , gfavicdIndex
    , gfavicdChangeType

    -- ** GoogleFirestoreAdminV1IndexConfig
    , GoogleFirestoreAdminV1IndexConfig
    , googleFirestoreAdminV1IndexConfig
    , gfavicAncestorField
    , gfavicReverting
    , gfavicIndexes
    , gfavicUsesAncestorConfig

    -- ** GoogleFirestoreAdminV1IndexField
    , GoogleFirestoreAdminV1IndexField
    , googleFirestoreAdminV1IndexField
    , gfavifFieldPath
    , gfavifArrayConfig
    , gfavifOrder

    -- ** Write
    , Write
    , write
    , wTransform
    , wUpdateMask
    , wCurrentDocument
    , wDelete
    , wUpdate

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** Empty
    , Empty
    , empty

    -- ** BatchGetDocumentsResponse
    , BatchGetDocumentsResponse
    , batchGetDocumentsResponse
    , bgdrReadTime
    , bgdrFound
    , bgdrTransaction
    , bgdrMissing

    -- ** CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOp
    , cfFilters

    -- ** DocumentsTarget
    , DocumentsTarget
    , documentsTarget
    , dtDocuments

    -- ** ListenRequestLabels
    , ListenRequestLabels
    , listenRequestLabels
    , lrlAddtional

    -- ** GoogleFirestoreAdminV1Index
    , GoogleFirestoreAdminV1Index
    , googleFirestoreAdminV1Index
    , gfaviState
    , gfaviQueryScope
    , gfaviName
    , gfaviFields

    -- ** BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction

    -- ** RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rReadTime
    , rSkippedResults
    , rTransaction
    , rDocument

    -- ** GoogleFirestoreAdminV1IndexQueryScope
    , GoogleFirestoreAdminV1IndexQueryScope (..)

    -- ** GoogleFirestoreAdminV1ExportDocumentsMetadata
    , GoogleFirestoreAdminV1ExportDocumentsMetadata
    , googleFirestoreAdminV1ExportDocumentsMetadata
    , gfavedmProgressBytes
    , gfavedmStartTime
    , gfavedmCollectionIds
    , gfavedmProgressDocuments
    , gfavedmEndTime
    , gfavedmOperationState
    , gfavedmOutputURIPrefix

    -- ** GoogleFirestoreAdminV1Progress
    , GoogleFirestoreAdminV1Progress
    , googleFirestoreAdminV1Progress
    , gfavpCompletedWork
    , gfavpEstimatedWork

    -- ** DocumentMask
    , DocumentMask
    , documentMask
    , dmFieldPaths

    -- ** QueryTarget
    , QueryTarget
    , queryTarget
    , qtParent
    , qtStructuredQuery

    -- ** Value
    , Value
    , value
    , vGeoPointValue
    , vBytesValue
    , vIntegerValue
    , vTimestampValue
    , vDoubleValue
    , vStringValue
    , vBooleanValue
    , vMapValue
    , vArrayValue
    , vReferenceValue
    , vNullValue

    -- ** OrderDirection
    , OrderDirection (..)

    -- ** ValueNullValue
    , ValueNullValue (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** DocumentTransform
    , DocumentTransform
    , documentTransform
    , dtDocument
    , dtFieldTransforms

    -- ** StructuredQuery
    , StructuredQuery
    , structuredQuery
    , sqWhere
    , sqOrderBy
    , sqStartAt
    , sqOffSet
    , sqFrom
    , sqEndAt
    , sqLimit
    , sqSelect

    -- ** ExistenceFilter
    , ExistenceFilter
    , existenceFilter
    , efTargetId
    , efCount

    -- ** GoogleFirestoreAdminV1ListFieldsResponse
    , GoogleFirestoreAdminV1ListFieldsResponse
    , googleFirestoreAdminV1ListFieldsResponse
    , gfavlfrNextPageToken
    , gfavlfrFields

    -- ** GoogleFirestoreAdminV1ImportDocumentsRequest
    , GoogleFirestoreAdminV1ImportDocumentsRequest
    , googleFirestoreAdminV1ImportDocumentsRequest
    , gfavidrInputURIPrefix
    , gfavidrCollectionIds

    -- ** GoogleFirestoreAdminV1LocationMetadata
    , GoogleFirestoreAdminV1LocationMetadata
    , googleFirestoreAdminV1LocationMetadata

    -- ** GoogleLongrunningCancelOperationRequest
    , GoogleLongrunningCancelOperationRequest
    , googleLongrunningCancelOperationRequest

    -- ** UnaryFilterOp
    , UnaryFilterOp (..)

    -- ** ListCollectionIdsResponse
    , ListCollectionIdsResponse
    , listCollectionIdsResponse
    , lcirNextPageToken
    , lcirCollectionIds

    -- ** FieldReference
    , FieldReference
    , fieldReference
    , frFieldPath

    -- ** DocumentRemove
    , DocumentRemove
    , documentRemove
    , drReadTime
    , drDocument
    , drRemovedTargetIds

    -- ** GoogleFirestoreAdminV1IndexFieldArrayConfig
    , GoogleFirestoreAdminV1IndexFieldArrayConfig (..)

    -- ** DocumentChange
    , DocumentChange
    , documentChange
    , dcDocument
    , dcTargetIds
    , dcRemovedTargetIds

    -- ** GoogleFirestoreAdminV1FieldOperationMetadata
    , GoogleFirestoreAdminV1FieldOperationMetadata
    , googleFirestoreAdminV1FieldOperationMetadata
    , gfavfomProgressBytes
    , gfavfomState
    , gfavfomField
    , gfavfomStartTime
    , gfavfomProgressDocuments
    , gfavfomIndexConfigDeltas
    , gfavfomEndTime

    -- ** GoogleFirestoreAdminV1ListIndexesResponse
    , GoogleFirestoreAdminV1ListIndexesResponse
    , googleFirestoreAdminV1ListIndexesResponse
    , gfavlirNextPageToken
    , gfavlirIndexes

    -- ** MapValue
    , MapValue
    , mapValue
    , mvFields

    -- ** BatchGetDocumentsRequest
    , BatchGetDocumentsRequest
    , batchGetDocumentsRequest
    , bReadTime
    , bNewTransaction
    , bTransaction
    , bDocuments
    , bMask

    -- ** Document
    , Document
    , document
    , dUpdateTime
    , dName
    , dCreateTime
    , dFields

    -- ** GoogleFirestoreAdminV1IndexOperationMetadataState
    , GoogleFirestoreAdminV1IndexOperationMetadataState (..)

    -- ** ArrayValue
    , ArrayValue
    , arrayValue
    , avValues

    -- ** Xgafv
    , Xgafv (..)

    -- ** CommitResponse
    , CommitResponse
    , commitResponse
    , crCommitTime
    , crWriteResults

    -- ** ListenResponse
    , ListenResponse
    , listenResponse
    , lrTargetChange
    , lrDocumentRemove
    , lrDocumentChange
    , lrFilter
    , lrDocumentDelete

    -- ** FieldFilter
    , FieldFilter
    , fieldFilter
    , ffOp
    , ffField
    , ffValue

    -- ** GoogleLongrunningOperationResponse
    , GoogleLongrunningOperationResponse
    , googleLongrunningOperationResponse
    , glorAddtional

    -- ** ListDocumentsResponse
    , ListDocumentsResponse
    , listDocumentsResponse
    , ldrNextPageToken
    , ldrDocuments

    -- ** GoogleFirestoreAdminV1ExportDocumentsResponse
    , GoogleFirestoreAdminV1ExportDocumentsResponse
    , googleFirestoreAdminV1ExportDocumentsResponse
    , gOutputURIPrefix

    -- ** FieldFilterOp
    , FieldFilterOp (..)

    -- ** Projection
    , Projection
    , projection
    , pFields

    -- ** Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fFieldFilter
    , fUnaryFilter

    -- ** TargetChangeTargetChangeType
    , TargetChangeTargetChangeType (..)

    -- ** GoogleFirestoreAdminV1IndexOperationMetadata
    , GoogleFirestoreAdminV1IndexOperationMetadata
    , googleFirestoreAdminV1IndexOperationMetadata
    , gfaviomProgressBytes
    , gfaviomState
    , gfaviomStartTime
    , gfaviomProgressDocuments
    , gfaviomEndTime
    , gfaviomIndex

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** ListenRequest
    , ListenRequest
    , listenRequest
    , lrRemoveTarget
    , lrLabels
    , lrAddTarget

    -- ** GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState
    , GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState (..)

    -- ** CommitRequest
    , CommitRequest
    , commitRequest
    , crTransaction
    , crWrites

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** GoogleLongrunningListOperationsResponse
    , GoogleLongrunningListOperationsResponse
    , googleLongrunningListOperationsResponse
    , gllorNextPageToken
    , gllorOperations

    -- ** GoogleFirestoreAdminV1FieldOperationMetadataState
    , GoogleFirestoreAdminV1FieldOperationMetadataState (..)

    -- ** CollectionSelector
    , CollectionSelector
    , collectionSelector
    , csAllDescendants
    , csCollectionId

    -- ** ListCollectionIdsRequest
    , ListCollectionIdsRequest
    , listCollectionIdsRequest
    , lcirPageToken
    , lcirPageSize

    -- ** WriteResponse
    , WriteResponse
    , writeResponse
    , wStreamToken
    , wCommitTime
    , wWriteResults
    , wStreamId

    -- ** Order
    , Order
    , order
    , oField
    , oDirection

    -- ** DocumentDelete
    , DocumentDelete
    , documentDelete
    , ddReadTime
    , ddDocument
    , ddRemovedTargetIds

    -- ** FieldTransform
    , FieldTransform
    , fieldTransform
    , ftFieldPath
    , ftAppendMissingElements
    , ftSetToServerValue
    , ftRemoveAllFromArray

    -- ** MapValueFields
    , MapValueFields
    , mapValueFields
    , mvfAddtional

    -- ** DocumentFields
    , DocumentFields
    , documentFields
    , dfAddtional

    -- ** ReadOnly
    , ReadOnly
    , readOnly
    , roReadTime

    -- ** Target
    , Target
    , target
    , tTargetId
    , tOnce
    , tReadTime
    , tResumeToken
    , tDocuments
    , tQuery

    -- ** WriteRequestLabels
    , WriteRequestLabels
    , writeRequestLabels
    , wrlAddtional

    -- ** FieldTransformSetToServerValue
    , FieldTransformSetToServerValue (..)

    -- ** GoogleLongrunningOperation
    , GoogleLongrunningOperation
    , googleLongrunningOperation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- ** GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState
    , GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState (..)

    -- ** UnaryFilter
    , UnaryFilter
    , unaryFilter
    , ufOp
    , ufField
    ) where

import           Network.Google.FireStore.Types
import           Network.Google.Prelude
import           Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.Get
import           Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.List
import           Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.Patch
import           Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Create
import           Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Delete
import           Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Get
import           Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.List
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.BatchGet
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.BeginTransaction
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.Commit
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.CreateDocument
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.Delete
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.Get
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.List
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.ListCollectionIds
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.Listen
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.Patch
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.Rollback
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.RunQuery
import           Network.Google.Resource.FireStore.Projects.Databases.Documents.Write
import           Network.Google.Resource.FireStore.Projects.Databases.ExportDocuments
import           Network.Google.Resource.FireStore.Projects.Databases.ImportDocuments
import           Network.Google.Resource.FireStore.Projects.Databases.Operations.Cancel
import           Network.Google.Resource.FireStore.Projects.Databases.Operations.Delete
import           Network.Google.Resource.FireStore.Projects.Databases.Operations.Get
import           Network.Google.Resource.FireStore.Projects.Databases.Operations.List
import           Network.Google.Resource.FireStore.Projects.Locations.Get
import           Network.Google.Resource.FireStore.Projects.Locations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Firestore API service.
type FireStoreAPI =
     ProjectsLocationsListResource :<|>
       ProjectsLocationsGetResource
       :<|>
       ProjectsDatabasesDocumentsListCollectionIdsResource
       :<|> ProjectsDatabasesDocumentsListResource
       :<|> ProjectsDatabasesDocumentsWriteResource
       :<|> ProjectsDatabasesDocumentsCreateDocumentResource
       :<|>
       ProjectsDatabasesDocumentsBeginTransactionResource
       :<|> ProjectsDatabasesDocumentsRunQueryResource
       :<|> ProjectsDatabasesDocumentsPatchResource
       :<|> ProjectsDatabasesDocumentsGetResource
       :<|> ProjectsDatabasesDocumentsRollbackResource
       :<|> ProjectsDatabasesDocumentsBatchGetResource
       :<|> ProjectsDatabasesDocumentsDeleteResource
       :<|> ProjectsDatabasesDocumentsListenResource
       :<|> ProjectsDatabasesDocumentsCommitResource
       :<|>
       ProjectsDatabasesCollectionGroupsIndexesListResource
       :<|>
       ProjectsDatabasesCollectionGroupsIndexesGetResource
       :<|>
       ProjectsDatabasesCollectionGroupsIndexesCreateResource
       :<|>
       ProjectsDatabasesCollectionGroupsIndexesDeleteResource
       :<|>
       ProjectsDatabasesCollectionGroupsFieldsListResource
       :<|>
       ProjectsDatabasesCollectionGroupsFieldsPatchResource
       :<|>
       ProjectsDatabasesCollectionGroupsFieldsGetResource
       :<|> ProjectsDatabasesOperationsListResource
       :<|> ProjectsDatabasesOperationsGetResource
       :<|> ProjectsDatabasesOperationsCancelResource
       :<|> ProjectsDatabasesOperationsDeleteResource
       :<|> ProjectsDatabasesExportDocumentsResource
       :<|> ProjectsDatabasesImportDocumentsResource
