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
-- Module      : Gogol.Storage.ManagedFolders.TestIamPermissions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests a set of permissions on the given managed folder to see which, if any, are held by the caller.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.managedFolders.testIamPermissions@.
module Gogol.Storage.ManagedFolders.TestIamPermissions
  ( -- * Resource
    StorageManagedFoldersTestIamPermissionsResource,

    -- ** Constructing a Request
    StorageManagedFoldersTestIamPermissions (..),
    newStorageManagedFoldersTestIamPermissions,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.managedFolders.testIamPermissions@ method which the
-- 'StorageManagedFoldersTestIamPermissions' request conforms to.
type StorageManagedFoldersTestIamPermissionsResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "managedFolders"
    Core.:> Core.Capture "managedFolder" Core.Text
    Core.:> "iam"
    Core.:> "testPermissions"
    Core.:> Core.QueryParams "permissions" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TestIamPermissionsResponse

-- | Tests a set of permissions on the given managed folder to see which, if any, are held by the caller.
--
-- /See:/ 'newStorageManagedFoldersTestIamPermissions' smart constructor.
data StorageManagedFoldersTestIamPermissions = StorageManagedFoldersTestIamPermissions
  { -- | Name of the bucket containing the managed folder.
    bucket :: Core.Text,
    -- | The managed folder name\/path.
    managedFolder :: Core.Text,
    -- | Permissions to test.
    permissions :: [Core.Text],
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageManagedFoldersTestIamPermissions' with the minimum fields required to make a request.
newStorageManagedFoldersTestIamPermissions ::
  -- |  Name of the bucket containing the managed folder. See 'bucket'.
  Core.Text ->
  -- |  The managed folder name\/path. See 'managedFolder'.
  Core.Text ->
  -- |  Permissions to test. See 'permissions'.
  [Core.Text] ->
  StorageManagedFoldersTestIamPermissions
newStorageManagedFoldersTestIamPermissions
  bucket
  managedFolder
  permissions =
    StorageManagedFoldersTestIamPermissions
      { bucket = bucket,
        managedFolder = managedFolder,
        permissions = permissions,
        uploadType = Core.Nothing,
        userProject = Core.Nothing
      }

instance Core.GoogleRequest StorageManagedFoldersTestIamPermissions where
  type
    Rs StorageManagedFoldersTestIamPermissions =
      TestIamPermissionsResponse
  type
    Scopes StorageManagedFoldersTestIamPermissions =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageManagedFoldersTestIamPermissions {..} =
    go
      bucket
      managedFolder
      permissions
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageManagedFoldersTestIamPermissionsResource
          )
          Core.mempty
