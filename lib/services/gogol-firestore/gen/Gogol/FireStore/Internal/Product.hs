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
-- Module      : Gogol.FireStore.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.FireStore.Internal.Product
  (

    -- * ArrayValue
    ArrayValue (..),
    newArrayValue,

    -- * BatchGetDocumentsRequest
    BatchGetDocumentsRequest (..),
    newBatchGetDocumentsRequest,

    -- * BatchGetDocumentsResponse
    BatchGetDocumentsResponse (..),
    newBatchGetDocumentsResponse,

    -- * BatchWriteRequest
    BatchWriteRequest (..),
    newBatchWriteRequest,

    -- * BatchWriteRequest_Labels
    BatchWriteRequest_Labels (..),
    newBatchWriteRequest_Labels,

    -- * BatchWriteResponse
    BatchWriteResponse (..),
    newBatchWriteResponse,

    -- * BeginTransactionRequest
    BeginTransactionRequest (..),
    newBeginTransactionRequest,

    -- * BeginTransactionResponse
    BeginTransactionResponse (..),
    newBeginTransactionResponse,

    -- * CollectionSelector
    CollectionSelector (..),
    newCollectionSelector,

    -- * CommitRequest
    CommitRequest (..),
    newCommitRequest,

    -- * CommitResponse
    CommitResponse (..),
    newCommitResponse,

    -- * CompositeFilter
    CompositeFilter (..),
    newCompositeFilter,

    -- * Cursor
    Cursor (..),
    newCursor,

    -- * Document
    Document (..),
    newDocument,

    -- * Document_Fields
    Document_Fields (..),
    newDocument_Fields,

    -- * DocumentChange
    DocumentChange (..),
    newDocumentChange,

    -- * DocumentDelete
    DocumentDelete (..),
    newDocumentDelete,

    -- * DocumentMask
    DocumentMask (..),
    newDocumentMask,

    -- * DocumentRemove
    DocumentRemove (..),
    newDocumentRemove,

    -- * DocumentTransform
    DocumentTransform (..),
    newDocumentTransform,

    -- * DocumentsTarget
    DocumentsTarget (..),
    newDocumentsTarget,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * ExistenceFilter
    ExistenceFilter (..),
    newExistenceFilter,

    -- * FieldFilter
    FieldFilter (..),
    newFieldFilter,

    -- * FieldReference
    FieldReference (..),
    newFieldReference,

    -- * FieldTransform
    FieldTransform (..),
    newFieldTransform,

    -- * Filter
    Filter (..),
    newFilter,

    -- * GoogleFirestoreAdminV1Database
    GoogleFirestoreAdminV1Database (..),
    newGoogleFirestoreAdminV1Database,

    -- * GoogleFirestoreAdminV1ExportDocumentsMetadata
    GoogleFirestoreAdminV1ExportDocumentsMetadata (..),
    newGoogleFirestoreAdminV1ExportDocumentsMetadata,

    -- * GoogleFirestoreAdminV1ExportDocumentsRequest
    GoogleFirestoreAdminV1ExportDocumentsRequest (..),
    newGoogleFirestoreAdminV1ExportDocumentsRequest,

    -- * GoogleFirestoreAdminV1ExportDocumentsResponse
    GoogleFirestoreAdminV1ExportDocumentsResponse (..),
    newGoogleFirestoreAdminV1ExportDocumentsResponse,

    -- * GoogleFirestoreAdminV1Field
    GoogleFirestoreAdminV1Field (..),
    newGoogleFirestoreAdminV1Field,

    -- * GoogleFirestoreAdminV1FieldOperationMetadata
    GoogleFirestoreAdminV1FieldOperationMetadata (..),
    newGoogleFirestoreAdminV1FieldOperationMetadata,

    -- * GoogleFirestoreAdminV1ImportDocumentsMetadata
    GoogleFirestoreAdminV1ImportDocumentsMetadata (..),
    newGoogleFirestoreAdminV1ImportDocumentsMetadata,

    -- * GoogleFirestoreAdminV1ImportDocumentsRequest
    GoogleFirestoreAdminV1ImportDocumentsRequest (..),
    newGoogleFirestoreAdminV1ImportDocumentsRequest,

    -- * GoogleFirestoreAdminV1Index
    GoogleFirestoreAdminV1Index (..),
    newGoogleFirestoreAdminV1Index,

    -- * GoogleFirestoreAdminV1IndexConfig
    GoogleFirestoreAdminV1IndexConfig (..),
    newGoogleFirestoreAdminV1IndexConfig,

    -- * GoogleFirestoreAdminV1IndexConfigDelta
    GoogleFirestoreAdminV1IndexConfigDelta (..),
    newGoogleFirestoreAdminV1IndexConfigDelta,

    -- * GoogleFirestoreAdminV1IndexField
    GoogleFirestoreAdminV1IndexField (..),
    newGoogleFirestoreAdminV1IndexField,

    -- * GoogleFirestoreAdminV1IndexOperationMetadata
    GoogleFirestoreAdminV1IndexOperationMetadata (..),
    newGoogleFirestoreAdminV1IndexOperationMetadata,

    -- * GoogleFirestoreAdminV1ListDatabasesResponse
    GoogleFirestoreAdminV1ListDatabasesResponse (..),
    newGoogleFirestoreAdminV1ListDatabasesResponse,

    -- * GoogleFirestoreAdminV1ListFieldsResponse
    GoogleFirestoreAdminV1ListFieldsResponse (..),
    newGoogleFirestoreAdminV1ListFieldsResponse,

    -- * GoogleFirestoreAdminV1ListIndexesResponse
    GoogleFirestoreAdminV1ListIndexesResponse (..),
    newGoogleFirestoreAdminV1ListIndexesResponse,

    -- * GoogleFirestoreAdminV1LocationMetadata
    GoogleFirestoreAdminV1LocationMetadata (..),
    newGoogleFirestoreAdminV1LocationMetadata,

    -- * GoogleFirestoreAdminV1Progress
    GoogleFirestoreAdminV1Progress (..),
    newGoogleFirestoreAdminV1Progress,

    -- * GoogleFirestoreAdminV1UpdateDatabaseMetadata
    GoogleFirestoreAdminV1UpdateDatabaseMetadata (..),
    newGoogleFirestoreAdminV1UpdateDatabaseMetadata,

    -- * GoogleLongrunningCancelOperationRequest
    GoogleLongrunningCancelOperationRequest (..),
    newGoogleLongrunningCancelOperationRequest,

    -- * GoogleLongrunningListOperationsResponse
    GoogleLongrunningListOperationsResponse (..),
    newGoogleLongrunningListOperationsResponse,

    -- * GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- * GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- * GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- * LatLng
    LatLng (..),
    newLatLng,

    -- * ListCollectionIdsRequest
    ListCollectionIdsRequest (..),
    newListCollectionIdsRequest,

    -- * ListCollectionIdsResponse
    ListCollectionIdsResponse (..),
    newListCollectionIdsResponse,

    -- * ListDocumentsResponse
    ListDocumentsResponse (..),
    newListDocumentsResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListenRequest
    ListenRequest (..),
    newListenRequest,

    -- * ListenRequest_Labels
    ListenRequest_Labels (..),
    newListenRequest_Labels,

    -- * ListenResponse
    ListenResponse (..),
    newListenResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * MapValue
    MapValue (..),
    newMapValue,

    -- * MapValue_Fields
    MapValue_Fields (..),
    newMapValue_Fields,

    -- * Order
    Order (..),
    newOrder,

    -- * PartitionQueryRequest
    PartitionQueryRequest (..),
    newPartitionQueryRequest,

    -- * PartitionQueryResponse
    PartitionQueryResponse (..),
    newPartitionQueryResponse,

    -- * Precondition
    Precondition (..),
    newPrecondition,

    -- * Projection
    Projection (..),
    newProjection,

    -- * QueryTarget
    QueryTarget (..),
    newQueryTarget,

    -- * ReadOnly
    ReadOnly (..),
    newReadOnly,

    -- * ReadWrite
    ReadWrite (..),
    newReadWrite,

    -- * RollbackRequest
    RollbackRequest (..),
    newRollbackRequest,

    -- * RunQueryRequest
    RunQueryRequest (..),
    newRunQueryRequest,

    -- * RunQueryResponse
    RunQueryResponse (..),
    newRunQueryResponse,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StructuredQuery
    StructuredQuery (..),
    newStructuredQuery,

    -- * Target
    Target (..),
    newTarget,

    -- * TargetChange
    TargetChange (..),
    newTargetChange,

    -- * TransactionOptions
    TransactionOptions (..),
    newTransactionOptions,

    -- * UnaryFilter
    UnaryFilter (..),
    newUnaryFilter,

    -- * Value
    Value (..),
    newValue,

    -- * Write
    Write (..),
    newWrite,

    -- * WriteRequest
    WriteRequest (..),
    newWriteRequest,

    -- * WriteRequest_Labels
    WriteRequest_Labels (..),
    newWriteRequest_Labels,

    -- * WriteResponse
    WriteResponse (..),
    newWriteResponse,

    -- * WriteResult
    WriteResult (..),
    newWriteResult,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Internal.Sum

-- | An array value.
--
-- /See:/ 'newArrayValue' smart constructor.
newtype ArrayValue = ArrayValue
    {
      -- | Values in the array.
      values :: (Core.Maybe [Value])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArrayValue' with the minimum fields required to make a request.
newArrayValue 
    ::  ArrayValue
newArrayValue = ArrayValue {values = Core.Nothing}

instance Core.FromJSON ArrayValue where
        parseJSON
          = Core.withObject "ArrayValue"
              (\ o ->
                 ArrayValue Core.<$>
                   (o Core..:? "values" Core..!= Core.mempty))

instance Core.ToJSON ArrayValue where
        toJSON ArrayValue{..}
          = Core.object
              (Core.catMaybes [("values" Core..=) Core.<$> values])


-- | The request for Firestore.BatchGetDocuments.
--
-- /See:/ 'newBatchGetDocumentsRequest' smart constructor.
data BatchGetDocumentsRequest = BatchGetDocumentsRequest
    {
      -- | The names of the documents to retrieve. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. The request will fail if any of the document is not a child resource of the given @database@. Duplicate names will be elided.
      documents :: (Core.Maybe [Core.Text])
      -- | The fields to return. If not set, returns all fields. If a document has a field that is not present in this mask, that field will not be returned in the response.
    , mask :: (Core.Maybe DocumentMask)
      -- | Starts a new transaction and reads the documents. Defaults to a read-only transaction. The new transaction ID will be returned as the first response in the stream.
    , newTransaction' :: (Core.Maybe TransactionOptions)
      -- | Reads documents as they were at the given time. This may not be older than 270 seconds.
    , readTime :: (Core.Maybe Core.DateTime')
      -- | Reads documents in a transaction.
    , transaction :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetDocumentsRequest' with the minimum fields required to make a request.
newBatchGetDocumentsRequest 
    ::  BatchGetDocumentsRequest
newBatchGetDocumentsRequest =
  BatchGetDocumentsRequest
    { documents = Core.Nothing
    , mask = Core.Nothing
    , newTransaction' = Core.Nothing
    , readTime = Core.Nothing
    , transaction = Core.Nothing
    }

instance Core.FromJSON BatchGetDocumentsRequest where
        parseJSON
          = Core.withObject "BatchGetDocumentsRequest"
              (\ o ->
                 BatchGetDocumentsRequest Core.<$>
                   (o Core..:? "documents" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "mask")
                     Core.<*> (o Core..:? "newTransaction")
                     Core.<*> (o Core..:? "readTime")
                     Core.<*> (o Core..:? "transaction"))

instance Core.ToJSON BatchGetDocumentsRequest where
        toJSON BatchGetDocumentsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("documents" Core..=) Core.<$> documents,
                  ("mask" Core..=) Core.<$> mask,
                  ("newTransaction" Core..=) Core.<$> newTransaction',
                  ("readTime" Core..=) Core.<$> readTime,
                  ("transaction" Core..=) Core.<$> transaction])


-- | The streamed response for Firestore.BatchGetDocuments.
--
-- /See:/ 'newBatchGetDocumentsResponse' smart constructor.
data BatchGetDocumentsResponse = BatchGetDocumentsResponse
    {
      -- | A document that was requested.
      found :: (Core.Maybe Document)
      -- | A document name that was requested but does not exist. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@.
    , missing :: (Core.Maybe Core.Text)
      -- | The time at which the document was read. This may be monotically increasing, in this case the previous documents in the result stream are guaranteed not to have changed between their read_time and this one.
    , readTime :: (Core.Maybe Core.DateTime')
      -- | The transaction that was started as part of this request. Will only be set in the first response, and only if BatchGetDocumentsRequest.new_transaction was set in the request.
    , transaction :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetDocumentsResponse' with the minimum fields required to make a request.
newBatchGetDocumentsResponse 
    ::  BatchGetDocumentsResponse
newBatchGetDocumentsResponse =
  BatchGetDocumentsResponse
    { found = Core.Nothing
    , missing = Core.Nothing
    , readTime = Core.Nothing
    , transaction = Core.Nothing
    }

instance Core.FromJSON BatchGetDocumentsResponse
         where
        parseJSON
          = Core.withObject "BatchGetDocumentsResponse"
              (\ o ->
                 BatchGetDocumentsResponse Core.<$>
                   (o Core..:? "found") Core.<*> (o Core..:? "missing")
                     Core.<*> (o Core..:? "readTime")
                     Core.<*> (o Core..:? "transaction"))

instance Core.ToJSON BatchGetDocumentsResponse where
        toJSON BatchGetDocumentsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("found" Core..=) Core.<$> found,
                  ("missing" Core..=) Core.<$> missing,
                  ("readTime" Core..=) Core.<$> readTime,
                  ("transaction" Core..=) Core.<$> transaction])


-- | The request for Firestore.BatchWrite.
--
-- /See:/ 'newBatchWriteRequest' smart constructor.
data BatchWriteRequest = BatchWriteRequest
    {
      -- | Labels associated with this batch write.
      labels :: (Core.Maybe BatchWriteRequest_Labels)
      -- | The writes to apply. Method does not apply writes atomically and does not guarantee ordering. Each write succeeds or fails independently. You cannot write to the same document more than once per request.
    , writes :: (Core.Maybe [Write])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchWriteRequest' with the minimum fields required to make a request.
newBatchWriteRequest 
    ::  BatchWriteRequest
newBatchWriteRequest =
  BatchWriteRequest {labels = Core.Nothing, writes = Core.Nothing}

instance Core.FromJSON BatchWriteRequest where
        parseJSON
          = Core.withObject "BatchWriteRequest"
              (\ o ->
                 BatchWriteRequest Core.<$>
                   (o Core..:? "labels") Core.<*>
                     (o Core..:? "writes" Core..!= Core.mempty))

instance Core.ToJSON BatchWriteRequest where
        toJSON BatchWriteRequest{..}
          = Core.object
              (Core.catMaybes
                 [("labels" Core..=) Core.<$> labels,
                  ("writes" Core..=) Core.<$> writes])


-- | Labels associated with this batch write.
--
-- /See:/ 'newBatchWriteRequest_Labels' smart constructor.
newtype BatchWriteRequest_Labels = BatchWriteRequest_Labels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchWriteRequest_Labels' with the minimum fields required to make a request.
newBatchWriteRequest_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> BatchWriteRequest_Labels
newBatchWriteRequest_Labels addtional =
  BatchWriteRequest_Labels {addtional = addtional}

instance Core.FromJSON BatchWriteRequest_Labels where
        parseJSON
          = Core.withObject "BatchWriteRequest_Labels"
              (\ o ->
                 BatchWriteRequest_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON BatchWriteRequest_Labels where
        toJSON BatchWriteRequest_Labels{..}
          = Core.toJSON addtional


-- | The response from Firestore.BatchWrite.
--
-- /See:/ 'newBatchWriteResponse' smart constructor.
data BatchWriteResponse = BatchWriteResponse
    {
      -- | The status of applying the writes. This i-th write status corresponds to the i-th write in the request.
      status :: (Core.Maybe [Status])
      -- | The result of applying the writes. This i-th write result corresponds to the i-th write in the request.
    , writeResults :: (Core.Maybe [WriteResult])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchWriteResponse' with the minimum fields required to make a request.
newBatchWriteResponse 
    ::  BatchWriteResponse
newBatchWriteResponse =
  BatchWriteResponse {status = Core.Nothing, writeResults = Core.Nothing}

instance Core.FromJSON BatchWriteResponse where
        parseJSON
          = Core.withObject "BatchWriteResponse"
              (\ o ->
                 BatchWriteResponse Core.<$>
                   (o Core..:? "status" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "writeResults" Core..!= Core.mempty))

instance Core.ToJSON BatchWriteResponse where
        toJSON BatchWriteResponse{..}
          = Core.object
              (Core.catMaybes
                 [("status" Core..=) Core.<$> status,
                  ("writeResults" Core..=) Core.<$> writeResults])


-- | The request for Firestore.BeginTransaction.
--
-- /See:/ 'newBeginTransactionRequest' smart constructor.
newtype BeginTransactionRequest = BeginTransactionRequest
    {
      -- | The options for the transaction. Defaults to a read-write transaction.
      options :: (Core.Maybe TransactionOptions)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BeginTransactionRequest' with the minimum fields required to make a request.
newBeginTransactionRequest 
    ::  BeginTransactionRequest
newBeginTransactionRequest = BeginTransactionRequest {options = Core.Nothing}

instance Core.FromJSON BeginTransactionRequest where
        parseJSON
          = Core.withObject "BeginTransactionRequest"
              (\ o ->
                 BeginTransactionRequest Core.<$>
                   (o Core..:? "options"))

instance Core.ToJSON BeginTransactionRequest where
        toJSON BeginTransactionRequest{..}
          = Core.object
              (Core.catMaybes
                 [("options" Core..=) Core.<$> options])


-- | The response for Firestore.BeginTransaction.
--
-- /See:/ 'newBeginTransactionResponse' smart constructor.
newtype BeginTransactionResponse = BeginTransactionResponse
    {
      -- | The transaction that was started.
      transaction :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BeginTransactionResponse' with the minimum fields required to make a request.
newBeginTransactionResponse 
    ::  BeginTransactionResponse
newBeginTransactionResponse =
  BeginTransactionResponse {transaction = Core.Nothing}

instance Core.FromJSON BeginTransactionResponse where
        parseJSON
          = Core.withObject "BeginTransactionResponse"
              (\ o ->
                 BeginTransactionResponse Core.<$>
                   (o Core..:? "transaction"))

instance Core.ToJSON BeginTransactionResponse where
        toJSON BeginTransactionResponse{..}
          = Core.object
              (Core.catMaybes
                 [("transaction" Core..=) Core.<$> transaction])


-- | A selection of a collection, such as @messages as m1@.
--
-- /See:/ 'newCollectionSelector' smart constructor.
data CollectionSelector = CollectionSelector
    {
      -- | When false, selects only collections that are immediate children of the @parent@ specified in the containing @RunQueryRequest@. When true, selects all descendant collections.
      allDescendants :: (Core.Maybe Core.Bool)
      -- | The collection ID. When set, selects only collections with this ID.
    , collectionId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectionSelector' with the minimum fields required to make a request.
newCollectionSelector 
    ::  CollectionSelector
newCollectionSelector =
  CollectionSelector
    {allDescendants = Core.Nothing, collectionId = Core.Nothing}

instance Core.FromJSON CollectionSelector where
        parseJSON
          = Core.withObject "CollectionSelector"
              (\ o ->
                 CollectionSelector Core.<$>
                   (o Core..:? "allDescendants") Core.<*>
                     (o Core..:? "collectionId"))

instance Core.ToJSON CollectionSelector where
        toJSON CollectionSelector{..}
          = Core.object
              (Core.catMaybes
                 [("allDescendants" Core..=) Core.<$> allDescendants,
                  ("collectionId" Core..=) Core.<$> collectionId])


-- | The request for Firestore.Commit.
--
-- /See:/ 'newCommitRequest' smart constructor.
data CommitRequest = CommitRequest
    {
      -- | If set, applies all writes in this transaction, and commits it.
      transaction :: (Core.Maybe Core.Base64)
      -- | The writes to apply. Always executed atomically and in order.
    , writes :: (Core.Maybe [Write])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommitRequest' with the minimum fields required to make a request.
newCommitRequest 
    ::  CommitRequest
newCommitRequest =
  CommitRequest {transaction = Core.Nothing, writes = Core.Nothing}

instance Core.FromJSON CommitRequest where
        parseJSON
          = Core.withObject "CommitRequest"
              (\ o ->
                 CommitRequest Core.<$>
                   (o Core..:? "transaction") Core.<*>
                     (o Core..:? "writes" Core..!= Core.mempty))

instance Core.ToJSON CommitRequest where
        toJSON CommitRequest{..}
          = Core.object
              (Core.catMaybes
                 [("transaction" Core..=) Core.<$> transaction,
                  ("writes" Core..=) Core.<$> writes])


-- | The response for Firestore.Commit.
--
-- /See:/ 'newCommitResponse' smart constructor.
data CommitResponse = CommitResponse
    {
      -- | The time at which the commit occurred. Any read with an equal or greater @read_time@ is guaranteed to see the effects of the commit.
      commitTime :: (Core.Maybe Core.DateTime')
      -- | The result of applying the writes. This i-th write result corresponds to the i-th write in the request.
    , writeResults :: (Core.Maybe [WriteResult])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommitResponse' with the minimum fields required to make a request.
newCommitResponse 
    ::  CommitResponse
newCommitResponse =
  CommitResponse {commitTime = Core.Nothing, writeResults = Core.Nothing}

instance Core.FromJSON CommitResponse where
        parseJSON
          = Core.withObject "CommitResponse"
              (\ o ->
                 CommitResponse Core.<$>
                   (o Core..:? "commitTime") Core.<*>
                     (o Core..:? "writeResults" Core..!= Core.mempty))

instance Core.ToJSON CommitResponse where
        toJSON CommitResponse{..}
          = Core.object
              (Core.catMaybes
                 [("commitTime" Core..=) Core.<$> commitTime,
                  ("writeResults" Core..=) Core.<$> writeResults])


-- | A filter that merges multiple other filters using the given operator.
--
-- /See:/ 'newCompositeFilter' smart constructor.
data CompositeFilter = CompositeFilter
    {
      -- | The list of filters to combine. Must contain at least one filter.
      filters :: (Core.Maybe [Filter])
      -- | The operator for combining multiple filters.
    , op :: (Core.Maybe CompositeFilter_Op)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompositeFilter' with the minimum fields required to make a request.
newCompositeFilter 
    ::  CompositeFilter
newCompositeFilter = CompositeFilter {filters = Core.Nothing, op = Core.Nothing}

instance Core.FromJSON CompositeFilter where
        parseJSON
          = Core.withObject "CompositeFilter"
              (\ o ->
                 CompositeFilter Core.<$>
                   (o Core..:? "filters" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "op"))

instance Core.ToJSON CompositeFilter where
        toJSON CompositeFilter{..}
          = Core.object
              (Core.catMaybes
                 [("filters" Core..=) Core.<$> filters,
                  ("op" Core..=) Core.<$> op])


-- | A position in a query result set.
--
-- /See:/ 'newCursor' smart constructor.
data Cursor = Cursor
    {
      -- | If the position is just before or just after the given values, relative to the sort order defined by the query.
      before :: (Core.Maybe Core.Bool)
      -- | The values that represent a position, in the order they appear in the order by clause of a query. Can contain fewer values than specified in the order by clause.
    , values :: (Core.Maybe [Value])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cursor' with the minimum fields required to make a request.
newCursor 
    ::  Cursor
newCursor = Cursor {before = Core.Nothing, values = Core.Nothing}

instance Core.FromJSON Cursor where
        parseJSON
          = Core.withObject "Cursor"
              (\ o ->
                 Cursor Core.<$>
                   (o Core..:? "before") Core.<*>
                     (o Core..:? "values" Core..!= Core.mempty))

instance Core.ToJSON Cursor where
        toJSON Cursor{..}
          = Core.object
              (Core.catMaybes
                 [("before" Core..=) Core.<$> before,
                  ("values" Core..=) Core.<$> values])


-- | A Firestore document. Must not exceed 1 MiB - 4 bytes.
--
-- /See:/ 'newDocument' smart constructor.
data Document = Document
    {
      -- | Output only. The time at which the document was created. This value increases monotonically when a document is deleted then recreated. It can also be compared to values from other documents and the @read_time@ of a query.
      createTime :: (Core.Maybe Core.DateTime')
      -- | The document\'s fields. The map keys represent field names. A simple field name contains only characters @a@ to @z@, @A@ to @Z@, @0@ to @9@, or @_@, and must not start with @0@ to @9@. For example, @foo_bar_17@. Field names matching the regular expression @__.*__@ are reserved. Reserved field names are forbidden except in certain documented contexts. The map keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be empty. Field paths may be used in other contexts to refer to structured fields defined here. For @map_value@, the field path is represented by the simple or quoted field names of the containing fields, delimited by @.@. For example, the structured field @\"foo\" : { map_value: { \"x&y\" : { string_value: \"hello\" }}}@ would be represented by the field path @foo.x&y@. Within a field path, a quoted field name starts and ends with @\`@ and may contain any character. Some characters, including @\`@, must be escaped using a @\\@. For example, @\`x&y\`@ represents @x&y@ and @\`bak\\\`tik\`@
      -- represents @bak\`tik@.
    , fields :: (Core.Maybe Document_Fields)
      -- | The resource name of the document, for example @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The time at which the document was last changed. This value is initially set to the @create_time@ then increases monotonically with each change to the document. It can also be compared to values from other documents and the @read_time@ of a query.
    , updateTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document' with the minimum fields required to make a request.
newDocument 
    ::  Document
newDocument =
  Document
    { createTime = Core.Nothing
    , fields = Core.Nothing
    , name = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON Document where
        parseJSON
          = Core.withObject "Document"
              (\ o ->
                 Document Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "fields")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON Document where
        toJSON Document{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("fields" Core..=) Core.<$> fields,
                  ("name" Core..=) Core.<$> name,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | The document\'s fields. The map keys represent field names. A simple field name contains only characters @a@ to @z@, @A@ to @Z@, @0@ to @9@, or @_@, and must not start with @0@ to @9@. For example, @foo_bar_17@. Field names matching the regular expression @__.*__@ are reserved. Reserved field names are forbidden except in certain documented contexts. The map keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be empty. Field paths may be used in other contexts to refer to structured fields defined here. For @map_value@, the field path is represented by the simple or quoted field names of the containing fields, delimited by @.@. For example, the structured field @\"foo\" : { map_value: { \"x&y\" : { string_value: \"hello\" }}}@ would be represented by the field path @foo.x&y@. Within a field path, a quoted field name starts and ends with @\`@ and may contain any character. Some characters, including @\`@, must be escaped using a @\\@. For example, @\`x&y\`@ represents @x&y@ and @\`bak\\\`tik\`@
-- represents @bak\`tik@.
--
-- /See:/ 'newDocument_Fields' smart constructor.
newtype Document_Fields = Document_Fields
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document_Fields' with the minimum fields required to make a request.
newDocument_Fields 
    ::  Core.HashMap Core.Text Value
       -- ^  See 'addtional'.
    -> Document_Fields
newDocument_Fields addtional = Document_Fields {addtional = addtional}

instance Core.FromJSON Document_Fields where
        parseJSON
          = Core.withObject "Document_Fields"
              (\ o ->
                 Document_Fields Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Document_Fields where
        toJSON Document_Fields{..} = Core.toJSON addtional


-- | A Document has changed. May be the result of multiple writes, including deletes, that ultimately resulted in a new value for the Document. Multiple DocumentChange messages may be returned for the same logical change, if multiple targets are affected.
--
-- /See:/ 'newDocumentChange' smart constructor.
data DocumentChange = DocumentChange
    {
      -- | The new state of the Document. If @mask@ is set, contains only fields that were updated or added.
      document :: (Core.Maybe Document)
      -- | A set of target IDs for targets that no longer match this document.
    , removedTargetIds :: (Core.Maybe [Core.Int32])
      -- | A set of target IDs of targets that match this document.
    , targetIds :: (Core.Maybe [Core.Int32])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentChange' with the minimum fields required to make a request.
newDocumentChange 
    ::  DocumentChange
newDocumentChange =
  DocumentChange
    { document = Core.Nothing
    , removedTargetIds = Core.Nothing
    , targetIds = Core.Nothing
    }

instance Core.FromJSON DocumentChange where
        parseJSON
          = Core.withObject "DocumentChange"
              (\ o ->
                 DocumentChange Core.<$>
                   (o Core..:? "document") Core.<*>
                     (o Core..:? "removedTargetIds" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "targetIds" Core..!= Core.mempty))

instance Core.ToJSON DocumentChange where
        toJSON DocumentChange{..}
          = Core.object
              (Core.catMaybes
                 [("document" Core..=) Core.<$> document,
                  ("removedTargetIds" Core..=) Core.<$>
                    removedTargetIds,
                  ("targetIds" Core..=) Core.<$> targetIds])


-- | A Document has been deleted. May be the result of multiple writes, including updates, the last of which deleted the Document. Multiple DocumentDelete messages may be returned for the same logical delete, if multiple targets are affected.
--
-- /See:/ 'newDocumentDelete' smart constructor.
data DocumentDelete = DocumentDelete
    {
      -- | The resource name of the Document that was deleted.
      document :: (Core.Maybe Core.Text)
      -- | The read timestamp at which the delete was observed. Greater or equal to the @commit_time@ of the delete.
    , readTime :: (Core.Maybe Core.DateTime')
      -- | A set of target IDs for targets that previously matched this entity.
    , removedTargetIds :: (Core.Maybe [Core.Int32])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentDelete' with the minimum fields required to make a request.
newDocumentDelete 
    ::  DocumentDelete
newDocumentDelete =
  DocumentDelete
    { document = Core.Nothing
    , readTime = Core.Nothing
    , removedTargetIds = Core.Nothing
    }

instance Core.FromJSON DocumentDelete where
        parseJSON
          = Core.withObject "DocumentDelete"
              (\ o ->
                 DocumentDelete Core.<$>
                   (o Core..:? "document") Core.<*>
                     (o Core..:? "readTime")
                     Core.<*>
                     (o Core..:? "removedTargetIds" Core..!= Core.mempty))

instance Core.ToJSON DocumentDelete where
        toJSON DocumentDelete{..}
          = Core.object
              (Core.catMaybes
                 [("document" Core..=) Core.<$> document,
                  ("readTime" Core..=) Core.<$> readTime,
                  ("removedTargetIds" Core..=) Core.<$>
                    removedTargetIds])


-- | A set of field paths on a document. Used to restrict a get or update operation on a document to a subset of its fields. This is different from standard field masks, as this is always scoped to a Document, and takes in account the dynamic nature of Value.
--
-- /See:/ 'newDocumentMask' smart constructor.
newtype DocumentMask = DocumentMask
    {
      -- | The list of field paths in the mask. See Document.fields for a field path syntax reference.
      fieldPaths :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentMask' with the minimum fields required to make a request.
newDocumentMask 
    ::  DocumentMask
newDocumentMask = DocumentMask {fieldPaths = Core.Nothing}

instance Core.FromJSON DocumentMask where
        parseJSON
          = Core.withObject "DocumentMask"
              (\ o ->
                 DocumentMask Core.<$>
                   (o Core..:? "fieldPaths" Core..!= Core.mempty))

instance Core.ToJSON DocumentMask where
        toJSON DocumentMask{..}
          = Core.object
              (Core.catMaybes
                 [("fieldPaths" Core..=) Core.<$> fieldPaths])


-- | A Document has been removed from the view of the targets. Sent if the document is no longer relevant to a target and is out of view. Can be sent instead of a DocumentDelete or a DocumentChange if the server can not send the new value of the document. Multiple DocumentRemove messages may be returned for the same logical write or delete, if multiple targets are affected.
--
-- /See:/ 'newDocumentRemove' smart constructor.
data DocumentRemove = DocumentRemove
    {
      -- | The resource name of the Document that has gone out of view.
      document :: (Core.Maybe Core.Text)
      -- | The read timestamp at which the remove was observed. Greater or equal to the @commit_time@ of the change\/delete\/remove.
    , readTime :: (Core.Maybe Core.DateTime')
      -- | A set of target IDs for targets that previously matched this document.
    , removedTargetIds :: (Core.Maybe [Core.Int32])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentRemove' with the minimum fields required to make a request.
newDocumentRemove 
    ::  DocumentRemove
newDocumentRemove =
  DocumentRemove
    { document = Core.Nothing
    , readTime = Core.Nothing
    , removedTargetIds = Core.Nothing
    }

instance Core.FromJSON DocumentRemove where
        parseJSON
          = Core.withObject "DocumentRemove"
              (\ o ->
                 DocumentRemove Core.<$>
                   (o Core..:? "document") Core.<*>
                     (o Core..:? "readTime")
                     Core.<*>
                     (o Core..:? "removedTargetIds" Core..!= Core.mempty))

instance Core.ToJSON DocumentRemove where
        toJSON DocumentRemove{..}
          = Core.object
              (Core.catMaybes
                 [("document" Core..=) Core.<$> document,
                  ("readTime" Core..=) Core.<$> readTime,
                  ("removedTargetIds" Core..=) Core.<$>
                    removedTargetIds])


-- | A transformation of a document.
--
-- /See:/ 'newDocumentTransform' smart constructor.
data DocumentTransform = DocumentTransform
    {
      -- | The name of the document to transform.
      document :: (Core.Maybe Core.Text)
      -- | The list of transformations to apply to the fields of the document, in order. This must not be empty.
    , fieldTransforms :: (Core.Maybe [FieldTransform])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTransform' with the minimum fields required to make a request.
newDocumentTransform 
    ::  DocumentTransform
newDocumentTransform =
  DocumentTransform {document = Core.Nothing, fieldTransforms = Core.Nothing}

instance Core.FromJSON DocumentTransform where
        parseJSON
          = Core.withObject "DocumentTransform"
              (\ o ->
                 DocumentTransform Core.<$>
                   (o Core..:? "document") Core.<*>
                     (o Core..:? "fieldTransforms" Core..!= Core.mempty))

instance Core.ToJSON DocumentTransform where
        toJSON DocumentTransform{..}
          = Core.object
              (Core.catMaybes
                 [("document" Core..=) Core.<$> document,
                  ("fieldTransforms" Core..=) Core.<$>
                    fieldTransforms])


-- | A target specified by a set of documents names.
--
-- /See:/ 'newDocumentsTarget' smart constructor.
newtype DocumentsTarget = DocumentsTarget
    {
      -- | The names of the documents to retrieve. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. The request will fail if any of the document is not a child resource of the given @database@. Duplicate names will be elided.
      documents :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentsTarget' with the minimum fields required to make a request.
newDocumentsTarget 
    ::  DocumentsTarget
newDocumentsTarget = DocumentsTarget {documents = Core.Nothing}

instance Core.FromJSON DocumentsTarget where
        parseJSON
          = Core.withObject "DocumentsTarget"
              (\ o ->
                 DocumentsTarget Core.<$>
                   (o Core..:? "documents" Core..!= Core.mempty))

instance Core.ToJSON DocumentsTarget where
        toJSON DocumentsTarget{..}
          = Core.object
              (Core.catMaybes
                 [("documents" Core..=) Core.<$> documents])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | A digest of all the documents that match a given target.
--
-- /See:/ 'newExistenceFilter' smart constructor.
data ExistenceFilter = ExistenceFilter
    {
      -- | The total count of documents that match target_id. If different from the count of documents in the client that match, the client must manually determine which documents no longer match the target.
      count :: (Core.Maybe Core.Int32)
      -- | The target ID to which this filter applies.
    , targetId :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExistenceFilter' with the minimum fields required to make a request.
newExistenceFilter 
    ::  ExistenceFilter
newExistenceFilter =
  ExistenceFilter {count = Core.Nothing, targetId = Core.Nothing}

instance Core.FromJSON ExistenceFilter where
        parseJSON
          = Core.withObject "ExistenceFilter"
              (\ o ->
                 ExistenceFilter Core.<$>
                   (o Core..:? "count") Core.<*>
                     (o Core..:? "targetId"))

instance Core.ToJSON ExistenceFilter where
        toJSON ExistenceFilter{..}
          = Core.object
              (Core.catMaybes
                 [("count" Core..=) Core.<$> count,
                  ("targetId" Core..=) Core.<$> targetId])


-- | A filter on a specific field.
--
-- /See:/ 'newFieldFilter' smart constructor.
data FieldFilter = FieldFilter
    {
      -- | The field to filter by.
      field :: (Core.Maybe FieldReference)
      -- | The operator to filter by.
    , op :: (Core.Maybe FieldFilter_Op)
      -- | The value to compare to.
    , value :: (Core.Maybe Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldFilter' with the minimum fields required to make a request.
newFieldFilter 
    ::  FieldFilter
newFieldFilter =
  FieldFilter {field = Core.Nothing, op = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON FieldFilter where
        parseJSON
          = Core.withObject "FieldFilter"
              (\ o ->
                 FieldFilter Core.<$>
                   (o Core..:? "field") Core.<*> (o Core..:? "op")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON FieldFilter where
        toJSON FieldFilter{..}
          = Core.object
              (Core.catMaybes
                 [("field" Core..=) Core.<$> field,
                  ("op" Core..=) Core.<$> op,
                  ("value" Core..=) Core.<$> value])


-- | A reference to a field, such as @max(messages.time) as max_time@.
--
-- /See:/ 'newFieldReference' smart constructor.
newtype FieldReference = FieldReference
    {
      -- | 
      fieldPath :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldReference' with the minimum fields required to make a request.
newFieldReference 
    ::  FieldReference
newFieldReference = FieldReference {fieldPath = Core.Nothing}

instance Core.FromJSON FieldReference where
        parseJSON
          = Core.withObject "FieldReference"
              (\ o ->
                 FieldReference Core.<$> (o Core..:? "fieldPath"))

instance Core.ToJSON FieldReference where
        toJSON FieldReference{..}
          = Core.object
              (Core.catMaybes
                 [("fieldPath" Core..=) Core.<$> fieldPath])


-- | A transformation of a field of the document.
--
-- /See:/ 'newFieldTransform' smart constructor.
data FieldTransform = FieldTransform
    {
      -- | Append the given elements in order if they are not already present in the current field value. If the field is not an array, or if the field does not yet exist, it is first set to the empty array. Equivalent numbers of different types (e.g. 3L and 3.0) are considered equal when checking if a value is missing. NaN is equal to NaN, and Null is equal to Null. If the input contains multiple equivalent values, only the first will be considered. The corresponding transform_result will be the null value.
      appendMissingElements :: (Core.Maybe ArrayValue)
      -- | The path of the field. See Document.fields for the field path syntax reference.
    , fieldPath :: (Core.Maybe Core.Text)
      -- | Adds the given value to the field\'s current value. This must be an integer or a double value. If the field is not an integer or double, or if the field does not yet exist, the transformation will set the field to the given value. If either of the given value or the current field value are doubles, both values will be interpreted as doubles. Double arithmetic and representation of double values follow IEEE 754 semantics. If there is positive\/negative integer overflow, the field is resolved to the largest magnitude positive\/negative integer.
    , increment :: (Core.Maybe Value)
      -- | Sets the field to the maximum of its current value and the given value. This must be an integer or a double value. If the field is not an integer or double, or if the field does not yet exist, the transformation will set the field to the given value. If a maximum operation is applied where the field and the input value are of mixed types (that is - one is an integer and one is a double) the field takes on the type of the larger operand. If the operands are equivalent (e.g. 3 and 3.0), the field does not change. 0, 0.0, and -0.0 are all zero. The maximum of a zero stored value and zero input value is always the stored value. The maximum of any numeric value x and NaN is NaN.
    , maximum :: (Core.Maybe Value)
      -- | Sets the field to the minimum of its current value and the given value. This must be an integer or a double value. If the field is not an integer or double, or if the field does not yet exist, the transformation will set the field to the input value. If a minimum operation is applied where the field and the input value are of mixed types (that is - one is an integer and one is a double) the field takes on the type of the smaller operand. If the operands are equivalent (e.g. 3 and 3.0), the field does not change. 0, 0.0, and -0.0 are all zero. The minimum of a zero stored value and zero input value is always the stored value. The minimum of any numeric value x and NaN is NaN.
    , minimum :: (Core.Maybe Value)
      -- | Remove all of the given elements from the array in the field. If the field is not an array, or if the field does not yet exist, it is set to the empty array. Equivalent numbers of the different types (e.g. 3L and 3.0) are considered equal when deciding whether an element should be removed. NaN is equal to NaN, and Null is equal to Null. This will remove all equivalent values if there are duplicates. The corresponding transform_result will be the null value.
    , removeAllFromArray :: (Core.Maybe ArrayValue)
      -- | Sets the field to the given server value.
    , setToServerValue :: (Core.Maybe FieldTransform_SetToServerValue)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldTransform' with the minimum fields required to make a request.
newFieldTransform 
    ::  FieldTransform
newFieldTransform =
  FieldTransform
    { appendMissingElements = Core.Nothing
    , fieldPath = Core.Nothing
    , increment = Core.Nothing
    , maximum = Core.Nothing
    , minimum = Core.Nothing
    , removeAllFromArray = Core.Nothing
    , setToServerValue = Core.Nothing
    }

instance Core.FromJSON FieldTransform where
        parseJSON
          = Core.withObject "FieldTransform"
              (\ o ->
                 FieldTransform Core.<$>
                   (o Core..:? "appendMissingElements") Core.<*>
                     (o Core..:? "fieldPath")
                     Core.<*> (o Core..:? "increment")
                     Core.<*> (o Core..:? "maximum")
                     Core.<*> (o Core..:? "minimum")
                     Core.<*> (o Core..:? "removeAllFromArray")
                     Core.<*> (o Core..:? "setToServerValue"))

instance Core.ToJSON FieldTransform where
        toJSON FieldTransform{..}
          = Core.object
              (Core.catMaybes
                 [("appendMissingElements" Core..=) Core.<$>
                    appendMissingElements,
                  ("fieldPath" Core..=) Core.<$> fieldPath,
                  ("increment" Core..=) Core.<$> increment,
                  ("maximum" Core..=) Core.<$> maximum,
                  ("minimum" Core..=) Core.<$> minimum,
                  ("removeAllFromArray" Core..=) Core.<$>
                    removeAllFromArray,
                  ("setToServerValue" Core..=) Core.<$>
                    setToServerValue])


-- | A filter.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter
    {
      -- | A composite filter.
      compositeFilter :: (Core.Maybe CompositeFilter)
      -- | A filter on a document field.
    , fieldFilter :: (Core.Maybe FieldFilter)
      -- | A filter that takes exactly one argument.
    , unaryFilter :: (Core.Maybe UnaryFilter)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
newFilter 
    ::  Filter
newFilter =
  Filter
    { compositeFilter = Core.Nothing
    , fieldFilter = Core.Nothing
    , unaryFilter = Core.Nothing
    }

instance Core.FromJSON Filter where
        parseJSON
          = Core.withObject "Filter"
              (\ o ->
                 Filter Core.<$>
                   (o Core..:? "compositeFilter") Core.<*>
                     (o Core..:? "fieldFilter")
                     Core.<*> (o Core..:? "unaryFilter"))

instance Core.ToJSON Filter where
        toJSON Filter{..}
          = Core.object
              (Core.catMaybes
                 [("compositeFilter" Core..=) Core.<$>
                    compositeFilter,
                  ("fieldFilter" Core..=) Core.<$> fieldFilter,
                  ("unaryFilter" Core..=) Core.<$> unaryFilter])


-- | A Cloud Firestore Database. Currently only one database is allowed per cloud project; this database must have a @database_id@ of \'(default)\'.
--
-- /See:/ 'newGoogleFirestoreAdminV1Database' smart constructor.
data GoogleFirestoreAdminV1Database = GoogleFirestoreAdminV1Database
    {
      -- | The App Engine integration mode to use for this database.
      appEngineIntegrationMode :: (Core.Maybe
   GoogleFirestoreAdminV1Database_AppEngineIntegrationMode)
      -- | The concurrency control mode to use for this database.
    , concurrencyMode :: (Core.Maybe GoogleFirestoreAdminV1Database_ConcurrencyMode)
      -- | This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
    , etag :: (Core.Maybe Core.Text)
      -- | Output only. The key/prefix for this database. This key/prefix is used, in combination with the project id (\"~\") to construct the application id that is returned from the Cloud Datastore APIs in Google App Engine first generation runtimes. This value may be empty in which case the appid to use for URL-encoded keys is the project_id (eg: foo instead of v~foo).
    , keyPrefix :: (Core.Maybe Core.Text)
      -- | The location of the database. Available databases are listed at https:\/\/cloud.google.com\/firestore\/docs\/locations.
    , locationId :: (Core.Maybe Core.Text)
      -- | The resource name of the Database. Format: @projects\/{project}\/databases\/{database}@
    , name :: (Core.Maybe Core.Text)
      -- | The type of the database. See https:\/\/cloud.google.com\/datastore\/docs\/firestore-or-datastore for information about how to choose.
    , type' :: (Core.Maybe GoogleFirestoreAdminV1Database_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1Database' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1Database 
    ::  GoogleFirestoreAdminV1Database
newGoogleFirestoreAdminV1Database =
  GoogleFirestoreAdminV1Database
    { appEngineIntegrationMode = Core.Nothing
    , concurrencyMode = Core.Nothing
    , etag = Core.Nothing
    , keyPrefix = Core.Nothing
    , locationId = Core.Nothing
    , name = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON GoogleFirestoreAdminV1Database
         where
        parseJSON
          = Core.withObject "GoogleFirestoreAdminV1Database"
              (\ o ->
                 GoogleFirestoreAdminV1Database Core.<$>
                   (o Core..:? "appEngineIntegrationMode") Core.<*>
                     (o Core..:? "concurrencyMode")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "keyPrefix")
                     Core.<*> (o Core..:? "locationId")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON GoogleFirestoreAdminV1Database
         where
        toJSON GoogleFirestoreAdminV1Database{..}
          = Core.object
              (Core.catMaybes
                 [("appEngineIntegrationMode" Core..=) Core.<$>
                    appEngineIntegrationMode,
                  ("concurrencyMode" Core..=) Core.<$> concurrencyMode,
                  ("etag" Core..=) Core.<$> etag,
                  ("keyPrefix" Core..=) Core.<$> keyPrefix,
                  ("locationId" Core..=) Core.<$> locationId,
                  ("name" Core..=) Core.<$> name,
                  ("type" Core..=) Core.<$> type'])


-- | Metadata for google.longrunning.Operation results from FirestoreAdmin.ExportDocuments.
--
-- /See:/ 'newGoogleFirestoreAdminV1ExportDocumentsMetadata' smart constructor.
data GoogleFirestoreAdminV1ExportDocumentsMetadata = GoogleFirestoreAdminV1ExportDocumentsMetadata
    {
      -- | Which collection ids are being exported.
      collectionIds :: (Core.Maybe [Core.Text])
      -- | The time this operation completed. Will be unset if operation still in progress.
    , endTime :: (Core.Maybe Core.DateTime')
      -- | The state of the export operation.
    , operationState :: (Core.Maybe
   GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState)
      -- | Where the entities are being exported to.
    , outputUriPrefix :: (Core.Maybe Core.Text)
      -- | The progress, in bytes, of this operation.
    , progressBytes :: (Core.Maybe GoogleFirestoreAdminV1Progress)
      -- | The progress, in documents, of this operation.
    , progressDocuments :: (Core.Maybe GoogleFirestoreAdminV1Progress)
      -- | The time this operation started.
    , startTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ExportDocumentsMetadata' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1ExportDocumentsMetadata 
    ::  GoogleFirestoreAdminV1ExportDocumentsMetadata
newGoogleFirestoreAdminV1ExportDocumentsMetadata =
  GoogleFirestoreAdminV1ExportDocumentsMetadata
    { collectionIds = Core.Nothing
    , endTime = Core.Nothing
    , operationState = Core.Nothing
    , outputUriPrefix = Core.Nothing
    , progressBytes = Core.Nothing
    , progressDocuments = Core.Nothing
    , startTime = Core.Nothing
    }

instance Core.FromJSON
           GoogleFirestoreAdminV1ExportDocumentsMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1ExportDocumentsMetadata"
              (\ o ->
                 GoogleFirestoreAdminV1ExportDocumentsMetadata
                   Core.<$>
                   (o Core..:? "collectionIds" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "operationState")
                     Core.<*> (o Core..:? "outputUriPrefix")
                     Core.<*> (o Core..:? "progressBytes")
                     Core.<*> (o Core..:? "progressDocuments")
                     Core.<*> (o Core..:? "startTime"))

instance Core.ToJSON
           GoogleFirestoreAdminV1ExportDocumentsMetadata
         where
        toJSON
          GoogleFirestoreAdminV1ExportDocumentsMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("collectionIds" Core..=) Core.<$> collectionIds,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("operationState" Core..=) Core.<$> operationState,
                  ("outputUriPrefix" Core..=) Core.<$> outputUriPrefix,
                  ("progressBytes" Core..=) Core.<$> progressBytes,
                  ("progressDocuments" Core..=) Core.<$>
                    progressDocuments,
                  ("startTime" Core..=) Core.<$> startTime])


-- | The request for FirestoreAdmin.ExportDocuments.
--
-- /See:/ 'newGoogleFirestoreAdminV1ExportDocumentsRequest' smart constructor.
data GoogleFirestoreAdminV1ExportDocumentsRequest = GoogleFirestoreAdminV1ExportDocumentsRequest
    {
      -- | Which collection ids to export. Unspecified means all collections.
      collectionIds :: (Core.Maybe [Core.Text])
      -- | The output URI. Currently only supports Google Cloud Storage URIs of the form: @gs:\/\/BUCKET_NAME[\/NAMESPACE_PATH]@, where @BUCKET_NAME@ is the name of the Google Cloud Storage bucket and @NAMESPACE_PATH@ is an optional Google Cloud Storage namespace path. When choosing a name, be sure to consider Google Cloud Storage naming guidelines: https:\/\/cloud.google.com\/storage\/docs\/naming. If the URI is a bucket (without a namespace path), a prefix will be generated based on the start time.
    , outputUriPrefix :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ExportDocumentsRequest' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1ExportDocumentsRequest 
    ::  GoogleFirestoreAdminV1ExportDocumentsRequest
newGoogleFirestoreAdminV1ExportDocumentsRequest =
  GoogleFirestoreAdminV1ExportDocumentsRequest
    {collectionIds = Core.Nothing, outputUriPrefix = Core.Nothing}

instance Core.FromJSON
           GoogleFirestoreAdminV1ExportDocumentsRequest
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1ExportDocumentsRequest"
              (\ o ->
                 GoogleFirestoreAdminV1ExportDocumentsRequest Core.<$>
                   (o Core..:? "collectionIds" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "outputUriPrefix"))

instance Core.ToJSON
           GoogleFirestoreAdminV1ExportDocumentsRequest
         where
        toJSON
          GoogleFirestoreAdminV1ExportDocumentsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("collectionIds" Core..=) Core.<$> collectionIds,
                  ("outputUriPrefix" Core..=) Core.<$>
                    outputUriPrefix])


-- | Returned in the google.longrunning.Operation response field.
--
-- /See:/ 'newGoogleFirestoreAdminV1ExportDocumentsResponse' smart constructor.
newtype GoogleFirestoreAdminV1ExportDocumentsResponse = GoogleFirestoreAdminV1ExportDocumentsResponse
    {
      -- | Location of the output files. This can be used to begin an import into Cloud Firestore (this project or another project) after the operation completes successfully.
      outputUriPrefix :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ExportDocumentsResponse' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1ExportDocumentsResponse 
    ::  GoogleFirestoreAdminV1ExportDocumentsResponse
newGoogleFirestoreAdminV1ExportDocumentsResponse =
  GoogleFirestoreAdminV1ExportDocumentsResponse {outputUriPrefix = Core.Nothing}

instance Core.FromJSON
           GoogleFirestoreAdminV1ExportDocumentsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1ExportDocumentsResponse"
              (\ o ->
                 GoogleFirestoreAdminV1ExportDocumentsResponse
                   Core.<$> (o Core..:? "outputUriPrefix"))

instance Core.ToJSON
           GoogleFirestoreAdminV1ExportDocumentsResponse
         where
        toJSON
          GoogleFirestoreAdminV1ExportDocumentsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("outputUriPrefix" Core..=) Core.<$>
                    outputUriPrefix])


-- | Represents a single field in the database. Fields are grouped by their \"Collection Group\", which represent all collections in the database with the same id.
--
-- /See:/ 'newGoogleFirestoreAdminV1Field' smart constructor.
data GoogleFirestoreAdminV1Field = GoogleFirestoreAdminV1Field
    {
      -- | The index configuration for this field. If unset, field indexing will revert to the configuration defined by the @ancestor_field@. To explicitly remove all indexes for this field, specify an index config with an empty list of indexes.
      indexConfig :: (Core.Maybe GoogleFirestoreAdminV1IndexConfig)
      -- | Required. A field name of the form @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/fields\/{field_path}@ A field path may be a simple field name, e.g. @address@ or a path to fields within map_value , e.g. @address.city@, or a special field path. The only valid special field is @*@, which represents any field. Field paths may be quoted using
      -- @(backtick). The only character that needs to be escaped within a quoted field path is the backtick character itself, escaped using a backslash. Special characters in field paths that must be quoted include:@/@,@.@, \`\`\` (backtick),@[@,@]@, as well as any ascii symbolic characters. Examples: (Note: Comments here are written in markdown syntax, so there is an additional layer of backticks to represent a code block)@\`address.city\`@represents a field named@address.city@, not the map key@city@in the field@address@.@\`/\`@represents a field named@/@, not any field. A special@Field@contains the default indexing settings for all fields. This field\'s resource name is:@projects\/{project/id}\/databases\/{database/id}\/collectionGroups\/__default__\/fields\//@Indexes defined on this@Field@will be applied to all fields which do not have their own@Field\` index configuration.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1Field' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1Field 
    ::  GoogleFirestoreAdminV1Field
newGoogleFirestoreAdminV1Field =
  GoogleFirestoreAdminV1Field {indexConfig = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON GoogleFirestoreAdminV1Field
         where
        parseJSON
          = Core.withObject "GoogleFirestoreAdminV1Field"
              (\ o ->
                 GoogleFirestoreAdminV1Field Core.<$>
                   (o Core..:? "indexConfig") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON GoogleFirestoreAdminV1Field
         where
        toJSON GoogleFirestoreAdminV1Field{..}
          = Core.object
              (Core.catMaybes
                 [("indexConfig" Core..=) Core.<$> indexConfig,
                  ("name" Core..=) Core.<$> name])


-- | Metadata for google.longrunning.Operation results from FirestoreAdmin.UpdateField.
--
-- /See:/ 'newGoogleFirestoreAdminV1FieldOperationMetadata' smart constructor.
data GoogleFirestoreAdminV1FieldOperationMetadata = GoogleFirestoreAdminV1FieldOperationMetadata
    {
      -- | The time this operation completed. Will be unset if operation still in progress.
      endTime :: (Core.Maybe Core.DateTime')
      -- | The field resource that this operation is acting on. For example: @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/fields\/{field_path}@
    , field :: (Core.Maybe Core.Text)
      -- | A list of IndexConfigDelta, which describe the intent of this operation.
    , indexConfigDeltas :: (Core.Maybe [GoogleFirestoreAdminV1IndexConfigDelta])
      -- | The progress, in bytes, of this operation.
    , progressBytes :: (Core.Maybe GoogleFirestoreAdminV1Progress)
      -- | The progress, in documents, of this operation.
    , progressDocuments :: (Core.Maybe GoogleFirestoreAdminV1Progress)
      -- | The time this operation started.
    , startTime :: (Core.Maybe Core.DateTime')
      -- | The state of the operation.
    , state :: (Core.Maybe GoogleFirestoreAdminV1FieldOperationMetadata_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1FieldOperationMetadata' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1FieldOperationMetadata 
    ::  GoogleFirestoreAdminV1FieldOperationMetadata
newGoogleFirestoreAdminV1FieldOperationMetadata =
  GoogleFirestoreAdminV1FieldOperationMetadata
    { endTime = Core.Nothing
    , field = Core.Nothing
    , indexConfigDeltas = Core.Nothing
    , progressBytes = Core.Nothing
    , progressDocuments = Core.Nothing
    , startTime = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON
           GoogleFirestoreAdminV1FieldOperationMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1FieldOperationMetadata"
              (\ o ->
                 GoogleFirestoreAdminV1FieldOperationMetadata Core.<$>
                   (o Core..:? "endTime") Core.<*> (o Core..:? "field")
                     Core.<*>
                     (o Core..:? "indexConfigDeltas" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "progressBytes")
                     Core.<*> (o Core..:? "progressDocuments")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON
           GoogleFirestoreAdminV1FieldOperationMetadata
         where
        toJSON
          GoogleFirestoreAdminV1FieldOperationMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("field" Core..=) Core.<$> field,
                  ("indexConfigDeltas" Core..=) Core.<$>
                    indexConfigDeltas,
                  ("progressBytes" Core..=) Core.<$> progressBytes,
                  ("progressDocuments" Core..=) Core.<$>
                    progressDocuments,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("state" Core..=) Core.<$> state])


-- | Metadata for google.longrunning.Operation results from FirestoreAdmin.ImportDocuments.
--
-- /See:/ 'newGoogleFirestoreAdminV1ImportDocumentsMetadata' smart constructor.
data GoogleFirestoreAdminV1ImportDocumentsMetadata = GoogleFirestoreAdminV1ImportDocumentsMetadata
    {
      -- | Which collection ids are being imported.
      collectionIds :: (Core.Maybe [Core.Text])
      -- | The time this operation completed. Will be unset if operation still in progress.
    , endTime :: (Core.Maybe Core.DateTime')
      -- | The location of the documents being imported.
    , inputUriPrefix :: (Core.Maybe Core.Text)
      -- | The state of the import operation.
    , operationState :: (Core.Maybe
   GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState)
      -- | The progress, in bytes, of this operation.
    , progressBytes :: (Core.Maybe GoogleFirestoreAdminV1Progress)
      -- | The progress, in documents, of this operation.
    , progressDocuments :: (Core.Maybe GoogleFirestoreAdminV1Progress)
      -- | The time this operation started.
    , startTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ImportDocumentsMetadata' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1ImportDocumentsMetadata 
    ::  GoogleFirestoreAdminV1ImportDocumentsMetadata
newGoogleFirestoreAdminV1ImportDocumentsMetadata =
  GoogleFirestoreAdminV1ImportDocumentsMetadata
    { collectionIds = Core.Nothing
    , endTime = Core.Nothing
    , inputUriPrefix = Core.Nothing
    , operationState = Core.Nothing
    , progressBytes = Core.Nothing
    , progressDocuments = Core.Nothing
    , startTime = Core.Nothing
    }

instance Core.FromJSON
           GoogleFirestoreAdminV1ImportDocumentsMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1ImportDocumentsMetadata"
              (\ o ->
                 GoogleFirestoreAdminV1ImportDocumentsMetadata
                   Core.<$>
                   (o Core..:? "collectionIds" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "inputUriPrefix")
                     Core.<*> (o Core..:? "operationState")
                     Core.<*> (o Core..:? "progressBytes")
                     Core.<*> (o Core..:? "progressDocuments")
                     Core.<*> (o Core..:? "startTime"))

instance Core.ToJSON
           GoogleFirestoreAdminV1ImportDocumentsMetadata
         where
        toJSON
          GoogleFirestoreAdminV1ImportDocumentsMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("collectionIds" Core..=) Core.<$> collectionIds,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("inputUriPrefix" Core..=) Core.<$> inputUriPrefix,
                  ("operationState" Core..=) Core.<$> operationState,
                  ("progressBytes" Core..=) Core.<$> progressBytes,
                  ("progressDocuments" Core..=) Core.<$>
                    progressDocuments,
                  ("startTime" Core..=) Core.<$> startTime])


-- | The request for FirestoreAdmin.ImportDocuments.
--
-- /See:/ 'newGoogleFirestoreAdminV1ImportDocumentsRequest' smart constructor.
data GoogleFirestoreAdminV1ImportDocumentsRequest = GoogleFirestoreAdminV1ImportDocumentsRequest
    {
      -- | Which collection ids to import. Unspecified means all collections included in the import.
      collectionIds :: (Core.Maybe [Core.Text])
      -- | Location of the exported files. This must match the output/uri/prefix of an ExportDocumentsResponse from an export that has completed successfully. See: google.firestore.admin.v1.ExportDocumentsResponse.output/uri/prefix.
    , inputUriPrefix :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ImportDocumentsRequest' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1ImportDocumentsRequest 
    ::  GoogleFirestoreAdminV1ImportDocumentsRequest
newGoogleFirestoreAdminV1ImportDocumentsRequest =
  GoogleFirestoreAdminV1ImportDocumentsRequest
    {collectionIds = Core.Nothing, inputUriPrefix = Core.Nothing}

instance Core.FromJSON
           GoogleFirestoreAdminV1ImportDocumentsRequest
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1ImportDocumentsRequest"
              (\ o ->
                 GoogleFirestoreAdminV1ImportDocumentsRequest Core.<$>
                   (o Core..:? "collectionIds" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "inputUriPrefix"))

instance Core.ToJSON
           GoogleFirestoreAdminV1ImportDocumentsRequest
         where
        toJSON
          GoogleFirestoreAdminV1ImportDocumentsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("collectionIds" Core..=) Core.<$> collectionIds,
                  ("inputUriPrefix" Core..=) Core.<$> inputUriPrefix])


-- | Cloud Firestore indexes enable simple and complex queries against documents in a database.
--
-- /See:/ 'newGoogleFirestoreAdminV1Index' smart constructor.
data GoogleFirestoreAdminV1Index = GoogleFirestoreAdminV1Index
    {
      -- | The fields supported by this index. For composite indexes, this is always 2 or more fields. The last field entry is always for the field path @__name__@. If, on creation, @__name__@ was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the @__name__@ will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
      fields :: (Core.Maybe [GoogleFirestoreAdminV1IndexField])
      -- | Output only. A server defined name for this index. The form of this name for composite indexes will be: @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/indexes\/{composite_index_id}@ For single field indexes, this field will be empty.
    , name :: (Core.Maybe Core.Text)
      -- | Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
    , queryScope :: (Core.Maybe GoogleFirestoreAdminV1Index_QueryScope)
      -- | Output only. The serving state of the index.
    , state :: (Core.Maybe GoogleFirestoreAdminV1Index_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1Index' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1Index 
    ::  GoogleFirestoreAdminV1Index
newGoogleFirestoreAdminV1Index =
  GoogleFirestoreAdminV1Index
    { fields = Core.Nothing
    , name = Core.Nothing
    , queryScope = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON GoogleFirestoreAdminV1Index
         where
        parseJSON
          = Core.withObject "GoogleFirestoreAdminV1Index"
              (\ o ->
                 GoogleFirestoreAdminV1Index Core.<$>
                   (o Core..:? "fields" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "queryScope")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON GoogleFirestoreAdminV1Index
         where
        toJSON GoogleFirestoreAdminV1Index{..}
          = Core.object
              (Core.catMaybes
                 [("fields" Core..=) Core.<$> fields,
                  ("name" Core..=) Core.<$> name,
                  ("queryScope" Core..=) Core.<$> queryScope,
                  ("state" Core..=) Core.<$> state])


-- | The index configuration for this field.
--
-- /See:/ 'newGoogleFirestoreAdminV1IndexConfig' smart constructor.
data GoogleFirestoreAdminV1IndexConfig = GoogleFirestoreAdminV1IndexConfig
    {
      -- | Output only. Specifies the resource name of the @Field@ from which this field\'s index configuration is set (when @uses_ancestor_config@ is true), or from which it /would/ be set if this field had no index configuration (when @uses_ancestor_config@ is false).
      ancestorField :: (Core.Maybe Core.Text)
      -- | The indexes supported for this field.
    , indexes :: (Core.Maybe [GoogleFirestoreAdminV1Index])
      -- | Output only When true, the @Field@\'s index configuration is in the process of being reverted. Once complete, the index config will transition to the same state as the field specified by @ancestor_field@, at which point @uses_ancestor_config@ will be @true@ and @reverting@ will be @false@.
    , reverting :: (Core.Maybe Core.Bool)
      -- | Output only. When true, the @Field@\'s index configuration is set from the configuration specified by the @ancestor_field@. When false, the @Field@\'s index configuration is defined explicitly.
    , usesAncestorConfig :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1IndexConfig' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1IndexConfig 
    ::  GoogleFirestoreAdminV1IndexConfig
newGoogleFirestoreAdminV1IndexConfig =
  GoogleFirestoreAdminV1IndexConfig
    { ancestorField = Core.Nothing
    , indexes = Core.Nothing
    , reverting = Core.Nothing
    , usesAncestorConfig = Core.Nothing
    }

instance Core.FromJSON
           GoogleFirestoreAdminV1IndexConfig
         where
        parseJSON
          = Core.withObject "GoogleFirestoreAdminV1IndexConfig"
              (\ o ->
                 GoogleFirestoreAdminV1IndexConfig Core.<$>
                   (o Core..:? "ancestorField") Core.<*>
                     (o Core..:? "indexes" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "reverting")
                     Core.<*> (o Core..:? "usesAncestorConfig"))

instance Core.ToJSON
           GoogleFirestoreAdminV1IndexConfig
         where
        toJSON GoogleFirestoreAdminV1IndexConfig{..}
          = Core.object
              (Core.catMaybes
                 [("ancestorField" Core..=) Core.<$> ancestorField,
                  ("indexes" Core..=) Core.<$> indexes,
                  ("reverting" Core..=) Core.<$> reverting,
                  ("usesAncestorConfig" Core..=) Core.<$>
                    usesAncestorConfig])


-- | Information about an index configuration change.
--
-- /See:/ 'newGoogleFirestoreAdminV1IndexConfigDelta' smart constructor.
data GoogleFirestoreAdminV1IndexConfigDelta = GoogleFirestoreAdminV1IndexConfigDelta
    {
      -- | Specifies how the index is changing.
      changeType :: (Core.Maybe GoogleFirestoreAdminV1IndexConfigDelta_ChangeType)
      -- | The index being changed.
    , index :: (Core.Maybe GoogleFirestoreAdminV1Index)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1IndexConfigDelta' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1IndexConfigDelta 
    ::  GoogleFirestoreAdminV1IndexConfigDelta
newGoogleFirestoreAdminV1IndexConfigDelta =
  GoogleFirestoreAdminV1IndexConfigDelta
    {changeType = Core.Nothing, index = Core.Nothing}

instance Core.FromJSON
           GoogleFirestoreAdminV1IndexConfigDelta
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1IndexConfigDelta"
              (\ o ->
                 GoogleFirestoreAdminV1IndexConfigDelta Core.<$>
                   (o Core..:? "changeType") Core.<*>
                     (o Core..:? "index"))

instance Core.ToJSON
           GoogleFirestoreAdminV1IndexConfigDelta
         where
        toJSON GoogleFirestoreAdminV1IndexConfigDelta{..}
          = Core.object
              (Core.catMaybes
                 [("changeType" Core..=) Core.<$> changeType,
                  ("index" Core..=) Core.<$> index])


-- | A field in an index. The field/path describes which field is indexed, the value/mode describes how the field value is indexed.
--
-- /See:/ 'newGoogleFirestoreAdminV1IndexField' smart constructor.
data GoogleFirestoreAdminV1IndexField = GoogleFirestoreAdminV1IndexField
    {
      -- | Indicates that this field supports operations on @array_value@s.
      arrayConfig :: (Core.Maybe GoogleFirestoreAdminV1IndexField_ArrayConfig)
      -- | Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
    , fieldPath :: (Core.Maybe Core.Text)
      -- | Indicates that this field supports ordering by the specified order or comparing using =, !=, \<, \<=, >, >=.
    , order :: (Core.Maybe GoogleFirestoreAdminV1IndexField_Order)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1IndexField' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1IndexField 
    ::  GoogleFirestoreAdminV1IndexField
newGoogleFirestoreAdminV1IndexField =
  GoogleFirestoreAdminV1IndexField
    {arrayConfig = Core.Nothing, fieldPath = Core.Nothing, order = Core.Nothing}

instance Core.FromJSON
           GoogleFirestoreAdminV1IndexField
         where
        parseJSON
          = Core.withObject "GoogleFirestoreAdminV1IndexField"
              (\ o ->
                 GoogleFirestoreAdminV1IndexField Core.<$>
                   (o Core..:? "arrayConfig") Core.<*>
                     (o Core..:? "fieldPath")
                     Core.<*> (o Core..:? "order"))

instance Core.ToJSON GoogleFirestoreAdminV1IndexField
         where
        toJSON GoogleFirestoreAdminV1IndexField{..}
          = Core.object
              (Core.catMaybes
                 [("arrayConfig" Core..=) Core.<$> arrayConfig,
                  ("fieldPath" Core..=) Core.<$> fieldPath,
                  ("order" Core..=) Core.<$> order])


-- | Metadata for google.longrunning.Operation results from FirestoreAdmin.CreateIndex.
--
-- /See:/ 'newGoogleFirestoreAdminV1IndexOperationMetadata' smart constructor.
data GoogleFirestoreAdminV1IndexOperationMetadata = GoogleFirestoreAdminV1IndexOperationMetadata
    {
      -- | The time this operation completed. Will be unset if operation still in progress.
      endTime :: (Core.Maybe Core.DateTime')
      -- | The index resource that this operation is acting on. For example: @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/indexes\/{index_id}@
    , index :: (Core.Maybe Core.Text)
      -- | The progress, in bytes, of this operation.
    , progressBytes :: (Core.Maybe GoogleFirestoreAdminV1Progress)
      -- | The progress, in documents, of this operation.
    , progressDocuments :: (Core.Maybe GoogleFirestoreAdminV1Progress)
      -- | The time this operation started.
    , startTime :: (Core.Maybe Core.DateTime')
      -- | The state of the operation.
    , state :: (Core.Maybe GoogleFirestoreAdminV1IndexOperationMetadata_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1IndexOperationMetadata' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1IndexOperationMetadata 
    ::  GoogleFirestoreAdminV1IndexOperationMetadata
newGoogleFirestoreAdminV1IndexOperationMetadata =
  GoogleFirestoreAdminV1IndexOperationMetadata
    { endTime = Core.Nothing
    , index = Core.Nothing
    , progressBytes = Core.Nothing
    , progressDocuments = Core.Nothing
    , startTime = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON
           GoogleFirestoreAdminV1IndexOperationMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1IndexOperationMetadata"
              (\ o ->
                 GoogleFirestoreAdminV1IndexOperationMetadata Core.<$>
                   (o Core..:? "endTime") Core.<*> (o Core..:? "index")
                     Core.<*> (o Core..:? "progressBytes")
                     Core.<*> (o Core..:? "progressDocuments")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON
           GoogleFirestoreAdminV1IndexOperationMetadata
         where
        toJSON
          GoogleFirestoreAdminV1IndexOperationMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("index" Core..=) Core.<$> index,
                  ("progressBytes" Core..=) Core.<$> progressBytes,
                  ("progressDocuments" Core..=) Core.<$>
                    progressDocuments,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("state" Core..=) Core.<$> state])


-- | The list of databases for a project.
--
-- /See:/ 'newGoogleFirestoreAdminV1ListDatabasesResponse' smart constructor.
newtype GoogleFirestoreAdminV1ListDatabasesResponse = GoogleFirestoreAdminV1ListDatabasesResponse
    {
      -- | The databases in the project.
      databases :: (Core.Maybe [GoogleFirestoreAdminV1Database])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ListDatabasesResponse' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1ListDatabasesResponse 
    ::  GoogleFirestoreAdminV1ListDatabasesResponse
newGoogleFirestoreAdminV1ListDatabasesResponse =
  GoogleFirestoreAdminV1ListDatabasesResponse {databases = Core.Nothing}

instance Core.FromJSON
           GoogleFirestoreAdminV1ListDatabasesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1ListDatabasesResponse"
              (\ o ->
                 GoogleFirestoreAdminV1ListDatabasesResponse Core.<$>
                   (o Core..:? "databases" Core..!= Core.mempty))

instance Core.ToJSON
           GoogleFirestoreAdminV1ListDatabasesResponse
         where
        toJSON
          GoogleFirestoreAdminV1ListDatabasesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("databases" Core..=) Core.<$> databases])


-- | The response for FirestoreAdmin.ListFields.
--
-- /See:/ 'newGoogleFirestoreAdminV1ListFieldsResponse' smart constructor.
data GoogleFirestoreAdminV1ListFieldsResponse = GoogleFirestoreAdminV1ListFieldsResponse
    {
      -- | The requested fields.
      fields :: (Core.Maybe [GoogleFirestoreAdminV1Field])
      -- | A page token that may be used to request another page of results. If blank, this is the last page.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ListFieldsResponse' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1ListFieldsResponse 
    ::  GoogleFirestoreAdminV1ListFieldsResponse
newGoogleFirestoreAdminV1ListFieldsResponse =
  GoogleFirestoreAdminV1ListFieldsResponse
    {fields = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleFirestoreAdminV1ListFieldsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1ListFieldsResponse"
              (\ o ->
                 GoogleFirestoreAdminV1ListFieldsResponse Core.<$>
                   (o Core..:? "fields" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleFirestoreAdminV1ListFieldsResponse
         where
        toJSON GoogleFirestoreAdminV1ListFieldsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("fields" Core..=) Core.<$> fields,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response for FirestoreAdmin.ListIndexes.
--
-- /See:/ 'newGoogleFirestoreAdminV1ListIndexesResponse' smart constructor.
data GoogleFirestoreAdminV1ListIndexesResponse = GoogleFirestoreAdminV1ListIndexesResponse
    {
      -- | The requested indexes.
      indexes :: (Core.Maybe [GoogleFirestoreAdminV1Index])
      -- | A page token that may be used to request another page of results. If blank, this is the last page.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ListIndexesResponse' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1ListIndexesResponse 
    ::  GoogleFirestoreAdminV1ListIndexesResponse
newGoogleFirestoreAdminV1ListIndexesResponse =
  GoogleFirestoreAdminV1ListIndexesResponse
    {indexes = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleFirestoreAdminV1ListIndexesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1ListIndexesResponse"
              (\ o ->
                 GoogleFirestoreAdminV1ListIndexesResponse Core.<$>
                   (o Core..:? "indexes" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleFirestoreAdminV1ListIndexesResponse
         where
        toJSON GoogleFirestoreAdminV1ListIndexesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("indexes" Core..=) Core.<$> indexes,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The metadata message for google.cloud.location.Location.metadata.
--
-- /See:/ 'newGoogleFirestoreAdminV1LocationMetadata' smart constructor.
data GoogleFirestoreAdminV1LocationMetadata = GoogleFirestoreAdminV1LocationMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1LocationMetadata' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1LocationMetadata 
    ::  GoogleFirestoreAdminV1LocationMetadata
newGoogleFirestoreAdminV1LocationMetadata =
  GoogleFirestoreAdminV1LocationMetadata

instance Core.FromJSON
           GoogleFirestoreAdminV1LocationMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1LocationMetadata"
              (\ o ->
                 Core.pure GoogleFirestoreAdminV1LocationMetadata)

instance Core.ToJSON
           GoogleFirestoreAdminV1LocationMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | Describes the progress of the operation. Unit of work is generic and must be interpreted based on where Progress is used.
--
-- /See:/ 'newGoogleFirestoreAdminV1Progress' smart constructor.
data GoogleFirestoreAdminV1Progress = GoogleFirestoreAdminV1Progress
    {
      -- | The amount of work completed.
      completedWork :: (Core.Maybe Core.Int64)
      -- | The amount of work estimated.
    , estimatedWork :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1Progress' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1Progress 
    ::  GoogleFirestoreAdminV1Progress
newGoogleFirestoreAdminV1Progress =
  GoogleFirestoreAdminV1Progress
    {completedWork = Core.Nothing, estimatedWork = Core.Nothing}

instance Core.FromJSON GoogleFirestoreAdminV1Progress
         where
        parseJSON
          = Core.withObject "GoogleFirestoreAdminV1Progress"
              (\ o ->
                 GoogleFirestoreAdminV1Progress Core.<$>
                   (o Core..:? "completedWork") Core.<*>
                     (o Core..:? "estimatedWork"))

instance Core.ToJSON GoogleFirestoreAdminV1Progress
         where
        toJSON GoogleFirestoreAdminV1Progress{..}
          = Core.object
              (Core.catMaybes
                 [("completedWork" Core..=) Core.. Core.AsText
                    Core.<$> completedWork,
                  ("estimatedWork" Core..=) Core.. Core.AsText Core.<$>
                    estimatedWork])


-- | Metadata related to the update database operation.
--
-- /See:/ 'newGoogleFirestoreAdminV1UpdateDatabaseMetadata' smart constructor.
data GoogleFirestoreAdminV1UpdateDatabaseMetadata = GoogleFirestoreAdminV1UpdateDatabaseMetadata
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1UpdateDatabaseMetadata' with the minimum fields required to make a request.
newGoogleFirestoreAdminV1UpdateDatabaseMetadata 
    ::  GoogleFirestoreAdminV1UpdateDatabaseMetadata
newGoogleFirestoreAdminV1UpdateDatabaseMetadata =
  GoogleFirestoreAdminV1UpdateDatabaseMetadata

instance Core.FromJSON
           GoogleFirestoreAdminV1UpdateDatabaseMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleFirestoreAdminV1UpdateDatabaseMetadata"
              (\ o ->
                 Core.pure
                   GoogleFirestoreAdminV1UpdateDatabaseMetadata)

instance Core.ToJSON
           GoogleFirestoreAdminV1UpdateDatabaseMetadata
         where
        toJSON = Core.const Core.emptyObject


-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newGoogleLongrunningCancelOperationRequest' smart constructor.
data GoogleLongrunningCancelOperationRequest = GoogleLongrunningCancelOperationRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningCancelOperationRequest' with the minimum fields required to make a request.
newGoogleLongrunningCancelOperationRequest 
    ::  GoogleLongrunningCancelOperationRequest
newGoogleLongrunningCancelOperationRequest =
  GoogleLongrunningCancelOperationRequest

instance Core.FromJSON
           GoogleLongrunningCancelOperationRequest
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningCancelOperationRequest"
              (\ o ->
                 Core.pure GoogleLongrunningCancelOperationRequest)

instance Core.ToJSON
           GoogleLongrunningCancelOperationRequest
         where
        toJSON = Core.const Core.emptyObject


-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newGoogleLongrunningListOperationsResponse' smart constructor.
data GoogleLongrunningListOperationsResponse = GoogleLongrunningListOperationsResponse
    {
      -- | The standard List next-page token.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | A list of operations that matches the specified filter in the request.
    , operations :: (Core.Maybe [GoogleLongrunningOperation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningListOperationsResponse' with the minimum fields required to make a request.
newGoogleLongrunningListOperationsResponse 
    ::  GoogleLongrunningListOperationsResponse
newGoogleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse
    {nextPageToken = Core.Nothing, operations = Core.Nothing}

instance Core.FromJSON
           GoogleLongrunningListOperationsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningListOperationsResponse"
              (\ o ->
                 GoogleLongrunningListOperationsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "operations" Core..!= Core.mempty))

instance Core.ToJSON
           GoogleLongrunningListOperationsResponse
         where
        toJSON GoogleLongrunningListOperationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("operations" Core..=) Core.<$> operations])


-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newGoogleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation = GoogleLongrunningOperation
    {
      -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
      done :: (Core.Maybe Core.Bool)
      -- | The error result of the operation in case of failure or cancellation.
    , error :: (Core.Maybe Status)
      -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    , metadata :: (Core.Maybe GoogleLongrunningOperation_Metadata)
      -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    , response :: (Core.Maybe GoogleLongrunningOperation_Response)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
newGoogleLongrunningOperation 
    ::  GoogleLongrunningOperation
newGoogleLongrunningOperation =
  GoogleLongrunningOperation
    { done = Core.Nothing
    , error = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , response = Core.Nothing
    }

instance Core.FromJSON GoogleLongrunningOperation
         where
        parseJSON
          = Core.withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunningOperation Core.<$>
                   (o Core..:? "done") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "response"))

instance Core.ToJSON GoogleLongrunningOperation where
        toJSON GoogleLongrunningOperation{..}
          = Core.object
              (Core.catMaybes
                 [("done" Core..=) Core.<$> done,
                  ("error" Core..=) Core.<$> error,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("response" Core..=) Core.<$> response])


-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newGoogleLongrunningOperation_Metadata' smart constructor.
newtype GoogleLongrunningOperation_Metadata = GoogleLongrunningOperation_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Metadata' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> GoogleLongrunningOperation_Metadata
newGoogleLongrunningOperation_Metadata addtional =
  GoogleLongrunningOperation_Metadata {addtional = addtional}

instance Core.FromJSON
           GoogleLongrunningOperation_Metadata
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningOperation_Metadata"
              (\ o ->
                 GoogleLongrunningOperation_Metadata Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleLongrunningOperation_Metadata
         where
        toJSON GoogleLongrunningOperation_Metadata{..}
          = Core.toJSON addtional


-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newGoogleLongrunningOperation_Response' smart constructor.
newtype GoogleLongrunningOperation_Response = GoogleLongrunningOperation_Response
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Response' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> GoogleLongrunningOperation_Response
newGoogleLongrunningOperation_Response addtional =
  GoogleLongrunningOperation_Response {addtional = addtional}

instance Core.FromJSON
           GoogleLongrunningOperation_Response
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningOperation_Response"
              (\ o ->
                 GoogleLongrunningOperation_Response Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleLongrunningOperation_Response
         where
        toJSON GoogleLongrunningOperation_Response{..}
          = Core.toJSON addtional


-- | An object that represents a latitude\/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
--
-- /See:/ 'newLatLng' smart constructor.
data LatLng = LatLng
    {
      -- | The latitude in degrees. It must be in the range [-90.0, +90.0].
      latitude :: (Core.Maybe Core.Double)
      -- | The longitude in degrees. It must be in the range [-180.0, +180.0].
    , longitude :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
newLatLng 
    ::  LatLng
newLatLng = LatLng {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON LatLng where
        parseJSON
          = Core.withObject "LatLng"
              (\ o ->
                 LatLng Core.<$>
                   (o Core..:? "latitude") Core.<*>
                     (o Core..:? "longitude"))

instance Core.ToJSON LatLng where
        toJSON LatLng{..}
          = Core.object
              (Core.catMaybes
                 [("latitude" Core..=) Core.<$> latitude,
                  ("longitude" Core..=) Core.<$> longitude])


-- | The request for Firestore.ListCollectionIds.
--
-- /See:/ 'newListCollectionIdsRequest' smart constructor.
data ListCollectionIdsRequest = ListCollectionIdsRequest
    {
      -- | The maximum number of results to return.
      pageSize :: (Core.Maybe Core.Int32)
      -- | A page token. Must be a value from ListCollectionIdsResponse.
    , pageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCollectionIdsRequest' with the minimum fields required to make a request.
newListCollectionIdsRequest 
    ::  ListCollectionIdsRequest
newListCollectionIdsRequest =
  ListCollectionIdsRequest {pageSize = Core.Nothing, pageToken = Core.Nothing}

instance Core.FromJSON ListCollectionIdsRequest where
        parseJSON
          = Core.withObject "ListCollectionIdsRequest"
              (\ o ->
                 ListCollectionIdsRequest Core.<$>
                   (o Core..:? "pageSize") Core.<*>
                     (o Core..:? "pageToken"))

instance Core.ToJSON ListCollectionIdsRequest where
        toJSON ListCollectionIdsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("pageSize" Core..=) Core.<$> pageSize,
                  ("pageToken" Core..=) Core.<$> pageToken])


-- | The response from Firestore.ListCollectionIds.
--
-- /See:/ 'newListCollectionIdsResponse' smart constructor.
data ListCollectionIdsResponse = ListCollectionIdsResponse
    {
      -- | The collection ids.
      collectionIds :: (Core.Maybe [Core.Text])
      -- | A page token that may be used to continue the list.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCollectionIdsResponse' with the minimum fields required to make a request.
newListCollectionIdsResponse 
    ::  ListCollectionIdsResponse
newListCollectionIdsResponse =
  ListCollectionIdsResponse
    {collectionIds = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListCollectionIdsResponse
         where
        parseJSON
          = Core.withObject "ListCollectionIdsResponse"
              (\ o ->
                 ListCollectionIdsResponse Core.<$>
                   (o Core..:? "collectionIds" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListCollectionIdsResponse where
        toJSON ListCollectionIdsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("collectionIds" Core..=) Core.<$> collectionIds,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response for Firestore.ListDocuments.
--
-- /See:/ 'newListDocumentsResponse' smart constructor.
data ListDocumentsResponse = ListDocumentsResponse
    {
      -- | The Documents found.
      documents :: (Core.Maybe [Document])
      -- | The next page token.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDocumentsResponse' with the minimum fields required to make a request.
newListDocumentsResponse 
    ::  ListDocumentsResponse
newListDocumentsResponse =
  ListDocumentsResponse {documents = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListDocumentsResponse where
        parseJSON
          = Core.withObject "ListDocumentsResponse"
              (\ o ->
                 ListDocumentsResponse Core.<$>
                   (o Core..:? "documents" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListDocumentsResponse where
        toJSON ListDocumentsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("documents" Core..=) Core.<$> documents,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
    {
      -- | A list of locations that matches the specified filter in the request.
      locations :: (Core.Maybe [Location])
      -- | The standard List next-page token.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse 
    ::  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
        parseJSON
          = Core.withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse Core.<$>
                   (o Core..:? "locations" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("locations" Core..=) Core.<$> locations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | A request for Firestore.Listen
--
-- /See:/ 'newListenRequest' smart constructor.
data ListenRequest = ListenRequest
    {
      -- | A target to add to this stream.
      addTarget :: (Core.Maybe Target)
      -- | Labels associated with this target change.
    , labels :: (Core.Maybe ListenRequest_Labels)
      -- | The ID of a target to remove from this stream.
    , removeTarget :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListenRequest' with the minimum fields required to make a request.
newListenRequest 
    ::  ListenRequest
newListenRequest =
  ListenRequest
    { addTarget = Core.Nothing
    , labels = Core.Nothing
    , removeTarget = Core.Nothing
    }

instance Core.FromJSON ListenRequest where
        parseJSON
          = Core.withObject "ListenRequest"
              (\ o ->
                 ListenRequest Core.<$>
                   (o Core..:? "addTarget") Core.<*>
                     (o Core..:? "labels")
                     Core.<*> (o Core..:? "removeTarget"))

instance Core.ToJSON ListenRequest where
        toJSON ListenRequest{..}
          = Core.object
              (Core.catMaybes
                 [("addTarget" Core..=) Core.<$> addTarget,
                  ("labels" Core..=) Core.<$> labels,
                  ("removeTarget" Core..=) Core.<$> removeTarget])


-- | Labels associated with this target change.
--
-- /See:/ 'newListenRequest_Labels' smart constructor.
newtype ListenRequest_Labels = ListenRequest_Labels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListenRequest_Labels' with the minimum fields required to make a request.
newListenRequest_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> ListenRequest_Labels
newListenRequest_Labels addtional = ListenRequest_Labels {addtional = addtional}

instance Core.FromJSON ListenRequest_Labels where
        parseJSON
          = Core.withObject "ListenRequest_Labels"
              (\ o ->
                 ListenRequest_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON ListenRequest_Labels where
        toJSON ListenRequest_Labels{..}
          = Core.toJSON addtional


-- | The response for Firestore.Listen.
--
-- /See:/ 'newListenResponse' smart constructor.
data ListenResponse = ListenResponse
    {
      -- | A Document has changed.
      documentChange :: (Core.Maybe DocumentChange)
      -- | A Document has been deleted.
    , documentDelete :: (Core.Maybe DocumentDelete)
      -- | A Document has been removed from a target (because it is no longer relevant to that target).
    , documentRemove :: (Core.Maybe DocumentRemove)
      -- | A filter to apply to the set of documents previously returned for the given target. Returned when documents may have been removed from the given target, but the exact documents are unknown.
    , filter :: (Core.Maybe ExistenceFilter)
      -- | Targets have changed.
    , targetChange :: (Core.Maybe TargetChange)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListenResponse' with the minimum fields required to make a request.
newListenResponse 
    ::  ListenResponse
newListenResponse =
  ListenResponse
    { documentChange = Core.Nothing
    , documentDelete = Core.Nothing
    , documentRemove = Core.Nothing
    , filter = Core.Nothing
    , targetChange = Core.Nothing
    }

instance Core.FromJSON ListenResponse where
        parseJSON
          = Core.withObject "ListenResponse"
              (\ o ->
                 ListenResponse Core.<$>
                   (o Core..:? "documentChange") Core.<*>
                     (o Core..:? "documentDelete")
                     Core.<*> (o Core..:? "documentRemove")
                     Core.<*> (o Core..:? "filter")
                     Core.<*> (o Core..:? "targetChange"))

instance Core.ToJSON ListenResponse where
        toJSON ListenResponse{..}
          = Core.object
              (Core.catMaybes
                 [("documentChange" Core..=) Core.<$> documentChange,
                  ("documentDelete" Core..=) Core.<$> documentDelete,
                  ("documentRemove" Core..=) Core.<$> documentRemove,
                  ("filter" Core..=) Core.<$> filter,
                  ("targetChange" Core..=) Core.<$> targetChange])


-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
    {
      -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
      displayName :: (Core.Maybe Core.Text)
      -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    , labels :: (Core.Maybe Location_Labels)
      -- | The canonical id for this location. For example: @\"us-east1\"@.
    , locationId :: (Core.Maybe Core.Text)
      -- | Service-specific metadata. For example the available capacity at the given location.
    , metadata :: (Core.Maybe Location_Metadata)
      -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation 
    ::  Location
newLocation =
  Location
    { displayName = Core.Nothing
    , labels = Core.Nothing
    , locationId = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON Location where
        parseJSON
          = Core.withObject "Location"
              (\ o ->
                 Location Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "labels")
                     Core.<*> (o Core..:? "locationId")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Location where
        toJSON Location{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("labels" Core..=) Core.<$> labels,
                  ("locationId" Core..=) Core.<$> locationId,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name])


-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> Location_Labels
newLocation_Labels addtional = Location_Labels {addtional = addtional}

instance Core.FromJSON Location_Labels where
        parseJSON
          = Core.withObject "Location_Labels"
              (\ o ->
                 Location_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Labels where
        toJSON Location_Labels{..} = Core.toJSON addtional


-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> Location_Metadata
newLocation_Metadata addtional = Location_Metadata {addtional = addtional}

instance Core.FromJSON Location_Metadata where
        parseJSON
          = Core.withObject "Location_Metadata"
              (\ o ->
                 Location_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Metadata where
        toJSON Location_Metadata{..} = Core.toJSON addtional


-- | A map value.
--
-- /See:/ 'newMapValue' smart constructor.
newtype MapValue = MapValue
    {
      -- | The map\'s fields. The map keys represent field names. Field names matching the regular expression @__.*__@ are reserved. Reserved field names are forbidden except in certain documented contexts. The map keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be empty.
      fields :: (Core.Maybe MapValue_Fields)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MapValue' with the minimum fields required to make a request.
newMapValue 
    ::  MapValue
newMapValue = MapValue {fields = Core.Nothing}

instance Core.FromJSON MapValue where
        parseJSON
          = Core.withObject "MapValue"
              (\ o -> MapValue Core.<$> (o Core..:? "fields"))

instance Core.ToJSON MapValue where
        toJSON MapValue{..}
          = Core.object
              (Core.catMaybes [("fields" Core..=) Core.<$> fields])


-- | The map\'s fields. The map keys represent field names. Field names matching the regular expression @__.*__@ are reserved. Reserved field names are forbidden except in certain documented contexts. The map keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be empty.
--
-- /See:/ 'newMapValue_Fields' smart constructor.
newtype MapValue_Fields = MapValue_Fields
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MapValue_Fields' with the minimum fields required to make a request.
newMapValue_Fields 
    ::  Core.HashMap Core.Text Value
       -- ^  See 'addtional'.
    -> MapValue_Fields
newMapValue_Fields addtional = MapValue_Fields {addtional = addtional}

instance Core.FromJSON MapValue_Fields where
        parseJSON
          = Core.withObject "MapValue_Fields"
              (\ o ->
                 MapValue_Fields Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON MapValue_Fields where
        toJSON MapValue_Fields{..} = Core.toJSON addtional


-- | An order on a field.
--
-- /See:/ 'newOrder' smart constructor.
data Order = Order
    {
      -- | The direction to order by. Defaults to @ASCENDING@.
      direction :: (Core.Maybe Order_Direction)
      -- | The field to order by.
    , field :: (Core.Maybe FieldReference)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Order' with the minimum fields required to make a request.
newOrder 
    ::  Order
newOrder = Order {direction = Core.Nothing, field = Core.Nothing}

instance Core.FromJSON Order where
        parseJSON
          = Core.withObject "Order"
              (\ o ->
                 Order Core.<$>
                   (o Core..:? "direction") Core.<*>
                     (o Core..:? "field"))

instance Core.ToJSON Order where
        toJSON Order{..}
          = Core.object
              (Core.catMaybes
                 [("direction" Core..=) Core.<$> direction,
                  ("field" Core..=) Core.<$> field])


-- | The request for Firestore.PartitionQuery.
--
-- /See:/ 'newPartitionQueryRequest' smart constructor.
data PartitionQueryRequest = PartitionQueryRequest
    {
      -- | The maximum number of partitions to return in this call, subject to @partition_count@. For example, if @partition_count@ = 10 and @page_size@ = 8, the first call to PartitionQuery will return up to 8 partitions and a @next_page_token@ if more results exist. A second call to PartitionQuery will return up to 2 partitions, to complete the total of 10 specified in @partition_count@.
      pageSize :: (Core.Maybe Core.Int32)
      -- | The @next_page_token@ value returned from a previous call to PartitionQuery that may be used to get an additional set of results. There are no ordering guarantees between sets of results. Thus, using multiple sets of results will require merging the different result sets. For example, two subsequent calls using a page_token may return: * cursor B, cursor M, cursor Q * cursor A, cursor U, cursor W To obtain a complete result set ordered with respect to the results of the query supplied to PartitionQuery, the results sets should be merged: cursor A, cursor B, cursor M, cursor Q, cursor U, cursor W
    , pageToken :: (Core.Maybe Core.Text)
      -- | The desired maximum number of partition points. The partitions may be returned across multiple pages of results. The number must be positive. The actual number of partitions returned may be fewer. For example, this may be set to one fewer than the number of parallel queries to be run, or in running a data pipeline job, one fewer than the number of workers or compute instances available.
    , partitionCount :: (Core.Maybe Core.Int64)
      -- | A structured query. Query must specify collection with all descendants and be ordered by name ascending. Other filters, order bys, limits, offsets, and start\/end cursors are not supported.
    , structuredQuery :: (Core.Maybe StructuredQuery)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartitionQueryRequest' with the minimum fields required to make a request.
newPartitionQueryRequest 
    ::  PartitionQueryRequest
newPartitionQueryRequest =
  PartitionQueryRequest
    { pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , partitionCount = Core.Nothing
    , structuredQuery = Core.Nothing
    }

instance Core.FromJSON PartitionQueryRequest where
        parseJSON
          = Core.withObject "PartitionQueryRequest"
              (\ o ->
                 PartitionQueryRequest Core.<$>
                   (o Core..:? "pageSize") Core.<*>
                     (o Core..:? "pageToken")
                     Core.<*> (o Core..:? "partitionCount")
                     Core.<*> (o Core..:? "structuredQuery"))

instance Core.ToJSON PartitionQueryRequest where
        toJSON PartitionQueryRequest{..}
          = Core.object
              (Core.catMaybes
                 [("pageSize" Core..=) Core.<$> pageSize,
                  ("pageToken" Core..=) Core.<$> pageToken,
                  ("partitionCount" Core..=) Core.. Core.AsText
                    Core.<$> partitionCount,
                  ("structuredQuery" Core..=) Core.<$>
                    structuredQuery])


-- | The response for Firestore.PartitionQuery.
--
-- /See:/ 'newPartitionQueryResponse' smart constructor.
data PartitionQueryResponse = PartitionQueryResponse
    {
      -- | A page token that may be used to request an additional set of results, up to the number specified by @partition_count@ in the PartitionQuery request. If blank, there are no more results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | Partition results. Each partition is a split point that can be used by RunQuery as a starting or end point for the query results. The RunQuery requests must be made with the same query supplied to this PartitionQuery request. The partition cursors will be ordered according to same ordering as the results of the query supplied to PartitionQuery. For example, if a PartitionQuery request returns partition cursors A and B, running the following three queries will return the entire result set of the original query: * query, end/at A * query, start/at A, end/at B * query, start/at B An empty result may indicate that the query has too few results to be partitioned.
    , partitions :: (Core.Maybe [Cursor])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartitionQueryResponse' with the minimum fields required to make a request.
newPartitionQueryResponse 
    ::  PartitionQueryResponse
newPartitionQueryResponse =
  PartitionQueryResponse
    {nextPageToken = Core.Nothing, partitions = Core.Nothing}

instance Core.FromJSON PartitionQueryResponse where
        parseJSON
          = Core.withObject "PartitionQueryResponse"
              (\ o ->
                 PartitionQueryResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "partitions" Core..!= Core.mempty))

instance Core.ToJSON PartitionQueryResponse where
        toJSON PartitionQueryResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("partitions" Core..=) Core.<$> partitions])


-- | A precondition on a document, used for conditional operations.
--
-- /See:/ 'newPrecondition' smart constructor.
data Precondition = Precondition
    {
      -- | When set to @true@, the target document must exist. When set to @false@, the target document must not exist.
      exists :: (Core.Maybe Core.Bool)
      -- | When set, the target document must exist and have been last updated at that time. Timestamp must be microsecond aligned.
    , updateTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Precondition' with the minimum fields required to make a request.
newPrecondition 
    ::  Precondition
newPrecondition =
  Precondition {exists = Core.Nothing, updateTime = Core.Nothing}

instance Core.FromJSON Precondition where
        parseJSON
          = Core.withObject "Precondition"
              (\ o ->
                 Precondition Core.<$>
                   (o Core..:? "exists") Core.<*>
                     (o Core..:? "updateTime"))

instance Core.ToJSON Precondition where
        toJSON Precondition{..}
          = Core.object
              (Core.catMaybes
                 [("exists" Core..=) Core.<$> exists,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | The projection of document\'s fields to return.
--
-- /See:/ 'newProjection' smart constructor.
newtype Projection = Projection
    {
      -- | The fields to return. If empty, all fields are returned. To only return the name of the document, use @[\'__name__\']@.
      fields :: (Core.Maybe [FieldReference])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Projection' with the minimum fields required to make a request.
newProjection 
    ::  Projection
newProjection = Projection {fields = Core.Nothing}

instance Core.FromJSON Projection where
        parseJSON
          = Core.withObject "Projection"
              (\ o ->
                 Projection Core.<$>
                   (o Core..:? "fields" Core..!= Core.mempty))

instance Core.ToJSON Projection where
        toJSON Projection{..}
          = Core.object
              (Core.catMaybes [("fields" Core..=) Core.<$> fields])


-- | A target specified by a query.
--
-- /See:/ 'newQueryTarget' smart constructor.
data QueryTarget = QueryTarget
    {
      -- | The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. For example: @projects\/my-project\/databases\/my-database\/documents@ or @projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom@
      parent :: (Core.Maybe Core.Text)
      -- | A structured query.
    , structuredQuery :: (Core.Maybe StructuredQuery)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryTarget' with the minimum fields required to make a request.
newQueryTarget 
    ::  QueryTarget
newQueryTarget =
  QueryTarget {parent = Core.Nothing, structuredQuery = Core.Nothing}

instance Core.FromJSON QueryTarget where
        parseJSON
          = Core.withObject "QueryTarget"
              (\ o ->
                 QueryTarget Core.<$>
                   (o Core..:? "parent") Core.<*>
                     (o Core..:? "structuredQuery"))

instance Core.ToJSON QueryTarget where
        toJSON QueryTarget{..}
          = Core.object
              (Core.catMaybes
                 [("parent" Core..=) Core.<$> parent,
                  ("structuredQuery" Core..=) Core.<$>
                    structuredQuery])


-- | Options for a transaction that can only be used to read documents.
--
-- /See:/ 'newReadOnly' smart constructor.
newtype ReadOnly = ReadOnly
    {
      -- | Reads documents at the given time. This may not be older than 60 seconds.
      readTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadOnly' with the minimum fields required to make a request.
newReadOnly 
    ::  ReadOnly
newReadOnly = ReadOnly {readTime = Core.Nothing}

instance Core.FromJSON ReadOnly where
        parseJSON
          = Core.withObject "ReadOnly"
              (\ o -> ReadOnly Core.<$> (o Core..:? "readTime"))

instance Core.ToJSON ReadOnly where
        toJSON ReadOnly{..}
          = Core.object
              (Core.catMaybes
                 [("readTime" Core..=) Core.<$> readTime])


-- | Options for a transaction that can be used to read and write documents.
--
-- /See:/ 'newReadWrite' smart constructor.
newtype ReadWrite = ReadWrite
    {
      -- | An optional transaction to retry.
      retryTransaction :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadWrite' with the minimum fields required to make a request.
newReadWrite 
    ::  ReadWrite
newReadWrite = ReadWrite {retryTransaction = Core.Nothing}

instance Core.FromJSON ReadWrite where
        parseJSON
          = Core.withObject "ReadWrite"
              (\ o ->
                 ReadWrite Core.<$> (o Core..:? "retryTransaction"))

instance Core.ToJSON ReadWrite where
        toJSON ReadWrite{..}
          = Core.object
              (Core.catMaybes
                 [("retryTransaction" Core..=) Core.<$>
                    retryTransaction])


-- | The request for Firestore.Rollback.
--
-- /See:/ 'newRollbackRequest' smart constructor.
newtype RollbackRequest = RollbackRequest
    {
      -- | Required. The transaction to roll back.
      transaction :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollbackRequest' with the minimum fields required to make a request.
newRollbackRequest 
    ::  RollbackRequest
newRollbackRequest = RollbackRequest {transaction = Core.Nothing}

instance Core.FromJSON RollbackRequest where
        parseJSON
          = Core.withObject "RollbackRequest"
              (\ o ->
                 RollbackRequest Core.<$> (o Core..:? "transaction"))

instance Core.ToJSON RollbackRequest where
        toJSON RollbackRequest{..}
          = Core.object
              (Core.catMaybes
                 [("transaction" Core..=) Core.<$> transaction])


-- | The request for Firestore.RunQuery.
--
-- /See:/ 'newRunQueryRequest' smart constructor.
data RunQueryRequest = RunQueryRequest
    {
      -- | Starts a new transaction and reads the documents. Defaults to a read-only transaction. The new transaction ID will be returned as the first response in the stream.
      newTransaction' :: (Core.Maybe TransactionOptions)
      -- | Reads documents as they were at the given time. This may not be older than 270 seconds.
    , readTime :: (Core.Maybe Core.DateTime')
      -- | A structured query.
    , structuredQuery :: (Core.Maybe StructuredQuery)
      -- | Run the query within an already active transaction. The value here is the opaque transaction ID to execute the query in.
    , transaction :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunQueryRequest' with the minimum fields required to make a request.
newRunQueryRequest 
    ::  RunQueryRequest
newRunQueryRequest =
  RunQueryRequest
    { newTransaction' = Core.Nothing
    , readTime = Core.Nothing
    , structuredQuery = Core.Nothing
    , transaction = Core.Nothing
    }

instance Core.FromJSON RunQueryRequest where
        parseJSON
          = Core.withObject "RunQueryRequest"
              (\ o ->
                 RunQueryRequest Core.<$>
                   (o Core..:? "newTransaction") Core.<*>
                     (o Core..:? "readTime")
                     Core.<*> (o Core..:? "structuredQuery")
                     Core.<*> (o Core..:? "transaction"))

instance Core.ToJSON RunQueryRequest where
        toJSON RunQueryRequest{..}
          = Core.object
              (Core.catMaybes
                 [("newTransaction" Core..=) Core.<$> newTransaction',
                  ("readTime" Core..=) Core.<$> readTime,
                  ("structuredQuery" Core..=) Core.<$> structuredQuery,
                  ("transaction" Core..=) Core.<$> transaction])


-- | The response for Firestore.RunQuery.
--
-- /See:/ 'newRunQueryResponse' smart constructor.
data RunQueryResponse = RunQueryResponse
    {
      -- | A query result, not set when reporting partial progress.
      document :: (Core.Maybe Document)
      -- | If present, Firestore has completely finished the request and no more documents will be returned.
    , done :: (Core.Maybe Core.Bool)
      -- | The time at which the document was read. This may be monotonically increasing; in this case, the previous documents in the result stream are guaranteed not to have changed between their @read_time@ and this one. If the query returns no results, a response with @read_time@ and no @document@ will be sent, and this represents the time at which the query was run.
    , readTime :: (Core.Maybe Core.DateTime')
      -- | The number of results that have been skipped due to an offset between the last response and the current response.
    , skippedResults :: (Core.Maybe Core.Int32)
      -- | The transaction that was started as part of this request. Can only be set in the first response, and only if RunQueryRequest.new_transaction was set in the request. If set, no other fields will be set in this response.
    , transaction :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunQueryResponse' with the minimum fields required to make a request.
newRunQueryResponse 
    ::  RunQueryResponse
newRunQueryResponse =
  RunQueryResponse
    { document = Core.Nothing
    , done = Core.Nothing
    , readTime = Core.Nothing
    , skippedResults = Core.Nothing
    , transaction = Core.Nothing
    }

instance Core.FromJSON RunQueryResponse where
        parseJSON
          = Core.withObject "RunQueryResponse"
              (\ o ->
                 RunQueryResponse Core.<$>
                   (o Core..:? "document") Core.<*> (o Core..:? "done")
                     Core.<*> (o Core..:? "readTime")
                     Core.<*> (o Core..:? "skippedResults")
                     Core.<*> (o Core..:? "transaction"))

instance Core.ToJSON RunQueryResponse where
        toJSON RunQueryResponse{..}
          = Core.object
              (Core.catMaybes
                 [("document" Core..=) Core.<$> document,
                  ("done" Core..=) Core.<$> done,
                  ("readTime" Core..=) Core.<$> readTime,
                  ("skippedResults" Core..=) Core.<$> skippedResults,
                  ("transaction" Core..=) Core.<$> transaction])


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*>
                     (o Core..:? "details" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..} = Core.toJSON addtional


-- | A Firestore query.
--
-- /See:/ 'newStructuredQuery' smart constructor.
data StructuredQuery = StructuredQuery
    {
      -- | A end point for the query results.
      endAt :: (Core.Maybe Cursor)
      -- | The collections to query.
    , from :: (Core.Maybe [CollectionSelector])
      -- | The maximum number of results to return. Applies after all other constraints. Must be >= 0 if specified.
    , limit :: (Core.Maybe Core.Int32)
      -- | The number of results to skip. Applies before limit, but after all other constraints. Must be >= 0 if specified.
    , offset :: (Core.Maybe Core.Int32)
      -- | The order to apply to the query results. Firestore guarantees a stable ordering through the following rules: * Any field required to appear in @order_by@, that is not already specified in @order_by@, is appended to the order in field name order by default. * If an order on @__name__@ is not specified, it is appended by default. Fields are appended with the same sort direction as the last order specified, or \'ASCENDING\' if no order was specified. For example: * @SELECT * FROM Foo ORDER BY A@ becomes @SELECT * FROM Foo ORDER BY A, __name__@ * @SELECT * FROM Foo ORDER BY A DESC@ becomes @SELECT * FROM Foo ORDER BY A DESC, __name__ DESC@ * @SELECT * FROM Foo WHERE A > 1@ becomes @SELECT * FROM Foo WHERE A > 1 ORDER BY A, __name__@
    , orderBy :: (Core.Maybe [Order])
      -- | The projection to return.
    , select :: (Core.Maybe Projection)
      -- | A starting point for the query results.
    , startAt :: (Core.Maybe Cursor)
      -- | The filter to apply.
    , where' :: (Core.Maybe Filter)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StructuredQuery' with the minimum fields required to make a request.
newStructuredQuery 
    ::  StructuredQuery
newStructuredQuery =
  StructuredQuery
    { endAt = Core.Nothing
    , from = Core.Nothing
    , limit = Core.Nothing
    , offset = Core.Nothing
    , orderBy = Core.Nothing
    , select = Core.Nothing
    , startAt = Core.Nothing
    , where' = Core.Nothing
    }

instance Core.FromJSON StructuredQuery where
        parseJSON
          = Core.withObject "StructuredQuery"
              (\ o ->
                 StructuredQuery Core.<$>
                   (o Core..:? "endAt") Core.<*>
                     (o Core..:? "from" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "limit")
                     Core.<*> (o Core..:? "offset")
                     Core.<*> (o Core..:? "orderBy" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "select")
                     Core.<*> (o Core..:? "startAt")
                     Core.<*> (o Core..:? "where"))

instance Core.ToJSON StructuredQuery where
        toJSON StructuredQuery{..}
          = Core.object
              (Core.catMaybes
                 [("endAt" Core..=) Core.<$> endAt,
                  ("from" Core..=) Core.<$> from,
                  ("limit" Core..=) Core.<$> limit,
                  ("offset" Core..=) Core.<$> offset,
                  ("orderBy" Core..=) Core.<$> orderBy,
                  ("select" Core..=) Core.<$> select,
                  ("startAt" Core..=) Core.<$> startAt,
                  ("where" Core..=) Core.<$> where'])


-- | A specification of a set of documents to listen to.
--
-- /See:/ 'newTarget' smart constructor.
data Target = Target
    {
      -- | A target specified by a set of document names.
      documents :: (Core.Maybe DocumentsTarget)
      -- | If the target should be removed once it is current and consistent.
    , once :: (Core.Maybe Core.Bool)
      -- | A target specified by a query.
    , query :: (Core.Maybe QueryTarget)
      -- | Start listening after a specific @read_time@. The client must know the state of matching documents at this time.
    , readTime :: (Core.Maybe Core.DateTime')
      -- | A resume token from a prior TargetChange for an identical target. Using a resume token with a different target is unsupported and may fail.
    , resumeToken :: (Core.Maybe Core.Base64)
      -- | The target ID that identifies the target on the stream. Must be a positive number and non-zero.
    , targetId :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Target' with the minimum fields required to make a request.
newTarget 
    ::  Target
newTarget =
  Target
    { documents = Core.Nothing
    , once = Core.Nothing
    , query = Core.Nothing
    , readTime = Core.Nothing
    , resumeToken = Core.Nothing
    , targetId = Core.Nothing
    }

instance Core.FromJSON Target where
        parseJSON
          = Core.withObject "Target"
              (\ o ->
                 Target Core.<$>
                   (o Core..:? "documents") Core.<*> (o Core..:? "once")
                     Core.<*> (o Core..:? "query")
                     Core.<*> (o Core..:? "readTime")
                     Core.<*> (o Core..:? "resumeToken")
                     Core.<*> (o Core..:? "targetId"))

instance Core.ToJSON Target where
        toJSON Target{..}
          = Core.object
              (Core.catMaybes
                 [("documents" Core..=) Core.<$> documents,
                  ("once" Core..=) Core.<$> once,
                  ("query" Core..=) Core.<$> query,
                  ("readTime" Core..=) Core.<$> readTime,
                  ("resumeToken" Core..=) Core.<$> resumeToken,
                  ("targetId" Core..=) Core.<$> targetId])


-- | Targets being watched have changed.
--
-- /See:/ 'newTargetChange' smart constructor.
data TargetChange = TargetChange
    {
      -- | The error that resulted in this change, if applicable.
      cause :: (Core.Maybe Status)
      -- | The consistent @read_time@ for the given @target_ids@ (omitted when the target/ids are not at a consistent snapshot). The stream is guaranteed to send a @read_time@ with @target_ids@ empty whenever the entire stream reaches a new consistent snapshot. ADD, CURRENT, and RESET messages are guaranteed to (eventually) result in a new consistent snapshot (while NO/CHANGE and REMOVE messages are not). For a given stream, @read_time@ is guaranteed to be monotonically increasing.
    , readTime :: (Core.Maybe Core.DateTime')
      -- | A token that can be used to resume the stream for the given @target_ids@, or all targets if @target_ids@ is empty. Not set on every target change.
    , resumeToken :: (Core.Maybe Core.Base64)
      -- | The type of change that occurred.
    , targetChangeType :: (Core.Maybe TargetChange_TargetChangeType)
      -- | The target IDs of targets that have changed. If empty, the change applies to all targets. The order of the target IDs is not defined.
    , targetIds :: (Core.Maybe [Core.Int32])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetChange' with the minimum fields required to make a request.
newTargetChange 
    ::  TargetChange
newTargetChange =
  TargetChange
    { cause = Core.Nothing
    , readTime = Core.Nothing
    , resumeToken = Core.Nothing
    , targetChangeType = Core.Nothing
    , targetIds = Core.Nothing
    }

instance Core.FromJSON TargetChange where
        parseJSON
          = Core.withObject "TargetChange"
              (\ o ->
                 TargetChange Core.<$>
                   (o Core..:? "cause") Core.<*> (o Core..:? "readTime")
                     Core.<*> (o Core..:? "resumeToken")
                     Core.<*> (o Core..:? "targetChangeType")
                     Core.<*>
                     (o Core..:? "targetIds" Core..!= Core.mempty))

instance Core.ToJSON TargetChange where
        toJSON TargetChange{..}
          = Core.object
              (Core.catMaybes
                 [("cause" Core..=) Core.<$> cause,
                  ("readTime" Core..=) Core.<$> readTime,
                  ("resumeToken" Core..=) Core.<$> resumeToken,
                  ("targetChangeType" Core..=) Core.<$>
                    targetChangeType,
                  ("targetIds" Core..=) Core.<$> targetIds])


-- | Options for creating a new transaction.
--
-- /See:/ 'newTransactionOptions' smart constructor.
data TransactionOptions = TransactionOptions
    {
      -- | The transaction can only be used for read operations.
      readOnly :: (Core.Maybe ReadOnly)
      -- | The transaction can be used for both read and write operations.
    , readWrite :: (Core.Maybe ReadWrite)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransactionOptions' with the minimum fields required to make a request.
newTransactionOptions 
    ::  TransactionOptions
newTransactionOptions =
  TransactionOptions {readOnly = Core.Nothing, readWrite = Core.Nothing}

instance Core.FromJSON TransactionOptions where
        parseJSON
          = Core.withObject "TransactionOptions"
              (\ o ->
                 TransactionOptions Core.<$>
                   (o Core..:? "readOnly") Core.<*>
                     (o Core..:? "readWrite"))

instance Core.ToJSON TransactionOptions where
        toJSON TransactionOptions{..}
          = Core.object
              (Core.catMaybes
                 [("readOnly" Core..=) Core.<$> readOnly,
                  ("readWrite" Core..=) Core.<$> readWrite])


-- | A filter with a single operand.
--
-- /See:/ 'newUnaryFilter' smart constructor.
data UnaryFilter = UnaryFilter
    {
      -- | The field to which to apply the operator.
      field :: (Core.Maybe FieldReference)
      -- | The unary operator to apply.
    , op :: (Core.Maybe UnaryFilter_Op)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnaryFilter' with the minimum fields required to make a request.
newUnaryFilter 
    ::  UnaryFilter
newUnaryFilter = UnaryFilter {field = Core.Nothing, op = Core.Nothing}

instance Core.FromJSON UnaryFilter where
        parseJSON
          = Core.withObject "UnaryFilter"
              (\ o ->
                 UnaryFilter Core.<$>
                   (o Core..:? "field") Core.<*> (o Core..:? "op"))

instance Core.ToJSON UnaryFilter where
        toJSON UnaryFilter{..}
          = Core.object
              (Core.catMaybes
                 [("field" Core..=) Core.<$> field,
                  ("op" Core..=) Core.<$> op])


-- | A message that can hold any of the supported value types.
--
-- /See:/ 'newValue' smart constructor.
data Value = Value
    {
      -- | An array value. Cannot directly contain another array value, though can contain an map which contains another array.
      arrayValue :: (Core.Maybe ArrayValue)
      -- | A boolean value.
    , booleanValue :: (Core.Maybe Core.Bool)
      -- | A bytes value. Must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes are considered by queries.
    , bytesValue :: (Core.Maybe Core.Base64)
      -- | A double value.
    , doubleValue :: (Core.Maybe Core.Double)
      -- | A geo point value representing a point on the surface of Earth.
    , geoPointValue :: (Core.Maybe LatLng)
      -- | An integer value.
    , integerValue :: (Core.Maybe Core.Int64)
      -- | A map value.
    , mapValue :: (Core.Maybe MapValue)
      -- | A null value.
    , nullValue :: (Core.Maybe Value_NullValue)
      -- | A reference to a document. For example: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@.
    , referenceValue :: (Core.Maybe Core.Text)
      -- | A string value. The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes of the UTF-8 representation are considered by queries.
    , stringValue :: (Core.Maybe Core.Text)
      -- | A timestamp value. Precise only to microseconds. When stored, any additional precision is rounded down.
    , timestampValue :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Value' with the minimum fields required to make a request.
newValue 
    ::  Value
newValue =
  Value
    { arrayValue = Core.Nothing
    , booleanValue = Core.Nothing
    , bytesValue = Core.Nothing
    , doubleValue = Core.Nothing
    , geoPointValue = Core.Nothing
    , integerValue = Core.Nothing
    , mapValue = Core.Nothing
    , nullValue = Core.Nothing
    , referenceValue = Core.Nothing
    , stringValue = Core.Nothing
    , timestampValue = Core.Nothing
    }

instance Core.FromJSON Value where
        parseJSON
          = Core.withObject "Value"
              (\ o ->
                 Value Core.<$>
                   (o Core..:? "arrayValue") Core.<*>
                     (o Core..:? "booleanValue")
                     Core.<*> (o Core..:? "bytesValue")
                     Core.<*> (o Core..:? "doubleValue")
                     Core.<*> (o Core..:? "geoPointValue")
                     Core.<*> (o Core..:? "integerValue")
                     Core.<*> (o Core..:? "mapValue")
                     Core.<*> (o Core..:? "nullValue")
                     Core.<*> (o Core..:? "referenceValue")
                     Core.<*> (o Core..:? "stringValue")
                     Core.<*> (o Core..:? "timestampValue"))

instance Core.ToJSON Value where
        toJSON Value{..}
          = Core.object
              (Core.catMaybes
                 [("arrayValue" Core..=) Core.<$> arrayValue,
                  ("booleanValue" Core..=) Core.<$> booleanValue,
                  ("bytesValue" Core..=) Core.<$> bytesValue,
                  ("doubleValue" Core..=) Core.<$> doubleValue,
                  ("geoPointValue" Core..=) Core.<$> geoPointValue,
                  ("integerValue" Core..=) Core.. Core.AsText Core.<$>
                    integerValue,
                  ("mapValue" Core..=) Core.<$> mapValue,
                  ("nullValue" Core..=) Core.<$> nullValue,
                  ("referenceValue" Core..=) Core.<$> referenceValue,
                  ("stringValue" Core..=) Core.<$> stringValue,
                  ("timestampValue" Core..=) Core.<$> timestampValue])


-- | A write on a document.
--
-- /See:/ 'newWrite' smart constructor.
data Write = Write
    {
      -- | An optional precondition on the document. The write will fail if this is set and not met by the target document.
      currentDocument :: (Core.Maybe Precondition)
      -- | A document name to delete. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@.
    , delete :: (Core.Maybe Core.Text)
      -- | Applies a transformation to a document.
    , transform :: (Core.Maybe DocumentTransform)
      -- | A document to write.
    , update :: (Core.Maybe Document)
      -- | The fields to update in this write. This field can be set only when the operation is @update@. If the mask is not set for an @update@ and the document exists, any existing data will be overwritten. If the mask is set and the document on the server has fields not covered by the mask, they are left unchanged. Fields referenced in the mask, but not present in the input document, are deleted from the document on the server. The field paths in this mask must not contain a reserved field name.
    , updateMask :: (Core.Maybe DocumentMask)
      -- | The transforms to perform after update. This field can be set only when the operation is @update@. If present, this write is equivalent to performing @update@ and @transform@ to the same document atomically and in order.
    , updateTransforms :: (Core.Maybe [FieldTransform])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Write' with the minimum fields required to make a request.
newWrite 
    ::  Write
newWrite =
  Write
    { currentDocument = Core.Nothing
    , delete = Core.Nothing
    , transform = Core.Nothing
    , update = Core.Nothing
    , updateMask = Core.Nothing
    , updateTransforms = Core.Nothing
    }

instance Core.FromJSON Write where
        parseJSON
          = Core.withObject "Write"
              (\ o ->
                 Write Core.<$>
                   (o Core..:? "currentDocument") Core.<*>
                     (o Core..:? "delete")
                     Core.<*> (o Core..:? "transform")
                     Core.<*> (o Core..:? "update")
                     Core.<*> (o Core..:? "updateMask")
                     Core.<*>
                     (o Core..:? "updateTransforms" Core..!= Core.mempty))

instance Core.ToJSON Write where
        toJSON Write{..}
          = Core.object
              (Core.catMaybes
                 [("currentDocument" Core..=) Core.<$>
                    currentDocument,
                  ("delete" Core..=) Core.<$> delete,
                  ("transform" Core..=) Core.<$> transform,
                  ("update" Core..=) Core.<$> update,
                  ("updateMask" Core..=) Core.<$> updateMask,
                  ("updateTransforms" Core..=) Core.<$>
                    updateTransforms])


-- | The request for Firestore.Write. The first request creates a stream, or resumes an existing one from a token. When creating a new stream, the server replies with a response containing only an ID and a token, to use in the next request. When resuming a stream, the server first streams any responses later than the given token, then a response containing only an up-to-date token, to use in the next request.
--
-- /See:/ 'newWriteRequest' smart constructor.
data WriteRequest = WriteRequest
    {
      -- | Labels associated with this write request.
      labels :: (Core.Maybe WriteRequest_Labels)
      -- | The ID of the write stream to resume. This may only be set in the first message. When left empty, a new write stream will be created.
    , streamId :: (Core.Maybe Core.Text)
      -- | A stream token that was previously sent by the server. The client should set this field to the token from the most recent WriteResponse it has received. This acknowledges that the client has received responses up to this token. After sending this token, earlier tokens may not be used anymore. The server may close the stream if there are too many unacknowledged responses. Leave this field unset when creating a new stream. To resume a stream at a specific point, set this field and the @stream_id@ field. Leave this field unset when creating a new stream.
    , streamToken :: (Core.Maybe Core.Base64)
      -- | The writes to apply. Always executed atomically and in order. This must be empty on the first request. This may be empty on the last request. This must not be empty on all other requests.
    , writes :: (Core.Maybe [Write])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteRequest' with the minimum fields required to make a request.
newWriteRequest 
    ::  WriteRequest
newWriteRequest =
  WriteRequest
    { labels = Core.Nothing
    , streamId = Core.Nothing
    , streamToken = Core.Nothing
    , writes = Core.Nothing
    }

instance Core.FromJSON WriteRequest where
        parseJSON
          = Core.withObject "WriteRequest"
              (\ o ->
                 WriteRequest Core.<$>
                   (o Core..:? "labels") Core.<*>
                     (o Core..:? "streamId")
                     Core.<*> (o Core..:? "streamToken")
                     Core.<*> (o Core..:? "writes" Core..!= Core.mempty))

instance Core.ToJSON WriteRequest where
        toJSON WriteRequest{..}
          = Core.object
              (Core.catMaybes
                 [("labels" Core..=) Core.<$> labels,
                  ("streamId" Core..=) Core.<$> streamId,
                  ("streamToken" Core..=) Core.<$> streamToken,
                  ("writes" Core..=) Core.<$> writes])


-- | Labels associated with this write request.
--
-- /See:/ 'newWriteRequest_Labels' smart constructor.
newtype WriteRequest_Labels = WriteRequest_Labels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteRequest_Labels' with the minimum fields required to make a request.
newWriteRequest_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> WriteRequest_Labels
newWriteRequest_Labels addtional = WriteRequest_Labels {addtional = addtional}

instance Core.FromJSON WriteRequest_Labels where
        parseJSON
          = Core.withObject "WriteRequest_Labels"
              (\ o ->
                 WriteRequest_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON WriteRequest_Labels where
        toJSON WriteRequest_Labels{..}
          = Core.toJSON addtional


-- | The response for Firestore.Write.
--
-- /See:/ 'newWriteResponse' smart constructor.
data WriteResponse = WriteResponse
    {
      -- | The time at which the commit occurred. Any read with an equal or greater @read_time@ is guaranteed to see the effects of the write.
      commitTime :: (Core.Maybe Core.DateTime')
      -- | The ID of the stream. Only set on the first message, when a new stream was created.
    , streamId :: (Core.Maybe Core.Text)
      -- | A token that represents the position of this response in the stream. This can be used by a client to resume the stream at this point. This field is always set.
    , streamToken :: (Core.Maybe Core.Base64)
      -- | The result of applying the writes. This i-th write result corresponds to the i-th write in the request.
    , writeResults :: (Core.Maybe [WriteResult])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteResponse' with the minimum fields required to make a request.
newWriteResponse 
    ::  WriteResponse
newWriteResponse =
  WriteResponse
    { commitTime = Core.Nothing
    , streamId = Core.Nothing
    , streamToken = Core.Nothing
    , writeResults = Core.Nothing
    }

instance Core.FromJSON WriteResponse where
        parseJSON
          = Core.withObject "WriteResponse"
              (\ o ->
                 WriteResponse Core.<$>
                   (o Core..:? "commitTime") Core.<*>
                     (o Core..:? "streamId")
                     Core.<*> (o Core..:? "streamToken")
                     Core.<*>
                     (o Core..:? "writeResults" Core..!= Core.mempty))

instance Core.ToJSON WriteResponse where
        toJSON WriteResponse{..}
          = Core.object
              (Core.catMaybes
                 [("commitTime" Core..=) Core.<$> commitTime,
                  ("streamId" Core..=) Core.<$> streamId,
                  ("streamToken" Core..=) Core.<$> streamToken,
                  ("writeResults" Core..=) Core.<$> writeResults])


-- | The result of applying a write.
--
-- /See:/ 'newWriteResult' smart constructor.
data WriteResult = WriteResult
    {
      -- | The results of applying each DocumentTransform.FieldTransform, in the same order.
      transformResults :: (Core.Maybe [Value])
      -- | The last update time of the document after applying the write. Not set after a @delete@. If the write did not actually change the document, this will be the previous update_time.
    , updateTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteResult' with the minimum fields required to make a request.
newWriteResult 
    ::  WriteResult
newWriteResult =
  WriteResult {transformResults = Core.Nothing, updateTime = Core.Nothing}

instance Core.FromJSON WriteResult where
        parseJSON
          = Core.withObject "WriteResult"
              (\ o ->
                 WriteResult Core.<$>
                   (o Core..:? "transformResults" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON WriteResult where
        toJSON WriteResult{..}
          = Core.object
              (Core.catMaybes
                 [("transformResults" Core..=) Core.<$>
                    transformResults,
                  ("updateTime" Core..=) Core.<$> updateTime])

