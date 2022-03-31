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
-- Module      : Gogol.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Set
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the breakpoint to the debuggee.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference> for @clouddebugger.debugger.debuggees.breakpoints.set@.
module Gogol.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Set
  ( -- * Resource
    ClouddebuggerDebuggerDebuggeesBreakpointsSetResource,

    -- ** Constructing a Request
    newClouddebuggerDebuggerDebuggeesBreakpointsSet,
    ClouddebuggerDebuggerDebuggeesBreakpointsSet,
  )
where

import Gogol.Debugger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @clouddebugger.debugger.debuggees.breakpoints.set@ method which the
-- 'ClouddebuggerDebuggerDebuggeesBreakpointsSet' request conforms to.
type ClouddebuggerDebuggerDebuggeesBreakpointsSetResource =
  "v2"
    Core.:> "debugger"
    Core.:> "debuggees"
    Core.:> Core.Capture "debuggeeId" Core.Text
    Core.:> "breakpoints"
    Core.:> "set"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "canaryOption"
              DebuggerDebuggeesBreakpointsSetCanaryOption
    Core.:> Core.QueryParam "clientVersion" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Breakpoint
    Core.:> Core.Post '[Core.JSON] SetBreakpointResponse

-- | Sets the breakpoint to the debuggee.
--
-- /See:/ 'newClouddebuggerDebuggerDebuggeesBreakpointsSet' smart constructor.
data ClouddebuggerDebuggerDebuggeesBreakpointsSet = ClouddebuggerDebuggerDebuggeesBreakpointsSet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The canary option set by the user upon setting breakpoint.
    canaryOption :: (Core.Maybe DebuggerDebuggeesBreakpointsSetCanaryOption),
    -- | Required. The client version making the call. Schema: @domain\/type\/version@ (e.g., @google.com\/intellij\/v1@).
    clientVersion :: (Core.Maybe Core.Text),
    -- | Required. ID of the debuggee where the breakpoint is to be set.
    debuggeeId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Breakpoint,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClouddebuggerDebuggerDebuggeesBreakpointsSet' with the minimum fields required to make a request.
newClouddebuggerDebuggerDebuggeesBreakpointsSet ::
  -- |  Required. ID of the debuggee where the breakpoint is to be set. See 'debuggeeId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Breakpoint ->
  ClouddebuggerDebuggerDebuggeesBreakpointsSet
newClouddebuggerDebuggerDebuggeesBreakpointsSet debuggeeId payload =
  ClouddebuggerDebuggerDebuggeesBreakpointsSet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      canaryOption = Core.Nothing,
      clientVersion = Core.Nothing,
      debuggeeId = debuggeeId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClouddebuggerDebuggerDebuggeesBreakpointsSet
  where
  type
    Rs ClouddebuggerDebuggerDebuggeesBreakpointsSet =
      SetBreakpointResponse
  type
    Scopes
      ClouddebuggerDebuggerDebuggeesBreakpointsSet =
      '[ CloudPlatform'FullControl,
         CloudDebugger'FullControl
       ]
  requestClient
    ClouddebuggerDebuggerDebuggeesBreakpointsSet {..} =
      go
        debuggeeId
        xgafv
        accessToken
        callback
        canaryOption
        clientVersion
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
                  ClouddebuggerDebuggerDebuggeesBreakpointsSetResource
            )
            Core.mempty
