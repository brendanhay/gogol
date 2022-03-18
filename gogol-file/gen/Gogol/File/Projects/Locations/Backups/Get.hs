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
-- Module      : Gogol.File.Projects.Locations.Backups.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a specific backup.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.backups.get@.
module Gogol.File.Projects.Locations.Backups.Get
  ( -- * Resource
    FileProjectsLocationsBackupsGetResource,

    -- ** Constructing a Request
    newFileProjectsLocationsBackupsGet,
    FileProjectsLocationsBackupsGet,
  )
where

import Gogol.File.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @file.projects.locations.backups.get@ method which the
-- 'FileProjectsLocationsBackupsGet' request conforms to.
type FileProjectsLocationsBackupsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Backup

-- | Gets the details of a specific backup.
--
-- /See:/ 'newFileProjectsLocationsBackupsGet' smart constructor.
data FileProjectsLocationsBackupsGet = FileProjectsLocationsBackupsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The backup resource name, in the format @projects\/{project_number}\/locations\/{location}\/backups\/{backup_id}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsBackupsGet' with the minimum fields required to make a request.
newFileProjectsLocationsBackupsGet ::
  -- |  Required. The backup resource name, in the format @projects\/{project_number}\/locations\/{location}\/backups\/{backup_id}@. See 'name'.
  Core.Text ->
  FileProjectsLocationsBackupsGet
newFileProjectsLocationsBackupsGet name =
  FileProjectsLocationsBackupsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FileProjectsLocationsBackupsGet
  where
  type Rs FileProjectsLocationsBackupsGet = Backup
  type
    Scopes FileProjectsLocationsBackupsGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient FileProjectsLocationsBackupsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fileService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FileProjectsLocationsBackupsGetResource
          )
          Core.mempty
