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
-- Module      : Gogol.Storage.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Storage.Types
  ( -- * Configuration
    storageService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    storageFull_controlScope,
    storageRead_OnlyScope,
    storageRead_writeScope,

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

import qualified Gogol.Prelude as Core
import Gogol.Storage.Internal.Product
import Gogol.Storage.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Storage JSON API. This contains the host and root path used as a starting point for constructing service requests.
storageService :: Core.ServiceConfig
storageService =
  Core.defaultService
    (Core.ServiceId "storage:v1")
    "storage.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Core.Proxy

-- | Manage your data and permissions in Google Cloud Storage
storageFull_controlScope :: Core.Proxy '["https://www.googleapis.com/auth/devstorage.full_control"]
storageFull_controlScope = Core.Proxy

-- | View your data in Google Cloud Storage
storageRead_OnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/devstorage.read_only"]
storageRead_OnlyScope = Core.Proxy

-- | Manage your data in Google Cloud Storage
storageRead_writeScope :: Core.Proxy '["https://www.googleapis.com/auth/devstorage.read_write"]
storageRead_writeScope = Core.Proxy
