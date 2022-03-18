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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Versions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all versions in the specified Flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.versions.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Versions.List
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsFlowsVersionsListResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsFlowsVersionsList
    , DialogFlowProjectsLocationsAgentsFlowsVersionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.flows.versions.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsVersionsList' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsVersionsListResource
     =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "versions" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON]
                             GoogleCloudDialogflowCxV3ListVersionsResponse

-- | Returns the list of all versions in the specified Flow.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsVersionsList' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsVersionsList = DialogFlowProjectsLocationsAgentsFlowsVersionsList
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
      -- | Required. The Flow to list all versions for. Format: @projects\/\/locations\/\/agents\/\/flows\/@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsVersionsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsVersionsList 
    ::  Core.Text
       -- ^  Required. The Flow to list all versions for. Format: @projects\/\/locations\/\/agents\/\/flows\/@. See 'parent'.
    -> DialogFlowProjectsLocationsAgentsFlowsVersionsList
newDialogFlowProjectsLocationsAgentsFlowsVersionsList parent =
  DialogFlowProjectsLocationsAgentsFlowsVersionsList
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
           DialogFlowProjectsLocationsAgentsFlowsVersionsList
         where
        type Rs
               DialogFlowProjectsLocationsAgentsFlowsVersionsList
             = GoogleCloudDialogflowCxV3ListVersionsResponse
        type Scopes
               DialogFlowProjectsLocationsAgentsFlowsVersionsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsFlowsVersionsList{..}
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
                           DialogFlowProjectsLocationsAgentsFlowsVersionsListResource)
                      Core.mempty

