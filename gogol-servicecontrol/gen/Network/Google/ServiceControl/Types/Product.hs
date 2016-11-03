{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceControl.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceControl.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ServiceControl.Types.Sum

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

-- | Request message for the Report method.
--
-- /See:/ 'reportRequest' smart constructor.
newtype ReportRequest = ReportRequest'
    { _rrOperations :: Maybe [Operation]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrOperations'
reportRequest
    :: ReportRequest
reportRequest =
    ReportRequest'
    { _rrOperations = Nothing
    }

-- | Operations to be reported. Typically the service should report one
-- operation per request. Putting multiple operations into a single request
-- is allowed, but should be used only when multiple operations are
-- natually available at the time of the report. If multiple operations are
-- in a single request, the total request size should be no larger than
-- 1MB. See ReportResponse.report_errors for partial failure behavior.
rrOperations :: Lens' ReportRequest [Operation]
rrOperations
  = lens _rrOperations (\ s a -> s{_rrOperations = a})
      . _Default
      . _Coerce

instance FromJSON ReportRequest where
        parseJSON
          = withObject "ReportRequest"
              (\ o ->
                 ReportRequest' <$> (o .:? "operations" .!= mempty))

instance ToJSON ReportRequest where
        toJSON ReportRequest'{..}
          = object
              (catMaybes [("operations" .=) <$> _rrOperations])

-- | Request message for the Check method.
--
-- /See:/ 'checkRequest' smart constructor.
newtype CheckRequest = CheckRequest'
    { _crOperation :: Maybe Operation
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CheckRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crOperation'
checkRequest
    :: CheckRequest
checkRequest =
    CheckRequest'
    { _crOperation = Nothing
    }

-- | The operation to be checked.
crOperation :: Lens' CheckRequest (Maybe Operation)
crOperation
  = lens _crOperation (\ s a -> s{_crOperation = a})

instance FromJSON CheckRequest where
        parseJSON
          = withObject "CheckRequest"
              (\ o -> CheckRequest' <$> (o .:? "operation"))

instance ToJSON CheckRequest where
        toJSON CheckRequest'{..}
          = object
              (catMaybes [("operation" .=) <$> _crOperation])

-- | The labels describing the metric value. See comments on
-- google.api.servicecontrol.v1.Operation.labels for the overriding
-- relationship.
--
-- /See:/ 'metricValueLabels' smart constructor.
newtype MetricValueLabels = MetricValueLabels'
    { _mvlAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricValueLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvlAddtional'
metricValueLabels
    :: HashMap Text Text -- ^ 'mvlAddtional'
    -> MetricValueLabels
metricValueLabels pMvlAddtional_ =
    MetricValueLabels'
    { _mvlAddtional = _Coerce # pMvlAddtional_
    }

mvlAddtional :: Lens' MetricValueLabels (HashMap Text Text)
mvlAddtional
  = lens _mvlAddtional (\ s a -> s{_mvlAddtional = a})
      . _Coerce

instance FromJSON MetricValueLabels where
        parseJSON
          = withObject "MetricValueLabels"
              (\ o -> MetricValueLabels' <$> (parseJSONObject o))

instance ToJSON MetricValueLabels where
        toJSON = toJSON . _mvlAddtional

-- | Distribution represents a frequency distribution of double-valued sample
-- points. It contains the size of the population of sample points plus
-- additional optional information: - the arithmetic mean of the samples -
-- the minimum and maximum of the samples - the sum-squared-deviation of
-- the samples, used to compute variance - a histogram of the values of the
-- sample points
--
-- /See:/ 'distribution' smart constructor.
data Distribution = Distribution'
    { _dSumOfSquaredDeviation :: !(Maybe (Textual Double))
    , _dMean                  :: !(Maybe (Textual Double))
    , _dExponentialBuckets    :: !(Maybe ExponentialBuckets)
    , _dMaximum               :: !(Maybe (Textual Double))
    , _dLinearBuckets         :: !(Maybe LinearBuckets)
    , _dCount                 :: !(Maybe (Textual Int64))
    , _dMinimum               :: !(Maybe (Textual Double))
    , _dBucketCounts          :: !(Maybe [Textual Int64])
    , _dExplicitBuckets       :: !(Maybe ExplicitBuckets)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Distribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSumOfSquaredDeviation'
--
-- * 'dMean'
--
-- * 'dExponentialBuckets'
--
-- * 'dMaximum'
--
-- * 'dLinearBuckets'
--
-- * 'dCount'
--
-- * 'dMinimum'
--
-- * 'dBucketCounts'
--
-- * 'dExplicitBuckets'
distribution
    :: Distribution
distribution =
    Distribution'
    { _dSumOfSquaredDeviation = Nothing
    , _dMean = Nothing
    , _dExponentialBuckets = Nothing
    , _dMaximum = Nothing
    , _dLinearBuckets = Nothing
    , _dCount = Nothing
    , _dMinimum = Nothing
    , _dBucketCounts = Nothing
    , _dExplicitBuckets = Nothing
    }

-- | The sum of squared deviations from the mean: Sum[i=1..count]((x_i -
-- mean)^2) where each x_i is a sample values. If \`count\` is zero then
-- this field must be zero, otherwise validation of the request fails.
dSumOfSquaredDeviation :: Lens' Distribution (Maybe Double)
dSumOfSquaredDeviation
  = lens _dSumOfSquaredDeviation
      (\ s a -> s{_dSumOfSquaredDeviation = a})
      . mapping _Coerce

-- | The arithmetic mean of the samples in the distribution. If \`count\` is
-- zero then this field must be zero.
dMean :: Lens' Distribution (Maybe Double)
dMean
  = lens _dMean (\ s a -> s{_dMean = a}) .
      mapping _Coerce

-- | Buckets with exponentially growing width.
dExponentialBuckets :: Lens' Distribution (Maybe ExponentialBuckets)
dExponentialBuckets
  = lens _dExponentialBuckets
      (\ s a -> s{_dExponentialBuckets = a})

-- | The maximum of the population of values. Ignored if \`count\` is zero.
dMaximum :: Lens' Distribution (Maybe Double)
dMaximum
  = lens _dMaximum (\ s a -> s{_dMaximum = a}) .
      mapping _Coerce

-- | Buckets with constant width.
dLinearBuckets :: Lens' Distribution (Maybe LinearBuckets)
dLinearBuckets
  = lens _dLinearBuckets
      (\ s a -> s{_dLinearBuckets = a})

-- | The total number of samples in the distribution. Must be >= 0.
dCount :: Lens' Distribution (Maybe Int64)
dCount
  = lens _dCount (\ s a -> s{_dCount = a}) .
      mapping _Coerce

-- | The minimum of the population of values. Ignored if \`count\` is zero.
dMinimum :: Lens' Distribution (Maybe Double)
dMinimum
  = lens _dMinimum (\ s a -> s{_dMinimum = a}) .
      mapping _Coerce

-- | The number of samples in each histogram bucket. \`bucket_counts\` are
-- optional. If present, they must sum to the \`count\` value. The buckets
-- are defined below in \`bucket_option\`. There are N buckets.
-- \`bucket_counts[0]\` is the number of samples in the underflow bucket.
-- \`bucket_counts[1]\` to \`bucket_counts[N-1]\` are the numbers of
-- samples in each of the finite buckets. And \`bucket_counts[N] is the
-- number of samples in the overflow bucket. See the comments of
-- \`bucket_option\` below for more details. Any suffix of trailing zeros
-- may be omitted.
dBucketCounts :: Lens' Distribution [Int64]
dBucketCounts
  = lens _dBucketCounts
      (\ s a -> s{_dBucketCounts = a})
      . _Default
      . _Coerce

-- | Buckets with arbitrary user-provided width.
dExplicitBuckets :: Lens' Distribution (Maybe ExplicitBuckets)
dExplicitBuckets
  = lens _dExplicitBuckets
      (\ s a -> s{_dExplicitBuckets = a})

instance FromJSON Distribution where
        parseJSON
          = withObject "Distribution"
              (\ o ->
                 Distribution' <$>
                   (o .:? "sumOfSquaredDeviation") <*> (o .:? "mean")
                     <*> (o .:? "exponentialBuckets")
                     <*> (o .:? "maximum")
                     <*> (o .:? "linearBuckets")
                     <*> (o .:? "count")
                     <*> (o .:? "minimum")
                     <*> (o .:? "bucketCounts" .!= mempty)
                     <*> (o .:? "explicitBuckets"))

instance ToJSON Distribution where
        toJSON Distribution'{..}
          = object
              (catMaybes
                 [("sumOfSquaredDeviation" .=) <$>
                    _dSumOfSquaredDeviation,
                  ("mean" .=) <$> _dMean,
                  ("exponentialBuckets" .=) <$> _dExponentialBuckets,
                  ("maximum" .=) <$> _dMaximum,
                  ("linearBuckets" .=) <$> _dLinearBuckets,
                  ("count" .=) <$> _dCount,
                  ("minimum" .=) <$> _dMinimum,
                  ("bucketCounts" .=) <$> _dBucketCounts,
                  ("explicitBuckets" .=) <$> _dExplicitBuckets])

-- | Describing buckets with exponentially growing width.
--
-- /See:/ 'exponentialBuckets' smart constructor.
data ExponentialBuckets = ExponentialBuckets'
    { _ebGrowthFactor     :: !(Maybe (Textual Double))
    , _ebScale            :: !(Maybe (Textual Double))
    , _ebNumFiniteBuckets :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExponentialBuckets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebGrowthFactor'
--
-- * 'ebScale'
--
-- * 'ebNumFiniteBuckets'
exponentialBuckets
    :: ExponentialBuckets
exponentialBuckets =
    ExponentialBuckets'
    { _ebGrowthFactor = Nothing
    , _ebScale = Nothing
    , _ebNumFiniteBuckets = Nothing
    }

-- | The i\'th exponential bucket covers the interval [scale *
-- growth_factor^(i-1), scale * growth_factor^i) where i ranges from 1 to
-- num_finite_buckets inclusive. Must be larger than 1.0.
ebGrowthFactor :: Lens' ExponentialBuckets (Maybe Double)
ebGrowthFactor
  = lens _ebGrowthFactor
      (\ s a -> s{_ebGrowthFactor = a})
      . mapping _Coerce

-- | The i\'th exponential bucket covers the interval [scale *
-- growth_factor^(i-1), scale * growth_factor^i) where i ranges from 1 to
-- num_finite_buckets inclusive. Must be > 0.
ebScale :: Lens' ExponentialBuckets (Maybe Double)
ebScale
  = lens _ebScale (\ s a -> s{_ebScale = a}) .
      mapping _Coerce

-- | The number of finite buckets. With the underflow and overflow buckets,
-- the total number of buckets is \`num_finite_buckets\` + 2. See comments
-- on \`bucket_options\` for details.
ebNumFiniteBuckets :: Lens' ExponentialBuckets (Maybe Int32)
ebNumFiniteBuckets
  = lens _ebNumFiniteBuckets
      (\ s a -> s{_ebNumFiniteBuckets = a})
      . mapping _Coerce

instance FromJSON ExponentialBuckets where
        parseJSON
          = withObject "ExponentialBuckets"
              (\ o ->
                 ExponentialBuckets' <$>
                   (o .:? "growthFactor") <*> (o .:? "scale") <*>
                     (o .:? "numFiniteBuckets"))

instance ToJSON ExponentialBuckets where
        toJSON ExponentialBuckets'{..}
          = object
              (catMaybes
                 [("growthFactor" .=) <$> _ebGrowthFactor,
                  ("scale" .=) <$> _ebScale,
                  ("numFiniteBuckets" .=) <$> _ebNumFiniteBuckets])

-- | Represents information regarding an operation.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oImportance      :: !(Maybe OperationImportance)
    , _oStartTime       :: !(Maybe DateTime')
    , _oEndTime         :: !(Maybe DateTime')
    , _oOperationName   :: !(Maybe Text)
    , _oLabels          :: !(Maybe OperationLabels)
    , _oOperationId     :: !(Maybe Text)
    , _oConsumerId      :: !(Maybe Text)
    , _oMetricValueSets :: !(Maybe [MetricValueSet])
    , _oLogEntries      :: !(Maybe [LogEntry])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oImportance'
--
-- * 'oStartTime'
--
-- * 'oEndTime'
--
-- * 'oOperationName'
--
-- * 'oLabels'
--
-- * 'oOperationId'
--
-- * 'oConsumerId'
--
-- * 'oMetricValueSets'
--
-- * 'oLogEntries'
operation
    :: Operation
operation =
    Operation'
    { _oImportance = Nothing
    , _oStartTime = Nothing
    , _oEndTime = Nothing
    , _oOperationName = Nothing
    , _oLabels = Nothing
    , _oOperationId = Nothing
    , _oConsumerId = Nothing
    , _oMetricValueSets = Nothing
    , _oLogEntries = Nothing
    }

-- | DO NOT USE. This is an experimental field.
oImportance :: Lens' Operation (Maybe OperationImportance)
oImportance
  = lens _oImportance (\ s a -> s{_oImportance = a})

-- | Required. Start time of the operation.
oStartTime :: Lens' Operation (Maybe UTCTime)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a}) .
      mapping _DateTime

-- | End time of the operation. Required when the operation is used in
-- ServiceController.Report, but optional when the operation is used in
-- ServiceController.Check.
oEndTime :: Lens' Operation (Maybe UTCTime)
oEndTime
  = lens _oEndTime (\ s a -> s{_oEndTime = a}) .
      mapping _DateTime

-- | Fully qualified name of the operation. Reserved for future use.
oOperationName :: Lens' Operation (Maybe Text)
oOperationName
  = lens _oOperationName
      (\ s a -> s{_oOperationName = a})

-- | Labels describing the operation. Only the following labels are allowed:
-- - Labels describing monitored resources as defined in the service
-- configuration. - Default labels of metric values. When specified, labels
-- defined in the metric value override these default. - The following
-- labels defined by Google Cloud Platform: -
-- \`cloud.googleapis.com\/location\` describing the location where the
-- operation happened, - \`servicecontrol.googleapis.com\/user_agent\`
-- describing the user agent of the API request, -
-- \`servicecontrol.googleapis.com\/service_agent\` describing the service
-- used to handle the API request (e.g. ESP), -
-- \`servicecontrol.googleapis.com\/platform\` describing the platform
-- where the API is served (e.g. GAE, GCE, GKE).
oLabels :: Lens' Operation (Maybe OperationLabels)
oLabels = lens _oLabels (\ s a -> s{_oLabels = a})

-- | Identity of the operation. This must be unique within the scope of the
-- service that generated the operation. If the service calls Check() and
-- Report() on the same operation, the two calls should carry the same id.
-- UUID version 4 is recommended, though not required. In scenarios where
-- an operation is computed from existing information and an idempotent id
-- is desirable for deduplication purpose, UUID version 5 is recommended.
-- See RFC 4122 for details.
oOperationId :: Lens' Operation (Maybe Text)
oOperationId
  = lens _oOperationId (\ s a -> s{_oOperationId = a})

-- | Identity of the consumer who is using the service. This field should be
-- filled in for the operations initiated by a consumer, but not for
-- service-initiated operations that are not related to a specific
-- consumer. This can be in one of the following formats: project:,
-- project_number:, api_key:.
oConsumerId :: Lens' Operation (Maybe Text)
oConsumerId
  = lens _oConsumerId (\ s a -> s{_oConsumerId = a})

-- | Represents information about this operation. Each MetricValueSet
-- corresponds to a metric defined in the service configuration. The data
-- type used in the MetricValueSet must agree with the data type specified
-- in the metric definition. Within a single operation, it is not allowed
-- to have more than one MetricValue instances that have the same metric
-- names and identical label value combinations. If a request has such
-- duplicated MetricValue instances, the entire request is rejected with an
-- invalid argument error.
oMetricValueSets :: Lens' Operation [MetricValueSet]
oMetricValueSets
  = lens _oMetricValueSets
      (\ s a -> s{_oMetricValueSets = a})
      . _Default
      . _Coerce

-- | Represents information to be logged.
oLogEntries :: Lens' Operation [LogEntry]
oLogEntries
  = lens _oLogEntries (\ s a -> s{_oLogEntries = a}) .
      _Default
      . _Coerce

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "importance") <*> (o .:? "startTime") <*>
                     (o .:? "endTime")
                     <*> (o .:? "operationName")
                     <*> (o .:? "labels")
                     <*> (o .:? "operationId")
                     <*> (o .:? "consumerId")
                     <*> (o .:? "metricValueSets" .!= mempty)
                     <*> (o .:? "logEntries" .!= mempty))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("importance" .=) <$> _oImportance,
                  ("startTime" .=) <$> _oStartTime,
                  ("endTime" .=) <$> _oEndTime,
                  ("operationName" .=) <$> _oOperationName,
                  ("labels" .=) <$> _oLabels,
                  ("operationId" .=) <$> _oOperationId,
                  ("consumerId" .=) <$> _oConsumerId,
                  ("metricValueSets" .=) <$> _oMetricValueSets,
                  ("logEntries" .=) <$> _oLogEntries])

-- | Represents a set of metric values in the same metric. Each metric value
-- in the set should have a unique combination of start time, end time, and
-- label values.
--
-- /See:/ 'metricValueSet' smart constructor.
data MetricValueSet = MetricValueSet'
    { _mvsMetricName   :: !(Maybe Text)
    , _mvsMetricValues :: !(Maybe [MetricValue])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricValueSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvsMetricName'
--
-- * 'mvsMetricValues'
metricValueSet
    :: MetricValueSet
metricValueSet =
    MetricValueSet'
    { _mvsMetricName = Nothing
    , _mvsMetricValues = Nothing
    }

-- | The metric name defined in the service configuration.
mvsMetricName :: Lens' MetricValueSet (Maybe Text)
mvsMetricName
  = lens _mvsMetricName
      (\ s a -> s{_mvsMetricName = a})

-- | The values in this metric.
mvsMetricValues :: Lens' MetricValueSet [MetricValue]
mvsMetricValues
  = lens _mvsMetricValues
      (\ s a -> s{_mvsMetricValues = a})
      . _Default
      . _Coerce

instance FromJSON MetricValueSet where
        parseJSON
          = withObject "MetricValueSet"
              (\ o ->
                 MetricValueSet' <$>
                   (o .:? "metricName") <*>
                     (o .:? "metricValues" .!= mempty))

instance ToJSON MetricValueSet where
        toJSON MetricValueSet'{..}
          = object
              (catMaybes
                 [("metricName" .=) <$> _mvsMetricName,
                  ("metricValues" .=) <$> _mvsMetricValues])

-- | A set of user-defined (key, value) data that provides additional
-- information about the log entry.
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

-- | The log entry payload, represented as a protocol buffer that is
-- expressed as a JSON object. You can only pass \`protoPayload\` values
-- that belong to a set of approved types.
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

-- | Properties of the object. Contains field \'type with type URL.
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

-- | Describing buckets with constant width.
--
-- /See:/ 'linearBuckets' smart constructor.
data LinearBuckets = LinearBuckets'
    { _lbOffSet           :: !(Maybe (Textual Double))
    , _lbWidth            :: !(Maybe (Textual Double))
    , _lbNumFiniteBuckets :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinearBuckets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbOffSet'
--
-- * 'lbWidth'
--
-- * 'lbNumFiniteBuckets'
linearBuckets
    :: LinearBuckets
linearBuckets =
    LinearBuckets'
    { _lbOffSet = Nothing
    , _lbWidth = Nothing
    , _lbNumFiniteBuckets = Nothing
    }

-- | The i\'th linear bucket covers the interval [offset + (i-1) * width,
-- offset + i * width) where i ranges from 1 to num_finite_buckets,
-- inclusive.
lbOffSet :: Lens' LinearBuckets (Maybe Double)
lbOffSet
  = lens _lbOffSet (\ s a -> s{_lbOffSet = a}) .
      mapping _Coerce

-- | The i\'th linear bucket covers the interval [offset + (i-1) * width,
-- offset + i * width) where i ranges from 1 to num_finite_buckets,
-- inclusive. Must be strictly positive.
lbWidth :: Lens' LinearBuckets (Maybe Double)
lbWidth
  = lens _lbWidth (\ s a -> s{_lbWidth = a}) .
      mapping _Coerce

-- | The number of finite buckets. With the underflow and overflow buckets,
-- the total number of buckets is \`num_finite_buckets\` + 2. See comments
-- on \`bucket_options\` for details.
lbNumFiniteBuckets :: Lens' LinearBuckets (Maybe Int32)
lbNumFiniteBuckets
  = lens _lbNumFiniteBuckets
      (\ s a -> s{_lbNumFiniteBuckets = a})
      . mapping _Coerce

instance FromJSON LinearBuckets where
        parseJSON
          = withObject "LinearBuckets"
              (\ o ->
                 LinearBuckets' <$>
                   (o .:? "offset") <*> (o .:? "width") <*>
                     (o .:? "numFiniteBuckets"))

instance ToJSON LinearBuckets where
        toJSON LinearBuckets'{..}
          = object
              (catMaybes
                 [("offset" .=) <$> _lbOffSet,
                  ("width" .=) <$> _lbWidth,
                  ("numFiniteBuckets" .=) <$> _lbNumFiniteBuckets])

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

-- | Defines the errors to be returned in
-- google.api.servicecontrol.v1.CheckResponse.check_errors.
--
-- /See:/ 'checkError' smart constructor.
data CheckError = CheckError'
    { _ceCode   :: !(Maybe CheckErrorCode)
    , _ceDetail :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CheckError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceCode'
--
-- * 'ceDetail'
checkError
    :: CheckError
checkError =
    CheckError'
    { _ceCode = Nothing
    , _ceDetail = Nothing
    }

-- | The error code.
ceCode :: Lens' CheckError (Maybe CheckErrorCode)
ceCode = lens _ceCode (\ s a -> s{_ceCode = a})

-- | Free-form text providing details on the error cause of the error.
ceDetail :: Lens' CheckError (Maybe Text)
ceDetail = lens _ceDetail (\ s a -> s{_ceDetail = a})

instance FromJSON CheckError where
        parseJSON
          = withObject "CheckError"
              (\ o ->
                 CheckError' <$> (o .:? "code") <*> (o .:? "detail"))

instance ToJSON CheckError where
        toJSON CheckError'{..}
          = object
              (catMaybes
                 [("code" .=) <$> _ceCode,
                  ("detail" .=) <$> _ceDetail])

-- | Represents the processing error of one \`Operation\` in the request.
--
-- /See:/ 'reportError' smart constructor.
data ReportError = ReportError'
    { _reStatus      :: !(Maybe Status)
    , _reOperationId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reStatus'
--
-- * 'reOperationId'
reportError
    :: ReportError
reportError =
    ReportError'
    { _reStatus = Nothing
    , _reOperationId = Nothing
    }

-- | Details of the error when processing the \`Operation\`.
reStatus :: Lens' ReportError (Maybe Status)
reStatus = lens _reStatus (\ s a -> s{_reStatus = a})

-- | The Operation.operation_id value from the request.
reOperationId :: Lens' ReportError (Maybe Text)
reOperationId
  = lens _reOperationId
      (\ s a -> s{_reOperationId = a})

instance FromJSON ReportError where
        parseJSON
          = withObject "ReportError"
              (\ o ->
                 ReportError' <$>
                   (o .:? "status") <*> (o .:? "operationId"))

instance ToJSON ReportError where
        toJSON ReportError'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _reStatus,
                  ("operationId" .=) <$> _reOperationId])

-- | Represents a single metric value.
--
-- /See:/ 'metricValue' smart constructor.
data MetricValue = MetricValue'
    { _mvBoolValue         :: !(Maybe Bool)
    , _mvStartTime         :: !(Maybe DateTime')
    , _mvDoubleValue       :: !(Maybe (Textual Double))
    , _mvStringValue       :: !(Maybe Text)
    , _mvDistributionValue :: !(Maybe Distribution)
    , _mvEndTime           :: !(Maybe DateTime')
    , _mvInt64Value        :: !(Maybe (Textual Int64))
    , _mvLabels            :: !(Maybe MetricValueLabels)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvBoolValue'
--
-- * 'mvStartTime'
--
-- * 'mvDoubleValue'
--
-- * 'mvStringValue'
--
-- * 'mvDistributionValue'
--
-- * 'mvEndTime'
--
-- * 'mvInt64Value'
--
-- * 'mvLabels'
metricValue
    :: MetricValue
metricValue =
    MetricValue'
    { _mvBoolValue = Nothing
    , _mvStartTime = Nothing
    , _mvDoubleValue = Nothing
    , _mvStringValue = Nothing
    , _mvDistributionValue = Nothing
    , _mvEndTime = Nothing
    , _mvInt64Value = Nothing
    , _mvLabels = Nothing
    }

-- | A boolean value.
mvBoolValue :: Lens' MetricValue (Maybe Bool)
mvBoolValue
  = lens _mvBoolValue (\ s a -> s{_mvBoolValue = a})

-- | The start of the time period over which this metric value\'s measurement
-- applies. The time period has different semantics for different metric
-- types (cumulative, delta, and gauge). See the metric definition
-- documentation in the service configuration for details.
mvStartTime :: Lens' MetricValue (Maybe UTCTime)
mvStartTime
  = lens _mvStartTime (\ s a -> s{_mvStartTime = a}) .
      mapping _DateTime

-- | A double precision floating point value.
mvDoubleValue :: Lens' MetricValue (Maybe Double)
mvDoubleValue
  = lens _mvDoubleValue
      (\ s a -> s{_mvDoubleValue = a})
      . mapping _Coerce

-- | A text string value.
mvStringValue :: Lens' MetricValue (Maybe Text)
mvStringValue
  = lens _mvStringValue
      (\ s a -> s{_mvStringValue = a})

-- | A distribution value.
mvDistributionValue :: Lens' MetricValue (Maybe Distribution)
mvDistributionValue
  = lens _mvDistributionValue
      (\ s a -> s{_mvDistributionValue = a})

-- | The end of the time period over which this metric value\'s measurement
-- applies.
mvEndTime :: Lens' MetricValue (Maybe UTCTime)
mvEndTime
  = lens _mvEndTime (\ s a -> s{_mvEndTime = a}) .
      mapping _DateTime

-- | A signed 64-bit integer value.
mvInt64Value :: Lens' MetricValue (Maybe Int64)
mvInt64Value
  = lens _mvInt64Value (\ s a -> s{_mvInt64Value = a})
      . mapping _Coerce

-- | The labels describing the metric value. See comments on
-- google.api.servicecontrol.v1.Operation.labels for the overriding
-- relationship.
mvLabels :: Lens' MetricValue (Maybe MetricValueLabels)
mvLabels = lens _mvLabels (\ s a -> s{_mvLabels = a})

instance FromJSON MetricValue where
        parseJSON
          = withObject "MetricValue"
              (\ o ->
                 MetricValue' <$>
                   (o .:? "boolValue") <*> (o .:? "startTime") <*>
                     (o .:? "doubleValue")
                     <*> (o .:? "stringValue")
                     <*> (o .:? "distributionValue")
                     <*> (o .:? "endTime")
                     <*> (o .:? "int64Value")
                     <*> (o .:? "labels"))

instance ToJSON MetricValue where
        toJSON MetricValue'{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _mvBoolValue,
                  ("startTime" .=) <$> _mvStartTime,
                  ("doubleValue" .=) <$> _mvDoubleValue,
                  ("stringValue" .=) <$> _mvStringValue,
                  ("distributionValue" .=) <$> _mvDistributionValue,
                  ("endTime" .=) <$> _mvEndTime,
                  ("int64Value" .=) <$> _mvInt64Value,
                  ("labels" .=) <$> _mvLabels])

-- | Response message for the Check method.
--
-- /See:/ 'checkResponse' smart constructor.
data CheckResponse = CheckResponse'
    { _crCheckErrors     :: !(Maybe [CheckError])
    , _crServiceConfigId :: !(Maybe Text)
    , _crOperationId     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CheckResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crCheckErrors'
--
-- * 'crServiceConfigId'
--
-- * 'crOperationId'
checkResponse
    :: CheckResponse
checkResponse =
    CheckResponse'
    { _crCheckErrors = Nothing
    , _crServiceConfigId = Nothing
    , _crOperationId = Nothing
    }

-- | Indicate the decision of the check. If no check errors are present, the
-- service should process the operation. Otherwise the service should use
-- the list of errors to determine the appropriate action.
crCheckErrors :: Lens' CheckResponse [CheckError]
crCheckErrors
  = lens _crCheckErrors
      (\ s a -> s{_crCheckErrors = a})
      . _Default
      . _Coerce

-- | The actual config id used to process the request.
crServiceConfigId :: Lens' CheckResponse (Maybe Text)
crServiceConfigId
  = lens _crServiceConfigId
      (\ s a -> s{_crServiceConfigId = a})

-- | The same operation_id value used in the CheckRequest. Used for logging
-- and diagnostics purposes.
crOperationId :: Lens' CheckResponse (Maybe Text)
crOperationId
  = lens _crOperationId
      (\ s a -> s{_crOperationId = a})

instance FromJSON CheckResponse where
        parseJSON
          = withObject "CheckResponse"
              (\ o ->
                 CheckResponse' <$>
                   (o .:? "checkErrors" .!= mempty) <*>
                     (o .:? "serviceConfigId")
                     <*> (o .:? "operationId"))

instance ToJSON CheckResponse where
        toJSON CheckResponse'{..}
          = object
              (catMaybes
                 [("checkErrors" .=) <$> _crCheckErrors,
                  ("serviceConfigId" .=) <$> _crServiceConfigId,
                  ("operationId" .=) <$> _crOperationId])

-- | Response message for the Report method.
--
-- /See:/ 'reportResponse' smart constructor.
data ReportResponse = ReportResponse'
    { _rrReportErrors    :: !(Maybe [ReportError])
    , _rrServiceConfigId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrReportErrors'
--
-- * 'rrServiceConfigId'
reportResponse
    :: ReportResponse
reportResponse =
    ReportResponse'
    { _rrReportErrors = Nothing
    , _rrServiceConfigId = Nothing
    }

-- | Partial failures, one for each \`Operation\` in the request that failed
-- processing. There are three possible combinations of the RPC status: 1.
-- The combination of a successful RPC status and an empty
-- \`report_errors\` list indicates a complete success where all
-- \`Operations\` in the request are processed successfully. 2. The
-- combination of a successful RPC status and a non-empty \`report_errors\`
-- list indicates a partial success where some \`Operations\` in the
-- request succeeded. Each \`Operation\` that failed processing has a
-- corresponding item in this list. 3. A failed RPC status indicates a
-- complete failure where none of the \`Operations\` in the request
-- succeeded.
rrReportErrors :: Lens' ReportResponse [ReportError]
rrReportErrors
  = lens _rrReportErrors
      (\ s a -> s{_rrReportErrors = a})
      . _Default
      . _Coerce

-- | The actual config id used to process the request.
rrServiceConfigId :: Lens' ReportResponse (Maybe Text)
rrServiceConfigId
  = lens _rrServiceConfigId
      (\ s a -> s{_rrServiceConfigId = a})

instance FromJSON ReportResponse where
        parseJSON
          = withObject "ReportResponse"
              (\ o ->
                 ReportResponse' <$>
                   (o .:? "reportErrors" .!= mempty) <*>
                     (o .:? "serviceConfigId"))

instance ToJSON ReportResponse where
        toJSON ReportResponse'{..}
          = object
              (catMaybes
                 [("reportErrors" .=) <$> _rrReportErrors,
                  ("serviceConfigId" .=) <$> _rrServiceConfigId])

-- | An individual log entry.
--
-- /See:/ 'logEntry' smart constructor.
data LogEntry = LogEntry'
    { _leSeverity      :: !(Maybe LogEntrySeverity)
    , _leTextPayload   :: !(Maybe Text)
    , _leStructPayload :: !(Maybe LogEntryStructPayload)
    , _leName          :: !(Maybe Text)
    , _leInsertId      :: !(Maybe Text)
    , _leLabels        :: !(Maybe LogEntryLabels)
    , _leProtoPayload  :: !(Maybe LogEntryProtoPayload)
    , _leTimestamp     :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leSeverity'
--
-- * 'leTextPayload'
--
-- * 'leStructPayload'
--
-- * 'leName'
--
-- * 'leInsertId'
--
-- * 'leLabels'
--
-- * 'leProtoPayload'
--
-- * 'leTimestamp'
logEntry
    :: LogEntry
logEntry =
    LogEntry'
    { _leSeverity = Nothing
    , _leTextPayload = Nothing
    , _leStructPayload = Nothing
    , _leName = Nothing
    , _leInsertId = Nothing
    , _leLabels = Nothing
    , _leProtoPayload = Nothing
    , _leTimestamp = Nothing
    }

-- | The severity of the log entry. The default value is
-- \`LogSeverity.DEFAULT\`.
leSeverity :: Lens' LogEntry (Maybe LogEntrySeverity)
leSeverity
  = lens _leSeverity (\ s a -> s{_leSeverity = a})

-- | The log entry payload, represented as a Unicode string (UTF-8).
leTextPayload :: Lens' LogEntry (Maybe Text)
leTextPayload
  = lens _leTextPayload
      (\ s a -> s{_leTextPayload = a})

-- | The log entry payload, represented as a structure that is expressed as a
-- JSON object.
leStructPayload :: Lens' LogEntry (Maybe LogEntryStructPayload)
leStructPayload
  = lens _leStructPayload
      (\ s a -> s{_leStructPayload = a})

-- | Required. The log to which this log entry belongs. Examples:
-- \`\"syslog\"\`, \`\"book_log\"\`.
leName :: Lens' LogEntry (Maybe Text)
leName = lens _leName (\ s a -> s{_leName = a})

-- | A unique ID for the log entry used for deduplication. If omitted, the
-- implementation will generate one based on operation_id.
leInsertId :: Lens' LogEntry (Maybe Text)
leInsertId
  = lens _leInsertId (\ s a -> s{_leInsertId = a})

-- | A set of user-defined (key, value) data that provides additional
-- information about the log entry.
leLabels :: Lens' LogEntry (Maybe LogEntryLabels)
leLabels = lens _leLabels (\ s a -> s{_leLabels = a})

-- | The log entry payload, represented as a protocol buffer that is
-- expressed as a JSON object. You can only pass \`protoPayload\` values
-- that belong to a set of approved types.
leProtoPayload :: Lens' LogEntry (Maybe LogEntryProtoPayload)
leProtoPayload
  = lens _leProtoPayload
      (\ s a -> s{_leProtoPayload = a})

-- | The time the event described by the log entry occurred. If omitted,
-- defaults to operation start time.
leTimestamp :: Lens' LogEntry (Maybe UTCTime)
leTimestamp
  = lens _leTimestamp (\ s a -> s{_leTimestamp = a}) .
      mapping _DateTime

instance FromJSON LogEntry where
        parseJSON
          = withObject "LogEntry"
              (\ o ->
                 LogEntry' <$>
                   (o .:? "severity") <*> (o .:? "textPayload") <*>
                     (o .:? "structPayload")
                     <*> (o .:? "name")
                     <*> (o .:? "insertId")
                     <*> (o .:? "labels")
                     <*> (o .:? "protoPayload")
                     <*> (o .:? "timestamp"))

instance ToJSON LogEntry where
        toJSON LogEntry'{..}
          = object
              (catMaybes
                 [("severity" .=) <$> _leSeverity,
                  ("textPayload" .=) <$> _leTextPayload,
                  ("structPayload" .=) <$> _leStructPayload,
                  ("name" .=) <$> _leName,
                  ("insertId" .=) <$> _leInsertId,
                  ("labels" .=) <$> _leLabels,
                  ("protoPayload" .=) <$> _leProtoPayload,
                  ("timestamp" .=) <$> _leTimestamp])

-- | Labels describing the operation. Only the following labels are allowed:
-- - Labels describing monitored resources as defined in the service
-- configuration. - Default labels of metric values. When specified, labels
-- defined in the metric value override these default. - The following
-- labels defined by Google Cloud Platform: -
-- \`cloud.googleapis.com\/location\` describing the location where the
-- operation happened, - \`servicecontrol.googleapis.com\/user_agent\`
-- describing the user agent of the API request, -
-- \`servicecontrol.googleapis.com\/service_agent\` describing the service
-- used to handle the API request (e.g. ESP), -
-- \`servicecontrol.googleapis.com\/platform\` describing the platform
-- where the API is served (e.g. GAE, GCE, GKE).
--
-- /See:/ 'operationLabels' smart constructor.
newtype OperationLabels = OperationLabels'
    { _olAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olAddtional'
operationLabels
    :: HashMap Text Text -- ^ 'olAddtional'
    -> OperationLabels
operationLabels pOlAddtional_ =
    OperationLabels'
    { _olAddtional = _Coerce # pOlAddtional_
    }

olAddtional :: Lens' OperationLabels (HashMap Text Text)
olAddtional
  = lens _olAddtional (\ s a -> s{_olAddtional = a}) .
      _Coerce

instance FromJSON OperationLabels where
        parseJSON
          = withObject "OperationLabels"
              (\ o -> OperationLabels' <$> (parseJSONObject o))

instance ToJSON OperationLabels where
        toJSON = toJSON . _olAddtional

-- | Describing buckets with arbitrary user-provided width.
--
-- /See:/ 'explicitBuckets' smart constructor.
newtype ExplicitBuckets = ExplicitBuckets'
    { _ebBounds :: Maybe [Textual Double]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExplicitBuckets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebBounds'
explicitBuckets
    :: ExplicitBuckets
explicitBuckets =
    ExplicitBuckets'
    { _ebBounds = Nothing
    }

-- | \'bound\' is a list of strictly increasing boundaries between buckets.
-- Note that a list of length N-1 defines N buckets because of
-- fenceposting. See comments on \`bucket_options\` for details. The i\'th
-- finite bucket covers the interval [bound[i-1], bound[i]) where i ranges
-- from 1 to bound_size() - 1. Note that there are no finite buckets at all
-- if \'bound\' only contains a single element; in that special case the
-- single bound defines the boundary between the underflow and overflow
-- buckets. bucket number lower bound upper bound i == 0 (underflow) -inf
-- bound[i] 0 \< i \< bound_size() bound[i-1] bound[i] i == bound_size()
-- (overflow) bound[i-1] +inf
ebBounds :: Lens' ExplicitBuckets [Double]
ebBounds
  = lens _ebBounds (\ s a -> s{_ebBounds = a}) .
      _Default
      . _Coerce

instance FromJSON ExplicitBuckets where
        parseJSON
          = withObject "ExplicitBuckets"
              (\ o ->
                 ExplicitBuckets' <$> (o .:? "bounds" .!= mempty))

instance ToJSON ExplicitBuckets where
        toJSON ExplicitBuckets'{..}
          = object (catMaybes [("bounds" .=) <$> _ebBounds])

-- | The log entry payload, represented as a structure that is expressed as a
-- JSON object.
--
-- /See:/ 'logEntryStructPayload' smart constructor.
newtype LogEntryStructPayload = LogEntryStructPayload'
    { _lespAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogEntryStructPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lespAddtional'
logEntryStructPayload
    :: HashMap Text JSONValue -- ^ 'lespAddtional'
    -> LogEntryStructPayload
logEntryStructPayload pLespAddtional_ =
    LogEntryStructPayload'
    { _lespAddtional = _Coerce # pLespAddtional_
    }

-- | Properties of the object.
lespAddtional :: Lens' LogEntryStructPayload (HashMap Text JSONValue)
lespAddtional
  = lens _lespAddtional
      (\ s a -> s{_lespAddtional = a})
      . _Coerce

instance FromJSON LogEntryStructPayload where
        parseJSON
          = withObject "LogEntryStructPayload"
              (\ o ->
                 LogEntryStructPayload' <$> (parseJSONObject o))

instance ToJSON LogEntryStructPayload where
        toJSON = toJSON . _lespAddtional
