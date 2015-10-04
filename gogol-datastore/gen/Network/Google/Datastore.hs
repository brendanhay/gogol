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

    -- ** ReadConsistency
    , ReadConsistency (..)

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

    -- ** BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrIsolationLevel

    -- ** EntityResultType
    , EntityResultType (..)

    -- ** RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrPartitionId
    , rqrGqlQuery
    , rqrQuery
    , rqrReadOptions

    -- ** CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOperator
    , cfFilters

    -- ** Direction
    , Direction (..)

    -- ** Operator
    , Operator (..)

    -- ** BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction
    , btrHeader

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

    -- ** Mode
    , Mode (..)

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

    -- ** AggregationFunction
    , AggregationFunction (..)

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
    , kPartitionId
    , kPath

    -- ** PropertyFilterOperator
    , PropertyFilterOperator (..)

    -- ** MoreResults
    , MoreResults (..)

    -- ** PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOperator
    , pfValue

    -- ** IsolationLevel
    , IsolationLevel (..)

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

    -- ** Properties
    , Properties
    , properties
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
