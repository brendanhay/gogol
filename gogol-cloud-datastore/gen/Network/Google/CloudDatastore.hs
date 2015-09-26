{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudDatastore
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for accessing Google Cloud Datastore.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference>
module Network.Google.CloudDatastore
    (
    -- * Resources
      CloudDatastore
    , DatasetsAPI
    , DatasetsBeginTransaction
    , DatasetsAllocateIds
    , DatasetsRunQuery
    , DatasetsRollback
    , DatasetsLookup
    , DatasetsCommit

    -- * Types

    -- ** AllocateIdsRequest
    , AllocateIdsRequest
    , allocateIdsRequest
    , airKeys

    -- ** AllocateIdsResponse
    , AllocateIdsResponse
    , allocateIdsResponse
    , aKeys
    , aHeader

    -- ** BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrIsolationLevel

    -- ** BeginTransactionRequestIsolationLevel
    , BeginTransactionRequestIsolationLevel (..)

    -- ** BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction
    , btrHeader

    -- ** CommitRequest
    , CommitRequest
    , commitRequest
    , crMode
    , crMutation
    , crTransaction
    , crIgnoreReadOnly

    -- ** CommitRequestMode
    , CommitRequestMode (..)

    -- ** CommitResponse
    , CommitResponse
    , commitResponse
    , crMutationResult
    , crHeader

    -- ** CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOperator
    , cfFilters

    -- ** CompositeFilterOperator
    , CompositeFilterOperator (..)

    -- ** Entity
    , Entity
    , entity
    , eKey
    , eProperties

    -- ** EntityProperties
    , EntityProperties
    , entityProperties

    -- ** EntityResult
    , EntityResult
    , entityResult
    , erEntity

    -- ** Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fPropertyFilter

    -- ** GqlQuery
    , GqlQuery
    , gqlQuery
    , gqAllowLiteral
    , gqNumberArgs
    , gqQueryString
    , gqNameArgs

    -- ** GqlQueryArg
    , GqlQueryArg
    , gqlQueryArg
    , gqaCursor
    , gqaValue
    , gqaName

    -- ** Key
    , Key
    , key
    , keyPartitionId
    , keyPath

    -- ** KeyPathElement
    , KeyPathElement
    , keyPathElement
    , kpeKind
    , kpeName
    , kpeId

    -- ** KindExpression
    , KindExpression
    , kindExpression
    , keName

    -- ** LookupRequest
    , LookupRequest
    , lookupRequest
    , lrKeys
    , lrReadOptions

    -- ** LookupResponse
    , LookupResponse
    , lookupResponse
    , lrDeferred
    , lrFound
    , lrMissing
    , lrHeader

    -- ** Mutation
    , Mutation
    , mutation
    , mInsert
    , mForce
    , mInsertAutoId
    , mUpsert
    , mDelete
    , mUpdate

    -- ** MutationResult
    , MutationResult
    , mutationResult
    , mrInsertAutoIdKeys
    , mrIndexUpdates

    -- ** PartitionId
    , PartitionId
    , partitionId
    , piNamespace
    , piDatasetId

    -- ** Property
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

    -- ** PropertyExpression
    , PropertyExpression
    , propertyExpression
    , peProperty
    , peAggregationFunction

    -- ** PropertyExpressionAggregationFunction
    , PropertyExpressionAggregationFunction (..)

    -- ** PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOperator
    , pfValue

    -- ** PropertyFilterOperator
    , PropertyFilterOperator (..)

    -- ** PropertyOrder
    , PropertyOrder
    , propertyOrder
    , poProperty
    , poDirection

    -- ** PropertyOrderDirection
    , PropertyOrderDirection (..)

    -- ** PropertyReference
    , PropertyReference
    , propertyReference
    , prName

    -- ** Query
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

    -- ** QueryResultBatch
    , QueryResultBatch
    , queryResultBatch
    , qrbSkippedResults
    , qrbEntityResultType
    , qrbEntityResults
    , qrbMoreResults
    , qrbEndCursor

    -- ** QueryResultBatchEntityResultType
    , QueryResultBatchEntityResultType (..)

    -- ** QueryResultBatchMoreResults
    , QueryResultBatchMoreResults (..)

    -- ** ReadOptions
    , ReadOptions
    , readOptions
    , roReadConsistency
    , roTransaction

    -- ** ReadOptionsReadConsistency
    , ReadOptionsReadConsistency (..)

    -- ** ResponseHeader
    , ResponseHeader
    , responseHeader
    , rhKind

    -- ** RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- ** RollbackResponse
    , RollbackResponse
    , rollbackResponse
    , rrHeader

    -- ** RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrPartitionId
    , rqrGqlQuery
    , rqrQuery
    , rqrReadOptions

    -- ** RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rqrBatch
    , rqrHeader

    -- ** Value
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

import           Network.Google.CloudDatastore.Types

{- $resources
TODO
-}

type CloudDatastore = DatasetsAPI

type DatasetsAPI =
     DatasetsAllocateIds :<|>
       DatasetsRunQuery :<|>
         DatasetsRollback :<|>
           DatasetsLookup :<|>
             DatasetsCommit :<|> DatasetsBeginTransaction

-- | Begin a new transaction.
type DatasetsBeginTransaction =
     "datastore" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> "beginTransaction"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Allocate IDs for incomplete keys (useful for referencing an entity
-- before it is inserted).
type DatasetsAllocateIds =
     "datastore" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> "allocateIds"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Query for entities.
type DatasetsRunQuery =
     "datastore" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> "runQuery"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Roll back a transaction.
type DatasetsRollback =
     "datastore" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> "rollback"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Look up some entities by key.
type DatasetsLookup =
     "datastore" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> "lookup"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Commit a transaction, optionally creating, deleting or modifying some
-- entities.
type DatasetsCommit =
     "datastore" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> "commit"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
