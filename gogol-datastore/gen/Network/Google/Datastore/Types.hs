{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Datastore.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Datastore.Types
    (
    -- * Service URL
      datastoreURL

    -- * ReadConsistency
    , ReadConsistency (..)

    -- * RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- * PartitionId
    , PartitionId
    , partitionId
    , piNamespace
    , piDatasetId

    -- * QueryResultBatch
    , QueryResultBatch
    , queryResultBatch
    , qrbSkippedResults
    , qrbEntityResultType
    , qrbEntityResults
    , qrbMoreResults
    , qrbEndCursor

    -- * Property
    , Property
    , property
    , pKeyValue
    , pBlobKeyValue
    , pDateTimeValue
    , pIntegerValue
    , pEntityValue
    , pDoubleValue
    , pStringValue
    , pListValue
    , pIndexed
    , pBooleanValue
    , pMeaning
    , pBlobValue

    -- * AllocateIdsRequest
    , AllocateIdsRequest
    , allocateIdsRequest
    , airKeys

    -- * BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrIsolationLevel

    -- * EntityResultType
    , EntityResultType (..)

    -- * RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrPartitionId
    , rqrGqlQuery
    , rqrQuery
    , rqrReadOptions

    -- * CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOperator
    , cfFilters

    -- * Direction
    , Direction (..)

    -- * Operator
    , Operator (..)

    -- * BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction
    , btrHeader

    -- * RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rqrBatch
    , rqrHeader

    -- * MutationResult
    , MutationResult
    , mutationResult
    , mrInsertAutoIdKeys
    , mrIndexUpdates

    -- * GqlQuery
    , GqlQuery
    , gqlQuery
    , gqAllowLiteral
    , gqNumberArgs
    , gqQueryString
    , gqNameArgs

    -- * AllocateIdsResponse
    , AllocateIdsResponse
    , allocateIdsResponse
    , aKeys
    , aHeader

    -- * Mode
    , Mode (..)

    -- * Value
    , Value
    , value
    , vKeyValue
    , vBlobKeyValue
    , vDateTimeValue
    , vIntegerValue
    , vEntityValue
    , vDoubleValue
    , vStringValue
    , vListValue
    , vIndexed
    , vBooleanValue
    , vMeaning
    , vBlobValue

    -- * LookupRequest
    , LookupRequest
    , lookupRequest
    , lrKeys
    , lrReadOptions

    -- * AggregationFunction
    , AggregationFunction (..)

    -- * Mutation
    , Mutation
    , mutation
    , mInsert
    , mForce
    , mInsertAutoId
    , mUpsert
    , mDelete
    , mUpdate

    -- * ResponseHeader
    , ResponseHeader
    , responseHeader
    , rhKind

    -- * GqlQueryArg
    , GqlQueryArg
    , gqlQueryArg
    , gqaCursor
    , gqaValue
    , gqaName

    -- * PropertyReference
    , PropertyReference
    , propertyReference
    , prName

    -- * KeyPathElement
    , KeyPathElement
    , keyPathElement
    , kpeKind
    , kpeName
    , kpeId

    -- * Key
    , Key
    , key
    , kPartitionId
    , kPath

    -- * PropertyFilterOperator
    , PropertyFilterOperator (..)

    -- * MoreResults
    , MoreResults (..)

    -- * PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOperator
    , pfValue

    -- * IsolationLevel
    , IsolationLevel (..)

    -- * CommitResponse
    , CommitResponse
    , commitResponse
    , crMutationResult
    , crHeader

    -- * EntityResult
    , EntityResult
    , entityResult
    , erEntity

    -- * Query
    , Query
    , query
    , qGroupBy
    , qStartCursor
    , qOffset
    , qEndCursor
    , qLimit
    , qProjection
    , qFilter
    , qKinds
    , qOrder

    -- * KindExpression
    , KindExpression
    , kindExpression
    , keName

    -- * ReadOptions
    , ReadOptions
    , readOptions
    , roReadConsistency
    , roTransaction

    -- * RollbackResponse
    , RollbackResponse
    , rollbackResponse
    , rrHeader

    -- * PropertyExpression
    , PropertyExpression
    , propertyExpression
    , peProperty
    , peAggregationFunction

    -- * Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fPropertyFilter

    -- * CommitRequest
    , CommitRequest
    , commitRequest
    , crMode
    , crMutation
    , crTransaction
    , crIgnoreReadOnly

    -- * Entity
    , Entity
    , entity
    , eKey
    , eProperties

    -- * LookupResponse
    , LookupResponse
    , lookupResponse
    , lrDeferred
    , lrFound
    , lrMissing
    , lrHeader

    -- * PropertyOrder
    , PropertyOrder
    , propertyOrder
    , poProperty
    , poDirection

    -- * Properties
    , Properties
    , properties
    ) where

import           Network.Google.Datastore.Types.Product
import           Network.Google.Datastore.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta2' of the Google Cloud Datastore API.
datastoreURL :: BaseUrl
datastoreURL
  = BaseUrl Https
      "https://www.googleapis.com/datastore/v1beta2/datasets/"
      443
