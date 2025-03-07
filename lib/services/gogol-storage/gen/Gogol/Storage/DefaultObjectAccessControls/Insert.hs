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
-- Module      : Gogol.Storage.DefaultObjectAccessControls.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new default object ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.insert@.
module Gogol.Storage.DefaultObjectAccessControls.Insert
  ( -- * Resource
    StorageDefaultObjectAccessControlsInsertResource,

    -- ** Constructing a Request
    StorageDefaultObjectAccessControlsInsert (..),
    newStorageDefaultObjectAccessControlsInsert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.defaultObjectAccessControls.insert@ method which the
-- 'StorageDefaultObjectAccessControlsInsert' request conforms to.
type StorageDefaultObjectAccessControlsInsertResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "defaultObjectAcl"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ObjectAccessControl
    Core.:> Core.Post '[Core.JSON] ObjectAccessControl

-- | Creates a new default object ACL entry on the specified bucket.
--
-- /See:/ 'newStorageDefaultObjectAccessControlsInsert' smart constructor.
data StorageDefaultObjectAccessControlsInsert = StorageDefaultObjectAccessControlsInsert
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | Multipart request metadata.
    payload :: ObjectAccessControl,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageDefaultObjectAccessControlsInsert' with the minimum fields required to make a request.
newStorageDefaultObjectAccessControlsInsert ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ObjectAccessControl ->
  StorageDefaultObjectAccessControlsInsert
newStorageDefaultObjectAccessControlsInsert bucket payload =
  StorageDefaultObjectAccessControlsInsert
    { bucket = bucket,
      payload = payload,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageDefaultObjectAccessControlsInsert
  where
  type
    Rs StorageDefaultObjectAccessControlsInsert =
      ObjectAccessControl
  type
    Scopes StorageDefaultObjectAccessControlsInsert =
      '[CloudPlatform'FullControl, Devstorage'FullControl]
  requestClient StorageDefaultObjectAccessControlsInsert {..} =
    go
      bucket
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageDefaultObjectAccessControlsInsertResource
          )
          Core.mempty
