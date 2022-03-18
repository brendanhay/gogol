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
-- Module      : Gogol.Script.Processes.ListScriptProcesses
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List information about a script\'s executed processes, such as process type and current status.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.processes.listScriptProcesses@.
module Gogol.Script.Processes.ListScriptProcesses
    (
    -- * Resource
      ScriptProcessesListScriptProcessesResource

    -- ** Constructing a Request
    , newScriptProcessesListScriptProcesses
    , ScriptProcessesListScriptProcesses
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Script.Types

-- | A resource alias for @script.processes.listScriptProcesses@ method which the
-- 'ScriptProcessesListScriptProcesses' request conforms to.
type ScriptProcessesListScriptProcessesResource =
     "v1" Core.:>
       "processes:listScriptProcesses" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "pageSize" Core.Int32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "scriptId" Core.Text Core.:>
                     Core.QueryParam "scriptProcessFilter.deploymentId"
                       Core.Text
                       Core.:>
                       Core.QueryParam "scriptProcessFilter.endTime"
                         Core.DateTime'
                         Core.:>
                         Core.QueryParam "scriptProcessFilter.functionName"
                           Core.Text
                           Core.:>
                           Core.QueryParam "scriptProcessFilter.startTime"
                             Core.DateTime'
                             Core.:>
                             Core.QueryParams "scriptProcessFilter.statuses"
                               ProcessesListScriptProcessesScriptProcessFilterStatuses
                               Core.:>
                               Core.QueryParams "scriptProcessFilter.types"
                                 ProcessesListScriptProcessesScriptProcessFilterTypes
                                 Core.:>
                                 Core.QueryParams
                                   "scriptProcessFilter.userAccessLevels"
                                   ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
                                   Core.:>
                                   Core.QueryParam "uploadType" Core.Text
                                     Core.:>
                                     Core.QueryParam "upload_protocol" Core.Text
                                       Core.:>
                                       Core.QueryParam "alt" Core.AltJSON
                                         Core.:>
                                         Core.Get '[Core.JSON]
                                           ListScriptProcessesResponse

-- | List information about a script\'s executed processes, such as process type and current status.
--
-- /See:/ 'newScriptProcessesListScriptProcesses' smart constructor.
data ScriptProcessesListScriptProcesses = ScriptProcessesListScriptProcesses
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of returned processes per page of results. Defaults to 50.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The token for continuing a previous list request on the next page. This should be set to the value of @nextPageToken@ from a previous response.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The script ID of the project whose processes are listed.
    , scriptId :: (Core.Maybe Core.Text)
      -- | Optional field used to limit returned processes to those originating from projects with a specific deployment ID.
    , scriptProcessFilterDeploymentId :: (Core.Maybe Core.Text)
      -- | Optional field used to limit returned processes to those that completed on or before the given timestamp.
    , scriptProcessFilterEndTime :: (Core.Maybe Core.DateTime')
      -- | Optional field used to limit returned processes to those originating from a script function with the given function name.
    , scriptProcessFilterFunctionName :: (Core.Maybe Core.Text)
      -- | Optional field used to limit returned processes to those that were started on or after the given timestamp.
    , scriptProcessFilterStartTime :: (Core.Maybe Core.DateTime')
      -- | Optional field used to limit returned processes to those having one of the specified process statuses.
    , scriptProcessFilterStatuses :: (Core.Maybe
   [ProcessesListScriptProcessesScriptProcessFilterStatuses])
      -- | Optional field used to limit returned processes to those having one of the specified process types.
    , scriptProcessFilterTypes :: (Core.Maybe [ProcessesListScriptProcessesScriptProcessFilterTypes])
      -- | Optional field used to limit returned processes to those having one of the specified user access levels.
    , scriptProcessFilterUserAccessLevels :: (Core.Maybe
   [ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels])
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptProcessesListScriptProcesses' with the minimum fields required to make a request.
newScriptProcessesListScriptProcesses 
    ::  ScriptProcessesListScriptProcesses
newScriptProcessesListScriptProcesses =
  ScriptProcessesListScriptProcesses
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , scriptId = Core.Nothing
    , scriptProcessFilterDeploymentId = Core.Nothing
    , scriptProcessFilterEndTime = Core.Nothing
    , scriptProcessFilterFunctionName = Core.Nothing
    , scriptProcessFilterStartTime = Core.Nothing
    , scriptProcessFilterStatuses = Core.Nothing
    , scriptProcessFilterTypes = Core.Nothing
    , scriptProcessFilterUserAccessLevels = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ScriptProcessesListScriptProcesses
         where
        type Rs ScriptProcessesListScriptProcesses =
             ListScriptProcessesResponse
        type Scopes ScriptProcessesListScriptProcesses =
             '["https://www.googleapis.com/auth/script.processes"]
        requestClient ScriptProcessesListScriptProcesses{..}
          = go xgafv accessToken callback pageSize pageToken
              scriptId
              scriptProcessFilterDeploymentId
              scriptProcessFilterEndTime
              scriptProcessFilterFunctionName
              scriptProcessFilterStartTime
              (scriptProcessFilterStatuses Core.^. Core._Default)
              (scriptProcessFilterTypes Core.^. Core._Default)
              (scriptProcessFilterUserAccessLevels Core.^.
                 Core._Default)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              scriptService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ScriptProcessesListScriptProcessesResource)
                      Core.mempty

