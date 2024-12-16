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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.Export
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the selected entity types.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.export@.
module Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.Export
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsEntityTypesExportResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsEntityTypesExport (..)
    , newDialogFlowProjectsLocationsAgentsEntityTypesExport
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.export@ method which the
-- 'DialogFlowProjectsLocationsAgentsEntityTypesExport' request conforms to.
type DialogFlowProjectsLocationsAgentsEntityTypesExportResource
     =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "entityTypes:export" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GoogleCloudDialogflowCxV3ExportEntityTypesRequest
                         Core.:>
                         Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Exports the selected entity types.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEntityTypesExport' smart constructor.
data DialogFlowProjectsLocationsAgentsEntityTypesExport = DialogFlowProjectsLocationsAgentsEntityTypesExport
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the parent agent to export entity types. Format: @projects\/\/locations\/\/agents\/@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3ExportEntityTypesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEntityTypesExport' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEntityTypesExport 
    ::  Core.Text
       -- ^  Required. The name of the parent agent to export entity types. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
    -> GoogleCloudDialogflowCxV3ExportEntityTypesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsEntityTypesExport
newDialogFlowProjectsLocationsAgentsEntityTypesExport parent payload =
  DialogFlowProjectsLocationsAgentsEntityTypesExport
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsEntityTypesExport
         where
        type Rs
               DialogFlowProjectsLocationsAgentsEntityTypesExport
             = GoogleLongrunningOperation
        type Scopes
               DialogFlowProjectsLocationsAgentsEntityTypesExport
             =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsEntityTypesExport{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsEntityTypesExportResource)
                      Core.mempty

