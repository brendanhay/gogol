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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified entity type. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.patch@.
module Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.Patch
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEntityTypesPatchResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsEntityTypesPatch,
    DialogFlowProjectsLocationsAgentsEntityTypesPatch,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.patch@ method which the
-- 'DialogFlowProjectsLocationsAgentsEntityTypesPatch' request conforms to.
type DialogFlowProjectsLocationsAgentsEntityTypesPatchResource =
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
              GoogleCloudDialogflowCxV3EntityType
    Core.:> Core.Patch
              '[Core.JSON]
              GoogleCloudDialogflowCxV3EntityType

-- | Updates the specified entity type. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEntityTypesPatch' smart constructor.
data DialogFlowProjectsLocationsAgentsEntityTypesPatch = DialogFlowProjectsLocationsAgentsEntityTypesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language of the following fields in @entity_type@: * @EntityType.entities.value@ * @EntityType.entities.synonyms@ * @EntityType.excluded_phrases.value@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: @projects\/\/locations\/\/agents\/\/entityTypes\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3EntityType,
    -- | The mask to control which fields get updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEntityTypesPatch' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEntityTypesPatch ::
  -- |  The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: @projects\/\/locations\/\/agents\/\/entityTypes\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3EntityType ->
  DialogFlowProjectsLocationsAgentsEntityTypesPatch
newDialogFlowProjectsLocationsAgentsEntityTypesPatch name payload =
  DialogFlowProjectsLocationsAgentsEntityTypesPatch
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
    DialogFlowProjectsLocationsAgentsEntityTypesPatch
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsEntityTypesPatch =
      GoogleCloudDialogflowCxV3EntityType
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEntityTypesPatch =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsEntityTypesPatch {..} =
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
                  DialogFlowProjectsLocationsAgentsEntityTypesPatchResource
            )
            Core.mempty
