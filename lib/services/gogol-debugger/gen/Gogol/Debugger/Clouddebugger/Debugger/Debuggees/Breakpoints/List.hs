{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all breakpoints for the debuggee.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API (Deprecated) Reference> for @clouddebugger.debugger.debuggees.breakpoints.list@.
module Gogol.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.List
  ( -- * Resource
    ClouddebuggerDebuggerDebuggeesBreakpointsListResource,

    -- ** Constructing a Request
    ClouddebuggerDebuggerDebuggeesBreakpointsList (..),
    newClouddebuggerDebuggerDebuggeesBreakpointsList,
  )
where

import Gogol.Debugger.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @clouddebugger.debugger.debuggees.breakpoints.list@ method which the
-- 'ClouddebuggerDebuggerDebuggeesBreakpointsList' request conforms to.
type ClouddebuggerDebuggerDebuggeesBreakpointsListResource =
  "v2"
    Core.:> "debugger"
    Core.:> "debuggees"
    Core.:> Core.Capture "debuggeeId" Core.Text
    Core.:> "breakpoints"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam
              "action.value"
              DebuggerDebuggeesBreakpointsListActionValue
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientVersion" Core.Text
    Core.:> Core.QueryParam "includeAllUsers" Core.Bool
    Core.:> Core.QueryParam "includeInactive" Core.Bool
    Core.:> Core.QueryParam "stripResults" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "waitToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBreakpointsResponse

-- | Lists all breakpoints for the debuggee.
--
-- /See:/ 'newClouddebuggerDebuggerDebuggeesBreakpointsList' smart constructor.
data ClouddebuggerDebuggerDebuggeesBreakpointsList = ClouddebuggerDebuggerDebuggeesBreakpointsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Only breakpoints with the specified action will pass the filter.
    actionValue :: (Core.Maybe DebuggerDebuggeesBreakpointsListActionValue),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The client version making the call. Schema: @domain\/type\/version@ (e.g., @google.com\/intellij\/v1@).
    clientVersion :: (Core.Maybe Core.Text),
    -- | Required. ID of the debuggee whose breakpoints to list.
    debuggeeId :: Core.Text,
    -- | When set to @true@, the response includes the list of breakpoints set by any user. Otherwise, it includes only breakpoints set by the caller.
    includeAllUsers :: (Core.Maybe Core.Bool),
    -- | When set to @true@, the response includes active and inactive breakpoints. Otherwise, it includes only active breakpoints.
    includeInactive :: (Core.Maybe Core.Bool),
    -- | This field is deprecated. The following fields are always stripped out of the result: @stack_frames@, @evaluated_expressions@ and @variable_table@.
    stripResults :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | A wait token that, if specified, blocks the call until the breakpoints list has changed, or a server selected timeout has expired. The value should be set from the last response. The error code @google.rpc.Code.ABORTED@ (RPC) is returned on wait timeout, which should be called again with the same @wait_token@.
    waitToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClouddebuggerDebuggerDebuggeesBreakpointsList' with the minimum fields required to make a request.
newClouddebuggerDebuggerDebuggeesBreakpointsList ::
  -- |  Required. ID of the debuggee whose breakpoints to list. See 'debuggeeId'.
  Core.Text ->
  ClouddebuggerDebuggerDebuggeesBreakpointsList
newClouddebuggerDebuggerDebuggeesBreakpointsList debuggeeId =
  ClouddebuggerDebuggerDebuggeesBreakpointsList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      actionValue = Core.Nothing,
      callback = Core.Nothing,
      clientVersion = Core.Nothing,
      debuggeeId = debuggeeId,
      includeAllUsers = Core.Nothing,
      includeInactive = Core.Nothing,
      stripResults = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      waitToken = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClouddebuggerDebuggerDebuggeesBreakpointsList
  where
  type
    Rs ClouddebuggerDebuggerDebuggeesBreakpointsList =
      ListBreakpointsResponse
  type
    Scopes ClouddebuggerDebuggerDebuggeesBreakpointsList =
      '[CloudPlatform'FullControl, CloudDebugger'FullControl]
  requestClient ClouddebuggerDebuggerDebuggeesBreakpointsList {..} =
    go
      debuggeeId
      xgafv
      accessToken
      actionValue
      callback
      clientVersion
      includeAllUsers
      includeInactive
      stripResults
      uploadType
      uploadProtocol
      waitToken
      (Core.Just Core.AltJSON)
      debuggerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ClouddebuggerDebuggerDebuggeesBreakpointsListResource
          )
          Core.mempty
