{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Datastore
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for accessing Google Cloud Datastore.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference>
module Network.Google.Datastore
    (
    -- * Service Configuration
      datastoreService

    -- * OAuth Scopes
    , authUserinfoEmailScope
    , authCloudPlatformScope
    , authDatastoreScope

    -- * API Declaration
    , DatastoreAPI

    -- * Resources

    -- ** datastore.datasets.allocateIds
    , module Network.Google.Resource.Datastore.DataSets.AllocateIds

    -- ** datastore.datasets.beginTransaction
    , module Network.Google.Resource.Datastore.DataSets.BeginTransaction

    -- ** datastore.datasets.commit
    , module Network.Google.Resource.Datastore.DataSets.Commit

    -- ** datastore.datasets.lookup
    , module Network.Google.Resource.Datastore.DataSets.Lookup

    -- ** datastore.datasets.rollback
    , module Network.Google.Resource.Datastore.DataSets.Rollback

    -- ** datastore.datasets.runQuery
    , module Network.Google.Resource.Datastore.DataSets.RunQuery

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
    , piDataSetId

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
    , epAddtional

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
    , qOffSet
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
import           Network.Google.Resource.Datastore.DataSets.AllocateIds
import           Network.Google.Resource.Datastore.DataSets.BeginTransaction
import           Network.Google.Resource.Datastore.DataSets.Commit
import           Network.Google.Resource.Datastore.DataSets.Lookup
import           Network.Google.Resource.Datastore.DataSets.Rollback
import           Network.Google.Resource.Datastore.DataSets.RunQuery

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Datastore API service.
type DatastoreAPI =
     DataSetsBeginTransactionResource :<|>
       DataSetsAllocateIdsResource
       :<|> DataSetsRunQueryResource
       :<|> DataSetsRollbackResource
       :<|> DataSetsLookupResource
       :<|> DataSetsCommitResource
