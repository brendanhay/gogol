{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FirebaseRules.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.FirebaseRules.Types
  ( -- * Configuration
    firebaseRulesService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Firebase'FullControl,
    Firebase'Readonly,

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

import Gogol.FirebaseRules.Internal.Product
import Gogol.FirebaseRules.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Firebase Rules API. This contains the host and root path used as a starting point for constructing service requests.
firebaseRulesService :: Core.ServiceConfig
firebaseRulesService =
  Core.defaultService
    (Core.ServiceId "firebaserules:v1")
    "firebaserules.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View and administer all your Firebase data and settings
type Firebase'FullControl =
  "https://www.googleapis.com/auth/firebase"

-- | View all your Firebase data and settings
type Firebase'Readonly =
  "https://www.googleapis.com/auth/firebase.readonly"
