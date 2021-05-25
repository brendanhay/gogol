{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseRules.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseRules.Types
    (
    -- * Service Configuration
      firebaseRulesService

    -- * OAuth Scopes
    , firebaseScope
    , cloudPlatformScope
    , firebaseReadOnlyScope

    -- * SourcePosition
    , SourcePosition
    , sourcePosition
    , spCurrentOffSet
    , spLine
    , spEndOffSet
    , spColumn
    , spFileName

    -- * ExpressionReport
    , ExpressionReport
    , expressionReport
    , erSourcePosition
    , erValues
    , erChildren

    -- * TestCase
    , TestCase
    , testCase
    , tcExpressionReportLevel
    , tcPathEncoding
    , tcResource
    , tcExpectation
    , tcFunctionMocks
    , tcRequest

    -- * VisitedExpression
    , VisitedExpression
    , visitedExpression
    , veSourcePosition
    , veValue

    -- * Empty
    , Empty
    , empty

    -- * FunctionMock
    , FunctionMock
    , functionMock
    , fmArgs
    , fmFunction
    , fmResult

    -- * ProjectsReleasesGetExecutableExecutableVersion
    , ProjectsReleasesGetExecutableExecutableVersion (..)

    -- * TestCaseExpressionReportLevel
    , TestCaseExpressionReportLevel (..)

    -- * TestResultState
    , TestResultState (..)

    -- * FunctionCall
    , FunctionCall
    , functionCall
    , fcArgs
    , fcFunction

    -- * ListReleasesResponse
    , ListReleasesResponse
    , listReleasesResponse
    , lrrNextPageToken
    , lrrReleases

    -- * Result
    , Result
    , result
    , rValue
    , rUndefined

    -- * TestRulesetResponse
    , TestRulesetResponse
    , testRulesetResponse
    , trrTestResults
    , trrIssues

    -- * Release
    , Release
    , release
    , rRulesetName
    , rUpdateTime
    , rName
    , rCreateTime

    -- * Arg
    , Arg
    , arg
    , aAnyValue
    , aExactValue

    -- * Ruleset
    , Ruleset
    , ruleset
    , rulName
    , rulMetadata
    , rulSource
    , rulCreateTime

    -- * GetReleaseExecutableResponse
    , GetReleaseExecutableResponse
    , getReleaseExecutableResponse
    , grerExecutable
    , grerRulesetName
    , grerUpdateTime
    , grerSyncTime
    , grerExecutableVersion
    , grerLanguage

    -- * TestCasePathEncoding
    , TestCasePathEncoding (..)

    -- * TestResult
    , TestResult
    , testResult
    , trState
    , trExpressionReports
    , trFunctionCalls
    , trVisitedExpressions
    , trErrorPosition
    , trDebugMessages

    -- * Xgafv
    , Xgafv (..)

    -- * IssueSeverity
    , IssueSeverity (..)

    -- * Metadata
    , Metadata
    , metadata
    , mServices

    -- * Source
    , Source
    , source
    , sFiles

    -- * TestCaseExpectation
    , TestCaseExpectation (..)

    -- * ValueCount
    , ValueCount
    , valueCount
    , vcValue
    , vcCount

    -- * TestSuite
    , TestSuite
    , testSuite
    , tsTestCases

    -- * TestRulesetRequest
    , TestRulesetRequest
    , testRulesetRequest
    , trrSource
    , trrTestSuite

    -- * File
    , File
    , file
    , fFingerprint
    , fContent
    , fName

    -- * GetReleaseExecutableResponseExecutableVersion
    , GetReleaseExecutableResponseExecutableVersion (..)

    -- * GetReleaseExecutableResponseLanguage
    , GetReleaseExecutableResponseLanguage (..)

    -- * ListRulesetsResponse
    , ListRulesetsResponse
    , listRulesetsResponse
    , lRulesets
    , lNextPageToken

    -- * Issue
    , Issue
    , issue
    , iSourcePosition
    , iSeverity
    , iDescription

    -- * UpdateReleaseRequest
    , UpdateReleaseRequest
    , updateReleaseRequest
    , urrUpdateMask
    , urrRelease
    ) where

import Network.Google.FirebaseRules.Types.Product
import Network.Google.FirebaseRules.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Firebase Rules API. This contains the host and root path used as a starting point for constructing service requests.
firebaseRulesService :: ServiceConfig
firebaseRulesService
  = defaultService (ServiceId "firebaserules:v1")
      "firebaserules.googleapis.com"

-- | View and administer all your Firebase data and settings
firebaseScope :: Proxy '["https://www.googleapis.com/auth/firebase"]
firebaseScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View all your Firebase data and settings
firebaseReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/firebase.readonly"]
firebaseReadOnlyScope = Proxy
