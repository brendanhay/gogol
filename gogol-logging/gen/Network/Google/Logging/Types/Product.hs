{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Logging.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Logging.Types.Product where

import           Network.Google.Logging.Types.Sum
import           Network.Google.Prelude

-- | An object that describes the schema of a MonitoredResource object using
-- a type name and a set of labels. For example, the monitored resource
-- descriptor for Google Compute Engine VM instances has a type of
-- \`\"gce_instance\"\` and specifies the use of the labels
-- \`\"instance_id\"\` and \`\"zone\"\` to identify particular VM
-- instances. Different APIs can support different monitored resource
-- types. APIs generally provide a \`list\` method that returns the
-- monitored resource descriptors used by the API.
--
-- /See:/ 'monitoredResourceDescriptor' smart constructor.
data MonitoredResourceDescriptor = MonitoredResourceDescriptor'
    { _mrdName        :: !(Maybe Text)
    , _mrdDisplayName :: !(Maybe Text)
    , _mrdLabels      :: !(Maybe [LabelDescriptor])
    , _mrdType        :: !(Maybe Text)
    , _mrdDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonitoredResourceDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrdName'
--
-- * 'mrdDisplayName'
--
-- * 'mrdLabels'
--
-- * 'mrdType'
--
-- * 'mrdDescription'
monitoredResourceDescriptor
    :: MonitoredResourceDescriptor
monitoredResourceDescriptor =
    MonitoredResourceDescriptor'
    { _mrdName = Nothing
    , _mrdDisplayName = Nothing
    , _mrdLabels = Nothing
    , _mrdType = Nothing
    , _mrdDescription = Nothing
    }

-- | Optional. The resource name of the monitored resource descriptor:
-- \`\"projects\/{project_id}\/monitoredResourceDescriptors\/{type}\"\`
-- where {type} is the value of the \`type\` field in this object and
-- {project_id} is a project ID that provides API-specific context for
-- accessing the type. APIs that do not use project information can use the
-- resource name format \`\"monitoredResourceDescriptors\/{type}\"\`.
mrdName :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdName = lens _mrdName (\ s a -> s{_mrdName = a})

-- | Optional. A concise name for the monitored resource type that might be
-- displayed in user interfaces. For example, \`\"Google Cloud SQL
-- Database\"\`.
mrdDisplayName :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdDisplayName
  = lens _mrdDisplayName
      (\ s a -> s{_mrdDisplayName = a})

-- | Required. A set of labels used to describe instances of this monitored
-- resource type. For example, an individual Google Cloud SQL database is
-- identified by values for the labels \`\"database_id\"\` and
-- \`\"zone\"\`.
mrdLabels :: Lens' MonitoredResourceDescriptor [LabelDescriptor]
mrdLabels
  = lens _mrdLabels (\ s a -> s{_mrdLabels = a}) .
      _Default
      . _Coerce

-- | Required. The monitored resource type. For example, the type
-- \`\"cloudsql_database\"\` represents databases in Google Cloud SQL.
mrdType :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdType = lens _mrdType (\ s a -> s{_mrdType = a})

-- | Optional. A detailed description of the monitored resource type that
-- might be used in documentation.
mrdDescription :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdDescription
  = lens _mrdDescription
      (\ s a -> s{_mrdDescription = a})

instance FromJSON MonitoredResourceDescriptor where
        parseJSON
          = withObject "MonitoredResourceDescriptor"
              (\ o ->
                 MonitoredResourceDescriptor' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON MonitoredResourceDescriptor where
        toJSON MonitoredResourceDescriptor'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _mrdName,
                  ("displayName" .=) <$> _mrdDisplayName,
                  ("labels" .=) <$> _mrdLabels,
                  ("type" .=) <$> _mrdType,
                  ("description" .=) <$> _mrdDescription])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` which can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting
-- purpose. - Batch operations. If a client uses batch request and batch
-- response, the \`Status\` message should be used directly inside batch
-- response, one for each error sub-response. - Asynchronous operations. If
-- an API call embeds asynchronous operation results in its response, the
-- status of those operations should be represented directly using the
-- \`Status\` message. - Logging. If some API errors are stored in logs,
-- the message \`Status\` could be used directly after any stripping needed
-- for security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Result returned from \`ListLogEntries\`.
--
-- /See:/ 'listLogEntriesResponse' smart constructor.
data ListLogEntriesResponse = ListLogEntriesResponse'
    { _llerNextPageToken   :: !(Maybe Text)
    , _llerEntries         :: !(Maybe [LogEntry])
    , _llerProjectIdErrors :: !(Maybe ListLogEntriesResponseProjectIdErrors)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLogEntriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llerNextPageToken'
--
-- * 'llerEntries'
--
-- * 'llerProjectIdErrors'
listLogEntriesResponse
    :: ListLogEntriesResponse
listLogEntriesResponse =
    ListLogEntriesResponse'
    { _llerNextPageToken = Nothing
    , _llerEntries = Nothing
    , _llerProjectIdErrors = Nothing
    }

-- | If there are more results than were returned, then \`nextPageToken\` is
-- included in the response. To get the next set of results, call this
-- method again using the value of \`nextPageToken\` as \`pageToken\`.
llerNextPageToken :: Lens' ListLogEntriesResponse (Maybe Text)
llerNextPageToken
  = lens _llerNextPageToken
      (\ s a -> s{_llerNextPageToken = a})

-- | A list of log entries.
llerEntries :: Lens' ListLogEntriesResponse [LogEntry]
llerEntries
  = lens _llerEntries (\ s a -> s{_llerEntries = a}) .
      _Default
      . _Coerce

-- | If partial_success is true, contains the project ids that had errors and
-- the associated errors.
llerProjectIdErrors :: Lens' ListLogEntriesResponse (Maybe ListLogEntriesResponseProjectIdErrors)
llerProjectIdErrors
  = lens _llerProjectIdErrors
      (\ s a -> s{_llerProjectIdErrors = a})

instance FromJSON ListLogEntriesResponse where
        parseJSON
          = withObject "ListLogEntriesResponse"
              (\ o ->
                 ListLogEntriesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "entries" .!= mempty)
                     <*> (o .:? "projectIdErrors"))

instance ToJSON ListLogEntriesResponse where
        toJSON ListLogEntriesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llerNextPageToken,
                  ("entries" .=) <$> _llerEntries,
                  ("projectIdErrors" .=) <$> _llerProjectIdErrors])

-- | Required. Values for all of the labels listed in the associated
-- monitored resource descriptor. For example, Cloud SQL databases use the
-- labels \`\"database_id\"\` and \`\"zone\"\`.
--
-- /See:/ 'monitoredResourceLabels' smart constructor.
newtype MonitoredResourceLabels = MonitoredResourceLabels'
    { _mrlAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonitoredResourceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrlAddtional'
monitoredResourceLabels
    :: HashMap Text Text -- ^ 'mrlAddtional'
    -> MonitoredResourceLabels
monitoredResourceLabels pMrlAddtional_ =
    MonitoredResourceLabels'
    { _mrlAddtional = _Coerce # pMrlAddtional_
    }

mrlAddtional :: Lens' MonitoredResourceLabels (HashMap Text Text)
mrlAddtional
  = lens _mrlAddtional (\ s a -> s{_mrlAddtional = a})
      . _Coerce

instance FromJSON MonitoredResourceLabels where
        parseJSON
          = withObject "MonitoredResourceLabels"
              (\ o ->
                 MonitoredResourceLabels' <$> (parseJSONObject o))

instance ToJSON MonitoredResourceLabels where
        toJSON = toJSON . _mrlAddtional

-- | Result returned from ListLogMetrics.
--
-- /See:/ 'listLogMetricsResponse' smart constructor.
data ListLogMetricsResponse = ListLogMetricsResponse'
    { _llmrMetrics       :: !(Maybe [LogMetric])
    , _llmrNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLogMetricsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llmrMetrics'
--
-- * 'llmrNextPageToken'
listLogMetricsResponse
    :: ListLogMetricsResponse
listLogMetricsResponse =
    ListLogMetricsResponse'
    { _llmrMetrics = Nothing
    , _llmrNextPageToken = Nothing
    }

-- | A list of logs-based metrics.
llmrMetrics :: Lens' ListLogMetricsResponse [LogMetric]
llmrMetrics
  = lens _llmrMetrics (\ s a -> s{_llmrMetrics = a}) .
      _Default
      . _Coerce

-- | If there are more results than were returned, then \`nextPageToken\` is
-- included in the response. To get the next set of results, call this
-- method again using the value of \`nextPageToken\` as \`pageToken\`.
llmrNextPageToken :: Lens' ListLogMetricsResponse (Maybe Text)
llmrNextPageToken
  = lens _llmrNextPageToken
      (\ s a -> s{_llmrNextPageToken = a})

instance FromJSON ListLogMetricsResponse where
        parseJSON
          = withObject "ListLogMetricsResponse"
              (\ o ->
                 ListLogMetricsResponse' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListLogMetricsResponse where
        toJSON ListLogMetricsResponse'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _llmrMetrics,
                  ("nextPageToken" .=) <$> _llmrNextPageToken])

-- | The parameters to WriteLogEntries.
--
-- /See:/ 'writeLogEntriesRequest' smart constructor.
data WriteLogEntriesRequest = WriteLogEntriesRequest'
    { _wlerEntries        :: !(Maybe [LogEntry])
    , _wlerPartialSuccess :: !(Maybe Bool)
    , _wlerResource       :: !(Maybe MonitoredResource)
    , _wlerLabels         :: !(Maybe WriteLogEntriesRequestLabels)
    , _wlerLogName        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteLogEntriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlerEntries'
--
-- * 'wlerPartialSuccess'
--
-- * 'wlerResource'
--
-- * 'wlerLabels'
--
-- * 'wlerLogName'
writeLogEntriesRequest
    :: WriteLogEntriesRequest
writeLogEntriesRequest =
    WriteLogEntriesRequest'
    { _wlerEntries = Nothing
    , _wlerPartialSuccess = Nothing
    , _wlerResource = Nothing
    , _wlerLabels = Nothing
    , _wlerLogName = Nothing
    }

-- | Required. The log entries to write. The log entries must have values for
-- all required fields.
wlerEntries :: Lens' WriteLogEntriesRequest [LogEntry]
wlerEntries
  = lens _wlerEntries (\ s a -> s{_wlerEntries = a}) .
      _Default
      . _Coerce

-- | Optional. Whether valid entries should be written even if some other
-- entries fail due to INVALID_ARGUMENT or PERMISSION_DENIED errors. If any
-- entry is not written, the response status will be the error associated
-- with one of the failed entries and include error details in the form of
-- WriteLogEntriesPartialErrors.
wlerPartialSuccess :: Lens' WriteLogEntriesRequest (Maybe Bool)
wlerPartialSuccess
  = lens _wlerPartialSuccess
      (\ s a -> s{_wlerPartialSuccess = a})

-- | Optional. A default monitored resource for those log entries in
-- \`entries\` that do not specify their own \`resource\`.
wlerResource :: Lens' WriteLogEntriesRequest (Maybe MonitoredResource)
wlerResource
  = lens _wlerResource (\ s a -> s{_wlerResource = a})

-- | Optional. User-defined \`key:value\` items that are added to the
-- \`labels\` field of each log entry in \`entries\`, except when a log
-- entry specifies its own \`key:value\` item with the same key. Example:
-- \`{ \"size\": \"large\", \"color\":\"red\" }\`
wlerLabels :: Lens' WriteLogEntriesRequest (Maybe WriteLogEntriesRequestLabels)
wlerLabels
  = lens _wlerLabels (\ s a -> s{_wlerLabels = a})

-- | Optional. A default log resource name for those log entries in
-- \`entries\` that do not specify their own \`logName\`. Example:
-- \`\"projects\/my-project\/logs\/syslog\"\`. See LogEntry.
wlerLogName :: Lens' WriteLogEntriesRequest (Maybe Text)
wlerLogName
  = lens _wlerLogName (\ s a -> s{_wlerLogName = a})

instance FromJSON WriteLogEntriesRequest where
        parseJSON
          = withObject "WriteLogEntriesRequest"
              (\ o ->
                 WriteLogEntriesRequest' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "partialSuccess")
                     <*> (o .:? "resource")
                     <*> (o .:? "labels")
                     <*> (o .:? "logName"))

instance ToJSON WriteLogEntriesRequest where
        toJSON WriteLogEntriesRequest'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _wlerEntries,
                  ("partialSuccess" .=) <$> _wlerPartialSuccess,
                  ("resource" .=) <$> _wlerResource,
                  ("labels" .=) <$> _wlerLabels,
                  ("logName" .=) <$> _wlerLogName])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Optional. A set of user-defined (key, value) data that provides
-- additional information about the log entry.
--
-- /See:/ 'logEntryLabels' smart constructor.
newtype LogEntryLabels = LogEntryLabels'
    { _lelAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntryLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lelAddtional'
logEntryLabels
    :: HashMap Text Text -- ^ 'lelAddtional'
    -> LogEntryLabels
logEntryLabels pLelAddtional_ =
    LogEntryLabels'
    { _lelAddtional = _Coerce # pLelAddtional_
    }

lelAddtional :: Lens' LogEntryLabels (HashMap Text Text)
lelAddtional
  = lens _lelAddtional (\ s a -> s{_lelAddtional = a})
      . _Coerce

instance FromJSON LogEntryLabels where
        parseJSON
          = withObject "LogEntryLabels"
              (\ o -> LogEntryLabels' <$> (parseJSONObject o))

instance ToJSON LogEntryLabels where
        toJSON = toJSON . _lelAddtional

-- | Result returned from \`ListSinks\`.
--
-- /See:/ 'listSinksResponse' smart constructor.
data ListSinksResponse = ListSinksResponse'
    { _lsrSinks         :: !(Maybe [LogSink])
    , _lsrNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListSinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrSinks'
--
-- * 'lsrNextPageToken'
listSinksResponse
    :: ListSinksResponse
listSinksResponse =
    ListSinksResponse'
    { _lsrSinks = Nothing
    , _lsrNextPageToken = Nothing
    }

-- | A list of sinks.
lsrSinks :: Lens' ListSinksResponse [LogSink]
lsrSinks
  = lens _lsrSinks (\ s a -> s{_lsrSinks = a}) .
      _Default
      . _Coerce

-- | If there are more results than were returned, then \`nextPageToken\` is
-- included in the response. To get the next set of results, call this
-- method again using the value of \`nextPageToken\` as \`pageToken\`.
lsrNextPageToken :: Lens' ListSinksResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

instance FromJSON ListSinksResponse where
        parseJSON
          = withObject "ListSinksResponse"
              (\ o ->
                 ListSinksResponse' <$>
                   (o .:? "sinks" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListSinksResponse where
        toJSON ListSinksResponse'{..}
          = object
              (catMaybes
                 [("sinks" .=) <$> _lsrSinks,
                  ("nextPageToken" .=) <$> _lsrNextPageToken])

-- | Complete log information about a single HTTP request to an App Engine
-- application.
--
-- /See:/ 'requestLog' smart constructor.
data RequestLog = RequestLog'
    { _rlTraceId           :: !(Maybe Text)
    , _rlInstanceId        :: !(Maybe Text)
    , _rlStatus            :: !(Maybe (Textual Int32))
    , _rlRequestId         :: !(Maybe Text)
    , _rlInstanceIndex     :: !(Maybe (Textual Int32))
    , _rlModuleId          :: !(Maybe Text)
    , _rlVersionId         :: !(Maybe Text)
    , _rlHTTPVersion       :: !(Maybe Text)
    , _rlTaskName          :: !(Maybe Text)
    , _rlPendingTime       :: !(Maybe Text)
    , _rlWasLoadingRequest :: !(Maybe Bool)
    , _rlFirst             :: !(Maybe Bool)
    , _rlStartTime         :: !(Maybe Text)
    , _rlLatency           :: !(Maybe Text)
    , _rlURLMapEntry       :: !(Maybe Text)
    , _rlCost              :: !(Maybe (Textual Double))
    , _rlReferrer          :: !(Maybe Text)
    , _rlLine              :: !(Maybe [LogLine])
    , _rlIP                :: !(Maybe Text)
    , _rlAppId             :: !(Maybe Text)
    , _rlMethod            :: !(Maybe Text)
    , _rlResource          :: !(Maybe Text)
    , _rlEndTime           :: !(Maybe Text)
    , _rlFinished          :: !(Maybe Bool)
    , _rlMegaCycles        :: !(Maybe (Textual Int64))
    , _rlUserAgent         :: !(Maybe Text)
    , _rlNickname          :: !(Maybe Text)
    , _rlHost              :: !(Maybe Text)
    , _rlTaskQueueName     :: !(Maybe Text)
    , _rlResponseSize      :: !(Maybe (Textual Int64))
    , _rlSourceReference   :: !(Maybe [SourceReference])
    , _rlAppEngineRelease  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rlHTTPVersion'
--
-- * 'rlTaskName'
--
-- * 'rlPendingTime'
--
-- * 'rlWasLoadingRequest'
--
-- * 'rlFirst'
--
-- * 'rlStartTime'
--
-- * 'rlLatency'
--
-- * 'rlURLMapEntry'
--
-- * 'rlCost'
--
-- * 'rlReferrer'
--
-- * 'rlLine'
--
-- * 'rlIP'
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
    RequestLog'
    { _rlTraceId = Nothing
    , _rlInstanceId = Nothing
    , _rlStatus = Nothing
    , _rlRequestId = Nothing
    , _rlInstanceIndex = Nothing
    , _rlModuleId = Nothing
    , _rlVersionId = Nothing
    , _rlHTTPVersion = Nothing
    , _rlTaskName = Nothing
    , _rlPendingTime = Nothing
    , _rlWasLoadingRequest = Nothing
    , _rlFirst = Nothing
    , _rlStartTime = Nothing
    , _rlLatency = Nothing
    , _rlURLMapEntry = Nothing
    , _rlCost = Nothing
    , _rlReferrer = Nothing
    , _rlLine = Nothing
    , _rlIP = Nothing
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

-- | Cloud Trace identifier for this request.
rlTraceId :: Lens' RequestLog (Maybe Text)
rlTraceId
  = lens _rlTraceId (\ s a -> s{_rlTraceId = a})

-- | An identifier for the instance that handled the request.
rlInstanceId :: Lens' RequestLog (Maybe Text)
rlInstanceId
  = lens _rlInstanceId (\ s a -> s{_rlInstanceId = a})

-- | HTTP response status code. Example: 200, 404.
rlStatus :: Lens' RequestLog (Maybe Int32)
rlStatus
  = lens _rlStatus (\ s a -> s{_rlStatus = a}) .
      mapping _Coerce

-- | Globally unique identifier for a request, which is based on the request
-- start time. Request IDs for requests which started later will compare
-- greater as strings than those for requests which started earlier.
rlRequestId :: Lens' RequestLog (Maybe Text)
rlRequestId
  = lens _rlRequestId (\ s a -> s{_rlRequestId = a})

-- | If the instance processing this request belongs to a manually scaled
-- module, then this is the 0-based index of the instance. Otherwise, this
-- value is -1.
rlInstanceIndex :: Lens' RequestLog (Maybe Int32)
rlInstanceIndex
  = lens _rlInstanceIndex
      (\ s a -> s{_rlInstanceIndex = a})
      . mapping _Coerce

-- | Module of the application that handled this request.
rlModuleId :: Lens' RequestLog (Maybe Text)
rlModuleId
  = lens _rlModuleId (\ s a -> s{_rlModuleId = a})

-- | Version of the application that handled this request.
rlVersionId :: Lens' RequestLog (Maybe Text)
rlVersionId
  = lens _rlVersionId (\ s a -> s{_rlVersionId = a})

-- | HTTP version of request. Example: \`\"HTTP\/1.1\"\`.
rlHTTPVersion :: Lens' RequestLog (Maybe Text)
rlHTTPVersion
  = lens _rlHTTPVersion
      (\ s a -> s{_rlHTTPVersion = a})

-- | Task name of the request, in the case of an offline request.
rlTaskName :: Lens' RequestLog (Maybe Text)
rlTaskName
  = lens _rlTaskName (\ s a -> s{_rlTaskName = a})

-- | Time this request spent in the pending request queue.
rlPendingTime :: Lens' RequestLog (Maybe Text)
rlPendingTime
  = lens _rlPendingTime
      (\ s a -> s{_rlPendingTime = a})

-- | Whether this was a loading request for the instance.
rlWasLoadingRequest :: Lens' RequestLog (Maybe Bool)
rlWasLoadingRequest
  = lens _rlWasLoadingRequest
      (\ s a -> s{_rlWasLoadingRequest = a})

-- | Whether this is the first RequestLog entry for this request. If an
-- active request has several RequestLog entries written to Cloud Logging,
-- this field will be set for one of them.
rlFirst :: Lens' RequestLog (Maybe Bool)
rlFirst = lens _rlFirst (\ s a -> s{_rlFirst = a})

-- | Time when the request started.
rlStartTime :: Lens' RequestLog (Maybe Text)
rlStartTime
  = lens _rlStartTime (\ s a -> s{_rlStartTime = a})

-- | Latency of the request.
rlLatency :: Lens' RequestLog (Maybe Text)
rlLatency
  = lens _rlLatency (\ s a -> s{_rlLatency = a})

-- | File or class that handled the request.
rlURLMapEntry :: Lens' RequestLog (Maybe Text)
rlURLMapEntry
  = lens _rlURLMapEntry
      (\ s a -> s{_rlURLMapEntry = a})

-- | An indication of the relative cost of serving this request.
rlCost :: Lens' RequestLog (Maybe Double)
rlCost
  = lens _rlCost (\ s a -> s{_rlCost = a}) .
      mapping _Coerce

-- | Referrer URL of request.
rlReferrer :: Lens' RequestLog (Maybe Text)
rlReferrer
  = lens _rlReferrer (\ s a -> s{_rlReferrer = a})

-- | A list of log lines emitted by the application while serving this
-- request.
rlLine :: Lens' RequestLog [LogLine]
rlLine
  = lens _rlLine (\ s a -> s{_rlLine = a}) . _Default .
      _Coerce

-- | Origin IP address.
rlIP :: Lens' RequestLog (Maybe Text)
rlIP = lens _rlIP (\ s a -> s{_rlIP = a})

-- | Application that handled this request.
rlAppId :: Lens' RequestLog (Maybe Text)
rlAppId = lens _rlAppId (\ s a -> s{_rlAppId = a})

-- | Request method. Example: \`\"GET\"\`, \`\"HEAD\"\`, \`\"PUT\"\`,
-- \`\"POST\"\`, \`\"DELETE\"\`.
rlMethod :: Lens' RequestLog (Maybe Text)
rlMethod = lens _rlMethod (\ s a -> s{_rlMethod = a})

-- | Contains the path and query portion of the URL that was requested. For
-- example, if the URL was \"http:\/\/example.com\/app?name=val\", the
-- resource would be \"\/app?name=val\". The fragment identifier, which is
-- identified by the \`#\` character, is not included.
rlResource :: Lens' RequestLog (Maybe Text)
rlResource
  = lens _rlResource (\ s a -> s{_rlResource = a})

-- | Time when the request finished.
rlEndTime :: Lens' RequestLog (Maybe Text)
rlEndTime
  = lens _rlEndTime (\ s a -> s{_rlEndTime = a})

-- | Whether this request is finished or active.
rlFinished :: Lens' RequestLog (Maybe Bool)
rlFinished
  = lens _rlFinished (\ s a -> s{_rlFinished = a})

-- | Number of CPU megacycles used to process request.
rlMegaCycles :: Lens' RequestLog (Maybe Int64)
rlMegaCycles
  = lens _rlMegaCycles (\ s a -> s{_rlMegaCycles = a})
      . mapping _Coerce

-- | User agent that made the request.
rlUserAgent :: Lens' RequestLog (Maybe Text)
rlUserAgent
  = lens _rlUserAgent (\ s a -> s{_rlUserAgent = a})

-- | The logged-in user who made the request. Most likely, this is the part
-- of the user\'s email before the \`\'\` sign. The field value is the same
-- for different requests from the same user, but different users can have
-- similar names. This information is also available to the application via
-- the App Engine Users API. This field will be populated starting with App
-- Engine 1.9.21.
rlNickname :: Lens' RequestLog (Maybe Text)
rlNickname
  = lens _rlNickname (\ s a -> s{_rlNickname = a})

-- | Internet host and port number of the resource being requested.
rlHost :: Lens' RequestLog (Maybe Text)
rlHost = lens _rlHost (\ s a -> s{_rlHost = a})

-- | Queue name of the request, in the case of an offline request.
rlTaskQueueName :: Lens' RequestLog (Maybe Text)
rlTaskQueueName
  = lens _rlTaskQueueName
      (\ s a -> s{_rlTaskQueueName = a})

-- | Size in bytes sent back to client by request.
rlResponseSize :: Lens' RequestLog (Maybe Int64)
rlResponseSize
  = lens _rlResponseSize
      (\ s a -> s{_rlResponseSize = a})
      . mapping _Coerce

-- | Source code for the application that handled this request. There can be
-- more than one source reference per deployed application if source code
-- is distributed among multiple repositories.
rlSourceReference :: Lens' RequestLog [SourceReference]
rlSourceReference
  = lens _rlSourceReference
      (\ s a -> s{_rlSourceReference = a})
      . _Default
      . _Coerce

-- | App Engine release version.
rlAppEngineRelease :: Lens' RequestLog (Maybe Text)
rlAppEngineRelease
  = lens _rlAppEngineRelease
      (\ s a -> s{_rlAppEngineRelease = a})

instance FromJSON RequestLog where
        parseJSON
          = withObject "RequestLog"
              (\ o ->
                 RequestLog' <$>
                   (o .:? "traceId") <*> (o .:? "instanceId") <*>
                     (o .:? "status")
                     <*> (o .:? "requestId")
                     <*> (o .:? "instanceIndex")
                     <*> (o .:? "moduleId")
                     <*> (o .:? "versionId")
                     <*> (o .:? "httpVersion")
                     <*> (o .:? "taskName")
                     <*> (o .:? "pendingTime")
                     <*> (o .:? "wasLoadingRequest")
                     <*> (o .:? "first")
                     <*> (o .:? "startTime")
                     <*> (o .:? "latency")
                     <*> (o .:? "urlMapEntry")
                     <*> (o .:? "cost")
                     <*> (o .:? "referrer")
                     <*> (o .:? "line" .!= mempty)
                     <*> (o .:? "ip")
                     <*> (o .:? "appId")
                     <*> (o .:? "method")
                     <*> (o .:? "resource")
                     <*> (o .:? "endTime")
                     <*> (o .:? "finished")
                     <*> (o .:? "megaCycles")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "nickname")
                     <*> (o .:? "host")
                     <*> (o .:? "taskQueueName")
                     <*> (o .:? "responseSize")
                     <*> (o .:? "sourceReference" .!= mempty)
                     <*> (o .:? "appEngineRelease"))

instance ToJSON RequestLog where
        toJSON RequestLog'{..}
          = object
              (catMaybes
                 [("traceId" .=) <$> _rlTraceId,
                  ("instanceId" .=) <$> _rlInstanceId,
                  ("status" .=) <$> _rlStatus,
                  ("requestId" .=) <$> _rlRequestId,
                  ("instanceIndex" .=) <$> _rlInstanceIndex,
                  ("moduleId" .=) <$> _rlModuleId,
                  ("versionId" .=) <$> _rlVersionId,
                  ("httpVersion" .=) <$> _rlHTTPVersion,
                  ("taskName" .=) <$> _rlTaskName,
                  ("pendingTime" .=) <$> _rlPendingTime,
                  ("wasLoadingRequest" .=) <$> _rlWasLoadingRequest,
                  ("first" .=) <$> _rlFirst,
                  ("startTime" .=) <$> _rlStartTime,
                  ("latency" .=) <$> _rlLatency,
                  ("urlMapEntry" .=) <$> _rlURLMapEntry,
                  ("cost" .=) <$> _rlCost,
                  ("referrer" .=) <$> _rlReferrer,
                  ("line" .=) <$> _rlLine, ("ip" .=) <$> _rlIP,
                  ("appId" .=) <$> _rlAppId,
                  ("method" .=) <$> _rlMethod,
                  ("resource" .=) <$> _rlResource,
                  ("endTime" .=) <$> _rlEndTime,
                  ("finished" .=) <$> _rlFinished,
                  ("megaCycles" .=) <$> _rlMegaCycles,
                  ("userAgent" .=) <$> _rlUserAgent,
                  ("nickname" .=) <$> _rlNickname,
                  ("host" .=) <$> _rlHost,
                  ("taskQueueName" .=) <$> _rlTaskQueueName,
                  ("responseSize" .=) <$> _rlResponseSize,
                  ("sourceReference" .=) <$> _rlSourceReference,
                  ("appEngineRelease" .=) <$> _rlAppEngineRelease])

-- | The log entry payload, represented as a protocol buffer. You can only
-- use \`protoPayload\` values that belong to a set of approved types.
--
-- /See:/ 'logEntryProtoPayload' smart constructor.
newtype LogEntryProtoPayload = LogEntryProtoPayload'
    { _leppAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntryProtoPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leppAddtional'
logEntryProtoPayload
    :: HashMap Text JSONValue -- ^ 'leppAddtional'
    -> LogEntryProtoPayload
logEntryProtoPayload pLeppAddtional_ =
    LogEntryProtoPayload'
    { _leppAddtional = _Coerce # pLeppAddtional_
    }

-- | Properties of the object. Contains field \'ype with type URL.
leppAddtional :: Lens' LogEntryProtoPayload (HashMap Text JSONValue)
leppAddtional
  = lens _leppAddtional
      (\ s a -> s{_leppAddtional = a})
      . _Coerce

instance FromJSON LogEntryProtoPayload where
        parseJSON
          = withObject "LogEntryProtoPayload"
              (\ o ->
                 LogEntryProtoPayload' <$> (parseJSONObject o))

instance ToJSON LogEntryProtoPayload where
        toJSON = toJSON . _leppAddtional

-- | Result returned from WriteLogEntries. empty
--
-- /See:/ 'writeLogEntriesResponse' smart constructor.
data WriteLogEntriesResponse =
    WriteLogEntriesResponse'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteLogEntriesResponse' with the minimum fields required to make a request.
--
writeLogEntriesResponse
    :: WriteLogEntriesResponse
writeLogEntriesResponse = WriteLogEntriesResponse'

instance FromJSON WriteLogEntriesResponse where
        parseJSON
          = withObject "WriteLogEntriesResponse"
              (\ o -> pure WriteLogEntriesResponse')

instance ToJSON WriteLogEntriesResponse where
        toJSON = const emptyObject

-- | Describes a sink used to export log entries outside Cloud Logging.
--
-- /See:/ 'logSink' smart constructor.
data LogSink = LogSink'
    { _lsDestination         :: !(Maybe Text)
    , _lsOutputVersionFormat :: !(Maybe Text)
    , _lsName                :: !(Maybe Text)
    , _lsFilter              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogSink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsDestination'
--
-- * 'lsOutputVersionFormat'
--
-- * 'lsName'
--
-- * 'lsFilter'
logSink
    :: LogSink
logSink =
    LogSink'
    { _lsDestination = Nothing
    , _lsOutputVersionFormat = Nothing
    , _lsName = Nothing
    , _lsFilter = Nothing
    }

-- | The export destination. See [Exporting Logs With
-- Sinks](\/logging\/docs\/api\/tasks\/exporting-logs). Examples:
-- \`\"storage.googleapis.com\/a-bucket\"\`,
-- \`\"bigquery.googleapis.com\/projects\/a-project-id\/datasets\/a-dataset\"\`.
lsDestination :: Lens' LogSink (Maybe Text)
lsDestination
  = lens _lsDestination
      (\ s a -> s{_lsDestination = a})

-- | The log entry version to use for this sink\'s exported log entries. This
-- version does not have to correspond to the version of the log entry when
-- it was written to Cloud Logging.
lsOutputVersionFormat :: Lens' LogSink (Maybe Text)
lsOutputVersionFormat
  = lens _lsOutputVersionFormat
      (\ s a -> s{_lsOutputVersionFormat = a})

-- | Required. The client-assigned sink identifier. Example:
-- \`\"my-severe-errors-to-pubsub\"\`. Sink identifiers are limited to 1000
-- characters and can include only the following characters: \`A-Z\`,
-- \`a-z\`, \`0-9\`, and the special characters \`_-.\`.
lsName :: Lens' LogSink (Maybe Text)
lsName = lens _lsName (\ s a -> s{_lsName = a})

-- | An [advanced logs filter](\/logging\/docs\/view\/advanced_filters). Only
-- log entries matching that filter are exported. The filter must be
-- consistent with the log entry format specified by the
-- \`outputVersionFormat\` parameter, regardless of the format of the log
-- entry that was originally written to Cloud Logging. Example (V2 format):
-- \`\"logName=projects\/my-projectid\/logs\/syslog AND
-- severity>=ERROR\"\`.
lsFilter :: Lens' LogSink (Maybe Text)
lsFilter = lens _lsFilter (\ s a -> s{_lsFilter = a})

instance FromJSON LogSink where
        parseJSON
          = withObject "LogSink"
              (\ o ->
                 LogSink' <$>
                   (o .:? "destination") <*>
                     (o .:? "outputVersionFormat")
                     <*> (o .:? "name")
                     <*> (o .:? "filter"))

instance ToJSON LogSink where
        toJSON LogSink'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _lsDestination,
                  ("outputVersionFormat" .=) <$>
                    _lsOutputVersionFormat,
                  ("name" .=) <$> _lsName,
                  ("filter" .=) <$> _lsFilter])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

-- | Properties of the object. Contains field \'ype with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Result returned from ListMonitoredResourceDescriptors.
--
-- /See:/ 'listMonitoredResourceDescriptorsResponse' smart constructor.
data ListMonitoredResourceDescriptorsResponse = ListMonitoredResourceDescriptorsResponse'
    { _lmrdrNextPageToken       :: !(Maybe Text)
    , _lmrdrResourceDescriptors :: !(Maybe [MonitoredResourceDescriptor])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMonitoredResourceDescriptorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrdrNextPageToken'
--
-- * 'lmrdrResourceDescriptors'
listMonitoredResourceDescriptorsResponse
    :: ListMonitoredResourceDescriptorsResponse
listMonitoredResourceDescriptorsResponse =
    ListMonitoredResourceDescriptorsResponse'
    { _lmrdrNextPageToken = Nothing
    , _lmrdrResourceDescriptors = Nothing
    }

-- | If there are more results than were returned, then \`nextPageToken\` is
-- included in the response. To get the next set of results, call this
-- method again using the value of \`nextPageToken\` as \`pageToken\`.
lmrdrNextPageToken :: Lens' ListMonitoredResourceDescriptorsResponse (Maybe Text)
lmrdrNextPageToken
  = lens _lmrdrNextPageToken
      (\ s a -> s{_lmrdrNextPageToken = a})

-- | A list of resource descriptors.
lmrdrResourceDescriptors :: Lens' ListMonitoredResourceDescriptorsResponse [MonitoredResourceDescriptor]
lmrdrResourceDescriptors
  = lens _lmrdrResourceDescriptors
      (\ s a -> s{_lmrdrResourceDescriptors = a})
      . _Default
      . _Coerce

instance FromJSON
         ListMonitoredResourceDescriptorsResponse where
        parseJSON
          = withObject
              "ListMonitoredResourceDescriptorsResponse"
              (\ o ->
                 ListMonitoredResourceDescriptorsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resourceDescriptors" .!= mempty))

instance ToJSON
         ListMonitoredResourceDescriptorsResponse where
        toJSON ListMonitoredResourceDescriptorsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrdrNextPageToken,
                  ("resourceDescriptors" .=) <$>
                    _lmrdrResourceDescriptors])

-- | A common proto for logging HTTP requests.
--
-- /See:/ 'hTTPRequest' smart constructor.
data HTTPRequest = HTTPRequest'
    { _httprStatus                         :: !(Maybe (Textual Int32))
    , _httprRequestURL                     :: !(Maybe Text)
    , _httprCacheFillBytes                 :: !(Maybe (Textual Int64))
    , _httprRemoteIP                       :: !(Maybe Text)
    , _httprRequestSize                    :: !(Maybe (Textual Int64))
    , _httprCacheValidatedWithOriginServer :: !(Maybe Bool)
    , _httprUserAgent                      :: !(Maybe Text)
    , _httprCacheLookup                    :: !(Maybe Bool)
    , _httprResponseSize                   :: !(Maybe (Textual Int64))
    , _httprRequestMethod                  :: !(Maybe Text)
    , _httprCacheHit                       :: !(Maybe Bool)
    , _httprReferer                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httprStatus'
--
-- * 'httprRequestURL'
--
-- * 'httprCacheFillBytes'
--
-- * 'httprRemoteIP'
--
-- * 'httprRequestSize'
--
-- * 'httprCacheValidatedWithOriginServer'
--
-- * 'httprUserAgent'
--
-- * 'httprCacheLookup'
--
-- * 'httprResponseSize'
--
-- * 'httprRequestMethod'
--
-- * 'httprCacheHit'
--
-- * 'httprReferer'
hTTPRequest
    :: HTTPRequest
hTTPRequest =
    HTTPRequest'
    { _httprStatus = Nothing
    , _httprRequestURL = Nothing
    , _httprCacheFillBytes = Nothing
    , _httprRemoteIP = Nothing
    , _httprRequestSize = Nothing
    , _httprCacheValidatedWithOriginServer = Nothing
    , _httprUserAgent = Nothing
    , _httprCacheLookup = Nothing
    , _httprResponseSize = Nothing
    , _httprRequestMethod = Nothing
    , _httprCacheHit = Nothing
    , _httprReferer = Nothing
    }

-- | The response code indicating the status of response. Examples: 200, 404.
httprStatus :: Lens' HTTPRequest (Maybe Int32)
httprStatus
  = lens _httprStatus (\ s a -> s{_httprStatus = a}) .
      mapping _Coerce

-- | The scheme (http, https), the host name, the path and the query portion
-- of the URL that was requested. Example:
-- \`\"http:\/\/example.com\/some\/info?color=red\"\`.
httprRequestURL :: Lens' HTTPRequest (Maybe Text)
httprRequestURL
  = lens _httprRequestURL
      (\ s a -> s{_httprRequestURL = a})

-- | The number of HTTP response bytes inserted into cache. Set only when a
-- cache fill was attempted.
httprCacheFillBytes :: Lens' HTTPRequest (Maybe Int64)
httprCacheFillBytes
  = lens _httprCacheFillBytes
      (\ s a -> s{_httprCacheFillBytes = a})
      . mapping _Coerce

-- | The IP address (IPv4 or IPv6) of the client that issued the HTTP
-- request. Examples: \`\"192.168.1.1\"\`,
-- \`\"FE80::0202:B3FF:FE1E:8329\"\`.
httprRemoteIP :: Lens' HTTPRequest (Maybe Text)
httprRemoteIP
  = lens _httprRemoteIP
      (\ s a -> s{_httprRemoteIP = a})

-- | The size of the HTTP request message in bytes, including the request
-- headers and the request body.
httprRequestSize :: Lens' HTTPRequest (Maybe Int64)
httprRequestSize
  = lens _httprRequestSize
      (\ s a -> s{_httprRequestSize = a})
      . mapping _Coerce

-- | Whether or not the response was validated with the origin server before
-- being served from cache. This field is only meaningful if \`cache_hit\`
-- is True.
httprCacheValidatedWithOriginServer :: Lens' HTTPRequest (Maybe Bool)
httprCacheValidatedWithOriginServer
  = lens _httprCacheValidatedWithOriginServer
      (\ s a ->
         s{_httprCacheValidatedWithOriginServer = a})

-- | The user agent sent by the client. Example: \`\"Mozilla\/4.0
-- (compatible; MSIE 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)\"\`.
httprUserAgent :: Lens' HTTPRequest (Maybe Text)
httprUserAgent
  = lens _httprUserAgent
      (\ s a -> s{_httprUserAgent = a})

-- | Whether or not a cache lookup was attempted.
httprCacheLookup :: Lens' HTTPRequest (Maybe Bool)
httprCacheLookup
  = lens _httprCacheLookup
      (\ s a -> s{_httprCacheLookup = a})

-- | The size of the HTTP response message sent back to the client, in bytes,
-- including the response headers and the response body.
httprResponseSize :: Lens' HTTPRequest (Maybe Int64)
httprResponseSize
  = lens _httprResponseSize
      (\ s a -> s{_httprResponseSize = a})
      . mapping _Coerce

-- | The request method. Examples: \`\"GET\"\`, \`\"HEAD\"\`, \`\"PUT\"\`,
-- \`\"POST\"\`.
httprRequestMethod :: Lens' HTTPRequest (Maybe Text)
httprRequestMethod
  = lens _httprRequestMethod
      (\ s a -> s{_httprRequestMethod = a})

-- | Whether or not an entity was served from cache (with or without
-- validation).
httprCacheHit :: Lens' HTTPRequest (Maybe Bool)
httprCacheHit
  = lens _httprCacheHit
      (\ s a -> s{_httprCacheHit = a})

-- | The referer URL of the request, as defined in [HTTP\/1.1 Header Field
-- Definitions](http:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616-sec14.html).
httprReferer :: Lens' HTTPRequest (Maybe Text)
httprReferer
  = lens _httprReferer (\ s a -> s{_httprReferer = a})

instance FromJSON HTTPRequest where
        parseJSON
          = withObject "HTTPRequest"
              (\ o ->
                 HTTPRequest' <$>
                   (o .:? "status") <*> (o .:? "requestUrl") <*>
                     (o .:? "cacheFillBytes")
                     <*> (o .:? "remoteIp")
                     <*> (o .:? "requestSize")
                     <*> (o .:? "cacheValidatedWithOriginServer")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "cacheLookup")
                     <*> (o .:? "responseSize")
                     <*> (o .:? "requestMethod")
                     <*> (o .:? "cacheHit")
                     <*> (o .:? "referer"))

instance ToJSON HTTPRequest where
        toJSON HTTPRequest'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _httprStatus,
                  ("requestUrl" .=) <$> _httprRequestURL,
                  ("cacheFillBytes" .=) <$> _httprCacheFillBytes,
                  ("remoteIp" .=) <$> _httprRemoteIP,
                  ("requestSize" .=) <$> _httprRequestSize,
                  ("cacheValidatedWithOriginServer" .=) <$>
                    _httprCacheValidatedWithOriginServer,
                  ("userAgent" .=) <$> _httprUserAgent,
                  ("cacheLookup" .=) <$> _httprCacheLookup,
                  ("responseSize" .=) <$> _httprResponseSize,
                  ("requestMethod" .=) <$> _httprRequestMethod,
                  ("cacheHit" .=) <$> _httprCacheHit,
                  ("referer" .=) <$> _httprReferer])

-- | If partial_success is true, contains the project ids that had errors and
-- the associated errors.
--
-- /See:/ 'listLogEntriesResponseProjectIdErrors' smart constructor.
newtype ListLogEntriesResponseProjectIdErrors = ListLogEntriesResponseProjectIdErrors'
    { _llerpieAddtional :: HashMap Text Status
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLogEntriesResponseProjectIdErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llerpieAddtional'
listLogEntriesResponseProjectIdErrors
    :: HashMap Text Status -- ^ 'llerpieAddtional'
    -> ListLogEntriesResponseProjectIdErrors
listLogEntriesResponseProjectIdErrors pLlerpieAddtional_ =
    ListLogEntriesResponseProjectIdErrors'
    { _llerpieAddtional = _Coerce # pLlerpieAddtional_
    }

llerpieAddtional :: Lens' ListLogEntriesResponseProjectIdErrors (HashMap Text Status)
llerpieAddtional
  = lens _llerpieAddtional
      (\ s a -> s{_llerpieAddtional = a})
      . _Coerce

instance FromJSON
         ListLogEntriesResponseProjectIdErrors where
        parseJSON
          = withObject "ListLogEntriesResponseProjectIdErrors"
              (\ o ->
                 ListLogEntriesResponseProjectIdErrors' <$>
                   (parseJSONObject o))

instance ToJSON ListLogEntriesResponseProjectIdErrors
         where
        toJSON = toJSON . _llerpieAddtional

-- | Optional. User-defined \`key:value\` items that are added to the
-- \`labels\` field of each log entry in \`entries\`, except when a log
-- entry specifies its own \`key:value\` item with the same key. Example:
-- \`{ \"size\": \"large\", \"color\":\"red\" }\`
--
-- /See:/ 'writeLogEntriesRequestLabels' smart constructor.
newtype WriteLogEntriesRequestLabels = WriteLogEntriesRequestLabels'
    { _wlerlAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteLogEntriesRequestLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlerlAddtional'
writeLogEntriesRequestLabels
    :: HashMap Text Text -- ^ 'wlerlAddtional'
    -> WriteLogEntriesRequestLabels
writeLogEntriesRequestLabels pWlerlAddtional_ =
    WriteLogEntriesRequestLabels'
    { _wlerlAddtional = _Coerce # pWlerlAddtional_
    }

wlerlAddtional :: Lens' WriteLogEntriesRequestLabels (HashMap Text Text)
wlerlAddtional
  = lens _wlerlAddtional
      (\ s a -> s{_wlerlAddtional = a})
      . _Coerce

instance FromJSON WriteLogEntriesRequestLabels where
        parseJSON
          = withObject "WriteLogEntriesRequestLabels"
              (\ o ->
                 WriteLogEntriesRequestLabels' <$>
                   (parseJSONObject o))

instance ToJSON WriteLogEntriesRequestLabels where
        toJSON = toJSON . _wlerlAddtional

-- | An object representing a resource that can be used for monitoring,
-- logging, billing, or other purposes. Examples include virtual machine
-- instances, databases, and storage devices such as disks. The \`type\`
-- field identifies a MonitoredResourceDescriptor object that describes the
-- resource\'s schema. Information in the \`labels\` field identifies the
-- actual resource and its attributes according to the schema. For example,
-- a particular Compute Engine VM instance could be represented by the
-- following object, because the MonitoredResourceDescriptor for
-- \`\"gce_instance\"\` has labels \`\"instance_id\"\` and \`\"zone\"\`: {
-- \"type\": \"gce_instance\", \"labels\": { \"instance_id\":
-- \"my-instance\", \"zone\": \"us-central1-a\" }}
--
-- /See:/ 'monitoredResource' smart constructor.
data MonitoredResource = MonitoredResource'
    { _mrLabels :: !(Maybe MonitoredResourceLabels)
    , _mrType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonitoredResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrLabels'
--
-- * 'mrType'
monitoredResource
    :: MonitoredResource
monitoredResource =
    MonitoredResource'
    { _mrLabels = Nothing
    , _mrType = Nothing
    }

-- | Required. Values for all of the labels listed in the associated
-- monitored resource descriptor. For example, Cloud SQL databases use the
-- labels \`\"database_id\"\` and \`\"zone\"\`.
mrLabels :: Lens' MonitoredResource (Maybe MonitoredResourceLabels)
mrLabels = lens _mrLabels (\ s a -> s{_mrLabels = a})

-- | Required. The monitored resource type. This field must match the
-- \`type\` field of a MonitoredResourceDescriptor object. For example, the
-- type of a Cloud SQL database is \`\"cloudsql_database\"\`.
mrType :: Lens' MonitoredResource (Maybe Text)
mrType = lens _mrType (\ s a -> s{_mrType = a})

instance FromJSON MonitoredResource where
        parseJSON
          = withObject "MonitoredResource"
              (\ o ->
                 MonitoredResource' <$>
                   (o .:? "labels") <*> (o .:? "type"))

instance ToJSON MonitoredResource where
        toJSON MonitoredResource'{..}
          = object
              (catMaybes
                 [("labels" .=) <$> _mrLabels,
                  ("type" .=) <$> _mrType])

-- | Application log line emitted while processing a request.
--
-- /See:/ 'logLine' smart constructor.
data LogLine = LogLine'
    { _llTime           :: !(Maybe Text)
    , _llSeverity       :: !(Maybe Text)
    , _llLogMessage     :: !(Maybe Text)
    , _llSourceLocation :: !(Maybe SourceLocation)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    LogLine'
    { _llTime = Nothing
    , _llSeverity = Nothing
    , _llLogMessage = Nothing
    , _llSourceLocation = Nothing
    }

-- | Approximate time when this log entry was made.
llTime :: Lens' LogLine (Maybe Text)
llTime = lens _llTime (\ s a -> s{_llTime = a})

-- | Severity of this log entry.
llSeverity :: Lens' LogLine (Maybe Text)
llSeverity
  = lens _llSeverity (\ s a -> s{_llSeverity = a})

-- | App-provided log message.
llLogMessage :: Lens' LogLine (Maybe Text)
llLogMessage
  = lens _llLogMessage (\ s a -> s{_llLogMessage = a})

-- | Where in the source code this log message was written.
llSourceLocation :: Lens' LogLine (Maybe SourceLocation)
llSourceLocation
  = lens _llSourceLocation
      (\ s a -> s{_llSourceLocation = a})

instance FromJSON LogLine where
        parseJSON
          = withObject "LogLine"
              (\ o ->
                 LogLine' <$>
                   (o .:? "time") <*> (o .:? "severity") <*>
                     (o .:? "logMessage")
                     <*> (o .:? "sourceLocation"))

instance ToJSON LogLine where
        toJSON LogLine'{..}
          = object
              (catMaybes
                 [("time" .=) <$> _llTime,
                  ("severity" .=) <$> _llSeverity,
                  ("logMessage" .=) <$> _llLogMessage,
                  ("sourceLocation" .=) <$> _llSourceLocation])

-- | A description of a label.
--
-- /See:/ 'labelDescriptor' smart constructor.
data LabelDescriptor = LabelDescriptor'
    { _ldKey         :: !(Maybe Text)
    , _ldValueType   :: !(Maybe Text)
    , _ldDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LabelDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldKey'
--
-- * 'ldValueType'
--
-- * 'ldDescription'
labelDescriptor
    :: LabelDescriptor
labelDescriptor =
    LabelDescriptor'
    { _ldKey = Nothing
    , _ldValueType = Nothing
    , _ldDescription = Nothing
    }

-- | The label key.
ldKey :: Lens' LabelDescriptor (Maybe Text)
ldKey = lens _ldKey (\ s a -> s{_ldKey = a})

-- | The type of data that can be assigned to the label.
ldValueType :: Lens' LabelDescriptor (Maybe Text)
ldValueType
  = lens _ldValueType (\ s a -> s{_ldValueType = a})

-- | A human-readable description for the label.
ldDescription :: Lens' LabelDescriptor (Maybe Text)
ldDescription
  = lens _ldDescription
      (\ s a -> s{_ldDescription = a})

instance FromJSON LabelDescriptor where
        parseJSON
          = withObject "LabelDescriptor"
              (\ o ->
                 LabelDescriptor' <$>
                   (o .:? "key") <*> (o .:? "valueType") <*>
                     (o .:? "description"))

instance ToJSON LabelDescriptor where
        toJSON LabelDescriptor'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _ldKey,
                  ("valueType" .=) <$> _ldValueType,
                  ("description" .=) <$> _ldDescription])

-- | The parameters to \`ListLogEntries\`.
--
-- /See:/ 'listLogEntriesRequest' smart constructor.
data ListLogEntriesRequest = ListLogEntriesRequest'
    { _llerOrderBy        :: !(Maybe Text)
    , _llerPartialSuccess :: !(Maybe Bool)
    , _llerProjectIds     :: !(Maybe [Text])
    , _llerFilter         :: !(Maybe Text)
    , _llerPageToken      :: !(Maybe Text)
    , _llerPageSize       :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLogEntriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llerOrderBy'
--
-- * 'llerPartialSuccess'
--
-- * 'llerProjectIds'
--
-- * 'llerFilter'
--
-- * 'llerPageToken'
--
-- * 'llerPageSize'
listLogEntriesRequest
    :: ListLogEntriesRequest
listLogEntriesRequest =
    ListLogEntriesRequest'
    { _llerOrderBy = Nothing
    , _llerPartialSuccess = Nothing
    , _llerProjectIds = Nothing
    , _llerFilter = Nothing
    , _llerPageToken = Nothing
    , _llerPageSize = Nothing
    }

-- | Optional. How the results should be sorted. Presently, the only
-- permitted values are \`\"timestamp asc\"\` (default) and \`\"timestamp
-- desc\"\`. The first option returns entries in order of increasing values
-- of \`LogEntry.timestamp\` (oldest first), and the second option returns
-- entries in order of decreasing timestamps (newest first). Entries with
-- equal timestamps are returned in order of \`LogEntry.insertId\`.
llerOrderBy :: Lens' ListLogEntriesRequest (Maybe Text)
llerOrderBy
  = lens _llerOrderBy (\ s a -> s{_llerOrderBy = a})

-- | Optional. If true, read access to all projects is not required and
-- results will be returned for the subset of projects for which read
-- access is permitted (empty subset is permitted).
llerPartialSuccess :: Lens' ListLogEntriesRequest (Maybe Bool)
llerPartialSuccess
  = lens _llerPartialSuccess
      (\ s a -> s{_llerPartialSuccess = a})

-- | Required. One or more project IDs or project numbers from which to
-- retrieve log entries. Examples of a project ID: \`\"my-project-1A\"\`,
-- \`\"1234567890\"\`.
llerProjectIds :: Lens' ListLogEntriesRequest [Text]
llerProjectIds
  = lens _llerProjectIds
      (\ s a -> s{_llerProjectIds = a})
      . _Default
      . _Coerce

-- | Optional. An [advanced logs
-- filter](\/logging\/docs\/view\/advanced_filters). The filter is compared
-- against all log entries in the projects specified by \`projectIds\`.
-- Only entries that match the filter are retrieved. An empty filter
-- matches all log entries.
llerFilter :: Lens' ListLogEntriesRequest (Maybe Text)
llerFilter
  = lens _llerFilter (\ s a -> s{_llerFilter = a})

-- | Optional. If the \`pageToken\` parameter is supplied, then the next page
-- of results is retrieved. The \`pageToken\` parameter must be set to the
-- value of the \`nextPageToken\` from the previous response. The values of
-- \`projectIds\`, \`filter\`, and \`orderBy\` must be the same as in the
-- previous request.
llerPageToken :: Lens' ListLogEntriesRequest (Maybe Text)
llerPageToken
  = lens _llerPageToken
      (\ s a -> s{_llerPageToken = a})

-- | Optional. The maximum number of results to return from this request. You
-- must check for presence of \`nextPageToken\` to determine if additional
-- results are available, which you can retrieve by passing the
-- \`nextPageToken\` value as the \`pageToken\` parameter in the next
-- request.
llerPageSize :: Lens' ListLogEntriesRequest (Maybe Int32)
llerPageSize
  = lens _llerPageSize (\ s a -> s{_llerPageSize = a})
      . mapping _Coerce

instance FromJSON ListLogEntriesRequest where
        parseJSON
          = withObject "ListLogEntriesRequest"
              (\ o ->
                 ListLogEntriesRequest' <$>
                   (o .:? "orderBy") <*> (o .:? "partialSuccess") <*>
                     (o .:? "projectIds" .!= mempty)
                     <*> (o .:? "filter")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON ListLogEntriesRequest where
        toJSON ListLogEntriesRequest'{..}
          = object
              (catMaybes
                 [("orderBy" .=) <$> _llerOrderBy,
                  ("partialSuccess" .=) <$> _llerPartialSuccess,
                  ("projectIds" .=) <$> _llerProjectIds,
                  ("filter" .=) <$> _llerFilter,
                  ("pageToken" .=) <$> _llerPageToken,
                  ("pageSize" .=) <$> _llerPageSize])

-- | Additional information about a potentially long-running operation with
-- which a log entry is associated.
--
-- /See:/ 'logEntryOperation' smart constructor.
data LogEntryOperation = LogEntryOperation'
    { _leoFirst    :: !(Maybe Bool)
    , _leoProducer :: !(Maybe Text)
    , _leoLast     :: !(Maybe Bool)
    , _leoId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntryOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leoFirst'
--
-- * 'leoProducer'
--
-- * 'leoLast'
--
-- * 'leoId'
logEntryOperation
    :: LogEntryOperation
logEntryOperation =
    LogEntryOperation'
    { _leoFirst = Nothing
    , _leoProducer = Nothing
    , _leoLast = Nothing
    , _leoId = Nothing
    }

-- | Optional. Set this to True if this is the first log entry in the
-- operation.
leoFirst :: Lens' LogEntryOperation (Maybe Bool)
leoFirst = lens _leoFirst (\ s a -> s{_leoFirst = a})

-- | Required. An arbitrary producer identifier. The combination of \`id\`
-- and \`producer\` must be globally unique. Examples for \`producer\`:
-- \`\"MyDivision.MyBigCompany.com\"\`,
-- \"github.com\/MyProject\/MyApplication\"\`.
leoProducer :: Lens' LogEntryOperation (Maybe Text)
leoProducer
  = lens _leoProducer (\ s a -> s{_leoProducer = a})

-- | Optional. Set this to True if this is the last log entry in the
-- operation.
leoLast :: Lens' LogEntryOperation (Maybe Bool)
leoLast = lens _leoLast (\ s a -> s{_leoLast = a})

-- | Required. An arbitrary operation identifier. Log entries with the same
-- identifier are assumed to be part of the same operation.
leoId :: Lens' LogEntryOperation (Maybe Text)
leoId = lens _leoId (\ s a -> s{_leoId = a})

instance FromJSON LogEntryOperation where
        parseJSON
          = withObject "LogEntryOperation"
              (\ o ->
                 LogEntryOperation' <$>
                   (o .:? "first") <*> (o .:? "producer") <*>
                     (o .:? "last")
                     <*> (o .:? "id"))

instance ToJSON LogEntryOperation where
        toJSON LogEntryOperation'{..}
          = object
              (catMaybes
                 [("first" .=) <$> _leoFirst,
                  ("producer" .=) <$> _leoProducer,
                  ("last" .=) <$> _leoLast, ("id" .=) <$> _leoId])

-- | Describes a logs-based metric. The value of the metric is the number of
-- log entries that match a logs filter.
--
-- /See:/ 'logMetric' smart constructor.
data LogMetric = LogMetric'
    { _lmName        :: !(Maybe Text)
    , _lmFilter      :: !(Maybe Text)
    , _lmDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmName'
--
-- * 'lmFilter'
--
-- * 'lmDescription'
logMetric
    :: LogMetric
logMetric =
    LogMetric'
    { _lmName = Nothing
    , _lmFilter = Nothing
    , _lmDescription = Nothing
    }

-- | Required. The client-assigned metric identifier. Example:
-- \`\"severe_errors\"\`. Metric identifiers are limited to 1000 characters
-- and can include only the following characters: \`A-Z\`, \`a-z\`,
-- \`0-9\`, and the special characters \`_-.,+!*\',()%\/\\\`. The
-- forward-slash character (\`\/\`) denotes a hierarchy of name pieces, and
-- it cannot be the first character of the name.
lmName :: Lens' LogMetric (Maybe Text)
lmName = lens _lmName (\ s a -> s{_lmName = a})

-- | An [advanced logs filter](\/logging\/docs\/view\/advanced_filters).
-- Example: \`\"logName:syslog AND severity>=ERROR\"\`.
lmFilter :: Lens' LogMetric (Maybe Text)
lmFilter = lens _lmFilter (\ s a -> s{_lmFilter = a})

-- | A description of this metric, which is used in documentation.
lmDescription :: Lens' LogMetric (Maybe Text)
lmDescription
  = lens _lmDescription
      (\ s a -> s{_lmDescription = a})

instance FromJSON LogMetric where
        parseJSON
          = withObject "LogMetric"
              (\ o ->
                 LogMetric' <$>
                   (o .:? "name") <*> (o .:? "filter") <*>
                     (o .:? "description"))

instance ToJSON LogMetric where
        toJSON LogMetric'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lmName,
                  ("filter" .=) <$> _lmFilter,
                  ("description" .=) <$> _lmDescription])

-- | An individual entry in a log.
--
-- /See:/ 'logEntry' smart constructor.
data LogEntry = LogEntry'
    { _leOperation    :: !(Maybe LogEntryOperation)
    , _leSeverity     :: !(Maybe Text)
    , _leTextPayload  :: !(Maybe Text)
    , _leJSONPayload  :: !(Maybe LogEntryJSONPayload)
    , _leHTTPRequest  :: !(Maybe HTTPRequest)
    , _leResource     :: !(Maybe MonitoredResource)
    , _leInsertId     :: !(Maybe Text)
    , _leLabels       :: !(Maybe LogEntryLabels)
    , _leProtoPayload :: !(Maybe LogEntryProtoPayload)
    , _leLogName      :: !(Maybe Text)
    , _leTimestamp    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leOperation'
--
-- * 'leSeverity'
--
-- * 'leTextPayload'
--
-- * 'leJSONPayload'
--
-- * 'leHTTPRequest'
--
-- * 'leResource'
--
-- * 'leInsertId'
--
-- * 'leLabels'
--
-- * 'leProtoPayload'
--
-- * 'leLogName'
--
-- * 'leTimestamp'
logEntry
    :: LogEntry
logEntry =
    LogEntry'
    { _leOperation = Nothing
    , _leSeverity = Nothing
    , _leTextPayload = Nothing
    , _leJSONPayload = Nothing
    , _leHTTPRequest = Nothing
    , _leResource = Nothing
    , _leInsertId = Nothing
    , _leLabels = Nothing
    , _leProtoPayload = Nothing
    , _leLogName = Nothing
    , _leTimestamp = Nothing
    }

-- | Optional. Information about an operation associated with the log entry,
-- if applicable.
leOperation :: Lens' LogEntry (Maybe LogEntryOperation)
leOperation
  = lens _leOperation (\ s a -> s{_leOperation = a})

-- | Optional. The severity of the log entry. The default value is
-- \`LogSeverity.DEFAULT\`.
leSeverity :: Lens' LogEntry (Maybe Text)
leSeverity
  = lens _leSeverity (\ s a -> s{_leSeverity = a})

-- | The log entry payload, represented as a Unicode string (UTF-8).
leTextPayload :: Lens' LogEntry (Maybe Text)
leTextPayload
  = lens _leTextPayload
      (\ s a -> s{_leTextPayload = a})

-- | The log entry payload, represented as a structure that is expressed as a
-- JSON object.
leJSONPayload :: Lens' LogEntry (Maybe LogEntryJSONPayload)
leJSONPayload
  = lens _leJSONPayload
      (\ s a -> s{_leJSONPayload = a})

-- | Optional. Information about the HTTP request associated with this log
-- entry, if applicable.
leHTTPRequest :: Lens' LogEntry (Maybe HTTPRequest)
leHTTPRequest
  = lens _leHTTPRequest
      (\ s a -> s{_leHTTPRequest = a})

-- | Required. The monitored resource associated with this log entry.
-- Example: a log entry that reports a database error would be associated
-- with the monitored resource designating the particular database that
-- reported the error.
leResource :: Lens' LogEntry (Maybe MonitoredResource)
leResource
  = lens _leResource (\ s a -> s{_leResource = a})

-- | Optional. A unique ID for the log entry. If you provide this field, the
-- logging service considers other log entries in the same log with the
-- same ID as duplicates which can be removed. If omitted, Cloud Logging
-- will generate a unique ID for this log entry.
leInsertId :: Lens' LogEntry (Maybe Text)
leInsertId
  = lens _leInsertId (\ s a -> s{_leInsertId = a})

-- | Optional. A set of user-defined (key, value) data that provides
-- additional information about the log entry.
leLabels :: Lens' LogEntry (Maybe LogEntryLabels)
leLabels = lens _leLabels (\ s a -> s{_leLabels = a})

-- | The log entry payload, represented as a protocol buffer. You can only
-- use \`protoPayload\` values that belong to a set of approved types.
leProtoPayload :: Lens' LogEntry (Maybe LogEntryProtoPayload)
leProtoPayload
  = lens _leProtoPayload
      (\ s a -> s{_leProtoPayload = a})

-- | Required. The resource name of the log to which this log entry belongs.
-- The format of the name is \`\"projects\/ \/logs\/\"\`. Examples:
-- \`\"projects\/my-projectid\/logs\/syslog\"\`,
-- \`\"projects\/1234567890\/logs\/library.googleapis.com%2Fbook_log\"\`.
-- The log ID part of resource name must be less than 512 characters long
-- and can only include the following characters: upper and lower case
-- alphanumeric characters: [A-Za-z0-9]; and punctuation characters:
-- forward-slash, underscore, hyphen, and period. Forward-slash (\`\/\`)
-- characters in the log ID must be URL-encoded.
leLogName :: Lens' LogEntry (Maybe Text)
leLogName
  = lens _leLogName (\ s a -> s{_leLogName = a})

-- | Optional. The time the event described by the log entry occurred. If
-- omitted, Cloud Logging will use the time the log entry is written.
leTimestamp :: Lens' LogEntry (Maybe Text)
leTimestamp
  = lens _leTimestamp (\ s a -> s{_leTimestamp = a})

instance FromJSON LogEntry where
        parseJSON
          = withObject "LogEntry"
              (\ o ->
                 LogEntry' <$>
                   (o .:? "operation") <*> (o .:? "severity") <*>
                     (o .:? "textPayload")
                     <*> (o .:? "jsonPayload")
                     <*> (o .:? "httpRequest")
                     <*> (o .:? "resource")
                     <*> (o .:? "insertId")
                     <*> (o .:? "labels")
                     <*> (o .:? "protoPayload")
                     <*> (o .:? "logName")
                     <*> (o .:? "timestamp"))

instance ToJSON LogEntry where
        toJSON LogEntry'{..}
          = object
              (catMaybes
                 [("operation" .=) <$> _leOperation,
                  ("severity" .=) <$> _leSeverity,
                  ("textPayload" .=) <$> _leTextPayload,
                  ("jsonPayload" .=) <$> _leJSONPayload,
                  ("httpRequest" .=) <$> _leHTTPRequest,
                  ("resource" .=) <$> _leResource,
                  ("insertId" .=) <$> _leInsertId,
                  ("labels" .=) <$> _leLabels,
                  ("protoPayload" .=) <$> _leProtoPayload,
                  ("logName" .=) <$> _leLogName,
                  ("timestamp" .=) <$> _leTimestamp])

-- | Specifies a location in a source code file.
--
-- /See:/ 'sourceLocation' smart constructor.
data SourceLocation = SourceLocation'
    { _slLine         :: !(Maybe (Textual Int64))
    , _slFunctionName :: !(Maybe Text)
    , _slFile         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SourceLocation'
    { _slLine = Nothing
    , _slFunctionName = Nothing
    , _slFile = Nothing
    }

-- | Line within the source file.
slLine :: Lens' SourceLocation (Maybe Int64)
slLine
  = lens _slLine (\ s a -> s{_slLine = a}) .
      mapping _Coerce

-- | Human-readable name of the function or method being invoked, with
-- optional context such as the class or package name. This information is
-- used in contexts such as the logs viewer, where a file and line number
-- are less meaningful. The format can vary by language. For example:
-- \`qual.if.ied.Class.method\` (Java), \`dir\/package.func\` (Go),
-- \`function\` (Python).
slFunctionName :: Lens' SourceLocation (Maybe Text)
slFunctionName
  = lens _slFunctionName
      (\ s a -> s{_slFunctionName = a})

-- | Source file name. Depending on the runtime environment, this might be a
-- simple name or a fully-qualified name.
slFile :: Lens' SourceLocation (Maybe Text)
slFile = lens _slFile (\ s a -> s{_slFile = a})

instance FromJSON SourceLocation where
        parseJSON
          = withObject "SourceLocation"
              (\ o ->
                 SourceLocation' <$>
                   (o .:? "line") <*> (o .:? "functionName") <*>
                     (o .:? "file"))

instance ToJSON SourceLocation where
        toJSON SourceLocation'{..}
          = object
              (catMaybes
                 [("line" .=) <$> _slLine,
                  ("functionName" .=) <$> _slFunctionName,
                  ("file" .=) <$> _slFile])

-- | A reference to a particular snapshot of the source tree used to build
-- and deploy an application.
--
-- /See:/ 'sourceReference' smart constructor.
data SourceReference = SourceReference'
    { _srRepository :: !(Maybe Text)
    , _srRevisionId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SourceReference'
    { _srRepository = Nothing
    , _srRevisionId = Nothing
    }

-- | Optional. A URI string identifying the repository. Example:
-- \"https:\/\/github.com\/GoogleCloudPlatform\/kubernetes.git\"
srRepository :: Lens' SourceReference (Maybe Text)
srRepository
  = lens _srRepository (\ s a -> s{_srRepository = a})

-- | The canonical and persistent identifier of the deployed revision.
-- Example (git): \"0035781c50ec7aa23385dc841529ce8a4b70db1b\"
srRevisionId :: Lens' SourceReference (Maybe Text)
srRevisionId
  = lens _srRevisionId (\ s a -> s{_srRevisionId = a})

instance FromJSON SourceReference where
        parseJSON
          = withObject "SourceReference"
              (\ o ->
                 SourceReference' <$>
                   (o .:? "repository") <*> (o .:? "revisionId"))

instance ToJSON SourceReference where
        toJSON SourceReference'{..}
          = object
              (catMaybes
                 [("repository" .=) <$> _srRepository,
                  ("revisionId" .=) <$> _srRevisionId])

-- | The log entry payload, represented as a structure that is expressed as a
-- JSON object.
--
-- /See:/ 'logEntryJSONPayload' smart constructor.
newtype LogEntryJSONPayload = LogEntryJSONPayload'
    { _lejpAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntryJSONPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lejpAddtional'
logEntryJSONPayload
    :: HashMap Text JSONValue -- ^ 'lejpAddtional'
    -> LogEntryJSONPayload
logEntryJSONPayload pLejpAddtional_ =
    LogEntryJSONPayload'
    { _lejpAddtional = _Coerce # pLejpAddtional_
    }

-- | Properties of the object.
lejpAddtional :: Lens' LogEntryJSONPayload (HashMap Text JSONValue)
lejpAddtional
  = lens _lejpAddtional
      (\ s a -> s{_lejpAddtional = a})
      . _Coerce

instance FromJSON LogEntryJSONPayload where
        parseJSON
          = withObject "LogEntryJSONPayload"
              (\ o -> LogEntryJSONPayload' <$> (parseJSONObject o))

instance ToJSON LogEntryJSONPayload where
        toJSON = toJSON . _lejpAddtional
