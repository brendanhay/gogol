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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Versions.CompareVersions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Compares the specified base version with target version.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.versions.compareVersions@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Versions.CompareVersions
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersionsResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions,
    DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.versions.compareVersions@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersionsResource =
  "v3"
    Core.:> Core.CaptureMode
              "baseVersion"
              "compareVersions"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3CompareVersionsRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudDialogflowCxV3CompareVersionsResponse

-- | Compares the specified base version with target version.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions = DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. Name of the base flow version to compare with the target version. Use version ID @0@ to indicate the draft version of the specified flow. Format: @projects\/\/locations\/\/agents\/ \/flows\/\/versions\/@.
    baseVersion :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3CompareVersionsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions ::
  -- |  Required. Name of the base flow version to compare with the target version. Use version ID @0@ to indicate the draft version of the specified flow. Format: @projects\/\/locations\/\/agents\/ \/flows\/\/versions\/@. See 'baseVersion'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3CompareVersionsRequest ->
  DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions
newDialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions baseVersion payload =
  DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      baseVersion = baseVersion,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions =
      GoogleCloudDialogflowCxV3CompareVersionsResponse
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersions {..} =
      go
        baseVersion
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
                  DialogFlowProjectsLocationsAgentsFlowsVersionsCompareVersionsResource
            )
            Core.mempty
