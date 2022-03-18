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
-- Module      : Network.Google.Debugger.Clouddebugger.Debugger.Debuggees.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the debuggees that the user has access to.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference> for @clouddebugger.debugger.debuggees.list@.
module Network.Google.Debugger.Clouddebugger.Debugger.Debuggees.List
  ( -- * Resource
    ClouddebuggerDebuggerDebuggeesListResource,

    -- ** Constructing a Request
    newClouddebuggerDebuggerDebuggeesList,
    ClouddebuggerDebuggerDebuggeesList,
  )
where

import Network.Google.Debugger.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @clouddebugger.debugger.debuggees.list@ method which the
-- 'ClouddebuggerDebuggerDebuggeesList' request conforms to.
type ClouddebuggerDebuggerDebuggeesListResource =
  "v2"
    Core.:> "debugger"
    Core.:> "debuggees"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientVersion" Core.Text
    Core.:> Core.QueryParam "includeInactive" Core.Bool
    Core.:> Core.QueryParam "project" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDebuggeesResponse

-- | Lists all the debuggees that the user has access to.
--
-- /See:/ 'newClouddebuggerDebuggerDebuggeesList' smart constructor.
data ClouddebuggerDebuggerDebuggeesList = ClouddebuggerDebuggerDebuggeesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The client version making the call. Schema: @domain\/type\/version@ (e.g., @google.com\/intellij\/v1@).
    clientVersion :: (Core.Maybe Core.Text),
    -- | When set to @true@, the result includes all debuggees. Otherwise, the result includes only debuggees that are active.
    includeInactive :: (Core.Maybe Core.Bool),
    -- | Required. Project number of a Google Cloud project whose debuggees to list.
    project :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClouddebuggerDebuggerDebuggeesList' with the minimum fields required to make a request.
newClouddebuggerDebuggerDebuggeesList ::
  ClouddebuggerDebuggerDebuggeesList
newClouddebuggerDebuggerDebuggeesList =
  ClouddebuggerDebuggerDebuggeesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clientVersion = Core.Nothing,
      includeInactive = Core.Nothing,
      project = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ClouddebuggerDebuggerDebuggeesList
  where
  type
    Rs ClouddebuggerDebuggerDebuggeesList =
      ListDebuggeesResponse
  type
    Scopes ClouddebuggerDebuggerDebuggeesList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud_debugger"
       ]
  requestClient ClouddebuggerDebuggerDebuggeesList {..} =
    go
      xgafv
      accessToken
      callback
      clientVersion
      includeInactive
      project
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      debuggerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                ClouddebuggerDebuggerDebuggeesListResource
          )
          Core.mempty
