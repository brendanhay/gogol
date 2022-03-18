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
-- Module      : Network.Google.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the breakpoint from the debuggee.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference> for @clouddebugger.debugger.debuggees.breakpoints.delete@.
module Network.Google.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Delete
  ( -- * Resource
    ClouddebuggerDebuggerDebuggeesBreakpointsDeleteResource,

    -- ** Constructing a Request
    newClouddebuggerDebuggerDebuggeesBreakpointsDelete,
    ClouddebuggerDebuggerDebuggeesBreakpointsDelete,
  )
where

import Network.Google.Debugger.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @clouddebugger.debugger.debuggees.breakpoints.delete@ method which the
-- 'ClouddebuggerDebuggerDebuggeesBreakpointsDelete' request conforms to.
type ClouddebuggerDebuggerDebuggeesBreakpointsDeleteResource =
  "v2"
    Core.:> "debugger"
    Core.:> "debuggees"
    Core.:> Core.Capture "debuggeeId" Core.Text
    Core.:> "breakpoints"
    Core.:> Core.Capture "breakpointId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientVersion" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the breakpoint from the debuggee.
--
-- /See:/ 'newClouddebuggerDebuggerDebuggeesBreakpointsDelete' smart constructor.
data ClouddebuggerDebuggerDebuggeesBreakpointsDelete = ClouddebuggerDebuggerDebuggeesBreakpointsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. ID of the breakpoint to delete.
    breakpointId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The client version making the call. Schema: @domain\/type\/version@ (e.g., @google.com\/intellij\/v1@).
    clientVersion :: (Core.Maybe Core.Text),
    -- | Required. ID of the debuggee whose breakpoint to delete.
    debuggeeId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClouddebuggerDebuggerDebuggeesBreakpointsDelete' with the minimum fields required to make a request.
newClouddebuggerDebuggerDebuggeesBreakpointsDelete ::
  -- |  Required. ID of the breakpoint to delete. See 'breakpointId'.
  Core.Text ->
  -- |  Required. ID of the debuggee whose breakpoint to delete. See 'debuggeeId'.
  Core.Text ->
  ClouddebuggerDebuggerDebuggeesBreakpointsDelete
newClouddebuggerDebuggerDebuggeesBreakpointsDelete breakpointId debuggeeId =
  ClouddebuggerDebuggerDebuggeesBreakpointsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      breakpointId = breakpointId,
      callback = Core.Nothing,
      clientVersion = Core.Nothing,
      debuggeeId = debuggeeId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClouddebuggerDebuggerDebuggeesBreakpointsDelete
  where
  type
    Rs
      ClouddebuggerDebuggerDebuggeesBreakpointsDelete =
      Empty
  type
    Scopes
      ClouddebuggerDebuggerDebuggeesBreakpointsDelete =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud_debugger"
       ]
  requestClient
    ClouddebuggerDebuggerDebuggeesBreakpointsDelete {..} =
      go
        debuggeeId
        breakpointId
        xgafv
        accessToken
        callback
        clientVersion
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        debuggerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ClouddebuggerDebuggerDebuggeesBreakpointsDeleteResource
            )
            Core.mempty
