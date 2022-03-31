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
-- Module      : Gogol.FireStore
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses the NoSQL document database built for automatic scaling, high performance, and ease of application development.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference>
module Gogol.FireStore
  ( -- * Configuration
    fireStoreService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Datastore'FullControl,

    -- * Resources

    -- ** firestore.projects.databases.collectionGroups.fields.get
    FireStoreProjectsDatabasesCollectionGroupsFieldsGetResource,
    newFireStoreProjectsDatabasesCollectionGroupsFieldsGet,
    FireStoreProjectsDatabasesCollectionGroupsFieldsGet,

    -- ** firestore.projects.databases.collectionGroups.fields.list
    FireStoreProjectsDatabasesCollectionGroupsFieldsListResource,
    newFireStoreProjectsDatabasesCollectionGroupsFieldsList,
    FireStoreProjectsDatabasesCollectionGroupsFieldsList,

    -- ** firestore.projects.databases.collectionGroups.fields.patch
    FireStoreProjectsDatabasesCollectionGroupsFieldsPatchResource,
    newFireStoreProjectsDatabasesCollectionGroupsFieldsPatch,
    FireStoreProjectsDatabasesCollectionGroupsFieldsPatch,

    -- ** firestore.projects.databases.collectionGroups.indexes.create
    FireStoreProjectsDatabasesCollectionGroupsIndexesCreateResource,
    newFireStoreProjectsDatabasesCollectionGroupsIndexesCreate,
    FireStoreProjectsDatabasesCollectionGroupsIndexesCreate,

    -- ** firestore.projects.databases.collectionGroups.indexes.delete
    FireStoreProjectsDatabasesCollectionGroupsIndexesDeleteResource,
    newFireStoreProjectsDatabasesCollectionGroupsIndexesDelete,
    FireStoreProjectsDatabasesCollectionGroupsIndexesDelete,

    -- ** firestore.projects.databases.collectionGroups.indexes.get
    FireStoreProjectsDatabasesCollectionGroupsIndexesGetResource,
    newFireStoreProjectsDatabasesCollectionGroupsIndexesGet,
    FireStoreProjectsDatabasesCollectionGroupsIndexesGet,

    -- ** firestore.projects.databases.collectionGroups.indexes.list
    FireStoreProjectsDatabasesCollectionGroupsIndexesListResource,
    newFireStoreProjectsDatabasesCollectionGroupsIndexesList,
    FireStoreProjectsDatabasesCollectionGroupsIndexesList,

    -- ** firestore.projects.databases.documents.batchGet
    FireStoreProjectsDatabasesDocumentsBatchGetResource,
    newFireStoreProjectsDatabasesDocumentsBatchGet,
    FireStoreProjectsDatabasesDocumentsBatchGet,

    -- ** firestore.projects.databases.documents.batchWrite
    FireStoreProjectsDatabasesDocumentsBatchWriteResource,
    newFireStoreProjectsDatabasesDocumentsBatchWrite,
    FireStoreProjectsDatabasesDocumentsBatchWrite,

    -- ** firestore.projects.databases.documents.beginTransaction
    FireStoreProjectsDatabasesDocumentsBeginTransactionResource,
    newFireStoreProjectsDatabasesDocumentsBeginTransaction,
    FireStoreProjectsDatabasesDocumentsBeginTransaction,

    -- ** firestore.projects.databases.documents.commit
    FireStoreProjectsDatabasesDocumentsCommitResource,
    newFireStoreProjectsDatabasesDocumentsCommit,
    FireStoreProjectsDatabasesDocumentsCommit,

    -- ** firestore.projects.databases.documents.createDocument
    FireStoreProjectsDatabasesDocumentsCreateDocumentResource,
    newFireStoreProjectsDatabasesDocumentsCreateDocument,
    FireStoreProjectsDatabasesDocumentsCreateDocument,

    -- ** firestore.projects.databases.documents.delete
    FireStoreProjectsDatabasesDocumentsDeleteResource,
    newFireStoreProjectsDatabasesDocumentsDelete,
    FireStoreProjectsDatabasesDocumentsDelete,

    -- ** firestore.projects.databases.documents.get
    FireStoreProjectsDatabasesDocumentsGetResource,
    newFireStoreProjectsDatabasesDocumentsGet,
    FireStoreProjectsDatabasesDocumentsGet,

    -- ** firestore.projects.databases.documents.list
    FireStoreProjectsDatabasesDocumentsListResource,
    newFireStoreProjectsDatabasesDocumentsList,
    FireStoreProjectsDatabasesDocumentsList,

    -- ** firestore.projects.databases.documents.listCollectionIds
    FireStoreProjectsDatabasesDocumentsListCollectionIdsResource,
    newFireStoreProjectsDatabasesDocumentsListCollectionIds,
    FireStoreProjectsDatabasesDocumentsListCollectionIds,

    -- ** firestore.projects.databases.documents.listDocuments
    FireStoreProjectsDatabasesDocumentsListDocumentsResource,
    newFireStoreProjectsDatabasesDocumentsListDocuments,
    FireStoreProjectsDatabasesDocumentsListDocuments,

    -- ** firestore.projects.databases.documents.listen
    FireStoreProjectsDatabasesDocumentsListenResource,
    newFireStoreProjectsDatabasesDocumentsListen,
    FireStoreProjectsDatabasesDocumentsListen,

    -- ** firestore.projects.databases.documents.partitionQuery
    FireStoreProjectsDatabasesDocumentsPartitionQueryResource,
    newFireStoreProjectsDatabasesDocumentsPartitionQuery,
    FireStoreProjectsDatabasesDocumentsPartitionQuery,

    -- ** firestore.projects.databases.documents.patch
    FireStoreProjectsDatabasesDocumentsPatchResource,
    newFireStoreProjectsDatabasesDocumentsPatch,
    FireStoreProjectsDatabasesDocumentsPatch,

    -- ** firestore.projects.databases.documents.rollback
    FireStoreProjectsDatabasesDocumentsRollbackResource,
    newFireStoreProjectsDatabasesDocumentsRollback,
    FireStoreProjectsDatabasesDocumentsRollback,

    -- ** firestore.projects.databases.documents.runQuery
    FireStoreProjectsDatabasesDocumentsRunQueryResource,
    newFireStoreProjectsDatabasesDocumentsRunQuery,
    FireStoreProjectsDatabasesDocumentsRunQuery,

    -- ** firestore.projects.databases.documents.write
    FireStoreProjectsDatabasesDocumentsWriteResource,
    newFireStoreProjectsDatabasesDocumentsWrite,
    FireStoreProjectsDatabasesDocumentsWrite,

    -- ** firestore.projects.databases.exportDocuments
    FireStoreProjectsDatabasesExportDocumentsResource,
    newFireStoreProjectsDatabasesExportDocuments,
    FireStoreProjectsDatabasesExportDocuments,

    -- ** firestore.projects.databases.get
    FireStoreProjectsDatabasesGetResource,
    newFireStoreProjectsDatabasesGet,
    FireStoreProjectsDatabasesGet,

    -- ** firestore.projects.databases.importDocuments
    FireStoreProjectsDatabasesImportDocumentsResource,
    newFireStoreProjectsDatabasesImportDocuments,
    FireStoreProjectsDatabasesImportDocuments,

    -- ** firestore.projects.databases.list
    FireStoreProjectsDatabasesListResource,
    newFireStoreProjectsDatabasesList,
    FireStoreProjectsDatabasesList,

    -- ** firestore.projects.databases.operations.cancel
    FireStoreProjectsDatabasesOperationsCancelResource,
    newFireStoreProjectsDatabasesOperationsCancel,
    FireStoreProjectsDatabasesOperationsCancel,

    -- ** firestore.projects.databases.operations.delete
    FireStoreProjectsDatabasesOperationsDeleteResource,
    newFireStoreProjectsDatabasesOperationsDelete,
    FireStoreProjectsDatabasesOperationsDelete,

    -- ** firestore.projects.databases.operations.get
    FireStoreProjectsDatabasesOperationsGetResource,
    newFireStoreProjectsDatabasesOperationsGet,
    FireStoreProjectsDatabasesOperationsGet,

    -- ** firestore.projects.databases.operations.list
    FireStoreProjectsDatabasesOperationsListResource,
    newFireStoreProjectsDatabasesOperationsList,
    FireStoreProjectsDatabasesOperationsList,

    -- ** firestore.projects.databases.patch
    FireStoreProjectsDatabasesPatchResource,
    newFireStoreProjectsDatabasesPatch,
    FireStoreProjectsDatabasesPatch,

    -- ** firestore.projects.locations.get
    FireStoreProjectsLocationsGetResource,
    newFireStoreProjectsLocationsGet,
    FireStoreProjectsLocationsGet,

    -- ** firestore.projects.locations.list
    FireStoreProjectsLocationsListResource,
    newFireStoreProjectsLocationsList,
    FireStoreProjectsLocationsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** ArrayValue
    ArrayValue (..),
    newArrayValue,

    -- ** BatchGetDocumentsRequest
    BatchGetDocumentsRequest (..),
    newBatchGetDocumentsRequest,

    -- ** BatchGetDocumentsResponse
    BatchGetDocumentsResponse (..),
    newBatchGetDocumentsResponse,

    -- ** BatchWriteRequest
    BatchWriteRequest (..),
    newBatchWriteRequest,

    -- ** BatchWriteRequest_Labels
    BatchWriteRequest_Labels (..),
    newBatchWriteRequest_Labels,

    -- ** BatchWriteResponse
    BatchWriteResponse (..),
    newBatchWriteResponse,

    -- ** BeginTransactionRequest
    BeginTransactionRequest (..),
    newBeginTransactionRequest,

    -- ** BeginTransactionResponse
    BeginTransactionResponse (..),
    newBeginTransactionResponse,

    -- ** CollectionSelector
    CollectionSelector (..),
    newCollectionSelector,

    -- ** CommitRequest
    CommitRequest (..),
    newCommitRequest,

    -- ** CommitResponse
    CommitResponse (..),
    newCommitResponse,

    -- ** CompositeFilter
    CompositeFilter (..),
    newCompositeFilter,

    -- ** CompositeFilter_Op
    CompositeFilter_Op (..),

    -- ** Cursor
    Cursor (..),
    newCursor,

    -- ** Document
    Document (..),
    newDocument,

    -- ** Document_Fields
    Document_Fields (..),
    newDocument_Fields,

    -- ** DocumentChange
    DocumentChange (..),
    newDocumentChange,

    -- ** DocumentDelete
    DocumentDelete (..),
    newDocumentDelete,

    -- ** DocumentMask
    DocumentMask (..),
    newDocumentMask,

    -- ** DocumentRemove
    DocumentRemove (..),
    newDocumentRemove,

    -- ** DocumentTransform
    DocumentTransform (..),
    newDocumentTransform,

    -- ** DocumentsTarget
    DocumentsTarget (..),
    newDocumentsTarget,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** ExistenceFilter
    ExistenceFilter (..),
    newExistenceFilter,

    -- ** FieldFilter
    FieldFilter (..),
    newFieldFilter,

    -- ** FieldFilter_Op
    FieldFilter_Op (..),

    -- ** FieldReference
    FieldReference (..),
    newFieldReference,

    -- ** FieldTransform
    FieldTransform (..),
    newFieldTransform,

    -- ** FieldTransform_SetToServerValue
    FieldTransform_SetToServerValue (..),

    -- ** Filter
    Filter (..),
    newFilter,

    -- ** GoogleFirestoreAdminV1Database
    GoogleFirestoreAdminV1Database (..),
    newGoogleFirestoreAdminV1Database,

    -- ** GoogleFirestoreAdminV1Database_AppEngineIntegrationMode
    GoogleFirestoreAdminV1Database_AppEngineIntegrationMode (..),

    -- ** GoogleFirestoreAdminV1Database_ConcurrencyMode
    GoogleFirestoreAdminV1Database_ConcurrencyMode (..),

    -- ** GoogleFirestoreAdminV1Database_Type
    GoogleFirestoreAdminV1Database_Type (..),

    -- ** GoogleFirestoreAdminV1ExportDocumentsMetadata
    GoogleFirestoreAdminV1ExportDocumentsMetadata (..),
    newGoogleFirestoreAdminV1ExportDocumentsMetadata,

    -- ** GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
    GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState (..),

    -- ** GoogleFirestoreAdminV1ExportDocumentsRequest
    GoogleFirestoreAdminV1ExportDocumentsRequest (..),
    newGoogleFirestoreAdminV1ExportDocumentsRequest,

    -- ** GoogleFirestoreAdminV1ExportDocumentsResponse
    GoogleFirestoreAdminV1ExportDocumentsResponse (..),
    newGoogleFirestoreAdminV1ExportDocumentsResponse,

    -- ** GoogleFirestoreAdminV1Field
    GoogleFirestoreAdminV1Field (..),
    newGoogleFirestoreAdminV1Field,

    -- ** GoogleFirestoreAdminV1FieldOperationMetadata
    GoogleFirestoreAdminV1FieldOperationMetadata (..),
    newGoogleFirestoreAdminV1FieldOperationMetadata,

    -- ** GoogleFirestoreAdminV1FieldOperationMetadata_State
    GoogleFirestoreAdminV1FieldOperationMetadata_State (..),

    -- ** GoogleFirestoreAdminV1ImportDocumentsMetadata
    GoogleFirestoreAdminV1ImportDocumentsMetadata (..),
    newGoogleFirestoreAdminV1ImportDocumentsMetadata,

    -- ** GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
    GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState (..),

    -- ** GoogleFirestoreAdminV1ImportDocumentsRequest
    GoogleFirestoreAdminV1ImportDocumentsRequest (..),
    newGoogleFirestoreAdminV1ImportDocumentsRequest,

    -- ** GoogleFirestoreAdminV1Index
    GoogleFirestoreAdminV1Index (..),
    newGoogleFirestoreAdminV1Index,

    -- ** GoogleFirestoreAdminV1Index_QueryScope
    GoogleFirestoreAdminV1Index_QueryScope (..),

    -- ** GoogleFirestoreAdminV1Index_State
    GoogleFirestoreAdminV1Index_State (..),

    -- ** GoogleFirestoreAdminV1IndexConfig
    GoogleFirestoreAdminV1IndexConfig (..),
    newGoogleFirestoreAdminV1IndexConfig,

    -- ** GoogleFirestoreAdminV1IndexConfigDelta
    GoogleFirestoreAdminV1IndexConfigDelta (..),
    newGoogleFirestoreAdminV1IndexConfigDelta,

    -- ** GoogleFirestoreAdminV1IndexConfigDelta_ChangeType
    GoogleFirestoreAdminV1IndexConfigDelta_ChangeType (..),

    -- ** GoogleFirestoreAdminV1IndexField
    GoogleFirestoreAdminV1IndexField (..),
    newGoogleFirestoreAdminV1IndexField,

    -- ** GoogleFirestoreAdminV1IndexField_ArrayConfig
    GoogleFirestoreAdminV1IndexField_ArrayConfig (..),

    -- ** GoogleFirestoreAdminV1IndexField_Order
    GoogleFirestoreAdminV1IndexField_Order (..),

    -- ** GoogleFirestoreAdminV1IndexOperationMetadata
    GoogleFirestoreAdminV1IndexOperationMetadata (..),
    newGoogleFirestoreAdminV1IndexOperationMetadata,

    -- ** GoogleFirestoreAdminV1IndexOperationMetadata_State
    GoogleFirestoreAdminV1IndexOperationMetadata_State (..),

    -- ** GoogleFirestoreAdminV1ListDatabasesResponse
    GoogleFirestoreAdminV1ListDatabasesResponse (..),
    newGoogleFirestoreAdminV1ListDatabasesResponse,

    -- ** GoogleFirestoreAdminV1ListFieldsResponse
    GoogleFirestoreAdminV1ListFieldsResponse (..),
    newGoogleFirestoreAdminV1ListFieldsResponse,

    -- ** GoogleFirestoreAdminV1ListIndexesResponse
    GoogleFirestoreAdminV1ListIndexesResponse (..),
    newGoogleFirestoreAdminV1ListIndexesResponse,

    -- ** GoogleFirestoreAdminV1LocationMetadata
    GoogleFirestoreAdminV1LocationMetadata (..),
    newGoogleFirestoreAdminV1LocationMetadata,

    -- ** GoogleFirestoreAdminV1Progress
    GoogleFirestoreAdminV1Progress (..),
    newGoogleFirestoreAdminV1Progress,

    -- ** GoogleFirestoreAdminV1UpdateDatabaseMetadata
    GoogleFirestoreAdminV1UpdateDatabaseMetadata (..),
    newGoogleFirestoreAdminV1UpdateDatabaseMetadata,

    -- ** GoogleLongrunningCancelOperationRequest
    GoogleLongrunningCancelOperationRequest (..),
    newGoogleLongrunningCancelOperationRequest,

    -- ** GoogleLongrunningListOperationsResponse
    GoogleLongrunningListOperationsResponse (..),
    newGoogleLongrunningListOperationsResponse,

    -- ** GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- ** GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- ** GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- ** LatLng
    LatLng (..),
    newLatLng,

    -- ** ListCollectionIdsRequest
    ListCollectionIdsRequest (..),
    newListCollectionIdsRequest,

    -- ** ListCollectionIdsResponse
    ListCollectionIdsResponse (..),
    newListCollectionIdsResponse,

    -- ** ListDocumentsResponse
    ListDocumentsResponse (..),
    newListDocumentsResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListenRequest
    ListenRequest (..),
    newListenRequest,

    -- ** ListenRequest_Labels
    ListenRequest_Labels (..),
    newListenRequest_Labels,

    -- ** ListenResponse
    ListenResponse (..),
    newListenResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** MapValue
    MapValue (..),
    newMapValue,

    -- ** MapValue_Fields
    MapValue_Fields (..),
    newMapValue_Fields,

    -- ** Order
    Order (..),
    newOrder,

    -- ** Order_Direction
    Order_Direction (..),

    -- ** PartitionQueryRequest
    PartitionQueryRequest (..),
    newPartitionQueryRequest,

    -- ** PartitionQueryResponse
    PartitionQueryResponse (..),
    newPartitionQueryResponse,

    -- ** Precondition
    Precondition (..),
    newPrecondition,

    -- ** Projection
    Projection (..),
    newProjection,

    -- ** QueryTarget
    QueryTarget (..),
    newQueryTarget,

    -- ** ReadOnly
    ReadOnly (..),
    newReadOnly,

    -- ** ReadWrite
    ReadWrite (..),
    newReadWrite,

    -- ** RollbackRequest
    RollbackRequest (..),
    newRollbackRequest,

    -- ** RunQueryRequest
    RunQueryRequest (..),
    newRunQueryRequest,

    -- ** RunQueryResponse
    RunQueryResponse (..),
    newRunQueryResponse,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StructuredQuery
    StructuredQuery (..),
    newStructuredQuery,

    -- ** Target
    Target (..),
    newTarget,

    -- ** TargetChange
    TargetChange (..),
    newTargetChange,

    -- ** TargetChange_TargetChangeType
    TargetChange_TargetChangeType (..),

    -- ** TransactionOptions
    TransactionOptions (..),
    newTransactionOptions,

    -- ** UnaryFilter
    UnaryFilter (..),
    newUnaryFilter,

    -- ** UnaryFilter_Op
    UnaryFilter_Op (..),

    -- ** Value
    Value (..),
    newValue,

    -- ** Value_NullValue
    Value_NullValue (..),

    -- ** Write
    Write (..),
    newWrite,

    -- ** WriteRequest
    WriteRequest (..),
    newWriteRequest,

    -- ** WriteRequest_Labels
    WriteRequest_Labels (..),
    newWriteRequest_Labels,

    -- ** WriteResponse
    WriteResponse (..),
    newWriteResponse,

    -- ** WriteResult
    WriteResult (..),
    newWriteResult,
  )
where

import Gogol.FireStore.Projects.Databases.CollectionGroups.Fields.Get
import Gogol.FireStore.Projects.Databases.CollectionGroups.Fields.List
import Gogol.FireStore.Projects.Databases.CollectionGroups.Fields.Patch
import Gogol.FireStore.Projects.Databases.CollectionGroups.Indexes.Create
import Gogol.FireStore.Projects.Databases.CollectionGroups.Indexes.Delete
import Gogol.FireStore.Projects.Databases.CollectionGroups.Indexes.Get
import Gogol.FireStore.Projects.Databases.CollectionGroups.Indexes.List
import Gogol.FireStore.Projects.Databases.Documents.BatchGet
import Gogol.FireStore.Projects.Databases.Documents.BatchWrite
import Gogol.FireStore.Projects.Databases.Documents.BeginTransaction
import Gogol.FireStore.Projects.Databases.Documents.Commit
import Gogol.FireStore.Projects.Databases.Documents.CreateDocument
import Gogol.FireStore.Projects.Databases.Documents.Delete
import Gogol.FireStore.Projects.Databases.Documents.Get
import Gogol.FireStore.Projects.Databases.Documents.List
import Gogol.FireStore.Projects.Databases.Documents.ListCollectionIds
import Gogol.FireStore.Projects.Databases.Documents.ListDocuments
import Gogol.FireStore.Projects.Databases.Documents.Listen
import Gogol.FireStore.Projects.Databases.Documents.PartitionQuery
import Gogol.FireStore.Projects.Databases.Documents.Patch
import Gogol.FireStore.Projects.Databases.Documents.Rollback
import Gogol.FireStore.Projects.Databases.Documents.RunQuery
import Gogol.FireStore.Projects.Databases.Documents.Write
import Gogol.FireStore.Projects.Databases.ExportDocuments
import Gogol.FireStore.Projects.Databases.Get
import Gogol.FireStore.Projects.Databases.ImportDocuments
import Gogol.FireStore.Projects.Databases.List
import Gogol.FireStore.Projects.Databases.Operations.Cancel
import Gogol.FireStore.Projects.Databases.Operations.Delete
import Gogol.FireStore.Projects.Databases.Operations.Get
import Gogol.FireStore.Projects.Databases.Operations.List
import Gogol.FireStore.Projects.Databases.Patch
import Gogol.FireStore.Projects.Locations.Get
import Gogol.FireStore.Projects.Locations.List
import Gogol.FireStore.Types
