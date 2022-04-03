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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Experiment in the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Create
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreateResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate (..),
    newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "experiments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3Experiment
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudDialogflowCxV3Experiment

-- | Creates an Experiment in the specified Environment.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate = DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The Agent to create an Environment for. Format: @projects\/\/locations\/\/agents\/\/environments\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3Experiment,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate ::
  -- |  Required. The Agent to create an Environment for. Format: @projects\/\/locations\/\/agents\/\/environments\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3Experiment ->
  DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate
newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate parent payload =
  DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate =
      GoogleCloudDialogflowCxV3Experiment
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
                  DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsCreateResource
            )
            Core.mempty
