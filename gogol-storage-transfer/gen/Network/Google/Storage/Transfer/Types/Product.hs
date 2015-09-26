{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Storage.Transfer.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Storage.Transfer.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Storage.Transfer.Types.Sum

-- | AWS access key (see [AWS Security
-- Credentials](http:\/\/docs.aws.amazon.com\/general\/latest\/gr\/aws-security-credentials.html)).
--
-- /See:/ 'awsAccessKey' smart constructor.
data AwsAccessKey = AwsAccessKey
    { _aakSecretAccessKey :: !(Maybe Text)
    , _aakAccessKeyId     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    AwsAccessKey
    { _aakSecretAccessKey = Nothing
    , _aakAccessKeyId = Nothing
    }

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

-- | An AwsS3Data can be a data source, but not a data sink. In an AwsS3Data,
-- an object\'s name is the S3 object\'s key name.
--
-- /See:/ 'awsS3Data' smart constructor.
data AwsS3Data = AwsS3Data
    { _asdBucketName   :: !(Maybe Text)
    , _asdAwsAccessKey :: !(Maybe (Maybe AwsAccessKey))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AwsS3Data' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdBucketName'
--
-- * 'asdAwsAccessKey'
awsS3Data
    :: AwsS3Data
awsS3Data =
    AwsS3Data
    { _asdBucketName = Nothing
    , _asdAwsAccessKey = Nothing
    }

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
asdAwsAccessKey :: Lens' AwsS3Data (Maybe (Maybe AwsAccessKey))
asdAwsAccessKey
  = lens _asdAwsAccessKey
      (\ s a -> s{_asdAwsAccessKey = a})

-- | Represents a whole calendar date, e.g. date of birth. The time of day
-- and time zone are either specified elsewhere or are not significant. The
-- date is relative to the Proleptic Gregorian Calendar. The day may be 0
-- to represent a year and month where the day is not significant, e.g.
-- credit card expiration date. The year may be 0 to represent a month and
-- day independent of year, e.g. anniversary date. Related types are
-- [google.type.TimeOfDay][google.type.TimeOfDay] and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date = Date
    { _dDay   :: !(Maybe Int32)
    , _dYear  :: !(Maybe Int32)
    , _dMonth :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
date =
    Date
    { _dDay = Nothing
    , _dYear = Nothing
    , _dMonth = Nothing
    }

-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year\/month where the day is not sigificant.
dDay :: Lens' Date (Maybe Int32)
dDay = lens _dDay (\ s a -> s{_dDay = a})

-- | Year of date. Must be from 1 to 9,999, or 0 if specifying a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear = lens _dYear (\ s a -> s{_dYear = a})

-- | Month of year of date. Must be from 1 to 12.
dMonth :: Lens' Date (Maybe Int32)
dMonth = lens _dMonth (\ s a -> s{_dMonth = a})

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

-- | An entry describing an error that has occurred.
--
-- /See:/ 'errorLogEntry' smart constructor.
data ErrorLogEntry = ErrorLogEntry
    { _eleUrl          :: !(Maybe Text)
    , _eleErrorDetails :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ErrorLogEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eleUrl'
--
-- * 'eleErrorDetails'
errorLogEntry
    :: ErrorLogEntry
errorLogEntry =
    ErrorLogEntry
    { _eleUrl = Nothing
    , _eleErrorDetails = Nothing
    }

-- | A URL that refers to the target (a data source, a data sink, or an
-- object) with which the error is associated. Required.
eleUrl :: Lens' ErrorLogEntry (Maybe Text)
eleUrl = lens _eleUrl (\ s a -> s{_eleUrl = a})

-- | A list of messages that carry the error details.
eleErrorDetails :: Lens' ErrorLogEntry [Text]
eleErrorDetails
  = lens _eleErrorDetails
      (\ s a -> s{_eleErrorDetails = a})
      . _Default
      . _Coerce

-- | A summary of errors by error code, plus a count and sample error log
-- entries.
--
-- /See:/ 'errorSummary' smart constructor.
data ErrorSummary = ErrorSummary
    { _esErrorCount      :: !(Maybe Int64)
    , _esErrorCode       :: !(Maybe Text)
    , _esErrorLogEntries :: !(Maybe [Maybe ErrorLogEntry])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ErrorSummary
    { _esErrorCount = Nothing
    , _esErrorCode = Nothing
    , _esErrorLogEntries = Nothing
    }

-- | Count of this type of error. Required.
esErrorCount :: Lens' ErrorSummary (Maybe Int64)
esErrorCount
  = lens _esErrorCount (\ s a -> s{_esErrorCount = a})

-- | Required.
esErrorCode :: Lens' ErrorSummary (Maybe Text)
esErrorCode
  = lens _esErrorCode (\ s a -> s{_esErrorCode = a})

-- | Error samples.
esErrorLogEntries :: Lens' ErrorSummary [Maybe ErrorLogEntry]
esErrorLogEntries
  = lens _esErrorLogEntries
      (\ s a -> s{_esErrorLogEntries = a})
      . _Default
      . _Coerce

-- | In a GcsData, an object\'s name is the Google Cloud Storage object\'s
-- name and its \`lastModificationTime\` refers to the object\'s updated
-- time, which changes when the content or the metadata of the object is
-- updated.
--
-- /See:/ 'gcsData' smart constructor.
newtype GcsData = GcsData
    { _gdBucketName :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GcsData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdBucketName'
gcsData
    :: GcsData
gcsData =
    GcsData
    { _gdBucketName = Nothing
    }

-- | Google Cloud Storage bucket name (see [Bucket Name
-- Requirements](https:\/\/cloud.google.com\/storage\/docs\/bucket-naming#requirements)).
-- Required.
gdBucketName :: Lens' GcsData (Maybe Text)
gdBucketName
  = lens _gdBucketName (\ s a -> s{_gdBucketName = a})

-- | Google service account
--
-- /See:/ 'googleServiceAccount' smart constructor.
newtype GoogleServiceAccount = GoogleServiceAccount
    { _gsaAccountEmail :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsaAccountEmail'
googleServiceAccount
    :: GoogleServiceAccount
googleServiceAccount =
    GoogleServiceAccount
    { _gsaAccountEmail = Nothing
    }

-- | Required.
gsaAccountEmail :: Lens' GoogleServiceAccount (Maybe Text)
gsaAccountEmail
  = lens _gsaAccountEmail
      (\ s a -> s{_gsaAccountEmail = a})

-- | An HttpData specifies a list of objects on the web to be transferred
-- over HTTP. The information of the objects to be transferred is contained
-- in a file referenced by a URL. The first line in the file must be
-- \"TsvHttpData-1.0\", which specifies the format of the file. Subsequent
-- lines specify the information of the list of objects, one object per
-- list entry. Each entry has the following tab-delimited fields: * HTTP
-- URL * Length * MD5 - This field is a base64-encoded MD5 hash of the
-- object An HTTP URL that points to the object to be transferred. It must
-- be a valid URL with URL scheme HTTP or HTTPS. When an object with URL
-- \`http(s):\/\/hostname:port\/\` is transferred to the data sink, the
-- name of the object at the data sink is \`\/\`. Length and MD5 provide
-- the size and the base64-encoded MD5 hash of the object. If Length does
-- not match the actual length of the object fetched, the object will not
-- be transferred. If MD5 does not match the MD5 computed from the
-- transferred bytes, the object transfer will fail.
-- \`lastModificationTime\` is not available in HttpData objects. The
-- objects that the URL list points to must allow public access. Storage
-- Transfer Service obeys \`robots.txt\` rules and requires the HTTP server
-- to support Range requests and to return a Content-Length header in each
-- response.
--
-- /See:/ 'httpData' smart constructor.
newtype HttpData = HttpData
    { _hdListUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HttpData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hdListUrl'
httpData
    :: HttpData
httpData =
    HttpData
    { _hdListUrl = Nothing
    }

-- | The URL that points to the file that stores the object list entries.
-- This file must allow public access. Currently, only URLs with HTTP and
-- HTTPS schemes are supported. Required.
hdListUrl :: Lens' HttpData (Maybe Text)
hdListUrl
  = lens _hdListUrl (\ s a -> s{_hdListUrl = a})

-- | The response message for
-- [Operations.ListOperations][google.longrunning.Operations.ListOperations].
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Maybe Operation])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ListOperationsResponse
    { _lorNextPageToken = Nothing
    , _lorOperations = Nothing
    }

-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Maybe Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

-- | Response from ListTransferJobs.
--
-- /See:/ 'listTransferJobsResponse' smart constructor.
data ListTransferJobsResponse = ListTransferJobsResponse
    { _ltjrNextPageToken :: !(Maybe Text)
    , _ltjrTransferJobs  :: !(Maybe [Maybe TransferJob])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ListTransferJobsResponse
    { _ltjrNextPageToken = Nothing
    , _ltjrTransferJobs = Nothing
    }

-- | The list next page token.
ltjrNextPageToken :: Lens' ListTransferJobsResponse (Maybe Text)
ltjrNextPageToken
  = lens _ltjrNextPageToken
      (\ s a -> s{_ltjrNextPageToken = a})

-- | A list of transfer jobs.
ltjrTransferJobs :: Lens' ListTransferJobsResponse [Maybe TransferJob]
ltjrTransferJobs
  = lens _ltjrTransferJobs
      (\ s a -> s{_ltjrTransferJobs = a})
      . _Default
      . _Coerce

-- | Conditions that determine which objects will be transferred.
--
-- /See:/ 'objectConditions' smart constructor.
data ObjectConditions = ObjectConditions
    { _ocMinTimeElapsedSinceLastModification :: !(Maybe Text)
    , _ocIncludePrefixes                     :: !(Maybe [Text])
    , _ocMaxTimeElapsedSinceLastModification :: !(Maybe Text)
    , _ocExcludePrefixes                     :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ObjectConditions
    { _ocMinTimeElapsedSinceLastModification = Nothing
    , _ocIncludePrefixes = Nothing
    , _ocMaxTimeElapsedSinceLastModification = Nothing
    , _ocExcludePrefixes = Nothing
    }

-- | If unspecified, \`minTimeElapsedSinceLastModification\` takes a zero
-- value and \`maxTimeElapsedSinceLastModification\` takes the maximum
-- possible value of Duration. Objects that satisfy the object conditions
-- must either have a \`lastModificationTime\` greater or equal to \`NOW\`
-- - \`maxTimeElapsedSinceLastModification\` and less than \`NOW\` -
-- \`minTimeElapsedSinceLastModification\`, or not have a
-- \`lastModificationTime\`.
ocMinTimeElapsedSinceLastModification :: Lens' ObjectConditions (Maybe Text)
ocMinTimeElapsedSinceLastModification
  = lens _ocMinTimeElapsedSinceLastModification
      (\ s a ->
         s{_ocMinTimeElapsedSinceLastModification = a})

-- | If \`includePrefixes\` is specified, objects that satisfy the object
-- conditions must have names that start with one of the
-- \`includePrefixes\` and that do not start with any of the
-- \`excludePrefixes\`. If \`includePrefixes\` is not specified, all
-- objects except those that have names starting with one of the
-- \`excludePrefixes\` must satisfy the object conditions. Requirements: *
-- Each include-prefix and exclude-prefix can contain any sequence of
-- Unicode characters, of max length 1024 bytes when UTF8-encoded, and must
-- not contain Carriage Return or Line Feed characters. Wildcard matching
-- and regular expression matching are not supported. * None of the
-- include-prefix or the exclude-prefix values can be empty, if specified.
-- * Each include-prefix must include a distinct portion of the object
-- namespace, i.e., no include-prefix may be a prefix of another
-- include-prefix. * Each exclude-prefix must exclude a distinct portion of
-- the object namespace, i.e., no exclude-prefix may be a prefix of another
-- exclude-prefix. * If \`includePrefixes\` is specified, then each
-- exclude-prefix must start with the value of a path explicitly included
-- by \`includePrefixes\`. The max size of \`includePrefixes\` is 20.
ocIncludePrefixes :: Lens' ObjectConditions [Text]
ocIncludePrefixes
  = lens _ocIncludePrefixes
      (\ s a -> s{_ocIncludePrefixes = a})
      . _Default
      . _Coerce

-- | \`maxTimeElapsedSinceLastModification\` is the complement to
-- \`minTimeElapsedSinceLastModification\`.
ocMaxTimeElapsedSinceLastModification :: Lens' ObjectConditions (Maybe Text)
ocMaxTimeElapsedSinceLastModification
  = lens _ocMaxTimeElapsedSinceLastModification
      (\ s a ->
         s{_ocMaxTimeElapsedSinceLastModification = a})

-- | \`excludePrefixes\` must follow the requirements described for
-- \`includePrefixes\`. The max size of \`excludePrefixes\` is 20.
ocExcludePrefixes :: Lens' ObjectConditions [Text]
ocExcludePrefixes
  = lens _ocExcludePrefixes
      (\ s a -> s{_ocExcludePrefixes = a})
      . _Default
      . _Coerce

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe (Maybe Status))
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    Operation
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If true, the operation is completed and the \`result\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure.
oError :: Lens' Operation (Maybe (Maybe Status))
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
-- that originally returns it. If you use the default HTTP mapping above,
-- the \`name\` should have the format of
-- \`operations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Represents the transfer operation object.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

-- | Represents the transfer operation object.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata =
    OperationMetadata
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
operationMetadata
    :: OperationMetadata
operationMetadata = OperationMetadata

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
data OperationResponse =
    OperationResponse
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
operationResponse
    :: OperationResponse
operationResponse = OperationResponse

-- | Request passed to PauseTransferOperation.
--
-- /See:/ 'pauseTransferOperationRequest' smart constructor.
data PauseTransferOperationRequest =
    PauseTransferOperationRequest
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PauseTransferOperationRequest' with the minimum fields required to make a request.
--
pauseTransferOperationRequest
    :: PauseTransferOperationRequest
pauseTransferOperationRequest = PauseTransferOperationRequest

-- | Request passed to ResumeTransferOperation.
--
-- /See:/ 'resumeTransferOperationRequest' smart constructor.
data ResumeTransferOperationRequest =
    ResumeTransferOperationRequest
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResumeTransferOperationRequest' with the minimum fields required to make a request.
--
resumeTransferOperationRequest
    :: ResumeTransferOperationRequest
resumeTransferOperationRequest = ResumeTransferOperationRequest

-- | Transfers can be scheduled to recur or to run just once.
--
-- /See:/ 'schedule' smart constructor.
data Schedule = Schedule
    { _sScheduleEndDate   :: !(Maybe (Maybe Date))
    , _sScheduleStartDate :: !(Maybe (Maybe Date))
    , _sStartTimeOfDay    :: !(Maybe (Maybe TimeOfDay))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    Schedule
    { _sScheduleEndDate = Nothing
    , _sScheduleStartDate = Nothing
    , _sStartTimeOfDay = Nothing
    }

-- | The last day the recurring transfer will be run. If \`scheduleEndDate\`
-- is the same as \`scheduleStartDate\`, the transfer will be executed only
-- once.
sScheduleEndDate :: Lens' Schedule (Maybe (Maybe Date))
sScheduleEndDate
  = lens _sScheduleEndDate
      (\ s a -> s{_sScheduleEndDate = a})

-- | The first day the recurring transfer is scheduled to run. Required.
sScheduleStartDate :: Lens' Schedule (Maybe (Maybe Date))
sScheduleStartDate
  = lens _sScheduleStartDate
      (\ s a -> s{_sScheduleStartDate = a})

-- | The time in UTC at which the transfer will be scheduled to start in a
-- day. Transfers may start later than this time. If not specified,
-- transfers are scheduled to start at midnight UTC.
sStartTimeOfDay :: Lens' Schedule (Maybe (Maybe TimeOfDay))
sStartTimeOfDay
  = lens _sStartTimeOfDay
      (\ s a -> s{_sStartTimeOfDay = a})

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of
-- [google.rpc.Code][google.rpc.Code], but it may accept additional error
-- codes if needed. The error message should be a developer-facing English
-- message that helps developers *understand* and *resolve* the error. If a
-- localized user-facing error message is needed, put the localized message
-- in the error details or localize it in the client. The optional error
-- details may contain arbitrary information about the error. There is a
-- predefined set of error detail types in the package \`google.rpc\` which
-- can be used for common error conditions. # Language mapping The
-- \`Status\` message is the logical representation of the error model, but
-- it is not necessarily the actual wire format. When the \`Status\`
-- message is exposed in different client libraries and different wire
-- protocols, it can be mapped differently. For example, it will likely be
-- mapped to some exceptions in Java, but more likely mapped to some error
-- codes in C. # Other uses The error model and the \`Status\` message can
-- be used in a variety of environments, either with or without APIs, to
-- provide a consistent developer experience across different environments.
-- Example uses of this error model include: - Partial errors. If a service
-- needs to return partial errors to the client, it may embed the
-- \`Status\` in the normal response to indicate the partial errors. -
-- Workflow errors. A typical workflow has multiple steps. Each step may
-- have a \`Status\` message for error reporting purpose. - Batch
-- operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
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

-- | The status code, which should be an enum value of
-- [google.rpc.Code][google.rpc.Code].
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

-- | Represents a time of day. The date and time zone are either not
-- significant or are specified elsewhere. An API may chose to allow leap
-- seconds. Related types are [google.type.Date][google.type.Date] and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'timeOfDay' smart constructor.
data TimeOfDay = TimeOfDay
    { _todNanos   :: !(Maybe Int32)
    , _todHours   :: !(Maybe Int32)
    , _todMinutes :: !(Maybe Int32)
    , _todSeconds :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    :: TimeOfDay
timeOfDay =
    TimeOfDay
    { _todNanos = Nothing
    , _todHours = Nothing
    , _todMinutes = Nothing
    , _todSeconds = Nothing
    }

-- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
todNanos :: Lens' TimeOfDay (Maybe Int32)
todNanos = lens _todNanos (\ s a -> s{_todNanos = a})

-- | Hours of day in 24 hour format. Should be from 0 to 23. An API may
-- choose to allow the value \"24:00:00\" for scenarios like business
-- closing time.
todHours :: Lens' TimeOfDay (Maybe Int32)
todHours = lens _todHours (\ s a -> s{_todHours = a})

-- | Minutes of hour of day. Must be from 0 to 59.
todMinutes :: Lens' TimeOfDay (Maybe Int32)
todMinutes
  = lens _todMinutes (\ s a -> s{_todMinutes = a})

-- | Seconds of minutes of the time. Must normally be from 0 to 59. An API
-- may allow the value 60 if it allows leap-seconds.
todSeconds :: Lens' TimeOfDay (Maybe Int32)
todSeconds
  = lens _todSeconds (\ s a -> s{_todSeconds = a})

-- | A collection of counters that report the progress of a transfer
-- operation.
--
-- /See:/ 'transferCounters' smart constructor.
data TransferCounters = TransferCounters
    { _tcBytesFoundOnlyFromSink         :: !(Maybe Int64)
    , _tcBytesDeletedFromSink           :: !(Maybe Int64)
    , _tcObjectsDeletedFromSource       :: !(Maybe Int64)
    , _tcObjectsFoundFromSource         :: !(Maybe Int64)
    , _tcBytesFailedToDeleteFromSink    :: !(Maybe Int64)
    , _tcBytesFromSourceFailed          :: !(Maybe Int64)
    , _tcBytesCopiedToSink              :: !(Maybe Int64)
    , _tcBytesFoundFromSource           :: !(Maybe Int64)
    , _tcBytesDeletedFromSource         :: !(Maybe Int64)
    , _tcObjectsDeletedFromSink         :: !(Maybe Int64)
    , _tcObjectsFoundOnlyFromSink       :: !(Maybe Int64)
    , _tcBytesFromSourceSkippedBySync   :: !(Maybe Int64)
    , _tcObjectsCopiedToSink            :: !(Maybe Int64)
    , _tcObjectsFromSourceFailed        :: !(Maybe Int64)
    , _tcObjectsFailedToDeleteFromSink  :: !(Maybe Int64)
    , _tcObjectsFromSourceSkippedBySync :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TransferCounters
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

-- | Bytes that are deleted from the data sink.
tcBytesDeletedFromSink :: Lens' TransferCounters (Maybe Int64)
tcBytesDeletedFromSink
  = lens _tcBytesDeletedFromSink
      (\ s a -> s{_tcBytesDeletedFromSink = a})

-- | Objects that are deleted from the data source.
tcObjectsDeletedFromSource :: Lens' TransferCounters (Maybe Int64)
tcObjectsDeletedFromSource
  = lens _tcObjectsDeletedFromSource
      (\ s a -> s{_tcObjectsDeletedFromSource = a})

-- | Objects found in the data source that are scheduled to be transferred,
-- which will be copied, excluded based on conditions, or skipped due to
-- failures.
tcObjectsFoundFromSource :: Lens' TransferCounters (Maybe Int64)
tcObjectsFoundFromSource
  = lens _tcObjectsFoundFromSource
      (\ s a -> s{_tcObjectsFoundFromSource = a})

-- | Bytes that failed to be deleted from the data sink.
tcBytesFailedToDeleteFromSink :: Lens' TransferCounters (Maybe Int64)
tcBytesFailedToDeleteFromSink
  = lens _tcBytesFailedToDeleteFromSink
      (\ s a -> s{_tcBytesFailedToDeleteFromSink = a})

-- | Bytes in the data source that failed during the transfer.
tcBytesFromSourceFailed :: Lens' TransferCounters (Maybe Int64)
tcBytesFromSourceFailed
  = lens _tcBytesFromSourceFailed
      (\ s a -> s{_tcBytesFromSourceFailed = a})

-- | Bytes that are copied to the data sink.
tcBytesCopiedToSink :: Lens' TransferCounters (Maybe Int64)
tcBytesCopiedToSink
  = lens _tcBytesCopiedToSink
      (\ s a -> s{_tcBytesCopiedToSink = a})

-- | Bytes found in the data source that are scheduled to be transferred,
-- which will be copied, excluded based on conditions, or skipped due to
-- failures.
tcBytesFoundFromSource :: Lens' TransferCounters (Maybe Int64)
tcBytesFoundFromSource
  = lens _tcBytesFoundFromSource
      (\ s a -> s{_tcBytesFoundFromSource = a})

-- | Bytes that are deleted from the data source.
tcBytesDeletedFromSource :: Lens' TransferCounters (Maybe Int64)
tcBytesDeletedFromSource
  = lens _tcBytesDeletedFromSource
      (\ s a -> s{_tcBytesDeletedFromSource = a})

-- | Objects that are deleted from the data sink.
tcObjectsDeletedFromSink :: Lens' TransferCounters (Maybe Int64)
tcObjectsDeletedFromSink
  = lens _tcObjectsDeletedFromSink
      (\ s a -> s{_tcObjectsDeletedFromSink = a})

-- | Objects found only in the data sink that are scheduled to be deleted.
tcObjectsFoundOnlyFromSink :: Lens' TransferCounters (Maybe Int64)
tcObjectsFoundOnlyFromSink
  = lens _tcObjectsFoundOnlyFromSink
      (\ s a -> s{_tcObjectsFoundOnlyFromSink = a})

-- | Bytes in the data source that are not transferred because they already
-- exist in the data sink.
tcBytesFromSourceSkippedBySync :: Lens' TransferCounters (Maybe Int64)
tcBytesFromSourceSkippedBySync
  = lens _tcBytesFromSourceSkippedBySync
      (\ s a -> s{_tcBytesFromSourceSkippedBySync = a})

-- | Objects that are copied to the data sink.
tcObjectsCopiedToSink :: Lens' TransferCounters (Maybe Int64)
tcObjectsCopiedToSink
  = lens _tcObjectsCopiedToSink
      (\ s a -> s{_tcObjectsCopiedToSink = a})

-- | Objects in the data source that failed during the transfer.
tcObjectsFromSourceFailed :: Lens' TransferCounters (Maybe Int64)
tcObjectsFromSourceFailed
  = lens _tcObjectsFromSourceFailed
      (\ s a -> s{_tcObjectsFromSourceFailed = a})

-- | Objects that failed to be deleted from the data sink.
tcObjectsFailedToDeleteFromSink :: Lens' TransferCounters (Maybe Int64)
tcObjectsFailedToDeleteFromSink
  = lens _tcObjectsFailedToDeleteFromSink
      (\ s a -> s{_tcObjectsFailedToDeleteFromSink = a})

-- | Objects in the data source that are not transferred because they already
-- exist in the data sink.
tcObjectsFromSourceSkippedBySync :: Lens' TransferCounters (Maybe Int64)
tcObjectsFromSourceSkippedBySync
  = lens _tcObjectsFromSourceSkippedBySync
      (\ s a -> s{_tcObjectsFromSourceSkippedBySync = a})

-- | This resource represents the configuration of a transfer job that runs
-- periodically.
--
-- /See:/ 'transferJob' smart constructor.
data TransferJob = TransferJob
    { _tjCreationTime         :: !(Maybe Text)
    , _tjStatus               :: !(Maybe Text)
    , _tjSchedule             :: !(Maybe (Maybe Schedule))
    , _tjDeletionTime         :: !(Maybe Text)
    , _tjName                 :: !(Maybe Text)
    , _tjProjectId            :: !(Maybe Text)
    , _tjTransferSpec         :: !(Maybe (Maybe TransferSpec))
    , _tjDescription          :: !(Maybe Text)
    , _tjLastModificationTime :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TransferJob
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
tjCreationTime :: Lens' TransferJob (Maybe Text)
tjCreationTime
  = lens _tjCreationTime
      (\ s a -> s{_tjCreationTime = a})

-- | Status of the job. This value MUST be specified for
-- \`CreateTransferJobRequests\`. NOTE: The effect of the new job status
-- takes place during a subsequent job run. For example, if you change the
-- job status from \`ENABLED\` to \`DISABLED\`, and an operation spawned by
-- the transfer is running, the status change would not affect the current
-- operation.
tjStatus :: Lens' TransferJob (Maybe Text)
tjStatus = lens _tjStatus (\ s a -> s{_tjStatus = a})

-- | Schedule specification. Required.
tjSchedule :: Lens' TransferJob (Maybe (Maybe Schedule))
tjSchedule
  = lens _tjSchedule (\ s a -> s{_tjSchedule = a})

-- | This field cannot be changed by user requests.
tjDeletionTime :: Lens' TransferJob (Maybe Text)
tjDeletionTime
  = lens _tjDeletionTime
      (\ s a -> s{_tjDeletionTime = a})

-- | A globally unique name assigned by Storage Transfer Service when the job
-- is created. This field should be left empty in requests to create a new
-- transfer job; otherwise, the requests result in an \`INVALID_ARGUMENT\`
-- error.
tjName :: Lens' TransferJob (Maybe Text)
tjName = lens _tjName (\ s a -> s{_tjName = a})

-- | The ID of the Google Developers Console project that owns the job.
-- Required.
tjProjectId :: Lens' TransferJob (Maybe Text)
tjProjectId
  = lens _tjProjectId (\ s a -> s{_tjProjectId = a})

-- | Transfer specification. Required.
tjTransferSpec :: Lens' TransferJob (Maybe (Maybe TransferSpec))
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
tjLastModificationTime :: Lens' TransferJob (Maybe Text)
tjLastModificationTime
  = lens _tjLastModificationTime
      (\ s a -> s{_tjLastModificationTime = a})

-- | A description of the execution of a transfer.
--
-- /See:/ 'transferOperation' smart constructor.
data TransferOperation = TransferOperation
    { _toStatus          :: !(Maybe Text)
    , _toCounters        :: !(Maybe (Maybe TransferCounters))
    , _toStartTime       :: !(Maybe Text)
    , _toTransferJobName :: !(Maybe Text)
    , _toName            :: !(Maybe Text)
    , _toEndTime         :: !(Maybe Text)
    , _toProjectId       :: !(Maybe Text)
    , _toTransferSpec    :: !(Maybe (Maybe TransferSpec))
    , _toErrorBreakdowns :: !(Maybe [Maybe ErrorSummary])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TransferOperation
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
toStatus :: Lens' TransferOperation (Maybe Text)
toStatus = lens _toStatus (\ s a -> s{_toStatus = a})

-- | Information about the progress of the transfer operation.
toCounters :: Lens' TransferOperation (Maybe (Maybe TransferCounters))
toCounters
  = lens _toCounters (\ s a -> s{_toCounters = a})

-- | Start time of this transfer execution.
toStartTime :: Lens' TransferOperation (Maybe Text)
toStartTime
  = lens _toStartTime (\ s a -> s{_toStartTime = a})

-- | The name of the transfer job that triggers this transfer operation.
toTransferJobName :: Lens' TransferOperation (Maybe Text)
toTransferJobName
  = lens _toTransferJobName
      (\ s a -> s{_toTransferJobName = a})

-- | A globally unique ID assigned by the system.
toName :: Lens' TransferOperation (Maybe Text)
toName = lens _toName (\ s a -> s{_toName = a})

-- | End time of this transfer execution.
toEndTime :: Lens' TransferOperation (Maybe Text)
toEndTime
  = lens _toEndTime (\ s a -> s{_toEndTime = a})

-- | The ID of the Google Developers Console project that owns the operation.
-- Required.
toProjectId :: Lens' TransferOperation (Maybe Text)
toProjectId
  = lens _toProjectId (\ s a -> s{_toProjectId = a})

-- | Transfer specification. Required.
toTransferSpec :: Lens' TransferOperation (Maybe (Maybe TransferSpec))
toTransferSpec
  = lens _toTransferSpec
      (\ s a -> s{_toTransferSpec = a})

-- | Summarizes errors encountered with sample error log entries.
toErrorBreakdowns :: Lens' TransferOperation [Maybe ErrorSummary]
toErrorBreakdowns
  = lens _toErrorBreakdowns
      (\ s a -> s{_toErrorBreakdowns = a})
      . _Default
      . _Coerce

-- | TransferOptions uses three boolean parameters to define the actions to
-- be performed on objects in a transfer.
--
-- /See:/ 'transferOptions' smart constructor.
data TransferOptions = TransferOptions
    { _toDeleteObjectsUniqueInSink             :: !(Maybe Bool)
    , _toDeleteObjectsFromSourceAfterTransfer  :: !(Maybe Bool)
    , _toOverwriteObjectsAlreadyExistingInSink :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TransferOptions
    { _toDeleteObjectsUniqueInSink = Nothing
    , _toDeleteObjectsFromSourceAfterTransfer = Nothing
    , _toOverwriteObjectsAlreadyExistingInSink = Nothing
    }

-- | Whether objects that exist only in the sink should be deleted.
toDeleteObjectsUniqueInSink :: Lens' TransferOptions (Maybe Bool)
toDeleteObjectsUniqueInSink
  = lens _toDeleteObjectsUniqueInSink
      (\ s a -> s{_toDeleteObjectsUniqueInSink = a})

-- | Whether objects should be deleted from the source after they are
-- transferred to the sink.
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

-- | Configuration for running a transfer.
--
-- /See:/ 'transferSpec' smart constructor.
data TransferSpec = TransferSpec
    { _tsGcsDataSource    :: !(Maybe (Maybe GcsData))
    , _tsObjectConditions :: !(Maybe (Maybe ObjectConditions))
    , _tsHttpDataSource   :: !(Maybe (Maybe HttpData))
    , _tsAwsS3DataSource  :: !(Maybe (Maybe AwsS3Data))
    , _tsGcsDataSink      :: !(Maybe (Maybe GcsData))
    , _tsTransferOptions  :: !(Maybe (Maybe TransferOptions))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsGcsDataSource'
--
-- * 'tsObjectConditions'
--
-- * 'tsHttpDataSource'
--
-- * 'tsAwsS3DataSource'
--
-- * 'tsGcsDataSink'
--
-- * 'tsTransferOptions'
transferSpec
    :: TransferSpec
transferSpec =
    TransferSpec
    { _tsGcsDataSource = Nothing
    , _tsObjectConditions = Nothing
    , _tsHttpDataSource = Nothing
    , _tsAwsS3DataSource = Nothing
    , _tsGcsDataSink = Nothing
    , _tsTransferOptions = Nothing
    }

-- | A Google Cloud Storage data source.
tsGcsDataSource :: Lens' TransferSpec (Maybe (Maybe GcsData))
tsGcsDataSource
  = lens _tsGcsDataSource
      (\ s a -> s{_tsGcsDataSource = a})

-- | Only objects that satisfy these object conditions are included in the
-- set of data source and data sink objects. Object conditions based on
-- objects\' \`lastModificationTime\` do not exclude objects in a data
-- sink.
tsObjectConditions :: Lens' TransferSpec (Maybe (Maybe ObjectConditions))
tsObjectConditions
  = lens _tsObjectConditions
      (\ s a -> s{_tsObjectConditions = a})

-- | An HTTP URL data source.
tsHttpDataSource :: Lens' TransferSpec (Maybe (Maybe HttpData))
tsHttpDataSource
  = lens _tsHttpDataSource
      (\ s a -> s{_tsHttpDataSource = a})

-- | An AWS S3 data source.
tsAwsS3DataSource :: Lens' TransferSpec (Maybe (Maybe AwsS3Data))
tsAwsS3DataSource
  = lens _tsAwsS3DataSource
      (\ s a -> s{_tsAwsS3DataSource = a})

-- | A Google Cloud Storage data sink.
tsGcsDataSink :: Lens' TransferSpec (Maybe (Maybe GcsData))
tsGcsDataSink
  = lens _tsGcsDataSink
      (\ s a -> s{_tsGcsDataSink = a})

-- | If the option \`deleteObjectsUniqueInSink\` is \`true\`, object
-- conditions based on objects\' \`lastModificationTime\` are ignored and
-- do not exclude objects in a data source or a data sink.
tsTransferOptions :: Lens' TransferSpec (Maybe (Maybe TransferOptions))
tsTransferOptions
  = lens _tsTransferOptions
      (\ s a -> s{_tsTransferOptions = a})

-- | Request passed to UpdateTransferJob.
--
-- /See:/ 'updateTransferJobRequest' smart constructor.
data UpdateTransferJobRequest = UpdateTransferJobRequest
    { _utjrTransferJob                :: !(Maybe (Maybe TransferJob))
    , _utjrProjectId                  :: !(Maybe Text)
    , _utjrUpdateTransferJobFieldMask :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    UpdateTransferJobRequest
    { _utjrTransferJob = Nothing
    , _utjrProjectId = Nothing
    , _utjrUpdateTransferJobFieldMask = Nothing
    }

-- | The job to update. Required.
utjrTransferJob :: Lens' UpdateTransferJobRequest (Maybe (Maybe TransferJob))
utjrTransferJob
  = lens _utjrTransferJob
      (\ s a -> s{_utjrTransferJob = a})

-- | The ID of the Google Developers Console project that owns the job.
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
utjrUpdateTransferJobFieldMask :: Lens' UpdateTransferJobRequest (Maybe Text)
utjrUpdateTransferJobFieldMask
  = lens _utjrUpdateTransferJobFieldMask
      (\ s a -> s{_utjrUpdateTransferJobFieldMask = a})
