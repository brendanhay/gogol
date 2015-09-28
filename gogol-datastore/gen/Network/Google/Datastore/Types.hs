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

    -- * PropertyReference
    , PropertyReference
    , propertyReference
    , prName

    -- * GqlQueryArg
    , GqlQueryArg
    , gqlQueryArg
    , gqaCursor
    , gqaValue
    , gqaName

    -- * ResponseHeader
    , ResponseHeader
    , responseHeader
    , rhKind

    -- * KeyPathElement
    , KeyPathElement
    , keyPathElement
    , kpeKind
    , kpeName
    , kpeId

    -- * PropertyFilterOperator
    , PropertyFilterOperator (..)

    -- * PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOperator
    , pfValue

    -- * Key
    , Key
    , key
    , keyPartitionId
    , keyPath

    -- * AllocateIdsRequest
    , AllocateIdsRequest
    , allocateIdsRequest
    , airKeys

    -- * RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrPartitionId
    , rqrGqlQuery
    , rqrQuery
    , rqrReadOptions

    -- * BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrIsolationLevel

    -- * Alt
    , Alt (..)

    -- * RollbackResponse
    , RollbackResponse
    , rollbackResponse
    , rrHeader

    -- * ReadOptionsReadConsistency
    , ReadOptionsReadConsistency (..)

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

    -- * QueryResultBatchMoreResults
    , QueryResultBatchMoreResults (..)

    -- * Entity
    , Entity
    , entity
    , eKey
    , eProperties

    -- * CompositeFilterOperator
    , CompositeFilterOperator (..)

    -- * PropertyOrder
    , PropertyOrder
    , propertyOrder
    , poProperty
    , poDirection

    -- * LookupResponse
    , LookupResponse
    , lookupResponse
    , lrDeferred
    , lrFound
    , lrMissing
    , lrHeader

    -- * PartitionId
    , PartitionId
    , partitionId
    , piNamespace
    , piDatasetId

    -- * PropertyOrderDirection
    , PropertyOrderDirection (..)

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

    -- * QueryResultBatch
    , QueryResultBatch
    , queryResultBatch
    , qrbSkippedResults
    , qrbEntityResultType
    , qrbEntityResults
    , qrbMoreResults
    , qrbEndCursor

    -- * RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- * KindExpression
    , KindExpression
    , kindExpression
    , keName

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

    -- * ReadOptions
    , ReadOptions
    , readOptions
    , roReadConsistency
    , roTransaction

    -- * CommitResponse
    , CommitResponse
    , commitResponse
    , crMutationResult
    , crHeader

    -- * EntityResult
    , EntityResult
    , entityResult
    , erEntity

    -- * CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOperator
    , cfFilters

    -- * RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rqrBatch
    , rqrHeader

    -- * CommitRequestMode
    , CommitRequestMode (..)

    -- * MutationResult
    , MutationResult
    , mutationResult
    , mrInsertAutoIdKeys
    , mrIndexUpdates

    -- * BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction
    , btrHeader

    -- * PropertyExpressionAggregationFunction
    , PropertyExpressionAggregationFunction (..)

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

    -- * BeginTransactionRequestIsolationLevel
    , BeginTransactionRequestIsolationLevel (..)

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

    -- * QueryResultBatchEntityResultType
    , QueryResultBatchEntityResultType (..)

    -- * EntityProperties
    , EntityProperties
    , entityProperties

    -- * Mutation
    , Mutation
    , mutation
    , mInsert
    , mForce
    , mInsertAutoId
    , mUpsert
    , mDelete
    , mUpdate
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
