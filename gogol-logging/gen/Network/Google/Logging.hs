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
-- Writes log entries and manages your logs, log sinks, and logs-based
-- metrics.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference>
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

    -- ** logging.entries.list
    , module Network.Google.Resource.Logging.Entries.List

    -- ** logging.entries.write
    , module Network.Google.Resource.Logging.Entries.Write

    -- ** logging.monitoredResourceDescriptors.list
    , module Network.Google.Resource.Logging.MonitoredResourceDescriptors.List

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

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ListLogEntriesResponse
    , ListLogEntriesResponse
    , listLogEntriesResponse
    , llerNextPageToken
    , llerEntries
    , llerProjectIdErrors

    -- ** MonitoredResourceLabels
    , MonitoredResourceLabels
    , monitoredResourceLabels
    , mrlAddtional

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
    , lsOutputVersionFormat
    , lsName
    , lsFilter

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse
    , listMonitoredResourceDescriptorsResponse
    , lmrdrNextPageToken
    , lmrdrResourceDescriptors

    -- ** HTTPRequest
    , HTTPRequest
    , hTTPRequest
    , httprStatus
    , httprRequestURL
    , httprCacheFillBytes
    , httprRemoteIP
    , httprRequestSize
    , httprCacheValidatedWithOriginServer
    , httprUserAgent
    , httprCacheLookup
    , httprResponseSize
    , httprRequestMethod
    , httprCacheHit
    , httprReferer

    -- ** ListLogEntriesResponseProjectIdErrors
    , ListLogEntriesResponseProjectIdErrors
    , listLogEntriesResponseProjectIdErrors
    , llerpieAddtional

    -- ** WriteLogEntriesRequestLabels
    , WriteLogEntriesRequestLabels
    , writeLogEntriesRequestLabels
    , wlerlAddtional

    -- ** MonitoredResource
    , MonitoredResource
    , monitoredResource
    , mrLabels
    , mrType

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
    , llerPartialSuccess
    , llerProjectIds
    , llerFilter
    , llerPageToken
    , llerPageSize

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

    -- ** SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- ** LogEntryJSONPayload
    , LogEntryJSONPayload
    , logEntryJSONPayload
    , lejpAddtional
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Logging.Entries.List
import           Network.Google.Resource.Logging.Entries.Write
import           Network.Google.Resource.Logging.MonitoredResourceDescriptors.List
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

-- | Represents the entirety of the methods and resources available for the Google Cloud Logging API service.
type LoggingAPI =
     EntriesListResource :<|> EntriesWriteResource :<|>
       MonitoredResourceDescriptorsListResource
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
