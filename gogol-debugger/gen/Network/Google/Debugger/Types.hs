{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Debugger.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Debugger.Types
    (
    -- * Service Configuration
      debuggerService

    -- * OAuth Scopes
    , cloudDebuggerScope
    , cloudPlatformScope

    -- * RegisterDebuggeeResponse
    , RegisterDebuggeeResponse
    , registerDebuggeeResponse
    , rdrDebuggee

    -- * SourceContext
    , SourceContext
    , sourceContext
    , scCloudWorkspace
    , scCloudRepo
    , scGerrit
    , scGit

    -- * SetBreakpointResponse
    , SetBreakpointResponse
    , setBreakpointResponse
    , sbrBreakpoint

    -- * Empty
    , Empty
    , empty

    -- * UpdateActiveBreakpointResponse
    , UpdateActiveBreakpointResponse
    , updateActiveBreakpointResponse

    -- * GerritSourceContext
    , GerritSourceContext
    , gerritSourceContext
    , gscGerritProject
    , gscAliasName
    , gscRevisionId
    , gscHostURI
    , gscAliasContext

    -- * RepoId
    , RepoId
    , repoId
    , riUid
    , riProjectRepoId

    -- * ExtendedSourceContextLabels
    , ExtendedSourceContextLabels
    , extendedSourceContextLabels
    , esclAddtional

    -- * ProjectRepoId
    , ProjectRepoId
    , projectRepoId
    , priRepoName
    , priProjectId

    -- * FormatMessage
    , FormatMessage
    , formatMessage
    , fmFormat
    , fmParameters

    -- * Breakpoint
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

    -- * BreakpointLabels
    , BreakpointLabels
    , breakpointLabels
    , blAddtional

    -- * GetBreakpointResponse
    , GetBreakpointResponse
    , getBreakpointResponse
    , gbrBreakpoint

    -- * Variable
    , Variable
    , variable
    , vStatus
    , vVarTableIndex
    , vMembers
    , vValue
    , vName
    , vType

    -- * ListBreakpointsResponse
    , ListBreakpointsResponse
    , listBreakpointsResponse
    , lbrNextWaitToken
    , lbrBreakpoints

    -- * StatusMessageRefersTo
    , StatusMessageRefersTo (..)

    -- * BreakpointLogLevel
    , BreakpointLogLevel (..)

    -- * ListDebuggeesResponse
    , ListDebuggeesResponse
    , listDebuggeesResponse
    , ldrDebuggees

    -- * UpdateActiveBreakpointRequest
    , UpdateActiveBreakpointRequest
    , updateActiveBreakpointRequest
    , uabrBreakpoint

    -- * StatusMessage
    , StatusMessage
    , statusMessage
    , smRefersTo
    , smIsError
    , smDescription

    -- * Xgafv
    , Xgafv (..)

    -- * BreakpointAction
    , BreakpointAction (..)

    -- * ListActiveBreakpointsResponse
    , ListActiveBreakpointsResponse
    , listActiveBreakpointsResponse
    , labrNextWaitToken
    , labrBreakpoints
    , labrWaitExpired

    -- * ExtendedSourceContext
    , ExtendedSourceContext
    , extendedSourceContext
    , escContext
    , escLabels

    -- * GitSourceContext
    , GitSourceContext
    , gitSourceContext
    , gURL
    , gRevisionId

    -- * SourceLocation
    , SourceLocation
    , sourceLocation
    , slPath
    , slLine
    , slColumn

    -- * StackFrame
    , StackFrame
    , stackFrame
    , sfFunction
    , sfLocation
    , sfArguments
    , sfLocals

    -- * CloudRepoSourceContext
    , CloudRepoSourceContext
    , cloudRepoSourceContext
    , crscRepoId
    , crscAliasName
    , crscRevisionId
    , crscAliasContext

    -- * DebuggeeLabels
    , DebuggeeLabels
    , debuggeeLabels
    , dlAddtional

    -- * Debuggee
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

    -- * CloudWorkspaceSourceContext
    , CloudWorkspaceSourceContext
    , cloudWorkspaceSourceContext
    , cwscWorkspaceId
    , cwscSnapshotId

    -- * RegisterDebuggeeRequest
    , RegisterDebuggeeRequest
    , registerDebuggeeRequest
    , rDebuggee

    -- * AliasContext
    , AliasContext
    , aliasContext
    , acKind
    , acName

    -- * AliasContextKind
    , AliasContextKind (..)

    -- * CloudWorkspaceId
    , CloudWorkspaceId
    , cloudWorkspaceId
    , cwiRepoId
    , cwiName
    ) where

import           Network.Google.Debugger.Types.Product
import           Network.Google.Debugger.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the Stackdriver Debugger API. This contains the host and root path used as a starting point for constructing service requests.
debuggerService :: ServiceConfig
debuggerService
  = defaultService (ServiceId "clouddebugger:v2")
      "clouddebugger.googleapis.com"

-- | Use Stackdriver Debugger
cloudDebuggerScope :: Proxy '["https://www.googleapis.com/auth/cloud_debugger"]
cloudDebuggerScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
