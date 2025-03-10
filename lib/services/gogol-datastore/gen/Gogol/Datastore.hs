{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Datastore
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses the schemaless NoSQL database to provide fully managed, robust, scalable storage for your application.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference>
module Gogol.Datastore
  ( -- * Configuration
    datastoreService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Datastore'FullControl,

    -- * Resources

    -- ** datastore.projects.allocateIds
    DatastoreProjectsAllocateIdsResource,
    DatastoreProjectsAllocateIds (..),
    newDatastoreProjectsAllocateIds,

    -- ** datastore.projects.beginTransaction
    DatastoreProjectsBeginTransactionResource,
    DatastoreProjectsBeginTransaction (..),
    newDatastoreProjectsBeginTransaction,

    -- ** datastore.projects.commit
    DatastoreProjectsCommitResource,
    DatastoreProjectsCommit (..),
    newDatastoreProjectsCommit,

    -- ** datastore.projects.export
    DatastoreProjectsExportResource,
    DatastoreProjectsExport (..),
    newDatastoreProjectsExport,

    -- ** datastore.projects.import
    DatastoreProjectsImportResource,
    DatastoreProjectsImport (..),
    newDatastoreProjectsImport,

    -- ** datastore.projects.indexes.create
    DatastoreProjectsIndexesCreateResource,
    DatastoreProjectsIndexesCreate (..),
    newDatastoreProjectsIndexesCreate,

    -- ** datastore.projects.indexes.delete
    DatastoreProjectsIndexesDeleteResource,
    DatastoreProjectsIndexesDelete (..),
    newDatastoreProjectsIndexesDelete,

    -- ** datastore.projects.indexes.get
    DatastoreProjectsIndexesGetResource,
    DatastoreProjectsIndexesGet (..),
    newDatastoreProjectsIndexesGet,

    -- ** datastore.projects.indexes.list
    DatastoreProjectsIndexesListResource,
    DatastoreProjectsIndexesList (..),
    newDatastoreProjectsIndexesList,

    -- ** datastore.projects.lookup
    DatastoreProjectsLookupResource,
    DatastoreProjectsLookup (..),
    newDatastoreProjectsLookup,

    -- ** datastore.projects.operations.cancel
    DatastoreProjectsOperationsCancelResource,
    DatastoreProjectsOperationsCancel (..),
    newDatastoreProjectsOperationsCancel,

    -- ** datastore.projects.operations.delete
    DatastoreProjectsOperationsDeleteResource,
    DatastoreProjectsOperationsDelete (..),
    newDatastoreProjectsOperationsDelete,

    -- ** datastore.projects.operations.get
    DatastoreProjectsOperationsGetResource,
    DatastoreProjectsOperationsGet (..),
    newDatastoreProjectsOperationsGet,

    -- ** datastore.projects.operations.list
    DatastoreProjectsOperationsListResource,
    DatastoreProjectsOperationsList (..),
    newDatastoreProjectsOperationsList,

    -- ** datastore.projects.reserveIds
    DatastoreProjectsReserveIdsResource,
    DatastoreProjectsReserveIds (..),
    newDatastoreProjectsReserveIds,

    -- ** datastore.projects.rollback
    DatastoreProjectsRollbackResource,
    DatastoreProjectsRollback (..),
    newDatastoreProjectsRollback,

    -- ** datastore.projects.runAggregationQuery
    DatastoreProjectsRunAggregationQueryResource,
    DatastoreProjectsRunAggregationQuery (..),
    newDatastoreProjectsRunAggregationQuery,

    -- ** datastore.projects.runQuery
    DatastoreProjectsRunQueryResource,
    DatastoreProjectsRunQuery (..),
    newDatastoreProjectsRunQuery,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Aggregation
    Aggregation (..),
    newAggregation,

    -- ** AggregationQuery
    AggregationQuery (..),
    newAggregationQuery,

    -- ** AggregationResult
    AggregationResult (..),
    newAggregationResult,

    -- ** AggregationResult_AggregateProperties
    AggregationResult_AggregateProperties (..),
    newAggregationResult_AggregateProperties,

    -- ** AggregationResultBatch
    AggregationResultBatch (..),
    newAggregationResultBatch,

    -- ** AggregationResultBatch_MoreResults
    AggregationResultBatch_MoreResults (..),

    -- ** AllocateIdsRequest
    AllocateIdsRequest (..),
    newAllocateIdsRequest,

    -- ** AllocateIdsResponse
    AllocateIdsResponse (..),
    newAllocateIdsResponse,

    -- ** ArrayValue
    ArrayValue (..),
    newArrayValue,

    -- ** Avg
    Avg (..),
    newAvg,

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

    -- ** Count
    Count (..),
    newCount,

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

    -- ** ExecutionStats
    ExecutionStats (..),
    newExecutionStats,

    -- ** ExecutionStats_DebugStats
    ExecutionStats_DebugStats (..),
    newExecutionStats_DebugStats,

    -- ** ExplainMetrics
    ExplainMetrics (..),
    newExplainMetrics,

    -- ** ExplainOptions
    ExplainOptions (..),
    newExplainOptions,

    -- ** Filter
    Filter (..),
    newFilter,

    -- ** FindNearest
    FindNearest (..),
    newFindNearest,

    -- ** FindNearest_DistanceMeasure
    FindNearest_DistanceMeasure (..),

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

    -- ** Mutation_ConflictResolutionStrategy
    Mutation_ConflictResolutionStrategy (..),

    -- ** MutationResult
    MutationResult (..),
    newMutationResult,

    -- ** PartitionId
    PartitionId (..),
    newPartitionId,

    -- ** PathElement
    PathElement (..),
    newPathElement,

    -- ** PlanSummary
    PlanSummary (..),
    newPlanSummary,

    -- ** PlanSummary_IndexesUsedItem
    PlanSummary_IndexesUsedItem (..),
    newPlanSummary_IndexesUsedItem,

    -- ** Projection
    Projection (..),
    newProjection,

    -- ** PropertyFilter
    PropertyFilter (..),
    newPropertyFilter,

    -- ** PropertyFilter_Op
    PropertyFilter_Op (..),

    -- ** PropertyMask
    PropertyMask (..),
    newPropertyMask,

    -- ** PropertyOrder
    PropertyOrder (..),
    newPropertyOrder,

    -- ** PropertyOrder_Direction
    PropertyOrder_Direction (..),

    -- ** PropertyReference
    PropertyReference (..),
    newPropertyReference,

    -- ** PropertyTransform
    PropertyTransform (..),
    newPropertyTransform,

    -- ** PropertyTransform_SetToServerValue
    PropertyTransform_SetToServerValue (..),

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

    -- ** RunAggregationQueryRequest
    RunAggregationQueryRequest (..),
    newRunAggregationQueryRequest,

    -- ** RunAggregationQueryResponse
    RunAggregationQueryResponse (..),
    newRunAggregationQueryResponse,

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

    -- ** Sum
    Sum (..),
    newSum,

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

import Gogol.Datastore.Projects.AllocateIds
import Gogol.Datastore.Projects.BeginTransaction
import Gogol.Datastore.Projects.Commit
import Gogol.Datastore.Projects.Export
import Gogol.Datastore.Projects.Import
import Gogol.Datastore.Projects.Indexes.Create
import Gogol.Datastore.Projects.Indexes.Delete
import Gogol.Datastore.Projects.Indexes.Get
import Gogol.Datastore.Projects.Indexes.List
import Gogol.Datastore.Projects.Lookup
import Gogol.Datastore.Projects.Operations.Cancel
import Gogol.Datastore.Projects.Operations.Delete
import Gogol.Datastore.Projects.Operations.Get
import Gogol.Datastore.Projects.Operations.List
import Gogol.Datastore.Projects.ReserveIds
import Gogol.Datastore.Projects.Rollback
import Gogol.Datastore.Projects.RunAggregationQuery
import Gogol.Datastore.Projects.RunQuery
import Gogol.Datastore.Types
