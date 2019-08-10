{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseRules.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseRules.Types.Product where

import           Network.Google.FirebaseRules.Types.Sum
import           Network.Google.Prelude

-- | Position in the \`Source\` content including its line, column number,
-- and an index of the \`File\` in the \`Source\` message. Used for debug
-- purposes.
--
-- /See:/ 'sourcePosition' smart constructor.
data SourcePosition =
  SourcePosition'
    { _spLine     :: !(Maybe (Textual Int32))
    , _spColumn   :: !(Maybe (Textual Int32))
    , _spFileName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourcePosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spLine'
--
-- * 'spColumn'
--
-- * 'spFileName'
sourcePosition
    :: SourcePosition
sourcePosition =
  SourcePosition'
    {_spLine = Nothing, _spColumn = Nothing, _spFileName = Nothing}


-- | Line number of the source fragment. 1-based.
spLine :: Lens' SourcePosition (Maybe Int32)
spLine
  = lens _spLine (\ s a -> s{_spLine = a}) .
      mapping _Coerce

-- | First column on the source line associated with the source fragment.
spColumn :: Lens' SourcePosition (Maybe Int32)
spColumn
  = lens _spColumn (\ s a -> s{_spColumn = a}) .
      mapping _Coerce

-- | Name of the \`File\`.
spFileName :: Lens' SourcePosition (Maybe Text)
spFileName
  = lens _spFileName (\ s a -> s{_spFileName = a})

instance FromJSON SourcePosition where
        parseJSON
          = withObject "SourcePosition"
              (\ o ->
                 SourcePosition' <$>
                   (o .:? "line") <*> (o .:? "column") <*>
                     (o .:? "fileName"))

instance ToJSON SourcePosition where
        toJSON SourcePosition'{..}
          = object
              (catMaybes
                 [("line" .=) <$> _spLine,
                  ("column" .=) <$> _spColumn,
                  ("fileName" .=) <$> _spFileName])

-- | \`TestCase\` messages provide the request context and an expectation as
-- to whether the given context will be allowed or denied. Test cases may
-- specify the \`request\`, \`resource\`, and \`function_mocks\` to mock a
-- function call to a service-provided function. The \`request\` object
-- represents context present at request-time. The \`resource\` is the
-- value of the target resource as it appears in persistent storage before
-- the request is executed.
--
-- /See:/ 'testCase' smart constructor.
data TestCase =
  TestCase'
    { _tcResource      :: !(Maybe JSONValue)
    , _tcExpectation   :: !(Maybe TestCaseExpectation)
    , _tcFunctionMocks :: !(Maybe [FunctionMock])
    , _tcRequest       :: !(Maybe JSONValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestCase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcResource'
--
-- * 'tcExpectation'
--
-- * 'tcFunctionMocks'
--
-- * 'tcRequest'
testCase
    :: TestCase
testCase =
  TestCase'
    { _tcResource = Nothing
    , _tcExpectation = Nothing
    , _tcFunctionMocks = Nothing
    , _tcRequest = Nothing
    }


-- | Optional resource value as it appears in persistent storage before the
-- request is fulfilled. The resource type depends on the \`request.path\`
-- value.
tcResource :: Lens' TestCase (Maybe JSONValue)
tcResource
  = lens _tcResource (\ s a -> s{_tcResource = a})

-- | Test expectation.
tcExpectation :: Lens' TestCase (Maybe TestCaseExpectation)
tcExpectation
  = lens _tcExpectation
      (\ s a -> s{_tcExpectation = a})

-- | Optional function mocks for service-defined functions. If not set, any
-- service defined function is expected to return an error, which may or
-- may not influence the test outcome.
tcFunctionMocks :: Lens' TestCase [FunctionMock]
tcFunctionMocks
  = lens _tcFunctionMocks
      (\ s a -> s{_tcFunctionMocks = a})
      . _Default
      . _Coerce

-- | Request context. The exact format of the request context is
-- service-dependent. See the appropriate service documentation for
-- information about the supported fields and types on the request.
-- Minimally, all services support the following fields and types: Request
-- field | Type ---------------|----------------- auth.uid | \`string\`
-- auth.token | \`map\` headers | \`map\` method | \`string\` params |
-- \`map\` path | \`string\` time | \`google.protobuf.Timestamp\` If the
-- request value is not well-formed for the service, the request will be
-- rejected as an invalid argument.
tcRequest :: Lens' TestCase (Maybe JSONValue)
tcRequest
  = lens _tcRequest (\ s a -> s{_tcRequest = a})

instance FromJSON TestCase where
        parseJSON
          = withObject "TestCase"
              (\ o ->
                 TestCase' <$>
                   (o .:? "resource") <*> (o .:? "expectation") <*>
                     (o .:? "functionMocks" .!= mempty)
                     <*> (o .:? "request"))

instance ToJSON TestCase where
        toJSON TestCase'{..}
          = object
              (catMaybes
                 [("resource" .=) <$> _tcResource,
                  ("expectation" .=) <$> _tcExpectation,
                  ("functionMocks" .=) <$> _tcFunctionMocks,
                  ("request" .=) <$> _tcRequest])

-- | Store the position and access outcome for an expression visited in
-- rules.
--
-- /See:/ 'visitedExpression' smart constructor.
data VisitedExpression =
  VisitedExpression'
    { _veSourcePosition :: !(Maybe SourcePosition)
    , _veValue          :: !(Maybe JSONValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VisitedExpression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veSourcePosition'
--
-- * 'veValue'
visitedExpression
    :: VisitedExpression
visitedExpression =
  VisitedExpression' {_veSourcePosition = Nothing, _veValue = Nothing}


-- | Position in the \`Source\` or \`Ruleset\` where an expression was
-- visited.
veSourcePosition :: Lens' VisitedExpression (Maybe SourcePosition)
veSourcePosition
  = lens _veSourcePosition
      (\ s a -> s{_veSourcePosition = a})

-- | The evaluated value for the visited expression, e.g. true\/false
veValue :: Lens' VisitedExpression (Maybe JSONValue)
veValue = lens _veValue (\ s a -> s{_veValue = a})

instance FromJSON VisitedExpression where
        parseJSON
          = withObject "VisitedExpression"
              (\ o ->
                 VisitedExpression' <$>
                   (o .:? "sourcePosition") <*> (o .:? "value"))

instance ToJSON VisitedExpression where
        toJSON VisitedExpression'{..}
          = object
              (catMaybes
                 [("sourcePosition" .=) <$> _veSourcePosition,
                  ("value" .=) <$> _veValue])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Mock function definition. Mocks must refer to a function declared by the
-- target service. The type of the function args and result will be
-- inferred at test time. If either the arg or result values are not
-- compatible with function type declaration, the request will be
-- considered invalid. More than one \`FunctionMock\` may be provided for a
-- given function name so long as the \`Arg\` matchers are distinct. There
-- may be only one function for a given overload where all \`Arg\` values
-- are \`Arg.any_value\`.
--
-- /See:/ 'functionMock' smart constructor.
data FunctionMock =
  FunctionMock'
    { _fmArgs     :: !(Maybe [Arg])
    , _fmFunction :: !(Maybe Text)
    , _fmResult   :: !(Maybe Result)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FunctionMock' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmArgs'
--
-- * 'fmFunction'
--
-- * 'fmResult'
functionMock
    :: FunctionMock
functionMock =
  FunctionMock' {_fmArgs = Nothing, _fmFunction = Nothing, _fmResult = Nothing}


-- | The list of \`Arg\` values to match. The order in which the arguments
-- are provided is the order in which they must appear in the function
-- invocation.
fmArgs :: Lens' FunctionMock [Arg]
fmArgs
  = lens _fmArgs (\ s a -> s{_fmArgs = a}) . _Default .
      _Coerce

-- | The name of the function. The function name must match one provided by a
-- service declaration.
fmFunction :: Lens' FunctionMock (Maybe Text)
fmFunction
  = lens _fmFunction (\ s a -> s{_fmFunction = a})

-- | The mock result of the function call.
fmResult :: Lens' FunctionMock (Maybe Result)
fmResult = lens _fmResult (\ s a -> s{_fmResult = a})

instance FromJSON FunctionMock where
        parseJSON
          = withObject "FunctionMock"
              (\ o ->
                 FunctionMock' <$>
                   (o .:? "args" .!= mempty) <*> (o .:? "function") <*>
                     (o .:? "result"))

instance ToJSON FunctionMock where
        toJSON FunctionMock'{..}
          = object
              (catMaybes
                 [("args" .=) <$> _fmArgs,
                  ("function" .=) <$> _fmFunction,
                  ("result" .=) <$> _fmResult])

-- | Represents a service-defined function call that was invoked during test
-- execution.
--
-- /See:/ 'functionCall' smart constructor.
data FunctionCall =
  FunctionCall'
    { _fcArgs     :: !(Maybe [JSONValue])
    , _fcFunction :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FunctionCall' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcArgs'
--
-- * 'fcFunction'
functionCall
    :: FunctionCall
functionCall = FunctionCall' {_fcArgs = Nothing, _fcFunction = Nothing}


-- | The arguments that were provided to the function.
fcArgs :: Lens' FunctionCall [JSONValue]
fcArgs
  = lens _fcArgs (\ s a -> s{_fcArgs = a}) . _Default .
      _Coerce

-- | Name of the function invoked.
fcFunction :: Lens' FunctionCall (Maybe Text)
fcFunction
  = lens _fcFunction (\ s a -> s{_fcFunction = a})

instance FromJSON FunctionCall where
        parseJSON
          = withObject "FunctionCall"
              (\ o ->
                 FunctionCall' <$>
                   (o .:? "args" .!= mempty) <*> (o .:? "function"))

instance ToJSON FunctionCall where
        toJSON FunctionCall'{..}
          = object
              (catMaybes
                 [("args" .=) <$> _fcArgs,
                  ("function" .=) <$> _fcFunction])

-- | The response for FirebaseRulesService.ListReleases.
--
-- /See:/ 'listReleasesResponse' smart constructor.
data ListReleasesResponse =
  ListReleasesResponse'
    { _lrrNextPageToken :: !(Maybe Text)
    , _lrrReleases      :: !(Maybe [Release])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListReleasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrNextPageToken'
--
-- * 'lrrReleases'
listReleasesResponse
    :: ListReleasesResponse
listReleasesResponse =
  ListReleasesResponse' {_lrrNextPageToken = Nothing, _lrrReleases = Nothing}


-- | The pagination token to retrieve the next page of results. If the value
-- is empty, no further results remain.
lrrNextPageToken :: Lens' ListReleasesResponse (Maybe Text)
lrrNextPageToken
  = lens _lrrNextPageToken
      (\ s a -> s{_lrrNextPageToken = a})

-- | List of \`Release\` instances.
lrrReleases :: Lens' ListReleasesResponse [Release]
lrrReleases
  = lens _lrrReleases (\ s a -> s{_lrrReleases = a}) .
      _Default
      . _Coerce

instance FromJSON ListReleasesResponse where
        parseJSON
          = withObject "ListReleasesResponse"
              (\ o ->
                 ListReleasesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "releases" .!= mempty))

instance ToJSON ListReleasesResponse where
        toJSON ListReleasesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrNextPageToken,
                  ("releases" .=) <$> _lrrReleases])

-- | Possible result values from the function mock invocation.
--
-- /See:/ 'result' smart constructor.
data Result =
  Result'
    { _rValue     :: !(Maybe JSONValue)
    , _rUndefined :: !(Maybe Empty)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Result' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rValue'
--
-- * 'rUndefined'
result
    :: Result
result = Result' {_rValue = Nothing, _rUndefined = Nothing}


-- | The result is an actual value. The type of the value must match that of
-- the type declared by the service.
rValue :: Lens' Result (Maybe JSONValue)
rValue = lens _rValue (\ s a -> s{_rValue = a})

-- | The result is undefined, meaning the result could not be computed.
rUndefined :: Lens' Result (Maybe Empty)
rUndefined
  = lens _rUndefined (\ s a -> s{_rUndefined = a})

instance FromJSON Result where
        parseJSON
          = withObject "Result"
              (\ o ->
                 Result' <$> (o .:? "value") <*> (o .:? "undefined"))

instance ToJSON Result where
        toJSON Result'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rValue,
                  ("undefined" .=) <$> _rUndefined])

-- | The response for FirebaseRulesService.TestRuleset.
--
-- /See:/ 'testRulesetResponse' smart constructor.
data TestRulesetResponse =
  TestRulesetResponse'
    { _trrTestResults :: !(Maybe [TestResult])
    , _trrIssues      :: !(Maybe [Issue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestRulesetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrTestResults'
--
-- * 'trrIssues'
testRulesetResponse
    :: TestRulesetResponse
testRulesetResponse =
  TestRulesetResponse' {_trrTestResults = Nothing, _trrIssues = Nothing}


-- | The set of test results given the test cases in the \`TestSuite\`. The
-- results will appear in the same order as the test cases appear in the
-- \`TestSuite\`.
trrTestResults :: Lens' TestRulesetResponse [TestResult]
trrTestResults
  = lens _trrTestResults
      (\ s a -> s{_trrTestResults = a})
      . _Default
      . _Coerce

-- | Syntactic and semantic \`Source\` issues of varying severity. Issues of
-- \`ERROR\` severity will prevent tests from executing.
trrIssues :: Lens' TestRulesetResponse [Issue]
trrIssues
  = lens _trrIssues (\ s a -> s{_trrIssues = a}) .
      _Default
      . _Coerce

instance FromJSON TestRulesetResponse where
        parseJSON
          = withObject "TestRulesetResponse"
              (\ o ->
                 TestRulesetResponse' <$>
                   (o .:? "testResults" .!= mempty) <*>
                     (o .:? "issues" .!= mempty))

instance ToJSON TestRulesetResponse where
        toJSON TestRulesetResponse'{..}
          = object
              (catMaybes
                 [("testResults" .=) <$> _trrTestResults,
                  ("issues" .=) <$> _trrIssues])

-- | \`Release\` is a named reference to a \`Ruleset\`. Once a \`Release\`
-- refers to a \`Ruleset\`, rules-enabled services will be able to enforce
-- the \`Ruleset\`.
--
-- /See:/ 'release' smart constructor.
data Release =
  Release'
    { _rRulesetName :: !(Maybe Text)
    , _rUpdateTime  :: !(Maybe DateTime')
    , _rName        :: !(Maybe Text)
    , _rCreateTime  :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Release' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRulesetName'
--
-- * 'rUpdateTime'
--
-- * 'rName'
--
-- * 'rCreateTime'
release
    :: Release
release =
  Release'
    { _rRulesetName = Nothing
    , _rUpdateTime = Nothing
    , _rName = Nothing
    , _rCreateTime = Nothing
    }


-- | Name of the \`Ruleset\` referred to by this \`Release\`. The \`Ruleset\`
-- must exist the \`Release\` to be created.
rRulesetName :: Lens' Release (Maybe Text)
rRulesetName
  = lens _rRulesetName (\ s a -> s{_rRulesetName = a})

-- | Time the release was updated. Output only.
rUpdateTime :: Lens' Release (Maybe UTCTime)
rUpdateTime
  = lens _rUpdateTime (\ s a -> s{_rUpdateTime = a}) .
      mapping _DateTime

-- | Resource name for the \`Release\`. \`Release\` names may be structured
-- \`app1\/prod\/v2\` or flat \`app1_prod_v2\` which affords developers a
-- great deal of flexibility in mapping the name to the style that best
-- fits their existing development practices. For example, a name could
-- refer to an environment, an app, a version, or some combination of
-- three. In the table below, for the project name \`projects\/foo\`, the
-- following relative release paths show how flat and structured names
-- might be chosen to match a desired development \/ deployment strategy.
-- Use Case | Flat Name | Structured Name
-- -------------|---------------------|---------------- Environments |
-- releases\/qa | releases\/qa Apps | releases\/app1_qa |
-- releases\/app1\/qa Versions | releases\/app1_v2_qa |
-- releases\/app1\/v2\/qa The delimiter between the release name path
-- elements can be almost anything and it should work equally well with the
-- release name list filter, but in many ways the structured paths provide
-- a clearer picture of the relationship between \`Release\` instances.
-- Format: \`projects\/{project_id}\/releases\/{release_id}\`
rName :: Lens' Release (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | Time the release was created. Output only.
rCreateTime :: Lens' Release (Maybe UTCTime)
rCreateTime
  = lens _rCreateTime (\ s a -> s{_rCreateTime = a}) .
      mapping _DateTime

instance FromJSON Release where
        parseJSON
          = withObject "Release"
              (\ o ->
                 Release' <$>
                   (o .:? "rulesetName") <*> (o .:? "updateTime") <*>
                     (o .:? "name")
                     <*> (o .:? "createTime"))

instance ToJSON Release where
        toJSON Release'{..}
          = object
              (catMaybes
                 [("rulesetName" .=) <$> _rRulesetName,
                  ("updateTime" .=) <$> _rUpdateTime,
                  ("name" .=) <$> _rName,
                  ("createTime" .=) <$> _rCreateTime])

-- | Arg matchers for the mock function.
--
-- /See:/ 'arg' smart constructor.
data Arg =
  Arg'
    { _aAnyValue   :: !(Maybe Empty)
    , _aExactValue :: !(Maybe JSONValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Arg' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAnyValue'
--
-- * 'aExactValue'
arg
    :: Arg
arg = Arg' {_aAnyValue = Nothing, _aExactValue = Nothing}


-- | Argument matches any value provided.
aAnyValue :: Lens' Arg (Maybe Empty)
aAnyValue
  = lens _aAnyValue (\ s a -> s{_aAnyValue = a})

-- | Argument exactly matches value provided.
aExactValue :: Lens' Arg (Maybe JSONValue)
aExactValue
  = lens _aExactValue (\ s a -> s{_aExactValue = a})

instance FromJSON Arg where
        parseJSON
          = withObject "Arg"
              (\ o ->
                 Arg' <$> (o .:? "anyValue") <*> (o .:? "exactValue"))

instance ToJSON Arg where
        toJSON Arg'{..}
          = object
              (catMaybes
                 [("anyValue" .=) <$> _aAnyValue,
                  ("exactValue" .=) <$> _aExactValue])

-- | \`Ruleset\` is an immutable copy of \`Source\` with a globally unique
-- identifier and a creation time.
--
-- /See:/ 'ruleset' smart constructor.
data Ruleset =
  Ruleset'
    { _rulName       :: !(Maybe Text)
    , _rulSource     :: !(Maybe Source)
    , _rulCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Ruleset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rulName'
--
-- * 'rulSource'
--
-- * 'rulCreateTime'
ruleset
    :: Ruleset
ruleset =
  Ruleset' {_rulName = Nothing, _rulSource = Nothing, _rulCreateTime = Nothing}


-- | Name of the \`Ruleset\`. The ruleset_id is auto generated by the
-- service. Format: \`projects\/{project_id}\/rulesets\/{ruleset_id}\`
-- Output only.
rulName :: Lens' Ruleset (Maybe Text)
rulName = lens _rulName (\ s a -> s{_rulName = a})

-- | \`Source\` for the \`Ruleset\`.
rulSource :: Lens' Ruleset (Maybe Source)
rulSource
  = lens _rulSource (\ s a -> s{_rulSource = a})

-- | Time the \`Ruleset\` was created. Output only.
rulCreateTime :: Lens' Ruleset (Maybe UTCTime)
rulCreateTime
  = lens _rulCreateTime
      (\ s a -> s{_rulCreateTime = a})
      . mapping _DateTime

instance FromJSON Ruleset where
        parseJSON
          = withObject "Ruleset"
              (\ o ->
                 Ruleset' <$>
                   (o .:? "name") <*> (o .:? "source") <*>
                     (o .:? "createTime"))

instance ToJSON Ruleset where
        toJSON Ruleset'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rulName,
                  ("source" .=) <$> _rulSource,
                  ("createTime" .=) <$> _rulCreateTime])

-- | The response for FirebaseRulesService.GetReleaseExecutable
--
-- /See:/ 'getReleaseExecutableResponse' smart constructor.
data GetReleaseExecutableResponse =
  GetReleaseExecutableResponse'
    { _grerExecutable        :: !(Maybe Bytes)
    , _grerRulesetName       :: !(Maybe Text)
    , _grerUpdateTime        :: !(Maybe DateTime')
    , _grerSyncTime          :: !(Maybe DateTime')
    , _grerExecutableVersion :: !(Maybe GetReleaseExecutableResponseExecutableVersion)
    , _grerLanguage          :: !(Maybe GetReleaseExecutableResponseLanguage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetReleaseExecutableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grerExecutable'
--
-- * 'grerRulesetName'
--
-- * 'grerUpdateTime'
--
-- * 'grerSyncTime'
--
-- * 'grerExecutableVersion'
--
-- * 'grerLanguage'
getReleaseExecutableResponse
    :: GetReleaseExecutableResponse
getReleaseExecutableResponse =
  GetReleaseExecutableResponse'
    { _grerExecutable = Nothing
    , _grerRulesetName = Nothing
    , _grerUpdateTime = Nothing
    , _grerSyncTime = Nothing
    , _grerExecutableVersion = Nothing
    , _grerLanguage = Nothing
    }


-- | Executable view of the \`Ruleset\` referenced by the \`Release\`.
grerExecutable :: Lens' GetReleaseExecutableResponse (Maybe ByteString)
grerExecutable
  = lens _grerExecutable
      (\ s a -> s{_grerExecutable = a})
      . mapping _Bytes

-- | \`Ruleset\` name associated with the \`Release\` executable.
grerRulesetName :: Lens' GetReleaseExecutableResponse (Maybe Text)
grerRulesetName
  = lens _grerRulesetName
      (\ s a -> s{_grerRulesetName = a})

-- | Timestamp for the most recent \`Release.update_time\`.
grerUpdateTime :: Lens' GetReleaseExecutableResponse (Maybe UTCTime)
grerUpdateTime
  = lens _grerUpdateTime
      (\ s a -> s{_grerUpdateTime = a})
      . mapping _DateTime

-- | Optional, indicates the freshness of the result. The response is
-- guaranteed to be the latest within an interval up to the sync_time
-- (inclusive).
grerSyncTime :: Lens' GetReleaseExecutableResponse (Maybe UTCTime)
grerSyncTime
  = lens _grerSyncTime (\ s a -> s{_grerSyncTime = a})
      . mapping _DateTime

-- | The Rules runtime version of the executable.
grerExecutableVersion :: Lens' GetReleaseExecutableResponse (Maybe GetReleaseExecutableResponseExecutableVersion)
grerExecutableVersion
  = lens _grerExecutableVersion
      (\ s a -> s{_grerExecutableVersion = a})

-- | \`Language\` used to generate the executable bytes.
grerLanguage :: Lens' GetReleaseExecutableResponse (Maybe GetReleaseExecutableResponseLanguage)
grerLanguage
  = lens _grerLanguage (\ s a -> s{_grerLanguage = a})

instance FromJSON GetReleaseExecutableResponse where
        parseJSON
          = withObject "GetReleaseExecutableResponse"
              (\ o ->
                 GetReleaseExecutableResponse' <$>
                   (o .:? "executable") <*> (o .:? "rulesetName") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "syncTime")
                     <*> (o .:? "executableVersion")
                     <*> (o .:? "language"))

instance ToJSON GetReleaseExecutableResponse where
        toJSON GetReleaseExecutableResponse'{..}
          = object
              (catMaybes
                 [("executable" .=) <$> _grerExecutable,
                  ("rulesetName" .=) <$> _grerRulesetName,
                  ("updateTime" .=) <$> _grerUpdateTime,
                  ("syncTime" .=) <$> _grerSyncTime,
                  ("executableVersion" .=) <$> _grerExecutableVersion,
                  ("language" .=) <$> _grerLanguage])

-- | Test result message containing the state of the test as well as a
-- description and source position for test failures.
--
-- /See:/ 'testResult' smart constructor.
data TestResult =
  TestResult'
    { _trState              :: !(Maybe TestResultState)
    , _trFunctionCalls      :: !(Maybe [FunctionCall])
    , _trVisitedExpressions :: !(Maybe [VisitedExpression])
    , _trErrorPosition      :: !(Maybe SourcePosition)
    , _trDebugMessages      :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trState'
--
-- * 'trFunctionCalls'
--
-- * 'trVisitedExpressions'
--
-- * 'trErrorPosition'
--
-- * 'trDebugMessages'
testResult
    :: TestResult
testResult =
  TestResult'
    { _trState = Nothing
    , _trFunctionCalls = Nothing
    , _trVisitedExpressions = Nothing
    , _trErrorPosition = Nothing
    , _trDebugMessages = Nothing
    }


-- | State of the test.
trState :: Lens' TestResult (Maybe TestResultState)
trState = lens _trState (\ s a -> s{_trState = a})

-- | The set of function calls made to service-defined methods. Function
-- calls are included in the order in which they are encountered during
-- evaluation, are provided for both mocked and unmocked functions, and
-- included on the response regardless of the test \`state\`.
trFunctionCalls :: Lens' TestResult [FunctionCall]
trFunctionCalls
  = lens _trFunctionCalls
      (\ s a -> s{_trFunctionCalls = a})
      . _Default
      . _Coerce

-- | The set of visited permission expressions for a given test. This returns
-- the positions and evaluation results of all visited permission
-- expressions which were relevant to the test case, e.g. \`\`\` match
-- \/path { allow read if: } \`\`\` For a detailed report of the
-- intermediate evaluation states, see the \`expression_reports\` field
trVisitedExpressions :: Lens' TestResult [VisitedExpression]
trVisitedExpressions
  = lens _trVisitedExpressions
      (\ s a -> s{_trVisitedExpressions = a})
      . _Default
      . _Coerce

-- | Position in the \`Source\` or \`Ruleset\` where the principle runtime
-- error occurs. Evaluation of an expression may result in an error. Rules
-- are deny by default, so a \`DENY\` expectation when an error is
-- generated is valid. When there is a \`DENY\` with an error, the
-- \`SourcePosition\` is returned. E.g. \`error_position { line: 19 column:
-- 37 }\`
trErrorPosition :: Lens' TestResult (Maybe SourcePosition)
trErrorPosition
  = lens _trErrorPosition
      (\ s a -> s{_trErrorPosition = a})

-- | Debug messages related to test execution issues encountered during
-- evaluation. Debug messages may be related to too many or too few
-- invocations of function mocks or to runtime errors that occur during
-- evaluation. For example: \`\`\`Unable to read variable [name:
-- \"resource\"]\`\`\`
trDebugMessages :: Lens' TestResult [Text]
trDebugMessages
  = lens _trDebugMessages
      (\ s a -> s{_trDebugMessages = a})
      . _Default
      . _Coerce

instance FromJSON TestResult where
        parseJSON
          = withObject "TestResult"
              (\ o ->
                 TestResult' <$>
                   (o .:? "state") <*>
                     (o .:? "functionCalls" .!= mempty)
                     <*> (o .:? "visitedExpressions" .!= mempty)
                     <*> (o .:? "errorPosition")
                     <*> (o .:? "debugMessages" .!= mempty))

instance ToJSON TestResult where
        toJSON TestResult'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _trState,
                  ("functionCalls" .=) <$> _trFunctionCalls,
                  ("visitedExpressions" .=) <$> _trVisitedExpressions,
                  ("errorPosition" .=) <$> _trErrorPosition,
                  ("debugMessages" .=) <$> _trDebugMessages])

-- | \`Source\` is one or more \`File\` messages comprising a logical set of
-- rules.
--
-- /See:/ 'source' smart constructor.
newtype Source =
  Source'
    { _sFiles :: Maybe [File]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sFiles'
source
    :: Source
source = Source' {_sFiles = Nothing}


-- | \`File\` set constituting the \`Source\` bundle.
sFiles :: Lens' Source [File]
sFiles
  = lens _sFiles (\ s a -> s{_sFiles = a}) . _Default .
      _Coerce

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o -> Source' <$> (o .:? "files" .!= mempty))

instance ToJSON Source where
        toJSON Source'{..}
          = object (catMaybes [("files" .=) <$> _sFiles])

-- | \`TestSuite\` is a collection of \`TestCase\` instances that validate
-- the logical correctness of a \`Ruleset\`. The \`TestSuite\` may be
-- referenced in-line within a \`TestRuleset\` invocation or as part of a
-- \`Release\` object as a pre-release check.
--
-- /See:/ 'testSuite' smart constructor.
newtype TestSuite =
  TestSuite'
    { _tsTestCases :: Maybe [TestCase]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestSuite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsTestCases'
testSuite
    :: TestSuite
testSuite = TestSuite' {_tsTestCases = Nothing}


-- | Collection of test cases associated with the \`TestSuite\`.
tsTestCases :: Lens' TestSuite [TestCase]
tsTestCases
  = lens _tsTestCases (\ s a -> s{_tsTestCases = a}) .
      _Default
      . _Coerce

instance FromJSON TestSuite where
        parseJSON
          = withObject "TestSuite"
              (\ o ->
                 TestSuite' <$> (o .:? "testCases" .!= mempty))

instance ToJSON TestSuite where
        toJSON TestSuite'{..}
          = object
              (catMaybes [("testCases" .=) <$> _tsTestCases])

-- | The request for FirebaseRulesService.TestRuleset.
--
-- /See:/ 'testRulesetRequest' smart constructor.
data TestRulesetRequest =
  TestRulesetRequest'
    { _trrSource    :: !(Maybe Source)
    , _trrTestSuite :: !(Maybe TestSuite)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestRulesetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrSource'
--
-- * 'trrTestSuite'
testRulesetRequest
    :: TestRulesetRequest
testRulesetRequest =
  TestRulesetRequest' {_trrSource = Nothing, _trrTestSuite = Nothing}


-- | Optional \`Source\` to be checked for correctness. This field must not
-- be set when the resource name refers to a \`Ruleset\`.
trrSource :: Lens' TestRulesetRequest (Maybe Source)
trrSource
  = lens _trrSource (\ s a -> s{_trrSource = a})

-- | Inline \`TestSuite\` to run.
trrTestSuite :: Lens' TestRulesetRequest (Maybe TestSuite)
trrTestSuite
  = lens _trrTestSuite (\ s a -> s{_trrTestSuite = a})

instance FromJSON TestRulesetRequest where
        parseJSON
          = withObject "TestRulesetRequest"
              (\ o ->
                 TestRulesetRequest' <$>
                   (o .:? "source") <*> (o .:? "testSuite"))

instance ToJSON TestRulesetRequest where
        toJSON TestRulesetRequest'{..}
          = object
              (catMaybes
                 [("source" .=) <$> _trrSource,
                  ("testSuite" .=) <$> _trrTestSuite])

-- | \`File\` containing source content.
--
-- /See:/ 'file' smart constructor.
data File =
  File'
    { _fFingerprint :: !(Maybe Bytes)
    , _fContent     :: !(Maybe Text)
    , _fName        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'File' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fFingerprint'
--
-- * 'fContent'
--
-- * 'fName'
file
    :: File
file = File' {_fFingerprint = Nothing, _fContent = Nothing, _fName = Nothing}


-- | Fingerprint (e.g. github sha) associated with the \`File\`.
fFingerprint :: Lens' File (Maybe ByteString)
fFingerprint
  = lens _fFingerprint (\ s a -> s{_fFingerprint = a})
      . mapping _Bytes

-- | Textual Content.
fContent :: Lens' File (Maybe Text)
fContent = lens _fContent (\ s a -> s{_fContent = a})

-- | File name.
fName :: Lens' File (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

instance FromJSON File where
        parseJSON
          = withObject "File"
              (\ o ->
                 File' <$>
                   (o .:? "fingerprint") <*> (o .:? "content") <*>
                     (o .:? "name"))

instance ToJSON File where
        toJSON File'{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _fFingerprint,
                  ("content" .=) <$> _fContent,
                  ("name" .=) <$> _fName])

-- | The response for FirebaseRulesService.ListRulesets.
--
-- /See:/ 'listRulesetsResponse' smart constructor.
data ListRulesetsResponse =
  ListRulesetsResponse'
    { _lRulesets      :: !(Maybe [Ruleset])
    , _lNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListRulesetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lRulesets'
--
-- * 'lNextPageToken'
listRulesetsResponse
    :: ListRulesetsResponse
listRulesetsResponse =
  ListRulesetsResponse' {_lRulesets = Nothing, _lNextPageToken = Nothing}


-- | List of \`Ruleset\` instances.
lRulesets :: Lens' ListRulesetsResponse [Ruleset]
lRulesets
  = lens _lRulesets (\ s a -> s{_lRulesets = a}) .
      _Default
      . _Coerce

-- | The pagination token to retrieve the next page of results. If the value
-- is empty, no further results remain.
lNextPageToken :: Lens' ListRulesetsResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

instance FromJSON ListRulesetsResponse where
        parseJSON
          = withObject "ListRulesetsResponse"
              (\ o ->
                 ListRulesetsResponse' <$>
                   (o .:? "rulesets" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListRulesetsResponse where
        toJSON ListRulesetsResponse'{..}
          = object
              (catMaybes
                 [("rulesets" .=) <$> _lRulesets,
                  ("nextPageToken" .=) <$> _lNextPageToken])

-- | Issues include warnings, errors, and deprecation notices.
--
-- /See:/ 'issue' smart constructor.
data Issue =
  Issue'
    { _iSourcePosition :: !(Maybe SourcePosition)
    , _iSeverity       :: !(Maybe IssueSeverity)
    , _iDescription    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Issue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iSourcePosition'
--
-- * 'iSeverity'
--
-- * 'iDescription'
issue
    :: Issue
issue =
  Issue'
    {_iSourcePosition = Nothing, _iSeverity = Nothing, _iDescription = Nothing}


-- | Position of the issue in the \`Source\`.
iSourcePosition :: Lens' Issue (Maybe SourcePosition)
iSourcePosition
  = lens _iSourcePosition
      (\ s a -> s{_iSourcePosition = a})

-- | The severity of the issue.
iSeverity :: Lens' Issue (Maybe IssueSeverity)
iSeverity
  = lens _iSeverity (\ s a -> s{_iSeverity = a})

-- | Short error description.
iDescription :: Lens' Issue (Maybe Text)
iDescription
  = lens _iDescription (\ s a -> s{_iDescription = a})

instance FromJSON Issue where
        parseJSON
          = withObject "Issue"
              (\ o ->
                 Issue' <$>
                   (o .:? "sourcePosition") <*> (o .:? "severity") <*>
                     (o .:? "description"))

instance ToJSON Issue where
        toJSON Issue'{..}
          = object
              (catMaybes
                 [("sourcePosition" .=) <$> _iSourcePosition,
                  ("severity" .=) <$> _iSeverity,
                  ("description" .=) <$> _iDescription])

-- | The request for FirebaseRulesService.UpdateReleasePatch.
--
-- /See:/ 'updateReleaseRequest' smart constructor.
data UpdateReleaseRequest =
  UpdateReleaseRequest'
    { _urrUpdateMask :: !(Maybe GFieldMask)
    , _urrRelease    :: !(Maybe Release)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateReleaseRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrUpdateMask'
--
-- * 'urrRelease'
updateReleaseRequest
    :: UpdateReleaseRequest
updateReleaseRequest =
  UpdateReleaseRequest' {_urrUpdateMask = Nothing, _urrRelease = Nothing}


-- | Specifies which fields to update.
urrUpdateMask :: Lens' UpdateReleaseRequest (Maybe GFieldMask)
urrUpdateMask
  = lens _urrUpdateMask
      (\ s a -> s{_urrUpdateMask = a})

-- | \`Release\` to update.
urrRelease :: Lens' UpdateReleaseRequest (Maybe Release)
urrRelease
  = lens _urrRelease (\ s a -> s{_urrRelease = a})

instance FromJSON UpdateReleaseRequest where
        parseJSON
          = withObject "UpdateReleaseRequest"
              (\ o ->
                 UpdateReleaseRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "release"))

instance ToJSON UpdateReleaseRequest where
        toJSON UpdateReleaseRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _urrUpdateMask,
                  ("release" .=) <$> _urrRelease])
