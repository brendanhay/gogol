{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Storage.Types
  ( -- * Configuration
    storageService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Devstorage'FullControl,
    Devstorage'ReadOnly,
    Devstorage'ReadWrite,

    -- * Types

    -- ** AdvanceRelocateBucketOperationRequest
    AdvanceRelocateBucketOperationRequest (..),
    newAdvanceRelocateBucketOperationRequest,

    -- ** AnywhereCache
    AnywhereCache (..),
    newAnywhereCache,

    -- ** AnywhereCaches
    AnywhereCaches (..),
    newAnywhereCaches,

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

    -- ** Bucket_HierarchicalNamespace
    Bucket_HierarchicalNamespace (..),
    newBucket_HierarchicalNamespace,

    -- ** Bucket_IamConfiguration
    Bucket_IamConfiguration (..),
    newBucket_IamConfiguration,

    -- ** Bucket_IamConfiguration_BucketPolicyOnly
    Bucket_IamConfiguration_BucketPolicyOnly (..),
    newBucket_IamConfiguration_BucketPolicyOnly,

    -- ** Bucket_IamConfiguration_UniformBucketLevelAccess
    Bucket_IamConfiguration_UniformBucketLevelAccess (..),
    newBucket_IamConfiguration_UniformBucketLevelAccess,

    -- ** Bucket_IpFilter
    Bucket_IpFilter (..),
    newBucket_IpFilter,

    -- ** Bucket_IpFilter_PublicNetworkSource
    Bucket_IpFilter_PublicNetworkSource (..),
    newBucket_IpFilter_PublicNetworkSource,

    -- ** Bucket_IpFilter_VpcNetworkSourcesItem
    Bucket_IpFilter_VpcNetworkSourcesItem (..),
    newBucket_IpFilter_VpcNetworkSourcesItem,

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

    -- ** Bucket_ObjectRetention
    Bucket_ObjectRetention (..),
    newBucket_ObjectRetention,

    -- ** Bucket_Owner
    Bucket_Owner (..),
    newBucket_Owner,

    -- ** Bucket_RetentionPolicy
    Bucket_RetentionPolicy (..),
    newBucket_RetentionPolicy,

    -- ** Bucket_SoftDeletePolicy
    Bucket_SoftDeletePolicy (..),
    newBucket_SoftDeletePolicy,

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

    -- ** BucketStorageLayout
    BucketStorageLayout (..),
    newBucketStorageLayout,

    -- ** BucketStorageLayout_CustomPlacementConfig
    BucketStorageLayout_CustomPlacementConfig (..),
    newBucketStorageLayout_CustomPlacementConfig,

    -- ** BucketStorageLayout_HierarchicalNamespace
    BucketStorageLayout_HierarchicalNamespace (..),
    newBucketStorageLayout_HierarchicalNamespace,

    -- ** Buckets
    Buckets (..),
    newBuckets,

    -- ** BulkRestoreObjectsRequest
    BulkRestoreObjectsRequest (..),
    newBulkRestoreObjectsRequest,

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

    -- ** Folder
    Folder (..),
    newFolder,

    -- ** Folder_PendingRenameInfo
    Folder_PendingRenameInfo (..),
    newFolder_PendingRenameInfo,

    -- ** Folders
    Folders (..),
    newFolders,

    -- ** GoogleLongrunningListOperationsResponse
    GoogleLongrunningListOperationsResponse (..),
    newGoogleLongrunningListOperationsResponse,

    -- ** GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- ** GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- ** GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- ** GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- ** GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- ** HmacKey
    HmacKey (..),
    newHmacKey,

    -- ** HmacKeyMetadata
    HmacKeyMetadata (..),
    newHmacKeyMetadata,

    -- ** HmacKeysMetadata
    HmacKeysMetadata (..),
    newHmacKeysMetadata,

    -- ** ManagedFolder
    ManagedFolder (..),
    newManagedFolder,

    -- ** ManagedFolders
    ManagedFolders (..),
    newManagedFolders,

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

    -- ** Object_Retention
    Object_Retention (..),
    newObject_Retention,

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

    -- ** RelocateBucketRequest
    RelocateBucketRequest (..),
    newRelocateBucketRequest,

    -- ** RelocateBucketRequest_DestinationCustomPlacementConfig
    RelocateBucketRequest_DestinationCustomPlacementConfig (..),
    newRelocateBucketRequest_DestinationCustomPlacementConfig,

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

    -- ** BucketsRestoreProjection
    BucketsRestoreProjection (..),

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

    -- ** ObjectsRestoreProjection
    ObjectsRestoreProjection (..),

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

import Gogol.Prelude qualified as Core
import Gogol.Storage.Internal.Product
import Gogol.Storage.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Storage JSON API. This contains the host and root path used as a starting point for constructing service requests.
storageService :: Core.ServiceConfig
storageService =
  Core.defaultService
    (Core.ServiceId "storage:v1")
    "storage.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud Platform services
type CloudPlatform'ReadOnly =
  "https://www.googleapis.com/auth/cloud-platform.read-only"

-- | Manage your data and permissions in Google Cloud Storage
type Devstorage'FullControl =
  "https://www.googleapis.com/auth/devstorage.full_control"

-- | View your data in Google Cloud Storage
type Devstorage'ReadOnly =
  "https://www.googleapis.com/auth/devstorage.read_only"

-- | Manage your data in Google Cloud Storage
type Devstorage'ReadWrite =
  "https://www.googleapis.com/auth/devstorage.read_write"
