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
-- Module      : Network.Google.DialogFlow.Projects.Locations.Agents.Environments.DeployFlow
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploys a flow to the specified Environment. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: DeployFlowMetadata - @response@: DeployFlowResponse
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.deployFlow@.
module Network.Google.DialogFlow.Projects.Locations.Agents.Environments.DeployFlow
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlowResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow,
    DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow,
  )
where

import Network.Google.DialogFlow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.environments.deployFlow@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlowResource =
  "v3"
    Core.:> Core.CaptureMode "environment" "deployFlow" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3DeployFlowRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Deploys a flow to the specified Environment. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: DeployFlowMetadata - @response@: DeployFlowResponse
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow = DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The environment to deploy the flow to. Format: @projects\/\/locations\/\/agents\/\/ environments\/@.
    environment :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3DeployFlowRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow ::
  -- |  Required. The environment to deploy the flow to. Format: @projects\/\/locations\/\/agents\/\/ environments\/@. See 'environment'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3DeployFlowRequest ->
  DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow
newDialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow environment payload =
  DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      environment = environment,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow =
      GoogleLongrunningOperation
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlow {..} =
      go
        environment
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dialogFlowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsEnvironmentsDeployFlowResource
            )
            Core.mempty
