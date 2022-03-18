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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a test case.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Get
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsTestCasesGetResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsTestCasesGet
    , DialogFlowProjectsLocationsAgentsTestCasesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsTestCasesGet' request conforms to.
type DialogFlowProjectsLocationsAgentsTestCasesGetResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       GoogleCloudDialogflowCxV3TestCase

-- | Gets a test case.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsTestCasesGet' smart constructor.
data DialogFlowProjectsLocationsAgentsTestCasesGet = DialogFlowProjectsLocationsAgentsTestCasesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the testcase. Format: @projects\/\/locations\/\/agents\/\/testCases\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsTestCasesGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsTestCasesGet 
    ::  Core.Text
       -- ^  Required. The name of the testcase. Format: @projects\/\/locations\/\/agents\/\/testCases\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsTestCasesGet
newDialogFlowProjectsLocationsAgentsTestCasesGet name =
  DialogFlowProjectsLocationsAgentsTestCasesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsTestCasesGet
         where
        type Rs DialogFlowProjectsLocationsAgentsTestCasesGet
             = GoogleCloudDialogflowCxV3TestCase
        type Scopes
               DialogFlowProjectsLocationsAgentsTestCasesGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsTestCasesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsTestCasesGetResource)
                      Core.mempty

