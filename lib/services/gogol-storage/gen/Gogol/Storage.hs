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
    (
    -- * Configuration
    StorageService,
    mkStorageService,

    -- ** Global Request Parameters
    StorageParams (..),

    -- ** OAuth Scopes
    CloudPlatform'FullControl,
      CloudPlatform'ReadOnly,
      Devstorage'FullControl,
      Devstorage'ReadOnly,
      Devstorage'ReadWrite,
      -- * Resources

    -- ** @storage.bucketAccessControls.delete@
    StorageBucketAccessControlsDelete (..),
    mkStorageBucketAccessControlsDelete,

    -- ** @storage.bucketAccessControls.get@
    StorageBucketAccessControlsGet (..),
    mkStorageBucketAccessControlsGet,

    -- ** @storage.bucketAccessControls.insert@
    StorageBucketAccessControlsInsert (..),
    mkStorageBucketAccessControlsInsert,

    -- ** @storage.bucketAccessControls.list@
    StorageBucketAccessControlsList (..),
    mkStorageBucketAccessControlsList,

    -- ** @storage.bucketAccessControls.patch@
    StorageBucketAccessControlsPatch (..),
    mkStorageBucketAccessControlsPatch,

    -- ** @storage.bucketAccessControls.update@
    StorageBucketAccessControlsUpdate (..),
    mkStorageBucketAccessControlsUpdate,

    -- ** @storage.buckets.delete@
    StorageBucketsDelete (..),
    mkStorageBucketsDelete,

    -- ** @storage.buckets.get@
    StorageBucketsGet (..),
    mkStorageBucketsGet,

    -- ** @storage.buckets.getIamPolicy@
    StorageBucketsGetIamPolicy (..),
    mkStorageBucketsGetIamPolicy,

    -- ** @storage.buckets.insert@
    StorageBucketsInsert (..),
    mkStorageBucketsInsert,

    -- ** @storage.buckets.list@
    StorageBucketsList (..),
    mkStorageBucketsList,

    -- ** @storage.buckets.lockRetentionPolicy@
    StorageBucketsLockRetentionPolicy (..),
    mkStorageBucketsLockRetentionPolicy,

    -- ** @storage.buckets.patch@
    StorageBucketsPatch (..),
    mkStorageBucketsPatch,

    -- ** @storage.buckets.setIamPolicy@
    StorageBucketsSetIamPolicy (..),
    mkStorageBucketsSetIamPolicy,

    -- ** @storage.buckets.testIamPermissions@
    StorageBucketsTestIamPermissions (..),
    mkStorageBucketsTestIamPermissions,

    -- ** @storage.buckets.update@
    StorageBucketsUpdate (..),
    mkStorageBucketsUpdate,

    -- ** @storage.channels.stop@
    StorageChannelsStop (..),

    -- ** @storage.defaultObjectAccessControls.delete@
    StorageDefaultObjectAccessControlsDelete (..),
    mkStorageDefaultObjectAccessControlsDelete,

    -- ** @storage.defaultObjectAccessControls.get@
    StorageDefaultObjectAccessControlsGet (..),
    mkStorageDefaultObjectAccessControlsGet,

    -- ** @storage.defaultObjectAccessControls.insert@
    StorageDefaultObjectAccessControlsInsert (..),
    mkStorageDefaultObjectAccessControlsInsert,

    -- ** @storage.defaultObjectAccessControls.list@
    StorageDefaultObjectAccessControlsList (..),
    mkStorageDefaultObjectAccessControlsList,

    -- ** @storage.defaultObjectAccessControls.patch@
    StorageDefaultObjectAccessControlsPatch (..),
    mkStorageDefaultObjectAccessControlsPatch,

    -- ** @storage.defaultObjectAccessControls.update@
    StorageDefaultObjectAccessControlsUpdate (..),
    mkStorageDefaultObjectAccessControlsUpdate,

    -- ** @storage.notifications.delete@
    StorageNotificationsDelete (..),
    mkStorageNotificationsDelete,

    -- ** @storage.notifications.get@
    StorageNotificationsGet (..),
    mkStorageNotificationsGet,

    -- ** @storage.notifications.insert@
    StorageNotificationsInsert (..),
    mkStorageNotificationsInsert,

    -- ** @storage.notifications.list@
    StorageNotificationsList (..),
    mkStorageNotificationsList,

    -- ** @storage.objectAccessControls.delete@
    StorageObjectAccessControlsDelete (..),
    mkStorageObjectAccessControlsDelete,

    -- ** @storage.objectAccessControls.get@
    StorageObjectAccessControlsGet (..),
    mkStorageObjectAccessControlsGet,

    -- ** @storage.objectAccessControls.insert@
    StorageObjectAccessControlsInsert (..),
    mkStorageObjectAccessControlsInsert,

    -- ** @storage.objectAccessControls.list@
    StorageObjectAccessControlsList (..),
    mkStorageObjectAccessControlsList,

    -- ** @storage.objectAccessControls.patch@
    StorageObjectAccessControlsPatch (..),
    mkStorageObjectAccessControlsPatch,

    -- ** @storage.objectAccessControls.update@
    StorageObjectAccessControlsUpdate (..),
    mkStorageObjectAccessControlsUpdate,

    -- ** @storage.objects.compose@
    StorageObjectsCompose (..),
    mkStorageObjectsCompose,

    -- ** @storage.objects.copy@
    StorageObjectsCopy (..),
    mkStorageObjectsCopy,

    -- ** @storage.objects.delete@
    StorageObjectsDelete (..),
    mkStorageObjectsDelete,

    -- ** @storage.objects.get@
    StorageObjectsGet (..),
    mkStorageObjectsGet,

    -- ** @storage.objects.getIamPolicy@
    StorageObjectsGetIamPolicy (..),
    mkStorageObjectsGetIamPolicy,

    -- ** @storage.objects.insert@
    StorageObjectsInsert (..),
    mkStorageObjectsInsert,

    -- ** @storage.objects.list@
    StorageObjectsList (..),
    mkStorageObjectsList,

    -- ** @storage.objects.patch@
    StorageObjectsPatch (..),
    mkStorageObjectsPatch,

    -- ** @storage.objects.rewrite@
    StorageObjectsRewrite (..),
    mkStorageObjectsRewrite,

    -- ** @storage.objects.setIamPolicy@
    StorageObjectsSetIamPolicy (..),
    mkStorageObjectsSetIamPolicy,

    -- ** @storage.objects.testIamPermissions@
    StorageObjectsTestIamPermissions (..),
    mkStorageObjectsTestIamPermissions,

    -- ** @storage.objects.update@
    StorageObjectsUpdate (..),
    mkStorageObjectsUpdate,

    -- ** @storage.objects.watchAll@
    StorageObjectsWatchAll (..),
    mkStorageObjectsWatchAll,

    -- ** @storage.projects.hmacKeys.create@
    StorageProjectsHmacKeysCreate (..),
    mkStorageProjectsHmacKeysCreate,

    -- ** @storage.projects.hmacKeys.delete@
    StorageProjectsHmacKeysDelete (..),
    mkStorageProjectsHmacKeysDelete,

    -- ** @storage.projects.hmacKeys.get@
    StorageProjectsHmacKeysGet (..),
    mkStorageProjectsHmacKeysGet,

    -- ** @storage.projects.hmacKeys.list@
    StorageProjectsHmacKeysList (..),
    mkStorageProjectsHmacKeysList,

    -- ** @storage.projects.hmacKeys.update@
    StorageProjectsHmacKeysUpdate (..),
    mkStorageProjectsHmacKeysUpdate,

    -- ** @storage.projects.serviceAccount.get@
    StorageProjectsServiceAccountGet (..),
    mkStorageProjectsServiceAccountGet,

    -- * Product Types

    -- ** Bucket
    Bucket (..),
#ifdef NOFIELDSELECTORS
    MkBucket (..),
#endif
    mkBucket,

    -- ** Bucket'Autoclass
    Bucket'Autoclass (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Autoclass (..),
#endif
    mkBucket'Autoclass,

    -- ** Bucket'Billing
    Bucket'Billing (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Billing (..),
#endif
    mkBucket'Billing,

    -- ** Bucket'CorsItem
    Bucket'CorsItem (..),
#ifdef NOFIELDSELECTORS
    MkBucket'CorsItem (..),
#endif
    mkBucket'CorsItem,

    -- ** Bucket'CustomPlacementConfig
    Bucket'CustomPlacementConfig (..),
#ifdef NOFIELDSELECTORS
    MkBucket'CustomPlacementConfig (..),
#endif
    mkBucket'CustomPlacementConfig,

    -- ** Bucket'Encryption
    Bucket'Encryption (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Encryption (..),
#endif
    mkBucket'Encryption,

    -- ** Bucket'IamConfiguration
    Bucket'IamConfiguration (..),
#ifdef NOFIELDSELECTORS
    MkBucket'IamConfiguration (..),
#endif
    mkBucket'IamConfiguration,

    -- ** Bucket'IamConfiguration'BucketPolicyOnly
    Bucket'IamConfiguration'BucketPolicyOnly (..),
#ifdef NOFIELDSELECTORS
    MkBucket'IamConfiguration'BucketPolicyOnly (..),
#endif
    mkBucket'IamConfiguration'BucketPolicyOnly,

    -- ** Bucket'IamConfiguration'UniformBucketLevelAccess
    Bucket'IamConfiguration'UniformBucketLevelAccess (..),
#ifdef NOFIELDSELECTORS
    MkBucket'IamConfiguration'UniformBucketLevelAccess (..),
#endif
    mkBucket'IamConfiguration'UniformBucketLevelAccess,

    -- ** Bucket'Labels
    Bucket'Labels (..),

    -- ** Bucket'Lifecycle
    Bucket'Lifecycle (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Lifecycle (..),
#endif
    mkBucket'Lifecycle,

    -- ** Bucket'Lifecycle'RuleItem
    Bucket'Lifecycle'RuleItem (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Lifecycle'RuleItem (..),
#endif
    mkBucket'Lifecycle'RuleItem,

    -- ** Bucket'Lifecycle'RuleItem'Action
    Bucket'Lifecycle'RuleItem'Action (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Lifecycle'RuleItem'Action (..),
#endif
    mkBucket'Lifecycle'RuleItem'Action,

    -- ** Bucket'Lifecycle'RuleItem'Condition
    Bucket'Lifecycle'RuleItem'Condition (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Lifecycle'RuleItem'Condition (..),
#endif
    mkBucket'Lifecycle'RuleItem'Condition,

    -- ** Bucket'Logging
    Bucket'Logging (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Logging (..),
#endif
    mkBucket'Logging,

    -- ** Bucket'Owner
    Bucket'Owner (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Owner (..),
#endif
    mkBucket'Owner,

    -- ** Bucket'RetentionPolicy
    Bucket'RetentionPolicy (..),
#ifdef NOFIELDSELECTORS
    MkBucket'RetentionPolicy (..),
#endif
    mkBucket'RetentionPolicy,

    -- ** Bucket'Versioning
    Bucket'Versioning (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Versioning (..),
#endif
    mkBucket'Versioning,

    -- ** Bucket'Website
    Bucket'Website (..),
#ifdef NOFIELDSELECTORS
    MkBucket'Website (..),
#endif
    mkBucket'Website,

    -- ** BucketAccessControl
    BucketAccessControl (..),
#ifdef NOFIELDSELECTORS
    MkBucketAccessControl (..),
#endif
    mkBucketAccessControl,

    -- ** BucketAccessControl'ProjectTeam
    BucketAccessControl'ProjectTeam (..),
#ifdef NOFIELDSELECTORS
    MkBucketAccessControl'ProjectTeam (..),
#endif
    mkBucketAccessControl'ProjectTeam,

    -- ** BucketAccessControls
    BucketAccessControls (..),
#ifdef NOFIELDSELECTORS
    MkBucketAccessControls (..),
#endif
    mkBucketAccessControls,

    -- ** Buckets
    Buckets (..),
#ifdef NOFIELDSELECTORS
    MkBuckets (..),
#endif
    mkBuckets,

    -- ** Channel
    Channel (..),
#ifdef NOFIELDSELECTORS
    MkChannel (..),
#endif
    mkChannel,

    -- ** Channel'Params
    Channel'Params (..),

    -- ** ComposeRequest
    ComposeRequest (..),
#ifdef NOFIELDSELECTORS
    MkComposeRequest (..),
#endif
    mkComposeRequest,

    -- ** ComposeRequest'SourceObjectsItem
    ComposeRequest'SourceObjectsItem (..),
#ifdef NOFIELDSELECTORS
    MkComposeRequest'SourceObjectsItem (..),
#endif
    mkComposeRequest'SourceObjectsItem,

    -- ** ComposeRequest'SourceObjectsItem'ObjectPreconditions
    ComposeRequest'SourceObjectsItem'ObjectPreconditions (..),
#ifdef NOFIELDSELECTORS
    MkComposeRequest'SourceObjectsItem'ObjectPreconditions (..),
#endif
    mkComposeRequest'SourceObjectsItem'ObjectPreconditions,

    -- ** Expr
    Expr (..),
#ifdef NOFIELDSELECTORS
    MkExpr (..),
#endif
    mkExpr,

    -- ** HmacKey
    HmacKey (..),
#ifdef NOFIELDSELECTORS
    MkHmacKey (..),
#endif
    mkHmacKey,

    -- ** HmacKeyMetadata
    HmacKeyMetadata (..),
#ifdef NOFIELDSELECTORS
    MkHmacKeyMetadata (..),
#endif
    mkHmacKeyMetadata,

    -- ** HmacKeysMetadata
    HmacKeysMetadata (..),
#ifdef NOFIELDSELECTORS
    MkHmacKeysMetadata (..),
#endif
    mkHmacKeysMetadata,

    -- ** Notification
    Notification (..),
#ifdef NOFIELDSELECTORS
    MkNotification (..),
#endif
    mkNotification,

    -- ** Notification'Custom_attributes
    Notification'Custom_attributes (..),

    -- ** Notifications
    Notifications (..),
#ifdef NOFIELDSELECTORS
    MkNotifications (..),
#endif
    mkNotifications,

    -- ** Object
    Object (..),
#ifdef NOFIELDSELECTORS
    MkObject (..),
#endif
    mkObject,

    -- ** Object'CustomerEncryption
    Object'CustomerEncryption (..),
#ifdef NOFIELDSELECTORS
    MkObject'CustomerEncryption (..),
#endif
    mkObject'CustomerEncryption,

    -- ** Object'Metadata
    Object'Metadata (..),

    -- ** Object'Owner
    Object'Owner (..),
#ifdef NOFIELDSELECTORS
    MkObject'Owner (..),
#endif
    mkObject'Owner,

    -- ** ObjectAccessControl
    ObjectAccessControl (..),
#ifdef NOFIELDSELECTORS
    MkObjectAccessControl (..),
#endif
    mkObjectAccessControl,

    -- ** ObjectAccessControl'ProjectTeam
    ObjectAccessControl'ProjectTeam (..),
#ifdef NOFIELDSELECTORS
    MkObjectAccessControl'ProjectTeam (..),
#endif
    mkObjectAccessControl'ProjectTeam,

    -- ** ObjectAccessControls
    ObjectAccessControls (..),
#ifdef NOFIELDSELECTORS
    MkObjectAccessControls (..),
#endif
    mkObjectAccessControls,

    -- ** Objects
    Objects (..),
#ifdef NOFIELDSELECTORS
    MkObjects (..),
#endif
    mkObjects,

    -- ** Policy
    Policy (..),
#ifdef NOFIELDSELECTORS
    MkPolicy (..),
#endif
    mkPolicy,

    -- ** Policy'BindingsItem
    Policy'BindingsItem (..),
#ifdef NOFIELDSELECTORS
    MkPolicy'BindingsItem (..),
#endif
    mkPolicy'BindingsItem,

    -- ** RewriteResponse
    RewriteResponse (..),
#ifdef NOFIELDSELECTORS
    MkRewriteResponse (..),
#endif
    mkRewriteResponse,

    -- ** ServiceAccount
    ServiceAccount (..),
#ifdef NOFIELDSELECTORS
    MkServiceAccount (..),
#endif
    mkServiceAccount,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
#ifdef NOFIELDSELECTORS
    MkTestIamPermissionsResponse (..),
#endif
    mkTestIamPermissionsResponse,

    -- * Enumeration Types

    -- ** CopyProjection
    CopyProjection (..),
  
    -- ** DestinationPredefinedAcl
    DestinationPredefinedAcl (..),
  
    -- ** GetProjection
    GetProjection (..),
  
    -- ** InsertPredefinedAcl
    InsertPredefinedAcl (..),
  
    -- ** InsertProjection
    InsertProjection (..),
  
    -- ** ListProjection
    ListProjection (..),
  
    -- ** PatchPredefinedAcl
    PatchPredefinedAcl (..),
  
    -- ** PatchProjection
    PatchProjection (..),
  
    -- ** PredefinedAcl
    PredefinedAcl (..),
  
    -- ** PredefinedDefaultObjectAcl
    PredefinedDefaultObjectAcl (..),
  
    -- ** Projection
    Projection (..),
  
    -- ** RewriteProjection
    RewriteProjection (..),
  
    -- ** UpdatePredefinedAcl
    UpdatePredefinedAcl (..),
  
    -- ** UpdateProjection
    UpdateProjection (..),
  
    -- ** WatchAllProjection
    WatchAllProjection (..),
                                                                                                      ) where

import Gogol.Storage.Types
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
