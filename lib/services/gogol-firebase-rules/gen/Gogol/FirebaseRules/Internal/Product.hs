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
-- Module      : Gogol.FirebaseRules.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.FirebaseRules.Internal.Product
  ( -- * Arg
    Arg (..),
    newArg,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * ExpressionReport
    ExpressionReport (..),
    newExpressionReport,

    -- * File
    File (..),
    newFile,

    -- * FunctionCall
    FunctionCall (..),
    newFunctionCall,

    -- * FunctionMock
    FunctionMock (..),
    newFunctionMock,

    -- * GetReleaseExecutableResponse
    GetReleaseExecutableResponse (..),
    newGetReleaseExecutableResponse,

    -- * Issue
    Issue (..),
    newIssue,

    -- * ListReleasesResponse
    ListReleasesResponse (..),
    newListReleasesResponse,

    -- * ListRulesetsResponse
    ListRulesetsResponse (..),
    newListRulesetsResponse,

    -- * Metadata
    Metadata (..),
    newMetadata,

    -- * Release
    Release (..),
    newRelease,

    -- * Result
    Result (..),
    newResult,

    -- * Ruleset
    Ruleset (..),
    newRuleset,

    -- * Source
    Source (..),
    newSource,

    -- * SourcePosition
    SourcePosition (..),
    newSourcePosition,

    -- * TestCase
    TestCase (..),
    newTestCase,

    -- * TestResult
    TestResult (..),
    newTestResult,

    -- * TestRulesetRequest
    TestRulesetRequest (..),
    newTestRulesetRequest,

    -- * TestRulesetResponse
    TestRulesetResponse (..),
    newTestRulesetResponse,

    -- * TestSuite
    TestSuite (..),
    newTestSuite,

    -- * UpdateReleaseRequest
    UpdateReleaseRequest (..),
    newUpdateReleaseRequest,

    -- * ValueCount
    ValueCount (..),
    newValueCount,

    -- * VisitedExpression
    VisitedExpression (..),
    newVisitedExpression,
  )
where

import Gogol.FirebaseRules.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Arg matchers for the mock function.
--
-- /See:/ 'newArg' smart constructor.
data Arg = Arg
  { -- | Argument matches any value provided.
    anyValue :: (Core.Maybe Empty),
    -- | Argument exactly matches value provided.
    exactValue :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Arg' with the minimum fields required to make a request.
newArg ::
  Arg
newArg = Arg {anyValue = Core.Nothing, exactValue = Core.Nothing}

instance Core.FromJSON Arg where
  parseJSON =
    Core.withObject
      "Arg"
      ( \o ->
          Arg
            Core.<$> (o Core..:? "anyValue")
            Core.<*> (o Core..:? "exactValue")
      )

instance Core.ToJSON Arg where
  toJSON Arg {..} =
    Core.object
      ( Core.catMaybes
          [ ("anyValue" Core..=) Core.<$> anyValue,
            ("exactValue" Core..=) Core.<$> exactValue
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Describes where in a file an expression is found and what it was evaluated to over the course of its use.
--
-- /See:/ 'newExpressionReport' smart constructor.
data ExpressionReport = ExpressionReport
  { -- | Subexpressions
    children :: (Core.Maybe [ExpressionReport]),
    -- | Position of expression in original rules source.
    sourcePosition :: (Core.Maybe SourcePosition),
    -- | Values that this expression evaluated to when encountered.
    values :: (Core.Maybe [ValueCount])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExpressionReport' with the minimum fields required to make a request.
newExpressionReport ::
  ExpressionReport
newExpressionReport =
  ExpressionReport
    { children = Core.Nothing,
      sourcePosition = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON ExpressionReport where
  parseJSON =
    Core.withObject
      "ExpressionReport"
      ( \o ->
          ExpressionReport
            Core.<$> (o Core..:? "children")
            Core.<*> (o Core..:? "sourcePosition")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON ExpressionReport where
  toJSON ExpressionReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("children" Core..=) Core.<$> children,
            ("sourcePosition" Core..=) Core.<$> sourcePosition,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | @File@ containing source content.
--
-- /See:/ 'newFile' smart constructor.
data File = File
  { -- | Required. Textual Content.
    content :: (Core.Maybe Core.Text),
    -- | Fingerprint (e.g. github sha) associated with the @File@.
    fingerprint :: (Core.Maybe Core.Base64),
    -- | Required. File name.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
newFile ::
  File
newFile =
  File {content = Core.Nothing, fingerprint = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON File where
  parseJSON =
    Core.withObject
      "File"
      ( \o ->
          File
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "fingerprint")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON File where
  toJSON File {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("fingerprint" Core..=) Core.<$> fingerprint,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Represents a service-defined function call that was invoked during test execution.
--
-- /See:/ 'newFunctionCall' smart constructor.
data FunctionCall = FunctionCall
  { -- | The arguments that were provided to the function.
    args :: (Core.Maybe [Core.Value]),
    -- | Name of the function invoked.
    function :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FunctionCall' with the minimum fields required to make a request.
newFunctionCall ::
  FunctionCall
newFunctionCall = FunctionCall {args = Core.Nothing, function = Core.Nothing}

instance Core.FromJSON FunctionCall where
  parseJSON =
    Core.withObject
      "FunctionCall"
      ( \o ->
          FunctionCall
            Core.<$> (o Core..:? "args") Core.<*> (o Core..:? "function")
      )

instance Core.ToJSON FunctionCall where
  toJSON FunctionCall {..} =
    Core.object
      ( Core.catMaybes
          [ ("args" Core..=) Core.<$> args,
            ("function" Core..=) Core.<$> function
          ]
      )

-- | Mock function definition. Mocks must refer to a function declared by the target service. The type of the function args and result will be inferred at test time. If either the arg or result values are not compatible with function type declaration, the request will be considered invalid. More than one @FunctionMock@ may be provided for a given function name so long as the @Arg@ matchers are distinct. There may be only one function for a given overload where all @Arg@ values are @Arg.any_value@.
--
-- /See:/ 'newFunctionMock' smart constructor.
data FunctionMock = FunctionMock
  { -- | The list of @Arg@ values to match. The order in which the arguments are provided is the order in which they must appear in the function invocation.
    args :: (Core.Maybe [Arg]),
    -- | The name of the function. The function name must match one provided by a service declaration.
    function :: (Core.Maybe Core.Text),
    -- | The mock result of the function call.
    result :: (Core.Maybe Result)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FunctionMock' with the minimum fields required to make a request.
newFunctionMock ::
  FunctionMock
newFunctionMock =
  FunctionMock
    { args = Core.Nothing,
      function = Core.Nothing,
      result = Core.Nothing
    }

instance Core.FromJSON FunctionMock where
  parseJSON =
    Core.withObject
      "FunctionMock"
      ( \o ->
          FunctionMock
            Core.<$> (o Core..:? "args")
            Core.<*> (o Core..:? "function")
            Core.<*> (o Core..:? "result")
      )

instance Core.ToJSON FunctionMock where
  toJSON FunctionMock {..} =
    Core.object
      ( Core.catMaybes
          [ ("args" Core..=) Core.<$> args,
            ("function" Core..=) Core.<$> function,
            ("result" Core..=) Core.<$> result
          ]
      )

-- | The response for FirebaseRulesService.GetReleaseExecutable
--
-- /See:/ 'newGetReleaseExecutableResponse' smart constructor.
data GetReleaseExecutableResponse = GetReleaseExecutableResponse
  { -- | Executable view of the @Ruleset@ referenced by the @Release@.
    executable :: (Core.Maybe Core.Base64),
    -- | The Rules runtime version of the executable.
    executableVersion :: (Core.Maybe GetReleaseExecutableResponse_ExecutableVersion),
    -- | @Language@ used to generate the executable bytes.
    language :: (Core.Maybe GetReleaseExecutableResponse_Language),
    -- | @Ruleset@ name associated with the @Release@ executable.
    rulesetName :: (Core.Maybe Core.Text),
    -- | Optional, indicates the freshness of the result. The response is guaranteed to be the latest within an interval up to the sync_time (inclusive).
    syncTime :: (Core.Maybe Core.DateTime),
    -- | Timestamp for the most recent @Release.update_time@.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetReleaseExecutableResponse' with the minimum fields required to make a request.
newGetReleaseExecutableResponse ::
  GetReleaseExecutableResponse
newGetReleaseExecutableResponse =
  GetReleaseExecutableResponse
    { executable = Core.Nothing,
      executableVersion = Core.Nothing,
      language = Core.Nothing,
      rulesetName = Core.Nothing,
      syncTime = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GetReleaseExecutableResponse where
  parseJSON =
    Core.withObject
      "GetReleaseExecutableResponse"
      ( \o ->
          GetReleaseExecutableResponse
            Core.<$> (o Core..:? "executable")
            Core.<*> (o Core..:? "executableVersion")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "rulesetName")
            Core.<*> (o Core..:? "syncTime")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GetReleaseExecutableResponse where
  toJSON GetReleaseExecutableResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("executable" Core..=) Core.<$> executable,
            ("executableVersion" Core..=)
              Core.<$> executableVersion,
            ("language" Core..=) Core.<$> language,
            ("rulesetName" Core..=) Core.<$> rulesetName,
            ("syncTime" Core..=) Core.<$> syncTime,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Issues include warnings, errors, and deprecation notices.
--
-- /See:/ 'newIssue' smart constructor.
data Issue = Issue
  { -- | Short error description.
    description :: (Core.Maybe Core.Text),
    -- | The severity of the issue.
    severity :: (Core.Maybe Issue_Severity),
    -- | Position of the issue in the @Source@.
    sourcePosition :: (Core.Maybe SourcePosition)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Issue' with the minimum fields required to make a request.
newIssue ::
  Issue
newIssue =
  Issue
    { description = Core.Nothing,
      severity = Core.Nothing,
      sourcePosition = Core.Nothing
    }

instance Core.FromJSON Issue where
  parseJSON =
    Core.withObject
      "Issue"
      ( \o ->
          Issue
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "sourcePosition")
      )

instance Core.ToJSON Issue where
  toJSON Issue {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("severity" Core..=) Core.<$> severity,
            ("sourcePosition" Core..=) Core.<$> sourcePosition
          ]
      )

-- | The response for FirebaseRulesService.ListReleases.
--
-- /See:/ 'newListReleasesResponse' smart constructor.
data ListReleasesResponse = ListReleasesResponse
  { -- | The pagination token to retrieve the next page of results. If the value is empty, no further results remain.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of @Release@ instances.
    releases :: (Core.Maybe [Release])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListReleasesResponse' with the minimum fields required to make a request.
newListReleasesResponse ::
  ListReleasesResponse
newListReleasesResponse =
  ListReleasesResponse {nextPageToken = Core.Nothing, releases = Core.Nothing}

instance Core.FromJSON ListReleasesResponse where
  parseJSON =
    Core.withObject
      "ListReleasesResponse"
      ( \o ->
          ListReleasesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "releases")
      )

instance Core.ToJSON ListReleasesResponse where
  toJSON ListReleasesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("releases" Core..=) Core.<$> releases
          ]
      )

-- | The response for FirebaseRulesService.ListRulesets.
--
-- /See:/ 'newListRulesetsResponse' smart constructor.
data ListRulesetsResponse = ListRulesetsResponse
  { -- | The pagination token to retrieve the next page of results. If the value is empty, no further results remain.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of @Ruleset@ instances.
    rulesets :: (Core.Maybe [Ruleset])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRulesetsResponse' with the minimum fields required to make a request.
newListRulesetsResponse ::
  ListRulesetsResponse
newListRulesetsResponse =
  ListRulesetsResponse {nextPageToken = Core.Nothing, rulesets = Core.Nothing}

instance Core.FromJSON ListRulesetsResponse where
  parseJSON =
    Core.withObject
      "ListRulesetsResponse"
      ( \o ->
          ListRulesetsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "rulesets")
      )

instance Core.ToJSON ListRulesetsResponse where
  toJSON ListRulesetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("rulesets" Core..=) Core.<$> rulesets
          ]
      )

-- | Metadata for a Ruleset.
--
-- /See:/ 'newMetadata' smart constructor.
newtype Metadata = Metadata
  { -- | Services that this ruleset has declarations for (e.g., \"cloud.firestore\"). There may be 0+ of these.
    services :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
newMetadata ::
  Metadata
newMetadata = Metadata {services = Core.Nothing}

instance Core.FromJSON Metadata where
  parseJSON =
    Core.withObject
      "Metadata"
      (\o -> Metadata Core.<$> (o Core..:? "services"))

instance Core.ToJSON Metadata where
  toJSON Metadata {..} =
    Core.object
      ( Core.catMaybes
          [("services" Core..=) Core.<$> services]
      )

-- | @Release@ is a named reference to a @Ruleset@. Once a @Release@ refers to a @Ruleset@, rules-enabled services will be able to enforce the @Ruleset@.
--
-- /See:/ 'newRelease' smart constructor.
data Release = Release
  { -- | Output only. Time the release was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Required. Format: @projects\/{project_id}\/releases\/{release_id}@
    name :: (Core.Maybe Core.Text),
    -- | Required. Name of the @Ruleset@ referred to by this @Release@. The @Ruleset@ must exist the @Release@ to be created.
    rulesetName :: (Core.Maybe Core.Text),
    -- | Output only. Time the release was updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Release' with the minimum fields required to make a request.
newRelease ::
  Release
newRelease =
  Release
    { createTime = Core.Nothing,
      name = Core.Nothing,
      rulesetName = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Release where
  parseJSON =
    Core.withObject
      "Release"
      ( \o ->
          Release
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "rulesetName")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Release where
  toJSON Release {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("name" Core..=) Core.<$> name,
            ("rulesetName" Core..=) Core.<$> rulesetName,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Possible result values from the function mock invocation.
--
-- /See:/ 'newResult' smart constructor.
data Result = Result
  { -- | The result is undefined, meaning the result could not be computed.
    undefined :: (Core.Maybe Empty),
    -- | The result is an actual value. The type of the value must match that of the type declared by the service.
    value :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Result' with the minimum fields required to make a request.
newResult ::
  Result
newResult = Result {undefined = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Result where
  parseJSON =
    Core.withObject
      "Result"
      ( \o ->
          Result
            Core.<$> (o Core..:? "undefined")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Result where
  toJSON Result {..} =
    Core.object
      ( Core.catMaybes
          [ ("undefined" Core..=) Core.<$> undefined,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | @Ruleset@ is an immutable copy of @Source@ with a globally unique identifier and a creation time.
--
-- /See:/ 'newRuleset' smart constructor.
data Ruleset = Ruleset
  { -- | Output only. Time the @Ruleset@ was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The metadata for this ruleset.
    metadata :: (Core.Maybe Metadata),
    -- | Output only. Name of the @Ruleset@. The ruleset_id is auto generated by the service. Format: @projects\/{project_id}\/rulesets\/{ruleset_id}@
    name :: (Core.Maybe Core.Text),
    -- | Required. @Source@ for the @Ruleset@.
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Ruleset' with the minimum fields required to make a request.
newRuleset ::
  Ruleset
newRuleset =
  Ruleset
    { createTime = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON Ruleset where
  parseJSON =
    Core.withObject
      "Ruleset"
      ( \o ->
          Ruleset
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON Ruleset where
  toJSON Ruleset {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | @Source@ is one or more @File@ messages comprising a logical set of rules.
--
-- /See:/ 'newSource' smart constructor.
newtype Source = Source
  { -- | Required. @File@ set constituting the @Source@ bundle.
    files :: (Core.Maybe [File])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
newSource ::
  Source
newSource = Source {files = Core.Nothing}

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      (\o -> Source Core.<$> (o Core..:? "files"))

instance Core.ToJSON Source where
  toJSON Source {..} =
    Core.object
      (Core.catMaybes [("files" Core..=) Core.<$> files])

-- | Position in the @Source@ content including its line, column number, and an index of the @File@ in the @Source@ message. Used for debug purposes.
--
-- /See:/ 'newSourcePosition' smart constructor.
data SourcePosition = SourcePosition
  { -- | First column on the source line associated with the source fragment.
    column :: (Core.Maybe Core.Int32),
    -- | Start position relative to the beginning of the file.
    currentOffset :: (Core.Maybe Core.Int32),
    -- | End position relative to the beginning of the file.
    endOffset :: (Core.Maybe Core.Int32),
    -- | Name of the @File@.
    fileName :: (Core.Maybe Core.Text),
    -- | Line number of the source fragment. 1-based.
    line :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourcePosition' with the minimum fields required to make a request.
newSourcePosition ::
  SourcePosition
newSourcePosition =
  SourcePosition
    { column = Core.Nothing,
      currentOffset = Core.Nothing,
      endOffset = Core.Nothing,
      fileName = Core.Nothing,
      line = Core.Nothing
    }

instance Core.FromJSON SourcePosition where
  parseJSON =
    Core.withObject
      "SourcePosition"
      ( \o ->
          SourcePosition
            Core.<$> (o Core..:? "column")
            Core.<*> (o Core..:? "currentOffset")
            Core.<*> (o Core..:? "endOffset")
            Core.<*> (o Core..:? "fileName")
            Core.<*> (o Core..:? "line")
      )

instance Core.ToJSON SourcePosition where
  toJSON SourcePosition {..} =
    Core.object
      ( Core.catMaybes
          [ ("column" Core..=) Core.<$> column,
            ("currentOffset" Core..=) Core.<$> currentOffset,
            ("endOffset" Core..=) Core.<$> endOffset,
            ("fileName" Core..=) Core.<$> fileName,
            ("line" Core..=) Core.<$> line
          ]
      )

-- | @TestCase@ messages provide the request context and an expectation as to whether the given context will be allowed or denied. Test cases may specify the @request@, @resource@, and @function_mocks@ to mock a function call to a service-provided function. The @request@ object represents context present at request-time. The @resource@ is the value of the target resource as it appears in persistent storage before the request is executed.
--
-- /See:/ 'newTestCase' smart constructor.
data TestCase = TestCase
  { -- | Test expectation.
    expectation :: (Core.Maybe TestCase_Expectation),
    -- | Specifies what should be included in the response.
    expressionReportLevel :: (Core.Maybe TestCase_ExpressionReportLevel),
    -- | Optional function mocks for service-defined functions. If not set, any service defined function is expected to return an error, which may or may not influence the test outcome.
    functionMocks :: (Core.Maybe [FunctionMock]),
    -- | Specifies whether paths (such as request.path) are encoded and how.
    pathEncoding :: (Core.Maybe TestCase_PathEncoding),
    -- | Request context. The exact format of the request context is service-dependent. See the appropriate service documentation for information about the supported fields and types on the request. Minimally, all services support the following fields and types: Request field | Type ---------------|----------------- auth.uid | @string@ auth.token | @map@ headers | @map@ method | @string@ params | @map@ path | @string@ time | @google.protobuf.Timestamp@ If the request value is not well-formed for the service, the request will be rejected as an invalid argument.
    request' :: (Core.Maybe Core.Value),
    -- | Optional resource value as it appears in persistent storage before the request is fulfilled. The resource type depends on the @request.path@ value.
    resource :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestCase' with the minimum fields required to make a request.
newTestCase ::
  TestCase
newTestCase =
  TestCase
    { expectation = Core.Nothing,
      expressionReportLevel = Core.Nothing,
      functionMocks = Core.Nothing,
      pathEncoding = Core.Nothing,
      request' = Core.Nothing,
      resource = Core.Nothing
    }

instance Core.FromJSON TestCase where
  parseJSON =
    Core.withObject
      "TestCase"
      ( \o ->
          TestCase
            Core.<$> (o Core..:? "expectation")
            Core.<*> (o Core..:? "expressionReportLevel")
            Core.<*> (o Core..:? "functionMocks")
            Core.<*> (o Core..:? "pathEncoding")
            Core.<*> (o Core..:? "request")
            Core.<*> (o Core..:? "resource")
      )

instance Core.ToJSON TestCase where
  toJSON TestCase {..} =
    Core.object
      ( Core.catMaybes
          [ ("expectation" Core..=) Core.<$> expectation,
            ("expressionReportLevel" Core..=)
              Core.<$> expressionReportLevel,
            ("functionMocks" Core..=) Core.<$> functionMocks,
            ("pathEncoding" Core..=) Core.<$> pathEncoding,
            ("request" Core..=) Core.<$> request',
            ("resource" Core..=) Core.<$> resource
          ]
      )

-- | Test result message containing the state of the test as well as a description and source position for test failures.
--
-- /See:/ 'newTestResult' smart constructor.
data TestResult = TestResult
  { -- | Debug messages related to test execution issues encountered during evaluation. Debug messages may be related to too many or too few invocations of function mocks or to runtime errors that occur during evaluation. For example: @Unable to read variable [name: \"resource\"]@
    debugMessages :: (Core.Maybe [Core.Text]),
    -- | Position in the @Source@ or @Ruleset@ where the principle runtime error occurs. Evaluation of an expression may result in an error. Rules are deny by default, so a @DENY@ expectation when an error is generated is valid. When there is a @DENY@ with an error, the @SourcePosition@ is returned. E.g. @error_position { line: 19 column: 37 }@
    errorPosition :: (Core.Maybe SourcePosition),
    -- | The mapping from expression in the ruleset AST to the values they were evaluated to. Partially-nested to mirror AST structure. Note that this field is actually tracking expressions and not permission statements in contrast to the \"visited_expressions\" field above. Literal expressions are omitted.
    expressionReports :: (Core.Maybe [ExpressionReport]),
    -- | The set of function calls made to service-defined methods. Function calls are included in the order in which they are encountered during evaluation, are provided for both mocked and unmocked functions, and included on the response regardless of the test @state@.
    functionCalls :: (Core.Maybe [FunctionCall]),
    -- | State of the test.
    state :: (Core.Maybe TestResult_State),
    -- | The set of visited permission expressions for a given test. This returns the positions and evaluation results of all visited permission expressions which were relevant to the test case, e.g. @match \/path { allow read if: }@ For a detailed report of the intermediate evaluation states, see the @expression_reports@ field
    visitedExpressions :: (Core.Maybe [VisitedExpression])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestResult' with the minimum fields required to make a request.
newTestResult ::
  TestResult
newTestResult =
  TestResult
    { debugMessages = Core.Nothing,
      errorPosition = Core.Nothing,
      expressionReports = Core.Nothing,
      functionCalls = Core.Nothing,
      state = Core.Nothing,
      visitedExpressions = Core.Nothing
    }

instance Core.FromJSON TestResult where
  parseJSON =
    Core.withObject
      "TestResult"
      ( \o ->
          TestResult
            Core.<$> (o Core..:? "debugMessages")
            Core.<*> (o Core..:? "errorPosition")
            Core.<*> (o Core..:? "expressionReports")
            Core.<*> (o Core..:? "functionCalls")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "visitedExpressions")
      )

instance Core.ToJSON TestResult where
  toJSON TestResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("debugMessages" Core..=) Core.<$> debugMessages,
            ("errorPosition" Core..=) Core.<$> errorPosition,
            ("expressionReports" Core..=)
              Core.<$> expressionReports,
            ("functionCalls" Core..=) Core.<$> functionCalls,
            ("state" Core..=) Core.<$> state,
            ("visitedExpressions" Core..=)
              Core.<$> visitedExpressions
          ]
      )

-- | The request for FirebaseRulesService.TestRuleset.
--
-- /See:/ 'newTestRulesetRequest' smart constructor.
data TestRulesetRequest = TestRulesetRequest
  { -- | Optional @Source@ to be checked for correctness. This field must not be set when the resource name refers to a @Ruleset@.
    source :: (Core.Maybe Source),
    -- | The tests to execute against the @Source@. When @Source@ is provided inline, the test cases will only be run if the @Source@ is syntactically and semantically valid. Inline @TestSuite@ to run.
    testSuite :: (Core.Maybe TestSuite)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestRulesetRequest' with the minimum fields required to make a request.
newTestRulesetRequest ::
  TestRulesetRequest
newTestRulesetRequest =
  TestRulesetRequest {source = Core.Nothing, testSuite = Core.Nothing}

instance Core.FromJSON TestRulesetRequest where
  parseJSON =
    Core.withObject
      "TestRulesetRequest"
      ( \o ->
          TestRulesetRequest
            Core.<$> (o Core..:? "source")
            Core.<*> (o Core..:? "testSuite")
      )

instance Core.ToJSON TestRulesetRequest where
  toJSON TestRulesetRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("source" Core..=) Core.<$> source,
            ("testSuite" Core..=) Core.<$> testSuite
          ]
      )

-- | The response for FirebaseRulesService.TestRuleset.
--
-- /See:/ 'newTestRulesetResponse' smart constructor.
data TestRulesetResponse = TestRulesetResponse
  { -- | Syntactic and semantic @Source@ issues of varying severity. Issues of @ERROR@ severity will prevent tests from executing.
    issues :: (Core.Maybe [Issue]),
    -- | The set of test results given the test cases in the @TestSuite@. The results will appear in the same order as the test cases appear in the @TestSuite@.
    testResults :: (Core.Maybe [TestResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestRulesetResponse' with the minimum fields required to make a request.
newTestRulesetResponse ::
  TestRulesetResponse
newTestRulesetResponse =
  TestRulesetResponse {issues = Core.Nothing, testResults = Core.Nothing}

instance Core.FromJSON TestRulesetResponse where
  parseJSON =
    Core.withObject
      "TestRulesetResponse"
      ( \o ->
          TestRulesetResponse
            Core.<$> (o Core..:? "issues")
            Core.<*> (o Core..:? "testResults")
      )

instance Core.ToJSON TestRulesetResponse where
  toJSON TestRulesetResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("issues" Core..=) Core.<$> issues,
            ("testResults" Core..=) Core.<$> testResults
          ]
      )

-- | @TestSuite@ is a collection of @TestCase@ instances that validate the logical correctness of a @Ruleset@. The @TestSuite@ may be referenced in-line within a @TestRuleset@ invocation or as part of a @Release@ object as a pre-release check.
--
-- /See:/ 'newTestSuite' smart constructor.
newtype TestSuite = TestSuite
  { -- | Collection of test cases associated with the @TestSuite@.
    testCases :: (Core.Maybe [TestCase])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestSuite' with the minimum fields required to make a request.
newTestSuite ::
  TestSuite
newTestSuite = TestSuite {testCases = Core.Nothing}

instance Core.FromJSON TestSuite where
  parseJSON =
    Core.withObject
      "TestSuite"
      (\o -> TestSuite Core.<$> (o Core..:? "testCases"))

instance Core.ToJSON TestSuite where
  toJSON TestSuite {..} =
    Core.object
      ( Core.catMaybes
          [("testCases" Core..=) Core.<$> testCases]
      )

-- | The request for FirebaseRulesService.UpdateRelease.
--
-- /See:/ 'newUpdateReleaseRequest' smart constructor.
data UpdateReleaseRequest = UpdateReleaseRequest
  { -- | Required. @Release@ to update.
    release :: (Core.Maybe Release),
    -- | Specifies which fields to update.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateReleaseRequest' with the minimum fields required to make a request.
newUpdateReleaseRequest ::
  UpdateReleaseRequest
newUpdateReleaseRequest =
  UpdateReleaseRequest {release = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON UpdateReleaseRequest where
  parseJSON =
    Core.withObject
      "UpdateReleaseRequest"
      ( \o ->
          UpdateReleaseRequest
            Core.<$> (o Core..:? "release")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON UpdateReleaseRequest where
  toJSON UpdateReleaseRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("release" Core..=) Core.<$> release,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Tuple for how many times an Expression was evaluated to a particular ExpressionValue.
--
-- /See:/ 'newValueCount' smart constructor.
data ValueCount = ValueCount
  { -- | The amount of times that expression returned.
    count :: (Core.Maybe Core.Int32),
    -- | The return value of the expression
    value :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValueCount' with the minimum fields required to make a request.
newValueCount ::
  ValueCount
newValueCount = ValueCount {count = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ValueCount where
  parseJSON =
    Core.withObject
      "ValueCount"
      ( \o ->
          ValueCount
            Core.<$> (o Core..:? "count") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ValueCount where
  toJSON ValueCount {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.<$> count,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Store the position and access outcome for an expression visited in rules.
--
-- /See:/ 'newVisitedExpression' smart constructor.
data VisitedExpression = VisitedExpression
  { -- | Position in the @Source@ or @Ruleset@ where an expression was visited.
    sourcePosition :: (Core.Maybe SourcePosition),
    -- | The evaluated value for the visited expression, e.g. true\/false
    value :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VisitedExpression' with the minimum fields required to make a request.
newVisitedExpression ::
  VisitedExpression
newVisitedExpression =
  VisitedExpression {sourcePosition = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON VisitedExpression where
  parseJSON =
    Core.withObject
      "VisitedExpression"
      ( \o ->
          VisitedExpression
            Core.<$> (o Core..:? "sourcePosition")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON VisitedExpression where
  toJSON VisitedExpression {..} =
    Core.object
      ( Core.catMaybes
          [ ("sourcePosition" Core..=) Core.<$> sourcePosition,
            ("value" Core..=) Core.<$> value
          ]
      )
