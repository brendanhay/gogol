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
-- Module      : Gogol.Storage.DefaultObjectAccessControls.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a default object ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.patch@.
module Gogol.Storage.DefaultObjectAccessControls.Patch
  ( -- * Resource
    StorageDefaultObjectAccessControlsPatchResource,

    -- ** Constructing a Request
    StorageDefaultObjectAccessControlsPatch (..),
    newStorageDefaultObjectAccessControlsPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.defaultObjectAccessControls.patch@ method which the
-- 'StorageDefaultObjectAccessControlsPatch' request conforms to.
type StorageDefaultObjectAccessControlsPatchResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "defaultObjectAcl"
    Core.:> Core.Capture "entity" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ObjectAccessControl
    Core.:> Core.Patch '[Core.JSON] ObjectAccessControl

-- | Patches a default object ACL entry on the specified bucket.
--
-- /See:/ 'newStorageDefaultObjectAccessControlsPatch' smart constructor.
data StorageDefaultObjectAccessControlsPatch = StorageDefaultObjectAccessControlsPatch
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    entity :: Core.Text,
    -- | Multipart request metadata.
    payload :: ObjectAccessControl,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageDefaultObjectAccessControlsPatch' with the minimum fields required to make a request.
newStorageDefaultObjectAccessControlsPatch ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers. See 'entity'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ObjectAccessControl ->
  StorageDefaultObjectAccessControlsPatch
newStorageDefaultObjectAccessControlsPatch bucket entity payload =
  StorageDefaultObjectAccessControlsPatch
    { bucket = bucket,
      entity = entity,
      payload = payload,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageDefaultObjectAccessControlsPatch where
  type
    Rs StorageDefaultObjectAccessControlsPatch =
      ObjectAccessControl
  type
    Scopes StorageDefaultObjectAccessControlsPatch =
      '[CloudPlatform'FullControl, Devstorage'FullControl]
  requestClient StorageDefaultObjectAccessControlsPatch {..} =
    go
      bucket
      entity
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageDefaultObjectAccessControlsPatchResource
          )
          Core.mempty
