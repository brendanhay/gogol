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
-- Module      : Gogol.Storage.Folders.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for the specified folder. Only applicable to buckets with hierarchical namespace enabled.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.folders.get@.
module Gogol.Storage.Folders.Get
  ( -- * Resource
    StorageFoldersGetResource,

    -- ** Constructing a Request
    StorageFoldersGet (..),
    newStorageFoldersGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.folders.get@ method which the
-- 'StorageFoldersGet' request conforms to.
type StorageFoldersGetResource =
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
    Core.:> Core.Get '[Core.JSON] Folder

-- | Returns metadata for the specified folder. Only applicable to buckets with hierarchical namespace enabled.
--
-- /See:/ 'newStorageFoldersGet' smart constructor.
data StorageFoldersGet = StorageFoldersGet
  { -- | Name of the bucket in which the folder resides.
    bucket :: Core.Text,
    -- | Name of a folder.
    folder :: Core.Text,
    -- | Makes the return of the folder metadata conditional on whether the folder\'s current metageneration matches the given value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the return of the folder metadata conditional on whether the folder\'s current metageneration does not match the given value.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageFoldersGet' with the minimum fields required to make a request.
newStorageFoldersGet ::
  -- |  Name of the bucket in which the folder resides. See 'bucket'.
  Core.Text ->
  -- |  Name of a folder. See 'folder'.
  Core.Text ->
  StorageFoldersGet
newStorageFoldersGet bucket folder =
  StorageFoldersGet
    { bucket = bucket,
      folder = folder,
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageFoldersGet where
  type Rs StorageFoldersGet = Folder
  type
    Scopes StorageFoldersGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageFoldersGet {..} =
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
          (Core.Proxy :: Core.Proxy StorageFoldersGetResource)
          Core.mempty
