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
-- Module      : Gogol.Debugger
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Examines the call stack and variables of a running application without stopping or slowing it down. (Deprecated)
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API (Deprecated) Reference>
module Gogol.Debugger
  ( -- * Configuration
    debuggerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudDebugger'FullControl,

    -- * Resources

    -- ** clouddebugger.controller.debuggees.breakpoints.list
    ClouddebuggerControllerDebuggeesBreakpointsListResource,
    ClouddebuggerControllerDebuggeesBreakpointsList (..),
    newClouddebuggerControllerDebuggeesBreakpointsList,

    -- ** clouddebugger.controller.debuggees.breakpoints.update
    ClouddebuggerControllerDebuggeesBreakpointsUpdateResource,
    ClouddebuggerControllerDebuggeesBreakpointsUpdate (..),
    newClouddebuggerControllerDebuggeesBreakpointsUpdate,

    -- ** clouddebugger.controller.debuggees.register
    ClouddebuggerControllerDebuggeesRegisterResource,
    ClouddebuggerControllerDebuggeesRegister (..),
    newClouddebuggerControllerDebuggeesRegister,

    -- ** clouddebugger.debugger.debuggees.breakpoints.delete
    ClouddebuggerDebuggerDebuggeesBreakpointsDeleteResource,
    ClouddebuggerDebuggerDebuggeesBreakpointsDelete (..),
    newClouddebuggerDebuggerDebuggeesBreakpointsDelete,

    -- ** clouddebugger.debugger.debuggees.breakpoints.get
    ClouddebuggerDebuggerDebuggeesBreakpointsGetResource,
    ClouddebuggerDebuggerDebuggeesBreakpointsGet (..),
    newClouddebuggerDebuggerDebuggeesBreakpointsGet,

    -- ** clouddebugger.debugger.debuggees.breakpoints.list
    ClouddebuggerDebuggerDebuggeesBreakpointsListResource,
    ClouddebuggerDebuggerDebuggeesBreakpointsList (..),
    newClouddebuggerDebuggerDebuggeesBreakpointsList,

    -- ** clouddebugger.debugger.debuggees.breakpoints.set
    ClouddebuggerDebuggerDebuggeesBreakpointsSetResource,
    ClouddebuggerDebuggerDebuggeesBreakpointsSet (..),
    newClouddebuggerDebuggerDebuggeesBreakpointsSet,

    -- ** clouddebugger.debugger.debuggees.list
    ClouddebuggerDebuggerDebuggeesListResource,
    ClouddebuggerDebuggerDebuggeesList (..),
    newClouddebuggerDebuggerDebuggeesList,

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

import Gogol.Debugger.Clouddebugger.Controller.Debuggees.Breakpoints.List
import Gogol.Debugger.Clouddebugger.Controller.Debuggees.Breakpoints.Update
import Gogol.Debugger.Clouddebugger.Controller.Debuggees.Register
import Gogol.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Delete
import Gogol.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Get
import Gogol.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.List
import Gogol.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Set
import Gogol.Debugger.Clouddebugger.Debugger.Debuggees.List
import Gogol.Debugger.Types
