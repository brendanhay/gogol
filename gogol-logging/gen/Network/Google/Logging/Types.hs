{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Logging.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Logging.Types
    (
    -- * Service Request
      loggingRequest

    -- * Log
    , Log
    , log'
    , lName
    , lDisplayName
    , lPayloadType

    -- * LogError
    , LogError
    , logError
    , leStatus
    , leResource
    , leTimeNanos

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * WriteLogEntriesRequest
    , WriteLogEntriesRequest
    , writeLogEntriesRequest
    , wlerEntries
    , wlerCommonLabels

    -- * WriteLogEntriesRequestCommonLabels
    , WriteLogEntriesRequestCommonLabels
    , writeLogEntriesRequestCommonLabels

    -- * Empty
    , Empty
    , empty

    -- * ListSinksResponse
    , ListSinksResponse
    , listSinksResponse
    , lsrSinks

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

    -- * LogEntryMetadata
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

    -- * LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload

    -- * ListLogServiceIndexesResponse
    , ListLogServiceIndexesResponse
    , listLogServiceIndexesResponse
    , llsirNextPageToken
    , llsirServiceIndexPrefixes

    -- * WriteLogEntriesResponse
    , WriteLogEntriesResponse
    , writeLogEntriesResponse

    -- * LogSink
    , LogSink
    , logSink
    , lsDestination
    , lsName
    , lsFilter
    , lsErrors

    -- * ListLogServicesResponse
    , ListLogServicesResponse
    , listLogServicesResponse
    , llsrNextPageToken
    , llsrLogServices

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem

    -- * ListLogsResponse
    , ListLogsResponse
    , listLogsResponse
    , llrNextPageToken
    , llrLogs

    -- * HTTPRequest
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

    -- * ListLogSinksResponse
    , ListLogSinksResponse
    , listLogSinksResponse
    , llsrSinks

    -- * LogService
    , LogService
    , logService
    , logName
    , logIndexKeys

    -- * ListLogServiceSinksResponse
    , ListLogServiceSinksResponse
    , listLogServiceSinksResponse
    , llssrSinks

    -- * LogLine
    , LogLine
    , logLine
    , llTime
    , llSeverity
    , llLogMessage
    , llSourceLocation

    -- * LogEntry
    , LogEntry
    , logEntry
    , leLog
    , leTextPayload
    , leHTTPRequest
    , leStructPayload
    , leInsertId
    , leMetadata
    , leProtoPayload

    -- * LogEntryMetadataLabels
    , LogEntryMetadataLabels
    , logEntryMetadataLabels

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

    -- * LogEntryStructPayload
    , LogEntryStructPayload
    , logEntryStructPayload
    ) where

import           Network.Google.Logging.Types.Product
import           Network.Google.Logging.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta3' of the Google Cloud Logging API. This contains the host and root path used as a starting point for constructing service requests.
loggingRequest :: RequestBuilder
loggingRequest
  = defaultRequest "https://logging.googleapis.com/" ""
