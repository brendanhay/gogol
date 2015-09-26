{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.CloudDatastore.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudDatastore.Types
    (
    -- * API Definition
      datastore


    -- * AllocateIdsRequest
    , AllocateIdsRequest
    , allocateIdsRequest
    , airKeys

    -- * AllocateIdsResponse
    , AllocateIdsResponse
    , allocateIdsResponse
    , aKeys
    , aHeader

    -- * BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrIsolationLevel

    -- * BeginTransactionRequestIsolationLevel
    , BeginTransactionRequestIsolationLevel (..)

    -- * BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction
    , btrHeader

    -- * CommitRequest
    , CommitRequest
    , commitRequest
    , crMode
    , crMutation
    , crTransaction
    , crIgnoreReadOnly

    -- * CommitRequestMode
    , CommitRequestMode (..)

    -- * CommitResponse
    , CommitResponse
    , commitResponse
    , crMutationResult
    , crHeader

    -- * CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOperator
    , cfFilters

    -- * CompositeFilterOperator
    , CompositeFilterOperator (..)

    -- * Entity
    , Entity
    , entity
    , eKey
    , eProperties

    -- * EntityProperties
    , EntityProperties
    , entityProperties

    -- * EntityResult
    , EntityResult
    , entityResult
    , erEntity

    -- * Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fPropertyFilter

    -- * GqlQuery
    , GqlQuery
    , gqlQuery
    , gqAllowLiteral
    , gqNumberArgs
    , gqQueryString
    , gqNameArgs

    -- * GqlQueryArg
    , GqlQueryArg
    , gqlQueryArg
    , gqaCursor
    , gqaValue
    , gqaName

    -- * Key
    , Key
    , key
    , keyPartitionId
    , keyPath

    -- * KeyPathElement
    , KeyPathElement
    , keyPathElement
    , kpeKind
    , kpeName
    , kpeId

    -- * KindExpression
    , KindExpression
    , kindExpression
    , keName

    -- * LookupRequest
    , LookupRequest
    , lookupRequest
    , lrKeys
    , lrReadOptions

    -- * LookupResponse
    , LookupResponse
    , lookupResponse
    , lrDeferred
    , lrFound
    , lrMissing
    , lrHeader

    -- * Mutation
    , Mutation
    , mutation
    , mInsert
    , mForce
    , mInsertAutoId
    , mUpsert
    , mDelete
    , mUpdate

    -- * MutationResult
    , MutationResult
    , mutationResult
    , mrInsertAutoIdKeys
    , mrIndexUpdates

    -- * PartitionId
    , PartitionId
    , partitionId
    , piNamespace
    , piDatasetId

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

    -- * PropertyExpression
    , PropertyExpression
    , propertyExpression
    , peProperty
    , peAggregationFunction

    -- * PropertyExpressionAggregationFunction
    , PropertyExpressionAggregationFunction (..)

    -- * PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOperator
    , pfValue

    -- * PropertyFilterOperator
    , PropertyFilterOperator (..)

    -- * PropertyOrder
    , PropertyOrder
    , propertyOrder
    , poProperty
    , poDirection

    -- * PropertyOrderDirection
    , PropertyOrderDirection (..)

    -- * PropertyReference
    , PropertyReference
    , propertyReference
    , prName

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

    -- * QueryResultBatch
    , QueryResultBatch
    , queryResultBatch
    , qrbSkippedResults
    , qrbEntityResultType
    , qrbEntityResults
    , qrbMoreResults
    , qrbEndCursor

    -- * QueryResultBatchEntityResultType
    , QueryResultBatchEntityResultType (..)

    -- * QueryResultBatchMoreResults
    , QueryResultBatchMoreResults (..)

    -- * ReadOptions
    , ReadOptions
    , readOptions
    , roReadConsistency
    , roTransaction

    -- * ReadOptionsReadConsistency
    , ReadOptionsReadConsistency (..)

    -- * ResponseHeader
    , ResponseHeader
    , responseHeader
    , rhKind

    -- * RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- * RollbackResponse
    , RollbackResponse
    , rollbackResponse
    , rrHeader

    -- * RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrPartitionId
    , rqrGqlQuery
    , rqrQuery
    , rqrReadOptions

    -- * RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rqrBatch
    , rqrHeader

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
    ) where

import           Network.Google.CloudDatastore.Types.Product
import           Network.Google.CloudDatastore.Types.Sum
import           Network.Google.Prelude

datastore :: a
datastore = error "datastore"
