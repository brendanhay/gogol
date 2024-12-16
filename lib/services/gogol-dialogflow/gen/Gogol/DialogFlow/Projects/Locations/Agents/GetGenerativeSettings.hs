{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.GetGenerativeSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the generative settings for the agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.getGenerativeSettings@.
module Gogol.DialogFlow.Projects.Locations.Agents.GetGenerativeSettings
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsGetGenerativeSettingsResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsGetGenerativeSettings (..)
    , newDialogFlowProjectsLocationsAgentsGetGenerativeSettings
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.getGenerativeSettings@ method which the
-- 'DialogFlowProjectsLocationsAgentsGetGenerativeSettings' request conforms to.
type DialogFlowProjectsLocationsAgentsGetGenerativeSettingsResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "languageCode" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON]
                         GoogleCloudDialogflowCxV3GenerativeSettings

-- | Gets the generative settings for the agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsGetGenerativeSettings' smart constructor.
data DialogFlowProjectsLocationsAgentsGetGenerativeSettings = DialogFlowProjectsLocationsAgentsGetGenerativeSettings
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Language code of the generative settings.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Required. Format: @projects\/\/locations\/\/agents\/\/generativeSettings@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsGetGenerativeSettings' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsGetGenerativeSettings 
    ::  Core.Text
       -- ^  Required. Format: @projects\/\/locations\/\/agents\/\/generativeSettings@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsGetGenerativeSettings
newDialogFlowProjectsLocationsAgentsGetGenerativeSettings name =
  DialogFlowProjectsLocationsAgentsGetGenerativeSettings
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , languageCode = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsGetGenerativeSettings
         where
        type Rs
               DialogFlowProjectsLocationsAgentsGetGenerativeSettings
             = GoogleCloudDialogflowCxV3GenerativeSettings
        type Scopes
               DialogFlowProjectsLocationsAgentsGetGenerativeSettings
             =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsGetGenerativeSettings{..}
          = go name xgafv accessToken callback languageCode
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsGetGenerativeSettingsResource)
                      Core.mempty

