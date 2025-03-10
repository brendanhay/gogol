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
-- Module      : Gogol.Storage.ObjectAccessControls.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves ACL entries on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.list@.
module Gogol.Storage.ObjectAccessControls.List
  ( -- * Resource
    StorageObjectAccessControlsListResource,

    -- ** Constructing a Request
    StorageObjectAccessControlsList (..),
    newStorageObjectAccessControlsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objectAccessControls.list@ method which the
-- 'StorageObjectAccessControlsList' request conforms to.
type StorageObjectAccessControlsListResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "o"
    Core.:> Core.Capture "object" Core.Text
    Core.:> "acl"
    Core.:> Core.QueryParam "generation" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ObjectAccessControls

-- | Retrieves ACL entries on the specified object.
--
-- /See:/ 'newStorageObjectAccessControlsList' smart constructor.
data StorageObjectAccessControlsList = StorageObjectAccessControlsList
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    generation :: (Core.Maybe Core.Int64),
    -- | Name of the object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>.
    object :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectAccessControlsList' with the minimum fields required to make a request.
newStorageObjectAccessControlsList ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  Name of the object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>. See 'object'.
  Core.Text ->
  StorageObjectAccessControlsList
newStorageObjectAccessControlsList bucket object =
  StorageObjectAccessControlsList
    { bucket = bucket,
      generation = Core.Nothing,
      object = object,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageObjectAccessControlsList where
  type Rs StorageObjectAccessControlsList = ObjectAccessControls
  type
    Scopes StorageObjectAccessControlsList =
      '[CloudPlatform'FullControl, Devstorage'FullControl]
  requestClient StorageObjectAccessControlsList {..} =
    go
      bucket
      object
      generation
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageObjectAccessControlsListResource)
          Core.mempty
