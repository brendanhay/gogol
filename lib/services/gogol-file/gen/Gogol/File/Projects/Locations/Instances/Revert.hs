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
-- Module      : Gogol.File.Projects.Locations.Instances.Revert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revert an existing instance\'s file system to a specified snapshot.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.revert@.
module Gogol.File.Projects.Locations.Instances.Revert
  ( -- * Resource
    FileProjectsLocationsInstancesRevertResource,

    -- ** Constructing a Request
    FileProjectsLocationsInstancesRevert (..),
    newFileProjectsLocationsInstancesRevert,
  )
where

import Gogol.File.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @file.projects.locations.instances.revert@ method which the
-- 'FileProjectsLocationsInstancesRevert' request conforms to.
type FileProjectsLocationsInstancesRevertResource =
  "v1"
    Core.:> Core.CaptureMode "name" "revert" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RevertInstanceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Revert an existing instance\'s file system to a specified snapshot.
--
-- /See:/ 'newFileProjectsLocationsInstancesRevert' smart constructor.
data FileProjectsLocationsInstancesRevert = FileProjectsLocationsInstancesRevert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the instance, in the format @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RevertInstanceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsInstancesRevert' with the minimum fields required to make a request.
newFileProjectsLocationsInstancesRevert ::
  -- |  Required. The resource name of the instance, in the format @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RevertInstanceRequest ->
  FileProjectsLocationsInstancesRevert
newFileProjectsLocationsInstancesRevert name payload =
  FileProjectsLocationsInstancesRevert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FileProjectsLocationsInstancesRevert where
  type Rs FileProjectsLocationsInstancesRevert = Operation
  type
    Scopes FileProjectsLocationsInstancesRevert =
      '[CloudPlatform'FullControl]
  requestClient FileProjectsLocationsInstancesRevert {..} =
    go
      name
      xgafv
      accessToken
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
              Core.Proxy FileProjectsLocationsInstancesRevertResource
          )
          Core.mempty
