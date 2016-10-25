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
-- Writes log entries and manages your Stackdriver Logging configuration.
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

    -- ** logging.billingAccounts.logs.delete
    , module Network.Google.Resource.Logging.BillingAccounts.Logs.Delete

    -- ** logging.entries.list
    , module Network.Google.Resource.Logging.Entries.List

    -- ** logging.entries.write
    , module Network.Google.Resource.Logging.Entries.Write

    -- ** logging.monitoredResourceDescriptors.list
    , module Network.Google.Resource.Logging.MonitoredResourceDescriptors.List

    -- ** logging.organizations.logs.delete
    , module Network.Google.Resource.Logging.Organizations.Logs.Delete

    -- ** logging.organizations.sinks.create
    , module Network.Google.Resource.Logging.Organizations.Sinks.Create

    -- ** logging.organizations.sinks.delete
    , module Network.Google.Resource.Logging.Organizations.Sinks.Delete

    -- ** logging.organizations.sinks.get
    , module Network.Google.Resource.Logging.Organizations.Sinks.Get

    -- ** logging.organizations.sinks.list
    , module Network.Google.Resource.Logging.Organizations.Sinks.List

    -- ** logging.organizations.sinks.update
    , module Network.Google.Resource.Logging.Organizations.Sinks.Update

    -- ** logging.projects.logs.delete
    , module Network.Google.Resource.Logging.Projects.Logs.Delete

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

    -- ** logging.projects.sinks.update
    , module Network.Google.Resource.Logging.Projects.Sinks.Update

    -- * Types

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

    -- ** MonitoredResourceLabels
    , MonitoredResourceLabels
    , monitoredResourceLabels
    , mrlAddtional

    -- ** LogMetricVersion
    , LogMetricVersion (..)

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
    , rlTaskQueueName
    , rlResponseSize
    , rlSourceReference
    , rlAppEngineRelease

    -- ** LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload
    , leppAddtional

    -- ** WriteLogEntriesResponse
    , WriteLogEntriesResponse
    , writeLogEntriesResponse

    -- ** LogSink
    , LogSink
    , logSink
    , lsDestination
    , lsStartTime
    , lsOutputVersionFormat
    , lsWriterIdentity
    , lsName
    , lsEndTime
    , lsFilter

    -- ** ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse
    , listMonitoredResourceDescriptorsResponse
    , lmrdrNextPageToken
    , lmrdrResourceDescriptors

    -- ** LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- ** HTTPRequest
    , HTTPRequest
    , hTTPRequest
    , httprStatus
    , httprRequestURL
    , httprCacheFillBytes
    , httprRemoteIP
    , httprLatency
    , httprServerIP
    , httprRequestSize
    , httprCacheValidatedWithOriginServer
    , httprUserAgent
    , httprCacheLookup
    , httprResponseSize
    , httprRequestMethod
    , httprCacheHit
    , httprReferer

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

    -- ** LabelDescriptor
    , LabelDescriptor
    , labelDescriptor
    , ldKey
    , ldValueType
    , ldDescription

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
    , lmName
    , lmVersion
    , lmFilter
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
    , leLabels
    , leProtoPayload
    , leLogName
    , leTimestamp

    -- ** SourceLocation
    , SourceLocation
    , sourceLocation
    , slLine
    , slFunctionName
    , slFile

    -- ** LogEntrySeverity
    , LogEntrySeverity (..)

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
import           Network.Google.Resource.Logging.BillingAccounts.Logs.Delete
import           Network.Google.Resource.Logging.Entries.List
import           Network.Google.Resource.Logging.Entries.Write
import           Network.Google.Resource.Logging.MonitoredResourceDescriptors.List
import           Network.Google.Resource.Logging.Organizations.Logs.Delete
import           Network.Google.Resource.Logging.Organizations.Sinks.Create
import           Network.Google.Resource.Logging.Organizations.Sinks.Delete
import           Network.Google.Resource.Logging.Organizations.Sinks.Get
import           Network.Google.Resource.Logging.Organizations.Sinks.List
import           Network.Google.Resource.Logging.Organizations.Sinks.Update
import           Network.Google.Resource.Logging.Projects.Logs.Delete
import           Network.Google.Resource.Logging.Projects.Metrics.Create
import           Network.Google.Resource.Logging.Projects.Metrics.Delete
import           Network.Google.Resource.Logging.Projects.Metrics.Get
import           Network.Google.Resource.Logging.Projects.Metrics.List
import           Network.Google.Resource.Logging.Projects.Metrics.Update
import           Network.Google.Resource.Logging.Projects.Sinks.Create
import           Network.Google.Resource.Logging.Projects.Sinks.Delete
import           Network.Google.Resource.Logging.Projects.Sinks.Get
import           Network.Google.Resource.Logging.Projects.Sinks.List
import           Network.Google.Resource.Logging.Projects.Sinks.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Stackdriver Logging API service.
type LoggingAPI =
     EntriesListResource :<|> EntriesWriteResource :<|>
       MonitoredResourceDescriptorsListResource
       :<|> OrganizationsSinksListResource
       :<|> OrganizationsSinksGetResource
       :<|> OrganizationsSinksCreateResource
       :<|> OrganizationsSinksDeleteResource
       :<|> OrganizationsSinksUpdateResource
       :<|> OrganizationsLogsDeleteResource
       :<|> ProjectsSinksListResource
       :<|> ProjectsSinksGetResource
       :<|> ProjectsSinksCreateResource
       :<|> ProjectsSinksDeleteResource
       :<|> ProjectsSinksUpdateResource
       :<|> ProjectsMetricsListResource
       :<|> ProjectsMetricsGetResource
       :<|> ProjectsMetricsCreateResource
       :<|> ProjectsMetricsDeleteResource
       :<|> ProjectsMetricsUpdateResource
       :<|> ProjectsLogsDeleteResource
       :<|> BillingAccountsLogsDeleteResource
