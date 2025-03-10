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
-- Module      : Gogol.Storage.ManagedFolders.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists managed folders in the given bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.managedFolders.list@.
module Gogol.Storage.ManagedFolders.List
  ( -- * Resource
    StorageManagedFoldersListResource,

    -- ** Constructing a Request
    StorageManagedFoldersList (..),
    newStorageManagedFoldersList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.managedFolders.list@ method which the
-- 'StorageManagedFoldersList' request conforms to.
type StorageManagedFoldersListResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "managedFolders"
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "prefix" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ManagedFolders

-- | Lists managed folders in the given bucket.
--
-- /See:/ 'newStorageManagedFoldersList' smart constructor.
data StorageManagedFoldersList = StorageManagedFoldersList
  { -- | Name of the bucket containing the managed folder.
    bucket :: Core.Text,
    -- | Maximum number of items to return in a single page of responses.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A previously-returned page token representing part of the larger set of results to view.
    pageToken :: (Core.Maybe Core.Text),
    -- | The managed folder name\/path prefix to filter the output list of results.
    prefix :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageManagedFoldersList' with the minimum fields required to make a request.
newStorageManagedFoldersList ::
  -- |  Name of the bucket containing the managed folder. See 'bucket'.
  Core.Text ->
  StorageManagedFoldersList
newStorageManagedFoldersList bucket =
  StorageManagedFoldersList
    { bucket = bucket,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      prefix = Core.Nothing,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageManagedFoldersList where
  type Rs StorageManagedFoldersList = ManagedFolders
  type
    Scopes StorageManagedFoldersList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageManagedFoldersList {..} =
    go
      bucket
      pageSize
      pageToken
      prefix
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageManagedFoldersListResource)
          Core.mempty
