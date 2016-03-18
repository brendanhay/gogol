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
    -- * Service Configuration
      storageService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , devstorageReadOnlyScope
    , devstorageReadWriteScope
    , devstorageFullControlScope

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

    -- * BucketsUpdatePredefinedDefaultObjectACL
    , BucketsUpdatePredefinedDefaultObjectACL (..)

    -- * ObjectsComposeDestinationPredefinedACL
    , ObjectsComposeDestinationPredefinedACL (..)

    -- * BucketsInsertPredefinedACL
    , BucketsInsertPredefinedACL (..)

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
    , omAddtional

    -- * ObjectsPatchPredefinedACL
    , ObjectsPatchPredefinedACL (..)

    -- * BucketLifecycleRuleItemCondition
    , BucketLifecycleRuleItemCondition
    , bucketLifecycleRuleItemCondition
    , blricAge
    , blricIsLive
    , blricNumNewerVersions
    , blricCreatedBefore

    -- * ObjectsRewriteDestinationPredefinedACL
    , ObjectsRewriteDestinationPredefinedACL (..)

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

    -- * ObjectAccessControlProjectTeam
    , ObjectAccessControlProjectTeam
    , objectAccessControlProjectTeam
    , oacptProjectNumber
    , oacptTeam

    -- * ObjectCustomerEncryption
    , ObjectCustomerEncryption
    , objectCustomerEncryption
    , oceKeySha256
    , oceEncryptionAlgorithm

    -- * Bucket
    , Bucket
    , bucket
    , bucEtag
    , bucLocation
    , bucKind
    , bucWebsite
    , bucProjectNumber
    , bucLifecycle
    , bucOwner
    , bucSelfLink
    , bucName
    , bucStorageClass
    , bucVersioning
    , bucCORS
    , bucTimeCreated
    , bucId
    , bucUpdated
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

    -- * ObjectsInsertPredefinedACL
    , ObjectsInsertPredefinedACL (..)

    -- * ObjectsListProjection
    , ObjectsListProjection (..)

    -- * BucketsInsertPredefinedDefaultObjectACL
    , BucketsInsertPredefinedDefaultObjectACL (..)

    -- * BucketsUpdatePredefinedACL
    , BucketsUpdatePredefinedACL (..)

    -- * ObjectsCopyDestinationPredefinedACL
    , ObjectsCopyDestinationPredefinedACL (..)

    -- * ObjectsUpdatePredefinedACL
    , ObjectsUpdatePredefinedACL (..)

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
    , cpAddtional

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
    , objCustomerEncryption
    , objBucket
    , objOwner
    , objSelfLink
    , objMediaLink
    , objComponentCount
    , objName
    , objStorageClass
    , objContentEncoding
    , objMetadata
    , objTimeCreated
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

    -- * BucketAccessControlProjectTeam
    , BucketAccessControlProjectTeam
    , bucketAccessControlProjectTeam
    , bacptProjectNumber
    , bacptTeam

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
    , bacaProjectTeam
    , bacaEntity
    , bacaEntityId

    -- * BucketLifecycleRuleItemAction
    , BucketLifecycleRuleItemAction
    , bucketLifecycleRuleItemAction
    , blriaType

    -- * ObjectsGetProjection
    , ObjectsGetProjection (..)

    -- * BucketsPatchPredefinedDefaultObjectACL
    , BucketsPatchPredefinedDefaultObjectACL (..)

    -- * BucketsPatchPredefinedACL
    , BucketsPatchPredefinedACL (..)

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
    , oacaProjectTeam
    , oacaEntity
    , oacaGeneration
    , oacaEntityId

    -- * ObjectsCopyProjection
    , ObjectsCopyProjection (..)

    -- * RewriteResponse
    , RewriteResponse
    , rewriteResponse
    , rrKind
    , rrDone
    , rrResource
    , rrObjectSize
    , rrTotalBytesRewritten
    , rrRewriteToken

    -- * ObjectsRewriteProjection
    , ObjectsRewriteProjection (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types.Product
import           Network.Google.Storage.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Storage JSON API. This contains the host and root path used as a starting point for constructing service requests.
storageService :: ServiceConfig
storageService
  = defaultService (ServiceId "storage:v1")
      "www.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: OAuthScope
cloudPlatformReadOnlyScope = "https://www.googleapis.com/auth/cloud-platform.read-only";

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: OAuthScope
cloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

-- | View your data in Google Cloud Storage
devstorageReadOnlyScope :: OAuthScope
devstorageReadOnlyScope = "https://www.googleapis.com/auth/devstorage.read_only";

-- | Manage your data in Google Cloud Storage
devstorageReadWriteScope :: OAuthScope
devstorageReadWriteScope = "https://www.googleapis.com/auth/devstorage.read_write";

-- | Manage your data and permissions in Google Cloud Storage
devstorageFullControlScope :: OAuthScope
devstorageFullControlScope = "https://www.googleapis.com/auth/devstorage.full_control";
