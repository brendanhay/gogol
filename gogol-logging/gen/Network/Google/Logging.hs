{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Logging
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Google Cloud Logging API lets you create logs, ingest log entries, and
-- manage log sinks.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference>
module Network.Google.Logging
    (
    -- * API
      LoggingAPI
    , loggingAPI
    , loggingURL

    -- * Service Methods

    -- * REST Resources

    -- ** LoggingProjectsLogServicesIndexesList
    , module Logging.Projects.LogServices.Indexes.List

    -- ** LoggingProjectsLogServicesList
    , module Logging.Projects.LogServices.List

    -- ** LoggingProjectsLogServicesSinksCreate
    , module Logging.Projects.LogServices.Sinks.Create

    -- ** LoggingProjectsLogServicesSinksDelete
    , module Logging.Projects.LogServices.Sinks.Delete

    -- ** LoggingProjectsLogServicesSinksGet
    , module Logging.Projects.LogServices.Sinks.Get

    -- ** LoggingProjectsLogServicesSinksList
    , module Logging.Projects.LogServices.Sinks.List

    -- ** LoggingProjectsLogServicesSinksUpdate
    , module Logging.Projects.LogServices.Sinks.Update

    -- ** LoggingProjectsLogsDelete
    , module Logging.Projects.Logs.Delete

    -- ** LoggingProjectsLogsEntriesWrite
    , module Logging.Projects.Logs.Entries.Write

    -- ** LoggingProjectsLogsList
    , module Logging.Projects.Logs.List

    -- ** LoggingProjectsLogsSinksCreate
    , module Logging.Projects.Logs.Sinks.Create

    -- ** LoggingProjectsLogsSinksDelete
    , module Logging.Projects.Logs.Sinks.Delete

    -- ** LoggingProjectsLogsSinksGet
    , module Logging.Projects.Logs.Sinks.Get

    -- ** LoggingProjectsLogsSinksList
    , module Logging.Projects.Logs.Sinks.List

    -- ** LoggingProjectsLogsSinksUpdate
    , module Logging.Projects.Logs.Sinks.Update

    -- ** LoggingProjectsSinksCreate
    , module Logging.Projects.Sinks.Create

    -- ** LoggingProjectsSinksDelete
    , module Logging.Projects.Sinks.Delete

    -- ** LoggingProjectsSinksGet
    , module Logging.Projects.Sinks.Get

    -- ** LoggingProjectsSinksList
    , module Logging.Projects.Sinks.List

    -- ** LoggingProjectsSinksUpdate
    , module Logging.Projects.Sinks.Update

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** Log
    , Log
    , log
    , logName
    , logDisplayName
    , logPayloadType

    -- ** LogError
    , LogError
    , logError
    , leStatus
    , leResource
    , leTimeNanos

    -- ** WriteLogEntriesRequest
    , WriteLogEntriesRequest
    , writeLogEntriesRequest
    , wlerEntries
    , wlerCommonLabels

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

    -- ** Empty
    , Empty
    , empty

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

    -- ** ListSinksResponse
    , ListSinksResponse
    , listSinksResponse
    , lsrSinks

    -- ** ListLogServiceIndexesResponse
    , ListLogServiceIndexesResponse
    , listLogServiceIndexesResponse
    , llsirNextPageToken
    , llsirServiceIndexPrefixes

    -- ** WriteLogEntriesResponse
    , WriteLogEntriesResponse
    , writeLogEntriesResponse

    -- ** LogSink
    , LogSink
    , logSink
    , lsDestination
    , lsName
    , lsFilter
    , lsErrors

    -- ** ListLogServicesResponse
    , ListLogServicesResponse
    , listLogServicesResponse
    , llsrNextPageToken
    , llsrLogServices

    -- ** ListLogsResponse
    , ListLogsResponse
    , listLogsResponse
    , llrNextPageToken
    , llrLogs

    -- ** HTTPRequest
    , HTTPRequest
    , hTTPRequest
    , httprStatus
    , httprRequestUrl
    , httprRemoteIp
    , httprRequestSize
    , httprUserAgent
    , httprResponseSize
    , httprRequestMethod
    , httprReferer

    -- ** ListLogSinksResponse
    , ListLogSinksResponse
    , listLogSinksResponse
    , llsrSinks

    -- ** LogService
    , LogService
    , logService
    , lName
    , lIndexKeys

    -- ** ListLogServiceSinksResponse
    , ListLogServiceSinksResponse
    , listLogServiceSinksResponse
    , llssrSinks

    -- ** LogLine
    , LogLine
    , logLine
    , llTime
    , llSeverity
    , llLogMessage
    , llSourceLocation

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
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Logging.Projects.Logs.Delete
import           Network.Google.Resource.Logging.Projects.Logs.Entries.Write
import           Network.Google.Resource.Logging.Projects.Logs.List
import           Network.Google.Resource.Logging.Projects.Logs.Sinks.Create
import           Network.Google.Resource.Logging.Projects.Logs.Sinks.Delete
import           Network.Google.Resource.Logging.Projects.Logs.Sinks.Get
import           Network.Google.Resource.Logging.Projects.Logs.Sinks.List
import           Network.Google.Resource.Logging.Projects.Logs.Sinks.Update
import           Network.Google.Resource.Logging.Projects.LogServices.Indexes.List
import           Network.Google.Resource.Logging.Projects.LogServices.List
import           Network.Google.Resource.Logging.Projects.LogServices.Sinks.Create
import           Network.Google.Resource.Logging.Projects.LogServices.Sinks.Delete
import           Network.Google.Resource.Logging.Projects.LogServices.Sinks.Get
import           Network.Google.Resource.Logging.Projects.LogServices.Sinks.List
import           Network.Google.Resource.Logging.Projects.LogServices.Sinks.Update
import           Network.Google.Resource.Logging.Projects.Sinks.Create
import           Network.Google.Resource.Logging.Projects.Sinks.Delete
import           Network.Google.Resource.Logging.Projects.Sinks.Get
import           Network.Google.Resource.Logging.Projects.Sinks.List
import           Network.Google.Resource.Logging.Projects.Sinks.Update

{- $resources
TODO
-}

type LoggingAPI = Projects

loggingAPI :: Proxy LoggingAPI
loggingAPI = Proxy
