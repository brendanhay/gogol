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

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types.Sum

-- | A summary of errors by error code, plus a count and sample error log
-- entries.
--
-- /See:/ 'errorSummary' smart constructor.
data ErrorSummary =
  ErrorSummary'
    { _esErrorCount      :: !(Maybe (Textual Int64))
    , _esErrorCode       :: !(Maybe ErrorSummaryErrorCode)
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


-- | Count of this type of error. Required.
esErrorCount :: Lens' ErrorSummary (Maybe Int64)
esErrorCount
  = lens _esErrorCount (\ s a -> s{_esErrorCount = a})
      . mapping _Coerce

-- | Required.
esErrorCode :: Lens' ErrorSummary (Maybe ErrorSummaryErrorCode)
esErrorCode
  = lens _esErrorCode (\ s a -> s{_esErrorCode = a})

-- | Error samples. No more than 100 error log entries may be recorded for a
-- given error code for a single task.
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
-- package \`google.rpc\` that can be used for common error conditions. #
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
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
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

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Operation])
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

-- | Transfers can be scheduled to recur or to run just once.
--
-- /See:/ 'schedule' smart constructor.
data Schedule =
  Schedule'
    { _sScheduleEndDate   :: !(Maybe Date)
    , _sScheduleStartDate :: !(Maybe Date)
    , _sStartTimeOfDay    :: !(Maybe TimeOfDay')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Schedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sScheduleEndDate'
--
-- * 'sScheduleStartDate'
--
-- * 'sStartTimeOfDay'
schedule
    :: Schedule
schedule =
  Schedule'
    { _sScheduleEndDate = Nothing
    , _sScheduleStartDate = Nothing
    , _sStartTimeOfDay = Nothing
    }


-- | The last day the recurring transfer will be run. If \`scheduleEndDate\`
-- is the same as \`scheduleStartDate\`, the transfer will be executed only
-- once.
sScheduleEndDate :: Lens' Schedule (Maybe Date)
sScheduleEndDate
  = lens _sScheduleEndDate
      (\ s a -> s{_sScheduleEndDate = a})

-- | The first day the recurring transfer is scheduled to run. If
-- \`scheduleStartDate\` is in the past, the transfer will run for the
-- first time on the following day. Required.
sScheduleStartDate :: Lens' Schedule (Maybe Date)
sScheduleStartDate
  = lens _sScheduleStartDate
      (\ s a -> s{_sScheduleStartDate = a})

-- | The time in UTC at which the transfer will be scheduled to start in a
-- day. Transfers may start later than this time. If not specified,
-- recurring and one-time transfers that are scheduled to run today will
-- run immediately; recurring transfers that are scheduled to run on a
-- future date will start at approximately midnight UTC on that date. Note
-- that when configuring a transfer with the Cloud Platform Console, the
-- transfer\'s start time in a day is specified in your local timezone.
sStartTimeOfDay :: Lens' Schedule (Maybe TimeOfDay')
sStartTimeOfDay
  = lens _sStartTimeOfDay
      (\ s a -> s{_sStartTimeOfDay = a})

instance FromJSON Schedule where
        parseJSON
          = withObject "Schedule"
              (\ o ->
                 Schedule' <$>
                   (o .:? "scheduleEndDate") <*>
                     (o .:? "scheduleStartDate")
                     <*> (o .:? "startTimeOfDay"))

instance ToJSON Schedule where
        toJSON Schedule'{..}
          = object
              (catMaybes
                 [("scheduleEndDate" .=) <$> _sScheduleEndDate,
                  ("scheduleStartDate" .=) <$> _sScheduleStartDate,
                  ("startTimeOfDay" .=) <$> _sStartTimeOfDay])

-- | Conditions that determine which objects will be transferred. Applies
-- only to S3 and GCS objects.
--
-- /See:/ 'objectConditions' smart constructor.
data ObjectConditions =
  ObjectConditions'
    { _ocMinTimeElapsedSinceLastModification :: !(Maybe GDuration)
    , _ocIncludePrefixes                     :: !(Maybe [Text])
    , _ocMaxTimeElapsedSinceLastModification :: !(Maybe GDuration)
    , _ocExcludePrefixes                     :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectConditions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocMinTimeElapsedSinceLastModification'
--
-- * 'ocIncludePrefixes'
--
-- * 'ocMaxTimeElapsedSinceLastModification'
--
-- * 'ocExcludePrefixes'
objectConditions
    :: ObjectConditions
objectConditions =
  ObjectConditions'
    { _ocMinTimeElapsedSinceLastModification = Nothing
    , _ocIncludePrefixes = Nothing
    , _ocMaxTimeElapsedSinceLastModification = Nothing
    , _ocExcludePrefixes = Nothing
    }


-- | If specified, only objects with a \`lastModificationTime\` before
-- \`NOW\` - \`minTimeElapsedSinceLastModification\` and objects that
-- don\'t have a \`lastModificationTime\` are transferred. Note that
-- \`NOW\` refers to the creation time of the transfer job, and
-- \`lastModificationTime\` refers to the time of the last change to the
-- object\'s content or metadata. Specifically, this would be the
-- \`updated\` property of GCS objects and the \`LastModified\` field of S3
-- objects.
ocMinTimeElapsedSinceLastModification :: Lens' ObjectConditions (Maybe Scientific)
ocMinTimeElapsedSinceLastModification
  = lens _ocMinTimeElapsedSinceLastModification
      (\ s a ->
         s{_ocMinTimeElapsedSinceLastModification = a})
      . mapping _GDuration

-- | If \`includePrefixes\` is specified, objects that satisfy the object
-- conditions must have names that start with one of the
-- \`includePrefixes\` and that do not start with any of the
-- \`excludePrefixes\`. If \`includePrefixes\` is not specified, all
-- objects except those that have names starting with one of the
-- \`excludePrefixes\` must satisfy the object conditions. Requirements: *
-- Each include-prefix and exclude-prefix can contain any sequence of
-- Unicode characters, of max length 1024 bytes when UTF8-encoded, and must
-- not contain Carriage Return or Line Feed characters. Wildcard matching
-- and regular expression matching are not supported. * Each include-prefix
-- and exclude-prefix must omit the leading slash. For example, to include
-- the \`requests.gz\` object in a transfer from
-- \`s3:\/\/my-aws-bucket\/logs\/y=2015\/requests.gz\`, specify the include
-- prefix as \`logs\/y=2015\/requests.gz\`. * None of the include-prefix or
-- the exclude-prefix values can be empty, if specified. * Each
-- include-prefix must include a distinct portion of the object namespace,
-- i.e., no include-prefix may be a prefix of another include-prefix. *
-- Each exclude-prefix must exclude a distinct portion of the object
-- namespace, i.e., no exclude-prefix may be a prefix of another
-- exclude-prefix. * If \`includePrefixes\` is specified, then each
-- exclude-prefix must start with the value of a path explicitly included
-- by \`includePrefixes\`. The max size of \`includePrefixes\` is 1000.
ocIncludePrefixes :: Lens' ObjectConditions [Text]
ocIncludePrefixes
  = lens _ocIncludePrefixes
      (\ s a -> s{_ocIncludePrefixes = a})
      . _Default
      . _Coerce

-- | If specified, only objects with a \`lastModificationTime\` on or after
-- \`NOW\` - \`maxTimeElapsedSinceLastModification\` and objects that
-- don\'t have a \`lastModificationTime\` are transferred. Note that
-- \`NOW\` refers to the creation time of the transfer job, and
-- \`lastModificationTime\` refers to the time of the last change to the
-- object\'s content or metadata. Specifically, this would be the
-- \`updated\` property of GCS objects and the \`LastModified\` field of S3
-- objects.
ocMaxTimeElapsedSinceLastModification :: Lens' ObjectConditions (Maybe Scientific)
ocMaxTimeElapsedSinceLastModification
  = lens _ocMaxTimeElapsedSinceLastModification
      (\ s a ->
         s{_ocMaxTimeElapsedSinceLastModification = a})
      . mapping _GDuration

-- | \`excludePrefixes\` must follow the requirements described for
-- \`includePrefixes\`. The max size of \`excludePrefixes\` is 1000.
ocExcludePrefixes :: Lens' ObjectConditions [Text]
ocExcludePrefixes
  = lens _ocExcludePrefixes
      (\ s a -> s{_ocExcludePrefixes = a})
      . _Default
      . _Coerce

instance FromJSON ObjectConditions where
        parseJSON
          = withObject "ObjectConditions"
              (\ o ->
                 ObjectConditions' <$>
                   (o .:? "minTimeElapsedSinceLastModification") <*>
                     (o .:? "includePrefixes" .!= mempty)
                     <*> (o .:? "maxTimeElapsedSinceLastModification")
                     <*> (o .:? "excludePrefixes" .!= mempty))

instance ToJSON ObjectConditions where
        toJSON ObjectConditions'{..}
          = object
              (catMaybes
                 [("minTimeElapsedSinceLastModification" .=) <$>
                    _ocMinTimeElapsedSinceLastModification,
                  ("includePrefixes" .=) <$> _ocIncludePrefixes,
                  ("maxTimeElapsedSinceLastModification" .=) <$>
                    _ocMaxTimeElapsedSinceLastModification,
                  ("excludePrefixes" .=) <$> _ocExcludePrefixes])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
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

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of
-- \`transferOperations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Represents the transfer operation object.
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
newtype GoogleServiceAccount =
  GoogleServiceAccount'
    { _gsaAccountEmail :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsaAccountEmail'
googleServiceAccount
    :: GoogleServiceAccount
googleServiceAccount = GoogleServiceAccount' {_gsaAccountEmail = Nothing}


-- | Required.
gsaAccountEmail :: Lens' GoogleServiceAccount (Maybe Text)
gsaAccountEmail
  = lens _gsaAccountEmail
      (\ s a -> s{_gsaAccountEmail = a})

instance FromJSON GoogleServiceAccount where
        parseJSON
          = withObject "GoogleServiceAccount"
              (\ o ->
                 GoogleServiceAccount' <$> (o .:? "accountEmail"))

instance ToJSON GoogleServiceAccount where
        toJSON GoogleServiceAccount'{..}
          = object
              (catMaybes
                 [("accountEmail" .=) <$> _gsaAccountEmail])

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

-- | Represents a whole or partial calendar date, e.g. a birthday. The time
-- of day and time zone are either specified elsewhere or are not
-- significant. The date is relative to the Proleptic Gregorian Calendar.
-- This can represent: * A full date, with non-zero year, month and day
-- values * A month and day value, with a zero year, e.g. an anniversary *
-- A year on its own, with zero month and day values * A year and month
-- value, with a zero day, e.g. a credit card expiration date Related types
-- are google.type.TimeOfDay and \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay   :: !(Maybe (Textual Int32))
    , _dYear  :: !(Maybe (Textual Int32))
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


-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year by itself or a year and month where the day is
-- not significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of date. Must be from 1 to 9999, or 0 if specifying a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of year. Must be from 1 to 12, or 0 if specifying a year without a
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
    { _utjrTransferJob                :: !(Maybe TransferJob)
    , _utjrProjectId                  :: !(Maybe Text)
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


-- | The job to update. \`transferJob\` is expected to specify only three
-- fields: \`description\`, \`transferSpec\`, and \`status\`. An
-- UpdateTransferJobRequest that specifies other fields will be rejected
-- with an error \`INVALID_ARGUMENT\`. Required.
utjrTransferJob :: Lens' UpdateTransferJobRequest (Maybe TransferJob)
utjrTransferJob
  = lens _utjrTransferJob
      (\ s a -> s{_utjrTransferJob = a})

-- | The ID of the Google Cloud Platform Console project that owns the job.
-- Required.
utjrProjectId :: Lens' UpdateTransferJobRequest (Maybe Text)
utjrProjectId
  = lens _utjrProjectId
      (\ s a -> s{_utjrProjectId = a})

-- | The field mask of the fields in \`transferJob\` that are to be updated
-- in this request. Fields in \`transferJob\` that can be updated are:
-- \`description\`, \`transferSpec\`, and \`status\`. To update the
-- \`transferSpec\` of the job, a complete transfer specification has to be
-- provided. An incomplete specification which misses any required fields
-- will be rejected with the error \`INVALID_ARGUMENT\`.
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
    { _tcBytesFoundOnlyFromSink         :: !(Maybe (Textual Int64))
    , _tcBytesDeletedFromSink           :: !(Maybe (Textual Int64))
    , _tcObjectsDeletedFromSource       :: !(Maybe (Textual Int64))
    , _tcObjectsFoundFromSource         :: !(Maybe (Textual Int64))
    , _tcBytesFailedToDeleteFromSink    :: !(Maybe (Textual Int64))
    , _tcBytesFromSourceFailed          :: !(Maybe (Textual Int64))
    , _tcBytesCopiedToSink              :: !(Maybe (Textual Int64))
    , _tcBytesFoundFromSource           :: !(Maybe (Textual Int64))
    , _tcBytesDeletedFromSource         :: !(Maybe (Textual Int64))
    , _tcObjectsDeletedFromSink         :: !(Maybe (Textual Int64))
    , _tcObjectsFoundOnlyFromSink       :: !(Maybe (Textual Int64))
    , _tcBytesFromSourceSkippedBySync   :: !(Maybe (Textual Int64))
    , _tcObjectsCopiedToSink            :: !(Maybe (Textual Int64))
    , _tcObjectsFromSourceFailed        :: !(Maybe (Textual Int64))
    , _tcObjectsFailedToDeleteFromSink  :: !(Maybe (Textual Int64))
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
    { _tjCreationTime         :: !(Maybe DateTime')
    , _tjStatus               :: !(Maybe TransferJobStatus)
    , _tjSchedule             :: !(Maybe Schedule)
    , _tjDeletionTime         :: !(Maybe DateTime')
    , _tjName                 :: !(Maybe Text)
    , _tjProjectId            :: !(Maybe Text)
    , _tjTransferSpec         :: !(Maybe TransferSpec)
    , _tjDescription          :: !(Maybe Text)
    , _tjLastModificationTime :: !(Maybe DateTime')
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
transferJob
    :: TransferJob
transferJob =
  TransferJob'
    { _tjCreationTime = Nothing
    , _tjStatus = Nothing
    , _tjSchedule = Nothing
    , _tjDeletionTime = Nothing
    , _tjName = Nothing
    , _tjProjectId = Nothing
    , _tjTransferSpec = Nothing
    , _tjDescription = Nothing
    , _tjLastModificationTime = Nothing
    }


-- | This field cannot be changed by user requests.
tjCreationTime :: Lens' TransferJob (Maybe UTCTime)
tjCreationTime
  = lens _tjCreationTime
      (\ s a -> s{_tjCreationTime = a})
      . mapping _DateTime

-- | Status of the job. This value MUST be specified for
-- \`CreateTransferJobRequests\`. NOTE: The effect of the new job status
-- takes place during a subsequent job run. For example, if you change the
-- job status from \`ENABLED\` to \`DISABLED\`, and an operation spawned by
-- the transfer is running, the status change would not affect the current
-- operation.
tjStatus :: Lens' TransferJob (Maybe TransferJobStatus)
tjStatus = lens _tjStatus (\ s a -> s{_tjStatus = a})

-- | Schedule specification.
tjSchedule :: Lens' TransferJob (Maybe Schedule)
tjSchedule
  = lens _tjSchedule (\ s a -> s{_tjSchedule = a})

-- | This field cannot be changed by user requests.
tjDeletionTime :: Lens' TransferJob (Maybe UTCTime)
tjDeletionTime
  = lens _tjDeletionTime
      (\ s a -> s{_tjDeletionTime = a})
      . mapping _DateTime

-- | A globally unique name assigned by Storage Transfer Service when the job
-- is created. This field should be left empty in requests to create a new
-- transfer job; otherwise, the requests result in an \`INVALID_ARGUMENT\`
-- error.
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

-- | This field cannot be changed by user requests.
tjLastModificationTime :: Lens' TransferJob (Maybe UTCTime)
tjLastModificationTime
  = lens _tjLastModificationTime
      (\ s a -> s{_tjLastModificationTime = a})
      . mapping _DateTime

instance FromJSON TransferJob where
        parseJSON
          = withObject "TransferJob"
              (\ o ->
                 TransferJob' <$>
                   (o .:? "creationTime") <*> (o .:? "status") <*>
                     (o .:? "schedule")
                     <*> (o .:? "deletionTime")
                     <*> (o .:? "name")
                     <*> (o .:? "projectId")
                     <*> (o .:? "transferSpec")
                     <*> (o .:? "description")
                     <*> (o .:? "lastModificationTime"))

instance ToJSON TransferJob where
        toJSON TransferJob'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _tjCreationTime,
                  ("status" .=) <$> _tjStatus,
                  ("schedule" .=) <$> _tjSchedule,
                  ("deletionTime" .=) <$> _tjDeletionTime,
                  ("name" .=) <$> _tjName,
                  ("projectId" .=) <$> _tjProjectId,
                  ("transferSpec" .=) <$> _tjTransferSpec,
                  ("description" .=) <$> _tjDescription,
                  ("lastModificationTime" .=) <$>
                    _tjLastModificationTime])

-- | In a GcsData resource, an object\'s name is the Google Cloud Storage
-- object\'s name and its \`lastModificationTime\` refers to the object\'s
-- updated time, which changes when the content or the metadata of the
-- object is updated.
--
-- /See:/ 'gcsData' smart constructor.
newtype GcsData =
  GcsData'
    { _gdBucketName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcsData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdBucketName'
gcsData
    :: GcsData
gcsData = GcsData' {_gdBucketName = Nothing}


-- | Google Cloud Storage bucket name (see [Bucket Name
-- Requirements](https:\/\/cloud.google.com\/storage\/docs\/naming#requirements)).
-- Required.
gdBucketName :: Lens' GcsData (Maybe Text)
gdBucketName
  = lens _gdBucketName (\ s a -> s{_gdBucketName = a})

instance FromJSON GcsData where
        parseJSON
          = withObject "GcsData"
              (\ o -> GcsData' <$> (o .:? "bucketName"))

instance ToJSON GcsData where
        toJSON GcsData'{..}
          = object
              (catMaybes [("bucketName" .=) <$> _gdBucketName])

-- | An AwsS3Data resource can be a data source, but not a data sink. In an
-- AwsS3Data resource, an object\'s name is the S3 object\'s key name.
--
-- /See:/ 'awsS3Data' smart constructor.
data AwsS3Data =
  AwsS3Data'
    { _asdBucketName   :: !(Maybe Text)
    , _asdAwsAccessKey :: !(Maybe AwsAccessKey)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AwsS3Data' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdBucketName'
--
-- * 'asdAwsAccessKey'
awsS3Data
    :: AwsS3Data
awsS3Data = AwsS3Data' {_asdBucketName = Nothing, _asdAwsAccessKey = Nothing}


-- | S3 Bucket name (see [Creating a
-- bucket](http:\/\/docs.aws.amazon.com\/AmazonS3\/latest\/dev\/create-bucket-get-location-example.html)).
-- Required.
asdBucketName :: Lens' AwsS3Data (Maybe Text)
asdBucketName
  = lens _asdBucketName
      (\ s a -> s{_asdBucketName = a})

-- | AWS access key used to sign the API requests to the AWS S3 bucket.
-- Permissions on the bucket must be granted to the access ID of the AWS
-- access key. Required.
asdAwsAccessKey :: Lens' AwsS3Data (Maybe AwsAccessKey)
asdAwsAccessKey
  = lens _asdAwsAccessKey
      (\ s a -> s{_asdAwsAccessKey = a})

instance FromJSON AwsS3Data where
        parseJSON
          = withObject "AwsS3Data"
              (\ o ->
                 AwsS3Data' <$>
                   (o .:? "bucketName") <*> (o .:? "awsAccessKey"))

instance ToJSON AwsS3Data where
        toJSON AwsS3Data'{..}
          = object
              (catMaybes
                 [("bucketName" .=) <$> _asdBucketName,
                  ("awsAccessKey" .=) <$> _asdAwsAccessKey])

-- | An HttpData resource specifies a list of objects on the web to be
-- transferred over HTTP. The information of the objects to be transferred
-- is contained in a file referenced by a URL. The first line in the file
-- must be \"TsvHttpData-1.0\", which specifies the format of the file.
-- Subsequent lines specify the information of the list of objects, one
-- object per list entry. Each entry has the following tab-delimited
-- fields: * HTTP URL - The location of the object. * Length - The size of
-- the object in bytes. * MD5 - The base64-encoded MD5 hash of the object.
-- For an example of a valid TSV file, see [Transferring data from
-- URLs](https:\/\/cloud.google.com\/storage\/transfer\/create-url-list).
-- When transferring data based on a URL list, keep the following in mind:
-- * When an object located at \`http(s):\/\/hostname:port\/\` is
-- transferred to a data sink, the name of the object at the data sink is
-- \`\/\`. * If the specified size of an object does not match the actual
-- size of the object fetched, the object will not be transferred. * If the
-- specified MD5 does not match the MD5 computed from the transferred
-- bytes, the object transfer will fail. For more information, see
-- [Generating MD5
-- hashes](https:\/\/cloud.google.com\/storage\/transfer\/#md5) * Ensure
-- that each URL you specify is publicly accessible. For example, in Google
-- Cloud Storage you can [share an object publicly]
-- (https:\/\/cloud.google.com\/storage\/docs\/cloud-console#_sharingdata)
-- and get a link to it. * Storage Transfer Service obeys \`robots.txt\`
-- rules and requires the source HTTP server to support \`Range\` requests
-- and to return a \`Content-Length\` header in each response. *
-- [ObjectConditions](#ObjectConditions) have no effect when filtering
-- objects to transfer.
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


-- | The URL that points to the file that stores the object list entries.
-- This file must allow public access. Currently, only URLs with HTTP and
-- HTTPS schemes are supported. Required.
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
    { _todNanos   :: !(Maybe (Textual Int32))
    , _todHours   :: !(Maybe (Textual Int32))
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
    { _eleURL          :: !(Maybe Text)
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


-- | A URL that refers to the target (a data source, a data sink, or an
-- object) with which the error is associated. Required.
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

-- | Represents the transfer operation object.
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

-- | TransferOptions uses three boolean parameters to define the actions to
-- be performed on objects in a transfer.
--
-- /See:/ 'transferOptions' smart constructor.
data TransferOptions =
  TransferOptions'
    { _toDeleteObjectsUniqueInSink             :: !(Maybe Bool)
    , _toDeleteObjectsFromSourceAfterTransfer  :: !(Maybe Bool)
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


-- | Whether objects that exist only in the sink should be deleted. Note that
-- this option and \`deleteObjectsFromSourceAfterTransfer\` are mutually
-- exclusive.
toDeleteObjectsUniqueInSink :: Lens' TransferOptions (Maybe Bool)
toDeleteObjectsUniqueInSink
  = lens _toDeleteObjectsUniqueInSink
      (\ s a -> s{_toDeleteObjectsUniqueInSink = a})

-- | Whether objects should be deleted from the source after they are
-- transferred to the sink. Note that this option and
-- \`deleteObjectsUniqueInSink\` are mutually exclusive.
toDeleteObjectsFromSourceAfterTransfer :: Lens' TransferOptions (Maybe Bool)
toDeleteObjectsFromSourceAfterTransfer
  = lens _toDeleteObjectsFromSourceAfterTransfer
      (\ s a ->
         s{_toDeleteObjectsFromSourceAfterTransfer = a})

-- | Whether overwriting objects that already exist in the sink is allowed.
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
    { _toStatus          :: !(Maybe TransferOperationStatus)
    , _toCounters        :: !(Maybe TransferCounters)
    , _toStartTime       :: !(Maybe DateTime')
    , _toTransferJobName :: !(Maybe Text)
    , _toName            :: !(Maybe Text)
    , _toEndTime         :: !(Maybe DateTime')
    , _toProjectId       :: !(Maybe Text)
    , _toTransferSpec    :: !(Maybe TransferSpec)
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
-- Required.
toProjectId :: Lens' TransferOperation (Maybe Text)
toProjectId
  = lens _toProjectId (\ s a -> s{_toProjectId = a})

-- | Transfer specification. Required.
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
                     (o .:? "startTime")
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
    { _tsGcsDataSource    :: !(Maybe GcsData)
    , _tsObjectConditions :: !(Maybe ObjectConditions)
    , _tsHTTPDataSource   :: !(Maybe HTTPData)
    , _tsAwsS3DataSource  :: !(Maybe AwsS3Data)
    , _tsGcsDataSink      :: !(Maybe GcsData)
    , _tsTransferOptions  :: !(Maybe TransferOptions)
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
    }


-- | A Google Cloud Storage data source.
tsGcsDataSource :: Lens' TransferSpec (Maybe GcsData)
tsGcsDataSource
  = lens _tsGcsDataSource
      (\ s a -> s{_tsGcsDataSource = a})

-- | Only objects that satisfy these object conditions are included in the
-- set of data source and data sink objects. Object conditions based on
-- objects\' \`lastModificationTime\` do not exclude objects in a data
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

-- | A Google Cloud Storage data sink.
tsGcsDataSink :: Lens' TransferSpec (Maybe GcsData)
tsGcsDataSink
  = lens _tsGcsDataSink
      (\ s a -> s{_tsGcsDataSink = a})

-- | If the option \`deleteObjectsUniqueInSink\` is \`true\`, object
-- conditions based on objects\' \`lastModificationTime\` are ignored and
-- do not exclude objects in a data source or a data sink.
tsTransferOptions :: Lens' TransferSpec (Maybe TransferOptions)
tsTransferOptions
  = lens _tsTransferOptions
      (\ s a -> s{_tsTransferOptions = a})

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
                     <*> (o .:? "transferOptions"))

instance ToJSON TransferSpec where
        toJSON TransferSpec'{..}
          = object
              (catMaybes
                 [("gcsDataSource" .=) <$> _tsGcsDataSource,
                  ("objectConditions" .=) <$> _tsObjectConditions,
                  ("httpDataSource" .=) <$> _tsHTTPDataSource,
                  ("awsS3DataSource" .=) <$> _tsAwsS3DataSource,
                  ("gcsDataSink" .=) <$> _tsGcsDataSink,
                  ("transferOptions" .=) <$> _tsTransferOptions])

-- | Response from ListTransferJobs.
--
-- /See:/ 'listTransferJobsResponse' smart constructor.
data ListTransferJobsResponse =
  ListTransferJobsResponse'
    { _ltjrNextPageToken :: !(Maybe Text)
    , _ltjrTransferJobs  :: !(Maybe [TransferJob])
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
-- Credentials](http:\/\/docs.aws.amazon.com\/general\/latest\/gr\/aws-security-credentials.html)).
--
-- /See:/ 'awsAccessKey' smart constructor.
data AwsAccessKey =
  AwsAccessKey'
    { _aakSecretAccessKey :: !(Maybe Text)
    , _aakAccessKeyId     :: !(Maybe Text)
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


-- | AWS secret access key. This field is not returned in RPC responses.
-- Required.
aakSecretAccessKey :: Lens' AwsAccessKey (Maybe Text)
aakSecretAccessKey
  = lens _aakSecretAccessKey
      (\ s a -> s{_aakSecretAccessKey = a})

-- | AWS access key ID. Required.
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
