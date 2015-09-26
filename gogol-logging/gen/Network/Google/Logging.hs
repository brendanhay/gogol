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
    -- * Resources
      Logging
    , ProjectsAPI
    , SinksAPI
    , SinksList
    , SinksGet
    , SinksCreate
    , SinksDelete
    , SinksUpdate
    , LogServicesAPI
    , SinksAPI
    , SinksList
    , SinksGet
    , SinksCreate
    , SinksDelete
    , SinksUpdate
    , IndexesAPI
    , IndexesList
    , LogsAPI
    , SinksAPI
    , SinksList
    , SinksGet
    , SinksCreate
    , SinksDelete
    , SinksUpdate
    , EntriesAPI
    , EntriesWrite

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

import           Network.Google.Logging.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Logging = ProjectsAPI

type ProjectsAPI =
     SinksAPI :<|> LogServicesAPI :<|> LogsAPI

type SinksAPI =
     SinksList :<|> SinksGet :<|> SinksCreate :<|>
       SinksDelete
       :<|> SinksUpdate

-- | Lists project sinks associated with a project.
type SinksList =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "sinks"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets a project sink.
type SinksGet =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "sinks"
       :> Capture "sinksId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Creates a project sink. A logs filter determines which log entries are
-- written to the destination.
type SinksCreate =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "sinks"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Deletes a project sink. After deletion, no new log entries are written
-- to the destination.
type SinksDelete =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "sinks"
       :> Capture "sinksId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Updates a project sink. If the sink does not exist, it is created. The
-- destination, filter, or both may be updated.
type SinksUpdate =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "sinks"
       :> Capture "sinksId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type LogServicesAPI = SinksAPI :<|> IndexesAPI

type SinksAPI =
     SinksList :<|> SinksGet :<|> SinksCreate :<|>
       SinksDelete
       :<|> SinksUpdate

-- | Lists log service sinks associated with a log service.
type SinksList =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logServices"
       :> Capture "logServicesId" Text
       :> "sinks"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets a log service sink.
type SinksGet =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logServices"
       :> Capture "logServicesId" Text
       :> "sinks"
       :> Capture "sinksId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Creates a log service sink. All log entries from a specified log service
-- are written to the destination.
type SinksCreate =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logServices"
       :> Capture "logServicesId" Text
       :> "sinks"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Deletes a log service sink. After deletion, no new log entries are
-- written to the destination.
type SinksDelete =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logServices"
       :> Capture "logServicesId" Text
       :> "sinks"
       :> Capture "sinksId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Updates a log service sink. If the sink does not exist, it is created.
type SinksUpdate =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logServices"
       :> Capture "logServicesId" Text
       :> "sinks"
       :> Capture "sinksId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type IndexesAPI = IndexesList

-- | Lists the current index values for a log service.
type IndexesList =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logServices"
       :> Capture "logServicesId" Text
       :> "indexes"
       :> QueryParam "log" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "depth" Int32
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "indexPrefix" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type LogsAPI = SinksAPI :<|> EntriesAPI

type SinksAPI =
     SinksList :<|> SinksGet :<|> SinksCreate :<|>
       SinksDelete
       :<|> SinksUpdate

-- | Lists log sinks associated with a log.
type SinksList =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logs"
       :> Capture "logsId" Text
       :> "sinks"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets a log sink.
type SinksGet =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logs"
       :> Capture "logsId" Text
       :> "sinks"
       :> Capture "sinksId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Creates a log sink. All log entries for a specified log are written to
-- the destination.
type SinksCreate =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logs"
       :> Capture "logsId" Text
       :> "sinks"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Deletes a log sink. After deletion, no new log entries are written to
-- the destination.
type SinksDelete =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logs"
       :> Capture "logsId" Text
       :> "sinks"
       :> Capture "sinksId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Updates a log sink. If the sink does not exist, it is created.
type SinksUpdate =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logs"
       :> Capture "logsId" Text
       :> "sinks"
       :> Capture "sinksId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type EntriesAPI = EntriesWrite

-- | Writes log entries to Cloud Logging. Each entry consists of a
-- \`LogEntry\` object. You must fill in all the fields of the object,
-- including one of the payload fields. You may supply a map,
-- \`commonLabels\`, that holds default (key, value) data for the
-- \`entries[].metadata.labels\` map in each entry, saving you the trouble
-- of creating identical copies for each entry.
type EntriesWrite =
     "v1beta3" :> "projects" :> Capture "projectsId" Text
       :> "logs"
       :> Capture "logsId" Text
       :> "entries:write"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text
