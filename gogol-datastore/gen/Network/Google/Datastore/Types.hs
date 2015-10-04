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

    -- * PropertyOrderDirection
    , PropertyOrderDirection (..)

    -- * RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

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

    -- * EntityProperties
    , EntityProperties
    , entityProperties

    -- * BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrIsolationLevel

    -- * RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrPartitionId
    , rqrGqlQuery
    , rqrQuery
    , rqrReadOptions

    -- * AllocateIdsRequest
    , AllocateIdsRequest
    , allocateIdsRequest
    , airKeys

    -- * QueryResultBatchEntityResultType
    , QueryResultBatchEntityResultType (..)

    -- * CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOperator
    , cfFilters

    -- * CompositeFilterOperator
    , CompositeFilterOperator (..)

    -- * QueryResultBatchMoreResults
    , QueryResultBatchMoreResults (..)

    -- * BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction
    , btrHeader

    -- * MutationResult
    , MutationResult
    , mutationResult
    , mrInsertAutoIdKeys
    , mrIndexUpdates

    -- * AllocateIdsResponse
    , AllocateIdsResponse
    , allocateIdsResponse
    , aKeys
    , aHeader

    -- * GqlQuery
    , GqlQuery
    , gqlQuery
    , gqAllowLiteral
    , gqNumberArgs
    , gqQueryString
    , gqNameArgs

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

    -- * LookupRequest
    , LookupRequest
    , lookupRequest
    , lrKeys
    , lrReadOptions

    -- * ReadOptionsReadConsistency
    , ReadOptionsReadConsistency (..)

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

    -- * KeyPathElement
    , KeyPathElement
    , keyPathElement
    , kpeKind
    , kpeName
    , kpeId

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

    -- * Key
    , Key
    , key
    , kPartitionId
    , kPath

    -- * PropertyFilterOperator
    , PropertyFilterOperator (..)

    -- * PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOperator
    , pfValue

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

    -- * EntityResult
    , EntityResult
    , entityResult
    , erEntity

    -- * CommitResponse
    , CommitResponse
    , commitResponse
    , crMutationResult
    , crHeader

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

    -- * BeginTransactionRequestIsolationLevel
    , BeginTransactionRequestIsolationLevel (..)

    -- * CommitRequest
    , CommitRequest
    , commitRequest
    , crMode
    , crMutation
    , crTransaction
    , crIgnoreReadOnly

    -- * CommitRequestMode
    , CommitRequestMode (..)

    -- * PropertyExpressionAggregationFunction
    , PropertyExpressionAggregationFunction (..)

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
