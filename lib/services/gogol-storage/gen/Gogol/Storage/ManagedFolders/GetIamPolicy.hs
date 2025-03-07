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
-- Module      : Gogol.Storage.ManagedFolders.GetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an IAM policy for the specified managed folder.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.managedFolders.getIamPolicy@.
module Gogol.Storage.ManagedFolders.GetIamPolicy
  ( -- * Resource
    StorageManagedFoldersGetIamPolicyResource,

    -- ** Constructing a Request
    StorageManagedFoldersGetIamPolicy (..),
    newStorageManagedFoldersGetIamPolicy,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.managedFolders.getIamPolicy@ method which the
-- 'StorageManagedFoldersGetIamPolicy' request conforms to.
type StorageManagedFoldersGetIamPolicyResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "managedFolders"
    Core.:> Core.Capture "managedFolder" Core.Text
    Core.:> "iam"
    Core.:> Core.QueryParam "optionsRequestedPolicyVersion" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Policy

-- | Returns an IAM policy for the specified managed folder.
--
-- /See:/ 'newStorageManagedFoldersGetIamPolicy' smart constructor.
data StorageManagedFoldersGetIamPolicy = StorageManagedFoldersGetIamPolicy
  { -- | Name of the bucket containing the managed folder.
    bucket :: Core.Text,
    -- | The managed folder name\/path.
    managedFolder :: Core.Text,
    -- | The IAM policy format version to be returned. If the optionsRequestedPolicyVersion is for an older version that doesn\'t support part of the requested IAM policy, the request fails.
    optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageManagedFoldersGetIamPolicy' with the minimum fields required to make a request.
newStorageManagedFoldersGetIamPolicy ::
  -- |  Name of the bucket containing the managed folder. See 'bucket'.
  Core.Text ->
  -- |  The managed folder name\/path. See 'managedFolder'.
  Core.Text ->
  StorageManagedFoldersGetIamPolicy
newStorageManagedFoldersGetIamPolicy bucket managedFolder =
  StorageManagedFoldersGetIamPolicy
    { bucket = bucket,
      managedFolder = managedFolder,
      optionsRequestedPolicyVersion = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageManagedFoldersGetIamPolicy where
  type Rs StorageManagedFoldersGetIamPolicy = Policy
  type
    Scopes StorageManagedFoldersGetIamPolicy =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageManagedFoldersGetIamPolicy {..} =
    go
      bucket
      managedFolder
      optionsRequestedPolicyVersion
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageManagedFoldersGetIamPolicyResource
          )
          Core.mempty
