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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.Get
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEnvironmentsGetResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsEnvironmentsGet (..),
    newDialogFlowProjectsLocationsAgentsEnvironmentsGet,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.environments.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsGet' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3Environment

-- | Retrieves the specified Environment.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsGet' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsGet = DialogFlowProjectsLocationsAgentsEnvironmentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the Environment. Format: @projects\/\/locations\/\/agents\/\/environments\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsGet ::
  -- |  Required. The name of the Environment. Format: @projects\/\/locations\/\/agents\/\/environments\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsEnvironmentsGet
newDialogFlowProjectsLocationsAgentsEnvironmentsGet name =
  DialogFlowProjectsLocationsAgentsEnvironmentsGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsEnvironmentsGet
  where
  type
    Rs DialogFlowProjectsLocationsAgentsEnvironmentsGet =
      GoogleCloudDialogflowCxV3Environment
  type
    Scopes DialogFlowProjectsLocationsAgentsEnvironmentsGet =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsEnvironmentsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dialogFlowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                DialogFlowProjectsLocationsAgentsEnvironmentsGetResource
          )
          Core.mempty
