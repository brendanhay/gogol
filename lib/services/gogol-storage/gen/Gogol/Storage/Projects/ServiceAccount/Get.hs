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
-- Module      : Gogol.Storage.Projects.ServiceAccount.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the email address of this project\'s Google Cloud Storage service account.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.serviceAccount.get@.
module Gogol.Storage.Projects.ServiceAccount.Get
  ( -- * Resource
    StorageProjectsServiceAccountGetResource,

    -- ** Constructing a Request
    StorageProjectsServiceAccountGet (..),
    newStorageProjectsServiceAccountGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.projects.serviceAccount.get@ method which the
-- 'StorageProjectsServiceAccountGet' request conforms to.
type StorageProjectsServiceAccountGetResource =
  "storage"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "serviceAccount"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ServiceAccount

-- | Get the email address of this project\'s Google Cloud Storage service account.
--
-- /See:/ 'newStorageProjectsServiceAccountGet' smart constructor.
data StorageProjectsServiceAccountGet = StorageProjectsServiceAccountGet
  { -- | Project ID
    projectId :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageProjectsServiceAccountGet' with the minimum fields required to make a request.
newStorageProjectsServiceAccountGet ::
  -- |  Project ID See 'projectId'.
  Core.Text ->
  StorageProjectsServiceAccountGet
newStorageProjectsServiceAccountGet projectId =
  StorageProjectsServiceAccountGet
    { projectId = projectId,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageProjectsServiceAccountGet where
  type Rs StorageProjectsServiceAccountGet = ServiceAccount
  type
    Scopes StorageProjectsServiceAccountGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageProjectsServiceAccountGet {..} =
    go
      projectId
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageProjectsServiceAccountGetResource)
          Core.mempty
