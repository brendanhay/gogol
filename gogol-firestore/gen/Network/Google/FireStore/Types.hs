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
-- Module      : Network.Google.FireStore.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.FireStore.Types
  ( -- * Configuration
    fireStoreService,

    -- * OAuth Scopes
    cloudPlatformScope,
    datastoreScope,

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

import Network.Google.FireStore.Internal.Product
import Network.Google.FireStore.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Cloud Firestore API. This contains the host and root path used as a starting point for constructing service requests.
fireStoreService :: Core.ServiceConfig
fireStoreService =
  Core.defaultService
    (Core.ServiceId "firestore:v1")
    "firestore.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View and manage your Google Cloud Datastore data
datastoreScope :: Core.Proxy '["https://www.googleapis.com/auth/datastore"]
datastoreScope = Core.Proxy
