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
-- Module      : Gogol.CloudTasks.Projects.Locations.UpdateCmekConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or Updates a CMEK config. Updates the Customer Managed Encryption Key assotiated with the Cloud Tasks location (Creates if the key does not already exist). All new tasks created in the location will be encrypted at-rest with the KMS-key provided in the config.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.updateCmekConfig@.
module Gogol.CloudTasks.Projects.Locations.UpdateCmekConfig
  ( -- * Resource
    CloudTasksProjectsLocationsUpdateCmekConfigResource,

    -- ** Constructing a Request
    CloudTasksProjectsLocationsUpdateCmekConfig (..),
    newCloudTasksProjectsLocationsUpdateCmekConfig,
  )
where

import Gogol.CloudTasks.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudtasks.projects.locations.updateCmekConfig@ method which the
-- 'CloudTasksProjectsLocationsUpdateCmekConfig' request conforms to.
type CloudTasksProjectsLocationsUpdateCmekConfigResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CmekConfig
    Core.:> Core.Patch '[Core.JSON] CmekConfig

-- | Creates or Updates a CMEK config. Updates the Customer Managed Encryption Key assotiated with the Cloud Tasks location (Creates if the key does not already exist). All new tasks created in the location will be encrypted at-rest with the KMS-key provided in the config.
--
-- /See:/ 'newCloudTasksProjectsLocationsUpdateCmekConfig' smart constructor.
data CloudTasksProjectsLocationsUpdateCmekConfig = CloudTasksProjectsLocationsUpdateCmekConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The config resource name which includes the project and location and must end in \'cmekConfig\', in the format projects\/PROJECT/ID\/locations\/LOCATION/ID\/cmekConfig\`
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CmekConfig,
    -- | List of fields to be updated in this request.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsUpdateCmekConfig' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsUpdateCmekConfig ::
  -- |  Output only. The config resource name which includes the project and location and must end in \'cmekConfig\', in the format projects\/PROJECT/ID\/locations\/LOCATION/ID\/cmekConfig\` See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CmekConfig ->
  CloudTasksProjectsLocationsUpdateCmekConfig
newCloudTasksProjectsLocationsUpdateCmekConfig name payload =
  CloudTasksProjectsLocationsUpdateCmekConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudTasksProjectsLocationsUpdateCmekConfig
  where
  type Rs CloudTasksProjectsLocationsUpdateCmekConfig = CmekConfig
  type
    Scopes CloudTasksProjectsLocationsUpdateCmekConfig =
      '[CloudPlatform'FullControl]
  requestClient CloudTasksProjectsLocationsUpdateCmekConfig {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudTasksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudTasksProjectsLocationsUpdateCmekConfigResource
          )
          Core.mempty
