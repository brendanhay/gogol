{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.StorageTransfer.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.StorageTransfer.Types.Product where

import Network.Google.Prelude
import Network.Google.StorageTransfer.Types.Sum

-- | A summary of errors by error code, plus a count and sample error log
-- entries.
--
-- /See:/ 'errorSummary' smart constructor.
data ErrorSummary =
  ErrorSummary'
    { _esErrorCount :: !(Maybe (Textual Int64))
    , _esErrorCode :: !(Maybe ErrorSummaryErrorCode)
    , _esErrorLogEntries :: !(Maybe [ErrorLogEntry])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ErrorSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esErrorCount'
--
-- * 'esErrorCode'
--
-- * 'esErrorLogEntries'
errorSummary
    :: ErrorSummary
errorSummary =
  ErrorSummary'
    { _esErrorCount = Nothing
    , _esErrorCode = Nothing
    , _esErrorLogEntries = Nothing
    }


-- | Required. Count of this type of error.
esErrorCount :: Lens' ErrorSummary (Maybe Int64)
esErrorCount
  = lens _esErrorCount (\ s a -> s{_esErrorCount = a})
      . mapping _Coerce

-- | Required.
esErrorCode :: Lens' ErrorSummary (Maybe ErrorSummaryErrorCode)
esErrorCode
  = lens _esErrorCode (\ s a -> s{_esErrorCode = a})

-- | Error samples. At most 5 error log entries are recorded for a given
-- error code for a single transfer operation.
esErrorLogEntries :: Lens' ErrorSummary [ErrorLogEntry]
esErrorLogEntries
  = lens _esErrorLogEntries
      (\ s a -> s{_esErrorLogEntries = a})
      . _Default
      . _Coerce

instance FromJSON ErrorSummary where
        parseJSON
          = withObject "ErrorSummary"
              (\ o ->
                 ErrorSummary' <$>
                   (o .:? "errorCount") <*> (o .:? "errorCode") <*>
                     (o .:? "errorLogEntries" .!= mempty))

instance ToJSON ErrorSummary where
        toJSON ErrorSummary'{..}
          = object
              (catMaybes
                 [("errorCount" .=) <$> _esErrorCount,
                  ("errorCode" .=) <$> _esErrorCode,
                  ("errorLogEntries" .=) <$> _esErrorLogEntries])

-- | Request passed to RunTransferJob.
--
-- /See:/ 'runTransferJobRequest' smart constructor.
newtype RunTransferJobRequest =
  RunTransferJobRequest'
    { _rtjrProjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunTransferJobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtjrProjectId'
runTransferJobRequest
    :: RunTransferJobRequest
runTransferJobRequest = RunTransferJobRequest' {_rtjrProjectId = Nothing}


-- | Required. The ID of the Google Cloud Platform Console project that owns
-- the transfer job.
rtjrProjectId :: Lens' RunTransferJobRequest (Maybe Text)
rtjrProjectId
  = lens _rtjrProjectId
      (\ s a -> s{_rtjrProjectId = a})

instance FromJSON RunTransferJobRequest where
        parseJSON
          = withObject "RunTransferJobRequest"
              (\ o ->
                 RunTransferJobRequest' <$> (o .:? "projectId"))

instance ToJSON RunTransferJobRequest where
        toJSON RunTransferJobRequest'{..}
          = object
              (catMaybes [("projectId" .=) <$> _rtjrProjectId])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
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

-- | Specification to configure notifications published to Pub\/Sub.
-- Notifications are published to the customer-provided topic using the
-- following \`PubsubMessage.attributes\`: * \`\"eventType\"\`: one of the
-- EventType values * \`\"payloadFormat\"\`: one of the PayloadFormat
-- values * \`\"projectId\"\`: the project_id of the \`TransferOperation\`
-- * \`\"transferJobName\"\`: the transfer_job_name of the
-- \`TransferOperation\` * \`\"transferOperationName\"\`: the name of the
-- \`TransferOperation\` The \`PubsubMessage.data\` contains a
-- TransferOperation resource formatted according to the specified
-- \`PayloadFormat\`.
--
-- /See:/ 'notificationConfig' smart constructor.
data NotificationConfig =
  NotificationConfig'
    { _ncEventTypes :: !(Maybe [NotificationConfigEventTypesItem])
    , _ncPubsubTopic :: !(Maybe Text)
    , _ncPayloadFormat :: !(Maybe NotificationConfigPayloadFormat)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncEventTypes'
--
-- * 'ncPubsubTopic'
--
-- * 'ncPayloadFormat'
notificationConfig
    :: NotificationConfig
notificationConfig =
  NotificationConfig'
    { _ncEventTypes = Nothing
    , _ncPubsubTopic = Nothing
    , _ncPayloadFormat = Nothing
    }


-- | Event types for which a notification is desired. If empty, send
-- notifications for all event types.
ncEventTypes :: Lens' NotificationConfig [NotificationConfigEventTypesItem]
ncEventTypes
  = lens _ncEventTypes (\ s a -> s{_ncEventTypes = a})
      . _Default
      . _Coerce

-- | Required. The \`Topic.name\` of the Pub\/Sub topic to which to publish
-- notifications. Must be of the format:
-- \`projects\/{project}\/topics\/{topic}\`. Not matching this format
-- results in an INVALID_ARGUMENT error.
ncPubsubTopic :: Lens' NotificationConfig (Maybe Text)
ncPubsubTopic
  = lens _ncPubsubTopic
      (\ s a -> s{_ncPubsubTopic = a})

-- | Required. The desired format of the notification message payloads.
ncPayloadFormat :: Lens' NotificationConfig (Maybe NotificationConfigPayloadFormat)
ncPayloadFormat
  = lens _ncPayloadFormat
      (\ s a -> s{_ncPayloadFormat = a})

instance FromJSON NotificationConfig where
        parseJSON
          = withObject "NotificationConfig"
              (\ o ->
                 NotificationConfig' <$>
                   (o .:? "eventTypes" .!= mempty) <*>
                     (o .:? "pubsubTopic")
                     <*> (o .:? "payloadFormat"))

instance ToJSON NotificationConfig where
        toJSON NotificationConfig'{..}
          = object
              (catMaybes
                 [("eventTypes" .=) <$> _ncEventTypes,
                  ("pubsubTopic" .=) <$> _ncPubsubTopic,
                  ("payloadFormat" .=) <$> _ncPayloadFormat])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'cancelOperationRequest' smart constructor.
data CancelOperationRequest =
  CancelOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
--
cancelOperationRequest
    :: CancelOperationRequest
cancelOperationRequest = CancelOperationRequest'


instance FromJSON CancelOperationRequest where
        parseJSON
          = withObject "CancelOperationRequest"
              (\ o -> pure CancelOperationRequest')

instance ToJSON CancelOperationRequest where
        toJSON = const emptyObject

-- | Transfers can be scheduled to recur or to run just once.
--
-- /See:/ 'schedule' smart constructor.
data Schedule =
  Schedule'
    { _sRepeatInterval :: !(Maybe GDuration)
    , _sScheduleEndDate :: !(Maybe Date)
    , _sScheduleStartDate :: !(Maybe Date)
    , _sEndTimeOfDay :: !(Maybe TimeOfDay')
    , _sStartTimeOfDay :: !(Maybe TimeOfDay')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Schedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sRepeatInterval'
--
-- * 'sScheduleEndDate'
--
-- * 'sScheduleStartDate'
--
-- * 'sEndTimeOfDay'
--
-- * 'sStartTimeOfDay'
schedule
    :: Schedule
schedule =
  Schedule'
    { _sRepeatInterval = Nothing
    , _sScheduleEndDate = Nothing
    , _sScheduleStartDate = Nothing
    , _sEndTimeOfDay = Nothing
    , _sStartTimeOfDay = Nothing
    }


-- | Interval between the start of each scheduled TransferOperation. If
-- unspecified, the default value is 24 hours. This value may not be less
-- than 1 hour.
sRepeatInterval :: Lens' Schedule (Maybe Scientific)
sRepeatInterval
  = lens _sRepeatInterval
      (\ s a -> s{_sRepeatInterval = a})
      . mapping _GDuration

-- | The last day a transfer runs. Date boundaries are determined relative to
-- UTC time. A job runs once per 24 hours within the following guidelines:
-- * If \`schedule_end_date\` and schedule_start_date are the same and in
-- the future relative to UTC, the transfer is executed only one time. * If
-- \`schedule_end_date\` is later than \`schedule_start_date\` and
-- \`schedule_end_date\` is in the future relative to UTC, the job runs
-- each day at start_time_of_day through \`schedule_end_date\`.
sScheduleEndDate :: Lens' Schedule (Maybe Date)
sScheduleEndDate
  = lens _sScheduleEndDate
      (\ s a -> s{_sScheduleEndDate = a})

-- | Required. The start date of a transfer. Date boundaries are determined
-- relative to UTC time. If \`schedule_start_date\` and start_time_of_day
-- are in the past relative to the job\'s creation time, the transfer
-- starts the day after you schedule the transfer request. **Note:** When
-- starting jobs at or near midnight UTC it is possible that a job starts
-- later than expected. For example, if you send an outbound request on
-- June 1 one millisecond prior to midnight UTC and the Storage Transfer
-- Service server receives the request on June 2, then it creates a
-- TransferJob with \`schedule_start_date\` set to June 2 and a
-- \`start_time_of_day\` set to midnight UTC. The first scheduled
-- TransferOperation takes place on June 3 at midnight UTC.
sScheduleStartDate :: Lens' Schedule (Maybe Date)
sScheduleStartDate
  = lens _sScheduleStartDate
      (\ s a -> s{_sScheduleStartDate = a})

-- | The time in UTC that no further transfer operations are scheduled.
-- Combined with schedule_end_date, \`end_time_of_day\` specifies the end
-- date and time for starting new transfer operations. This field must be
-- greater than or equal to the timestamp corresponding to the combintation
-- of schedule_start_date and start_time_of_day, and is subject to the
-- following: * If \`end_time_of_day\` is not set and \`schedule_end_date\`
-- is set, then a default value of \`23:59:59\` is used for
-- \`end_time_of_day\`. * If \`end_time_of_day\` is set and
-- \`schedule_end_date\` is not set, then INVALID_ARGUMENT is returned.
sEndTimeOfDay :: Lens' Schedule (Maybe TimeOfDay')
sEndTimeOfDay
  = lens _sEndTimeOfDay
      (\ s a -> s{_sEndTimeOfDay = a})

-- | The time in UTC that a transfer job is scheduled to run. Transfers may
-- start later than this time. If \`start_time_of_day\` is not specified: *
-- One-time transfers run immediately. * Recurring transfers run
-- immediately, and each day at midnight UTC, through schedule_end_date. If
-- \`start_time_of_day\` is specified: * One-time transfers run at the
-- specified time. * Recurring transfers run at the specified time each
-- day, through \`schedule_end_date\`.
sStartTimeOfDay :: Lens' Schedule (Maybe TimeOfDay')
sStartTimeOfDay
  = lens _sStartTimeOfDay
      (\ s a -> s{_sStartTimeOfDay = a})

instance FromJSON Schedule where
        parseJSON
          = withObject "Schedule"
              (\ o ->
                 Schedule' <$>
                   (o .:? "repeatInterval") <*>
                     (o .:? "scheduleEndDate")
                     <*> (o .:? "scheduleStartDate")
                     <*> (o .:? "endTimeOfDay")
                     <*> (o .:? "startTimeOfDay"))

instance ToJSON Schedule where
        toJSON Schedule'{..}
          = object
              (catMaybes
                 [("repeatInterval" .=) <$> _sRepeatInterval,
                  ("scheduleEndDate" .=) <$> _sScheduleEndDate,
                  ("scheduleStartDate" .=) <$> _sScheduleStartDate,
                  ("endTimeOfDay" .=) <$> _sEndTimeOfDay,
                  ("startTimeOfDay" .=) <$> _sStartTimeOfDay])

-- | Conditions that determine which objects are transferred. Applies only to
-- Cloud Data Sources such as S3, Azure, and Cloud Storage. The \"last
-- modification time\" refers to the time of the last change to the
-- object\'s content or metadata — specifically, this is the \`updated\`
-- property of Cloud Storage objects, the \`LastModified\` field of S3
-- objects, and the \`Last-Modified\` header of Azure blobs. This is not
-- supported for transfers involving PosixFilesystem.
--
-- /See:/ 'objectConditions' smart constructor.
data ObjectConditions =
  ObjectConditions'
    { _ocLastModifiedBefore :: !(Maybe DateTime')
    , _ocMinTimeElapsedSinceLastModification :: !(Maybe GDuration)
    , _ocIncludePrefixes :: !(Maybe [Text])
    , _ocMaxTimeElapsedSinceLastModification :: !(Maybe GDuration)
    , _ocExcludePrefixes :: !(Maybe [Text])
    , _ocLastModifiedSince :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectConditions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocLastModifiedBefore'
--
-- * 'ocMinTimeElapsedSinceLastModification'
--
-- * 'ocIncludePrefixes'
--
-- * 'ocMaxTimeElapsedSinceLastModification'
--
-- * 'ocExcludePrefixes'
--
-- * 'ocLastModifiedSince'
objectConditions
    :: ObjectConditions
objectConditions =
  ObjectConditions'
    { _ocLastModifiedBefore = Nothing
    , _ocMinTimeElapsedSinceLastModification = Nothing
    , _ocIncludePrefixes = Nothing
    , _ocMaxTimeElapsedSinceLastModification = Nothing
    , _ocExcludePrefixes = Nothing
    , _ocLastModifiedSince = Nothing
    }


-- | If specified, only objects with a \"last modification time\" before this
-- timestamp and objects that don\'t have a \"last modification time\" are
-- transferred.
ocLastModifiedBefore :: Lens' ObjectConditions (Maybe UTCTime)
ocLastModifiedBefore
  = lens _ocLastModifiedBefore
      (\ s a -> s{_ocLastModifiedBefore = a})
      . mapping _DateTime

-- | If specified, only objects with a \"last modification time\" before
-- \`NOW\` - \`min_time_elapsed_since_last_modification\` and objects that
-- don\'t have a \"last modification time\" are transferred. For each
-- TransferOperation started by this TransferJob, \`NOW\` refers to the
-- start_time of the \`TransferOperation\`.
ocMinTimeElapsedSinceLastModification :: Lens' ObjectConditions (Maybe Scientific)
ocMinTimeElapsedSinceLastModification
  = lens _ocMinTimeElapsedSinceLastModification
      (\ s a ->
         s{_ocMinTimeElapsedSinceLastModification = a})
      . mapping _GDuration

-- | If you specify \`include_prefixes\`, Storage Transfer Service uses the
-- items in the \`include_prefixes\` array to determine which objects to
-- include in a transfer. Objects must start with one of the matching
-- \`include_prefixes\` for inclusion in the transfer. If exclude_prefixes
-- is specified, objects must not start with any of the
-- \`exclude_prefixes\` specified for inclusion in the transfer. The
-- following are requirements of \`include_prefixes\`: * Each
-- include-prefix can contain any sequence of Unicode characters, to a max
-- length of 1024 bytes when UTF8-encoded, and must not contain Carriage
-- Return or Line Feed characters. Wildcard matching and regular expression
-- matching are not supported. * Each include-prefix must omit the leading
-- slash. For example, to include the object
-- \`s3:\/\/my-aws-bucket\/logs\/y=2015\/requests.gz\`, specify the
-- include-prefix as \`logs\/y=2015\/requests.gz\`. * None of the
-- include-prefix values can be empty, if specified. * Each include-prefix
-- must include a distinct portion of the object namespace. No
-- include-prefix may be a prefix of another include-prefix. The max size
-- of \`include_prefixes\` is 1000. For more information, see [Filtering
-- objects from
-- transfers](\/storage-transfer\/docs\/filtering-objects-from-transfers).
ocIncludePrefixes :: Lens' ObjectConditions [Text]
ocIncludePrefixes
  = lens _ocIncludePrefixes
      (\ s a -> s{_ocIncludePrefixes = a})
      . _Default
      . _Coerce

-- | If specified, only objects with a \"last modification time\" on or after
-- \`NOW\` - \`max_time_elapsed_since_last_modification\` and objects that
-- don\'t have a \"last modification time\" are transferred. For each
-- TransferOperation started by this TransferJob, \`NOW\` refers to the
-- start_time of the \`TransferOperation\`.
ocMaxTimeElapsedSinceLastModification :: Lens' ObjectConditions (Maybe Scientific)
ocMaxTimeElapsedSinceLastModification
  = lens _ocMaxTimeElapsedSinceLastModification
      (\ s a ->
         s{_ocMaxTimeElapsedSinceLastModification = a})
      . mapping _GDuration

-- | If you specify \`exclude_prefixes\`, Storage Transfer Service uses the
-- items in the \`exclude_prefixes\` array to determine which objects to
-- exclude from a transfer. Objects must not start with one of the matching
-- \`exclude_prefixes\` for inclusion in a transfer. The following are
-- requirements of \`exclude_prefixes\`: * Each exclude-prefix can contain
-- any sequence of Unicode characters, to a max length of 1024 bytes when
-- UTF8-encoded, and must not contain Carriage Return or Line Feed
-- characters. Wildcard matching and regular expression matching are not
-- supported. * Each exclude-prefix must omit the leading slash. For
-- example, to exclude the object
-- \`s3:\/\/my-aws-bucket\/logs\/y=2015\/requests.gz\`, specify the
-- exclude-prefix as \`logs\/y=2015\/requests.gz\`. * None of the
-- exclude-prefix values can be empty, if specified. * Each exclude-prefix
-- must exclude a distinct portion of the object namespace. No
-- exclude-prefix may be a prefix of another exclude-prefix. * If
-- include_prefixes is specified, then each exclude-prefix must start with
-- the value of a path explicitly included by \`include_prefixes\`. The max
-- size of \`exclude_prefixes\` is 1000. For more information, see
-- [Filtering objects from
-- transfers](\/storage-transfer\/docs\/filtering-objects-from-transfers).
ocExcludePrefixes :: Lens' ObjectConditions [Text]
ocExcludePrefixes
  = lens _ocExcludePrefixes
      (\ s a -> s{_ocExcludePrefixes = a})
      . _Default
      . _Coerce

-- | If specified, only objects with a \"last modification time\" on or after
-- this timestamp and objects that don\'t have a \"last modification time\"
-- are transferred. The \`last_modified_since\` and
-- \`last_modified_before\` fields can be used together for chunked data
-- processing. For example, consider a script that processes each day\'s
-- worth of data at a time. For that you\'d set each of the fields as
-- follows: * \`last_modified_since\` to the start of the day *
-- \`last_modified_before\` to the end of the day
ocLastModifiedSince :: Lens' ObjectConditions (Maybe UTCTime)
ocLastModifiedSince
  = lens _ocLastModifiedSince
      (\ s a -> s{_ocLastModifiedSince = a})
      . mapping _DateTime

instance FromJSON ObjectConditions where
        parseJSON
          = withObject "ObjectConditions"
              (\ o ->
                 ObjectConditions' <$>
                   (o .:? "lastModifiedBefore") <*>
                     (o .:? "minTimeElapsedSinceLastModification")
                     <*> (o .:? "includePrefixes" .!= mempty)
                     <*> (o .:? "maxTimeElapsedSinceLastModification")
                     <*> (o .:? "excludePrefixes" .!= mempty)
                     <*> (o .:? "lastModifiedSince"))

instance ToJSON ObjectConditions where
        toJSON ObjectConditions'{..}
          = object
              (catMaybes
                 [("lastModifiedBefore" .=) <$> _ocLastModifiedBefore,
                  ("minTimeElapsedSinceLastModification" .=) <$>
                    _ocMinTimeElapsedSinceLastModification,
                  ("includePrefixes" .=) <$> _ocIncludePrefixes,
                  ("maxTimeElapsedSinceLastModification" .=) <$>
                    _ocMaxTimeElapsedSinceLastModification,
                  ("excludePrefixes" .=) <$> _ocExcludePrefixes,
                  ("lastModifiedSince" .=) <$> _ocLastModifiedSince])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned unique name. The format of \`name\` is
-- \`transferOperations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Represents the transfer operation object. To request a TransferOperation
-- object, use transferOperations.get.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Request passed to PauseTransferOperation.
--
-- /See:/ 'pauseTransferOperationRequest' smart constructor.
data PauseTransferOperationRequest =
  PauseTransferOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PauseTransferOperationRequest' with the minimum fields required to make a request.
--
pauseTransferOperationRequest
    :: PauseTransferOperationRequest
pauseTransferOperationRequest = PauseTransferOperationRequest'


instance FromJSON PauseTransferOperationRequest where
        parseJSON
          = withObject "PauseTransferOperationRequest"
              (\ o -> pure PauseTransferOperationRequest')

instance ToJSON PauseTransferOperationRequest where
        toJSON = const emptyObject

-- | Google service account
--
-- /See:/ 'googleServiceAccount' smart constructor.
data GoogleServiceAccount =
  GoogleServiceAccount'
    { _gsaAccountEmail :: !(Maybe Text)
    , _gsaSubjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsaAccountEmail'
--
-- * 'gsaSubjectId'
googleServiceAccount
    :: GoogleServiceAccount
googleServiceAccount =
  GoogleServiceAccount' {_gsaAccountEmail = Nothing, _gsaSubjectId = Nothing}


-- | Email address of the service account.
gsaAccountEmail :: Lens' GoogleServiceAccount (Maybe Text)
gsaAccountEmail
  = lens _gsaAccountEmail
      (\ s a -> s{_gsaAccountEmail = a})

-- | Unique identifier for the service account.
gsaSubjectId :: Lens' GoogleServiceAccount (Maybe Text)
gsaSubjectId
  = lens _gsaSubjectId (\ s a -> s{_gsaSubjectId = a})

instance FromJSON GoogleServiceAccount where
        parseJSON
          = withObject "GoogleServiceAccount"
              (\ o ->
                 GoogleServiceAccount' <$>
                   (o .:? "accountEmail") <*> (o .:? "subjectId"))

instance ToJSON GoogleServiceAccount where
        toJSON GoogleServiceAccount'{..}
          = object
              (catMaybes
                 [("accountEmail" .=) <$> _gsaAccountEmail,
                  ("subjectId" .=) <$> _gsaSubjectId])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
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

-- | Azure credentials For information on our data retention policy for user
-- credentials, see [User
-- credentials](\/storage-transfer\/docs\/data-retention#user-credentials).
--
-- /See:/ 'azureCredentials' smart constructor.
newtype AzureCredentials =
  AzureCredentials'
    { _acSasToken :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AzureCredentials' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acSasToken'
azureCredentials
    :: AzureCredentials
azureCredentials = AzureCredentials' {_acSasToken = Nothing}


-- | Required. Azure shared access signature (SAS). *Note:*Copying data from
-- Azure Data Lake Storage (ADLS) Gen 2 is in
-- [Preview](\/products\/#product-launch-stages). During Preview, if you
-- are copying data from ADLS Gen 2, you must use an account SAS. For more
-- information about SAS, see [Grant limited access to Azure Storage
-- resources using shared access signatures
-- (SAS)](https:\/\/docs.microsoft.com\/en-us\/azure\/storage\/common\/storage-sas-overview).
acSasToken :: Lens' AzureCredentials (Maybe Text)
acSasToken
  = lens _acSasToken (\ s a -> s{_acSasToken = a})

instance FromJSON AzureCredentials where
        parseJSON
          = withObject "AzureCredentials"
              (\ o -> AzureCredentials' <$> (o .:? "sasToken"))

instance ToJSON AzureCredentials where
        toJSON AzureCredentials'{..}
          = object
              (catMaybes [("sasToken" .=) <$> _acSasToken])

-- | Represents a whole or partial calendar date, such as a birthday. The
-- time of day and time zone are either specified elsewhere or are
-- insignificant. The date is relative to the Gregorian Calendar. This can
-- represent one of the following: * A full date, with non-zero year,
-- month, and day values * A month and day value, with a zero year, such as
-- an anniversary * A year on its own, with zero month and day values * A
-- year and month value, with a zero day, such as a credit card expiration
-- date Related types are google.type.TimeOfDay and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay :: !(Maybe (Textual Int32))
    , _dYear :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | Request passed to UpdateTransferJob.
--
-- /See:/ 'updateTransferJobRequest' smart constructor.
data UpdateTransferJobRequest =
  UpdateTransferJobRequest'
    { _utjrTransferJob :: !(Maybe TransferJob)
    , _utjrProjectId :: !(Maybe Text)
    , _utjrUpdateTransferJobFieldMask :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateTransferJobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utjrTransferJob'
--
-- * 'utjrProjectId'
--
-- * 'utjrUpdateTransferJobFieldMask'
updateTransferJobRequest
    :: UpdateTransferJobRequest
updateTransferJobRequest =
  UpdateTransferJobRequest'
    { _utjrTransferJob = Nothing
    , _utjrProjectId = Nothing
    , _utjrUpdateTransferJobFieldMask = Nothing
    }


-- | Required. The job to update. \`transferJob\` is expected to specify only
-- four fields: description, transfer_spec, notification_config, and
-- status. An \`UpdateTransferJobRequest\` that specifies other fields are
-- rejected with the error INVALID_ARGUMENT. Updating a job status to
-- DELETED requires \`storagetransfer.jobs.delete\` permissions.
utjrTransferJob :: Lens' UpdateTransferJobRequest (Maybe TransferJob)
utjrTransferJob
  = lens _utjrTransferJob
      (\ s a -> s{_utjrTransferJob = a})

-- | Required. The ID of the Google Cloud Platform Console project that owns
-- the job.
utjrProjectId :: Lens' UpdateTransferJobRequest (Maybe Text)
utjrProjectId
  = lens _utjrProjectId
      (\ s a -> s{_utjrProjectId = a})

-- | The field mask of the fields in \`transferJob\` that are to be updated
-- in this request. Fields in \`transferJob\` that can be updated are:
-- description, transfer_spec, notification_config, and status. To update
-- the \`transfer_spec\` of the job, a complete transfer specification must
-- be provided. An incomplete specification missing any required fields is
-- rejected with the error INVALID_ARGUMENT.
utjrUpdateTransferJobFieldMask :: Lens' UpdateTransferJobRequest (Maybe GFieldMask)
utjrUpdateTransferJobFieldMask
  = lens _utjrUpdateTransferJobFieldMask
      (\ s a -> s{_utjrUpdateTransferJobFieldMask = a})

instance FromJSON UpdateTransferJobRequest where
        parseJSON
          = withObject "UpdateTransferJobRequest"
              (\ o ->
                 UpdateTransferJobRequest' <$>
                   (o .:? "transferJob") <*> (o .:? "projectId") <*>
                     (o .:? "updateTransferJobFieldMask"))

instance ToJSON UpdateTransferJobRequest where
        toJSON UpdateTransferJobRequest'{..}
          = object
              (catMaybes
                 [("transferJob" .=) <$> _utjrTransferJob,
                  ("projectId" .=) <$> _utjrProjectId,
                  ("updateTransferJobFieldMask" .=) <$>
                    _utjrUpdateTransferJobFieldMask])

-- | A collection of counters that report the progress of a transfer
-- operation.
--
-- /See:/ 'transferCounters' smart constructor.
data TransferCounters =
  TransferCounters'
    { _tcBytesFoundOnlyFromSink :: !(Maybe (Textual Int64))
    , _tcBytesDeletedFromSink :: !(Maybe (Textual Int64))
    , _tcObjectsDeletedFromSource :: !(Maybe (Textual Int64))
    , _tcObjectsFoundFromSource :: !(Maybe (Textual Int64))
    , _tcBytesFailedToDeleteFromSink :: !(Maybe (Textual Int64))
    , _tcBytesFromSourceFailed :: !(Maybe (Textual Int64))
    , _tcBytesCopiedToSink :: !(Maybe (Textual Int64))
    , _tcBytesFoundFromSource :: !(Maybe (Textual Int64))
    , _tcBytesDeletedFromSource :: !(Maybe (Textual Int64))
    , _tcObjectsDeletedFromSink :: !(Maybe (Textual Int64))
    , _tcObjectsFoundOnlyFromSink :: !(Maybe (Textual Int64))
    , _tcBytesFromSourceSkippedBySync :: !(Maybe (Textual Int64))
    , _tcObjectsCopiedToSink :: !(Maybe (Textual Int64))
    , _tcObjectsFromSourceFailed :: !(Maybe (Textual Int64))
    , _tcObjectsFailedToDeleteFromSink :: !(Maybe (Textual Int64))
    , _tcObjectsFromSourceSkippedBySync :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferCounters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcBytesFoundOnlyFromSink'
--
-- * 'tcBytesDeletedFromSink'
--
-- * 'tcObjectsDeletedFromSource'
--
-- * 'tcObjectsFoundFromSource'
--
-- * 'tcBytesFailedToDeleteFromSink'
--
-- * 'tcBytesFromSourceFailed'
--
-- * 'tcBytesCopiedToSink'
--
-- * 'tcBytesFoundFromSource'
--
-- * 'tcBytesDeletedFromSource'
--
-- * 'tcObjectsDeletedFromSink'
--
-- * 'tcObjectsFoundOnlyFromSink'
--
-- * 'tcBytesFromSourceSkippedBySync'
--
-- * 'tcObjectsCopiedToSink'
--
-- * 'tcObjectsFromSourceFailed'
--
-- * 'tcObjectsFailedToDeleteFromSink'
--
-- * 'tcObjectsFromSourceSkippedBySync'
transferCounters
    :: TransferCounters
transferCounters =
  TransferCounters'
    { _tcBytesFoundOnlyFromSink = Nothing
    , _tcBytesDeletedFromSink = Nothing
    , _tcObjectsDeletedFromSource = Nothing
    , _tcObjectsFoundFromSource = Nothing
    , _tcBytesFailedToDeleteFromSink = Nothing
    , _tcBytesFromSourceFailed = Nothing
    , _tcBytesCopiedToSink = Nothing
    , _tcBytesFoundFromSource = Nothing
    , _tcBytesDeletedFromSource = Nothing
    , _tcObjectsDeletedFromSink = Nothing
    , _tcObjectsFoundOnlyFromSink = Nothing
    , _tcBytesFromSourceSkippedBySync = Nothing
    , _tcObjectsCopiedToSink = Nothing
    , _tcObjectsFromSourceFailed = Nothing
    , _tcObjectsFailedToDeleteFromSink = Nothing
    , _tcObjectsFromSourceSkippedBySync = Nothing
    }


-- | Bytes found only in the data sink that are scheduled to be deleted.
tcBytesFoundOnlyFromSink :: Lens' TransferCounters (Maybe Int64)
tcBytesFoundOnlyFromSink
  = lens _tcBytesFoundOnlyFromSink
      (\ s a -> s{_tcBytesFoundOnlyFromSink = a})
      . mapping _Coerce

-- | Bytes that are deleted from the data sink.
tcBytesDeletedFromSink :: Lens' TransferCounters (Maybe Int64)
tcBytesDeletedFromSink
  = lens _tcBytesDeletedFromSink
      (\ s a -> s{_tcBytesDeletedFromSink = a})
      . mapping _Coerce

-- | Objects that are deleted from the data source.
tcObjectsDeletedFromSource :: Lens' TransferCounters (Maybe Int64)
tcObjectsDeletedFromSource
  = lens _tcObjectsDeletedFromSource
      (\ s a -> s{_tcObjectsDeletedFromSource = a})
      . mapping _Coerce

-- | Objects found in the data source that are scheduled to be transferred,
-- excluding any that are filtered based on object conditions or skipped
-- due to sync.
tcObjectsFoundFromSource :: Lens' TransferCounters (Maybe Int64)
tcObjectsFoundFromSource
  = lens _tcObjectsFoundFromSource
      (\ s a -> s{_tcObjectsFoundFromSource = a})
      . mapping _Coerce

-- | Bytes that failed to be deleted from the data sink.
tcBytesFailedToDeleteFromSink :: Lens' TransferCounters (Maybe Int64)
tcBytesFailedToDeleteFromSink
  = lens _tcBytesFailedToDeleteFromSink
      (\ s a -> s{_tcBytesFailedToDeleteFromSink = a})
      . mapping _Coerce

-- | Bytes in the data source that failed to be transferred or that failed to
-- be deleted after being transferred.
tcBytesFromSourceFailed :: Lens' TransferCounters (Maybe Int64)
tcBytesFromSourceFailed
  = lens _tcBytesFromSourceFailed
      (\ s a -> s{_tcBytesFromSourceFailed = a})
      . mapping _Coerce

-- | Bytes that are copied to the data sink.
tcBytesCopiedToSink :: Lens' TransferCounters (Maybe Int64)
tcBytesCopiedToSink
  = lens _tcBytesCopiedToSink
      (\ s a -> s{_tcBytesCopiedToSink = a})
      . mapping _Coerce

-- | Bytes found in the data source that are scheduled to be transferred,
-- excluding any that are filtered based on object conditions or skipped
-- due to sync.
tcBytesFoundFromSource :: Lens' TransferCounters (Maybe Int64)
tcBytesFoundFromSource
  = lens _tcBytesFoundFromSource
      (\ s a -> s{_tcBytesFoundFromSource = a})
      . mapping _Coerce

-- | Bytes that are deleted from the data source.
tcBytesDeletedFromSource :: Lens' TransferCounters (Maybe Int64)
tcBytesDeletedFromSource
  = lens _tcBytesDeletedFromSource
      (\ s a -> s{_tcBytesDeletedFromSource = a})
      . mapping _Coerce

-- | Objects that are deleted from the data sink.
tcObjectsDeletedFromSink :: Lens' TransferCounters (Maybe Int64)
tcObjectsDeletedFromSink
  = lens _tcObjectsDeletedFromSink
      (\ s a -> s{_tcObjectsDeletedFromSink = a})
      . mapping _Coerce

-- | Objects found only in the data sink that are scheduled to be deleted.
tcObjectsFoundOnlyFromSink :: Lens' TransferCounters (Maybe Int64)
tcObjectsFoundOnlyFromSink
  = lens _tcObjectsFoundOnlyFromSink
      (\ s a -> s{_tcObjectsFoundOnlyFromSink = a})
      . mapping _Coerce

-- | Bytes in the data source that are not transferred because they already
-- exist in the data sink.
tcBytesFromSourceSkippedBySync :: Lens' TransferCounters (Maybe Int64)
tcBytesFromSourceSkippedBySync
  = lens _tcBytesFromSourceSkippedBySync
      (\ s a -> s{_tcBytesFromSourceSkippedBySync = a})
      . mapping _Coerce

-- | Objects that are copied to the data sink.
tcObjectsCopiedToSink :: Lens' TransferCounters (Maybe Int64)
tcObjectsCopiedToSink
  = lens _tcObjectsCopiedToSink
      (\ s a -> s{_tcObjectsCopiedToSink = a})
      . mapping _Coerce

-- | Objects in the data source that failed to be transferred or that failed
-- to be deleted after being transferred.
tcObjectsFromSourceFailed :: Lens' TransferCounters (Maybe Int64)
tcObjectsFromSourceFailed
  = lens _tcObjectsFromSourceFailed
      (\ s a -> s{_tcObjectsFromSourceFailed = a})
      . mapping _Coerce

-- | Objects that failed to be deleted from the data sink.
tcObjectsFailedToDeleteFromSink :: Lens' TransferCounters (Maybe Int64)
tcObjectsFailedToDeleteFromSink
  = lens _tcObjectsFailedToDeleteFromSink
      (\ s a -> s{_tcObjectsFailedToDeleteFromSink = a})
      . mapping _Coerce

-- | Objects in the data source that are not transferred because they already
-- exist in the data sink.
tcObjectsFromSourceSkippedBySync :: Lens' TransferCounters (Maybe Int64)
tcObjectsFromSourceSkippedBySync
  = lens _tcObjectsFromSourceSkippedBySync
      (\ s a -> s{_tcObjectsFromSourceSkippedBySync = a})
      . mapping _Coerce

instance FromJSON TransferCounters where
        parseJSON
          = withObject "TransferCounters"
              (\ o ->
                 TransferCounters' <$>
                   (o .:? "bytesFoundOnlyFromSink") <*>
                     (o .:? "bytesDeletedFromSink")
                     <*> (o .:? "objectsDeletedFromSource")
                     <*> (o .:? "objectsFoundFromSource")
                     <*> (o .:? "bytesFailedToDeleteFromSink")
                     <*> (o .:? "bytesFromSourceFailed")
                     <*> (o .:? "bytesCopiedToSink")
                     <*> (o .:? "bytesFoundFromSource")
                     <*> (o .:? "bytesDeletedFromSource")
                     <*> (o .:? "objectsDeletedFromSink")
                     <*> (o .:? "objectsFoundOnlyFromSink")
                     <*> (o .:? "bytesFromSourceSkippedBySync")
                     <*> (o .:? "objectsCopiedToSink")
                     <*> (o .:? "objectsFromSourceFailed")
                     <*> (o .:? "objectsFailedToDeleteFromSink")
                     <*> (o .:? "objectsFromSourceSkippedBySync"))

instance ToJSON TransferCounters where
        toJSON TransferCounters'{..}
          = object
              (catMaybes
                 [("bytesFoundOnlyFromSink" .=) <$>
                    _tcBytesFoundOnlyFromSink,
                  ("bytesDeletedFromSink" .=) <$>
                    _tcBytesDeletedFromSink,
                  ("objectsDeletedFromSource" .=) <$>
                    _tcObjectsDeletedFromSource,
                  ("objectsFoundFromSource" .=) <$>
                    _tcObjectsFoundFromSource,
                  ("bytesFailedToDeleteFromSink" .=) <$>
                    _tcBytesFailedToDeleteFromSink,
                  ("bytesFromSourceFailed" .=) <$>
                    _tcBytesFromSourceFailed,
                  ("bytesCopiedToSink" .=) <$> _tcBytesCopiedToSink,
                  ("bytesFoundFromSource" .=) <$>
                    _tcBytesFoundFromSource,
                  ("bytesDeletedFromSource" .=) <$>
                    _tcBytesDeletedFromSource,
                  ("objectsDeletedFromSink" .=) <$>
                    _tcObjectsDeletedFromSink,
                  ("objectsFoundOnlyFromSink" .=) <$>
                    _tcObjectsFoundOnlyFromSink,
                  ("bytesFromSourceSkippedBySync" .=) <$>
                    _tcBytesFromSourceSkippedBySync,
                  ("objectsCopiedToSink" .=) <$>
                    _tcObjectsCopiedToSink,
                  ("objectsFromSourceFailed" .=) <$>
                    _tcObjectsFromSourceFailed,
                  ("objectsFailedToDeleteFromSink" .=) <$>
                    _tcObjectsFailedToDeleteFromSink,
                  ("objectsFromSourceSkippedBySync" .=) <$>
                    _tcObjectsFromSourceSkippedBySync])

-- | This resource represents the configuration of a transfer job that runs
-- periodically.
--
-- /See:/ 'transferJob' smart constructor.
data TransferJob =
  TransferJob'
    { _tjCreationTime :: !(Maybe DateTime')
    , _tjStatus :: !(Maybe TransferJobStatus)
    , _tjNotificationConfig :: !(Maybe NotificationConfig)
    , _tjSchedule :: !(Maybe Schedule)
    , _tjDeletionTime :: !(Maybe DateTime')
    , _tjName :: !(Maybe Text)
    , _tjProjectId :: !(Maybe Text)
    , _tjTransferSpec :: !(Maybe TransferSpec)
    , _tjDescription :: !(Maybe Text)
    , _tjLastModificationTime :: !(Maybe DateTime')
    , _tjLatestOperationName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjCreationTime'
--
-- * 'tjStatus'
--
-- * 'tjNotificationConfig'
--
-- * 'tjSchedule'
--
-- * 'tjDeletionTime'
--
-- * 'tjName'
--
-- * 'tjProjectId'
--
-- * 'tjTransferSpec'
--
-- * 'tjDescription'
--
-- * 'tjLastModificationTime'
--
-- * 'tjLatestOperationName'
transferJob
    :: TransferJob
transferJob =
  TransferJob'
    { _tjCreationTime = Nothing
    , _tjStatus = Nothing
    , _tjNotificationConfig = Nothing
    , _tjSchedule = Nothing
    , _tjDeletionTime = Nothing
    , _tjName = Nothing
    , _tjProjectId = Nothing
    , _tjTransferSpec = Nothing
    , _tjDescription = Nothing
    , _tjLastModificationTime = Nothing
    , _tjLatestOperationName = Nothing
    }


-- | Output only. The time that the transfer job was created.
tjCreationTime :: Lens' TransferJob (Maybe UTCTime)
tjCreationTime
  = lens _tjCreationTime
      (\ s a -> s{_tjCreationTime = a})
      . mapping _DateTime

-- | Status of the job. This value MUST be specified for
-- \`CreateTransferJobRequests\`. **Note:** The effect of the new job
-- status takes place during a subsequent job run. For example, if you
-- change the job status from ENABLED to DISABLED, and an operation spawned
-- by the transfer is running, the status change would not affect the
-- current operation.
tjStatus :: Lens' TransferJob (Maybe TransferJobStatus)
tjStatus = lens _tjStatus (\ s a -> s{_tjStatus = a})

-- | Notification configuration. This is not supported for transfers
-- involving PosixFilesystem.
tjNotificationConfig :: Lens' TransferJob (Maybe NotificationConfig)
tjNotificationConfig
  = lens _tjNotificationConfig
      (\ s a -> s{_tjNotificationConfig = a})

-- | Specifies schedule for the transfer job. This is an optional field. When
-- the field is not set, the job never executes a transfer, unless you
-- invoke RunTransferJob or update the job to have a non-empty schedule.
tjSchedule :: Lens' TransferJob (Maybe Schedule)
tjSchedule
  = lens _tjSchedule (\ s a -> s{_tjSchedule = a})

-- | Output only. The time that the transfer job was deleted.
tjDeletionTime :: Lens' TransferJob (Maybe UTCTime)
tjDeletionTime
  = lens _tjDeletionTime
      (\ s a -> s{_tjDeletionTime = a})
      . mapping _DateTime

-- | A unique name (within the transfer project) assigned when the job is
-- created. If this field is empty in a CreateTransferJobRequest, Storage
-- Transfer Service assigns a unique name. Otherwise, the specified name is
-- used as the unique name for this job. If the specified name is in use by
-- a job, the creation request fails with an ALREADY_EXISTS error. This
-- name must start with \`\"transferJobs\/\"\` prefix and end with a letter
-- or a number, and should be no more than 128 characters. For transfers
-- involving PosixFilesystem, this name must start with
-- \'transferJobs\/OPI\' specifically. For all other transfer types, this
-- name must not start with \'transferJobs\/OPI\'. \'transferJobs\/OPI\' is
-- a reserved prefix for PosixFilesystem transfers. Non-PosixFilesystem
-- example: \`\"transferJobs\/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$\"\`
-- PosixFilesystem example:
-- \`\"transferJobs\/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$\"\` Applications must
-- not rely on the enforcement of naming requirements involving OPI.
-- Invalid job names fail with an INVALID_ARGUMENT error.
tjName :: Lens' TransferJob (Maybe Text)
tjName = lens _tjName (\ s a -> s{_tjName = a})

-- | The ID of the Google Cloud Platform Project that owns the job.
tjProjectId :: Lens' TransferJob (Maybe Text)
tjProjectId
  = lens _tjProjectId (\ s a -> s{_tjProjectId = a})

-- | Transfer specification.
tjTransferSpec :: Lens' TransferJob (Maybe TransferSpec)
tjTransferSpec
  = lens _tjTransferSpec
      (\ s a -> s{_tjTransferSpec = a})

-- | A description provided by the user for the job. Its max length is 1024
-- bytes when Unicode-encoded.
tjDescription :: Lens' TransferJob (Maybe Text)
tjDescription
  = lens _tjDescription
      (\ s a -> s{_tjDescription = a})

-- | Output only. The time that the transfer job was last modified.
tjLastModificationTime :: Lens' TransferJob (Maybe UTCTime)
tjLastModificationTime
  = lens _tjLastModificationTime
      (\ s a -> s{_tjLastModificationTime = a})
      . mapping _DateTime

-- | The name of the most recently started TransferOperation of this
-- JobConfig. Present if a TransferOperation has been created for this
-- JobConfig.
tjLatestOperationName :: Lens' TransferJob (Maybe Text)
tjLatestOperationName
  = lens _tjLatestOperationName
      (\ s a -> s{_tjLatestOperationName = a})

instance FromJSON TransferJob where
        parseJSON
          = withObject "TransferJob"
              (\ o ->
                 TransferJob' <$>
                   (o .:? "creationTime") <*> (o .:? "status") <*>
                     (o .:? "notificationConfig")
                     <*> (o .:? "schedule")
                     <*> (o .:? "deletionTime")
                     <*> (o .:? "name")
                     <*> (o .:? "projectId")
                     <*> (o .:? "transferSpec")
                     <*> (o .:? "description")
                     <*> (o .:? "lastModificationTime")
                     <*> (o .:? "latestOperationName"))

instance ToJSON TransferJob where
        toJSON TransferJob'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _tjCreationTime,
                  ("status" .=) <$> _tjStatus,
                  ("notificationConfig" .=) <$> _tjNotificationConfig,
                  ("schedule" .=) <$> _tjSchedule,
                  ("deletionTime" .=) <$> _tjDeletionTime,
                  ("name" .=) <$> _tjName,
                  ("projectId" .=) <$> _tjProjectId,
                  ("transferSpec" .=) <$> _tjTransferSpec,
                  ("description" .=) <$> _tjDescription,
                  ("lastModificationTime" .=) <$>
                    _tjLastModificationTime,
                  ("latestOperationName" .=) <$>
                    _tjLatestOperationName])

-- | In a GcsData resource, an object\'s name is the Cloud Storage object\'s
-- name and its \"last modification time\" refers to the object\'s
-- \`updated\` property of Cloud Storage objects, which changes when the
-- content or the metadata of the object is updated.
--
-- /See:/ 'gcsData' smart constructor.
data GcsData =
  GcsData'
    { _gdPath :: !(Maybe Text)
    , _gdBucketName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcsData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdPath'
--
-- * 'gdBucketName'
gcsData
    :: GcsData
gcsData = GcsData' {_gdPath = Nothing, _gdBucketName = Nothing}


-- | Root path to transfer objects. Must be an empty string or full path name
-- that ends with a \'\/\'. This field is treated as an object prefix. As
-- such, it should generally not begin with a \'\/\'. The root path value
-- must meet [Object Name
-- Requirements](\/storage\/docs\/naming#objectnames).
gdPath :: Lens' GcsData (Maybe Text)
gdPath = lens _gdPath (\ s a -> s{_gdPath = a})

-- | Required. Cloud Storage bucket name. Must meet [Bucket Name
-- Requirements](\/storage\/docs\/naming#requirements).
gdBucketName :: Lens' GcsData (Maybe Text)
gdBucketName
  = lens _gdBucketName (\ s a -> s{_gdBucketName = a})

instance FromJSON GcsData where
        parseJSON
          = withObject "GcsData"
              (\ o ->
                 GcsData' <$> (o .:? "path") <*> (o .:? "bucketName"))

instance ToJSON GcsData where
        toJSON GcsData'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _gdPath,
                  ("bucketName" .=) <$> _gdBucketName])

-- | An AwsS3Data resource can be a data source, but not a data sink. In an
-- AwsS3Data resource, an object\'s name is the S3 object\'s key name.
--
-- /See:/ 'awsS3Data' smart constructor.
data AwsS3Data =
  AwsS3Data'
    { _asdPath :: !(Maybe Text)
    , _asdBucketName :: !(Maybe Text)
    , _asdAwsAccessKey :: !(Maybe AwsAccessKey)
    , _asdRoleArn :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AwsS3Data' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdPath'
--
-- * 'asdBucketName'
--
-- * 'asdAwsAccessKey'
--
-- * 'asdRoleArn'
awsS3Data
    :: AwsS3Data
awsS3Data =
  AwsS3Data'
    { _asdPath = Nothing
    , _asdBucketName = Nothing
    , _asdAwsAccessKey = Nothing
    , _asdRoleArn = Nothing
    }


-- | Root path to transfer objects. Must be an empty string or full path name
-- that ends with a \'\/\'. This field is treated as an object prefix. As
-- such, it should generally not begin with a \'\/\'.
asdPath :: Lens' AwsS3Data (Maybe Text)
asdPath = lens _asdPath (\ s a -> s{_asdPath = a})

-- | Required. S3 Bucket name (see [Creating a
-- bucket](https:\/\/docs.aws.amazon.com\/AmazonS3\/latest\/dev\/create-bucket-get-location-example.html)).
asdBucketName :: Lens' AwsS3Data (Maybe Text)
asdBucketName
  = lens _asdBucketName
      (\ s a -> s{_asdBucketName = a})

-- | Input only. AWS access key used to sign the API requests to the AWS S3
-- bucket. Permissions on the bucket must be granted to the access ID of
-- the AWS access key. This field is required. For information on our data
-- retention policy for user credentials, see [User
-- credentials](\/storage-transfer\/docs\/data-retention#user-credentials).
asdAwsAccessKey :: Lens' AwsS3Data (Maybe AwsAccessKey)
asdAwsAccessKey
  = lens _asdAwsAccessKey
      (\ s a -> s{_asdAwsAccessKey = a})

-- | Input only. The Amazon Resource Name (ARN) of the role to support
-- temporary credentials via \`AssumeRoleWithWebIdentity\`. For more
-- information about ARNs, see [IAM
-- ARNs](https:\/\/docs.aws.amazon.com\/IAM\/latest\/UserGuide\/reference_identifiers.html#identifiers-arns).
-- When a role ARN is provided, Transfer Service fetches temporary
-- credentials for the session using a \`AssumeRoleWithWebIdentity\` call
-- for the provided role using the GoogleServiceAccount for this project.
asdRoleArn :: Lens' AwsS3Data (Maybe Text)
asdRoleArn
  = lens _asdRoleArn (\ s a -> s{_asdRoleArn = a})

instance FromJSON AwsS3Data where
        parseJSON
          = withObject "AwsS3Data"
              (\ o ->
                 AwsS3Data' <$>
                   (o .:? "path") <*> (o .:? "bucketName") <*>
                     (o .:? "awsAccessKey")
                     <*> (o .:? "roleArn"))

instance ToJSON AwsS3Data where
        toJSON AwsS3Data'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _asdPath,
                  ("bucketName" .=) <$> _asdBucketName,
                  ("awsAccessKey" .=) <$> _asdAwsAccessKey,
                  ("roleArn" .=) <$> _asdRoleArn])

-- | An HttpData resource specifies a list of objects on the web to be
-- transferred over HTTP. The information of the objects to be transferred
-- is contained in a file referenced by a URL. The first line in the file
-- must be \`\"TsvHttpData-1.0\"\`, which specifies the format of the file.
-- Subsequent lines specify the information of the list of objects, one
-- object per list entry. Each entry has the following tab-delimited
-- fields: * **HTTP URL** — The location of the object. * **Length** — The
-- size of the object in bytes. * **MD5** — The base64-encoded MD5 hash of
-- the object. For an example of a valid TSV file, see [Transferring data
-- from
-- URLs](https:\/\/cloud.google.com\/storage-transfer\/docs\/create-url-list).
-- When transferring data based on a URL list, keep the following in mind:
-- * When an object located at \`http(s):\/\/hostname:port\/\` is
-- transferred to a data sink, the name of the object at the data sink is
-- \`\/\`. * If the specified size of an object does not match the actual
-- size of the object fetched, the object is not transferred. * If the
-- specified MD5 does not match the MD5 computed from the transferred
-- bytes, the object transfer fails. * Ensure that each URL you specify is
-- publicly accessible. For example, in Cloud Storage you can [share an
-- object publicly] (\/storage\/docs\/cloud-console#_sharingdata) and get a
-- link to it. * Storage Transfer Service obeys \`robots.txt\` rules and
-- requires the source HTTP server to support \`Range\` requests and to
-- return a \`Content-Length\` header in each response. * ObjectConditions
-- have no effect when filtering objects to transfer.
--
-- /See:/ 'hTTPData' smart constructor.
newtype HTTPData =
  HTTPData'
    { _httpdListURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpdListURL'
hTTPData
    :: HTTPData
hTTPData = HTTPData' {_httpdListURL = Nothing}


-- | Required. The URL that points to the file that stores the object list
-- entries. This file must allow public access. Currently, only URLs with
-- HTTP and HTTPS schemes are supported.
httpdListURL :: Lens' HTTPData (Maybe Text)
httpdListURL
  = lens _httpdListURL (\ s a -> s{_httpdListURL = a})

instance FromJSON HTTPData where
        parseJSON
          = withObject "HTTPData"
              (\ o -> HTTPData' <$> (o .:? "listUrl"))

instance ToJSON HTTPData where
        toJSON HTTPData'{..}
          = object
              (catMaybes [("listUrl" .=) <$> _httpdListURL])

-- | Represents a time of day. The date and time zone are either not
-- significant or are specified elsewhere. An API may choose to allow leap
-- seconds. Related types are google.type.Date and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'timeOfDay' smart constructor.
data TimeOfDay' =
  TimeOfDay''
    { _todNanos :: !(Maybe (Textual Int32))
    , _todHours :: !(Maybe (Textual Int32))
    , _todMinutes :: !(Maybe (Textual Int32))
    , _todSeconds :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'todNanos'
--
-- * 'todHours'
--
-- * 'todMinutes'
--
-- * 'todSeconds'
timeOfDay
    :: TimeOfDay'
timeOfDay =
  TimeOfDay''
    { _todNanos = Nothing
    , _todHours = Nothing
    , _todMinutes = Nothing
    , _todSeconds = Nothing
    }


-- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
todNanos :: Lens' TimeOfDay' (Maybe Int32)
todNanos
  = lens _todNanos (\ s a -> s{_todNanos = a}) .
      mapping _Coerce

-- | Hours of day in 24 hour format. Should be from 0 to 23. An API may
-- choose to allow the value \"24:00:00\" for scenarios like business
-- closing time.
todHours :: Lens' TimeOfDay' (Maybe Int32)
todHours
  = lens _todHours (\ s a -> s{_todHours = a}) .
      mapping _Coerce

-- | Minutes of hour of day. Must be from 0 to 59.
todMinutes :: Lens' TimeOfDay' (Maybe Int32)
todMinutes
  = lens _todMinutes (\ s a -> s{_todMinutes = a}) .
      mapping _Coerce

-- | Seconds of minutes of the time. Must normally be from 0 to 59. An API
-- may allow the value 60 if it allows leap-seconds.
todSeconds :: Lens' TimeOfDay' (Maybe Int32)
todSeconds
  = lens _todSeconds (\ s a -> s{_todSeconds = a}) .
      mapping _Coerce

instance FromJSON TimeOfDay' where
        parseJSON
          = withObject "TimeOfDay"
              (\ o ->
                 TimeOfDay'' <$>
                   (o .:? "nanos") <*> (o .:? "hours") <*>
                     (o .:? "minutes")
                     <*> (o .:? "seconds"))

instance ToJSON TimeOfDay' where
        toJSON TimeOfDay''{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _todNanos,
                  ("hours" .=) <$> _todHours,
                  ("minutes" .=) <$> _todMinutes,
                  ("seconds" .=) <$> _todSeconds])

-- | An entry describing an error that has occurred.
--
-- /See:/ 'errorLogEntry' smart constructor.
data ErrorLogEntry =
  ErrorLogEntry'
    { _eleURL :: !(Maybe Text)
    , _eleErrorDetails :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ErrorLogEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eleURL'
--
-- * 'eleErrorDetails'
errorLogEntry
    :: ErrorLogEntry
errorLogEntry = ErrorLogEntry' {_eleURL = Nothing, _eleErrorDetails = Nothing}


-- | Required. A URL that refers to the target (a data source, a data sink,
-- or an object) with which the error is associated.
eleURL :: Lens' ErrorLogEntry (Maybe Text)
eleURL = lens _eleURL (\ s a -> s{_eleURL = a})

-- | A list of messages that carry the error details.
eleErrorDetails :: Lens' ErrorLogEntry [Text]
eleErrorDetails
  = lens _eleErrorDetails
      (\ s a -> s{_eleErrorDetails = a})
      . _Default
      . _Coerce

instance FromJSON ErrorLogEntry where
        parseJSON
          = withObject "ErrorLogEntry"
              (\ o ->
                 ErrorLogEntry' <$>
                   (o .:? "url") <*> (o .:? "errorDetails" .!= mempty))

instance ToJSON ErrorLogEntry where
        toJSON ErrorLogEntry'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _eleURL,
                  ("errorDetails" .=) <$> _eleErrorDetails])

-- | Represents the transfer operation object. To request a TransferOperation
-- object, use transferOperations.get.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | An AzureBlobStorageData resource can be a data source, but not a data
-- sink. An AzureBlobStorageData resource represents one Azure container.
-- The storage account determines the [Azure
-- endpoint](https:\/\/docs.microsoft.com\/en-us\/azure\/storage\/common\/storage-create-storage-account#storage-account-endpoints).
-- In an AzureBlobStorageData resource, a blobs\'s name is the [Azure Blob
-- Storage blob\'s key
-- name](https:\/\/docs.microsoft.com\/en-us\/rest\/api\/storageservices\/naming-and-referencing-containers--blobs--and-metadata#blob-names).
--
-- /See:/ 'azureBlobStorageData' smart constructor.
data AzureBlobStorageData =
  AzureBlobStorageData'
    { _absdPath :: !(Maybe Text)
    , _absdAzureCredentials :: !(Maybe AzureCredentials)
    , _absdContainer :: !(Maybe Text)
    , _absdStorageAccount :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AzureBlobStorageData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'absdPath'
--
-- * 'absdAzureCredentials'
--
-- * 'absdContainer'
--
-- * 'absdStorageAccount'
azureBlobStorageData
    :: AzureBlobStorageData
azureBlobStorageData =
  AzureBlobStorageData'
    { _absdPath = Nothing
    , _absdAzureCredentials = Nothing
    , _absdContainer = Nothing
    , _absdStorageAccount = Nothing
    }


-- | Root path to transfer objects. Must be an empty string or full path name
-- that ends with a \'\/\'. This field is treated as an object prefix. As
-- such, it should generally not begin with a \'\/\'.
absdPath :: Lens' AzureBlobStorageData (Maybe Text)
absdPath = lens _absdPath (\ s a -> s{_absdPath = a})

-- | Required. Input only. Credentials used to authenticate API requests to
-- Azure. For information on our data retention policy for user
-- credentials, see [User
-- credentials](\/storage-transfer\/docs\/data-retention#user-credentials).
absdAzureCredentials :: Lens' AzureBlobStorageData (Maybe AzureCredentials)
absdAzureCredentials
  = lens _absdAzureCredentials
      (\ s a -> s{_absdAzureCredentials = a})

-- | Required. The container to transfer from the Azure Storage account.
absdContainer :: Lens' AzureBlobStorageData (Maybe Text)
absdContainer
  = lens _absdContainer
      (\ s a -> s{_absdContainer = a})

-- | Required. The name of the Azure Storage account.
absdStorageAccount :: Lens' AzureBlobStorageData (Maybe Text)
absdStorageAccount
  = lens _absdStorageAccount
      (\ s a -> s{_absdStorageAccount = a})

instance FromJSON AzureBlobStorageData where
        parseJSON
          = withObject "AzureBlobStorageData"
              (\ o ->
                 AzureBlobStorageData' <$>
                   (o .:? "path") <*> (o .:? "azureCredentials") <*>
                     (o .:? "container")
                     <*> (o .:? "storageAccount"))

instance ToJSON AzureBlobStorageData where
        toJSON AzureBlobStorageData'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _absdPath,
                  ("azureCredentials" .=) <$> _absdAzureCredentials,
                  ("container" .=) <$> _absdContainer,
                  ("storageAccount" .=) <$> _absdStorageAccount])

-- | TransferOptions define the actions to be performed on objects in a
-- transfer.
--
-- /See:/ 'transferOptions' smart constructor.
data TransferOptions =
  TransferOptions'
    { _toDeleteObjectsUniqueInSink :: !(Maybe Bool)
    , _toDeleteObjectsFromSourceAfterTransfer :: !(Maybe Bool)
    , _toOverwriteObjectsAlreadyExistingInSink :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toDeleteObjectsUniqueInSink'
--
-- * 'toDeleteObjectsFromSourceAfterTransfer'
--
-- * 'toOverwriteObjectsAlreadyExistingInSink'
transferOptions
    :: TransferOptions
transferOptions =
  TransferOptions'
    { _toDeleteObjectsUniqueInSink = Nothing
    , _toDeleteObjectsFromSourceAfterTransfer = Nothing
    , _toOverwriteObjectsAlreadyExistingInSink = Nothing
    }


-- | Whether objects that exist only in the sink should be deleted. **Note:**
-- This option and delete_objects_from_source_after_transfer are mutually
-- exclusive.
toDeleteObjectsUniqueInSink :: Lens' TransferOptions (Maybe Bool)
toDeleteObjectsUniqueInSink
  = lens _toDeleteObjectsUniqueInSink
      (\ s a -> s{_toDeleteObjectsUniqueInSink = a})

-- | Whether objects should be deleted from the source after they are
-- transferred to the sink. **Note:** This option and
-- delete_objects_unique_in_sink are mutually exclusive.
toDeleteObjectsFromSourceAfterTransfer :: Lens' TransferOptions (Maybe Bool)
toDeleteObjectsFromSourceAfterTransfer
  = lens _toDeleteObjectsFromSourceAfterTransfer
      (\ s a ->
         s{_toDeleteObjectsFromSourceAfterTransfer = a})

-- | When to overwrite objects that already exist in the sink. The default is
-- that only objects that are different from the source are ovewritten. If
-- true, all objects in the sink whose name matches an object in the source
-- are overwritten with the source object.
toOverwriteObjectsAlreadyExistingInSink :: Lens' TransferOptions (Maybe Bool)
toOverwriteObjectsAlreadyExistingInSink
  = lens _toOverwriteObjectsAlreadyExistingInSink
      (\ s a ->
         s{_toOverwriteObjectsAlreadyExistingInSink = a})

instance FromJSON TransferOptions where
        parseJSON
          = withObject "TransferOptions"
              (\ o ->
                 TransferOptions' <$>
                   (o .:? "deleteObjectsUniqueInSink") <*>
                     (o .:? "deleteObjectsFromSourceAfterTransfer")
                     <*> (o .:? "overwriteObjectsAlreadyExistingInSink"))

instance ToJSON TransferOptions where
        toJSON TransferOptions'{..}
          = object
              (catMaybes
                 [("deleteObjectsUniqueInSink" .=) <$>
                    _toDeleteObjectsUniqueInSink,
                  ("deleteObjectsFromSourceAfterTransfer" .=) <$>
                    _toDeleteObjectsFromSourceAfterTransfer,
                  ("overwriteObjectsAlreadyExistingInSink" .=) <$>
                    _toOverwriteObjectsAlreadyExistingInSink])

-- | A description of the execution of a transfer.
--
-- /See:/ 'transferOperation' smart constructor.
data TransferOperation =
  TransferOperation'
    { _toStatus :: !(Maybe TransferOperationStatus)
    , _toCounters :: !(Maybe TransferCounters)
    , _toNotificationConfig :: !(Maybe NotificationConfig)
    , _toStartTime :: !(Maybe DateTime')
    , _toTransferJobName :: !(Maybe Text)
    , _toName :: !(Maybe Text)
    , _toEndTime :: !(Maybe DateTime')
    , _toProjectId :: !(Maybe Text)
    , _toTransferSpec :: !(Maybe TransferSpec)
    , _toErrorBreakdowns :: !(Maybe [ErrorSummary])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toStatus'
--
-- * 'toCounters'
--
-- * 'toNotificationConfig'
--
-- * 'toStartTime'
--
-- * 'toTransferJobName'
--
-- * 'toName'
--
-- * 'toEndTime'
--
-- * 'toProjectId'
--
-- * 'toTransferSpec'
--
-- * 'toErrorBreakdowns'
transferOperation
    :: TransferOperation
transferOperation =
  TransferOperation'
    { _toStatus = Nothing
    , _toCounters = Nothing
    , _toNotificationConfig = Nothing
    , _toStartTime = Nothing
    , _toTransferJobName = Nothing
    , _toName = Nothing
    , _toEndTime = Nothing
    , _toProjectId = Nothing
    , _toTransferSpec = Nothing
    , _toErrorBreakdowns = Nothing
    }


-- | Status of the transfer operation.
toStatus :: Lens' TransferOperation (Maybe TransferOperationStatus)
toStatus = lens _toStatus (\ s a -> s{_toStatus = a})

-- | Information about the progress of the transfer operation.
toCounters :: Lens' TransferOperation (Maybe TransferCounters)
toCounters
  = lens _toCounters (\ s a -> s{_toCounters = a})

-- | Notification configuration.
toNotificationConfig :: Lens' TransferOperation (Maybe NotificationConfig)
toNotificationConfig
  = lens _toNotificationConfig
      (\ s a -> s{_toNotificationConfig = a})

-- | Start time of this transfer execution.
toStartTime :: Lens' TransferOperation (Maybe UTCTime)
toStartTime
  = lens _toStartTime (\ s a -> s{_toStartTime = a}) .
      mapping _DateTime

-- | The name of the transfer job that triggers this transfer operation.
toTransferJobName :: Lens' TransferOperation (Maybe Text)
toTransferJobName
  = lens _toTransferJobName
      (\ s a -> s{_toTransferJobName = a})

-- | A globally unique ID assigned by the system.
toName :: Lens' TransferOperation (Maybe Text)
toName = lens _toName (\ s a -> s{_toName = a})

-- | End time of this transfer execution.
toEndTime :: Lens' TransferOperation (Maybe UTCTime)
toEndTime
  = lens _toEndTime (\ s a -> s{_toEndTime = a}) .
      mapping _DateTime

-- | The ID of the Google Cloud Platform Project that owns the operation.
toProjectId :: Lens' TransferOperation (Maybe Text)
toProjectId
  = lens _toProjectId (\ s a -> s{_toProjectId = a})

-- | Transfer specification.
toTransferSpec :: Lens' TransferOperation (Maybe TransferSpec)
toTransferSpec
  = lens _toTransferSpec
      (\ s a -> s{_toTransferSpec = a})

-- | Summarizes errors encountered with sample error log entries.
toErrorBreakdowns :: Lens' TransferOperation [ErrorSummary]
toErrorBreakdowns
  = lens _toErrorBreakdowns
      (\ s a -> s{_toErrorBreakdowns = a})
      . _Default
      . _Coerce

instance FromJSON TransferOperation where
        parseJSON
          = withObject "TransferOperation"
              (\ o ->
                 TransferOperation' <$>
                   (o .:? "status") <*> (o .:? "counters") <*>
                     (o .:? "notificationConfig")
                     <*> (o .:? "startTime")
                     <*> (o .:? "transferJobName")
                     <*> (o .:? "name")
                     <*> (o .:? "endTime")
                     <*> (o .:? "projectId")
                     <*> (o .:? "transferSpec")
                     <*> (o .:? "errorBreakdowns" .!= mempty))

instance ToJSON TransferOperation where
        toJSON TransferOperation'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _toStatus,
                  ("counters" .=) <$> _toCounters,
                  ("notificationConfig" .=) <$> _toNotificationConfig,
                  ("startTime" .=) <$> _toStartTime,
                  ("transferJobName" .=) <$> _toTransferJobName,
                  ("name" .=) <$> _toName,
                  ("endTime" .=) <$> _toEndTime,
                  ("projectId" .=) <$> _toProjectId,
                  ("transferSpec" .=) <$> _toTransferSpec,
                  ("errorBreakdowns" .=) <$> _toErrorBreakdowns])

-- | Configuration for running a transfer.
--
-- /See:/ 'transferSpec' smart constructor.
data TransferSpec =
  TransferSpec'
    { _tsGcsDataSource :: !(Maybe GcsData)
    , _tsObjectConditions :: !(Maybe ObjectConditions)
    , _tsHTTPDataSource :: !(Maybe HTTPData)
    , _tsAwsS3DataSource :: !(Maybe AwsS3Data)
    , _tsGcsDataSink :: !(Maybe GcsData)
    , _tsTransferOptions :: !(Maybe TransferOptions)
    , _tsAzureBlobStorageDataSource :: !(Maybe AzureBlobStorageData)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsGcsDataSource'
--
-- * 'tsObjectConditions'
--
-- * 'tsHTTPDataSource'
--
-- * 'tsAwsS3DataSource'
--
-- * 'tsGcsDataSink'
--
-- * 'tsTransferOptions'
--
-- * 'tsAzureBlobStorageDataSource'
transferSpec
    :: TransferSpec
transferSpec =
  TransferSpec'
    { _tsGcsDataSource = Nothing
    , _tsObjectConditions = Nothing
    , _tsHTTPDataSource = Nothing
    , _tsAwsS3DataSource = Nothing
    , _tsGcsDataSink = Nothing
    , _tsTransferOptions = Nothing
    , _tsAzureBlobStorageDataSource = Nothing
    }


-- | A Cloud Storage data source.
tsGcsDataSource :: Lens' TransferSpec (Maybe GcsData)
tsGcsDataSource
  = lens _tsGcsDataSource
      (\ s a -> s{_tsGcsDataSource = a})

-- | Only objects that satisfy these object conditions are included in the
-- set of data source and data sink objects. Object conditions based on
-- objects\' \"last modification time\" do not exclude objects in a data
-- sink.
tsObjectConditions :: Lens' TransferSpec (Maybe ObjectConditions)
tsObjectConditions
  = lens _tsObjectConditions
      (\ s a -> s{_tsObjectConditions = a})

-- | An HTTP URL data source.
tsHTTPDataSource :: Lens' TransferSpec (Maybe HTTPData)
tsHTTPDataSource
  = lens _tsHTTPDataSource
      (\ s a -> s{_tsHTTPDataSource = a})

-- | An AWS S3 data source.
tsAwsS3DataSource :: Lens' TransferSpec (Maybe AwsS3Data)
tsAwsS3DataSource
  = lens _tsAwsS3DataSource
      (\ s a -> s{_tsAwsS3DataSource = a})

-- | A Cloud Storage data sink.
tsGcsDataSink :: Lens' TransferSpec (Maybe GcsData)
tsGcsDataSink
  = lens _tsGcsDataSink
      (\ s a -> s{_tsGcsDataSink = a})

-- | If the option delete_objects_unique_in_sink is \`true\` and time-based
-- object conditions such as \'last modification time\' are specified, the
-- request fails with an INVALID_ARGUMENT error.
tsTransferOptions :: Lens' TransferSpec (Maybe TransferOptions)
tsTransferOptions
  = lens _tsTransferOptions
      (\ s a -> s{_tsTransferOptions = a})

-- | An Azure Blob Storage data source.
tsAzureBlobStorageDataSource :: Lens' TransferSpec (Maybe AzureBlobStorageData)
tsAzureBlobStorageDataSource
  = lens _tsAzureBlobStorageDataSource
      (\ s a -> s{_tsAzureBlobStorageDataSource = a})

instance FromJSON TransferSpec where
        parseJSON
          = withObject "TransferSpec"
              (\ o ->
                 TransferSpec' <$>
                   (o .:? "gcsDataSource") <*>
                     (o .:? "objectConditions")
                     <*> (o .:? "httpDataSource")
                     <*> (o .:? "awsS3DataSource")
                     <*> (o .:? "gcsDataSink")
                     <*> (o .:? "transferOptions")
                     <*> (o .:? "azureBlobStorageDataSource"))

instance ToJSON TransferSpec where
        toJSON TransferSpec'{..}
          = object
              (catMaybes
                 [("gcsDataSource" .=) <$> _tsGcsDataSource,
                  ("objectConditions" .=) <$> _tsObjectConditions,
                  ("httpDataSource" .=) <$> _tsHTTPDataSource,
                  ("awsS3DataSource" .=) <$> _tsAwsS3DataSource,
                  ("gcsDataSink" .=) <$> _tsGcsDataSink,
                  ("transferOptions" .=) <$> _tsTransferOptions,
                  ("azureBlobStorageDataSource" .=) <$>
                    _tsAzureBlobStorageDataSource])

-- | Response from ListTransferJobs.
--
-- /See:/ 'listTransferJobsResponse' smart constructor.
data ListTransferJobsResponse =
  ListTransferJobsResponse'
    { _ltjrNextPageToken :: !(Maybe Text)
    , _ltjrTransferJobs :: !(Maybe [TransferJob])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTransferJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltjrNextPageToken'
--
-- * 'ltjrTransferJobs'
listTransferJobsResponse
    :: ListTransferJobsResponse
listTransferJobsResponse =
  ListTransferJobsResponse'
    {_ltjrNextPageToken = Nothing, _ltjrTransferJobs = Nothing}


-- | The list next page token.
ltjrNextPageToken :: Lens' ListTransferJobsResponse (Maybe Text)
ltjrNextPageToken
  = lens _ltjrNextPageToken
      (\ s a -> s{_ltjrNextPageToken = a})

-- | A list of transfer jobs.
ltjrTransferJobs :: Lens' ListTransferJobsResponse [TransferJob]
ltjrTransferJobs
  = lens _ltjrTransferJobs
      (\ s a -> s{_ltjrTransferJobs = a})
      . _Default
      . _Coerce

instance FromJSON ListTransferJobsResponse where
        parseJSON
          = withObject "ListTransferJobsResponse"
              (\ o ->
                 ListTransferJobsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "transferJobs" .!= mempty))

instance ToJSON ListTransferJobsResponse where
        toJSON ListTransferJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltjrNextPageToken,
                  ("transferJobs" .=) <$> _ltjrTransferJobs])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Request passed to ResumeTransferOperation.
--
-- /See:/ 'resumeTransferOperationRequest' smart constructor.
data ResumeTransferOperationRequest =
  ResumeTransferOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResumeTransferOperationRequest' with the minimum fields required to make a request.
--
resumeTransferOperationRequest
    :: ResumeTransferOperationRequest
resumeTransferOperationRequest = ResumeTransferOperationRequest'


instance FromJSON ResumeTransferOperationRequest
         where
        parseJSON
          = withObject "ResumeTransferOperationRequest"
              (\ o -> pure ResumeTransferOperationRequest')

instance ToJSON ResumeTransferOperationRequest where
        toJSON = const emptyObject

-- | AWS access key (see [AWS Security
-- Credentials](https:\/\/docs.aws.amazon.com\/general\/latest\/gr\/aws-security-credentials.html)).
-- For information on our data retention policy for user credentials, see
-- [User
-- credentials](\/storage-transfer\/docs\/data-retention#user-credentials).
--
-- /See:/ 'awsAccessKey' smart constructor.
data AwsAccessKey =
  AwsAccessKey'
    { _aakSecretAccessKey :: !(Maybe Text)
    , _aakAccessKeyId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AwsAccessKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aakSecretAccessKey'
--
-- * 'aakAccessKeyId'
awsAccessKey
    :: AwsAccessKey
awsAccessKey =
  AwsAccessKey' {_aakSecretAccessKey = Nothing, _aakAccessKeyId = Nothing}


-- | Required. AWS secret access key. This field is not returned in RPC
-- responses.
aakSecretAccessKey :: Lens' AwsAccessKey (Maybe Text)
aakSecretAccessKey
  = lens _aakSecretAccessKey
      (\ s a -> s{_aakSecretAccessKey = a})

-- | Required. AWS access key ID.
aakAccessKeyId :: Lens' AwsAccessKey (Maybe Text)
aakAccessKeyId
  = lens _aakAccessKeyId
      (\ s a -> s{_aakAccessKeyId = a})

instance FromJSON AwsAccessKey where
        parseJSON
          = withObject "AwsAccessKey"
              (\ o ->
                 AwsAccessKey' <$>
                   (o .:? "secretAccessKey") <*> (o .:? "accessKeyId"))

instance ToJSON AwsAccessKey where
        toJSON AwsAccessKey'{..}
          = object
              (catMaybes
                 [("secretAccessKey" .=) <$> _aakSecretAccessKey,
                  ("accessKeyId" .=) <$> _aakAccessKeyId])
