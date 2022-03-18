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
-- Module      : Gogol.Storage.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Storage.Internal.Product
  ( -- * Bucket
    Bucket (..),
    newBucket,

    -- * Bucket_Autoclass
    Bucket_Autoclass (..),
    newBucket_Autoclass,

    -- * Bucket_Billing
    Bucket_Billing (..),
    newBucket_Billing,

    -- * Bucket_CorsItem
    Bucket_CorsItem (..),
    newBucket_CorsItem,

    -- * Bucket_CustomPlacementConfig
    Bucket_CustomPlacementConfig (..),
    newBucket_CustomPlacementConfig,

    -- * Bucket_Encryption
    Bucket_Encryption (..),
    newBucket_Encryption,

    -- * Bucket_IamConfiguration
    Bucket_IamConfiguration (..),
    newBucket_IamConfiguration,

    -- * Bucket_IamConfiguration_BucketPolicyOnly
    Bucket_IamConfiguration_BucketPolicyOnly (..),
    newBucket_IamConfiguration_BucketPolicyOnly,

    -- * Bucket_IamConfiguration_UniformBucketLevelAccess
    Bucket_IamConfiguration_UniformBucketLevelAccess (..),
    newBucket_IamConfiguration_UniformBucketLevelAccess,

    -- * Bucket_Labels
    Bucket_Labels (..),
    newBucket_Labels,

    -- * Bucket_Lifecycle
    Bucket_Lifecycle (..),
    newBucket_Lifecycle,

    -- * Bucket_Lifecycle_RuleItem
    Bucket_Lifecycle_RuleItem (..),
    newBucket_Lifecycle_RuleItem,

    -- * Bucket_Lifecycle_RuleItem_Action
    Bucket_Lifecycle_RuleItem_Action (..),
    newBucket_Lifecycle_RuleItem_Action,

    -- * Bucket_Lifecycle_RuleItem_Condition
    Bucket_Lifecycle_RuleItem_Condition (..),
    newBucket_Lifecycle_RuleItem_Condition,

    -- * Bucket_Logging
    Bucket_Logging (..),
    newBucket_Logging,

    -- * Bucket_Owner
    Bucket_Owner (..),
    newBucket_Owner,

    -- * Bucket_RetentionPolicy
    Bucket_RetentionPolicy (..),
    newBucket_RetentionPolicy,

    -- * Bucket_Versioning
    Bucket_Versioning (..),
    newBucket_Versioning,

    -- * Bucket_Website
    Bucket_Website (..),
    newBucket_Website,

    -- * BucketAccessControl
    BucketAccessControl (..),
    newBucketAccessControl,

    -- * BucketAccessControl_ProjectTeam
    BucketAccessControl_ProjectTeam (..),
    newBucketAccessControl_ProjectTeam,

    -- * BucketAccessControls
    BucketAccessControls (..),
    newBucketAccessControls,

    -- * Buckets
    Buckets (..),
    newBuckets,

    -- * Channel
    Channel (..),
    newChannel,

    -- * Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- * ComposeRequest
    ComposeRequest (..),
    newComposeRequest,

    -- * ComposeRequest_SourceObjectsItem
    ComposeRequest_SourceObjectsItem (..),
    newComposeRequest_SourceObjectsItem,

    -- * ComposeRequest_SourceObjectsItem_ObjectPreconditions
    ComposeRequest_SourceObjectsItem_ObjectPreconditions (..),
    newComposeRequest_SourceObjectsItem_ObjectPreconditions,

    -- * Expr
    Expr (..),
    newExpr,

    -- * HmacKey
    HmacKey (..),
    newHmacKey,

    -- * HmacKeyMetadata
    HmacKeyMetadata (..),
    newHmacKeyMetadata,

    -- * HmacKeysMetadata
    HmacKeysMetadata (..),
    newHmacKeysMetadata,

    -- * Notification
    Notification (..),
    newNotification,

    -- * Notification_Custom_attributes
    Notification_Custom_attributes (..),
    newNotification_Custom_attributes,

    -- * Notifications
    Notifications (..),
    newNotifications,

    -- * Object
    Object (..),
    newObject,

    -- * Object_CustomerEncryption
    Object_CustomerEncryption (..),
    newObject_CustomerEncryption,

    -- * Object_Metadata
    Object_Metadata (..),
    newObject_Metadata,

    -- * Object_Owner
    Object_Owner (..),
    newObject_Owner,

    -- * ObjectAccessControl
    ObjectAccessControl (..),
    newObjectAccessControl,

    -- * ObjectAccessControl_ProjectTeam
    ObjectAccessControl_ProjectTeam (..),
    newObjectAccessControl_ProjectTeam,

    -- * ObjectAccessControls
    ObjectAccessControls (..),
    newObjectAccessControls,

    -- * Objects
    Objects (..),
    newObjects,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Policy_BindingsItem
    Policy_BindingsItem (..),
    newPolicy_BindingsItem,

    -- * RewriteResponse
    RewriteResponse (..),
    newRewriteResponse,

    -- * ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Internal.Sum

-- | A bucket.
--
-- /See:/ 'newBucket' smart constructor.
data Bucket = Bucket
  { -- | Access controls on the bucket.
    acl :: (Core.Maybe [BucketAccessControl]),
    -- | The bucket\'s Autoclass configuration.
    autoclass :: (Core.Maybe Bucket_Autoclass),
    -- | The bucket\'s billing configuration.
    billing :: (Core.Maybe Bucket_Billing),
    -- | The bucket\'s Cross-Origin Resource Sharing (CORS) configuration.
    cors :: (Core.Maybe [Bucket_CorsItem]),
    -- | The bucket\'s custom placement configuration for Custom Dual Regions.
    customPlacementConfig :: (Core.Maybe Bucket_CustomPlacementConfig),
    -- | The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold\'s release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed.
    defaultEventBasedHold :: (Core.Maybe Core.Bool),
    -- | Default access controls to apply to new objects when no ACL is provided.
    defaultObjectAcl :: (Core.Maybe [ObjectAccessControl]),
    -- | Encryption configuration for a bucket.
    encryption :: (Core.Maybe Bucket_Encryption),
    -- | HTTP 1.1 Entity tag for the bucket.
    etag :: (Core.Maybe Core.Text),
    -- | The bucket\'s IAM configuration.
    iamConfiguration :: (Core.Maybe Bucket_IamConfiguration),
    -- | The ID of the bucket. For buckets, the id and name properties are the same.
    id :: (Core.Maybe Core.Text),
    -- | The kind of item this is. For buckets, this is always storage#bucket.
    kind :: Core.Text,
    -- | User-provided labels, in key\/value pairs.
    labels :: (Core.Maybe Bucket_Labels),
    -- | The bucket\'s lifecycle configuration. See lifecycle management for more information.
    lifecycle :: (Core.Maybe Bucket_Lifecycle),
    -- | The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer\'s guide for the authoritative list.
    location :: (Core.Maybe Core.Text),
    -- | The type of the bucket location.
    locationType :: (Core.Maybe Core.Text),
    -- | The bucket\'s logging configuration, which defines the destination bucket and optional name prefix for the current bucket\'s logs.
    logging :: (Core.Maybe Bucket_Logging),
    -- | The metadata generation of this bucket.
    metageneration :: (Core.Maybe Core.Int64),
    -- | The name of the bucket.
    name :: (Core.Maybe Core.Text),
    -- | The owner of the bucket. This is always the project team\'s owner group.
    owner :: (Core.Maybe Bucket_Owner),
    -- | The project number of the project the bucket belongs to.
    projectNumber :: (Core.Maybe Core.Word64),
    -- | The bucket\'s retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION/DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION/DENIED error.
    retentionPolicy :: (Core.Maybe Bucket_RetentionPolicy),
    -- | The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replication on a bucket.
    rpo :: (Core.Maybe Core.Text),
    -- | Reserved for future use.
    satisfiesPZS :: (Core.Maybe Core.Bool),
    -- | The URI of this bucket.
    selfLink :: (Core.Maybe Core.Text),
    -- | The bucket\'s default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI/REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE/REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.
    storageClass :: (Core.Maybe Core.Text),
    -- | The creation time of the bucket in RFC 3339 format.
    timeCreated :: (Core.Maybe Core.DateTime'),
    -- | The modification time of the bucket in RFC 3339 format.
    updated :: (Core.Maybe Core.DateTime'),
    -- | The bucket\'s versioning configuration.
    versioning :: (Core.Maybe Bucket_Versioning),
    -- | The bucket\'s website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
    website :: (Core.Maybe Bucket_Website)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket' with the minimum fields required to make a request.
newBucket ::
  Bucket
newBucket =
  Bucket
    { acl = Core.Nothing,
      autoclass = Core.Nothing,
      billing = Core.Nothing,
      cors = Core.Nothing,
      customPlacementConfig = Core.Nothing,
      defaultEventBasedHold = Core.Nothing,
      defaultObjectAcl = Core.Nothing,
      encryption = Core.Nothing,
      etag = Core.Nothing,
      iamConfiguration = Core.Nothing,
      id = Core.Nothing,
      kind = "storage#bucket",
      labels = Core.Nothing,
      lifecycle = Core.Nothing,
      location = Core.Nothing,
      locationType = Core.Nothing,
      logging = Core.Nothing,
      metageneration = Core.Nothing,
      name = Core.Nothing,
      owner = Core.Nothing,
      projectNumber = Core.Nothing,
      retentionPolicy = Core.Nothing,
      rpo = Core.Nothing,
      satisfiesPZS = Core.Nothing,
      selfLink = Core.Nothing,
      storageClass = Core.Nothing,
      timeCreated = Core.Nothing,
      updated = Core.Nothing,
      versioning = Core.Nothing,
      website = Core.Nothing
    }

instance Core.FromJSON Bucket where
  parseJSON =
    Core.withObject
      "Bucket"
      ( \o ->
          Bucket
            Core.<$> (o Core..:? "acl" Core..!= Core.mempty)
            Core.<*> (o Core..:? "autoclass")
            Core.<*> (o Core..:? "billing")
            Core.<*> (o Core..:? "cors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "customPlacementConfig")
            Core.<*> (o Core..:? "defaultEventBasedHold")
            Core.<*> (o Core..:? "defaultObjectAcl" Core..!= Core.mempty)
            Core.<*> (o Core..:? "encryption")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "iamConfiguration")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "storage#bucket")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "lifecycle")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "locationType")
            Core.<*> (o Core..:? "logging")
            Core.<*> (o Core..:? "metageneration")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "owner")
            Core.<*> (o Core..:? "projectNumber")
            Core.<*> (o Core..:? "retentionPolicy")
            Core.<*> (o Core..:? "rpo")
            Core.<*> (o Core..:? "satisfiesPZS")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "storageClass")
            Core.<*> (o Core..:? "timeCreated")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "versioning")
            Core.<*> (o Core..:? "website")
      )

instance Core.ToJSON Bucket where
  toJSON Bucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("acl" Core..=) Core.<$> acl,
            ("autoclass" Core..=) Core.<$> autoclass,
            ("billing" Core..=) Core.<$> billing,
            ("cors" Core..=) Core.<$> cors,
            ("customPlacementConfig" Core..=)
              Core.<$> customPlacementConfig,
            ("defaultEventBasedHold" Core..=)
              Core.<$> defaultEventBasedHold,
            ("defaultObjectAcl" Core..=)
              Core.<$> defaultObjectAcl,
            ("encryption" Core..=) Core.<$> encryption,
            ("etag" Core..=) Core.<$> etag,
            ("iamConfiguration" Core..=)
              Core.<$> iamConfiguration,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("lifecycle" Core..=) Core.<$> lifecycle,
            ("location" Core..=) Core.<$> location,
            ("locationType" Core..=) Core.<$> locationType,
            ("logging" Core..=) Core.<$> logging,
            ("metageneration" Core..=) Core.. Core.AsText
              Core.<$> metageneration,
            ("name" Core..=) Core.<$> name,
            ("owner" Core..=) Core.<$> owner,
            ("projectNumber" Core..=) Core.. Core.AsText
              Core.<$> projectNumber,
            ("retentionPolicy" Core..=) Core.<$> retentionPolicy,
            ("rpo" Core..=) Core.<$> rpo,
            ("satisfiesPZS" Core..=) Core.<$> satisfiesPZS,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("storageClass" Core..=) Core.<$> storageClass,
            ("timeCreated" Core..=) Core.<$> timeCreated,
            ("updated" Core..=) Core.<$> updated,
            ("versioning" Core..=) Core.<$> versioning,
            ("website" Core..=) Core.<$> website
          ]
      )

-- | The bucket\'s Autoclass configuration.
--
-- /See:/ 'newBucket_Autoclass' smart constructor.
data Bucket_Autoclass = Bucket_Autoclass
  { -- | Whether or not Autoclass is enabled on this bucket
    enabled :: (Core.Maybe Core.Bool),
    -- | A date and time in RFC 3339 format representing the instant at which \"enabled\" was last toggled.
    toggleTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Autoclass' with the minimum fields required to make a request.
newBucket_Autoclass ::
  Bucket_Autoclass
newBucket_Autoclass =
  Bucket_Autoclass {enabled = Core.Nothing, toggleTime = Core.Nothing}

instance Core.FromJSON Bucket_Autoclass where
  parseJSON =
    Core.withObject
      "Bucket_Autoclass"
      ( \o ->
          Bucket_Autoclass
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "toggleTime")
      )

instance Core.ToJSON Bucket_Autoclass where
  toJSON Bucket_Autoclass {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("toggleTime" Core..=) Core.<$> toggleTime
          ]
      )

-- | The bucket\'s billing configuration.
--
-- /See:/ 'newBucket_Billing' smart constructor.
newtype Bucket_Billing = Bucket_Billing
  { -- | When set to true, Requester Pays is enabled for this bucket.
    requesterPays :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Billing' with the minimum fields required to make a request.
newBucket_Billing ::
  Bucket_Billing
newBucket_Billing = Bucket_Billing {requesterPays = Core.Nothing}

instance Core.FromJSON Bucket_Billing where
  parseJSON =
    Core.withObject
      "Bucket_Billing"
      ( \o ->
          Bucket_Billing Core.<$> (o Core..:? "requesterPays")
      )

instance Core.ToJSON Bucket_Billing where
  toJSON Bucket_Billing {..} =
    Core.object
      ( Core.catMaybes
          [("requesterPays" Core..=) Core.<$> requesterPays]
      )

--
-- /See:/ 'newBucket_CorsItem' smart constructor.
data Bucket_CorsItem = Bucket_CorsItem
  { -- | The value, in seconds, to return in the Access-Control-Max-Age header used in preflight responses.
    maxAgeSeconds :: (Core.Maybe Core.Int32),
    -- | The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: \"*\" is permitted in the list of methods, and means \"any method\".
    method :: (Core.Maybe [Core.Text]),
    -- | The list of Origins eligible to receive CORS response headers. Note: \"*\" is permitted in the list of origins, and means \"any Origin\".
    origin :: (Core.Maybe [Core.Text]),
    -- | The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.
    responseHeader :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_CorsItem' with the minimum fields required to make a request.
newBucket_CorsItem ::
  Bucket_CorsItem
newBucket_CorsItem =
  Bucket_CorsItem
    { maxAgeSeconds = Core.Nothing,
      method = Core.Nothing,
      origin = Core.Nothing,
      responseHeader = Core.Nothing
    }

instance Core.FromJSON Bucket_CorsItem where
  parseJSON =
    Core.withObject
      "Bucket_CorsItem"
      ( \o ->
          Bucket_CorsItem
            Core.<$> (o Core..:? "maxAgeSeconds")
            Core.<*> (o Core..:? "method" Core..!= Core.mempty)
            Core.<*> (o Core..:? "origin" Core..!= Core.mempty)
            Core.<*> (o Core..:? "responseHeader" Core..!= Core.mempty)
      )

instance Core.ToJSON Bucket_CorsItem where
  toJSON Bucket_CorsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxAgeSeconds" Core..=) Core.<$> maxAgeSeconds,
            ("method" Core..=) Core.<$> method,
            ("origin" Core..=) Core.<$> origin,
            ("responseHeader" Core..=) Core.<$> responseHeader
          ]
      )

-- | The bucket\'s custom placement configuration for Custom Dual Regions.
--
-- /See:/ 'newBucket_CustomPlacementConfig' smart constructor.
newtype Bucket_CustomPlacementConfig = Bucket_CustomPlacementConfig
  { -- | The list of regional locations in which data is placed.
    dataLocations :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_CustomPlacementConfig' with the minimum fields required to make a request.
newBucket_CustomPlacementConfig ::
  Bucket_CustomPlacementConfig
newBucket_CustomPlacementConfig =
  Bucket_CustomPlacementConfig {dataLocations = Core.Nothing}

instance Core.FromJSON Bucket_CustomPlacementConfig where
  parseJSON =
    Core.withObject
      "Bucket_CustomPlacementConfig"
      ( \o ->
          Bucket_CustomPlacementConfig
            Core.<$> (o Core..:? "dataLocations" Core..!= Core.mempty)
      )

instance Core.ToJSON Bucket_CustomPlacementConfig where
  toJSON Bucket_CustomPlacementConfig {..} =
    Core.object
      ( Core.catMaybes
          [("dataLocations" Core..=) Core.<$> dataLocations]
      )

-- | Encryption configuration for a bucket.
--
-- /See:/ 'newBucket_Encryption' smart constructor.
newtype Bucket_Encryption = Bucket_Encryption
  { -- | A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.
    defaultKmsKeyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Encryption' with the minimum fields required to make a request.
newBucket_Encryption ::
  Bucket_Encryption
newBucket_Encryption = Bucket_Encryption {defaultKmsKeyName = Core.Nothing}

instance Core.FromJSON Bucket_Encryption where
  parseJSON =
    Core.withObject
      "Bucket_Encryption"
      ( \o ->
          Bucket_Encryption
            Core.<$> (o Core..:? "defaultKmsKeyName")
      )

instance Core.ToJSON Bucket_Encryption where
  toJSON Bucket_Encryption {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultKmsKeyName" Core..=)
              Core.<$> defaultKmsKeyName
          ]
      )

-- | The bucket\'s IAM configuration.
--
-- /See:/ 'newBucket_IamConfiguration' smart constructor.
data Bucket_IamConfiguration = Bucket_IamConfiguration
  { -- | The bucket\'s uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
    bucketPolicyOnly :: (Core.Maybe Bucket_IamConfiguration_BucketPolicyOnly),
    -- | The bucket\'s Public Access Prevention configuration. Currently, \'inherited\' and \'enforced\' are supported.
    publicAccessPrevention :: (Core.Maybe Core.Text),
    -- | The bucket\'s uniform bucket-level access configuration.
    uniformBucketLevelAccess :: (Core.Maybe Bucket_IamConfiguration_UniformBucketLevelAccess)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_IamConfiguration' with the minimum fields required to make a request.
newBucket_IamConfiguration ::
  Bucket_IamConfiguration
newBucket_IamConfiguration =
  Bucket_IamConfiguration
    { bucketPolicyOnly = Core.Nothing,
      publicAccessPrevention = Core.Nothing,
      uniformBucketLevelAccess = Core.Nothing
    }

instance Core.FromJSON Bucket_IamConfiguration where
  parseJSON =
    Core.withObject
      "Bucket_IamConfiguration"
      ( \o ->
          Bucket_IamConfiguration
            Core.<$> (o Core..:? "bucketPolicyOnly")
            Core.<*> (o Core..:? "publicAccessPrevention")
            Core.<*> (o Core..:? "uniformBucketLevelAccess")
      )

instance Core.ToJSON Bucket_IamConfiguration where
  toJSON Bucket_IamConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketPolicyOnly" Core..=)
              Core.<$> bucketPolicyOnly,
            ("publicAccessPrevention" Core..=)
              Core.<$> publicAccessPrevention,
            ("uniformBucketLevelAccess" Core..=)
              Core.<$> uniformBucketLevelAccess
          ]
      )

-- | The bucket\'s uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
--
-- /See:/ 'newBucket_IamConfiguration_BucketPolicyOnly' smart constructor.
data Bucket_IamConfiguration_BucketPolicyOnly = Bucket_IamConfiguration_BucketPolicyOnly
  { -- | If set, access is controlled only by bucket-level or above IAM policies.
    enabled :: (Core.Maybe Core.Bool),
    -- | The deadline for changing iamConfiguration.bucketPolicyOnly.enabled from true to false in RFC 3339 format. iamConfiguration.bucketPolicyOnly.enabled may be changed from true to false until the locked time, after which the field is immutable.
    lockedTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_IamConfiguration_BucketPolicyOnly' with the minimum fields required to make a request.
newBucket_IamConfiguration_BucketPolicyOnly ::
  Bucket_IamConfiguration_BucketPolicyOnly
newBucket_IamConfiguration_BucketPolicyOnly =
  Bucket_IamConfiguration_BucketPolicyOnly
    { enabled = Core.Nothing,
      lockedTime = Core.Nothing
    }

instance
  Core.FromJSON
    Bucket_IamConfiguration_BucketPolicyOnly
  where
  parseJSON =
    Core.withObject
      "Bucket_IamConfiguration_BucketPolicyOnly"
      ( \o ->
          Bucket_IamConfiguration_BucketPolicyOnly
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "lockedTime")
      )

instance
  Core.ToJSON
    Bucket_IamConfiguration_BucketPolicyOnly
  where
  toJSON Bucket_IamConfiguration_BucketPolicyOnly {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("lockedTime" Core..=) Core.<$> lockedTime
          ]
      )

-- | The bucket\'s uniform bucket-level access configuration.
--
-- /See:/ 'newBucket_IamConfiguration_UniformBucketLevelAccess' smart constructor.
data Bucket_IamConfiguration_UniformBucketLevelAccess = Bucket_IamConfiguration_UniformBucketLevelAccess
  { -- | If set, access is controlled only by bucket-level or above IAM policies.
    enabled :: (Core.Maybe Core.Bool),
    -- | The deadline for changing iamConfiguration.uniformBucketLevelAccess.enabled from true to false in RFC 3339 format. iamConfiguration.uniformBucketLevelAccess.enabled may be changed from true to false until the locked time, after which the field is immutable.
    lockedTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_IamConfiguration_UniformBucketLevelAccess' with the minimum fields required to make a request.
newBucket_IamConfiguration_UniformBucketLevelAccess ::
  Bucket_IamConfiguration_UniformBucketLevelAccess
newBucket_IamConfiguration_UniformBucketLevelAccess =
  Bucket_IamConfiguration_UniformBucketLevelAccess
    { enabled = Core.Nothing,
      lockedTime = Core.Nothing
    }

instance
  Core.FromJSON
    Bucket_IamConfiguration_UniformBucketLevelAccess
  where
  parseJSON =
    Core.withObject
      "Bucket_IamConfiguration_UniformBucketLevelAccess"
      ( \o ->
          Bucket_IamConfiguration_UniformBucketLevelAccess
            Core.<$> (o Core..:? "enabled")
              Core.<*> (o Core..:? "lockedTime")
      )

instance
  Core.ToJSON
    Bucket_IamConfiguration_UniformBucketLevelAccess
  where
  toJSON
    Bucket_IamConfiguration_UniformBucketLevelAccess {..} =
      Core.object
        ( Core.catMaybes
            [ ("enabled" Core..=) Core.<$> enabled,
              ("lockedTime" Core..=) Core.<$> lockedTime
            ]
        )

-- | User-provided labels, in key\/value pairs.
--
-- /See:/ 'newBucket_Labels' smart constructor.
newtype Bucket_Labels = Bucket_Labels
  { -- | An individual label entry.
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Labels' with the minimum fields required to make a request.
newBucket_Labels ::
  -- |  An individual label entry. See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Bucket_Labels
newBucket_Labels additional = Bucket_Labels {additional = additional}

instance Core.FromJSON Bucket_Labels where
  parseJSON =
    Core.withObject
      "Bucket_Labels"
      ( \o ->
          Bucket_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Bucket_Labels where
  toJSON Bucket_Labels {..} = Core.toJSON additional

-- | The bucket\'s lifecycle configuration. See lifecycle management for more information.
--
-- /See:/ 'newBucket_Lifecycle' smart constructor.
newtype Bucket_Lifecycle = Bucket_Lifecycle
  { -- | A lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken.
    rule :: (Core.Maybe [Bucket_Lifecycle_RuleItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Lifecycle' with the minimum fields required to make a request.
newBucket_Lifecycle ::
  Bucket_Lifecycle
newBucket_Lifecycle = Bucket_Lifecycle {rule = Core.Nothing}

instance Core.FromJSON Bucket_Lifecycle where
  parseJSON =
    Core.withObject
      "Bucket_Lifecycle"
      ( \o ->
          Bucket_Lifecycle
            Core.<$> (o Core..:? "rule" Core..!= Core.mempty)
      )

instance Core.ToJSON Bucket_Lifecycle where
  toJSON Bucket_Lifecycle {..} =
    Core.object
      (Core.catMaybes [("rule" Core..=) Core.<$> rule])

--
-- /See:/ 'newBucket_Lifecycle_RuleItem' smart constructor.
data Bucket_Lifecycle_RuleItem = Bucket_Lifecycle_RuleItem
  { -- | The action to take.
    action :: (Core.Maybe Bucket_Lifecycle_RuleItem_Action),
    -- | The condition(s) under which the action will be taken.
    condition :: (Core.Maybe Bucket_Lifecycle_RuleItem_Condition)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Lifecycle_RuleItem' with the minimum fields required to make a request.
newBucket_Lifecycle_RuleItem ::
  Bucket_Lifecycle_RuleItem
newBucket_Lifecycle_RuleItem =
  Bucket_Lifecycle_RuleItem {action = Core.Nothing, condition = Core.Nothing}

instance Core.FromJSON Bucket_Lifecycle_RuleItem where
  parseJSON =
    Core.withObject
      "Bucket_Lifecycle_RuleItem"
      ( \o ->
          Bucket_Lifecycle_RuleItem
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "condition")
      )

instance Core.ToJSON Bucket_Lifecycle_RuleItem where
  toJSON Bucket_Lifecycle_RuleItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("condition" Core..=) Core.<$> condition
          ]
      )

-- | The action to take.
--
-- /See:/ 'newBucket_Lifecycle_RuleItem_Action' smart constructor.
data Bucket_Lifecycle_RuleItem_Action = Bucket_Lifecycle_RuleItem_Action
  { -- | Target storage class. Required iff the type of the action is SetStorageClass.
    storageClass :: (Core.Maybe Core.Text),
    -- | Type of the action. Currently, only Delete and SetStorageClass are supported.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Lifecycle_RuleItem_Action' with the minimum fields required to make a request.
newBucket_Lifecycle_RuleItem_Action ::
  Bucket_Lifecycle_RuleItem_Action
newBucket_Lifecycle_RuleItem_Action =
  Bucket_Lifecycle_RuleItem_Action
    { storageClass = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    Bucket_Lifecycle_RuleItem_Action
  where
  parseJSON =
    Core.withObject
      "Bucket_Lifecycle_RuleItem_Action"
      ( \o ->
          Bucket_Lifecycle_RuleItem_Action
            Core.<$> (o Core..:? "storageClass")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Bucket_Lifecycle_RuleItem_Action where
  toJSON Bucket_Lifecycle_RuleItem_Action {..} =
    Core.object
      ( Core.catMaybes
          [ ("storageClass" Core..=) Core.<$> storageClass,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The condition(s) under which the action will be taken.
--
-- /See:/ 'newBucket_Lifecycle_RuleItem_Condition' smart constructor.
data Bucket_Lifecycle_RuleItem_Condition = Bucket_Lifecycle_RuleItem_Condition
  { -- | Age of an object (in days). This condition is satisfied when an object reaches the specified age.
    age :: (Core.Maybe Core.Int32),
    -- | A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when an object is created before midnight of the specified date in UTC.
    createdBefore :: (Core.Maybe Core.Date'),
    -- | A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when the custom time on an object is before this date in UTC.
    customTimeBefore :: (Core.Maybe Core.Date'),
    -- | Number of days elapsed since the user-specified timestamp set on an object. The condition is satisfied if the days elapsed is at least this number. If no custom timestamp is specified on an object, the condition does not apply.
    daysSinceCustomTime :: (Core.Maybe Core.Int32),
    -- | Number of days elapsed since the noncurrent timestamp of an object. The condition is satisfied if the days elapsed is at least this number. This condition is relevant only for versioned objects. The value of the field must be a nonnegative integer. If it\'s zero, the object version will become eligible for Lifecycle action as soon as it becomes noncurrent.
    daysSinceNoncurrentTime :: (Core.Maybe Core.Int32),
    -- | Relevant only for versioned objects. If the value is true, this condition matches live objects; if the value is false, it matches archived objects.
    isLive :: (Core.Maybe Core.Bool),
    -- | A regular expression that satisfies the RE2 syntax. This condition is satisfied when the name of the object matches the RE2 pattern. Note: This feature is currently in the \"Early Access\" launch stage and is only available to a whitelisted set of users; that means that this feature may be changed in backward-incompatible ways and that it is not guaranteed to be released.
    matchesPattern :: (Core.Maybe Core.Text),
    -- | Objects having any of the storage classes specified by this condition will be matched. Values include MULTI/REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, and DURABLE/REDUCED_AVAILABILITY.
    matchesStorageClass :: (Core.Maybe [Core.Text]),
    -- | A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when the noncurrent time on an object is before this date in UTC. This condition is relevant only for versioned objects.
    noncurrentTimeBefore :: (Core.Maybe Core.Date'),
    -- | Relevant only for versioned objects. If the value is N, this condition is satisfied when there are at least N versions (including the live version) newer than this version of the object.
    numNewerVersions :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Lifecycle_RuleItem_Condition' with the minimum fields required to make a request.
newBucket_Lifecycle_RuleItem_Condition ::
  Bucket_Lifecycle_RuleItem_Condition
newBucket_Lifecycle_RuleItem_Condition =
  Bucket_Lifecycle_RuleItem_Condition
    { age = Core.Nothing,
      createdBefore = Core.Nothing,
      customTimeBefore = Core.Nothing,
      daysSinceCustomTime = Core.Nothing,
      daysSinceNoncurrentTime = Core.Nothing,
      isLive = Core.Nothing,
      matchesPattern = Core.Nothing,
      matchesStorageClass = Core.Nothing,
      noncurrentTimeBefore = Core.Nothing,
      numNewerVersions = Core.Nothing
    }

instance
  Core.FromJSON
    Bucket_Lifecycle_RuleItem_Condition
  where
  parseJSON =
    Core.withObject
      "Bucket_Lifecycle_RuleItem_Condition"
      ( \o ->
          Bucket_Lifecycle_RuleItem_Condition
            Core.<$> (o Core..:? "age")
            Core.<*> (o Core..:? "createdBefore")
            Core.<*> (o Core..:? "customTimeBefore")
            Core.<*> (o Core..:? "daysSinceCustomTime")
            Core.<*> (o Core..:? "daysSinceNoncurrentTime")
            Core.<*> (o Core..:? "isLive")
            Core.<*> (o Core..:? "matchesPattern")
            Core.<*> ( o Core..:? "matchesStorageClass"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "noncurrentTimeBefore")
            Core.<*> (o Core..:? "numNewerVersions")
      )

instance
  Core.ToJSON
    Bucket_Lifecycle_RuleItem_Condition
  where
  toJSON Bucket_Lifecycle_RuleItem_Condition {..} =
    Core.object
      ( Core.catMaybes
          [ ("age" Core..=) Core.<$> age,
            ("createdBefore" Core..=) Core.<$> createdBefore,
            ("customTimeBefore" Core..=)
              Core.<$> customTimeBefore,
            ("daysSinceCustomTime" Core..=)
              Core.<$> daysSinceCustomTime,
            ("daysSinceNoncurrentTime" Core..=)
              Core.<$> daysSinceNoncurrentTime,
            ("isLive" Core..=) Core.<$> isLive,
            ("matchesPattern" Core..=) Core.<$> matchesPattern,
            ("matchesStorageClass" Core..=)
              Core.<$> matchesStorageClass,
            ("noncurrentTimeBefore" Core..=)
              Core.<$> noncurrentTimeBefore,
            ("numNewerVersions" Core..=)
              Core.<$> numNewerVersions
          ]
      )

-- | The bucket\'s logging configuration, which defines the destination bucket and optional name prefix for the current bucket\'s logs.
--
-- /See:/ 'newBucket_Logging' smart constructor.
data Bucket_Logging = Bucket_Logging
  { -- | The destination bucket where the current bucket\'s logs should be placed.
    logBucket :: (Core.Maybe Core.Text),
    -- | A prefix for log object names.
    logObjectPrefix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Logging' with the minimum fields required to make a request.
newBucket_Logging ::
  Bucket_Logging
newBucket_Logging =
  Bucket_Logging {logBucket = Core.Nothing, logObjectPrefix = Core.Nothing}

instance Core.FromJSON Bucket_Logging where
  parseJSON =
    Core.withObject
      "Bucket_Logging"
      ( \o ->
          Bucket_Logging
            Core.<$> (o Core..:? "logBucket")
            Core.<*> (o Core..:? "logObjectPrefix")
      )

instance Core.ToJSON Bucket_Logging where
  toJSON Bucket_Logging {..} =
    Core.object
      ( Core.catMaybes
          [ ("logBucket" Core..=) Core.<$> logBucket,
            ("logObjectPrefix" Core..=)
              Core.<$> logObjectPrefix
          ]
      )

-- | The owner of the bucket. This is always the project team\'s owner group.
--
-- /See:/ 'newBucket_Owner' smart constructor.
data Bucket_Owner = Bucket_Owner
  { -- | The entity, in the form project-owner-projectId.
    entity :: (Core.Maybe Core.Text),
    -- | The ID for the entity.
    entityId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Owner' with the minimum fields required to make a request.
newBucket_Owner ::
  Bucket_Owner
newBucket_Owner = Bucket_Owner {entity = Core.Nothing, entityId = Core.Nothing}

instance Core.FromJSON Bucket_Owner where
  parseJSON =
    Core.withObject
      "Bucket_Owner"
      ( \o ->
          Bucket_Owner
            Core.<$> (o Core..:? "entity")
            Core.<*> (o Core..:? "entityId")
      )

instance Core.ToJSON Bucket_Owner where
  toJSON Bucket_Owner {..} =
    Core.object
      ( Core.catMaybes
          [ ("entity" Core..=) Core.<$> entity,
            ("entityId" Core..=) Core.<$> entityId
          ]
      )

-- | The bucket\'s retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION/DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION/DENIED error.
--
-- /See:/ 'newBucket_RetentionPolicy' smart constructor.
data Bucket_RetentionPolicy = Bucket_RetentionPolicy
  { -- | Server-determined value that indicates the time from which policy was enforced and effective. This value is in RFC 3339 format.
    effectiveTime :: (Core.Maybe Core.DateTime'),
    -- | Once locked, an object retention policy cannot be modified.
    isLocked :: (Core.Maybe Core.Bool),
    -- | The duration in seconds that objects need to be retained. Retention duration must be greater than zero and less than 100 years. Note that enforcement of retention periods less than a day is not guaranteed. Such periods should only be used for testing purposes.
    retentionPeriod :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_RetentionPolicy' with the minimum fields required to make a request.
newBucket_RetentionPolicy ::
  Bucket_RetentionPolicy
newBucket_RetentionPolicy =
  Bucket_RetentionPolicy
    { effectiveTime = Core.Nothing,
      isLocked = Core.Nothing,
      retentionPeriod = Core.Nothing
    }

instance Core.FromJSON Bucket_RetentionPolicy where
  parseJSON =
    Core.withObject
      "Bucket_RetentionPolicy"
      ( \o ->
          Bucket_RetentionPolicy
            Core.<$> (o Core..:? "effectiveTime")
            Core.<*> (o Core..:? "isLocked")
            Core.<*> (o Core..:? "retentionPeriod")
      )

instance Core.ToJSON Bucket_RetentionPolicy where
  toJSON Bucket_RetentionPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("effectiveTime" Core..=) Core.<$> effectiveTime,
            ("isLocked" Core..=) Core.<$> isLocked,
            ("retentionPeriod" Core..=) Core.. Core.AsText
              Core.<$> retentionPeriod
          ]
      )

-- | The bucket\'s versioning configuration.
--
-- /See:/ 'newBucket_Versioning' smart constructor.
newtype Bucket_Versioning = Bucket_Versioning
  { -- | While set to true, versioning is fully enabled for this bucket.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Versioning' with the minimum fields required to make a request.
newBucket_Versioning ::
  Bucket_Versioning
newBucket_Versioning = Bucket_Versioning {enabled = Core.Nothing}

instance Core.FromJSON Bucket_Versioning where
  parseJSON =
    Core.withObject
      "Bucket_Versioning"
      ( \o ->
          Bucket_Versioning Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON Bucket_Versioning where
  toJSON Bucket_Versioning {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

-- | The bucket\'s website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
--
-- /See:/ 'newBucket_Website' smart constructor.
data Bucket_Website = Bucket_Website
  { -- | If the requested object path is missing, the service will ensure the path has a trailing \'\/\', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages.
    mainPageSuffix :: (Core.Maybe Core.Text),
    -- | If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result.
    notFoundPage :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket_Website' with the minimum fields required to make a request.
newBucket_Website ::
  Bucket_Website
newBucket_Website =
  Bucket_Website {mainPageSuffix = Core.Nothing, notFoundPage = Core.Nothing}

instance Core.FromJSON Bucket_Website where
  parseJSON =
    Core.withObject
      "Bucket_Website"
      ( \o ->
          Bucket_Website
            Core.<$> (o Core..:? "mainPageSuffix")
            Core.<*> (o Core..:? "notFoundPage")
      )

instance Core.ToJSON Bucket_Website where
  toJSON Bucket_Website {..} =
    Core.object
      ( Core.catMaybes
          [ ("mainPageSuffix" Core..=) Core.<$> mainPageSuffix,
            ("notFoundPage" Core..=) Core.<$> notFoundPage
          ]
      )

-- | An access-control entry.
--
-- /See:/ 'newBucketAccessControl' smart constructor.
data BucketAccessControl = BucketAccessControl
  { -- | The name of the bucket.
    bucket :: (Core.Maybe Core.Text),
    -- | The domain associated with the entity, if any.
    domain :: (Core.Maybe Core.Text),
    -- | The email address associated with the entity, if any.
    email :: (Core.Maybe Core.Text),
    -- | The entity holding the permission, in one of the following forms: - user-userId - user-email - group-groupId - group-email - domain-domain - project-team-projectId - allUsers - allAuthenticatedUsers Examples: - The user liz\@example.com would be user-liz\@example.com. - The group example\@googlegroups.com would be group-example\@googlegroups.com. - To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.
    entity :: (Core.Maybe Core.Text),
    -- | The ID for the entity, if any.
    entityId :: (Core.Maybe Core.Text),
    -- | HTTP 1.1 Entity tag for the access-control entry.
    etag :: (Core.Maybe Core.Text),
    -- | The ID of the access-control entry.
    id :: (Core.Maybe Core.Text),
    -- | The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
    kind :: Core.Text,
    -- | The project team associated with the entity, if any.
    projectTeam :: (Core.Maybe BucketAccessControl_ProjectTeam),
    -- | The access permission for the entity.
    role' :: (Core.Maybe Core.Text),
    -- | The link to this access-control entry.
    selfLink :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BucketAccessControl' with the minimum fields required to make a request.
newBucketAccessControl ::
  BucketAccessControl
newBucketAccessControl =
  BucketAccessControl
    { bucket = Core.Nothing,
      domain = Core.Nothing,
      email = Core.Nothing,
      entity = Core.Nothing,
      entityId = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "storage#bucketAccessControl",
      projectTeam = Core.Nothing,
      role' = Core.Nothing,
      selfLink = Core.Nothing
    }

instance Core.FromJSON BucketAccessControl where
  parseJSON =
    Core.withObject
      "BucketAccessControl"
      ( \o ->
          BucketAccessControl
            Core.<$> (o Core..:? "bucket")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "entity")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "storage#bucketAccessControl"
                     )
            Core.<*> (o Core..:? "projectTeam")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "selfLink")
      )

instance Core.ToJSON BucketAccessControl where
  toJSON BucketAccessControl {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucket" Core..=) Core.<$> bucket,
            ("domain" Core..=) Core.<$> domain,
            ("email" Core..=) Core.<$> email,
            ("entity" Core..=) Core.<$> entity,
            ("entityId" Core..=) Core.<$> entityId,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("projectTeam" Core..=) Core.<$> projectTeam,
            ("role" Core..=) Core.<$> role',
            ("selfLink" Core..=) Core.<$> selfLink
          ]
      )

-- | The project team associated with the entity, if any.
--
-- /See:/ 'newBucketAccessControl_ProjectTeam' smart constructor.
data BucketAccessControl_ProjectTeam = BucketAccessControl_ProjectTeam
  { -- | The project number.
    projectNumber :: (Core.Maybe Core.Text),
    -- | The team.
    team :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BucketAccessControl_ProjectTeam' with the minimum fields required to make a request.
newBucketAccessControl_ProjectTeam ::
  BucketAccessControl_ProjectTeam
newBucketAccessControl_ProjectTeam =
  BucketAccessControl_ProjectTeam
    { projectNumber = Core.Nothing,
      team = Core.Nothing
    }

instance
  Core.FromJSON
    BucketAccessControl_ProjectTeam
  where
  parseJSON =
    Core.withObject
      "BucketAccessControl_ProjectTeam"
      ( \o ->
          BucketAccessControl_ProjectTeam
            Core.<$> (o Core..:? "projectNumber")
            Core.<*> (o Core..:? "team")
      )

instance Core.ToJSON BucketAccessControl_ProjectTeam where
  toJSON BucketAccessControl_ProjectTeam {..} =
    Core.object
      ( Core.catMaybes
          [ ("projectNumber" Core..=) Core.<$> projectNumber,
            ("team" Core..=) Core.<$> team
          ]
      )

-- | An access-control list.
--
-- /See:/ 'newBucketAccessControls' smart constructor.
data BucketAccessControls = BucketAccessControls
  { -- | The list of items.
    items :: (Core.Maybe [BucketAccessControl]),
    -- | The kind of item this is. For lists of bucket access control entries, this is always storage#bucketAccessControls.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BucketAccessControls' with the minimum fields required to make a request.
newBucketAccessControls ::
  BucketAccessControls
newBucketAccessControls =
  BucketAccessControls
    { items = Core.Nothing,
      kind = "storage#bucketAccessControls"
    }

instance Core.FromJSON BucketAccessControls where
  parseJSON =
    Core.withObject
      "BucketAccessControls"
      ( \o ->
          BucketAccessControls
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "storage#bucketAccessControls"
                     )
      )

instance Core.ToJSON BucketAccessControls where
  toJSON BucketAccessControls {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | A list of buckets.
--
-- /See:/ 'newBuckets' smart constructor.
data Buckets = Buckets
  { -- | The list of items.
    items :: (Core.Maybe [Bucket]),
    -- | The kind of item this is. For lists of buckets, this is always storage#buckets.
    kind :: Core.Text,
    -- | The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Buckets' with the minimum fields required to make a request.
newBuckets ::
  Buckets
newBuckets =
  Buckets
    { items = Core.Nothing,
      kind = "storage#buckets",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Buckets where
  parseJSON =
    Core.withObject
      "Buckets"
      ( \o ->
          Buckets
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "storage#buckets")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Buckets where
  toJSON Buckets {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel
  { -- | The address where notifications are delivered for this channel.
    address :: (Core.Maybe Core.Text),
    -- | Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
    expiration :: (Core.Maybe Core.Int64),
    -- | A UUID or similar unique string that identifies this channel.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a notification channel used to watch for changes to a resource, which is \"api#channel\".
    kind :: Core.Text,
    -- | Additional parameters controlling delivery channel behavior. Optional.
    params :: (Core.Maybe Channel_Params),
    -- | A Boolean value to indicate whether payload is wanted. Optional.
    payload :: (Core.Maybe Core.Bool),
    -- | An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
    resourceId :: (Core.Maybe Core.Text),
    -- | A version-specific identifier for the watched resource.
    resourceUri :: (Core.Maybe Core.Text),
    -- | An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
    token :: (Core.Maybe Core.Text),
    -- | The type of delivery mechanism used for this channel.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
newChannel ::
  Channel
newChannel =
  Channel
    { address = Core.Nothing,
      expiration = Core.Nothing,
      id = Core.Nothing,
      kind = "api#channel",
      params = Core.Nothing,
      payload = Core.Nothing,
      resourceId = Core.Nothing,
      resourceUri = Core.Nothing,
      token = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Channel where
  parseJSON =
    Core.withObject
      "Channel"
      ( \o ->
          Channel
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "expiration")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "api#channel")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "payload")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "resourceUri")
            Core.<*> (o Core..:? "token")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Channel where
  toJSON Channel {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("expiration" Core..=) Core.. Core.AsText
              Core.<$> expiration,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("params" Core..=) Core.<$> params,
            ("payload" Core..=) Core.<$> payload,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("resourceUri" Core..=) Core.<$> resourceUri,
            ("token" Core..=) Core.<$> token,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'newChannel_Params' smart constructor.
newtype Channel_Params = Channel_Params
  { -- | Declares a new parameter by name.
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel_Params' with the minimum fields required to make a request.
newChannel_Params ::
  -- |  Declares a new parameter by name. See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Channel_Params
newChannel_Params additional = Channel_Params {additional = additional}

instance Core.FromJSON Channel_Params where
  parseJSON =
    Core.withObject
      "Channel_Params"
      ( \o ->
          Channel_Params Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Channel_Params where
  toJSON Channel_Params {..} = Core.toJSON additional

-- | A Compose request.
--
-- /See:/ 'newComposeRequest' smart constructor.
data ComposeRequest = ComposeRequest
  { -- | Properties of the resulting object.
    destination :: (Core.Maybe Object),
    -- | The kind of item this is.
    kind :: Core.Text,
    -- | The list of source objects that will be concatenated into a single object.
    sourceObjects :: (Core.Maybe [ComposeRequest_SourceObjectsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposeRequest' with the minimum fields required to make a request.
newComposeRequest ::
  ComposeRequest
newComposeRequest =
  ComposeRequest
    { destination = Core.Nothing,
      kind = "storage#composeRequest",
      sourceObjects = Core.Nothing
    }

instance Core.FromJSON ComposeRequest where
  parseJSON =
    Core.withObject
      "ComposeRequest"
      ( \o ->
          ComposeRequest
            Core.<$> (o Core..:? "destination")
            Core.<*> (o Core..:? "kind" Core..!= "storage#composeRequest")
            Core.<*> (o Core..:? "sourceObjects" Core..!= Core.mempty)
      )

instance Core.ToJSON ComposeRequest where
  toJSON ComposeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("destination" Core..=) Core.<$> destination,
            Core.Just ("kind" Core..= kind),
            ("sourceObjects" Core..=) Core.<$> sourceObjects
          ]
      )

--
-- /See:/ 'newComposeRequest_SourceObjectsItem' smart constructor.
data ComposeRequest_SourceObjectsItem = ComposeRequest_SourceObjectsItem
  { -- | The generation of this object to use as the source.
    generation :: (Core.Maybe Core.Int64),
    -- | The source object\'s name. All source objects must reside in the same bucket.
    name :: (Core.Maybe Core.Text),
    -- | Conditions that must be met for this operation to execute.
    objectPreconditions :: (Core.Maybe ComposeRequest_SourceObjectsItem_ObjectPreconditions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposeRequest_SourceObjectsItem' with the minimum fields required to make a request.
newComposeRequest_SourceObjectsItem ::
  ComposeRequest_SourceObjectsItem
newComposeRequest_SourceObjectsItem =
  ComposeRequest_SourceObjectsItem
    { generation = Core.Nothing,
      name = Core.Nothing,
      objectPreconditions = Core.Nothing
    }

instance
  Core.FromJSON
    ComposeRequest_SourceObjectsItem
  where
  parseJSON =
    Core.withObject
      "ComposeRequest_SourceObjectsItem"
      ( \o ->
          ComposeRequest_SourceObjectsItem
            Core.<$> (o Core..:? "generation")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "objectPreconditions")
      )

instance Core.ToJSON ComposeRequest_SourceObjectsItem where
  toJSON ComposeRequest_SourceObjectsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("generation" Core..=) Core.. Core.AsText
              Core.<$> generation,
            ("name" Core..=) Core.<$> name,
            ("objectPreconditions" Core..=)
              Core.<$> objectPreconditions
          ]
      )

-- | Conditions that must be met for this operation to execute.
--
-- /See:/ 'newComposeRequest_SourceObjectsItem_ObjectPreconditions' smart constructor.
newtype ComposeRequest_SourceObjectsItem_ObjectPreconditions = ComposeRequest_SourceObjectsItem_ObjectPreconditions
  { -- | Only perform the composition if the generation of the source object that would be used matches this value. If this value and a generation are both specified, they must be the same value or the call will fail.
    ifGenerationMatch :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposeRequest_SourceObjectsItem_ObjectPreconditions' with the minimum fields required to make a request.
newComposeRequest_SourceObjectsItem_ObjectPreconditions ::
  ComposeRequest_SourceObjectsItem_ObjectPreconditions
newComposeRequest_SourceObjectsItem_ObjectPreconditions =
  ComposeRequest_SourceObjectsItem_ObjectPreconditions
    { ifGenerationMatch = Core.Nothing
    }

instance
  Core.FromJSON
    ComposeRequest_SourceObjectsItem_ObjectPreconditions
  where
  parseJSON =
    Core.withObject
      "ComposeRequest_SourceObjectsItem_ObjectPreconditions"
      ( \o ->
          ComposeRequest_SourceObjectsItem_ObjectPreconditions
            Core.<$> (o Core..:? "ifGenerationMatch")
      )

instance
  Core.ToJSON
    ComposeRequest_SourceObjectsItem_ObjectPreconditions
  where
  toJSON
    ComposeRequest_SourceObjectsItem_ObjectPreconditions {..} =
      Core.object
        ( Core.catMaybes
            [ ("ifGenerationMatch" Core..=) Core.. Core.AsText
                Core.<$> ifGenerationMatch
            ]
        )

-- | Represents an expression text. Example: title: \"User account presence\" description: \"Determines whether the request has a user account\" expression: \"size(request.user) > 0\"
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
  { -- | An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    description :: (Core.Maybe Core.Text),
    -- | Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
    expression :: (Core.Maybe Core.Text),
    -- | An optional string indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    location :: (Core.Maybe Core.Text),
    -- | An optional title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr ::
  Expr
newExpr =
  Expr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Expr where
  parseJSON =
    Core.withObject
      "Expr"
      ( \o ->
          Expr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Expr where
  toJSON Expr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | JSON template to produce a JSON-style HMAC Key resource for Create responses.
--
-- /See:/ 'newHmacKey' smart constructor.
data HmacKey = HmacKey
  { -- | The kind of item this is. For HMAC keys, this is always storage#hmacKey.
    kind :: Core.Text,
    -- | Key metadata.
    metadata :: (Core.Maybe HmacKeyMetadata),
    -- | HMAC secret key material.
    secret :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HmacKey' with the minimum fields required to make a request.
newHmacKey ::
  HmacKey
newHmacKey =
  HmacKey
    { kind = "storage#hmacKey",
      metadata = Core.Nothing,
      secret = Core.Nothing
    }

instance Core.FromJSON HmacKey where
  parseJSON =
    Core.withObject
      "HmacKey"
      ( \o ->
          HmacKey
            Core.<$> (o Core..:? "kind" Core..!= "storage#hmacKey")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "secret")
      )

instance Core.ToJSON HmacKey where
  toJSON HmacKey {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("metadata" Core..=) Core.<$> metadata,
            ("secret" Core..=) Core.<$> secret
          ]
      )

-- | JSON template to produce a JSON-style HMAC Key metadata resource.
--
-- /See:/ 'newHmacKeyMetadata' smart constructor.
data HmacKeyMetadata = HmacKeyMetadata
  { -- | The ID of the HMAC Key.
    accessId :: (Core.Maybe Core.Text),
    -- | HTTP 1.1 Entity tag for the HMAC key.
    etag :: (Core.Maybe Core.Text),
    -- | The ID of the HMAC key, including the Project ID and the Access ID.
    id :: (Core.Maybe Core.Text),
    -- | The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata.
    kind :: Core.Text,
    -- | Project ID owning the service account to which the key authenticates.
    projectId :: (Core.Maybe Core.Text),
    -- | The link to this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | The email address of the key\'s associated service account.
    serviceAccountEmail :: (Core.Maybe Core.Text),
    -- | The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED.
    state :: (Core.Maybe Core.Text),
    -- | The creation time of the HMAC key in RFC 3339 format.
    timeCreated :: (Core.Maybe Core.DateTime'),
    -- | The last modification time of the HMAC key metadata in RFC 3339 format.
    updated :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HmacKeyMetadata' with the minimum fields required to make a request.
newHmacKeyMetadata ::
  HmacKeyMetadata
newHmacKeyMetadata =
  HmacKeyMetadata
    { accessId = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "storage#hmacKeyMetadata",
      projectId = Core.Nothing,
      selfLink = Core.Nothing,
      serviceAccountEmail = Core.Nothing,
      state = Core.Nothing,
      timeCreated = Core.Nothing,
      updated = Core.Nothing
    }

instance Core.FromJSON HmacKeyMetadata where
  parseJSON =
    Core.withObject
      "HmacKeyMetadata"
      ( \o ->
          HmacKeyMetadata
            Core.<$> (o Core..:? "accessId")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "storage#hmacKeyMetadata"
                     )
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "serviceAccountEmail")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "timeCreated")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON HmacKeyMetadata where
  toJSON HmacKeyMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessId" Core..=) Core.<$> accessId,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("projectId" Core..=) Core.<$> projectId,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("serviceAccountEmail" Core..=)
              Core.<$> serviceAccountEmail,
            ("state" Core..=) Core.<$> state,
            ("timeCreated" Core..=) Core.<$> timeCreated,
            ("updated" Core..=) Core.<$> updated
          ]
      )

-- | A list of hmacKeys.
--
-- /See:/ 'newHmacKeysMetadata' smart constructor.
data HmacKeysMetadata = HmacKeysMetadata
  { -- | The list of items.
    items :: (Core.Maybe [HmacKeyMetadata]),
    -- | The kind of item this is. For lists of hmacKeys, this is always storage#hmacKeysMetadata.
    kind :: Core.Text,
    -- | The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HmacKeysMetadata' with the minimum fields required to make a request.
newHmacKeysMetadata ::
  HmacKeysMetadata
newHmacKeysMetadata =
  HmacKeysMetadata
    { items = Core.Nothing,
      kind = "storage#hmacKeysMetadata",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON HmacKeysMetadata where
  parseJSON =
    Core.withObject
      "HmacKeysMetadata"
      ( \o ->
          HmacKeysMetadata
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "storage#hmacKeysMetadata"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON HmacKeysMetadata where
  toJSON HmacKeysMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A subscription to receive Google PubSub notifications.
--
-- /See:/ 'newNotification' smart constructor.
data Notification = Notification
  { -- | An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.
    customAttributes :: (Core.Maybe Notification_Custom_attributes),
    -- | HTTP 1.1 Entity tag for this subscription notification.
    etag :: (Core.Maybe Core.Text),
    -- | If present, only send notifications about listed event types. If empty, sent notifications for all event types.
    eventTypes :: (Core.Maybe [Core.Text]),
    -- | The ID of the notification.
    id :: (Core.Maybe Core.Text),
    -- | The kind of item this is. For notifications, this is always storage#notification.
    kind :: Core.Text,
    -- | If present, only apply this notification configuration to object names that begin with this prefix.
    objectNamePrefix :: (Core.Maybe Core.Text),
    -- | The desired content of the Payload.
    payloadFormat :: Core.Text,
    -- | The canonical URL of this notification.
    selfLink :: (Core.Maybe Core.Text),
    -- | The Cloud PubSub topic to which this subscription publishes. Formatted as: \'\/\/pubsub.googleapis.com\/projects\/{project-identifier}\/topics\/{my-topic}\'
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
newNotification ::
  Notification
newNotification =
  Notification
    { customAttributes = Core.Nothing,
      etag = Core.Nothing,
      eventTypes = Core.Nothing,
      id = Core.Nothing,
      kind = "storage#notification",
      objectNamePrefix = Core.Nothing,
      payloadFormat = "JSON_API_V1",
      selfLink = Core.Nothing,
      topic = Core.Nothing
    }

instance Core.FromJSON Notification where
  parseJSON =
    Core.withObject
      "Notification"
      ( \o ->
          Notification
            Core.<$> (o Core..:? "custom_attributes")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "event_types" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "storage#notification")
            Core.<*> (o Core..:? "object_name_prefix")
            Core.<*> (o Core..:? "payload_format" Core..!= "JSON_API_V1")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "topic")
      )

instance Core.ToJSON Notification where
  toJSON Notification {..} =
    Core.object
      ( Core.catMaybes
          [ ("custom_attributes" Core..=)
              Core.<$> customAttributes,
            ("etag" Core..=) Core.<$> etag,
            ("event_types" Core..=) Core.<$> eventTypes,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("object_name_prefix" Core..=)
              Core.<$> objectNamePrefix,
            Core.Just ("payload_format" Core..= payloadFormat),
            ("selfLink" Core..=) Core.<$> selfLink,
            ("topic" Core..=) Core.<$> topic
          ]
      )

-- | An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.
--
-- /See:/ 'newNotification_Custom_attributes' smart constructor.
newtype Notification_Custom_attributes = Notification_Custom_attributes
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Notification_Custom_attributes' with the minimum fields required to make a request.
newNotification_Custom_attributes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Notification_Custom_attributes
newNotification_Custom_attributes additional =
  Notification_Custom_attributes {additional = additional}

instance Core.FromJSON Notification_Custom_attributes where
  parseJSON =
    Core.withObject
      "Notification_Custom_attributes"
      ( \o ->
          Notification_Custom_attributes
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Notification_Custom_attributes where
  toJSON Notification_Custom_attributes {..} =
    Core.toJSON additional

-- | A list of notification subscriptions.
--
-- /See:/ 'newNotifications' smart constructor.
data Notifications = Notifications
  { -- | The list of items.
    items :: (Core.Maybe [Notification]),
    -- | The kind of item this is. For lists of notifications, this is always storage#notifications.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Notifications' with the minimum fields required to make a request.
newNotifications ::
  Notifications
newNotifications =
  Notifications {items = Core.Nothing, kind = "storage#notifications"}

instance Core.FromJSON Notifications where
  parseJSON =
    Core.withObject
      "Notifications"
      ( \o ->
          Notifications
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "storage#notifications")
      )

instance Core.ToJSON Notifications where
  toJSON Notifications {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | An object.
--
-- /See:/ 'newObject' smart constructor.
data Object = Object
  { -- | Access controls on the object.
    acl :: (Core.Maybe [ObjectAccessControl]),
    -- | The name of the bucket containing this object.
    bucket :: (Core.Maybe Core.Text),
    -- | Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.
    cacheControl :: (Core.Maybe Core.Text),
    -- | Number of underlying components that make up this object. Components are accumulated by compose operations.
    componentCount :: (Core.Maybe Core.Int32),
    -- | Content-Disposition of the object data.
    contentDisposition :: (Core.Maybe Core.Text),
    -- | Content-Encoding of the object data.
    contentEncoding :: (Core.Maybe Core.Text),
    -- | Content-Language of the object data.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | Content-Type of the object data. If an object is stored without a Content-Type, it is served as application\/octet-stream.
    contentType :: (Core.Maybe Core.Text),
    -- | CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.
    crc32c :: (Core.Maybe Core.Text),
    -- | A timestamp in RFC 3339 format specified by the user for an object.
    customTime :: (Core.Maybe Core.DateTime'),
    -- | Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
    customerEncryption :: (Core.Maybe Object_CustomerEncryption),
    -- | HTTP 1.1 Entity tag for the object.
    etag :: (Core.Maybe Core.Text),
    -- | Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold\'s release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.
    eventBasedHold :: (Core.Maybe Core.Bool),
    -- | The content generation of this object. Used for object versioning.
    generation :: (Core.Maybe Core.Int64),
    -- | The ID of the object, including the bucket name, object name, and generation number.
    id :: (Core.Maybe Core.Text),
    -- | The kind of item this is. For objects, this is always storage#object.
    kind :: Core.Text,
    -- | Not currently supported. Specifying the parameter causes the request to fail with status code 400 - Bad Request.
    kmsKeyName :: (Core.Maybe Core.Text),
    -- | MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
    md5Hash :: (Core.Maybe Core.Text),
    -- | Media download link.
    mediaLink :: (Core.Maybe Core.Text),
    -- | User-provided metadata, in key\/value pairs.
    metadata :: (Core.Maybe Object_Metadata),
    -- | The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.
    metageneration :: (Core.Maybe Core.Int64),
    -- | The name of the object. Required if not specified by URL parameter.
    name :: (Core.Maybe Core.Text),
    -- | The owner of the object. This will always be the uploader of the object.
    owner :: (Core.Maybe Object_Owner),
    -- | A server-determined value that specifies the earliest time that the object\'s retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).
    retentionExpirationTime :: (Core.Maybe Core.DateTime'),
    -- | The link to this object.
    selfLink :: (Core.Maybe Core.Text),
    -- | Content-Length of the data in bytes.
    size :: (Core.Maybe Core.Word64),
    -- | Storage class of the object.
    storageClass :: (Core.Maybe Core.Text),
    -- | Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.
    temporaryHold :: (Core.Maybe Core.Bool),
    -- | The creation time of the object in RFC 3339 format.
    timeCreated :: (Core.Maybe Core.DateTime'),
    -- | The deletion time of the object in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.
    timeDeleted :: (Core.Maybe Core.DateTime'),
    -- | The time at which the object\'s storage class was last changed. When the object is initially created, it will be set to timeCreated.
    timeStorageClassUpdated :: (Core.Maybe Core.DateTime'),
    -- | The modification time of the object metadata in RFC 3339 format.
    updated :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Object' with the minimum fields required to make a request.
newObject ::
  Object
newObject =
  Object
    { acl = Core.Nothing,
      bucket = Core.Nothing,
      cacheControl = Core.Nothing,
      componentCount = Core.Nothing,
      contentDisposition = Core.Nothing,
      contentEncoding = Core.Nothing,
      contentLanguage = Core.Nothing,
      contentType = Core.Nothing,
      crc32c = Core.Nothing,
      customTime = Core.Nothing,
      customerEncryption = Core.Nothing,
      etag = Core.Nothing,
      eventBasedHold = Core.Nothing,
      generation = Core.Nothing,
      id = Core.Nothing,
      kind = "storage#object",
      kmsKeyName = Core.Nothing,
      md5Hash = Core.Nothing,
      mediaLink = Core.Nothing,
      metadata = Core.Nothing,
      metageneration = Core.Nothing,
      name = Core.Nothing,
      owner = Core.Nothing,
      retentionExpirationTime = Core.Nothing,
      selfLink = Core.Nothing,
      size = Core.Nothing,
      storageClass = Core.Nothing,
      temporaryHold = Core.Nothing,
      timeCreated = Core.Nothing,
      timeDeleted = Core.Nothing,
      timeStorageClassUpdated = Core.Nothing,
      updated = Core.Nothing
    }

instance Core.FromJSON Object where
  parseJSON =
    Core.withObject
      "Object"
      ( \o ->
          Object
            Core.<$> (o Core..:? "acl" Core..!= Core.mempty)
            Core.<*> (o Core..:? "bucket")
            Core.<*> (o Core..:? "cacheControl")
            Core.<*> (o Core..:? "componentCount")
            Core.<*> (o Core..:? "contentDisposition")
            Core.<*> (o Core..:? "contentEncoding")
            Core.<*> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "contentType")
            Core.<*> (o Core..:? "crc32c")
            Core.<*> (o Core..:? "customTime")
            Core.<*> (o Core..:? "customerEncryption")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventBasedHold")
            Core.<*> (o Core..:? "generation")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "storage#object")
            Core.<*> (o Core..:? "kmsKeyName")
            Core.<*> (o Core..:? "md5Hash")
            Core.<*> (o Core..:? "mediaLink")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "metageneration")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "owner")
            Core.<*> (o Core..:? "retentionExpirationTime")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "storageClass")
            Core.<*> (o Core..:? "temporaryHold")
            Core.<*> (o Core..:? "timeCreated")
            Core.<*> (o Core..:? "timeDeleted")
            Core.<*> (o Core..:? "timeStorageClassUpdated")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON Object where
  toJSON Object {..} =
    Core.object
      ( Core.catMaybes
          [ ("acl" Core..=) Core.<$> acl,
            ("bucket" Core..=) Core.<$> bucket,
            ("cacheControl" Core..=) Core.<$> cacheControl,
            ("componentCount" Core..=) Core.<$> componentCount,
            ("contentDisposition" Core..=)
              Core.<$> contentDisposition,
            ("contentEncoding" Core..=) Core.<$> contentEncoding,
            ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("contentType" Core..=) Core.<$> contentType,
            ("crc32c" Core..=) Core.<$> crc32c,
            ("customTime" Core..=) Core.<$> customTime,
            ("customerEncryption" Core..=)
              Core.<$> customerEncryption,
            ("etag" Core..=) Core.<$> etag,
            ("eventBasedHold" Core..=) Core.<$> eventBasedHold,
            ("generation" Core..=) Core.. Core.AsText
              Core.<$> generation,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("kmsKeyName" Core..=) Core.<$> kmsKeyName,
            ("md5Hash" Core..=) Core.<$> md5Hash,
            ("mediaLink" Core..=) Core.<$> mediaLink,
            ("metadata" Core..=) Core.<$> metadata,
            ("metageneration" Core..=) Core.. Core.AsText
              Core.<$> metageneration,
            ("name" Core..=) Core.<$> name,
            ("owner" Core..=) Core.<$> owner,
            ("retentionExpirationTime" Core..=)
              Core.<$> retentionExpirationTime,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("size" Core..=) Core.. Core.AsText Core.<$> size,
            ("storageClass" Core..=) Core.<$> storageClass,
            ("temporaryHold" Core..=) Core.<$> temporaryHold,
            ("timeCreated" Core..=) Core.<$> timeCreated,
            ("timeDeleted" Core..=) Core.<$> timeDeleted,
            ("timeStorageClassUpdated" Core..=)
              Core.<$> timeStorageClassUpdated,
            ("updated" Core..=) Core.<$> updated
          ]
      )

-- | Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
--
-- /See:/ 'newObject_CustomerEncryption' smart constructor.
data Object_CustomerEncryption = Object_CustomerEncryption
  { -- | The encryption algorithm.
    encryptionAlgorithm :: (Core.Maybe Core.Text),
    -- | SHA256 hash value of the encryption key.
    keySha256 :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Object_CustomerEncryption' with the minimum fields required to make a request.
newObject_CustomerEncryption ::
  Object_CustomerEncryption
newObject_CustomerEncryption =
  Object_CustomerEncryption
    { encryptionAlgorithm = Core.Nothing,
      keySha256 = Core.Nothing
    }

instance Core.FromJSON Object_CustomerEncryption where
  parseJSON =
    Core.withObject
      "Object_CustomerEncryption"
      ( \o ->
          Object_CustomerEncryption
            Core.<$> (o Core..:? "encryptionAlgorithm")
            Core.<*> (o Core..:? "keySha256")
      )

instance Core.ToJSON Object_CustomerEncryption where
  toJSON Object_CustomerEncryption {..} =
    Core.object
      ( Core.catMaybes
          [ ("encryptionAlgorithm" Core..=)
              Core.<$> encryptionAlgorithm,
            ("keySha256" Core..=) Core.<$> keySha256
          ]
      )

-- | User-provided metadata, in key\/value pairs.
--
-- /See:/ 'newObject_Metadata' smart constructor.
newtype Object_Metadata = Object_Metadata
  { -- | An individual metadata entry.
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Object_Metadata' with the minimum fields required to make a request.
newObject_Metadata ::
  -- |  An individual metadata entry. See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Object_Metadata
newObject_Metadata additional = Object_Metadata {additional = additional}

instance Core.FromJSON Object_Metadata where
  parseJSON =
    Core.withObject
      "Object_Metadata"
      ( \o ->
          Object_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Object_Metadata where
  toJSON Object_Metadata {..} = Core.toJSON additional

-- | The owner of the object. This will always be the uploader of the object.
--
-- /See:/ 'newObject_Owner' smart constructor.
data Object_Owner = Object_Owner
  { -- | The entity, in the form user-userId.
    entity :: (Core.Maybe Core.Text),
    -- | The ID for the entity.
    entityId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Object_Owner' with the minimum fields required to make a request.
newObject_Owner ::
  Object_Owner
newObject_Owner = Object_Owner {entity = Core.Nothing, entityId = Core.Nothing}

instance Core.FromJSON Object_Owner where
  parseJSON =
    Core.withObject
      "Object_Owner"
      ( \o ->
          Object_Owner
            Core.<$> (o Core..:? "entity")
            Core.<*> (o Core..:? "entityId")
      )

instance Core.ToJSON Object_Owner where
  toJSON Object_Owner {..} =
    Core.object
      ( Core.catMaybes
          [ ("entity" Core..=) Core.<$> entity,
            ("entityId" Core..=) Core.<$> entityId
          ]
      )

-- | An access-control entry.
--
-- /See:/ 'newObjectAccessControl' smart constructor.
data ObjectAccessControl = ObjectAccessControl
  { -- | The name of the bucket.
    bucket :: (Core.Maybe Core.Text),
    -- | The domain associated with the entity, if any.
    domain :: (Core.Maybe Core.Text),
    -- | The email address associated with the entity, if any.
    email :: (Core.Maybe Core.Text),
    -- | The entity holding the permission, in one of the following forms: - user-userId - user-email - group-groupId - group-email - domain-domain - project-team-projectId - allUsers - allAuthenticatedUsers Examples: - The user liz\@example.com would be user-liz\@example.com. - The group example\@googlegroups.com would be group-example\@googlegroups.com. - To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.
    entity :: (Core.Maybe Core.Text),
    -- | The ID for the entity, if any.
    entityId :: (Core.Maybe Core.Text),
    -- | HTTP 1.1 Entity tag for the access-control entry.
    etag :: (Core.Maybe Core.Text),
    -- | The content generation of the object, if applied to an object.
    generation :: (Core.Maybe Core.Int64),
    -- | The ID of the access-control entry.
    id :: (Core.Maybe Core.Text),
    -- | The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
    kind :: Core.Text,
    -- | The name of the object, if applied to an object.
    object :: (Core.Maybe Core.Text),
    -- | The project team associated with the entity, if any.
    projectTeam :: (Core.Maybe ObjectAccessControl_ProjectTeam),
    -- | The access permission for the entity.
    role' :: (Core.Maybe Core.Text),
    -- | The link to this access-control entry.
    selfLink :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectAccessControl' with the minimum fields required to make a request.
newObjectAccessControl ::
  ObjectAccessControl
newObjectAccessControl =
  ObjectAccessControl
    { bucket = Core.Nothing,
      domain = Core.Nothing,
      email = Core.Nothing,
      entity = Core.Nothing,
      entityId = Core.Nothing,
      etag = Core.Nothing,
      generation = Core.Nothing,
      id = Core.Nothing,
      kind = "storage#objectAccessControl",
      object = Core.Nothing,
      projectTeam = Core.Nothing,
      role' = Core.Nothing,
      selfLink = Core.Nothing
    }

instance Core.FromJSON ObjectAccessControl where
  parseJSON =
    Core.withObject
      "ObjectAccessControl"
      ( \o ->
          ObjectAccessControl
            Core.<$> (o Core..:? "bucket")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "entity")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "generation")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "storage#objectAccessControl"
                     )
            Core.<*> (o Core..:? "object")
            Core.<*> (o Core..:? "projectTeam")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "selfLink")
      )

instance Core.ToJSON ObjectAccessControl where
  toJSON ObjectAccessControl {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucket" Core..=) Core.<$> bucket,
            ("domain" Core..=) Core.<$> domain,
            ("email" Core..=) Core.<$> email,
            ("entity" Core..=) Core.<$> entity,
            ("entityId" Core..=) Core.<$> entityId,
            ("etag" Core..=) Core.<$> etag,
            ("generation" Core..=) Core.. Core.AsText
              Core.<$> generation,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("object" Core..=) Core.<$> object,
            ("projectTeam" Core..=) Core.<$> projectTeam,
            ("role" Core..=) Core.<$> role',
            ("selfLink" Core..=) Core.<$> selfLink
          ]
      )

-- | The project team associated with the entity, if any.
--
-- /See:/ 'newObjectAccessControl_ProjectTeam' smart constructor.
data ObjectAccessControl_ProjectTeam = ObjectAccessControl_ProjectTeam
  { -- | The project number.
    projectNumber :: (Core.Maybe Core.Text),
    -- | The team.
    team :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectAccessControl_ProjectTeam' with the minimum fields required to make a request.
newObjectAccessControl_ProjectTeam ::
  ObjectAccessControl_ProjectTeam
newObjectAccessControl_ProjectTeam =
  ObjectAccessControl_ProjectTeam
    { projectNumber = Core.Nothing,
      team = Core.Nothing
    }

instance
  Core.FromJSON
    ObjectAccessControl_ProjectTeam
  where
  parseJSON =
    Core.withObject
      "ObjectAccessControl_ProjectTeam"
      ( \o ->
          ObjectAccessControl_ProjectTeam
            Core.<$> (o Core..:? "projectNumber")
            Core.<*> (o Core..:? "team")
      )

instance Core.ToJSON ObjectAccessControl_ProjectTeam where
  toJSON ObjectAccessControl_ProjectTeam {..} =
    Core.object
      ( Core.catMaybes
          [ ("projectNumber" Core..=) Core.<$> projectNumber,
            ("team" Core..=) Core.<$> team
          ]
      )

-- | An access-control list.
--
-- /See:/ 'newObjectAccessControls' smart constructor.
data ObjectAccessControls = ObjectAccessControls
  { -- | The list of items.
    items :: (Core.Maybe [ObjectAccessControl]),
    -- | The kind of item this is. For lists of object access control entries, this is always storage#objectAccessControls.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectAccessControls' with the minimum fields required to make a request.
newObjectAccessControls ::
  ObjectAccessControls
newObjectAccessControls =
  ObjectAccessControls
    { items = Core.Nothing,
      kind = "storage#objectAccessControls"
    }

instance Core.FromJSON ObjectAccessControls where
  parseJSON =
    Core.withObject
      "ObjectAccessControls"
      ( \o ->
          ObjectAccessControls
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "storage#objectAccessControls"
                     )
      )

instance Core.ToJSON ObjectAccessControls where
  toJSON ObjectAccessControls {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | A list of objects.
--
-- /See:/ 'newObjects' smart constructor.
data Objects = Objects
  { -- | The list of items.
    items :: (Core.Maybe [Object]),
    -- | The kind of item this is. For lists of objects, this is always storage#objects.
    kind :: Core.Text,
    -- | The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of prefixes of objects matching-but-not-listed up to and including the requested delimiter.
    prefixes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Objects' with the minimum fields required to make a request.
newObjects ::
  Objects
newObjects =
  Objects
    { items = Core.Nothing,
      kind = "storage#objects",
      nextPageToken = Core.Nothing,
      prefixes = Core.Nothing
    }

instance Core.FromJSON Objects where
  parseJSON =
    Core.withObject
      "Objects"
      ( \o ->
          Objects
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "storage#objects")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "prefixes" Core..!= Core.mempty)
      )

instance Core.ToJSON Objects where
  toJSON Objects {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("prefixes" Core..=) Core.<$> prefixes
          ]
      )

-- | A bucket\/object IAM policy.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | An association between a role, which comes with a set of permissions, and members who may assume that role.
    bindings :: (Core.Maybe [Policy_BindingsItem]),
    -- | HTTP 1.1 Entity tag for the policy.
    etag :: (Core.Maybe Core.Base64),
    -- | The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
    kind :: Core.Text,
    -- | The ID of the resource to which this policy belongs. Will be of the form projects\//\/buckets\/bucket for buckets, and projects\//\/buckets\/bucket\/objects\/object for objects. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects\/_\/buckets\/my-bucket\/objects\/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
    resourceId :: (Core.Maybe Core.Text),
    -- | The IAM policy format version.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { bindings = Core.Nothing,
      etag = Core.Nothing,
      kind = "storage#policy",
      resourceId = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "bindings" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind" Core..!= "storage#policy")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("resourceId" Core..=) Core.<$> resourceId,
            ("version" Core..=) Core.<$> version
          ]
      )

--
-- /See:/ 'newPolicy_BindingsItem' smart constructor.
data Policy_BindingsItem = Policy_BindingsItem
  { -- | The condition that is associated with this binding. NOTE: an unsatisfied condition will not allow user access via current binding. Different bindings, including their conditions, are examined independently.
    condition :: (Core.Maybe Expr),
    -- | A collection of identifiers for members who may assume the provided role. Recognized identifiers are as follows:
    -- - allUsers — A special identifier that represents anyone on the internet; with or without a Google account.
    -- - allAuthenticatedUsers — A special identifier that represents anyone who is authenticated with a Google account or a service account.
    -- - user:emailid — An email address that represents a specific account. For example, user:alice\@gmail.com or user:joe\@example.com.
    -- - serviceAccount:emailid — An email address that represents a service account. For example, serviceAccount:my-other-app\@appspot.gserviceaccount.com .
    -- - group:emailid — An email address that represents a Google group. For example, group:admins\@example.com.
    -- - domain:domain — A Google Apps domain name that represents all the users of that domain. For example, domain:google.com or domain:example.com.
    -- - projectOwner:projectid — Owners of the given project. For example, projectOwner:my-example-project
    -- - projectEditor:projectid — Editors of the given project. For example, projectEditor:my-example-project
    -- - projectViewer:projectid — Viewers of the given project. For example, projectViewer:my-example-project
    members :: (Core.Maybe [Core.Text]),
    -- | The role to which members belong. Two types of roles are supported: new IAM roles, which grant permissions that do not map directly to those provided by ACLs, and legacy IAM roles, which do map directly to ACL permissions. All roles are of the format roles\/storage.specificRole. The new IAM roles are:
    -- - roles\/storage.admin — Full control of Google Cloud Storage resources.
    -- - roles\/storage.objectViewer — Read-Only access to Google Cloud Storage objects.
    -- - roles\/storage.objectCreator — Access to create objects in Google Cloud Storage.
    -- - roles\/storage.objectAdmin — Full control of Google Cloud Storage objects. The legacy IAM roles are:
    -- - roles\/storage.legacyObjectReader — Read-only access to objects without listing. Equivalent to an ACL entry on an object with the READER role.
    -- - roles\/storage.legacyObjectOwner — Read\/write access to existing objects without listing. Equivalent to an ACL entry on an object with the OWNER role.
    -- - roles\/storage.legacyBucketReader — Read access to buckets with object listing. Equivalent to an ACL entry on a bucket with the READER role.
    -- - roles\/storage.legacyBucketWriter — Read access to buckets with object listing\/creation\/deletion. Equivalent to an ACL entry on a bucket with the WRITER role.
    -- - roles\/storage.legacyBucketOwner — Read and write access to existing buckets with object listing\/creation\/deletion. Equivalent to an ACL entry on a bucket with the OWNER role.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy_BindingsItem' with the minimum fields required to make a request.
newPolicy_BindingsItem ::
  Policy_BindingsItem
newPolicy_BindingsItem =
  Policy_BindingsItem
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON Policy_BindingsItem where
  parseJSON =
    Core.withObject
      "Policy_BindingsItem"
      ( \o ->
          Policy_BindingsItem
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members" Core..!= Core.mempty)
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON Policy_BindingsItem where
  toJSON Policy_BindingsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | A rewrite response.
--
-- /See:/ 'newRewriteResponse' smart constructor.
data RewriteResponse = RewriteResponse
  { -- | true if the copy is finished; otherwise, false if the copy is in progress. This property is always present in the response.
    done :: (Core.Maybe Core.Bool),
    -- | The kind of item this is.
    kind :: Core.Text,
    -- | The total size of the object being copied in bytes. This property is always present in the response.
    objectSize :: (Core.Maybe Core.Int64),
    -- | A resource containing the metadata for the copied-to object. This property is present in the response only when copying completes.
    resource :: (Core.Maybe Object),
    -- | A token to use in subsequent requests to continue copying data. This token is present in the response only when there is more data to copy.
    rewriteToken :: (Core.Maybe Core.Text),
    -- | The total bytes written so far, which can be used to provide a waiting user with a progress indicator. This property is always present in the response.
    totalBytesRewritten :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RewriteResponse' with the minimum fields required to make a request.
newRewriteResponse ::
  RewriteResponse
newRewriteResponse =
  RewriteResponse
    { done = Core.Nothing,
      kind = "storage#rewriteResponse",
      objectSize = Core.Nothing,
      resource = Core.Nothing,
      rewriteToken = Core.Nothing,
      totalBytesRewritten = Core.Nothing
    }

instance Core.FromJSON RewriteResponse where
  parseJSON =
    Core.withObject
      "RewriteResponse"
      ( \o ->
          RewriteResponse
            Core.<$> (o Core..:? "done")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "storage#rewriteResponse"
                     )
            Core.<*> (o Core..:? "objectSize")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "rewriteToken")
            Core.<*> (o Core..:? "totalBytesRewritten")
      )

instance Core.ToJSON RewriteResponse where
  toJSON RewriteResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            Core.Just ("kind" Core..= kind),
            ("objectSize" Core..=) Core.. Core.AsText
              Core.<$> objectSize,
            ("resource" Core..=) Core.<$> resource,
            ("rewriteToken" Core..=) Core.<$> rewriteToken,
            ("totalBytesRewritten" Core..=) Core.. Core.AsText
              Core.<$> totalBytesRewritten
          ]
      )

-- | A subscription to receive Google PubSub notifications.
--
-- /See:/ 'newServiceAccount' smart constructor.
data ServiceAccount = ServiceAccount
  { -- | The ID of the notification.
    emailAddress :: (Core.Maybe Core.Text),
    -- | The kind of item this is. For notifications, this is always storage#notification.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
newServiceAccount ::
  ServiceAccount
newServiceAccount =
  ServiceAccount {emailAddress = Core.Nothing, kind = "storage#serviceAccount"}

instance Core.FromJSON ServiceAccount where
  parseJSON =
    Core.withObject
      "ServiceAccount"
      ( \o ->
          ServiceAccount
            Core.<$> (o Core..:? "email_address")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "storage#serviceAccount"
                     )
      )

instance Core.ToJSON ServiceAccount where
  toJSON ServiceAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("email_address" Core..=) Core.<$> emailAddress,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | A storage.(buckets|objects).testIamPermissions response.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
data TestIamPermissionsResponse = TestIamPermissionsResponse
  { -- | The kind of item this is.
    kind :: Core.Text,
    -- | The permissions held by the caller. Permissions are always of the format storage.resource.capability, where resource is one of buckets or objects. The supported permissions are as follows:
    -- - storage.buckets.delete — Delete bucket.
    -- - storage.buckets.get — Read bucket metadata.
    -- - storage.buckets.getIamPolicy — Read bucket IAM policy.
    -- - storage.buckets.create — Create bucket.
    -- - storage.buckets.list — List buckets.
    -- - storage.buckets.setIamPolicy — Update bucket IAM policy.
    -- - storage.buckets.update — Update bucket metadata.
    -- - storage.objects.delete — Delete object.
    -- - storage.objects.get — Read object data and metadata.
    -- - storage.objects.getIamPolicy — Read object IAM policy.
    -- - storage.objects.create — Create object.
    -- - storage.objects.list — List objects.
    -- - storage.objects.setIamPolicy — Update object IAM policy.
    -- - storage.objects.update — Update object metadata.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse ::
  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse
    { kind = "storage#testIamPermissionsResponse",
      permissions = Core.Nothing
    }

instance Core.FromJSON TestIamPermissionsResponse where
  parseJSON =
    Core.withObject
      "TestIamPermissionsResponse"
      ( \o ->
          TestIamPermissionsResponse
            Core.<$> ( o Core..:? "kind"
                         Core..!= "storage#testIamPermissionsResponse"
                     )
            Core.<*> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("permissions" Core..=) Core.<$> permissions
          ]
      )
