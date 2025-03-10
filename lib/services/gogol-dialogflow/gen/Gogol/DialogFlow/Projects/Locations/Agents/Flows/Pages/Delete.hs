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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Pages.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified page. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.pages.delete@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Pages.Delete
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsPagesDeleteResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsFlowsPagesDelete (..),
    newDialogFlowProjectsLocationsAgentsFlowsPagesDelete,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.pages.delete@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsPagesDelete' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsPagesDeleteResource =
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

-- | Deletes the specified page. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsPagesDelete' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsPagesDelete = DialogFlowProjectsLocationsAgentsFlowsPagesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This field has no effect for pages with no incoming transitions. For pages with incoming transitions: * If @force@ is set to false, an error will be returned with message indicating the incoming transitions. * If @force@ is set to true, Dialogflow will remove the page, as well as any transitions to the page (i.e. Target page in event handlers or Target page in transition routes that point to this page will be cleared).
    force :: (Core.Maybe Core.Bool),
    -- | Required. The name of the page to delete. Format: @projects\/\/locations\/\/agents\/\/Flows\/\/pages\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsPagesDelete' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsPagesDelete ::
  -- |  Required. The name of the page to delete. Format: @projects\/\/locations\/\/agents\/\/Flows\/\/pages\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsFlowsPagesDelete
newDialogFlowProjectsLocationsAgentsFlowsPagesDelete name =
  DialogFlowProjectsLocationsAgentsFlowsPagesDelete
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
    DialogFlowProjectsLocationsAgentsFlowsPagesDelete
  where
  type
    Rs DialogFlowProjectsLocationsAgentsFlowsPagesDelete =
      GoogleProtobufEmpty
  type
    Scopes DialogFlowProjectsLocationsAgentsFlowsPagesDelete =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsFlowsPagesDelete {..} =
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
                DialogFlowProjectsLocationsAgentsFlowsPagesDeleteResource
          )
          Core.mempty
