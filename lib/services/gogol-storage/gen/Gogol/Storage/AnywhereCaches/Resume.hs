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
-- Module      : Gogol.Storage.AnywhereCaches.Resume
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resumes a paused or disabled Anywhere Cache instance.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.anywhereCaches.resume@.
module Gogol.Storage.AnywhereCaches.Resume
  ( -- * Resource
    StorageAnywhereCachesResumeResource,

    -- ** Constructing a Request
    StorageAnywhereCachesResume (..),
    newStorageAnywhereCachesResume,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.anywhereCaches.resume@ method which the
-- 'StorageAnywhereCachesResume' request conforms to.
type StorageAnywhereCachesResumeResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "anywhereCaches"
    Core.:> Core.Capture "anywhereCacheId" Core.Text
    Core.:> "resume"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] AnywhereCache

-- | Resumes a paused or disabled Anywhere Cache instance.
--
-- /See:/ 'newStorageAnywhereCachesResume' smart constructor.
data StorageAnywhereCachesResume = StorageAnywhereCachesResume
  { -- | The ID of requested Anywhere Cache instance.
    anywhereCacheId :: Core.Text,
    -- | Name of the parent bucket.
    bucket :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageAnywhereCachesResume' with the minimum fields required to make a request.
newStorageAnywhereCachesResume ::
  -- |  The ID of requested Anywhere Cache instance. See 'anywhereCacheId'.
  Core.Text ->
  -- |  Name of the parent bucket. See 'bucket'.
  Core.Text ->
  StorageAnywhereCachesResume
newStorageAnywhereCachesResume anywhereCacheId bucket =
  StorageAnywhereCachesResume
    { anywhereCacheId = anywhereCacheId,
      bucket = bucket,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageAnywhereCachesResume where
  type Rs StorageAnywhereCachesResume = AnywhereCache
  type
    Scopes StorageAnywhereCachesResume =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageAnywhereCachesResume {..} =
    go
      bucket
      anywhereCacheId
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageAnywhereCachesResumeResource)
          Core.mempty
