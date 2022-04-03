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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Validate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates the specified flow and creates or updates validation results. Please call this API after the training is completed to get the complete validation results.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.validate@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Validate
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsValidateResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsFlowsValidate (..),
    newDialogFlowProjectsLocationsAgentsFlowsValidate,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.validate@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsValidate' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsValidateResource =
  "v3"
    Core.:> Core.CaptureMode "name" "validate" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ValidateFlowRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudDialogflowCxV3FlowValidationResult

-- | Validates the specified flow and creates or updates validation results. Please call this API after the training is completed to get the complete validation results.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsValidate' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsValidate = DialogFlowProjectsLocationsAgentsFlowsValidate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The flow to validate. Format: @projects\/\/locations\/\/agents\/\/flows\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3ValidateFlowRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsValidate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsValidate ::
  -- |  Required. The flow to validate. Format: @projects\/\/locations\/\/agents\/\/flows\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3ValidateFlowRequest ->
  DialogFlowProjectsLocationsAgentsFlowsValidate
newDialogFlowProjectsLocationsAgentsFlowsValidate name payload =
  DialogFlowProjectsLocationsAgentsFlowsValidate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsFlowsValidate
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsFlowsValidate =
      GoogleCloudDialogflowCxV3FlowValidationResult
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsValidate =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsValidate {..} =
      go
        name
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
                  DialogFlowProjectsLocationsAgentsFlowsValidateResource
            )
            Core.mempty
