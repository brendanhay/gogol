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
-- Module      : Gogol.Storage.Projects.HmacKeys.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an HMAC key.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.delete@.
module Gogol.Storage.Projects.HmacKeys.Delete
  ( -- * Resource
    StorageProjectsHmacKeysDeleteResource,

    -- ** Constructing a Request
    StorageProjectsHmacKeysDelete (..),
    newStorageProjectsHmacKeysDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.projects.hmacKeys.delete@ method which the
-- 'StorageProjectsHmacKeysDelete' request conforms to.
type StorageProjectsHmacKeysDeleteResource =
  "storage"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "hmacKeys"
    Core.:> Core.Capture "accessId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes an HMAC key.
--
-- /See:/ 'newStorageProjectsHmacKeysDelete' smart constructor.
data StorageProjectsHmacKeysDelete = StorageProjectsHmacKeysDelete
  { -- | Name of the HMAC key to be deleted.
    accessId :: Core.Text,
    -- | Project ID owning the requested key
    projectId :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageProjectsHmacKeysDelete' with the minimum fields required to make a request.
newStorageProjectsHmacKeysDelete ::
  -- |  Name of the HMAC key to be deleted. See 'accessId'.
  Core.Text ->
  -- |  Project ID owning the requested key See 'projectId'.
  Core.Text ->
  StorageProjectsHmacKeysDelete
newStorageProjectsHmacKeysDelete accessId projectId =
  StorageProjectsHmacKeysDelete
    { accessId = accessId,
      projectId = projectId,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageProjectsHmacKeysDelete where
  type Rs StorageProjectsHmacKeysDelete = ()
  type
    Scopes StorageProjectsHmacKeysDelete =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageProjectsHmacKeysDelete {..} =
    go
      projectId
      accessId
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageProjectsHmacKeysDeleteResource)
          Core.mempty
