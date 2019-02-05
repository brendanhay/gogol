{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FirebaseRules
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages rules that determine when a Firebase Rules-enabled
-- service should permit a request.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference>
module Network.Google.FirebaseRules
    (
    -- * Service Configuration
      firebaseRulesService

    -- * OAuth Scopes
    , firebaseScope
    , cloudPlatformScope
    , firebaseReadOnlyScope

    -- * API Declaration
    , FirebaseRulesAPI

    -- * Resources

    -- ** firebaserules.projects.releases.create
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.Create

    -- ** firebaserules.projects.releases.delete
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.Delete

    -- ** firebaserules.projects.releases.get
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.Get

    -- ** firebaserules.projects.releases.getExecutable
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.GetExecutable

    -- ** firebaserules.projects.releases.list
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.List

    -- ** firebaserules.projects.releases.patch
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.Patch

    -- ** firebaserules.projects.rulesets.create
    , module Network.Google.Resource.FirebaseRules.Projects.Rulesets.Create

    -- ** firebaserules.projects.rulesets.delete
    , module Network.Google.Resource.FirebaseRules.Projects.Rulesets.Delete

    -- ** firebaserules.projects.rulesets.get
    , module Network.Google.Resource.FirebaseRules.Projects.Rulesets.Get

    -- ** firebaserules.projects.rulesets.list
    , module Network.Google.Resource.FirebaseRules.Projects.Rulesets.List

    -- ** firebaserules.projects.test
    , module Network.Google.Resource.FirebaseRules.Projects.Test

    -- * Types

    -- ** SourcePosition
    , SourcePosition
    , sourcePosition
    , spLine
    , spColumn
    , spFileName

    -- ** TestCase
    , TestCase
    , testCase
    , tcResource
    , tcExpectation
    , tcFunctionMocks
    , tcRequest

    -- ** VisitedExpression
    , VisitedExpression
    , visitedExpression
    , veSourcePosition
    , veValue

    -- ** Empty
    , Empty
    , empty

    -- ** FunctionMock
    , FunctionMock
    , functionMock
    , fmArgs
    , fmFunction
    , fmResult

    -- ** TestResultState
    , TestResultState (..)

    -- ** FunctionCall
    , FunctionCall
    , functionCall
    , fcArgs
    , fcFunction

    -- ** ListReleasesResponse
    , ListReleasesResponse
    , listReleasesResponse
    , lrrNextPageToken
    , lrrReleases

    -- ** Result
    , Result
    , result
    , rValue
    , rUndefined

    -- ** TestRulesetResponse
    , TestRulesetResponse
    , testRulesetResponse
    , trrTestResults
    , trrIssues

    -- ** Release
    , Release
    , release
    , rRulesetName
    , rUpdateTime
    , rName
    , rCreateTime

    -- ** Arg
    , Arg
    , arg
    , aAnyValue
    , aExactValue

    -- ** Ruleset
    , Ruleset
    , ruleset
    , rulName
    , rulSource
    , rulCreateTime

    -- ** GetReleaseExecutableResponse
    , GetReleaseExecutableResponse
    , getReleaseExecutableResponse
    , grerExecutable
    , grerRulesetName
    , grerUpdateTime
    , grerSyncTime
    , grerExecutableVersion
    , grerLanguage

    -- ** TestResult
    , TestResult
    , testResult
    , trState
    , trFunctionCalls
    , trVisitedExpressions
    , trErrorPosition
    , trDebugMessages

    -- ** Xgafv
    , Xgafv (..)

    -- ** IssueSeverity
    , IssueSeverity (..)

    -- ** Source
    , Source
    , source
    , sFiles

    -- ** TestCaseExpectation
    , TestCaseExpectation (..)

    -- ** TestSuite
    , TestSuite
    , testSuite
    , tsTestCases

    -- ** TestRulesetRequest
    , TestRulesetRequest
    , testRulesetRequest
    , trrSource
    , trrTestSuite

    -- ** File
    , File
    , file
    , fFingerprint
    , fContent
    , fName

    -- ** GetReleaseExecutableResponseExecutableVersion
    , GetReleaseExecutableResponseExecutableVersion (..)

    -- ** GetReleaseExecutableResponseLanguage
    , GetReleaseExecutableResponseLanguage (..)

    -- ** ListRulesetsResponse
    , ListRulesetsResponse
    , listRulesetsResponse
    , lRulesets
    , lNextPageToken

    -- ** Issue
    , Issue
    , issue
    , iSourcePosition
    , iSeverity
    , iDescription

    -- ** UpdateReleaseRequest
    , UpdateReleaseRequest
    , updateReleaseRequest
    , urrUpdateMask
    , urrRelease
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude
import           Network.Google.Resource.FirebaseRules.Projects.Releases.Create
import           Network.Google.Resource.FirebaseRules.Projects.Releases.Delete
import           Network.Google.Resource.FirebaseRules.Projects.Releases.Get
import           Network.Google.Resource.FirebaseRules.Projects.Releases.GetExecutable
import           Network.Google.Resource.FirebaseRules.Projects.Releases.List
import           Network.Google.Resource.FirebaseRules.Projects.Releases.Patch
import           Network.Google.Resource.FirebaseRules.Projects.Rulesets.Create
import           Network.Google.Resource.FirebaseRules.Projects.Rulesets.Delete
import           Network.Google.Resource.FirebaseRules.Projects.Rulesets.Get
import           Network.Google.Resource.FirebaseRules.Projects.Rulesets.List
import           Network.Google.Resource.FirebaseRules.Projects.Test

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Firebase Rules API service.
type FirebaseRulesAPI =
     ProjectsRulesetsListResource :<|>
       ProjectsRulesetsGetResource
       :<|> ProjectsRulesetsCreateResource
       :<|> ProjectsRulesetsDeleteResource
       :<|> ProjectsReleasesListResource
       :<|> ProjectsReleasesPatchResource
       :<|> ProjectsReleasesGetResource
       :<|> ProjectsReleasesGetExecutableResource
       :<|> ProjectsReleasesCreateResource
       :<|> ProjectsReleasesDeleteResource
       :<|> ProjectsTestResource
