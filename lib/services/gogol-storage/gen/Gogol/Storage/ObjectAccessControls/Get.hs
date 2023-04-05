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
-- Module      : Gogol.Storage.ObjectAccessControls.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the ACL entry for the specified entity on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.get@.
module Gogol.Storage.ObjectAccessControls.Get
  ( -- * Resource
    StorageObjectAccessControlsGetResource,

    -- ** Constructing a Request
    StorageObjectAccessControlsGet (..),
    newStorageObjectAccessControlsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objectAccessControls.get@ method which the
-- 'StorageObjectAccessControlsGet' request conforms to.
type StorageObjectAccessControlsGetResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "o"
    Core.:> Core.Capture "object" Core.Text
    Core.:> "acl"
    Core.:> Core.Capture "entity" Core.Text
    Core.:> Core.QueryParam "generation" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ObjectAccessControl

-- | Returns the ACL entry for the specified entity on the specified object.
--
-- /See:/ 'newStorageObjectAccessControlsGet' smart constructor.
data StorageObjectAccessControlsGet = StorageObjectAccessControlsGet
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    entity :: Core.Text,
    -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    generation :: (Core.Maybe Core.Int64),
    -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    object :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectAccessControlsGet' with the minimum fields required to make a request.
newStorageObjectAccessControlsGet ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers. See 'entity'.
  Core.Text ->
  -- |  Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts. See 'object'.
  Core.Text ->
  StorageObjectAccessControlsGet
newStorageObjectAccessControlsGet bucket entity object =
  StorageObjectAccessControlsGet
    { bucket = bucket,
      entity = entity,
      generation = Core.Nothing,
      object = object,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageObjectAccessControlsGet
  where
  type
    Rs StorageObjectAccessControlsGet =
      ObjectAccessControl
  type
    Scopes StorageObjectAccessControlsGet =
      '[CloudPlatform'FullControl, Devstorage'FullControl]
  requestClient StorageObjectAccessControlsGet {..} =
    go
      bucket
      object
      entity
      generation
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageObjectAccessControlsGetResource
          )
          Core.mempty
