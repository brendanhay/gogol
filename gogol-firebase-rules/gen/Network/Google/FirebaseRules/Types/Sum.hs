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

import           Network.Google.Prelude hiding (Bytes)

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

instance Hashable GetReleaseExecutableResponseExecutableVersion

instance FromHttpApiData GetReleaseExecutableResponseExecutableVersion where
    parseQueryParam = \case
        "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED" -> Right ReleaseExecutableVersionUnspecified
        "FIREBASE_RULES_EXECUTABLE_V1" -> Right FirebaseRulesExecutableV1
        "FIREBASE_RULES_EXECUTABLE_V2" -> Right FirebaseRulesExecutableV2
        x -> Left ("Unable to parse GetReleaseExecutableResponseExecutableVersion from: " <> x)

instance ToHttpApiData GetReleaseExecutableResponseExecutableVersion where
    toQueryParam = \case
        ReleaseExecutableVersionUnspecified -> "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED"
        FirebaseRulesExecutableV1 -> "FIREBASE_RULES_EXECUTABLE_V1"
        FirebaseRulesExecutableV2 -> "FIREBASE_RULES_EXECUTABLE_V2"

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
