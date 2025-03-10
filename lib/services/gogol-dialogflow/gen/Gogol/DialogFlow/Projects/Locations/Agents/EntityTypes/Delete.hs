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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified entity type. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.delete@.
module Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.Delete
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEntityTypesDeleteResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsEntityTypesDelete (..),
    newDialogFlowProjectsLocationsAgentsEntityTypesDelete,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.delete@ method which the
-- 'DialogFlowProjectsLocationsAgentsEntityTypesDelete' request conforms to.
type DialogFlowProjectsLocationsAgentsEntityTypesDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "force" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes the specified entity type. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEntityTypesDelete' smart constructor.
data DialogFlowProjectsLocationsAgentsEntityTypesDelete = DialogFlowProjectsLocationsAgentsEntityTypesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This field has no effect for entity type not being used. For entity types that are used by intents or pages: * If @force@ is set to false, an error will be returned with message indicating the referencing resources. * If @force@ is set to true, Dialogflow will remove the entity type, as well as any references to the entity type (i.e. Page parameter of the entity type will be changed to \'\@sys.any\' and intent parameter of the entity type will be removed).
    force :: (Core.Maybe Core.Bool),
    -- | Required. The name of the entity type to delete. Format: @projects\/\/locations\/\/agents\/\/entityTypes\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEntityTypesDelete' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEntityTypesDelete ::
  -- |  Required. The name of the entity type to delete. Format: @projects\/\/locations\/\/agents\/\/entityTypes\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsEntityTypesDelete
newDialogFlowProjectsLocationsAgentsEntityTypesDelete name =
  DialogFlowProjectsLocationsAgentsEntityTypesDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      force = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsEntityTypesDelete
  where
  type
    Rs DialogFlowProjectsLocationsAgentsEntityTypesDelete =
      GoogleProtobufEmpty
  type
    Scopes DialogFlowProjectsLocationsAgentsEntityTypesDelete =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsEntityTypesDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        force
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dialogFlowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsEntityTypesDeleteResource
            )
            Core.mempty
