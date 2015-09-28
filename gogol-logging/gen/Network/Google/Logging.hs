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
    -- * REST Resources

    -- ** Google Cloud Logging API
      Logging
    , logging
    , loggingURL

    -- ** logging.projects.logServices.indexes.list
    , module Network.Google.API.Logging.Projects.LogServices.Indexes.List

    -- ** logging.projects.logServices.sinks.create
    , module Network.Google.API.Logging.Projects.LogServices.Sinks.Create

    -- ** logging.projects.logServices.sinks.delete
    , module Network.Google.API.Logging.Projects.LogServices.Sinks.Delete

    -- ** logging.projects.logServices.sinks.get
    , module Network.Google.API.Logging.Projects.LogServices.Sinks.Get

    -- ** logging.projects.logServices.sinks.list
    , module Network.Google.API.Logging.Projects.LogServices.Sinks.List

    -- ** logging.projects.logServices.sinks.update
    , module Network.Google.API.Logging.Projects.LogServices.Sinks.Update

    -- ** logging.projects.logs.entries.write
    , module Network.Google.API.Logging.Projects.Logs.Entries.Write

    -- ** logging.projects.logs.sinks.create
    , module Network.Google.API.Logging.Projects.Logs.Sinks.Create

    -- ** logging.projects.logs.sinks.delete
    , module Network.Google.API.Logging.Projects.Logs.Sinks.Delete

    -- ** logging.projects.logs.sinks.get
    , module Network.Google.API.Logging.Projects.Logs.Sinks.Get

    -- ** logging.projects.logs.sinks.list
    , module Network.Google.API.Logging.Projects.Logs.Sinks.List

    -- ** logging.projects.logs.sinks.update
    , module Network.Google.API.Logging.Projects.Logs.Sinks.Update

    -- ** logging.projects.sinks.create
    , module Network.Google.API.Logging.Projects.Sinks.Create

    -- ** logging.projects.sinks.delete
    , module Network.Google.API.Logging.Projects.Sinks.Delete

    -- ** logging.projects.sinks.get
    , module Network.Google.API.Logging.Projects.Sinks.Get

    -- ** logging.projects.sinks.list
    , module Network.Google.API.Logging.Projects.Sinks.List

    -- ** logging.projects.sinks.update
    , module Network.Google.API.Logging.Projects.Sinks.Update

    -- * Types

    -- ** ListLogServiceSinksResponse
    , ListLogServiceSinksResponse
    , listLogServiceSinksResponse
    , llssrSinks

    -- ** LogEntryStructPayload
    , LogEntryStructPayload
    , logEntryStructPayload

    -- ** WriteLogEntriesRequest
    , WriteLogEntriesRequest
    , writeLogEntriesRequest
    , wlerEntries
    , wlerCommonLabels

    -- ** SourceLocation
    , SourceLocation
    , sourceLocation
    , slLine
    , slFunctionName
    , slFile

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

    -- ** LogEntryMetadataLabels
    , LogEntryMetadataLabels
    , logEntryMetadataLabels

    -- ** ListLogsResponse
    , ListLogsResponse
    , listLogsResponse
    , llrNextPageToken
    , llrLogs

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

    -- ** LogLine
    , LogLine
    , logLine
    , llTime
    , llSeverity
    , llLogMessage
    , llSourceLocation

    -- ** ListSinksResponse
    , ListSinksResponse
    , listSinksResponse
    , lsrSinks

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

    -- ** Empty
    , Empty
    , empty

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

    -- ** WriteLogEntriesResponse
    , WriteLogEntriesResponse
    , writeLogEntriesResponse

    -- ** ListLogServiceIndexesResponse
    , ListLogServiceIndexesResponse
    , listLogServiceIndexesResponse
    , llsirNextPageToken
    , llsirServiceIndexPrefixes

    -- ** StatusItemDetails
    , StatusItemDetails
    , statusItemDetails

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

    -- ** LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload

    -- ** SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

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

    -- ** WriteLogEntriesRequestCommonLabels
    , WriteLogEntriesRequestCommonLabels
    , writeLogEntriesRequestCommonLabels

    -- ** ListLogSinksResponse
    , ListLogSinksResponse
    , listLogSinksResponse
    , llsrSinks

    -- ** LogService
    , LogService
    , logService
    , lName
    , lIndexKeys
    ) where

import           Network.Google.API.Logging.Projects.Logs.Entries.Write
import           Network.Google.API.Logging.Projects.Logs.Sinks.Create
import           Network.Google.API.Logging.Projects.Logs.Sinks.Delete
import           Network.Google.API.Logging.Projects.Logs.Sinks.Get
import           Network.Google.API.Logging.Projects.Logs.Sinks.List
import           Network.Google.API.Logging.Projects.Logs.Sinks.Update
import           Network.Google.API.Logging.Projects.LogServices.Indexes.List
import           Network.Google.API.Logging.Projects.LogServices.Sinks.Create
import           Network.Google.API.Logging.Projects.LogServices.Sinks.Delete
import           Network.Google.API.Logging.Projects.LogServices.Sinks.Get
import           Network.Google.API.Logging.Projects.LogServices.Sinks.List
import           Network.Google.API.Logging.Projects.LogServices.Sinks.Update
import           Network.Google.API.Logging.Projects.Sinks.Create
import           Network.Google.API.Logging.Projects.Sinks.Delete
import           Network.Google.API.Logging.Projects.Sinks.Get
import           Network.Google.API.Logging.Projects.Sinks.List
import           Network.Google.API.Logging.Projects.Sinks.Update
import           Network.Google.Logging.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Logging =
     ProjectsLogServicesSinksCreateAPI :<|>
       ProjectsLogsSinksDeleteAPI
       :<|> ProjectsLogsSinksUpdateAPI
       :<|> ProjectsLogsSinksListAPI
       :<|> ProjectsLogsSinksCreateAPI
       :<|> ProjectsLogServicesIndexesListAPI
       :<|> ProjectsSinksDeleteAPI
       :<|> ProjectsLogsEntriesWriteAPI
       :<|> ProjectsLogServicesSinksDeleteAPI
       :<|> ProjectsLogServicesSinksGetAPI
       :<|> ProjectsSinksUpdateAPI
       :<|> ProjectsLogServicesSinksListAPI
       :<|> ProjectsLogsSinksGetAPI
       :<|> ProjectsLogServicesSinksUpdateAPI
       :<|> ProjectsSinksCreateAPI
       :<|> ProjectsSinksGetAPI
       :<|> ProjectsSinksListAPI

logging :: Proxy Logging
logging = Proxy
