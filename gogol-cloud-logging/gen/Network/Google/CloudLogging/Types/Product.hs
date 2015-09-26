{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.CloudLogging.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudLogging.Types.Product where

import           Network.Google.CloudLogging.Types.Sum
import           Network.Google.Prelude

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty

-- | A common proto for logging HTTP requests.
--
-- /See:/ 'httpRequest' smart constructor.
data HttpRequest = HttpRequest
    { _hrStatus        :: !(Maybe Int32)
    , _hrRequestUrl    :: !(Maybe Text)
    , _hrRemoteIp      :: !(Maybe Text)
    , _hrRequestSize   :: !(Maybe Int64)
    , _hrUserAgent     :: !(Maybe Text)
    , _hrResponseSize  :: !(Maybe Int64)
    , _hrRequestMethod :: !(Maybe Text)
    , _hrReferer       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HttpRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hrStatus'
--
-- * 'hrRequestUrl'
--
-- * 'hrRemoteIp'
--
-- * 'hrRequestSize'
--
-- * 'hrUserAgent'
--
-- * 'hrResponseSize'
--
-- * 'hrRequestMethod'
--
-- * 'hrReferer'
httpRequest
    :: HttpRequest
httpRequest =
    HttpRequest
    { _hrStatus = Nothing
    , _hrRequestUrl = Nothing
    , _hrRemoteIp = Nothing
    , _hrRequestSize = Nothing
    , _hrUserAgent = Nothing
    , _hrResponseSize = Nothing
    , _hrRequestMethod = Nothing
    , _hrReferer = Nothing
    }

-- | A response code indicates the status of response, e.g., 200.
hrStatus :: Lens' HttpRequest (Maybe Int32)
hrStatus = lens _hrStatus (\ s a -> s{_hrStatus = a})

-- | Contains the scheme (http|https), the host name, the path and the query
-- portion of the URL that was requested.
hrRequestUrl :: Lens' HttpRequest (Maybe Text)
hrRequestUrl
  = lens _hrRequestUrl (\ s a -> s{_hrRequestUrl = a})

-- | IP address of the client who issues the HTTP request. Could be either
-- IPv4 or IPv6.
hrRemoteIp :: Lens' HttpRequest (Maybe Text)
hrRemoteIp
  = lens _hrRemoteIp (\ s a -> s{_hrRemoteIp = a})

-- | Size of the HTTP request message in bytes, including request headers and
-- the request body.
hrRequestSize :: Lens' HttpRequest (Maybe Int64)
hrRequestSize
  = lens _hrRequestSize
      (\ s a -> s{_hrRequestSize = a})

-- | User agent sent by the client, e.g., \"Mozilla\/4.0 (compatible; MSIE
-- 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)\".
hrUserAgent :: Lens' HttpRequest (Maybe Text)
hrUserAgent
  = lens _hrUserAgent (\ s a -> s{_hrUserAgent = a})

-- | Size of the HTTP response message in bytes sent back to the client,
-- including response headers and response body.
hrResponseSize :: Lens' HttpRequest (Maybe Int64)
hrResponseSize
  = lens _hrResponseSize
      (\ s a -> s{_hrResponseSize = a})

-- | Request method, such as \`GET\`, \`HEAD\`, \`PUT\` or \`POST\`.
hrRequestMethod :: Lens' HttpRequest (Maybe Text)
hrRequestMethod
  = lens _hrRequestMethod
      (\ s a -> s{_hrRequestMethod = a})

-- | Referer (a.k.a. referrer) URL of request, as defined in
-- http:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616-sec14.html.
hrReferer :: Lens' HttpRequest (Maybe Text)
hrReferer
  = lens _hrReferer (\ s a -> s{_hrReferer = a})

-- | Result returned from ListLogServiceIndexesRequest.
--
-- /See:/ 'listLogServiceIndexesResponse' smart constructor.
data ListLogServiceIndexesResponse = ListLogServiceIndexesResponse
    { _llsirNextPageToken        :: !(Maybe Text)
    , _llsirServiceIndexPrefixes :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLogServiceIndexesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llsirNextPageToken'
--
-- * 'llsirServiceIndexPrefixes'
listLogServiceIndexesResponse
    :: ListLogServiceIndexesResponse
listLogServiceIndexesResponse =
    ListLogServiceIndexesResponse
    { _llsirNextPageToken = Nothing
    , _llsirServiceIndexPrefixes = Nothing
    }

-- | If there are more results, then \`nextPageToken\` is returned in the
-- response. To get the next batch of indexes, use the value of
-- \`nextPageToken\` as \`pageToken\` in the next call of
-- \`ListLogServiceIndexes\`. If \`nextPageToken\` is empty, then there are
-- no more results.
llsirNextPageToken :: Lens' ListLogServiceIndexesResponse (Maybe Text)
llsirNextPageToken
  = lens _llsirNextPageToken
      (\ s a -> s{_llsirNextPageToken = a})

-- | A list of log service index values. Each index value has the form
-- \`\"\/value1\/value2\/...\"\`, where \`value1\` is a value in the
-- primary index, \`value2\` is a value in the secondary index, and so
-- forth.
llsirServiceIndexPrefixes :: Lens' ListLogServiceIndexesResponse [Text]
llsirServiceIndexPrefixes
  = lens _llsirServiceIndexPrefixes
      (\ s a -> s{_llsirServiceIndexPrefixes = a})
      . _Default
      . _Coerce

-- | Result returned from \`ListLogServiceSinks\`.
--
-- /See:/ 'listLogServiceSinksResponse' smart constructor.
newtype ListLogServiceSinksResponse = ListLogServiceSinksResponse
    { _llssrSinks :: Maybe [Maybe LogSink]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLogServiceSinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llssrSinks'
listLogServiceSinksResponse
    :: ListLogServiceSinksResponse
listLogServiceSinksResponse =
    ListLogServiceSinksResponse
    { _llssrSinks = Nothing
    }

-- | The requested log service sinks. If a returned \`LogSink\` object has an
-- empty \`destination\` field, the client can retrieve the complete
-- \`LogSink\` object by calling \`logServices.sinks.get\`.
llssrSinks :: Lens' ListLogServiceSinksResponse [Maybe LogSink]
llssrSinks
  = lens _llssrSinks (\ s a -> s{_llssrSinks = a}) .
      _Default
      . _Coerce

-- | Result returned from \`ListLogServicesRequest\`.
--
-- /See:/ 'listLogServicesResponse' smart constructor.
data ListLogServicesResponse = ListLogServicesResponse
    { _llsrNextPageToken :: !(Maybe Text)
    , _llsrLogServices   :: !(Maybe [Maybe LogService])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLogServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llsrNextPageToken'
--
-- * 'llsrLogServices'
listLogServicesResponse
    :: ListLogServicesResponse
listLogServicesResponse =
    ListLogServicesResponse
    { _llsrNextPageToken = Nothing
    , _llsrLogServices = Nothing
    }

-- | If there are more results, then \`nextPageToken\` is returned in the
-- response. To get the next batch of services, use the value of
-- \`nextPageToken\` as \`pageToken\` in the next call of
-- \`ListLogServices\`. If \`nextPageToken\` is empty, then there are no
-- more results.
llsrNextPageToken :: Lens' ListLogServicesResponse (Maybe Text)
llsrNextPageToken
  = lens _llsrNextPageToken
      (\ s a -> s{_llsrNextPageToken = a})

-- | A list of log services.
llsrLogServices :: Lens' ListLogServicesResponse [Maybe LogService]
llsrLogServices
  = lens _llsrLogServices
      (\ s a -> s{_llsrLogServices = a})
      . _Default
      . _Coerce

-- | Result returned from \`ListLogSinks\`.
--
-- /See:/ 'listLogSinksResponse' smart constructor.
newtype ListLogSinksResponse = ListLogSinksResponse
    { _llsrSinks :: Maybe [Maybe LogSink]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLogSinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llsrSinks'
listLogSinksResponse
    :: ListLogSinksResponse
listLogSinksResponse =
    ListLogSinksResponse
    { _llsrSinks = Nothing
    }

-- | The requested log sinks. If a returned \`LogSink\` object has an empty
-- \`destination\` field, the client can retrieve the complete \`LogSink\`
-- object by calling \`log.sinks.get\`.
llsrSinks :: Lens' ListLogSinksResponse [Maybe LogSink]
llsrSinks
  = lens _llsrSinks (\ s a -> s{_llsrSinks = a}) .
      _Default
      . _Coerce

-- | Result returned from ListLogs.
--
-- /See:/ 'listLogsResponse' smart constructor.
data ListLogsResponse = ListLogsResponse
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLogs          :: !(Maybe [Maybe Log])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLogsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLogs'
listLogsResponse
    :: ListLogsResponse
listLogsResponse =
    ListLogsResponse
    { _llrNextPageToken = Nothing
    , _llrLogs = Nothing
    }

-- | If there are more results, then \`nextPageToken\` is returned in the
-- response. To get the next batch of logs, use the value of
-- \`nextPageToken\` as \`pageToken\` in the next call of \`ListLogs\`. If
-- \`nextPageToken\` is empty, then there are no more results.
llrNextPageToken :: Lens' ListLogsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of log descriptions matching the criteria.
llrLogs :: Lens' ListLogsResponse [Maybe Log]
llrLogs
  = lens _llrLogs (\ s a -> s{_llrLogs = a}) . _Default
      . _Coerce

-- | Result returned from \`ListSinks\`.
--
-- /See:/ 'listSinksResponse' smart constructor.
newtype ListSinksResponse = ListSinksResponse
    { _lsrSinks :: Maybe [Maybe LogSink]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListSinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrSinks'
listSinksResponse
    :: ListSinksResponse
listSinksResponse =
    ListSinksResponse
    { _lsrSinks = Nothing
    }

-- | The requested sinks. If a returned \`LogSink\` object has an empty
-- \`destination\` field, the client can retrieve the complete \`LogSink\`
-- object by calling \`projects.sinks.get\`.
lsrSinks :: Lens' ListSinksResponse [Maybe LogSink]
lsrSinks
  = lens _lsrSinks (\ s a -> s{_lsrSinks = a}) .
      _Default
      . _Coerce

-- | _Output only._ Describes a log, which is a named stream of log entries.
--
-- /See:/ 'log' smart constructor.
data Log = Log
    { _logName        :: !(Maybe Text)
    , _logDisplayName :: !(Maybe Text)
    , _logPayloadType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Log' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'logName'
--
-- * 'logDisplayName'
--
-- * 'logPayloadType'
log
    :: Log
log =
    Log
    { _logName = Nothing
    , _logDisplayName = Nothing
    , _logPayloadType = Nothing
    }

-- | The resource name of the log. Example:
-- \`\"\/projects\/my-gcp-project-id\/logs\/LOG_NAME\"\`, where
-- \`LOG_NAME\` is the URL-encoded given name of the log. The log includes
-- those log entries whose \`LogEntry.log\` field contains this given name.
-- To avoid name collisions, it is a best practice to prefix the given log
-- name with the service name, but this is not required. Examples of log
-- given names: \`\"appengine.googleapis.com\/request_log\"\`,
-- \`\"apache-access\"\`.
logName :: Lens' Log (Maybe Text)
logName = lens _logName (\ s a -> s{_logName = a})

-- | _Optional._ The common name of the log. Example: \`\"request_log\"\`.
logDisplayName :: Lens' Log (Maybe Text)
logDisplayName
  = lens _logDisplayName
      (\ s a -> s{_logDisplayName = a})

-- | _Optional_. A URI representing the expected payload type for log
-- entries.
logPayloadType :: Lens' Log (Maybe Text)
logPayloadType
  = lens _logPayloadType
      (\ s a -> s{_logPayloadType = a})

-- | An individual entry in a log.
--
-- /See:/ 'logEntry' smart constructor.
data LogEntry = LogEntry
    { _leLog           :: !(Maybe Text)
    , _leTextPayload   :: !(Maybe Text)
    , _leHttpRequest   :: !(Maybe (Maybe HttpRequest))
    , _leStructPayload :: !(Maybe LogEntryStructPayload)
    , _leInsertId      :: !(Maybe Text)
    , _leMetadata      :: !(Maybe (Maybe LogEntryMetadata))
    , _leProtoPayload  :: !(Maybe LogEntryProtoPayload)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leLog'
--
-- * 'leTextPayload'
--
-- * 'leHttpRequest'
--
-- * 'leStructPayload'
--
-- * 'leInsertId'
--
-- * 'leMetadata'
--
-- * 'leProtoPayload'
logEntry
    :: LogEntry
logEntry =
    LogEntry
    { _leLog = Nothing
    , _leTextPayload = Nothing
    , _leHttpRequest = Nothing
    , _leStructPayload = Nothing
    , _leInsertId = Nothing
    , _leMetadata = Nothing
    , _leProtoPayload = Nothing
    }

-- | The log to which this entry belongs. When a log entry is ingested, the
-- value of this field is set by the logging system.
leLog :: Lens' LogEntry (Maybe Text)
leLog = lens _leLog (\ s a -> s{_leLog = a})

-- | The log entry payload, represented as a text string.
leTextPayload :: Lens' LogEntry (Maybe Text)
leTextPayload
  = lens _leTextPayload
      (\ s a -> s{_leTextPayload = a})

-- | Information about the HTTP request associated with this log entry, if
-- applicable.
leHttpRequest :: Lens' LogEntry (Maybe (Maybe HttpRequest))
leHttpRequest
  = lens _leHttpRequest
      (\ s a -> s{_leHttpRequest = a})

-- | The log entry payload, represented as a structure that is expressed as a
-- JSON object.
leStructPayload :: Lens' LogEntry (Maybe LogEntryStructPayload)
leStructPayload
  = lens _leStructPayload
      (\ s a -> s{_leStructPayload = a})

-- | A unique ID for the log entry. If you provide this field, the logging
-- service considers other log entries in the same log with the same ID as
-- duplicates which can be removed.
leInsertId :: Lens' LogEntry (Maybe Text)
leInsertId
  = lens _leInsertId (\ s a -> s{_leInsertId = a})

-- | Information about the log entry.
leMetadata :: Lens' LogEntry (Maybe (Maybe LogEntryMetadata))
leMetadata
  = lens _leMetadata (\ s a -> s{_leMetadata = a})

-- | The log entry payload, represented as a protocol buffer that is
-- expressed as a JSON object. You can only pass \`protoPayload\` values
-- that belong to a set of approved types.
leProtoPayload :: Lens' LogEntry (Maybe LogEntryProtoPayload)
leProtoPayload
  = lens _leProtoPayload
      (\ s a -> s{_leProtoPayload = a})

-- | Additional data that is associated with a log entry, set by the service
-- creating the log entry.
--
-- /See:/ 'logEntryMetadata' smart constructor.
data LogEntryMetadata = LogEntryMetadata
    { _lemSeverity    :: !(Maybe Text)
    , _lemZone        :: !(Maybe Text)
    , _lemUserId      :: !(Maybe Text)
    , _lemServiceName :: !(Maybe Text)
    , _lemLabels      :: !(Maybe LogEntryMetadataLabels)
    , _lemRegion      :: !(Maybe Text)
    , _lemProjectId   :: !(Maybe Text)
    , _lemTimestamp   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntryMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lemSeverity'
--
-- * 'lemZone'
--
-- * 'lemUserId'
--
-- * 'lemServiceName'
--
-- * 'lemLabels'
--
-- * 'lemRegion'
--
-- * 'lemProjectId'
--
-- * 'lemTimestamp'
logEntryMetadata
    :: LogEntryMetadata
logEntryMetadata =
    LogEntryMetadata
    { _lemSeverity = Nothing
    , _lemZone = Nothing
    , _lemUserId = Nothing
    , _lemServiceName = Nothing
    , _lemLabels = Nothing
    , _lemRegion = Nothing
    , _lemProjectId = Nothing
    , _lemTimestamp = Nothing
    }

-- | The severity of the log entry.
lemSeverity :: Lens' LogEntryMetadata (Maybe Text)
lemSeverity
  = lens _lemSeverity (\ s a -> s{_lemSeverity = a})

-- | The zone of the Google Cloud Platform service that created the log
-- entry. For example, \`\"us-central1-a\"\`.
lemZone :: Lens' LogEntryMetadata (Maybe Text)
lemZone = lens _lemZone (\ s a -> s{_lemZone = a})

-- | The fully-qualified email address of the authenticated user that
-- performed or requested the action represented by the log entry. If the
-- log entry does not apply to an action taken by an authenticated user,
-- then the field should be empty.
lemUserId :: Lens' LogEntryMetadata (Maybe Text)
lemUserId
  = lens _lemUserId (\ s a -> s{_lemUserId = a})

-- | The API name of the Google Cloud Platform service that created the log
-- entry. For example, \`\"compute.googleapis.com\"\`.
lemServiceName :: Lens' LogEntryMetadata (Maybe Text)
lemServiceName
  = lens _lemServiceName
      (\ s a -> s{_lemServiceName = a})

-- | A set of (key, value) data that provides additional information about
-- the log entry. If the log entry is from one of the Google Cloud Platform
-- sources listed below, the indicated (key, value) information must be
-- provided: Google App Engine, service_name \`appengine.googleapis.com\`:
-- \"appengine.googleapis.com\/module_id\",
-- \"appengine.googleapis.com\/version_id\", and one of:
-- \"appengine.googleapis.com\/replica_index\",
-- \"appengine.googleapis.com\/clone_id\", or else provide the following
-- Compute Engine labels: Google Compute Engine, service_name
-- \`compute.googleapis.com\`: \"compute.googleapis.com\/resource_type\",
-- \"instance\" \"compute.googleapis.com\/resource_id\",
lemLabels :: Lens' LogEntryMetadata (Maybe LogEntryMetadataLabels)
lemLabels
  = lens _lemLabels (\ s a -> s{_lemLabels = a})

-- | The region name of the Google Cloud Platform service that created the
-- log entry. For example, \`\"us-central1\"\`.
lemRegion :: Lens' LogEntryMetadata (Maybe Text)
lemRegion
  = lens _lemRegion (\ s a -> s{_lemRegion = a})

-- | The project ID of the Google Cloud Platform service that created the log
-- entry.
lemProjectId :: Lens' LogEntryMetadata (Maybe Text)
lemProjectId
  = lens _lemProjectId (\ s a -> s{_lemProjectId = a})

-- | The time the event described by the log entry occurred. Timestamps must
-- be later than January 1, 1970.
lemTimestamp :: Lens' LogEntryMetadata (Maybe Text)
lemTimestamp
  = lens _lemTimestamp (\ s a -> s{_lemTimestamp = a})

-- | A set of (key, value) data that provides additional information about
-- the log entry. If the log entry is from one of the Google Cloud Platform
-- sources listed below, the indicated (key, value) information must be
-- provided: Google App Engine, service_name \`appengine.googleapis.com\`:
-- \"appengine.googleapis.com\/module_id\",
-- \"appengine.googleapis.com\/version_id\", and one of:
-- \"appengine.googleapis.com\/replica_index\",
-- \"appengine.googleapis.com\/clone_id\", or else provide the following
-- Compute Engine labels: Google Compute Engine, service_name
-- \`compute.googleapis.com\`: \"compute.googleapis.com\/resource_type\",
-- \"instance\" \"compute.googleapis.com\/resource_id\",
--
-- /See:/ 'logEntryMetadataLabels' smart constructor.
data LogEntryMetadataLabels =
    LogEntryMetadataLabels
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntryMetadataLabels' with the minimum fields required to make a request.
--
logEntryMetadataLabels
    :: LogEntryMetadataLabels
logEntryMetadataLabels = LogEntryMetadataLabels

-- | The log entry payload, represented as a protocol buffer that is
-- expressed as a JSON object. You can only pass \`protoPayload\` values
-- that belong to a set of approved types.
--
-- /See:/ 'logEntryProtoPayload' smart constructor.
data LogEntryProtoPayload =
    LogEntryProtoPayload
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntryProtoPayload' with the minimum fields required to make a request.
--
logEntryProtoPayload
    :: LogEntryProtoPayload
logEntryProtoPayload = LogEntryProtoPayload

-- | The log entry payload, represented as a structure that is expressed as a
-- JSON object.
--
-- /See:/ 'logEntryStructPayload' smart constructor.
data LogEntryStructPayload =
    LogEntryStructPayload
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntryStructPayload' with the minimum fields required to make a request.
--
logEntryStructPayload
    :: LogEntryStructPayload
logEntryStructPayload = LogEntryStructPayload

-- | Describes a problem with a logging resource or operation.
--
-- /See:/ 'logError' smart constructor.
data LogError = LogError
    { _leStatus    :: !(Maybe (Maybe Status))
    , _leResource  :: !(Maybe Text)
    , _leTimeNanos :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leStatus'
--
-- * 'leResource'
--
-- * 'leTimeNanos'
logError
    :: LogError
logError =
    LogError
    { _leStatus = Nothing
    , _leResource = Nothing
    , _leTimeNanos = Nothing
    }

-- | The error description, including a classification code, an error
-- message, and other details.
leStatus :: Lens' LogError (Maybe (Maybe Status))
leStatus = lens _leStatus (\ s a -> s{_leStatus = a})

-- | A resource name associated with this error. For example, the name of a
-- Cloud Storage bucket that has insufficient permissions to be a
-- destination for log entries.
leResource :: Lens' LogError (Maybe Text)
leResource
  = lens _leResource (\ s a -> s{_leResource = a})

-- | The time the error was observed, in nanoseconds since the Unix epoch.
leTimeNanos :: Lens' LogError (Maybe Int64)
leTimeNanos
  = lens _leTimeNanos (\ s a -> s{_leTimeNanos = a})

-- | Application log line emitted while processing a request.
--
-- /See:/ 'logLine' smart constructor.
data LogLine = LogLine
    { _llTime           :: !(Maybe Text)
    , _llSeverity       :: !(Maybe Text)
    , _llLogMessage     :: !(Maybe Text)
    , _llSourceLocation :: !(Maybe (Maybe SourceLocation))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogLine' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llTime'
--
-- * 'llSeverity'
--
-- * 'llLogMessage'
--
-- * 'llSourceLocation'
logLine
    :: LogLine
logLine =
    LogLine
    { _llTime = Nothing
    , _llSeverity = Nothing
    , _llLogMessage = Nothing
    , _llSourceLocation = Nothing
    }

-- | Time when log entry was made. May be inaccurate.
llTime :: Lens' LogLine (Maybe Text)
llTime = lens _llTime (\ s a -> s{_llTime = a})

-- | Severity of log.
llSeverity :: Lens' LogLine (Maybe Text)
llSeverity
  = lens _llSeverity (\ s a -> s{_llSeverity = a})

-- | App provided log message.
llLogMessage :: Lens' LogLine (Maybe Text)
llLogMessage
  = lens _llLogMessage (\ s a -> s{_llLogMessage = a})

-- | Line of code that generated this log message.
llSourceLocation :: Lens' LogLine (Maybe (Maybe SourceLocation))
llSourceLocation
  = lens _llSourceLocation
      (\ s a -> s{_llSourceLocation = a})

-- | _Output only._ Describes a service that writes log entries.
--
-- /See:/ 'logService' smart constructor.
data LogService = LogService
    { _lName      :: !(Maybe Text)
    , _lIndexKeys :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lIndexKeys'
logService
    :: LogService
logService =
    LogService
    { _lName = Nothing
    , _lIndexKeys = Nothing
    }

-- | The service\'s name. Example: \`\"appengine.googleapis.com\"\`. Log
-- names beginning with this string are reserved for this service. This
-- value can appear in the \`LogEntry.metadata.serviceName\` field of log
-- entries associated with this log service.
lName :: Lens' LogService (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | A list of the names of the keys used to index and label individual log
-- entries from this service. The first two keys are used as the primary
-- and secondary index, respectively. Additional keys may be used to label
-- the entries. For example, App Engine indexes its entries by module and
-- by version, so its \`indexKeys\` field is the following: [
-- \"appengine.googleapis.com\/module_id\",
-- \"appengine.googleapis.com\/version_id\" ]
lIndexKeys :: Lens' LogService [Text]
lIndexKeys
  = lens _lIndexKeys (\ s a -> s{_lIndexKeys = a}) .
      _Default
      . _Coerce

-- | Describes where log entries are written outside of Cloud Logging.
--
-- /See:/ 'logSink' smart constructor.
data LogSink = LogSink
    { _lsDestination :: !(Maybe Text)
    , _lsName        :: !(Maybe Text)
    , _lsFilter      :: !(Maybe Text)
    , _lsErrors      :: !(Maybe [Maybe LogError])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogSink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsDestination'
--
-- * 'lsName'
--
-- * 'lsFilter'
--
-- * 'lsErrors'
logSink
    :: LogSink
logSink =
    LogSink
    { _lsDestination = Nothing
    , _lsName = Nothing
    , _lsFilter = Nothing
    , _lsErrors = Nothing
    }

-- | The resource name of the destination. Cloud Logging writes designated
-- log entries to this destination. For example,
-- \`\"storage.googleapis.com\/my-output-bucket\"\`.
lsDestination :: Lens' LogSink (Maybe Text)
lsDestination
  = lens _lsDestination
      (\ s a -> s{_lsDestination = a})

-- | The client-assigned name of this sink. For example,
-- \`\"my-syslog-sink\"\`. The name must be unique among the sinks of a
-- similar kind in the project.
lsName :: Lens' LogSink (Maybe Text)
lsName = lens _lsName (\ s a -> s{_lsName = a})

-- | An advanced logs filter. If present, only log entries matching the
-- filter are written. Only project sinks use this field; log sinks and log
-- service sinks must not include a filter.
lsFilter :: Lens' LogSink (Maybe Text)
lsFilter = lens _lsFilter (\ s a -> s{_lsFilter = a})

-- | _Output only._ If any errors occur when invoking a sink method, then
-- this field contains descriptions of the errors.
lsErrors :: Lens' LogSink [Maybe LogError]
lsErrors
  = lens _lsErrors (\ s a -> s{_lsErrors = a}) .
      _Default
      . _Coerce

-- | Complete log information about a single request to an application.
--
-- /See:/ 'requestLog' smart constructor.
data RequestLog = RequestLog
    { _rlTraceId           :: !(Maybe Text)
    , _rlInstanceId        :: !(Maybe Word8)
    , _rlStatus            :: !(Maybe Int32)
    , _rlRequestId         :: !(Maybe Word8)
    , _rlInstanceIndex     :: !(Maybe Int32)
    , _rlModuleId          :: !(Maybe Text)
    , _rlVersionId         :: !(Maybe Text)
    , _rlHttpVersion       :: !(Maybe Text)
    , _rlTaskName          :: !(Maybe Text)
    , _rlPendingTime       :: !(Maybe Text)
    , _rlWasLoadingRequest :: !(Maybe Bool)
    , _rlStartTime         :: !(Maybe Text)
    , _rlLatency           :: !(Maybe Text)
    , _rlUrlMapEntry       :: !(Maybe Text)
    , _rlCost              :: !(Maybe Double)
    , _rlReferrer          :: !(Maybe Text)
    , _rlLine              :: !(Maybe [Maybe LogLine])
    , _rlIp                :: !(Maybe Text)
    , _rlAppId             :: !(Maybe Text)
    , _rlMethod            :: !(Maybe Text)
    , _rlResource          :: !(Maybe Text)
    , _rlEndTime           :: !(Maybe Text)
    , _rlFinished          :: !(Maybe Bool)
    , _rlMegaCycles        :: !(Maybe Int64)
    , _rlUserAgent         :: !(Maybe Text)
    , _rlNickname          :: !(Maybe Text)
    , _rlHost              :: !(Maybe Text)
    , _rlTaskQueueName     :: !(Maybe Text)
    , _rlResponseSize      :: !(Maybe Int64)
    , _rlSourceReference   :: !(Maybe [Maybe SourceReference])
    , _rlAppEngineRelease  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RequestLog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlTraceId'
--
-- * 'rlInstanceId'
--
-- * 'rlStatus'
--
-- * 'rlRequestId'
--
-- * 'rlInstanceIndex'
--
-- * 'rlModuleId'
--
-- * 'rlVersionId'
--
-- * 'rlHttpVersion'
--
-- * 'rlTaskName'
--
-- * 'rlPendingTime'
--
-- * 'rlWasLoadingRequest'
--
-- * 'rlStartTime'
--
-- * 'rlLatency'
--
-- * 'rlUrlMapEntry'
--
-- * 'rlCost'
--
-- * 'rlReferrer'
--
-- * 'rlLine'
--
-- * 'rlIp'
--
-- * 'rlAppId'
--
-- * 'rlMethod'
--
-- * 'rlResource'
--
-- * 'rlEndTime'
--
-- * 'rlFinished'
--
-- * 'rlMegaCycles'
--
-- * 'rlUserAgent'
--
-- * 'rlNickname'
--
-- * 'rlHost'
--
-- * 'rlTaskQueueName'
--
-- * 'rlResponseSize'
--
-- * 'rlSourceReference'
--
-- * 'rlAppEngineRelease'
requestLog
    :: RequestLog
requestLog =
    RequestLog
    { _rlTraceId = Nothing
    , _rlInstanceId = Nothing
    , _rlStatus = Nothing
    , _rlRequestId = Nothing
    , _rlInstanceIndex = Nothing
    , _rlModuleId = Nothing
    , _rlVersionId = Nothing
    , _rlHttpVersion = Nothing
    , _rlTaskName = Nothing
    , _rlPendingTime = Nothing
    , _rlWasLoadingRequest = Nothing
    , _rlStartTime = Nothing
    , _rlLatency = Nothing
    , _rlUrlMapEntry = Nothing
    , _rlCost = Nothing
    , _rlReferrer = Nothing
    , _rlLine = Nothing
    , _rlIp = Nothing
    , _rlAppId = Nothing
    , _rlMethod = Nothing
    , _rlResource = Nothing
    , _rlEndTime = Nothing
    , _rlFinished = Nothing
    , _rlMegaCycles = Nothing
    , _rlUserAgent = Nothing
    , _rlNickname = Nothing
    , _rlHost = Nothing
    , _rlTaskQueueName = Nothing
    , _rlResponseSize = Nothing
    , _rlSourceReference = Nothing
    , _rlAppEngineRelease = Nothing
    }

-- | Cloud Trace identifier of the trace for this request.
rlTraceId :: Lens' RequestLog (Maybe Text)
rlTraceId
  = lens _rlTraceId (\ s a -> s{_rlTraceId = a})

-- | An opaque identifier for the instance that handled the request.
rlInstanceId :: Lens' RequestLog (Maybe Word8)
rlInstanceId
  = lens _rlInstanceId (\ s a -> s{_rlInstanceId = a})

-- | Response status of request.
rlStatus :: Lens' RequestLog (Maybe Int32)
rlStatus = lens _rlStatus (\ s a -> s{_rlStatus = a})

-- | Globally unique identifier for a request, based on request start time.
-- Request IDs for requests which started later will compare greater as
-- binary strings than those for requests which started earlier.
rlRequestId :: Lens' RequestLog (Maybe Word8)
rlRequestId
  = lens _rlRequestId (\ s a -> s{_rlRequestId = a})

-- | If the instance that processed this request was individually addressable
-- (i.e. belongs to a manually scaled module), this is the index of the
-- instance.
rlInstanceIndex :: Lens' RequestLog (Maybe Int32)
rlInstanceIndex
  = lens _rlInstanceIndex
      (\ s a -> s{_rlInstanceIndex = a})

-- | Identifies the module of the application that handled this request.
rlModuleId :: Lens' RequestLog (Maybe Text)
rlModuleId
  = lens _rlModuleId (\ s a -> s{_rlModuleId = a})

-- | Version of the application that handled this request.
rlVersionId :: Lens' RequestLog (Maybe Text)
rlVersionId
  = lens _rlVersionId (\ s a -> s{_rlVersionId = a})

-- | HTTP version of request.
rlHttpVersion :: Lens' RequestLog (Maybe Text)
rlHttpVersion
  = lens _rlHttpVersion
      (\ s a -> s{_rlHttpVersion = a})

-- | Task name of the request (for an offline request).
rlTaskName :: Lens' RequestLog (Maybe Text)
rlTaskName
  = lens _rlTaskName (\ s a -> s{_rlTaskName = a})

-- | Time this request spent in the pending request queue, if it was pending
-- at all.
rlPendingTime :: Lens' RequestLog (Maybe Text)
rlPendingTime
  = lens _rlPendingTime
      (\ s a -> s{_rlPendingTime = a})

-- | Was this request a loading request for this instance?
rlWasLoadingRequest :: Lens' RequestLog (Maybe Bool)
rlWasLoadingRequest
  = lens _rlWasLoadingRequest
      (\ s a -> s{_rlWasLoadingRequest = a})

-- | Time at which request was known to have begun processing.
rlStartTime :: Lens' RequestLog (Maybe Text)
rlStartTime
  = lens _rlStartTime (\ s a -> s{_rlStartTime = a})

-- | Latency of the request.
rlLatency :: Lens' RequestLog (Maybe Text)
rlLatency
  = lens _rlLatency (\ s a -> s{_rlLatency = a})

-- | File or class within URL mapping used for request. Useful for tracking
-- down the source code which was responsible for managing request.
-- Especially for multiply mapped handlers.
rlUrlMapEntry :: Lens' RequestLog (Maybe Text)
rlUrlMapEntry
  = lens _rlUrlMapEntry
      (\ s a -> s{_rlUrlMapEntry = a})

-- | An indication of the relative cost of serving this request.
rlCost :: Lens' RequestLog (Maybe Double)
rlCost = lens _rlCost (\ s a -> s{_rlCost = a})

-- | Referrer URL of request.
rlReferrer :: Lens' RequestLog (Maybe Text)
rlReferrer
  = lens _rlReferrer (\ s a -> s{_rlReferrer = a})

-- | List of log lines emitted by the application while serving this request,
-- if requested.
rlLine :: Lens' RequestLog [Maybe LogLine]
rlLine
  = lens _rlLine (\ s a -> s{_rlLine = a}) . _Default .
      _Coerce

-- | Origin IP address.
rlIp :: Lens' RequestLog (Maybe Text)
rlIp = lens _rlIp (\ s a -> s{_rlIp = a})

-- | Identifies the application that handled this request.
rlAppId :: Lens' RequestLog (Maybe Text)
rlAppId = lens _rlAppId (\ s a -> s{_rlAppId = a})

-- | Request method, such as \`GET\`, \`HEAD\`, \`PUT\`, \`POST\`, or
-- \`DELETE\`.
rlMethod :: Lens' RequestLog (Maybe Text)
rlMethod = lens _rlMethod (\ s a -> s{_rlMethod = a})

-- | Contains the path and query portion of the URL that was requested. For
-- example, if the URL was \"http:\/\/example.com\/app?name=val\", the
-- resource would be \"\/app?name=val\". Any trailing fragment (separated
-- by a \'#\' character) will not be included.
rlResource :: Lens' RequestLog (Maybe Text)
rlResource
  = lens _rlResource (\ s a -> s{_rlResource = a})

-- | Time at which request was known to end processing.
rlEndTime :: Lens' RequestLog (Maybe Text)
rlEndTime
  = lens _rlEndTime (\ s a -> s{_rlEndTime = a})

-- | If true, represents a finished request. Otherwise, the request is
-- active.
rlFinished :: Lens' RequestLog (Maybe Bool)
rlFinished
  = lens _rlFinished (\ s a -> s{_rlFinished = a})

-- | Number of CPU megacycles used to process request.
rlMegaCycles :: Lens' RequestLog (Maybe Int64)
rlMegaCycles
  = lens _rlMegaCycles (\ s a -> s{_rlMegaCycles = a})

-- | User agent used for making request.
rlUserAgent :: Lens' RequestLog (Maybe Text)
rlUserAgent
  = lens _rlUserAgent (\ s a -> s{_rlUserAgent = a})

-- | A string that identifies a logged-in user who made this request, or
-- empty if the user is not logged in. Most likely, this is the part of the
-- user\'s email before the \'\'\' sign. The field value is the same for
-- different requests from the same user, but different users may have a
-- similar name. This information is also available to the application via
-- Users API. This field will be populated starting with App Engine 1.9.21.
rlNickname :: Lens' RequestLog (Maybe Text)
rlNickname
  = lens _rlNickname (\ s a -> s{_rlNickname = a})

-- | The Internet host and port number of the resource being requested.
rlHost :: Lens' RequestLog (Maybe Text)
rlHost = lens _rlHost (\ s a -> s{_rlHost = a})

-- | Queue name of the request (for an offline request).
rlTaskQueueName :: Lens' RequestLog (Maybe Text)
rlTaskQueueName
  = lens _rlTaskQueueName
      (\ s a -> s{_rlTaskQueueName = a})

-- | Size in bytes sent back to client by request.
rlResponseSize :: Lens' RequestLog (Maybe Int64)
rlResponseSize
  = lens _rlResponseSize
      (\ s a -> s{_rlResponseSize = a})

-- | Source code for the application that handled this request. There can be
-- more than one source reference per deployed application if source code
-- is distributed among multiple repositories.
rlSourceReference :: Lens' RequestLog [Maybe SourceReference]
rlSourceReference
  = lens _rlSourceReference
      (\ s a -> s{_rlSourceReference = a})
      . _Default
      . _Coerce

-- | App Engine release version string.
rlAppEngineRelease :: Lens' RequestLog (Maybe Text)
rlAppEngineRelease
  = lens _rlAppEngineRelease
      (\ s a -> s{_rlAppEngineRelease = a})

-- | Specifies a location in a source file.
--
-- /See:/ 'sourceLocation' smart constructor.
data SourceLocation = SourceLocation
    { _slLine         :: !(Maybe Int64)
    , _slFunctionName :: !(Maybe Text)
    , _slFile         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slLine'
--
-- * 'slFunctionName'
--
-- * 'slFile'
sourceLocation
    :: SourceLocation
sourceLocation =
    SourceLocation
    { _slLine = Nothing
    , _slFunctionName = Nothing
    , _slFile = Nothing
    }

-- | Line within the source file.
slLine :: Lens' SourceLocation (Maybe Int64)
slLine = lens _slLine (\ s a -> s{_slLine = a})

-- | Human-readable name of the function or method being invoked, with
-- optional context such as the class or package name, for use in contexts
-- such as the logs viewer where file:line number is less meaningful. This
-- may vary by language, for example: in Java: qual.if.ied.Class.method in
-- Go: dir\/package.func in Python: function ...
slFunctionName :: Lens' SourceLocation (Maybe Text)
slFunctionName
  = lens _slFunctionName
      (\ s a -> s{_slFunctionName = a})

-- | Source file name. May or may not be a fully qualified name, depending on
-- the runtime environment.
slFile :: Lens' SourceLocation (Maybe Text)
slFile = lens _slFile (\ s a -> s{_slFile = a})

-- | A reference to a particular snapshot of the source tree used to build
-- and deploy an application.
--
-- /See:/ 'sourceReference' smart constructor.
data SourceReference = SourceReference
    { _srRepository :: !(Maybe Text)
    , _srRevisionId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srRepository'
--
-- * 'srRevisionId'
sourceReference
    :: SourceReference
sourceReference =
    SourceReference
    { _srRepository = Nothing
    , _srRevisionId = Nothing
    }

-- | Optional. A URI string identifying the repository. Example:
-- \"https:\/\/github.com\/GoogleCloudPlatform\/kubernetes.git\"
srRepository :: Lens' SourceReference (Maybe Text)
srRepository
  = lens _srRepository (\ s a -> s{_srRepository = a})

-- | The canonical (and persistent) identifier of the deployed revision.
-- Example (git): \"0035781c50ec7aa23385dc841529ce8a4b70db1b\"
srRevisionId :: Lens' SourceReference (Maybe Text)
srRevisionId
  = lens _srRevisionId (\ s a -> s{_srRevisionId = a})

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of [google.rpc.Code][],
-- but it may accept additional error codes if needed. The error message
-- should be a developer-facing English message that helps developers
-- *understand* and *resolve* the error. If a localized user-facing error
-- message is needed, put the localized message in the error details or
-- localize it in the client. The optional error details may contain
-- arbitrary information about the error. There is a predefined set of
-- error detail types in the package \`google.rpc\` which can be used for
-- common error conditions. # Language mapping The \`Status\` message is
-- the logical representation of the error model, but it is not necessarily
-- the actual wire format. When the \`Status\` message is exposed in
-- different client libraries and different wire protocols, it can be
-- mapped differently. For example, it will likely be mapped to some
-- exceptions in Java, but more likely mapped to some error codes in C. #
-- Other uses The error model and the \`Status\` message can be used in a
-- variety of environments, either with or without APIs, to provide a
-- consistent developer experience across different environments. Example
-- uses of this error model include: - Partial errors. If a service needs
-- to return partial errors to the client, it may embed the \`Status\` in
-- the normal response to indicate the partial errors. - Workflow errors. A
-- typical workflow has multiple steps. Each step may have a \`Status\`
-- message for error reporting purpose. - Batch operations. If a client
-- uses batch request and batch response, the \`Status\` message should be
-- used directly inside batch response, one for each error sub-response. -
-- Asynchronous operations. If an API call embeds asynchronous operation
-- results in its response, the status of those operations should be
-- represented directly using the \`Status\` message. - Logging. If some
-- API errors are stored in logs, the message \`Status\` could be used
-- directly after any stripping needed for security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status
    { _sDetails :: !(Maybe [StatusItemDetails])
    , _sCode    :: !(Maybe Int32)
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status =
    Status
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
sDetails :: Lens' Status [StatusItemDetails]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of [google.rpc.Code][].
sCode :: Lens' Status (Maybe Int32)
sCode = lens _sCode (\ s a -> s{_sCode = a})

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- [google.rpc.Status.details][google.rpc.Status.details] field, or
-- localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

--
-- /See:/ 'statusItemDetails' smart constructor.
data StatusItemDetails =
    StatusItemDetails
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusItemDetails' with the minimum fields required to make a request.
--
statusItemDetails
    :: StatusItemDetails
statusItemDetails = StatusItemDetails

-- | The parameters to WriteLogEntries.
--
-- /See:/ 'writeLogEntriesRequest' smart constructor.
data WriteLogEntriesRequest = WriteLogEntriesRequest
    { _wlerEntries      :: !(Maybe [Maybe LogEntry])
    , _wlerCommonLabels :: !(Maybe WriteLogEntriesRequestCommonLabels)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteLogEntriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlerEntries'
--
-- * 'wlerCommonLabels'
writeLogEntriesRequest
    :: WriteLogEntriesRequest
writeLogEntriesRequest =
    WriteLogEntriesRequest
    { _wlerEntries = Nothing
    , _wlerCommonLabels = Nothing
    }

-- | Log entries to insert.
wlerEntries :: Lens' WriteLogEntriesRequest [Maybe LogEntry]
wlerEntries
  = lens _wlerEntries (\ s a -> s{_wlerEntries = a}) .
      _Default
      . _Coerce

-- | Metadata labels that apply to all log entries in this request, so that
-- you don\'t have to repeat them in each log entry\'s \`metadata.labels\`
-- field. If any of the log entries contains a (key, value) with the same
-- key that is in \`commonLabels\`, then the entry\'s (key, value)
-- overrides the one in \`commonLabels\`.
wlerCommonLabels :: Lens' WriteLogEntriesRequest (Maybe WriteLogEntriesRequestCommonLabels)
wlerCommonLabels
  = lens _wlerCommonLabels
      (\ s a -> s{_wlerCommonLabels = a})

-- | Metadata labels that apply to all log entries in this request, so that
-- you don\'t have to repeat them in each log entry\'s \`metadata.labels\`
-- field. If any of the log entries contains a (key, value) with the same
-- key that is in \`commonLabels\`, then the entry\'s (key, value)
-- overrides the one in \`commonLabels\`.
--
-- /See:/ 'writeLogEntriesRequestCommonLabels' smart constructor.
data WriteLogEntriesRequestCommonLabels =
    WriteLogEntriesRequestCommonLabels
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteLogEntriesRequestCommonLabels' with the minimum fields required to make a request.
--
writeLogEntriesRequestCommonLabels
    :: WriteLogEntriesRequestCommonLabels
writeLogEntriesRequestCommonLabels = WriteLogEntriesRequestCommonLabels

-- | Result returned from WriteLogEntries. empty
--
-- /See:/ 'writeLogEntriesResponse' smart constructor.
data WriteLogEntriesResponse =
    WriteLogEntriesResponse
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteLogEntriesResponse' with the minimum fields required to make a request.
--
writeLogEntriesResponse
    :: WriteLogEntriesResponse
writeLogEntriesResponse = WriteLogEntriesResponse
