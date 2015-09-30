{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Datastore.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Datastore.Types.Sum where

import           Network.Google.Prelude

-- | The direction to order by. One of ascending or descending. Optional,
-- defaults to ascending.
data PropertyOrderDirection
    = Ascending
      -- ^ @ASCENDING@
    | Descending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PropertyOrderDirection

instance FromText PropertyOrderDirection where
    fromText = \case
        "ASCENDING" -> Just Ascending
        "DESCENDING" -> Just Descending
        _ -> Nothing

instance ToText PropertyOrderDirection where
    toText = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON PropertyOrderDirection where
    parseJSON = parseJSONText "PropertyOrderDirection"

instance ToJSON PropertyOrderDirection where
    toJSON = toJSONText

-- | The operator for combining multiple filters. Only \"and\" is currently
-- supported.
data CompositeFilterOperator
    = And
      -- ^ @AND@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CompositeFilterOperator

instance FromText CompositeFilterOperator where
    fromText = \case
        "AND" -> Just And
        _ -> Nothing

instance ToText CompositeFilterOperator where
    toText = \case
        And -> "AND"

instance FromJSON CompositeFilterOperator where
    parseJSON = parseJSONText "CompositeFilterOperator"

instance ToJSON CompositeFilterOperator where
    toJSON = toJSONText

-- | The result type for every entity in entityResults. full for full
-- entities, projection for entities with only projected properties,
-- keyOnly for entities with only a key.
data QueryResultBatchEntityResultType
    = Full
      -- ^ @FULL@
    | KeyOnly
      -- ^ @KEY_ONLY@
    | Projection
      -- ^ @PROJECTION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable QueryResultBatchEntityResultType

instance FromText QueryResultBatchEntityResultType where
    fromText = \case
        "FULL" -> Just Full
        "KEY_ONLY" -> Just KeyOnly
        "PROJECTION" -> Just Projection
        _ -> Nothing

instance ToText QueryResultBatchEntityResultType where
    toText = \case
        Full -> "FULL"
        KeyOnly -> "KEY_ONLY"
        Projection -> "PROJECTION"

instance FromJSON QueryResultBatchEntityResultType where
    parseJSON = parseJSONText "QueryResultBatchEntityResultType"

instance ToJSON QueryResultBatchEntityResultType where
    toJSON = toJSONText

-- | The state of the query after the current batch. One of notFinished,
-- moreResultsAfterLimit, noMoreResults.
data QueryResultBatchMoreResults
    = MoreResultsAfterLimit
      -- ^ @MORE_RESULTS_AFTER_LIMIT@
    | NotFinished
      -- ^ @NOT_FINISHED@
    | NoMoreResults
      -- ^ @NO_MORE_RESULTS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable QueryResultBatchMoreResults

instance FromText QueryResultBatchMoreResults where
    fromText = \case
        "MORE_RESULTS_AFTER_LIMIT" -> Just MoreResultsAfterLimit
        "NOT_FINISHED" -> Just NotFinished
        "NO_MORE_RESULTS" -> Just NoMoreResults
        _ -> Nothing

instance ToText QueryResultBatchMoreResults where
    toText = \case
        MoreResultsAfterLimit -> "MORE_RESULTS_AFTER_LIMIT"
        NotFinished -> "NOT_FINISHED"
        NoMoreResults -> "NO_MORE_RESULTS"

instance FromJSON QueryResultBatchMoreResults where
    parseJSON = parseJSONText "QueryResultBatchMoreResults"

instance ToJSON QueryResultBatchMoreResults where
    toJSON = toJSONText

-- | The read consistency to use. One of default, strong, or eventual. Cannot
-- be set when transaction is set. Lookup and ancestor queries default to
-- strong, global queries default to eventual and cannot be set to strong.
-- Optional. Default is default.
data ReadOptionsReadConsistency
    = Default
      -- ^ @DEFAULT@
    | Eventual
      -- ^ @EVENTUAL@
    | Strong
      -- ^ @STRONG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReadOptionsReadConsistency

instance FromText ReadOptionsReadConsistency where
    fromText = \case
        "DEFAULT" -> Just Default
        "EVENTUAL" -> Just Eventual
        "STRONG" -> Just Strong
        _ -> Nothing

instance ToText ReadOptionsReadConsistency where
    toText = \case
        Default -> "DEFAULT"
        Eventual -> "EVENTUAL"
        Strong -> "STRONG"

instance FromJSON ReadOptionsReadConsistency where
    parseJSON = parseJSONText "ReadOptionsReadConsistency"

instance ToJSON ReadOptionsReadConsistency where
    toJSON = toJSONText

-- | The operator to filter by. One of lessThan, lessThanOrEqual,
-- greaterThan, greaterThanOrEqual, equal, or hasAncestor.
data PropertyFilterOperator
    = Equal
      -- ^ @EQUAL@
    | GreaterThan
      -- ^ @GREATER_THAN@
    | GreaterThanOrEqual
      -- ^ @GREATER_THAN_OR_EQUAL@
    | HasAncestor
      -- ^ @HAS_ANCESTOR@
    | LessThan
      -- ^ @LESS_THAN@
    | LessThanOrEqual
      -- ^ @LESS_THAN_OR_EQUAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PropertyFilterOperator

instance FromText PropertyFilterOperator where
    fromText = \case
        "EQUAL" -> Just Equal
        "GREATER_THAN" -> Just GreaterThan
        "GREATER_THAN_OR_EQUAL" -> Just GreaterThanOrEqual
        "HAS_ANCESTOR" -> Just HasAncestor
        "LESS_THAN" -> Just LessThan
        "LESS_THAN_OR_EQUAL" -> Just LessThanOrEqual
        _ -> Nothing

instance ToText PropertyFilterOperator where
    toText = \case
        Equal -> "EQUAL"
        GreaterThan -> "GREATER_THAN"
        GreaterThanOrEqual -> "GREATER_THAN_OR_EQUAL"
        HasAncestor -> "HAS_ANCESTOR"
        LessThan -> "LESS_THAN"
        LessThanOrEqual -> "LESS_THAN_OR_EQUAL"

instance FromJSON PropertyFilterOperator where
    parseJSON = parseJSONText "PropertyFilterOperator"

instance ToJSON PropertyFilterOperator where
    toJSON = toJSONText

-- | The transaction isolation level. Either snapshot or serializable. The
-- default isolation level is snapshot isolation, which means that another
-- transaction may not concurrently modify the data that is modified by
-- this transaction. Optionally, a transaction can request to be made
-- serializable which means that another transaction cannot concurrently
-- modify the data that is read or modified by this transaction.
data BeginTransactionRequestIsolationLevel
    = Serializable
      -- ^ @SERIALIZABLE@
    | Snapshot
      -- ^ @SNAPSHOT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BeginTransactionRequestIsolationLevel

instance FromText BeginTransactionRequestIsolationLevel where
    fromText = \case
        "SERIALIZABLE" -> Just Serializable
        "SNAPSHOT" -> Just Snapshot
        _ -> Nothing

instance ToText BeginTransactionRequestIsolationLevel where
    toText = \case
        Serializable -> "SERIALIZABLE"
        Snapshot -> "SNAPSHOT"

instance FromJSON BeginTransactionRequestIsolationLevel where
    parseJSON = parseJSONText "BeginTransactionRequestIsolationLevel"

instance ToJSON BeginTransactionRequestIsolationLevel where
    toJSON = toJSONText

-- | The type of commit to perform. Either TRANSACTIONAL or
-- NON_TRANSACTIONAL.
data CommitRequestMode
    = NonTransactional
      -- ^ @NON_TRANSACTIONAL@
    | Transactional
      -- ^ @TRANSACTIONAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommitRequestMode

instance FromText CommitRequestMode where
    fromText = \case
        "NON_TRANSACTIONAL" -> Just NonTransactional
        "TRANSACTIONAL" -> Just Transactional
        _ -> Nothing

instance ToText CommitRequestMode where
    toText = \case
        NonTransactional -> "NON_TRANSACTIONAL"
        Transactional -> "TRANSACTIONAL"

instance FromJSON CommitRequestMode where
    parseJSON = parseJSONText "CommitRequestMode"

instance ToJSON CommitRequestMode where
    toJSON = toJSONText

-- | The aggregation function to apply to the property. Optional. Can only be
-- used when grouping by at least one property. Must then be set on all
-- properties in the projection that are not being grouped by. Aggregation
-- functions: first selects the first result as determined by the query\'s
-- order.
data PropertyExpressionAggregationFunction
    = First
      -- ^ @FIRST@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PropertyExpressionAggregationFunction

instance FromText PropertyExpressionAggregationFunction where
    fromText = \case
        "FIRST" -> Just First
        _ -> Nothing

instance ToText PropertyExpressionAggregationFunction where
    toText = \case
        First -> "FIRST"

instance FromJSON PropertyExpressionAggregationFunction where
    parseJSON = parseJSONText "PropertyExpressionAggregationFunction"

instance ToJSON PropertyExpressionAggregationFunction where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
    | Proto
      -- ^ @proto@
      -- Responses with Content-Type of application\/x-protobuf
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        "proto" -> Just Proto
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"
        Proto -> "proto"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText
