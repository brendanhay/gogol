{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

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
    , cloudPlatformScope
    , firebaseScope
    , firebaseReadOnlyScope

    -- * Resources

    -- ** firebaserules.projects.releases.create
    , FirebaseRulesProjectsReleasesCreateResource
    , newFirebaseRulesProjectsReleasesCreate
    , FirebaseRulesProjectsReleasesCreate

    -- ** firebaserules.projects.releases.delete
    , FirebaseRulesProjectsReleasesDeleteResource
    , newFirebaseRulesProjectsReleasesDelete
    , FirebaseRulesProjectsReleasesDelete

    -- ** firebaserules.projects.releases.get
    , FirebaseRulesProjectsReleasesGetResource
    , newFirebaseRulesProjectsReleasesGet
    , FirebaseRulesProjectsReleasesGet

    -- ** firebaserules.projects.releases.getExecutable
    , FirebaseRulesProjectsReleasesGetExecutableResource
    , newFirebaseRulesProjectsReleasesGetExecutable
    , FirebaseRulesProjectsReleasesGetExecutable

    -- ** firebaserules.projects.releases.list
    , FirebaseRulesProjectsReleasesListResource
    , newFirebaseRulesProjectsReleasesList
    , FirebaseRulesProjectsReleasesList

    -- ** firebaserules.projects.releases.patch
    , FirebaseRulesProjectsReleasesPatchResource
    , newFirebaseRulesProjectsReleasesPatch
    , FirebaseRulesProjectsReleasesPatch

    -- ** firebaserules.projects.rulesets.create
    , FirebaseRulesProjectsRulesetsCreateResource
    , newFirebaseRulesProjectsRulesetsCreate
    , FirebaseRulesProjectsRulesetsCreate

    -- ** firebaserules.projects.rulesets.delete
    , FirebaseRulesProjectsRulesetsDeleteResource
    , newFirebaseRulesProjectsRulesetsDelete
    , FirebaseRulesProjectsRulesetsDelete

    -- ** firebaserules.projects.rulesets.get
    , FirebaseRulesProjectsRulesetsGetResource
    , newFirebaseRulesProjectsRulesetsGet
    , FirebaseRulesProjectsRulesetsGet

    -- ** firebaserules.projects.rulesets.list
    , FirebaseRulesProjectsRulesetsListResource
    , newFirebaseRulesProjectsRulesetsList
    , FirebaseRulesProjectsRulesetsList

    -- ** firebaserules.projects.test
    , FirebaseRulesProjectsTestResource
    , newFirebaseRulesProjectsTest
    , FirebaseRulesProjectsTest

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
