{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Storage
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stores and retrieves potentially large, immutable data objects.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference>
module Network.Google.Storage
  ( -- * Configuration
    storageService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    storageFull_controlScope,
    storageRead_OnlyScope,
    storageRead_writeScope,

    -- * Resources

    -- ** storage.bucketAccessControls.delete
    StorageBucketAccessControlsDeleteResource,
    newStorageBucketAccessControlsDelete,
    StorageBucketAccessControlsDelete,

    -- ** storage.bucketAccessControls.get
    StorageBucketAccessControlsGetResource,
    newStorageBucketAccessControlsGet,
    StorageBucketAccessControlsGet,

    -- ** storage.bucketAccessControls.insert
    StorageBucketAccessControlsInsertResource,
    newStorageBucketAccessControlsInsert,
    StorageBucketAccessControlsInsert,

    -- ** storage.bucketAccessControls.list
    StorageBucketAccessControlsListResource,
    newStorageBucketAccessControlsList,
    StorageBucketAccessControlsList,

    -- ** storage.bucketAccessControls.patch
    StorageBucketAccessControlsPatchResource,
    newStorageBucketAccessControlsPatch,
    StorageBucketAccessControlsPatch,

    -- ** storage.bucketAccessControls.update
    StorageBucketAccessControlsUpdateResource,
    newStorageBucketAccessControlsUpdate,
    StorageBucketAccessControlsUpdate,

    -- ** storage.buckets.delete
    StorageBucketsDeleteResource,
    newStorageBucketsDelete,
    StorageBucketsDelete,

    -- ** storage.buckets.get
    StorageBucketsGetResource,
    newStorageBucketsGet,
    StorageBucketsGet,

    -- ** storage.buckets.getIamPolicy
    StorageBucketsGetIamPolicyResource,
    newStorageBucketsGetIamPolicy,
    StorageBucketsGetIamPolicy,

    -- ** storage.buckets.insert
    StorageBucketsInsertResource,
    newStorageBucketsInsert,
    StorageBucketsInsert,

    -- ** storage.buckets.list
    StorageBucketsListResource,
    newStorageBucketsList,
    StorageBucketsList,

    -- ** storage.buckets.lockRetentionPolicy
    StorageBucketsLockRetentionPolicyResource,
    newStorageBucketsLockRetentionPolicy,
    StorageBucketsLockRetentionPolicy,

    -- ** storage.buckets.patch
    StorageBucketsPatchResource,
    newStorageBucketsPatch,
    StorageBucketsPatch,

    -- ** storage.buckets.setIamPolicy
    StorageBucketsSetIamPolicyResource,
    newStorageBucketsSetIamPolicy,
    StorageBucketsSetIamPolicy,

    -- ** storage.buckets.testIamPermissions
    StorageBucketsTestIamPermissionsResource,
    newStorageBucketsTestIamPermissions,
    StorageBucketsTestIamPermissions,

    -- ** storage.buckets.update
    StorageBucketsUpdateResource,
    newStorageBucketsUpdate,
    StorageBucketsUpdate,

    -- ** storage.channels.stop
    StorageChannelsStopResource,
    newStorageChannelsStop,
    StorageChannelsStop,

    -- ** storage.defaultObjectAccessControls.delete
    StorageDefaultObjectAccessControlsDeleteResource,
    newStorageDefaultObjectAccessControlsDelete,
    StorageDefaultObjectAccessControlsDelete,

    -- ** storage.defaultObjectAccessControls.get
    StorageDefaultObjectAccessControlsGetResource,
    newStorageDefaultObjectAccessControlsGet,
    StorageDefaultObjectAccessControlsGet,

    -- ** storage.defaultObjectAccessControls.insert
    StorageDefaultObjectAccessControlsInsertResource,
    newStorageDefaultObjectAccessControlsInsert,
    StorageDefaultObjectAccessControlsInsert,

    -- ** storage.defaultObjectAccessControls.list
    StorageDefaultObjectAccessControlsListResource,
    newStorageDefaultObjectAccessControlsList,
    StorageDefaultObjectAccessControlsList,

    -- ** storage.defaultObjectAccessControls.patch
    StorageDefaultObjectAccessControlsPatchResource,
    newStorageDefaultObjectAccessControlsPatch,
    StorageDefaultObjectAccessControlsPatch,

    -- ** storage.defaultObjectAccessControls.update
    StorageDefaultObjectAccessControlsUpdateResource,
    newStorageDefaultObjectAccessControlsUpdate,
    StorageDefaultObjectAccessControlsUpdate,

    -- ** storage.notifications.delete
    StorageNotificationsDeleteResource,
    newStorageNotificationsDelete,
    StorageNotificationsDelete,

    -- ** storage.notifications.get
    StorageNotificationsGetResource,
    newStorageNotificationsGet,
    StorageNotificationsGet,

    -- ** storage.notifications.insert
    StorageNotificationsInsertResource,
    newStorageNotificationsInsert,
    StorageNotificationsInsert,

    -- ** storage.notifications.list
    StorageNotificationsListResource,
    newStorageNotificationsList,
    StorageNotificationsList,

    -- ** storage.objectAccessControls.delete
    StorageObjectAccessControlsDeleteResource,
    newStorageObjectAccessControlsDelete,
    StorageObjectAccessControlsDelete,

    -- ** storage.objectAccessControls.get
    StorageObjectAccessControlsGetResource,
    newStorageObjectAccessControlsGet,
    StorageObjectAccessControlsGet,

    -- ** storage.objectAccessControls.insert
    StorageObjectAccessControlsInsertResource,
    newStorageObjectAccessControlsInsert,
    StorageObjectAccessControlsInsert,

    -- ** storage.objectAccessControls.list
    StorageObjectAccessControlsListResource,
    newStorageObjectAccessControlsList,
    StorageObjectAccessControlsList,

    -- ** storage.objectAccessControls.patch
    StorageObjectAccessControlsPatchResource,
    newStorageObjectAccessControlsPatch,
    StorageObjectAccessControlsPatch,

    -- ** storage.objectAccessControls.update
    StorageObjectAccessControlsUpdateResource,
    newStorageObjectAccessControlsUpdate,
    StorageObjectAccessControlsUpdate,

    -- ** storage.objects.compose
    StorageObjectsComposeResource,
    newStorageObjectsCompose,
    StorageObjectsCompose,

    -- ** storage.objects.copy
    StorageObjectsCopyResource,
    newStorageObjectsCopy,
    StorageObjectsCopy,

    -- ** storage.objects.delete
    StorageObjectsDeleteResource,
    newStorageObjectsDelete,
    StorageObjectsDelete,

    -- ** storage.objects.get
    StorageObjectsGetResource,
    newStorageObjectsGet,
    StorageObjectsGet,

    -- ** storage.objects.getIamPolicy
    StorageObjectsGetIamPolicyResource,
    newStorageObjectsGetIamPolicy,
    StorageObjectsGetIamPolicy,

    -- ** storage.objects.insert
    StorageObjectsInsertResource,
    newStorageObjectsInsert,
    StorageObjectsInsert,

    -- ** storage.objects.list
    StorageObjectsListResource,
    newStorageObjectsList,
    StorageObjectsList,

    -- ** storage.objects.patch
    StorageObjectsPatchResource,
    newStorageObjectsPatch,
    StorageObjectsPatch,

    -- ** storage.objects.rewrite
    StorageObjectsRewriteResource,
    newStorageObjectsRewrite,
    StorageObjectsRewrite,

    -- ** storage.objects.setIamPolicy
    StorageObjectsSetIamPolicyResource,
    newStorageObjectsSetIamPolicy,
    StorageObjectsSetIamPolicy,

    -- ** storage.objects.testIamPermissions
    StorageObjectsTestIamPermissionsResource,
    newStorageObjectsTestIamPermissions,
    StorageObjectsTestIamPermissions,

    -- ** storage.objects.update
    StorageObjectsUpdateResource,
    newStorageObjectsUpdate,
    StorageObjectsUpdate,

    -- ** storage.objects.watchAll
    StorageObjectsWatchAllResource,
    newStorageObjectsWatchAll,
    StorageObjectsWatchAll,

    -- ** storage.projects.hmacKeys.create
    StorageProjectsHmacKeysCreateResource,
    newStorageProjectsHmacKeysCreate,
    StorageProjectsHmacKeysCreate,

    -- ** storage.projects.hmacKeys.delete
    StorageProjectsHmacKeysDeleteResource,
    newStorageProjectsHmacKeysDelete,
    StorageProjectsHmacKeysDelete,

    -- ** storage.projects.hmacKeys.get
    StorageProjectsHmacKeysGetResource,
    newStorageProjectsHmacKeysGet,
    StorageProjectsHmacKeysGet,

    -- ** storage.projects.hmacKeys.list
    StorageProjectsHmacKeysListResource,
    newStorageProjectsHmacKeysList,
    StorageProjectsHmacKeysList,

    -- ** storage.projects.hmacKeys.update
    StorageProjectsHmacKeysUpdateResource,
    newStorageProjectsHmacKeysUpdate,
    StorageProjectsHmacKeysUpdate,

    -- ** storage.projects.serviceAccount.get
    StorageProjectsServiceAccountGetResource,
    newStorageProjectsServiceAccountGet,
    StorageProjectsServiceAccountGet,

    -- * Types

    -- ** Bucket
    Bucket (..),
    newBucket,

    -- ** Bucket_Autoclass
    Bucket_Autoclass (..),
    newBucket_Autoclass,

    -- ** Bucket_Billing
    Bucket_Billing (..),
    newBucket_Billing,

    -- ** Bucket_CorsItem
    Bucket_CorsItem (..),
    newBucket_CorsItem,

    -- ** Bucket_CustomPlacementConfig
    Bucket_CustomPlacementConfig (..),
    newBucket_CustomPlacementConfig,

    -- ** Bucket_Encryption
    Bucket_Encryption (..),
    newBucket_Encryption,

    -- ** Bucket_IamConfiguration
    Bucket_IamConfiguration (..),
    newBucket_IamConfiguration,

    -- ** Bucket_IamConfiguration_BucketPolicyOnly
    Bucket_IamConfiguration_BucketPolicyOnly (..),
    newBucket_IamConfiguration_BucketPolicyOnly,

    -- ** Bucket_IamConfiguration_UniformBucketLevelAccess
    Bucket_IamConfiguration_UniformBucketLevelAccess (..),
    newBucket_IamConfiguration_UniformBucketLevelAccess,

    -- ** Bucket_Labels
    Bucket_Labels (..),
    newBucket_Labels,

    -- ** Bucket_Lifecycle
    Bucket_Lifecycle (..),
    newBucket_Lifecycle,

    -- ** Bucket_Lifecycle_RuleItem
    Bucket_Lifecycle_RuleItem (..),
    newBucket_Lifecycle_RuleItem,

    -- ** Bucket_Lifecycle_RuleItem_Action
    Bucket_Lifecycle_RuleItem_Action (..),
    newBucket_Lifecycle_RuleItem_Action,

    -- ** Bucket_Lifecycle_RuleItem_Condition
    Bucket_Lifecycle_RuleItem_Condition (..),
    newBucket_Lifecycle_RuleItem_Condition,

    -- ** Bucket_Logging
    Bucket_Logging (..),
    newBucket_Logging,

    -- ** Bucket_Owner
    Bucket_Owner (..),
    newBucket_Owner,

    -- ** Bucket_RetentionPolicy
    Bucket_RetentionPolicy (..),
    newBucket_RetentionPolicy,

    -- ** Bucket_Versioning
    Bucket_Versioning (..),
    newBucket_Versioning,

    -- ** Bucket_Website
    Bucket_Website (..),
    newBucket_Website,

    -- ** BucketAccessControl
    BucketAccessControl (..),
    newBucketAccessControl,

    -- ** BucketAccessControl_ProjectTeam
    BucketAccessControl_ProjectTeam (..),
    newBucketAccessControl_ProjectTeam,

    -- ** BucketAccessControls
    BucketAccessControls (..),
    newBucketAccessControls,

    -- ** Buckets
    Buckets (..),
    newBuckets,

    -- ** Channel
    Channel (..),
    newChannel,

    -- ** Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- ** ComposeRequest
    ComposeRequest (..),
    newComposeRequest,

    -- ** ComposeRequest_SourceObjectsItem
    ComposeRequest_SourceObjectsItem (..),
    newComposeRequest_SourceObjectsItem,

    -- ** ComposeRequest_SourceObjectsItem_ObjectPreconditions
    ComposeRequest_SourceObjectsItem_ObjectPreconditions (..),
    newComposeRequest_SourceObjectsItem_ObjectPreconditions,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** HmacKey
    HmacKey (..),
    newHmacKey,

    -- ** HmacKeyMetadata
    HmacKeyMetadata (..),
    newHmacKeyMetadata,

    -- ** HmacKeysMetadata
    HmacKeysMetadata (..),
    newHmacKeysMetadata,

    -- ** Notification
    Notification (..),
    newNotification,

    -- ** Notification_Custom_attributes
    Notification_Custom_attributes (..),
    newNotification_Custom_attributes,

    -- ** Notifications
    Notifications (..),
    newNotifications,

    -- ** Object
    Object (..),
    newObject,

    -- ** Object_CustomerEncryption
    Object_CustomerEncryption (..),
    newObject_CustomerEncryption,

    -- ** Object_Metadata
    Object_Metadata (..),
    newObject_Metadata,

    -- ** Object_Owner
    Object_Owner (..),
    newObject_Owner,

    -- ** ObjectAccessControl
    ObjectAccessControl (..),
    newObjectAccessControl,

    -- ** ObjectAccessControl_ProjectTeam
    ObjectAccessControl_ProjectTeam (..),
    newObjectAccessControl_ProjectTeam,

    -- ** ObjectAccessControls
    ObjectAccessControls (..),
    newObjectAccessControls,

    -- ** Objects
    Objects (..),
    newObjects,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Policy_BindingsItem
    Policy_BindingsItem (..),
    newPolicy_BindingsItem,

    -- ** RewriteResponse
    RewriteResponse (..),
    newRewriteResponse,

    -- ** ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** BucketsGetProjection
    BucketsGetProjection (..),

    -- ** BucketsInsertPredefinedAcl
    BucketsInsertPredefinedAcl (..),

    -- ** BucketsInsertPredefinedDefaultObjectAcl
    BucketsInsertPredefinedDefaultObjectAcl (..),

    -- ** BucketsInsertProjection
    BucketsInsertProjection (..),

    -- ** BucketsListProjection
    BucketsListProjection (..),

    -- ** BucketsPatchPredefinedAcl
    BucketsPatchPredefinedAcl (..),

    -- ** BucketsPatchPredefinedDefaultObjectAcl
    BucketsPatchPredefinedDefaultObjectAcl (..),

    -- ** BucketsPatchProjection
    BucketsPatchProjection (..),

    -- ** BucketsUpdatePredefinedAcl
    BucketsUpdatePredefinedAcl (..),

    -- ** BucketsUpdatePredefinedDefaultObjectAcl
    BucketsUpdatePredefinedDefaultObjectAcl (..),

    -- ** BucketsUpdateProjection
    BucketsUpdateProjection (..),

    -- ** ObjectsComposeDestinationPredefinedAcl
    ObjectsComposeDestinationPredefinedAcl (..),

    -- ** ObjectsCopyDestinationPredefinedAcl
    ObjectsCopyDestinationPredefinedAcl (..),

    -- ** ObjectsCopyProjection
    ObjectsCopyProjection (..),

    -- ** ObjectsGetProjection
    ObjectsGetProjection (..),

    -- ** ObjectsInsertPredefinedAcl
    ObjectsInsertPredefinedAcl (..),

    -- ** ObjectsInsertProjection
    ObjectsInsertProjection (..),

    -- ** ObjectsListProjection
    ObjectsListProjection (..),

    -- ** ObjectsPatchPredefinedAcl
    ObjectsPatchPredefinedAcl (..),

    -- ** ObjectsPatchProjection
    ObjectsPatchProjection (..),

    -- ** ObjectsRewriteDestinationPredefinedAcl
    ObjectsRewriteDestinationPredefinedAcl (..),

    -- ** ObjectsRewriteProjection
    ObjectsRewriteProjection (..),

    -- ** ObjectsUpdatePredefinedAcl
    ObjectsUpdatePredefinedAcl (..),

    -- ** ObjectsUpdateProjection
    ObjectsUpdateProjection (..),

    -- ** ObjectsWatchAllProjection
    ObjectsWatchAllProjection (..),
  )
where

import Network.Google.Storage.BucketAccessControls.Delete
import Network.Google.Storage.BucketAccessControls.Get
import Network.Google.Storage.BucketAccessControls.Insert
import Network.Google.Storage.BucketAccessControls.List
import Network.Google.Storage.BucketAccessControls.Patch
import Network.Google.Storage.BucketAccessControls.Update
import Network.Google.Storage.Buckets.Delete
import Network.Google.Storage.Buckets.Get
import Network.Google.Storage.Buckets.GetIamPolicy
import Network.Google.Storage.Buckets.Insert
import Network.Google.Storage.Buckets.List
import Network.Google.Storage.Buckets.LockRetentionPolicy
import Network.Google.Storage.Buckets.Patch
import Network.Google.Storage.Buckets.SetIamPolicy
import Network.Google.Storage.Buckets.TestIamPermissions
import Network.Google.Storage.Buckets.Update
import Network.Google.Storage.Channels.Stop
import Network.Google.Storage.DefaultObjectAccessControls.Delete
import Network.Google.Storage.DefaultObjectAccessControls.Get
import Network.Google.Storage.DefaultObjectAccessControls.Insert
import Network.Google.Storage.DefaultObjectAccessControls.List
import Network.Google.Storage.DefaultObjectAccessControls.Patch
import Network.Google.Storage.DefaultObjectAccessControls.Update
import Network.Google.Storage.Notifications.Delete
import Network.Google.Storage.Notifications.Get
import Network.Google.Storage.Notifications.Insert
import Network.Google.Storage.Notifications.List
import Network.Google.Storage.ObjectAccessControls.Delete
import Network.Google.Storage.ObjectAccessControls.Get
import Network.Google.Storage.ObjectAccessControls.Insert
import Network.Google.Storage.ObjectAccessControls.List
import Network.Google.Storage.ObjectAccessControls.Patch
import Network.Google.Storage.ObjectAccessControls.Update
import Network.Google.Storage.Objects.Compose
import Network.Google.Storage.Objects.Copy
import Network.Google.Storage.Objects.Delete
import Network.Google.Storage.Objects.Get
import Network.Google.Storage.Objects.GetIamPolicy
import Network.Google.Storage.Objects.Insert
import Network.Google.Storage.Objects.List
import Network.Google.Storage.Objects.Patch
import Network.Google.Storage.Objects.Rewrite
import Network.Google.Storage.Objects.SetIamPolicy
import Network.Google.Storage.Objects.TestIamPermissions
import Network.Google.Storage.Objects.Update
import Network.Google.Storage.Objects.WatchAll
import Network.Google.Storage.Projects.HmacKeys.Create
import Network.Google.Storage.Projects.HmacKeys.Delete
import Network.Google.Storage.Projects.HmacKeys.Get
import Network.Google.Storage.Projects.HmacKeys.List
import Network.Google.Storage.Projects.HmacKeys.Update
import Network.Google.Storage.Projects.ServiceAccount.Get
import Network.Google.Storage.Types
