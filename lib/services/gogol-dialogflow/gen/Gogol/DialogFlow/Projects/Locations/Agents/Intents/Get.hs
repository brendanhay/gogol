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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Intents.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified intent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.intents.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Intents.Get
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsIntentsGetResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsIntentsGet
    , DialogFlowProjectsLocationsAgentsIntentsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.intents.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsIntentsGet' request conforms to.
type DialogFlowProjectsLocationsAgentsIntentsGetResource
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
                       Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3Intent

-- | Retrieves the specified intent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsIntentsGet' smart constructor.
data DialogFlowProjectsLocationsAgentsIntentsGet = DialogFlowProjectsLocationsAgentsIntentsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The language to retrieve the intent for. The following fields are language dependent: * @Intent.training_phrases.parts.text@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Required. The name of the intent. Format: @projects\/\/locations\/\/agents\/\/intents\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsIntentsGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsIntentsGet 
    ::  Core.Text
       -- ^  Required. The name of the intent. Format: @projects\/\/locations\/\/agents\/\/intents\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsIntentsGet
newDialogFlowProjectsLocationsAgentsIntentsGet name =
  DialogFlowProjectsLocationsAgentsIntentsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , languageCode = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsIntentsGet
         where
        type Rs DialogFlowProjectsLocationsAgentsIntentsGet =
             GoogleCloudDialogflowCxV3Intent
        type Scopes
               DialogFlowProjectsLocationsAgentsIntentsGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsIntentsGet{..}
          = go name xgafv accessToken callback languageCode
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsIntentsGetResource)
                      Core.mempty

