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
-- Module      : Gogol.FirebaseRules.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.FirebaseRules.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GetReleaseExecutableResponse_ExecutableVersion
    GetReleaseExecutableResponse_ExecutableVersion
      (
        GetReleaseExecutableResponse_ExecutableVersion_RELEASEEXECUTABLEVERSIONUNSPECIFIED,
        GetReleaseExecutableResponse_ExecutableVersion_FIREBASE_RULES_EXECUTABLE_V1,
        GetReleaseExecutableResponse_ExecutableVersion_FIREBASE_RULES_EXECUTABLE_V2,
        ..
      ),

    -- * GetReleaseExecutableResponse_Language
    GetReleaseExecutableResponse_Language
      (
        GetReleaseExecutableResponse_Language_LANGUAGEUNSPECIFIED,
        GetReleaseExecutableResponse_Language_FIREBASERULES,
        GetReleaseExecutableResponse_Language_EVENTFLOWTRIGGERS,
        ..
      ),

    -- * Issue_Severity
    Issue_Severity
      (
        Issue_Severity_SEVERITYUNSPECIFIED,
        Issue_Severity_Deprecation,
        Issue_Severity_Warning,
        Issue_Severity_Error',
        ..
      ),

    -- * TestCase_Expectation
    TestCase_Expectation
      (
        TestCase_Expectation_EXPECTATIONUNSPECIFIED,
        TestCase_Expectation_Allow,
        TestCase_Expectation_Deny,
        ..
      ),

    -- * TestCase_ExpressionReportLevel
    TestCase_ExpressionReportLevel
      (
        TestCase_ExpressionReportLevel_LEVELUNSPECIFIED,
        TestCase_ExpressionReportLevel_None,
        TestCase_ExpressionReportLevel_Full,
        TestCase_ExpressionReportLevel_Visited,
        ..
      ),

    -- * TestCase_PathEncoding
    TestCase_PathEncoding
      (
        TestCase_PathEncoding_ENCODINGUNSPECIFIED,
        TestCase_PathEncoding_URLENCODED,
        TestCase_PathEncoding_Plain,
        ..
      ),

    -- * TestResult_State
    TestResult_State
      (
        TestResult_State_STATEUNSPECIFIED,
        TestResult_State_Success,
        TestResult_State_Failure,
        ..
      ),

    -- * ProjectsReleasesGetExecutableExecutableVersion
    ProjectsReleasesGetExecutableExecutableVersion
      (
        ProjectsReleasesGetExecutableExecutableVersion_RELEASEEXECUTABLEVERSIONUNSPECIFIED,
        ProjectsReleasesGetExecutableExecutableVersion_FIREBASE_RULES_EXECUTABLE_V1,
        ProjectsReleasesGetExecutableExecutableVersion_FIREBASE_RULES_EXECUTABLE_V2,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | The Rules runtime version of the executable.
newtype GetReleaseExecutableResponse_ExecutableVersion = GetReleaseExecutableResponse_ExecutableVersion { fromGetReleaseExecutableResponse_ExecutableVersion :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Executable format unspecified. Defaults to FIREBASE/RULES/EXECUTABLE_V1
pattern GetReleaseExecutableResponse_ExecutableVersion_RELEASEEXECUTABLEVERSIONUNSPECIFIED :: GetReleaseExecutableResponse_ExecutableVersion
pattern GetReleaseExecutableResponse_ExecutableVersion_RELEASEEXECUTABLEVERSIONUNSPECIFIED = GetReleaseExecutableResponse_ExecutableVersion "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED"

-- | Firebase Rules syntax \'rules2\' executable versions: Custom AST for use with Java clients.
pattern GetReleaseExecutableResponse_ExecutableVersion_FIREBASE_RULES_EXECUTABLE_V1 :: GetReleaseExecutableResponse_ExecutableVersion
pattern GetReleaseExecutableResponse_ExecutableVersion_FIREBASE_RULES_EXECUTABLE_V1 = GetReleaseExecutableResponse_ExecutableVersion "FIREBASE_RULES_EXECUTABLE_V1"

-- | CEL-based executable for use with C++ clients.
pattern GetReleaseExecutableResponse_ExecutableVersion_FIREBASE_RULES_EXECUTABLE_V2 :: GetReleaseExecutableResponse_ExecutableVersion
pattern GetReleaseExecutableResponse_ExecutableVersion_FIREBASE_RULES_EXECUTABLE_V2 = GetReleaseExecutableResponse_ExecutableVersion "FIREBASE_RULES_EXECUTABLE_V2"

{-# COMPLETE
  GetReleaseExecutableResponse_ExecutableVersion_RELEASEEXECUTABLEVERSIONUNSPECIFIED,
  GetReleaseExecutableResponse_ExecutableVersion_FIREBASE_RULES_EXECUTABLE_V1,
  GetReleaseExecutableResponse_ExecutableVersion_FIREBASE_RULES_EXECUTABLE_V2,
  GetReleaseExecutableResponse_ExecutableVersion #-}

-- | @Language@ used to generate the executable bytes.
newtype GetReleaseExecutableResponse_Language = GetReleaseExecutableResponse_Language { fromGetReleaseExecutableResponse_Language :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Language unspecified. Defaults to FIREBASE_RULES.
pattern GetReleaseExecutableResponse_Language_LANGUAGEUNSPECIFIED :: GetReleaseExecutableResponse_Language
pattern GetReleaseExecutableResponse_Language_LANGUAGEUNSPECIFIED = GetReleaseExecutableResponse_Language "LANGUAGE_UNSPECIFIED"

-- | Firebase Rules language.
pattern GetReleaseExecutableResponse_Language_FIREBASERULES :: GetReleaseExecutableResponse_Language
pattern GetReleaseExecutableResponse_Language_FIREBASERULES = GetReleaseExecutableResponse_Language "FIREBASE_RULES"

-- | Event Flow triggers.
pattern GetReleaseExecutableResponse_Language_EVENTFLOWTRIGGERS :: GetReleaseExecutableResponse_Language
pattern GetReleaseExecutableResponse_Language_EVENTFLOWTRIGGERS = GetReleaseExecutableResponse_Language "EVENT_FLOW_TRIGGERS"

{-# COMPLETE
  GetReleaseExecutableResponse_Language_LANGUAGEUNSPECIFIED,
  GetReleaseExecutableResponse_Language_FIREBASERULES,
  GetReleaseExecutableResponse_Language_EVENTFLOWTRIGGERS,
  GetReleaseExecutableResponse_Language #-}

-- | The severity of the issue.
newtype Issue_Severity = Issue_Severity { fromIssue_Severity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | An unspecified severity.
pattern Issue_Severity_SEVERITYUNSPECIFIED :: Issue_Severity
pattern Issue_Severity_SEVERITYUNSPECIFIED = Issue_Severity "SEVERITY_UNSPECIFIED"

-- | Deprecation issue for statements and method that may no longer be supported or maintained.
pattern Issue_Severity_Deprecation :: Issue_Severity
pattern Issue_Severity_Deprecation = Issue_Severity "DEPRECATION"

-- | Warnings such as: unused variables.
pattern Issue_Severity_Warning :: Issue_Severity
pattern Issue_Severity_Warning = Issue_Severity "WARNING"

-- | Errors such as: unmatched curly braces or variable redefinition.
pattern Issue_Severity_Error' :: Issue_Severity
pattern Issue_Severity_Error' = Issue_Severity "ERROR"

{-# COMPLETE
  Issue_Severity_SEVERITYUNSPECIFIED,
  Issue_Severity_Deprecation,
  Issue_Severity_Warning,
  Issue_Severity_Error',
  Issue_Severity #-}

-- | Test expectation.
newtype TestCase_Expectation = TestCase_Expectation { fromTestCase_Expectation :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified expectation.
pattern TestCase_Expectation_EXPECTATIONUNSPECIFIED :: TestCase_Expectation
pattern TestCase_Expectation_EXPECTATIONUNSPECIFIED = TestCase_Expectation "EXPECTATION_UNSPECIFIED"

-- | Expect an allowed result.
pattern TestCase_Expectation_Allow :: TestCase_Expectation
pattern TestCase_Expectation_Allow = TestCase_Expectation "ALLOW"

-- | Expect a denied result.
pattern TestCase_Expectation_Deny :: TestCase_Expectation
pattern TestCase_Expectation_Deny = TestCase_Expectation "DENY"

{-# COMPLETE
  TestCase_Expectation_EXPECTATIONUNSPECIFIED,
  TestCase_Expectation_Allow,
  TestCase_Expectation_Deny,
  TestCase_Expectation #-}

-- | Specifies what should be included in the response.
newtype TestCase_ExpressionReportLevel = TestCase_ExpressionReportLevel { fromTestCase_ExpressionReportLevel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No level has been specified. Defaults to \"NONE\" behavior.
pattern TestCase_ExpressionReportLevel_LEVELUNSPECIFIED :: TestCase_ExpressionReportLevel
pattern TestCase_ExpressionReportLevel_LEVELUNSPECIFIED = TestCase_ExpressionReportLevel "LEVEL_UNSPECIFIED"

-- | Do not include any additional information.
pattern TestCase_ExpressionReportLevel_None :: TestCase_ExpressionReportLevel
pattern TestCase_ExpressionReportLevel_None = TestCase_ExpressionReportLevel "NONE"

-- | Include detailed reporting on expressions evaluated.
pattern TestCase_ExpressionReportLevel_Full :: TestCase_ExpressionReportLevel
pattern TestCase_ExpressionReportLevel_Full = TestCase_ExpressionReportLevel "FULL"

-- | Only include the expressions that were visited during evaluation.
pattern TestCase_ExpressionReportLevel_Visited :: TestCase_ExpressionReportLevel
pattern TestCase_ExpressionReportLevel_Visited = TestCase_ExpressionReportLevel "VISITED"

{-# COMPLETE
  TestCase_ExpressionReportLevel_LEVELUNSPECIFIED,
  TestCase_ExpressionReportLevel_None,
  TestCase_ExpressionReportLevel_Full,
  TestCase_ExpressionReportLevel_Visited,
  TestCase_ExpressionReportLevel #-}

-- | Specifies whether paths (such as request.path) are encoded and how.
newtype TestCase_PathEncoding = TestCase_PathEncoding { fromTestCase_PathEncoding :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No encoding has been specified. Defaults to \"URL_ENCODED\" behavior.
pattern TestCase_PathEncoding_ENCODINGUNSPECIFIED :: TestCase_PathEncoding
pattern TestCase_PathEncoding_ENCODINGUNSPECIFIED = TestCase_PathEncoding "ENCODING_UNSPECIFIED"

-- | Treats path segments as URL encoded but with non-encoded separators (\"\/\"). This is the default behavior.
pattern TestCase_PathEncoding_URLENCODED :: TestCase_PathEncoding
pattern TestCase_PathEncoding_URLENCODED = TestCase_PathEncoding "URL_ENCODED"

-- | Treats total path as non-URL encoded e.g. raw.
pattern TestCase_PathEncoding_Plain :: TestCase_PathEncoding
pattern TestCase_PathEncoding_Plain = TestCase_PathEncoding "PLAIN"

{-# COMPLETE
  TestCase_PathEncoding_ENCODINGUNSPECIFIED,
  TestCase_PathEncoding_URLENCODED,
  TestCase_PathEncoding_Plain,
  TestCase_PathEncoding #-}

-- | State of the test.
newtype TestResult_State = TestResult_State { fromTestResult_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Test state is not set.
pattern TestResult_State_STATEUNSPECIFIED :: TestResult_State
pattern TestResult_State_STATEUNSPECIFIED = TestResult_State "STATE_UNSPECIFIED"

-- | Test is a success.
pattern TestResult_State_Success :: TestResult_State
pattern TestResult_State_Success = TestResult_State "SUCCESS"

-- | Test is a failure.
pattern TestResult_State_Failure :: TestResult_State
pattern TestResult_State_Failure = TestResult_State "FAILURE"

{-# COMPLETE
  TestResult_State_STATEUNSPECIFIED,
  TestResult_State_Success,
  TestResult_State_Failure,
  TestResult_State #-}

-- | The requested runtime executable version. Defaults to FIREBASE/RULES/EXECUTABLE_V1.
newtype ProjectsReleasesGetExecutableExecutableVersion = ProjectsReleasesGetExecutableExecutableVersion { fromProjectsReleasesGetExecutableExecutableVersion :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Executable format unspecified. Defaults to FIREBASE/RULES/EXECUTABLE_V1
pattern ProjectsReleasesGetExecutableExecutableVersion_RELEASEEXECUTABLEVERSIONUNSPECIFIED :: ProjectsReleasesGetExecutableExecutableVersion
pattern ProjectsReleasesGetExecutableExecutableVersion_RELEASEEXECUTABLEVERSIONUNSPECIFIED = ProjectsReleasesGetExecutableExecutableVersion "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED"

-- | Firebase Rules syntax \'rules2\' executable versions: Custom AST for use with Java clients.
pattern ProjectsReleasesGetExecutableExecutableVersion_FIREBASE_RULES_EXECUTABLE_V1 :: ProjectsReleasesGetExecutableExecutableVersion
pattern ProjectsReleasesGetExecutableExecutableVersion_FIREBASE_RULES_EXECUTABLE_V1 = ProjectsReleasesGetExecutableExecutableVersion "FIREBASE_RULES_EXECUTABLE_V1"

-- | CEL-based executable for use with C++ clients.
pattern ProjectsReleasesGetExecutableExecutableVersion_FIREBASE_RULES_EXECUTABLE_V2 :: ProjectsReleasesGetExecutableExecutableVersion
pattern ProjectsReleasesGetExecutableExecutableVersion_FIREBASE_RULES_EXECUTABLE_V2 = ProjectsReleasesGetExecutableExecutableVersion "FIREBASE_RULES_EXECUTABLE_V2"

{-# COMPLETE
  ProjectsReleasesGetExecutableExecutableVersion_RELEASEEXECUTABLEVERSIONUNSPECIFIED,
  ProjectsReleasesGetExecutableExecutableVersion_FIREBASE_RULES_EXECUTABLE_V1,
  ProjectsReleasesGetExecutableExecutableVersion_FIREBASE_RULES_EXECUTABLE_V2,
  ProjectsReleasesGetExecutableExecutableVersion #-}
