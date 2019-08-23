{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ToolResults.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ToolResults.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Severity of issue. Required.
data TestIssueSeverity
    = Info
      -- ^ @info@
    | Severe
      -- ^ @severe@
    | Suggestion
      -- ^ @suggestion@
    | UnspecifiedSeverity
      -- ^ @unspecifiedSeverity@
    | Warning
      -- ^ @warning@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestIssueSeverity

instance FromHttpApiData TestIssueSeverity where
    parseQueryParam = \case
        "info" -> Right Info
        "severe" -> Right Severe
        "suggestion" -> Right Suggestion
        "unspecifiedSeverity" -> Right UnspecifiedSeverity
        "warning" -> Right Warning
        x -> Left ("Unable to parse TestIssueSeverity from: " <> x)

instance ToHttpApiData TestIssueSeverity where
    toQueryParam = \case
        Info -> "info"
        Severe -> "severe"
        Suggestion -> "suggestion"
        UnspecifiedSeverity -> "unspecifiedSeverity"
        Warning -> "warning"

instance FromJSON TestIssueSeverity where
    parseJSON = parseJSONText "TestIssueSeverity"

instance ToJSON TestIssueSeverity where
    toJSON = toJSONText

-- | Category of issue. Required.
data TestIssueCategory
    = Common
      -- ^ @common@
    | Robo
      -- ^ @robo@
    | UnspecifiedCategory
      -- ^ @unspecifiedCategory@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestIssueCategory

instance FromHttpApiData TestIssueCategory where
    parseQueryParam = \case
        "common" -> Right Common
        "robo" -> Right Robo
        "unspecifiedCategory" -> Right UnspecifiedCategory
        x -> Left ("Unable to parse TestIssueCategory from: " <> x)

instance ToHttpApiData TestIssueCategory where
    toQueryParam = \case
        Common -> "common"
        Robo -> "robo"
        UnspecifiedCategory -> "unspecifiedCategory"

instance FromJSON TestIssueCategory where
    parseJSON = parseJSONText "TestIssueCategory"

instance ToJSON TestIssueCategory where
    toJSON = toJSONText

data IndividualOutcomeOutcomeSummary
    = Failure
      -- ^ @failure@
    | Flaky
      -- ^ @flaky@
    | Inconclusive
      -- ^ @inconclusive@
    | Skipped
      -- ^ @skipped@
    | Success
      -- ^ @success@
    | UnSet
      -- ^ @unset@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable IndividualOutcomeOutcomeSummary

instance FromHttpApiData IndividualOutcomeOutcomeSummary where
    parseQueryParam = \case
        "failure" -> Right Failure
        "flaky" -> Right Flaky
        "inconclusive" -> Right Inconclusive
        "skipped" -> Right Skipped
        "success" -> Right Success
        "unset" -> Right UnSet
        x -> Left ("Unable to parse IndividualOutcomeOutcomeSummary from: " <> x)

instance ToHttpApiData IndividualOutcomeOutcomeSummary where
    toQueryParam = \case
        Failure -> "failure"
        Flaky -> "flaky"
        Inconclusive -> "inconclusive"
        Skipped -> "skipped"
        Success -> "success"
        UnSet -> "unset"

instance FromJSON IndividualOutcomeOutcomeSummary where
    parseJSON = parseJSONText "IndividualOutcomeOutcomeSummary"

instance ToJSON IndividualOutcomeOutcomeSummary where
    toJSON = toJSONText

data BasicPerfSampleSeriesPerfMetricType
    = CPU
      -- ^ @cpu@
    | Graphics
      -- ^ @graphics@
    | Memory
      -- ^ @memory@
    | Network
      -- ^ @network@
    | PerfMetricTypeUnspecified
      -- ^ @perfMetricTypeUnspecified@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicPerfSampleSeriesPerfMetricType

instance FromHttpApiData BasicPerfSampleSeriesPerfMetricType where
    parseQueryParam = \case
        "cpu" -> Right CPU
        "graphics" -> Right Graphics
        "memory" -> Right Memory
        "network" -> Right Network
        "perfMetricTypeUnspecified" -> Right PerfMetricTypeUnspecified
        x -> Left ("Unable to parse BasicPerfSampleSeriesPerfMetricType from: " <> x)

instance ToHttpApiData BasicPerfSampleSeriesPerfMetricType where
    toQueryParam = \case
        CPU -> "cpu"
        Graphics -> "graphics"
        Memory -> "memory"
        Network -> "network"
        PerfMetricTypeUnspecified -> "perfMetricTypeUnspecified"

instance FromJSON BasicPerfSampleSeriesPerfMetricType where
    parseJSON = parseJSONText "BasicPerfSampleSeriesPerfMetricType"

instance ToJSON BasicPerfSampleSeriesPerfMetricType where
    toJSON = toJSONText

-- | The simplest way to interpret a result. Required
data OutcomeSummary
    = OSFailure
      -- ^ @failure@
    | OSFlaky
      -- ^ @flaky@
    | OSInconclusive
      -- ^ @inconclusive@
    | OSSkipped
      -- ^ @skipped@
    | OSSuccess
      -- ^ @success@
    | OSUnSet
      -- ^ @unset@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OutcomeSummary

instance FromHttpApiData OutcomeSummary where
    parseQueryParam = \case
        "failure" -> Right OSFailure
        "flaky" -> Right OSFlaky
        "inconclusive" -> Right OSInconclusive
        "skipped" -> Right OSSkipped
        "success" -> Right OSSuccess
        "unset" -> Right OSUnSet
        x -> Left ("Unable to parse OutcomeSummary from: " <> x)

instance ToHttpApiData OutcomeSummary where
    toQueryParam = \case
        OSFailure -> "failure"
        OSFlaky -> "flaky"
        OSInconclusive -> "inconclusive"
        OSSkipped -> "skipped"
        OSSuccess -> "success"
        OSUnSet -> "unset"

instance FromJSON OutcomeSummary where
    parseJSON = parseJSONText "OutcomeSummary"

instance ToJSON OutcomeSummary where
    toJSON = toJSONText

data BasicPerfSampleSeriesPerfUnit
    = Byte
      -- ^ @byte@
    | BytesPerSecond
      -- ^ @bytesPerSecond@
    | FramesPerSecond
      -- ^ @framesPerSecond@
    | Kibibyte
      -- ^ @kibibyte@
    | Percent
      -- ^ @percent@
    | PerfUnitUnspecified
      -- ^ @perfUnitUnspecified@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicPerfSampleSeriesPerfUnit

instance FromHttpApiData BasicPerfSampleSeriesPerfUnit where
    parseQueryParam = \case
        "byte" -> Right Byte
        "bytesPerSecond" -> Right BytesPerSecond
        "framesPerSecond" -> Right FramesPerSecond
        "kibibyte" -> Right Kibibyte
        "percent" -> Right Percent
        "perfUnitUnspecified" -> Right PerfUnitUnspecified
        x -> Left ("Unable to parse BasicPerfSampleSeriesPerfUnit from: " <> x)

instance ToHttpApiData BasicPerfSampleSeriesPerfUnit where
    toQueryParam = \case
        Byte -> "byte"
        BytesPerSecond -> "bytesPerSecond"
        FramesPerSecond -> "framesPerSecond"
        Kibibyte -> "kibibyte"
        Percent -> "percent"
        PerfUnitUnspecified -> "perfUnitUnspecified"

instance FromJSON BasicPerfSampleSeriesPerfUnit where
    parseJSON = parseJSONText "BasicPerfSampleSeriesPerfUnit"

instance ToJSON BasicPerfSampleSeriesPerfUnit where
    toJSON = toJSONText

-- | Specify one or more PerfMetricType values such as CPU to filter the
-- result
data ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter
    = PHESPSSLFCPU
      -- ^ @cpu@
    | PHESPSSLFGraphics
      -- ^ @graphics@
    | PHESPSSLFMemory
      -- ^ @memory@
    | PHESPSSLFNetwork
      -- ^ @network@
    | PHESPSSLFPerfMetricTypeUnspecified
      -- ^ @perfMetricTypeUnspecified@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter

instance FromHttpApiData ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter where
    parseQueryParam = \case
        "cpu" -> Right PHESPSSLFCPU
        "graphics" -> Right PHESPSSLFGraphics
        "memory" -> Right PHESPSSLFMemory
        "network" -> Right PHESPSSLFNetwork
        "perfMetricTypeUnspecified" -> Right PHESPSSLFPerfMetricTypeUnspecified
        x -> Left ("Unable to parse ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter from: " <> x)

instance ToHttpApiData ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter where
    toQueryParam = \case
        PHESPSSLFCPU -> "cpu"
        PHESPSSLFGraphics -> "graphics"
        PHESPSSLFMemory -> "memory"
        PHESPSSLFNetwork -> "network"
        PHESPSSLFPerfMetricTypeUnspecified -> "perfMetricTypeUnspecified"

instance FromJSON ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter where
    parseJSON = parseJSONText "ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter"

instance ToJSON ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter where
    toJSON = toJSONText

-- | Type of issue. Required.
data TestIssueType
    = Anr
      -- ^ @anr@
    | AvailableDeepLinks
      -- ^ @availableDeepLinks@
    | CompatibleWithOrchestrator
      -- ^ @compatibleWithOrchestrator@
    | CompleteRoboScriptExecution
      -- ^ @completeRoboScriptExecution@
    | EncounteredLoginScreen
      -- ^ @encounteredLoginScreen@
    | EncounteredNonAndroidUiWidgetScreen
      -- ^ @encounteredNonAndroidUiWidgetScreen@
    | FailedToInstall
      -- ^ @failedToInstall@
    | FatalException
      -- ^ @fatalException@
    | InAppPurchases
      -- ^ @inAppPurchases@
    | IncompleteRoboScriptExecution
      -- ^ @incompleteRoboScriptExecution@
    | InsufficientCoverage
      -- ^ @insufficientCoverage@
    | IosCrash
      -- ^ @iosCrash@
    | IosException
      -- ^ @iosException@
    | LauncherActivityNotFound
      -- ^ @launcherActivityNotFound@
    | NATiveCrash
      -- ^ @nativeCrash@
    | NonSdkAPIUsageReport
      -- ^ @nonSdkApiUsageReport@
    | NonSdkAPIUsageViolation
      -- ^ @nonSdkApiUsageViolation@
    | PerformedGoogleLogin
      -- ^ @performedGoogleLogin@
    | PerformedMonkeyActions
      -- ^ @performedMonkeyActions@
    | StartActivityNotFound
      -- ^ @startActivityNotFound@
    | UnspecifiedType
      -- ^ @unspecifiedType@
    | UnusedRoboDirective
      -- ^ @unusedRoboDirective@
    | UsedRoboDirective
      -- ^ @usedRoboDirective@
    | UsedRoboIgnoreDirective
      -- ^ @usedRoboIgnoreDirective@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestIssueType

instance FromHttpApiData TestIssueType where
    parseQueryParam = \case
        "anr" -> Right Anr
        "availableDeepLinks" -> Right AvailableDeepLinks
        "compatibleWithOrchestrator" -> Right CompatibleWithOrchestrator
        "completeRoboScriptExecution" -> Right CompleteRoboScriptExecution
        "encounteredLoginScreen" -> Right EncounteredLoginScreen
        "encounteredNonAndroidUiWidgetScreen" -> Right EncounteredNonAndroidUiWidgetScreen
        "failedToInstall" -> Right FailedToInstall
        "fatalException" -> Right FatalException
        "inAppPurchases" -> Right InAppPurchases
        "incompleteRoboScriptExecution" -> Right IncompleteRoboScriptExecution
        "insufficientCoverage" -> Right InsufficientCoverage
        "iosCrash" -> Right IosCrash
        "iosException" -> Right IosException
        "launcherActivityNotFound" -> Right LauncherActivityNotFound
        "nativeCrash" -> Right NATiveCrash
        "nonSdkApiUsageReport" -> Right NonSdkAPIUsageReport
        "nonSdkApiUsageViolation" -> Right NonSdkAPIUsageViolation
        "performedGoogleLogin" -> Right PerformedGoogleLogin
        "performedMonkeyActions" -> Right PerformedMonkeyActions
        "startActivityNotFound" -> Right StartActivityNotFound
        "unspecifiedType" -> Right UnspecifiedType
        "unusedRoboDirective" -> Right UnusedRoboDirective
        "usedRoboDirective" -> Right UsedRoboDirective
        "usedRoboIgnoreDirective" -> Right UsedRoboIgnoreDirective
        x -> Left ("Unable to parse TestIssueType from: " <> x)

instance ToHttpApiData TestIssueType where
    toQueryParam = \case
        Anr -> "anr"
        AvailableDeepLinks -> "availableDeepLinks"
        CompatibleWithOrchestrator -> "compatibleWithOrchestrator"
        CompleteRoboScriptExecution -> "completeRoboScriptExecution"
        EncounteredLoginScreen -> "encounteredLoginScreen"
        EncounteredNonAndroidUiWidgetScreen -> "encounteredNonAndroidUiWidgetScreen"
        FailedToInstall -> "failedToInstall"
        FatalException -> "fatalException"
        InAppPurchases -> "inAppPurchases"
        IncompleteRoboScriptExecution -> "incompleteRoboScriptExecution"
        InsufficientCoverage -> "insufficientCoverage"
        IosCrash -> "iosCrash"
        IosException -> "iosException"
        LauncherActivityNotFound -> "launcherActivityNotFound"
        NATiveCrash -> "nativeCrash"
        NonSdkAPIUsageReport -> "nonSdkApiUsageReport"
        NonSdkAPIUsageViolation -> "nonSdkApiUsageViolation"
        PerformedGoogleLogin -> "performedGoogleLogin"
        PerformedMonkeyActions -> "performedMonkeyActions"
        StartActivityNotFound -> "startActivityNotFound"
        UnspecifiedType -> "unspecifiedType"
        UnusedRoboDirective -> "unusedRoboDirective"
        UsedRoboDirective -> "usedRoboDirective"
        UsedRoboIgnoreDirective -> "usedRoboIgnoreDirective"

instance FromJSON TestIssueType where
    parseJSON = parseJSONText "TestIssueType"

instance ToJSON TestIssueType where
    toJSON = toJSONText

-- | The initial state is IN_PROGRESS. The only legal state transitions are *
-- IN_PROGRESS -> COMPLETE A PRECONDITION_FAILED will be returned if an
-- invalid transition is requested. It is valid to create Step with a state
-- set to COMPLETE. The state can only be set to COMPLETE once. A
-- PRECONDITION_FAILED will be returned if the state is set to COMPLETE
-- multiple times. - In response: always set - In create\/update request:
-- optional
data StepState
    = Complete
      -- ^ @complete@
    | InProgress
      -- ^ @inProgress@
    | Pending
      -- ^ @pending@
    | UnknownState
      -- ^ @unknownState@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StepState

instance FromHttpApiData StepState where
    parseQueryParam = \case
        "complete" -> Right Complete
        "inProgress" -> Right InProgress
        "pending" -> Right Pending
        "unknownState" -> Right UnknownState
        x -> Left ("Unable to parse StepState from: " <> x)

instance ToHttpApiData StepState where
    toQueryParam = \case
        Complete -> "complete"
        InProgress -> "inProgress"
        Pending -> "pending"
        UnknownState -> "unknownState"

instance FromJSON StepState where
    parseJSON = parseJSONText "StepState"

instance ToJSON StepState where
    toJSON = toJSONText

-- | The initial state is IN_PROGRESS. The only legal state transitions is
-- from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if
-- an invalid transition is requested. The state can only be set to
-- COMPLETE once. A FAILED_PRECONDITION will be returned if the state is
-- set to COMPLETE multiple times. If the state is set to COMPLETE, all the
-- in-progress steps within the execution will be set as COMPLETE. If the
-- outcome of the step is not set, the outcome will be set to INCONCLUSIVE.
-- - In response always set - In create\/update request: optional
data ExecutionState
    = ESComplete
      -- ^ @complete@
    | ESInProgress
      -- ^ @inProgress@
    | ESPending
      -- ^ @pending@
    | ESUnknownState
      -- ^ @unknownState@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ExecutionState

instance FromHttpApiData ExecutionState where
    parseQueryParam = \case
        "complete" -> Right ESComplete
        "inProgress" -> Right ESInProgress
        "pending" -> Right ESPending
        "unknownState" -> Right ESUnknownState
        x -> Left ("Unable to parse ExecutionState from: " <> x)

instance ToHttpApiData ExecutionState where
    toQueryParam = \case
        ESComplete -> "complete"
        ESInProgress -> "inProgress"
        ESPending -> "pending"
        ESUnknownState -> "unknownState"

instance FromJSON ExecutionState where
    parseJSON = parseJSONText "ExecutionState"

instance ToJSON ExecutionState where
    toJSON = toJSONText

data BasicPerfSampleSeriesSampleSeriesLabel
    = CPUKernel
      -- ^ @cpuKernel@
    | CPUTotal
      -- ^ @cpuTotal@
    | CPUUser
      -- ^ @cpuUser@
    | GraphicsFrameRate
      -- ^ @graphicsFrameRate@
    | MemoryRssPrivate
      -- ^ @memoryRssPrivate@
    | MemoryRssShared
      -- ^ @memoryRssShared@
    | MemoryRssTotal
      -- ^ @memoryRssTotal@
    | MemoryTotal
      -- ^ @memoryTotal@
    | NetworkReceived
      -- ^ @networkReceived@
    | NetworkSent
      -- ^ @networkSent@
    | NtBytesReceived
      -- ^ @ntBytesReceived@
    | NtBytesTransferred
      -- ^ @ntBytesTransferred@
    | SampleSeriesTypeUnspecified
      -- ^ @sampleSeriesTypeUnspecified@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicPerfSampleSeriesSampleSeriesLabel

instance FromHttpApiData BasicPerfSampleSeriesSampleSeriesLabel where
    parseQueryParam = \case
        "cpuKernel" -> Right CPUKernel
        "cpuTotal" -> Right CPUTotal
        "cpuUser" -> Right CPUUser
        "graphicsFrameRate" -> Right GraphicsFrameRate
        "memoryRssPrivate" -> Right MemoryRssPrivate
        "memoryRssShared" -> Right MemoryRssShared
        "memoryRssTotal" -> Right MemoryRssTotal
        "memoryTotal" -> Right MemoryTotal
        "networkReceived" -> Right NetworkReceived
        "networkSent" -> Right NetworkSent
        "ntBytesReceived" -> Right NtBytesReceived
        "ntBytesTransferred" -> Right NtBytesTransferred
        "sampleSeriesTypeUnspecified" -> Right SampleSeriesTypeUnspecified
        x -> Left ("Unable to parse BasicPerfSampleSeriesSampleSeriesLabel from: " <> x)

instance ToHttpApiData BasicPerfSampleSeriesSampleSeriesLabel where
    toQueryParam = \case
        CPUKernel -> "cpuKernel"
        CPUTotal -> "cpuTotal"
        CPUUser -> "cpuUser"
        GraphicsFrameRate -> "graphicsFrameRate"
        MemoryRssPrivate -> "memoryRssPrivate"
        MemoryRssShared -> "memoryRssShared"
        MemoryRssTotal -> "memoryRssTotal"
        MemoryTotal -> "memoryTotal"
        NetworkReceived -> "networkReceived"
        NetworkSent -> "networkSent"
        NtBytesReceived -> "ntBytesReceived"
        NtBytesTransferred -> "ntBytesTransferred"
        SampleSeriesTypeUnspecified -> "sampleSeriesTypeUnspecified"

instance FromJSON BasicPerfSampleSeriesSampleSeriesLabel where
    parseJSON = parseJSONText "BasicPerfSampleSeriesSampleSeriesLabel"

instance ToJSON BasicPerfSampleSeriesSampleSeriesLabel where
    toJSON = toJSONText

-- | The status of the test case. Required.
data TestCaseStatus
    = TCSError'
      -- ^ @error@
    | TCSFailed
      -- ^ @failed@
    | TCSPassed
      -- ^ @passed@
    | TCSSkipped
      -- ^ @skipped@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestCaseStatus

instance FromHttpApiData TestCaseStatus where
    parseQueryParam = \case
        "error" -> Right TCSError'
        "failed" -> Right TCSFailed
        "passed" -> Right TCSPassed
        "skipped" -> Right TCSSkipped
        x -> Left ("Unable to parse TestCaseStatus from: " <> x)

instance ToHttpApiData TestCaseStatus where
    toQueryParam = \case
        TCSError' -> "error"
        TCSFailed -> "failed"
        TCSPassed -> "passed"
        TCSSkipped -> "skipped"

instance FromJSON TestCaseStatus where
    parseJSON = parseJSONText "TestCaseStatus"

instance ToJSON TestCaseStatus where
    toJSON = toJSONText

-- | Rollup test status of multiple steps that were run with the same
-- configuration as a group.
data PrimaryStepRollUp
    = PSRUFailure
      -- ^ @failure@
    | PSRUFlaky
      -- ^ @flaky@
    | PSRUInconclusive
      -- ^ @inconclusive@
    | PSRUSkipped
      -- ^ @skipped@
    | PSRUSuccess
      -- ^ @success@
    | PSRUUnSet
      -- ^ @unset@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PrimaryStepRollUp

instance FromHttpApiData PrimaryStepRollUp where
    parseQueryParam = \case
        "failure" -> Right PSRUFailure
        "flaky" -> Right PSRUFlaky
        "inconclusive" -> Right PSRUInconclusive
        "skipped" -> Right PSRUSkipped
        "success" -> Right PSRUSuccess
        "unset" -> Right PSRUUnSet
        x -> Left ("Unable to parse PrimaryStepRollUp from: " <> x)

instance ToHttpApiData PrimaryStepRollUp where
    toQueryParam = \case
        PSRUFailure -> "failure"
        PSRUFlaky -> "flaky"
        PSRUInconclusive -> "inconclusive"
        PSRUSkipped -> "skipped"
        PSRUSuccess -> "success"
        PSRUUnSet -> "unset"

instance FromJSON PrimaryStepRollUp where
    parseJSON = parseJSONText "PrimaryStepRollUp"

instance ToJSON PrimaryStepRollUp where
    toJSON = toJSONText

data PerfMetricsSummaryPerfMetricsItem
    = PMSPMICPU
      -- ^ @cpu@
    | PMSPMIGraphics
      -- ^ @graphics@
    | PMSPMIMemory
      -- ^ @memory@
    | PMSPMINetwork
      -- ^ @network@
    | PMSPMIPerfMetricTypeUnspecified
      -- ^ @perfMetricTypeUnspecified@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PerfMetricsSummaryPerfMetricsItem

instance FromHttpApiData PerfMetricsSummaryPerfMetricsItem where
    parseQueryParam = \case
        "cpu" -> Right PMSPMICPU
        "graphics" -> Right PMSPMIGraphics
        "memory" -> Right PMSPMIMemory
        "network" -> Right PMSPMINetwork
        "perfMetricTypeUnspecified" -> Right PMSPMIPerfMetricTypeUnspecified
        x -> Left ("Unable to parse PerfMetricsSummaryPerfMetricsItem from: " <> x)

instance ToHttpApiData PerfMetricsSummaryPerfMetricsItem where
    toQueryParam = \case
        PMSPMICPU -> "cpu"
        PMSPMIGraphics -> "graphics"
        PMSPMIMemory -> "memory"
        PMSPMINetwork -> "network"
        PMSPMIPerfMetricTypeUnspecified -> "perfMetricTypeUnspecified"

instance FromJSON PerfMetricsSummaryPerfMetricsItem where
    parseJSON = parseJSONText "PerfMetricsSummaryPerfMetricsItem"

instance ToJSON PerfMetricsSummaryPerfMetricsItem where
    toJSON = toJSONText
