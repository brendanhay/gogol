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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TransitionRouteGroup. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.delete@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Delete
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDeleteResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete,
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.delete@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDeleteResource =
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

-- | Deletes the specified TransitionRouteGroup. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete = DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This field has no effect for transition route group that no page is using. If the transition route group is referenced by any page: * If @force@ is set to false, an error will be returned with message indicating pages that reference the transition route group. * If @force@ is set to true, Dialogflow will remove the transition route group, as well as any reference to it.
    force :: (Core.Maybe Core.Bool),
    -- | Required. The name of the TransitionRouteGroup to delete. Format: @projects\/\/locations\/\/agents\/\/flows\/\/transitionRouteGroups\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete ::
  -- |  Required. The name of the TransitionRouteGroup to delete. Format: @projects\/\/locations\/\/agents\/\/flows\/\/transitionRouteGroups\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete
newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete name =
  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      force = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete =
      GoogleProtobufEmpty
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDelete {..} =
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
                  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsDeleteResource
            )
            Core.mempty
