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
-- Module      : Network.Google.FirebaseRules.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.FirebaseRules.Types
  ( -- * Configuration
    firebaseRulesService,

    -- * OAuth Scopes
    cloudPlatformScope,
    firebaseScope,
    firebaseReadOnlyScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Arg
    Arg (..),
    newArg,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** ExpressionReport
    ExpressionReport (..),
    newExpressionReport,

    -- ** File
    File (..),
    newFile,

    -- ** FunctionCall
    FunctionCall (..),
    newFunctionCall,

    -- ** FunctionMock
    FunctionMock (..),
    newFunctionMock,

    -- ** GetReleaseExecutableResponse
    GetReleaseExecutableResponse (..),
    newGetReleaseExecutableResponse,

    -- ** GetReleaseExecutableResponse_ExecutableVersion
    GetReleaseExecutableResponse_ExecutableVersion (..),

    -- ** GetReleaseExecutableResponse_Language
    GetReleaseExecutableResponse_Language (..),

    -- ** Issue
    Issue (..),
    newIssue,

    -- ** Issue_Severity
    Issue_Severity (..),

    -- ** ListReleasesResponse
    ListReleasesResponse (..),
    newListReleasesResponse,

    -- ** ListRulesetsResponse
    ListRulesetsResponse (..),
    newListRulesetsResponse,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** Release
    Release (..),
    newRelease,

    -- ** Result
    Result (..),
    newResult,

    -- ** Ruleset
    Ruleset (..),
    newRuleset,

    -- ** Source
    Source (..),
    newSource,

    -- ** SourcePosition
    SourcePosition (..),
    newSourcePosition,

    -- ** TestCase
    TestCase (..),
    newTestCase,

    -- ** TestCase_Expectation
    TestCase_Expectation (..),

    -- ** TestCase_ExpressionReportLevel
    TestCase_ExpressionReportLevel (..),

    -- ** TestCase_PathEncoding
    TestCase_PathEncoding (..),

    -- ** TestResult
    TestResult (..),
    newTestResult,

    -- ** TestResult_State
    TestResult_State (..),

    -- ** TestRulesetRequest
    TestRulesetRequest (..),
    newTestRulesetRequest,

    -- ** TestRulesetResponse
    TestRulesetResponse (..),
    newTestRulesetResponse,

    -- ** TestSuite
    TestSuite (..),
    newTestSuite,

    -- ** UpdateReleaseRequest
    UpdateReleaseRequest (..),
    newUpdateReleaseRequest,

    -- ** ValueCount
    ValueCount (..),
    newValueCount,

    -- ** VisitedExpression
    VisitedExpression (..),
    newVisitedExpression,

    -- ** ProjectsReleasesGetExecutableExecutableVersion
    ProjectsReleasesGetExecutableExecutableVersion (..),
  )
where

import Network.Google.FirebaseRules.Internal.Product
import Network.Google.FirebaseRules.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Firebase Rules API. This contains the host and root path used as a starting point for constructing service requests.
firebaseRulesService :: Core.ServiceConfig
firebaseRulesService =
  Core.defaultService
    (Core.ServiceId "firebaserules:v1")
    "firebaserules.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View and administer all your Firebase data and settings
firebaseScope :: Core.Proxy '["https://www.googleapis.com/auth/firebase"]
firebaseScope = Core.Proxy

-- | View all your Firebase data and settings
firebaseReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/firebase.readonly"]
firebaseReadOnlyScope = Core.Proxy
