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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Versions.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Version in the specified Flow. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: CreateVersionOperationMetadata - @response@: Version
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.versions.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Versions.Create
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsVersionsCreateResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsVersionsCreate,
    DialogFlowProjectsLocationsAgentsFlowsVersionsCreate,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.versions.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsVersionsCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsVersionsCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "versions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3Version
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates a Version in the specified Flow. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: CreateVersionOperationMetadata - @response@: Version
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsVersionsCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsVersionsCreate = DialogFlowProjectsLocationsAgentsFlowsVersionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The Flow to create an Version for. Format: @projects\/\/locations\/\/agents\/\/flows\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3Version,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsVersionsCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsVersionsCreate ::
  -- |  Required. The Flow to create an Version for. Format: @projects\/\/locations\/\/agents\/\/flows\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3Version ->
  DialogFlowProjectsLocationsAgentsFlowsVersionsCreate
newDialogFlowProjectsLocationsAgentsFlowsVersionsCreate parent payload =
  DialogFlowProjectsLocationsAgentsFlowsVersionsCreate
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
    DialogFlowProjectsLocationsAgentsFlowsVersionsCreate
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsFlowsVersionsCreate =
      GoogleLongrunningOperation
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsVersionsCreate =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsVersionsCreate {..} =
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
                  DialogFlowProjectsLocationsAgentsFlowsVersionsCreateResource
            )
            Core.mempty
