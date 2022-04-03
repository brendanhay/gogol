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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified test case.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.patch@.
module Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Patch
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsTestCasesPatchResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsTestCasesPatch (..),
    newDialogFlowProjectsLocationsAgentsTestCasesPatch,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.patch@ method which the
-- 'DialogFlowProjectsLocationsAgentsTestCasesPatch' request conforms to.
type DialogFlowProjectsLocationsAgentsTestCasesPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3TestCase
    Core.:> Core.Patch
              '[Core.JSON]
              GoogleCloudDialogflowCxV3TestCase

-- | Updates the specified test case.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsTestCasesPatch' smart constructor.
data DialogFlowProjectsLocationsAgentsTestCasesPatch = DialogFlowProjectsLocationsAgentsTestCasesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: @projects\/\/locations\/\/agents\/ \/testCases\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3TestCase,
    -- | Required. The mask to specify which fields should be updated. The @creationTime@ and @lastTestResult@ cannot be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsTestCasesPatch' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsTestCasesPatch ::
  -- |  The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: @projects\/\/locations\/\/agents\/ \/testCases\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3TestCase ->
  DialogFlowProjectsLocationsAgentsTestCasesPatch
newDialogFlowProjectsLocationsAgentsTestCasesPatch name payload =
  DialogFlowProjectsLocationsAgentsTestCasesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsTestCasesPatch
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsTestCasesPatch =
      GoogleCloudDialogflowCxV3TestCase
  type
    Scopes
      DialogFlowProjectsLocationsAgentsTestCasesPatch =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsTestCasesPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  DialogFlowProjectsLocationsAgentsTestCasesPatchResource
            )
            Core.mempty
