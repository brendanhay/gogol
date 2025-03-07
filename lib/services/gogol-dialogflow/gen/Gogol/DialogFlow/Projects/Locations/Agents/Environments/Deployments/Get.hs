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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.Deployments.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Deployment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.deployments.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.Deployments.Get
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGetResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet (..),
    newDialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.environments.deployments.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3Deployment

-- | Retrieves the specified Deployment.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet = DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the Deployment. Format: @projects\/\/locations\/\/agents\/\/environments\/\/deployments\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet ::
  -- |  Required. The name of the Deployment. Format: @projects\/\/locations\/\/agents\/\/environments\/\/deployments\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet
newDialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet name =
  DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet
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
    DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet
  where
  type
    Rs DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet =
      GoogleCloudDialogflowCxV3Deployment
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGet {..} =
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
                  DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsGetResource
            )
            Core.mempty
