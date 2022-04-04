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
-- Module      : Gogol.Datastore.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Datastore.Internal.Product
  ( -- * AllocateIdsRequest
    AllocateIdsRequest (..),
    newAllocateIdsRequest,

    -- * AllocateIdsResponse
    AllocateIdsResponse (..),
    newAllocateIdsResponse,

    -- * ArrayValue
    ArrayValue (..),
    newArrayValue,

    -- * BeginTransactionRequest
    BeginTransactionRequest (..),
    newBeginTransactionRequest,

    -- * BeginTransactionResponse
    BeginTransactionResponse (..),
    newBeginTransactionResponse,

    -- * CommitRequest
    CommitRequest (..),
    newCommitRequest,

    -- * CommitResponse
    CommitResponse (..),
    newCommitResponse,

    -- * CompositeFilter
    CompositeFilter (..),
    newCompositeFilter,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Entity
    Entity (..),
    newEntity,

    -- * Entity_Properties
    Entity_Properties (..),
    newEntity_Properties,

    -- * EntityResult
    EntityResult (..),
    newEntityResult,

    -- * Filter
    Filter (..),
    newFilter,

    -- * GoogleDatastoreAdminV1CommonMetadata
    GoogleDatastoreAdminV1CommonMetadata (..),
    newGoogleDatastoreAdminV1CommonMetadata,

    -- * GoogleDatastoreAdminV1CommonMetadata_Labels
    GoogleDatastoreAdminV1CommonMetadata_Labels (..),
    newGoogleDatastoreAdminV1CommonMetadata_Labels,

    -- * GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
    GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata (..),
    newGoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata,

    -- * GoogleDatastoreAdminV1EntityFilter
    GoogleDatastoreAdminV1EntityFilter (..),
    newGoogleDatastoreAdminV1EntityFilter,

    -- * GoogleDatastoreAdminV1ExportEntitiesMetadata
    GoogleDatastoreAdminV1ExportEntitiesMetadata (..),
    newGoogleDatastoreAdminV1ExportEntitiesMetadata,

    -- * GoogleDatastoreAdminV1ExportEntitiesRequest
    GoogleDatastoreAdminV1ExportEntitiesRequest (..),
    newGoogleDatastoreAdminV1ExportEntitiesRequest,

    -- * GoogleDatastoreAdminV1ExportEntitiesRequest_Labels
    GoogleDatastoreAdminV1ExportEntitiesRequest_Labels (..),
    newGoogleDatastoreAdminV1ExportEntitiesRequest_Labels,

    -- * GoogleDatastoreAdminV1ExportEntitiesResponse
    GoogleDatastoreAdminV1ExportEntitiesResponse (..),
    newGoogleDatastoreAdminV1ExportEntitiesResponse,

    -- * GoogleDatastoreAdminV1ImportEntitiesMetadata
    GoogleDatastoreAdminV1ImportEntitiesMetadata (..),
    newGoogleDatastoreAdminV1ImportEntitiesMetadata,

    -- * GoogleDatastoreAdminV1ImportEntitiesRequest
    GoogleDatastoreAdminV1ImportEntitiesRequest (..),
    newGoogleDatastoreAdminV1ImportEntitiesRequest,

    -- * GoogleDatastoreAdminV1ImportEntitiesRequest_Labels
    GoogleDatastoreAdminV1ImportEntitiesRequest_Labels (..),
    newGoogleDatastoreAdminV1ImportEntitiesRequest_Labels,

    -- * GoogleDatastoreAdminV1Index
    GoogleDatastoreAdminV1Index (..),
    newGoogleDatastoreAdminV1Index,

    -- * GoogleDatastoreAdminV1IndexOperationMetadata
    GoogleDatastoreAdminV1IndexOperationMetadata (..),
    newGoogleDatastoreAdminV1IndexOperationMetadata,

    -- * GoogleDatastoreAdminV1IndexedProperty
    GoogleDatastoreAdminV1IndexedProperty (..),
    newGoogleDatastoreAdminV1IndexedProperty,

    -- * GoogleDatastoreAdminV1ListIndexesResponse
    GoogleDatastoreAdminV1ListIndexesResponse (..),
    newGoogleDatastoreAdminV1ListIndexesResponse,

    -- * GoogleDatastoreAdminV1MigrationProgressEvent
    GoogleDatastoreAdminV1MigrationProgressEvent (..),
    newGoogleDatastoreAdminV1MigrationProgressEvent,

    -- * GoogleDatastoreAdminV1MigrationStateEvent
    GoogleDatastoreAdminV1MigrationStateEvent (..),
    newGoogleDatastoreAdminV1MigrationStateEvent,

    -- * GoogleDatastoreAdminV1PrepareStepDetails
    GoogleDatastoreAdminV1PrepareStepDetails (..),
    newGoogleDatastoreAdminV1PrepareStepDetails,

    -- * GoogleDatastoreAdminV1Progress
    GoogleDatastoreAdminV1Progress (..),
    newGoogleDatastoreAdminV1Progress,

    -- * GoogleDatastoreAdminV1RedirectWritesStepDetails
    GoogleDatastoreAdminV1RedirectWritesStepDetails (..),
    newGoogleDatastoreAdminV1RedirectWritesStepDetails,

    -- * GoogleDatastoreAdminV1beta1CommonMetadata
    GoogleDatastoreAdminV1beta1CommonMetadata (..),
    newGoogleDatastoreAdminV1beta1CommonMetadata,

    -- * GoogleDatastoreAdminV1beta1CommonMetadata_Labels
    GoogleDatastoreAdminV1beta1CommonMetadata_Labels (..),
    newGoogleDatastoreAdminV1beta1CommonMetadata_Labels,

    -- * GoogleDatastoreAdminV1beta1EntityFilter
    GoogleDatastoreAdminV1beta1EntityFilter (..),
    newGoogleDatastoreAdminV1beta1EntityFilter,

    -- * GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
    GoogleDatastoreAdminV1beta1ExportEntitiesMetadata (..),
    newGoogleDatastoreAdminV1beta1ExportEntitiesMetadata,

    -- * GoogleDatastoreAdminV1beta1ExportEntitiesResponse
    GoogleDatastoreAdminV1beta1ExportEntitiesResponse (..),
    newGoogleDatastoreAdminV1beta1ExportEntitiesResponse,

    -- * GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
    GoogleDatastoreAdminV1beta1ImportEntitiesMetadata (..),
    newGoogleDatastoreAdminV1beta1ImportEntitiesMetadata,

    -- * GoogleDatastoreAdminV1beta1Progress
    GoogleDatastoreAdminV1beta1Progress (..),
    newGoogleDatastoreAdminV1beta1Progress,

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

    -- * GqlQuery
    GqlQuery (..),
    newGqlQuery,

    -- * GqlQuery_NamedBindings
    GqlQuery_NamedBindings (..),
    newGqlQuery_NamedBindings,

    -- * GqlQueryParameter
    GqlQueryParameter (..),
    newGqlQueryParameter,

    -- * Key
    Key (..),
    newKey,

    -- * KindExpression
    KindExpression (..),
    newKindExpression,

    -- * LatLng
    LatLng (..),
    newLatLng,

    -- * LookupRequest
    LookupRequest (..),
    newLookupRequest,

    -- * LookupResponse
    LookupResponse (..),
    newLookupResponse,

    -- * Mutation
    Mutation (..),
    newMutation,

    -- * MutationResult
    MutationResult (..),
    newMutationResult,

    -- * PartitionId
    PartitionId (..),
    newPartitionId,

    -- * PathElement
    PathElement (..),
    newPathElement,

    -- * Projection
    Projection (..),
    newProjection,

    -- * PropertyFilter
    PropertyFilter (..),
    newPropertyFilter,

    -- * PropertyOrder
    PropertyOrder (..),
    newPropertyOrder,

    -- * PropertyReference
    PropertyReference (..),
    newPropertyReference,

    -- * Query
    Query (..),
    newQuery,

    -- * QueryResultBatch
    QueryResultBatch (..),
    newQueryResultBatch,

    -- * ReadOnly
    ReadOnly (..),
    newReadOnly,

    -- * ReadOptions
    ReadOptions (..),
    newReadOptions,

    -- * ReadWrite
    ReadWrite (..),
    newReadWrite,

    -- * ReserveIdsRequest
    ReserveIdsRequest (..),
    newReserveIdsRequest,

    -- * ReserveIdsResponse
    ReserveIdsResponse (..),
    newReserveIdsResponse,

    -- * RollbackRequest
    RollbackRequest (..),
    newRollbackRequest,

    -- * RollbackResponse
    RollbackResponse (..),
    newRollbackResponse,

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

    -- * TransactionOptions
    TransactionOptions (..),
    newTransactionOptions,

    -- * Value
    Value (..),
    newValue,
  )
where

import Gogol.Datastore.Internal.Sum
import qualified Gogol.Prelude as Core

-- | The request for Datastore.AllocateIds.
--
-- /See:/ 'newAllocateIdsRequest' smart constructor.
newtype AllocateIdsRequest = AllocateIdsRequest
  { -- | Required. A list of keys with incomplete key paths for which to allocate IDs. No key may be reserved\/read-only.
    keys :: (Core.Maybe [Key])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AllocateIdsRequest' with the minimum fields required to make a request.
newAllocateIdsRequest ::
  AllocateIdsRequest
newAllocateIdsRequest = AllocateIdsRequest {keys = Core.Nothing}

instance Core.FromJSON AllocateIdsRequest where
  parseJSON =
    Core.withObject
      "AllocateIdsRequest"
      ( \o ->
          AllocateIdsRequest
            Core.<$> (o Core..:? "keys" Core..!= Core.mempty)
      )

instance Core.ToJSON AllocateIdsRequest where
  toJSON AllocateIdsRequest {..} =
    Core.object
      (Core.catMaybes [("keys" Core..=) Core.<$> keys])

-- | The response for Datastore.AllocateIds.
--
-- /See:/ 'newAllocateIdsResponse' smart constructor.
newtype AllocateIdsResponse = AllocateIdsResponse
  { -- | The keys specified in the request (in the same order), each with its key path completed with a newly allocated ID.
    keys :: (Core.Maybe [Key])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AllocateIdsResponse' with the minimum fields required to make a request.
newAllocateIdsResponse ::
  AllocateIdsResponse
newAllocateIdsResponse = AllocateIdsResponse {keys = Core.Nothing}

instance Core.FromJSON AllocateIdsResponse where
  parseJSON =
    Core.withObject
      "AllocateIdsResponse"
      ( \o ->
          AllocateIdsResponse
            Core.<$> (o Core..:? "keys" Core..!= Core.mempty)
      )

instance Core.ToJSON AllocateIdsResponse where
  toJSON AllocateIdsResponse {..} =
    Core.object
      (Core.catMaybes [("keys" Core..=) Core.<$> keys])

-- | An array value.
--
-- /See:/ 'newArrayValue' smart constructor.
newtype ArrayValue = ArrayValue
  { -- | Values in the array. The order of values in an array is preserved as long as all values have identical settings for \'exclude/from/indexes\'.
    values :: (Core.Maybe [Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArrayValue' with the minimum fields required to make a request.
newArrayValue ::
  ArrayValue
newArrayValue = ArrayValue {values = Core.Nothing}

instance Core.FromJSON ArrayValue where
  parseJSON =
    Core.withObject
      "ArrayValue"
      ( \o ->
          ArrayValue
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON ArrayValue where
  toJSON ArrayValue {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | The request for Datastore.BeginTransaction.
--
-- /See:/ 'newBeginTransactionRequest' smart constructor.
newtype BeginTransactionRequest = BeginTransactionRequest
  { -- | Options for a new transaction.
    transactionOptions :: (Core.Maybe TransactionOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BeginTransactionRequest' with the minimum fields required to make a request.
newBeginTransactionRequest ::
  BeginTransactionRequest
newBeginTransactionRequest =
  BeginTransactionRequest {transactionOptions = Core.Nothing}

instance Core.FromJSON BeginTransactionRequest where
  parseJSON =
    Core.withObject
      "BeginTransactionRequest"
      ( \o ->
          BeginTransactionRequest
            Core.<$> (o Core..:? "transactionOptions")
      )

instance Core.ToJSON BeginTransactionRequest where
  toJSON BeginTransactionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("transactionOptions" Core..=)
              Core.<$> transactionOptions
          ]
      )

-- | The response for Datastore.BeginTransaction.
--
-- /See:/ 'newBeginTransactionResponse' smart constructor.
newtype BeginTransactionResponse = BeginTransactionResponse
  { -- | The transaction identifier (always present).
    transaction :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BeginTransactionResponse' with the minimum fields required to make a request.
newBeginTransactionResponse ::
  BeginTransactionResponse
newBeginTransactionResponse =
  BeginTransactionResponse {transaction = Core.Nothing}

instance Core.FromJSON BeginTransactionResponse where
  parseJSON =
    Core.withObject
      "BeginTransactionResponse"
      ( \o ->
          BeginTransactionResponse
            Core.<$> (o Core..:? "transaction")
      )

instance Core.ToJSON BeginTransactionResponse where
  toJSON BeginTransactionResponse {..} =
    Core.object
      ( Core.catMaybes
          [("transaction" Core..=) Core.<$> transaction]
      )

-- | The request for Datastore.Commit.
--
-- /See:/ 'newCommitRequest' smart constructor.
data CommitRequest = CommitRequest
  { -- | The type of commit to perform. Defaults to @TRANSACTIONAL@.
    mode :: (Core.Maybe CommitRequest_Mode),
    -- | The mutations to perform. When mode is @TRANSACTIONAL@, mutations affecting a single entity are applied in order. The following sequences of mutations affecting a single entity are not permitted in a single @Commit@ request: - @insert@ followed by @insert@ - @update@ followed by @insert@ - @upsert@ followed by @insert@ - @delete@ followed by @update@ When mode is @NON_TRANSACTIONAL@, no two mutations may affect a single entity.
    mutations :: (Core.Maybe [Mutation]),
    -- | The identifier of the transaction associated with the commit. A transaction identifier is returned by a call to Datastore.BeginTransaction.
    transaction :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommitRequest' with the minimum fields required to make a request.
newCommitRequest ::
  CommitRequest
newCommitRequest =
  CommitRequest
    { mode = Core.Nothing,
      mutations = Core.Nothing,
      transaction = Core.Nothing
    }

instance Core.FromJSON CommitRequest where
  parseJSON =
    Core.withObject
      "CommitRequest"
      ( \o ->
          CommitRequest
            Core.<$> (o Core..:? "mode")
            Core.<*> (o Core..:? "mutations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON CommitRequest where
  toJSON CommitRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("mode" Core..=) Core.<$> mode,
            ("mutations" Core..=) Core.<$> mutations,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

-- | The response for Datastore.Commit.
--
-- /See:/ 'newCommitResponse' smart constructor.
data CommitResponse = CommitResponse
  { -- | The number of index entries updated during the commit, or zero if none were updated.
    indexUpdates :: (Core.Maybe Core.Int32),
    -- | The result of performing the mutations. The i-th mutation result corresponds to the i-th mutation in the request.
    mutationResults :: (Core.Maybe [MutationResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommitResponse' with the minimum fields required to make a request.
newCommitResponse ::
  CommitResponse
newCommitResponse =
  CommitResponse {indexUpdates = Core.Nothing, mutationResults = Core.Nothing}

instance Core.FromJSON CommitResponse where
  parseJSON =
    Core.withObject
      "CommitResponse"
      ( \o ->
          CommitResponse
            Core.<$> (o Core..:? "indexUpdates")
            Core.<*> (o Core..:? "mutationResults" Core..!= Core.mempty)
      )

instance Core.ToJSON CommitResponse where
  toJSON CommitResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexUpdates" Core..=) Core.<$> indexUpdates,
            ("mutationResults" Core..=)
              Core.<$> mutationResults
          ]
      )

-- | A filter that merges multiple other filters using the given operator.
--
-- /See:/ 'newCompositeFilter' smart constructor.
data CompositeFilter = CompositeFilter
  { -- | The list of filters to combine. Must contain at least one filter.
    filters :: (Core.Maybe [Filter]),
    -- | The operator for combining multiple filters.
    op :: (Core.Maybe CompositeFilter_Op)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompositeFilter' with the minimum fields required to make a request.
newCompositeFilter ::
  CompositeFilter
newCompositeFilter = CompositeFilter {filters = Core.Nothing, op = Core.Nothing}

instance Core.FromJSON CompositeFilter where
  parseJSON =
    Core.withObject
      "CompositeFilter"
      ( \o ->
          CompositeFilter
            Core.<$> (o Core..:? "filters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "op")
      )

instance Core.ToJSON CompositeFilter where
  toJSON CompositeFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("filters" Core..=) Core.<$> filters,
            ("op" Core..=) Core.<$> op
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A Datastore data object. An entity is limited to 1 megabyte when stored. That /roughly/ corresponds to a limit of 1 megabyte for the serialized form of this message.
--
-- /See:/ 'newEntity' smart constructor.
data Entity = Entity
  { -- | The entity\'s key. An entity must have a key, unless otherwise documented (for example, an entity in @Value.entity_value@ may have no key). An entity\'s kind is its key path\'s last element\'s kind, or null if it has no key.
    key :: (Core.Maybe Key),
    -- | The entity\'s properties. The map\'s keys are property names. A property name matching regex @__.*__@ is reserved. A reserved property name is forbidden in certain documented contexts. The name must not contain more than 500 characters. The name cannot be @\"\"@.
    properties :: (Core.Maybe Entity_Properties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entity' with the minimum fields required to make a request.
newEntity ::
  Entity
newEntity = Entity {key = Core.Nothing, properties = Core.Nothing}

instance Core.FromJSON Entity where
  parseJSON =
    Core.withObject
      "Entity"
      ( \o ->
          Entity
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "properties")
      )

instance Core.ToJSON Entity where
  toJSON Entity {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | The entity\'s properties. The map\'s keys are property names. A property name matching regex @__.*__@ is reserved. A reserved property name is forbidden in certain documented contexts. The name must not contain more than 500 characters. The name cannot be @\"\"@.
--
-- /See:/ 'newEntity_Properties' smart constructor.
newtype Entity_Properties = Entity_Properties
  { -- |
    additional :: (Core.HashMap Core.Text Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entity_Properties' with the minimum fields required to make a request.
newEntity_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Value ->
  Entity_Properties
newEntity_Properties additional = Entity_Properties {additional = additional}

instance Core.FromJSON Entity_Properties where
  parseJSON =
    Core.withObject
      "Entity_Properties"
      ( \o ->
          Entity_Properties Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Entity_Properties where
  toJSON Entity_Properties {..} = Core.toJSON additional

-- | The result of fetching an entity from Datastore.
--
-- /See:/ 'newEntityResult' smart constructor.
data EntityResult = EntityResult
  { -- | A cursor that points to the position after the result entity. Set only when the @EntityResult@ is part of a @QueryResultBatch@ message.
    cursor :: (Core.Maybe Core.Base64),
    -- | The resulting entity.
    entity :: (Core.Maybe Entity),
    -- | The version of the entity, a strictly positive number that monotonically increases with changes to the entity. This field is set for @FULL@ entity results. For missing entities in @LookupResponse@, this is the version of the snapshot that was used to look up the entity, and it is always set except for eventually consistent reads.
    version :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityResult' with the minimum fields required to make a request.
newEntityResult ::
  EntityResult
newEntityResult =
  EntityResult
    { cursor = Core.Nothing,
      entity = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON EntityResult where
  parseJSON =
    Core.withObject
      "EntityResult"
      ( \o ->
          EntityResult
            Core.<$> (o Core..:? "cursor")
            Core.<*> (o Core..:? "entity")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON EntityResult where
  toJSON EntityResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("cursor" Core..=) Core.<$> cursor,
            ("entity" Core..=) Core.<$> entity,
            ("version" Core..=) Core.. Core.AsText
              Core.<$> version
          ]
      )

-- | A holder for any type of filter.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter
  { -- | A composite filter.
    compositeFilter :: (Core.Maybe CompositeFilter),
    -- | A filter on a property.
    propertyFilter :: (Core.Maybe PropertyFilter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
newFilter ::
  Filter
newFilter =
  Filter {compositeFilter = Core.Nothing, propertyFilter = Core.Nothing}

instance Core.FromJSON Filter where
  parseJSON =
    Core.withObject
      "Filter"
      ( \o ->
          Filter
            Core.<$> (o Core..:? "compositeFilter")
            Core.<*> (o Core..:? "propertyFilter")
      )

instance Core.ToJSON Filter where
  toJSON Filter {..} =
    Core.object
      ( Core.catMaybes
          [ ("compositeFilter" Core..=)
              Core.<$> compositeFilter,
            ("propertyFilter" Core..=) Core.<$> propertyFilter
          ]
      )

-- | Metadata common to all Datastore Admin operations.
--
-- /See:/ 'newGoogleDatastoreAdminV1CommonMetadata' smart constructor.
data GoogleDatastoreAdminV1CommonMetadata = GoogleDatastoreAdminV1CommonMetadata
  { -- | The time the operation ended, either successfully or otherwise.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The client-assigned labels which were provided when the operation was created. May also include additional labels.
    labels :: (Core.Maybe GoogleDatastoreAdminV1CommonMetadata_Labels),
    -- | The type of the operation. Can be used as a filter in ListOperationsRequest.
    operationType :: (Core.Maybe GoogleDatastoreAdminV1CommonMetadata_OperationType),
    -- | The time that work began on the operation.
    startTime :: (Core.Maybe Core.DateTime),
    -- | The current state of the Operation.
    state :: (Core.Maybe GoogleDatastoreAdminV1CommonMetadata_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1CommonMetadata' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1CommonMetadata ::
  GoogleDatastoreAdminV1CommonMetadata
newGoogleDatastoreAdminV1CommonMetadata =
  GoogleDatastoreAdminV1CommonMetadata
    { endTime = Core.Nothing,
      labels = Core.Nothing,
      operationType = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1CommonMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1CommonMetadata"
      ( \o ->
          GoogleDatastoreAdminV1CommonMetadata
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1CommonMetadata
  where
  toJSON GoogleDatastoreAdminV1CommonMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("labels" Core..=) Core.<$> labels,
            ("operationType" Core..=) Core.<$> operationType,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | The client-assigned labels which were provided when the operation was created. May also include additional labels.
--
-- /See:/ 'newGoogleDatastoreAdminV1CommonMetadata_Labels' smart constructor.
newtype GoogleDatastoreAdminV1CommonMetadata_Labels = GoogleDatastoreAdminV1CommonMetadata_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1CommonMetadata_Labels' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1CommonMetadata_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleDatastoreAdminV1CommonMetadata_Labels
newGoogleDatastoreAdminV1CommonMetadata_Labels additional =
  GoogleDatastoreAdminV1CommonMetadata_Labels {additional = additional}

instance
  Core.FromJSON
    GoogleDatastoreAdminV1CommonMetadata_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1CommonMetadata_Labels"
      ( \o ->
          GoogleDatastoreAdminV1CommonMetadata_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1CommonMetadata_Labels
  where
  toJSON
    GoogleDatastoreAdminV1CommonMetadata_Labels {..} =
      Core.toJSON additional

-- | Metadata for Datastore to Firestore migration operations. The DatastoreFirestoreMigration operation is not started by the end-user via an explicit \"creation\" method. This is an intentional deviation from the LRO design pattern. This singleton resource can be accessed at: \"projects\/{project_id}\/operations\/datastore-firestore-migration\"
--
-- /See:/ 'newGoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata' smart constructor.
data GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
  { -- | The current state of migration from Cloud Datastore to Cloud Firestore in Datastore mode.
    migrationState ::
      ( Core.Maybe
          GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState
      ),
    -- | The current step of migration from Cloud Datastore to Cloud Firestore in Datastore mode.
    migrationStep ::
      ( Core.Maybe
          GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata ::
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
newGoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata =
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
    { migrationState = Core.Nothing,
      migrationStep = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata"
      ( \o ->
          GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
            Core.<$> (o Core..:? "migrationState")
              Core.<*> (o Core..:? "migrationStep")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
  where
  toJSON
    GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("migrationState" Core..=) Core.<$> migrationState,
              ("migrationStep" Core..=) Core.<$> migrationStep
            ]
        )

-- | Identifies a subset of entities in a project. This is specified as combinations of kinds and namespaces (either or both of which may be all, as described in the following examples). Example usage: Entire project: kinds=[], namespace/ids=[] Kinds Foo and Bar in all namespaces: kinds=[\'Foo\', \'Bar\'], namespace/ids=[] Kinds Foo and Bar only in the default namespace: kinds=[\'Foo\', \'Bar\'], namespace/ids=[\'\'] Kinds Foo and Bar in both the default and Baz namespaces: kinds=[\'Foo\', \'Bar\'], namespace/ids=[\'\', \'Baz\'] The entire Baz namespace: kinds=[], namespace_ids=[\'Baz\']
--
-- /See:/ 'newGoogleDatastoreAdminV1EntityFilter' smart constructor.
data GoogleDatastoreAdminV1EntityFilter = GoogleDatastoreAdminV1EntityFilter
  { -- | If empty, then this represents all kinds.
    kinds :: (Core.Maybe [Core.Text]),
    -- | An empty list represents all namespaces. This is the preferred usage for projects that don\'t use namespaces. An empty string element represents the default namespace. This should be used if the project has data in non-default namespaces, but doesn\'t want to include them. Each namespace in this list must be unique.
    namespaceIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1EntityFilter' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1EntityFilter ::
  GoogleDatastoreAdminV1EntityFilter
newGoogleDatastoreAdminV1EntityFilter =
  GoogleDatastoreAdminV1EntityFilter
    { kinds = Core.Nothing,
      namespaceIds = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1EntityFilter
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1EntityFilter"
      ( \o ->
          GoogleDatastoreAdminV1EntityFilter
            Core.<$> (o Core..:? "kinds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "namespaceIds" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1EntityFilter
  where
  toJSON GoogleDatastoreAdminV1EntityFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("kinds" Core..=) Core.<$> kinds,
            ("namespaceIds" Core..=) Core.<$> namespaceIds
          ]
      )

-- | Metadata for ExportEntities operations.
--
-- /See:/ 'newGoogleDatastoreAdminV1ExportEntitiesMetadata' smart constructor.
data GoogleDatastoreAdminV1ExportEntitiesMetadata = GoogleDatastoreAdminV1ExportEntitiesMetadata
  { -- | Metadata common to all Datastore Admin operations.
    common :: (Core.Maybe GoogleDatastoreAdminV1CommonMetadata),
    -- | Description of which entities are being exported.
    entityFilter :: (Core.Maybe GoogleDatastoreAdminV1EntityFilter),
    -- | Location for the export metadata and data files. This will be the same value as the google.datastore.admin.v1.ExportEntitiesRequest.output/url/prefix field. The final output location is provided in google.datastore.admin.v1.ExportEntitiesResponse.output_url.
    outputUrlPrefix :: (Core.Maybe Core.Text),
    -- | An estimate of the number of bytes processed.
    progressBytes :: (Core.Maybe GoogleDatastoreAdminV1Progress),
    -- | An estimate of the number of entities processed.
    progressEntities :: (Core.Maybe GoogleDatastoreAdminV1Progress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1ExportEntitiesMetadata' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1ExportEntitiesMetadata ::
  GoogleDatastoreAdminV1ExportEntitiesMetadata
newGoogleDatastoreAdminV1ExportEntitiesMetadata =
  GoogleDatastoreAdminV1ExportEntitiesMetadata
    { common = Core.Nothing,
      entityFilter = Core.Nothing,
      outputUrlPrefix = Core.Nothing,
      progressBytes = Core.Nothing,
      progressEntities = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1ExportEntitiesMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1ExportEntitiesMetadata"
      ( \o ->
          GoogleDatastoreAdminV1ExportEntitiesMetadata
            Core.<$> (o Core..:? "common")
            Core.<*> (o Core..:? "entityFilter")
            Core.<*> (o Core..:? "outputUrlPrefix")
            Core.<*> (o Core..:? "progressBytes")
            Core.<*> (o Core..:? "progressEntities")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1ExportEntitiesMetadata
  where
  toJSON
    GoogleDatastoreAdminV1ExportEntitiesMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("common" Core..=) Core.<$> common,
              ("entityFilter" Core..=) Core.<$> entityFilter,
              ("outputUrlPrefix" Core..=) Core.<$> outputUrlPrefix,
              ("progressBytes" Core..=) Core.<$> progressBytes,
              ("progressEntities" Core..=)
                Core.<$> progressEntities
            ]
        )

-- | The request for google.datastore.admin.v1.DatastoreAdmin.ExportEntities.
--
-- /See:/ 'newGoogleDatastoreAdminV1ExportEntitiesRequest' smart constructor.
data GoogleDatastoreAdminV1ExportEntitiesRequest = GoogleDatastoreAdminV1ExportEntitiesRequest
  { -- | Description of what data from the project is included in the export.
    entityFilter :: (Core.Maybe GoogleDatastoreAdminV1EntityFilter),
    -- | Client-assigned labels.
    labels :: (Core.Maybe GoogleDatastoreAdminV1ExportEntitiesRequest_Labels),
    -- | Required. Location for the export metadata and data files. The full resource URL of the external storage location. Currently, only Google Cloud Storage is supported. So output/url/prefix should be of the form: @gs:\/\/BUCKET_NAME[\/NAMESPACE_PATH]@, where @BUCKET_NAME@ is the name of the Cloud Storage bucket and @NAMESPACE_PATH@ is an optional Cloud Storage namespace path (this is not a Cloud Datastore namespace). For more information about Cloud Storage namespace paths, see <https://cloud.google.com/storage/docs/naming#object-considerations Object name considerations>. The resulting files will be nested deeper than the specified URL prefix. The final output URL will be provided in the google.datastore.admin.v1.ExportEntitiesResponse.output_url field. That value should be used for subsequent ImportEntities operations. By nesting the data files deeper, the same Cloud Storage bucket can be used in multiple ExportEntities operations without conflict.
    outputUrlPrefix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1ExportEntitiesRequest' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1ExportEntitiesRequest ::
  GoogleDatastoreAdminV1ExportEntitiesRequest
newGoogleDatastoreAdminV1ExportEntitiesRequest =
  GoogleDatastoreAdminV1ExportEntitiesRequest
    { entityFilter = Core.Nothing,
      labels = Core.Nothing,
      outputUrlPrefix = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1ExportEntitiesRequest
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1ExportEntitiesRequest"
      ( \o ->
          GoogleDatastoreAdminV1ExportEntitiesRequest
            Core.<$> (o Core..:? "entityFilter")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "outputUrlPrefix")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1ExportEntitiesRequest
  where
  toJSON
    GoogleDatastoreAdminV1ExportEntitiesRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("entityFilter" Core..=) Core.<$> entityFilter,
              ("labels" Core..=) Core.<$> labels,
              ("outputUrlPrefix" Core..=)
                Core.<$> outputUrlPrefix
            ]
        )

-- | Client-assigned labels.
--
-- /See:/ 'newGoogleDatastoreAdminV1ExportEntitiesRequest_Labels' smart constructor.
newtype GoogleDatastoreAdminV1ExportEntitiesRequest_Labels = GoogleDatastoreAdminV1ExportEntitiesRequest_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1ExportEntitiesRequest_Labels' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1ExportEntitiesRequest_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleDatastoreAdminV1ExportEntitiesRequest_Labels
newGoogleDatastoreAdminV1ExportEntitiesRequest_Labels additional =
  GoogleDatastoreAdminV1ExportEntitiesRequest_Labels {additional = additional}

instance
  Core.FromJSON
    GoogleDatastoreAdminV1ExportEntitiesRequest_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1ExportEntitiesRequest_Labels"
      ( \o ->
          GoogleDatastoreAdminV1ExportEntitiesRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1ExportEntitiesRequest_Labels
  where
  toJSON
    GoogleDatastoreAdminV1ExportEntitiesRequest_Labels {..} =
      Core.toJSON additional

-- | The response for google.datastore.admin.v1.DatastoreAdmin.ExportEntities.
--
-- /See:/ 'newGoogleDatastoreAdminV1ExportEntitiesResponse' smart constructor.
newtype GoogleDatastoreAdminV1ExportEntitiesResponse = GoogleDatastoreAdminV1ExportEntitiesResponse
  { -- | Location of the output metadata file. This can be used to begin an import into Cloud Datastore (this project or another project). See google.datastore.admin.v1.ImportEntitiesRequest.input_url. Only present if the operation completed successfully.
    outputUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1ExportEntitiesResponse' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1ExportEntitiesResponse ::
  GoogleDatastoreAdminV1ExportEntitiesResponse
newGoogleDatastoreAdminV1ExportEntitiesResponse =
  GoogleDatastoreAdminV1ExportEntitiesResponse {outputUrl = Core.Nothing}

instance
  Core.FromJSON
    GoogleDatastoreAdminV1ExportEntitiesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1ExportEntitiesResponse"
      ( \o ->
          GoogleDatastoreAdminV1ExportEntitiesResponse
            Core.<$> (o Core..:? "outputUrl")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1ExportEntitiesResponse
  where
  toJSON
    GoogleDatastoreAdminV1ExportEntitiesResponse {..} =
      Core.object
        ( Core.catMaybes
            [("outputUrl" Core..=) Core.<$> outputUrl]
        )

-- | Metadata for ImportEntities operations.
--
-- /See:/ 'newGoogleDatastoreAdminV1ImportEntitiesMetadata' smart constructor.
data GoogleDatastoreAdminV1ImportEntitiesMetadata = GoogleDatastoreAdminV1ImportEntitiesMetadata
  { -- | Metadata common to all Datastore Admin operations.
    common :: (Core.Maybe GoogleDatastoreAdminV1CommonMetadata),
    -- | Description of which entities are being imported.
    entityFilter :: (Core.Maybe GoogleDatastoreAdminV1EntityFilter),
    -- | The location of the import metadata file. This will be the same value as the google.datastore.admin.v1.ExportEntitiesResponse.output_url field.
    inputUrl :: (Core.Maybe Core.Text),
    -- | An estimate of the number of bytes processed.
    progressBytes :: (Core.Maybe GoogleDatastoreAdminV1Progress),
    -- | An estimate of the number of entities processed.
    progressEntities :: (Core.Maybe GoogleDatastoreAdminV1Progress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1ImportEntitiesMetadata' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1ImportEntitiesMetadata ::
  GoogleDatastoreAdminV1ImportEntitiesMetadata
newGoogleDatastoreAdminV1ImportEntitiesMetadata =
  GoogleDatastoreAdminV1ImportEntitiesMetadata
    { common = Core.Nothing,
      entityFilter = Core.Nothing,
      inputUrl = Core.Nothing,
      progressBytes = Core.Nothing,
      progressEntities = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1ImportEntitiesMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1ImportEntitiesMetadata"
      ( \o ->
          GoogleDatastoreAdminV1ImportEntitiesMetadata
            Core.<$> (o Core..:? "common")
            Core.<*> (o Core..:? "entityFilter")
            Core.<*> (o Core..:? "inputUrl")
            Core.<*> (o Core..:? "progressBytes")
            Core.<*> (o Core..:? "progressEntities")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1ImportEntitiesMetadata
  where
  toJSON
    GoogleDatastoreAdminV1ImportEntitiesMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("common" Core..=) Core.<$> common,
              ("entityFilter" Core..=) Core.<$> entityFilter,
              ("inputUrl" Core..=) Core.<$> inputUrl,
              ("progressBytes" Core..=) Core.<$> progressBytes,
              ("progressEntities" Core..=)
                Core.<$> progressEntities
            ]
        )

-- | The request for google.datastore.admin.v1.DatastoreAdmin.ImportEntities.
--
-- /See:/ 'newGoogleDatastoreAdminV1ImportEntitiesRequest' smart constructor.
data GoogleDatastoreAdminV1ImportEntitiesRequest = GoogleDatastoreAdminV1ImportEntitiesRequest
  { -- | Optionally specify which kinds\/namespaces are to be imported. If provided, the list must be a subset of the EntityFilter used in creating the export, otherwise a FAILED_PRECONDITION error will be returned. If no filter is specified then all entities from the export are imported.
    entityFilter :: (Core.Maybe GoogleDatastoreAdminV1EntityFilter),
    -- | Required. The full resource URL of the external storage location. Currently, only Google Cloud Storage is supported. So input/url should be of the form: @gs:\/\/BUCKET_NAME[\/NAMESPACE_PATH]\/OVERALL_EXPORT_METADATA_FILE@, where @BUCKET_NAME@ is the name of the Cloud Storage bucket, @NAMESPACE_PATH@ is an optional Cloud Storage namespace path (this is not a Cloud Datastore namespace), and @OVERALL_EXPORT_METADATA_FILE@ is the metadata file written by the ExportEntities operation. For more information about Cloud Storage namespace paths, see <https://cloud.google.com/storage/docs/naming#object-considerations Object name considerations>. For more information, see google.datastore.admin.v1.ExportEntitiesResponse.output/url.
    inputUrl :: (Core.Maybe Core.Text),
    -- | Client-assigned labels.
    labels :: (Core.Maybe GoogleDatastoreAdminV1ImportEntitiesRequest_Labels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1ImportEntitiesRequest' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1ImportEntitiesRequest ::
  GoogleDatastoreAdminV1ImportEntitiesRequest
newGoogleDatastoreAdminV1ImportEntitiesRequest =
  GoogleDatastoreAdminV1ImportEntitiesRequest
    { entityFilter = Core.Nothing,
      inputUrl = Core.Nothing,
      labels = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1ImportEntitiesRequest
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1ImportEntitiesRequest"
      ( \o ->
          GoogleDatastoreAdminV1ImportEntitiesRequest
            Core.<$> (o Core..:? "entityFilter")
            Core.<*> (o Core..:? "inputUrl")
            Core.<*> (o Core..:? "labels")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1ImportEntitiesRequest
  where
  toJSON
    GoogleDatastoreAdminV1ImportEntitiesRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("entityFilter" Core..=) Core.<$> entityFilter,
              ("inputUrl" Core..=) Core.<$> inputUrl,
              ("labels" Core..=) Core.<$> labels
            ]
        )

-- | Client-assigned labels.
--
-- /See:/ 'newGoogleDatastoreAdminV1ImportEntitiesRequest_Labels' smart constructor.
newtype GoogleDatastoreAdminV1ImportEntitiesRequest_Labels = GoogleDatastoreAdminV1ImportEntitiesRequest_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1ImportEntitiesRequest_Labels' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1ImportEntitiesRequest_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleDatastoreAdminV1ImportEntitiesRequest_Labels
newGoogleDatastoreAdminV1ImportEntitiesRequest_Labels additional =
  GoogleDatastoreAdminV1ImportEntitiesRequest_Labels {additional = additional}

instance
  Core.FromJSON
    GoogleDatastoreAdminV1ImportEntitiesRequest_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1ImportEntitiesRequest_Labels"
      ( \o ->
          GoogleDatastoreAdminV1ImportEntitiesRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1ImportEntitiesRequest_Labels
  where
  toJSON
    GoogleDatastoreAdminV1ImportEntitiesRequest_Labels {..} =
      Core.toJSON additional

-- | Datastore composite index definition.
--
-- /See:/ 'newGoogleDatastoreAdminV1Index' smart constructor.
data GoogleDatastoreAdminV1Index = GoogleDatastoreAdminV1Index
  { -- | Required. The index\'s ancestor mode. Must not be ANCESTOR/MODE/UNSPECIFIED.
    ancestor :: (Core.Maybe GoogleDatastoreAdminV1Index_Ancestor),
    -- | Output only. The resource ID of the index.
    indexId :: (Core.Maybe Core.Text),
    -- | Required. The entity kind to which this index applies.
    kind :: (Core.Maybe Core.Text),
    -- | Output only. Project ID.
    projectId :: (Core.Maybe Core.Text),
    -- | Required. An ordered sequence of property names and their index attributes.
    properties :: (Core.Maybe [GoogleDatastoreAdminV1IndexedProperty]),
    -- | Output only. The state of the index.
    state :: (Core.Maybe GoogleDatastoreAdminV1Index_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1Index' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1Index ::
  GoogleDatastoreAdminV1Index
newGoogleDatastoreAdminV1Index =
  GoogleDatastoreAdminV1Index
    { ancestor = Core.Nothing,
      indexId = Core.Nothing,
      kind = Core.Nothing,
      projectId = Core.Nothing,
      properties = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON GoogleDatastoreAdminV1Index where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1Index"
      ( \o ->
          GoogleDatastoreAdminV1Index
            Core.<$> (o Core..:? "ancestor")
            Core.<*> (o Core..:? "indexId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "properties" Core..!= Core.mempty)
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON GoogleDatastoreAdminV1Index where
  toJSON GoogleDatastoreAdminV1Index {..} =
    Core.object
      ( Core.catMaybes
          [ ("ancestor" Core..=) Core.<$> ancestor,
            ("indexId" Core..=) Core.<$> indexId,
            ("kind" Core..=) Core.<$> kind,
            ("projectId" Core..=) Core.<$> projectId,
            ("properties" Core..=) Core.<$> properties,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Metadata for Index operations.
--
-- /See:/ 'newGoogleDatastoreAdminV1IndexOperationMetadata' smart constructor.
data GoogleDatastoreAdminV1IndexOperationMetadata = GoogleDatastoreAdminV1IndexOperationMetadata
  { -- | Metadata common to all Datastore Admin operations.
    common :: (Core.Maybe GoogleDatastoreAdminV1CommonMetadata),
    -- | The index resource ID that this operation is acting on.
    indexId :: (Core.Maybe Core.Text),
    -- | An estimate of the number of entities processed.
    progressEntities :: (Core.Maybe GoogleDatastoreAdminV1Progress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1IndexOperationMetadata' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1IndexOperationMetadata ::
  GoogleDatastoreAdminV1IndexOperationMetadata
newGoogleDatastoreAdminV1IndexOperationMetadata =
  GoogleDatastoreAdminV1IndexOperationMetadata
    { common = Core.Nothing,
      indexId = Core.Nothing,
      progressEntities = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1IndexOperationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1IndexOperationMetadata"
      ( \o ->
          GoogleDatastoreAdminV1IndexOperationMetadata
            Core.<$> (o Core..:? "common")
            Core.<*> (o Core..:? "indexId")
            Core.<*> (o Core..:? "progressEntities")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1IndexOperationMetadata
  where
  toJSON
    GoogleDatastoreAdminV1IndexOperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("common" Core..=) Core.<$> common,
              ("indexId" Core..=) Core.<$> indexId,
              ("progressEntities" Core..=)
                Core.<$> progressEntities
            ]
        )

-- | A property of an index.
--
-- /See:/ 'newGoogleDatastoreAdminV1IndexedProperty' smart constructor.
data GoogleDatastoreAdminV1IndexedProperty = GoogleDatastoreAdminV1IndexedProperty
  { -- | Required. The indexed property\'s direction. Must not be DIRECTION_UNSPECIFIED.
    direction :: (Core.Maybe GoogleDatastoreAdminV1IndexedProperty_Direction),
    -- | Required. The property name to index.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1IndexedProperty' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1IndexedProperty ::
  GoogleDatastoreAdminV1IndexedProperty
newGoogleDatastoreAdminV1IndexedProperty =
  GoogleDatastoreAdminV1IndexedProperty
    { direction = Core.Nothing,
      name = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1IndexedProperty
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1IndexedProperty"
      ( \o ->
          GoogleDatastoreAdminV1IndexedProperty
            Core.<$> (o Core..:? "direction")
            Core.<*> (o Core..:? "name")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1IndexedProperty
  where
  toJSON GoogleDatastoreAdminV1IndexedProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("direction" Core..=) Core.<$> direction,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | The response for google.datastore.admin.v1.DatastoreAdmin.ListIndexes.
--
-- /See:/ 'newGoogleDatastoreAdminV1ListIndexesResponse' smart constructor.
data GoogleDatastoreAdminV1ListIndexesResponse = GoogleDatastoreAdminV1ListIndexesResponse
  { -- | The indexes.
    indexes :: (Core.Maybe [GoogleDatastoreAdminV1Index]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1ListIndexesResponse' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1ListIndexesResponse ::
  GoogleDatastoreAdminV1ListIndexesResponse
newGoogleDatastoreAdminV1ListIndexesResponse =
  GoogleDatastoreAdminV1ListIndexesResponse
    { indexes = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1ListIndexesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1ListIndexesResponse"
      ( \o ->
          GoogleDatastoreAdminV1ListIndexesResponse
            Core.<$> (o Core..:? "indexes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1ListIndexesResponse
  where
  toJSON GoogleDatastoreAdminV1ListIndexesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexes" Core..=) Core.<$> indexes,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | An event signifying the start of a new step in a <https://cloud.google.com/datastore/docs/upgrade-to-firestore migration from Cloud Datastore to Cloud Firestore in Datastore mode>.
--
-- /See:/ 'newGoogleDatastoreAdminV1MigrationProgressEvent' smart constructor.
data GoogleDatastoreAdminV1MigrationProgressEvent = GoogleDatastoreAdminV1MigrationProgressEvent
  { -- | Details for the @PREPARE@ step.
    prepareStepDetails :: (Core.Maybe GoogleDatastoreAdminV1PrepareStepDetails),
    -- | Details for the @REDIRECT_WRITES@ step.
    redirectWritesStepDetails :: (Core.Maybe GoogleDatastoreAdminV1RedirectWritesStepDetails),
    -- | The step that is starting. An event with step set to @START@ indicates that the migration has been reverted back to the initial pre-migration state.
    step :: (Core.Maybe GoogleDatastoreAdminV1MigrationProgressEvent_Step)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1MigrationProgressEvent' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1MigrationProgressEvent ::
  GoogleDatastoreAdminV1MigrationProgressEvent
newGoogleDatastoreAdminV1MigrationProgressEvent =
  GoogleDatastoreAdminV1MigrationProgressEvent
    { prepareStepDetails = Core.Nothing,
      redirectWritesStepDetails = Core.Nothing,
      step = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1MigrationProgressEvent
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1MigrationProgressEvent"
      ( \o ->
          GoogleDatastoreAdminV1MigrationProgressEvent
            Core.<$> (o Core..:? "prepareStepDetails")
            Core.<*> (o Core..:? "redirectWritesStepDetails")
            Core.<*> (o Core..:? "step")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1MigrationProgressEvent
  where
  toJSON
    GoogleDatastoreAdminV1MigrationProgressEvent {..} =
      Core.object
        ( Core.catMaybes
            [ ("prepareStepDetails" Core..=)
                Core.<$> prepareStepDetails,
              ("redirectWritesStepDetails" Core..=)
                Core.<$> redirectWritesStepDetails,
              ("step" Core..=) Core.<$> step
            ]
        )

-- | An event signifying a change in state of a <https://cloud.google.com/datastore/docs/upgrade-to-firestore migration from Cloud Datastore to Cloud Firestore in Datastore mode>.
--
-- /See:/ 'newGoogleDatastoreAdminV1MigrationStateEvent' smart constructor.
newtype GoogleDatastoreAdminV1MigrationStateEvent = GoogleDatastoreAdminV1MigrationStateEvent
  { -- | The new state of the migration.
    state :: (Core.Maybe GoogleDatastoreAdminV1MigrationStateEvent_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1MigrationStateEvent' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1MigrationStateEvent ::
  GoogleDatastoreAdminV1MigrationStateEvent
newGoogleDatastoreAdminV1MigrationStateEvent =
  GoogleDatastoreAdminV1MigrationStateEvent {state = Core.Nothing}

instance
  Core.FromJSON
    GoogleDatastoreAdminV1MigrationStateEvent
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1MigrationStateEvent"
      ( \o ->
          GoogleDatastoreAdminV1MigrationStateEvent
            Core.<$> (o Core..:? "state")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1MigrationStateEvent
  where
  toJSON GoogleDatastoreAdminV1MigrationStateEvent {..} =
    Core.object
      (Core.catMaybes [("state" Core..=) Core.<$> state])

-- | Details for the @PREPARE@ step.
--
-- /See:/ 'newGoogleDatastoreAdminV1PrepareStepDetails' smart constructor.
newtype GoogleDatastoreAdminV1PrepareStepDetails = GoogleDatastoreAdminV1PrepareStepDetails
  { -- | The concurrency mode this database will use when it reaches the @REDIRECT_WRITES@ step.
    concurrencyMode ::
      ( Core.Maybe
          GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1PrepareStepDetails' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1PrepareStepDetails ::
  GoogleDatastoreAdminV1PrepareStepDetails
newGoogleDatastoreAdminV1PrepareStepDetails =
  GoogleDatastoreAdminV1PrepareStepDetails {concurrencyMode = Core.Nothing}

instance
  Core.FromJSON
    GoogleDatastoreAdminV1PrepareStepDetails
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1PrepareStepDetails"
      ( \o ->
          GoogleDatastoreAdminV1PrepareStepDetails
            Core.<$> (o Core..:? "concurrencyMode")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1PrepareStepDetails
  where
  toJSON GoogleDatastoreAdminV1PrepareStepDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("concurrencyMode" Core..=)
              Core.<$> concurrencyMode
          ]
      )

-- | Measures the progress of a particular metric.
--
-- /See:/ 'newGoogleDatastoreAdminV1Progress' smart constructor.
data GoogleDatastoreAdminV1Progress = GoogleDatastoreAdminV1Progress
  { -- | The amount of work that has been completed. Note that this may be greater than work_estimated.
    workCompleted :: (Core.Maybe Core.Int64),
    -- | An estimate of how much work needs to be performed. May be zero if the work estimate is unavailable.
    workEstimated :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1Progress' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1Progress ::
  GoogleDatastoreAdminV1Progress
newGoogleDatastoreAdminV1Progress =
  GoogleDatastoreAdminV1Progress
    { workCompleted = Core.Nothing,
      workEstimated = Core.Nothing
    }

instance Core.FromJSON GoogleDatastoreAdminV1Progress where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1Progress"
      ( \o ->
          GoogleDatastoreAdminV1Progress
            Core.<$> (o Core..:? "workCompleted")
            Core.<*> (o Core..:? "workEstimated")
      )

instance Core.ToJSON GoogleDatastoreAdminV1Progress where
  toJSON GoogleDatastoreAdminV1Progress {..} =
    Core.object
      ( Core.catMaybes
          [ ("workCompleted" Core..=) Core.. Core.AsText
              Core.<$> workCompleted,
            ("workEstimated" Core..=) Core.. Core.AsText
              Core.<$> workEstimated
          ]
      )

-- | Details for the @REDIRECT_WRITES@ step.
--
-- /See:/ 'newGoogleDatastoreAdminV1RedirectWritesStepDetails' smart constructor.
newtype GoogleDatastoreAdminV1RedirectWritesStepDetails = GoogleDatastoreAdminV1RedirectWritesStepDetails
  { -- | Ths concurrency mode for this database.
    concurrencyMode ::
      ( Core.Maybe
          GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1RedirectWritesStepDetails' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1RedirectWritesStepDetails ::
  GoogleDatastoreAdminV1RedirectWritesStepDetails
newGoogleDatastoreAdminV1RedirectWritesStepDetails =
  GoogleDatastoreAdminV1RedirectWritesStepDetails
    { concurrencyMode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1RedirectWritesStepDetails
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1RedirectWritesStepDetails"
      ( \o ->
          GoogleDatastoreAdminV1RedirectWritesStepDetails
            Core.<$> (o Core..:? "concurrencyMode")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1RedirectWritesStepDetails
  where
  toJSON
    GoogleDatastoreAdminV1RedirectWritesStepDetails {..} =
      Core.object
        ( Core.catMaybes
            [ ("concurrencyMode" Core..=)
                Core.<$> concurrencyMode
            ]
        )

-- | Metadata common to all Datastore Admin operations.
--
-- /See:/ 'newGoogleDatastoreAdminV1beta1CommonMetadata' smart constructor.
data GoogleDatastoreAdminV1beta1CommonMetadata = GoogleDatastoreAdminV1beta1CommonMetadata
  { -- | The time the operation ended, either successfully or otherwise.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The client-assigned labels which were provided when the operation was created. May also include additional labels.
    labels :: (Core.Maybe GoogleDatastoreAdminV1beta1CommonMetadata_Labels),
    -- | The type of the operation. Can be used as a filter in ListOperationsRequest.
    operationType ::
      ( Core.Maybe
          GoogleDatastoreAdminV1beta1CommonMetadata_OperationType
      ),
    -- | The time that work began on the operation.
    startTime :: (Core.Maybe Core.DateTime),
    -- | The current state of the Operation.
    state :: (Core.Maybe GoogleDatastoreAdminV1beta1CommonMetadata_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1beta1CommonMetadata' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1beta1CommonMetadata ::
  GoogleDatastoreAdminV1beta1CommonMetadata
newGoogleDatastoreAdminV1beta1CommonMetadata =
  GoogleDatastoreAdminV1beta1CommonMetadata
    { endTime = Core.Nothing,
      labels = Core.Nothing,
      operationType = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1beta1CommonMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1beta1CommonMetadata"
      ( \o ->
          GoogleDatastoreAdminV1beta1CommonMetadata
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1beta1CommonMetadata
  where
  toJSON GoogleDatastoreAdminV1beta1CommonMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("labels" Core..=) Core.<$> labels,
            ("operationType" Core..=) Core.<$> operationType,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | The client-assigned labels which were provided when the operation was created. May also include additional labels.
--
-- /See:/ 'newGoogleDatastoreAdminV1beta1CommonMetadata_Labels' smart constructor.
newtype GoogleDatastoreAdminV1beta1CommonMetadata_Labels = GoogleDatastoreAdminV1beta1CommonMetadata_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1beta1CommonMetadata_Labels' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1beta1CommonMetadata_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleDatastoreAdminV1beta1CommonMetadata_Labels
newGoogleDatastoreAdminV1beta1CommonMetadata_Labels additional =
  GoogleDatastoreAdminV1beta1CommonMetadata_Labels {additional = additional}

instance
  Core.FromJSON
    GoogleDatastoreAdminV1beta1CommonMetadata_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1beta1CommonMetadata_Labels"
      ( \o ->
          GoogleDatastoreAdminV1beta1CommonMetadata_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1beta1CommonMetadata_Labels
  where
  toJSON
    GoogleDatastoreAdminV1beta1CommonMetadata_Labels {..} =
      Core.toJSON additional

-- | Identifies a subset of entities in a project. This is specified as combinations of kinds and namespaces (either or both of which may be all, as described in the following examples). Example usage: Entire project: kinds=[], namespace/ids=[] Kinds Foo and Bar in all namespaces: kinds=[\'Foo\', \'Bar\'], namespace/ids=[] Kinds Foo and Bar only in the default namespace: kinds=[\'Foo\', \'Bar\'], namespace/ids=[\'\'] Kinds Foo and Bar in both the default and Baz namespaces: kinds=[\'Foo\', \'Bar\'], namespace/ids=[\'\', \'Baz\'] The entire Baz namespace: kinds=[], namespace_ids=[\'Baz\']
--
-- /See:/ 'newGoogleDatastoreAdminV1beta1EntityFilter' smart constructor.
data GoogleDatastoreAdminV1beta1EntityFilter = GoogleDatastoreAdminV1beta1EntityFilter
  { -- | If empty, then this represents all kinds.
    kinds :: (Core.Maybe [Core.Text]),
    -- | An empty list represents all namespaces. This is the preferred usage for projects that don\'t use namespaces. An empty string element represents the default namespace. This should be used if the project has data in non-default namespaces, but doesn\'t want to include them. Each namespace in this list must be unique.
    namespaceIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1beta1EntityFilter' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1beta1EntityFilter ::
  GoogleDatastoreAdminV1beta1EntityFilter
newGoogleDatastoreAdminV1beta1EntityFilter =
  GoogleDatastoreAdminV1beta1EntityFilter
    { kinds = Core.Nothing,
      namespaceIds = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1beta1EntityFilter
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1beta1EntityFilter"
      ( \o ->
          GoogleDatastoreAdminV1beta1EntityFilter
            Core.<$> (o Core..:? "kinds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "namespaceIds" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1beta1EntityFilter
  where
  toJSON GoogleDatastoreAdminV1beta1EntityFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("kinds" Core..=) Core.<$> kinds,
            ("namespaceIds" Core..=) Core.<$> namespaceIds
          ]
      )

-- | Metadata for ExportEntities operations.
--
-- /See:/ 'newGoogleDatastoreAdminV1beta1ExportEntitiesMetadata' smart constructor.
data GoogleDatastoreAdminV1beta1ExportEntitiesMetadata = GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
  { -- | Metadata common to all Datastore Admin operations.
    common :: (Core.Maybe GoogleDatastoreAdminV1beta1CommonMetadata),
    -- | Description of which entities are being exported.
    entityFilter :: (Core.Maybe GoogleDatastoreAdminV1beta1EntityFilter),
    -- | Location for the export metadata and data files. This will be the same value as the google.datastore.admin.v1beta1.ExportEntitiesRequest.output/url/prefix field. The final output location is provided in google.datastore.admin.v1beta1.ExportEntitiesResponse.output_url.
    outputUrlPrefix :: (Core.Maybe Core.Text),
    -- | An estimate of the number of bytes processed.
    progressBytes :: (Core.Maybe GoogleDatastoreAdminV1beta1Progress),
    -- | An estimate of the number of entities processed.
    progressEntities :: (Core.Maybe GoogleDatastoreAdminV1beta1Progress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1beta1ExportEntitiesMetadata' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1beta1ExportEntitiesMetadata ::
  GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
newGoogleDatastoreAdminV1beta1ExportEntitiesMetadata =
  GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
    { common = Core.Nothing,
      entityFilter = Core.Nothing,
      outputUrlPrefix = Core.Nothing,
      progressBytes = Core.Nothing,
      progressEntities = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1beta1ExportEntitiesMetadata"
      ( \o ->
          GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
            Core.<$> (o Core..:? "common")
              Core.<*> (o Core..:? "entityFilter")
              Core.<*> (o Core..:? "outputUrlPrefix")
              Core.<*> (o Core..:? "progressBytes")
              Core.<*> (o Core..:? "progressEntities")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
  where
  toJSON
    GoogleDatastoreAdminV1beta1ExportEntitiesMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("common" Core..=) Core.<$> common,
              ("entityFilter" Core..=) Core.<$> entityFilter,
              ("outputUrlPrefix" Core..=) Core.<$> outputUrlPrefix,
              ("progressBytes" Core..=) Core.<$> progressBytes,
              ("progressEntities" Core..=)
                Core.<$> progressEntities
            ]
        )

-- | The response for google.datastore.admin.v1beta1.DatastoreAdmin.ExportEntities.
--
-- /See:/ 'newGoogleDatastoreAdminV1beta1ExportEntitiesResponse' smart constructor.
newtype GoogleDatastoreAdminV1beta1ExportEntitiesResponse = GoogleDatastoreAdminV1beta1ExportEntitiesResponse
  { -- | Location of the output metadata file. This can be used to begin an import into Cloud Datastore (this project or another project). See google.datastore.admin.v1beta1.ImportEntitiesRequest.input_url. Only present if the operation completed successfully.
    outputUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1beta1ExportEntitiesResponse' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1beta1ExportEntitiesResponse ::
  GoogleDatastoreAdminV1beta1ExportEntitiesResponse
newGoogleDatastoreAdminV1beta1ExportEntitiesResponse =
  GoogleDatastoreAdminV1beta1ExportEntitiesResponse {outputUrl = Core.Nothing}

instance
  Core.FromJSON
    GoogleDatastoreAdminV1beta1ExportEntitiesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1beta1ExportEntitiesResponse"
      ( \o ->
          GoogleDatastoreAdminV1beta1ExportEntitiesResponse
            Core.<$> (o Core..:? "outputUrl")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1beta1ExportEntitiesResponse
  where
  toJSON
    GoogleDatastoreAdminV1beta1ExportEntitiesResponse {..} =
      Core.object
        ( Core.catMaybes
            [("outputUrl" Core..=) Core.<$> outputUrl]
        )

-- | Metadata for ImportEntities operations.
--
-- /See:/ 'newGoogleDatastoreAdminV1beta1ImportEntitiesMetadata' smart constructor.
data GoogleDatastoreAdminV1beta1ImportEntitiesMetadata = GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
  { -- | Metadata common to all Datastore Admin operations.
    common :: (Core.Maybe GoogleDatastoreAdminV1beta1CommonMetadata),
    -- | Description of which entities are being imported.
    entityFilter :: (Core.Maybe GoogleDatastoreAdminV1beta1EntityFilter),
    -- | The location of the import metadata file. This will be the same value as the google.datastore.admin.v1beta1.ExportEntitiesResponse.output_url field.
    inputUrl :: (Core.Maybe Core.Text),
    -- | An estimate of the number of bytes processed.
    progressBytes :: (Core.Maybe GoogleDatastoreAdminV1beta1Progress),
    -- | An estimate of the number of entities processed.
    progressEntities :: (Core.Maybe GoogleDatastoreAdminV1beta1Progress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1beta1ImportEntitiesMetadata' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1beta1ImportEntitiesMetadata ::
  GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
newGoogleDatastoreAdminV1beta1ImportEntitiesMetadata =
  GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
    { common = Core.Nothing,
      entityFilter = Core.Nothing,
      inputUrl = Core.Nothing,
      progressBytes = Core.Nothing,
      progressEntities = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1beta1ImportEntitiesMetadata"
      ( \o ->
          GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
            Core.<$> (o Core..:? "common")
              Core.<*> (o Core..:? "entityFilter")
              Core.<*> (o Core..:? "inputUrl")
              Core.<*> (o Core..:? "progressBytes")
              Core.<*> (o Core..:? "progressEntities")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
  where
  toJSON
    GoogleDatastoreAdminV1beta1ImportEntitiesMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("common" Core..=) Core.<$> common,
              ("entityFilter" Core..=) Core.<$> entityFilter,
              ("inputUrl" Core..=) Core.<$> inputUrl,
              ("progressBytes" Core..=) Core.<$> progressBytes,
              ("progressEntities" Core..=)
                Core.<$> progressEntities
            ]
        )

-- | Measures the progress of a particular metric.
--
-- /See:/ 'newGoogleDatastoreAdminV1beta1Progress' smart constructor.
data GoogleDatastoreAdminV1beta1Progress = GoogleDatastoreAdminV1beta1Progress
  { -- | The amount of work that has been completed. Note that this may be greater than work_estimated.
    workCompleted :: (Core.Maybe Core.Int64),
    -- | An estimate of how much work needs to be performed. May be zero if the work estimate is unavailable.
    workEstimated :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDatastoreAdminV1beta1Progress' with the minimum fields required to make a request.
newGoogleDatastoreAdminV1beta1Progress ::
  GoogleDatastoreAdminV1beta1Progress
newGoogleDatastoreAdminV1beta1Progress =
  GoogleDatastoreAdminV1beta1Progress
    { workCompleted = Core.Nothing,
      workEstimated = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDatastoreAdminV1beta1Progress
  where
  parseJSON =
    Core.withObject
      "GoogleDatastoreAdminV1beta1Progress"
      ( \o ->
          GoogleDatastoreAdminV1beta1Progress
            Core.<$> (o Core..:? "workCompleted")
            Core.<*> (o Core..:? "workEstimated")
      )

instance
  Core.ToJSON
    GoogleDatastoreAdminV1beta1Progress
  where
  toJSON GoogleDatastoreAdminV1beta1Progress {..} =
    Core.object
      ( Core.catMaybes
          [ ("workCompleted" Core..=) Core.. Core.AsText
              Core.<$> workCompleted,
            ("workEstimated" Core..=) Core.. Core.AsText
              Core.<$> workEstimated
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newGoogleLongrunningListOperationsResponse' smart constructor.
data GoogleLongrunningListOperationsResponse = GoogleLongrunningListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [GoogleLongrunningOperation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningListOperationsResponse' with the minimum fields required to make a request.
newGoogleLongrunningListOperationsResponse ::
  GoogleLongrunningListOperationsResponse
newGoogleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleLongrunningListOperationsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunningListOperationsResponse"
      ( \o ->
          GoogleLongrunningListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleLongrunningListOperationsResponse
  where
  toJSON GoogleLongrunningListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newGoogleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation = GoogleLongrunningOperation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe GoogleLongrunningOperation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe GoogleLongrunningOperation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
newGoogleLongrunningOperation ::
  GoogleLongrunningOperation
newGoogleLongrunningOperation =
  GoogleLongrunningOperation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON GoogleLongrunningOperation where
  parseJSON =
    Core.withObject
      "GoogleLongrunningOperation"
      ( \o ->
          GoogleLongrunningOperation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON GoogleLongrunningOperation where
  toJSON GoogleLongrunningOperation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newGoogleLongrunningOperation_Metadata' smart constructor.
newtype GoogleLongrunningOperation_Metadata = GoogleLongrunningOperation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Metadata' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleLongrunningOperation_Metadata
newGoogleLongrunningOperation_Metadata additional =
  GoogleLongrunningOperation_Metadata {additional = additional}

instance
  Core.FromJSON
    GoogleLongrunningOperation_Metadata
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunningOperation_Metadata"
      ( \o ->
          GoogleLongrunningOperation_Metadata
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleLongrunningOperation_Metadata
  where
  toJSON GoogleLongrunningOperation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newGoogleLongrunningOperation_Response' smart constructor.
newtype GoogleLongrunningOperation_Response = GoogleLongrunningOperation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Response' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleLongrunningOperation_Response
newGoogleLongrunningOperation_Response additional =
  GoogleLongrunningOperation_Response {additional = additional}

instance
  Core.FromJSON
    GoogleLongrunningOperation_Response
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunningOperation_Response"
      ( \o ->
          GoogleLongrunningOperation_Response
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleLongrunningOperation_Response
  where
  toJSON GoogleLongrunningOperation_Response {..} =
    Core.toJSON additional

-- | A <https://cloud.google.com/datastore/docs/apis/gql/gql_reference GQL query>.
--
-- /See:/ 'newGqlQuery' smart constructor.
data GqlQuery = GqlQuery
  { -- | When false, the query string must not contain any literals and instead must bind all values. For example, @SELECT * FROM Kind WHERE a = \'string literal\'@ is not allowed, while @SELECT * FROM Kind WHERE a = \@value@ is.
    allowLiterals :: (Core.Maybe Core.Bool),
    -- | For each non-reserved named binding site in the query string, there must be a named parameter with that name, but not necessarily the inverse. Key must match regex @A-Za-z_$*@, must not match regex @__.*__@, and must not be @\"\"@.
    namedBindings :: (Core.Maybe GqlQuery_NamedBindings),
    -- | Numbered binding site \@1 references the first numbered parameter, effectively using 1-based indexing, rather than the usual 0. For each binding site numbered i in @query_string@, there must be an i-th numbered parameter. The inverse must also be true.
    positionalBindings :: (Core.Maybe [GqlQueryParameter]),
    -- | A string of the format described <https://cloud.google.com/datastore/docs/apis/gql/gql_reference here>.
    queryString :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GqlQuery' with the minimum fields required to make a request.
newGqlQuery ::
  GqlQuery
newGqlQuery =
  GqlQuery
    { allowLiterals = Core.Nothing,
      namedBindings = Core.Nothing,
      positionalBindings = Core.Nothing,
      queryString = Core.Nothing
    }

instance Core.FromJSON GqlQuery where
  parseJSON =
    Core.withObject
      "GqlQuery"
      ( \o ->
          GqlQuery
            Core.<$> (o Core..:? "allowLiterals")
            Core.<*> (o Core..:? "namedBindings")
            Core.<*> ( o Core..:? "positionalBindings"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "queryString")
      )

instance Core.ToJSON GqlQuery where
  toJSON GqlQuery {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowLiterals" Core..=) Core.<$> allowLiterals,
            ("namedBindings" Core..=) Core.<$> namedBindings,
            ("positionalBindings" Core..=)
              Core.<$> positionalBindings,
            ("queryString" Core..=) Core.<$> queryString
          ]
      )

-- | For each non-reserved named binding site in the query string, there must be a named parameter with that name, but not necessarily the inverse. Key must match regex @A-Za-z_$*@, must not match regex @__.*__@, and must not be @\"\"@.
--
-- /See:/ 'newGqlQuery_NamedBindings' smart constructor.
newtype GqlQuery_NamedBindings = GqlQuery_NamedBindings
  { -- |
    additional :: (Core.HashMap Core.Text GqlQueryParameter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GqlQuery_NamedBindings' with the minimum fields required to make a request.
newGqlQuery_NamedBindings ::
  -- |  See 'additional'.
  Core.HashMap Core.Text GqlQueryParameter ->
  GqlQuery_NamedBindings
newGqlQuery_NamedBindings additional =
  GqlQuery_NamedBindings {additional = additional}

instance Core.FromJSON GqlQuery_NamedBindings where
  parseJSON =
    Core.withObject
      "GqlQuery_NamedBindings"
      ( \o ->
          GqlQuery_NamedBindings
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GqlQuery_NamedBindings where
  toJSON GqlQuery_NamedBindings {..} =
    Core.toJSON additional

-- | A binding parameter for a GQL query.
--
-- /See:/ 'newGqlQueryParameter' smart constructor.
data GqlQueryParameter = GqlQueryParameter
  { -- | A query cursor. Query cursors are returned in query result batches.
    cursor :: (Core.Maybe Core.Base64),
    -- | A value parameter.
    value :: (Core.Maybe Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GqlQueryParameter' with the minimum fields required to make a request.
newGqlQueryParameter ::
  GqlQueryParameter
newGqlQueryParameter =
  GqlQueryParameter {cursor = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON GqlQueryParameter where
  parseJSON =
    Core.withObject
      "GqlQueryParameter"
      ( \o ->
          GqlQueryParameter
            Core.<$> (o Core..:? "cursor") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GqlQueryParameter where
  toJSON GqlQueryParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("cursor" Core..=) Core.<$> cursor,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A unique identifier for an entity. If a key\'s partition ID or any of its path kinds or names are reserved\/read-only, the key is reserved\/read-only. A reserved\/read-only key is forbidden in certain documented contexts.
--
-- /See:/ 'newKey' smart constructor.
data Key = Key
  { -- | Entities are partitioned into subsets, currently identified by a project ID and namespace ID. Queries are scoped to a single partition.
    partitionId :: (Core.Maybe PartitionId),
    -- | The entity path. An entity path consists of one or more elements composed of a kind and a string or numerical identifier, which identify entities. The first element identifies a /root entity/, the second element identifies a /child/ of the root entity, the third element identifies a child of the second entity, and so forth. The entities identified by all prefixes of the path are called the element\'s /ancestors/. An entity path is always fully complete: /all/ of the entity\'s ancestors are required to be in the path along with the entity identifier itself. The only exception is that in some documented cases, the identifier in the last path element (for the entity) itself may be omitted. For example, the last path element of the key of @Mutation.insert@ may have no identifier. A path can never be empty, and a path can have at most 100 elements.
    path :: (Core.Maybe [PathElement])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Key' with the minimum fields required to make a request.
newKey ::
  Key
newKey = Key {partitionId = Core.Nothing, path = Core.Nothing}

instance Core.FromJSON Key where
  parseJSON =
    Core.withObject
      "Key"
      ( \o ->
          Key
            Core.<$> (o Core..:? "partitionId")
            Core.<*> (o Core..:? "path" Core..!= Core.mempty)
      )

instance Core.ToJSON Key where
  toJSON Key {..} =
    Core.object
      ( Core.catMaybes
          [ ("partitionId" Core..=) Core.<$> partitionId,
            ("path" Core..=) Core.<$> path
          ]
      )

-- | A representation of a kind.
--
-- /See:/ 'newKindExpression' smart constructor.
newtype KindExpression = KindExpression
  { -- | The name of the kind.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KindExpression' with the minimum fields required to make a request.
newKindExpression ::
  KindExpression
newKindExpression = KindExpression {name = Core.Nothing}

instance Core.FromJSON KindExpression where
  parseJSON =
    Core.withObject
      "KindExpression"
      (\o -> KindExpression Core.<$> (o Core..:? "name"))

instance Core.ToJSON KindExpression where
  toJSON KindExpression {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | An object that represents a latitude\/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
--
-- /See:/ 'newLatLng' smart constructor.
data LatLng = LatLng
  { -- | The latitude in degrees. It must be in the range [-90.0, +90.0].
    latitude :: (Core.Maybe Core.Double),
    -- | The longitude in degrees. It must be in the range [-180.0, +180.0].
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
newLatLng ::
  LatLng
newLatLng = LatLng {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON LatLng where
  parseJSON =
    Core.withObject
      "LatLng"
      ( \o ->
          LatLng
            Core.<$> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON LatLng where
  toJSON LatLng {..} =
    Core.object
      ( Core.catMaybes
          [ ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

-- | The request for Datastore.Lookup.
--
-- /See:/ 'newLookupRequest' smart constructor.
data LookupRequest = LookupRequest
  { -- | Required. Keys of entities to look up.
    keys :: (Core.Maybe [Key]),
    -- | The options for this lookup request.
    readOptions :: (Core.Maybe ReadOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LookupRequest' with the minimum fields required to make a request.
newLookupRequest ::
  LookupRequest
newLookupRequest =
  LookupRequest {keys = Core.Nothing, readOptions = Core.Nothing}

instance Core.FromJSON LookupRequest where
  parseJSON =
    Core.withObject
      "LookupRequest"
      ( \o ->
          LookupRequest
            Core.<$> (o Core..:? "keys" Core..!= Core.mempty)
            Core.<*> (o Core..:? "readOptions")
      )

instance Core.ToJSON LookupRequest where
  toJSON LookupRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("keys" Core..=) Core.<$> keys,
            ("readOptions" Core..=) Core.<$> readOptions
          ]
      )

-- | The response for Datastore.Lookup.
--
-- /See:/ 'newLookupResponse' smart constructor.
data LookupResponse = LookupResponse
  { -- | A list of keys that were not looked up due to resource constraints. The order of results in this field is undefined and has no relation to the order of the keys in the input.
    deferred :: (Core.Maybe [Key]),
    -- | Entities found as @ResultType.FULL@ entities. The order of results in this field is undefined and has no relation to the order of the keys in the input.
    found :: (Core.Maybe [EntityResult]),
    -- | Entities not found as @ResultType.KEY_ONLY@ entities. The order of results in this field is undefined and has no relation to the order of the keys in the input.
    missing :: (Core.Maybe [EntityResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LookupResponse' with the minimum fields required to make a request.
newLookupResponse ::
  LookupResponse
newLookupResponse =
  LookupResponse
    { deferred = Core.Nothing,
      found = Core.Nothing,
      missing = Core.Nothing
    }

instance Core.FromJSON LookupResponse where
  parseJSON =
    Core.withObject
      "LookupResponse"
      ( \o ->
          LookupResponse
            Core.<$> (o Core..:? "deferred" Core..!= Core.mempty)
            Core.<*> (o Core..:? "found" Core..!= Core.mempty)
            Core.<*> (o Core..:? "missing" Core..!= Core.mempty)
      )

instance Core.ToJSON LookupResponse where
  toJSON LookupResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deferred" Core..=) Core.<$> deferred,
            ("found" Core..=) Core.<$> found,
            ("missing" Core..=) Core.<$> missing
          ]
      )

-- | A mutation to apply to an entity.
--
-- /See:/ 'newMutation' smart constructor.
data Mutation = Mutation
  { -- | The version of the entity that this mutation is being applied to. If this does not match the current version on the server, the mutation conflicts.
    baseVersion :: (Core.Maybe Core.Int64),
    -- | The key of the entity to delete. The entity may or may not already exist. Must have a complete key path and must not be reserved\/read-only.
    delete :: (Core.Maybe Key),
    -- | The entity to insert. The entity must not already exist. The entity key\'s final path element may be incomplete.
    insert :: (Core.Maybe Entity),
    -- | The entity to update. The entity must already exist. Must have a complete key path.
    update :: (Core.Maybe Entity),
    -- | The entity to upsert. The entity may or may not already exist. The entity key\'s final path element may be incomplete.
    upsert :: (Core.Maybe Entity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Mutation' with the minimum fields required to make a request.
newMutation ::
  Mutation
newMutation =
  Mutation
    { baseVersion = Core.Nothing,
      delete = Core.Nothing,
      insert = Core.Nothing,
      update = Core.Nothing,
      upsert = Core.Nothing
    }

instance Core.FromJSON Mutation where
  parseJSON =
    Core.withObject
      "Mutation"
      ( \o ->
          Mutation
            Core.<$> (o Core..:? "baseVersion")
            Core.<*> (o Core..:? "delete")
            Core.<*> (o Core..:? "insert")
            Core.<*> (o Core..:? "update")
            Core.<*> (o Core..:? "upsert")
      )

instance Core.ToJSON Mutation where
  toJSON Mutation {..} =
    Core.object
      ( Core.catMaybes
          [ ("baseVersion" Core..=) Core.. Core.AsText
              Core.<$> baseVersion,
            ("delete" Core..=) Core.<$> delete,
            ("insert" Core..=) Core.<$> insert,
            ("update" Core..=) Core.<$> update,
            ("upsert" Core..=) Core.<$> upsert
          ]
      )

-- | The result of applying a mutation.
--
-- /See:/ 'newMutationResult' smart constructor.
data MutationResult = MutationResult
  { -- | Whether a conflict was detected for this mutation. Always false when a conflict detection strategy field is not set in the mutation.
    conflictDetected :: (Core.Maybe Core.Bool),
    -- | The automatically allocated key. Set only when the mutation allocated a key.
    key :: (Core.Maybe Key),
    -- | The version of the entity on the server after processing the mutation. If the mutation doesn\'t change anything on the server, then the version will be the version of the current entity or, if no entity is present, a version that is strictly greater than the version of any previous entity and less than the version of any possible future entity.
    version :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MutationResult' with the minimum fields required to make a request.
newMutationResult ::
  MutationResult
newMutationResult =
  MutationResult
    { conflictDetected = Core.Nothing,
      key = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON MutationResult where
  parseJSON =
    Core.withObject
      "MutationResult"
      ( \o ->
          MutationResult
            Core.<$> (o Core..:? "conflictDetected")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON MutationResult where
  toJSON MutationResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("conflictDetected" Core..=)
              Core.<$> conflictDetected,
            ("key" Core..=) Core.<$> key,
            ("version" Core..=) Core.. Core.AsText
              Core.<$> version
          ]
      )

-- | A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty. A partition ID contains several dimensions: project ID and namespace ID. Partition dimensions: - May be @\"\"@. - Must be valid UTF-8 bytes. - Must have values that match regex @[A-Za-z\\d\\.\\-_]{1,100}@ If the value of any dimension matches regex @__.*__@, the partition is reserved\/read-only. A reserved\/read-only partition ID is forbidden in certain documented contexts. Foreign partition IDs (in which the project ID does not match the context project ID ) are discouraged. Reads and writes of foreign partition IDs may fail if the project is not in an active state.
--
-- /See:/ 'newPartitionId' smart constructor.
data PartitionId = PartitionId
  { -- | If not empty, the ID of the namespace to which the entities belong.
    namespaceId :: (Core.Maybe Core.Text),
    -- | The ID of the project to which the entities belong.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartitionId' with the minimum fields required to make a request.
newPartitionId ::
  PartitionId
newPartitionId =
  PartitionId {namespaceId = Core.Nothing, projectId = Core.Nothing}

instance Core.FromJSON PartitionId where
  parseJSON =
    Core.withObject
      "PartitionId"
      ( \o ->
          PartitionId
            Core.<$> (o Core..:? "namespaceId")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON PartitionId where
  toJSON PartitionId {..} =
    Core.object
      ( Core.catMaybes
          [ ("namespaceId" Core..=) Core.<$> namespaceId,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | A (kind, ID\/name) pair used to construct a key path. If either name or ID is set, the element is complete. If neither is set, the element is incomplete.
--
-- /See:/ 'newPathElement' smart constructor.
data PathElement = PathElement
  { -- | The auto-allocated ID of the entity. Never equal to zero. Values less than zero are discouraged and may not be supported in the future.
    id :: (Core.Maybe Core.Int64),
    -- | The kind of the entity. A kind matching regex @__.*__@ is reserved\/read-only. A kind must not contain more than 1500 bytes when UTF-8 encoded. Cannot be @\"\"@.
    kind :: (Core.Maybe Core.Text),
    -- | The name of the entity. A name matching regex @__.*__@ is reserved\/read-only. A name must not be more than 1500 bytes when UTF-8 encoded. Cannot be @\"\"@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PathElement' with the minimum fields required to make a request.
newPathElement ::
  PathElement
newPathElement =
  PathElement {id = Core.Nothing, kind = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON PathElement where
  parseJSON =
    Core.withObject
      "PathElement"
      ( \o ->
          PathElement
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON PathElement where
  toJSON PathElement {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | A representation of a property in a projection.
--
-- /See:/ 'newProjection' smart constructor.
newtype Projection = Projection
  { -- | The property to project.
    property :: (Core.Maybe PropertyReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Projection' with the minimum fields required to make a request.
newProjection ::
  Projection
newProjection = Projection {property = Core.Nothing}

instance Core.FromJSON Projection where
  parseJSON =
    Core.withObject
      "Projection"
      (\o -> Projection Core.<$> (o Core..:? "property"))

instance Core.ToJSON Projection where
  toJSON Projection {..} =
    Core.object
      ( Core.catMaybes
          [("property" Core..=) Core.<$> property]
      )

-- | A filter on a specific property.
--
-- /See:/ 'newPropertyFilter' smart constructor.
data PropertyFilter = PropertyFilter
  { -- | The operator to filter by.
    op :: (Core.Maybe PropertyFilter_Op),
    -- | The property to filter by.
    property :: (Core.Maybe PropertyReference),
    -- | The value to compare the property to.
    value :: (Core.Maybe Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PropertyFilter' with the minimum fields required to make a request.
newPropertyFilter ::
  PropertyFilter
newPropertyFilter =
  PropertyFilter
    { op = Core.Nothing,
      property = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON PropertyFilter where
  parseJSON =
    Core.withObject
      "PropertyFilter"
      ( \o ->
          PropertyFilter
            Core.<$> (o Core..:? "op")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON PropertyFilter where
  toJSON PropertyFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("op" Core..=) Core.<$> op,
            ("property" Core..=) Core.<$> property,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The desired order for a specific property.
--
-- /See:/ 'newPropertyOrder' smart constructor.
data PropertyOrder = PropertyOrder
  { -- | The direction to order by. Defaults to @ASCENDING@.
    direction :: (Core.Maybe PropertyOrder_Direction),
    -- | The property to order by.
    property :: (Core.Maybe PropertyReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PropertyOrder' with the minimum fields required to make a request.
newPropertyOrder ::
  PropertyOrder
newPropertyOrder =
  PropertyOrder {direction = Core.Nothing, property = Core.Nothing}

instance Core.FromJSON PropertyOrder where
  parseJSON =
    Core.withObject
      "PropertyOrder"
      ( \o ->
          PropertyOrder
            Core.<$> (o Core..:? "direction")
            Core.<*> (o Core..:? "property")
      )

instance Core.ToJSON PropertyOrder where
  toJSON PropertyOrder {..} =
    Core.object
      ( Core.catMaybes
          [ ("direction" Core..=) Core.<$> direction,
            ("property" Core..=) Core.<$> property
          ]
      )

-- | A reference to a property relative to the kind expressions.
--
-- /See:/ 'newPropertyReference' smart constructor.
newtype PropertyReference = PropertyReference
  { -- | The name of the property. If name includes \".\"s, it may be interpreted as a property name path.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PropertyReference' with the minimum fields required to make a request.
newPropertyReference ::
  PropertyReference
newPropertyReference = PropertyReference {name = Core.Nothing}

instance Core.FromJSON PropertyReference where
  parseJSON =
    Core.withObject
      "PropertyReference"
      ( \o ->
          PropertyReference Core.<$> (o Core..:? "name")
      )

instance Core.ToJSON PropertyReference where
  toJSON PropertyReference {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | A query for entities.
--
-- /See:/ 'newQuery' smart constructor.
data Query = Query
  { -- | The properties to make distinct. The query results will contain the first result for each distinct combination of values for the given properties (if empty, all results are returned).
    distinctOn :: (Core.Maybe [PropertyReference]),
    -- | An ending point for the query results. Query cursors are returned in query result batches and <https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets can only be used to limit the same query>.
    endCursor :: (Core.Maybe Core.Base64),
    -- | The filter to apply.
    filter :: (Core.Maybe Filter),
    -- | The kinds to query (if empty, returns entities of all kinds). Currently at most 1 kind may be specified.
    kind :: (Core.Maybe [KindExpression]),
    -- | The maximum number of results to return. Applies after all other constraints. Optional. Unspecified is interpreted as no limit. Must be >= 0 if specified.
    limit :: (Core.Maybe Core.Int32),
    -- | The number of results to skip. Applies before limit, but after all other constraints. Optional. Must be >= 0 if specified.
    offset :: (Core.Maybe Core.Int32),
    -- | The order to apply to the query results (if empty, order is unspecified).
    order :: (Core.Maybe [PropertyOrder]),
    -- | The projection to return. Defaults to returning all properties.
    projection :: (Core.Maybe [Projection]),
    -- | A starting point for the query results. Query cursors are returned in query result batches and <https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets can only be used to continue the same query>.
    startCursor :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Query' with the minimum fields required to make a request.
newQuery ::
  Query
newQuery =
  Query
    { distinctOn = Core.Nothing,
      endCursor = Core.Nothing,
      filter = Core.Nothing,
      kind = Core.Nothing,
      limit = Core.Nothing,
      offset = Core.Nothing,
      order = Core.Nothing,
      projection = Core.Nothing,
      startCursor = Core.Nothing
    }

instance Core.FromJSON Query where
  parseJSON =
    Core.withObject
      "Query"
      ( \o ->
          Query
            Core.<$> (o Core..:? "distinctOn" Core..!= Core.mempty)
            Core.<*> (o Core..:? "endCursor")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "kind" Core..!= Core.mempty)
            Core.<*> (o Core..:? "limit")
            Core.<*> (o Core..:? "offset")
            Core.<*> (o Core..:? "order" Core..!= Core.mempty)
            Core.<*> (o Core..:? "projection" Core..!= Core.mempty)
            Core.<*> (o Core..:? "startCursor")
      )

instance Core.ToJSON Query where
  toJSON Query {..} =
    Core.object
      ( Core.catMaybes
          [ ("distinctOn" Core..=) Core.<$> distinctOn,
            ("endCursor" Core..=) Core.<$> endCursor,
            ("filter" Core..=) Core.<$> filter,
            ("kind" Core..=) Core.<$> kind,
            ("limit" Core..=) Core.<$> limit,
            ("offset" Core..=) Core.<$> offset,
            ("order" Core..=) Core.<$> order,
            ("projection" Core..=) Core.<$> projection,
            ("startCursor" Core..=) Core.<$> startCursor
          ]
      )

-- | A batch of results produced by a query.
--
-- /See:/ 'newQueryResultBatch' smart constructor.
data QueryResultBatch = QueryResultBatch
  { -- | A cursor that points to the position after the last result in the batch.
    endCursor :: (Core.Maybe Core.Base64),
    -- | The result type for every entity in @entity_results@.
    entityResultType :: (Core.Maybe QueryResultBatch_EntityResultType),
    -- | The results for this batch.
    entityResults :: (Core.Maybe [EntityResult]),
    -- | The state of the query after the current batch.
    moreResults :: (Core.Maybe QueryResultBatch_MoreResults),
    -- | A cursor that points to the position after the last skipped result. Will be set when @skipped_results@ != 0.
    skippedCursor :: (Core.Maybe Core.Base64),
    -- | The number of results skipped, typically because of an offset.
    skippedResults :: (Core.Maybe Core.Int32),
    -- | The version number of the snapshot this batch was returned from. This applies to the range of results from the query\'s @start_cursor@ (or the beginning of the query if no cursor was given) to this batch\'s @end_cursor@ (not the query\'s @end_cursor@). In a single transaction, subsequent query result batches for the same query can have a greater snapshot version number. Each batch\'s snapshot version is valid for all preceding batches. The value will be zero for eventually consistent queries.
    snapshotVersion :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryResultBatch' with the minimum fields required to make a request.
newQueryResultBatch ::
  QueryResultBatch
newQueryResultBatch =
  QueryResultBatch
    { endCursor = Core.Nothing,
      entityResultType = Core.Nothing,
      entityResults = Core.Nothing,
      moreResults = Core.Nothing,
      skippedCursor = Core.Nothing,
      skippedResults = Core.Nothing,
      snapshotVersion = Core.Nothing
    }

instance Core.FromJSON QueryResultBatch where
  parseJSON =
    Core.withObject
      "QueryResultBatch"
      ( \o ->
          QueryResultBatch
            Core.<$> (o Core..:? "endCursor")
            Core.<*> (o Core..:? "entityResultType")
            Core.<*> (o Core..:? "entityResults" Core..!= Core.mempty)
            Core.<*> (o Core..:? "moreResults")
            Core.<*> (o Core..:? "skippedCursor")
            Core.<*> (o Core..:? "skippedResults")
            Core.<*> (o Core..:? "snapshotVersion")
      )

instance Core.ToJSON QueryResultBatch where
  toJSON QueryResultBatch {..} =
    Core.object
      ( Core.catMaybes
          [ ("endCursor" Core..=) Core.<$> endCursor,
            ("entityResultType" Core..=)
              Core.<$> entityResultType,
            ("entityResults" Core..=) Core.<$> entityResults,
            ("moreResults" Core..=) Core.<$> moreResults,
            ("skippedCursor" Core..=) Core.<$> skippedCursor,
            ("skippedResults" Core..=) Core.<$> skippedResults,
            ("snapshotVersion" Core..=) Core.. Core.AsText
              Core.<$> snapshotVersion
          ]
      )

-- | Options specific to read-only transactions.
--
-- /See:/ 'newReadOnly' smart constructor.
data ReadOnly = ReadOnly
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadOnly' with the minimum fields required to make a request.
newReadOnly ::
  ReadOnly
newReadOnly = ReadOnly

instance Core.FromJSON ReadOnly where
  parseJSON =
    Core.withObject
      "ReadOnly"
      (\o -> Core.pure ReadOnly)

instance Core.ToJSON ReadOnly where
  toJSON = Core.const Core.emptyObject

-- | The options shared by read requests.
--
-- /See:/ 'newReadOptions' smart constructor.
data ReadOptions = ReadOptions
  { -- | The non-transactional read consistency to use. Cannot be set to @STRONG@ for global queries.
    readConsistency :: (Core.Maybe ReadOptions_ReadConsistency),
    -- | The identifier of the transaction in which to read. A transaction identifier is returned by a call to Datastore.BeginTransaction.
    transaction :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadOptions' with the minimum fields required to make a request.
newReadOptions ::
  ReadOptions
newReadOptions =
  ReadOptions {readConsistency = Core.Nothing, transaction = Core.Nothing}

instance Core.FromJSON ReadOptions where
  parseJSON =
    Core.withObject
      "ReadOptions"
      ( \o ->
          ReadOptions
            Core.<$> (o Core..:? "readConsistency")
            Core.<*> (o Core..:? "transaction")
      )

instance Core.ToJSON ReadOptions where
  toJSON ReadOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("readConsistency" Core..=)
              Core.<$> readConsistency,
            ("transaction" Core..=) Core.<$> transaction
          ]
      )

-- | Options specific to read \/ write transactions.
--
-- /See:/ 'newReadWrite' smart constructor.
newtype ReadWrite = ReadWrite
  { -- | The transaction identifier of the transaction being retried.
    previousTransaction :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadWrite' with the minimum fields required to make a request.
newReadWrite ::
  ReadWrite
newReadWrite = ReadWrite {previousTransaction = Core.Nothing}

instance Core.FromJSON ReadWrite where
  parseJSON =
    Core.withObject
      "ReadWrite"
      ( \o ->
          ReadWrite
            Core.<$> (o Core..:? "previousTransaction")
      )

instance Core.ToJSON ReadWrite where
  toJSON ReadWrite {..} =
    Core.object
      ( Core.catMaybes
          [ ("previousTransaction" Core..=)
              Core.<$> previousTransaction
          ]
      )

-- | The request for Datastore.ReserveIds.
--
-- /See:/ 'newReserveIdsRequest' smart constructor.
data ReserveIdsRequest = ReserveIdsRequest
  { -- | If not empty, the ID of the database against which to make the request.
    databaseId :: (Core.Maybe Core.Text),
    -- | Required. A list of keys with complete key paths whose numeric IDs should not be auto-allocated.
    keys :: (Core.Maybe [Key])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReserveIdsRequest' with the minimum fields required to make a request.
newReserveIdsRequest ::
  ReserveIdsRequest
newReserveIdsRequest =
  ReserveIdsRequest {databaseId = Core.Nothing, keys = Core.Nothing}

instance Core.FromJSON ReserveIdsRequest where
  parseJSON =
    Core.withObject
      "ReserveIdsRequest"
      ( \o ->
          ReserveIdsRequest
            Core.<$> (o Core..:? "databaseId")
            Core.<*> (o Core..:? "keys" Core..!= Core.mempty)
      )

instance Core.ToJSON ReserveIdsRequest where
  toJSON ReserveIdsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("databaseId" Core..=) Core.<$> databaseId,
            ("keys" Core..=) Core.<$> keys
          ]
      )

-- | The response for Datastore.ReserveIds.
--
-- /See:/ 'newReserveIdsResponse' smart constructor.
data ReserveIdsResponse = ReserveIdsResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReserveIdsResponse' with the minimum fields required to make a request.
newReserveIdsResponse ::
  ReserveIdsResponse
newReserveIdsResponse = ReserveIdsResponse

instance Core.FromJSON ReserveIdsResponse where
  parseJSON =
    Core.withObject
      "ReserveIdsResponse"
      (\o -> Core.pure ReserveIdsResponse)

instance Core.ToJSON ReserveIdsResponse where
  toJSON = Core.const Core.emptyObject

-- | The request for Datastore.Rollback.
--
-- /See:/ 'newRollbackRequest' smart constructor.
newtype RollbackRequest = RollbackRequest
  { -- | Required. The transaction identifier, returned by a call to Datastore.BeginTransaction.
    transaction :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollbackRequest' with the minimum fields required to make a request.
newRollbackRequest ::
  RollbackRequest
newRollbackRequest = RollbackRequest {transaction = Core.Nothing}

instance Core.FromJSON RollbackRequest where
  parseJSON =
    Core.withObject
      "RollbackRequest"
      ( \o ->
          RollbackRequest Core.<$> (o Core..:? "transaction")
      )

instance Core.ToJSON RollbackRequest where
  toJSON RollbackRequest {..} =
    Core.object
      ( Core.catMaybes
          [("transaction" Core..=) Core.<$> transaction]
      )

-- | The response for Datastore.Rollback. (an empty message).
--
-- /See:/ 'newRollbackResponse' smart constructor.
data RollbackResponse = RollbackResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollbackResponse' with the minimum fields required to make a request.
newRollbackResponse ::
  RollbackResponse
newRollbackResponse = RollbackResponse

instance Core.FromJSON RollbackResponse where
  parseJSON =
    Core.withObject
      "RollbackResponse"
      (\o -> Core.pure RollbackResponse)

instance Core.ToJSON RollbackResponse where
  toJSON = Core.const Core.emptyObject

-- | The request for Datastore.RunQuery.
--
-- /See:/ 'newRunQueryRequest' smart constructor.
data RunQueryRequest = RunQueryRequest
  { -- | The GQL query to run.
    gqlQuery :: (Core.Maybe GqlQuery),
    -- | Entities are partitioned into subsets, identified by a partition ID. Queries are scoped to a single partition. This partition ID is normalized with the standard default context partition ID.
    partitionId :: (Core.Maybe PartitionId),
    -- | The query to run.
    query :: (Core.Maybe Query),
    -- | The options for this query.
    readOptions :: (Core.Maybe ReadOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunQueryRequest' with the minimum fields required to make a request.
newRunQueryRequest ::
  RunQueryRequest
newRunQueryRequest =
  RunQueryRequest
    { gqlQuery = Core.Nothing,
      partitionId = Core.Nothing,
      query = Core.Nothing,
      readOptions = Core.Nothing
    }

instance Core.FromJSON RunQueryRequest where
  parseJSON =
    Core.withObject
      "RunQueryRequest"
      ( \o ->
          RunQueryRequest
            Core.<$> (o Core..:? "gqlQuery")
            Core.<*> (o Core..:? "partitionId")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "readOptions")
      )

instance Core.ToJSON RunQueryRequest where
  toJSON RunQueryRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("gqlQuery" Core..=) Core.<$> gqlQuery,
            ("partitionId" Core..=) Core.<$> partitionId,
            ("query" Core..=) Core.<$> query,
            ("readOptions" Core..=) Core.<$> readOptions
          ]
      )

-- | The response for Datastore.RunQuery.
--
-- /See:/ 'newRunQueryResponse' smart constructor.
data RunQueryResponse = RunQueryResponse
  { -- | A batch of query results (always present).
    batch :: (Core.Maybe QueryResultBatch),
    -- | The parsed form of the @GqlQuery@ from the request, if it was set.
    query :: (Core.Maybe Query)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunQueryResponse' with the minimum fields required to make a request.
newRunQueryResponse ::
  RunQueryResponse
newRunQueryResponse =
  RunQueryResponse {batch = Core.Nothing, query = Core.Nothing}

instance Core.FromJSON RunQueryResponse where
  parseJSON =
    Core.withObject
      "RunQueryResponse"
      ( \o ->
          RunQueryResponse
            Core.<$> (o Core..:? "batch") Core.<*> (o Core..:? "query")
      )

instance Core.ToJSON RunQueryResponse where
  toJSON RunQueryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("batch" Core..=) Core.<$> batch,
            ("query" Core..=) Core.<$> query
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Options for beginning a new transaction. Transactions can be created explicitly with calls to Datastore.BeginTransaction or implicitly by setting ReadOptions.new_transaction in read requests.
--
-- /See:/ 'newTransactionOptions' smart constructor.
data TransactionOptions = TransactionOptions
  { -- | The transaction should only allow reads.
    readOnly :: (Core.Maybe ReadOnly),
    -- | The transaction should allow both reads and writes.
    readWrite :: (Core.Maybe ReadWrite)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransactionOptions' with the minimum fields required to make a request.
newTransactionOptions ::
  TransactionOptions
newTransactionOptions =
  TransactionOptions {readOnly = Core.Nothing, readWrite = Core.Nothing}

instance Core.FromJSON TransactionOptions where
  parseJSON =
    Core.withObject
      "TransactionOptions"
      ( \o ->
          TransactionOptions
            Core.<$> (o Core..:? "readOnly")
            Core.<*> (o Core..:? "readWrite")
      )

instance Core.ToJSON TransactionOptions where
  toJSON TransactionOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("readOnly" Core..=) Core.<$> readOnly,
            ("readWrite" Core..=) Core.<$> readWrite
          ]
      )

-- | A message that can hold any of the supported value types and associated metadata.
--
-- /See:/ 'newValue' smart constructor.
data Value = Value
  { -- | An array value. Cannot contain another array value. A @Value@ instance that sets field @array_value@ must not set fields @meaning@ or @exclude_from_indexes@.
    arrayValue :: (Core.Maybe ArrayValue),
    -- | A blob value. May have at most 1,000,000 bytes. When @exclude_from_indexes@ is false, may have at most 1500 bytes. In JSON requests, must be base64-encoded.
    blobValue :: (Core.Maybe Core.Base64),
    -- | A boolean value.
    booleanValue :: (Core.Maybe Core.Bool),
    -- | A double value.
    doubleValue :: (Core.Maybe Core.Double),
    -- | An entity value. - May have no key. - May have a key with an incomplete key path. - May have a reserved\/read-only key.
    entityValue :: (Core.Maybe Entity),
    -- | If the value should be excluded from all indexes including those defined explicitly.
    excludeFromIndexes :: (Core.Maybe Core.Bool),
    -- | A geo point value representing a point on the surface of Earth.
    geoPointValue :: (Core.Maybe LatLng),
    -- | An integer value.
    integerValue :: (Core.Maybe Core.Int64),
    -- | A key value.
    keyValue :: (Core.Maybe Key),
    -- | The @meaning@ field should only be populated for backwards compatibility.
    meaning :: (Core.Maybe Core.Int32),
    -- | A null value.
    nullValue :: (Core.Maybe Value_NullValue),
    -- | A UTF-8 encoded string value. When @exclude_from_indexes@ is false (it is indexed) , may have at most 1500 bytes. Otherwise, may be set to at most 1,000,000 bytes.
    stringValue :: (Core.Maybe Core.Text),
    -- | A timestamp value. When stored in the Datastore, precise only to microseconds; any additional precision is rounded down.
    timestampValue :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Value' with the minimum fields required to make a request.
newValue ::
  Value
newValue =
  Value
    { arrayValue = Core.Nothing,
      blobValue = Core.Nothing,
      booleanValue = Core.Nothing,
      doubleValue = Core.Nothing,
      entityValue = Core.Nothing,
      excludeFromIndexes = Core.Nothing,
      geoPointValue = Core.Nothing,
      integerValue = Core.Nothing,
      keyValue = Core.Nothing,
      meaning = Core.Nothing,
      nullValue = Core.Nothing,
      stringValue = Core.Nothing,
      timestampValue = Core.Nothing
    }

instance Core.FromJSON Value where
  parseJSON =
    Core.withObject
      "Value"
      ( \o ->
          Value
            Core.<$> (o Core..:? "arrayValue")
            Core.<*> (o Core..:? "blobValue")
            Core.<*> (o Core..:? "booleanValue")
            Core.<*> (o Core..:? "doubleValue")
            Core.<*> (o Core..:? "entityValue")
            Core.<*> (o Core..:? "excludeFromIndexes")
            Core.<*> (o Core..:? "geoPointValue")
            Core.<*> (o Core..:? "integerValue")
            Core.<*> (o Core..:? "keyValue")
            Core.<*> (o Core..:? "meaning")
            Core.<*> (o Core..:? "nullValue")
            Core.<*> (o Core..:? "stringValue")
            Core.<*> (o Core..:? "timestampValue")
      )

instance Core.ToJSON Value where
  toJSON Value {..} =
    Core.object
      ( Core.catMaybes
          [ ("arrayValue" Core..=) Core.<$> arrayValue,
            ("blobValue" Core..=) Core.<$> blobValue,
            ("booleanValue" Core..=) Core.<$> booleanValue,
            ("doubleValue" Core..=) Core.<$> doubleValue,
            ("entityValue" Core..=) Core.<$> entityValue,
            ("excludeFromIndexes" Core..=)
              Core.<$> excludeFromIndexes,
            ("geoPointValue" Core..=) Core.<$> geoPointValue,
            ("integerValue" Core..=) Core.. Core.AsText
              Core.<$> integerValue,
            ("keyValue" Core..=) Core.<$> keyValue,
            ("meaning" Core..=) Core.<$> meaning,
            ("nullValue" Core..=) Core.<$> nullValue,
            ("stringValue" Core..=) Core.<$> stringValue,
            ("timestampValue" Core..=) Core.<$> timestampValue
          ]
      )
