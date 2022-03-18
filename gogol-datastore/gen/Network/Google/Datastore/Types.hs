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
-- Module      : Network.Google.Datastore.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Datastore.Types
  ( -- * Configuration
    datastoreService,

    -- * OAuth Scopes
    cloudPlatformScope,
    datastoreScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AllocateIdsRequest
    AllocateIdsRequest (..),
    newAllocateIdsRequest,

    -- ** AllocateIdsResponse
    AllocateIdsResponse (..),
    newAllocateIdsResponse,

    -- ** ArrayValue
    ArrayValue (..),
    newArrayValue,

    -- ** BeginTransactionRequest
    BeginTransactionRequest (..),
    newBeginTransactionRequest,

    -- ** BeginTransactionResponse
    BeginTransactionResponse (..),
    newBeginTransactionResponse,

    -- ** CommitRequest
    CommitRequest (..),
    newCommitRequest,

    -- ** CommitRequest_Mode
    CommitRequest_Mode (..),

    -- ** CommitResponse
    CommitResponse (..),
    newCommitResponse,

    -- ** CompositeFilter
    CompositeFilter (..),
    newCompositeFilter,

    -- ** CompositeFilter_Op
    CompositeFilter_Op (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Entity
    Entity (..),
    newEntity,

    -- ** Entity_Properties
    Entity_Properties (..),
    newEntity_Properties,

    -- ** EntityResult
    EntityResult (..),
    newEntityResult,

    -- ** Filter
    Filter (..),
    newFilter,

    -- ** GoogleDatastoreAdminV1CommonMetadata
    GoogleDatastoreAdminV1CommonMetadata (..),
    newGoogleDatastoreAdminV1CommonMetadata,

    -- ** GoogleDatastoreAdminV1CommonMetadata_Labels
    GoogleDatastoreAdminV1CommonMetadata_Labels (..),
    newGoogleDatastoreAdminV1CommonMetadata_Labels,

    -- ** GoogleDatastoreAdminV1CommonMetadata_OperationType
    GoogleDatastoreAdminV1CommonMetadata_OperationType (..),

    -- ** GoogleDatastoreAdminV1CommonMetadata_State
    GoogleDatastoreAdminV1CommonMetadata_State (..),

    -- ** GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
    GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata (..),
    newGoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata,

    -- ** GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState
    GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState (..),

    -- ** GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
    GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep (..),

    -- ** GoogleDatastoreAdminV1EntityFilter
    GoogleDatastoreAdminV1EntityFilter (..),
    newGoogleDatastoreAdminV1EntityFilter,

    -- ** GoogleDatastoreAdminV1ExportEntitiesMetadata
    GoogleDatastoreAdminV1ExportEntitiesMetadata (..),
    newGoogleDatastoreAdminV1ExportEntitiesMetadata,

    -- ** GoogleDatastoreAdminV1ExportEntitiesRequest
    GoogleDatastoreAdminV1ExportEntitiesRequest (..),
    newGoogleDatastoreAdminV1ExportEntitiesRequest,

    -- ** GoogleDatastoreAdminV1ExportEntitiesRequest_Labels
    GoogleDatastoreAdminV1ExportEntitiesRequest_Labels (..),
    newGoogleDatastoreAdminV1ExportEntitiesRequest_Labels,

    -- ** GoogleDatastoreAdminV1ExportEntitiesResponse
    GoogleDatastoreAdminV1ExportEntitiesResponse (..),
    newGoogleDatastoreAdminV1ExportEntitiesResponse,

    -- ** GoogleDatastoreAdminV1ImportEntitiesMetadata
    GoogleDatastoreAdminV1ImportEntitiesMetadata (..),
    newGoogleDatastoreAdminV1ImportEntitiesMetadata,

    -- ** GoogleDatastoreAdminV1ImportEntitiesRequest
    GoogleDatastoreAdminV1ImportEntitiesRequest (..),
    newGoogleDatastoreAdminV1ImportEntitiesRequest,

    -- ** GoogleDatastoreAdminV1ImportEntitiesRequest_Labels
    GoogleDatastoreAdminV1ImportEntitiesRequest_Labels (..),
    newGoogleDatastoreAdminV1ImportEntitiesRequest_Labels,

    -- ** GoogleDatastoreAdminV1Index
    GoogleDatastoreAdminV1Index (..),
    newGoogleDatastoreAdminV1Index,

    -- ** GoogleDatastoreAdminV1Index_Ancestor
    GoogleDatastoreAdminV1Index_Ancestor (..),

    -- ** GoogleDatastoreAdminV1Index_State
    GoogleDatastoreAdminV1Index_State (..),

    -- ** GoogleDatastoreAdminV1IndexOperationMetadata
    GoogleDatastoreAdminV1IndexOperationMetadata (..),
    newGoogleDatastoreAdminV1IndexOperationMetadata,

    -- ** GoogleDatastoreAdminV1IndexedProperty
    GoogleDatastoreAdminV1IndexedProperty (..),
    newGoogleDatastoreAdminV1IndexedProperty,

    -- ** GoogleDatastoreAdminV1IndexedProperty_Direction
    GoogleDatastoreAdminV1IndexedProperty_Direction (..),

    -- ** GoogleDatastoreAdminV1ListIndexesResponse
    GoogleDatastoreAdminV1ListIndexesResponse (..),
    newGoogleDatastoreAdminV1ListIndexesResponse,

    -- ** GoogleDatastoreAdminV1MigrationProgressEvent
    GoogleDatastoreAdminV1MigrationProgressEvent (..),
    newGoogleDatastoreAdminV1MigrationProgressEvent,

    -- ** GoogleDatastoreAdminV1MigrationProgressEvent_Step
    GoogleDatastoreAdminV1MigrationProgressEvent_Step (..),

    -- ** GoogleDatastoreAdminV1MigrationStateEvent
    GoogleDatastoreAdminV1MigrationStateEvent (..),
    newGoogleDatastoreAdminV1MigrationStateEvent,

    -- ** GoogleDatastoreAdminV1MigrationStateEvent_State
    GoogleDatastoreAdminV1MigrationStateEvent_State (..),

    -- ** GoogleDatastoreAdminV1PrepareStepDetails
    GoogleDatastoreAdminV1PrepareStepDetails (..),
    newGoogleDatastoreAdminV1PrepareStepDetails,

    -- ** GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode
    GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode (..),

    -- ** GoogleDatastoreAdminV1Progress
    GoogleDatastoreAdminV1Progress (..),
    newGoogleDatastoreAdminV1Progress,

    -- ** GoogleDatastoreAdminV1RedirectWritesStepDetails
    GoogleDatastoreAdminV1RedirectWritesStepDetails (..),
    newGoogleDatastoreAdminV1RedirectWritesStepDetails,

    -- ** GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode
    GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode (..),

    -- ** GoogleDatastoreAdminV1beta1CommonMetadata
    GoogleDatastoreAdminV1beta1CommonMetadata (..),
    newGoogleDatastoreAdminV1beta1CommonMetadata,

    -- ** GoogleDatastoreAdminV1beta1CommonMetadata_Labels
    GoogleDatastoreAdminV1beta1CommonMetadata_Labels (..),
    newGoogleDatastoreAdminV1beta1CommonMetadata_Labels,

    -- ** GoogleDatastoreAdminV1beta1CommonMetadata_OperationType
    GoogleDatastoreAdminV1beta1CommonMetadata_OperationType (..),

    -- ** GoogleDatastoreAdminV1beta1CommonMetadata_State
    GoogleDatastoreAdminV1beta1CommonMetadata_State (..),

    -- ** GoogleDatastoreAdminV1beta1EntityFilter
    GoogleDatastoreAdminV1beta1EntityFilter (..),
    newGoogleDatastoreAdminV1beta1EntityFilter,

    -- ** GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
    GoogleDatastoreAdminV1beta1ExportEntitiesMetadata (..),
    newGoogleDatastoreAdminV1beta1ExportEntitiesMetadata,

    -- ** GoogleDatastoreAdminV1beta1ExportEntitiesResponse
    GoogleDatastoreAdminV1beta1ExportEntitiesResponse (..),
    newGoogleDatastoreAdminV1beta1ExportEntitiesResponse,

    -- ** GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
    GoogleDatastoreAdminV1beta1ImportEntitiesMetadata (..),
    newGoogleDatastoreAdminV1beta1ImportEntitiesMetadata,

    -- ** GoogleDatastoreAdminV1beta1Progress
    GoogleDatastoreAdminV1beta1Progress (..),
    newGoogleDatastoreAdminV1beta1Progress,

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

    -- ** GqlQuery
    GqlQuery (..),
    newGqlQuery,

    -- ** GqlQuery_NamedBindings
    GqlQuery_NamedBindings (..),
    newGqlQuery_NamedBindings,

    -- ** GqlQueryParameter
    GqlQueryParameter (..),
    newGqlQueryParameter,

    -- ** Key
    Key (..),
    newKey,

    -- ** KindExpression
    KindExpression (..),
    newKindExpression,

    -- ** LatLng
    LatLng (..),
    newLatLng,

    -- ** LookupRequest
    LookupRequest (..),
    newLookupRequest,

    -- ** LookupResponse
    LookupResponse (..),
    newLookupResponse,

    -- ** Mutation
    Mutation (..),
    newMutation,

    -- ** MutationResult
    MutationResult (..),
    newMutationResult,

    -- ** PartitionId
    PartitionId (..),
    newPartitionId,

    -- ** PathElement
    PathElement (..),
    newPathElement,

    -- ** Projection
    Projection (..),
    newProjection,

    -- ** PropertyFilter
    PropertyFilter (..),
    newPropertyFilter,

    -- ** PropertyFilter_Op
    PropertyFilter_Op (..),

    -- ** PropertyOrder
    PropertyOrder (..),
    newPropertyOrder,

    -- ** PropertyOrder_Direction
    PropertyOrder_Direction (..),

    -- ** PropertyReference
    PropertyReference (..),
    newPropertyReference,

    -- ** Query
    Query (..),
    newQuery,

    -- ** QueryResultBatch
    QueryResultBatch (..),
    newQueryResultBatch,

    -- ** QueryResultBatch_EntityResultType
    QueryResultBatch_EntityResultType (..),

    -- ** QueryResultBatch_MoreResults
    QueryResultBatch_MoreResults (..),

    -- ** ReadOnly
    ReadOnly (..),
    newReadOnly,

    -- ** ReadOptions
    ReadOptions (..),
    newReadOptions,

    -- ** ReadOptions_ReadConsistency
    ReadOptions_ReadConsistency (..),

    -- ** ReadWrite
    ReadWrite (..),
    newReadWrite,

    -- ** ReserveIdsRequest
    ReserveIdsRequest (..),
    newReserveIdsRequest,

    -- ** ReserveIdsResponse
    ReserveIdsResponse (..),
    newReserveIdsResponse,

    -- ** RollbackRequest
    RollbackRequest (..),
    newRollbackRequest,

    -- ** RollbackResponse
    RollbackResponse (..),
    newRollbackResponse,

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

    -- ** TransactionOptions
    TransactionOptions (..),
    newTransactionOptions,

    -- ** Value
    Value (..),
    newValue,

    -- ** Value_NullValue
    Value_NullValue (..),
  )
where

import Network.Google.Datastore.Internal.Product
import Network.Google.Datastore.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Cloud Datastore API. This contains the host and root path used as a starting point for constructing service requests.
datastoreService :: Core.ServiceConfig
datastoreService =
  Core.defaultService
    (Core.ServiceId "datastore:v1")
    "datastore.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View and manage your Google Cloud Datastore data
datastoreScope :: Core.Proxy '["https://www.googleapis.com/auth/datastore"]
datastoreScope = Core.Proxy
