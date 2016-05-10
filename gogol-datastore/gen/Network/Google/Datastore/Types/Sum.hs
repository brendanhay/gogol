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

-- | The direction to order by. One of ascending or descending. Optional,
-- defaults to ascending.
data PropertyOrderDirection
    = Ascending
      -- ^ @ASCENDING@
    | Descending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PropertyOrderDirection

instance FromHttpApiData PropertyOrderDirection where
    parseQueryParam = \case
        "ASCENDING" -> Right Ascending
        "DESCENDING" -> Right Descending
        x -> Left ("Unable to parse PropertyOrderDirection from: " <> x)

instance ToHttpApiData PropertyOrderDirection where
    toQueryParam = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON PropertyOrderDirection where
    parseJSON = parseJSONText "PropertyOrderDirection"

instance ToJSON PropertyOrderDirection where
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

instance FromHttpApiData QueryResultBatchEntityResultType where
    parseQueryParam = \case
        "FULL" -> Right Full
        "KEY_ONLY" -> Right KeyOnly
        "PROJECTION" -> Right Projection
        x -> Left ("Unable to parse QueryResultBatchEntityResultType from: " <> x)

instance ToHttpApiData QueryResultBatchEntityResultType where
    toQueryParam = \case
        Full -> "FULL"
        KeyOnly -> "KEY_ONLY"
        Projection -> "PROJECTION"

instance FromJSON QueryResultBatchEntityResultType where
    parseJSON = parseJSONText "QueryResultBatchEntityResultType"

instance ToJSON QueryResultBatchEntityResultType where
    toJSON = toJSONText

-- | The operator for combining multiple filters. Only \"and\" is currently
-- supported.
data CompositeFilterOperator
    = And
      -- ^ @AND@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CompositeFilterOperator

instance FromHttpApiData CompositeFilterOperator where
    parseQueryParam = \case
        "AND" -> Right And
        x -> Left ("Unable to parse CompositeFilterOperator from: " <> x)

instance ToHttpApiData CompositeFilterOperator where
    toQueryParam = \case
        And -> "AND"

instance FromJSON CompositeFilterOperator where
    parseJSON = parseJSONText "CompositeFilterOperator"

instance ToJSON CompositeFilterOperator where
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

instance FromHttpApiData QueryResultBatchMoreResults where
    parseQueryParam = \case
        "MORE_RESULTS_AFTER_LIMIT" -> Right MoreResultsAfterLimit
        "NOT_FINISHED" -> Right NotFinished
        "NO_MORE_RESULTS" -> Right NoMoreResults
        x -> Left ("Unable to parse QueryResultBatchMoreResults from: " <> x)

instance ToHttpApiData QueryResultBatchMoreResults where
    toQueryParam = \case
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

instance FromHttpApiData ReadOptionsReadConsistency where
    parseQueryParam = \case
        "DEFAULT" -> Right Default
        "EVENTUAL" -> Right Eventual
        "STRONG" -> Right Strong
        x -> Left ("Unable to parse ReadOptionsReadConsistency from: " <> x)

instance ToHttpApiData ReadOptionsReadConsistency where
    toQueryParam = \case
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

instance FromHttpApiData PropertyFilterOperator where
    parseQueryParam = \case
        "EQUAL" -> Right Equal
        "GREATER_THAN" -> Right GreaterThan
        "GREATER_THAN_OR_EQUAL" -> Right GreaterThanOrEqual
        "HAS_ANCESTOR" -> Right HasAncestor
        "LESS_THAN" -> Right LessThan
        "LESS_THAN_OR_EQUAL" -> Right LessThanOrEqual
        x -> Left ("Unable to parse PropertyFilterOperator from: " <> x)

instance ToHttpApiData PropertyFilterOperator where
    toQueryParam = \case
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

instance FromHttpApiData BeginTransactionRequestIsolationLevel where
    parseQueryParam = \case
        "SERIALIZABLE" -> Right Serializable
        "SNAPSHOT" -> Right Snapshot
        x -> Left ("Unable to parse BeginTransactionRequestIsolationLevel from: " <> x)

instance ToHttpApiData BeginTransactionRequestIsolationLevel where
    toQueryParam = \case
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

instance FromHttpApiData CommitRequestMode where
    parseQueryParam = \case
        "NON_TRANSACTIONAL" -> Right NonTransactional
        "TRANSACTIONAL" -> Right Transactional
        x -> Left ("Unable to parse CommitRequestMode from: " <> x)

instance ToHttpApiData CommitRequestMode where
    toQueryParam = \case
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

instance FromHttpApiData PropertyExpressionAggregationFunction where
    parseQueryParam = \case
        "FIRST" -> Right First
        x -> Left ("Unable to parse PropertyExpressionAggregationFunction from: " <> x)

instance ToHttpApiData PropertyExpressionAggregationFunction where
    toQueryParam = \case
        First -> "FIRST"

instance FromJSON PropertyExpressionAggregationFunction where
    parseJSON = parseJSONText "PropertyExpressionAggregationFunction"

instance ToJSON PropertyExpressionAggregationFunction where
    toJSON = toJSONText
