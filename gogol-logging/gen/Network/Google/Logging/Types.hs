{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Logging.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Logging.Types
    (
    -- * Service Configuration
      loggingService

    -- * OAuth Scopes
    , loggingAdminScope
    , loggingReadScope
    , loggingWriteScope
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope

    -- * MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription

    -- * ListLogEntriesResponse
    , ListLogEntriesResponse
    , listLogEntriesResponse
    , llerNextPageToken
    , llerEntries

    -- * MonitoredResourceLabels
    , MonitoredResourceLabels
    , monitoredResourceLabels
    , mrlAddtional

    -- * ListLogMetricsResponse
    , ListLogMetricsResponse
    , listLogMetricsResponse
    , llmrMetrics
    , llmrNextPageToken

    -- * WriteLogEntriesRequest
    , WriteLogEntriesRequest
    , writeLogEntriesRequest
    , wlerEntries
    , wlerResource
    , wlerLabels
    , wlerLogName

    -- * Empty
    , Empty
    , empty

    -- * LogEntryLabels
    , LogEntryLabels
    , logEntryLabels
    , lelAddtional

    -- * ListSinksResponse
    , ListSinksResponse
    , listSinksResponse
    , lsrSinks
    , lsrNextPageToken

    -- * RequestLog
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

    -- * LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload
    , leppAddtional

    -- * WriteLogEntriesResponse
    , WriteLogEntriesResponse
    , writeLogEntriesResponse

    -- * LogSink
    , LogSink
    , logSink
    , lsDestination
    , lsOutputVersionFormat
    , lsName
    , lsFilter

    -- * ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse
    , listMonitoredResourceDescriptorsResponse
    , lmrdrNextPageToken
    , lmrdrResourceDescriptors

    -- * HTTPRequest
    , HTTPRequest
    , hTTPRequest
    , httprStatus
    , httprRequestURL
    , httprRemoteIP
    , httprValidatedWithOriginServer
    , httprRequestSize
    , httprUserAgent
    , httprResponseSize
    , httprRequestMethod
    , httprCacheHit
    , httprReferer

    -- * WriteLogEntriesRequestLabels
    , WriteLogEntriesRequestLabels
    , writeLogEntriesRequestLabels
    , wlerlAddtional

    -- * MonitoredResource
    , MonitoredResource
    , monitoredResource
    , mrLabels
    , mrType

    -- * LogLine
    , LogLine
    , logLine
    , llTime
    , llSeverity
    , llLogMessage
    , llSourceLocation

    -- * LabelDescriptor
    , LabelDescriptor
    , labelDescriptor
    , ldKey
    , ldValueType
    , ldDescription

    -- * ListLogEntriesRequest
    , ListLogEntriesRequest
    , listLogEntriesRequest
    , llerOrderBy
    , llerProjectIds
    , llerFilter
    , llerPageToken
    , llerPageSize

    -- * LogEntryOperation
    , LogEntryOperation
    , logEntryOperation
    , leoFirst
    , leoProducer
    , leoLast
    , leoId

    -- * LogMetric
    , LogMetric
    , logMetric
    , lmName
    , lmFilter
    , lmDescription

    -- * LogEntry
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

    -- * SourceLocation
    , SourceLocation
    , sourceLocation
    , slLine
    , slFunctionName
    , slFile

    -- * SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- * LogEntryJSONPayload
    , LogEntryJSONPayload
    , logEntryJSONPayload
    , lejpAddtional
    ) where

import           Network.Google.Logging.Types.Product
import           Network.Google.Logging.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2beta1' of the Google Cloud Logging API. This contains the host and root path used as a starting point for constructing service requests.
loggingService :: ServiceConfig
loggingService
  = defaultService (ServiceId "logging:v2beta1")
      "logging.googleapis.com"

-- | Administrate log data for your projects
loggingAdminScope :: Proxy '["https://www.googleapis.com/auth/logging.admin"]
loggingAdminScope = Proxy;

-- | View log data for your projects
loggingReadScope :: Proxy '["https://www.googleapis.com/auth/logging.read"]
loggingReadScope = Proxy;

-- | Submit log data for your projects
loggingWriteScope :: Proxy '["https://www.googleapis.com/auth/logging.write"]
loggingWriteScope = Proxy;

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
