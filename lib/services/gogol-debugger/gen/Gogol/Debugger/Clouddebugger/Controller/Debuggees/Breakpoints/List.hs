{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Debugger.Clouddebugger.Controller.Debuggees.Breakpoints.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all active breakpoints for the debuggee. The breakpoint specification (@location@, @condition@, and @expressions@ fields) is semantically immutable, although the field values may change. For example, an agent may update the location line number to reflect the actual line where the breakpoint was set, but this doesn\'t change the breakpoint semantics. This means that an agent does not need to check if a breakpoint has changed when it encounters the same breakpoint on a successive call. Moreover, an agent should remember the breakpoints that are completed until the controller removes them from the active list to avoid setting those breakpoints again.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference> for @clouddebugger.controller.debuggees.breakpoints.list@.
module Gogol.Debugger.Clouddebugger.Controller.Debuggees.Breakpoints.List
  ( -- * Resource
    ClouddebuggerControllerDebuggeesBreakpointsListResource,

    -- ** Constructing a Request
    ClouddebuggerControllerDebuggeesBreakpointsList (..),
    newClouddebuggerControllerDebuggeesBreakpointsList,
  )
where

import Gogol.Debugger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @clouddebugger.controller.debuggees.breakpoints.list@ method which the
-- 'ClouddebuggerControllerDebuggeesBreakpointsList' request conforms to.
type ClouddebuggerControllerDebuggeesBreakpointsListResource =
  "v2"
    Core.:> "controller"
    Core.:> "debuggees"
    Core.:> Core.Capture "debuggeeId" Core.Text
    Core.:> "breakpoints"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "agentId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "successOnTimeout" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "waitToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListActiveBreakpointsResponse

-- | Returns the list of all active breakpoints for the debuggee. The breakpoint specification (@location@, @condition@, and @expressions@ fields) is semantically immutable, although the field values may change. For example, an agent may update the location line number to reflect the actual line where the breakpoint was set, but this doesn\'t change the breakpoint semantics. This means that an agent does not need to check if a breakpoint has changed when it encounters the same breakpoint on a successive call. Moreover, an agent should remember the breakpoints that are completed until the controller removes them from the active list to avoid setting those breakpoints again.
--
-- /See:/ 'newClouddebuggerControllerDebuggeesBreakpointsList' smart constructor.
data ClouddebuggerControllerDebuggeesBreakpointsList = ClouddebuggerControllerDebuggeesBreakpointsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Identifies the agent. This is the ID returned in the RegisterDebuggee response.
    agentId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Identifies the debuggee.
    debuggeeId :: Core.Text,
    -- | If set to @true@ (recommended), returns @google.rpc.Code.OK@ status and sets the @wait_expired@ response field to @true@ when the server-selected timeout has expired. If set to @false@ (deprecated), returns @google.rpc.Code.ABORTED@ status when the server-selected timeout has expired.
    successOnTimeout :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | A token that, if specified, blocks the method call until the list of active breakpoints has changed, or a server-selected timeout has expired. The value should be set from the @next_wait_token@ field in the last response. The initial value should be set to @\"init\"@.
    waitToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClouddebuggerControllerDebuggeesBreakpointsList' with the minimum fields required to make a request.
newClouddebuggerControllerDebuggeesBreakpointsList ::
  -- |  Required. Identifies the debuggee. See 'debuggeeId'.
  Core.Text ->
  ClouddebuggerControllerDebuggeesBreakpointsList
newClouddebuggerControllerDebuggeesBreakpointsList debuggeeId =
  ClouddebuggerControllerDebuggeesBreakpointsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      agentId = Core.Nothing,
      callback = Core.Nothing,
      debuggeeId = debuggeeId,
      successOnTimeout = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      waitToken = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClouddebuggerControllerDebuggeesBreakpointsList
  where
  type
    Rs
      ClouddebuggerControllerDebuggeesBreakpointsList =
      ListActiveBreakpointsResponse
  type
    Scopes
      ClouddebuggerControllerDebuggeesBreakpointsList =
      '[ CloudPlatform'FullControl,
         CloudDebugger'FullControl
       ]
  requestClient
    ClouddebuggerControllerDebuggeesBreakpointsList {..} =
      go
        debuggeeId
        xgafv
        accessToken
        agentId
        callback
        successOnTimeout
        uploadType
        uploadProtocol
        waitToken
        (Core.Just Core.AltJSON)
        debuggerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ClouddebuggerControllerDebuggeesBreakpointsListResource
            )
            Core.mempty
