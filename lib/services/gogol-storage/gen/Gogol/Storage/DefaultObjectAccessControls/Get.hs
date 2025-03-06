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
-- Module      : Gogol.Storage.DefaultObjectAccessControls.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the default object ACL entry for the specified entity on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.get@.
module Gogol.Storage.DefaultObjectAccessControls.Get
  ( -- * Resource
    StorageDefaultObjectAccessControlsGetResource,

    -- ** Constructing a Request
    StorageDefaultObjectAccessControlsGet (..),
    newStorageDefaultObjectAccessControlsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.defaultObjectAccessControls.get@ method which the
-- 'StorageDefaultObjectAccessControlsGet' request conforms to.
type StorageDefaultObjectAccessControlsGetResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "defaultObjectAcl"
    Core.:> Core.Capture "entity" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ObjectAccessControl

-- | Returns the default object ACL entry for the specified entity on the specified bucket.
--
-- /See:/ 'newStorageDefaultObjectAccessControlsGet' smart constructor.
data StorageDefaultObjectAccessControlsGet = StorageDefaultObjectAccessControlsGet
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    entity :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageDefaultObjectAccessControlsGet' with the minimum fields required to make a request.
newStorageDefaultObjectAccessControlsGet ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers. See 'entity'.
  Core.Text ->
  StorageDefaultObjectAccessControlsGet
newStorageDefaultObjectAccessControlsGet bucket entity =
  StorageDefaultObjectAccessControlsGet
    { bucket = bucket,
      entity = entity,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageDefaultObjectAccessControlsGet where
  type Rs StorageDefaultObjectAccessControlsGet = ObjectAccessControl
  type
    Scopes StorageDefaultObjectAccessControlsGet =
      '[CloudPlatform'FullControl, Devstorage'FullControl]
  requestClient StorageDefaultObjectAccessControlsGet {..} =
    go
      bucket
      entity
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageDefaultObjectAccessControlsGetResource
          )
          Core.mempty
