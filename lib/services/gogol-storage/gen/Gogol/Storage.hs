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
-- Module      : Gogol.Storage
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stores and retrieves potentially large, immutable data objects.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference>
module Gogol.Storage
  ( -- * Configuration
    storageService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Devstorage'FullControl,
    Devstorage'ReadOnly,
    Devstorage'ReadWrite,

    -- * Resources

    -- ** storage.bucketAccessControls.delete
    StorageBucketAccessControlsDeleteResource,
    StorageBucketAccessControlsDelete (..),
    newStorageBucketAccessControlsDelete,

    -- ** storage.bucketAccessControls.get
    StorageBucketAccessControlsGetResource,
    StorageBucketAccessControlsGet (..),
    newStorageBucketAccessControlsGet,

    -- ** storage.bucketAccessControls.insert
    StorageBucketAccessControlsInsertResource,
    StorageBucketAccessControlsInsert (..),
    newStorageBucketAccessControlsInsert,

    -- ** storage.bucketAccessControls.list
    StorageBucketAccessControlsListResource,
    StorageBucketAccessControlsList (..),
    newStorageBucketAccessControlsList,

    -- ** storage.bucketAccessControls.patch
    StorageBucketAccessControlsPatchResource,
    StorageBucketAccessControlsPatch (..),
    newStorageBucketAccessControlsPatch,

    -- ** storage.bucketAccessControls.update
    StorageBucketAccessControlsUpdateResource,
    StorageBucketAccessControlsUpdate (..),
    newStorageBucketAccessControlsUpdate,

    -- ** storage.buckets.delete
    StorageBucketsDeleteResource,
    StorageBucketsDelete (..),
    newStorageBucketsDelete,

    -- ** storage.buckets.get
    StorageBucketsGetResource,
    StorageBucketsGet (..),
    newStorageBucketsGet,

    -- ** storage.buckets.getIamPolicy
    StorageBucketsGetIamPolicyResource,
    StorageBucketsGetIamPolicy (..),
    newStorageBucketsGetIamPolicy,

    -- ** storage.buckets.insert
    StorageBucketsInsertResource,
    StorageBucketsInsert (..),
    newStorageBucketsInsert,

    -- ** storage.buckets.list
    StorageBucketsListResource,
    StorageBucketsList (..),
    newStorageBucketsList,

    -- ** storage.buckets.lockRetentionPolicy
    StorageBucketsLockRetentionPolicyResource,
    StorageBucketsLockRetentionPolicy (..),
    newStorageBucketsLockRetentionPolicy,

    -- ** storage.buckets.patch
    StorageBucketsPatchResource,
    StorageBucketsPatch (..),
    newStorageBucketsPatch,

    -- ** storage.buckets.setIamPolicy
    StorageBucketsSetIamPolicyResource,
    StorageBucketsSetIamPolicy (..),
    newStorageBucketsSetIamPolicy,

    -- ** storage.buckets.testIamPermissions
    StorageBucketsTestIamPermissionsResource,
    StorageBucketsTestIamPermissions (..),
    newStorageBucketsTestIamPermissions,

    -- ** storage.buckets.update
    StorageBucketsUpdateResource,
    StorageBucketsUpdate (..),
    newStorageBucketsUpdate,

    -- ** storage.channels.stop
    StorageChannelsStopResource,
    StorageChannelsStop (..),
    newStorageChannelsStop,

    -- ** storage.defaultObjectAccessControls.delete
    StorageDefaultObjectAccessControlsDeleteResource,
    StorageDefaultObjectAccessControlsDelete (..),
    newStorageDefaultObjectAccessControlsDelete,

    -- ** storage.defaultObjectAccessControls.get
    StorageDefaultObjectAccessControlsGetResource,
    StorageDefaultObjectAccessControlsGet (..),
    newStorageDefaultObjectAccessControlsGet,

    -- ** storage.defaultObjectAccessControls.insert
    StorageDefaultObjectAccessControlsInsertResource,
    StorageDefaultObjectAccessControlsInsert (..),
    newStorageDefaultObjectAccessControlsInsert,

    -- ** storage.defaultObjectAccessControls.list
    StorageDefaultObjectAccessControlsListResource,
    StorageDefaultObjectAccessControlsList (..),
    newStorageDefaultObjectAccessControlsList,

    -- ** storage.defaultObjectAccessControls.patch
    StorageDefaultObjectAccessControlsPatchResource,
    StorageDefaultObjectAccessControlsPatch (..),
    newStorageDefaultObjectAccessControlsPatch,

    -- ** storage.defaultObjectAccessControls.update
    StorageDefaultObjectAccessControlsUpdateResource,
    StorageDefaultObjectAccessControlsUpdate (..),
    newStorageDefaultObjectAccessControlsUpdate,

    -- ** storage.notifications.delete
    StorageNotificationsDeleteResource,
    StorageNotificationsDelete (..),
    newStorageNotificationsDelete,

    -- ** storage.notifications.get
    StorageNotificationsGetResource,
    StorageNotificationsGet (..),
    newStorageNotificationsGet,

    -- ** storage.notifications.insert
    StorageNotificationsInsertResource,
    StorageNotificationsInsert (..),
    newStorageNotificationsInsert,

    -- ** storage.notifications.list
    StorageNotificationsListResource,
    StorageNotificationsList (..),
    newStorageNotificationsList,

    -- ** storage.objectAccessControls.delete
    StorageObjectAccessControlsDeleteResource,
    StorageObjectAccessControlsDelete (..),
    newStorageObjectAccessControlsDelete,

    -- ** storage.objectAccessControls.get
    StorageObjectAccessControlsGetResource,
    StorageObjectAccessControlsGet (..),
    newStorageObjectAccessControlsGet,

    -- ** storage.objectAccessControls.insert
    StorageObjectAccessControlsInsertResource,
    StorageObjectAccessControlsInsert (..),
    newStorageObjectAccessControlsInsert,

    -- ** storage.objectAccessControls.list
    StorageObjectAccessControlsListResource,
    StorageObjectAccessControlsList (..),
    newStorageObjectAccessControlsList,

    -- ** storage.objectAccessControls.patch
    StorageObjectAccessControlsPatchResource,
    StorageObjectAccessControlsPatch (..),
    newStorageObjectAccessControlsPatch,

    -- ** storage.objectAccessControls.update
    StorageObjectAccessControlsUpdateResource,
    StorageObjectAccessControlsUpdate (..),
    newStorageObjectAccessControlsUpdate,

    -- ** storage.objects.compose
    StorageObjectsComposeResource,
    StorageObjectsCompose (..),
    newStorageObjectsCompose,

    -- ** storage.objects.copy
    StorageObjectsCopyResource,
    StorageObjectsCopy (..),
    newStorageObjectsCopy,

    -- ** storage.objects.delete
    StorageObjectsDeleteResource,
    StorageObjectsDelete (..),
    newStorageObjectsDelete,

    -- ** storage.objects.get
    StorageObjectsGetResource,
    StorageObjectsGet (..),
    newStorageObjectsGet,

    -- ** storage.objects.getIamPolicy
    StorageObjectsGetIamPolicyResource,
    StorageObjectsGetIamPolicy (..),
    newStorageObjectsGetIamPolicy,

    -- ** storage.objects.insert
    StorageObjectsInsertResource,
    StorageObjectsInsert (..),
    newStorageObjectsInsert,

    -- ** storage.objects.list
    StorageObjectsListResource,
    StorageObjectsList (..),
    newStorageObjectsList,

    -- ** storage.objects.patch
    StorageObjectsPatchResource,
    StorageObjectsPatch (..),
    newStorageObjectsPatch,

    -- ** storage.objects.rewrite
    StorageObjectsRewriteResource,
    StorageObjectsRewrite (..),
    newStorageObjectsRewrite,

    -- ** storage.objects.setIamPolicy
    StorageObjectsSetIamPolicyResource,
    StorageObjectsSetIamPolicy (..),
    newStorageObjectsSetIamPolicy,

    -- ** storage.objects.testIamPermissions
    StorageObjectsTestIamPermissionsResource,
    StorageObjectsTestIamPermissions (..),
    newStorageObjectsTestIamPermissions,

    -- ** storage.objects.update
    StorageObjectsUpdateResource,
    StorageObjectsUpdate (..),
    newStorageObjectsUpdate,

    -- ** storage.objects.watchAll
    StorageObjectsWatchAllResource,
    StorageObjectsWatchAll (..),
    newStorageObjectsWatchAll,

    -- ** storage.projects.hmacKeys.create
    StorageProjectsHmacKeysCreateResource,
    StorageProjectsHmacKeysCreate (..),
    newStorageProjectsHmacKeysCreate,

    -- ** storage.projects.hmacKeys.delete
    StorageProjectsHmacKeysDeleteResource,
    StorageProjectsHmacKeysDelete (..),
    newStorageProjectsHmacKeysDelete,

    -- ** storage.projects.hmacKeys.get
    StorageProjectsHmacKeysGetResource,
    StorageProjectsHmacKeysGet (..),
    newStorageProjectsHmacKeysGet,

    -- ** storage.projects.hmacKeys.list
    StorageProjectsHmacKeysListResource,
    StorageProjectsHmacKeysList (..),
    newStorageProjectsHmacKeysList,

    -- ** storage.projects.hmacKeys.update
    StorageProjectsHmacKeysUpdateResource,
    StorageProjectsHmacKeysUpdate (..),
    newStorageProjectsHmacKeysUpdate,

    -- ** storage.projects.serviceAccount.get
    StorageProjectsServiceAccountGetResource,
    StorageProjectsServiceAccountGet (..),
    newStorageProjectsServiceAccountGet,

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

import Gogol.Storage.BucketAccessControls.Delete
import Gogol.Storage.BucketAccessControls.Get
import Gogol.Storage.BucketAccessControls.Insert
import Gogol.Storage.BucketAccessControls.List
import Gogol.Storage.BucketAccessControls.Patch
import Gogol.Storage.BucketAccessControls.Update
import Gogol.Storage.Buckets.Delete
import Gogol.Storage.Buckets.Get
import Gogol.Storage.Buckets.GetIamPolicy
import Gogol.Storage.Buckets.Insert
import Gogol.Storage.Buckets.List
import Gogol.Storage.Buckets.LockRetentionPolicy
import Gogol.Storage.Buckets.Patch
import Gogol.Storage.Buckets.SetIamPolicy
import Gogol.Storage.Buckets.TestIamPermissions
import Gogol.Storage.Buckets.Update
import Gogol.Storage.Channels.Stop
import Gogol.Storage.DefaultObjectAccessControls.Delete
import Gogol.Storage.DefaultObjectAccessControls.Get
import Gogol.Storage.DefaultObjectAccessControls.Insert
import Gogol.Storage.DefaultObjectAccessControls.List
import Gogol.Storage.DefaultObjectAccessControls.Patch
import Gogol.Storage.DefaultObjectAccessControls.Update
import Gogol.Storage.Notifications.Delete
import Gogol.Storage.Notifications.Get
import Gogol.Storage.Notifications.Insert
import Gogol.Storage.Notifications.List
import Gogol.Storage.ObjectAccessControls.Delete
import Gogol.Storage.ObjectAccessControls.Get
import Gogol.Storage.ObjectAccessControls.Insert
import Gogol.Storage.ObjectAccessControls.List
import Gogol.Storage.ObjectAccessControls.Patch
import Gogol.Storage.ObjectAccessControls.Update
import Gogol.Storage.Objects.Compose
import Gogol.Storage.Objects.Copy
import Gogol.Storage.Objects.Delete
import Gogol.Storage.Objects.Get
import Gogol.Storage.Objects.GetIamPolicy
import Gogol.Storage.Objects.Insert
import Gogol.Storage.Objects.List
import Gogol.Storage.Objects.Patch
import Gogol.Storage.Objects.Rewrite
import Gogol.Storage.Objects.SetIamPolicy
import Gogol.Storage.Objects.TestIamPermissions
import Gogol.Storage.Objects.Update
import Gogol.Storage.Objects.WatchAll
import Gogol.Storage.Projects.HmacKeys.Create
import Gogol.Storage.Projects.HmacKeys.Delete
import Gogol.Storage.Projects.HmacKeys.Get
import Gogol.Storage.Projects.HmacKeys.List
import Gogol.Storage.Projects.HmacKeys.Update
import Gogol.Storage.Projects.ServiceAccount.Get
import Gogol.Storage.Types
