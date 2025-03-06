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
-- Module      : Gogol.FireStore.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.FireStore.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * CompositeFilter_Op
    CompositeFilter_Op
      ( CompositeFilter_Op_OPERATORUNSPECIFIED,
        CompositeFilter_Op_And,
        CompositeFilter_Op_OR,
        ..
      ),

    -- * FieldFilter_Op
    FieldFilter_Op
      ( FieldFilter_Op_OPERATORUNSPECIFIED,
        FieldFilter_Op_LESSTHAN,
        FieldFilter_Op_LESSTHANOREQUAL,
        FieldFilter_Op_GREATERTHAN,
        FieldFilter_Op_GREATERTHANOREQUAL,
        FieldFilter_Op_Equal,
        FieldFilter_Op_NOTEQUAL,
        FieldFilter_Op_ARRAYCONTAINS,
        FieldFilter_Op_IN,
        FieldFilter_Op_ARRAYCONTAINSANY,
        FieldFilter_Op_NOTIN,
        ..
      ),

    -- * FieldTransform_SetToServerValue
    FieldTransform_SetToServerValue
      ( FieldTransform_SetToServerValue_SERVERVALUEUNSPECIFIED,
        FieldTransform_SetToServerValue_REQUESTTIME,
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

    -- * GoogleFirestoreAdminV1Backup_State
    GoogleFirestoreAdminV1Backup_State
      ( GoogleFirestoreAdminV1Backup_State_STATEUNSPECIFIED,
        GoogleFirestoreAdminV1Backup_State_Creating,
        GoogleFirestoreAdminV1Backup_State_Ready,
        GoogleFirestoreAdminV1Backup_State_NOTAVAILABLE,
        ..
      ),

    -- * GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
    GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
      ( GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED,
        GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Initializing,
        GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Processing,
        GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Cancelling,
        GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Finalizing,
        GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Successful,
        GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Failed,
        GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Cancelled,
        ..
      ),

    -- * GoogleFirestoreAdminV1Database_AppEngineIntegrationMode
    GoogleFirestoreAdminV1Database_AppEngineIntegrationMode
      ( GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_APPENGINEINTEGRATIONMODEUNSPECIFIED,
        GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_Enabled,
        GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_Disabled,
        ..
      ),

    -- * GoogleFirestoreAdminV1Database_ConcurrencyMode
    GoogleFirestoreAdminV1Database_ConcurrencyMode
      ( GoogleFirestoreAdminV1Database_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED,
        GoogleFirestoreAdminV1Database_ConcurrencyMode_Optimistic,
        GoogleFirestoreAdminV1Database_ConcurrencyMode_Pessimistic,
        GoogleFirestoreAdminV1Database_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS,
        ..
      ),

    -- * GoogleFirestoreAdminV1Database_DeleteProtectionState
    GoogleFirestoreAdminV1Database_DeleteProtectionState
      ( GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONSTATEUNSPECIFIED,
        GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONDISABLED,
        GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONENABLED,
        ..
      ),

    -- * GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement
    GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement
      ( GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYENABLEMENTUNSPECIFIED,
        GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYENABLED,
        GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYDISABLED,
        ..
      ),

    -- * GoogleFirestoreAdminV1Database_Type
    GoogleFirestoreAdminV1Database_Type
      ( GoogleFirestoreAdminV1Database_Type_DATABASETYPEUNSPECIFIED,
        GoogleFirestoreAdminV1Database_Type_FIRESTORENATIVE,
        GoogleFirestoreAdminV1Database_Type_DATASTOREMODE,
        ..
      ),

    -- * GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
    GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
      ( GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED,
        GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Initializing,
        GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Processing,
        GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Cancelling,
        GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Finalizing,
        GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Successful,
        GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Failed,
        GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Cancelled,
        ..
      ),

    -- * GoogleFirestoreAdminV1FieldOperationMetadata_State
    GoogleFirestoreAdminV1FieldOperationMetadata_State
      ( GoogleFirestoreAdminV1FieldOperationMetadata_State_OPERATIONSTATEUNSPECIFIED,
        GoogleFirestoreAdminV1FieldOperationMetadata_State_Initializing,
        GoogleFirestoreAdminV1FieldOperationMetadata_State_Processing,
        GoogleFirestoreAdminV1FieldOperationMetadata_State_Cancelling,
        GoogleFirestoreAdminV1FieldOperationMetadata_State_Finalizing,
        GoogleFirestoreAdminV1FieldOperationMetadata_State_Successful,
        GoogleFirestoreAdminV1FieldOperationMetadata_State_Failed,
        GoogleFirestoreAdminV1FieldOperationMetadata_State_Cancelled,
        ..
      ),

    -- * GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
    GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
      ( GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED,
        GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Initializing,
        GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Processing,
        GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Cancelling,
        GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Finalizing,
        GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Successful,
        GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Failed,
        GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Cancelled,
        ..
      ),

    -- * GoogleFirestoreAdminV1Index_ApiScope
    GoogleFirestoreAdminV1Index_ApiScope
      ( GoogleFirestoreAdminV1Index_ApiScope_ANYAPI,
        GoogleFirestoreAdminV1Index_ApiScope_DATASTOREMODEAPI,
        ..
      ),

    -- * GoogleFirestoreAdminV1Index_QueryScope
    GoogleFirestoreAdminV1Index_QueryScope
      ( GoogleFirestoreAdminV1Index_QueryScope_QUERYSCOPEUNSPECIFIED,
        GoogleFirestoreAdminV1Index_QueryScope_Collection,
        GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONGROUP,
        GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONRECURSIVE,
        ..
      ),

    -- * GoogleFirestoreAdminV1Index_State
    GoogleFirestoreAdminV1Index_State
      ( GoogleFirestoreAdminV1Index_State_STATEUNSPECIFIED,
        GoogleFirestoreAdminV1Index_State_Creating,
        GoogleFirestoreAdminV1Index_State_Ready,
        GoogleFirestoreAdminV1Index_State_NEEDSREPAIR,
        ..
      ),

    -- * GoogleFirestoreAdminV1IndexConfigDelta_ChangeType
    GoogleFirestoreAdminV1IndexConfigDelta_ChangeType
      ( GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_CHANGETYPEUNSPECIFIED,
        GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_Add,
        GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_Remove,
        ..
      ),

    -- * GoogleFirestoreAdminV1IndexField_ArrayConfig
    GoogleFirestoreAdminV1IndexField_ArrayConfig
      ( GoogleFirestoreAdminV1IndexField_ArrayConfig_ARRAYCONFIGUNSPECIFIED,
        GoogleFirestoreAdminV1IndexField_ArrayConfig_Contains,
        ..
      ),

    -- * GoogleFirestoreAdminV1IndexField_Order
    GoogleFirestoreAdminV1IndexField_Order
      ( GoogleFirestoreAdminV1IndexField_Order_ORDERUNSPECIFIED,
        GoogleFirestoreAdminV1IndexField_Order_Ascending,
        GoogleFirestoreAdminV1IndexField_Order_Descending,
        ..
      ),

    -- * GoogleFirestoreAdminV1IndexOperationMetadata_State
    GoogleFirestoreAdminV1IndexOperationMetadata_State
      ( GoogleFirestoreAdminV1IndexOperationMetadata_State_OPERATIONSTATEUNSPECIFIED,
        GoogleFirestoreAdminV1IndexOperationMetadata_State_Initializing,
        GoogleFirestoreAdminV1IndexOperationMetadata_State_Processing,
        GoogleFirestoreAdminV1IndexOperationMetadata_State_Cancelling,
        GoogleFirestoreAdminV1IndexOperationMetadata_State_Finalizing,
        GoogleFirestoreAdminV1IndexOperationMetadata_State_Successful,
        GoogleFirestoreAdminV1IndexOperationMetadata_State_Failed,
        GoogleFirestoreAdminV1IndexOperationMetadata_State_Cancelled,
        ..
      ),

    -- * GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
    GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
      ( GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_OPERATIONSTATEUNSPECIFIED,
        GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Initializing,
        GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Processing,
        GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Cancelling,
        GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Finalizing,
        GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Successful,
        GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Failed,
        GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Cancelled,
        ..
      ),

    -- * GoogleFirestoreAdminV1TtlConfig_State
    GoogleFirestoreAdminV1TtlConfig_State
      ( GoogleFirestoreAdminV1TtlConfig_State_STATEUNSPECIFIED,
        GoogleFirestoreAdminV1TtlConfig_State_Creating,
        GoogleFirestoreAdminV1TtlConfig_State_Active,
        GoogleFirestoreAdminV1TtlConfig_State_NEEDSREPAIR,
        ..
      ),

    -- * GoogleFirestoreAdminV1TtlConfigDelta_ChangeType
    GoogleFirestoreAdminV1TtlConfigDelta_ChangeType
      ( GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_CHANGETYPEUNSPECIFIED,
        GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_Add,
        GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_Remove,
        ..
      ),

    -- * GoogleFirestoreAdminV1WeeklyRecurrence_Day
    GoogleFirestoreAdminV1WeeklyRecurrence_Day
      ( GoogleFirestoreAdminV1WeeklyRecurrence_Day_DAYOFWEEKUNSPECIFIED,
        GoogleFirestoreAdminV1WeeklyRecurrence_Day_Monday,
        GoogleFirestoreAdminV1WeeklyRecurrence_Day_Tuesday,
        GoogleFirestoreAdminV1WeeklyRecurrence_Day_Wednesday,
        GoogleFirestoreAdminV1WeeklyRecurrence_Day_Thursday,
        GoogleFirestoreAdminV1WeeklyRecurrence_Day_Friday,
        GoogleFirestoreAdminV1WeeklyRecurrence_Day_Saturday,
        GoogleFirestoreAdminV1WeeklyRecurrence_Day_Sunday,
        ..
      ),

    -- * Order_Direction
    Order_Direction
      ( Order_Direction_DIRECTIONUNSPECIFIED,
        Order_Direction_Ascending,
        Order_Direction_Descending,
        ..
      ),

    -- * TargetChange_TargetChangeType
    TargetChange_TargetChangeType
      ( TargetChange_TargetChangeType_NOCHANGE,
        TargetChange_TargetChangeType_Add,
        TargetChange_TargetChangeType_Remove,
        TargetChange_TargetChangeType_Current,
        TargetChange_TargetChangeType_Reset,
        ..
      ),

    -- * UnaryFilter_Op
    UnaryFilter_Op
      ( UnaryFilter_Op_OPERATORUNSPECIFIED,
        UnaryFilter_Op_ISNAN,
        UnaryFilter_Op_ISNULL,
        UnaryFilter_Op_ISNOTNAN,
        UnaryFilter_Op_ISNOTNULL,
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

-- | Documents are required to satisfy all of the combined filters.
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

-- | The operator to filter by.
newtype FieldFilter_Op = FieldFilter_Op {fromFieldFilter_Op :: Core.Text}
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
pattern FieldFilter_Op_OPERATORUNSPECIFIED :: FieldFilter_Op
pattern FieldFilter_Op_OPERATORUNSPECIFIED = FieldFilter_Op "OPERATOR_UNSPECIFIED"

-- | The given @field@ is less than the given @value@. Requires: * That @field@ come first in @order_by@.
pattern FieldFilter_Op_LESSTHAN :: FieldFilter_Op
pattern FieldFilter_Op_LESSTHAN = FieldFilter_Op "LESS_THAN"

-- | The given @field@ is less than or equal to the given @value@. Requires: * That @field@ come first in @order_by@.
pattern FieldFilter_Op_LESSTHANOREQUAL :: FieldFilter_Op
pattern FieldFilter_Op_LESSTHANOREQUAL = FieldFilter_Op "LESS_THAN_OR_EQUAL"

-- | The given @field@ is greater than the given @value@. Requires: * That @field@ come first in @order_by@.
pattern FieldFilter_Op_GREATERTHAN :: FieldFilter_Op
pattern FieldFilter_Op_GREATERTHAN = FieldFilter_Op "GREATER_THAN"

-- | The given @field@ is greater than or equal to the given @value@. Requires: * That @field@ come first in @order_by@.
pattern FieldFilter_Op_GREATERTHANOREQUAL :: FieldFilter_Op
pattern FieldFilter_Op_GREATERTHANOREQUAL = FieldFilter_Op "GREATER_THAN_OR_EQUAL"

-- | The given @field@ is equal to the given @value@.
pattern FieldFilter_Op_Equal :: FieldFilter_Op
pattern FieldFilter_Op_Equal = FieldFilter_Op "EQUAL"

-- | The given @field@ is not equal to the given @value@. Requires: * No other @NOT_EQUAL@, @NOT_IN@, @IS_NOT_NULL@, or @IS_NOT_NAN@. * That @field@ comes first in the @order_by@.
pattern FieldFilter_Op_NOTEQUAL :: FieldFilter_Op
pattern FieldFilter_Op_NOTEQUAL = FieldFilter_Op "NOT_EQUAL"

-- | The given @field@ is an array that contains the given @value@.
pattern FieldFilter_Op_ARRAYCONTAINS :: FieldFilter_Op
pattern FieldFilter_Op_ARRAYCONTAINS = FieldFilter_Op "ARRAY_CONTAINS"

-- | The given @field@ is equal to at least one value in the given array. Requires: * That @value@ is a non-empty @ArrayValue@, subject to disjunction limits. * No @NOT_IN@ filters in the same query.
pattern FieldFilter_Op_IN :: FieldFilter_Op
pattern FieldFilter_Op_IN = FieldFilter_Op "IN"

-- | The given @field@ is an array that contains any of the values in the given array. Requires: * That @value@ is a non-empty @ArrayValue@, subject to disjunction limits. * No other @ARRAY_CONTAINS_ANY@ filters within the same disjunction. * No @NOT_IN@ filters in the same query.
pattern FieldFilter_Op_ARRAYCONTAINSANY :: FieldFilter_Op
pattern FieldFilter_Op_ARRAYCONTAINSANY = FieldFilter_Op "ARRAY_CONTAINS_ANY"

-- | The value of the @field@ is not in the given array. Requires: * That @value@ is a non-empty @ArrayValue@ with at most 10 values. * No other @OR@, @IN@, @ARRAY_CONTAINS_ANY@, @NOT_IN@, @NOT_EQUAL@, @IS_NOT_NULL@, or @IS_NOT_NAN@. * That @field@ comes first in the @order_by@.
pattern FieldFilter_Op_NOTIN :: FieldFilter_Op
pattern FieldFilter_Op_NOTIN = FieldFilter_Op "NOT_IN"

{-# COMPLETE
  FieldFilter_Op_OPERATORUNSPECIFIED,
  FieldFilter_Op_LESSTHAN,
  FieldFilter_Op_LESSTHANOREQUAL,
  FieldFilter_Op_GREATERTHAN,
  FieldFilter_Op_GREATERTHANOREQUAL,
  FieldFilter_Op_Equal,
  FieldFilter_Op_NOTEQUAL,
  FieldFilter_Op_ARRAYCONTAINS,
  FieldFilter_Op_IN,
  FieldFilter_Op_ARRAYCONTAINSANY,
  FieldFilter_Op_NOTIN,
  FieldFilter_Op
  #-}

-- | Sets the field to the given server value.
newtype FieldTransform_SetToServerValue = FieldTransform_SetToServerValue {fromFieldTransform_SetToServerValue :: Core.Text}
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
pattern FieldTransform_SetToServerValue_SERVERVALUEUNSPECIFIED :: FieldTransform_SetToServerValue
pattern FieldTransform_SetToServerValue_SERVERVALUEUNSPECIFIED = FieldTransform_SetToServerValue "SERVER_VALUE_UNSPECIFIED"

-- | The time at which the server processed the request, with millisecond precision. If used on multiple fields (same or different documents) in a transaction, all the fields will get the same server timestamp.
pattern FieldTransform_SetToServerValue_REQUESTTIME :: FieldTransform_SetToServerValue
pattern FieldTransform_SetToServerValue_REQUESTTIME = FieldTransform_SetToServerValue "REQUEST_TIME"

{-# COMPLETE
  FieldTransform_SetToServerValue_SERVERVALUEUNSPECIFIED,
  FieldTransform_SetToServerValue_REQUESTTIME,
  FieldTransform_SetToServerValue
  #-}

-- | Required. The distance measure to use, required.
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

-- | Output only. The current state of the backup.
newtype GoogleFirestoreAdminV1Backup_State = GoogleFirestoreAdminV1Backup_State {fromGoogleFirestoreAdminV1Backup_State :: Core.Text}
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
pattern GoogleFirestoreAdminV1Backup_State_STATEUNSPECIFIED :: GoogleFirestoreAdminV1Backup_State
pattern GoogleFirestoreAdminV1Backup_State_STATEUNSPECIFIED = GoogleFirestoreAdminV1Backup_State "STATE_UNSPECIFIED"

-- | The pending backup is still being created. Operations on the backup will be rejected in this state.
pattern GoogleFirestoreAdminV1Backup_State_Creating :: GoogleFirestoreAdminV1Backup_State
pattern GoogleFirestoreAdminV1Backup_State_Creating = GoogleFirestoreAdminV1Backup_State "CREATING"

-- | The backup is complete and ready to use.
pattern GoogleFirestoreAdminV1Backup_State_Ready :: GoogleFirestoreAdminV1Backup_State
pattern GoogleFirestoreAdminV1Backup_State_Ready = GoogleFirestoreAdminV1Backup_State "READY"

-- | The backup is not available at this moment.
pattern GoogleFirestoreAdminV1Backup_State_NOTAVAILABLE :: GoogleFirestoreAdminV1Backup_State
pattern GoogleFirestoreAdminV1Backup_State_NOTAVAILABLE = GoogleFirestoreAdminV1Backup_State "NOT_AVAILABLE"

{-# COMPLETE
  GoogleFirestoreAdminV1Backup_State_STATEUNSPECIFIED,
  GoogleFirestoreAdminV1Backup_State_Creating,
  GoogleFirestoreAdminV1Backup_State_Ready,
  GoogleFirestoreAdminV1Backup_State_NOTAVAILABLE,
  GoogleFirestoreAdminV1Backup_State
  #-}

-- | The state of the operation.
newtype GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState = GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState {fromGoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState :: Core.Text}
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
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED :: GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED = GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState "OPERATION_STATE_UNSPECIFIED"

-- | Request is being prepared for processing.
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Initializing :: GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Initializing = GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState "INITIALIZING"

-- | Request is actively being processed.
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Processing :: GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Processing = GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState "PROCESSING"

-- | Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Cancelling :: GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Cancelling = GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState "CANCELLING"

-- | Request has been processed and is in its finalization stage.
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Finalizing :: GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Finalizing = GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState "FINALIZING"

-- | Request has completed successfully.
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Successful :: GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Successful = GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState "SUCCESSFUL"

-- | Request has finished being processed, but encountered an error.
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Failed :: GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Failed = GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState "FAILED"

-- | Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Cancelled :: GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Cancelled = GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState "CANCELLED"

{-# COMPLETE
  GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED,
  GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Initializing,
  GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Processing,
  GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Cancelling,
  GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Finalizing,
  GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Successful,
  GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Failed,
  GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState_Cancelled,
  GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
  #-}

-- | The App Engine integration mode to use for this database.
newtype GoogleFirestoreAdminV1Database_AppEngineIntegrationMode = GoogleFirestoreAdminV1Database_AppEngineIntegrationMode {fromGoogleFirestoreAdminV1Database_AppEngineIntegrationMode :: Core.Text}
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

-- | Not used.
pattern GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_APPENGINEINTEGRATIONMODEUNSPECIFIED :: GoogleFirestoreAdminV1Database_AppEngineIntegrationMode
pattern GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_APPENGINEINTEGRATIONMODEUNSPECIFIED = GoogleFirestoreAdminV1Database_AppEngineIntegrationMode "APP_ENGINE_INTEGRATION_MODE_UNSPECIFIED"

-- | If an App Engine application exists in the same region as this database, App Engine configuration will impact this database. This includes disabling of the application & database, as well as disabling writes to the database.
pattern GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_Enabled :: GoogleFirestoreAdminV1Database_AppEngineIntegrationMode
pattern GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_Enabled = GoogleFirestoreAdminV1Database_AppEngineIntegrationMode "ENABLED"

-- | App Engine has no effect on the ability of this database to serve requests. This is the default setting for databases created with the Firestore API.
pattern GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_Disabled :: GoogleFirestoreAdminV1Database_AppEngineIntegrationMode
pattern GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_Disabled = GoogleFirestoreAdminV1Database_AppEngineIntegrationMode "DISABLED"

{-# COMPLETE
  GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_APPENGINEINTEGRATIONMODEUNSPECIFIED,
  GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_Enabled,
  GoogleFirestoreAdminV1Database_AppEngineIntegrationMode_Disabled,
  GoogleFirestoreAdminV1Database_AppEngineIntegrationMode
  #-}

-- | The concurrency control mode to use for this database.
newtype GoogleFirestoreAdminV1Database_ConcurrencyMode = GoogleFirestoreAdminV1Database_ConcurrencyMode {fromGoogleFirestoreAdminV1Database_ConcurrencyMode :: Core.Text}
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

-- | Not used.
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED :: GoogleFirestoreAdminV1Database_ConcurrencyMode
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED = GoogleFirestoreAdminV1Database_ConcurrencyMode "CONCURRENCY_MODE_UNSPECIFIED"

-- | Use optimistic concurrency control by default. This mode is available for Cloud Firestore databases.
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_Optimistic :: GoogleFirestoreAdminV1Database_ConcurrencyMode
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_Optimistic = GoogleFirestoreAdminV1Database_ConcurrencyMode "OPTIMISTIC"

-- | Use pessimistic concurrency control by default. This mode is available for Cloud Firestore databases. This is the default setting for Cloud Firestore.
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_Pessimistic :: GoogleFirestoreAdminV1Database_ConcurrencyMode
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_Pessimistic = GoogleFirestoreAdminV1Database_ConcurrencyMode "PESSIMISTIC"

-- | Use optimistic concurrency control with entity groups by default. This is the only available mode for Cloud Datastore. This mode is also available for Cloud Firestore with Datastore Mode but is not recommended.
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS :: GoogleFirestoreAdminV1Database_ConcurrencyMode
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS = GoogleFirestoreAdminV1Database_ConcurrencyMode "OPTIMISTIC_WITH_ENTITY_GROUPS"

{-# COMPLETE
  GoogleFirestoreAdminV1Database_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED,
  GoogleFirestoreAdminV1Database_ConcurrencyMode_Optimistic,
  GoogleFirestoreAdminV1Database_ConcurrencyMode_Pessimistic,
  GoogleFirestoreAdminV1Database_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS,
  GoogleFirestoreAdminV1Database_ConcurrencyMode
  #-}

-- | State of delete protection for the database.
newtype GoogleFirestoreAdminV1Database_DeleteProtectionState = GoogleFirestoreAdminV1Database_DeleteProtectionState {fromGoogleFirestoreAdminV1Database_DeleteProtectionState :: Core.Text}
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

-- | The default value. Delete protection type is not specified
pattern GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONSTATEUNSPECIFIED :: GoogleFirestoreAdminV1Database_DeleteProtectionState
pattern GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONSTATEUNSPECIFIED = GoogleFirestoreAdminV1Database_DeleteProtectionState "DELETE_PROTECTION_STATE_UNSPECIFIED"

-- | Delete protection is disabled
pattern GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONDISABLED :: GoogleFirestoreAdminV1Database_DeleteProtectionState
pattern GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONDISABLED = GoogleFirestoreAdminV1Database_DeleteProtectionState "DELETE_PROTECTION_DISABLED"

-- | Delete protection is enabled
pattern GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONENABLED :: GoogleFirestoreAdminV1Database_DeleteProtectionState
pattern GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONENABLED = GoogleFirestoreAdminV1Database_DeleteProtectionState "DELETE_PROTECTION_ENABLED"

{-# COMPLETE
  GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONSTATEUNSPECIFIED,
  GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONDISABLED,
  GoogleFirestoreAdminV1Database_DeleteProtectionState_DELETEPROTECTIONENABLED,
  GoogleFirestoreAdminV1Database_DeleteProtectionState
  #-}

-- | Whether to enable the PITR feature on this database.
newtype GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement = GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement {fromGoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement :: Core.Text}
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

-- | Not used.
pattern GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYENABLEMENTUNSPECIFIED :: GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement
pattern GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYENABLEMENTUNSPECIFIED = GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement "POINT_IN_TIME_RECOVERY_ENABLEMENT_UNSPECIFIED"

-- | Reads are supported on selected versions of the data from within the past 7 days: * Reads against any timestamp within the past hour * Reads against 1-minute snapshots beyond 1 hour and within 7 days @version_retention_period@ and @earliest_version_time@ can be used to determine the supported versions.
pattern GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYENABLED :: GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement
pattern GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYENABLED = GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement "POINT_IN_TIME_RECOVERY_ENABLED"

-- | Reads are supported on any version of the data from within the past 1 hour.
pattern GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYDISABLED :: GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement
pattern GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYDISABLED = GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement "POINT_IN_TIME_RECOVERY_DISABLED"

{-# COMPLETE
  GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYENABLEMENTUNSPECIFIED,
  GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYENABLED,
  GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement_POINTINTIMERECOVERYDISABLED,
  GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement
  #-}

-- | The type of the database. See https:\/\/cloud.google.com\/datastore\/docs\/firestore-or-datastore for information about how to choose.
newtype GoogleFirestoreAdminV1Database_Type = GoogleFirestoreAdminV1Database_Type {fromGoogleFirestoreAdminV1Database_Type :: Core.Text}
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

-- | Not used.
pattern GoogleFirestoreAdminV1Database_Type_DATABASETYPEUNSPECIFIED :: GoogleFirestoreAdminV1Database_Type
pattern GoogleFirestoreAdminV1Database_Type_DATABASETYPEUNSPECIFIED = GoogleFirestoreAdminV1Database_Type "DATABASE_TYPE_UNSPECIFIED"

-- | Firestore Native Mode
pattern GoogleFirestoreAdminV1Database_Type_FIRESTORENATIVE :: GoogleFirestoreAdminV1Database_Type
pattern GoogleFirestoreAdminV1Database_Type_FIRESTORENATIVE = GoogleFirestoreAdminV1Database_Type "FIRESTORE_NATIVE"

-- | Firestore in Datastore Mode.
pattern GoogleFirestoreAdminV1Database_Type_DATASTOREMODE :: GoogleFirestoreAdminV1Database_Type
pattern GoogleFirestoreAdminV1Database_Type_DATASTOREMODE = GoogleFirestoreAdminV1Database_Type "DATASTORE_MODE"

{-# COMPLETE
  GoogleFirestoreAdminV1Database_Type_DATABASETYPEUNSPECIFIED,
  GoogleFirestoreAdminV1Database_Type_FIRESTORENATIVE,
  GoogleFirestoreAdminV1Database_Type_DATASTOREMODE,
  GoogleFirestoreAdminV1Database_Type
  #-}

-- | The state of the export operation.
newtype GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState = GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState {fromGoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState :: Core.Text}
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
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED :: GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED = GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState "OPERATION_STATE_UNSPECIFIED"

-- | Request is being prepared for processing.
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Initializing :: GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Initializing = GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState "INITIALIZING"

-- | Request is actively being processed.
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Processing :: GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Processing = GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState "PROCESSING"

-- | Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Cancelling :: GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Cancelling = GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState "CANCELLING"

-- | Request has been processed and is in its finalization stage.
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Finalizing :: GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Finalizing = GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState "FINALIZING"

-- | Request has completed successfully.
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Successful :: GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Successful = GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState "SUCCESSFUL"

-- | Request has finished being processed, but encountered an error.
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Failed :: GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Failed = GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState "FAILED"

-- | Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Cancelled :: GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Cancelled = GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState "CANCELLED"

{-# COMPLETE
  GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED,
  GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Initializing,
  GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Processing,
  GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Cancelling,
  GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Finalizing,
  GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Successful,
  GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Failed,
  GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState_Cancelled,
  GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
  #-}

-- | The state of the operation.
newtype GoogleFirestoreAdminV1FieldOperationMetadata_State = GoogleFirestoreAdminV1FieldOperationMetadata_State {fromGoogleFirestoreAdminV1FieldOperationMetadata_State :: Core.Text}
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
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_OPERATIONSTATEUNSPECIFIED :: GoogleFirestoreAdminV1FieldOperationMetadata_State
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_OPERATIONSTATEUNSPECIFIED = GoogleFirestoreAdminV1FieldOperationMetadata_State "OPERATION_STATE_UNSPECIFIED"

-- | Request is being prepared for processing.
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Initializing :: GoogleFirestoreAdminV1FieldOperationMetadata_State
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Initializing = GoogleFirestoreAdminV1FieldOperationMetadata_State "INITIALIZING"

-- | Request is actively being processed.
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Processing :: GoogleFirestoreAdminV1FieldOperationMetadata_State
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Processing = GoogleFirestoreAdminV1FieldOperationMetadata_State "PROCESSING"

-- | Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Cancelling :: GoogleFirestoreAdminV1FieldOperationMetadata_State
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Cancelling = GoogleFirestoreAdminV1FieldOperationMetadata_State "CANCELLING"

-- | Request has been processed and is in its finalization stage.
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Finalizing :: GoogleFirestoreAdminV1FieldOperationMetadata_State
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Finalizing = GoogleFirestoreAdminV1FieldOperationMetadata_State "FINALIZING"

-- | Request has completed successfully.
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Successful :: GoogleFirestoreAdminV1FieldOperationMetadata_State
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Successful = GoogleFirestoreAdminV1FieldOperationMetadata_State "SUCCESSFUL"

-- | Request has finished being processed, but encountered an error.
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Failed :: GoogleFirestoreAdminV1FieldOperationMetadata_State
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Failed = GoogleFirestoreAdminV1FieldOperationMetadata_State "FAILED"

-- | Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Cancelled :: GoogleFirestoreAdminV1FieldOperationMetadata_State
pattern GoogleFirestoreAdminV1FieldOperationMetadata_State_Cancelled = GoogleFirestoreAdminV1FieldOperationMetadata_State "CANCELLED"

{-# COMPLETE
  GoogleFirestoreAdminV1FieldOperationMetadata_State_OPERATIONSTATEUNSPECIFIED,
  GoogleFirestoreAdminV1FieldOperationMetadata_State_Initializing,
  GoogleFirestoreAdminV1FieldOperationMetadata_State_Processing,
  GoogleFirestoreAdminV1FieldOperationMetadata_State_Cancelling,
  GoogleFirestoreAdminV1FieldOperationMetadata_State_Finalizing,
  GoogleFirestoreAdminV1FieldOperationMetadata_State_Successful,
  GoogleFirestoreAdminV1FieldOperationMetadata_State_Failed,
  GoogleFirestoreAdminV1FieldOperationMetadata_State_Cancelled,
  GoogleFirestoreAdminV1FieldOperationMetadata_State
  #-}

-- | The state of the import operation.
newtype GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState = GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState {fromGoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState :: Core.Text}
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
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED :: GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED = GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState "OPERATION_STATE_UNSPECIFIED"

-- | Request is being prepared for processing.
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Initializing :: GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Initializing = GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState "INITIALIZING"

-- | Request is actively being processed.
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Processing :: GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Processing = GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState "PROCESSING"

-- | Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Cancelling :: GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Cancelling = GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState "CANCELLING"

-- | Request has been processed and is in its finalization stage.
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Finalizing :: GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Finalizing = GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState "FINALIZING"

-- | Request has completed successfully.
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Successful :: GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Successful = GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState "SUCCESSFUL"

-- | Request has finished being processed, but encountered an error.
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Failed :: GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Failed = GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState "FAILED"

-- | Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Cancelled :: GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
pattern GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Cancelled = GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState "CANCELLED"

{-# COMPLETE
  GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_OPERATIONSTATEUNSPECIFIED,
  GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Initializing,
  GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Processing,
  GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Cancelling,
  GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Finalizing,
  GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Successful,
  GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Failed,
  GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState_Cancelled,
  GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
  #-}

-- | The API scope supported by this index.
newtype GoogleFirestoreAdminV1Index_ApiScope = GoogleFirestoreAdminV1Index_ApiScope {fromGoogleFirestoreAdminV1Index_ApiScope :: Core.Text}
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

-- | The index can only be used by the Firestore Native query API. This is the default.
pattern GoogleFirestoreAdminV1Index_ApiScope_ANYAPI :: GoogleFirestoreAdminV1Index_ApiScope
pattern GoogleFirestoreAdminV1Index_ApiScope_ANYAPI = GoogleFirestoreAdminV1Index_ApiScope "ANY_API"

-- | The index can only be used by the Firestore in Datastore Mode query API.
pattern GoogleFirestoreAdminV1Index_ApiScope_DATASTOREMODEAPI :: GoogleFirestoreAdminV1Index_ApiScope
pattern GoogleFirestoreAdminV1Index_ApiScope_DATASTOREMODEAPI = GoogleFirestoreAdminV1Index_ApiScope "DATASTORE_MODE_API"

{-# COMPLETE
  GoogleFirestoreAdminV1Index_ApiScope_ANYAPI,
  GoogleFirestoreAdminV1Index_ApiScope_DATASTOREMODEAPI,
  GoogleFirestoreAdminV1Index_ApiScope
  #-}

-- | Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection ID. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection ID as this index.
newtype GoogleFirestoreAdminV1Index_QueryScope = GoogleFirestoreAdminV1Index_QueryScope {fromGoogleFirestoreAdminV1Index_QueryScope :: Core.Text}
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

-- | The query scope is unspecified. Not a valid option.
pattern GoogleFirestoreAdminV1Index_QueryScope_QUERYSCOPEUNSPECIFIED :: GoogleFirestoreAdminV1Index_QueryScope
pattern GoogleFirestoreAdminV1Index_QueryScope_QUERYSCOPEUNSPECIFIED = GoogleFirestoreAdminV1Index_QueryScope "QUERY_SCOPE_UNSPECIFIED"

-- | Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the collection ID specified by the index.
pattern GoogleFirestoreAdminV1Index_QueryScope_Collection :: GoogleFirestoreAdminV1Index_QueryScope
pattern GoogleFirestoreAdminV1Index_QueryScope_Collection = GoogleFirestoreAdminV1Index_QueryScope "COLLECTION"

-- | Indexes with a collection group query scope specified allow queries against all collections that has the collection ID specified by the index.
pattern GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONGROUP :: GoogleFirestoreAdminV1Index_QueryScope
pattern GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONGROUP = GoogleFirestoreAdminV1Index_QueryScope "COLLECTION_GROUP"

-- | Include all the collections\'s ancestor in the index. Only available for Datastore Mode databases.
pattern GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONRECURSIVE :: GoogleFirestoreAdminV1Index_QueryScope
pattern GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONRECURSIVE = GoogleFirestoreAdminV1Index_QueryScope "COLLECTION_RECURSIVE"

{-# COMPLETE
  GoogleFirestoreAdminV1Index_QueryScope_QUERYSCOPEUNSPECIFIED,
  GoogleFirestoreAdminV1Index_QueryScope_Collection,
  GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONGROUP,
  GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONRECURSIVE,
  GoogleFirestoreAdminV1Index_QueryScope
  #-}

-- | Output only. The serving state of the index.
newtype GoogleFirestoreAdminV1Index_State = GoogleFirestoreAdminV1Index_State {fromGoogleFirestoreAdminV1Index_State :: Core.Text}
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
pattern GoogleFirestoreAdminV1Index_State_STATEUNSPECIFIED :: GoogleFirestoreAdminV1Index_State
pattern GoogleFirestoreAdminV1Index_State_STATEUNSPECIFIED = GoogleFirestoreAdminV1Index_State "STATE_UNSPECIFIED"

-- | The index is being created. There is an active long-running operation for the index. The index is updated when writing a document. Some index data may exist.
pattern GoogleFirestoreAdminV1Index_State_Creating :: GoogleFirestoreAdminV1Index_State
pattern GoogleFirestoreAdminV1Index_State_Creating = GoogleFirestoreAdminV1Index_State "CREATING"

-- | The index is ready to be used. The index is updated when writing a document. The index is fully populated from all stored documents it applies to.
pattern GoogleFirestoreAdminV1Index_State_Ready :: GoogleFirestoreAdminV1Index_State
pattern GoogleFirestoreAdminV1Index_State_Ready = GoogleFirestoreAdminV1Index_State "READY"

-- | The index was being created, but something went wrong. There is no active long-running operation for the index, and the most recently finished long-running operation failed. The index is not updated when writing a document. Some index data may exist. Use the google.longrunning.Operations API to determine why the operation that last attempted to create this index failed, then re-create the index.
pattern GoogleFirestoreAdminV1Index_State_NEEDSREPAIR :: GoogleFirestoreAdminV1Index_State
pattern GoogleFirestoreAdminV1Index_State_NEEDSREPAIR = GoogleFirestoreAdminV1Index_State "NEEDS_REPAIR"

{-# COMPLETE
  GoogleFirestoreAdminV1Index_State_STATEUNSPECIFIED,
  GoogleFirestoreAdminV1Index_State_Creating,
  GoogleFirestoreAdminV1Index_State_Ready,
  GoogleFirestoreAdminV1Index_State_NEEDSREPAIR,
  GoogleFirestoreAdminV1Index_State
  #-}

-- | Specifies how the index is changing.
newtype GoogleFirestoreAdminV1IndexConfigDelta_ChangeType = GoogleFirestoreAdminV1IndexConfigDelta_ChangeType {fromGoogleFirestoreAdminV1IndexConfigDelta_ChangeType :: Core.Text}
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

-- | The type of change is not specified or known.
pattern GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_CHANGETYPEUNSPECIFIED :: GoogleFirestoreAdminV1IndexConfigDelta_ChangeType
pattern GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_CHANGETYPEUNSPECIFIED = GoogleFirestoreAdminV1IndexConfigDelta_ChangeType "CHANGE_TYPE_UNSPECIFIED"

-- | The single field index is being added.
pattern GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_Add :: GoogleFirestoreAdminV1IndexConfigDelta_ChangeType
pattern GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_Add = GoogleFirestoreAdminV1IndexConfigDelta_ChangeType "ADD"

-- | The single field index is being removed.
pattern GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_Remove :: GoogleFirestoreAdminV1IndexConfigDelta_ChangeType
pattern GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_Remove = GoogleFirestoreAdminV1IndexConfigDelta_ChangeType "REMOVE"

{-# COMPLETE
  GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_CHANGETYPEUNSPECIFIED,
  GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_Add,
  GoogleFirestoreAdminV1IndexConfigDelta_ChangeType_Remove,
  GoogleFirestoreAdminV1IndexConfigDelta_ChangeType
  #-}

-- | Indicates that this field supports operations on @array_value@s.
newtype GoogleFirestoreAdminV1IndexField_ArrayConfig = GoogleFirestoreAdminV1IndexField_ArrayConfig {fromGoogleFirestoreAdminV1IndexField_ArrayConfig :: Core.Text}
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

-- | The index does not support additional array queries.
pattern GoogleFirestoreAdminV1IndexField_ArrayConfig_ARRAYCONFIGUNSPECIFIED :: GoogleFirestoreAdminV1IndexField_ArrayConfig
pattern GoogleFirestoreAdminV1IndexField_ArrayConfig_ARRAYCONFIGUNSPECIFIED = GoogleFirestoreAdminV1IndexField_ArrayConfig "ARRAY_CONFIG_UNSPECIFIED"

-- | The index supports array containment queries.
pattern GoogleFirestoreAdminV1IndexField_ArrayConfig_Contains :: GoogleFirestoreAdminV1IndexField_ArrayConfig
pattern GoogleFirestoreAdminV1IndexField_ArrayConfig_Contains = GoogleFirestoreAdminV1IndexField_ArrayConfig "CONTAINS"

{-# COMPLETE
  GoogleFirestoreAdminV1IndexField_ArrayConfig_ARRAYCONFIGUNSPECIFIED,
  GoogleFirestoreAdminV1IndexField_ArrayConfig_Contains,
  GoogleFirestoreAdminV1IndexField_ArrayConfig
  #-}

-- | Indicates that this field supports ordering by the specified order or comparing using =, !=, \<, \<=, >, >=.
newtype GoogleFirestoreAdminV1IndexField_Order = GoogleFirestoreAdminV1IndexField_Order {fromGoogleFirestoreAdminV1IndexField_Order :: Core.Text}
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

-- | The ordering is unspecified. Not a valid option.
pattern GoogleFirestoreAdminV1IndexField_Order_ORDERUNSPECIFIED :: GoogleFirestoreAdminV1IndexField_Order
pattern GoogleFirestoreAdminV1IndexField_Order_ORDERUNSPECIFIED = GoogleFirestoreAdminV1IndexField_Order "ORDER_UNSPECIFIED"

-- | The field is ordered by ascending field value.
pattern GoogleFirestoreAdminV1IndexField_Order_Ascending :: GoogleFirestoreAdminV1IndexField_Order
pattern GoogleFirestoreAdminV1IndexField_Order_Ascending = GoogleFirestoreAdminV1IndexField_Order "ASCENDING"

-- | The field is ordered by descending field value.
pattern GoogleFirestoreAdminV1IndexField_Order_Descending :: GoogleFirestoreAdminV1IndexField_Order
pattern GoogleFirestoreAdminV1IndexField_Order_Descending = GoogleFirestoreAdminV1IndexField_Order "DESCENDING"

{-# COMPLETE
  GoogleFirestoreAdminV1IndexField_Order_ORDERUNSPECIFIED,
  GoogleFirestoreAdminV1IndexField_Order_Ascending,
  GoogleFirestoreAdminV1IndexField_Order_Descending,
  GoogleFirestoreAdminV1IndexField_Order
  #-}

-- | The state of the operation.
newtype GoogleFirestoreAdminV1IndexOperationMetadata_State = GoogleFirestoreAdminV1IndexOperationMetadata_State {fromGoogleFirestoreAdminV1IndexOperationMetadata_State :: Core.Text}
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
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_OPERATIONSTATEUNSPECIFIED :: GoogleFirestoreAdminV1IndexOperationMetadata_State
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_OPERATIONSTATEUNSPECIFIED = GoogleFirestoreAdminV1IndexOperationMetadata_State "OPERATION_STATE_UNSPECIFIED"

-- | Request is being prepared for processing.
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Initializing :: GoogleFirestoreAdminV1IndexOperationMetadata_State
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Initializing = GoogleFirestoreAdminV1IndexOperationMetadata_State "INITIALIZING"

-- | Request is actively being processed.
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Processing :: GoogleFirestoreAdminV1IndexOperationMetadata_State
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Processing = GoogleFirestoreAdminV1IndexOperationMetadata_State "PROCESSING"

-- | Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Cancelling :: GoogleFirestoreAdminV1IndexOperationMetadata_State
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Cancelling = GoogleFirestoreAdminV1IndexOperationMetadata_State "CANCELLING"

-- | Request has been processed and is in its finalization stage.
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Finalizing :: GoogleFirestoreAdminV1IndexOperationMetadata_State
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Finalizing = GoogleFirestoreAdminV1IndexOperationMetadata_State "FINALIZING"

-- | Request has completed successfully.
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Successful :: GoogleFirestoreAdminV1IndexOperationMetadata_State
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Successful = GoogleFirestoreAdminV1IndexOperationMetadata_State "SUCCESSFUL"

-- | Request has finished being processed, but encountered an error.
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Failed :: GoogleFirestoreAdminV1IndexOperationMetadata_State
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Failed = GoogleFirestoreAdminV1IndexOperationMetadata_State "FAILED"

-- | Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Cancelled :: GoogleFirestoreAdminV1IndexOperationMetadata_State
pattern GoogleFirestoreAdminV1IndexOperationMetadata_State_Cancelled = GoogleFirestoreAdminV1IndexOperationMetadata_State "CANCELLED"

{-# COMPLETE
  GoogleFirestoreAdminV1IndexOperationMetadata_State_OPERATIONSTATEUNSPECIFIED,
  GoogleFirestoreAdminV1IndexOperationMetadata_State_Initializing,
  GoogleFirestoreAdminV1IndexOperationMetadata_State_Processing,
  GoogleFirestoreAdminV1IndexOperationMetadata_State_Cancelling,
  GoogleFirestoreAdminV1IndexOperationMetadata_State_Finalizing,
  GoogleFirestoreAdminV1IndexOperationMetadata_State_Successful,
  GoogleFirestoreAdminV1IndexOperationMetadata_State_Failed,
  GoogleFirestoreAdminV1IndexOperationMetadata_State_Cancelled,
  GoogleFirestoreAdminV1IndexOperationMetadata_State
  #-}

-- | The operation state of the restore.
newtype GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState = GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState {fromGoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState :: Core.Text}
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
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_OPERATIONSTATEUNSPECIFIED :: GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_OPERATIONSTATEUNSPECIFIED = GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState "OPERATION_STATE_UNSPECIFIED"

-- | Request is being prepared for processing.
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Initializing :: GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Initializing = GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState "INITIALIZING"

-- | Request is actively being processed.
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Processing :: GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Processing = GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState "PROCESSING"

-- | Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Cancelling :: GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Cancelling = GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState "CANCELLING"

-- | Request has been processed and is in its finalization stage.
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Finalizing :: GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Finalizing = GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState "FINALIZING"

-- | Request has completed successfully.
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Successful :: GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Successful = GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState "SUCCESSFUL"

-- | Request has finished being processed, but encountered an error.
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Failed :: GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Failed = GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState "FAILED"

-- | Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Cancelled :: GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
pattern GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Cancelled = GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState "CANCELLED"

{-# COMPLETE
  GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_OPERATIONSTATEUNSPECIFIED,
  GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Initializing,
  GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Processing,
  GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Cancelling,
  GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Finalizing,
  GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Successful,
  GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Failed,
  GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState_Cancelled,
  GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
  #-}

-- | Output only. The state of the TTL configuration.
newtype GoogleFirestoreAdminV1TtlConfig_State = GoogleFirestoreAdminV1TtlConfig_State {fromGoogleFirestoreAdminV1TtlConfig_State :: Core.Text}
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

-- | The state is unspecified or unknown.
pattern GoogleFirestoreAdminV1TtlConfig_State_STATEUNSPECIFIED :: GoogleFirestoreAdminV1TtlConfig_State
pattern GoogleFirestoreAdminV1TtlConfig_State_STATEUNSPECIFIED = GoogleFirestoreAdminV1TtlConfig_State "STATE_UNSPECIFIED"

-- | The TTL is being applied. There is an active long-running operation to track the change. Newly written documents will have TTLs applied as requested. Requested TTLs on existing documents are still being processed. When TTLs on all existing documents have been processed, the state will move to \'ACTIVE\'.
pattern GoogleFirestoreAdminV1TtlConfig_State_Creating :: GoogleFirestoreAdminV1TtlConfig_State
pattern GoogleFirestoreAdminV1TtlConfig_State_Creating = GoogleFirestoreAdminV1TtlConfig_State "CREATING"

-- | The TTL is active for all documents.
pattern GoogleFirestoreAdminV1TtlConfig_State_Active :: GoogleFirestoreAdminV1TtlConfig_State
pattern GoogleFirestoreAdminV1TtlConfig_State_Active = GoogleFirestoreAdminV1TtlConfig_State "ACTIVE"

-- | The TTL configuration could not be enabled for all existing documents. Newly written documents will continue to have their TTL applied. The LRO returned when last attempting to enable TTL for this @Field@ has failed, and may have more details.
pattern GoogleFirestoreAdminV1TtlConfig_State_NEEDSREPAIR :: GoogleFirestoreAdminV1TtlConfig_State
pattern GoogleFirestoreAdminV1TtlConfig_State_NEEDSREPAIR = GoogleFirestoreAdminV1TtlConfig_State "NEEDS_REPAIR"

{-# COMPLETE
  GoogleFirestoreAdminV1TtlConfig_State_STATEUNSPECIFIED,
  GoogleFirestoreAdminV1TtlConfig_State_Creating,
  GoogleFirestoreAdminV1TtlConfig_State_Active,
  GoogleFirestoreAdminV1TtlConfig_State_NEEDSREPAIR,
  GoogleFirestoreAdminV1TtlConfig_State
  #-}

-- | Specifies how the TTL configuration is changing.
newtype GoogleFirestoreAdminV1TtlConfigDelta_ChangeType = GoogleFirestoreAdminV1TtlConfigDelta_ChangeType {fromGoogleFirestoreAdminV1TtlConfigDelta_ChangeType :: Core.Text}
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

-- | The type of change is not specified or known.
pattern GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_CHANGETYPEUNSPECIFIED :: GoogleFirestoreAdminV1TtlConfigDelta_ChangeType
pattern GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_CHANGETYPEUNSPECIFIED = GoogleFirestoreAdminV1TtlConfigDelta_ChangeType "CHANGE_TYPE_UNSPECIFIED"

-- | The TTL config is being added.
pattern GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_Add :: GoogleFirestoreAdminV1TtlConfigDelta_ChangeType
pattern GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_Add = GoogleFirestoreAdminV1TtlConfigDelta_ChangeType "ADD"

-- | The TTL config is being removed.
pattern GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_Remove :: GoogleFirestoreAdminV1TtlConfigDelta_ChangeType
pattern GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_Remove = GoogleFirestoreAdminV1TtlConfigDelta_ChangeType "REMOVE"

{-# COMPLETE
  GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_CHANGETYPEUNSPECIFIED,
  GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_Add,
  GoogleFirestoreAdminV1TtlConfigDelta_ChangeType_Remove,
  GoogleFirestoreAdminV1TtlConfigDelta_ChangeType
  #-}

-- | The day of week to run. DAY/OF/WEEK_UNSPECIFIED is not allowed.
newtype GoogleFirestoreAdminV1WeeklyRecurrence_Day = GoogleFirestoreAdminV1WeeklyRecurrence_Day {fromGoogleFirestoreAdminV1WeeklyRecurrence_Day :: Core.Text}
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

-- | The day of the week is unspecified.
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_DAYOFWEEKUNSPECIFIED :: GoogleFirestoreAdminV1WeeklyRecurrence_Day
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_DAYOFWEEKUNSPECIFIED = GoogleFirestoreAdminV1WeeklyRecurrence_Day "DAY_OF_WEEK_UNSPECIFIED"

-- | Monday
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Monday :: GoogleFirestoreAdminV1WeeklyRecurrence_Day
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Monday = GoogleFirestoreAdminV1WeeklyRecurrence_Day "MONDAY"

-- | Tuesday
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Tuesday :: GoogleFirestoreAdminV1WeeklyRecurrence_Day
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Tuesday = GoogleFirestoreAdminV1WeeklyRecurrence_Day "TUESDAY"

-- | Wednesday
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Wednesday :: GoogleFirestoreAdminV1WeeklyRecurrence_Day
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Wednesday = GoogleFirestoreAdminV1WeeklyRecurrence_Day "WEDNESDAY"

-- | Thursday
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Thursday :: GoogleFirestoreAdminV1WeeklyRecurrence_Day
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Thursday = GoogleFirestoreAdminV1WeeklyRecurrence_Day "THURSDAY"

-- | Friday
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Friday :: GoogleFirestoreAdminV1WeeklyRecurrence_Day
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Friday = GoogleFirestoreAdminV1WeeklyRecurrence_Day "FRIDAY"

-- | Saturday
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Saturday :: GoogleFirestoreAdminV1WeeklyRecurrence_Day
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Saturday = GoogleFirestoreAdminV1WeeklyRecurrence_Day "SATURDAY"

-- | Sunday
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Sunday :: GoogleFirestoreAdminV1WeeklyRecurrence_Day
pattern GoogleFirestoreAdminV1WeeklyRecurrence_Day_Sunday = GoogleFirestoreAdminV1WeeklyRecurrence_Day "SUNDAY"

{-# COMPLETE
  GoogleFirestoreAdminV1WeeklyRecurrence_Day_DAYOFWEEKUNSPECIFIED,
  GoogleFirestoreAdminV1WeeklyRecurrence_Day_Monday,
  GoogleFirestoreAdminV1WeeklyRecurrence_Day_Tuesday,
  GoogleFirestoreAdminV1WeeklyRecurrence_Day_Wednesday,
  GoogleFirestoreAdminV1WeeklyRecurrence_Day_Thursday,
  GoogleFirestoreAdminV1WeeklyRecurrence_Day_Friday,
  GoogleFirestoreAdminV1WeeklyRecurrence_Day_Saturday,
  GoogleFirestoreAdminV1WeeklyRecurrence_Day_Sunday,
  GoogleFirestoreAdminV1WeeklyRecurrence_Day
  #-}

-- | The direction to order by. Defaults to @ASCENDING@.
newtype Order_Direction = Order_Direction {fromOrder_Direction :: Core.Text}
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
pattern Order_Direction_DIRECTIONUNSPECIFIED :: Order_Direction
pattern Order_Direction_DIRECTIONUNSPECIFIED = Order_Direction "DIRECTION_UNSPECIFIED"

-- | Ascending.
pattern Order_Direction_Ascending :: Order_Direction
pattern Order_Direction_Ascending = Order_Direction "ASCENDING"

-- | Descending.
pattern Order_Direction_Descending :: Order_Direction
pattern Order_Direction_Descending = Order_Direction "DESCENDING"

{-# COMPLETE
  Order_Direction_DIRECTIONUNSPECIFIED,
  Order_Direction_Ascending,
  Order_Direction_Descending,
  Order_Direction
  #-}

-- | The type of change that occurred.
newtype TargetChange_TargetChangeType = TargetChange_TargetChangeType {fromTargetChange_TargetChangeType :: Core.Text}
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

-- | No change has occurred. Used only to send an updated @resume_token@.
pattern TargetChange_TargetChangeType_NOCHANGE :: TargetChange_TargetChangeType
pattern TargetChange_TargetChangeType_NOCHANGE = TargetChange_TargetChangeType "NO_CHANGE"

-- | The targets have been added.
pattern TargetChange_TargetChangeType_Add :: TargetChange_TargetChangeType
pattern TargetChange_TargetChangeType_Add = TargetChange_TargetChangeType "ADD"

-- | The targets have been removed.
pattern TargetChange_TargetChangeType_Remove :: TargetChange_TargetChangeType
pattern TargetChange_TargetChangeType_Remove = TargetChange_TargetChangeType "REMOVE"

-- | The targets reflect all changes committed before the targets were added to the stream. This will be sent after or with a @read_time@ that is greater than or equal to the time at which the targets were added. Listeners can wait for this change if read-after-write semantics are desired.
pattern TargetChange_TargetChangeType_Current :: TargetChange_TargetChangeType
pattern TargetChange_TargetChangeType_Current = TargetChange_TargetChangeType "CURRENT"

-- | The targets have been reset, and a new initial state for the targets will be returned in subsequent changes. After the initial state is complete, @CURRENT@ will be returned even if the target was previously indicated to be @CURRENT@.
pattern TargetChange_TargetChangeType_Reset :: TargetChange_TargetChangeType
pattern TargetChange_TargetChangeType_Reset = TargetChange_TargetChangeType "RESET"

{-# COMPLETE
  TargetChange_TargetChangeType_NOCHANGE,
  TargetChange_TargetChangeType_Add,
  TargetChange_TargetChangeType_Remove,
  TargetChange_TargetChangeType_Current,
  TargetChange_TargetChangeType_Reset,
  TargetChange_TargetChangeType
  #-}

-- | The unary operator to apply.
newtype UnaryFilter_Op = UnaryFilter_Op {fromUnaryFilter_Op :: Core.Text}
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
pattern UnaryFilter_Op_OPERATORUNSPECIFIED :: UnaryFilter_Op
pattern UnaryFilter_Op_OPERATORUNSPECIFIED = UnaryFilter_Op "OPERATOR_UNSPECIFIED"

-- | The given @field@ is equal to @NaN@.
pattern UnaryFilter_Op_ISNAN :: UnaryFilter_Op
pattern UnaryFilter_Op_ISNAN = UnaryFilter_Op "IS_NAN"

-- | The given @field@ is equal to @NULL@.
pattern UnaryFilter_Op_ISNULL :: UnaryFilter_Op
pattern UnaryFilter_Op_ISNULL = UnaryFilter_Op "IS_NULL"

-- | The given @field@ is not equal to @NaN@. Requires: * No other @NOT_EQUAL@, @NOT_IN@, @IS_NOT_NULL@, or @IS_NOT_NAN@. * That @field@ comes first in the @order_by@.
pattern UnaryFilter_Op_ISNOTNAN :: UnaryFilter_Op
pattern UnaryFilter_Op_ISNOTNAN = UnaryFilter_Op "IS_NOT_NAN"

-- | The given @field@ is not equal to @NULL@. Requires: * A single @NOT_EQUAL@, @NOT_IN@, @IS_NOT_NULL@, or @IS_NOT_NAN@. * That @field@ comes first in the @order_by@.
pattern UnaryFilter_Op_ISNOTNULL :: UnaryFilter_Op
pattern UnaryFilter_Op_ISNOTNULL = UnaryFilter_Op "IS_NOT_NULL"

{-# COMPLETE
  UnaryFilter_Op_OPERATORUNSPECIFIED,
  UnaryFilter_Op_ISNAN,
  UnaryFilter_Op_ISNULL,
  UnaryFilter_Op_ISNOTNAN,
  UnaryFilter_Op_ISNOTNULL,
  UnaryFilter_Op
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
