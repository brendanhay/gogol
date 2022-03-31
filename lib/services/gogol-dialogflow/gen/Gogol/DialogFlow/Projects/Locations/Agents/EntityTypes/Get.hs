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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.Get
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEntityTypesGetResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsEntityTypesGet,
    DialogFlowProjectsLocationsAgentsEntityTypesGet,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsEntityTypesGet' request conforms to.
type DialogFlowProjectsLocationsAgentsEntityTypesGetResource =
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
              GoogleCloudDialogflowCxV3EntityType

-- | Retrieves the specified entity type.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEntityTypesGet' smart constructor.
data DialogFlowProjectsLocationsAgentsEntityTypesGet = DialogFlowProjectsLocationsAgentsEntityTypesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language to retrieve the entity type for. The following fields are language dependent: * @EntityType.entities.value@ * @EntityType.entities.synonyms@ * @EntityType.excluded_phrases.value@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The name of the entity type. Format: @projects\/\/locations\/\/agents\/\/entityTypes\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEntityTypesGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEntityTypesGet ::
  -- |  Required. The name of the entity type. Format: @projects\/\/locations\/\/agents\/\/entityTypes\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsEntityTypesGet
newDialogFlowProjectsLocationsAgentsEntityTypesGet name =
  DialogFlowProjectsLocationsAgentsEntityTypesGet
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
    DialogFlowProjectsLocationsAgentsEntityTypesGet
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsEntityTypesGet =
      GoogleCloudDialogflowCxV3EntityType
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEntityTypesGet =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsEntityTypesGet {..} =
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
                  DialogFlowProjectsLocationsAgentsEntityTypesGetResource
            )
            Core.mempty
