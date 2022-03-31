{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.ObjectAccessControls.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches an ACL entry on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.patch@.
module Gogol.Storage.ObjectAccessControls.Patch
  ( -- * Resource
    StorageObjectAccessControlsPatchResource,

    -- ** Constructing a Request
    newStorageObjectAccessControlsPatch,
    StorageObjectAccessControlsPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objectAccessControls.patch@ method which the
-- 'StorageObjectAccessControlsPatch' request conforms to.
type StorageObjectAccessControlsPatchResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "o"
    Core.:> Core.Capture "object" Core.Text
    Core.:> "acl"
    Core.:> Core.Capture "entity" Core.Text
    Core.:> Core.QueryParam "generation" Core.Int64
    Core.:> Core.QueryParam "provisionalUserProject" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ObjectAccessControl
    Core.:> Core.Patch '[Core.JSON] ObjectAccessControl

-- | Patches an ACL entry on the specified object.
--
-- /See:/ 'newStorageObjectAccessControlsPatch' smart constructor.
data StorageObjectAccessControlsPatch = StorageObjectAccessControlsPatch
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    entity :: Core.Text,
    -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    generation :: (Core.Maybe Core.Int64),
    -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    object :: Core.Text,
    -- | Multipart request metadata.
    payload :: ObjectAccessControl,
    -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    provisionalUserProject :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectAccessControlsPatch' with the minimum fields required to make a request.
newStorageObjectAccessControlsPatch ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers. See 'entity'.
  Core.Text ->
  -- |  Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts. See 'object'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ObjectAccessControl ->
  StorageObjectAccessControlsPatch
newStorageObjectAccessControlsPatch bucket entity object payload =
  StorageObjectAccessControlsPatch
    { bucket = bucket,
      entity = entity,
      generation = Core.Nothing,
      object = object,
      payload = payload,
      provisionalUserProject = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageObjectAccessControlsPatch
  where
  type
    Rs StorageObjectAccessControlsPatch =
      ObjectAccessControl
  type
    Scopes StorageObjectAccessControlsPatch =
      '[CloudPlatform'FullControl, Devstorage'FullControl]
  requestClient StorageObjectAccessControlsPatch {..} =
    go
      bucket
      object
      entity
      generation
      provisionalUserProject
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageObjectAccessControlsPatchResource
          )
          Core.mempty
