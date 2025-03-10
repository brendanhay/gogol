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
-- Module      : Gogol.Storage.ManagedFolders.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a managed folder.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.managedFolders.delete@.
module Gogol.Storage.ManagedFolders.Delete
  ( -- * Resource
    StorageManagedFoldersDeleteResource,

    -- ** Constructing a Request
    StorageManagedFoldersDelete (..),
    newStorageManagedFoldersDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.managedFolders.delete@ method which the
-- 'StorageManagedFoldersDelete' request conforms to.
type StorageManagedFoldersDeleteResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "managedFolders"
    Core.:> Core.Capture "managedFolder" Core.Text
    Core.:> Core.QueryParam "allowNonEmpty" Core.Bool
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Permanently deletes a managed folder.
--
-- /See:/ 'newStorageManagedFoldersDelete' smart constructor.
data StorageManagedFoldersDelete = StorageManagedFoldersDelete
  { -- | Allows the deletion of a managed folder even if it is not empty. A managed folder is empty if there are no objects or managed folders that it applies to. Callers must have storage.managedFolders.setIamPolicy permission.
    allowNonEmpty :: (Core.Maybe Core.Bool),
    -- | Name of the bucket containing the managed folder.
    bucket :: Core.Text,
    -- | If set, only deletes the managed folder if its metageneration matches this value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | If set, only deletes the managed folder if its metageneration does not match this value.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | The managed folder name\/path.
    managedFolder :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageManagedFoldersDelete' with the minimum fields required to make a request.
newStorageManagedFoldersDelete ::
  -- |  Name of the bucket containing the managed folder. See 'bucket'.
  Core.Text ->
  -- |  The managed folder name\/path. See 'managedFolder'.
  Core.Text ->
  StorageManagedFoldersDelete
newStorageManagedFoldersDelete bucket managedFolder =
  StorageManagedFoldersDelete
    { allowNonEmpty = Core.Nothing,
      bucket = bucket,
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      managedFolder = managedFolder,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageManagedFoldersDelete where
  type Rs StorageManagedFoldersDelete = ()
  type
    Scopes StorageManagedFoldersDelete =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageManagedFoldersDelete {..} =
    go
      bucket
      managedFolder
      allowNonEmpty
      ifMetagenerationMatch
      ifMetagenerationNotMatch
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageManagedFoldersDeleteResource)
          Core.mempty
