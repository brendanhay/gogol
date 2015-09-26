-- |
-- Module      : Network.Google.CloudStorage
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you store and retrieve potentially-large, immutable data objects.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference>
module Network.Google.CloudStorage
    (
    -- * API Definition
      CloudStorage



    -- * Types

    -- ** Bucket
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

    -- ** BucketAccessControl
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

    -- ** BucketAccessControls
    , BucketAccessControls
    , bucketAccessControls
    , bKind
    , bItems

    -- ** BucketActionItemRuleLifecycle
    , BucketActionItemRuleLifecycle
    , bucketActionItemRuleLifecycle
    , bairlType

    -- ** BucketConditionItemRuleLifecycle
    , BucketConditionItemRuleLifecycle
    , bucketConditionItemRuleLifecycle
    , bcirlAge
    , bcirlIsLive
    , bcirlNumNewerVersions
    , bcirlCreatedBefore

    -- ** BucketItemCors
    , BucketItemCors
    , bucketItemCors
    , bicMaxAgeSeconds
    , bicOrigin
    , bicResponseHeader
    , bicMethod

    -- ** BucketItemRuleLifecycle
    , BucketItemRuleLifecycle
    , bucketItemRuleLifecycle
    , birlAction
    , birlCondition

    -- ** BucketLifecycle
    , BucketLifecycle
    , bucketLifecycle
    , blRule

    -- ** BucketLogging
    , BucketLogging
    , bucketLogging
    , blLogBucket
    , blLogObjectPrefix

    -- ** BucketOwner
    , BucketOwner
    , bucketOwner
    , boEntity
    , boEntityId

    -- ** BucketVersioning
    , BucketVersioning
    , bucketVersioning
    , bvEnabled

    -- ** BucketWebsite
    , BucketWebsite
    , bucketWebsite
    , bwMainPageSuffix
    , bwNotFoundPage

    -- ** Buckets
    , Buckets
    , buckets
    , bbNextPageToken
    , bbKind
    , bbItems

    -- ** Channel
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

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** ComposeRequest
    , ComposeRequest
    , composeRequest
    , crDestination
    , crKind
    , crSourceObjects

    -- ** ComposeRequestItemSourceObjects
    , ComposeRequestItemSourceObjects
    , composeRequestItemSourceObjects
    , crisoName
    , crisoObjectPreconditions
    , crisoGeneration

    -- ** ComposeRequestObjectPreconditionsItemSourceObjects
    , ComposeRequestObjectPreconditionsItemSourceObjects
    , composeRequestObjectPreconditionsItemSourceObjects
    , cropisoIfGenerationMatch

    -- ** Object
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

    -- ** ObjectAccessControl
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

    -- ** ObjectAccessControls
    , ObjectAccessControls
    , objectAccessControls
    , oacKind
    , oacItems

    -- ** ObjectMetadata
    , ObjectMetadata
    , objectMetadata

    -- ** ObjectOwner
    , ObjectOwner
    , objectOwner
    , ooEntity
    , ooEntityId

    -- ** Objects
    , Objects
    , objects
    , objNextPageToken
    , objKind
    , objItems
    , objPrefixes
    ) where

import           Network.Google.CloudStorage.Types

{- $resources
TODO
-}

type CloudStorage = ()

cloudStorage :: Proxy CloudStorage
cloudStorage = Proxy




