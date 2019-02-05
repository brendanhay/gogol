{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FireStore.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FireStore.Types
    (
    -- * Service Configuration
      fireStoreService

    -- * OAuth Scopes
    , cloudPlatformScope
    , datastoreScope

    -- * WriteRequest
    , WriteRequest
    , writeRequest
    , wrStreamToken
    , wrLabels
    , wrWrites
    , wrStreamId

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * GoogleFirestoreAdminV1IndexFieldOrder
    , GoogleFirestoreAdminV1IndexFieldOrder (..)

    -- * WriteResult
    , WriteResult
    , writeResult
    , wrUpdateTime
    , wrTransformResults

    -- * GoogleFirestoreAdminV1Field
    , GoogleFirestoreAdminV1Field
    , googleFirestoreAdminV1Field
    , gfavfIndexConfig
    , gfavfName

    -- * TransactionOptions
    , TransactionOptions
    , transactionOptions
    , toReadWrite
    , toReadOnly

    -- * GoogleFirestoreAdminV1IndexConfigDeltaChangeType
    , GoogleFirestoreAdminV1IndexConfigDeltaChangeType (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * GoogleLongrunningOperationMetadata
    , GoogleLongrunningOperationMetadata
    , googleLongrunningOperationMetadata
    , glomAddtional

    -- * Precondition
    , Precondition
    , precondition
    , pExists
    , pUpdateTime

    -- * ReadWrite
    , ReadWrite
    , readWrite
    , rwRetryTransaction

    -- * RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- * GoogleFirestoreAdminV1ExportDocumentsRequest
    , GoogleFirestoreAdminV1ExportDocumentsRequest
    , googleFirestoreAdminV1ExportDocumentsRequest
    , gfavedrCollectionIds
    , gfavedrOutputURIPrefix

    -- * TargetChange
    , TargetChange
    , targetChange
    , tcReadTime
    , tcResumeToken
    , tcCause
    , tcTargetChangeType
    , tcTargetIds

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * GoogleFirestoreAdminV1IndexState
    , GoogleFirestoreAdminV1IndexState (..)

    -- * CompositeFilterOp
    , CompositeFilterOp (..)

    -- * Cursor
    , Cursor
    , cursor
    , cValues
    , cBefore

    -- * GoogleFirestoreAdminV1ImportDocumentsMetadata
    , GoogleFirestoreAdminV1ImportDocumentsMetadata
    , googleFirestoreAdminV1ImportDocumentsMetadata
    , gfavidmProgressBytes
    , gfavidmStartTime
    , gfavidmInputURIPrefix
    , gfavidmCollectionIds
    , gfavidmProgressDocuments
    , gfavidmEndTime
    , gfavidmOperationState

    -- * BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrOptions

    -- * RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReadTime
    , rqrNewTransaction
    , rqrStructuredQuery
    , rqrTransaction

    -- * GoogleFirestoreAdminV1IndexConfigDelta
    , GoogleFirestoreAdminV1IndexConfigDelta
    , googleFirestoreAdminV1IndexConfigDelta
    , gfavicdIndex
    , gfavicdChangeType

    -- * GoogleFirestoreAdminV1IndexConfig
    , GoogleFirestoreAdminV1IndexConfig
    , googleFirestoreAdminV1IndexConfig
    , gfavicAncestorField
    , gfavicReverting
    , gfavicIndexes
    , gfavicUsesAncestorConfig

    -- * GoogleFirestoreAdminV1IndexField
    , GoogleFirestoreAdminV1IndexField
    , googleFirestoreAdminV1IndexField
    , gfavifFieldPath
    , gfavifArrayConfig
    , gfavifOrder

    -- * Write
    , Write
    , write
    , wTransform
    , wUpdateMask
    , wCurrentDocument
    , wDelete
    , wUpdate

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Empty
    , Empty
    , empty

    -- * BatchGetDocumentsResponse
    , BatchGetDocumentsResponse
    , batchGetDocumentsResponse
    , bgdrReadTime
    , bgdrFound
    , bgdrTransaction
    , bgdrMissing

    -- * CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOp
    , cfFilters

    -- * DocumentsTarget
    , DocumentsTarget
    , documentsTarget
    , dtDocuments

    -- * ListenRequestLabels
    , ListenRequestLabels
    , listenRequestLabels
    , lrlAddtional

    -- * GoogleFirestoreAdminV1Index
    , GoogleFirestoreAdminV1Index
    , googleFirestoreAdminV1Index
    , gfaviState
    , gfaviQueryScope
    , gfaviName
    , gfaviFields

    -- * BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction

    -- * RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rReadTime
    , rSkippedResults
    , rTransaction
    , rDocument

    -- * GoogleFirestoreAdminV1IndexQueryScope
    , GoogleFirestoreAdminV1IndexQueryScope (..)

    -- * GoogleFirestoreAdminV1ExportDocumentsMetadata
    , GoogleFirestoreAdminV1ExportDocumentsMetadata
    , googleFirestoreAdminV1ExportDocumentsMetadata
    , gfavedmProgressBytes
    , gfavedmStartTime
    , gfavedmCollectionIds
    , gfavedmProgressDocuments
    , gfavedmEndTime
    , gfavedmOperationState
    , gfavedmOutputURIPrefix

    -- * GoogleFirestoreAdminV1Progress
    , GoogleFirestoreAdminV1Progress
    , googleFirestoreAdminV1Progress
    , gfavpCompletedWork
    , gfavpEstimatedWork

    -- * DocumentMask
    , DocumentMask
    , documentMask
    , dmFieldPaths

    -- * QueryTarget
    , QueryTarget
    , queryTarget
    , qtParent
    , qtStructuredQuery

    -- * Value
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

    -- * OrderDirection
    , OrderDirection (..)

    -- * ValueNullValue
    , ValueNullValue (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * DocumentTransform
    , DocumentTransform
    , documentTransform
    , dtDocument
    , dtFieldTransforms

    -- * StructuredQuery
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

    -- * ExistenceFilter
    , ExistenceFilter
    , existenceFilter
    , efTargetId
    , efCount

    -- * GoogleFirestoreAdminV1ListFieldsResponse
    , GoogleFirestoreAdminV1ListFieldsResponse
    , googleFirestoreAdminV1ListFieldsResponse
    , gfavlfrNextPageToken
    , gfavlfrFields

    -- * GoogleFirestoreAdminV1ImportDocumentsRequest
    , GoogleFirestoreAdminV1ImportDocumentsRequest
    , googleFirestoreAdminV1ImportDocumentsRequest
    , gfavidrInputURIPrefix
    , gfavidrCollectionIds

    -- * GoogleFirestoreAdminV1LocationMetadata
    , GoogleFirestoreAdminV1LocationMetadata
    , googleFirestoreAdminV1LocationMetadata

    -- * GoogleLongrunningCancelOperationRequest
    , GoogleLongrunningCancelOperationRequest
    , googleLongrunningCancelOperationRequest

    -- * UnaryFilterOp
    , UnaryFilterOp (..)

    -- * ListCollectionIdsResponse
    , ListCollectionIdsResponse
    , listCollectionIdsResponse
    , lcirNextPageToken
    , lcirCollectionIds

    -- * FieldReference
    , FieldReference
    , fieldReference
    , frFieldPath

    -- * DocumentRemove
    , DocumentRemove
    , documentRemove
    , drReadTime
    , drDocument
    , drRemovedTargetIds

    -- * GoogleFirestoreAdminV1IndexFieldArrayConfig
    , GoogleFirestoreAdminV1IndexFieldArrayConfig (..)

    -- * DocumentChange
    , DocumentChange
    , documentChange
    , dcDocument
    , dcTargetIds
    , dcRemovedTargetIds

    -- * GoogleFirestoreAdminV1FieldOperationMetadata
    , GoogleFirestoreAdminV1FieldOperationMetadata
    , googleFirestoreAdminV1FieldOperationMetadata
    , gfavfomProgressBytes
    , gfavfomState
    , gfavfomField
    , gfavfomStartTime
    , gfavfomProgressDocuments
    , gfavfomIndexConfigDeltas
    , gfavfomEndTime

    -- * GoogleFirestoreAdminV1ListIndexesResponse
    , GoogleFirestoreAdminV1ListIndexesResponse
    , googleFirestoreAdminV1ListIndexesResponse
    , gfavlirNextPageToken
    , gfavlirIndexes

    -- * MapValue
    , MapValue
    , mapValue
    , mvFields

    -- * BatchGetDocumentsRequest
    , BatchGetDocumentsRequest
    , batchGetDocumentsRequest
    , bReadTime
    , bNewTransaction
    , bTransaction
    , bDocuments
    , bMask

    -- * Document
    , Document
    , document
    , dUpdateTime
    , dName
    , dCreateTime
    , dFields

    -- * GoogleFirestoreAdminV1IndexOperationMetadataState
    , GoogleFirestoreAdminV1IndexOperationMetadataState (..)

    -- * ArrayValue
    , ArrayValue
    , arrayValue
    , avValues

    -- * Xgafv
    , Xgafv (..)

    -- * CommitResponse
    , CommitResponse
    , commitResponse
    , crCommitTime
    , crWriteResults

    -- * ListenResponse
    , ListenResponse
    , listenResponse
    , lrTargetChange
    , lrDocumentRemove
    , lrDocumentChange
    , lrFilter
    , lrDocumentDelete

    -- * FieldFilter
    , FieldFilter
    , fieldFilter
    , ffOp
    , ffField
    , ffValue

    -- * GoogleLongrunningOperationResponse
    , GoogleLongrunningOperationResponse
    , googleLongrunningOperationResponse
    , glorAddtional

    -- * ListDocumentsResponse
    , ListDocumentsResponse
    , listDocumentsResponse
    , ldrNextPageToken
    , ldrDocuments

    -- * GoogleFirestoreAdminV1ExportDocumentsResponse
    , GoogleFirestoreAdminV1ExportDocumentsResponse
    , googleFirestoreAdminV1ExportDocumentsResponse
    , gOutputURIPrefix

    -- * FieldFilterOp
    , FieldFilterOp (..)

    -- * Projection
    , Projection
    , projection
    , pFields

    -- * Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fFieldFilter
    , fUnaryFilter

    -- * TargetChangeTargetChangeType
    , TargetChangeTargetChangeType (..)

    -- * GoogleFirestoreAdminV1IndexOperationMetadata
    , GoogleFirestoreAdminV1IndexOperationMetadata
    , googleFirestoreAdminV1IndexOperationMetadata
    , gfaviomProgressBytes
    , gfaviomState
    , gfaviomStartTime
    , gfaviomProgressDocuments
    , gfaviomEndTime
    , gfaviomIndex

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * ListenRequest
    , ListenRequest
    , listenRequest
    , lrRemoveTarget
    , lrLabels
    , lrAddTarget

    -- * GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState
    , GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState (..)

    -- * CommitRequest
    , CommitRequest
    , commitRequest
    , crTransaction
    , crWrites

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * GoogleLongrunningListOperationsResponse
    , GoogleLongrunningListOperationsResponse
    , googleLongrunningListOperationsResponse
    , gllorNextPageToken
    , gllorOperations

    -- * GoogleFirestoreAdminV1FieldOperationMetadataState
    , GoogleFirestoreAdminV1FieldOperationMetadataState (..)

    -- * CollectionSelector
    , CollectionSelector
    , collectionSelector
    , csAllDescendants
    , csCollectionId

    -- * ListCollectionIdsRequest
    , ListCollectionIdsRequest
    , listCollectionIdsRequest
    , lcirPageToken
    , lcirPageSize

    -- * WriteResponse
    , WriteResponse
    , writeResponse
    , wStreamToken
    , wCommitTime
    , wWriteResults
    , wStreamId

    -- * Order
    , Order
    , order
    , oField
    , oDirection

    -- * DocumentDelete
    , DocumentDelete
    , documentDelete
    , ddReadTime
    , ddDocument
    , ddRemovedTargetIds

    -- * FieldTransform
    , FieldTransform
    , fieldTransform
    , ftFieldPath
    , ftAppendMissingElements
    , ftSetToServerValue
    , ftRemoveAllFromArray

    -- * MapValueFields
    , MapValueFields
    , mapValueFields
    , mvfAddtional

    -- * DocumentFields
    , DocumentFields
    , documentFields
    , dfAddtional

    -- * ReadOnly
    , ReadOnly
    , readOnly
    , roReadTime

    -- * Target
    , Target
    , target
    , tTargetId
    , tOnce
    , tReadTime
    , tResumeToken
    , tDocuments
    , tQuery

    -- * WriteRequestLabels
    , WriteRequestLabels
    , writeRequestLabels
    , wrlAddtional

    -- * FieldTransformSetToServerValue
    , FieldTransformSetToServerValue (..)

    -- * GoogleLongrunningOperation
    , GoogleLongrunningOperation
    , googleLongrunningOperation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- * GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState
    , GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState (..)

    -- * UnaryFilter
    , UnaryFilter
    , unaryFilter
    , ufOp
    , ufField
    ) where

import           Network.Google.FireStore.Types.Product
import           Network.Google.FireStore.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Firestore API. This contains the host and root path used as a starting point for constructing service requests.
fireStoreService :: ServiceConfig
fireStoreService
  = defaultService (ServiceId "firestore:v1")
      "firestore.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View and manage your Google Cloud Datastore data
datastoreScope :: Proxy '["https://www.googleapis.com/auth/datastore"]
datastoreScope = Proxy;
