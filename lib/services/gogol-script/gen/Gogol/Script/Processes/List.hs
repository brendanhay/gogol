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
-- Module      : Gogol.Script.Processes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List information about processes made by or on behalf of a user, such as process type and current status.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.processes.list@.
module Gogol.Script.Processes.List
    (
    -- * Resource
      ScriptProcessesListResource

    -- ** Constructing a Request
    , ScriptProcessesList (..)
    , newScriptProcessesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Script.Types

-- | A resource alias for @script.processes.list@ method which the
-- 'ScriptProcessesList' request conforms to.
type ScriptProcessesListResource =
     "v1" Core.:>
       "processes" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "pageSize" Core.Int32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "userProcessFilter.deploymentId"
                         Core.Text
                         Core.:>
                         Core.QueryParam "userProcessFilter.endTime"
                           Core.DateTime
                           Core.:>
                           Core.QueryParam "userProcessFilter.functionName"
                             Core.Text
                             Core.:>
                             Core.QueryParam "userProcessFilter.projectName"
                               Core.Text
                               Core.:>
                               Core.QueryParam "userProcessFilter.scriptId"
                                 Core.Text
                                 Core.:>
                                 Core.QueryParam "userProcessFilter.startTime"
                                   Core.DateTime
                                   Core.:>
                                   Core.QueryParams "userProcessFilter.statuses"
                                     ProcessesListUserProcessFilterStatuses
                                     Core.:>
                                     Core.QueryParams "userProcessFilter.types"
                                       ProcessesListUserProcessFilterTypes
                                       Core.:>
                                       Core.QueryParams
                                         "userProcessFilter.userAccessLevels"
                                         ProcessesListUserProcessFilterUserAccessLevels
                                         Core.:>
                                         Core.QueryParam "alt" Core.AltJSON
                                           Core.:>
                                           Core.Get '[Core.JSON]
                                             ListUserProcessesResponse

-- | List information about processes made by or on behalf of a user, such as process type and current status.
--
-- /See:/ 'newScriptProcessesList' smart constructor.
data ScriptProcessesList = ScriptProcessesList
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
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional field used to limit returned processes to those originating from projects with a specific deployment ID.
    , userProcessFilterDeploymentId :: (Core.Maybe Core.Text)
      -- | Optional field used to limit returned processes to those that completed on or before the given timestamp.
    , userProcessFilterEndTime :: (Core.Maybe Core.DateTime)
      -- | Optional field used to limit returned processes to those originating from a script function with the given function name.
    , userProcessFilterFunctionName :: (Core.Maybe Core.Text)
      -- | Optional field used to limit returned processes to those originating from projects with project names containing a specific string.
    , userProcessFilterProjectName :: (Core.Maybe Core.Text)
      -- | Optional field used to limit returned processes to those originating from projects with a specific script ID.
    , userProcessFilterScriptId :: (Core.Maybe Core.Text)
      -- | Optional field used to limit returned processes to those that were started on or after the given timestamp.
    , userProcessFilterStartTime :: (Core.Maybe Core.DateTime)
      -- | Optional field used to limit returned processes to those having one of the specified process statuses.
    , userProcessFilterStatuses :: (Core.Maybe [ProcessesListUserProcessFilterStatuses])
      -- | Optional field used to limit returned processes to those having one of the specified process types.
    , userProcessFilterTypes :: (Core.Maybe [ProcessesListUserProcessFilterTypes])
      -- | Optional field used to limit returned processes to those having one of the specified user access levels.
    , userProcessFilterUserAccessLevels :: (Core.Maybe [ProcessesListUserProcessFilterUserAccessLevels])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptProcessesList' with the minimum fields required to make a request.
newScriptProcessesList 
    ::  ScriptProcessesList
newScriptProcessesList =
  ScriptProcessesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userProcessFilterDeploymentId = Core.Nothing
    , userProcessFilterEndTime = Core.Nothing
    , userProcessFilterFunctionName = Core.Nothing
    , userProcessFilterProjectName = Core.Nothing
    , userProcessFilterScriptId = Core.Nothing
    , userProcessFilterStartTime = Core.Nothing
    , userProcessFilterStatuses = Core.Nothing
    , userProcessFilterTypes = Core.Nothing
    , userProcessFilterUserAccessLevels = Core.Nothing
    }

instance Core.GoogleRequest ScriptProcessesList where
        type Rs ScriptProcessesList =
             ListUserProcessesResponse
        type Scopes ScriptProcessesList = '[Script'Processes]
        requestClient ScriptProcessesList{..}
          = go xgafv accessToken callback pageSize pageToken
              uploadType
              uploadProtocol
              userProcessFilterDeploymentId
              userProcessFilterEndTime
              userProcessFilterFunctionName
              userProcessFilterProjectName
              userProcessFilterScriptId
              userProcessFilterStartTime
              (userProcessFilterStatuses Core.^. Core._Default)
              (userProcessFilterTypes Core.^. Core._Default)
              (userProcessFilterUserAccessLevels Core.^.
                 Core._Default)
              (Core.Just Core.AltJSON)
              scriptService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ScriptProcessesListResource)
                      Core.mempty

