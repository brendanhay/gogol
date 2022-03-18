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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Changelogs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Changelog.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.changelogs.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Changelogs.Get
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsChangelogsGetResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsChangelogsGet
    , DialogFlowProjectsLocationsAgentsChangelogsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.changelogs.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsChangelogsGet' request conforms to.
type DialogFlowProjectsLocationsAgentsChangelogsGetResource
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
                       GoogleCloudDialogflowCxV3Changelog

-- | Retrieves the specified Changelog.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsChangelogsGet' smart constructor.
data DialogFlowProjectsLocationsAgentsChangelogsGet = DialogFlowProjectsLocationsAgentsChangelogsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the changelog to get. Format: @projects\/\/locations\/\/agents\/\/changelogs\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsChangelogsGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsChangelogsGet 
    ::  Core.Text
       -- ^  Required. The name of the changelog to get. Format: @projects\/\/locations\/\/agents\/\/changelogs\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsChangelogsGet
newDialogFlowProjectsLocationsAgentsChangelogsGet name =
  DialogFlowProjectsLocationsAgentsChangelogsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsChangelogsGet
         where
        type Rs
               DialogFlowProjectsLocationsAgentsChangelogsGet
             = GoogleCloudDialogflowCxV3Changelog
        type Scopes
               DialogFlowProjectsLocationsAgentsChangelogsGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsChangelogsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsChangelogsGetResource)
                      Core.mempty

