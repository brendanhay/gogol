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
-- Module      : Gogol.Storage.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Storage.Internal.Sum
  ( -- * BucketsGetProjection
    BucketsGetProjection
      ( BucketsGetProjection_Full,
        BucketsGetProjection_NoAcl,
        ..
      ),

    -- * BucketsInsertPredefinedAcl
    BucketsInsertPredefinedAcl
      ( BucketsInsertPredefinedAcl_AuthenticatedRead,
        BucketsInsertPredefinedAcl_Private,
        BucketsInsertPredefinedAcl_ProjectPrivate,
        BucketsInsertPredefinedAcl_PublicRead,
        BucketsInsertPredefinedAcl_PublicReadWrite,
        ..
      ),

    -- * BucketsInsertPredefinedDefaultObjectAcl
    BucketsInsertPredefinedDefaultObjectAcl
      ( BucketsInsertPredefinedDefaultObjectAcl_AuthenticatedRead,
        BucketsInsertPredefinedDefaultObjectAcl_BucketOwnerFullControl,
        BucketsInsertPredefinedDefaultObjectAcl_BucketOwnerRead,
        BucketsInsertPredefinedDefaultObjectAcl_Private,
        BucketsInsertPredefinedDefaultObjectAcl_ProjectPrivate,
        BucketsInsertPredefinedDefaultObjectAcl_PublicRead,
        ..
      ),

    -- * BucketsInsertProjection
    BucketsInsertProjection
      ( BucketsInsertProjection_Full,
        BucketsInsertProjection_NoAcl,
        ..
      ),

    -- * BucketsListProjection
    BucketsListProjection
      ( BucketsListProjection_Full,
        BucketsListProjection_NoAcl,
        ..
      ),

    -- * BucketsPatchPredefinedAcl
    BucketsPatchPredefinedAcl
      ( BucketsPatchPredefinedAcl_AuthenticatedRead,
        BucketsPatchPredefinedAcl_Private,
        BucketsPatchPredefinedAcl_ProjectPrivate,
        BucketsPatchPredefinedAcl_PublicRead,
        BucketsPatchPredefinedAcl_PublicReadWrite,
        ..
      ),

    -- * BucketsPatchPredefinedDefaultObjectAcl
    BucketsPatchPredefinedDefaultObjectAcl
      ( BucketsPatchPredefinedDefaultObjectAcl_AuthenticatedRead,
        BucketsPatchPredefinedDefaultObjectAcl_BucketOwnerFullControl,
        BucketsPatchPredefinedDefaultObjectAcl_BucketOwnerRead,
        BucketsPatchPredefinedDefaultObjectAcl_Private,
        BucketsPatchPredefinedDefaultObjectAcl_ProjectPrivate,
        BucketsPatchPredefinedDefaultObjectAcl_PublicRead,
        ..
      ),

    -- * BucketsPatchProjection
    BucketsPatchProjection
      ( BucketsPatchProjection_Full,
        BucketsPatchProjection_NoAcl,
        ..
      ),

    -- * BucketsRestoreProjection
    BucketsRestoreProjection
      ( BucketsRestoreProjection_Full,
        BucketsRestoreProjection_NoAcl,
        ..
      ),

    -- * BucketsUpdatePredefinedAcl
    BucketsUpdatePredefinedAcl
      ( BucketsUpdatePredefinedAcl_AuthenticatedRead,
        BucketsUpdatePredefinedAcl_Private,
        BucketsUpdatePredefinedAcl_ProjectPrivate,
        BucketsUpdatePredefinedAcl_PublicRead,
        BucketsUpdatePredefinedAcl_PublicReadWrite,
        ..
      ),

    -- * BucketsUpdatePredefinedDefaultObjectAcl
    BucketsUpdatePredefinedDefaultObjectAcl
      ( BucketsUpdatePredefinedDefaultObjectAcl_AuthenticatedRead,
        BucketsUpdatePredefinedDefaultObjectAcl_BucketOwnerFullControl,
        BucketsUpdatePredefinedDefaultObjectAcl_BucketOwnerRead,
        BucketsUpdatePredefinedDefaultObjectAcl_Private,
        BucketsUpdatePredefinedDefaultObjectAcl_ProjectPrivate,
        BucketsUpdatePredefinedDefaultObjectAcl_PublicRead,
        ..
      ),

    -- * BucketsUpdateProjection
    BucketsUpdateProjection
      ( BucketsUpdateProjection_Full,
        BucketsUpdateProjection_NoAcl,
        ..
      ),

    -- * ObjectsComposeDestinationPredefinedAcl
    ObjectsComposeDestinationPredefinedAcl
      ( ObjectsComposeDestinationPredefinedAcl_AuthenticatedRead,
        ObjectsComposeDestinationPredefinedAcl_BucketOwnerFullControl,
        ObjectsComposeDestinationPredefinedAcl_BucketOwnerRead,
        ObjectsComposeDestinationPredefinedAcl_Private,
        ObjectsComposeDestinationPredefinedAcl_ProjectPrivate,
        ObjectsComposeDestinationPredefinedAcl_PublicRead,
        ..
      ),

    -- * ObjectsCopyDestinationPredefinedAcl
    ObjectsCopyDestinationPredefinedAcl
      ( ObjectsCopyDestinationPredefinedAcl_AuthenticatedRead,
        ObjectsCopyDestinationPredefinedAcl_BucketOwnerFullControl,
        ObjectsCopyDestinationPredefinedAcl_BucketOwnerRead,
        ObjectsCopyDestinationPredefinedAcl_Private,
        ObjectsCopyDestinationPredefinedAcl_ProjectPrivate,
        ObjectsCopyDestinationPredefinedAcl_PublicRead,
        ..
      ),

    -- * ObjectsCopyProjection
    ObjectsCopyProjection
      ( ObjectsCopyProjection_Full,
        ObjectsCopyProjection_NoAcl,
        ..
      ),

    -- * ObjectsGetProjection
    ObjectsGetProjection
      ( ObjectsGetProjection_Full,
        ObjectsGetProjection_NoAcl,
        ..
      ),

    -- * ObjectsInsertPredefinedAcl
    ObjectsInsertPredefinedAcl
      ( ObjectsInsertPredefinedAcl_AuthenticatedRead,
        ObjectsInsertPredefinedAcl_BucketOwnerFullControl,
        ObjectsInsertPredefinedAcl_BucketOwnerRead,
        ObjectsInsertPredefinedAcl_Private,
        ObjectsInsertPredefinedAcl_ProjectPrivate,
        ObjectsInsertPredefinedAcl_PublicRead,
        ..
      ),

    -- * ObjectsInsertProjection
    ObjectsInsertProjection
      ( ObjectsInsertProjection_Full,
        ObjectsInsertProjection_NoAcl,
        ..
      ),

    -- * ObjectsListProjection
    ObjectsListProjection
      ( ObjectsListProjection_Full,
        ObjectsListProjection_NoAcl,
        ..
      ),

    -- * ObjectsPatchPredefinedAcl
    ObjectsPatchPredefinedAcl
      ( ObjectsPatchPredefinedAcl_AuthenticatedRead,
        ObjectsPatchPredefinedAcl_BucketOwnerFullControl,
        ObjectsPatchPredefinedAcl_BucketOwnerRead,
        ObjectsPatchPredefinedAcl_Private,
        ObjectsPatchPredefinedAcl_ProjectPrivate,
        ObjectsPatchPredefinedAcl_PublicRead,
        ..
      ),

    -- * ObjectsPatchProjection
    ObjectsPatchProjection
      ( ObjectsPatchProjection_Full,
        ObjectsPatchProjection_NoAcl,
        ..
      ),

    -- * ObjectsRestoreProjection
    ObjectsRestoreProjection
      ( ObjectsRestoreProjection_Full,
        ObjectsRestoreProjection_NoAcl,
        ..
      ),

    -- * ObjectsRewriteDestinationPredefinedAcl
    ObjectsRewriteDestinationPredefinedAcl
      ( ObjectsRewriteDestinationPredefinedAcl_AuthenticatedRead,
        ObjectsRewriteDestinationPredefinedAcl_BucketOwnerFullControl,
        ObjectsRewriteDestinationPredefinedAcl_BucketOwnerRead,
        ObjectsRewriteDestinationPredefinedAcl_Private,
        ObjectsRewriteDestinationPredefinedAcl_ProjectPrivate,
        ObjectsRewriteDestinationPredefinedAcl_PublicRead,
        ..
      ),

    -- * ObjectsRewriteProjection
    ObjectsRewriteProjection
      ( ObjectsRewriteProjection_Full,
        ObjectsRewriteProjection_NoAcl,
        ..
      ),

    -- * ObjectsUpdatePredefinedAcl
    ObjectsUpdatePredefinedAcl
      ( ObjectsUpdatePredefinedAcl_AuthenticatedRead,
        ObjectsUpdatePredefinedAcl_BucketOwnerFullControl,
        ObjectsUpdatePredefinedAcl_BucketOwnerRead,
        ObjectsUpdatePredefinedAcl_Private,
        ObjectsUpdatePredefinedAcl_ProjectPrivate,
        ObjectsUpdatePredefinedAcl_PublicRead,
        ..
      ),

    -- * ObjectsUpdateProjection
    ObjectsUpdateProjection
      ( ObjectsUpdateProjection_Full,
        ObjectsUpdateProjection_NoAcl,
        ..
      ),

    -- * ObjectsWatchAllProjection
    ObjectsWatchAllProjection
      ( ObjectsWatchAllProjection_Full,
        ObjectsWatchAllProjection_NoAcl,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | Set of properties to return. Defaults to noAcl.
newtype BucketsGetProjection = BucketsGetProjection {fromBucketsGetProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern BucketsGetProjection_Full :: BucketsGetProjection
pattern BucketsGetProjection_Full = BucketsGetProjection "full"

-- | Omit owner, acl and defaultObjectAcl properties.
pattern BucketsGetProjection_NoAcl :: BucketsGetProjection
pattern BucketsGetProjection_NoAcl = BucketsGetProjection "noAcl"

{-# COMPLETE
  BucketsGetProjection_Full,
  BucketsGetProjection_NoAcl,
  BucketsGetProjection
  #-}

-- | Apply a predefined set of access controls to this bucket.
newtype BucketsInsertPredefinedAcl = BucketsInsertPredefinedAcl {fromBucketsInsertPredefinedAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Project team owners get OWNER access, and allAuthenticatedUsers get READER access.
pattern BucketsInsertPredefinedAcl_AuthenticatedRead :: BucketsInsertPredefinedAcl
pattern BucketsInsertPredefinedAcl_AuthenticatedRead = BucketsInsertPredefinedAcl "authenticatedRead"

-- | Project team owners get OWNER access.
pattern BucketsInsertPredefinedAcl_Private :: BucketsInsertPredefinedAcl
pattern BucketsInsertPredefinedAcl_Private = BucketsInsertPredefinedAcl "private"

-- | Project team members get access according to their roles.
pattern BucketsInsertPredefinedAcl_ProjectPrivate :: BucketsInsertPredefinedAcl
pattern BucketsInsertPredefinedAcl_ProjectPrivate = BucketsInsertPredefinedAcl "projectPrivate"

-- | Project team owners get OWNER access, and allUsers get READER access.
pattern BucketsInsertPredefinedAcl_PublicRead :: BucketsInsertPredefinedAcl
pattern BucketsInsertPredefinedAcl_PublicRead = BucketsInsertPredefinedAcl "publicRead"

-- | Project team owners get OWNER access, and allUsers get WRITER access.
pattern BucketsInsertPredefinedAcl_PublicReadWrite :: BucketsInsertPredefinedAcl
pattern BucketsInsertPredefinedAcl_PublicReadWrite = BucketsInsertPredefinedAcl "publicReadWrite"

{-# COMPLETE
  BucketsInsertPredefinedAcl_AuthenticatedRead,
  BucketsInsertPredefinedAcl_Private,
  BucketsInsertPredefinedAcl_ProjectPrivate,
  BucketsInsertPredefinedAcl_PublicRead,
  BucketsInsertPredefinedAcl_PublicReadWrite,
  BucketsInsertPredefinedAcl
  #-}

-- | Apply a predefined set of default object access controls to this bucket.
newtype BucketsInsertPredefinedDefaultObjectAcl = BucketsInsertPredefinedDefaultObjectAcl {fromBucketsInsertPredefinedDefaultObjectAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
pattern BucketsInsertPredefinedDefaultObjectAcl_AuthenticatedRead :: BucketsInsertPredefinedDefaultObjectAcl
pattern BucketsInsertPredefinedDefaultObjectAcl_AuthenticatedRead = BucketsInsertPredefinedDefaultObjectAcl "authenticatedRead"

-- | Object owner gets OWNER access, and project team owners get OWNER access.
pattern BucketsInsertPredefinedDefaultObjectAcl_BucketOwnerFullControl :: BucketsInsertPredefinedDefaultObjectAcl
pattern BucketsInsertPredefinedDefaultObjectAcl_BucketOwnerFullControl = BucketsInsertPredefinedDefaultObjectAcl "bucketOwnerFullControl"

-- | Object owner gets OWNER access, and project team owners get READER access.
pattern BucketsInsertPredefinedDefaultObjectAcl_BucketOwnerRead :: BucketsInsertPredefinedDefaultObjectAcl
pattern BucketsInsertPredefinedDefaultObjectAcl_BucketOwnerRead = BucketsInsertPredefinedDefaultObjectAcl "bucketOwnerRead"

-- | Object owner gets OWNER access.
pattern BucketsInsertPredefinedDefaultObjectAcl_Private :: BucketsInsertPredefinedDefaultObjectAcl
pattern BucketsInsertPredefinedDefaultObjectAcl_Private = BucketsInsertPredefinedDefaultObjectAcl "private"

-- | Object owner gets OWNER access, and project team members get access according to their roles.
pattern BucketsInsertPredefinedDefaultObjectAcl_ProjectPrivate :: BucketsInsertPredefinedDefaultObjectAcl
pattern BucketsInsertPredefinedDefaultObjectAcl_ProjectPrivate = BucketsInsertPredefinedDefaultObjectAcl "projectPrivate"

-- | Object owner gets OWNER access, and allUsers get READER access.
pattern BucketsInsertPredefinedDefaultObjectAcl_PublicRead :: BucketsInsertPredefinedDefaultObjectAcl
pattern BucketsInsertPredefinedDefaultObjectAcl_PublicRead = BucketsInsertPredefinedDefaultObjectAcl "publicRead"

{-# COMPLETE
  BucketsInsertPredefinedDefaultObjectAcl_AuthenticatedRead,
  BucketsInsertPredefinedDefaultObjectAcl_BucketOwnerFullControl,
  BucketsInsertPredefinedDefaultObjectAcl_BucketOwnerRead,
  BucketsInsertPredefinedDefaultObjectAcl_Private,
  BucketsInsertPredefinedDefaultObjectAcl_ProjectPrivate,
  BucketsInsertPredefinedDefaultObjectAcl_PublicRead,
  BucketsInsertPredefinedDefaultObjectAcl
  #-}

-- | Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
newtype BucketsInsertProjection = BucketsInsertProjection {fromBucketsInsertProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern BucketsInsertProjection_Full :: BucketsInsertProjection
pattern BucketsInsertProjection_Full = BucketsInsertProjection "full"

-- | Omit owner, acl and defaultObjectAcl properties.
pattern BucketsInsertProjection_NoAcl :: BucketsInsertProjection
pattern BucketsInsertProjection_NoAcl = BucketsInsertProjection "noAcl"

{-# COMPLETE
  BucketsInsertProjection_Full,
  BucketsInsertProjection_NoAcl,
  BucketsInsertProjection
  #-}

-- | Set of properties to return. Defaults to noAcl.
newtype BucketsListProjection = BucketsListProjection {fromBucketsListProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern BucketsListProjection_Full :: BucketsListProjection
pattern BucketsListProjection_Full = BucketsListProjection "full"

-- | Omit owner, acl and defaultObjectAcl properties.
pattern BucketsListProjection_NoAcl :: BucketsListProjection
pattern BucketsListProjection_NoAcl = BucketsListProjection "noAcl"

{-# COMPLETE
  BucketsListProjection_Full,
  BucketsListProjection_NoAcl,
  BucketsListProjection
  #-}

-- | Apply a predefined set of access controls to this bucket.
newtype BucketsPatchPredefinedAcl = BucketsPatchPredefinedAcl {fromBucketsPatchPredefinedAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Project team owners get OWNER access, and allAuthenticatedUsers get READER access.
pattern BucketsPatchPredefinedAcl_AuthenticatedRead :: BucketsPatchPredefinedAcl
pattern BucketsPatchPredefinedAcl_AuthenticatedRead = BucketsPatchPredefinedAcl "authenticatedRead"

-- | Project team owners get OWNER access.
pattern BucketsPatchPredefinedAcl_Private :: BucketsPatchPredefinedAcl
pattern BucketsPatchPredefinedAcl_Private = BucketsPatchPredefinedAcl "private"

-- | Project team members get access according to their roles.
pattern BucketsPatchPredefinedAcl_ProjectPrivate :: BucketsPatchPredefinedAcl
pattern BucketsPatchPredefinedAcl_ProjectPrivate = BucketsPatchPredefinedAcl "projectPrivate"

-- | Project team owners get OWNER access, and allUsers get READER access.
pattern BucketsPatchPredefinedAcl_PublicRead :: BucketsPatchPredefinedAcl
pattern BucketsPatchPredefinedAcl_PublicRead = BucketsPatchPredefinedAcl "publicRead"

-- | Project team owners get OWNER access, and allUsers get WRITER access.
pattern BucketsPatchPredefinedAcl_PublicReadWrite :: BucketsPatchPredefinedAcl
pattern BucketsPatchPredefinedAcl_PublicReadWrite = BucketsPatchPredefinedAcl "publicReadWrite"

{-# COMPLETE
  BucketsPatchPredefinedAcl_AuthenticatedRead,
  BucketsPatchPredefinedAcl_Private,
  BucketsPatchPredefinedAcl_ProjectPrivate,
  BucketsPatchPredefinedAcl_PublicRead,
  BucketsPatchPredefinedAcl_PublicReadWrite,
  BucketsPatchPredefinedAcl
  #-}

-- | Apply a predefined set of default object access controls to this bucket.
newtype BucketsPatchPredefinedDefaultObjectAcl = BucketsPatchPredefinedDefaultObjectAcl {fromBucketsPatchPredefinedDefaultObjectAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
pattern BucketsPatchPredefinedDefaultObjectAcl_AuthenticatedRead :: BucketsPatchPredefinedDefaultObjectAcl
pattern BucketsPatchPredefinedDefaultObjectAcl_AuthenticatedRead = BucketsPatchPredefinedDefaultObjectAcl "authenticatedRead"

-- | Object owner gets OWNER access, and project team owners get OWNER access.
pattern BucketsPatchPredefinedDefaultObjectAcl_BucketOwnerFullControl :: BucketsPatchPredefinedDefaultObjectAcl
pattern BucketsPatchPredefinedDefaultObjectAcl_BucketOwnerFullControl = BucketsPatchPredefinedDefaultObjectAcl "bucketOwnerFullControl"

-- | Object owner gets OWNER access, and project team owners get READER access.
pattern BucketsPatchPredefinedDefaultObjectAcl_BucketOwnerRead :: BucketsPatchPredefinedDefaultObjectAcl
pattern BucketsPatchPredefinedDefaultObjectAcl_BucketOwnerRead = BucketsPatchPredefinedDefaultObjectAcl "bucketOwnerRead"

-- | Object owner gets OWNER access.
pattern BucketsPatchPredefinedDefaultObjectAcl_Private :: BucketsPatchPredefinedDefaultObjectAcl
pattern BucketsPatchPredefinedDefaultObjectAcl_Private = BucketsPatchPredefinedDefaultObjectAcl "private"

-- | Object owner gets OWNER access, and project team members get access according to their roles.
pattern BucketsPatchPredefinedDefaultObjectAcl_ProjectPrivate :: BucketsPatchPredefinedDefaultObjectAcl
pattern BucketsPatchPredefinedDefaultObjectAcl_ProjectPrivate = BucketsPatchPredefinedDefaultObjectAcl "projectPrivate"

-- | Object owner gets OWNER access, and allUsers get READER access.
pattern BucketsPatchPredefinedDefaultObjectAcl_PublicRead :: BucketsPatchPredefinedDefaultObjectAcl
pattern BucketsPatchPredefinedDefaultObjectAcl_PublicRead = BucketsPatchPredefinedDefaultObjectAcl "publicRead"

{-# COMPLETE
  BucketsPatchPredefinedDefaultObjectAcl_AuthenticatedRead,
  BucketsPatchPredefinedDefaultObjectAcl_BucketOwnerFullControl,
  BucketsPatchPredefinedDefaultObjectAcl_BucketOwnerRead,
  BucketsPatchPredefinedDefaultObjectAcl_Private,
  BucketsPatchPredefinedDefaultObjectAcl_ProjectPrivate,
  BucketsPatchPredefinedDefaultObjectAcl_PublicRead,
  BucketsPatchPredefinedDefaultObjectAcl
  #-}

-- | Set of properties to return. Defaults to full.
newtype BucketsPatchProjection = BucketsPatchProjection {fromBucketsPatchProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern BucketsPatchProjection_Full :: BucketsPatchProjection
pattern BucketsPatchProjection_Full = BucketsPatchProjection "full"

-- | Omit owner, acl and defaultObjectAcl properties.
pattern BucketsPatchProjection_NoAcl :: BucketsPatchProjection
pattern BucketsPatchProjection_NoAcl = BucketsPatchProjection "noAcl"

{-# COMPLETE
  BucketsPatchProjection_Full,
  BucketsPatchProjection_NoAcl,
  BucketsPatchProjection
  #-}

-- | Set of properties to return. Defaults to full.
newtype BucketsRestoreProjection = BucketsRestoreProjection {fromBucketsRestoreProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern BucketsRestoreProjection_Full :: BucketsRestoreProjection
pattern BucketsRestoreProjection_Full = BucketsRestoreProjection "full"

-- | Omit owner, acl and defaultObjectAcl properties.
pattern BucketsRestoreProjection_NoAcl :: BucketsRestoreProjection
pattern BucketsRestoreProjection_NoAcl = BucketsRestoreProjection "noAcl"

{-# COMPLETE
  BucketsRestoreProjection_Full,
  BucketsRestoreProjection_NoAcl,
  BucketsRestoreProjection
  #-}

-- | Apply a predefined set of access controls to this bucket.
newtype BucketsUpdatePredefinedAcl = BucketsUpdatePredefinedAcl {fromBucketsUpdatePredefinedAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Project team owners get OWNER access, and allAuthenticatedUsers get READER access.
pattern BucketsUpdatePredefinedAcl_AuthenticatedRead :: BucketsUpdatePredefinedAcl
pattern BucketsUpdatePredefinedAcl_AuthenticatedRead = BucketsUpdatePredefinedAcl "authenticatedRead"

-- | Project team owners get OWNER access.
pattern BucketsUpdatePredefinedAcl_Private :: BucketsUpdatePredefinedAcl
pattern BucketsUpdatePredefinedAcl_Private = BucketsUpdatePredefinedAcl "private"

-- | Project team members get access according to their roles.
pattern BucketsUpdatePredefinedAcl_ProjectPrivate :: BucketsUpdatePredefinedAcl
pattern BucketsUpdatePredefinedAcl_ProjectPrivate = BucketsUpdatePredefinedAcl "projectPrivate"

-- | Project team owners get OWNER access, and allUsers get READER access.
pattern BucketsUpdatePredefinedAcl_PublicRead :: BucketsUpdatePredefinedAcl
pattern BucketsUpdatePredefinedAcl_PublicRead = BucketsUpdatePredefinedAcl "publicRead"

-- | Project team owners get OWNER access, and allUsers get WRITER access.
pattern BucketsUpdatePredefinedAcl_PublicReadWrite :: BucketsUpdatePredefinedAcl
pattern BucketsUpdatePredefinedAcl_PublicReadWrite = BucketsUpdatePredefinedAcl "publicReadWrite"

{-# COMPLETE
  BucketsUpdatePredefinedAcl_AuthenticatedRead,
  BucketsUpdatePredefinedAcl_Private,
  BucketsUpdatePredefinedAcl_ProjectPrivate,
  BucketsUpdatePredefinedAcl_PublicRead,
  BucketsUpdatePredefinedAcl_PublicReadWrite,
  BucketsUpdatePredefinedAcl
  #-}

-- | Apply a predefined set of default object access controls to this bucket.
newtype BucketsUpdatePredefinedDefaultObjectAcl = BucketsUpdatePredefinedDefaultObjectAcl {fromBucketsUpdatePredefinedDefaultObjectAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
pattern BucketsUpdatePredefinedDefaultObjectAcl_AuthenticatedRead :: BucketsUpdatePredefinedDefaultObjectAcl
pattern BucketsUpdatePredefinedDefaultObjectAcl_AuthenticatedRead = BucketsUpdatePredefinedDefaultObjectAcl "authenticatedRead"

-- | Object owner gets OWNER access, and project team owners get OWNER access.
pattern BucketsUpdatePredefinedDefaultObjectAcl_BucketOwnerFullControl :: BucketsUpdatePredefinedDefaultObjectAcl
pattern BucketsUpdatePredefinedDefaultObjectAcl_BucketOwnerFullControl = BucketsUpdatePredefinedDefaultObjectAcl "bucketOwnerFullControl"

-- | Object owner gets OWNER access, and project team owners get READER access.
pattern BucketsUpdatePredefinedDefaultObjectAcl_BucketOwnerRead :: BucketsUpdatePredefinedDefaultObjectAcl
pattern BucketsUpdatePredefinedDefaultObjectAcl_BucketOwnerRead = BucketsUpdatePredefinedDefaultObjectAcl "bucketOwnerRead"

-- | Object owner gets OWNER access.
pattern BucketsUpdatePredefinedDefaultObjectAcl_Private :: BucketsUpdatePredefinedDefaultObjectAcl
pattern BucketsUpdatePredefinedDefaultObjectAcl_Private = BucketsUpdatePredefinedDefaultObjectAcl "private"

-- | Object owner gets OWNER access, and project team members get access according to their roles.
pattern BucketsUpdatePredefinedDefaultObjectAcl_ProjectPrivate :: BucketsUpdatePredefinedDefaultObjectAcl
pattern BucketsUpdatePredefinedDefaultObjectAcl_ProjectPrivate = BucketsUpdatePredefinedDefaultObjectAcl "projectPrivate"

-- | Object owner gets OWNER access, and allUsers get READER access.
pattern BucketsUpdatePredefinedDefaultObjectAcl_PublicRead :: BucketsUpdatePredefinedDefaultObjectAcl
pattern BucketsUpdatePredefinedDefaultObjectAcl_PublicRead = BucketsUpdatePredefinedDefaultObjectAcl "publicRead"

{-# COMPLETE
  BucketsUpdatePredefinedDefaultObjectAcl_AuthenticatedRead,
  BucketsUpdatePredefinedDefaultObjectAcl_BucketOwnerFullControl,
  BucketsUpdatePredefinedDefaultObjectAcl_BucketOwnerRead,
  BucketsUpdatePredefinedDefaultObjectAcl_Private,
  BucketsUpdatePredefinedDefaultObjectAcl_ProjectPrivate,
  BucketsUpdatePredefinedDefaultObjectAcl_PublicRead,
  BucketsUpdatePredefinedDefaultObjectAcl
  #-}

-- | Set of properties to return. Defaults to full.
newtype BucketsUpdateProjection = BucketsUpdateProjection {fromBucketsUpdateProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern BucketsUpdateProjection_Full :: BucketsUpdateProjection
pattern BucketsUpdateProjection_Full = BucketsUpdateProjection "full"

-- | Omit owner, acl and defaultObjectAcl properties.
pattern BucketsUpdateProjection_NoAcl :: BucketsUpdateProjection
pattern BucketsUpdateProjection_NoAcl = BucketsUpdateProjection "noAcl"

{-# COMPLETE
  BucketsUpdateProjection_Full,
  BucketsUpdateProjection_NoAcl,
  BucketsUpdateProjection
  #-}

-- | Apply a predefined set of access controls to the destination object.
newtype ObjectsComposeDestinationPredefinedAcl = ObjectsComposeDestinationPredefinedAcl {fromObjectsComposeDestinationPredefinedAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
pattern ObjectsComposeDestinationPredefinedAcl_AuthenticatedRead :: ObjectsComposeDestinationPredefinedAcl
pattern ObjectsComposeDestinationPredefinedAcl_AuthenticatedRead = ObjectsComposeDestinationPredefinedAcl "authenticatedRead"

-- | Object owner gets OWNER access, and project team owners get OWNER access.
pattern ObjectsComposeDestinationPredefinedAcl_BucketOwnerFullControl :: ObjectsComposeDestinationPredefinedAcl
pattern ObjectsComposeDestinationPredefinedAcl_BucketOwnerFullControl = ObjectsComposeDestinationPredefinedAcl "bucketOwnerFullControl"

-- | Object owner gets OWNER access, and project team owners get READER access.
pattern ObjectsComposeDestinationPredefinedAcl_BucketOwnerRead :: ObjectsComposeDestinationPredefinedAcl
pattern ObjectsComposeDestinationPredefinedAcl_BucketOwnerRead = ObjectsComposeDestinationPredefinedAcl "bucketOwnerRead"

-- | Object owner gets OWNER access.
pattern ObjectsComposeDestinationPredefinedAcl_Private :: ObjectsComposeDestinationPredefinedAcl
pattern ObjectsComposeDestinationPredefinedAcl_Private = ObjectsComposeDestinationPredefinedAcl "private"

-- | Object owner gets OWNER access, and project team members get access according to their roles.
pattern ObjectsComposeDestinationPredefinedAcl_ProjectPrivate :: ObjectsComposeDestinationPredefinedAcl
pattern ObjectsComposeDestinationPredefinedAcl_ProjectPrivate = ObjectsComposeDestinationPredefinedAcl "projectPrivate"

-- | Object owner gets OWNER access, and allUsers get READER access.
pattern ObjectsComposeDestinationPredefinedAcl_PublicRead :: ObjectsComposeDestinationPredefinedAcl
pattern ObjectsComposeDestinationPredefinedAcl_PublicRead = ObjectsComposeDestinationPredefinedAcl "publicRead"

{-# COMPLETE
  ObjectsComposeDestinationPredefinedAcl_AuthenticatedRead,
  ObjectsComposeDestinationPredefinedAcl_BucketOwnerFullControl,
  ObjectsComposeDestinationPredefinedAcl_BucketOwnerRead,
  ObjectsComposeDestinationPredefinedAcl_Private,
  ObjectsComposeDestinationPredefinedAcl_ProjectPrivate,
  ObjectsComposeDestinationPredefinedAcl_PublicRead,
  ObjectsComposeDestinationPredefinedAcl
  #-}

-- | Apply a predefined set of access controls to the destination object.
newtype ObjectsCopyDestinationPredefinedAcl = ObjectsCopyDestinationPredefinedAcl {fromObjectsCopyDestinationPredefinedAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
pattern ObjectsCopyDestinationPredefinedAcl_AuthenticatedRead :: ObjectsCopyDestinationPredefinedAcl
pattern ObjectsCopyDestinationPredefinedAcl_AuthenticatedRead = ObjectsCopyDestinationPredefinedAcl "authenticatedRead"

-- | Object owner gets OWNER access, and project team owners get OWNER access.
pattern ObjectsCopyDestinationPredefinedAcl_BucketOwnerFullControl :: ObjectsCopyDestinationPredefinedAcl
pattern ObjectsCopyDestinationPredefinedAcl_BucketOwnerFullControl = ObjectsCopyDestinationPredefinedAcl "bucketOwnerFullControl"

-- | Object owner gets OWNER access, and project team owners get READER access.
pattern ObjectsCopyDestinationPredefinedAcl_BucketOwnerRead :: ObjectsCopyDestinationPredefinedAcl
pattern ObjectsCopyDestinationPredefinedAcl_BucketOwnerRead = ObjectsCopyDestinationPredefinedAcl "bucketOwnerRead"

-- | Object owner gets OWNER access.
pattern ObjectsCopyDestinationPredefinedAcl_Private :: ObjectsCopyDestinationPredefinedAcl
pattern ObjectsCopyDestinationPredefinedAcl_Private = ObjectsCopyDestinationPredefinedAcl "private"

-- | Object owner gets OWNER access, and project team members get access according to their roles.
pattern ObjectsCopyDestinationPredefinedAcl_ProjectPrivate :: ObjectsCopyDestinationPredefinedAcl
pattern ObjectsCopyDestinationPredefinedAcl_ProjectPrivate = ObjectsCopyDestinationPredefinedAcl "projectPrivate"

-- | Object owner gets OWNER access, and allUsers get READER access.
pattern ObjectsCopyDestinationPredefinedAcl_PublicRead :: ObjectsCopyDestinationPredefinedAcl
pattern ObjectsCopyDestinationPredefinedAcl_PublicRead = ObjectsCopyDestinationPredefinedAcl "publicRead"

{-# COMPLETE
  ObjectsCopyDestinationPredefinedAcl_AuthenticatedRead,
  ObjectsCopyDestinationPredefinedAcl_BucketOwnerFullControl,
  ObjectsCopyDestinationPredefinedAcl_BucketOwnerRead,
  ObjectsCopyDestinationPredefinedAcl_Private,
  ObjectsCopyDestinationPredefinedAcl_ProjectPrivate,
  ObjectsCopyDestinationPredefinedAcl_PublicRead,
  ObjectsCopyDestinationPredefinedAcl
  #-}

-- | Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
newtype ObjectsCopyProjection = ObjectsCopyProjection {fromObjectsCopyProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern ObjectsCopyProjection_Full :: ObjectsCopyProjection
pattern ObjectsCopyProjection_Full = ObjectsCopyProjection "full"

-- | Omit the owner, acl property.
pattern ObjectsCopyProjection_NoAcl :: ObjectsCopyProjection
pattern ObjectsCopyProjection_NoAcl = ObjectsCopyProjection "noAcl"

{-# COMPLETE
  ObjectsCopyProjection_Full,
  ObjectsCopyProjection_NoAcl,
  ObjectsCopyProjection
  #-}

-- | Set of properties to return. Defaults to noAcl.
newtype ObjectsGetProjection = ObjectsGetProjection {fromObjectsGetProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern ObjectsGetProjection_Full :: ObjectsGetProjection
pattern ObjectsGetProjection_Full = ObjectsGetProjection "full"

-- | Omit the owner, acl property.
pattern ObjectsGetProjection_NoAcl :: ObjectsGetProjection
pattern ObjectsGetProjection_NoAcl = ObjectsGetProjection "noAcl"

{-# COMPLETE
  ObjectsGetProjection_Full,
  ObjectsGetProjection_NoAcl,
  ObjectsGetProjection
  #-}

-- | Apply a predefined set of access controls to this object.
newtype ObjectsInsertPredefinedAcl = ObjectsInsertPredefinedAcl {fromObjectsInsertPredefinedAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
pattern ObjectsInsertPredefinedAcl_AuthenticatedRead :: ObjectsInsertPredefinedAcl
pattern ObjectsInsertPredefinedAcl_AuthenticatedRead = ObjectsInsertPredefinedAcl "authenticatedRead"

-- | Object owner gets OWNER access, and project team owners get OWNER access.
pattern ObjectsInsertPredefinedAcl_BucketOwnerFullControl :: ObjectsInsertPredefinedAcl
pattern ObjectsInsertPredefinedAcl_BucketOwnerFullControl = ObjectsInsertPredefinedAcl "bucketOwnerFullControl"

-- | Object owner gets OWNER access, and project team owners get READER access.
pattern ObjectsInsertPredefinedAcl_BucketOwnerRead :: ObjectsInsertPredefinedAcl
pattern ObjectsInsertPredefinedAcl_BucketOwnerRead = ObjectsInsertPredefinedAcl "bucketOwnerRead"

-- | Object owner gets OWNER access.
pattern ObjectsInsertPredefinedAcl_Private :: ObjectsInsertPredefinedAcl
pattern ObjectsInsertPredefinedAcl_Private = ObjectsInsertPredefinedAcl "private"

-- | Object owner gets OWNER access, and project team members get access according to their roles.
pattern ObjectsInsertPredefinedAcl_ProjectPrivate :: ObjectsInsertPredefinedAcl
pattern ObjectsInsertPredefinedAcl_ProjectPrivate = ObjectsInsertPredefinedAcl "projectPrivate"

-- | Object owner gets OWNER access, and allUsers get READER access.
pattern ObjectsInsertPredefinedAcl_PublicRead :: ObjectsInsertPredefinedAcl
pattern ObjectsInsertPredefinedAcl_PublicRead = ObjectsInsertPredefinedAcl "publicRead"

{-# COMPLETE
  ObjectsInsertPredefinedAcl_AuthenticatedRead,
  ObjectsInsertPredefinedAcl_BucketOwnerFullControl,
  ObjectsInsertPredefinedAcl_BucketOwnerRead,
  ObjectsInsertPredefinedAcl_Private,
  ObjectsInsertPredefinedAcl_ProjectPrivate,
  ObjectsInsertPredefinedAcl_PublicRead,
  ObjectsInsertPredefinedAcl
  #-}

-- | Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
newtype ObjectsInsertProjection = ObjectsInsertProjection {fromObjectsInsertProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern ObjectsInsertProjection_Full :: ObjectsInsertProjection
pattern ObjectsInsertProjection_Full = ObjectsInsertProjection "full"

-- | Omit the owner, acl property.
pattern ObjectsInsertProjection_NoAcl :: ObjectsInsertProjection
pattern ObjectsInsertProjection_NoAcl = ObjectsInsertProjection "noAcl"

{-# COMPLETE
  ObjectsInsertProjection_Full,
  ObjectsInsertProjection_NoAcl,
  ObjectsInsertProjection
  #-}

-- | Set of properties to return. Defaults to noAcl.
newtype ObjectsListProjection = ObjectsListProjection {fromObjectsListProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern ObjectsListProjection_Full :: ObjectsListProjection
pattern ObjectsListProjection_Full = ObjectsListProjection "full"

-- | Omit the owner, acl property.
pattern ObjectsListProjection_NoAcl :: ObjectsListProjection
pattern ObjectsListProjection_NoAcl = ObjectsListProjection "noAcl"

{-# COMPLETE
  ObjectsListProjection_Full,
  ObjectsListProjection_NoAcl,
  ObjectsListProjection
  #-}

-- | Apply a predefined set of access controls to this object.
newtype ObjectsPatchPredefinedAcl = ObjectsPatchPredefinedAcl {fromObjectsPatchPredefinedAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
pattern ObjectsPatchPredefinedAcl_AuthenticatedRead :: ObjectsPatchPredefinedAcl
pattern ObjectsPatchPredefinedAcl_AuthenticatedRead = ObjectsPatchPredefinedAcl "authenticatedRead"

-- | Object owner gets OWNER access, and project team owners get OWNER access.
pattern ObjectsPatchPredefinedAcl_BucketOwnerFullControl :: ObjectsPatchPredefinedAcl
pattern ObjectsPatchPredefinedAcl_BucketOwnerFullControl = ObjectsPatchPredefinedAcl "bucketOwnerFullControl"

-- | Object owner gets OWNER access, and project team owners get READER access.
pattern ObjectsPatchPredefinedAcl_BucketOwnerRead :: ObjectsPatchPredefinedAcl
pattern ObjectsPatchPredefinedAcl_BucketOwnerRead = ObjectsPatchPredefinedAcl "bucketOwnerRead"

-- | Object owner gets OWNER access.
pattern ObjectsPatchPredefinedAcl_Private :: ObjectsPatchPredefinedAcl
pattern ObjectsPatchPredefinedAcl_Private = ObjectsPatchPredefinedAcl "private"

-- | Object owner gets OWNER access, and project team members get access according to their roles.
pattern ObjectsPatchPredefinedAcl_ProjectPrivate :: ObjectsPatchPredefinedAcl
pattern ObjectsPatchPredefinedAcl_ProjectPrivate = ObjectsPatchPredefinedAcl "projectPrivate"

-- | Object owner gets OWNER access, and allUsers get READER access.
pattern ObjectsPatchPredefinedAcl_PublicRead :: ObjectsPatchPredefinedAcl
pattern ObjectsPatchPredefinedAcl_PublicRead = ObjectsPatchPredefinedAcl "publicRead"

{-# COMPLETE
  ObjectsPatchPredefinedAcl_AuthenticatedRead,
  ObjectsPatchPredefinedAcl_BucketOwnerFullControl,
  ObjectsPatchPredefinedAcl_BucketOwnerRead,
  ObjectsPatchPredefinedAcl_Private,
  ObjectsPatchPredefinedAcl_ProjectPrivate,
  ObjectsPatchPredefinedAcl_PublicRead,
  ObjectsPatchPredefinedAcl
  #-}

-- | Set of properties to return. Defaults to full.
newtype ObjectsPatchProjection = ObjectsPatchProjection {fromObjectsPatchProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern ObjectsPatchProjection_Full :: ObjectsPatchProjection
pattern ObjectsPatchProjection_Full = ObjectsPatchProjection "full"

-- | Omit the owner, acl property.
pattern ObjectsPatchProjection_NoAcl :: ObjectsPatchProjection
pattern ObjectsPatchProjection_NoAcl = ObjectsPatchProjection "noAcl"

{-# COMPLETE
  ObjectsPatchProjection_Full,
  ObjectsPatchProjection_NoAcl,
  ObjectsPatchProjection
  #-}

-- | Set of properties to return. Defaults to full.
newtype ObjectsRestoreProjection = ObjectsRestoreProjection {fromObjectsRestoreProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern ObjectsRestoreProjection_Full :: ObjectsRestoreProjection
pattern ObjectsRestoreProjection_Full = ObjectsRestoreProjection "full"

-- | Omit the owner, acl property.
pattern ObjectsRestoreProjection_NoAcl :: ObjectsRestoreProjection
pattern ObjectsRestoreProjection_NoAcl = ObjectsRestoreProjection "noAcl"

{-# COMPLETE
  ObjectsRestoreProjection_Full,
  ObjectsRestoreProjection_NoAcl,
  ObjectsRestoreProjection
  #-}

-- | Apply a predefined set of access controls to the destination object.
newtype ObjectsRewriteDestinationPredefinedAcl = ObjectsRewriteDestinationPredefinedAcl {fromObjectsRewriteDestinationPredefinedAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
pattern ObjectsRewriteDestinationPredefinedAcl_AuthenticatedRead :: ObjectsRewriteDestinationPredefinedAcl
pattern ObjectsRewriteDestinationPredefinedAcl_AuthenticatedRead = ObjectsRewriteDestinationPredefinedAcl "authenticatedRead"

-- | Object owner gets OWNER access, and project team owners get OWNER access.
pattern ObjectsRewriteDestinationPredefinedAcl_BucketOwnerFullControl :: ObjectsRewriteDestinationPredefinedAcl
pattern ObjectsRewriteDestinationPredefinedAcl_BucketOwnerFullControl = ObjectsRewriteDestinationPredefinedAcl "bucketOwnerFullControl"

-- | Object owner gets OWNER access, and project team owners get READER access.
pattern ObjectsRewriteDestinationPredefinedAcl_BucketOwnerRead :: ObjectsRewriteDestinationPredefinedAcl
pattern ObjectsRewriteDestinationPredefinedAcl_BucketOwnerRead = ObjectsRewriteDestinationPredefinedAcl "bucketOwnerRead"

-- | Object owner gets OWNER access.
pattern ObjectsRewriteDestinationPredefinedAcl_Private :: ObjectsRewriteDestinationPredefinedAcl
pattern ObjectsRewriteDestinationPredefinedAcl_Private = ObjectsRewriteDestinationPredefinedAcl "private"

-- | Object owner gets OWNER access, and project team members get access according to their roles.
pattern ObjectsRewriteDestinationPredefinedAcl_ProjectPrivate :: ObjectsRewriteDestinationPredefinedAcl
pattern ObjectsRewriteDestinationPredefinedAcl_ProjectPrivate = ObjectsRewriteDestinationPredefinedAcl "projectPrivate"

-- | Object owner gets OWNER access, and allUsers get READER access.
pattern ObjectsRewriteDestinationPredefinedAcl_PublicRead :: ObjectsRewriteDestinationPredefinedAcl
pattern ObjectsRewriteDestinationPredefinedAcl_PublicRead = ObjectsRewriteDestinationPredefinedAcl "publicRead"

{-# COMPLETE
  ObjectsRewriteDestinationPredefinedAcl_AuthenticatedRead,
  ObjectsRewriteDestinationPredefinedAcl_BucketOwnerFullControl,
  ObjectsRewriteDestinationPredefinedAcl_BucketOwnerRead,
  ObjectsRewriteDestinationPredefinedAcl_Private,
  ObjectsRewriteDestinationPredefinedAcl_ProjectPrivate,
  ObjectsRewriteDestinationPredefinedAcl_PublicRead,
  ObjectsRewriteDestinationPredefinedAcl
  #-}

-- | Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
newtype ObjectsRewriteProjection = ObjectsRewriteProjection {fromObjectsRewriteProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern ObjectsRewriteProjection_Full :: ObjectsRewriteProjection
pattern ObjectsRewriteProjection_Full = ObjectsRewriteProjection "full"

-- | Omit the owner, acl property.
pattern ObjectsRewriteProjection_NoAcl :: ObjectsRewriteProjection
pattern ObjectsRewriteProjection_NoAcl = ObjectsRewriteProjection "noAcl"

{-# COMPLETE
  ObjectsRewriteProjection_Full,
  ObjectsRewriteProjection_NoAcl,
  ObjectsRewriteProjection
  #-}

-- | Apply a predefined set of access controls to this object.
newtype ObjectsUpdatePredefinedAcl = ObjectsUpdatePredefinedAcl {fromObjectsUpdatePredefinedAcl :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
pattern ObjectsUpdatePredefinedAcl_AuthenticatedRead :: ObjectsUpdatePredefinedAcl
pattern ObjectsUpdatePredefinedAcl_AuthenticatedRead = ObjectsUpdatePredefinedAcl "authenticatedRead"

-- | Object owner gets OWNER access, and project team owners get OWNER access.
pattern ObjectsUpdatePredefinedAcl_BucketOwnerFullControl :: ObjectsUpdatePredefinedAcl
pattern ObjectsUpdatePredefinedAcl_BucketOwnerFullControl = ObjectsUpdatePredefinedAcl "bucketOwnerFullControl"

-- | Object owner gets OWNER access, and project team owners get READER access.
pattern ObjectsUpdatePredefinedAcl_BucketOwnerRead :: ObjectsUpdatePredefinedAcl
pattern ObjectsUpdatePredefinedAcl_BucketOwnerRead = ObjectsUpdatePredefinedAcl "bucketOwnerRead"

-- | Object owner gets OWNER access.
pattern ObjectsUpdatePredefinedAcl_Private :: ObjectsUpdatePredefinedAcl
pattern ObjectsUpdatePredefinedAcl_Private = ObjectsUpdatePredefinedAcl "private"

-- | Object owner gets OWNER access, and project team members get access according to their roles.
pattern ObjectsUpdatePredefinedAcl_ProjectPrivate :: ObjectsUpdatePredefinedAcl
pattern ObjectsUpdatePredefinedAcl_ProjectPrivate = ObjectsUpdatePredefinedAcl "projectPrivate"

-- | Object owner gets OWNER access, and allUsers get READER access.
pattern ObjectsUpdatePredefinedAcl_PublicRead :: ObjectsUpdatePredefinedAcl
pattern ObjectsUpdatePredefinedAcl_PublicRead = ObjectsUpdatePredefinedAcl "publicRead"

{-# COMPLETE
  ObjectsUpdatePredefinedAcl_AuthenticatedRead,
  ObjectsUpdatePredefinedAcl_BucketOwnerFullControl,
  ObjectsUpdatePredefinedAcl_BucketOwnerRead,
  ObjectsUpdatePredefinedAcl_Private,
  ObjectsUpdatePredefinedAcl_ProjectPrivate,
  ObjectsUpdatePredefinedAcl_PublicRead,
  ObjectsUpdatePredefinedAcl
  #-}

-- | Set of properties to return. Defaults to full.
newtype ObjectsUpdateProjection = ObjectsUpdateProjection {fromObjectsUpdateProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern ObjectsUpdateProjection_Full :: ObjectsUpdateProjection
pattern ObjectsUpdateProjection_Full = ObjectsUpdateProjection "full"

-- | Omit the owner, acl property.
pattern ObjectsUpdateProjection_NoAcl :: ObjectsUpdateProjection
pattern ObjectsUpdateProjection_NoAcl = ObjectsUpdateProjection "noAcl"

{-# COMPLETE
  ObjectsUpdateProjection_Full,
  ObjectsUpdateProjection_NoAcl,
  ObjectsUpdateProjection
  #-}

-- | Set of properties to return. Defaults to noAcl.
newtype ObjectsWatchAllProjection = ObjectsWatchAllProjection {fromObjectsWatchAllProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include all properties.
pattern ObjectsWatchAllProjection_Full :: ObjectsWatchAllProjection
pattern ObjectsWatchAllProjection_Full = ObjectsWatchAllProjection "full"

-- | Omit the owner, acl property.
pattern ObjectsWatchAllProjection_NoAcl :: ObjectsWatchAllProjection
pattern ObjectsWatchAllProjection_NoAcl = ObjectsWatchAllProjection "noAcl"

{-# COMPLETE
  ObjectsWatchAllProjection_Full,
  ObjectsWatchAllProjection_NoAcl,
  ObjectsWatchAllProjection
  #-}
