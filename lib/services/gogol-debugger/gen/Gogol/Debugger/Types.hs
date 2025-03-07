{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Debugger.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Debugger.Types
  ( -- * Configuration
    debuggerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudDebugger'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AliasContext
    AliasContext (..),
    newAliasContext,

    -- ** AliasContext_Kind
    AliasContext_Kind (..),

    -- ** Breakpoint
    Breakpoint (..),
    newBreakpoint,

    -- ** Breakpoint_Action
    Breakpoint_Action (..),

    -- ** Breakpoint_Labels
    Breakpoint_Labels (..),
    newBreakpoint_Labels,

    -- ** Breakpoint_LogLevel
    Breakpoint_LogLevel (..),

    -- ** Breakpoint_State
    Breakpoint_State (..),

    -- ** CloudRepoSourceContext
    CloudRepoSourceContext (..),
    newCloudRepoSourceContext,

    -- ** CloudWorkspaceId
    CloudWorkspaceId (..),
    newCloudWorkspaceId,

    -- ** CloudWorkspaceSourceContext
    CloudWorkspaceSourceContext (..),
    newCloudWorkspaceSourceContext,

    -- ** Debuggee
    Debuggee (..),
    newDebuggee,

    -- ** Debuggee_CanaryMode
    Debuggee_CanaryMode (..),

    -- ** Debuggee_Labels
    Debuggee_Labels (..),
    newDebuggee_Labels,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** ExtendedSourceContext
    ExtendedSourceContext (..),
    newExtendedSourceContext,

    -- ** ExtendedSourceContext_Labels
    ExtendedSourceContext_Labels (..),
    newExtendedSourceContext_Labels,

    -- ** FormatMessage
    FormatMessage (..),
    newFormatMessage,

    -- ** GerritSourceContext
    GerritSourceContext (..),
    newGerritSourceContext,

    -- ** GetBreakpointResponse
    GetBreakpointResponse (..),
    newGetBreakpointResponse,

    -- ** GitSourceContext
    GitSourceContext (..),
    newGitSourceContext,

    -- ** ListActiveBreakpointsResponse
    ListActiveBreakpointsResponse (..),
    newListActiveBreakpointsResponse,

    -- ** ListBreakpointsResponse
    ListBreakpointsResponse (..),
    newListBreakpointsResponse,

    -- ** ListDebuggeesResponse
    ListDebuggeesResponse (..),
    newListDebuggeesResponse,

    -- ** ProjectRepoId
    ProjectRepoId (..),
    newProjectRepoId,

    -- ** RegisterDebuggeeRequest
    RegisterDebuggeeRequest (..),
    newRegisterDebuggeeRequest,

    -- ** RegisterDebuggeeResponse
    RegisterDebuggeeResponse (..),
    newRegisterDebuggeeResponse,

    -- ** RepoId
    RepoId (..),
    newRepoId,

    -- ** SetBreakpointResponse
    SetBreakpointResponse (..),
    newSetBreakpointResponse,

    -- ** SourceContext
    SourceContext (..),
    newSourceContext,

    -- ** SourceLocation
    SourceLocation (..),
    newSourceLocation,

    -- ** StackFrame
    StackFrame (..),
    newStackFrame,

    -- ** StatusMessage
    StatusMessage (..),
    newStatusMessage,

    -- ** StatusMessage_RefersTo
    StatusMessage_RefersTo (..),

    -- ** UpdateActiveBreakpointRequest
    UpdateActiveBreakpointRequest (..),
    newUpdateActiveBreakpointRequest,

    -- ** UpdateActiveBreakpointResponse
    UpdateActiveBreakpointResponse (..),
    newUpdateActiveBreakpointResponse,

    -- ** Variable
    Variable (..),
    newVariable,

    -- ** DebuggerDebuggeesBreakpointsListActionValue
    DebuggerDebuggeesBreakpointsListActionValue (..),

    -- ** DebuggerDebuggeesBreakpointsSetCanaryOption
    DebuggerDebuggeesBreakpointsSetCanaryOption (..),
  )
where

import Gogol.Debugger.Internal.Product
import Gogol.Debugger.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the Cloud Debugger API (Deprecated). This contains the host and root path used as a starting point for constructing service requests.
debuggerService :: Core.ServiceConfig
debuggerService =
  Core.defaultService
    (Core.ServiceId "clouddebugger:v2")
    "clouddebugger.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | Use Stackdriver Debugger
type CloudDebugger'FullControl =
  "https://www.googleapis.com/auth/cloud_debugger"
