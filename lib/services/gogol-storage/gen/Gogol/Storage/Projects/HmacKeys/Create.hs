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
-- Module      : Gogol.Storage.Projects.HmacKeys.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new HMAC key for the specified service account.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.create@.
module Gogol.Storage.Projects.HmacKeys.Create
  ( -- * Resource
    StorageProjectsHmacKeysCreateResource,

    -- ** Constructing a Request
    StorageProjectsHmacKeysCreate (..),
    newStorageProjectsHmacKeysCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.projects.hmacKeys.create@ method which the
-- 'StorageProjectsHmacKeysCreate' request conforms to.
type StorageProjectsHmacKeysCreateResource =
  "storage"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "hmacKeys"
    Core.:> Core.QueryParam "serviceAccountEmail" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] HmacKey

-- | Creates a new HMAC key for the specified service account.
--
-- /See:/ 'newStorageProjectsHmacKeysCreate' smart constructor.
data StorageProjectsHmacKeysCreate = StorageProjectsHmacKeysCreate
  { -- | Project ID owning the service account.
    projectId :: Core.Text,
    -- | Email address of the service account.
    serviceAccountEmail :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageProjectsHmacKeysCreate' with the minimum fields required to make a request.
newStorageProjectsHmacKeysCreate ::
  -- |  Project ID owning the service account. See 'projectId'.
  Core.Text ->
  -- |  Email address of the service account. See 'serviceAccountEmail'.
  Core.Text ->
  StorageProjectsHmacKeysCreate
newStorageProjectsHmacKeysCreate projectId serviceAccountEmail =
  StorageProjectsHmacKeysCreate
    { projectId = projectId,
      serviceAccountEmail = serviceAccountEmail,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageProjectsHmacKeysCreate where
  type Rs StorageProjectsHmacKeysCreate = HmacKey
  type
    Scopes StorageProjectsHmacKeysCreate =
      '[CloudPlatform'FullControl, Devstorage'FullControl]
  requestClient StorageProjectsHmacKeysCreate {..} =
    go
      projectId
      (Core.Just serviceAccountEmail)
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageProjectsHmacKeysCreateResource)
          Core.mempty
