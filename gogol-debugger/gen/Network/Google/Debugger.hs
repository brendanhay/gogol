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
    -- * API
      DebuggerAPI
    , debuggerAPI
    , debuggerURL

    -- * Service Methods

    -- * REST Resources

    -- ** ClouddebuggerControllerDebuggeesBreakpointsList
    , module Network.Google.Resource.Clouddebugger.Controller.Debuggees.Breakpoints.List

    -- ** ClouddebuggerControllerDebuggeesBreakpointsUpdate
    , module Network.Google.Resource.Clouddebugger.Controller.Debuggees.Breakpoints.Update

    -- ** ClouddebuggerControllerDebuggeesRegister
    , module Network.Google.Resource.Clouddebugger.Controller.Debuggees.Register

    -- ** ClouddebuggerDebuggerDebuggeesBreakpointsDelete
    , module Network.Google.Resource.Clouddebugger.Debugger.Debuggees.Breakpoints.Delete

    -- ** ClouddebuggerDebuggerDebuggeesBreakpointsGet
    , module Network.Google.Resource.Clouddebugger.Debugger.Debuggees.Breakpoints.Get

    -- ** ClouddebuggerDebuggerDebuggeesBreakpointsList
    , module Network.Google.Resource.Clouddebugger.Debugger.Debuggees.Breakpoints.List

    -- ** ClouddebuggerDebuggerDebuggeesBreakpointsSet
    , module Network.Google.Resource.Clouddebugger.Debugger.Debuggees.Breakpoints.Set

    -- ** ClouddebuggerDebuggerDebuggeesList
    , module Network.Google.Resource.Clouddebugger.Debugger.Debuggees.List

    -- * Types

    -- ** RegisterDebuggeeResponse
    , RegisterDebuggeeResponse
    , registerDebuggeeResponse
    , rdrDebuggee

    -- ** SetBreakpointResponse
    , SetBreakpointResponse
    , setBreakpointResponse
    , sbrBreakpoint

    -- ** SourceContext
    , SourceContext
    , sourceContext
    , scCloudWorkspace
    , scCloudRepo
    , scGerrit
    , scGit

    -- ** RepoId
    , RepoId
    , repoId
    , riUid
    , riProjectRepoId

    -- ** UpdateActiveBreakpointResponse
    , UpdateActiveBreakpointResponse
    , updateActiveBreakpointResponse

    -- ** Empty
    , Empty
    , empty

    -- ** GerritSourceContext
    , GerritSourceContext
    , gerritSourceContext
    , gscGerritProject
    , gscAliasName
    , gscRevisionId
    , gscHostUri

    -- ** ProjectRepoId
    , ProjectRepoId
    , projectRepoId
    , priRepoName
    , priProjectId

    -- ** FormatMessage
    , FormatMessage
    , formatMessage
    , fmFormat
    , fmParameters

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

    -- ** GetBreakpointResponse
    , GetBreakpointResponse
    , getBreakpointResponse
    , gbrBreakpoint

    -- ** Variable
    , Variable
    , variable
    , vStatus
    , vVarTableIndex
    , vMembers
    , vValue
    , vName

    -- ** ListBreakpointsResponse
    , ListBreakpointsResponse
    , listBreakpointsResponse
    , lbrNextWaitToken
    , lbrBreakpoints

    -- ** ListDebuggeesResponse
    , ListDebuggeesResponse
    , listDebuggeesResponse
    , ldrDebuggees

    -- ** UpdateActiveBreakpointRequest
    , UpdateActiveBreakpointRequest
    , updateActiveBreakpointRequest
    , uabrBreakpoint

    -- ** StatusMessage
    , StatusMessage
    , statusMessage
    , smRefersTo
    , smIsError
    , smDescription

    -- ** ListActiveBreakpointsResponse
    , ListActiveBreakpointsResponse
    , listActiveBreakpointsResponse
    , labrNextWaitToken
    , labrBreakpoints

    -- ** GitSourceContext
    , GitSourceContext
    , gitSourceContext
    , gUrl
    , gRevisionId

    -- ** SourceLocation
    , SourceLocation
    , sourceLocation
    , slPath
    , slLine

    -- ** StackFrame
    , StackFrame
    , stackFrame
    , sfFunction
    , sfLocation
    , sfArguments
    , sfLocals

    -- ** DebuggeeLabels
    , DebuggeeLabels
    , debuggeeLabels

    -- ** CloudRepoSourceContext
    , CloudRepoSourceContext
    , cloudRepoSourceContext
    , crscRepoId
    , crscAliasName
    , crscRevisionId

    -- ** RegisterDebuggeeRequest
    , RegisterDebuggeeRequest
    , registerDebuggeeRequest
    , rDebuggee

    -- ** CloudWorkspaceSourceContext
    , CloudWorkspaceSourceContext
    , cloudWorkspaceSourceContext
    , cwscWorkspaceId
    , cwscSnapshotId

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

    -- ** CloudWorkspaceId
    , CloudWorkspaceId
    , cloudWorkspaceId
    , cwiRepoId
    , cwiName
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Clouddebugger.Controller.Debuggees.Breakpoints.List
import           Network.Google.Resource.Clouddebugger.Controller.Debuggees.Breakpoints.Update
import           Network.Google.Resource.Clouddebugger.Controller.Debuggees.Register
import           Network.Google.Resource.Clouddebugger.Debugger.Debuggees.Breakpoints.Delete
import           Network.Google.Resource.Clouddebugger.Debugger.Debuggees.Breakpoints.Get
import           Network.Google.Resource.Clouddebugger.Debugger.Debuggees.Breakpoints.List
import           Network.Google.Resource.Clouddebugger.Debugger.Debuggees.Breakpoints.Set
import           Network.Google.Resource.Clouddebugger.Debugger.Debuggees.List

{- $resources
TODO
-}

type DebuggerAPI =
     ControllerDebuggeesBreakpointsListResource :<|>
       ControllerDebuggeesBreakpointsUpdateResource
       :<|> ControllerDebuggeesRegisterResource
       :<|> DebuggerDebuggeesBreakpointsSetResource
       :<|> DebuggerDebuggeesBreakpointsListResource
       :<|> DebuggerDebuggeesBreakpointsGetResource
       :<|> DebuggerDebuggeesBreakpointsDeleteResource
       :<|> DebuggerDebuggeesListResource

debuggerAPI :: Proxy DebuggerAPI
debuggerAPI = Proxy
