{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Logging
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Writes log entries and manages your Logging configuration.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference>
module Network.Google.Logging
    (
    -- * Service Configuration
      loggingService

    -- * OAuth Scopes
    , loggingAdminScope
    , loggingReadScope
    , loggingWriteScope
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope

    -- * API Declaration
    , LoggingAPI

    -- * Resources

    -- ** logging.billingAccounts.exclusions.create
    , module Network.Google.Resource.Logging.BillingAccounts.Exclusions.Create

    -- ** logging.billingAccounts.exclusions.delete
    , module Network.Google.Resource.Logging.BillingAccounts.Exclusions.Delete

    -- ** logging.billingAccounts.exclusions.get
    , module Network.Google.Resource.Logging.BillingAccounts.Exclusions.Get

    -- ** logging.billingAccounts.exclusions.list
    , module Network.Google.Resource.Logging.BillingAccounts.Exclusions.List

    -- ** logging.billingAccounts.exclusions.patch
    , module Network.Google.Resource.Logging.BillingAccounts.Exclusions.Patch

    -- ** logging.billingAccounts.logs.delete
    , module Network.Google.Resource.Logging.BillingAccounts.Logs.Delete

    -- ** logging.billingAccounts.logs.list
    , module Network.Google.Resource.Logging.BillingAccounts.Logs.List

    -- ** logging.billingAccounts.sinks.create
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.Create

    -- ** logging.billingAccounts.sinks.delete
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.Delete

    -- ** logging.billingAccounts.sinks.get
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.Get

    -- ** logging.billingAccounts.sinks.list
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.List

    -- ** logging.billingAccounts.sinks.patch
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.Patch

    -- ** logging.billingAccounts.sinks.update
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.Update

    -- ** logging.entries.list
    , module Network.Google.Resource.Logging.Entries.List

    -- ** logging.entries.write
    , module Network.Google.Resource.Logging.Entries.Write

    -- ** logging.exclusions.create
    , module Network.Google.Resource.Logging.Exclusions.Create

    -- ** logging.exclusions.delete
    , module Network.Google.Resource.Logging.Exclusions.Delete

    -- ** logging.exclusions.get
    , module Network.Google.Resource.Logging.Exclusions.Get

    -- ** logging.exclusions.list
    , module Network.Google.Resource.Logging.Exclusions.List

    -- ** logging.exclusions.patch
    , module Network.Google.Resource.Logging.Exclusions.Patch

    -- ** logging.folders.exclusions.create
    , module Network.Google.Resource.Logging.Folders.Exclusions.Create

    -- ** logging.folders.exclusions.delete
    , module Network.Google.Resource.Logging.Folders.Exclusions.Delete

    -- ** logging.folders.exclusions.get
    , module Network.Google.Resource.Logging.Folders.Exclusions.Get

    -- ** logging.folders.exclusions.list
    , module Network.Google.Resource.Logging.Folders.Exclusions.List

    -- ** logging.folders.exclusions.patch
    , module Network.Google.Resource.Logging.Folders.Exclusions.Patch

    -- ** logging.folders.logs.delete
    , module Network.Google.Resource.Logging.Folders.Logs.Delete

    -- ** logging.folders.logs.list
    , module Network.Google.Resource.Logging.Folders.Logs.List

    -- ** logging.folders.sinks.create
    , module Network.Google.Resource.Logging.Folders.Sinks.Create

    -- ** logging.folders.sinks.delete
    , module Network.Google.Resource.Logging.Folders.Sinks.Delete

    -- ** logging.folders.sinks.get
    , module Network.Google.Resource.Logging.Folders.Sinks.Get

    -- ** logging.folders.sinks.list
    , module Network.Google.Resource.Logging.Folders.Sinks.List

    -- ** logging.folders.sinks.patch
    , module Network.Google.Resource.Logging.Folders.Sinks.Patch

    -- ** logging.folders.sinks.update
    , module Network.Google.Resource.Logging.Folders.Sinks.Update

    -- ** logging.logs.delete
    , module Network.Google.Resource.Logging.Logs.Delete

    -- ** logging.logs.list
    , module Network.Google.Resource.Logging.Logs.List

    -- ** logging.monitoredResourceDescriptors.list
    , module Network.Google.Resource.Logging.MonitoredResourceDescriptors.List

    -- ** logging.organizations.exclusions.create
    , module Network.Google.Resource.Logging.Organizations.Exclusions.Create

    -- ** logging.organizations.exclusions.delete
    , module Network.Google.Resource.Logging.Organizations.Exclusions.Delete

    -- ** logging.organizations.exclusions.get
    , module Network.Google.Resource.Logging.Organizations.Exclusions.Get

    -- ** logging.organizations.exclusions.list
    , module Network.Google.Resource.Logging.Organizations.Exclusions.List

    -- ** logging.organizations.exclusions.patch
    , module Network.Google.Resource.Logging.Organizations.Exclusions.Patch

    -- ** logging.organizations.logs.delete
    , module Network.Google.Resource.Logging.Organizations.Logs.Delete

    -- ** logging.organizations.logs.list
    , module Network.Google.Resource.Logging.Organizations.Logs.List

    -- ** logging.organizations.sinks.create
    , module Network.Google.Resource.Logging.Organizations.Sinks.Create

    -- ** logging.organizations.sinks.delete
    , module Network.Google.Resource.Logging.Organizations.Sinks.Delete

    -- ** logging.organizations.sinks.get
    , module Network.Google.Resource.Logging.Organizations.Sinks.Get

    -- ** logging.organizations.sinks.list
    , module Network.Google.Resource.Logging.Organizations.Sinks.List

    -- ** logging.organizations.sinks.patch
    , module Network.Google.Resource.Logging.Organizations.Sinks.Patch

    -- ** logging.organizations.sinks.update
    , module Network.Google.Resource.Logging.Organizations.Sinks.Update

    -- ** logging.projects.exclusions.create
    , module Network.Google.Resource.Logging.Projects.Exclusions.Create

    -- ** logging.projects.exclusions.delete
    , module Network.Google.Resource.Logging.Projects.Exclusions.Delete

    -- ** logging.projects.exclusions.get
    , module Network.Google.Resource.Logging.Projects.Exclusions.Get

    -- ** logging.projects.exclusions.list
    , module Network.Google.Resource.Logging.Projects.Exclusions.List

    -- ** logging.projects.exclusions.patch
    , module Network.Google.Resource.Logging.Projects.Exclusions.Patch

    -- ** logging.projects.logs.delete
    , module Network.Google.Resource.Logging.Projects.Logs.Delete

    -- ** logging.projects.logs.list
    , module Network.Google.Resource.Logging.Projects.Logs.List

    -- ** logging.projects.metrics.create
    , module Network.Google.Resource.Logging.Projects.Metrics.Create

    -- ** logging.projects.metrics.delete
    , module Network.Google.Resource.Logging.Projects.Metrics.Delete

    -- ** logging.projects.metrics.get
    , module Network.Google.Resource.Logging.Projects.Metrics.Get

    -- ** logging.projects.metrics.list
    , module Network.Google.Resource.Logging.Projects.Metrics.List

    -- ** logging.projects.metrics.update
    , module Network.Google.Resource.Logging.Projects.Metrics.Update

    -- ** logging.projects.sinks.create
    , module Network.Google.Resource.Logging.Projects.Sinks.Create

    -- ** logging.projects.sinks.delete
    , module Network.Google.Resource.Logging.Projects.Sinks.Delete

    -- ** logging.projects.sinks.get
    , module Network.Google.Resource.Logging.Projects.Sinks.Get

    -- ** logging.projects.sinks.list
    , module Network.Google.Resource.Logging.Projects.Sinks.List

    -- ** logging.projects.sinks.patch
    , module Network.Google.Resource.Logging.Projects.Sinks.Patch

    -- ** logging.projects.sinks.update
    , module Network.Google.Resource.Logging.Projects.Sinks.Update

    -- ** logging.sinks.create
    , module Network.Google.Resource.Logging.Sinks.Create

    -- ** logging.sinks.delete
    , module Network.Google.Resource.Logging.Sinks.Delete

    -- ** logging.sinks.get
    , module Network.Google.Resource.Logging.Sinks.Get

    -- ** logging.sinks.list
    , module Network.Google.Resource.Logging.Sinks.List

    -- ** logging.sinks.update
    , module Network.Google.Resource.Logging.Sinks.Update

    -- * Types

    -- ** MetricDescriptorValueType
    , MetricDescriptorValueType (..)

    -- ** MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription

    -- ** ListLogEntriesResponse
    , ListLogEntriesResponse
    , listLogEntriesResponse
    , llerNextPageToken
    , llerEntries

    -- ** MetricDescriptor
    , MetricDescriptor
    , metricDescriptor
    , mdMetricKind
    , mdName
    , mdMetadata
    , mdDisplayName
    , mdLabels
    , mdType
    , mdValueType
    , mdDescription
    , mdUnit

    -- ** MonitoredResourceLabels
    , MonitoredResourceLabels
    , monitoredResourceLabels
    , mrlAddtional

    -- ** LogMetricVersion
    , LogMetricVersion (..)

    -- ** MonitoredResourceMetadata
    , MonitoredResourceMetadata
    , monitoredResourceMetadata
    , mrmUserLabels
    , mrmSystemLabels

    -- ** ListLogMetricsResponse
    , ListLogMetricsResponse
    , listLogMetricsResponse
    , llmrMetrics
    , llmrNextPageToken

    -- ** WriteLogEntriesRequest
    , WriteLogEntriesRequest
    , writeLogEntriesRequest
    , wlerEntries
    , wlerPartialSuccess
    , wlerResource
    , wlerLabels
    , wlerLogName
    , wlerDryRun

    -- ** LogMetricLabelExtractors
    , LogMetricLabelExtractors
    , logMetricLabelExtractors
    , lmleAddtional

    -- ** LogSinkOutputVersionFormat
    , LogSinkOutputVersionFormat (..)

    -- ** Empty
    , Empty
    , empty

    -- ** LogEntryLabels
    , LogEntryLabels
    , logEntryLabels
    , lelAddtional

    -- ** ListSinksResponse
    , ListSinksResponse
    , listSinksResponse
    , lsrSinks
    , lsrNextPageToken

    -- ** RequestLog
    , RequestLog
    , requestLog
    , rlTraceId
    , rlInstanceId
    , rlStatus
    , rlRequestId
    , rlInstanceIndex
    , rlModuleId
    , rlVersionId
    , rlHTTPVersion
    , rlTaskName
    , rlPendingTime
    , rlWasLoadingRequest
    , rlFirst
    , rlStartTime
    , rlLatency
    , rlURLMapEntry
    , rlCost
    , rlReferrer
    , rlLine
    , rlIP
    , rlAppId
    , rlMethod
    , rlResource
    , rlEndTime
    , rlFinished
    , rlMegaCycles
    , rlUserAgent
    , rlNickname
    , rlHost
    , rlTraceSampled
    , rlTaskQueueName
    , rlResponseSize
    , rlSourceReference
    , rlAppEngineRelease

    -- ** LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload
    , leppAddtional

    -- ** LogEntrySourceLocation
    , LogEntrySourceLocation
    , logEntrySourceLocation
    , leslFunction
    , leslLine
    , leslFile

    -- ** LogExclusion
    , LogExclusion
    , logExclusion
    , leDisabled
    , leName
    , leFilter
    , leDescription

    -- ** WriteLogEntriesResponse
    , WriteLogEntriesResponse
    , writeLogEntriesResponse

    -- ** MetricDescriptorMetadataLaunchStage
    , MetricDescriptorMetadataLaunchStage (..)

    -- ** LogSink
    , LogSink
    , logSink
    , lsDestination
    , lsIncludeChildren
    , lsOutputVersionFormat
    , lsWriterIdentity
    , lsName
    , lsFilter

    -- ** MonitoredResourceMetadataUserLabels
    , MonitoredResourceMetadataUserLabels
    , monitoredResourceMetadataUserLabels
    , mrmulAddtional

    -- ** ListExclusionsResponse
    , ListExclusionsResponse
    , listExclusionsResponse
    , lerNextPageToken
    , lerExclusions

    -- ** ListLogsResponse
    , ListLogsResponse
    , listLogsResponse
    , llrNextPageToken
    , llrLogNames

    -- ** ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse
    , listMonitoredResourceDescriptorsResponse
    , lmrdrNextPageToken
    , lmrdrResourceDescriptors

    -- ** LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- ** Explicit
    , Explicit
    , explicit
    , eBounds

    -- ** HTTPRequest
    , HTTPRequest
    , hTTPRequest
    , httprStatus
    , httprRequestURL
    , httprCacheFillBytes
    , httprRemoteIP
    , httprLatency
    , httprProtocol
    , httprServerIP
    , httprRequestSize
    , httprCacheValidatedWithOriginServer
    , httprUserAgent
    , httprCacheLookup
    , httprResponseSize
    , httprRequestMethod
    , httprCacheHit
    , httprReferer

    -- ** Exponential
    , Exponential
    , exponential
    , eGrowthFactor
    , eScale
    , eNumFiniteBuckets

    -- ** WriteLogEntriesRequestLabels
    , WriteLogEntriesRequestLabels
    , writeLogEntriesRequestLabels
    , wlerlAddtional

    -- ** MonitoredResource
    , MonitoredResource
    , monitoredResource
    , mrLabels
    , mrType

    -- ** Xgafv
    , Xgafv (..)

    -- ** LogLine
    , LogLine
    , logLine
    , llTime
    , llSeverity
    , llLogMessage
    , llSourceLocation

    -- ** MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

    -- ** MonitoredResourceMetadataSystemLabels
    , MonitoredResourceMetadataSystemLabels
    , monitoredResourceMetadataSystemLabels
    , mrmslAddtional

    -- ** LabelDescriptor
    , LabelDescriptor
    , labelDescriptor
    , ldKey
    , ldValueType
    , ldDescription

    -- ** Linear
    , Linear
    , linear
    , lOffSet
    , lWidth
    , lNumFiniteBuckets

    -- ** ListLogEntriesRequest
    , ListLogEntriesRequest
    , listLogEntriesRequest
    , llerOrderBy
    , llerProjectIds
    , llerFilter
    , llerPageToken
    , llerPageSize
    , llerResourceNames

    -- ** LogEntryOperation
    , LogEntryOperation
    , logEntryOperation
    , leoFirst
    , leoProducer
    , leoLast
    , leoId

    -- ** LogMetric
    , LogMetric
    , logMetric
    , lmMetricDescriptor
    , lmName
    , lmVersion
    , lmLabelExtractors
    , lmFilter
    , lmValueExtractor
    , lmBucketOptions
    , lmDescription

    -- ** LogEntry
    , LogEntry
    , logEntry
    , leOperation
    , leSeverity
    , leTextPayload
    , leJSONPayload
    , leHTTPRequest
    , leResource
    , leInsertId
    , leMetadata
    , leReceiveTimestamp
    , leLabels
    , leProtoPayload
    , leSourceLocation
    , leTraceSampled
    , leLogName
    , leTimestamp
    , leTrace
    , leSpanId

    -- ** SourceLocation
    , SourceLocation
    , sourceLocation
    , slLine
    , slFunctionName
    , slFile

    -- ** MetricDescriptorMetricKind
    , MetricDescriptorMetricKind (..)

    -- ** LogEntrySeverity
    , LogEntrySeverity (..)

    -- ** BucketOptions
    , BucketOptions
    , bucketOptions
    , boExponentialBuckets
    , boLinearBuckets
    , boExplicitBuckets

    -- ** SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- ** LogEntryJSONPayload
    , LogEntryJSONPayload
    , logEntryJSONPayload
    , lejpAddtional

    -- ** LogLineSeverity
    , LogLineSeverity (..)
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Logging.BillingAccounts.Exclusions.Create
import           Network.Google.Resource.Logging.BillingAccounts.Exclusions.Delete
import           Network.Google.Resource.Logging.BillingAccounts.Exclusions.Get
import           Network.Google.Resource.Logging.BillingAccounts.Exclusions.List
import           Network.Google.Resource.Logging.BillingAccounts.Exclusions.Patch
import           Network.Google.Resource.Logging.BillingAccounts.Logs.Delete
import           Network.Google.Resource.Logging.BillingAccounts.Logs.List
import           Network.Google.Resource.Logging.BillingAccounts.Sinks.Create
import           Network.Google.Resource.Logging.BillingAccounts.Sinks.Delete
import           Network.Google.Resource.Logging.BillingAccounts.Sinks.Get
import           Network.Google.Resource.Logging.BillingAccounts.Sinks.List
import           Network.Google.Resource.Logging.BillingAccounts.Sinks.Patch
import           Network.Google.Resource.Logging.BillingAccounts.Sinks.Update
import           Network.Google.Resource.Logging.Entries.List
import           Network.Google.Resource.Logging.Entries.Write
import           Network.Google.Resource.Logging.Exclusions.Create
import           Network.Google.Resource.Logging.Exclusions.Delete
import           Network.Google.Resource.Logging.Exclusions.Get
import           Network.Google.Resource.Logging.Exclusions.List
import           Network.Google.Resource.Logging.Exclusions.Patch
import           Network.Google.Resource.Logging.Folders.Exclusions.Create
import           Network.Google.Resource.Logging.Folders.Exclusions.Delete
import           Network.Google.Resource.Logging.Folders.Exclusions.Get
import           Network.Google.Resource.Logging.Folders.Exclusions.List
import           Network.Google.Resource.Logging.Folders.Exclusions.Patch
import           Network.Google.Resource.Logging.Folders.Logs.Delete
import           Network.Google.Resource.Logging.Folders.Logs.List
import           Network.Google.Resource.Logging.Folders.Sinks.Create
import           Network.Google.Resource.Logging.Folders.Sinks.Delete
import           Network.Google.Resource.Logging.Folders.Sinks.Get
import           Network.Google.Resource.Logging.Folders.Sinks.List
import           Network.Google.Resource.Logging.Folders.Sinks.Patch
import           Network.Google.Resource.Logging.Folders.Sinks.Update
import           Network.Google.Resource.Logging.Logs.Delete
import           Network.Google.Resource.Logging.Logs.List
import           Network.Google.Resource.Logging.MonitoredResourceDescriptors.List
import           Network.Google.Resource.Logging.Organizations.Exclusions.Create
import           Network.Google.Resource.Logging.Organizations.Exclusions.Delete
import           Network.Google.Resource.Logging.Organizations.Exclusions.Get
import           Network.Google.Resource.Logging.Organizations.Exclusions.List
import           Network.Google.Resource.Logging.Organizations.Exclusions.Patch
import           Network.Google.Resource.Logging.Organizations.Logs.Delete
import           Network.Google.Resource.Logging.Organizations.Logs.List
import           Network.Google.Resource.Logging.Organizations.Sinks.Create
import           Network.Google.Resource.Logging.Organizations.Sinks.Delete
import           Network.Google.Resource.Logging.Organizations.Sinks.Get
import           Network.Google.Resource.Logging.Organizations.Sinks.List
import           Network.Google.Resource.Logging.Organizations.Sinks.Patch
import           Network.Google.Resource.Logging.Organizations.Sinks.Update
import           Network.Google.Resource.Logging.Projects.Exclusions.Create
import           Network.Google.Resource.Logging.Projects.Exclusions.Delete
import           Network.Google.Resource.Logging.Projects.Exclusions.Get
import           Network.Google.Resource.Logging.Projects.Exclusions.List
import           Network.Google.Resource.Logging.Projects.Exclusions.Patch
import           Network.Google.Resource.Logging.Projects.Logs.Delete
import           Network.Google.Resource.Logging.Projects.Logs.List
import           Network.Google.Resource.Logging.Projects.Metrics.Create
import           Network.Google.Resource.Logging.Projects.Metrics.Delete
import           Network.Google.Resource.Logging.Projects.Metrics.Get
import           Network.Google.Resource.Logging.Projects.Metrics.List
import           Network.Google.Resource.Logging.Projects.Metrics.Update
import           Network.Google.Resource.Logging.Projects.Sinks.Create
import           Network.Google.Resource.Logging.Projects.Sinks.Delete
import           Network.Google.Resource.Logging.Projects.Sinks.Get
import           Network.Google.Resource.Logging.Projects.Sinks.List
import           Network.Google.Resource.Logging.Projects.Sinks.Patch
import           Network.Google.Resource.Logging.Projects.Sinks.Update
import           Network.Google.Resource.Logging.Sinks.Create
import           Network.Google.Resource.Logging.Sinks.Delete
import           Network.Google.Resource.Logging.Sinks.Get
import           Network.Google.Resource.Logging.Sinks.List
import           Network.Google.Resource.Logging.Sinks.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Stackdriver Logging API service.
type LoggingAPI =
     SinksListResource :<|> SinksGetResource :<|>
       SinksCreateResource
       :<|> SinksDeleteResource
       :<|> SinksUpdateResource
       :<|> EntriesListResource
       :<|> EntriesWriteResource
       :<|> FoldersSinksListResource
       :<|> FoldersSinksPatchResource
       :<|> FoldersSinksGetResource
       :<|> FoldersSinksCreateResource
       :<|> FoldersSinksDeleteResource
       :<|> FoldersSinksUpdateResource
       :<|> FoldersExclusionsListResource
       :<|> FoldersExclusionsPatchResource
       :<|> FoldersExclusionsGetResource
       :<|> FoldersExclusionsCreateResource
       :<|> FoldersExclusionsDeleteResource
       :<|> FoldersLogsListResource
       :<|> FoldersLogsDeleteResource
       :<|> MonitoredResourceDescriptorsListResource
       :<|> ExclusionsListResource
       :<|> ExclusionsPatchResource
       :<|> ExclusionsGetResource
       :<|> ExclusionsCreateResource
       :<|> ExclusionsDeleteResource
       :<|> LogsListResource
       :<|> LogsDeleteResource
       :<|> OrganizationsSinksListResource
       :<|> OrganizationsSinksPatchResource
       :<|> OrganizationsSinksGetResource
       :<|> OrganizationsSinksCreateResource
       :<|> OrganizationsSinksDeleteResource
       :<|> OrganizationsSinksUpdateResource
       :<|> OrganizationsExclusionsListResource
       :<|> OrganizationsExclusionsPatchResource
       :<|> OrganizationsExclusionsGetResource
       :<|> OrganizationsExclusionsCreateResource
       :<|> OrganizationsExclusionsDeleteResource
       :<|> OrganizationsLogsListResource
       :<|> OrganizationsLogsDeleteResource
       :<|> ProjectsSinksListResource
       :<|> ProjectsSinksPatchResource
       :<|> ProjectsSinksGetResource
       :<|> ProjectsSinksCreateResource
       :<|> ProjectsSinksDeleteResource
       :<|> ProjectsSinksUpdateResource
       :<|> ProjectsMetricsListResource
       :<|> ProjectsMetricsGetResource
       :<|> ProjectsMetricsCreateResource
       :<|> ProjectsMetricsDeleteResource
       :<|> ProjectsMetricsUpdateResource
       :<|> ProjectsExclusionsListResource
       :<|> ProjectsExclusionsPatchResource
       :<|> ProjectsExclusionsGetResource
       :<|> ProjectsExclusionsCreateResource
       :<|> ProjectsExclusionsDeleteResource
       :<|> ProjectsLogsListResource
       :<|> ProjectsLogsDeleteResource
       :<|> BillingAccountsSinksListResource
       :<|> BillingAccountsSinksPatchResource
       :<|> BillingAccountsSinksGetResource
       :<|> BillingAccountsSinksCreateResource
       :<|> BillingAccountsSinksDeleteResource
       :<|> BillingAccountsSinksUpdateResource
       :<|> BillingAccountsExclusionsListResource
       :<|> BillingAccountsExclusionsPatchResource
       :<|> BillingAccountsExclusionsGetResource
       :<|> BillingAccountsExclusionsCreateResource
       :<|> BillingAccountsExclusionsDeleteResource
       :<|> BillingAccountsLogsListResource
       :<|> BillingAccountsLogsDeleteResource
