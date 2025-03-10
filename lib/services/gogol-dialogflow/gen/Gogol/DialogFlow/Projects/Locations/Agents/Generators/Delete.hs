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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Generators.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified generators.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.generators.delete@.
module Gogol.DialogFlow.Projects.Locations.Agents.Generators.Delete
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsGeneratorsDeleteResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsGeneratorsDelete (..),
    newDialogFlowProjectsLocationsAgentsGeneratorsDelete,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.generators.delete@ method which the
-- 'DialogFlowProjectsLocationsAgentsGeneratorsDelete' request conforms to.
type DialogFlowProjectsLocationsAgentsGeneratorsDeleteResource =
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

-- | Deletes the specified generators.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsGeneratorsDelete' smart constructor.
data DialogFlowProjectsLocationsAgentsGeneratorsDelete = DialogFlowProjectsLocationsAgentsGeneratorsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This field has no effect for generators not being used. For generators that are used by pages\/flows\/transition route groups: * If @force@ is set to false, an error will be returned with message indicating the referenced resources. * If @force@ is set to true, Dialogflow will remove the generator, as well as any references to the generator (i.e. Generator) in fulfillments.
    force :: (Core.Maybe Core.Bool),
    -- | Required. The name of the generator to delete. Format: @projects\/\/locations\/\/agents\/\/generators\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsGeneratorsDelete' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsGeneratorsDelete ::
  -- |  Required. The name of the generator to delete. Format: @projects\/\/locations\/\/agents\/\/generators\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsGeneratorsDelete
newDialogFlowProjectsLocationsAgentsGeneratorsDelete name =
  DialogFlowProjectsLocationsAgentsGeneratorsDelete
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
    DialogFlowProjectsLocationsAgentsGeneratorsDelete
  where
  type
    Rs DialogFlowProjectsLocationsAgentsGeneratorsDelete =
      GoogleProtobufEmpty
  type
    Scopes DialogFlowProjectsLocationsAgentsGeneratorsDelete =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsGeneratorsDelete {..} =
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
                DialogFlowProjectsLocationsAgentsGeneratorsDeleteResource
          )
          Core.mempty
