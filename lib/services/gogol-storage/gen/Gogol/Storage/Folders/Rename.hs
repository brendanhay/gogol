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
-- Module      : Gogol.Storage.Folders.Rename
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Renames a source folder to a destination folder. Only applicable to buckets with hierarchical namespace enabled.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.folders.rename@.
module Gogol.Storage.Folders.Rename
  ( -- * Resource
    StorageFoldersRenameResource,

    -- ** Constructing a Request
    StorageFoldersRename (..),
    newStorageFoldersRename,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.folders.rename@ method which the
-- 'StorageFoldersRename' request conforms to.
type StorageFoldersRenameResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "folders"
    Core.:> Core.Capture "sourceFolder" Core.Text
    Core.:> "renameTo"
    Core.:> "folders"
    Core.:> Core.Capture "destinationFolder" Core.Text
    Core.:> Core.QueryParam "ifSourceMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifSourceMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Renames a source folder to a destination folder. Only applicable to buckets with hierarchical namespace enabled.
--
-- /See:/ 'newStorageFoldersRename' smart constructor.
data StorageFoldersRename = StorageFoldersRename
  { -- | Name of the bucket in which the folders are in.
    bucket :: Core.Text,
    -- | Name of the destination folder.
    destinationFolder :: Core.Text,
    -- | Makes the operation conditional on whether the source object\'s current metageneration matches the given value.
    ifSourceMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the source object\'s current metageneration does not match the given value.
    ifSourceMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Name of the source folder.
    sourceFolder :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageFoldersRename' with the minimum fields required to make a request.
newStorageFoldersRename ::
  -- |  Name of the bucket in which the folders are in. See 'bucket'.
  Core.Text ->
  -- |  Name of the destination folder. See 'destinationFolder'.
  Core.Text ->
  -- |  Name of the source folder. See 'sourceFolder'.
  Core.Text ->
  StorageFoldersRename
newStorageFoldersRename bucket destinationFolder sourceFolder =
  StorageFoldersRename
    { bucket = bucket,
      destinationFolder = destinationFolder,
      ifSourceMetagenerationMatch = Core.Nothing,
      ifSourceMetagenerationNotMatch = Core.Nothing,
      sourceFolder = sourceFolder,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageFoldersRename where
  type Rs StorageFoldersRename = GoogleLongrunningOperation
  type
    Scopes StorageFoldersRename =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageFoldersRename {..} =
    go
      bucket
      sourceFolder
      destinationFolder
      ifSourceMetagenerationMatch
      ifSourceMetagenerationNotMatch
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageFoldersRenameResource)
          Core.mempty
