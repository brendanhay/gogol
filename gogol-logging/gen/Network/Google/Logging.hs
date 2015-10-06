{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | Google Cloud Logging API lets you create logs, ingest log entries, and
-- manage log sinks.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference>
module Network.Google.Logging
    (
    -- * API
      LoggingAPI
    , loggingAPI
    , loggingRequest

    -- * Service Methods

    -- * REST Resources

    -- ** LoggingProjectsLogServicesIndexesList
    , module Network.Google.Resource.Logging.Projects.LogServices.Indexes.List

    -- ** LoggingProjectsLogServicesList
    , module Network.Google.Resource.Logging.Projects.LogServices.List

    -- ** LoggingProjectsLogServicesSinksCreate
    , module Network.Google.Resource.Logging.Projects.LogServices.Sinks.Create

    -- ** LoggingProjectsLogServicesSinksDelete
    , module Network.Google.Resource.Logging.Projects.LogServices.Sinks.Delete

    -- ** LoggingProjectsLogServicesSinksGet
    , module Network.Google.Resource.Logging.Projects.LogServices.Sinks.Get

    -- ** LoggingProjectsLogServicesSinksList
    , module Network.Google.Resource.Logging.Projects.LogServices.Sinks.List

    -- ** LoggingProjectsLogServicesSinksUpdate
    , module Network.Google.Resource.Logging.Projects.LogServices.Sinks.Update

    -- ** LoggingProjectsLogsDelete
    , module Network.Google.Resource.Logging.Projects.Logs.Delete

    -- ** LoggingProjectsLogsEntriesWrite
    , module Network.Google.Resource.Logging.Projects.Logs.Entries.Write

    -- ** LoggingProjectsLogsList
    , module Network.Google.Resource.Logging.Projects.Logs.List

    -- ** LoggingProjectsLogsSinksCreate
    , module Network.Google.Resource.Logging.Projects.Logs.Sinks.Create

    -- ** LoggingProjectsLogsSinksDelete
    , module Network.Google.Resource.Logging.Projects.Logs.Sinks.Delete

    -- ** LoggingProjectsLogsSinksGet
    , module Network.Google.Resource.Logging.Projects.Logs.Sinks.Get

    -- ** LoggingProjectsLogsSinksList
    , module Network.Google.Resource.Logging.Projects.Logs.Sinks.List

    -- ** LoggingProjectsLogsSinksUpdate
    , module Network.Google.Resource.Logging.Projects.Logs.Sinks.Update

    -- ** LoggingProjectsSinksCreate
    , module Network.Google.Resource.Logging.Projects.Sinks.Create

    -- ** LoggingProjectsSinksDelete
    , module Network.Google.Resource.Logging.Projects.Sinks.Delete

    -- ** LoggingProjectsSinksGet
    , module Network.Google.Resource.Logging.Projects.Sinks.Get

    -- ** LoggingProjectsSinksList
    , module Network.Google.Resource.Logging.Projects.Sinks.List

    -- ** LoggingProjectsSinksUpdate
    , module Network.Google.Resource.Logging.Projects.Sinks.Update

    -- * Types

    -- ** Log
    , Log
    , log'
    , lName
    , lDisplayName
    , lPayloadType

    -- ** LogError
    , LogError
    , logError
    , leStatus
    , leResource
    , leTimeNanos

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** WriteLogEntriesRequest
    , WriteLogEntriesRequest
    , writeLogEntriesRequest
    , wlerEntries
    , wlerCommonLabels

    -- ** WriteLogEntriesRequestCommonLabels
    , WriteLogEntriesRequestCommonLabels
    , writeLogEntriesRequestCommonLabels

    -- ** Empty
    , Empty
    , empty

    -- ** ListSinksResponse
    , ListSinksResponse
    , listSinksResponse
    , lsrSinks

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

    -- ** LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload

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

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem

    -- ** ListLogsResponse
    , ListLogsResponse
    , listLogsResponse
    , llrNextPageToken
    , llrLogs

    -- ** HTTPRequest
    , HTTPRequest
    , hTTPRequest
    , httprStatus
    , httprRequestURL
    , httprRemoteIP
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
    , logName
    , logIndexKeys

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
    , leHTTPRequest
    , leStructPayload
    , leInsertId
    , leMetadata
    , leProtoPayload

    -- ** LogEntryMetadataLabels
    , LogEntryMetadataLabels
    , logEntryMetadataLabels

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

    -- ** LogEntryStructPayload
    , LogEntryStructPayload
    , logEntryStructPayload
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

type LoggingAPI =
     ProjectsSinksListResource :<|>
       ProjectsSinksGetResource
       :<|> ProjectsSinksCreateResource
       :<|> ProjectsSinksDeleteResource
       :<|> ProjectsSinksUpdateResource
       :<|> ProjectsLogServicesSinksListResource
       :<|> ProjectsLogServicesSinksGetResource
       :<|> ProjectsLogServicesSinksCreateResource
       :<|> ProjectsLogServicesSinksDeleteResource
       :<|> ProjectsLogServicesSinksUpdateResource
       :<|> ProjectsLogServicesIndexesListResource
       :<|> ProjectsLogServicesListResource
       :<|> ProjectsLogsSinksListResource
       :<|> ProjectsLogsSinksGetResource
       :<|> ProjectsLogsSinksCreateResource
       :<|> ProjectsLogsSinksDeleteResource
       :<|> ProjectsLogsSinksUpdateResource
       :<|> ProjectsLogsEntriesWriteResource
       :<|> ProjectsLogsListResource
       :<|> ProjectsLogsDeleteResource

loggingAPI :: Proxy LoggingAPI
loggingAPI = Proxy
