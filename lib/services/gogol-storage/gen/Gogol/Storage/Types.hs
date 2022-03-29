{-# LANGUAGE CPP #-}
-- |
-- Module      : Gogol.Storage.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Storage.Types
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

import qualified Network.Google.Prelude as Core

-- | View and manage your data across Google Cloud Platform services.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
-- | View your data across Google Cloud Platform services.
type CloudPlatform'ReadOnly = "https://www.googleapis.com/auth/cloud-platform.read-only"
-- | Manage your data and permissions in Google Cloud Storage.
type Devstorage'FullControl = "https://www.googleapis.com/auth/devstorage.full_control"
-- | View your data in Google Cloud Storage.
type Devstorage'ReadOnly = "https://www.googleapis.com/auth/devstorage.read_only"
-- | Manage your data in Google Cloud Storage.
type Devstorage'ReadWrite = "https://www.googleapis.com/auth/devstorage.read_write"
-- | Default request configuration for version @v1@ of the Cloud Storage JSON API.
type StorageService = Core.Service "storage:v1" StorageParams
-- | Global query parameters for version @v1@ of the Cloud Storage JSON API. These parameters will be added to the query string for every request.
--
-- Construct a default value using the 'mkStorageService' smart constructor.
data StorageParams = StorageParams
    {
      -- | Selector specifying which fields to include in a partial response.
      fields :: Core.Maybe Core.Text
      -- | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    , key :: Core.Maybe Core.Text
      -- | OAuth 2.0 token for the current user.
    , oauthToken :: Core.Maybe Core.Text
      -- | Returns response with indentations and line breaks.
    , prettyPrint :: Core.Bool
      -- | An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    , quotaUser :: Core.Maybe Core.Text
    }
    deriving stock (Core.Show, Core.Eq, Core.Ord, Core.Generic)

-- | Default configuration referring to version @v1@ of the Cloud Storage JSON API. This sets the host and port used as a starting point for constructing service requests.
mkStorageService :: StorageService
mkStorageService
  = Core.Service{Core.serviceRequest =
                   Core.defaultRequest{Core.secure = Core.True, Core.host = "https://storage.googleapis.com", Core.port = 443},
                 Core.serviceParams =
                   StorageParams{fields = Core.Nothing, key = Core.Nothing, oauthToken = Core.Nothing, prettyPrint = Core.False,
                                 quotaUser = Core.Nothing}}
