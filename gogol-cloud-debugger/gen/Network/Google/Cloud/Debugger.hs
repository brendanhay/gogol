{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Cloud.Debugger
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
module Network.Google.Cloud.Debugger
    (
    -- * Resources
      CloudDebugger
    , ControllerAPI
    , DebuggeesAPI
    , BreakpointsAPI
    , BreakpointsList
    , BreakpointsUpdate
    , DebuggerAPI
    , DebuggeesAPI
    , BreakpointsAPI
    , BreakpointsSet
    , BreakpointsList
    , BreakpointsGet
    , BreakpointsDelete

    -- * Types

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

    -- ** CloudRepoSourceContext
    , CloudRepoSourceContext
    , cloudRepoSourceContext
    , crscRepoId
    , crscAliasName
    , crscRevisionId

    -- ** CloudWorkspaceId
    , CloudWorkspaceId
    , cloudWorkspaceId
    , cwiRepoId
    , cwiName

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

    -- ** DebuggeeLabels
    , DebuggeeLabels
    , debuggeeLabels

    -- ** Empty
    , Empty
    , empty

    -- ** FormatMessage
    , FormatMessage
    , formatMessage
    , fmFormat
    , fmParameters

    -- ** GerritSourceContext
    , GerritSourceContext
    , gerritSourceContext
    , gGerritProject
    , gAliasName
    , gRevisionId
    , gHostUri

    -- ** GetBreakpointResponse
    , GetBreakpointResponse
    , getBreakpointResponse
    , gbrBreakpoint

    -- ** GitSourceContext
    , GitSourceContext
    , gitSourceContext
    , gscUrl
    , gscRevisionId

    -- ** ListActiveBreakpointsResponse
    , ListActiveBreakpointsResponse
    , listActiveBreakpointsResponse
    , labrNextWaitToken
    , labrBreakpoints

    -- ** ListBreakpointsResponse
    , ListBreakpointsResponse
    , listBreakpointsResponse
    , lbrNextWaitToken
    , lbrBreakpoints

    -- ** ListDebuggeesResponse
    , ListDebuggeesResponse
    , listDebuggeesResponse
    , ldrDebuggees

    -- ** ProjectRepoId
    , ProjectRepoId
    , projectRepoId
    , priRepoName
    , priProjectId

    -- ** RegisterDebuggeeRequest
    , RegisterDebuggeeRequest
    , registerDebuggeeRequest
    , rDebuggee

    -- ** RegisterDebuggeeResponse
    , RegisterDebuggeeResponse
    , registerDebuggeeResponse
    , rdrDebuggee

    -- ** RepoId
    , RepoId
    , repoId
    , riUid
    , riProjectRepoId

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

    -- ** UpdateActiveBreakpointResponse
    , UpdateActiveBreakpointResponse
    , updateActiveBreakpointResponse

    -- ** Variable
    , Variable
    , variable
    , vStatus
    , vVarTableIndex
    , vMembers
    , vValue
    , vName
    ) where

import           Network.Google.Cloud.Debugger.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type CloudDebugger = ControllerAPI :<|> DebuggerAPI

type ControllerAPI = DebuggeesAPI

type DebuggeesAPI = BreakpointsAPI

type BreakpointsAPI =
     BreakpointsList :<|> BreakpointsUpdate

-- | Returns the list of all active breakpoints for the specified debuggee.
-- The breakpoint specification (location, condition, and expression
-- fields) is semantically immutable, although the field values may change.
-- For example, an agent may update the location line number to reflect the
-- actual line the breakpoint was set to, but that doesn\'t change the
-- breakpoint semantics. Thus, an agent does not need to check if a
-- breakpoint has changed when it encounters the same breakpoint on a
-- successive call. Moreover, an agent should remember breakpoints that are
-- complete until the controller removes them from the active list to avoid
-- setting those breakpoints again.
type BreakpointsList =
     "v2" :> "controller" :> "debuggees" :>
       Capture "debuggeeId" Text
       :> "breakpoints"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "waitToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Updates the breakpoint state or mutable fields. The entire Breakpoint
-- protobuf must be sent back to the controller. Updates to active
-- breakpoint fields are only allowed if the new value does not change the
-- breakpoint specification. Updates to the \'location\', \'condition\' and
-- \'expression\' fields should not alter the breakpoint semantics. They
-- are restricted to changes such as canonicalizing a value or snapping the
-- location to the correct line of code.
type BreakpointsUpdate =
     "v2" :> "controller" :> "debuggees" :>
       Capture "debuggeeId" Text
       :> "breakpoints"
       :> Capture "id" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type DebuggerAPI = DebuggeesAPI

type DebuggeesAPI = BreakpointsAPI

type BreakpointsAPI =
     BreakpointsSet :<|> BreakpointsList :<|>
       BreakpointsGet
       :<|> BreakpointsDelete

-- | Sets the breakpoint to the debuggee.
type BreakpointsSet =
     "v2" :> "debugger" :> "debuggees" :>
       Capture "debuggeeId" Text
       :> "breakpoints"
       :> "set"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Lists all breakpoints of the debuggee that the user has access to.
type BreakpointsList =
     "v2" :> "debugger" :> "debuggees" :>
       Capture "debuggeeId" Text
       :> "breakpoints"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "includeInactive" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "action.value" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "stripResults" Bool
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "includeAllUsers" Bool
       :> QueryParam "waitToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets breakpoint information.
type BreakpointsGet =
     "v2" :> "debugger" :> "debuggees" :>
       Capture "debuggeeId" Text
       :> "breakpoints"
       :> Capture "breakpointId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Deletes the breakpoint from the debuggee.
type BreakpointsDelete =
     "v2" :> "debugger" :> "debuggees" :>
       Capture "debuggeeId" Text
       :> "breakpoints"
       :> Capture "breakpointId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text
