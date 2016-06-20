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
-- Accesses the schemaless NoSQL database to provide fully managed, robust,
-- scalable storage for your application.
--
-- /See:/ <https://cloud.google.com/datastore/ Google Cloud Datastore API Reference>
module Network.Google.Datastore
    (
    -- * Service Configuration
      datastoreService

    -- * OAuth Scopes
    , cloudPlatformScope
    , datastoreScope

    -- * API Declaration
    , DatastoreAPI

    -- * Resources

    -- ** datastore.projects.allocateIds
    , module Network.Google.Resource.Datastore.Projects.AllocateIds

    -- ** datastore.projects.beginTransaction
    , module Network.Google.Resource.Datastore.Projects.BeginTransaction

    -- ** datastore.projects.commit
    , module Network.Google.Resource.Datastore.Projects.Commit

    -- ** datastore.projects.lookup
    , module Network.Google.Resource.Datastore.Projects.Lookup

    -- ** datastore.projects.rollback
    , module Network.Google.Resource.Datastore.Projects.Rollback

    -- ** datastore.projects.runQuery
    , module Network.Google.Resource.Datastore.Projects.RunQuery

    -- * Types

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** PropertyOrderDirection
    , PropertyOrderDirection (..)

    -- ** RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- ** PartitionId
    , PartitionId
    , partitionId
    , piNamespaceId
    , piProjectId

    -- ** QueryResultBatch
    , QueryResultBatch
    , queryResultBatch
    , qrbSkippedResults
    , qrbSkippedCursor
    , qrbEntityResultType
    , qrbEntityResults
    , qrbMoreResults
    , qrbEndCursor

    -- ** CompositeFilterOp
    , CompositeFilterOp (..)

    -- ** EntityProperties
    , EntityProperties
    , entityProperties
    , epAddtional

    -- ** BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest

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
    , cfOp
    , cfFilters

    -- ** QueryResultBatchMoreResults
    , QueryResultBatchMoreResults (..)

    -- ** BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction

    -- ** MutationResult
    , MutationResult
    , mutationResult
    , mrKey

    -- ** AllocateIdsResponse
    , AllocateIdsResponse
    , allocateIdsResponse
    , aKeys

    -- ** GqlQuery
    , GqlQuery
    , gqlQuery
    , gqPositionalBindings
    , gqNamedBindings
    , gqQueryString
    , gqAllowLiterals

    -- ** RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rBatch
    , rQuery

    -- ** Value
    , Value
    , value
    , vKeyValue
    , vGeoPointValue
    , vIntegerValue
    , vTimestampValue
    , vEntityValue
    , vExcludeFromIndexes
    , vDoubleValue
    , vStringValue
    , vBooleanValue
    , vMeaning
    , vArrayValue
    , vNullValue
    , vBlobValue

    -- ** ValueNullValue
    , ValueNullValue (..)

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
    , mUpsert
    , mDelete
    , mUpdate

    -- ** GqlQueryNamedBindings
    , GqlQueryNamedBindings
    , gqlQueryNamedBindings
    , gqnbAddtional

    -- ** PropertyReference
    , PropertyReference
    , propertyReference
    , prName

    -- ** Key
    , Key
    , key
    , kPartitionId
    , kPath

    -- ** PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOp
    , pfValue

    -- ** Query
    , Query
    , query
    , qStartCursor
    , qOffSet
    , qKind
    , qDistinctOn
    , qEndCursor
    , qLimit
    , qProjection
    , qFilter
    , qOrder

    -- ** ArrayValue
    , ArrayValue
    , arrayValue
    , avValues

    -- ** EntityResult
    , EntityResult
    , entityResult
    , erCursor
    , erEntity

    -- ** Xgafv
    , Xgafv (..)

    -- ** CommitResponse
    , CommitResponse
    , commitResponse
    , crIndexUpdates
    , crMutationResults

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

    -- ** Projection
    , Projection
    , projection
    , pProperty

    -- ** Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fPropertyFilter

    -- ** PropertyFilterOp
    , PropertyFilterOp (..)

    -- ** CommitRequest
    , CommitRequest
    , commitRequest
    , crMutations
    , crMode
    , crTransaction

    -- ** CommitRequestMode
    , CommitRequestMode (..)

    -- ** PathElement
    , PathElement
    , pathElement
    , peKind
    , peName
    , peId

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

    -- ** PropertyOrder
    , PropertyOrder
    , propertyOrder
    , poProperty
    , poDirection

    -- ** GqlQueryParameter
    , GqlQueryParameter
    , gqlQueryParameter
    , gqpCursor
    , gqpValue
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Datastore.Projects.AllocateIds
import           Network.Google.Resource.Datastore.Projects.BeginTransaction
import           Network.Google.Resource.Datastore.Projects.Commit
import           Network.Google.Resource.Datastore.Projects.Lookup
import           Network.Google.Resource.Datastore.Projects.Rollback
import           Network.Google.Resource.Datastore.Projects.RunQuery

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Datastore API service.
type DatastoreAPI =
     ProjectsBeginTransactionResource :<|>
       ProjectsAllocateIdsResource
       :<|> ProjectsRunQueryResource
       :<|> ProjectsRollbackResource
       :<|> ProjectsLookupResource
       :<|> ProjectsCommitResource
