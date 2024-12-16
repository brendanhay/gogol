{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FirebaseRules
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages rules that determine when a Firebase Rules-enabled service should permit a request.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference>
module Gogol.FirebaseRules
    (
    -- * Configuration
      firebaseRulesService

    -- * OAuth Scopes
    , CloudPlatform'FullControl
    , Firebase'FullControl
    , Firebase'Readonly

    -- * Resources

    -- ** firebaserules.projects.releases.create
    , FirebaseRulesProjectsReleasesCreateResource
    , FirebaseRulesProjectsReleasesCreate (..)
    , newFirebaseRulesProjectsReleasesCreate

    -- ** firebaserules.projects.releases.delete
    , FirebaseRulesProjectsReleasesDeleteResource
    , FirebaseRulesProjectsReleasesDelete (..)
    , newFirebaseRulesProjectsReleasesDelete

    -- ** firebaserules.projects.releases.get
    , FirebaseRulesProjectsReleasesGetResource
    , FirebaseRulesProjectsReleasesGet (..)
    , newFirebaseRulesProjectsReleasesGet

    -- ** firebaserules.projects.releases.getExecutable
    , FirebaseRulesProjectsReleasesGetExecutableResource
    , FirebaseRulesProjectsReleasesGetExecutable (..)
    , newFirebaseRulesProjectsReleasesGetExecutable

    -- ** firebaserules.projects.releases.list
    , FirebaseRulesProjectsReleasesListResource
    , FirebaseRulesProjectsReleasesList (..)
    , newFirebaseRulesProjectsReleasesList

    -- ** firebaserules.projects.releases.patch
    , FirebaseRulesProjectsReleasesPatchResource
    , FirebaseRulesProjectsReleasesPatch (..)
    , newFirebaseRulesProjectsReleasesPatch

    -- ** firebaserules.projects.rulesets.create
    , FirebaseRulesProjectsRulesetsCreateResource
    , FirebaseRulesProjectsRulesetsCreate (..)
    , newFirebaseRulesProjectsRulesetsCreate

    -- ** firebaserules.projects.rulesets.delete
    , FirebaseRulesProjectsRulesetsDeleteResource
    , FirebaseRulesProjectsRulesetsDelete (..)
    , newFirebaseRulesProjectsRulesetsDelete

    -- ** firebaserules.projects.rulesets.get
    , FirebaseRulesProjectsRulesetsGetResource
    , FirebaseRulesProjectsRulesetsGet (..)
    , newFirebaseRulesProjectsRulesetsGet

    -- ** firebaserules.projects.rulesets.list
    , FirebaseRulesProjectsRulesetsListResource
    , FirebaseRulesProjectsRulesetsList (..)
    , newFirebaseRulesProjectsRulesetsList

    -- ** firebaserules.projects.test
    , FirebaseRulesProjectsTestResource
    , FirebaseRulesProjectsTest (..)
    , newFirebaseRulesProjectsTest

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Arg
    , Arg (..)
    , newArg

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** ExpressionReport
    , ExpressionReport (..)
    , newExpressionReport

    -- ** File
    , File (..)
    , newFile

    -- ** FunctionCall
    , FunctionCall (..)
    , newFunctionCall

    -- ** FunctionMock
    , FunctionMock (..)
    , newFunctionMock

    -- ** GetReleaseExecutableResponse
    , GetReleaseExecutableResponse (..)
    , newGetReleaseExecutableResponse

    -- ** GetReleaseExecutableResponse_ExecutableVersion
    , GetReleaseExecutableResponse_ExecutableVersion (..)

    -- ** GetReleaseExecutableResponse_Language
    , GetReleaseExecutableResponse_Language (..)

    -- ** Issue
    , Issue (..)
    , newIssue

    -- ** Issue_Severity
    , Issue_Severity (..)

    -- ** ListReleasesResponse
    , ListReleasesResponse (..)
    , newListReleasesResponse

    -- ** ListRulesetsResponse
    , ListRulesetsResponse (..)
    , newListRulesetsResponse

    -- ** Metadata
    , Metadata (..)
    , newMetadata

    -- ** Release
    , Release (..)
    , newRelease

    -- ** Result
    , Result (..)
    , newResult

    -- ** Ruleset
    , Ruleset (..)
    , newRuleset

    -- ** Source
    , Source (..)
    , newSource

    -- ** SourcePosition
    , SourcePosition (..)
    , newSourcePosition

    -- ** TestCase
    , TestCase (..)
    , newTestCase

    -- ** TestCase_Expectation
    , TestCase_Expectation (..)

    -- ** TestCase_ExpressionReportLevel
    , TestCase_ExpressionReportLevel (..)

    -- ** TestCase_PathEncoding
    , TestCase_PathEncoding (..)

    -- ** TestResult
    , TestResult (..)
    , newTestResult

    -- ** TestResult_State
    , TestResult_State (..)

    -- ** TestRulesetRequest
    , TestRulesetRequest (..)
    , newTestRulesetRequest

    -- ** TestRulesetResponse
    , TestRulesetResponse (..)
    , newTestRulesetResponse

    -- ** TestSuite
    , TestSuite (..)
    , newTestSuite

    -- ** UpdateReleaseRequest
    , UpdateReleaseRequest (..)
    , newUpdateReleaseRequest

    -- ** ValueCount
    , ValueCount (..)
    , newValueCount

    -- ** VisitedExpression
    , VisitedExpression (..)
    , newVisitedExpression

    -- ** ProjectsReleasesGetExecutableExecutableVersion
    , ProjectsReleasesGetExecutableExecutableVersion (..)
    ) where

import Gogol.FirebaseRules.Projects.Releases.Create
import Gogol.FirebaseRules.Projects.Releases.Delete
import Gogol.FirebaseRules.Projects.Releases.Get
import Gogol.FirebaseRules.Projects.Releases.GetExecutable
import Gogol.FirebaseRules.Projects.Releases.List
import Gogol.FirebaseRules.Projects.Releases.Patch
import Gogol.FirebaseRules.Projects.Rulesets.Create
import Gogol.FirebaseRules.Projects.Rulesets.Delete
import Gogol.FirebaseRules.Projects.Rulesets.Get
import Gogol.FirebaseRules.Projects.Rulesets.List
import Gogol.FirebaseRules.Projects.Test
import Gogol.FirebaseRules.Types
