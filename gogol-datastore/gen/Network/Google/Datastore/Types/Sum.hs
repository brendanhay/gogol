{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Datastore.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Datastore.Types.Sum where

import           Network.Google.Prelude

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
      -- The query has been exhausted.
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
