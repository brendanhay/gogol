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
-- Module      : Gogol.Storage.AnywhereCaches.Pause
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pauses an Anywhere Cache instance.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.anywhereCaches.pause@.
module Gogol.Storage.AnywhereCaches.Pause
  ( -- * Resource
    StorageAnywhereCachesPauseResource,

    -- ** Constructing a Request
    StorageAnywhereCachesPause (..),
    newStorageAnywhereCachesPause,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.anywhereCaches.pause@ method which the
-- 'StorageAnywhereCachesPause' request conforms to.
type StorageAnywhereCachesPauseResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "anywhereCaches"
    Core.:> Core.Capture "anywhereCacheId" Core.Text
    Core.:> "pause"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] AnywhereCache

-- | Pauses an Anywhere Cache instance.
--
-- /See:/ 'newStorageAnywhereCachesPause' smart constructor.
data StorageAnywhereCachesPause = StorageAnywhereCachesPause
  { -- | The ID of requested Anywhere Cache instance.
    anywhereCacheId :: Core.Text,
    -- | Name of the parent bucket.
    bucket :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageAnywhereCachesPause' with the minimum fields required to make a request.
newStorageAnywhereCachesPause ::
  -- |  The ID of requested Anywhere Cache instance. See 'anywhereCacheId'.
  Core.Text ->
  -- |  Name of the parent bucket. See 'bucket'.
  Core.Text ->
  StorageAnywhereCachesPause
newStorageAnywhereCachesPause anywhereCacheId bucket =
  StorageAnywhereCachesPause
    { anywhereCacheId = anywhereCacheId,
      bucket = bucket,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageAnywhereCachesPause where
  type Rs StorageAnywhereCachesPause = AnywhereCache
  type
    Scopes StorageAnywhereCachesPause =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageAnywhereCachesPause {..} =
    go
      bucket
      anywhereCacheId
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageAnywhereCachesPauseResource)
          Core.mempty
