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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Intents.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified intent. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.intents.patch@.
module Gogol.DialogFlow.Projects.Locations.Agents.Intents.Patch
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsIntentsPatchResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsIntentsPatch,
    DialogFlowProjectsLocationsAgentsIntentsPatch,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.intents.patch@ method which the
-- 'DialogFlowProjectsLocationsAgentsIntentsPatch' request conforms to.
type DialogFlowProjectsLocationsAgentsIntentsPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3Intent
    Core.:> Core.Patch
              '[Core.JSON]
              GoogleCloudDialogflowCxV3Intent

-- | Updates the specified intent. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsIntentsPatch' smart constructor.
data DialogFlowProjectsLocationsAgentsIntentsPatch = DialogFlowProjectsLocationsAgentsIntentsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language of the following fields in @intent@: * @Intent.training_phrases.parts.text@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: @projects\/\/locations\/\/agents\/\/intents\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3Intent,
    -- | The mask to control which fields get updated. If the mask is not present, all fields will be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsIntentsPatch' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsIntentsPatch ::
  -- |  The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: @projects\/\/locations\/\/agents\/\/intents\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3Intent ->
  DialogFlowProjectsLocationsAgentsIntentsPatch
newDialogFlowProjectsLocationsAgentsIntentsPatch name payload =
  DialogFlowProjectsLocationsAgentsIntentsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsIntentsPatch
  where
  type
    Rs DialogFlowProjectsLocationsAgentsIntentsPatch =
      GoogleCloudDialogflowCxV3Intent
  type
    Scopes
      DialogFlowProjectsLocationsAgentsIntentsPatch =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsIntentsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        languageCode
        updateMask
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
                  DialogFlowProjectsLocationsAgentsIntentsPatchResource
            )
            Core.mempty
