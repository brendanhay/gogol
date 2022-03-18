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
-- Module      : Network.Google.DialogFlow.Projects.Locations.Agents.Flows.GetValidationResult
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest flow validation result. Flow validation is performed when ValidateFlow is called.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.getValidationResult@.
module Network.Google.DialogFlow.Projects.Locations.Agents.Flows.GetValidationResult
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsGetValidationResultResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsGetValidationResult,
    DialogFlowProjectsLocationsAgentsFlowsGetValidationResult,
  )
where

import Network.Google.DialogFlow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.getValidationResult@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsGetValidationResult' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsGetValidationResultResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudDialogflowCxV3FlowValidationResult

-- | Gets the latest flow validation result. Flow validation is performed when ValidateFlow is called.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsGetValidationResult' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsGetValidationResult = DialogFlowProjectsLocationsAgentsFlowsGetValidationResult
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If not specified, the agent\'s default language is used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The flow name. Format: @projects\/\/locations\/\/agents\/\/flows\/\/validationResult@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsGetValidationResult' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsGetValidationResult ::
  -- |  Required. The flow name. Format: @projects\/\/locations\/\/agents\/\/flows\/\/validationResult@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsFlowsGetValidationResult
newDialogFlowProjectsLocationsAgentsFlowsGetValidationResult name =
  DialogFlowProjectsLocationsAgentsFlowsGetValidationResult
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsFlowsGetValidationResult
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsFlowsGetValidationResult =
      GoogleCloudDialogflowCxV3FlowValidationResult
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsGetValidationResult =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsGetValidationResult {..} =
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
                  DialogFlowProjectsLocationsAgentsFlowsGetValidationResultResource
            )
            Core.mempty
