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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Generators.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified generator.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.generators.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Generators.Get
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsGeneratorsGetResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsGeneratorsGet (..),
    newDialogFlowProjectsLocationsAgentsGeneratorsGet,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.generators.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsGeneratorsGet' request conforms to.
type DialogFlowProjectsLocationsAgentsGeneratorsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3Generator

-- | Retrieves the specified generator.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsGeneratorsGet' smart constructor.
data DialogFlowProjectsLocationsAgentsGeneratorsGet = DialogFlowProjectsLocationsAgentsGeneratorsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language to list generators for.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The name of the generator. Format: @projects\/\/locations\/\/agents\/\/generators\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsGeneratorsGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsGeneratorsGet ::
  -- |  Required. The name of the generator. Format: @projects\/\/locations\/\/agents\/\/generators\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsGeneratorsGet
newDialogFlowProjectsLocationsAgentsGeneratorsGet name =
  DialogFlowProjectsLocationsAgentsGeneratorsGet
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
    DialogFlowProjectsLocationsAgentsGeneratorsGet
  where
  type
    Rs DialogFlowProjectsLocationsAgentsGeneratorsGet =
      GoogleCloudDialogflowCxV3Generator
  type
    Scopes DialogFlowProjectsLocationsAgentsGeneratorsGet =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsGeneratorsGet {..} =
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
              Core.Proxy DialogFlowProjectsLocationsAgentsGeneratorsGetResource
          )
          Core.mempty
