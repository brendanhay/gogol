{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Storage.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , storageReadOnlyScope
    , storageReadWriteScope
    , storageFullControlScope

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

    -- * BucketRetentionPolicy
    , BucketRetentionPolicy
    , bucketRetentionPolicy
    , brpRetentionPeriod
    , brpEffectiveTime
    , brpIsLocked

    -- * BucketsInsertPredefinedACL
    , BucketsInsertPredefinedACL (..)

    -- * Buckets
    , Buckets
    , buckets
    , bNextPageToken
    , bKind
    , bItems

    -- * BucketBilling
    , BucketBilling
    , bucketBilling
    , bbRequesterPays

    -- * Notification
    , Notification
    , notification
    , nEtag
    , nObjectNamePrefix
    , nPayloadFormat
    , nEventTypes
    , nKind
    , nTopic
    , nSelfLink
    , nId
    , nCustomAttributes

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
    , blricMatchesStorageClass
    , blricMatchesPattern
    , blricCreatedBefore

    -- * ObjectsRewriteDestinationPredefinedACL
    , ObjectsRewriteDestinationPredefinedACL (..)

    -- * BucketLifecycle
    , BucketLifecycle
    , bucketLifecycle
    , blRule

    -- * BucketLabels
    , BucketLabels
    , bucketLabels
    , blAddtional

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
    , bucIAMConfiguration
    , bucKind
    , bucWebsite
    , bucProjectNumber
    , bucLifecycle
    , bucOwner
    , bucRetentionPolicy
    , bucSelfLink
    , bucName
    , bucEncryption
    , bucStorageClass
    , bucVersioning
    , bucCORS
    , bucTimeCreated
    , bucId
    , bucLabels
    , bucUpdated
    , bucDefaultObjectACL
    , bucBilling
    , bucMetageneration
    , bucLogging
    , bucACL
    , bucDefaultEventBasedHold

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

    -- * BucketEncryption
    , BucketEncryption
    , bucketEncryption
    , beDefaultKmsKeyName

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

    -- * ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saKind
    , saEmailAddress

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

    -- * PolicyBindingsItem
    , PolicyBindingsItem
    , policyBindingsItem
    , pbiMembers
    , pbiRole
    , pbiCondition

    -- * BucketsListProjection
    , BucketsListProjection (..)

    -- * ObjectsUpdateProjection
    , ObjectsUpdateProjection (..)

    -- * Object
    , Object
    , object'
    , objTemporaryHold
    , objEtag
    , objTimeStorageClassUpdated
    , objRetentionExpirationTime
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
    , objEventBasedHold
    , objMetadata
    , objTimeCreated
    , objId
    , objKmsKeyName
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
    , blriaStorageClass
    , blriaType

    -- * ObjectsGetProjection
    , ObjectsGetProjection (..)

    -- * BucketsPatchPredefinedDefaultObjectACL
    , BucketsPatchPredefinedDefaultObjectACL (..)

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiprKind
    , tiprPermissions

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pResourceId
    , pKind
    , pBindings

    -- * BucketIAMConfiguration
    , BucketIAMConfiguration
    , bucketIAMConfiguration
    , bicBucketPolicyOnly

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

    -- * Notifications
    , Notifications
    , notifications
    , notKind
    , notItems

    -- * NotificationCustom_attributes
    , NotificationCustom_attributes
    , notificationCustom_attributes
    , ncAddtional

    -- * ObjectsCopyProjection
    , ObjectsCopyProjection (..)

    -- * BucketIAMConfigurationBucketPolicyOnly
    , BucketIAMConfigurationBucketPolicyOnly
    , bucketIAMConfigurationBucketPolicyOnly
    , bicbpoLockedTime
    , bicbpoEnabled

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
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View your data in Google Cloud Storage
storageReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/devstorage.read_only"]
storageReadOnlyScope = Proxy

-- | Manage your data in Google Cloud Storage
storageReadWriteScope :: Proxy '["https://www.googleapis.com/auth/devstorage.read_write"]
storageReadWriteScope = Proxy

-- | Manage your data and permissions in Google Cloud Storage
storageFullControlScope :: Proxy '["https://www.googleapis.com/auth/devstorage.full_control"]
storageFullControlScope = Proxy
