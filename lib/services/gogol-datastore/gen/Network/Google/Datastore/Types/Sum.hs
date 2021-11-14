{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Datastore.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Datastore.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The direction to order by. Defaults to \`ASCENDING\`.
data PropertyOrderDirection
    = DirectionUnspecified
      -- ^ @DIRECTION_UNSPECIFIED@
      -- Unspecified. This value must not be used.
    | Ascending
      -- ^ @ASCENDING@
      -- Ascending.
    | Descending
      -- ^ @DESCENDING@
      -- Descending.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PropertyOrderDirection

instance FromHttpApiData PropertyOrderDirection where
    parseQueryParam = \case
        "DIRECTION_UNSPECIFIED" -> Right DirectionUnspecified
        "ASCENDING" -> Right Ascending
        "DESCENDING" -> Right Descending
        x -> Left ("Unable to parse PropertyOrderDirection from: " <> x)

instance ToHttpApiData PropertyOrderDirection where
    toQueryParam = \case
        DirectionUnspecified -> "DIRECTION_UNSPECIFIED"
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON PropertyOrderDirection where
    parseJSON = parseJSONText "PropertyOrderDirection"

instance ToJSON PropertyOrderDirection where
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

-- | The result type for every entity in \`entity_results\`.
data QueryResultBatchEntityResultType
    = QRBERTResultTypeUnspecified
      -- ^ @RESULT_TYPE_UNSPECIFIED@
      -- Unspecified. This value is never used.
    | QRBERTFull
      -- ^ @FULL@
      -- The key and properties.
    | QRBERTProjection
      -- ^ @PROJECTION@
      -- A projected subset of properties. The entity may have no key.
    | QRBERTKeyOnly
      -- ^ @KEY_ONLY@
      -- Only the key.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryResultBatchEntityResultType

instance FromHttpApiData QueryResultBatchEntityResultType where
    parseQueryParam = \case
        "RESULT_TYPE_UNSPECIFIED" -> Right QRBERTResultTypeUnspecified
        "FULL" -> Right QRBERTFull
        "PROJECTION" -> Right QRBERTProjection
        "KEY_ONLY" -> Right QRBERTKeyOnly
        x -> Left ("Unable to parse QueryResultBatchEntityResultType from: " <> x)

instance ToHttpApiData QueryResultBatchEntityResultType where
    toQueryParam = \case
        QRBERTResultTypeUnspecified -> "RESULT_TYPE_UNSPECIFIED"
        QRBERTFull -> "FULL"
        QRBERTProjection -> "PROJECTION"
        QRBERTKeyOnly -> "KEY_ONLY"

instance FromJSON QueryResultBatchEntityResultType where
    parseJSON = parseJSONText "QueryResultBatchEntityResultType"

instance ToJSON QueryResultBatchEntityResultType where
    toJSON = toJSONText

-- | The type of the operation. Can be used as a filter in
-- ListOperationsRequest.
data GoogleDatastoreAdminV1beta1CommonMetadataOperationType
    = OperationTypeUnspecified
      -- ^ @OPERATION_TYPE_UNSPECIFIED@
      -- Unspecified.
    | ExportEntities
      -- ^ @EXPORT_ENTITIES@
      -- ExportEntities.
    | ImportEntities
      -- ^ @IMPORT_ENTITIES@
      -- ImportEntities.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDatastoreAdminV1beta1CommonMetadataOperationType

instance FromHttpApiData GoogleDatastoreAdminV1beta1CommonMetadataOperationType where
    parseQueryParam = \case
        "OPERATION_TYPE_UNSPECIFIED" -> Right OperationTypeUnspecified
        "EXPORT_ENTITIES" -> Right ExportEntities
        "IMPORT_ENTITIES" -> Right ImportEntities
        x -> Left ("Unable to parse GoogleDatastoreAdminV1beta1CommonMetadataOperationType from: " <> x)

instance ToHttpApiData GoogleDatastoreAdminV1beta1CommonMetadataOperationType where
    toQueryParam = \case
        OperationTypeUnspecified -> "OPERATION_TYPE_UNSPECIFIED"
        ExportEntities -> "EXPORT_ENTITIES"
        ImportEntities -> "IMPORT_ENTITIES"

instance FromJSON GoogleDatastoreAdminV1beta1CommonMetadataOperationType where
    parseJSON = parseJSONText "GoogleDatastoreAdminV1beta1CommonMetadataOperationType"

instance ToJSON GoogleDatastoreAdminV1beta1CommonMetadataOperationType where
    toJSON = toJSONText

-- | The state of the query after the current batch.
data QueryResultBatchMoreResults
    = MoreResultsTypeUnspecified
      -- ^ @MORE_RESULTS_TYPE_UNSPECIFIED@
      -- Unspecified. This value is never used.
    | NotFinished
      -- ^ @NOT_FINISHED@
      -- There may be additional batches to fetch from this query.
    | MoreResultsAfterLimit
      -- ^ @MORE_RESULTS_AFTER_LIMIT@
      -- The query is finished, but there may be more results after the limit.
    | MoreResultsAfterCursor
      -- ^ @MORE_RESULTS_AFTER_CURSOR@
      -- The query is finished, but there may be more results after the end
      -- cursor.
    | NoMoreResults
      -- ^ @NO_MORE_RESULTS@
      -- The query is finished, and there are no more results.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryResultBatchMoreResults

instance FromHttpApiData QueryResultBatchMoreResults where
    parseQueryParam = \case
        "MORE_RESULTS_TYPE_UNSPECIFIED" -> Right MoreResultsTypeUnspecified
        "NOT_FINISHED" -> Right NotFinished
        "MORE_RESULTS_AFTER_LIMIT" -> Right MoreResultsAfterLimit
        "MORE_RESULTS_AFTER_CURSOR" -> Right MoreResultsAfterCursor
        "NO_MORE_RESULTS" -> Right NoMoreResults
        x -> Left ("Unable to parse QueryResultBatchMoreResults from: " <> x)

instance ToHttpApiData QueryResultBatchMoreResults where
    toQueryParam = \case
        MoreResultsTypeUnspecified -> "MORE_RESULTS_TYPE_UNSPECIFIED"
        NotFinished -> "NOT_FINISHED"
        MoreResultsAfterLimit -> "MORE_RESULTS_AFTER_LIMIT"
        MoreResultsAfterCursor -> "MORE_RESULTS_AFTER_CURSOR"
        NoMoreResults -> "NO_MORE_RESULTS"

instance FromJSON QueryResultBatchMoreResults where
    parseJSON = parseJSONText "QueryResultBatchMoreResults"

instance ToJSON QueryResultBatchMoreResults where
    toJSON = toJSONText

-- | The type of the operation. Can be used as a filter in
-- ListOperationsRequest.
data GoogleDatastoreAdminV1CommonMetadataOperationType
    = GDAVCMOTOperationTypeUnspecified
      -- ^ @OPERATION_TYPE_UNSPECIFIED@
      -- Unspecified.
    | GDAVCMOTExportEntities
      -- ^ @EXPORT_ENTITIES@
      -- ExportEntities.
    | GDAVCMOTImportEntities
      -- ^ @IMPORT_ENTITIES@
      -- ImportEntities.
    | GDAVCMOTCreateIndex
      -- ^ @CREATE_INDEX@
      -- CreateIndex.
    | GDAVCMOTDeleteIndex
      -- ^ @DELETE_INDEX@
      -- DeleteIndex.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDatastoreAdminV1CommonMetadataOperationType

instance FromHttpApiData GoogleDatastoreAdminV1CommonMetadataOperationType where
    parseQueryParam = \case
        "OPERATION_TYPE_UNSPECIFIED" -> Right GDAVCMOTOperationTypeUnspecified
        "EXPORT_ENTITIES" -> Right GDAVCMOTExportEntities
        "IMPORT_ENTITIES" -> Right GDAVCMOTImportEntities
        "CREATE_INDEX" -> Right GDAVCMOTCreateIndex
        "DELETE_INDEX" -> Right GDAVCMOTDeleteIndex
        x -> Left ("Unable to parse GoogleDatastoreAdminV1CommonMetadataOperationType from: " <> x)

instance ToHttpApiData GoogleDatastoreAdminV1CommonMetadataOperationType where
    toQueryParam = \case
        GDAVCMOTOperationTypeUnspecified -> "OPERATION_TYPE_UNSPECIFIED"
        GDAVCMOTExportEntities -> "EXPORT_ENTITIES"
        GDAVCMOTImportEntities -> "IMPORT_ENTITIES"
        GDAVCMOTCreateIndex -> "CREATE_INDEX"
        GDAVCMOTDeleteIndex -> "DELETE_INDEX"

instance FromJSON GoogleDatastoreAdminV1CommonMetadataOperationType where
    parseJSON = parseJSONText "GoogleDatastoreAdminV1CommonMetadataOperationType"

instance ToJSON GoogleDatastoreAdminV1CommonMetadataOperationType where
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

-- | Required. The indexed property\'s direction. Must not be
-- DIRECTION_UNSPECIFIED.
data GoogleDatastoreAdminV1IndexedPropertyDirection
    = GDAVIPDDirectionUnspecified
      -- ^ @DIRECTION_UNSPECIFIED@
      -- The direction is unspecified.
    | GDAVIPDAscending
      -- ^ @ASCENDING@
      -- The property\'s values are indexed so as to support sequencing in
      -- ascending order and also query by \<, >, \<=, >=, and =.
    | GDAVIPDDescending
      -- ^ @DESCENDING@
      -- The property\'s values are indexed so as to support sequencing in
      -- descending order and also query by \<, >, \<=, >=, and =.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDatastoreAdminV1IndexedPropertyDirection

instance FromHttpApiData GoogleDatastoreAdminV1IndexedPropertyDirection where
    parseQueryParam = \case
        "DIRECTION_UNSPECIFIED" -> Right GDAVIPDDirectionUnspecified
        "ASCENDING" -> Right GDAVIPDAscending
        "DESCENDING" -> Right GDAVIPDDescending
        x -> Left ("Unable to parse GoogleDatastoreAdminV1IndexedPropertyDirection from: " <> x)

instance ToHttpApiData GoogleDatastoreAdminV1IndexedPropertyDirection where
    toQueryParam = \case
        GDAVIPDDirectionUnspecified -> "DIRECTION_UNSPECIFIED"
        GDAVIPDAscending -> "ASCENDING"
        GDAVIPDDescending -> "DESCENDING"

instance FromJSON GoogleDatastoreAdminV1IndexedPropertyDirection where
    parseJSON = parseJSONText "GoogleDatastoreAdminV1IndexedPropertyDirection"

instance ToJSON GoogleDatastoreAdminV1IndexedPropertyDirection where
    toJSON = toJSONText

-- | Required. The index\'s ancestor mode. Must not be
-- ANCESTOR_MODE_UNSPECIFIED.
data GoogleDatastoreAdminV1IndexAncestor
    = AncestorModeUnspecified
      -- ^ @ANCESTOR_MODE_UNSPECIFIED@
      -- The ancestor mode is unspecified.
    | None
      -- ^ @NONE@
      -- Do not include the entity\'s ancestors in the index.
    | AllAncestors
      -- ^ @ALL_ANCESTORS@
      -- Include all the entity\'s ancestors in the index.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDatastoreAdminV1IndexAncestor

instance FromHttpApiData GoogleDatastoreAdminV1IndexAncestor where
    parseQueryParam = \case
        "ANCESTOR_MODE_UNSPECIFIED" -> Right AncestorModeUnspecified
        "NONE" -> Right None
        "ALL_ANCESTORS" -> Right AllAncestors
        x -> Left ("Unable to parse GoogleDatastoreAdminV1IndexAncestor from: " <> x)

instance ToHttpApiData GoogleDatastoreAdminV1IndexAncestor where
    toQueryParam = \case
        AncestorModeUnspecified -> "ANCESTOR_MODE_UNSPECIFIED"
        None -> "NONE"
        AllAncestors -> "ALL_ANCESTORS"

instance FromJSON GoogleDatastoreAdminV1IndexAncestor where
    parseJSON = parseJSONText "GoogleDatastoreAdminV1IndexAncestor"

instance ToJSON GoogleDatastoreAdminV1IndexAncestor where
    toJSON = toJSONText

-- | The non-transactional read consistency to use. Cannot be set to
-- \`STRONG\` for global queries.
data ReadOptionsReadConsistency
    = ReadConsistencyUnspecified
      -- ^ @READ_CONSISTENCY_UNSPECIFIED@
      -- Unspecified. This value must not be used.
    | Strong
      -- ^ @STRONG@
      -- Strong consistency.
    | Eventual
      -- ^ @EVENTUAL@
      -- Eventual consistency.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReadOptionsReadConsistency

instance FromHttpApiData ReadOptionsReadConsistency where
    parseQueryParam = \case
        "READ_CONSISTENCY_UNSPECIFIED" -> Right ReadConsistencyUnspecified
        "STRONG" -> Right Strong
        "EVENTUAL" -> Right Eventual
        x -> Left ("Unable to parse ReadOptionsReadConsistency from: " <> x)

instance ToHttpApiData ReadOptionsReadConsistency where
    toQueryParam = \case
        ReadConsistencyUnspecified -> "READ_CONSISTENCY_UNSPECIFIED"
        Strong -> "STRONG"
        Eventual -> "EVENTUAL"

instance FromJSON ReadOptionsReadConsistency where
    parseJSON = parseJSONText "ReadOptionsReadConsistency"

instance ToJSON ReadOptionsReadConsistency where
    toJSON = toJSONText

-- | Output only. The state of the index.
data GoogleDatastoreAdminV1IndexState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The state is unspecified.
    | Creating
      -- ^ @CREATING@
      -- The index is being created, and cannot be used by queries. There is an
      -- active long-running operation for the index. The index is updated when
      -- writing an entity. Some index data may exist.
    | Ready
      -- ^ @READY@
      -- The index is ready to be used. The index is updated when writing an
      -- entity. The index is fully populated from all stored entities it applies
      -- to.
    | Deleting
      -- ^ @DELETING@
      -- The index is being deleted, and cannot be used by queries. There is an
      -- active long-running operation for the index. The index is not updated
      -- when writing an entity. Some index data may exist.
    | Error'
      -- ^ @ERROR@
      -- The index was being created or deleted, but something went wrong. The
      -- index cannot by used by queries. There is no active long-running
      -- operation for the index, and the most recently finished long-running
      -- operation failed. The index is not updated when writing an entity. Some
      -- index data may exist.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDatastoreAdminV1IndexState

instance FromHttpApiData GoogleDatastoreAdminV1IndexState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "READY" -> Right Ready
        "DELETING" -> Right Deleting
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse GoogleDatastoreAdminV1IndexState from: " <> x)

instance ToHttpApiData GoogleDatastoreAdminV1IndexState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Ready -> "READY"
        Deleting -> "DELETING"
        Error' -> "ERROR"

instance FromJSON GoogleDatastoreAdminV1IndexState where
    parseJSON = parseJSONText "GoogleDatastoreAdminV1IndexState"

instance ToJSON GoogleDatastoreAdminV1IndexState where
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

-- | The current state of the Operation.
data GoogleDatastoreAdminV1beta1CommonMetadataState
    = GDAVCMSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Unspecified.
    | GDAVCMSInitializing
      -- ^ @INITIALIZING@
      -- Request is being prepared for processing.
    | GDAVCMSProcessing
      -- ^ @PROCESSING@
      -- Request is actively being processed.
    | GDAVCMSCancelling
      -- ^ @CANCELLING@
      -- Request is in the process of being cancelled after user called
      -- google.longrunning.Operations.CancelOperation on the operation.
    | GDAVCMSFinalizing
      -- ^ @FINALIZING@
      -- Request has been processed and is in its finalization stage.
    | GDAVCMSSuccessful
      -- ^ @SUCCESSFUL@
      -- Request has completed successfully.
    | GDAVCMSFailed
      -- ^ @FAILED@
      -- Request has finished being processed, but encountered an error.
    | GDAVCMSCancelled
      -- ^ @CANCELLED@
      -- Request has finished being cancelled after user called
      -- google.longrunning.Operations.CancelOperation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDatastoreAdminV1beta1CommonMetadataState

instance FromHttpApiData GoogleDatastoreAdminV1beta1CommonMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GDAVCMSStateUnspecified
        "INITIALIZING" -> Right GDAVCMSInitializing
        "PROCESSING" -> Right GDAVCMSProcessing
        "CANCELLING" -> Right GDAVCMSCancelling
        "FINALIZING" -> Right GDAVCMSFinalizing
        "SUCCESSFUL" -> Right GDAVCMSSuccessful
        "FAILED" -> Right GDAVCMSFailed
        "CANCELLED" -> Right GDAVCMSCancelled
        x -> Left ("Unable to parse GoogleDatastoreAdminV1beta1CommonMetadataState from: " <> x)

instance ToHttpApiData GoogleDatastoreAdminV1beta1CommonMetadataState where
    toQueryParam = \case
        GDAVCMSStateUnspecified -> "STATE_UNSPECIFIED"
        GDAVCMSInitializing -> "INITIALIZING"
        GDAVCMSProcessing -> "PROCESSING"
        GDAVCMSCancelling -> "CANCELLING"
        GDAVCMSFinalizing -> "FINALIZING"
        GDAVCMSSuccessful -> "SUCCESSFUL"
        GDAVCMSFailed -> "FAILED"
        GDAVCMSCancelled -> "CANCELLED"

instance FromJSON GoogleDatastoreAdminV1beta1CommonMetadataState where
    parseJSON = parseJSONText "GoogleDatastoreAdminV1beta1CommonMetadataState"

instance ToJSON GoogleDatastoreAdminV1beta1CommonMetadataState where
    toJSON = toJSONText

-- | The operator to filter by.
data PropertyFilterOp
    = PFOOperatorUnspecified
      -- ^ @OPERATOR_UNSPECIFIED@
      -- Unspecified. This value must not be used.
    | PFOLessThan
      -- ^ @LESS_THAN@
      -- Less than.
    | PFOLessThanOrEqual
      -- ^ @LESS_THAN_OR_EQUAL@
      -- Less than or equal.
    | PFOGreaterThan
      -- ^ @GREATER_THAN@
      -- Greater than.
    | PFOGreaterThanOrEqual
      -- ^ @GREATER_THAN_OR_EQUAL@
      -- Greater than or equal.
    | PFOEqual
      -- ^ @EQUAL@
      -- Equal.
    | PFOHasAncestor
      -- ^ @HAS_ANCESTOR@
      -- Has ancestor.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PropertyFilterOp

instance FromHttpApiData PropertyFilterOp where
    parseQueryParam = \case
        "OPERATOR_UNSPECIFIED" -> Right PFOOperatorUnspecified
        "LESS_THAN" -> Right PFOLessThan
        "LESS_THAN_OR_EQUAL" -> Right PFOLessThanOrEqual
        "GREATER_THAN" -> Right PFOGreaterThan
        "GREATER_THAN_OR_EQUAL" -> Right PFOGreaterThanOrEqual
        "EQUAL" -> Right PFOEqual
        "HAS_ANCESTOR" -> Right PFOHasAncestor
        x -> Left ("Unable to parse PropertyFilterOp from: " <> x)

instance ToHttpApiData PropertyFilterOp where
    toQueryParam = \case
        PFOOperatorUnspecified -> "OPERATOR_UNSPECIFIED"
        PFOLessThan -> "LESS_THAN"
        PFOLessThanOrEqual -> "LESS_THAN_OR_EQUAL"
        PFOGreaterThan -> "GREATER_THAN"
        PFOGreaterThanOrEqual -> "GREATER_THAN_OR_EQUAL"
        PFOEqual -> "EQUAL"
        PFOHasAncestor -> "HAS_ANCESTOR"

instance FromJSON PropertyFilterOp where
    parseJSON = parseJSONText "PropertyFilterOp"

instance ToJSON PropertyFilterOp where
    toJSON = toJSONText

-- | The type of commit to perform. Defaults to \`TRANSACTIONAL\`.
data CommitRequestMode
    = ModeUnspecified
      -- ^ @MODE_UNSPECIFIED@
      -- Unspecified. This value must not be used.
    | Transactional
      -- ^ @TRANSACTIONAL@
      -- Transactional: The mutations are either all applied, or none are
      -- applied. Learn about transactions
      -- [here](https:\/\/cloud.google.com\/datastore\/docs\/concepts\/transactions).
    | NonTransactional
      -- ^ @NON_TRANSACTIONAL@
      -- Non-transactional: The mutations may not apply as all or none.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommitRequestMode

instance FromHttpApiData CommitRequestMode where
    parseQueryParam = \case
        "MODE_UNSPECIFIED" -> Right ModeUnspecified
        "TRANSACTIONAL" -> Right Transactional
        "NON_TRANSACTIONAL" -> Right NonTransactional
        x -> Left ("Unable to parse CommitRequestMode from: " <> x)

instance ToHttpApiData CommitRequestMode where
    toQueryParam = \case
        ModeUnspecified -> "MODE_UNSPECIFIED"
        Transactional -> "TRANSACTIONAL"
        NonTransactional -> "NON_TRANSACTIONAL"

instance FromJSON CommitRequestMode where
    parseJSON = parseJSONText "CommitRequestMode"

instance ToJSON CommitRequestMode where
    toJSON = toJSONText

-- | The current state of the Operation.
data GoogleDatastoreAdminV1CommonMetadataState
    = GStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Unspecified.
    | GInitializing
      -- ^ @INITIALIZING@
      -- Request is being prepared for processing.
    | GProcessing
      -- ^ @PROCESSING@
      -- Request is actively being processed.
    | GCancelling
      -- ^ @CANCELLING@
      -- Request is in the process of being cancelled after user called
      -- google.longrunning.Operations.CancelOperation on the operation.
    | GFinalizing
      -- ^ @FINALIZING@
      -- Request has been processed and is in its finalization stage.
    | GSuccessful
      -- ^ @SUCCESSFUL@
      -- Request has completed successfully.
    | GFailed
      -- ^ @FAILED@
      -- Request has finished being processed, but encountered an error.
    | GCancelled
      -- ^ @CANCELLED@
      -- Request has finished being cancelled after user called
      -- google.longrunning.Operations.CancelOperation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDatastoreAdminV1CommonMetadataState

instance FromHttpApiData GoogleDatastoreAdminV1CommonMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GStateUnspecified
        "INITIALIZING" -> Right GInitializing
        "PROCESSING" -> Right GProcessing
        "CANCELLING" -> Right GCancelling
        "FINALIZING" -> Right GFinalizing
        "SUCCESSFUL" -> Right GSuccessful
        "FAILED" -> Right GFailed
        "CANCELLED" -> Right GCancelled
        x -> Left ("Unable to parse GoogleDatastoreAdminV1CommonMetadataState from: " <> x)

instance ToHttpApiData GoogleDatastoreAdminV1CommonMetadataState where
    toQueryParam = \case
        GStateUnspecified -> "STATE_UNSPECIFIED"
        GInitializing -> "INITIALIZING"
        GProcessing -> "PROCESSING"
        GCancelling -> "CANCELLING"
        GFinalizing -> "FINALIZING"
        GSuccessful -> "SUCCESSFUL"
        GFailed -> "FAILED"
        GCancelled -> "CANCELLED"

instance FromJSON GoogleDatastoreAdminV1CommonMetadataState where
    parseJSON = parseJSONText "GoogleDatastoreAdminV1CommonMetadataState"

instance ToJSON GoogleDatastoreAdminV1CommonMetadataState where
    toJSON = toJSONText
