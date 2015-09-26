{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Cloud.Datastore.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Cloud.Datastore.Types.Sum where

import           Network.Google.Prelude

-- | The transaction isolation level. Either snapshot or serializable. The
-- default isolation level is snapshot isolation, which means that another
-- transaction may not concurrently modify the data that is modified by
-- this transaction. Optionally, a transaction can request to be made
-- serializable which means that another transaction cannot concurrently
-- modify the data that is read or modified by this transaction.
data BeginTransactionRequestIsolationLevel
    = BTRILSerializable
      -- ^ @SERIALIZABLE@
    | BTRILSnapshot
      -- ^ @SNAPSHOT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BeginTransactionRequestIsolationLevel

instance FromText BeginTransactionRequestIsolationLevel where
    fromText = \case
        "SERIALIZABLE" -> Just BTRILSerializable
        "SNAPSHOT" -> Just BTRILSnapshot
        _ -> Nothing

instance ToText BeginTransactionRequestIsolationLevel where
    toText = \case
        BTRILSerializable -> "SERIALIZABLE"
        BTRILSnapshot -> "SNAPSHOT"

-- | The type of commit to perform. Either TRANSACTIONAL or
-- NON_TRANSACTIONAL.
data CommitRequestMode
    = CRMNonTransactional
      -- ^ @NON_TRANSACTIONAL@
    | CRMTransactional
      -- ^ @TRANSACTIONAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommitRequestMode

instance FromText CommitRequestMode where
    fromText = \case
        "NON_TRANSACTIONAL" -> Just CRMNonTransactional
        "TRANSACTIONAL" -> Just CRMTransactional
        _ -> Nothing

instance ToText CommitRequestMode where
    toText = \case
        CRMNonTransactional -> "NON_TRANSACTIONAL"
        CRMTransactional -> "TRANSACTIONAL"

-- | The operator for combining multiple filters. Only \"and\" is currently
-- supported.
data CompositeFilterOperator
    = CFOAnd
      -- ^ @AND@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CompositeFilterOperator

instance FromText CompositeFilterOperator where
    fromText = \case
        "AND" -> Just CFOAnd
        _ -> Nothing

instance ToText CompositeFilterOperator where
    toText = \case
        CFOAnd -> "AND"

-- | The aggregation function to apply to the property. Optional. Can only be
-- used when grouping by at least one property. Must then be set on all
-- properties in the projection that are not being grouped by. Aggregation
-- functions: first selects the first result as determined by the query\'s
-- order.
data PropertyExpressionAggregationFunction
    = PEAFFirst
      -- ^ @FIRST@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PropertyExpressionAggregationFunction

instance FromText PropertyExpressionAggregationFunction where
    fromText = \case
        "FIRST" -> Just PEAFFirst
        _ -> Nothing

instance ToText PropertyExpressionAggregationFunction where
    toText = \case
        PEAFFirst -> "FIRST"

-- | The operator to filter by. One of lessThan, lessThanOrEqual,
-- greaterThan, greaterThanOrEqual, equal, or hasAncestor.
data PropertyFilterOperator
    = PFOEqual
      -- ^ @EQUAL@
    | PFOGreaterThan
      -- ^ @GREATER_THAN@
    | PFOGreaterThanOrEqual
      -- ^ @GREATER_THAN_OR_EQUAL@
    | PFOHasAncestor
      -- ^ @HAS_ANCESTOR@
    | PFOLessThan
      -- ^ @LESS_THAN@
    | PFOLessThanOrEqual
      -- ^ @LESS_THAN_OR_EQUAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PropertyFilterOperator

instance FromText PropertyFilterOperator where
    fromText = \case
        "EQUAL" -> Just PFOEqual
        "GREATER_THAN" -> Just PFOGreaterThan
        "GREATER_THAN_OR_EQUAL" -> Just PFOGreaterThanOrEqual
        "HAS_ANCESTOR" -> Just PFOHasAncestor
        "LESS_THAN" -> Just PFOLessThan
        "LESS_THAN_OR_EQUAL" -> Just PFOLessThanOrEqual
        _ -> Nothing

instance ToText PropertyFilterOperator where
    toText = \case
        PFOEqual -> "EQUAL"
        PFOGreaterThan -> "GREATER_THAN"
        PFOGreaterThanOrEqual -> "GREATER_THAN_OR_EQUAL"
        PFOHasAncestor -> "HAS_ANCESTOR"
        PFOLessThan -> "LESS_THAN"
        PFOLessThanOrEqual -> "LESS_THAN_OR_EQUAL"

-- | The direction to order by. One of ascending or descending. Optional,
-- defaults to ascending.
data PropertyOrderDirection
    = PODAscending
      -- ^ @ASCENDING@
    | PODDescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PropertyOrderDirection

instance FromText PropertyOrderDirection where
    fromText = \case
        "ASCENDING" -> Just PODAscending
        "DESCENDING" -> Just PODDescending
        _ -> Nothing

instance ToText PropertyOrderDirection where
    toText = \case
        PODAscending -> "ASCENDING"
        PODDescending -> "DESCENDING"

-- | The result type for every entity in entityResults. full for full
-- entities, projection for entities with only projected properties,
-- keyOnly for entities with only a key.
data QueryResultBatchEntityResultType
    = QRBERTFull
      -- ^ @FULL@
    | QRBERTKeyOnly
      -- ^ @KEY_ONLY@
    | QRBERTProjection
      -- ^ @PROJECTION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable QueryResultBatchEntityResultType

instance FromText QueryResultBatchEntityResultType where
    fromText = \case
        "FULL" -> Just QRBERTFull
        "KEY_ONLY" -> Just QRBERTKeyOnly
        "PROJECTION" -> Just QRBERTProjection
        _ -> Nothing

instance ToText QueryResultBatchEntityResultType where
    toText = \case
        QRBERTFull -> "FULL"
        QRBERTKeyOnly -> "KEY_ONLY"
        QRBERTProjection -> "PROJECTION"

-- | The state of the query after the current batch. One of notFinished,
-- moreResultsAfterLimit, noMoreResults.
data QueryResultBatchMoreResults
    = QRBMRMoreResultsAfterLimit
      -- ^ @MORE_RESULTS_AFTER_LIMIT@
    | QRBMRNotFinished
      -- ^ @NOT_FINISHED@
    | QRBMRNoMoreResults
      -- ^ @NO_MORE_RESULTS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable QueryResultBatchMoreResults

instance FromText QueryResultBatchMoreResults where
    fromText = \case
        "MORE_RESULTS_AFTER_LIMIT" -> Just QRBMRMoreResultsAfterLimit
        "NOT_FINISHED" -> Just QRBMRNotFinished
        "NO_MORE_RESULTS" -> Just QRBMRNoMoreResults
        _ -> Nothing

instance ToText QueryResultBatchMoreResults where
    toText = \case
        QRBMRMoreResultsAfterLimit -> "MORE_RESULTS_AFTER_LIMIT"
        QRBMRNotFinished -> "NOT_FINISHED"
        QRBMRNoMoreResults -> "NO_MORE_RESULTS"

-- | The read consistency to use. One of default, strong, or eventual. Cannot
-- be set when transaction is set. Lookup and ancestor queries default to
-- strong, global queries default to eventual and cannot be set to strong.
-- Optional. Default is default.
data ReadOptionsReadConsistency
    = RORCDefault
      -- ^ @DEFAULT@
    | RORCEventual
      -- ^ @EVENTUAL@
    | RORCStrong
      -- ^ @STRONG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReadOptionsReadConsistency

instance FromText ReadOptionsReadConsistency where
    fromText = \case
        "DEFAULT" -> Just RORCDefault
        "EVENTUAL" -> Just RORCEventual
        "STRONG" -> Just RORCStrong
        _ -> Nothing

instance ToText ReadOptionsReadConsistency where
    toText = \case
        RORCDefault -> "DEFAULT"
        RORCEventual -> "EVENTUAL"
        RORCStrong -> "STRONG"
