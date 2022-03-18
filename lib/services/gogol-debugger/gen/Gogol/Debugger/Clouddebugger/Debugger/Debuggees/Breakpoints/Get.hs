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
-- Module      : Gogol.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets breakpoint information.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference> for @clouddebugger.debugger.debuggees.breakpoints.get@.
module Gogol.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Get
  ( -- * Resource
    ClouddebuggerDebuggerDebuggeesBreakpointsGetResource,

    -- ** Constructing a Request
    newClouddebuggerDebuggerDebuggeesBreakpointsGet,
    ClouddebuggerDebuggerDebuggeesBreakpointsGet,
  )
where

import Gogol.Debugger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @clouddebugger.debugger.debuggees.breakpoints.get@ method which the
-- 'ClouddebuggerDebuggerDebuggeesBreakpointsGet' request conforms to.
type ClouddebuggerDebuggerDebuggeesBreakpointsGetResource =
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
    Core.:> Core.Get '[Core.JSON] GetBreakpointResponse

-- | Gets breakpoint information.
--
-- /See:/ 'newClouddebuggerDebuggerDebuggeesBreakpointsGet' smart constructor.
data ClouddebuggerDebuggerDebuggeesBreakpointsGet = ClouddebuggerDebuggerDebuggeesBreakpointsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. ID of the breakpoint to get.
    breakpointId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The client version making the call. Schema: @domain\/type\/version@ (e.g., @google.com\/intellij\/v1@).
    clientVersion :: (Core.Maybe Core.Text),
    -- | Required. ID of the debuggee whose breakpoint to get.
    debuggeeId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClouddebuggerDebuggerDebuggeesBreakpointsGet' with the minimum fields required to make a request.
newClouddebuggerDebuggerDebuggeesBreakpointsGet ::
  -- |  Required. ID of the breakpoint to get. See 'breakpointId'.
  Core.Text ->
  -- |  Required. ID of the debuggee whose breakpoint to get. See 'debuggeeId'.
  Core.Text ->
  ClouddebuggerDebuggerDebuggeesBreakpointsGet
newClouddebuggerDebuggerDebuggeesBreakpointsGet breakpointId debuggeeId =
  ClouddebuggerDebuggerDebuggeesBreakpointsGet
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
    ClouddebuggerDebuggerDebuggeesBreakpointsGet
  where
  type
    Rs ClouddebuggerDebuggerDebuggeesBreakpointsGet =
      GetBreakpointResponse
  type
    Scopes
      ClouddebuggerDebuggerDebuggeesBreakpointsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud_debugger"
       ]
  requestClient
    ClouddebuggerDebuggerDebuggeesBreakpointsGet {..} =
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
                  ClouddebuggerDebuggerDebuggeesBreakpointsGetResource
            )
            Core.mempty
