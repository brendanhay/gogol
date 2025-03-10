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
-- Module      : Gogol.Storage.Folders.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of folders matching the criteria. Only applicable to buckets with hierarchical namespace enabled.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.folders.list@.
module Gogol.Storage.Folders.List
  ( -- * Resource
    StorageFoldersListResource,

    -- ** Constructing a Request
    StorageFoldersList (..),
    newStorageFoldersList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.folders.list@ method which the
-- 'StorageFoldersList' request conforms to.
type StorageFoldersListResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "folders"
    Core.:> Core.QueryParam "delimiter" Core.Text
    Core.:> Core.QueryParam "endOffset" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "prefix" Core.Text
    Core.:> Core.QueryParam "startOffset" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Folders

-- | Retrieves a list of folders matching the criteria. Only applicable to buckets with hierarchical namespace enabled.
--
-- /See:/ 'newStorageFoldersList' smart constructor.
data StorageFoldersList = StorageFoldersList
  { -- | Name of the bucket in which to look for folders.
    bucket :: Core.Text,
    -- | Returns results in a directory-like mode. The only supported value is \'\/\'. If set, items will only contain folders that either exactly match the prefix, or are one level below the prefix.
    delimiter :: (Core.Maybe Core.Text),
    -- | Filter results to folders whose names are lexicographically before endOffset. If startOffset is also set, the folders listed will have names between startOffset (inclusive) and endOffset (exclusive).
    endOffset :: (Core.Maybe Core.Text),
    -- | Maximum number of items to return in a single page of responses.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A previously-returned page token representing part of the larger set of results to view.
    pageToken :: (Core.Maybe Core.Text),
    -- | Filter results to folders whose paths begin with this prefix. If set, the value must either be an empty string or end with a \'\/\'.
    prefix :: (Core.Maybe Core.Text),
    -- | Filter results to folders whose names are lexicographically equal to or after startOffset. If endOffset is also set, the folders listed will have names between startOffset (inclusive) and endOffset (exclusive).
    startOffset :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageFoldersList' with the minimum fields required to make a request.
newStorageFoldersList ::
  -- |  Name of the bucket in which to look for folders. See 'bucket'.
  Core.Text ->
  StorageFoldersList
newStorageFoldersList bucket =
  StorageFoldersList
    { bucket = bucket,
      delimiter = Core.Nothing,
      endOffset = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      prefix = Core.Nothing,
      startOffset = Core.Nothing,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageFoldersList where
  type Rs StorageFoldersList = Folders
  type
    Scopes StorageFoldersList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageFoldersList {..} =
    go
      bucket
      delimiter
      endOffset
      pageSize
      pageToken
      prefix
      startOffset
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageFoldersListResource)
          Core.mempty
