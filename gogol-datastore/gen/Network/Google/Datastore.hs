{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Datastore
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for accessing Google Cloud Datastore.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference>
module Network.Google.Datastore
    (
    -- * API
      DatastoreAPI
    , datastoreAPI
    , datastoreURL

    -- * Service Methods

    -- * REST Resources

    -- ** DatastoreDatasetsAllocateIds
    , module Network.Google.Resource.Datastore.Datasets.AllocateIds

    -- ** DatastoreDatasetsBeginTransaction
    , module Network.Google.Resource.Datastore.Datasets.BeginTransaction

    -- ** DatastoreDatasetsCommit
    , module Network.Google.Resource.Datastore.Datasets.Commit

    -- ** DatastoreDatasetsLookup
    , module Network.Google.Resource.Datastore.Datasets.Lookup

    -- ** DatastoreDatasetsRollback
    , module Network.Google.Resource.Datastore.Datasets.Rollback

    -- ** DatastoreDatasetsRunQuery
    , module Network.Google.Resource.Datastore.Datasets.RunQuery

    -- * Types

    -- ** PropertyOrderDirection
    , PropertyOrderDirection (..)

    -- ** RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- ** PartitionId
    , PartitionId
    , partitionId
    , piNamespace
    , piDatasetId

    -- ** QueryResultBatch
    , QueryResultBatch
    , queryResultBatch
    , qrbSkippedResults
    , qrbEntityResultType
    , qrbEntityResults
    , qrbMoreResults
    , qrbEndCursor

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

    -- ** AllocateIdsRequest
    , AllocateIdsRequest
    , allocateIdsRequest
    , airKeys

    -- ** EntityProperties
    , EntityProperties
    , entityProperties

    -- ** BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrIsolationLevel

    -- ** RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrPartitionId
    , rqrGqlQuery
    , rqrQuery
    , rqrReadOptions

    -- ** CompositeFilterOperator
    , CompositeFilterOperator (..)

    -- ** CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOperator
    , cfFilters

    -- ** QueryResultBatchEntityResultType
    , QueryResultBatchEntityResultType (..)

    -- ** BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction
    , btrHeader

    -- ** QueryResultBatchMoreResults
    , QueryResultBatchMoreResults (..)

    -- ** RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rqrBatch
    , rqrHeader

    -- ** MutationResult
    , MutationResult
    , mutationResult
    , mrInsertAutoIdKeys
    , mrIndexUpdates

    -- ** GqlQuery
    , GqlQuery
    , gqlQuery
    , gqAllowLiteral
    , gqNumberArgs
    , gqQueryString
    , gqNameArgs

    -- ** AllocateIdsResponse
    , AllocateIdsResponse
    , allocateIdsResponse
    , aKeys
    , aHeader

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

    -- ** LookupRequest
    , LookupRequest
    , lookupRequest
    , lrKeys
    , lrReadOptions

    -- ** ReadOptionsReadConsistency
    , ReadOptionsReadConsistency (..)

    -- ** Mutation
    , Mutation
    , mutation
    , mInsert
    , mForce
    , mInsertAutoId
    , mUpsert
    , mDelete
    , mUpdate

    -- ** ResponseHeader
    , ResponseHeader
    , responseHeader
    , rhKind

    -- ** GqlQueryArg
    , GqlQueryArg
    , gqlQueryArg
    , gqaCursor
    , gqaValue
    , gqaName

    -- ** PropertyReference
    , PropertyReference
    , propertyReference
    , prName

    -- ** KeyPathElement
    , KeyPathElement
    , keyPathElement
    , kpeKind
    , kpeName
    , kpeId

    -- ** Key
    , Key
    , key
    , keyPartitionId
    , keyPath

    -- ** PropertyFilterOperator
    , PropertyFilterOperator (..)

    -- ** PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOperator
    , pfValue

    -- ** CommitResponse
    , CommitResponse
    , commitResponse
    , crMutationResult
    , crHeader

    -- ** EntityResult
    , EntityResult
    , entityResult
    , erEntity

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

    -- ** KindExpression
    , KindExpression
    , kindExpression
    , keName

    -- ** ReadOptions
    , ReadOptions
    , readOptions
    , roReadConsistency
    , roTransaction

    -- ** RollbackResponse
    , RollbackResponse
    , rollbackResponse
    , rrHeader

    -- ** PropertyExpression
    , PropertyExpression
    , propertyExpression
    , peProperty
    , peAggregationFunction

    -- ** BeginTransactionRequestIsolationLevel
    , BeginTransactionRequestIsolationLevel (..)

    -- ** Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fPropertyFilter

    -- ** CommitRequest
    , CommitRequest
    , commitRequest
    , crMode
    , crMutation
    , crTransaction
    , crIgnoreReadOnly

    -- ** CommitRequestMode
    , CommitRequestMode (..)

    -- ** PropertyExpressionAggregationFunction
    , PropertyExpressionAggregationFunction (..)

    -- ** Entity
    , Entity
    , entity
    , eKey
    , eProperties

    -- ** LookupResponse
    , LookupResponse
    , lookupResponse
    , lrDeferred
    , lrFound
    , lrMissing
    , lrHeader

    -- ** PropertyOrder
    , PropertyOrder
    , propertyOrder
    , poProperty
    , poDirection

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Datastore.Datasets.AllocateIds
import           Network.Google.Resource.Datastore.Datasets.BeginTransaction
import           Network.Google.Resource.Datastore.Datasets.Commit
import           Network.Google.Resource.Datastore.Datasets.Lookup
import           Network.Google.Resource.Datastore.Datasets.Rollback
import           Network.Google.Resource.Datastore.Datasets.RunQuery

{- $resources
TODO
-}

type DatastoreAPI =
     DatasetsBeginTransactionResource :<|>
       DatasetsAllocateIdsResource
       :<|> DatasetsRunQueryResource
       :<|> DatasetsRollbackResource
       :<|> DatasetsLookupResource
       :<|> DatasetsCommitResource

datastoreAPI :: Proxy DatastoreAPI
datastoreAPI = Proxy
