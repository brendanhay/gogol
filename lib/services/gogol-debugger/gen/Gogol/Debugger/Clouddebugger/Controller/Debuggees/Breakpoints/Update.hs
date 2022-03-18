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
-- Module      : Gogol.Debugger.Clouddebugger.Controller.Debuggees.Breakpoints.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the breakpoint state or mutable fields. The entire Breakpoint message must be sent back to the controller service. Updates to active breakpoint fields are only allowed if the new value does not change the breakpoint specification. Updates to the @location@, @condition@ and @expressions@ fields should not alter the breakpoint semantics. These may only make changes such as canonicalizing a value or snapping the location to the correct line of code.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference> for @clouddebugger.controller.debuggees.breakpoints.update@.
module Gogol.Debugger.Clouddebugger.Controller.Debuggees.Breakpoints.Update
  ( -- * Resource
    ClouddebuggerControllerDebuggeesBreakpointsUpdateResource,

    -- ** Constructing a Request
    newClouddebuggerControllerDebuggeesBreakpointsUpdate,
    ClouddebuggerControllerDebuggeesBreakpointsUpdate,
  )
where

import Gogol.Debugger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @clouddebugger.controller.debuggees.breakpoints.update@ method which the
-- 'ClouddebuggerControllerDebuggeesBreakpointsUpdate' request conforms to.
type ClouddebuggerControllerDebuggeesBreakpointsUpdateResource =
  "v2"
    Core.:> "controller"
    Core.:> "debuggees"
    Core.:> Core.Capture "debuggeeId" Core.Text
    Core.:> "breakpoints"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              UpdateActiveBreakpointRequest
    Core.:> Core.Put
              '[Core.JSON]
              UpdateActiveBreakpointResponse

-- | Updates the breakpoint state or mutable fields. The entire Breakpoint message must be sent back to the controller service. Updates to active breakpoint fields are only allowed if the new value does not change the breakpoint specification. Updates to the @location@, @condition@ and @expressions@ fields should not alter the breakpoint semantics. These may only make changes such as canonicalizing a value or snapping the location to the correct line of code.
--
-- /See:/ 'newClouddebuggerControllerDebuggeesBreakpointsUpdate' smart constructor.
data ClouddebuggerControllerDebuggeesBreakpointsUpdate = ClouddebuggerControllerDebuggeesBreakpointsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Identifies the debuggee being debugged.
    debuggeeId :: Core.Text,
    -- | Breakpoint identifier, unique in the scope of the debuggee.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateActiveBreakpointRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClouddebuggerControllerDebuggeesBreakpointsUpdate' with the minimum fields required to make a request.
newClouddebuggerControllerDebuggeesBreakpointsUpdate ::
  -- |  Required. Identifies the debuggee being debugged. See 'debuggeeId'.
  Core.Text ->
  -- |  Breakpoint identifier, unique in the scope of the debuggee. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateActiveBreakpointRequest ->
  ClouddebuggerControllerDebuggeesBreakpointsUpdate
newClouddebuggerControllerDebuggeesBreakpointsUpdate debuggeeId id payload =
  ClouddebuggerControllerDebuggeesBreakpointsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      debuggeeId = debuggeeId,
      id = id,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClouddebuggerControllerDebuggeesBreakpointsUpdate
  where
  type
    Rs
      ClouddebuggerControllerDebuggeesBreakpointsUpdate =
      UpdateActiveBreakpointResponse
  type
    Scopes
      ClouddebuggerControllerDebuggeesBreakpointsUpdate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud_debugger"
       ]
  requestClient
    ClouddebuggerControllerDebuggeesBreakpointsUpdate {..} =
      go
        debuggeeId
        id
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        debuggerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ClouddebuggerControllerDebuggeesBreakpointsUpdateResource
            )
            Core.mempty
