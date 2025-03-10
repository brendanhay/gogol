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
-- Module      : Gogol.Storage.Buckets.GetStorageLayout
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the storage layout configuration for the specified bucket. Note that this operation requires storage.objects.list permission.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.getStorageLayout@.
module Gogol.Storage.Buckets.GetStorageLayout
  ( -- * Resource
    StorageBucketsGetStorageLayoutResource,

    -- ** Constructing a Request
    StorageBucketsGetStorageLayout (..),
    newStorageBucketsGetStorageLayout,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.getStorageLayout@ method which the
-- 'StorageBucketsGetStorageLayout' request conforms to.
type StorageBucketsGetStorageLayoutResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "storageLayout"
    Core.:> Core.QueryParam "prefix" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BucketStorageLayout

-- | Returns the storage layout configuration for the specified bucket. Note that this operation requires storage.objects.list permission.
--
-- /See:/ 'newStorageBucketsGetStorageLayout' smart constructor.
data StorageBucketsGetStorageLayout = StorageBucketsGetStorageLayout
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | An optional prefix used for permission check. It is useful when the caller only has storage.objects.list permission under a specific prefix.
    prefix :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsGetStorageLayout' with the minimum fields required to make a request.
newStorageBucketsGetStorageLayout ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  StorageBucketsGetStorageLayout
newStorageBucketsGetStorageLayout bucket =
  StorageBucketsGetStorageLayout
    { bucket = bucket,
      prefix = Core.Nothing,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsGetStorageLayout where
  type Rs StorageBucketsGetStorageLayout = BucketStorageLayout
  type
    Scopes StorageBucketsGetStorageLayout =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageBucketsGetStorageLayout {..} =
    go
      bucket
      prefix
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageBucketsGetStorageLayoutResource)
          Core.mempty
