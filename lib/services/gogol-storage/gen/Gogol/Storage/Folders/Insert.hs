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
-- Module      : Gogol.Storage.Folders.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new folder. Only applicable to buckets with hierarchical namespace enabled.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.folders.insert@.
module Gogol.Storage.Folders.Insert
  ( -- * Resource
    StorageFoldersInsertResource,

    -- ** Constructing a Request
    StorageFoldersInsert (..),
    newStorageFoldersInsert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.folders.insert@ method which the
-- 'StorageFoldersInsert' request conforms to.
type StorageFoldersInsertResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "folders"
    Core.:> Core.QueryParam "recursive" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Folder
    Core.:> Core.Post '[Core.JSON] Folder

-- | Creates a new folder. Only applicable to buckets with hierarchical namespace enabled.
--
-- /See:/ 'newStorageFoldersInsert' smart constructor.
data StorageFoldersInsert = StorageFoldersInsert
  { -- | Name of the bucket in which the folder resides.
    bucket :: Core.Text,
    -- | Multipart request metadata.
    payload :: Folder,
    -- | If true, any parent folder which doesn\'t exist will be created automatically.
    recursive :: (Core.Maybe Core.Bool),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageFoldersInsert' with the minimum fields required to make a request.
newStorageFoldersInsert ::
  -- |  Name of the bucket in which the folder resides. See 'bucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Folder ->
  StorageFoldersInsert
newStorageFoldersInsert bucket payload =
  StorageFoldersInsert
    { bucket = bucket,
      payload = payload,
      recursive = Core.Nothing,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageFoldersInsert where
  type Rs StorageFoldersInsert = Folder
  type
    Scopes StorageFoldersInsert =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageFoldersInsert {..} =
    go
      bucket
      recursive
      uploadType
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageFoldersInsertResource)
          Core.mempty
