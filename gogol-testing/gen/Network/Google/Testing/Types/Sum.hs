{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Testing.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Testing.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Output only. Indicates the current progress of the test matrix (e.g.,
-- FINISHED).
data TestMatrixState
    = TestStateUnspecified
      -- ^ @TEST_STATE_UNSPECIFIED@
      -- Do not use. For proto versioning only.
    | Validating
      -- ^ @VALIDATING@
      -- The execution or matrix is being validated.
    | Pending
      -- ^ @PENDING@
      -- The execution or matrix is waiting for resources to become available.
    | Running
      -- ^ @RUNNING@
      -- The execution is currently being processed. Can only be set on an
      -- execution.
    | Finished
      -- ^ @FINISHED@
      -- The execution or matrix has terminated normally. On a matrix this means
      -- that the matrix level processing completed normally, but individual
      -- executions may be in an ERROR state.
    | Error'
      -- ^ @ERROR@
      -- The execution or matrix has stopped because it encountered an
      -- infrastructure failure.
    | UnsupportedEnvironment
      -- ^ @UNSUPPORTED_ENVIRONMENT@
      -- The execution was not run because it corresponds to a unsupported
      -- environment. Can only be set on an execution.
    | IncompatibleEnvironment
      -- ^ @INCOMPATIBLE_ENVIRONMENT@
      -- The execution was not run because the provided inputs are incompatible
      -- with the requested environment. Example: requested AndroidVersion is
      -- lower than APK\'s minSdkVersion Can only be set on an execution.
    | IncompatibleArchitecture
      -- ^ @INCOMPATIBLE_ARCHITECTURE@
      -- The execution was not run because the provided inputs are incompatible
      -- with the requested architecture. Example: requested device does not
      -- support running the native code in the supplied APK Can only be set on
      -- an execution.
    | Cancelled
      -- ^ @CANCELLED@
      -- The user cancelled the execution. Can only be set on an execution.
    | Invalid
      -- ^ @INVALID@
      -- The execution or matrix was not run because the provided inputs are not
      -- valid. Examples: input file is not of the expected type, is
      -- malformed\/corrupt, or was flagged as malware
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestMatrixState

instance FromHttpApiData TestMatrixState where
    parseQueryParam = \case
        "TEST_STATE_UNSPECIFIED" -> Right TestStateUnspecified
        "VALIDATING" -> Right Validating
        "PENDING" -> Right Pending
        "RUNNING" -> Right Running
        "FINISHED" -> Right Finished
        "ERROR" -> Right Error'
        "UNSUPPORTED_ENVIRONMENT" -> Right UnsupportedEnvironment
        "INCOMPATIBLE_ENVIRONMENT" -> Right IncompatibleEnvironment
        "INCOMPATIBLE_ARCHITECTURE" -> Right IncompatibleArchitecture
        "CANCELLED" -> Right Cancelled
        "INVALID" -> Right Invalid
        x -> Left ("Unable to parse TestMatrixState from: " <> x)

instance ToHttpApiData TestMatrixState where
    toQueryParam = \case
        TestStateUnspecified -> "TEST_STATE_UNSPECIFIED"
        Validating -> "VALIDATING"
        Pending -> "PENDING"
        Running -> "RUNNING"
        Finished -> "FINISHED"
        Error' -> "ERROR"
        UnsupportedEnvironment -> "UNSUPPORTED_ENVIRONMENT"
        IncompatibleEnvironment -> "INCOMPATIBLE_ENVIRONMENT"
        IncompatibleArchitecture -> "INCOMPATIBLE_ARCHITECTURE"
        Cancelled -> "CANCELLED"
        Invalid -> "INVALID"

instance FromJSON TestMatrixState where
    parseJSON = parseJSONText "TestMatrixState"

instance ToJSON TestMatrixState where
    toJSON = toJSONText

-- | Output only. Describes why the matrix is considered invalid. Only useful
-- for matrices in the INVALID state.
data TestMatrixInvalidMatrixDetails
    = InvalidMatrixDetailsUnspecified
      -- ^ @INVALID_MATRIX_DETAILS_UNSPECIFIED@
      -- Do not use. For proto versioning only.
    | DetailsUnavailable
      -- ^ @DETAILS_UNAVAILABLE@
      -- The matrix is INVALID, but there are no further details available.
    | MalformedAPK
      -- ^ @MALFORMED_APK@
      -- The input app APK could not be parsed.
    | MalformedTestAPK
      -- ^ @MALFORMED_TEST_APK@
      -- The input test APK could not be parsed.
    | NoManifest
      -- ^ @NO_MANIFEST@
      -- The AndroidManifest.xml could not be found.
    | NoPackageName
      -- ^ @NO_PACKAGE_NAME@
      -- The APK manifest does not declare a package name.
    | TestSameAsApp
      -- ^ @TEST_SAME_AS_APP@
      -- The test package and app package are the same.
    | NoInstrumentation
      -- ^ @NO_INSTRUMENTATION@
      -- The test apk does not declare an instrumentation.
    | NoSignature
      -- ^ @NO_SIGNATURE@
      -- The input app apk does not have a signature.
    | InstrumentationOrchestratorIncompatible
      -- ^ @INSTRUMENTATION_ORCHESTRATOR_INCOMPATIBLE@
      -- The test runner class specified by user or in the test APK\'s manifest
      -- file is not compatible with Android Test Orchestrator. Orchestrator is
      -- only compatible with AndroidJUnitRunner version 1.0 or higher.
      -- Orchestrator can be disabled by using DO_NOT_USE_ORCHESTRATOR
      -- OrchestratorOption.
    | NoTestRunnerClass
      -- ^ @NO_TEST_RUNNER_CLASS@
      -- The test APK does not contain the test runner class specified by user or
      -- in the manifest file. This can be caused by either of the following
      -- reasons: - the user provided a runner class name that\'s incorrect, or -
      -- the test runner isn\'t built into the test APK (might be in the app APK
      -- instead).
    | NoLauncherActivity
      -- ^ @NO_LAUNCHER_ACTIVITY@
      -- A main launcher activity could not be found.
    | ForBiddenPermissions
      -- ^ @FORBIDDEN_PERMISSIONS@
      -- The app declares one or more permissions that are not allowed.
    | InvalidRoboDirectives
      -- ^ @INVALID_ROBO_DIRECTIVES@
      -- There is a conflict in the provided robo_directives.
    | TestLoopIntentFilterNotFound
      -- ^ @TEST_LOOP_INTENT_FILTER_NOT_FOUND@
      -- There there is no test loop intent filter, or the one that is given is
      -- not formatted correctly.
    | ScenarioLabelNotDeclared
      -- ^ @SCENARIO_LABEL_NOT_DECLARED@
      -- The request contains a scenario label that was not declared in the
      -- manifest.
    | ScenarioLabelMalformed
      -- ^ @SCENARIO_LABEL_MALFORMED@
      -- There was an error when parsing a label\'s value.
    | ScenarioNotDeclared
      -- ^ @SCENARIO_NOT_DECLARED@
      -- The request contains a scenario number that was not declared in the
      -- manifest.
    | DeviceAdminReceiver
      -- ^ @DEVICE_ADMIN_RECEIVER@
      -- Device administrator applications are not allowed.
    | MalformedXcTestZip
      -- ^ @MALFORMED_XC_TEST_ZIP@
      -- The zipped XCTest was malformed. The zip did not contain a single
      -- .xctestrun file and the contents of the DerivedData\/Build\/Products
      -- directory.
    | BuiltForIosSimulator
      -- ^ @BUILT_FOR_IOS_SIMULATOR@
      -- The zipped XCTest was built for the iOS simulator rather than for a
      -- physical device.
    | NoTestsInXcTestZip
      -- ^ @NO_TESTS_IN_XC_TEST_ZIP@
      -- The .xctestrun file did not specify any test targets.
    | UseDestinationArtifacts
      -- ^ @USE_DESTINATION_ARTIFACTS@
      -- One or more of the test targets defined in the .xctestrun file specifies
      -- \"UseDestinationArtifacts\", which is disallowed.
    | TestNotAppHosted
      -- ^ @TEST_NOT_APP_HOSTED@
      -- XC tests which run on physical devices must have
      -- \"IsAppHostedTestBundle\" == \"true\" in the xctestrun file.
    | PListCannotBeParsed
      -- ^ @PLIST_CANNOT_BE_PARSED@
      -- An Info.plist file in the XCTest zip could not be parsed.
    | TestOnlyAPK
      -- ^ @TEST_ONLY_APK@
      -- The APK is marked as \"testOnly\". Deprecated and not currently used.
    | MalformedIPa
      -- ^ @MALFORMED_IPA@
      -- The input IPA could not be parsed. Deprecated and not currently used.
    | NoCodeAPK
      -- ^ @NO_CODE_APK@
      -- APK contains no code. See also
      -- https:\/\/developer.android.com\/guide\/topics\/manifest\/application-element.html#code
    | InvalidInputAPK
      -- ^ @INVALID_INPUT_APK@
      -- Either the provided input APK path was malformed, the APK file does not
      -- exist, or the user does not have permission to access the APK file.
    | InvalidAPKPreviewSdk
      -- ^ @INVALID_APK_PREVIEW_SDK@
      -- APK is built for a preview SDK which is unsupported
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestMatrixInvalidMatrixDetails

instance FromHttpApiData TestMatrixInvalidMatrixDetails where
    parseQueryParam = \case
        "INVALID_MATRIX_DETAILS_UNSPECIFIED" -> Right InvalidMatrixDetailsUnspecified
        "DETAILS_UNAVAILABLE" -> Right DetailsUnavailable
        "MALFORMED_APK" -> Right MalformedAPK
        "MALFORMED_TEST_APK" -> Right MalformedTestAPK
        "NO_MANIFEST" -> Right NoManifest
        "NO_PACKAGE_NAME" -> Right NoPackageName
        "TEST_SAME_AS_APP" -> Right TestSameAsApp
        "NO_INSTRUMENTATION" -> Right NoInstrumentation
        "NO_SIGNATURE" -> Right NoSignature
        "INSTRUMENTATION_ORCHESTRATOR_INCOMPATIBLE" -> Right InstrumentationOrchestratorIncompatible
        "NO_TEST_RUNNER_CLASS" -> Right NoTestRunnerClass
        "NO_LAUNCHER_ACTIVITY" -> Right NoLauncherActivity
        "FORBIDDEN_PERMISSIONS" -> Right ForBiddenPermissions
        "INVALID_ROBO_DIRECTIVES" -> Right InvalidRoboDirectives
        "TEST_LOOP_INTENT_FILTER_NOT_FOUND" -> Right TestLoopIntentFilterNotFound
        "SCENARIO_LABEL_NOT_DECLARED" -> Right ScenarioLabelNotDeclared
        "SCENARIO_LABEL_MALFORMED" -> Right ScenarioLabelMalformed
        "SCENARIO_NOT_DECLARED" -> Right ScenarioNotDeclared
        "DEVICE_ADMIN_RECEIVER" -> Right DeviceAdminReceiver
        "MALFORMED_XC_TEST_ZIP" -> Right MalformedXcTestZip
        "BUILT_FOR_IOS_SIMULATOR" -> Right BuiltForIosSimulator
        "NO_TESTS_IN_XC_TEST_ZIP" -> Right NoTestsInXcTestZip
        "USE_DESTINATION_ARTIFACTS" -> Right UseDestinationArtifacts
        "TEST_NOT_APP_HOSTED" -> Right TestNotAppHosted
        "PLIST_CANNOT_BE_PARSED" -> Right PListCannotBeParsed
        "TEST_ONLY_APK" -> Right TestOnlyAPK
        "MALFORMED_IPA" -> Right MalformedIPa
        "NO_CODE_APK" -> Right NoCodeAPK
        "INVALID_INPUT_APK" -> Right InvalidInputAPK
        "INVALID_APK_PREVIEW_SDK" -> Right InvalidAPKPreviewSdk
        x -> Left ("Unable to parse TestMatrixInvalidMatrixDetails from: " <> x)

instance ToHttpApiData TestMatrixInvalidMatrixDetails where
    toQueryParam = \case
        InvalidMatrixDetailsUnspecified -> "INVALID_MATRIX_DETAILS_UNSPECIFIED"
        DetailsUnavailable -> "DETAILS_UNAVAILABLE"
        MalformedAPK -> "MALFORMED_APK"
        MalformedTestAPK -> "MALFORMED_TEST_APK"
        NoManifest -> "NO_MANIFEST"
        NoPackageName -> "NO_PACKAGE_NAME"
        TestSameAsApp -> "TEST_SAME_AS_APP"
        NoInstrumentation -> "NO_INSTRUMENTATION"
        NoSignature -> "NO_SIGNATURE"
        InstrumentationOrchestratorIncompatible -> "INSTRUMENTATION_ORCHESTRATOR_INCOMPATIBLE"
        NoTestRunnerClass -> "NO_TEST_RUNNER_CLASS"
        NoLauncherActivity -> "NO_LAUNCHER_ACTIVITY"
        ForBiddenPermissions -> "FORBIDDEN_PERMISSIONS"
        InvalidRoboDirectives -> "INVALID_ROBO_DIRECTIVES"
        TestLoopIntentFilterNotFound -> "TEST_LOOP_INTENT_FILTER_NOT_FOUND"
        ScenarioLabelNotDeclared -> "SCENARIO_LABEL_NOT_DECLARED"
        ScenarioLabelMalformed -> "SCENARIO_LABEL_MALFORMED"
        ScenarioNotDeclared -> "SCENARIO_NOT_DECLARED"
        DeviceAdminReceiver -> "DEVICE_ADMIN_RECEIVER"
        MalformedXcTestZip -> "MALFORMED_XC_TEST_ZIP"
        BuiltForIosSimulator -> "BUILT_FOR_IOS_SIMULATOR"
        NoTestsInXcTestZip -> "NO_TESTS_IN_XC_TEST_ZIP"
        UseDestinationArtifacts -> "USE_DESTINATION_ARTIFACTS"
        TestNotAppHosted -> "TEST_NOT_APP_HOSTED"
        PListCannotBeParsed -> "PLIST_CANNOT_BE_PARSED"
        TestOnlyAPK -> "TEST_ONLY_APK"
        MalformedIPa -> "MALFORMED_IPA"
        NoCodeAPK -> "NO_CODE_APK"
        InvalidInputAPK -> "INVALID_INPUT_APK"
        InvalidAPKPreviewSdk -> "INVALID_APK_PREVIEW_SDK"

instance FromJSON TestMatrixInvalidMatrixDetails where
    parseJSON = parseJSONText "TestMatrixInvalidMatrixDetails"

instance ToJSON TestMatrixInvalidMatrixDetails where
    toJSON = toJSONText

-- | The option of whether running each test within its own invocation of
-- instrumentation with Android Test Orchestrator or not. ** Orchestrator
-- is only compatible with AndroidJUnitRunner version 1.0 or higher! **
-- Orchestrator offers the following benefits: - No shared state - Crashes
-- are isolated - Logs are scoped per test See for more information about
-- Android Test Orchestrator. If not set, the test will be run without the
-- orchestrator.
data AndroidInstrumentationTestOrchestratorOption
    = OrchestratorOptionUnspecified
      -- ^ @ORCHESTRATOR_OPTION_UNSPECIFIED@
      -- Default value: the server will choose the mode. Currently implies that
      -- the test will run without the orchestrator. In the future, all
      -- instrumentation tests will be run with the orchestrator. Using the
      -- orchestrator is highly encouraged because of all the benefits it offers.
    | UseOrchestrator
      -- ^ @USE_ORCHESTRATOR@
      -- Run test using orchestrator. ** Only compatible with AndroidJUnitRunner
      -- version 1.0 or higher! ** Recommended.
    | DoNotUseOrchestrator
      -- ^ @DO_NOT_USE_ORCHESTRATOR@
      -- Run test without using orchestrator.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AndroidInstrumentationTestOrchestratorOption

instance FromHttpApiData AndroidInstrumentationTestOrchestratorOption where
    parseQueryParam = \case
        "ORCHESTRATOR_OPTION_UNSPECIFIED" -> Right OrchestratorOptionUnspecified
        "USE_ORCHESTRATOR" -> Right UseOrchestrator
        "DO_NOT_USE_ORCHESTRATOR" -> Right DoNotUseOrchestrator
        x -> Left ("Unable to parse AndroidInstrumentationTestOrchestratorOption from: " <> x)

instance ToHttpApiData AndroidInstrumentationTestOrchestratorOption where
    toQueryParam = \case
        OrchestratorOptionUnspecified -> "ORCHESTRATOR_OPTION_UNSPECIFIED"
        UseOrchestrator -> "USE_ORCHESTRATOR"
        DoNotUseOrchestrator -> "DO_NOT_USE_ORCHESTRATOR"

instance FromJSON AndroidInstrumentationTestOrchestratorOption where
    parseJSON = parseJSONText "AndroidInstrumentationTestOrchestratorOption"

instance ToJSON AndroidInstrumentationTestOrchestratorOption where
    toJSON = toJSONText

-- | Output only. Indicates the current progress of the test execution (e.g.,
-- FINISHED).
data TestExecutionState
    = TESTestStateUnspecified
      -- ^ @TEST_STATE_UNSPECIFIED@
      -- Do not use. For proto versioning only.
    | TESValidating
      -- ^ @VALIDATING@
      -- The execution or matrix is being validated.
    | TESPending
      -- ^ @PENDING@
      -- The execution or matrix is waiting for resources to become available.
    | TESRunning
      -- ^ @RUNNING@
      -- The execution is currently being processed. Can only be set on an
      -- execution.
    | TESFinished
      -- ^ @FINISHED@
      -- The execution or matrix has terminated normally. On a matrix this means
      -- that the matrix level processing completed normally, but individual
      -- executions may be in an ERROR state.
    | TESError'
      -- ^ @ERROR@
      -- The execution or matrix has stopped because it encountered an
      -- infrastructure failure.
    | TESUnsupportedEnvironment
      -- ^ @UNSUPPORTED_ENVIRONMENT@
      -- The execution was not run because it corresponds to a unsupported
      -- environment. Can only be set on an execution.
    | TESIncompatibleEnvironment
      -- ^ @INCOMPATIBLE_ENVIRONMENT@
      -- The execution was not run because the provided inputs are incompatible
      -- with the requested environment. Example: requested AndroidVersion is
      -- lower than APK\'s minSdkVersion Can only be set on an execution.
    | TESIncompatibleArchitecture
      -- ^ @INCOMPATIBLE_ARCHITECTURE@
      -- The execution was not run because the provided inputs are incompatible
      -- with the requested architecture. Example: requested device does not
      -- support running the native code in the supplied APK Can only be set on
      -- an execution.
    | TESCancelled
      -- ^ @CANCELLED@
      -- The user cancelled the execution. Can only be set on an execution.
    | TESInvalid
      -- ^ @INVALID@
      -- The execution or matrix was not run because the provided inputs are not
      -- valid. Examples: input file is not of the expected type, is
      -- malformed\/corrupt, or was flagged as malware
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestExecutionState

instance FromHttpApiData TestExecutionState where
    parseQueryParam = \case
        "TEST_STATE_UNSPECIFIED" -> Right TESTestStateUnspecified
        "VALIDATING" -> Right TESValidating
        "PENDING" -> Right TESPending
        "RUNNING" -> Right TESRunning
        "FINISHED" -> Right TESFinished
        "ERROR" -> Right TESError'
        "UNSUPPORTED_ENVIRONMENT" -> Right TESUnsupportedEnvironment
        "INCOMPATIBLE_ENVIRONMENT" -> Right TESIncompatibleEnvironment
        "INCOMPATIBLE_ARCHITECTURE" -> Right TESIncompatibleArchitecture
        "CANCELLED" -> Right TESCancelled
        "INVALID" -> Right TESInvalid
        x -> Left ("Unable to parse TestExecutionState from: " <> x)

instance ToHttpApiData TestExecutionState where
    toQueryParam = \case
        TESTestStateUnspecified -> "TEST_STATE_UNSPECIFIED"
        TESValidating -> "VALIDATING"
        TESPending -> "PENDING"
        TESRunning -> "RUNNING"
        TESFinished -> "FINISHED"
        TESError' -> "ERROR"
        TESUnsupportedEnvironment -> "UNSUPPORTED_ENVIRONMENT"
        TESIncompatibleEnvironment -> "INCOMPATIBLE_ENVIRONMENT"
        TESIncompatibleArchitecture -> "INCOMPATIBLE_ARCHITECTURE"
        TESCancelled -> "CANCELLED"
        TESInvalid -> "INVALID"

instance FromJSON TestExecutionState where
    parseJSON = parseJSONText "TestExecutionState"

instance ToJSON TestExecutionState where
    toJSON = toJSONText

-- | The current rolled-up state of the test matrix. If this state is already
-- final, then the cancelation request will have no effect.
data CancelTestMatrixResponseTestState
    = CTMRTSTestStateUnspecified
      -- ^ @TEST_STATE_UNSPECIFIED@
      -- Do not use. For proto versioning only.
    | CTMRTSValidating
      -- ^ @VALIDATING@
      -- The execution or matrix is being validated.
    | CTMRTSPending
      -- ^ @PENDING@
      -- The execution or matrix is waiting for resources to become available.
    | CTMRTSRunning
      -- ^ @RUNNING@
      -- The execution is currently being processed. Can only be set on an
      -- execution.
    | CTMRTSFinished
      -- ^ @FINISHED@
      -- The execution or matrix has terminated normally. On a matrix this means
      -- that the matrix level processing completed normally, but individual
      -- executions may be in an ERROR state.
    | CTMRTSError'
      -- ^ @ERROR@
      -- The execution or matrix has stopped because it encountered an
      -- infrastructure failure.
    | CTMRTSUnsupportedEnvironment
      -- ^ @UNSUPPORTED_ENVIRONMENT@
      -- The execution was not run because it corresponds to a unsupported
      -- environment. Can only be set on an execution.
    | CTMRTSIncompatibleEnvironment
      -- ^ @INCOMPATIBLE_ENVIRONMENT@
      -- The execution was not run because the provided inputs are incompatible
      -- with the requested environment. Example: requested AndroidVersion is
      -- lower than APK\'s minSdkVersion Can only be set on an execution.
    | CTMRTSIncompatibleArchitecture
      -- ^ @INCOMPATIBLE_ARCHITECTURE@
      -- The execution was not run because the provided inputs are incompatible
      -- with the requested architecture. Example: requested device does not
      -- support running the native code in the supplied APK Can only be set on
      -- an execution.
    | CTMRTSCancelled
      -- ^ @CANCELLED@
      -- The user cancelled the execution. Can only be set on an execution.
    | CTMRTSInvalid
      -- ^ @INVALID@
      -- The execution or matrix was not run because the provided inputs are not
      -- valid. Examples: input file is not of the expected type, is
      -- malformed\/corrupt, or was flagged as malware
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CancelTestMatrixResponseTestState

instance FromHttpApiData CancelTestMatrixResponseTestState where
    parseQueryParam = \case
        "TEST_STATE_UNSPECIFIED" -> Right CTMRTSTestStateUnspecified
        "VALIDATING" -> Right CTMRTSValidating
        "PENDING" -> Right CTMRTSPending
        "RUNNING" -> Right CTMRTSRunning
        "FINISHED" -> Right CTMRTSFinished
        "ERROR" -> Right CTMRTSError'
        "UNSUPPORTED_ENVIRONMENT" -> Right CTMRTSUnsupportedEnvironment
        "INCOMPATIBLE_ENVIRONMENT" -> Right CTMRTSIncompatibleEnvironment
        "INCOMPATIBLE_ARCHITECTURE" -> Right CTMRTSIncompatibleArchitecture
        "CANCELLED" -> Right CTMRTSCancelled
        "INVALID" -> Right CTMRTSInvalid
        x -> Left ("Unable to parse CancelTestMatrixResponseTestState from: " <> x)

instance ToHttpApiData CancelTestMatrixResponseTestState where
    toQueryParam = \case
        CTMRTSTestStateUnspecified -> "TEST_STATE_UNSPECIFIED"
        CTMRTSValidating -> "VALIDATING"
        CTMRTSPending -> "PENDING"
        CTMRTSRunning -> "RUNNING"
        CTMRTSFinished -> "FINISHED"
        CTMRTSError' -> "ERROR"
        CTMRTSUnsupportedEnvironment -> "UNSUPPORTED_ENVIRONMENT"
        CTMRTSIncompatibleEnvironment -> "INCOMPATIBLE_ENVIRONMENT"
        CTMRTSIncompatibleArchitecture -> "INCOMPATIBLE_ARCHITECTURE"
        CTMRTSCancelled -> "CANCELLED"
        CTMRTSInvalid -> "INVALID"

instance FromJSON CancelTestMatrixResponseTestState where
    parseJSON = parseJSONText "CancelTestMatrixResponseTestState"

instance ToJSON CancelTestMatrixResponseTestState where
    toJSON = toJSONText

-- | Required. The type of action that Robo should perform on the specified
-- element.
data RoboDirectiveActionType
    = ActionTypeUnspecified
      -- ^ @ACTION_TYPE_UNSPECIFIED@
      -- DO NOT USE. For proto versioning only.
    | SingleClick
      -- ^ @SINGLE_CLICK@
      -- Direct Robo to click on the specified element. No-op if specified
      -- element is not clickable.
    | EnterText
      -- ^ @ENTER_TEXT@
      -- Direct Robo to enter text on the specified element. No-op if specified
      -- element is not enabled or does not allow text entry.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RoboDirectiveActionType

instance FromHttpApiData RoboDirectiveActionType where
    parseQueryParam = \case
        "ACTION_TYPE_UNSPECIFIED" -> Right ActionTypeUnspecified
        "SINGLE_CLICK" -> Right SingleClick
        "ENTER_TEXT" -> Right EnterText
        x -> Left ("Unable to parse RoboDirectiveActionType from: " <> x)

instance ToHttpApiData RoboDirectiveActionType where
    toQueryParam = \case
        ActionTypeUnspecified -> "ACTION_TYPE_UNSPECIFIED"
        SingleClick -> "SINGLE_CLICK"
        EnterText -> "ENTER_TEXT"

instance FromJSON RoboDirectiveActionType where
    parseJSON = parseJSONText "RoboDirectiveActionType"

instance ToJSON RoboDirectiveActionType where
    toJSON = toJSONText

-- | Whether this device is a phone, tablet, wearable, etc.
data IosModelFormFactor
    = DeviceFormFactorUnspecified
      -- ^ @DEVICE_FORM_FACTOR_UNSPECIFIED@
      -- Do not use. For proto versioning only.
    | Phone
      -- ^ @PHONE@
      -- This device has the shape of a phone.
    | Tablet
      -- ^ @TABLET@
      -- This device has the shape of a tablet.
    | Wearable
      -- ^ @WEARABLE@
      -- This device has the shape of a watch or other wearable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable IosModelFormFactor

instance FromHttpApiData IosModelFormFactor where
    parseQueryParam = \case
        "DEVICE_FORM_FACTOR_UNSPECIFIED" -> Right DeviceFormFactorUnspecified
        "PHONE" -> Right Phone
        "TABLET" -> Right Tablet
        "WEARABLE" -> Right Wearable
        x -> Left ("Unable to parse IosModelFormFactor from: " <> x)

instance ToHttpApiData IosModelFormFactor where
    toQueryParam = \case
        DeviceFormFactorUnspecified -> "DEVICE_FORM_FACTOR_UNSPECIFIED"
        Phone -> "PHONE"
        Tablet -> "TABLET"
        Wearable -> "WEARABLE"

instance FromJSON IosModelFormFactor where
    parseJSON = parseJSONText "IosModelFormFactor"

instance ToJSON IosModelFormFactor where
    toJSON = toJSONText

-- | Whether this device is a phone, tablet, wearable, etc.
data AndroidModelFormFactor
    = AMFFDeviceFormFactorUnspecified
      -- ^ @DEVICE_FORM_FACTOR_UNSPECIFIED@
      -- Do not use. For proto versioning only.
    | AMFFPhone
      -- ^ @PHONE@
      -- This device has the shape of a phone.
    | AMFFTablet
      -- ^ @TABLET@
      -- This device has the shape of a tablet.
    | AMFFWearable
      -- ^ @WEARABLE@
      -- This device has the shape of a watch or other wearable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AndroidModelFormFactor

instance FromHttpApiData AndroidModelFormFactor where
    parseQueryParam = \case
        "DEVICE_FORM_FACTOR_UNSPECIFIED" -> Right AMFFDeviceFormFactorUnspecified
        "PHONE" -> Right AMFFPhone
        "TABLET" -> Right AMFFTablet
        "WEARABLE" -> Right AMFFWearable
        x -> Left ("Unable to parse AndroidModelFormFactor from: " <> x)

instance ToHttpApiData AndroidModelFormFactor where
    toQueryParam = \case
        AMFFDeviceFormFactorUnspecified -> "DEVICE_FORM_FACTOR_UNSPECIFIED"
        AMFFPhone -> "PHONE"
        AMFFTablet -> "TABLET"
        AMFFWearable -> "WEARABLE"

instance FromJSON AndroidModelFormFactor where
    parseJSON = parseJSONText "AndroidModelFormFactor"

instance ToJSON AndroidModelFormFactor where
    toJSON = toJSONText

-- | Whether this device is virtual or physical.
data AndroidModelForm
    = DeviceFormUnspecified
      -- ^ @DEVICE_FORM_UNSPECIFIED@
      -- Do not use. For proto versioning only.
    | Virtual
      -- ^ @VIRTUAL@
      -- A software stack that simulates the device.
    | Physical
      -- ^ @PHYSICAL@
      -- Actual hardware.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AndroidModelForm

instance FromHttpApiData AndroidModelForm where
    parseQueryParam = \case
        "DEVICE_FORM_UNSPECIFIED" -> Right DeviceFormUnspecified
        "VIRTUAL" -> Right Virtual
        "PHYSICAL" -> Right Physical
        x -> Left ("Unable to parse AndroidModelForm from: " <> x)

instance ToHttpApiData AndroidModelForm where
    toQueryParam = \case
        DeviceFormUnspecified -> "DEVICE_FORM_UNSPECIFIED"
        Virtual -> "VIRTUAL"
        Physical -> "PHYSICAL"

instance FromJSON AndroidModelForm where
    parseJSON = parseJSONText "AndroidModelForm"

instance ToJSON AndroidModelForm where
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
