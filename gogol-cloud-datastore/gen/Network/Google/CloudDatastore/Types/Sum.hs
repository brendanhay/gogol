{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.CloudDatastore.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudDatastore.Types.Sum where

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

-- | The type of commit to perform. Either TRANSACTIONAL or
-- NON_TRANSACTIONAL.
data CommitRequestMode
    = CRMNonTransactional
      -- ^ @NON_TRANSACTIONAL@
    | CRMTransactional
      -- ^ @TRANSACTIONAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommitRequestMode

-- | The operator for combining multiple filters. Only \"and\" is currently
-- supported.
data CompositeFilterOperator
    = CFOAnd
      -- ^ @AND@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CompositeFilterOperator

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

-- | The direction to order by. One of ascending or descending. Optional,
-- defaults to ascending.
data PropertyOrderDirection
    = PODAscending
      -- ^ @ASCENDING@
    | PODDescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PropertyOrderDirection

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
