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
-- Module      : Gogol.Storage.ManagedFolders.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata of the specified managed folder.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.managedFolders.get@.
module Gogol.Storage.ManagedFolders.Get
  ( -- * Resource
    StorageManagedFoldersGetResource,

    -- ** Constructing a Request
    StorageManagedFoldersGet (..),
    newStorageManagedFoldersGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.managedFolders.get@ method which the
-- 'StorageManagedFoldersGet' request conforms to.
type StorageManagedFoldersGetResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "managedFolders"
    Core.:> Core.Capture "managedFolder" Core.Text
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ManagedFolder

-- | Returns metadata of the specified managed folder.
--
-- /See:/ 'newStorageManagedFoldersGet' smart constructor.
data StorageManagedFoldersGet = StorageManagedFoldersGet
  { -- | Name of the bucket containing the managed folder.
    bucket :: Core.Text,
    -- | Makes the return of the managed folder metadata conditional on whether the managed folder\'s current metageneration matches the given value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the return of the managed folder metadata conditional on whether the managed folder\'s current metageneration does not match the given value.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | The managed folder name\/path.
    managedFolder :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageManagedFoldersGet' with the minimum fields required to make a request.
newStorageManagedFoldersGet ::
  -- |  Name of the bucket containing the managed folder. See 'bucket'.
  Core.Text ->
  -- |  The managed folder name\/path. See 'managedFolder'.
  Core.Text ->
  StorageManagedFoldersGet
newStorageManagedFoldersGet bucket managedFolder =
  StorageManagedFoldersGet
    { bucket = bucket,
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      managedFolder = managedFolder,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageManagedFoldersGet where
  type Rs StorageManagedFoldersGet = ManagedFolder
  type
    Scopes StorageManagedFoldersGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageManagedFoldersGet {..} =
    go
      bucket
      managedFolder
      ifMetagenerationMatch
      ifMetagenerationNotMatch
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageManagedFoldersGetResource)
          Core.mempty
