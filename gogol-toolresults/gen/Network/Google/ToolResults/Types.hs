{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ToolResults.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ToolResults.Types
    (
    -- * Service Configuration
      toolResultsService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * ListStepThumbnailsResponse
    , ListStepThumbnailsResponse
    , listStepThumbnailsResponse
    , lstrNextPageToken
    , lstrThumbnails

    -- * Screen
    , Screen
    , screen
    , sFileReference
    , sLocale
    , sModel
    , sVersion

    -- * TestIssueSeverity
    , TestIssueSeverity (..)

    -- * Thumbnail
    , Thumbnail
    , thumbnail
    , tData
    , tHeightPx
    , tWidthPx
    , tContentType

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ToolOutputReference
    , ToolOutputReference
    , toolOutputReference
    , torCreationTime
    , torTestCase
    , torOutput

    -- * PerfSampleSeries
    , PerfSampleSeries
    , perfSampleSeries
    , pssExecutionId
    , pssStepId
    , pssHistoryId
    , pssProjectId
    , pssSampleSeriesId
    , pssBasicPerfSampleSeries

    -- * AndroidAppInfo
    , AndroidAppInfo
    , androidAppInfo
    , aaiVersionCode
    , aaiVersionName
    , aaiPackageName
    , aaiName

    -- * PerfSample
    , PerfSample
    , perfSample
    , psValue
    , psSampleTime

    -- * TestIssue
    , TestIssue
    , testIssue
    , tiCategory
    , tiSeverity
    , tiStackTrace
    , tiWarning
    , tiType
    , tiErrorMessage

    -- * MemoryInfo
    , MemoryInfo
    , memoryInfo
    , miMemoryCapInKibibyte
    , miMemoryTotalInKibibyte

    -- * Image
    , Image
    , image
    , iThumbnail
    , iStepId
    , iSourceImage
    , iError

    -- * InconclusiveDetail
    , InconclusiveDetail
    , inconclusiveDetail
    , idInfrastructureFailure
    , idAbortedByUser

    -- * TestIssueCategory
    , TestIssueCategory (..)

    -- * GraphicsStatsBucket
    , GraphicsStatsBucket
    , graphicsStatsBucket
    , gsbRenderMillis
    , gsbFrameCount

    -- * History
    , History
    , history
    , hName
    , hHistoryId
    , hDisplayName

    -- * BatchCreatePerfSamplesRequest
    , BatchCreatePerfSamplesRequest
    , batchCreatePerfSamplesRequest
    , bcpsrPerfSamples

    -- * ListPerfSampleSeriesResponse
    , ListPerfSampleSeriesResponse
    , listPerfSampleSeriesResponse
    , lpssrPerfSampleSeries

    -- * ListPerfSamplesResponse
    , ListPerfSamplesResponse
    , listPerfSamplesResponse
    , lpsrPerfSamples
    , lpsrNextPageToken

    -- * AndroidTest
    , AndroidTest
    , androidTest
    , atAndroidAppInfo
    , atTestTimeout
    , atAndroidRoboTest
    , atAndroidInstrumentationTest

    -- * AndroidRoboTest
    , AndroidRoboTest
    , androidRoboTest
    , artBootstrapRunnerClass
    , artAppInitialActivity
    , artMaxSteps
    , artBootstrapPackageId
    , artMaxDepth

    -- * FileReference
    , FileReference
    , fileReference
    , frFileURI

    -- * CPUInfo
    , CPUInfo
    , cpuInfo
    , ciNumberOfCores
    , ciCPUProcessor
    , ciCPUSpeedInGhz

    -- * ListExecutionsResponse
    , ListExecutionsResponse
    , listExecutionsResponse
    , lerNextPageToken
    , lerExecutions

    -- * ListStepsResponse
    , ListStepsResponse
    , listStepsResponse
    , lsrNextPageToken
    , lsrSteps

    -- * ProjectSettings
    , ProjectSettings
    , projectSettings
    , psName
    , psDefaultBucket

    -- * ToolExecutionStep
    , ToolExecutionStep
    , toolExecutionStep
    , tesToolExecution

    -- * BasicPerfSampleSeriesPerfMetricType
    , BasicPerfSampleSeriesPerfMetricType (..)

    -- * StepLabelsEntry
    , StepLabelsEntry
    , stepLabelsEntry
    , sleValue
    , sleKey

    -- * OutcomeSummary
    , OutcomeSummary (..)

    -- * TestExecutionStep
    , TestExecutionStep
    , testExecutionStep
    , tTestIssues
    , tToolExecution
    , tTestSuiteOverviews
    , tTestTiming

    -- * TestCaseReference
    , TestCaseReference
    , testCaseReference
    , tcrTestSuiteName
    , tcrName
    , tcrClassName

    -- * BasicPerfSampleSeriesPerfUnit
    , BasicPerfSampleSeriesPerfUnit (..)

    -- * FailureDetail
    , FailureDetail
    , failureDetail
    , fdCrashed
    , fdNotInstalled
    , fdTimedOut
    , fdOtherNATiveCrash
    , fdUnableToCrawl

    -- * ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter
    , ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter (..)

    -- * PerfEnvironment
    , PerfEnvironment
    , perfEnvironment
    , peMemoryInfo
    , peCPUInfo

    -- * ListScreenshotClustersResponse
    , ListScreenshotClustersResponse
    , listScreenshotClustersResponse
    , lscrClusters

    -- * AppStartTime
    , AppStartTime
    , appStartTime
    , astInitialDisplayTime
    , astFullyDrawnTime

    -- * GraphicsStats
    , GraphicsStats
    , graphicsStats
    , gsSlowDrawCount
    , gsTotalFrames
    , gsSlowBitmapUploadCount
    , gsMissedVsyncCount
    , gsP95Millis
    , gsBuckets
    , gsP90Millis
    , gsP50Millis
    , gsHighInputLatencyCount
    , gsP99Millis
    , gsSlowUiThreadCount
    , gsJankyFrames

    -- * StackTrace
    , StackTrace
    , stackTrace
    , stException

    -- * BatchCreatePerfSamplesResponse
    , BatchCreatePerfSamplesResponse
    , batchCreatePerfSamplesResponse
    , bPerfSamples

    -- * TestIssueType
    , TestIssueType (..)

    -- * Execution
    , Execution
    , execution
    , eCreationTime
    , eExecutionId
    , eState
    , eCompletionTime
    , eTestExecutionMatrixId
    , eOutcome
    , eSpecification

    -- * Outcome
    , Outcome
    , outcome
    , oSummary
    , oInconclusiveDetail
    , oFailureDetail
    , oSuccessDetail
    , oSkippedDetail

    -- * Step
    , Step
    , step
    , sCreationTime
    , sRunDuration
    , sState
    , sStepId
    , sToolExecutionStep
    , sDimensionValue
    , sHasImages
    , sTestExecutionStep
    , sCompletionTime
    , sName
    , sOutcome
    , sLabels
    , sDeviceUsageDuration
    , sDescription

    -- * SuccessDetail
    , SuccessDetail
    , successDetail
    , sdOtherNATiveCrash

    -- * ToolExecution
    , ToolExecution
    , toolExecution
    , teCommandLineArguments
    , teToolOutputs
    , teToolLogs
    , teExitCode

    -- * PublishXUnitXMLFilesRequest
    , PublishXUnitXMLFilesRequest
    , publishXUnitXMLFilesRequest
    , pxuxfrXUnitXMLFiles

    -- * PerfMetricsSummary
    , PerfMetricsSummary
    , perfMetricsSummary
    , pmsExecutionId
    , pmsStepId
    , pmsPerfMetrics
    , pmsPerfEnvironment
    , pmsGraphicsStats
    , pmsAppStartTime
    , pmsHistoryId
    , pmsProjectId

    -- * StepState
    , StepState (..)

    -- * ListHistoriesResponse
    , ListHistoriesResponse
    , listHistoriesResponse
    , lhrNextPageToken
    , lhrHistories

    -- * ToolExitCode
    , ToolExitCode
    , toolExitCode
    , tecNumber

    -- * ExecutionState
    , ExecutionState (..)

    -- * AndroidInstrumentationTest
    , AndroidInstrumentationTest
    , androidInstrumentationTest
    , aitTestTargets
    , aitUseOrchestrator
    , aitTestRunnerClass
    , aitTestPackageId

    -- * StepDimensionValueEntry
    , StepDimensionValueEntry
    , stepDimensionValueEntry
    , sdveValue
    , sdveKey

    -- * Specification
    , Specification
    , specification
    , sAndroidTest

    -- * BasicPerfSampleSeriesSampleSeriesLabel
    , BasicPerfSampleSeriesSampleSeriesLabel (..)

    -- * TestSuiteOverview
    , TestSuiteOverview
    , testSuiteOverview
    , tsoSkippedCount
    , tsoErrorCount
    , tsoXMLSource
    , tsoName
    , tsoFailureCount
    , tsoTotalCount

    -- * Duration
    , Duration
    , duration
    , dNanos
    , dSeconds

    -- * Timestamp
    , Timestamp
    , timestamp
    , tNanos
    , tSeconds

    -- * Any
    , Any
    , any
    , aValue
    , aTypeURL

    -- * TestTiming
    , TestTiming
    , testTiming
    , ttTestProcessDuration

    -- * ScreenshotCluster
    , ScreenshotCluster
    , screenshotCluster
    , scClusterId
    , scScreens
    , scActivity
    , scKeyScreen

    -- * BasicPerfSampleSeries
    , BasicPerfSampleSeries
    , basicPerfSampleSeries
    , bpssPerfUnit
    , bpssPerfMetricType
    , bpssSampleSeriesLabel

    -- * PerfMetricsSummaryPerfMetricsItem
    , PerfMetricsSummaryPerfMetricsItem (..)

    -- * SkippedDetail
    , SkippedDetail
    , skippedDetail
    , sdIncompatibleArchitecture
    , sdIncompatibleAppVersion
    , sdIncompatibleDevice
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types.Product
import           Network.Google.ToolResults.Types.Sum

-- | Default request referring to version 'v1beta3' of the Cloud Tool Results API. This contains the host and root path used as a starting point for constructing service requests.
toolResultsService :: ServiceConfig
toolResultsService
  = defaultService (ServiceId "toolresults:v1beta3")
      "www.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
