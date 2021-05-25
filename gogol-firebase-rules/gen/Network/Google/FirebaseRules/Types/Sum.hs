{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseRules.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseRules.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The requested runtime executable version. Defaults to
-- FIREBASE_RULES_EXECUTABLE_V1.
data ProjectsReleasesGetExecutableExecutableVersion
    = ReleaseExecutableVersionUnspecified
      -- ^ @RELEASE_EXECUTABLE_VERSION_UNSPECIFIED@
      -- Executable format unspecified. Defaults to FIREBASE_RULES_EXECUTABLE_V1
    | FirebaseRulesExecutableV1
      -- ^ @FIREBASE_RULES_EXECUTABLE_V1@
      -- Firebase Rules syntax \'rules2\' executable versions: Custom AST for use
      -- with Java clients.
    | FirebaseRulesExecutableV2
      -- ^ @FIREBASE_RULES_EXECUTABLE_V2@
      -- CEL-based executable for use with C++ clients.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsReleasesGetExecutableExecutableVersion

instance FromHttpApiData ProjectsReleasesGetExecutableExecutableVersion where
    parseQueryParam = \case
        "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED" -> Right ReleaseExecutableVersionUnspecified
        "FIREBASE_RULES_EXECUTABLE_V1" -> Right FirebaseRulesExecutableV1
        "FIREBASE_RULES_EXECUTABLE_V2" -> Right FirebaseRulesExecutableV2
        x -> Left ("Unable to parse ProjectsReleasesGetExecutableExecutableVersion from: " <> x)

instance ToHttpApiData ProjectsReleasesGetExecutableExecutableVersion where
    toQueryParam = \case
        ReleaseExecutableVersionUnspecified -> "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED"
        FirebaseRulesExecutableV1 -> "FIREBASE_RULES_EXECUTABLE_V1"
        FirebaseRulesExecutableV2 -> "FIREBASE_RULES_EXECUTABLE_V2"

instance FromJSON ProjectsReleasesGetExecutableExecutableVersion where
    parseJSON = parseJSONText "ProjectsReleasesGetExecutableExecutableVersion"

instance ToJSON ProjectsReleasesGetExecutableExecutableVersion where
    toJSON = toJSONText

-- | Specifies what should be included in the response.
data TestCaseExpressionReportLevel
    = LevelUnspecified
      -- ^ @LEVEL_UNSPECIFIED@
      -- No level has been specified. Defaults to \"NONE\" behavior.
    | None
      -- ^ @NONE@
      -- Do not include any additional information.
    | Full
      -- ^ @FULL@
      -- Include detailed reporting on expressions evaluated.
    | Visited
      -- ^ @VISITED@
      -- Only include the expressions that were visited during evaluation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestCaseExpressionReportLevel

instance FromHttpApiData TestCaseExpressionReportLevel where
    parseQueryParam = \case
        "LEVEL_UNSPECIFIED" -> Right LevelUnspecified
        "NONE" -> Right None
        "FULL" -> Right Full
        "VISITED" -> Right Visited
        x -> Left ("Unable to parse TestCaseExpressionReportLevel from: " <> x)

instance ToHttpApiData TestCaseExpressionReportLevel where
    toQueryParam = \case
        LevelUnspecified -> "LEVEL_UNSPECIFIED"
        None -> "NONE"
        Full -> "FULL"
        Visited -> "VISITED"

instance FromJSON TestCaseExpressionReportLevel where
    parseJSON = parseJSONText "TestCaseExpressionReportLevel"

instance ToJSON TestCaseExpressionReportLevel where
    toJSON = toJSONText

-- | State of the test.
data TestResultState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Test state is not set.
    | Success
      -- ^ @SUCCESS@
      -- Test is a success.
    | Failure
      -- ^ @FAILURE@
      -- Test is a failure.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestResultState

instance FromHttpApiData TestResultState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "SUCCESS" -> Right Success
        "FAILURE" -> Right Failure
        x -> Left ("Unable to parse TestResultState from: " <> x)

instance ToHttpApiData TestResultState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Success -> "SUCCESS"
        Failure -> "FAILURE"

instance FromJSON TestResultState where
    parseJSON = parseJSONText "TestResultState"

instance ToJSON TestResultState where
    toJSON = toJSONText

-- | Specifies whether paths (such as request.path) are encoded and how.
data TestCasePathEncoding
    = EncodingUnspecified
      -- ^ @ENCODING_UNSPECIFIED@
      -- No encoding has been specified. Defaults to \"URL_ENCODED\" behavior.
    | URLEncoded
      -- ^ @URL_ENCODED@
      -- Treats path segments as URL encoded but with non-encoded separators
      -- (\"\/\"). This is the default behavior.
    | Plain
      -- ^ @PLAIN@
      -- Treats total path as non-URL encoded e.g. raw.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestCasePathEncoding

instance FromHttpApiData TestCasePathEncoding where
    parseQueryParam = \case
        "ENCODING_UNSPECIFIED" -> Right EncodingUnspecified
        "URL_ENCODED" -> Right URLEncoded
        "PLAIN" -> Right Plain
        x -> Left ("Unable to parse TestCasePathEncoding from: " <> x)

instance ToHttpApiData TestCasePathEncoding where
    toQueryParam = \case
        EncodingUnspecified -> "ENCODING_UNSPECIFIED"
        URLEncoded -> "URL_ENCODED"
        Plain -> "PLAIN"

instance FromJSON TestCasePathEncoding where
    parseJSON = parseJSONText "TestCasePathEncoding"

instance ToJSON TestCasePathEncoding where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The severity of the issue.
data IssueSeverity
    = SeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- An unspecified severity.
    | Deprecation
      -- ^ @DEPRECATION@
      -- Deprecation issue for statements and method that may no longer be
      -- supported or maintained.
    | Warning
      -- ^ @WARNING@
      -- Warnings such as: unused variables.
    | Error'
      -- ^ @ERROR@
      -- Errors such as: unmatched curly braces or variable redefinition.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable IssueSeverity

instance FromHttpApiData IssueSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right SeverityUnspecified
        "DEPRECATION" -> Right Deprecation
        "WARNING" -> Right Warning
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse IssueSeverity from: " <> x)

instance ToHttpApiData IssueSeverity where
    toQueryParam = \case
        SeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        Deprecation -> "DEPRECATION"
        Warning -> "WARNING"
        Error' -> "ERROR"

instance FromJSON IssueSeverity where
    parseJSON = parseJSONText "IssueSeverity"

instance ToJSON IssueSeverity where
    toJSON = toJSONText

-- | Test expectation.
data TestCaseExpectation
    = ExpectationUnspecified
      -- ^ @EXPECTATION_UNSPECIFIED@
      -- Unspecified expectation.
    | Allow
      -- ^ @ALLOW@
      -- Expect an allowed result.
    | Deny
      -- ^ @DENY@
      -- Expect a denied result.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestCaseExpectation

instance FromHttpApiData TestCaseExpectation where
    parseQueryParam = \case
        "EXPECTATION_UNSPECIFIED" -> Right ExpectationUnspecified
        "ALLOW" -> Right Allow
        "DENY" -> Right Deny
        x -> Left ("Unable to parse TestCaseExpectation from: " <> x)

instance ToHttpApiData TestCaseExpectation where
    toQueryParam = \case
        ExpectationUnspecified -> "EXPECTATION_UNSPECIFIED"
        Allow -> "ALLOW"
        Deny -> "DENY"

instance FromJSON TestCaseExpectation where
    parseJSON = parseJSONText "TestCaseExpectation"

instance ToJSON TestCaseExpectation where
    toJSON = toJSONText

-- | The Rules runtime version of the executable.
data GetReleaseExecutableResponseExecutableVersion
    = GREREVReleaseExecutableVersionUnspecified
      -- ^ @RELEASE_EXECUTABLE_VERSION_UNSPECIFIED@
      -- Executable format unspecified. Defaults to FIREBASE_RULES_EXECUTABLE_V1
    | GREREVFirebaseRulesExecutableV1
      -- ^ @FIREBASE_RULES_EXECUTABLE_V1@
      -- Firebase Rules syntax \'rules2\' executable versions: Custom AST for use
      -- with Java clients.
    | GREREVFirebaseRulesExecutableV2
      -- ^ @FIREBASE_RULES_EXECUTABLE_V2@
      -- CEL-based executable for use with C++ clients.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GetReleaseExecutableResponseExecutableVersion

instance FromHttpApiData GetReleaseExecutableResponseExecutableVersion where
    parseQueryParam = \case
        "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED" -> Right GREREVReleaseExecutableVersionUnspecified
        "FIREBASE_RULES_EXECUTABLE_V1" -> Right GREREVFirebaseRulesExecutableV1
        "FIREBASE_RULES_EXECUTABLE_V2" -> Right GREREVFirebaseRulesExecutableV2
        x -> Left ("Unable to parse GetReleaseExecutableResponseExecutableVersion from: " <> x)

instance ToHttpApiData GetReleaseExecutableResponseExecutableVersion where
    toQueryParam = \case
        GREREVReleaseExecutableVersionUnspecified -> "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED"
        GREREVFirebaseRulesExecutableV1 -> "FIREBASE_RULES_EXECUTABLE_V1"
        GREREVFirebaseRulesExecutableV2 -> "FIREBASE_RULES_EXECUTABLE_V2"

instance FromJSON GetReleaseExecutableResponseExecutableVersion where
    parseJSON = parseJSONText "GetReleaseExecutableResponseExecutableVersion"

instance ToJSON GetReleaseExecutableResponseExecutableVersion where
    toJSON = toJSONText

-- | \`Language\` used to generate the executable bytes.
data GetReleaseExecutableResponseLanguage
    = LanguageUnspecified
      -- ^ @LANGUAGE_UNSPECIFIED@
      -- Language unspecified. Defaults to FIREBASE_RULES.
    | FirebaseRules
      -- ^ @FIREBASE_RULES@
      -- Firebase Rules language.
    | EventFlowTriggers
      -- ^ @EVENT_FLOW_TRIGGERS@
      -- Event Flow triggers.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GetReleaseExecutableResponseLanguage

instance FromHttpApiData GetReleaseExecutableResponseLanguage where
    parseQueryParam = \case
        "LANGUAGE_UNSPECIFIED" -> Right LanguageUnspecified
        "FIREBASE_RULES" -> Right FirebaseRules
        "EVENT_FLOW_TRIGGERS" -> Right EventFlowTriggers
        x -> Left ("Unable to parse GetReleaseExecutableResponseLanguage from: " <> x)

instance ToHttpApiData GetReleaseExecutableResponseLanguage where
    toQueryParam = \case
        LanguageUnspecified -> "LANGUAGE_UNSPECIFIED"
        FirebaseRules -> "FIREBASE_RULES"
        EventFlowTriggers -> "EVENT_FLOW_TRIGGERS"

instance FromJSON GetReleaseExecutableResponseLanguage where
    parseJSON = parseJSONText "GetReleaseExecutableResponseLanguage"

instance ToJSON GetReleaseExecutableResponseLanguage where
    toJSON = toJSONText
