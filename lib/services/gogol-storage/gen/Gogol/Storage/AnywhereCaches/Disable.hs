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
-- Module      : Gogol.Storage.AnywhereCaches.Disable
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables an Anywhere Cache instance.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.anywhereCaches.disable@.
module Gogol.Storage.AnywhereCaches.Disable
  ( -- * Resource
    StorageAnywhereCachesDisableResource,

    -- ** Constructing a Request
    StorageAnywhereCachesDisable (..),
    newStorageAnywhereCachesDisable,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.anywhereCaches.disable@ method which the
-- 'StorageAnywhereCachesDisable' request conforms to.
type StorageAnywhereCachesDisableResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "anywhereCaches"
    Core.:> Core.Capture "anywhereCacheId" Core.Text
    Core.:> "disable"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] AnywhereCache

-- | Disables an Anywhere Cache instance.
--
-- /See:/ 'newStorageAnywhereCachesDisable' smart constructor.
data StorageAnywhereCachesDisable = StorageAnywhereCachesDisable
  { -- | The ID of requested Anywhere Cache instance.
    anywhereCacheId :: Core.Text,
    -- | Name of the parent bucket.
    bucket :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageAnywhereCachesDisable' with the minimum fields required to make a request.
newStorageAnywhereCachesDisable ::
  -- |  The ID of requested Anywhere Cache instance. See 'anywhereCacheId'.
  Core.Text ->
  -- |  Name of the parent bucket. See 'bucket'.
  Core.Text ->
  StorageAnywhereCachesDisable
newStorageAnywhereCachesDisable anywhereCacheId bucket =
  StorageAnywhereCachesDisable
    { anywhereCacheId = anywhereCacheId,
      bucket = bucket,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageAnywhereCachesDisable where
  type Rs StorageAnywhereCachesDisable = AnywhereCache
  type
    Scopes StorageAnywhereCachesDisable =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageAnywhereCachesDisable {..} =
    go
      bucket
      anywhereCacheId
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageAnywhereCachesDisableResource)
          Core.mempty
