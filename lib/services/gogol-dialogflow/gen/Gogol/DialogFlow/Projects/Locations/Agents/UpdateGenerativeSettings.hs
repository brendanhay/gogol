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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.UpdateGenerativeSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the generative settings for the agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.updateGenerativeSettings@.
module Gogol.DialogFlow.Projects.Locations.Agents.UpdateGenerativeSettings
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsUpdateGenerativeSettingsResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings (..)
    , newDialogFlowProjectsLocationsAgentsUpdateGenerativeSettings
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.updateGenerativeSettings@ method which the
-- 'DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings' request conforms to.
type DialogFlowProjectsLocationsAgentsUpdateGenerativeSettingsResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GoogleCloudDialogflowCxV3GenerativeSettings
                         Core.:>
                         Core.Patch '[Core.JSON]
                           GoogleCloudDialogflowCxV3GenerativeSettings

-- | Updates the generative settings for the agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsUpdateGenerativeSettings' smart constructor.
data DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings = DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Format: @projects\/\/locations\/\/agents\/\/generativeSettings@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3GenerativeSettings
      -- | Optional. The mask to control which fields get updated. If the mask is not present, all fields will be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsUpdateGenerativeSettings 
    ::  Core.Text
       -- ^  Format: @projects\/\/locations\/\/agents\/\/generativeSettings@. See 'name'.
    -> GoogleCloudDialogflowCxV3GenerativeSettings
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings
newDialogFlowProjectsLocationsAgentsUpdateGenerativeSettings name payload =
  DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings
         where
        type Rs
               DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings
             = GoogleCloudDialogflowCxV3GenerativeSettings
        type Scopes
               DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings
             =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsUpdateGenerativeSettings{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsUpdateGenerativeSettingsResource)
                      Core.mempty

