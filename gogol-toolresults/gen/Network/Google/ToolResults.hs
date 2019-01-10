{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ToolResults
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads and publishes results from Firebase Test Lab.
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference>
module Network.Google.ToolResults
    (
    -- * Service Configuration
      toolResultsService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , ToolResultsAPI

    -- * Resources

    -- ** toolresults.projects.getSettings
    , module Network.Google.Resource.ToolResults.Projects.GetSettings

    -- ** toolresults.projects.histories.create
    , module Network.Google.Resource.ToolResults.Projects.Histories.Create

    -- ** toolresults.projects.histories.executions.clusters.get
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Clusters.Get

    -- ** toolresults.projects.histories.executions.clusters.list
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Clusters.List

    -- ** toolresults.projects.histories.executions.create
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Create

    -- ** toolresults.projects.histories.executions.get
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Get

    -- ** toolresults.projects.histories.executions.list
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.List

    -- ** toolresults.projects.histories.executions.patch
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Patch

    -- ** toolresults.projects.histories.executions.steps.create
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Create

    -- ** toolresults.projects.histories.executions.steps.get
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Get

    -- ** toolresults.projects.histories.executions.steps.getPerfMetricsSummary
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.GetPerfMetricsSummary

    -- ** toolresults.projects.histories.executions.steps.list
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.List

    -- ** toolresults.projects.histories.executions.steps.patch
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Patch

    -- ** toolresults.projects.histories.executions.steps.perfMetricsSummary.create
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfMetricsSummary.Create

    -- ** toolresults.projects.histories.executions.steps.perfSampleSeries.create
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Create

    -- ** toolresults.projects.histories.executions.steps.perfSampleSeries.get
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Get

    -- ** toolresults.projects.histories.executions.steps.perfSampleSeries.list
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.List

    -- ** toolresults.projects.histories.executions.steps.perfSampleSeries.samples.batchCreate
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Samples.BatchCreate

    -- ** toolresults.projects.histories.executions.steps.perfSampleSeries.samples.list
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Samples.List

    -- ** toolresults.projects.histories.executions.steps.publishXunitXmlFiles
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PublishXUnitXMLFiles

    -- ** toolresults.projects.histories.executions.steps.thumbnails.list
    , module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Thumbnails.List

    -- ** toolresults.projects.histories.get
    , module Network.Google.Resource.ToolResults.Projects.Histories.Get

    -- ** toolresults.projects.histories.list
    , module Network.Google.Resource.ToolResults.Projects.Histories.List

    -- ** toolresults.projects.initializeSettings
    , module Network.Google.Resource.ToolResults.Projects.InitializeSettings

    -- * Types

    -- ** ListStepThumbnailsResponse
    , ListStepThumbnailsResponse
    , listStepThumbnailsResponse
    , lstrNextPageToken
    , lstrThumbnails

    -- ** Screen
    , Screen
    , screen
    , sFileReference
    , sLocale
    , sModel
    , sVersion

    -- ** TestIssueSeverity
    , TestIssueSeverity (..)

    -- ** Thumbnail
    , Thumbnail
    , thumbnail
    , tData
    , tHeightPx
    , tWidthPx
    , tContentType

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ToolOutputReference
    , ToolOutputReference
    , toolOutputReference
    , torCreationTime
    , torTestCase
    , torOutput

    -- ** PerfSampleSeries
    , PerfSampleSeries
    , perfSampleSeries
    , pssExecutionId
    , pssStepId
    , pssHistoryId
    , pssProjectId
    , pssSampleSeriesId
    , pssBasicPerfSampleSeries

    -- ** AndroidAppInfo
    , AndroidAppInfo
    , androidAppInfo
    , aaiVersionCode
    , aaiVersionName
    , aaiPackageName
    , aaiName

    -- ** PerfSample
    , PerfSample
    , perfSample
    , psValue
    , psSampleTime

    -- ** TestIssue
    , TestIssue
    , testIssue
    , tiCategory
    , tiSeverity
    , tiStackTrace
    , tiWarning
    , tiType
    , tiErrorMessage

    -- ** MemoryInfo
    , MemoryInfo
    , memoryInfo
    , miMemoryCapInKibibyte
    , miMemoryTotalInKibibyte

    -- ** Image
    , Image
    , image
    , iThumbnail
    , iStepId
    , iSourceImage
    , iError

    -- ** InconclusiveDetail
    , InconclusiveDetail
    , inconclusiveDetail
    , idInfrastructureFailure
    , idAbortedByUser

    -- ** TestIssueCategory
    , TestIssueCategory (..)

    -- ** GraphicsStatsBucket
    , GraphicsStatsBucket
    , graphicsStatsBucket
    , gsbRenderMillis
    , gsbFrameCount

    -- ** History
    , History
    , history
    , hName
    , hHistoryId
    , hDisplayName

    -- ** BatchCreatePerfSamplesRequest
    , BatchCreatePerfSamplesRequest
    , batchCreatePerfSamplesRequest
    , bcpsrPerfSamples

    -- ** ListPerfSampleSeriesResponse
    , ListPerfSampleSeriesResponse
    , listPerfSampleSeriesResponse
    , lpssrPerfSampleSeries

    -- ** ListPerfSamplesResponse
    , ListPerfSamplesResponse
    , listPerfSamplesResponse
    , lpsrPerfSamples
    , lpsrNextPageToken

    -- ** AndroidTest
    , AndroidTest
    , androidTest
    , atAndroidAppInfo
    , atTestTimeout
    , atAndroidRoboTest
    , atAndroidInstrumentationTest

    -- ** AndroidRoboTest
    , AndroidRoboTest
    , androidRoboTest
    , artBootstrapRunnerClass
    , artAppInitialActivity
    , artMaxSteps
    , artBootstrapPackageId
    , artMaxDepth

    -- ** FileReference
    , FileReference
    , fileReference
    , frFileURI

    -- ** CPUInfo
    , CPUInfo
    , cpuInfo
    , ciNumberOfCores
    , ciCPUProcessor
    , ciCPUSpeedInGhz

    -- ** ListExecutionsResponse
    , ListExecutionsResponse
    , listExecutionsResponse
    , lerNextPageToken
    , lerExecutions

    -- ** ListStepsResponse
    , ListStepsResponse
    , listStepsResponse
    , lsrNextPageToken
    , lsrSteps

    -- ** ProjectSettings
    , ProjectSettings
    , projectSettings
    , psName
    , psDefaultBucket

    -- ** ToolExecutionStep
    , ToolExecutionStep
    , toolExecutionStep
    , tesToolExecution

    -- ** BasicPerfSampleSeriesPerfMetricType
    , BasicPerfSampleSeriesPerfMetricType (..)

    -- ** StepLabelsEntry
    , StepLabelsEntry
    , stepLabelsEntry
    , sleValue
    , sleKey

    -- ** OutcomeSummary
    , OutcomeSummary (..)

    -- ** TestExecutionStep
    , TestExecutionStep
    , testExecutionStep
    , tTestIssues
    , tToolExecution
    , tTestSuiteOverviews
    , tTestTiming

    -- ** TestCaseReference
    , TestCaseReference
    , testCaseReference
    , tcrTestSuiteName
    , tcrName
    , tcrClassName

    -- ** BasicPerfSampleSeriesPerfUnit
    , BasicPerfSampleSeriesPerfUnit (..)

    -- ** FailureDetail
    , FailureDetail
    , failureDetail
    , fdCrashed
    , fdNotInstalled
    , fdTimedOut
    , fdOtherNATiveCrash
    , fdUnableToCrawl

    -- ** ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter
    , ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter (..)

    -- ** PerfEnvironment
    , PerfEnvironment
    , perfEnvironment
    , peMemoryInfo
    , peCPUInfo

    -- ** ListScreenshotClustersResponse
    , ListScreenshotClustersResponse
    , listScreenshotClustersResponse
    , lscrClusters

    -- ** AppStartTime
    , AppStartTime
    , appStartTime
    , astInitialDisplayTime
    , astFullyDrawnTime

    -- ** GraphicsStats
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

    -- ** StackTrace
    , StackTrace
    , stackTrace
    , stException

    -- ** BatchCreatePerfSamplesResponse
    , BatchCreatePerfSamplesResponse
    , batchCreatePerfSamplesResponse
    , bPerfSamples

    -- ** TestIssueType
    , TestIssueType (..)

    -- ** Execution
    , Execution
    , execution
    , eCreationTime
    , eExecutionId
    , eState
    , eCompletionTime
    , eTestExecutionMatrixId
    , eOutcome
    , eSpecification

    -- ** Outcome
    , Outcome
    , outcome
    , oSummary
    , oInconclusiveDetail
    , oFailureDetail
    , oSuccessDetail
    , oSkippedDetail

    -- ** Step
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

    -- ** SuccessDetail
    , SuccessDetail
    , successDetail
    , sdOtherNATiveCrash

    -- ** ToolExecution
    , ToolExecution
    , toolExecution
    , teCommandLineArguments
    , teToolOutputs
    , teToolLogs
    , teExitCode

    -- ** PublishXUnitXMLFilesRequest
    , PublishXUnitXMLFilesRequest
    , publishXUnitXMLFilesRequest
    , pxuxfrXUnitXMLFiles

    -- ** PerfMetricsSummary
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

    -- ** StepState
    , StepState (..)

    -- ** ListHistoriesResponse
    , ListHistoriesResponse
    , listHistoriesResponse
    , lhrNextPageToken
    , lhrHistories

    -- ** ToolExitCode
    , ToolExitCode
    , toolExitCode
    , tecNumber

    -- ** ExecutionState
    , ExecutionState (..)

    -- ** AndroidInstrumentationTest
    , AndroidInstrumentationTest
    , androidInstrumentationTest
    , aitTestTargets
    , aitUseOrchestrator
    , aitTestRunnerClass
    , aitTestPackageId

    -- ** StepDimensionValueEntry
    , StepDimensionValueEntry
    , stepDimensionValueEntry
    , sdveValue
    , sdveKey

    -- ** Specification
    , Specification
    , specification
    , sAndroidTest

    -- ** BasicPerfSampleSeriesSampleSeriesLabel
    , BasicPerfSampleSeriesSampleSeriesLabel (..)

    -- ** TestSuiteOverview
    , TestSuiteOverview
    , testSuiteOverview
    , tsoSkippedCount
    , tsoErrorCount
    , tsoXMLSource
    , tsoName
    , tsoFailureCount
    , tsoTotalCount

    -- ** Duration
    , Duration
    , duration
    , dNanos
    , dSeconds

    -- ** Timestamp
    , Timestamp
    , timestamp
    , tNanos
    , tSeconds

    -- ** Any
    , Any
    , any
    , aValue
    , aTypeURL

    -- ** TestTiming
    , TestTiming
    , testTiming
    , ttTestProcessDuration

    -- ** ScreenshotCluster
    , ScreenshotCluster
    , screenshotCluster
    , scClusterId
    , scScreens
    , scActivity
    , scKeyScreen

    -- ** BasicPerfSampleSeries
    , BasicPerfSampleSeries
    , basicPerfSampleSeries
    , bpssPerfUnit
    , bpssPerfMetricType
    , bpssSampleSeriesLabel

    -- ** PerfMetricsSummaryPerfMetricsItem
    , PerfMetricsSummaryPerfMetricsItem (..)

    -- ** SkippedDetail
    , SkippedDetail
    , skippedDetail
    , sdIncompatibleArchitecture
    , sdIncompatibleAppVersion
    , sdIncompatibleDevice
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.ToolResults.Projects.GetSettings
import           Network.Google.Resource.ToolResults.Projects.Histories.Create
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Clusters.Get
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Clusters.List
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Create
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Get
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.List
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Patch
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Create
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Get
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.GetPerfMetricsSummary
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.List
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Patch
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfMetricsSummary.Create
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Create
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Get
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.List
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Samples.BatchCreate
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Samples.List
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PublishXUnitXMLFiles
import           Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Thumbnails.List
import           Network.Google.Resource.ToolResults.Projects.Histories.Get
import           Network.Google.Resource.ToolResults.Projects.Histories.List
import           Network.Google.Resource.ToolResults.Projects.InitializeSettings
import           Network.Google.ToolResults.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Tool Results API service.
type ToolResultsAPI =
     ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesListResource
       :<|>
       ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreateResource
       :<|>
       ProjectsHistoriesExecutionsStepsPerfSampleSeriesListResource
       :<|>
       ProjectsHistoriesExecutionsStepsPerfSampleSeriesGetResource
       :<|>
       ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreateResource
       :<|>
       ProjectsHistoriesExecutionsStepsThumbnailsListResource
       :<|>
       ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreateResource
       :<|>
       ProjectsHistoriesExecutionsStepsGetPerfMetricsSummaryResource
       :<|> ProjectsHistoriesExecutionsStepsListResource
       :<|> ProjectsHistoriesExecutionsStepsPatchResource
       :<|> ProjectsHistoriesExecutionsStepsGetResource
       :<|> ProjectsHistoriesExecutionsStepsCreateResource
       :<|>
       ProjectsHistoriesExecutionsStepsPublishXUnitXMLFilesResource
       :<|> ProjectsHistoriesExecutionsClustersListResource
       :<|> ProjectsHistoriesExecutionsClustersGetResource
       :<|> ProjectsHistoriesExecutionsListResource
       :<|> ProjectsHistoriesExecutionsPatchResource
       :<|> ProjectsHistoriesExecutionsGetResource
       :<|> ProjectsHistoriesExecutionsCreateResource
       :<|> ProjectsHistoriesListResource
       :<|> ProjectsHistoriesGetResource
       :<|> ProjectsHistoriesCreateResource
       :<|> ProjectsInitializeSettingsResource
       :<|> ProjectsGetSettingsResource
