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
-- Module      : Gogol.Storage.Folders.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a folder. Only applicable to buckets with hierarchical namespace enabled.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.folders.delete@.
module Gogol.Storage.Folders.Delete
  ( -- * Resource
    StorageFoldersDeleteResource,

    -- ** Constructing a Request
    StorageFoldersDelete (..),
    newStorageFoldersDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.folders.delete@ method which the
-- 'StorageFoldersDelete' request conforms to.
type StorageFoldersDeleteResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "folders"
    Core.:> Core.Capture "folder" Core.Text
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Permanently deletes a folder. Only applicable to buckets with hierarchical namespace enabled.
--
-- /See:/ 'newStorageFoldersDelete' smart constructor.
data StorageFoldersDelete = StorageFoldersDelete
  { -- | Name of the bucket in which the folder resides.
    bucket :: Core.Text,
    -- | Name of a folder.
    folder :: Core.Text,
    -- | If set, only deletes the folder if its metageneration matches this value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | If set, only deletes the folder if its metageneration does not match this value.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageFoldersDelete' with the minimum fields required to make a request.
newStorageFoldersDelete ::
  -- |  Name of the bucket in which the folder resides. See 'bucket'.
  Core.Text ->
  -- |  Name of a folder. See 'folder'.
  Core.Text ->
  StorageFoldersDelete
newStorageFoldersDelete bucket folder =
  StorageFoldersDelete
    { bucket = bucket,
      folder = folder,
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageFoldersDelete where
  type Rs StorageFoldersDelete = ()
  type
    Scopes StorageFoldersDelete =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageFoldersDelete {..} =
    go
      bucket
      folder
      ifMetagenerationMatch
      ifMetagenerationNotMatch
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageFoldersDeleteResource)
          Core.mempty
