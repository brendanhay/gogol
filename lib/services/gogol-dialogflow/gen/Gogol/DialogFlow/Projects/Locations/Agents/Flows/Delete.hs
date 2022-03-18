{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.delete@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Delete
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsFlowsDeleteResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsFlowsDelete
    , DialogFlowProjectsLocationsAgentsFlowsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.flows.delete@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsDelete' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsDeleteResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "force" Core.Bool Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes a specified flow.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsDelete' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsDelete = DialogFlowProjectsLocationsAgentsFlowsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | This field has no effect for flows with no incoming transitions. For flows with incoming transitions: * If @force@ is set to false, an error will be returned with message indicating the incoming transitions. * If @force@ is set to true, Dialogflow will remove the flow, as well as any transitions to the flow (i.e. Target flow in event handlers or Target flow in transition routes that point to this flow will be cleared).
    , force :: (Core.Maybe Core.Bool)
      -- | Required. The name of the flow to delete. Format: @projects\/\/locations\/\/agents\/\/flows\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsDelete' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsDelete 
    ::  Core.Text
       -- ^  Required. The name of the flow to delete. Format: @projects\/\/locations\/\/agents\/\/flows\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsFlowsDelete
newDialogFlowProjectsLocationsAgentsFlowsDelete name =
  DialogFlowProjectsLocationsAgentsFlowsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , force = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsFlowsDelete
         where
        type Rs DialogFlowProjectsLocationsAgentsFlowsDelete
             = GoogleProtobufEmpty
        type Scopes
               DialogFlowProjectsLocationsAgentsFlowsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsFlowsDelete{..}
          = go name xgafv accessToken callback force uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsFlowsDeleteResource)
                      Core.mempty

