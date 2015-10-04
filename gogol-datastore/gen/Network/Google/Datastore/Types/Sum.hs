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

-- | The read consistency to use. One of default, strong, or eventual. Cannot
-- be set when transaction is set. Lookup and ancestor queries default to
-- strong, global queries default to eventual and cannot be set to strong.
-- Optional. Default is default.
data ReadConsistency
    = Default
      -- ^ @DEFAULT@
    | Eventual
      -- ^ @EVENTUAL@
    | Strong
      -- ^ @STRONG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReadConsistency

instance FromText ReadConsistency where
    fromText = \case
        "DEFAULT" -> Just Default
        "EVENTUAL" -> Just Eventual
        "STRONG" -> Just Strong
        _ -> Nothing

instance ToText ReadConsistency where
    toText = \case
        Default -> "DEFAULT"
        Eventual -> "EVENTUAL"
        Strong -> "STRONG"

instance FromJSON ReadConsistency where
    parseJSON = parseJSONText "ReadConsistency"

instance ToJSON ReadConsistency where
    toJSON = toJSONText

-- | The result type for every entity in entityResults. full for full
-- entities, projection for entities with only projected properties,
-- keyOnly for entities with only a key.
data EntityResultType
    = ERTFull
      -- ^ @FULL@
    | ERTKeyOnly
      -- ^ @KEY_ONLY@
    | ERTProjection
      -- ^ @PROJECTION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EntityResultType

instance FromText EntityResultType where
    fromText = \case
        "FULL" -> Just ERTFull
        "KEY_ONLY" -> Just ERTKeyOnly
        "PROJECTION" -> Just ERTProjection
        _ -> Nothing

instance ToText EntityResultType where
    toText = \case
        ERTFull -> "FULL"
        ERTKeyOnly -> "KEY_ONLY"
        ERTProjection -> "PROJECTION"

instance FromJSON EntityResultType where
    parseJSON = parseJSONText "EntityResultType"

instance ToJSON EntityResultType where
    toJSON = toJSONText

-- | The direction to order by. One of ascending or descending. Optional,
-- defaults to ascending.
data Direction
    = Ascending
      -- ^ @ASCENDING@
    | Descending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Direction

instance FromText Direction where
    fromText = \case
        "ASCENDING" -> Just Ascending
        "DESCENDING" -> Just Descending
        _ -> Nothing

instance ToText Direction where
    toText = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON Direction where
    parseJSON = parseJSONText "Direction"

instance ToJSON Direction where
    toJSON = toJSONText

-- | The operator for combining multiple filters. Only \"and\" is currently
-- supported.
data Operator
    = And
      -- ^ @AND@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Operator

instance FromText Operator where
    fromText = \case
        "AND" -> Just And
        _ -> Nothing

instance ToText Operator where
    toText = \case
        And -> "AND"

instance FromJSON Operator where
    parseJSON = parseJSONText "Operator"

instance ToJSON Operator where
    toJSON = toJSONText

-- | The type of commit to perform. Either TRANSACTIONAL or
-- NON_TRANSACTIONAL.
data Mode
    = NonTransactional
      -- ^ @NON_TRANSACTIONAL@
    | Transactional
      -- ^ @TRANSACTIONAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Mode

instance FromText Mode where
    fromText = \case
        "NON_TRANSACTIONAL" -> Just NonTransactional
        "TRANSACTIONAL" -> Just Transactional
        _ -> Nothing

instance ToText Mode where
    toText = \case
        NonTransactional -> "NON_TRANSACTIONAL"
        Transactional -> "TRANSACTIONAL"

instance FromJSON Mode where
    parseJSON = parseJSONText "Mode"

instance ToJSON Mode where
    toJSON = toJSONText

-- | The aggregation function to apply to the property. Optional. Can only be
-- used when grouping by at least one property. Must then be set on all
-- properties in the projection that are not being grouped by. Aggregation
-- functions: first selects the first result as determined by the query\'s
-- order.
data AggregationFunction
    = First
      -- ^ @FIRST@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AggregationFunction

instance FromText AggregationFunction where
    fromText = \case
        "FIRST" -> Just First
        _ -> Nothing

instance ToText AggregationFunction where
    toText = \case
        First -> "FIRST"

instance FromJSON AggregationFunction where
    parseJSON = parseJSONText "AggregationFunction"

instance ToJSON AggregationFunction where
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

-- | The state of the query after the current batch. One of notFinished,
-- moreResultsAfterLimit, noMoreResults.
data MoreResults
    = MoreResultsAfterLimit
      -- ^ @MORE_RESULTS_AFTER_LIMIT@
    | NotFinished
      -- ^ @NOT_FINISHED@
    | NoMoreResults
      -- ^ @NO_MORE_RESULTS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MoreResults

instance FromText MoreResults where
    fromText = \case
        "MORE_RESULTS_AFTER_LIMIT" -> Just MoreResultsAfterLimit
        "NOT_FINISHED" -> Just NotFinished
        "NO_MORE_RESULTS" -> Just NoMoreResults
        _ -> Nothing

instance ToText MoreResults where
    toText = \case
        MoreResultsAfterLimit -> "MORE_RESULTS_AFTER_LIMIT"
        NotFinished -> "NOT_FINISHED"
        NoMoreResults -> "NO_MORE_RESULTS"

instance FromJSON MoreResults where
    parseJSON = parseJSONText "MoreResults"

instance ToJSON MoreResults where
    toJSON = toJSONText

-- | The transaction isolation level. Either snapshot or serializable. The
-- default isolation level is snapshot isolation, which means that another
-- transaction may not concurrently modify the data that is modified by
-- this transaction. Optionally, a transaction can request to be made
-- serializable which means that another transaction cannot concurrently
-- modify the data that is read or modified by this transaction.
data IsolationLevel
    = Serializable
      -- ^ @SERIALIZABLE@
    | Snapshot
      -- ^ @SNAPSHOT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable IsolationLevel

instance FromText IsolationLevel where
    fromText = \case
        "SERIALIZABLE" -> Just Serializable
        "SNAPSHOT" -> Just Snapshot
        _ -> Nothing

instance ToText IsolationLevel where
    toText = \case
        Serializable -> "SERIALIZABLE"
        Snapshot -> "SNAPSHOT"

instance FromJSON IsolationLevel where
    parseJSON = parseJSONText "IsolationLevel"

instance ToJSON IsolationLevel where
    toJSON = toJSONText
