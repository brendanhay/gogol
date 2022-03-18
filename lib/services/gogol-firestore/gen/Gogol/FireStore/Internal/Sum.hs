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
-- Module      : Gogol.FireStore.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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

    -- * GoogleFirestoreAdminV1Index_QueryScope
    GoogleFirestoreAdminV1Index_QueryScope
      ( GoogleFirestoreAdminV1Index_QueryScope_QUERYSCOPEUNSPECIFIED,
        GoogleFirestoreAdminV1Index_QueryScope_Collection,
        GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONGROUP,
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

import qualified Gogol.Prelude as Core

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

-- | The results are required to satisfy each of the combined filters.
pattern CompositeFilter_Op_And :: CompositeFilter_Op
pattern CompositeFilter_Op_And = CompositeFilter_Op "AND"

{-# COMPLETE
  CompositeFilter_Op_OPERATORUNSPECIFIED,
  CompositeFilter_Op_And,
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

-- | The given @field@ is equal to at least one value in the given array. Requires: * That @value@ is a non-empty @ArrayValue@ with at most 10 values. * No other @IN@ or @ARRAY_CONTAINS_ANY@ or @NOT_IN@.
pattern FieldFilter_Op_IN :: FieldFilter_Op
pattern FieldFilter_Op_IN = FieldFilter_Op "IN"

-- | The given @field@ is an array that contains any of the values in the given array. Requires: * That @value@ is a non-empty @ArrayValue@ with at most 10 values. * No other @IN@ or @ARRAY_CONTAINS_ANY@ or @NOT_IN@.
pattern FieldFilter_Op_ARRAYCONTAINSANY :: FieldFilter_Op
pattern FieldFilter_Op_ARRAYCONTAINSANY = FieldFilter_Op "ARRAY_CONTAINS_ANY"

-- | The value of the @field@ is not in the given array. Requires: * That @value@ is a non-empty @ArrayValue@ with at most 10 values. * No other @IN@, @ARRAY_CONTAINS_ANY@, @NOT_IN@, @NOT_EQUAL@, @IS_NOT_NULL@, or @IS_NOT_NAN@. * That @field@ comes first in the @order_by@.
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

-- | Appengine has no affect on the ability of this database to serve requests.
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

-- | Use optimistic concurrency control by default. This setting is available for Cloud Firestore customers.
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_Optimistic :: GoogleFirestoreAdminV1Database_ConcurrencyMode
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_Optimistic = GoogleFirestoreAdminV1Database_ConcurrencyMode "OPTIMISTIC"

-- | Use pessimistic concurrency control by default. This setting is available for Cloud Firestore customers. This is the default setting for Cloud Firestore.
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_Pessimistic :: GoogleFirestoreAdminV1Database_ConcurrencyMode
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_Pessimistic = GoogleFirestoreAdminV1Database_ConcurrencyMode "PESSIMISTIC"

-- | Use optimistic concurrency control with entity groups by default. This is the only available setting for Cloud Datastore customers. This is the default setting for Cloud Datastore.
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS :: GoogleFirestoreAdminV1Database_ConcurrencyMode
pattern GoogleFirestoreAdminV1Database_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS = GoogleFirestoreAdminV1Database_ConcurrencyMode "OPTIMISTIC_WITH_ENTITY_GROUPS"

{-# COMPLETE
  GoogleFirestoreAdminV1Database_ConcurrencyMode_CONCURRENCYMODEUNSPECIFIED,
  GoogleFirestoreAdminV1Database_ConcurrencyMode_Optimistic,
  GoogleFirestoreAdminV1Database_ConcurrencyMode_Pessimistic,
  GoogleFirestoreAdminV1Database_ConcurrencyMode_OPTIMISTICWITHENTITYGROUPS,
  GoogleFirestoreAdminV1Database_ConcurrencyMode
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

-- | The default value. This value is used if the database type is omitted.
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

-- | Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
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

-- | Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the collection id specified by the index.
pattern GoogleFirestoreAdminV1Index_QueryScope_Collection :: GoogleFirestoreAdminV1Index_QueryScope
pattern GoogleFirestoreAdminV1Index_QueryScope_Collection = GoogleFirestoreAdminV1Index_QueryScope "COLLECTION"

-- | Indexes with a collection group query scope specified allow queries against all collections that has the collection id specified by the index.
pattern GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONGROUP :: GoogleFirestoreAdminV1Index_QueryScope
pattern GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONGROUP = GoogleFirestoreAdminV1Index_QueryScope "COLLECTION_GROUP"

{-# COMPLETE
  GoogleFirestoreAdminV1Index_QueryScope_QUERYSCOPEUNSPECIFIED,
  GoogleFirestoreAdminV1Index_QueryScope_Collection,
  GoogleFirestoreAdminV1Index_QueryScope_COLLECTIONGROUP,
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
