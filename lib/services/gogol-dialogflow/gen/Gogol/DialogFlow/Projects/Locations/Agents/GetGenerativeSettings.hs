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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.GetGenerativeSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the generative settings for the agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.getGenerativeSettings@.
module Gogol.DialogFlow.Projects.Locations.Agents.GetGenerativeSettings
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsGetGenerativeSettingsResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsGetGenerativeSettings (..),
    newDialogFlowProjectsLocationsAgentsGetGenerativeSettings,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.getGenerativeSettings@ method which the
-- 'DialogFlowProjectsLocationsAgentsGetGenerativeSettings' request conforms to.
type DialogFlowProjectsLocationsAgentsGetGenerativeSettingsResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3GenerativeSettings

-- | Gets the generative settings for the agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsGetGenerativeSettings' smart constructor.
data DialogFlowProjectsLocationsAgentsGetGenerativeSettings = DialogFlowProjectsLocationsAgentsGetGenerativeSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Language code of the generative settings.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. Format: @projects\/\/locations\/\/agents\/\/generativeSettings@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsGetGenerativeSettings' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsGetGenerativeSettings ::
  -- |  Required. Format: @projects\/\/locations\/\/agents\/\/generativeSettings@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsGetGenerativeSettings
newDialogFlowProjectsLocationsAgentsGetGenerativeSettings name =
  DialogFlowProjectsLocationsAgentsGetGenerativeSettings
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsGetGenerativeSettings
  where
  type
    Rs DialogFlowProjectsLocationsAgentsGetGenerativeSettings =
      GoogleCloudDialogflowCxV3GenerativeSettings
  type
    Scopes DialogFlowProjectsLocationsAgentsGetGenerativeSettings =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsGetGenerativeSettings {..} =
      go
        name
        xgafv
        accessToken
        callback
        languageCode
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dialogFlowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsGetGenerativeSettingsResource
            )
            Core.mempty
