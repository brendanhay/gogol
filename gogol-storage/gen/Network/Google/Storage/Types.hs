{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Storage.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Storage.Types
    (
    -- * Service URL
      storageURL

    -- * ComposeRequestItemSourceObjects
    , ComposeRequestItemSourceObjects
    , composeRequestItemSourceObjects
    , crisoName
    , crisoObjectPreconditions
    , crisoGeneration

    -- * ObjectOwner
    , ObjectOwner
    , objectOwner
    , ooEntity
    , ooEntityId

    -- * Alt
    , Alt (..)

    -- * BucketAccessControl
    , BucketAccessControl
    , bucketAccessControl
    , bacEmail
    , bacEtag
    , bacKind
    , bacDomain
    , bacBucket
    , bacRole
    , bacSelfLink
    , bacId
    , bacEntity
    , bacEntityId

    -- * BucketItemCors
    , BucketItemCors
    , bucketItemCors
    , bicMaxAgeSeconds
    , bicOrigin
    , bicResponseHeader
    , bicMethod

    -- * Object
    , Object
    , object'
    , oEtag
    , oSize
    , oKind
    , oTimeDeleted
    , oCrc32c
    , oBucket
    , oOwner
    , oSelfLink
    , oMediaLink
    , oComponentCount
    , oName
    , oStorageClass
    , oContentEncoding
    , oMetadata
    , oId
    , oUpdated
    , oContentLanguage
    , oCacheControl
    , oMetageneration
    , oGeneration
    , oAcl
    , oContentDisposition
    , oMd5Hash
    , oContentType

    -- * ObjectAccessControls
    , ObjectAccessControls
    , objectAccessControls
    , oacKind
    , oacItems

    -- * ObjectsInsert'Projection
    , ObjectsInsert'Projection (..)

    -- * BucketsInsert'Projection
    , BucketsInsert'Projection (..)

    -- * BucketConditionItemRuleLifecycle
    , BucketConditionItemRuleLifecycle
    , bucketConditionItemRuleLifecycle
    , bcirlAge
    , bcirlIsLive
    , bcirlNumNewerVersions
    , bcirlCreatedBefore

    -- * BucketLifecycle
    , BucketLifecycle
    , bucketLifecycle
    , blRule

    -- * BucketActionItemRuleLifecycle
    , BucketActionItemRuleLifecycle
    , bucketActionItemRuleLifecycle
    , bairlType

    -- * BucketAccessControls
    , BucketAccessControls
    , bucketAccessControls
    , bKind
    , bItems

    -- * Bucket
    , Bucket
    , bucket
    , bucEtag
    , bucLocation
    , bucKind
    , bucWebsite
    , bucLifecycle
    , bucOwner
    , bucSelfLink
    , bucName
    , bucStorageClass
    , bucVersioning
    , bucCors
    , bucTimeCreated
    , bucId
    , bucDefaultObjectAcl
    , bucMetageneration
    , bucLogging
    , bucAcl

    -- * Objects
    , Objects
    , objects
    , objNextPageToken
    , objKind
    , objItems
    , objPrefixes

    -- * BucketLogging
    , BucketLogging
    , bucketLogging
    , blLogBucket
    , blLogObjectPrefix

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * BucketOwner
    , BucketOwner
    , bucketOwner
    , boEntity
    , boEntityId

    -- * ObjectsWatchAll'Projection
    , ObjectsWatchAll'Projection (..)

    -- * BucketVersioning
    , BucketVersioning
    , bucketVersioning
    , bvEnabled

    -- * BucketsGet'Projection
    , BucketsGet'Projection (..)

    -- * ObjectsCopy'Projection
    , ObjectsCopy'Projection (..)

    -- * BucketsPatch'Projection
    , BucketsPatch'Projection (..)

    -- * Buckets
    , Buckets
    , buckets
    , bbNextPageToken
    , bbKind
    , bbItems

    -- * ObjectsList'Projection
    , ObjectsList'Projection (..)

    -- * BucketsUpdate'Projection
    , BucketsUpdate'Projection (..)

    -- * BucketItemRuleLifecycle
    , BucketItemRuleLifecycle
    , bucketItemRuleLifecycle
    , birlAction
    , birlCondition

    -- * Channel
    , Channel
    , channel
    , cResourceUri
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- * ObjectMetadata
    , ObjectMetadata
    , objectMetadata

    -- * ObjectsUpdate'Projection
    , ObjectsUpdate'Projection (..)

    -- * BucketsList'Projection
    , BucketsList'Projection (..)

    -- * ObjectAccessControl
    , ObjectAccessControl
    , objectAccessControl
    , oacaEmail
    , oacaEtag
    , oacaKind
    , oacaDomain
    , oacaBucket
    , oacaRole
    , oacaSelfLink
    , oacaObject
    , oacaId
    , oacaEntity
    , oacaGeneration
    , oacaEntityId

    -- * ComposeRequestObjectPreconditionsItemSourceObjects
    , ComposeRequestObjectPreconditionsItemSourceObjects
    , composeRequestObjectPreconditionsItemSourceObjects
    , cropisoIfGenerationMatch

    -- * BucketWebsite
    , BucketWebsite
    , bucketWebsite
    , bwMainPageSuffix
    , bwNotFoundPage

    -- * ObjectsGet'Projection
    , ObjectsGet'Projection (..)

    -- * ComposeRequest
    , ComposeRequest
    , composeRequest
    , crDestination
    , crKind
    , crSourceObjects

    -- * ObjectsPatch'Projection
    , ObjectsPatch'Projection (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types.Product
import           Network.Google.Storage.Types.Sum

-- | URL referring to version 'v1beta2' of the Cloud Storage API.
storageURL :: BaseUrl
storageURL
  = BaseUrl Https
      "https://www.googleapis.com/storage/v1beta2/"
      443
