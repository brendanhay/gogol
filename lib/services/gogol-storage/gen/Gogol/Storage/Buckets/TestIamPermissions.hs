{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Storage.Buckets.TestIamPermissions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests a set of permissions on the given bucket to see which, if any, are held by the caller.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.testIamPermissions@.
module Gogol.Storage.Buckets.TestIamPermissions
  ( -- * Resource
    StorageBucketsTestIamPermissionsResource,

    -- ** Constructing a Request
    StorageBucketsTestIamPermissions (..),
    newStorageBucketsTestIamPermissions,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.testIamPermissions@ method which the
-- 'StorageBucketsTestIamPermissions' request conforms to.
type StorageBucketsTestIamPermissionsResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "iam"
    Core.:> "testPermissions"
    Core.:> Core.QueryParams "permissions" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TestIamPermissionsResponse

-- | Tests a set of permissions on the given bucket to see which, if any, are held by the caller.
--
-- /See:/ 'newStorageBucketsTestIamPermissions' smart constructor.
data StorageBucketsTestIamPermissions = StorageBucketsTestIamPermissions
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | Permissions to test.
    permissions :: [Core.Text],
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsTestIamPermissions' with the minimum fields required to make a request.
newStorageBucketsTestIamPermissions ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  Permissions to test. See 'permissions'.
  [Core.Text] ->
  StorageBucketsTestIamPermissions
newStorageBucketsTestIamPermissions bucket permissions =
  StorageBucketsTestIamPermissions
    { bucket = bucket,
      permissions = permissions,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsTestIamPermissions where
  type
    Rs StorageBucketsTestIamPermissions =
      TestIamPermissionsResponse
  type
    Scopes StorageBucketsTestIamPermissions =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageBucketsTestIamPermissions {..} =
    go
      bucket
      permissions
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageBucketsTestIamPermissionsResource)
          Core.mempty
