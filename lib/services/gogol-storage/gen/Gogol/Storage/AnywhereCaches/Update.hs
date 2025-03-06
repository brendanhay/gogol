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
-- Module      : Gogol.Storage.AnywhereCaches.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the config(ttl and admissionPolicy) of an Anywhere Cache instance.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.anywhereCaches.update@.
module Gogol.Storage.AnywhereCaches.Update
  ( -- * Resource
    StorageAnywhereCachesUpdateResource,

    -- ** Constructing a Request
    StorageAnywhereCachesUpdate (..),
    newStorageAnywhereCachesUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.anywhereCaches.update@ method which the
-- 'StorageAnywhereCachesUpdate' request conforms to.
type StorageAnywhereCachesUpdateResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "anywhereCaches"
    Core.:> Core.Capture "anywhereCacheId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AnywhereCache
    Core.:> Core.Patch '[Core.JSON] GoogleLongrunningOperation

-- | Updates the config(ttl and admissionPolicy) of an Anywhere Cache instance.
--
-- /See:/ 'newStorageAnywhereCachesUpdate' smart constructor.
data StorageAnywhereCachesUpdate = StorageAnywhereCachesUpdate
  { -- | The ID of requested Anywhere Cache instance.
    anywhereCacheId :: Core.Text,
    -- | Name of the parent bucket.
    bucket :: Core.Text,
    -- | Multipart request metadata.
    payload :: AnywhereCache,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageAnywhereCachesUpdate' with the minimum fields required to make a request.
newStorageAnywhereCachesUpdate ::
  -- |  The ID of requested Anywhere Cache instance. See 'anywhereCacheId'.
  Core.Text ->
  -- |  Name of the parent bucket. See 'bucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AnywhereCache ->
  StorageAnywhereCachesUpdate
newStorageAnywhereCachesUpdate anywhereCacheId bucket payload =
  StorageAnywhereCachesUpdate
    { anywhereCacheId = anywhereCacheId,
      bucket = bucket,
      payload = payload,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageAnywhereCachesUpdate where
  type Rs StorageAnywhereCachesUpdate = GoogleLongrunningOperation
  type
    Scopes StorageAnywhereCachesUpdate =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageAnywhereCachesUpdate {..} =
    go
      bucket
      anywhereCacheId
      uploadType
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageAnywhereCachesUpdateResource)
          Core.mempty
