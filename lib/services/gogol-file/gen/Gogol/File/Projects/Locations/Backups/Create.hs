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
-- Module      : Gogol.File.Projects.Locations.Backups.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a backup.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.backups.create@.
module Gogol.File.Projects.Locations.Backups.Create
  ( -- * Resource
    FileProjectsLocationsBackupsCreateResource,

    -- ** Constructing a Request
    newFileProjectsLocationsBackupsCreate,
    FileProjectsLocationsBackupsCreate,
  )
where

import Gogol.File.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @file.projects.locations.backups.create@ method which the
-- 'FileProjectsLocationsBackupsCreate' request conforms to.
type FileProjectsLocationsBackupsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "backupId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Backup
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a backup.
--
-- /See:/ 'newFileProjectsLocationsBackupsCreate' smart constructor.
data FileProjectsLocationsBackupsCreate = FileProjectsLocationsBackupsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.
    backupId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The backup\'s project and location, in the format @projects\/{project_number}\/locations\/{location}@. In Cloud Filestore, backup locations map to GCP regions, for example __us-west1__.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Backup,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsBackupsCreate' with the minimum fields required to make a request.
newFileProjectsLocationsBackupsCreate ::
  -- |  Required. The backup\'s project and location, in the format @projects\/{project_number}\/locations\/{location}@. In Cloud Filestore, backup locations map to GCP regions, for example __us-west1__. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Backup ->
  FileProjectsLocationsBackupsCreate
newFileProjectsLocationsBackupsCreate parent payload =
  FileProjectsLocationsBackupsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      backupId = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FileProjectsLocationsBackupsCreate
  where
  type
    Rs FileProjectsLocationsBackupsCreate =
      Operation
  type
    Scopes FileProjectsLocationsBackupsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient FileProjectsLocationsBackupsCreate {..} =
    go
      parent
      xgafv
      accessToken
      backupId
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      fileService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                FileProjectsLocationsBackupsCreateResource
          )
          Core.mempty
