{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Debugger
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Examines the call stack and variables of a running application without
-- stopping or slowing it down.
--
-- /See:/ <http://cloud.google.com/debugger Stackdriver Debugger API Reference>
module Network.Google.Debugger
    (
    -- * Service Configuration
      debuggerService

    -- * OAuth Scopes
    , cloudDebuggerScope
    , cloudPlatformScope

    -- * API Declaration
    , DebuggerAPI

    -- * Resources

    -- ** clouddebugger.controller.debuggees.breakpoints.list
    , module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.List

    -- ** clouddebugger.controller.debuggees.breakpoints.update
    , module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.Update

    -- ** clouddebugger.controller.debuggees.register
    , module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Register

    -- ** clouddebugger.debugger.debuggees.breakpoints.delete
    , module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Delete

    -- ** clouddebugger.debugger.debuggees.breakpoints.get
    , module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Get

    -- ** clouddebugger.debugger.debuggees.breakpoints.list
    , module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.List

    -- ** clouddebugger.debugger.debuggees.breakpoints.set
    , module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Set

    -- ** clouddebugger.debugger.debuggees.list
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
    , gscAliasContext

    -- ** RepoId
    , RepoId
    , repoId
    , riUid
    , riProjectRepoId

    -- ** ExtendedSourceContextLabels
    , ExtendedSourceContextLabels
    , extendedSourceContextLabels
    , esclAddtional

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
    , bLabels
    , bUserEmail
    , bVariableTable
    , bStackFrames
    , bCondition
    , bEvaluatedExpressions
    , bCreateTime
    , bIsFinalState

    -- ** BreakpointLabels
    , BreakpointLabels
    , breakpointLabels
    , blAddtional

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
    , vType

    -- ** ListBreakpointsResponse
    , ListBreakpointsResponse
    , listBreakpointsResponse
    , lbrNextWaitToken
    , lbrBreakpoints

    -- ** StatusMessageRefersTo
    , StatusMessageRefersTo (..)

    -- ** BreakpointLogLevel
    , BreakpointLogLevel (..)

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

    -- ** Xgafv
    , Xgafv (..)

    -- ** BreakpointAction
    , BreakpointAction (..)

    -- ** ListActiveBreakpointsResponse
    , ListActiveBreakpointsResponse
    , listActiveBreakpointsResponse
    , labrNextWaitToken
    , labrBreakpoints
    , labrWaitExpired

    -- ** ExtendedSourceContext
    , ExtendedSourceContext
    , extendedSourceContext
    , escContext
    , escLabels

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
    , crscAliasContext

    -- ** DebuggeeLabels
    , DebuggeeLabels
    , debuggeeLabels
    , dlAddtional

    -- ** Debuggee
    , Debuggee
    , debuggee
    , dStatus
    , dUniquifier
    , dProject
    , dExtSourceContexts
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

    -- ** AliasContext
    , AliasContext
    , aliasContext
    , acKind
    , acName

    -- ** AliasContextKind
    , AliasContextKind (..)

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

-- | Represents the entirety of the methods and resources available for the Stackdriver Debugger API service.
type DebuggerAPI =
     ControllerDebuggeesBreakpointsListResource :<|>
       ControllerDebuggeesBreakpointsUpdateResource
       :<|> ControllerDebuggeesRegisterResource
       :<|> DebuggerDebuggeesBreakpointsSetResource
       :<|> DebuggerDebuggeesBreakpointsListResource
       :<|> DebuggerDebuggeesBreakpointsGetResource
       :<|> DebuggerDebuggeesBreakpointsDeleteResource
       :<|> DebuggerDebuggeesListResource
