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
-- Module      : Gogol.Storage.AnywhereCaches.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Anywhere Cache instance.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.anywhereCaches.insert@.
module Gogol.Storage.AnywhereCaches.Insert
  ( -- * Resource
    StorageAnywhereCachesInsertResource,

    -- ** Constructing a Request
    StorageAnywhereCachesInsert (..),
    newStorageAnywhereCachesInsert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.anywhereCaches.insert@ method which the
-- 'StorageAnywhereCachesInsert' request conforms to.
type StorageAnywhereCachesInsertResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "anywhereCaches"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AnywhereCache
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates an Anywhere Cache instance.
--
-- /See:/ 'newStorageAnywhereCachesInsert' smart constructor.
data StorageAnywhereCachesInsert = StorageAnywhereCachesInsert
  { -- | Name of the parent bucket.
    bucket :: Core.Text,
    -- | Multipart request metadata.
    payload :: AnywhereCache,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageAnywhereCachesInsert' with the minimum fields required to make a request.
newStorageAnywhereCachesInsert ::
  -- |  Name of the parent bucket. See 'bucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AnywhereCache ->
  StorageAnywhereCachesInsert
newStorageAnywhereCachesInsert bucket payload =
  StorageAnywhereCachesInsert
    { bucket = bucket,
      payload = payload,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageAnywhereCachesInsert where
  type Rs StorageAnywhereCachesInsert = GoogleLongrunningOperation
  type
    Scopes StorageAnywhereCachesInsert =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageAnywhereCachesInsert {..} =
    go
      bucket
      uploadType
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageAnywhereCachesInsertResource)
          Core.mempty
