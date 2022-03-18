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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all environments in the specified Agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.List
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsEnvironmentsListResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsEnvironmentsList
    , DialogFlowProjectsLocationsAgentsEnvironmentsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.environments.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsList' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsListResource
     =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "environments" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON]
                             GoogleCloudDialogflowCxV3ListEnvironmentsResponse

-- | Returns the list of all environments in the specified Agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsList' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsList = DialogFlowProjectsLocationsAgentsEnvironmentsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of items to return in a single page. By default 20 and at most 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The next/page/token value returned from a previous list request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The Agent to list all environments for. Format: @projects\/\/locations\/\/agents\/@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsList 
    ::  Core.Text
       -- ^  Required. The Agent to list all environments for. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
    -> DialogFlowProjectsLocationsAgentsEnvironmentsList
newDialogFlowProjectsLocationsAgentsEnvironmentsList parent =
  DialogFlowProjectsLocationsAgentsEnvironmentsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsEnvironmentsList
         where
        type Rs
               DialogFlowProjectsLocationsAgentsEnvironmentsList
             = GoogleCloudDialogflowCxV3ListEnvironmentsResponse
        type Scopes
               DialogFlowProjectsLocationsAgentsEnvironmentsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsEnvironmentsList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsEnvironmentsListResource)
                      Core.mempty

