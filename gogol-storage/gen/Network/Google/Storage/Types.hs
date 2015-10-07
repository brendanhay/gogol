{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Request
      storageRequest

    -- * ObjectOwner
    , ObjectOwner
    , objectOwner
    , ooEntity
    , ooEntityId

    -- * ObjectsInsertProjection
    , ObjectsInsertProjection (..)

    -- * BucketVersioning
    , BucketVersioning
    , bucketVersioning
    , bvEnabled

    -- * Buckets
    , Buckets
    , buckets
    , bNextPageToken
    , bKind
    , bItems

    -- * BucketLogging
    , BucketLogging
    , bucketLogging
    , blLogBucket
    , blLogObjectPrefix

    -- * ObjectMetadata
    , ObjectMetadata
    , objectMetadata

    -- * BucketLifecycleRuleItemCondition
    , BucketLifecycleRuleItemCondition
    , bucketLifecycleRuleItemCondition
    , blricAge
    , blricIsLive
    , blricNumNewerVersions
    , blricCreatedBefore

    -- * BucketLifecycle
    , BucketLifecycle
    , bucketLifecycle
    , blRule

    -- * Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- * BucketLifecycleRuleItem
    , BucketLifecycleRuleItem
    , bucketLifecycleRuleItem
    , blriAction
    , blriCondition

    -- * ObjectsWatchAllProjection
    , ObjectsWatchAllProjection (..)

    -- * BucketCORSItem
    , BucketCORSItem
    , bucketCORSItem
    , bciMaxAgeSeconds
    , bciOrigin
    , bciResponseHeader
    , bciMethod

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
    , bucCORS
    , bucTimeCreated
    , bucId
    , bucDefaultObjectACL
    , bucMetageneration
    , bucLogging
    , bucACL

    -- * BucketsGetProjection
    , BucketsGetProjection (..)

    -- * Objects
    , Objects
    , objects
    , oNextPageToken
    , oKind
    , oItems
    , oPrefixes

    -- * BucketsPatchProjection
    , BucketsPatchProjection (..)

    -- * BucketAccessControls
    , BucketAccessControls
    , bucketAccessControls
    , bacKind
    , bacItems

    -- * BucketsUpdateProjection
    , BucketsUpdateProjection (..)

    -- * ComposeRequest
    , ComposeRequest
    , composeRequest
    , crDestination
    , crKind
    , crSourceObjects

    -- * ObjectsListProjection
    , ObjectsListProjection (..)

    -- * BucketOwner
    , BucketOwner
    , bucketOwner
    , boEntity
    , boEntityId

    -- * ComposeRequestSourceObjectsItem
    , ComposeRequestSourceObjectsItem
    , composeRequestSourceObjectsItem
    , crsoiName
    , crsoiObjectPreconditions
    , crsoiGeneration

    -- * BucketsInsertProjection
    , BucketsInsertProjection (..)

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * BucketsListProjection
    , BucketsListProjection (..)

    -- * ObjectsUpdateProjection
    , ObjectsUpdateProjection (..)

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
    , objACL
    , objContentDisPosition
    , objMD5Hash
    , objContentType

    -- * ObjectsPatchProjection
    , ObjectsPatchProjection (..)

    -- * ComposeRequestSourceObjectsItemObjectPreconditions
    , ComposeRequestSourceObjectsItemObjectPreconditions
    , composeRequestSourceObjectsItemObjectPreconditions
    , crsoiopIfGenerationMatch

    -- * ObjectAccessControls
    , ObjectAccessControls
    , objectAccessControls
    , oacKind
    , oacItems

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

    -- * BucketLifecycleRuleItemAction
    , BucketLifecycleRuleItemAction
    , bucketLifecycleRuleItemAction
    , blriaType

    -- * ObjectsGetProjection
    , ObjectsGetProjection (..)

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

    -- * ObjectsCopyProjection
    , ObjectsCopyProjection (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types.Product
import           Network.Google.Storage.Types.Sum

-- | Default request referring to version 'v1beta2' of the Cloud Storage API. This contains the host and root path used as a starting point for constructing service requests.
storageRequest :: RequestBuilder
storageRequest
  = defaultRequest "https://www.googleapis.com/"
      "storage/v1beta2/"
