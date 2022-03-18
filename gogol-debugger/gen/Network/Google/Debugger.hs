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
-- Module      : Network.Google.Debugger
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Examines the call stack and variables of a running application without stopping or slowing it down.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference>
module Network.Google.Debugger
  ( -- * Configuration
    debuggerService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloud_debuggerScope,

    -- * Resources

    -- ** clouddebugger.controller.debuggees.breakpoints.list
    ClouddebuggerControllerDebuggeesBreakpointsListResource,
    newClouddebuggerControllerDebuggeesBreakpointsList,
    ClouddebuggerControllerDebuggeesBreakpointsList,

    -- ** clouddebugger.controller.debuggees.breakpoints.update
    ClouddebuggerControllerDebuggeesBreakpointsUpdateResource,
    newClouddebuggerControllerDebuggeesBreakpointsUpdate,
    ClouddebuggerControllerDebuggeesBreakpointsUpdate,

    -- ** clouddebugger.controller.debuggees.register
    ClouddebuggerControllerDebuggeesRegisterResource,
    newClouddebuggerControllerDebuggeesRegister,
    ClouddebuggerControllerDebuggeesRegister,

    -- ** clouddebugger.debugger.debuggees.breakpoints.delete
    ClouddebuggerDebuggerDebuggeesBreakpointsDeleteResource,
    newClouddebuggerDebuggerDebuggeesBreakpointsDelete,
    ClouddebuggerDebuggerDebuggeesBreakpointsDelete,

    -- ** clouddebugger.debugger.debuggees.breakpoints.get
    ClouddebuggerDebuggerDebuggeesBreakpointsGetResource,
    newClouddebuggerDebuggerDebuggeesBreakpointsGet,
    ClouddebuggerDebuggerDebuggeesBreakpointsGet,

    -- ** clouddebugger.debugger.debuggees.breakpoints.list
    ClouddebuggerDebuggerDebuggeesBreakpointsListResource,
    newClouddebuggerDebuggerDebuggeesBreakpointsList,
    ClouddebuggerDebuggerDebuggeesBreakpointsList,

    -- ** clouddebugger.debugger.debuggees.breakpoints.set
    ClouddebuggerDebuggerDebuggeesBreakpointsSetResource,
    newClouddebuggerDebuggerDebuggeesBreakpointsSet,
    ClouddebuggerDebuggerDebuggeesBreakpointsSet,

    -- ** clouddebugger.debugger.debuggees.list
    ClouddebuggerDebuggerDebuggeesListResource,
    newClouddebuggerDebuggerDebuggeesList,
    ClouddebuggerDebuggerDebuggeesList,

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

import Network.Google.Debugger.Clouddebugger.Controller.Debuggees.Breakpoints.List
import Network.Google.Debugger.Clouddebugger.Controller.Debuggees.Breakpoints.Update
import Network.Google.Debugger.Clouddebugger.Controller.Debuggees.Register
import Network.Google.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Delete
import Network.Google.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Get
import Network.Google.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.List
import Network.Google.Debugger.Clouddebugger.Debugger.Debuggees.Breakpoints.Set
import Network.Google.Debugger.Clouddebugger.Debugger.Debuggees.List
import Network.Google.Debugger.Types
