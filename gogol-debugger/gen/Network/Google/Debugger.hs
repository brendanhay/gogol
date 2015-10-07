{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | Lets you examine the stack and variables of your running application
-- without stopping or slowing it down.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference>
module Network.Google.Debugger
    (
    -- * API Declaration
      DebuggerAPI

    -- * Resources

    -- ** CloudDebuggerControllerDebuggeesBreakpointsList
    , module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.List

    -- ** CloudDebuggerControllerDebuggeesBreakpointsUpdate
    , module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.Update

    -- ** CloudDebuggerControllerDebuggeesRegister
    , module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Register

    -- ** CloudDebuggerDebuggerDebuggeesBreakpointsDelete
    , module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Delete

    -- ** CloudDebuggerDebuggerDebuggeesBreakpointsGet
    , module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Get

    -- ** CloudDebuggerDebuggerDebuggeesBreakpointsList
    , module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.List

    -- ** CloudDebuggerDebuggerDebuggeesBreakpointsSet
    , module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Set

    -- ** CloudDebuggerDebuggerDebuggeesList
    , module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.List

    -- * Types

    -- ** RegisterDebuggeeResponse
    , RegisterDebuggeeResponse
    , registerDebuggeeResponse
    , rdrDebuggee

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

    -- ** Empty
    , Empty
    , empty

    -- ** UpdateActiveBreakpointResponse
    , UpdateActiveBreakpointResponse
    , updateActiveBreakpointResponse

    -- ** GerritSourceContext
    , GerritSourceContext
    , gerritSourceContext
    , gscGerritProject
    , gscAliasName
    , gscRevisionId
    , gscHostURI

    -- ** RepoId
    , RepoId
    , repoId
    , riUid
    , riProjectRepoId

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
    , gURL
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

    -- ** CloudRepoSourceContext
    , CloudRepoSourceContext
    , cloudRepoSourceContext
    , crscRepoId
    , crscAliasName
    , crscRevisionId

    -- ** DebuggeeLabels
    , DebuggeeLabels
    , debuggeeLabels

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

    -- ** CloudWorkspaceSourceContext
    , CloudWorkspaceSourceContext
    , cloudWorkspaceSourceContext
    , cwscWorkspaceId
    , cwscSnapshotId

    -- ** RegisterDebuggeeRequest
    , RegisterDebuggeeRequest
    , registerDebuggeeRequest
    , rDebuggee

    -- ** CloudWorkspaceId
    , CloudWorkspaceId
    , cloudWorkspaceId
    , cwiRepoId
    , cwiName
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.List
import           Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.Update
import           Network.Google.Resource.CloudDebugger.Controller.Debuggees.Register
import           Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Delete
import           Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Get
import           Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.List
import           Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Set
import           Network.Google.Resource.CloudDebugger.Debugger.Debuggees.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Debugger API service.
type DebuggerAPI =
     ControllerDebuggeesBreakpointsListResource :<|>
       ControllerDebuggeesBreakpointsUpdateResource
       :<|> ControllerDebuggeesRegisterResource
       :<|> DebuggerDebuggeesBreakpointsSetResource
       :<|> DebuggerDebuggeesBreakpointsListResource
       :<|> DebuggerDebuggeesBreakpointsGetResource
       :<|> DebuggerDebuggeesBreakpointsDeleteResource
       :<|> DebuggerDebuggeesListResource
