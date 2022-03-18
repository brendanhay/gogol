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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Environment in the specified Agent. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: An empty <https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct Struct message> - @response@: Environment
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.Create
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEnvironmentsCreateResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsEnvironmentsCreate,
    DialogFlowProjectsLocationsAgentsEnvironmentsCreate,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.environments.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "environments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3Environment
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates an Environment in the specified Agent. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: An empty <https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct Struct message> - @response@: Environment
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsCreate = DialogFlowProjectsLocationsAgentsEnvironmentsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The Agent to create an Environment for. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3Environment,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsCreate ::
  -- |  Required. The Agent to create an Environment for. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3Environment ->
  DialogFlowProjectsLocationsAgentsEnvironmentsCreate
newDialogFlowProjectsLocationsAgentsEnvironmentsCreate parent payload =
  DialogFlowProjectsLocationsAgentsEnvironmentsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsEnvironmentsCreate
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsEnvironmentsCreate =
      GoogleLongrunningOperation
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEnvironmentsCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsEnvironmentsCreate {..} =
      go
        parent
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
                  DialogFlowProjectsLocationsAgentsEnvironmentsCreateResource
            )
            Core.mempty
