{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Datastore.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Datastore.Types
    (
    -- * Service Configuration
      datastoreService

    -- * OAuth Scopes
    , cloudPlatformScope
    , datastoreScope

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * PropertyOrderDirection
    , PropertyOrderDirection (..)

    -- * RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- * PartitionId
    , PartitionId
    , partitionId
    , piNamespaceId
    , piProjectId

    -- * QueryResultBatch
    , QueryResultBatch
    , queryResultBatch
    , qrbSkippedResults
    , qrbSkippedCursor
    , qrbEntityResultType
    , qrbEntityResults
    , qrbMoreResults
    , qrbEndCursor

    -- * CompositeFilterOp
    , CompositeFilterOp (..)

    -- * EntityProperties
    , EntityProperties
    , entityProperties
    , epAddtional

    -- * BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest

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
    , cfOp
    , cfFilters

    -- * QueryResultBatchMoreResults
    , QueryResultBatchMoreResults (..)

    -- * BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction

    -- * MutationResult
    , MutationResult
    , mutationResult
    , mrKey

    -- * AllocateIdsResponse
    , AllocateIdsResponse
    , allocateIdsResponse
    , aKeys

    -- * GqlQuery
    , GqlQuery
    , gqlQuery
    , gqPositionalBindings
    , gqNamedBindings
    , gqQueryString
    , gqAllowLiterals

    -- * RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rBatch
    , rQuery

    -- * Value
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

    -- * ValueNullValue
    , ValueNullValue (..)

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
    , mUpsert
    , mDelete
    , mUpdate

    -- * GqlQueryNamedBindings
    , GqlQueryNamedBindings
    , gqlQueryNamedBindings
    , gqnbAddtional

    -- * PropertyReference
    , PropertyReference
    , propertyReference
    , prName

    -- * Key
    , Key
    , key
    , kPartitionId
    , kPath

    -- * PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOp
    , pfValue

    -- * Query
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

    -- * ArrayValue
    , ArrayValue
    , arrayValue
    , avValues

    -- * EntityResult
    , EntityResult
    , entityResult
    , erCursor
    , erEntity

    -- * Xgafv
    , Xgafv (..)

    -- * CommitResponse
    , CommitResponse
    , commitResponse
    , crIndexUpdates
    , crMutationResults

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

    -- * Projection
    , Projection
    , projection
    , pProperty

    -- * Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fPropertyFilter

    -- * PropertyFilterOp
    , PropertyFilterOp (..)

    -- * CommitRequest
    , CommitRequest
    , commitRequest
    , crMutations
    , crMode
    , crTransaction

    -- * CommitRequestMode
    , CommitRequestMode (..)

    -- * PathElement
    , PathElement
    , pathElement
    , peKind
    , peName
    , peId

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

    -- * PropertyOrder
    , PropertyOrder
    , propertyOrder
    , poProperty
    , poDirection

    -- * GqlQueryParameter
    , GqlQueryParameter
    , gqlQueryParameter
    , gqpCursor
    , gqpValue
    ) where

import           Network.Google.Datastore.Types.Product
import           Network.Google.Datastore.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta3' of the Google Cloud Datastore API. This contains the host and root path used as a starting point for constructing service requests.
datastoreService :: ServiceConfig
datastoreService
  = defaultService (ServiceId "datastore:v1beta3")
      "datastore.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View and manage your Google Cloud Datastore data
datastoreScope :: Proxy '["https://www.googleapis.com/auth/datastore"]
datastoreScope = Proxy;
