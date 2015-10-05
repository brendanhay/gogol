{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | API for accessing Google Cloud Datastore.
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

    -- ** AllocateIdsRequest
    , AllocateIdsRequest
    , allocateIdsRequest
    , airKeys

    -- ** QueryResultBatchEntityResultType
    , QueryResultBatchEntityResultType (..)

    -- ** CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOperator
    , cfFilters

    -- ** CompositeFilterOperator
    , CompositeFilterOperator (..)

    -- ** QueryResultBatchMoreResults
    , QueryResultBatchMoreResults (..)

    -- ** BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction
    , btrHeader

    -- ** MutationResult
    , MutationResult
    , mutationResult
    , mrInsertAutoIdKeys
    , mrIndexUpdates

    -- ** AllocateIdsResponse
    , AllocateIdsResponse
    , allocateIdsResponse
    , aKeys
    , aHeader

    -- ** GqlQuery
    , GqlQuery
    , gqlQuery
    , gqAllowLiteral
    , gqNumberArgs
    , gqQueryString
    , gqNameArgs

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

    -- ** KeyPathElement
    , KeyPathElement
    , keyPathElement
    , kpeKind
    , kpeName
    , kpeId

    -- ** PropertyReference
    , PropertyReference
    , propertyReference
    , prName

    -- ** GqlQueryArg
    , GqlQueryArg
    , gqlQueryArg
    , gqaCursor
    , gqaValue
    , gqaName

    -- ** Key
    , Key
    , key
    , kPartitionId
    , kPath

    -- ** PropertyFilterOperator
    , PropertyFilterOperator (..)

    -- ** PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOperator
    , pfValue

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

    -- ** EntityResult
    , EntityResult
    , entityResult
    , erEntity

    -- ** CommitResponse
    , CommitResponse
    , commitResponse
    , crMutationResult
    , crHeader

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

    -- ** Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fPropertyFilter

    -- ** BeginTransactionRequestIsolationLevel
    , BeginTransactionRequestIsolationLevel (..)

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
