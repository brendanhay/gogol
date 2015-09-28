{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Debugger
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you examine the stack and variables of your running application
-- without stopping or slowing it down.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference>
module Network.Google.Debugger
    (
    -- * REST Resources

    -- ** Google Cloud Debugger API
      Debugger
    , debugger
    , debuggerURL

    -- ** clouddebugger.controller.debuggees.breakpoints.list
    , module Network.Google.API.Clouddebugger.Controller.Debuggees.Breakpoints.List

    -- ** clouddebugger.controller.debuggees.breakpoints.update
    , module Network.Google.API.Clouddebugger.Controller.Debuggees.Breakpoints.Update

    -- ** clouddebugger.debugger.debuggees.breakpoints.delete
    , module Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.Delete

    -- ** clouddebugger.debugger.debuggees.breakpoints.get
    , module Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.Get

    -- ** clouddebugger.debugger.debuggees.breakpoints.list
    , module Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.List

    -- ** clouddebugger.debugger.debuggees.breakpoints.set
    , module Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.Set

    -- * Types

    -- ** ListDebuggeesResponse
    , ListDebuggeesResponse
    , listDebuggeesResponse
    , ldrDebuggees

    -- ** StatusMessage
    , StatusMessage
    , statusMessage
    , smRefersTo
    , smIsError
    , smDescription

    -- ** UpdateActiveBreakpointRequest
    , UpdateActiveBreakpointRequest
    , updateActiveBreakpointRequest
    , uabrBreakpoint

    -- ** SourceContext
    , SourceContext
    , sourceContext
    , scCloudWorkspace
    , scCloudRepo
    , scGerrit
    , scGit

    -- ** SetBreakpointResponse
    , SetBreakpointResponse
    , setBreakpointResponse
    , sbrBreakpoint

    -- ** ListActiveBreakpointsResponse
    , ListActiveBreakpointsResponse
    , listActiveBreakpointsResponse
    , labrNextWaitToken
    , labrBreakpoints

    -- ** SourceLocation
    , SourceLocation
    , sourceLocation
    , slPath
    , slLine

    -- ** DebuggeeLabels
    , DebuggeeLabels
    , debuggeeLabels

    -- ** GitSourceContext
    , GitSourceContext
    , gitSourceContext
    , gscUrl
    , gscRevisionId

    -- ** CloudRepoSourceContext
    , CloudRepoSourceContext
    , cloudRepoSourceContext
    , crscRepoId
    , crscAliasName
    , crscRevisionId

    -- ** StackFrame
    , StackFrame
    , stackFrame
    , sfFunction
    , sfLocation
    , sfArguments
    , sfLocals

    -- ** Variable
    , Variable
    , variable
    , vStatus
    , vVarTableIndex
    , vMembers
    , vValue
    , vName

    -- ** GetBreakpointResponse
    , GetBreakpointResponse
    , getBreakpointResponse
    , gbrBreakpoint

    -- ** CloudWorkspaceId
    , CloudWorkspaceId
    , cloudWorkspaceId
    , cwiRepoId
    , cwiName

    -- ** RegisterDebuggeeResponse
    , RegisterDebuggeeResponse
    , registerDebuggeeResponse
    , rdrDebuggee

    -- ** Empty
    , Empty
    , empty

    -- ** GerritSourceContext
    , GerritSourceContext
    , gerritSourceContext
    , gGerritProject
    , gAliasName
    , gRevisionId
    , gHostUri

    -- ** UpdateActiveBreakpointResponse
    , UpdateActiveBreakpointResponse
    , updateActiveBreakpointResponse

    -- ** RepoId
    , RepoId
    , repoId
    , riUid
    , riProjectRepoId

    -- ** FormatMessage
    , FormatMessage
    , formatMessage
    , fmFormat
    , fmParameters

    -- ** ProjectRepoId
    , ProjectRepoId
    , projectRepoId
    , priRepoName
    , priProjectId

    -- ** Breakpoint
    , Breakpoint
    , breakpoint
    , bStatus
    , bLogLevel
    , bLocation
    , bAction
    , bFinalTime
    , bExpressions
    , bLogMessageFormat
    , bId
    , bUserEmail
    , bVariableTable
    , bStackFrames
    , bCondition
    , bEvaluatedExpressions
    , bCreateTime
    , bIsFinalState

    -- ** CloudWorkspaceSourceContext
    , CloudWorkspaceSourceContext
    , cloudWorkspaceSourceContext
    , cwscWorkspaceId
    , cwscSnapshotId

    -- ** RegisterDebuggeeRequest
    , RegisterDebuggeeRequest
    , registerDebuggeeRequest
    , rDebuggee

    -- ** Debuggee
    , Debuggee
    , debuggee
    , dStatus
    , dUniquifier
    , dProject
    , dAgentVersion
    , dIsDisabled
    , dId
    , dLabels
    , dDescription
    , dIsInactive
    , dSourceContexts

    -- ** ListBreakpointsResponse
    , ListBreakpointsResponse
    , listBreakpointsResponse
    , lbrNextWaitToken
    , lbrBreakpoints
    ) where

import           Network.Google.API.Clouddebugger.Controller.Debuggees.Breakpoints.List
import           Network.Google.API.Clouddebugger.Controller.Debuggees.Breakpoints.Update
import           Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.Delete
import           Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.Get
import           Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.List
import           Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.Set
import           Network.Google.Debugger.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Debugger =
     DebuggerDebuggeesBreakpointsListAPI :<|>
       DebuggerDebuggeesBreakpointsGetAPI
       :<|> ControllerDebuggeesBreakpointsListAPI
       :<|> ControllerDebuggeesBreakpointsUpdateAPI
       :<|> DebuggerDebuggeesBreakpointsDeleteAPI
       :<|> DebuggerDebuggeesBreakpointsSetAPI

debugger :: Proxy Debugger
debugger = Proxy
