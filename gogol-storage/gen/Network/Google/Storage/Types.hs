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

    -- * BucketVersioning
    , BucketVersioning
    , bucketVersioning
    , bvEnabled

    -- * ObjectOwner
    , ObjectOwner
    , objectOwner
    , ooEntity
    , ooEntityId

    -- * ComposeRequestSourceObjects
    , ComposeRequestSourceObjects
    , composeRequestSourceObjects
    , crsoName
    , crsoObjectPreconditions
    , crsoGeneration

    -- * BucketLogging
    , BucketLogging
    , bucketLogging
    , blLogBucket
    , blLogObjectPrefix

    -- * Buckets
    , Buckets
    , buckets
    , bNextPageToken
    , bKind
    , bItems

    -- * BucketLifecycleRuleCondition
    , BucketLifecycleRuleCondition
    , bucketLifecycleRuleCondition
    , blrcAge
    , blrcIsLive
    , blrcNumNewerVersions
    , blrcCreatedBefore

    -- * BucketLifecycle
    , BucketLifecycle
    , bucketLifecycle
    , blRule

    -- * BucketLifecycleRuleAction
    , BucketLifecycleRuleAction
    , bucketLifecycleRuleAction
    , blraType

    -- * ObjectMetadata
    , ObjectMetadata
    , objectMetadata

    -- * StorageBucketsListProjection
    , StorageBucketsListProjection (..)

    -- * BucketCORS
    , BucketCORS
    , bucketCORS
    , bcMaxAgeSeconds
    , bcOrigin
    , bcResponseHeader
    , bcMethod

    -- * StorageObjectsUpdateProjection
    , StorageObjectsUpdateProjection (..)

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

    -- * BucketAccessControls
    , BucketAccessControls
    , bucketAccessControls
    , bacKind
    , bacItems

    -- * BucketLifecycleRule
    , BucketLifecycleRule
    , bucketLifecycleRule
    , blrAction
    , blrCondition

    -- * Objects
    , Objects
    , objects
    , oNextPageToken
    , oKind
    , oItems
    , oPrefixes

    -- * ComposeRequest
    , ComposeRequest
    , composeRequest
    , crDestination
    , crKind
    , crSourceObjects

    -- * StorageObjectsPatchProjection
    , StorageObjectsPatchProjection (..)

    -- * StorageObjectsGetProjection
    , StorageObjectsGetProjection (..)

    -- * StorageBucketsGetProjection
    , StorageBucketsGetProjection (..)

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * StorageObjectsCopyProjection
    , StorageObjectsCopyProjection (..)

    -- * StorageBucketsPatchProjection
    , StorageBucketsPatchProjection (..)

    -- * BucketOwner
    , BucketOwner
    , bucketOwner
    , boEntity
    , boEntityId

    -- * StorageObjectsWatchAllProjection
    , StorageObjectsWatchAllProjection (..)

    -- * BucketWebsite
    , BucketWebsite
    , bucketWebsite
    , bwMainPageSuffix
    , bwNotFoundPage

    -- * BucketAccessControl
    , BucketAccessControl
    , bucketAccessControl
    , bacaEmail
    , bacaEtag
    , bacaKind
    , bacaDomain
    , bacaBucket
    , bacaRole
    , bacaSelfLink
    , bacaId
    , bacaEntity
    , bacaEntityId

    -- * ObjectAccessControls
    , ObjectAccessControls
    , objectAccessControls
    , oacKind
    , oacItems

    -- * StorageObjectsInsertProjection
    , StorageObjectsInsertProjection (..)

    -- * Object
    , Object
    , object'
    , objEtag
    , objSize
    , objKind
    , objTimeDeleted
    , objCrc32c
    , objBucket
    , objOwner
    , objSelfLink
    , objMediaLink
    , objComponentCount
    , objName
    , objStorageClass
    , objContentEncoding
    , objMetadata
    , objId
    , objUpdated
    , objContentLanguage
    , objCacheControl
    , objMetageneration
    , objGeneration
    , objAcl
    , objContentDisposition
    , objMd5Hash
    , objContentType

    -- * ComposeRequestSourceObjectsObjectPreconditions
    , ComposeRequestSourceObjectsObjectPreconditions
    , composeRequestSourceObjectsObjectPreconditions
    , crsoopIfGenerationMatch

    -- * StorageBucketsUpdateProjection
    , StorageBucketsUpdateProjection (..)

    -- * StorageObjectsListProjection
    , StorageObjectsListProjection (..)

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

    -- * StorageBucketsInsertProjection
    , StorageBucketsInsertProjection (..)

    -- * Alt
    , Alt (..)
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
