{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Storage
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stores and retrieves potentially large, immutable data objects.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference>
module Network.Google.Storage
    (
    -- * Service Configuration
      storageService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , storageReadOnlyScope
    , storageReadWriteScope
    , storageFullControlScope

    -- * API Declaration
    , StorageAPI

    -- * Resources

    -- ** storage.bucketAccessControls.delete
    , module Network.Google.Resource.Storage.BucketAccessControls.Delete

    -- ** storage.bucketAccessControls.get
    , module Network.Google.Resource.Storage.BucketAccessControls.Get

    -- ** storage.bucketAccessControls.insert
    , module Network.Google.Resource.Storage.BucketAccessControls.Insert

    -- ** storage.bucketAccessControls.list
    , module Network.Google.Resource.Storage.BucketAccessControls.List

    -- ** storage.bucketAccessControls.patch
    , module Network.Google.Resource.Storage.BucketAccessControls.Patch

    -- ** storage.bucketAccessControls.update
    , module Network.Google.Resource.Storage.BucketAccessControls.Update

    -- ** storage.buckets.delete
    , module Network.Google.Resource.Storage.Buckets.Delete

    -- ** storage.buckets.get
    , module Network.Google.Resource.Storage.Buckets.Get

    -- ** storage.buckets.getIamPolicy
    , module Network.Google.Resource.Storage.Buckets.GetIAMPolicy

    -- ** storage.buckets.insert
    , module Network.Google.Resource.Storage.Buckets.Insert

    -- ** storage.buckets.list
    , module Network.Google.Resource.Storage.Buckets.List

    -- ** storage.buckets.lockRetentionPolicy
    , module Network.Google.Resource.Storage.Buckets.LockRetentionPolicy

    -- ** storage.buckets.patch
    , module Network.Google.Resource.Storage.Buckets.Patch

    -- ** storage.buckets.setIamPolicy
    , module Network.Google.Resource.Storage.Buckets.SetIAMPolicy

    -- ** storage.buckets.testIamPermissions
    , module Network.Google.Resource.Storage.Buckets.TestIAMPermissions

    -- ** storage.buckets.update
    , module Network.Google.Resource.Storage.Buckets.Update

    -- ** storage.channels.stop
    , module Network.Google.Resource.Storage.Channels.Stop

    -- ** storage.defaultObjectAccessControls.delete
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.Delete

    -- ** storage.defaultObjectAccessControls.get
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.Get

    -- ** storage.defaultObjectAccessControls.insert
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.Insert

    -- ** storage.defaultObjectAccessControls.list
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.List

    -- ** storage.defaultObjectAccessControls.patch
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.Patch

    -- ** storage.defaultObjectAccessControls.update
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.Update

    -- ** storage.notifications.delete
    , module Network.Google.Resource.Storage.Notifications.Delete

    -- ** storage.notifications.get
    , module Network.Google.Resource.Storage.Notifications.Get

    -- ** storage.notifications.insert
    , module Network.Google.Resource.Storage.Notifications.Insert

    -- ** storage.notifications.list
    , module Network.Google.Resource.Storage.Notifications.List

    -- ** storage.objectAccessControls.delete
    , module Network.Google.Resource.Storage.ObjectAccessControls.Delete

    -- ** storage.objectAccessControls.get
    , module Network.Google.Resource.Storage.ObjectAccessControls.Get

    -- ** storage.objectAccessControls.insert
    , module Network.Google.Resource.Storage.ObjectAccessControls.Insert

    -- ** storage.objectAccessControls.list
    , module Network.Google.Resource.Storage.ObjectAccessControls.List

    -- ** storage.objectAccessControls.patch
    , module Network.Google.Resource.Storage.ObjectAccessControls.Patch

    -- ** storage.objectAccessControls.update
    , module Network.Google.Resource.Storage.ObjectAccessControls.Update

    -- ** storage.objects.compose
    , module Network.Google.Resource.Storage.Objects.Compose

    -- ** storage.objects.copy
    , module Network.Google.Resource.Storage.Objects.Copy

    -- ** storage.objects.delete
    , module Network.Google.Resource.Storage.Objects.Delete

    -- ** storage.objects.get
    , module Network.Google.Resource.Storage.Objects.Get

    -- ** storage.objects.getIamPolicy
    , module Network.Google.Resource.Storage.Objects.GetIAMPolicy

    -- ** storage.objects.insert
    , module Network.Google.Resource.Storage.Objects.Insert

    -- ** storage.objects.list
    , module Network.Google.Resource.Storage.Objects.List

    -- ** storage.objects.patch
    , module Network.Google.Resource.Storage.Objects.Patch

    -- ** storage.objects.rewrite
    , module Network.Google.Resource.Storage.Objects.Rewrite

    -- ** storage.objects.setIamPolicy
    , module Network.Google.Resource.Storage.Objects.SetIAMPolicy

    -- ** storage.objects.testIamPermissions
    , module Network.Google.Resource.Storage.Objects.TestIAMPermissions

    -- ** storage.objects.update
    , module Network.Google.Resource.Storage.Objects.Update

    -- ** storage.objects.watchAll
    , module Network.Google.Resource.Storage.Objects.WatchAll

    -- ** storage.projects.hmacKeys.create
    , module Network.Google.Resource.Storage.Projects.HmacKeys.Create

    -- ** storage.projects.hmacKeys.delete
    , module Network.Google.Resource.Storage.Projects.HmacKeys.Delete

    -- ** storage.projects.hmacKeys.get
    , module Network.Google.Resource.Storage.Projects.HmacKeys.Get

    -- ** storage.projects.hmacKeys.list
    , module Network.Google.Resource.Storage.Projects.HmacKeys.List

    -- ** storage.projects.hmacKeys.update
    , module Network.Google.Resource.Storage.Projects.HmacKeys.Update

    -- ** storage.projects.serviceAccount.get
    , module Network.Google.Resource.Storage.Projects.ServiceAccount.Get

    -- * Types

    -- ** ObjectOwner
    , ObjectOwner
    , objectOwner
    , ooEntity
    , ooEntityId

    -- ** ObjectsInsertProjection
    , ObjectsInsertProjection (..)

    -- ** BucketVersioning
    , BucketVersioning
    , bucketVersioning
    , bvEnabled

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eKind
    , eExpression
    , eTitle
    , eDescription

    -- ** BucketsUpdatePredefinedDefaultObjectACL
    , BucketsUpdatePredefinedDefaultObjectACL (..)

    -- ** ObjectsComposeDestinationPredefinedACL
    , ObjectsComposeDestinationPredefinedACL (..)

    -- ** BucketRetentionPolicy
    , BucketRetentionPolicy
    , bucketRetentionPolicy
    , brpRetentionPeriod
    , brpEffectiveTime
    , brpIsLocked

    -- ** BucketsInsertPredefinedACL
    , BucketsInsertPredefinedACL (..)

    -- ** Buckets
    , Buckets
    , buckets
    , bNextPageToken
    , bKind
    , bItems

    -- ** HmacKeyMetadata
    , HmacKeyMetadata
    , hmacKeyMetadata
    , hkmEtag
    , hkmState
    , hkmKind
    , hkmSelfLink
    , hkmTimeCreated
    , hkmId
    , hkmUpdated
    , hkmServiceAccountEmail
    , hkmProjectId
    , hkmAccessId

    -- ** BucketBilling
    , BucketBilling
    , bucketBilling
    , bbRequesterPays

    -- ** Notification
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

    -- ** BucketLogging
    , BucketLogging
    , bucketLogging
    , blLogBucket
    , blLogObjectPrefix

    -- ** ObjectMetadata
    , ObjectMetadata
    , objectMetadata
    , omAddtional

    -- ** ObjectsPatchPredefinedACL
    , ObjectsPatchPredefinedACL (..)

    -- ** BucketLifecycleRuleItemCondition
    , BucketLifecycleRuleItemCondition
    , bucketLifecycleRuleItemCondition
    , blricAge
    , blricIsLive
    , blricNumNewerVersions
    , blricMatchesStorageClass
    , blricMatchesPattern
    , blricCreatedBefore

    -- ** ObjectsRewriteDestinationPredefinedACL
    , ObjectsRewriteDestinationPredefinedACL (..)

    -- ** BucketLifecycle
    , BucketLifecycle
    , bucketLifecycle
    , blRule

    -- ** BucketLabels
    , BucketLabels
    , bucketLabels
    , blAddtional

    -- ** Channel
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

    -- ** BucketLifecycleRuleItem
    , BucketLifecycleRuleItem
    , bucketLifecycleRuleItem
    , blriAction
    , blriCondition

    -- ** ObjectsWatchAllProjection
    , ObjectsWatchAllProjection (..)

    -- ** BucketCORSItem
    , BucketCORSItem
    , bucketCORSItem
    , bciMaxAgeSeconds
    , bciOrigin
    , bciResponseHeader
    , bciMethod

    -- ** ObjectAccessControlProjectTeam
    , ObjectAccessControlProjectTeam
    , objectAccessControlProjectTeam
    , oacptProjectNumber
    , oacptTeam

    -- ** ObjectCustomerEncryption
    , ObjectCustomerEncryption
    , objectCustomerEncryption
    , oceKeySha256
    , oceEncryptionAlgorithm

    -- ** Bucket
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

    -- ** BucketsGetProjection
    , BucketsGetProjection (..)

    -- ** Objects
    , Objects
    , objects
    , oNextPageToken
    , oKind
    , oItems
    , oPrefixes

    -- ** BucketsPatchProjection
    , BucketsPatchProjection (..)

    -- ** HmacKeysMetadata
    , HmacKeysMetadata
    , hmacKeysMetadata
    , hNextPageToken
    , hKind
    , hItems

    -- ** BucketAccessControls
    , BucketAccessControls
    , bucketAccessControls
    , bacKind
    , bacItems

    -- ** BucketEncryption
    , BucketEncryption
    , bucketEncryption
    , beDefaultKmsKeyName

    -- ** BucketsUpdateProjection
    , BucketsUpdateProjection (..)

    -- ** ComposeRequest
    , ComposeRequest
    , composeRequest
    , crDestination
    , crKind
    , crSourceObjects

    -- ** ObjectsInsertPredefinedACL
    , ObjectsInsertPredefinedACL (..)

    -- ** ObjectsListProjection
    , ObjectsListProjection (..)

    -- ** BucketsInsertPredefinedDefaultObjectACL
    , BucketsInsertPredefinedDefaultObjectACL (..)

    -- ** BucketsUpdatePredefinedACL
    , BucketsUpdatePredefinedACL (..)

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saKind
    , saEmailAddress

    -- ** ObjectsCopyDestinationPredefinedACL
    , ObjectsCopyDestinationPredefinedACL (..)

    -- ** ObjectsUpdatePredefinedACL
    , ObjectsUpdatePredefinedACL (..)

    -- ** BucketOwner
    , BucketOwner
    , bucketOwner
    , boEntity
    , boEntityId

    -- ** ComposeRequestSourceObjectsItem
    , ComposeRequestSourceObjectsItem
    , composeRequestSourceObjectsItem
    , crsoiName
    , crsoiObjectPreconditions
    , crsoiGeneration

    -- ** BucketsInsertProjection
    , BucketsInsertProjection (..)

    -- ** ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- ** PolicyBindingsItem
    , PolicyBindingsItem
    , policyBindingsItem
    , pbiMembers
    , pbiRole
    , pbiCondition

    -- ** BucketsListProjection
    , BucketsListProjection (..)

    -- ** ObjectsUpdateProjection
    , ObjectsUpdateProjection (..)

    -- ** Object
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

    -- ** ObjectsPatchProjection
    , ObjectsPatchProjection (..)

    -- ** ComposeRequestSourceObjectsItemObjectPreconditions
    , ComposeRequestSourceObjectsItemObjectPreconditions
    , composeRequestSourceObjectsItemObjectPreconditions
    , crsoiopIfGenerationMatch

    -- ** BucketAccessControlProjectTeam
    , BucketAccessControlProjectTeam
    , bucketAccessControlProjectTeam
    , bacptProjectNumber
    , bacptTeam

    -- ** ObjectAccessControls
    , ObjectAccessControls
    , objectAccessControls
    , oacKind
    , oacItems

    -- ** BucketWebsite
    , BucketWebsite
    , bucketWebsite
    , bwMainPageSuffix
    , bwNotFoundPage

    -- ** BucketAccessControl
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

    -- ** BucketLifecycleRuleItemAction
    , BucketLifecycleRuleItemAction
    , bucketLifecycleRuleItemAction
    , blriaStorageClass
    , blriaType

    -- ** ObjectsGetProjection
    , ObjectsGetProjection (..)

    -- ** BucketsPatchPredefinedDefaultObjectACL
    , BucketsPatchPredefinedDefaultObjectACL (..)

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiprKind
    , tiprPermissions

    -- ** HmacKey
    , HmacKey
    , hmacKey
    , hkKind
    , hkSecret
    , hkMetadata

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pResourceId
    , pKind
    , pBindings

    -- ** BucketIAMConfiguration
    , BucketIAMConfiguration
    , bucketIAMConfiguration
    , bicBucketPolicyOnly

    -- ** BucketsPatchPredefinedACL
    , BucketsPatchPredefinedACL (..)

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
    , oacaProjectTeam
    , oacaEntity
    , oacaGeneration
    , oacaEntityId

    -- ** Notifications
    , Notifications
    , notifications
    , notKind
    , notItems

    -- ** NotificationCustom_attributes
    , NotificationCustom_attributes
    , notificationCustom_attributes
    , ncAddtional

    -- ** ObjectsCopyProjection
    , ObjectsCopyProjection (..)

    -- ** BucketIAMConfigurationBucketPolicyOnly
    , BucketIAMConfigurationBucketPolicyOnly
    , bucketIAMConfigurationBucketPolicyOnly
    , bicbpoLockedTime
    , bicbpoEnabled

    -- ** RewriteResponse
    , RewriteResponse
    , rewriteResponse
    , rrKind
    , rrDone
    , rrResource
    , rrObjectSize
    , rrTotalBytesRewritten
    , rrRewriteToken

    -- ** ObjectsRewriteProjection
    , ObjectsRewriteProjection (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Storage.BucketAccessControls.Delete
import           Network.Google.Resource.Storage.BucketAccessControls.Get
import           Network.Google.Resource.Storage.BucketAccessControls.Insert
import           Network.Google.Resource.Storage.BucketAccessControls.List
import           Network.Google.Resource.Storage.BucketAccessControls.Patch
import           Network.Google.Resource.Storage.BucketAccessControls.Update
import           Network.Google.Resource.Storage.Buckets.Delete
import           Network.Google.Resource.Storage.Buckets.Get
import           Network.Google.Resource.Storage.Buckets.GetIAMPolicy
import           Network.Google.Resource.Storage.Buckets.Insert
import           Network.Google.Resource.Storage.Buckets.List
import           Network.Google.Resource.Storage.Buckets.LockRetentionPolicy
import           Network.Google.Resource.Storage.Buckets.Patch
import           Network.Google.Resource.Storage.Buckets.SetIAMPolicy
import           Network.Google.Resource.Storage.Buckets.TestIAMPermissions
import           Network.Google.Resource.Storage.Buckets.Update
import           Network.Google.Resource.Storage.Channels.Stop
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.Delete
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.Get
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.Insert
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.List
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.Patch
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.Update
import           Network.Google.Resource.Storage.Notifications.Delete
import           Network.Google.Resource.Storage.Notifications.Get
import           Network.Google.Resource.Storage.Notifications.Insert
import           Network.Google.Resource.Storage.Notifications.List
import           Network.Google.Resource.Storage.ObjectAccessControls.Delete
import           Network.Google.Resource.Storage.ObjectAccessControls.Get
import           Network.Google.Resource.Storage.ObjectAccessControls.Insert
import           Network.Google.Resource.Storage.ObjectAccessControls.List
import           Network.Google.Resource.Storage.ObjectAccessControls.Patch
import           Network.Google.Resource.Storage.ObjectAccessControls.Update
import           Network.Google.Resource.Storage.Objects.Compose
import           Network.Google.Resource.Storage.Objects.Copy
import           Network.Google.Resource.Storage.Objects.Delete
import           Network.Google.Resource.Storage.Objects.Get
import           Network.Google.Resource.Storage.Objects.GetIAMPolicy
import           Network.Google.Resource.Storage.Objects.Insert
import           Network.Google.Resource.Storage.Objects.List
import           Network.Google.Resource.Storage.Objects.Patch
import           Network.Google.Resource.Storage.Objects.Rewrite
import           Network.Google.Resource.Storage.Objects.SetIAMPolicy
import           Network.Google.Resource.Storage.Objects.TestIAMPermissions
import           Network.Google.Resource.Storage.Objects.Update
import           Network.Google.Resource.Storage.Objects.WatchAll
import           Network.Google.Resource.Storage.Projects.HmacKeys.Create
import           Network.Google.Resource.Storage.Projects.HmacKeys.Delete
import           Network.Google.Resource.Storage.Projects.HmacKeys.Get
import           Network.Google.Resource.Storage.Projects.HmacKeys.List
import           Network.Google.Resource.Storage.Projects.HmacKeys.Update
import           Network.Google.Resource.Storage.Projects.ServiceAccount.Get
import           Network.Google.Storage.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Storage JSON API service.
type StorageAPI =
     BucketsInsertResource :<|> BucketsListResource :<|>
       BucketsGetIAMPolicyResource
       :<|> BucketsPatchResource
       :<|> BucketsGetResource
       :<|> BucketsSetIAMPolicyResource
       :<|> BucketsLockRetentionPolicyResource
       :<|> BucketsTestIAMPermissionsResource
       :<|> BucketsDeleteResource
       :<|> BucketsUpdateResource
       :<|> ChannelsStopResource
       :<|> DefaultObjectAccessControlsInsertResource
       :<|> DefaultObjectAccessControlsListResource
       :<|> DefaultObjectAccessControlsPatchResource
       :<|> DefaultObjectAccessControlsGetResource
       :<|> DefaultObjectAccessControlsDeleteResource
       :<|> DefaultObjectAccessControlsUpdateResource
       :<|> ObjectsInsertResource
       :<|> ObjectsListResource
       :<|> ObjectsCopyResource
       :<|> ObjectsWatchAllResource
       :<|> ObjectsGetIAMPolicyResource
       :<|> ObjectsPatchResource
       :<|> ObjectsGetResource
       :<|> ObjectsSetIAMPolicyResource
       :<|> ObjectsRewriteResource
       :<|> ObjectsComposeResource
       :<|> ObjectsTestIAMPermissionsResource
       :<|> ObjectsDeleteResource
       :<|> ObjectsUpdateResource
       :<|> BucketAccessControlsInsertResource
       :<|> BucketAccessControlsListResource
       :<|> BucketAccessControlsPatchResource
       :<|> BucketAccessControlsGetResource
       :<|> BucketAccessControlsDeleteResource
       :<|> BucketAccessControlsUpdateResource
       :<|> ObjectAccessControlsInsertResource
       :<|> ObjectAccessControlsListResource
       :<|> ObjectAccessControlsPatchResource
       :<|> ObjectAccessControlsGetResource
       :<|> ObjectAccessControlsDeleteResource
       :<|> ObjectAccessControlsUpdateResource
       :<|> NotificationsInsertResource
       :<|> NotificationsListResource
       :<|> NotificationsGetResource
       :<|> NotificationsDeleteResource
       :<|> ProjectsHmacKeysListResource
       :<|> ProjectsHmacKeysGetResource
       :<|> ProjectsHmacKeysCreateResource
       :<|> ProjectsHmacKeysDeleteResource
       :<|> ProjectsHmacKeysUpdateResource
       :<|> ProjectsServiceAccountGetResource
