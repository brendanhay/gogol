{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Datastore.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Datastore.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AggregationResultBatch_MoreResults
    AggregationResultBatch_MoreResults
      ( AggregationResultBatch_MoreResults_MORERESULTSTYPEUNSPECIFIED,
        AggregationResultBatch_MoreResults_NOTFINISHED,
        AggregationResultBatch_MoreResults_MORERESULTSAFTERLIMIT,
        AggregationResultBatch_MoreResults_MORERESULTSAFTERCURSOR,
        AggregationResultBatch_MoreResults_NOMORERESULTS,
        ..
      ),

    -- * CommitRequest_Mode
    CommitRequest_Mode
      ( CommitRequest_Mode_MODEUNSPECIFIED,
        CommitRequest_Mode_Transactional,
        CommitRequest_Mode_NONTRANSACTIONAL,
        ..
      ),

    -- * CompositeFilter_Op
    CompositeFilter_Op
      ( CompositeFilter_Op_OPERATORUNSPECIFIED,
        CompositeFilter_Op_And,
        CompositeFilter_Op_OR,
        ..
      ),

    -- * FindNearest_DistanceMeasure
    FindNearest_DistanceMeasure
      ( FindNearest_DistanceMeasure_DISTANCEMEASUREUNSPECIFIED,
        FindNearest_DistanceMeasure_Euclidean,
        FindNearest_DistanceMeasure_Cosine,
        FindNearest_DistanceMeasure_DOTPRODUCT,
        ..
      ),

    -- * GoogleDatastoreAdminV1CommonMetadata_OperationType
    GoogleDatastoreAdminV1CommonMetadata_OperationType
      ( GoogleDatastoreAdminV1CommonMetadata_OperationType_OPERATIONTYPEUNSPECIFIED,
        GoogleDatastoreAdminV1CommonMetadata_OperationType_EXPORTENTITIES,
        GoogleDatastoreAdminV1CommonMetadata_OperationType_IMPORTENTITIES,
        GoogleDatastoreAdminV1CommonMetadata_OperationType_CREATEINDEX,
        GoogleDatastoreAdminV1CommonMetadata_OperationType_DELETEINDEX,
        ..
      ),

    -- * GoogleDatastoreAdminV1CommonMetadata_State
    GoogleDatastoreAdminV1CommonMetadata_State
      ( GoogleDatastoreAdminV1CommonMetadata_State_STATEUNSPECIFIED,
        GoogleDatastoreAdminV1CommonMetadata_State_Initializing,
        GoogleDatastoreAdminV1CommonMetadata_State_Processing,
        GoogleDatastoreAdminV1CommonMetadata_State_Cancelling,
        GoogleDatastoreAdminV1CommonMetadata_State_Finalizing,
        GoogleDatastoreAdminV1CommonMetadata_State_Successful,
        GoogleDatastoreAdminV1CommonMetadata_State_Failed,
        GoogleDatastoreAdminV1CommonMetadata_State_Cancelled,
        ..
      ),

    -- * GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState
    GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState
      ( GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_MIGRATIONSTATEUNSPECIFIED,
        GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Running,
        GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Paused,
        GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Complete,
        ..
      ),

    -- * GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
    GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
      ( GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_MIGRATIONSTEPUNSPECIFIED,
        GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_Prepare,
        GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_Start,
        GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_APPLYWRITESSYNCHRONOUSLY,
        GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_COPYANDVERIFY,
        GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTEVENTUALLYCONSISTENTREADS,
        GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTSTRONGLYCONSISTENTREADS,
        GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTWRITES,
        ..
      ),

    -- * GoogleDatastoreAdminV1Index_Ancestor
    GoogleDatastoreAdminV1Index_Ancestor
      ( GoogleDatastoreAdminV1Index_Ancestor_ANCESTORMODEUNSPECIFIED,
        GoogleDatastoreAdminV1Index_Ancestor_None,
        GoogleDatastoreAdminV1Index_Ancestor_ALLANCESTORS,
        ..
      ),

    -- * GoogleDatastoreAdminV1Index_State
    GoogleDatastoreAdminV1Index_State
      ( GoogleDatastoreAdminV1Index_State_STATEUNSPECIFIED,
        GoogleDatastoreAdminV1Index_State_Creating,
        GoogleDatastoreAdminV1Index_State_Ready,
        GoogleDatastoreAdminV1Index_State_Deleting,
        GoogleDatastoreAdminV1Index_State_Error',
        ..
      ),

    -- * GoogleDatastoreAdminV1IndexedProperty_Direction
    GoogleDatastoreAdminV1IndexedProperty_Direction
      ( GoogleDatastoreAdminV1IndexedProperty_Direction_DIRECTIONUNSPECIFIED,
        GoogleDatastoreAdminV1IndexedProperty_Direction_Ascending,
        GoogleDatastoreAdminV1IndexedProperty_Direction_Descending,
        ..
      ),

    -- * GoogleDatastoreAdminV1MigrationProgressEvent_Step
    GoogleDatastoreAdminV1MigrationProgressEvent_Step
      ( GoogleDatastoreAdminV1MigrationProgressEvent_Step_MIGRATIONSTEPUNSPECIFIED,
        GoogleDatastoreAdminV1MigrationProgressEvent_Step_Prepare,
        GoogleDatastoreAdminV1MigrationProgressEvent_Step_Start,
        GoogleDatastoreAdminV1MigrationProgressEvent_Step_APPLYWRITESSYNCHRONOUSLY,
        GoogleDatastoreAdminV1MigrationProgressEvent_Step_COPYANDVERIFY,
        GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTEVENTUALLYCONSISTENTREADS,
        GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTSTRONGLYCONSISTENTREADS,
        GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTWRITES,
        ..
      ),

    -- * GoogleDatastoreAdminV1MigrationStateEvent_State
    GoogleDatastoreAdminV1MigrationStateEvent_State
      ( GoogleDatastoreAdminV1MigrationStateEvent_State_MIGRATIONSTATEUNSPECIFIED,
        GoogleDatastoreAdminV1MigrationStateEvent_State_Running,
        GoogleDatastoreAdminV1MigrationStateEvent_State_Paused,
        GoogleDatastoreAdminV1MigrationStateEvent_State_Complete,
        ..
      ),

    -- * GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode
    GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode
      ( GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED,
        GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_Pessimistic,
        GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_Optimistic,
        GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS,
        ..
      ),

    -- * GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode
    GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode
      ( GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED,
        GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_Pessimistic,
        GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_Optimistic,
        GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS,
        ..
      ),

    -- * GoogleDatastoreAdminV1beta1CommonMetadata_OperationType
    GoogleDatastoreAdminV1beta1CommonMetadata_OperationType
      ( GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_OPERATIONTYPEUNSPECIFIED,
        GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_EXPORTENTITIES,
        GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_IMPORTENTITIES,
        ..
      ),

    -- * GoogleDatastoreAdminV1beta1CommonMetadata_State
    GoogleDatastoreAdminV1beta1CommonMetadata_State
      ( GoogleDatastoreAdminV1beta1CommonMetadata_State_STATEUNSPECIFIED,
        GoogleDatastoreAdminV1beta1CommonMetadata_State_Initializing,
        GoogleDatastoreAdminV1beta1CommonMetadata_State_Processing,
        GoogleDatastoreAdminV1beta1CommonMetadata_State_Cancelling,
        GoogleDatastoreAdminV1beta1CommonMetadata_State_Finalizing,
        GoogleDatastoreAdminV1beta1CommonMetadata_State_Successful,
        GoogleDatastoreAdminV1beta1CommonMetadata_State_Failed,
        GoogleDatastoreAdminV1beta1CommonMetadata_State_Cancelled,
        ..
      ),

    -- * Mutation_ConflictResolutionStrategy
    Mutation_ConflictResolutionStrategy
      ( Mutation_ConflictResolutionStrategy_STRATEGYUNSPECIFIED,
        Mutation_ConflictResolutionStrategy_SERVERVALUE,
        Mutation_ConflictResolutionStrategy_Fail,
        ..
      ),

    -- * PropertyFilter_Op
    PropertyFilter_Op
      ( PropertyFilter_Op_OPERATORUNSPECIFIED,
        PropertyFilter_Op_LESSTHAN,
        PropertyFilter_Op_LESSTHANOREQUAL,
        PropertyFilter_Op_GREATERTHAN,
        PropertyFilter_Op_GREATERTHANOREQUAL,
        PropertyFilter_Op_Equal,
        PropertyFilter_Op_IN,
        PropertyFilter_Op_NOTEQUAL,
        PropertyFilter_Op_HASANCESTOR,
        PropertyFilter_Op_NOTIN,
        ..
      ),

    -- * PropertyOrder_Direction
    PropertyOrder_Direction
      ( PropertyOrder_Direction_DIRECTIONUNSPECIFIED,
        PropertyOrder_Direction_Ascending,
        PropertyOrder_Direction_Descending,
        ..
      ),

    -- * PropertyTransform_SetToServerValue
    PropertyTransform_SetToServerValue
      ( PropertyTransform_SetToServerValue_SERVERVALUEUNSPECIFIED,
        PropertyTransform_SetToServerValue_REQUESTTIME,
        ..
      ),

    -- * QueryResultBatch_EntityResultType
    QueryResultBatch_EntityResultType
      ( QueryResultBatch_EntityResultType_RESULTTYPEUNSPECIFIED,
        QueryResultBatch_EntityResultType_Full,
        QueryResultBatch_EntityResultType_Projection,
        QueryResultBatch_EntityResultType_KEYONLY,
        ..
      ),

    -- * QueryResultBatch_MoreResults
    QueryResultBatch_MoreResults
      ( QueryResultBatch_MoreResults_MORERESULTSTYPEUNSPECIFIED,
        QueryResultBatch_MoreResults_NOTFINISHED,
        QueryResultBatch_MoreResults_MORERESULTSAFTERLIMIT,
        QueryResultBatch_MoreResults_MORERESULTSAFTERCURSOR,
        QueryResultBatch_MoreResults_NOMORERESULTS,
        ..
      ),

    -- * ReadOptions_ReadConsistency
    ReadOptions_ReadConsistency
      ( ReadOptions_ReadConsistency_READCONSISTENCYUNSPECIFIED,
        ReadOptions_ReadConsistency_Strong,
        ReadOptions_ReadConsistency_Eventual,
        ..
      ),

    -- * Value_NullValue
    Value_NullValue
      ( Value_NullValue_NULLVALUE,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The state of the query after the current batch. Only COUNT(*) aggregations are supported in the initial launch. Therefore, expected result type is limited to @NO_MORE_RESULTS@.
newtype AggregationResultBatch_MoreResults = AggregationResultBatch_MoreResults {fromAggregationResultBatch_MoreResults :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified. This value is never used.
pattern AggregationResultBatch_MoreResults_MORERESULTSTYPEUNSPECIFIED :: AggregationResultBatch_MoreResults
pattern AggregationResultBatch_MoreResults_MORERESULTSTYPEUNSPECIFIED = AggregationResultBatch_MoreResults "MORE_RESULTS_TYPE_UNSPECIFIED"

-- | There may be additional batches to fetch from this query.
pattern AggregationResultBatch_MoreResults_NOTFINISHED :: AggregationResultBatch_MoreResults
pattern AggregationResultBatch_MoreResults_NOTFINISHED = AggregationResultBatch_MoreResults "NOT_FINISHED"

-- | The query is finished, but there may be more results after the limit.
pattern AggregationResultBatch_MoreResults_MORERESULTSAFTERLIMIT :: AggregationResultBatch_MoreResults
pattern AggregationResultBatch_MoreResults_MORERESULTSAFTERLIMIT = AggregationResultBatch_MoreResults "MORE_RESULTS_AFTER_LIMIT"

-- | The query is finished, but there may be more results after the end cursor.
pattern AggregationResultBatch_MoreResults_MORERESULTSAFTERCURSOR :: AggregationResultBatch_MoreResults
pattern AggregationResultBatch_MoreResults_MORERESULTSAFTERCURSOR = AggregationResultBatch_MoreResults "MORE_RESULTS_AFTER_CURSOR"

-- | The query is finished, and there are no more results.
pattern AggregationResultBatch_MoreResults_NOMORERESULTS :: AggregationResultBatch_MoreResults
pattern AggregationResultBatch_MoreResults_NOMORERESULTS = AggregationResultBatch_MoreResults "NO_MORE_RESULTS"

{-# COMPLETE
  AggregationResultBatch_MoreResults_MORERESULTSTYPEUNSPECIFIED,
  AggregationResultBatch_MoreResults_NOTFINISHED,
  AggregationResultBatch_MoreResults_MORERESULTSAFTERLIMIT,
  AggregationResultBatch_MoreResults_MORERESULTSAFTERCURSOR,
  AggregationResultBatch_MoreResults_NOMORERESULTS,
  AggregationResultBatch_MoreResults
  #-}

-- | The type of commit to perform. Defaults to @TRANSACTIONAL@.
newtype CommitRequest_Mode = CommitRequest_Mode {fromCommitRequest_Mode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified. This value must not be used.
pattern CommitRequest_Mode_MODEUNSPECIFIED :: CommitRequest_Mode
pattern CommitRequest_Mode_MODEUNSPECIFIED = CommitRequest_Mode "MODE_UNSPECIFIED"

-- | Transactional: The mutations are either all applied, or none are applied. Learn about transactions <https://cloud.google.com/datastore/docs/concepts/transactions here>.
pattern CommitRequest_Mode_Transactional :: CommitRequest_Mode
pattern CommitRequest_Mode_Transactional = CommitRequest_Mode "TRANSACTIONAL"

-- | Non-transactional: The mutations may not apply as all or none.
pattern CommitRequest_Mode_NONTRANSACTIONAL :: CommitRequest_Mode
pattern CommitRequest_Mode_NONTRANSACTIONAL = CommitRequest_Mode "NON_TRANSACTIONAL"

{-# COMPLETE
  CommitRequest_Mode_MODEUNSPECIFIED,
  CommitRequest_Mode_Transactional,
  CommitRequest_Mode_NONTRANSACTIONAL,
  CommitRequest_Mode
  #-}

-- | The operator for combining multiple filters.
newtype CompositeFilter_Op = CompositeFilter_Op {fromCompositeFilter_Op :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified. This value must not be used.
pattern CompositeFilter_Op_OPERATORUNSPECIFIED :: CompositeFilter_Op
pattern CompositeFilter_Op_OPERATORUNSPECIFIED = CompositeFilter_Op "OPERATOR_UNSPECIFIED"

-- | The results are required to satisfy each of the combined filters.
pattern CompositeFilter_Op_And :: CompositeFilter_Op
pattern CompositeFilter_Op_And = CompositeFilter_Op "AND"

-- | Documents are required to satisfy at least one of the combined filters.
pattern CompositeFilter_Op_OR :: CompositeFilter_Op
pattern CompositeFilter_Op_OR = CompositeFilter_Op "OR"

{-# COMPLETE
  CompositeFilter_Op_OPERATORUNSPECIFIED,
  CompositeFilter_Op_And,
  CompositeFilter_Op_OR,
  CompositeFilter_Op
  #-}

-- | Required. The Distance Measure to use, required.
newtype FindNearest_DistanceMeasure = FindNearest_DistanceMeasure {fromFindNearest_DistanceMeasure :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Should not be set.
pattern FindNearest_DistanceMeasure_DISTANCEMEASUREUNSPECIFIED :: FindNearest_DistanceMeasure
pattern FindNearest_DistanceMeasure_DISTANCEMEASUREUNSPECIFIED = FindNearest_DistanceMeasure "DISTANCE_MEASURE_UNSPECIFIED"

-- | Measures the EUCLIDEAN distance between the vectors. See <https://en.wikipedia.org/wiki/Euclidean_distance Euclidean> to learn more. The resulting distance decreases the more similar two vectors are.
pattern FindNearest_DistanceMeasure_Euclidean :: FindNearest_DistanceMeasure
pattern FindNearest_DistanceMeasure_Euclidean = FindNearest_DistanceMeasure "EUCLIDEAN"

-- | COSINE distance compares vectors based on the angle between them, which allows you to measure similarity that isn\'t based on the vectors magnitude. We recommend using DOT_PRODUCT with unit normalized vectors instead of COSINE distance, which is mathematically equivalent with better performance. See <https://en.wikipedia.org/wiki/Cosine_similarity Cosine Similarity> to learn more about COSINE similarity and COSINE distance. The resulting COSINE distance decreases the more similar two vectors are.
pattern FindNearest_DistanceMeasure_Cosine :: FindNearest_DistanceMeasure
pattern FindNearest_DistanceMeasure_Cosine = FindNearest_DistanceMeasure "COSINE"

-- | Similar to cosine but is affected by the magnitude of the vectors. See <https://en.wikipedia.org/wiki/Dot_product Dot Product> to learn more. The resulting distance increases the more similar two vectors are.
pattern FindNearest_DistanceMeasure_DOTPRODUCT :: FindNearest_DistanceMeasure
pattern FindNearest_DistanceMeasure_DOTPRODUCT = FindNearest_DistanceMeasure "DOT_PRODUCT"

{-# COMPLETE
  FindNearest_DistanceMeasure_DISTANCEMEASUREUNSPECIFIED,
  FindNearest_DistanceMeasure_Euclidean,
  FindNearest_DistanceMeasure_Cosine,
  FindNearest_DistanceMeasure_DOTPRODUCT,
  FindNearest_DistanceMeasure
  #-}

-- | The type of the operation. Can be used as a filter in ListOperationsRequest.
newtype GoogleDatastoreAdminV1CommonMetadata_OperationType = GoogleDatastoreAdminV1CommonMetadata_OperationType {fromGoogleDatastoreAdminV1CommonMetadata_OperationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleDatastoreAdminV1CommonMetadata_OperationType_OPERATIONTYPEUNSPECIFIED :: GoogleDatastoreAdminV1CommonMetadata_OperationType
pattern GoogleDatastoreAdminV1CommonMetadata_OperationType_OPERATIONTYPEUNSPECIFIED = GoogleDatastoreAdminV1CommonMetadata_OperationType "OPERATION_TYPE_UNSPECIFIED"

-- | ExportEntities.
pattern GoogleDatastoreAdminV1CommonMetadata_OperationType_EXPORTENTITIES :: GoogleDatastoreAdminV1CommonMetadata_OperationType
pattern GoogleDatastoreAdminV1CommonMetadata_OperationType_EXPORTENTITIES = GoogleDatastoreAdminV1CommonMetadata_OperationType "EXPORT_ENTITIES"

-- | ImportEntities.
pattern GoogleDatastoreAdminV1CommonMetadata_OperationType_IMPORTENTITIES :: GoogleDatastoreAdminV1CommonMetadata_OperationType
pattern GoogleDatastoreAdminV1CommonMetadata_OperationType_IMPORTENTITIES = GoogleDatastoreAdminV1CommonMetadata_OperationType "IMPORT_ENTITIES"

-- | CreateIndex.
pattern GoogleDatastoreAdminV1CommonMetadata_OperationType_CREATEINDEX :: GoogleDatastoreAdminV1CommonMetadata_OperationType
pattern GoogleDatastoreAdminV1CommonMetadata_OperationType_CREATEINDEX = GoogleDatastoreAdminV1CommonMetadata_OperationType "CREATE_INDEX"

-- | DeleteIndex.
pattern GoogleDatastoreAdminV1CommonMetadata_OperationType_DELETEINDEX :: GoogleDatastoreAdminV1CommonMetadata_OperationType
pattern GoogleDatastoreAdminV1CommonMetadata_OperationType_DELETEINDEX = GoogleDatastoreAdminV1CommonMetadata_OperationType "DELETE_INDEX"

{-# COMPLETE
  GoogleDatastoreAdminV1CommonMetadata_OperationType_OPERATIONTYPEUNSPECIFIED,
  GoogleDatastoreAdminV1CommonMetadata_OperationType_EXPORTENTITIES,
  GoogleDatastoreAdminV1CommonMetadata_OperationType_IMPORTENTITIES,
  GoogleDatastoreAdminV1CommonMetadata_OperationType_CREATEINDEX,
  GoogleDatastoreAdminV1CommonMetadata_OperationType_DELETEINDEX,
  GoogleDatastoreAdminV1CommonMetadata_OperationType
  #-}

-- | The current state of the Operation.
newtype GoogleDatastoreAdminV1CommonMetadata_State = GoogleDatastoreAdminV1CommonMetadata_State {fromGoogleDatastoreAdminV1CommonMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleDatastoreAdminV1CommonMetadata_State_STATEUNSPECIFIED :: GoogleDatastoreAdminV1CommonMetadata_State
pattern GoogleDatastoreAdminV1CommonMetadata_State_STATEUNSPECIFIED = GoogleDatastoreAdminV1CommonMetadata_State "STATE_UNSPECIFIED"

-- | Request is being prepared for processing.
pattern GoogleDatastoreAdminV1CommonMetadata_State_Initializing :: GoogleDatastoreAdminV1CommonMetadata_State
pattern GoogleDatastoreAdminV1CommonMetadata_State_Initializing = GoogleDatastoreAdminV1CommonMetadata_State "INITIALIZING"

-- | Request is actively being processed.
pattern GoogleDatastoreAdminV1CommonMetadata_State_Processing :: GoogleDatastoreAdminV1CommonMetadata_State
pattern GoogleDatastoreAdminV1CommonMetadata_State_Processing = GoogleDatastoreAdminV1CommonMetadata_State "PROCESSING"

-- | Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.
pattern GoogleDatastoreAdminV1CommonMetadata_State_Cancelling :: GoogleDatastoreAdminV1CommonMetadata_State
pattern GoogleDatastoreAdminV1CommonMetadata_State_Cancelling = GoogleDatastoreAdminV1CommonMetadata_State "CANCELLING"

-- | Request has been processed and is in its finalization stage.
pattern GoogleDatastoreAdminV1CommonMetadata_State_Finalizing :: GoogleDatastoreAdminV1CommonMetadata_State
pattern GoogleDatastoreAdminV1CommonMetadata_State_Finalizing = GoogleDatastoreAdminV1CommonMetadata_State "FINALIZING"

-- | Request has completed successfully.
pattern GoogleDatastoreAdminV1CommonMetadata_State_Successful :: GoogleDatastoreAdminV1CommonMetadata_State
pattern GoogleDatastoreAdminV1CommonMetadata_State_Successful = GoogleDatastoreAdminV1CommonMetadata_State "SUCCESSFUL"

-- | Request has finished being processed, but encountered an error.
pattern GoogleDatastoreAdminV1CommonMetadata_State_Failed :: GoogleDatastoreAdminV1CommonMetadata_State
pattern GoogleDatastoreAdminV1CommonMetadata_State_Failed = GoogleDatastoreAdminV1CommonMetadata_State "FAILED"

-- | Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.
pattern GoogleDatastoreAdminV1CommonMetadata_State_Cancelled :: GoogleDatastoreAdminV1CommonMetadata_State
pattern GoogleDatastoreAdminV1CommonMetadata_State_Cancelled = GoogleDatastoreAdminV1CommonMetadata_State "CANCELLED"

{-# COMPLETE
  GoogleDatastoreAdminV1CommonMetadata_State_STATEUNSPECIFIED,
  GoogleDatastoreAdminV1CommonMetadata_State_Initializing,
  GoogleDatastoreAdminV1CommonMetadata_State_Processing,
  GoogleDatastoreAdminV1CommonMetadata_State_Cancelling,
  GoogleDatastoreAdminV1CommonMetadata_State_Finalizing,
  GoogleDatastoreAdminV1CommonMetadata_State_Successful,
  GoogleDatastoreAdminV1CommonMetadata_State_Failed,
  GoogleDatastoreAdminV1CommonMetadata_State_Cancelled,
  GoogleDatastoreAdminV1CommonMetadata_State
  #-}

-- | The current state of migration from Cloud Datastore to Cloud Firestore in Datastore mode.
newtype GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState {fromGoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_MIGRATIONSTATEUNSPECIFIED :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_MIGRATIONSTATEUNSPECIFIED = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState "MIGRATION_STATE_UNSPECIFIED"

-- | The migration is running.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Running :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Running = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState "RUNNING"

-- | The migration is paused.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Paused :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Paused = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState "PAUSED"

-- | The migration is complete.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Complete :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Complete = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState "COMPLETE"

{-# COMPLETE
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_MIGRATIONSTATEUNSPECIFIED,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Running,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Paused,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState_Complete,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationState
  #-}

-- | The current step of migration from Cloud Datastore to Cloud Firestore in Datastore mode.
newtype GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep {fromGoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_MIGRATIONSTEPUNSPECIFIED :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_MIGRATIONSTEPUNSPECIFIED = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep "MIGRATION_STEP_UNSPECIFIED"

-- | Pre-migration: the database is prepared for migration.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_Prepare :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_Prepare = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep "PREPARE"

-- | Start of migration.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_Start :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_Start = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep "START"

-- | Writes are applied synchronously to at least one replica.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_APPLYWRITESSYNCHRONOUSLY :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_APPLYWRITESSYNCHRONOUSLY = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep "APPLY_WRITES_SYNCHRONOUSLY"

-- | Data is copied to Cloud Firestore and then verified to match the data in Cloud Datastore.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_COPYANDVERIFY :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_COPYANDVERIFY = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep "COPY_AND_VERIFY"

-- | Eventually-consistent reads are redirected to Cloud Firestore.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTEVENTUALLYCONSISTENTREADS :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTEVENTUALLYCONSISTENTREADS = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep "REDIRECT_EVENTUALLY_CONSISTENT_READS"

-- | Strongly-consistent reads are redirected to Cloud Firestore.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTSTRONGLYCONSISTENTREADS :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTSTRONGLYCONSISTENTREADS = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep "REDIRECT_STRONGLY_CONSISTENT_READS"

-- | Writes are redirected to Cloud Firestore.
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTWRITES :: GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
pattern GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTWRITES = GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep "REDIRECT_WRITES"

{-# COMPLETE
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_MIGRATIONSTEPUNSPECIFIED,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_Prepare,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_Start,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_APPLYWRITESSYNCHRONOUSLY,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_COPYANDVERIFY,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTEVENTUALLYCONSISTENTREADS,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTSTRONGLYCONSISTENTREADS,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep_REDIRECTWRITES,
  GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata_MigrationStep
  #-}

-- | Required. The index\'s ancestor mode. Must not be ANCESTOR/MODE/UNSPECIFIED.
newtype GoogleDatastoreAdminV1Index_Ancestor = GoogleDatastoreAdminV1Index_Ancestor {fromGoogleDatastoreAdminV1Index_Ancestor :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The ancestor mode is unspecified.
pattern GoogleDatastoreAdminV1Index_Ancestor_ANCESTORMODEUNSPECIFIED :: GoogleDatastoreAdminV1Index_Ancestor
pattern GoogleDatastoreAdminV1Index_Ancestor_ANCESTORMODEUNSPECIFIED = GoogleDatastoreAdminV1Index_Ancestor "ANCESTOR_MODE_UNSPECIFIED"

-- | Do not include the entity\'s ancestors in the index.
pattern GoogleDatastoreAdminV1Index_Ancestor_None :: GoogleDatastoreAdminV1Index_Ancestor
pattern GoogleDatastoreAdminV1Index_Ancestor_None = GoogleDatastoreAdminV1Index_Ancestor "NONE"

-- | Include all the entity\'s ancestors in the index.
pattern GoogleDatastoreAdminV1Index_Ancestor_ALLANCESTORS :: GoogleDatastoreAdminV1Index_Ancestor
pattern GoogleDatastoreAdminV1Index_Ancestor_ALLANCESTORS = GoogleDatastoreAdminV1Index_Ancestor "ALL_ANCESTORS"

{-# COMPLETE
  GoogleDatastoreAdminV1Index_Ancestor_ANCESTORMODEUNSPECIFIED,
  GoogleDatastoreAdminV1Index_Ancestor_None,
  GoogleDatastoreAdminV1Index_Ancestor_ALLANCESTORS,
  GoogleDatastoreAdminV1Index_Ancestor
  #-}

-- | Output only. The state of the index.
newtype GoogleDatastoreAdminV1Index_State = GoogleDatastoreAdminV1Index_State {fromGoogleDatastoreAdminV1Index_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The state is unspecified.
pattern GoogleDatastoreAdminV1Index_State_STATEUNSPECIFIED :: GoogleDatastoreAdminV1Index_State
pattern GoogleDatastoreAdminV1Index_State_STATEUNSPECIFIED = GoogleDatastoreAdminV1Index_State "STATE_UNSPECIFIED"

-- | The index is being created, and cannot be used by queries. There is an active long-running operation for the index. The index is updated when writing an entity. Some index data may exist.
pattern GoogleDatastoreAdminV1Index_State_Creating :: GoogleDatastoreAdminV1Index_State
pattern GoogleDatastoreAdminV1Index_State_Creating = GoogleDatastoreAdminV1Index_State "CREATING"

-- | The index is ready to be used. The index is updated when writing an entity. The index is fully populated from all stored entities it applies to.
pattern GoogleDatastoreAdminV1Index_State_Ready :: GoogleDatastoreAdminV1Index_State
pattern GoogleDatastoreAdminV1Index_State_Ready = GoogleDatastoreAdminV1Index_State "READY"

-- | The index is being deleted, and cannot be used by queries. There is an active long-running operation for the index. The index is not updated when writing an entity. Some index data may exist.
pattern GoogleDatastoreAdminV1Index_State_Deleting :: GoogleDatastoreAdminV1Index_State
pattern GoogleDatastoreAdminV1Index_State_Deleting = GoogleDatastoreAdminV1Index_State "DELETING"

-- | The index was being created or deleted, but something went wrong. The index cannot by used by queries. There is no active long-running operation for the index, and the most recently finished long-running operation failed. The index is not updated when writing an entity. Some index data may exist.
pattern GoogleDatastoreAdminV1Index_State_Error' :: GoogleDatastoreAdminV1Index_State
pattern GoogleDatastoreAdminV1Index_State_Error' = GoogleDatastoreAdminV1Index_State "ERROR"

{-# COMPLETE
  GoogleDatastoreAdminV1Index_State_STATEUNSPECIFIED,
  GoogleDatastoreAdminV1Index_State_Creating,
  GoogleDatastoreAdminV1Index_State_Ready,
  GoogleDatastoreAdminV1Index_State_Deleting,
  GoogleDatastoreAdminV1Index_State_Error',
  GoogleDatastoreAdminV1Index_State
  #-}

-- | Required. The indexed property\'s direction. Must not be DIRECTION_UNSPECIFIED.
newtype GoogleDatastoreAdminV1IndexedProperty_Direction = GoogleDatastoreAdminV1IndexedProperty_Direction {fromGoogleDatastoreAdminV1IndexedProperty_Direction :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The direction is unspecified.
pattern GoogleDatastoreAdminV1IndexedProperty_Direction_DIRECTIONUNSPECIFIED :: GoogleDatastoreAdminV1IndexedProperty_Direction
pattern GoogleDatastoreAdminV1IndexedProperty_Direction_DIRECTIONUNSPECIFIED = GoogleDatastoreAdminV1IndexedProperty_Direction "DIRECTION_UNSPECIFIED"

-- | The property\'s values are indexed so as to support sequencing in ascending order and also query by \<, >, \<=, >=, and =.
pattern GoogleDatastoreAdminV1IndexedProperty_Direction_Ascending :: GoogleDatastoreAdminV1IndexedProperty_Direction
pattern GoogleDatastoreAdminV1IndexedProperty_Direction_Ascending = GoogleDatastoreAdminV1IndexedProperty_Direction "ASCENDING"

-- | The property\'s values are indexed so as to support sequencing in descending order and also query by \<, >, \<=, >=, and =.
pattern GoogleDatastoreAdminV1IndexedProperty_Direction_Descending :: GoogleDatastoreAdminV1IndexedProperty_Direction
pattern GoogleDatastoreAdminV1IndexedProperty_Direction_Descending = GoogleDatastoreAdminV1IndexedProperty_Direction "DESCENDING"

{-# COMPLETE
  GoogleDatastoreAdminV1IndexedProperty_Direction_DIRECTIONUNSPECIFIED,
  GoogleDatastoreAdminV1IndexedProperty_Direction_Ascending,
  GoogleDatastoreAdminV1IndexedProperty_Direction_Descending,
  GoogleDatastoreAdminV1IndexedProperty_Direction
  #-}

-- | The step that is starting. An event with step set to @START@ indicates that the migration has been reverted back to the initial pre-migration state.
newtype GoogleDatastoreAdminV1MigrationProgressEvent_Step = GoogleDatastoreAdminV1MigrationProgressEvent_Step {fromGoogleDatastoreAdminV1MigrationProgressEvent_Step :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_MIGRATIONSTEPUNSPECIFIED :: GoogleDatastoreAdminV1MigrationProgressEvent_Step
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_MIGRATIONSTEPUNSPECIFIED = GoogleDatastoreAdminV1MigrationProgressEvent_Step "MIGRATION_STEP_UNSPECIFIED"

-- | Pre-migration: the database is prepared for migration.
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_Prepare :: GoogleDatastoreAdminV1MigrationProgressEvent_Step
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_Prepare = GoogleDatastoreAdminV1MigrationProgressEvent_Step "PREPARE"

-- | Start of migration.
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_Start :: GoogleDatastoreAdminV1MigrationProgressEvent_Step
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_Start = GoogleDatastoreAdminV1MigrationProgressEvent_Step "START"

-- | Writes are applied synchronously to at least one replica.
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_APPLYWRITESSYNCHRONOUSLY :: GoogleDatastoreAdminV1MigrationProgressEvent_Step
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_APPLYWRITESSYNCHRONOUSLY = GoogleDatastoreAdminV1MigrationProgressEvent_Step "APPLY_WRITES_SYNCHRONOUSLY"

-- | Data is copied to Cloud Firestore and then verified to match the data in Cloud Datastore.
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_COPYANDVERIFY :: GoogleDatastoreAdminV1MigrationProgressEvent_Step
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_COPYANDVERIFY = GoogleDatastoreAdminV1MigrationProgressEvent_Step "COPY_AND_VERIFY"

-- | Eventually-consistent reads are redirected to Cloud Firestore.
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTEVENTUALLYCONSISTENTREADS :: GoogleDatastoreAdminV1MigrationProgressEvent_Step
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTEVENTUALLYCONSISTENTREADS = GoogleDatastoreAdminV1MigrationProgressEvent_Step "REDIRECT_EVENTUALLY_CONSISTENT_READS"

-- | Strongly-consistent reads are redirected to Cloud Firestore.
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTSTRONGLYCONSISTENTREADS :: GoogleDatastoreAdminV1MigrationProgressEvent_Step
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTSTRONGLYCONSISTENTREADS = GoogleDatastoreAdminV1MigrationProgressEvent_Step "REDIRECT_STRONGLY_CONSISTENT_READS"

-- | Writes are redirected to Cloud Firestore.
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTWRITES :: GoogleDatastoreAdminV1MigrationProgressEvent_Step
pattern GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTWRITES = GoogleDatastoreAdminV1MigrationProgressEvent_Step "REDIRECT_WRITES"

{-# COMPLETE
  GoogleDatastoreAdminV1MigrationProgressEvent_Step_MIGRATIONSTEPUNSPECIFIED,
  GoogleDatastoreAdminV1MigrationProgressEvent_Step_Prepare,
  GoogleDatastoreAdminV1MigrationProgressEvent_Step_Start,
  GoogleDatastoreAdminV1MigrationProgressEvent_Step_APPLYWRITESSYNCHRONOUSLY,
  GoogleDatastoreAdminV1MigrationProgressEvent_Step_COPYANDVERIFY,
  GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTEVENTUALLYCONSISTENTREADS,
  GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTSTRONGLYCONSISTENTREADS,
  GoogleDatastoreAdminV1MigrationProgressEvent_Step_REDIRECTWRITES,
  GoogleDatastoreAdminV1MigrationProgressEvent_Step
  #-}

-- | The new state of the migration.
newtype GoogleDatastoreAdminV1MigrationStateEvent_State = GoogleDatastoreAdminV1MigrationStateEvent_State {fromGoogleDatastoreAdminV1MigrationStateEvent_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleDatastoreAdminV1MigrationStateEvent_State_MIGRATIONSTATEUNSPECIFIED :: GoogleDatastoreAdminV1MigrationStateEvent_State
pattern GoogleDatastoreAdminV1MigrationStateEvent_State_MIGRATIONSTATEUNSPECIFIED = GoogleDatastoreAdminV1MigrationStateEvent_State "MIGRATION_STATE_UNSPECIFIED"

-- | The migration is running.
pattern GoogleDatastoreAdminV1MigrationStateEvent_State_Running :: GoogleDatastoreAdminV1MigrationStateEvent_State
pattern GoogleDatastoreAdminV1MigrationStateEvent_State_Running = GoogleDatastoreAdminV1MigrationStateEvent_State "RUNNING"

-- | The migration is paused.
pattern GoogleDatastoreAdminV1MigrationStateEvent_State_Paused :: GoogleDatastoreAdminV1MigrationStateEvent_State
pattern GoogleDatastoreAdminV1MigrationStateEvent_State_Paused = GoogleDatastoreAdminV1MigrationStateEvent_State "PAUSED"

-- | The migration is complete.
pattern GoogleDatastoreAdminV1MigrationStateEvent_State_Complete :: GoogleDatastoreAdminV1MigrationStateEvent_State
pattern GoogleDatastoreAdminV1MigrationStateEvent_State_Complete = GoogleDatastoreAdminV1MigrationStateEvent_State "COMPLETE"

{-# COMPLETE
  GoogleDatastoreAdminV1MigrationStateEvent_State_MIGRATIONSTATEUNSPECIFIED,
  GoogleDatastoreAdminV1MigrationStateEvent_State_Running,
  GoogleDatastoreAdminV1MigrationStateEvent_State_Paused,
  GoogleDatastoreAdminV1MigrationStateEvent_State_Complete,
  GoogleDatastoreAdminV1MigrationStateEvent_State
  #-}

-- | The concurrency mode this database will use when it reaches the @REDIRECT_WRITES@ step.
newtype GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode = GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode {fromGoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED :: GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode
pattern GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED = GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode "CONCURRENCY_MODE_UNSPECIFIED"

-- | Pessimistic concurrency.
pattern GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_Pessimistic :: GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode
pattern GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_Pessimistic = GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode "PESSIMISTIC"

-- | Optimistic concurrency.
pattern GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_Optimistic :: GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode
pattern GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_Optimistic = GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode "OPTIMISTIC"

-- | Optimistic concurrency with entity groups.
pattern GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS :: GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode
pattern GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS = GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode "OPTIMISTIC_WITH_ENTITY_GROUPS"

{-# COMPLETE
  GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED,
  GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_Pessimistic,
  GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_Optimistic,
  GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS,
  GoogleDatastoreAdminV1PrepareStepDetails_ConcurrencyMode
  #-}

-- | Ths concurrency mode for this database.
newtype GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode = GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode {fromGoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED :: GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode
pattern GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED = GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode "CONCURRENCY_MODE_UNSPECIFIED"

-- | Pessimistic concurrency.
pattern GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_Pessimistic :: GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode
pattern GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_Pessimistic = GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode "PESSIMISTIC"

-- | Optimistic concurrency.
pattern GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_Optimistic :: GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode
pattern GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_Optimistic = GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode "OPTIMISTIC"

-- | Optimistic concurrency with entity groups.
pattern GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS :: GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode
pattern GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS = GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode "OPTIMISTIC_WITH_ENTITY_GROUPS"

{-# COMPLETE
  GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED,
  GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_Pessimistic,
  GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_Optimistic,
  GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS,
  GoogleDatastoreAdminV1RedirectWritesStepDetails_ConcurrencyMode
  #-}

-- | The type of the operation. Can be used as a filter in ListOperationsRequest.
newtype GoogleDatastoreAdminV1beta1CommonMetadata_OperationType = GoogleDatastoreAdminV1beta1CommonMetadata_OperationType {fromGoogleDatastoreAdminV1beta1CommonMetadata_OperationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_OPERATIONTYPEUNSPECIFIED :: GoogleDatastoreAdminV1beta1CommonMetadata_OperationType
pattern GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_OPERATIONTYPEUNSPECIFIED = GoogleDatastoreAdminV1beta1CommonMetadata_OperationType "OPERATION_TYPE_UNSPECIFIED"

-- | ExportEntities.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_EXPORTENTITIES :: GoogleDatastoreAdminV1beta1CommonMetadata_OperationType
pattern GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_EXPORTENTITIES = GoogleDatastoreAdminV1beta1CommonMetadata_OperationType "EXPORT_ENTITIES"

-- | ImportEntities.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_IMPORTENTITIES :: GoogleDatastoreAdminV1beta1CommonMetadata_OperationType
pattern GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_IMPORTENTITIES = GoogleDatastoreAdminV1beta1CommonMetadata_OperationType "IMPORT_ENTITIES"

{-# COMPLETE
  GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_OPERATIONTYPEUNSPECIFIED,
  GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_EXPORTENTITIES,
  GoogleDatastoreAdminV1beta1CommonMetadata_OperationType_IMPORTENTITIES,
  GoogleDatastoreAdminV1beta1CommonMetadata_OperationType
  #-}

-- | The current state of the Operation.
newtype GoogleDatastoreAdminV1beta1CommonMetadata_State = GoogleDatastoreAdminV1beta1CommonMetadata_State {fromGoogleDatastoreAdminV1beta1CommonMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_STATEUNSPECIFIED :: GoogleDatastoreAdminV1beta1CommonMetadata_State
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_STATEUNSPECIFIED = GoogleDatastoreAdminV1beta1CommonMetadata_State "STATE_UNSPECIFIED"

-- | Request is being prepared for processing.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Initializing :: GoogleDatastoreAdminV1beta1CommonMetadata_State
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Initializing = GoogleDatastoreAdminV1beta1CommonMetadata_State "INITIALIZING"

-- | Request is actively being processed.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Processing :: GoogleDatastoreAdminV1beta1CommonMetadata_State
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Processing = GoogleDatastoreAdminV1beta1CommonMetadata_State "PROCESSING"

-- | Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Cancelling :: GoogleDatastoreAdminV1beta1CommonMetadata_State
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Cancelling = GoogleDatastoreAdminV1beta1CommonMetadata_State "CANCELLING"

-- | Request has been processed and is in its finalization stage.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Finalizing :: GoogleDatastoreAdminV1beta1CommonMetadata_State
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Finalizing = GoogleDatastoreAdminV1beta1CommonMetadata_State "FINALIZING"

-- | Request has completed successfully.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Successful :: GoogleDatastoreAdminV1beta1CommonMetadata_State
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Successful = GoogleDatastoreAdminV1beta1CommonMetadata_State "SUCCESSFUL"

-- | Request has finished being processed, but encountered an error.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Failed :: GoogleDatastoreAdminV1beta1CommonMetadata_State
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Failed = GoogleDatastoreAdminV1beta1CommonMetadata_State "FAILED"

-- | Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Cancelled :: GoogleDatastoreAdminV1beta1CommonMetadata_State
pattern GoogleDatastoreAdminV1beta1CommonMetadata_State_Cancelled = GoogleDatastoreAdminV1beta1CommonMetadata_State "CANCELLED"

{-# COMPLETE
  GoogleDatastoreAdminV1beta1CommonMetadata_State_STATEUNSPECIFIED,
  GoogleDatastoreAdminV1beta1CommonMetadata_State_Initializing,
  GoogleDatastoreAdminV1beta1CommonMetadata_State_Processing,
  GoogleDatastoreAdminV1beta1CommonMetadata_State_Cancelling,
  GoogleDatastoreAdminV1beta1CommonMetadata_State_Finalizing,
  GoogleDatastoreAdminV1beta1CommonMetadata_State_Successful,
  GoogleDatastoreAdminV1beta1CommonMetadata_State_Failed,
  GoogleDatastoreAdminV1beta1CommonMetadata_State_Cancelled,
  GoogleDatastoreAdminV1beta1CommonMetadata_State
  #-}

-- | The strategy to use when a conflict is detected. Defaults to @SERVER_VALUE@. If this is set, then @conflict_detection_strategy@ must also be set.
newtype Mutation_ConflictResolutionStrategy = Mutation_ConflictResolutionStrategy {fromMutation_ConflictResolutionStrategy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified. Defaults to @SERVER_VALUE@.
pattern Mutation_ConflictResolutionStrategy_STRATEGYUNSPECIFIED :: Mutation_ConflictResolutionStrategy
pattern Mutation_ConflictResolutionStrategy_STRATEGYUNSPECIFIED = Mutation_ConflictResolutionStrategy "STRATEGY_UNSPECIFIED"

-- | The server entity is kept.
pattern Mutation_ConflictResolutionStrategy_SERVERVALUE :: Mutation_ConflictResolutionStrategy
pattern Mutation_ConflictResolutionStrategy_SERVERVALUE = Mutation_ConflictResolutionStrategy "SERVER_VALUE"

-- | The whole commit request fails.
pattern Mutation_ConflictResolutionStrategy_Fail :: Mutation_ConflictResolutionStrategy
pattern Mutation_ConflictResolutionStrategy_Fail = Mutation_ConflictResolutionStrategy "FAIL"

{-# COMPLETE
  Mutation_ConflictResolutionStrategy_STRATEGYUNSPECIFIED,
  Mutation_ConflictResolutionStrategy_SERVERVALUE,
  Mutation_ConflictResolutionStrategy_Fail,
  Mutation_ConflictResolutionStrategy
  #-}

-- | The operator to filter by.
newtype PropertyFilter_Op = PropertyFilter_Op {fromPropertyFilter_Op :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified. This value must not be used.
pattern PropertyFilter_Op_OPERATORUNSPECIFIED :: PropertyFilter_Op
pattern PropertyFilter_Op_OPERATORUNSPECIFIED = PropertyFilter_Op "OPERATOR_UNSPECIFIED"

-- | The given @property@ is less than the given @value@. Requires: * That @property@ comes first in @order_by@.
pattern PropertyFilter_Op_LESSTHAN :: PropertyFilter_Op
pattern PropertyFilter_Op_LESSTHAN = PropertyFilter_Op "LESS_THAN"

-- | The given @property@ is less than or equal to the given @value@. Requires: * That @property@ comes first in @order_by@.
pattern PropertyFilter_Op_LESSTHANOREQUAL :: PropertyFilter_Op
pattern PropertyFilter_Op_LESSTHANOREQUAL = PropertyFilter_Op "LESS_THAN_OR_EQUAL"

-- | The given @property@ is greater than the given @value@. Requires: * That @property@ comes first in @order_by@.
pattern PropertyFilter_Op_GREATERTHAN :: PropertyFilter_Op
pattern PropertyFilter_Op_GREATERTHAN = PropertyFilter_Op "GREATER_THAN"

-- | The given @property@ is greater than or equal to the given @value@. Requires: * That @property@ comes first in @order_by@.
pattern PropertyFilter_Op_GREATERTHANOREQUAL :: PropertyFilter_Op
pattern PropertyFilter_Op_GREATERTHANOREQUAL = PropertyFilter_Op "GREATER_THAN_OR_EQUAL"

-- | The given @property@ is equal to the given @value@.
pattern PropertyFilter_Op_Equal :: PropertyFilter_Op
pattern PropertyFilter_Op_Equal = PropertyFilter_Op "EQUAL"

-- | The given @property@ is equal to at least one value in the given array. Requires: * That @value@ is a non-empty @ArrayValue@, subject to disjunction limits. * No @NOT_IN@ is in the same query.
pattern PropertyFilter_Op_IN :: PropertyFilter_Op
pattern PropertyFilter_Op_IN = PropertyFilter_Op "IN"

-- | The given @property@ is not equal to the given @value@. Requires: * No other @NOT_EQUAL@ or @NOT_IN@ is in the same query. * That @property@ comes first in the @order_by@.
pattern PropertyFilter_Op_NOTEQUAL :: PropertyFilter_Op
pattern PropertyFilter_Op_NOTEQUAL = PropertyFilter_Op "NOT_EQUAL"

-- | Limit the result set to the given entity and its descendants. Requires: * That @value@ is an entity key. * All evaluated disjunctions must have the same @HAS_ANCESTOR@ filter.
pattern PropertyFilter_Op_HASANCESTOR :: PropertyFilter_Op
pattern PropertyFilter_Op_HASANCESTOR = PropertyFilter_Op "HAS_ANCESTOR"

-- | The value of the @property@ is not in the given array. Requires: * That @value@ is a non-empty @ArrayValue@ with at most 10 values. * No other @OR@, @IN@, @NOT_IN@, @NOT_EQUAL@ is in the same query. * That @field@ comes first in the @order_by@.
pattern PropertyFilter_Op_NOTIN :: PropertyFilter_Op
pattern PropertyFilter_Op_NOTIN = PropertyFilter_Op "NOT_IN"

{-# COMPLETE
  PropertyFilter_Op_OPERATORUNSPECIFIED,
  PropertyFilter_Op_LESSTHAN,
  PropertyFilter_Op_LESSTHANOREQUAL,
  PropertyFilter_Op_GREATERTHAN,
  PropertyFilter_Op_GREATERTHANOREQUAL,
  PropertyFilter_Op_Equal,
  PropertyFilter_Op_IN,
  PropertyFilter_Op_NOTEQUAL,
  PropertyFilter_Op_HASANCESTOR,
  PropertyFilter_Op_NOTIN,
  PropertyFilter_Op
  #-}

-- | The direction to order by. Defaults to @ASCENDING@.
newtype PropertyOrder_Direction = PropertyOrder_Direction {fromPropertyOrder_Direction :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified. This value must not be used.
pattern PropertyOrder_Direction_DIRECTIONUNSPECIFIED :: PropertyOrder_Direction
pattern PropertyOrder_Direction_DIRECTIONUNSPECIFIED = PropertyOrder_Direction "DIRECTION_UNSPECIFIED"

-- | Ascending.
pattern PropertyOrder_Direction_Ascending :: PropertyOrder_Direction
pattern PropertyOrder_Direction_Ascending = PropertyOrder_Direction "ASCENDING"

-- | Descending.
pattern PropertyOrder_Direction_Descending :: PropertyOrder_Direction
pattern PropertyOrder_Direction_Descending = PropertyOrder_Direction "DESCENDING"

{-# COMPLETE
  PropertyOrder_Direction_DIRECTIONUNSPECIFIED,
  PropertyOrder_Direction_Ascending,
  PropertyOrder_Direction_Descending,
  PropertyOrder_Direction
  #-}

-- | Sets the property to the given server value.
newtype PropertyTransform_SetToServerValue = PropertyTransform_SetToServerValue {fromPropertyTransform_SetToServerValue :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified. This value must not be used.
pattern PropertyTransform_SetToServerValue_SERVERVALUEUNSPECIFIED :: PropertyTransform_SetToServerValue
pattern PropertyTransform_SetToServerValue_SERVERVALUEUNSPECIFIED = PropertyTransform_SetToServerValue "SERVER_VALUE_UNSPECIFIED"

-- | The time at which the server processed the request, with millisecond precision. If used on multiple properties (same or different entities) in a transaction, all the properties will get the same server timestamp.
pattern PropertyTransform_SetToServerValue_REQUESTTIME :: PropertyTransform_SetToServerValue
pattern PropertyTransform_SetToServerValue_REQUESTTIME = PropertyTransform_SetToServerValue "REQUEST_TIME"

{-# COMPLETE
  PropertyTransform_SetToServerValue_SERVERVALUEUNSPECIFIED,
  PropertyTransform_SetToServerValue_REQUESTTIME,
  PropertyTransform_SetToServerValue
  #-}

-- | The result type for every entity in @entity_results@.
newtype QueryResultBatch_EntityResultType = QueryResultBatch_EntityResultType {fromQueryResultBatch_EntityResultType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified. This value is never used.
pattern QueryResultBatch_EntityResultType_RESULTTYPEUNSPECIFIED :: QueryResultBatch_EntityResultType
pattern QueryResultBatch_EntityResultType_RESULTTYPEUNSPECIFIED = QueryResultBatch_EntityResultType "RESULT_TYPE_UNSPECIFIED"

-- | The key and properties.
pattern QueryResultBatch_EntityResultType_Full :: QueryResultBatch_EntityResultType
pattern QueryResultBatch_EntityResultType_Full = QueryResultBatch_EntityResultType "FULL"

-- | A projected subset of properties. The entity may have no key.
pattern QueryResultBatch_EntityResultType_Projection :: QueryResultBatch_EntityResultType
pattern QueryResultBatch_EntityResultType_Projection = QueryResultBatch_EntityResultType "PROJECTION"

-- | Only the key.
pattern QueryResultBatch_EntityResultType_KEYONLY :: QueryResultBatch_EntityResultType
pattern QueryResultBatch_EntityResultType_KEYONLY = QueryResultBatch_EntityResultType "KEY_ONLY"

{-# COMPLETE
  QueryResultBatch_EntityResultType_RESULTTYPEUNSPECIFIED,
  QueryResultBatch_EntityResultType_Full,
  QueryResultBatch_EntityResultType_Projection,
  QueryResultBatch_EntityResultType_KEYONLY,
  QueryResultBatch_EntityResultType
  #-}

-- | The state of the query after the current batch.
newtype QueryResultBatch_MoreResults = QueryResultBatch_MoreResults {fromQueryResultBatch_MoreResults :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified. This value is never used.
pattern QueryResultBatch_MoreResults_MORERESULTSTYPEUNSPECIFIED :: QueryResultBatch_MoreResults
pattern QueryResultBatch_MoreResults_MORERESULTSTYPEUNSPECIFIED = QueryResultBatch_MoreResults "MORE_RESULTS_TYPE_UNSPECIFIED"

-- | There may be additional batches to fetch from this query.
pattern QueryResultBatch_MoreResults_NOTFINISHED :: QueryResultBatch_MoreResults
pattern QueryResultBatch_MoreResults_NOTFINISHED = QueryResultBatch_MoreResults "NOT_FINISHED"

-- | The query is finished, but there may be more results after the limit.
pattern QueryResultBatch_MoreResults_MORERESULTSAFTERLIMIT :: QueryResultBatch_MoreResults
pattern QueryResultBatch_MoreResults_MORERESULTSAFTERLIMIT = QueryResultBatch_MoreResults "MORE_RESULTS_AFTER_LIMIT"

-- | The query is finished, but there may be more results after the end cursor.
pattern QueryResultBatch_MoreResults_MORERESULTSAFTERCURSOR :: QueryResultBatch_MoreResults
pattern QueryResultBatch_MoreResults_MORERESULTSAFTERCURSOR = QueryResultBatch_MoreResults "MORE_RESULTS_AFTER_CURSOR"

-- | The query is finished, and there are no more results.
pattern QueryResultBatch_MoreResults_NOMORERESULTS :: QueryResultBatch_MoreResults
pattern QueryResultBatch_MoreResults_NOMORERESULTS = QueryResultBatch_MoreResults "NO_MORE_RESULTS"

{-# COMPLETE
  QueryResultBatch_MoreResults_MORERESULTSTYPEUNSPECIFIED,
  QueryResultBatch_MoreResults_NOTFINISHED,
  QueryResultBatch_MoreResults_MORERESULTSAFTERLIMIT,
  QueryResultBatch_MoreResults_MORERESULTSAFTERCURSOR,
  QueryResultBatch_MoreResults_NOMORERESULTS,
  QueryResultBatch_MoreResults
  #-}

-- | The non-transactional read consistency to use.
newtype ReadOptions_ReadConsistency = ReadOptions_ReadConsistency {fromReadOptions_ReadConsistency :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified. This value must not be used.
pattern ReadOptions_ReadConsistency_READCONSISTENCYUNSPECIFIED :: ReadOptions_ReadConsistency
pattern ReadOptions_ReadConsistency_READCONSISTENCYUNSPECIFIED = ReadOptions_ReadConsistency "READ_CONSISTENCY_UNSPECIFIED"

-- | Strong consistency.
pattern ReadOptions_ReadConsistency_Strong :: ReadOptions_ReadConsistency
pattern ReadOptions_ReadConsistency_Strong = ReadOptions_ReadConsistency "STRONG"

-- | Eventual consistency.
pattern ReadOptions_ReadConsistency_Eventual :: ReadOptions_ReadConsistency
pattern ReadOptions_ReadConsistency_Eventual = ReadOptions_ReadConsistency "EVENTUAL"

{-# COMPLETE
  ReadOptions_ReadConsistency_READCONSISTENCYUNSPECIFIED,
  ReadOptions_ReadConsistency_Strong,
  ReadOptions_ReadConsistency_Eventual,
  ReadOptions_ReadConsistency
  #-}

-- | A null value.
newtype Value_NullValue = Value_NullValue {fromValue_NullValue :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Null value.
pattern Value_NullValue_NULLVALUE :: Value_NullValue
pattern Value_NullValue_NULLVALUE = Value_NullValue "NULL_VALUE"

{-# COMPLETE
  Value_NullValue_NULLVALUE,
  Value_NullValue
  #-}
