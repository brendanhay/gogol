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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.RunContinuousTest
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Kicks off a continuous test under the specified Environment. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: RunContinuousTestMetadata - @response@: RunContinuousTestResponse
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.runContinuousTest@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.RunContinuousTest
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTestResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest (..),
    newDialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.environments.runContinuousTest@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTestResource =
  "v3"
    Core.:> Core.CaptureMode
              "environment"
              "runContinuousTest"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3RunContinuousTestRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Kicks off a continuous test under the specified Environment. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: RunContinuousTestMetadata - @response@: RunContinuousTestResponse
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest = DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Format: @projects\/\/locations\/\/agents\/\/environments\/@.
    environment :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3RunContinuousTestRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest ::
  -- |  Required. Format: @projects\/\/locations\/\/agents\/\/environments\/@. See 'environment'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3RunContinuousTestRequest ->
  DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest
newDialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest environment payload =
  DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest
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
    DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest =
      GoogleLongrunningOperation
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTest {..} =
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
                  DialogFlowProjectsLocationsAgentsEnvironmentsRunContinuousTestResource
            )
            Core.mempty
