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
-- Module      : Gogol.Storage.AnywhereCaches.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Anywhere Cache instances of the bucket matching the criteria.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.anywhereCaches.list@.
module Gogol.Storage.AnywhereCaches.List
  ( -- * Resource
    StorageAnywhereCachesListResource,

    -- ** Constructing a Request
    StorageAnywhereCachesList (..),
    newStorageAnywhereCachesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.anywhereCaches.list@ method which the
-- 'StorageAnywhereCachesList' request conforms to.
type StorageAnywhereCachesListResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "anywhereCaches"
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AnywhereCaches

-- | Returns a list of Anywhere Cache instances of the bucket matching the criteria.
--
-- /See:/ 'newStorageAnywhereCachesList' smart constructor.
data StorageAnywhereCachesList = StorageAnywhereCachesList
  { -- | Name of the parent bucket.
    bucket :: Core.Text,
    -- | Maximum number of items to return in a single page of responses. Maximum 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A previously-returned page token representing part of the larger set of results to view.
    pageToken :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageAnywhereCachesList' with the minimum fields required to make a request.
newStorageAnywhereCachesList ::
  -- |  Name of the parent bucket. See 'bucket'.
  Core.Text ->
  StorageAnywhereCachesList
newStorageAnywhereCachesList bucket =
  StorageAnywhereCachesList
    { bucket = bucket,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageAnywhereCachesList where
  type Rs StorageAnywhereCachesList = AnywhereCaches
  type
    Scopes StorageAnywhereCachesList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageAnywhereCachesList {..} =
    go
      bucket
      pageSize
      pageToken
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageAnywhereCachesListResource)
          Core.mempty
