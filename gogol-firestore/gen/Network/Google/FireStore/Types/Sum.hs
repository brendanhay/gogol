{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FireStore.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FireStore.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Indicates that this field supports ordering by the specified order or
-- comparing using =, \<, \<=, >, >=.
data GoogleFirestoreAdminV1IndexFieldOrder
    = OrderUnspecified
      -- ^ @ORDER_UNSPECIFIED@
      -- The ordering is unspecified. Not a valid option.
    | Ascending
      -- ^ @ASCENDING@
      -- The field is ordered by ascending field value.
    | Descending
      -- ^ @DESCENDING@
      -- The field is ordered by descending field value.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleFirestoreAdminV1IndexFieldOrder

instance FromHttpApiData GoogleFirestoreAdminV1IndexFieldOrder where
    parseQueryParam = \case
        "ORDER_UNSPECIFIED" -> Right OrderUnspecified
        "ASCENDING" -> Right Ascending
        "DESCENDING" -> Right Descending
        x -> Left ("Unable to parse GoogleFirestoreAdminV1IndexFieldOrder from: " <> x)

instance ToHttpApiData GoogleFirestoreAdminV1IndexFieldOrder where
    toQueryParam = \case
        OrderUnspecified -> "ORDER_UNSPECIFIED"
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON GoogleFirestoreAdminV1IndexFieldOrder where
    parseJSON = parseJSONText "GoogleFirestoreAdminV1IndexFieldOrder"

instance ToJSON GoogleFirestoreAdminV1IndexFieldOrder where
    toJSON = toJSONText

-- | Specifies how the index is changing.
data GoogleFirestoreAdminV1IndexConfigDeltaChangeType
    = ChangeTypeUnspecified
      -- ^ @CHANGE_TYPE_UNSPECIFIED@
      -- The type of change is not specified or known.
    | Add
      -- ^ @ADD@
      -- The single field index is being added.
    | Remove
      -- ^ @REMOVE@
      -- The single field index is being removed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleFirestoreAdminV1IndexConfigDeltaChangeType

instance FromHttpApiData GoogleFirestoreAdminV1IndexConfigDeltaChangeType where
    parseQueryParam = \case
        "CHANGE_TYPE_UNSPECIFIED" -> Right ChangeTypeUnspecified
        "ADD" -> Right Add
        "REMOVE" -> Right Remove
        x -> Left ("Unable to parse GoogleFirestoreAdminV1IndexConfigDeltaChangeType from: " <> x)

instance ToHttpApiData GoogleFirestoreAdminV1IndexConfigDeltaChangeType where
    toQueryParam = \case
        ChangeTypeUnspecified -> "CHANGE_TYPE_UNSPECIFIED"
        Add -> "ADD"
        Remove -> "REMOVE"

instance FromJSON GoogleFirestoreAdminV1IndexConfigDeltaChangeType where
    parseJSON = parseJSONText "GoogleFirestoreAdminV1IndexConfigDeltaChangeType"

instance ToJSON GoogleFirestoreAdminV1IndexConfigDeltaChangeType where
    toJSON = toJSONText

-- | Output only. The serving state of the index.
data GoogleFirestoreAdminV1IndexState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The state is unspecified.
    | Creating
      -- ^ @CREATING@
      -- The index is being created. There is an active long-running operation
      -- for the index. The index is updated when writing a document. Some index
      -- data may exist.
    | Ready
      -- ^ @READY@
      -- The index is ready to be used. The index is updated when writing a
      -- document. The index is fully populated from all stored documents it
      -- applies to.
    | NeedsRepair
      -- ^ @NEEDS_REPAIR@
      -- The index was being created, but something went wrong. There is no
      -- active long-running operation for the index, and the most recently
      -- finished long-running operation failed. The index is not updated when
      -- writing a document. Some index data may exist. Use the
      -- google.longrunning.Operations API to determine why the operation that
      -- last attempted to create this index failed, then re-create the index.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleFirestoreAdminV1IndexState

instance FromHttpApiData GoogleFirestoreAdminV1IndexState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "READY" -> Right Ready
        "NEEDS_REPAIR" -> Right NeedsRepair
        x -> Left ("Unable to parse GoogleFirestoreAdminV1IndexState from: " <> x)

instance ToHttpApiData GoogleFirestoreAdminV1IndexState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Ready -> "READY"
        NeedsRepair -> "NEEDS_REPAIR"

instance FromJSON GoogleFirestoreAdminV1IndexState where
    parseJSON = parseJSONText "GoogleFirestoreAdminV1IndexState"

instance ToJSON GoogleFirestoreAdminV1IndexState where
    toJSON = toJSONText

-- | The operator for combining multiple filters.
data CompositeFilterOp
    = OperatorUnspecified
      -- ^ @OPERATOR_UNSPECIFIED@
      -- Unspecified. This value must not be used.
    | And
      -- ^ @AND@
      -- The results are required to satisfy each of the combined filters.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompositeFilterOp

instance FromHttpApiData CompositeFilterOp where
    parseQueryParam = \case
        "OPERATOR_UNSPECIFIED" -> Right OperatorUnspecified
        "AND" -> Right And
        x -> Left ("Unable to parse CompositeFilterOp from: " <> x)

instance ToHttpApiData CompositeFilterOp where
    toQueryParam = \case
        OperatorUnspecified -> "OPERATOR_UNSPECIFIED"
        And -> "AND"

instance FromJSON CompositeFilterOp where
    parseJSON = parseJSONText "CompositeFilterOp"

instance ToJSON CompositeFilterOp where
    toJSON = toJSONText

-- | Indexes with a collection query scope specified allow queries against a
-- collection that is the child of a specific document, specified at query
-- time, and that has the same collection id. Indexes with a collection
-- group query scope specified allow queries against all collections
-- descended from a specific document, specified at query time, and that
-- have the same collection id as this index.
data GoogleFirestoreAdminV1IndexQueryScope
    = QueryScopeUnspecified
      -- ^ @QUERY_SCOPE_UNSPECIFIED@
      -- The query scope is unspecified. Not a valid option.
    | Collection
      -- ^ @COLLECTION@
      -- Indexes with a collection query scope specified allow queries against a
      -- collection that is the child of a specific document, specified at query
      -- time, and that has the collection id specified by the index.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleFirestoreAdminV1IndexQueryScope

instance FromHttpApiData GoogleFirestoreAdminV1IndexQueryScope where
    parseQueryParam = \case
        "QUERY_SCOPE_UNSPECIFIED" -> Right QueryScopeUnspecified
        "COLLECTION" -> Right Collection
        x -> Left ("Unable to parse GoogleFirestoreAdminV1IndexQueryScope from: " <> x)

instance ToHttpApiData GoogleFirestoreAdminV1IndexQueryScope where
    toQueryParam = \case
        QueryScopeUnspecified -> "QUERY_SCOPE_UNSPECIFIED"
        Collection -> "COLLECTION"

instance FromJSON GoogleFirestoreAdminV1IndexQueryScope where
    parseJSON = parseJSONText "GoogleFirestoreAdminV1IndexQueryScope"

instance ToJSON GoogleFirestoreAdminV1IndexQueryScope where
    toJSON = toJSONText

-- | The direction to order by. Defaults to \`ASCENDING\`.
data OrderDirection
    = ODDirectionUnspecified
      -- ^ @DIRECTION_UNSPECIFIED@
      -- Unspecified.
    | ODAscending
      -- ^ @ASCENDING@
      -- Ascending.
    | ODDescending
      -- ^ @DESCENDING@
      -- Descending.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderDirection

instance FromHttpApiData OrderDirection where
    parseQueryParam = \case
        "DIRECTION_UNSPECIFIED" -> Right ODDirectionUnspecified
        "ASCENDING" -> Right ODAscending
        "DESCENDING" -> Right ODDescending
        x -> Left ("Unable to parse OrderDirection from: " <> x)

instance ToHttpApiData OrderDirection where
    toQueryParam = \case
        ODDirectionUnspecified -> "DIRECTION_UNSPECIFIED"
        ODAscending -> "ASCENDING"
        ODDescending -> "DESCENDING"

instance FromJSON OrderDirection where
    parseJSON = parseJSONText "OrderDirection"

instance ToJSON OrderDirection where
    toJSON = toJSONText

-- | A null value.
data ValueNullValue
    = NullValue
      -- ^ @NULL_VALUE@
      -- Null value.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ValueNullValue

instance FromHttpApiData ValueNullValue where
    parseQueryParam = \case
        "NULL_VALUE" -> Right NullValue
        x -> Left ("Unable to parse ValueNullValue from: " <> x)

instance ToHttpApiData ValueNullValue where
    toQueryParam = \case
        NullValue -> "NULL_VALUE"

instance FromJSON ValueNullValue where
    parseJSON = parseJSONText "ValueNullValue"

instance ToJSON ValueNullValue where
    toJSON = toJSONText

-- | The unary operator to apply.
data UnaryFilterOp
    = UFOOperatorUnspecified
      -- ^ @OPERATOR_UNSPECIFIED@
      -- Unspecified. This value must not be used.
    | UFOIsNan
      -- ^ @IS_NAN@
      -- Test if a field is equal to NaN.
    | UFOIsNull
      -- ^ @IS_NULL@
      -- Test if an exprestion evaluates to Null.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UnaryFilterOp

instance FromHttpApiData UnaryFilterOp where
    parseQueryParam = \case
        "OPERATOR_UNSPECIFIED" -> Right UFOOperatorUnspecified
        "IS_NAN" -> Right UFOIsNan
        "IS_NULL" -> Right UFOIsNull
        x -> Left ("Unable to parse UnaryFilterOp from: " <> x)

instance ToHttpApiData UnaryFilterOp where
    toQueryParam = \case
        UFOOperatorUnspecified -> "OPERATOR_UNSPECIFIED"
        UFOIsNan -> "IS_NAN"
        UFOIsNull -> "IS_NULL"

instance FromJSON UnaryFilterOp where
    parseJSON = parseJSONText "UnaryFilterOp"

instance ToJSON UnaryFilterOp where
    toJSON = toJSONText

-- | Indicates that this field supports operations on \`array_value\`s.
data GoogleFirestoreAdminV1IndexFieldArrayConfig
    = ArrayConfigUnspecified
      -- ^ @ARRAY_CONFIG_UNSPECIFIED@
      -- The index does not support additional array queries.
    | Contains
      -- ^ @CONTAINS@
      -- The index supports array containment queries.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleFirestoreAdminV1IndexFieldArrayConfig

instance FromHttpApiData GoogleFirestoreAdminV1IndexFieldArrayConfig where
    parseQueryParam = \case
        "ARRAY_CONFIG_UNSPECIFIED" -> Right ArrayConfigUnspecified
        "CONTAINS" -> Right Contains
        x -> Left ("Unable to parse GoogleFirestoreAdminV1IndexFieldArrayConfig from: " <> x)

instance ToHttpApiData GoogleFirestoreAdminV1IndexFieldArrayConfig where
    toQueryParam = \case
        ArrayConfigUnspecified -> "ARRAY_CONFIG_UNSPECIFIED"
        Contains -> "CONTAINS"

instance FromJSON GoogleFirestoreAdminV1IndexFieldArrayConfig where
    parseJSON = parseJSONText "GoogleFirestoreAdminV1IndexFieldArrayConfig"

instance ToJSON GoogleFirestoreAdminV1IndexFieldArrayConfig where
    toJSON = toJSONText

-- | The state of the operation.
data GoogleFirestoreAdminV1IndexOperationMetadataState
    = OperationStateUnspecified
      -- ^ @OPERATION_STATE_UNSPECIFIED@
      -- Unspecified.
    | Initializing
      -- ^ @INITIALIZING@
      -- Request is being prepared for processing.
    | Processing
      -- ^ @PROCESSING@
      -- Request is actively being processed.
    | Cancelling
      -- ^ @CANCELLING@
      -- Request is in the process of being cancelled after user called
      -- google.longrunning.Operations.CancelOperation on the operation.
    | Finalizing
      -- ^ @FINALIZING@
      -- Request has been processed and is in its finalization stage.
    | Successful
      -- ^ @SUCCESSFUL@
      -- Request has completed successfully.
    | Failed
      -- ^ @FAILED@
      -- Request has finished being processed, but encountered an error.
    | Cancelled
      -- ^ @CANCELLED@
      -- Request has finished being cancelled after user called
      -- google.longrunning.Operations.CancelOperation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleFirestoreAdminV1IndexOperationMetadataState

instance FromHttpApiData GoogleFirestoreAdminV1IndexOperationMetadataState where
    parseQueryParam = \case
        "OPERATION_STATE_UNSPECIFIED" -> Right OperationStateUnspecified
        "INITIALIZING" -> Right Initializing
        "PROCESSING" -> Right Processing
        "CANCELLING" -> Right Cancelling
        "FINALIZING" -> Right Finalizing
        "SUCCESSFUL" -> Right Successful
        "FAILED" -> Right Failed
        "CANCELLED" -> Right Cancelled
        x -> Left ("Unable to parse GoogleFirestoreAdminV1IndexOperationMetadataState from: " <> x)

instance ToHttpApiData GoogleFirestoreAdminV1IndexOperationMetadataState where
    toQueryParam = \case
        OperationStateUnspecified -> "OPERATION_STATE_UNSPECIFIED"
        Initializing -> "INITIALIZING"
        Processing -> "PROCESSING"
        Cancelling -> "CANCELLING"
        Finalizing -> "FINALIZING"
        Successful -> "SUCCESSFUL"
        Failed -> "FAILED"
        Cancelled -> "CANCELLED"

instance FromJSON GoogleFirestoreAdminV1IndexOperationMetadataState where
    parseJSON = parseJSONText "GoogleFirestoreAdminV1IndexOperationMetadataState"

instance ToJSON GoogleFirestoreAdminV1IndexOperationMetadataState where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The operator to filter by.
data FieldFilterOp
    = FFOOperatorUnspecified
      -- ^ @OPERATOR_UNSPECIFIED@
      -- Unspecified. This value must not be used.
    | FFOLessThan
      -- ^ @LESS_THAN@
      -- Less than. Requires that the field come first in \`order_by\`.
    | FFOLessThanOrEqual
      -- ^ @LESS_THAN_OR_EQUAL@
      -- Less than or equal. Requires that the field come first in \`order_by\`.
    | FFOGreaterThan
      -- ^ @GREATER_THAN@
      -- Greater than. Requires that the field come first in \`order_by\`.
    | FFOGreaterThanOrEqual
      -- ^ @GREATER_THAN_OR_EQUAL@
      -- Greater than or equal. Requires that the field come first in
      -- \`order_by\`.
    | FFOEqual
      -- ^ @EQUAL@
      -- Equal.
    | FFOArrayContains
      -- ^ @ARRAY_CONTAINS@
      -- Contains. Requires that the field is an array.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FieldFilterOp

instance FromHttpApiData FieldFilterOp where
    parseQueryParam = \case
        "OPERATOR_UNSPECIFIED" -> Right FFOOperatorUnspecified
        "LESS_THAN" -> Right FFOLessThan
        "LESS_THAN_OR_EQUAL" -> Right FFOLessThanOrEqual
        "GREATER_THAN" -> Right FFOGreaterThan
        "GREATER_THAN_OR_EQUAL" -> Right FFOGreaterThanOrEqual
        "EQUAL" -> Right FFOEqual
        "ARRAY_CONTAINS" -> Right FFOArrayContains
        x -> Left ("Unable to parse FieldFilterOp from: " <> x)

instance ToHttpApiData FieldFilterOp where
    toQueryParam = \case
        FFOOperatorUnspecified -> "OPERATOR_UNSPECIFIED"
        FFOLessThan -> "LESS_THAN"
        FFOLessThanOrEqual -> "LESS_THAN_OR_EQUAL"
        FFOGreaterThan -> "GREATER_THAN"
        FFOGreaterThanOrEqual -> "GREATER_THAN_OR_EQUAL"
        FFOEqual -> "EQUAL"
        FFOArrayContains -> "ARRAY_CONTAINS"

instance FromJSON FieldFilterOp where
    parseJSON = parseJSONText "FieldFilterOp"

instance ToJSON FieldFilterOp where
    toJSON = toJSONText

-- | The type of change that occurred.
data TargetChangeTargetChangeType
    = TCTCTNoChange
      -- ^ @NO_CHANGE@
      -- No change has occurred. Used only to send an updated \`resume_token\`.
    | TCTCTAdd
      -- ^ @ADD@
      -- The targets have been added.
    | TCTCTRemove
      -- ^ @REMOVE@
      -- The targets have been removed.
    | TCTCTCurrent
      -- ^ @CURRENT@
      -- The targets reflect all changes committed before the targets were added
      -- to the stream. This will be sent after or with a \`read_time\` that is
      -- greater than or equal to the time at which the targets were added.
      -- Listeners can wait for this change if read-after-write semantics are
      -- desired.
    | TCTCTReset
      -- ^ @RESET@
      -- The targets have been reset, and a new initial state for the targets
      -- will be returned in subsequent changes. After the initial state is
      -- complete, \`CURRENT\` will be returned even if the target was previously
      -- indicated to be \`CURRENT\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetChangeTargetChangeType

instance FromHttpApiData TargetChangeTargetChangeType where
    parseQueryParam = \case
        "NO_CHANGE" -> Right TCTCTNoChange
        "ADD" -> Right TCTCTAdd
        "REMOVE" -> Right TCTCTRemove
        "CURRENT" -> Right TCTCTCurrent
        "RESET" -> Right TCTCTReset
        x -> Left ("Unable to parse TargetChangeTargetChangeType from: " <> x)

instance ToHttpApiData TargetChangeTargetChangeType where
    toQueryParam = \case
        TCTCTNoChange -> "NO_CHANGE"
        TCTCTAdd -> "ADD"
        TCTCTRemove -> "REMOVE"
        TCTCTCurrent -> "CURRENT"
        TCTCTReset -> "RESET"

instance FromJSON TargetChangeTargetChangeType where
    parseJSON = parseJSONText "TargetChangeTargetChangeType"

instance ToJSON TargetChangeTargetChangeType where
    toJSON = toJSONText

-- | The state of the import operation.
data GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState
    = GFAVIDMOSOperationStateUnspecified
      -- ^ @OPERATION_STATE_UNSPECIFIED@
      -- Unspecified.
    | GFAVIDMOSInitializing
      -- ^ @INITIALIZING@
      -- Request is being prepared for processing.
    | GFAVIDMOSProcessing
      -- ^ @PROCESSING@
      -- Request is actively being processed.
    | GFAVIDMOSCancelling
      -- ^ @CANCELLING@
      -- Request is in the process of being cancelled after user called
      -- google.longrunning.Operations.CancelOperation on the operation.
    | GFAVIDMOSFinalizing
      -- ^ @FINALIZING@
      -- Request has been processed and is in its finalization stage.
    | GFAVIDMOSSuccessful
      -- ^ @SUCCESSFUL@
      -- Request has completed successfully.
    | GFAVIDMOSFailed
      -- ^ @FAILED@
      -- Request has finished being processed, but encountered an error.
    | GFAVIDMOSCancelled
      -- ^ @CANCELLED@
      -- Request has finished being cancelled after user called
      -- google.longrunning.Operations.CancelOperation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState

instance FromHttpApiData GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState where
    parseQueryParam = \case
        "OPERATION_STATE_UNSPECIFIED" -> Right GFAVIDMOSOperationStateUnspecified
        "INITIALIZING" -> Right GFAVIDMOSInitializing
        "PROCESSING" -> Right GFAVIDMOSProcessing
        "CANCELLING" -> Right GFAVIDMOSCancelling
        "FINALIZING" -> Right GFAVIDMOSFinalizing
        "SUCCESSFUL" -> Right GFAVIDMOSSuccessful
        "FAILED" -> Right GFAVIDMOSFailed
        "CANCELLED" -> Right GFAVIDMOSCancelled
        x -> Left ("Unable to parse GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState from: " <> x)

instance ToHttpApiData GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState where
    toQueryParam = \case
        GFAVIDMOSOperationStateUnspecified -> "OPERATION_STATE_UNSPECIFIED"
        GFAVIDMOSInitializing -> "INITIALIZING"
        GFAVIDMOSProcessing -> "PROCESSING"
        GFAVIDMOSCancelling -> "CANCELLING"
        GFAVIDMOSFinalizing -> "FINALIZING"
        GFAVIDMOSSuccessful -> "SUCCESSFUL"
        GFAVIDMOSFailed -> "FAILED"
        GFAVIDMOSCancelled -> "CANCELLED"

instance FromJSON GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState where
    parseJSON = parseJSONText "GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState"

instance ToJSON GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState where
    toJSON = toJSONText

-- | The state of the operation.
data GoogleFirestoreAdminV1FieldOperationMetadataState
    = GFAVFOMSOperationStateUnspecified
      -- ^ @OPERATION_STATE_UNSPECIFIED@
      -- Unspecified.
    | GFAVFOMSInitializing
      -- ^ @INITIALIZING@
      -- Request is being prepared for processing.
    | GFAVFOMSProcessing
      -- ^ @PROCESSING@
      -- Request is actively being processed.
    | GFAVFOMSCancelling
      -- ^ @CANCELLING@
      -- Request is in the process of being cancelled after user called
      -- google.longrunning.Operations.CancelOperation on the operation.
    | GFAVFOMSFinalizing
      -- ^ @FINALIZING@
      -- Request has been processed and is in its finalization stage.
    | GFAVFOMSSuccessful
      -- ^ @SUCCESSFUL@
      -- Request has completed successfully.
    | GFAVFOMSFailed
      -- ^ @FAILED@
      -- Request has finished being processed, but encountered an error.
    | GFAVFOMSCancelled
      -- ^ @CANCELLED@
      -- Request has finished being cancelled after user called
      -- google.longrunning.Operations.CancelOperation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleFirestoreAdminV1FieldOperationMetadataState

instance FromHttpApiData GoogleFirestoreAdminV1FieldOperationMetadataState where
    parseQueryParam = \case
        "OPERATION_STATE_UNSPECIFIED" -> Right GFAVFOMSOperationStateUnspecified
        "INITIALIZING" -> Right GFAVFOMSInitializing
        "PROCESSING" -> Right GFAVFOMSProcessing
        "CANCELLING" -> Right GFAVFOMSCancelling
        "FINALIZING" -> Right GFAVFOMSFinalizing
        "SUCCESSFUL" -> Right GFAVFOMSSuccessful
        "FAILED" -> Right GFAVFOMSFailed
        "CANCELLED" -> Right GFAVFOMSCancelled
        x -> Left ("Unable to parse GoogleFirestoreAdminV1FieldOperationMetadataState from: " <> x)

instance ToHttpApiData GoogleFirestoreAdminV1FieldOperationMetadataState where
    toQueryParam = \case
        GFAVFOMSOperationStateUnspecified -> "OPERATION_STATE_UNSPECIFIED"
        GFAVFOMSInitializing -> "INITIALIZING"
        GFAVFOMSProcessing -> "PROCESSING"
        GFAVFOMSCancelling -> "CANCELLING"
        GFAVFOMSFinalizing -> "FINALIZING"
        GFAVFOMSSuccessful -> "SUCCESSFUL"
        GFAVFOMSFailed -> "FAILED"
        GFAVFOMSCancelled -> "CANCELLED"

instance FromJSON GoogleFirestoreAdminV1FieldOperationMetadataState where
    parseJSON = parseJSONText "GoogleFirestoreAdminV1FieldOperationMetadataState"

instance ToJSON GoogleFirestoreAdminV1FieldOperationMetadataState where
    toJSON = toJSONText

-- | Sets the field to the given server value.
data FieldTransformSetToServerValue
    = ServerValueUnspecified
      -- ^ @SERVER_VALUE_UNSPECIFIED@
      -- Unspecified. This value must not be used.
    | RequestTime
      -- ^ @REQUEST_TIME@
      -- The time at which the server processed the request, with millisecond
      -- precision.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FieldTransformSetToServerValue

instance FromHttpApiData FieldTransformSetToServerValue where
    parseQueryParam = \case
        "SERVER_VALUE_UNSPECIFIED" -> Right ServerValueUnspecified
        "REQUEST_TIME" -> Right RequestTime
        x -> Left ("Unable to parse FieldTransformSetToServerValue from: " <> x)

instance ToHttpApiData FieldTransformSetToServerValue where
    toQueryParam = \case
        ServerValueUnspecified -> "SERVER_VALUE_UNSPECIFIED"
        RequestTime -> "REQUEST_TIME"

instance FromJSON FieldTransformSetToServerValue where
    parseJSON = parseJSONText "FieldTransformSetToServerValue"

instance ToJSON FieldTransformSetToServerValue where
    toJSON = toJSONText

-- | The state of the export operation.
data GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState
    = GFAVEDMOSOperationStateUnspecified
      -- ^ @OPERATION_STATE_UNSPECIFIED@
      -- Unspecified.
    | GFAVEDMOSInitializing
      -- ^ @INITIALIZING@
      -- Request is being prepared for processing.
    | GFAVEDMOSProcessing
      -- ^ @PROCESSING@
      -- Request is actively being processed.
    | GFAVEDMOSCancelling
      -- ^ @CANCELLING@
      -- Request is in the process of being cancelled after user called
      -- google.longrunning.Operations.CancelOperation on the operation.
    | GFAVEDMOSFinalizing
      -- ^ @FINALIZING@
      -- Request has been processed and is in its finalization stage.
    | GFAVEDMOSSuccessful
      -- ^ @SUCCESSFUL@
      -- Request has completed successfully.
    | GFAVEDMOSFailed
      -- ^ @FAILED@
      -- Request has finished being processed, but encountered an error.
    | GFAVEDMOSCancelled
      -- ^ @CANCELLED@
      -- Request has finished being cancelled after user called
      -- google.longrunning.Operations.CancelOperation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState

instance FromHttpApiData GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState where
    parseQueryParam = \case
        "OPERATION_STATE_UNSPECIFIED" -> Right GFAVEDMOSOperationStateUnspecified
        "INITIALIZING" -> Right GFAVEDMOSInitializing
        "PROCESSING" -> Right GFAVEDMOSProcessing
        "CANCELLING" -> Right GFAVEDMOSCancelling
        "FINALIZING" -> Right GFAVEDMOSFinalizing
        "SUCCESSFUL" -> Right GFAVEDMOSSuccessful
        "FAILED" -> Right GFAVEDMOSFailed
        "CANCELLED" -> Right GFAVEDMOSCancelled
        x -> Left ("Unable to parse GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState from: " <> x)

instance ToHttpApiData GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState where
    toQueryParam = \case
        GFAVEDMOSOperationStateUnspecified -> "OPERATION_STATE_UNSPECIFIED"
        GFAVEDMOSInitializing -> "INITIALIZING"
        GFAVEDMOSProcessing -> "PROCESSING"
        GFAVEDMOSCancelling -> "CANCELLING"
        GFAVEDMOSFinalizing -> "FINALIZING"
        GFAVEDMOSSuccessful -> "SUCCESSFUL"
        GFAVEDMOSFailed -> "FAILED"
        GFAVEDMOSCancelled -> "CANCELLED"

instance FromJSON GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState where
    parseJSON = parseJSONText "GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState"

instance ToJSON GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState where
    toJSON = toJSONText
