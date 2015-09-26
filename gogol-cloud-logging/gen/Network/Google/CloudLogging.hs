-- |
-- Module      : Network.Google.CloudLogging
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Google Cloud Logging API lets you create logs, ingest log entries, and manage log sinks.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference>
module Network.Google.CloudLogging
    (
    -- * API Definition
      CloudLogging



    -- * Types

    -- ** Empty
    , Empty
    , empty

    -- ** HttpRequest
    , HttpRequest
    , httpRequest
    , hrStatus
    , hrRequestUrl
    , hrRemoteIp
    , hrRequestSize
    , hrUserAgent
    , hrResponseSize
    , hrRequestMethod
    , hrReferer

    -- ** ListLogServiceIndexesResponse
    , ListLogServiceIndexesResponse
    , listLogServiceIndexesResponse
    , llsirNextPageToken
    , llsirServiceIndexPrefixes

    -- ** ListLogServiceSinksResponse
    , ListLogServiceSinksResponse
    , listLogServiceSinksResponse
    , llssrSinks

    -- ** ListLogServicesResponse
    , ListLogServicesResponse
    , listLogServicesResponse
    , llsrNextPageToken
    , llsrLogServices

    -- ** ListLogSinksResponse
    , ListLogSinksResponse
    , listLogSinksResponse
    , llsrSinks

    -- ** ListLogsResponse
    , ListLogsResponse
    , listLogsResponse
    , llrNextPageToken
    , llrLogs

    -- ** ListSinksResponse
    , ListSinksResponse
    , listSinksResponse
    , lsrSinks

    -- ** Log
    , Log
    , log
    , logName
    , logDisplayName
    , logPayloadType

    -- ** LogEntry
    , LogEntry
    , logEntry
    , leLog
    , leTextPayload
    , leHttpRequest
    , leStructPayload
    , leInsertId
    , leMetadata
    , leProtoPayload

    -- ** LogEntryMetadata
    , LogEntryMetadata
    , logEntryMetadata
    , lemSeverity
    , lemZone
    , lemUserId
    , lemServiceName
    , lemLabels
    , lemRegion
    , lemProjectId
    , lemTimestamp

    -- ** LogEntryMetadataLabels
    , LogEntryMetadataLabels
    , logEntryMetadataLabels

    -- ** LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload

    -- ** LogEntryStructPayload
    , LogEntryStructPayload
    , logEntryStructPayload

    -- ** LogError
    , LogError
    , logError
    , leStatus
    , leResource
    , leTimeNanos

    -- ** LogLine
    , LogLine
    , logLine
    , llTime
    , llSeverity
    , llLogMessage
    , llSourceLocation

    -- ** LogService
    , LogService
    , logService
    , lName
    , lIndexKeys

    -- ** LogSink
    , LogSink
    , logSink
    , lsDestination
    , lsName
    , lsFilter
    , lsErrors

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
    , rlHttpVersion
    , rlTaskName
    , rlPendingTime
    , rlWasLoadingRequest
    , rlStartTime
    , rlLatency
    , rlUrlMapEntry
    , rlCost
    , rlReferrer
    , rlLine
    , rlIp
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

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** StatusItemDetails
    , StatusItemDetails
    , statusItemDetails

    -- ** WriteLogEntriesRequest
    , WriteLogEntriesRequest
    , writeLogEntriesRequest
    , wlerEntries
    , wlerCommonLabels

    -- ** WriteLogEntriesRequestCommonLabels
    , WriteLogEntriesRequestCommonLabels
    , writeLogEntriesRequestCommonLabels

    -- ** WriteLogEntriesResponse
    , WriteLogEntriesResponse
    , writeLogEntriesResponse
    ) where

import           Network.Google.CloudLogging.Types

{- $resources
TODO
-}

type CloudLogging = ()

cloudLogging :: Proxy CloudLogging
cloudLogging = Proxy




