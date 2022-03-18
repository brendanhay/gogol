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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.Deployments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all deployments in the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.deployments.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.Deployments.List
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsListResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList,
    DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.environments.deployments.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "deployments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ListDeploymentsResponse

-- | Returns the list of all deployments in the specified Environment.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList = DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return in a single page. By default 20 and at most 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The Environment to list all environments for. Format: @projects\/\/locations\/\/agents\/\/environments\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList ::
  -- |  Required. The Environment to list all environments for. Format: @projects\/\/locations\/\/agents\/\/environments\/@. See 'parent'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList
newDialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList parent =
  DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList =
      GoogleCloudDialogflowCxV3ListDeploymentsResponse
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dialogFlowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsEnvironmentsDeploymentsListResource
            )
            Core.mempty
