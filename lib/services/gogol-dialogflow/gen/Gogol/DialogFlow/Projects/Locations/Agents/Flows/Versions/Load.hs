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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Versions.Load
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Loads resources in the specified version to the draft flow. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: An empty <https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct Struct message> - @response@: An <https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty Empty message>
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.versions.load@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Versions.Load
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsFlowsVersionsLoadResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsFlowsVersionsLoad (..)
    , newDialogFlowProjectsLocationsAgentsFlowsVersionsLoad
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.flows.versions.load@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsVersionsLoad' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsVersionsLoadResource
     =
     "v3" Core.:>
       Core.CaptureMode "name" "load" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleCloudDialogflowCxV3LoadVersionRequest
                       Core.:>
                       Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Loads resources in the specified version to the draft flow. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: An empty <https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct Struct message> - @response@: An <https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty Empty message>
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsVersionsLoad' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsVersionsLoad = DialogFlowProjectsLocationsAgentsFlowsVersionsLoad
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The Version to be loaded to draft flow. Format: @projects\/\/locations\/\/agents\/\/flows\/\/versions\/@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3LoadVersionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsVersionsLoad' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsVersionsLoad 
    ::  Core.Text
       -- ^  Required. The Version to be loaded to draft flow. Format: @projects\/\/locations\/\/agents\/\/flows\/\/versions\/@. See 'name'.
    -> GoogleCloudDialogflowCxV3LoadVersionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsFlowsVersionsLoad
newDialogFlowProjectsLocationsAgentsFlowsVersionsLoad name payload =
  DialogFlowProjectsLocationsAgentsFlowsVersionsLoad
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsFlowsVersionsLoad
         where
        type Rs
               DialogFlowProjectsLocationsAgentsFlowsVersionsLoad
             = GoogleLongrunningOperation
        type Scopes
               DialogFlowProjectsLocationsAgentsFlowsVersionsLoad
             =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsFlowsVersionsLoad{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsFlowsVersionsLoadResource)
                      Core.mempty

