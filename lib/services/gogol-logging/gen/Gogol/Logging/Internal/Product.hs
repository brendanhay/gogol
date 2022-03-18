{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Logging.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Logging.Internal.Product
  ( -- * BigQueryOptions
    BigQueryOptions (..),
    newBigQueryOptions,

    -- * BucketOptions
    BucketOptions (..),
    newBucketOptions,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CmekSettings
    CmekSettings (..),
    newCmekSettings,

    -- * CopyLogEntriesMetadata
    CopyLogEntriesMetadata (..),
    newCopyLogEntriesMetadata,

    -- * CopyLogEntriesRequest
    CopyLogEntriesRequest (..),
    newCopyLogEntriesRequest,

    -- * CopyLogEntriesResponse
    CopyLogEntriesResponse (..),
    newCopyLogEntriesResponse,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Explicit
    Explicit (..),
    newExplicit,

    -- * Exponential
    Exponential (..),
    newExponential,

    -- * HttpRequest
    HttpRequest (..),
    newHttpRequest,

    -- * LabelDescriptor
    LabelDescriptor (..),
    newLabelDescriptor,

    -- * Linear
    Linear (..),
    newLinear,

    -- * ListBucketsResponse
    ListBucketsResponse (..),
    newListBucketsResponse,

    -- * ListExclusionsResponse
    ListExclusionsResponse (..),
    newListExclusionsResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListLogEntriesRequest
    ListLogEntriesRequest (..),
    newListLogEntriesRequest,

    -- * ListLogEntriesResponse
    ListLogEntriesResponse (..),
    newListLogEntriesResponse,

    -- * ListLogMetricsResponse
    ListLogMetricsResponse (..),
    newListLogMetricsResponse,

    -- * ListLogsResponse
    ListLogsResponse (..),
    newListLogsResponse,

    -- * ListMonitoredResourceDescriptorsResponse
    ListMonitoredResourceDescriptorsResponse (..),
    newListMonitoredResourceDescriptorsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListSinksResponse
    ListSinksResponse (..),
    newListSinksResponse,

    -- * ListViewsResponse
    ListViewsResponse (..),
    newListViewsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * LogBucket
    LogBucket (..),
    newLogBucket,

    -- * LogEntry
    LogEntry (..),
    newLogEntry,

    -- * LogEntry_JsonPayload
    LogEntry_JsonPayload (..),
    newLogEntry_JsonPayload,

    -- * LogEntry_Labels
    LogEntry_Labels (..),
    newLogEntry_Labels,

    -- * LogEntry_ProtoPayload
    LogEntry_ProtoPayload (..),
    newLogEntry_ProtoPayload,

    -- * LogEntryOperation
    LogEntryOperation (..),
    newLogEntryOperation,

    -- * LogEntrySourceLocation
    LogEntrySourceLocation (..),
    newLogEntrySourceLocation,

    -- * LogExclusion
    LogExclusion (..),
    newLogExclusion,

    -- * LogLine
    LogLine (..),
    newLogLine,

    -- * LogMetric
    LogMetric (..),
    newLogMetric,

    -- * LogMetric_LabelExtractors
    LogMetric_LabelExtractors (..),
    newLogMetric_LabelExtractors,

    -- * LogSink
    LogSink (..),
    newLogSink,

    -- * LogSplit
    LogSplit (..),
    newLogSplit,

    -- * LogView
    LogView (..),
    newLogView,

    -- * MetricDescriptor
    MetricDescriptor (..),
    newMetricDescriptor,

    -- * MetricDescriptorMetadata
    MetricDescriptorMetadata (..),
    newMetricDescriptorMetadata,

    -- * MonitoredResource
    MonitoredResource (..),
    newMonitoredResource,

    -- * MonitoredResource_Labels
    MonitoredResource_Labels (..),
    newMonitoredResource_Labels,

    -- * MonitoredResourceDescriptor
    MonitoredResourceDescriptor (..),
    newMonitoredResourceDescriptor,

    -- * MonitoredResourceMetadata
    MonitoredResourceMetadata (..),
    newMonitoredResourceMetadata,

    -- * MonitoredResourceMetadata_SystemLabels
    MonitoredResourceMetadata_SystemLabels (..),
    newMonitoredResourceMetadata_SystemLabels,

    -- * MonitoredResourceMetadata_UserLabels
    MonitoredResourceMetadata_UserLabels (..),
    newMonitoredResourceMetadata_UserLabels,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * RequestLog
    RequestLog (..),
    newRequestLog,

    -- * Settings
    Settings (..),
    newSettings,

    -- * SourceLocation
    SourceLocation (..),
    newSourceLocation,

    -- * SourceReference
    SourceReference (..),
    newSourceReference,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * SuppressionInfo
    SuppressionInfo (..),
    newSuppressionInfo,

    -- * TailLogEntriesRequest
    TailLogEntriesRequest (..),
    newTailLogEntriesRequest,

    -- * TailLogEntriesResponse
    TailLogEntriesResponse (..),
    newTailLogEntriesResponse,

    -- * UndeleteBucketRequest
    UndeleteBucketRequest (..),
    newUndeleteBucketRequest,

    -- * WriteLogEntriesRequest
    WriteLogEntriesRequest (..),
    newWriteLogEntriesRequest,

    -- * WriteLogEntriesRequest_Labels
    WriteLogEntriesRequest_Labels (..),
    newWriteLogEntriesRequest_Labels,

    -- * WriteLogEntriesResponse
    WriteLogEntriesResponse (..),
    newWriteLogEntriesResponse,
  )
where

import Gogol.Logging.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Options that change functionality of a sink exporting data to BigQuery.
--
-- /See:/ 'newBigQueryOptions' smart constructor.
data BigQueryOptions = BigQueryOptions
  { -- | Optional. Whether to use BigQuery\'s partition tables (https:\/\/cloud.google.com\/bigquery\/docs\/partitioned-tables). By default, Cloud Logging creates dated tables based on the log entries\' timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax (https:\/\/cloud.google.com\/bigquery\/docs\/querying-partitioned-tables) has to be used instead. In both cases, tables are sharded based on UTC timezone.
    usePartitionedTables :: (Core.Maybe Core.Bool),
    -- | Output only. True if new timestamp column based partitioning is in use, false if legacy ingestion-time partitioning is in use.All new sinks will have this field set true and will use timestamp column based partitioning. If use/partitioned/tables is false, this value has no meaning and will be false. Legacy sinks using partitioned tables will have this field set to false.
    usesTimestampColumnPartitioning :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryOptions' with the minimum fields required to make a request.
newBigQueryOptions ::
  BigQueryOptions
newBigQueryOptions =
  BigQueryOptions
    { usePartitionedTables = Core.Nothing,
      usesTimestampColumnPartitioning = Core.Nothing
    }

instance Core.FromJSON BigQueryOptions where
  parseJSON =
    Core.withObject
      "BigQueryOptions"
      ( \o ->
          BigQueryOptions
            Core.<$> (o Core..:? "usePartitionedTables")
            Core.<*> (o Core..:? "usesTimestampColumnPartitioning")
      )

instance Core.ToJSON BigQueryOptions where
  toJSON BigQueryOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("usePartitionedTables" Core..=)
              Core.<$> usePartitionedTables,
            ("usesTimestampColumnPartitioning" Core..=)
              Core.<$> usesTimestampColumnPartitioning
          ]
      )

-- | BucketOptions describes the bucket boundaries used to create a histogram for the distribution. The buckets can be in a linear sequence, an exponential sequence, or each bucket can be specified explicitly. BucketOptions does not include the number of values in each bucket.A bucket has an inclusive lower bound and exclusive upper bound for the values that are counted for that bucket. The upper bound of a bucket must be strictly greater than the lower bound. The sequence of N buckets for a distribution consists of an underflow bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an overflow bucket (number N - 1). The buckets are contiguous: the lower bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets span the whole range of finite values: lower bound of the underflow bucket is -infinity and the upper bound of the overflow bucket is +infinity. The finite buckets are so-called because both bounds are finite.
--
-- /See:/ 'newBucketOptions' smart constructor.
data BucketOptions = BucketOptions
  { -- | The explicit buckets.
    explicitBuckets :: (Core.Maybe Explicit),
    -- | The exponential buckets.
    exponentialBuckets :: (Core.Maybe Exponential),
    -- | The linear bucket.
    linearBuckets :: (Core.Maybe Linear)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BucketOptions' with the minimum fields required to make a request.
newBucketOptions ::
  BucketOptions
newBucketOptions =
  BucketOptions
    { explicitBuckets = Core.Nothing,
      exponentialBuckets = Core.Nothing,
      linearBuckets = Core.Nothing
    }

instance Core.FromJSON BucketOptions where
  parseJSON =
    Core.withObject
      "BucketOptions"
      ( \o ->
          BucketOptions
            Core.<$> (o Core..:? "explicitBuckets")
            Core.<*> (o Core..:? "exponentialBuckets")
            Core.<*> (o Core..:? "linearBuckets")
      )

instance Core.ToJSON BucketOptions where
  toJSON BucketOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("explicitBuckets" Core..=)
              Core.<$> explicitBuckets,
            ("exponentialBuckets" Core..=)
              Core.<$> exponentialBuckets,
            ("linearBuckets" Core..=) Core.<$> linearBuckets
          ]
      )

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | Describes the customer-managed encryption key (CMEK) settings associated with a project, folder, organization, billing account, or flexible resource.Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
--
-- /See:/ 'newCmekSettings' smart constructor.
data CmekSettings = CmekSettings
  { -- | The resource name for the configured Cloud KMS key.KMS key name format: \"projects\/[PROJECT/ID]\/locations\/[LOCATION]\/keyRings\/[KEYRING]\/cryptoKeys\/[KEY]\" For example:\"projects\/my-project\/locations\/us-central1\/keyRings\/my-ring\/cryptoKeys\/my-key\"To enable CMEK for the Log Router, set this field to a valid kms/key/name for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.The Cloud KMS key used by the Log Router can be updated by changing the kms/key_name to a new valid key name or disabled by setting the key name to an empty string. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.To disable CMEK for the Log Router, set this field to an empty string.See Enabling CMEK for Log Router
    -- (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
    kmsKeyName :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the CMEK settings.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The service account that will be used by the Log Router to access your Cloud KMS key.Before enabling CMEK for Log Router, you must first assign the cloudkms.cryptoKeyEncrypterDecrypter role to the service account that the Log Router will use to access your Cloud KMS key. Use GetCmekSettings to obtain the service account ID.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
    serviceAccountId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CmekSettings' with the minimum fields required to make a request.
newCmekSettings ::
  CmekSettings
newCmekSettings =
  CmekSettings
    { kmsKeyName = Core.Nothing,
      name = Core.Nothing,
      serviceAccountId = Core.Nothing
    }

instance Core.FromJSON CmekSettings where
  parseJSON =
    Core.withObject
      "CmekSettings"
      ( \o ->
          CmekSettings
            Core.<$> (o Core..:? "kmsKeyName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "serviceAccountId")
      )

instance Core.ToJSON CmekSettings where
  toJSON CmekSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("kmsKeyName" Core..=) Core.<$> kmsKeyName,
            ("name" Core..=) Core.<$> name,
            ("serviceAccountId" Core..=)
              Core.<$> serviceAccountId
          ]
      )

-- | Metadata for CopyLogEntries long running operations.
--
-- /See:/ 'newCopyLogEntriesMetadata' smart constructor.
data CopyLogEntriesMetadata = CopyLogEntriesMetadata
  { -- | Identifies whether the user has requested cancellation of the operation.
    cancellationRequested :: (Core.Maybe Core.Bool),
    -- | The end time of an operation.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Estimated progress of the operation (0 - 100%).
    progress :: (Core.Maybe Core.Int32),
    -- | CopyLogEntries RPC request.
    request' :: (Core.Maybe CopyLogEntriesRequest),
    -- | The create time of an operation.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | State of an operation.
    state :: (Core.Maybe CopyLogEntriesMetadata_State),
    -- | The IAM identity of a service account that must be granted access to the destination.If the service account is not granted permission to the destination within an hour, the operation will be cancelled.For example: \"serviceAccount:foo\@bar.com\"
    writerIdentity :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopyLogEntriesMetadata' with the minimum fields required to make a request.
newCopyLogEntriesMetadata ::
  CopyLogEntriesMetadata
newCopyLogEntriesMetadata =
  CopyLogEntriesMetadata
    { cancellationRequested = Core.Nothing,
      endTime = Core.Nothing,
      progress = Core.Nothing,
      request' = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      writerIdentity = Core.Nothing
    }

instance Core.FromJSON CopyLogEntriesMetadata where
  parseJSON =
    Core.withObject
      "CopyLogEntriesMetadata"
      ( \o ->
          CopyLogEntriesMetadata
            Core.<$> (o Core..:? "cancellationRequested")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "request")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "writerIdentity")
      )

instance Core.ToJSON CopyLogEntriesMetadata where
  toJSON CopyLogEntriesMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("cancellationRequested" Core..=)
              Core.<$> cancellationRequested,
            ("endTime" Core..=) Core.<$> endTime,
            ("progress" Core..=) Core.<$> progress,
            ("request" Core..=) Core.<$> request',
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("writerIdentity" Core..=) Core.<$> writerIdentity
          ]
      )

-- | The parameters to CopyLogEntries.
--
-- /See:/ 'newCopyLogEntriesRequest' smart constructor.
data CopyLogEntriesRequest = CopyLogEntriesRequest
  { -- | Required. Destination to which to copy log entries.
    destination :: (Core.Maybe Core.Text),
    -- | Optional. A filter specifying which log entries to copy. The filter must be no more than 20k characters. An empty filter matches all log entries.
    filter :: (Core.Maybe Core.Text),
    -- | Required. Log bucket from which to copy log entries.For example:\"projects\/my-project\/locations\/global\/buckets\/my-source-bucket\"
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopyLogEntriesRequest' with the minimum fields required to make a request.
newCopyLogEntriesRequest ::
  CopyLogEntriesRequest
newCopyLogEntriesRequest =
  CopyLogEntriesRequest
    { destination = Core.Nothing,
      filter = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON CopyLogEntriesRequest where
  parseJSON =
    Core.withObject
      "CopyLogEntriesRequest"
      ( \o ->
          CopyLogEntriesRequest
            Core.<$> (o Core..:? "destination")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON CopyLogEntriesRequest where
  toJSON CopyLogEntriesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("destination" Core..=) Core.<$> destination,
            ("filter" Core..=) Core.<$> filter,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Response type for CopyLogEntries long running operations.
--
-- /See:/ 'newCopyLogEntriesResponse' smart constructor.
newtype CopyLogEntriesResponse = CopyLogEntriesResponse
  { -- | Number of log entries copied.
    logEntriesCopiedCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopyLogEntriesResponse' with the minimum fields required to make a request.
newCopyLogEntriesResponse ::
  CopyLogEntriesResponse
newCopyLogEntriesResponse =
  CopyLogEntriesResponse {logEntriesCopiedCount = Core.Nothing}

instance Core.FromJSON CopyLogEntriesResponse where
  parseJSON =
    Core.withObject
      "CopyLogEntriesResponse"
      ( \o ->
          CopyLogEntriesResponse
            Core.<$> (o Core..:? "logEntriesCopiedCount")
      )

instance Core.ToJSON CopyLogEntriesResponse where
  toJSON CopyLogEntriesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("logEntriesCopiedCount" Core..=) Core.. Core.AsText
              Core.<$> logEntriesCopiedCount
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for Empty is empty JSON object {}.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 \<= i \< N-1): boundsi Lower bound (1 \<= i \< N); boundsi - 1The bounds field must contain at least one element. If bounds has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.
--
-- /See:/ 'newExplicit' smart constructor.
newtype Explicit = Explicit
  { -- | The values must be monotonically increasing.
    bounds :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Explicit' with the minimum fields required to make a request.
newExplicit ::
  Explicit
newExplicit = Explicit {bounds = Core.Nothing}

instance Core.FromJSON Explicit where
  parseJSON =
    Core.withObject
      "Explicit"
      ( \o ->
          Explicit
            Core.<$> (o Core..:? "bounds" Core..!= Core.mempty)
      )

instance Core.ToJSON Explicit where
  toJSON Explicit {..} =
    Core.object
      (Core.catMaybes [("bounds" Core..=) Core.<$> bounds])

-- | Specifies an exponential sequence of buckets that have a width that is proportional to the value of the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.There are num/finite/buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 \<= i \< N-1): scale * (growth/factor ^ i). Lower bound (1 \<= i \< N): scale * (growth/factor ^ (i - 1)).
--
-- /See:/ 'newExponential' smart constructor.
data Exponential = Exponential
  { -- | Must be greater than 1.
    growthFactor :: (Core.Maybe Core.Double),
    -- | Must be greater than 0.
    numFiniteBuckets :: (Core.Maybe Core.Int32),
    -- | Must be greater than 0.
    scale :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Exponential' with the minimum fields required to make a request.
newExponential ::
  Exponential
newExponential =
  Exponential
    { growthFactor = Core.Nothing,
      numFiniteBuckets = Core.Nothing,
      scale = Core.Nothing
    }

instance Core.FromJSON Exponential where
  parseJSON =
    Core.withObject
      "Exponential"
      ( \o ->
          Exponential
            Core.<$> (o Core..:? "growthFactor")
            Core.<*> (o Core..:? "numFiniteBuckets")
            Core.<*> (o Core..:? "scale")
      )

instance Core.ToJSON Exponential where
  toJSON Exponential {..} =
    Core.object
      ( Core.catMaybes
          [ ("growthFactor" Core..=) Core.<$> growthFactor,
            ("numFiniteBuckets" Core..=)
              Core.<$> numFiniteBuckets,
            ("scale" Core..=) Core.<$> scale
          ]
      )

-- | A common proto for logging HTTP requests. Only contains semantics defined by the HTTP specification. Product-specific logging information MUST be defined in a separate message.
--
-- /See:/ 'newHttpRequest' smart constructor.
data HttpRequest = HttpRequest
  { -- | The number of HTTP response bytes inserted into cache. Set only when a cache fill was attempted.
    cacheFillBytes :: (Core.Maybe Core.Int64),
    -- | Whether or not an entity was served from cache (with or without validation).
    cacheHit :: (Core.Maybe Core.Bool),
    -- | Whether or not a cache lookup was attempted.
    cacheLookup :: (Core.Maybe Core.Bool),
    -- | Whether or not the response was validated with the origin server before being served from cache. This field is only meaningful if cache_hit is True.
    cacheValidatedWithOriginServer :: (Core.Maybe Core.Bool),
    -- | The request processing latency on the server, from the time the request was received until the response was sent.
    latency :: (Core.Maybe Core.GDuration),
    -- | Protocol used for the request. Examples: \"HTTP\/1.1\", \"HTTP\/2\", \"websocket\"
    protocol :: (Core.Maybe Core.Text),
    -- | The referer URL of the request, as defined in HTTP\/1.1 Header Field Definitions (http:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616-sec14.html).
    referer :: (Core.Maybe Core.Text),
    -- | The IP address (IPv4 or IPv6) of the client that issued the HTTP request. This field can include port information. Examples: \"192.168.1.1\", \"10.0.0.1:80\", \"FE80::0202:B3FF:FE1E:8329\".
    remoteIp :: (Core.Maybe Core.Text),
    -- | The request method. Examples: \"GET\", \"HEAD\", \"PUT\", \"POST\".
    requestMethod :: (Core.Maybe Core.Text),
    -- | The size of the HTTP request message in bytes, including the request headers and the request body.
    requestSize :: (Core.Maybe Core.Int64),
    -- | The scheme (http, https), the host name, the path and the query portion of the URL that was requested. Example: \"http:\/\/example.com\/some\/info?color=red\".
    requestUrl :: (Core.Maybe Core.Text),
    -- | The size of the HTTP response message sent back to the client, in bytes, including the response headers and the response body.
    responseSize :: (Core.Maybe Core.Int64),
    -- | The IP address (IPv4 or IPv6) of the origin server that the request was sent to. This field can include port information. Examples: \"192.168.1.1\", \"10.0.0.1:80\", \"FE80::0202:B3FF:FE1E:8329\".
    serverIp :: (Core.Maybe Core.Text),
    -- | The response code indicating the status of response. Examples: 200, 404.
    status :: (Core.Maybe Core.Int32),
    -- | The user agent sent by the client. Example: \"Mozilla\/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)\".
    userAgent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpRequest' with the minimum fields required to make a request.
newHttpRequest ::
  HttpRequest
newHttpRequest =
  HttpRequest
    { cacheFillBytes = Core.Nothing,
      cacheHit = Core.Nothing,
      cacheLookup = Core.Nothing,
      cacheValidatedWithOriginServer = Core.Nothing,
      latency = Core.Nothing,
      protocol = Core.Nothing,
      referer = Core.Nothing,
      remoteIp = Core.Nothing,
      requestMethod = Core.Nothing,
      requestSize = Core.Nothing,
      requestUrl = Core.Nothing,
      responseSize = Core.Nothing,
      serverIp = Core.Nothing,
      status = Core.Nothing,
      userAgent = Core.Nothing
    }

instance Core.FromJSON HttpRequest where
  parseJSON =
    Core.withObject
      "HttpRequest"
      ( \o ->
          HttpRequest
            Core.<$> (o Core..:? "cacheFillBytes")
            Core.<*> (o Core..:? "cacheHit")
            Core.<*> (o Core..:? "cacheLookup")
            Core.<*> (o Core..:? "cacheValidatedWithOriginServer")
            Core.<*> (o Core..:? "latency")
            Core.<*> (o Core..:? "protocol")
            Core.<*> (o Core..:? "referer")
            Core.<*> (o Core..:? "remoteIp")
            Core.<*> (o Core..:? "requestMethod")
            Core.<*> (o Core..:? "requestSize")
            Core.<*> (o Core..:? "requestUrl")
            Core.<*> (o Core..:? "responseSize")
            Core.<*> (o Core..:? "serverIp")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "userAgent")
      )

instance Core.ToJSON HttpRequest where
  toJSON HttpRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cacheFillBytes" Core..=) Core.. Core.AsText
              Core.<$> cacheFillBytes,
            ("cacheHit" Core..=) Core.<$> cacheHit,
            ("cacheLookup" Core..=) Core.<$> cacheLookup,
            ("cacheValidatedWithOriginServer" Core..=)
              Core.<$> cacheValidatedWithOriginServer,
            ("latency" Core..=) Core.<$> latency,
            ("protocol" Core..=) Core.<$> protocol,
            ("referer" Core..=) Core.<$> referer,
            ("remoteIp" Core..=) Core.<$> remoteIp,
            ("requestMethod" Core..=) Core.<$> requestMethod,
            ("requestSize" Core..=) Core.. Core.AsText
              Core.<$> requestSize,
            ("requestUrl" Core..=) Core.<$> requestUrl,
            ("responseSize" Core..=) Core.. Core.AsText
              Core.<$> responseSize,
            ("serverIp" Core..=) Core.<$> serverIp,
            ("status" Core..=) Core.<$> status,
            ("userAgent" Core..=) Core.<$> userAgent
          ]
      )

-- | A description of a label.
--
-- /See:/ 'newLabelDescriptor' smart constructor.
data LabelDescriptor = LabelDescriptor
  { -- | A human-readable description for the label.
    description :: (Core.Maybe Core.Text),
    -- | The label key.
    key :: (Core.Maybe Core.Text),
    -- | The type of data that can be assigned to the label.
    valueType :: (Core.Maybe LabelDescriptor_ValueType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LabelDescriptor' with the minimum fields required to make a request.
newLabelDescriptor ::
  LabelDescriptor
newLabelDescriptor =
  LabelDescriptor
    { description = Core.Nothing,
      key = Core.Nothing,
      valueType = Core.Nothing
    }

instance Core.FromJSON LabelDescriptor where
  parseJSON =
    Core.withObject
      "LabelDescriptor"
      ( \o ->
          LabelDescriptor
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "valueType")
      )

instance Core.ToJSON LabelDescriptor where
  toJSON LabelDescriptor {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("key" Core..=) Core.<$> key,
            ("valueType" Core..=) Core.<$> valueType
          ]
      )

-- | Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket.There are num/finite/buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 \<= i \< N-1): offset + (width * i). Lower bound (1 \<= i \< N): offset + (width * (i - 1)).
--
-- /See:/ 'newLinear' smart constructor.
data Linear = Linear
  { -- | Must be greater than 0.
    numFiniteBuckets :: (Core.Maybe Core.Int32),
    -- | Lower bound of the first bucket.
    offset :: (Core.Maybe Core.Double),
    -- | Must be greater than 0.
    width :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Linear' with the minimum fields required to make a request.
newLinear ::
  Linear
newLinear =
  Linear
    { numFiniteBuckets = Core.Nothing,
      offset = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Linear where
  parseJSON =
    Core.withObject
      "Linear"
      ( \o ->
          Linear
            Core.<$> (o Core..:? "numFiniteBuckets")
            Core.<*> (o Core..:? "offset")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Linear where
  toJSON Linear {..} =
    Core.object
      ( Core.catMaybes
          [ ("numFiniteBuckets" Core..=)
              Core.<$> numFiniteBuckets,
            ("offset" Core..=) Core.<$> offset,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | The response from ListBuckets.
--
-- /See:/ 'newListBucketsResponse' smart constructor.
data ListBucketsResponse = ListBucketsResponse
  { -- | A list of buckets.
    buckets :: (Core.Maybe [LogBucket]),
    -- | If there might be more results than appear in this response, then nextPageToken is included. To get the next set of results, call the same method again using the value of nextPageToken as pageToken.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBucketsResponse' with the minimum fields required to make a request.
newListBucketsResponse ::
  ListBucketsResponse
newListBucketsResponse =
  ListBucketsResponse {buckets = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListBucketsResponse where
  parseJSON =
    Core.withObject
      "ListBucketsResponse"
      ( \o ->
          ListBucketsResponse
            Core.<$> (o Core..:? "buckets" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListBucketsResponse where
  toJSON ListBucketsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("buckets" Core..=) Core.<$> buckets,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Result returned from ListExclusions.
--
-- /See:/ 'newListExclusionsResponse' smart constructor.
data ListExclusionsResponse = ListExclusionsResponse
  { -- | A list of exclusions.
    exclusions :: (Core.Maybe [LogExclusion]),
    -- | If there might be more results than appear in this response, then nextPageToken is included. To get the next set of results, call the same method again using the value of nextPageToken as pageToken.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListExclusionsResponse' with the minimum fields required to make a request.
newListExclusionsResponse ::
  ListExclusionsResponse
newListExclusionsResponse =
  ListExclusionsResponse
    { exclusions = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListExclusionsResponse where
  parseJSON =
    Core.withObject
      "ListExclusionsResponse"
      ( \o ->
          ListExclusionsResponse
            Core.<$> (o Core..:? "exclusions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListExclusionsResponse where
  toJSON ListExclusionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("exclusions" Core..=) Core.<$> exclusions,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
  { -- | A list of locations that matches the specified filter in the request.
    locations :: (Core.Maybe [Location]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse ::
  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLocationsResponse where
  toJSON ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The parameters to ListLogEntries.
--
-- /See:/ 'newListLogEntriesRequest' smart constructor.
data ListLogEntriesRequest = ListLogEntriesRequest
  { -- | Optional. A filter that chooses which log entries to return. See Advanced Logs Queries (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced-queries). Only log entries that match the filter are returned. An empty filter matches all log entries in the resources listed in resource/names. Referencing a parent resource that is not listed in resource/names will cause the filter to return no results. The maximum length of the filter is 20000 characters.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. How the results should be sorted. Presently, the only permitted values are \"timestamp asc\" (default) and \"timestamp desc\". The first option returns entries in order of increasing values of LogEntry.timestamp (oldest first), and the second option returns entries in order of decreasing timestamps (newest first). Entries with equal timestamps are returned in order of their insert_id values.
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of results to return from this request. Default is 50. If the value is negative or exceeds 1000, the request is rejected. The presence of next/page/token in the response indicates that more results might be available.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. If present, then retrieve the next batch of results from the preceding call to this method. page/token must be the value of next/page_token from the previous response. The values of other method parameters should be identical to those in the previous call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Optional. Deprecated. Use resource_names instead. One or more project identifiers or project numbers from which to retrieve log entries. Example: \"my-project-1A\".
    projectIds :: (Core.Maybe [Core.Text]),
    -- | Required. Names of one or more parent resources from which to retrieve log entries: projects\/[PROJECT/ID] organizations\/[ORGANIZATION/ID] billingAccounts\/[BILLING/ACCOUNT/ID] folders\/[FOLDER/ID]May alternatively be one or more views: projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID] organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID] billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID] folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID]Projects listed in the project_ids field are added to this list.
    resourceNames :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLogEntriesRequest' with the minimum fields required to make a request.
newListLogEntriesRequest ::
  ListLogEntriesRequest
newListLogEntriesRequest =
  ListLogEntriesRequest
    { filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectIds = Core.Nothing,
      resourceNames = Core.Nothing
    }

instance Core.FromJSON ListLogEntriesRequest where
  parseJSON =
    Core.withObject
      "ListLogEntriesRequest"
      ( \o ->
          ListLogEntriesRequest
            Core.<$> (o Core..:? "filter")
            Core.<*> (o Core..:? "orderBy")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "projectIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "resourceNames" Core..!= Core.mempty)
      )

instance Core.ToJSON ListLogEntriesRequest where
  toJSON ListLogEntriesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("filter" Core..=) Core.<$> filter,
            ("orderBy" Core..=) Core.<$> orderBy,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("projectIds" Core..=) Core.<$> projectIds,
            ("resourceNames" Core..=) Core.<$> resourceNames
          ]
      )

-- | Result returned from ListLogEntries.
--
-- /See:/ 'newListLogEntriesResponse' smart constructor.
data ListLogEntriesResponse = ListLogEntriesResponse
  { -- | A list of log entries. If entries is empty, nextPageToken may still be returned, indicating that more entries may exist. See nextPageToken for more information.
    entries :: (Core.Maybe [LogEntry]),
    -- | If there might be more results than those appearing in this response, then nextPageToken is included. To get the next set of results, call this method again using the value of nextPageToken as pageToken.If a value for next/page/token appears and the entries field is empty, it means that the search found no log entries so far but it did not have time to search all the possible log entries. Retry the method with this value for page_token to continue the search. Alternatively, consider speeding up the search by changing your filter to specify a single log name or resource type, or to narrow the time range of the search.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLogEntriesResponse' with the minimum fields required to make a request.
newListLogEntriesResponse ::
  ListLogEntriesResponse
newListLogEntriesResponse =
  ListLogEntriesResponse {entries = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLogEntriesResponse where
  parseJSON =
    Core.withObject
      "ListLogEntriesResponse"
      ( \o ->
          ListLogEntriesResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLogEntriesResponse where
  toJSON ListLogEntriesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Result returned from ListLogMetrics.
--
-- /See:/ 'newListLogMetricsResponse' smart constructor.
data ListLogMetricsResponse = ListLogMetricsResponse
  { -- | A list of logs-based metrics.
    metrics :: (Core.Maybe [LogMetric]),
    -- | If there might be more results than appear in this response, then nextPageToken is included. To get the next set of results, call this method again using the value of nextPageToken as pageToken.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLogMetricsResponse' with the minimum fields required to make a request.
newListLogMetricsResponse ::
  ListLogMetricsResponse
newListLogMetricsResponse =
  ListLogMetricsResponse {metrics = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLogMetricsResponse where
  parseJSON =
    Core.withObject
      "ListLogMetricsResponse"
      ( \o ->
          ListLogMetricsResponse
            Core.<$> (o Core..:? "metrics" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLogMetricsResponse where
  toJSON ListLogMetricsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("metrics" Core..=) Core.<$> metrics,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Result returned from ListLogs.
--
-- /See:/ 'newListLogsResponse' smart constructor.
data ListLogsResponse = ListLogsResponse
  { -- | A list of log names. For example, \"projects\/my-project\/logs\/syslog\" or \"organizations\/123\/logs\/cloudresourcemanager.googleapis.com%2Factivity\".
    logNames :: (Core.Maybe [Core.Text]),
    -- | If there might be more results than those appearing in this response, then nextPageToken is included. To get the next set of results, call this method again using the value of nextPageToken as pageToken.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLogsResponse' with the minimum fields required to make a request.
newListLogsResponse ::
  ListLogsResponse
newListLogsResponse =
  ListLogsResponse {logNames = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLogsResponse where
  parseJSON =
    Core.withObject
      "ListLogsResponse"
      ( \o ->
          ListLogsResponse
            Core.<$> (o Core..:? "logNames" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLogsResponse where
  toJSON ListLogsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("logNames" Core..=) Core.<$> logNames,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Result returned from ListMonitoredResourceDescriptors.
--
-- /See:/ 'newListMonitoredResourceDescriptorsResponse' smart constructor.
data ListMonitoredResourceDescriptorsResponse = ListMonitoredResourceDescriptorsResponse
  { -- | If there might be more results than those appearing in this response, then nextPageToken is included. To get the next set of results, call this method again using the value of nextPageToken as pageToken.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of resource descriptors.
    resourceDescriptors :: (Core.Maybe [MonitoredResourceDescriptor])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMonitoredResourceDescriptorsResponse' with the minimum fields required to make a request.
newListMonitoredResourceDescriptorsResponse ::
  ListMonitoredResourceDescriptorsResponse
newListMonitoredResourceDescriptorsResponse =
  ListMonitoredResourceDescriptorsResponse
    { nextPageToken = Core.Nothing,
      resourceDescriptors = Core.Nothing
    }

instance
  Core.FromJSON
    ListMonitoredResourceDescriptorsResponse
  where
  parseJSON =
    Core.withObject
      "ListMonitoredResourceDescriptorsResponse"
      ( \o ->
          ListMonitoredResourceDescriptorsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "resourceDescriptors"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    ListMonitoredResourceDescriptorsResponse
  where
  toJSON ListMonitoredResourceDescriptorsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resourceDescriptors" Core..=)
              Core.<$> resourceDescriptors
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | Result returned from ListSinks.
--
-- /See:/ 'newListSinksResponse' smart constructor.
data ListSinksResponse = ListSinksResponse
  { -- | If there might be more results than appear in this response, then nextPageToken is included. To get the next set of results, call the same method again using the value of nextPageToken as pageToken.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of sinks.
    sinks :: (Core.Maybe [LogSink])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSinksResponse' with the minimum fields required to make a request.
newListSinksResponse ::
  ListSinksResponse
newListSinksResponse =
  ListSinksResponse {nextPageToken = Core.Nothing, sinks = Core.Nothing}

instance Core.FromJSON ListSinksResponse where
  parseJSON =
    Core.withObject
      "ListSinksResponse"
      ( \o ->
          ListSinksResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sinks" Core..!= Core.mempty)
      )

instance Core.ToJSON ListSinksResponse where
  toJSON ListSinksResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sinks" Core..=) Core.<$> sinks
          ]
      )

-- | The response from ListViews.
--
-- /See:/ 'newListViewsResponse' smart constructor.
data ListViewsResponse = ListViewsResponse
  { -- | If there might be more results than appear in this response, then nextPageToken is included. To get the next set of results, call the same method again using the value of nextPageToken as pageToken.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of views.
    views :: (Core.Maybe [LogView])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListViewsResponse' with the minimum fields required to make a request.
newListViewsResponse ::
  ListViewsResponse
newListViewsResponse =
  ListViewsResponse {nextPageToken = Core.Nothing, views = Core.Nothing}

instance Core.FromJSON ListViewsResponse where
  parseJSON =
    Core.withObject
      "ListViewsResponse"
      ( \o ->
          ListViewsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "views" Core..!= Core.mempty)
      )

instance Core.ToJSON ListViewsResponse where
  toJSON ListViewsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("views" Core..=) Core.<$> views
          ]
      )

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | The canonical id for this location. For example: \"us-east1\".
    locationId :: (Core.Maybe Core.Text),
    -- | Service-specific metadata. For example the available capacity at the given location.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Resource name for the location, which may vary between implementations. For example: \"projects\/example-project\/locations\/us-east1\"
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { displayName = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional = Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      ( \o ->
          Location_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON additional

-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata additional = Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      ( \o ->
          Location_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | Describes a repository in which log entries are stored.
--
-- /See:/ 'newLogBucket' smart constructor.
data LogBucket = LogBucket
  { -- | The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
    cmekSettings :: (Core.Maybe CmekSettings),
    -- | Output only. The creation timestamp of the bucket. This is not set for any of the default buckets.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Describes this bucket.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The bucket lifecycle state.
    lifecycleState :: (Core.Maybe LogBucket_LifecycleState),
    -- | Whether the bucket is locked.The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
    locked :: (Core.Maybe Core.Bool),
    -- | Output only. The resource name of the bucket.For example:projects\/my-project\/locations\/global\/buckets\/my-bucketFor a list of supported locations, see Supported Regions (https:\/\/cloud.google.com\/logging\/docs\/region-support)For the location of global it is unspecified where log entries are actually stored.After a bucket has been created, the location cannot be changed.
    name :: (Core.Maybe Core.Text),
    -- | Log entry field paths that are denied access in this bucket.The following fields and their children are eligible: textPayload, jsonPayload, protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field will restrict all values. Adding a parent will block all child fields. (e.g. foo.bar will block foo.bar.baz)
    restrictedFields :: (Core.Maybe [Core.Text]),
    -- | Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
    retentionDays :: (Core.Maybe Core.Int32),
    -- | Output only. The last update timestamp of the bucket.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogBucket' with the minimum fields required to make a request.
newLogBucket ::
  LogBucket
newLogBucket =
  LogBucket
    { cmekSettings = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      lifecycleState = Core.Nothing,
      locked = Core.Nothing,
      name = Core.Nothing,
      restrictedFields = Core.Nothing,
      retentionDays = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON LogBucket where
  parseJSON =
    Core.withObject
      "LogBucket"
      ( \o ->
          LogBucket
            Core.<$> (o Core..:? "cmekSettings")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "lifecycleState")
            Core.<*> (o Core..:? "locked")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "restrictedFields" Core..!= Core.mempty)
            Core.<*> (o Core..:? "retentionDays")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON LogBucket where
  toJSON LogBucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("cmekSettings" Core..=) Core.<$> cmekSettings,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("lifecycleState" Core..=) Core.<$> lifecycleState,
            ("locked" Core..=) Core.<$> locked,
            ("name" Core..=) Core.<$> name,
            ("restrictedFields" Core..=)
              Core.<$> restrictedFields,
            ("retentionDays" Core..=) Core.<$> retentionDays,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | An individual entry in a log.
--
-- /See:/ 'newLogEntry' smart constructor.
data LogEntry = LogEntry
  { -- | Optional. Information about the HTTP request associated with this log entry, if applicable.
    httpRequest :: (Core.Maybe HttpRequest),
    -- | Optional. A unique identifier for the log entry. If you provide a value, then Logging considers other log entries in the same project, with the same timestamp, and with the same insert/id to be duplicates which are removed in a single query result. However, there are no guarantees of de-duplication in the export of logs.If the insert/id is omitted when writing a log entry, the Logging API assigns its own unique identifier in this field.In queries, the insert/id is also used to order log entries that have the same log/name and timestamp values.
    insertId :: (Core.Maybe Core.Text),
    -- | The log entry payload, represented as a structure that is expressed as a JSON object.
    jsonPayload :: (Core.Maybe LogEntry_JsonPayload),
    -- | Optional. A map of key, value pairs that provides additional information about the log entry. The labels can be user-defined or system-defined.User-defined labels are arbitrary key, value pairs that you can use to classify logs.System-defined labels are defined by GCP services for platform logs. They have two components - a service namespace component and the attribute name. For example: compute.googleapis.com\/resource_name.Cloud Logging truncates label keys that exceed 512 B and label values that exceed 64 KB upon their associated log entry being written. The truncation is indicated by an ellipsis at the end of the character string.
    labels :: (Core.Maybe LogEntry_Labels),
    -- | Required. The resource name of the log to which this log entry belongs: \"projects\/[PROJECT/ID]\/logs\/[LOG/ID]\" \"organizations\/[ORGANIZATION/ID]\/logs\/[LOG/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/logs\/[LOG/ID]\" \"folders\/[FOLDER/ID]\/logs\/[LOG/ID]\" A project number may be used in place of PROJECT/ID. The project number is translated to its corresponding PROJECT/ID internally and the log/name field will contain PROJECT/ID in queries and exports.[LOG/ID] must be URL-encoded within log/name. Example: \"organizations\/1234567890\/logs\/cloudresourcemanager.googleapis.com%2Factivity\".[LOG/ID] must be less than 512 characters long and can only include the following characters: upper and lower case alphanumeric characters, forward-slash, underscore, hyphen, and period.For backward compatibility, if log_name begins with a forward-slash, such as \/projects\/..., then the log entry is ingested as usual, but the forward-slash is removed. Listing the log entry will not show the leading slash and
    -- filtering for a log name with a leading slash will never return any results.
    logName :: (Core.Maybe Core.Text),
    -- | Output only. Deprecated. This field is not used by Logging. Any value written to it is cleared.
    metadata :: (Core.Maybe MonitoredResourceMetadata),
    -- | Optional. Information about an operation associated with the log entry, if applicable.
    operation :: (Core.Maybe LogEntryOperation),
    -- | The log entry payload, represented as a protocol buffer. Some Google Cloud Platform services use this field for their log entry payloads.The following protocol buffer types are supported; user-defined types are not supported:\"type.googleapis.com\/google.cloud.audit.AuditLog\" \"type.googleapis.com\/google.appengine.logging.v1.RequestLog\"
    protoPayload :: (Core.Maybe LogEntry_ProtoPayload),
    -- | Output only. The time the log entry was received by Logging.
    receiveTimestamp :: (Core.Maybe Core.DateTime'),
    -- | Required. The monitored resource that produced this log entry.Example: a log entry that reports a database error would be associated with the monitored resource designating the particular database that reported the error.
    resource :: (Core.Maybe MonitoredResource),
    -- | Optional. The severity of the log entry. The default value is LogSeverity.DEFAULT.
    severity :: (Core.Maybe LogEntry_Severity),
    -- | Optional. Source code location information associated with the log entry, if any.
    sourceLocation :: (Core.Maybe LogEntrySourceLocation),
    -- | Optional. The span ID within the trace associated with the log entry.For Trace spans, this is the same format that the Trace API v2 uses: a 16-character hexadecimal encoding of an 8-byte array, such as 000000000000004a.
    spanId :: (Core.Maybe Core.Text),
    -- | Optional. Information indicating this LogEntry is part of a sequence of multiple log entries split from a single LogEntry.
    split :: (Core.Maybe LogSplit),
    -- | The log entry payload, represented as a Unicode string (UTF-8).
    textPayload :: (Core.Maybe Core.Text),
    -- | Optional. The time the event described by the log entry occurred. This time is used to compute the log entry\'s age and to enforce the logs retention period. If this field is omitted in a new log entry, then Logging assigns it the current time. Timestamps have nanosecond accuracy, but trailing zeros in the fractional seconds might be omitted when the timestamp is displayed.Incoming log entries must have timestamps that don\'t exceed the logs retention period (https:\/\/cloud.google.com\/logging\/quotas#logs/retention/periods) in the past, and that don\'t exceed 24 hours in the future. Log entries outside those time boundaries aren\'t ingested by Logging.
    timestamp :: (Core.Maybe Core.DateTime'),
    -- | Optional. Resource name of the trace associated with the log entry, if any. If it contains a relative resource name, the name is assumed to be relative to \/\/tracing.googleapis.com. Example: projects\/my-projectid\/traces\/06796866738c859f2f19b7cfb3214824
    trace :: (Core.Maybe Core.Text),
    -- | Optional. The sampling decision of the trace associated with the log entry.True means that the trace resource name in the trace field was sampled for storage in a trace backend. False means that the trace was not sampled for storage when this log entry was written, or the sampling decision was unknown at the time. A non-sampled trace value is still useful as a request correlation identifier. The default is False.
    traceSampled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogEntry' with the minimum fields required to make a request.
newLogEntry ::
  LogEntry
newLogEntry =
  LogEntry
    { httpRequest = Core.Nothing,
      insertId = Core.Nothing,
      jsonPayload = Core.Nothing,
      labels = Core.Nothing,
      logName = Core.Nothing,
      metadata = Core.Nothing,
      operation = Core.Nothing,
      protoPayload = Core.Nothing,
      receiveTimestamp = Core.Nothing,
      resource = Core.Nothing,
      severity = Core.Nothing,
      sourceLocation = Core.Nothing,
      spanId = Core.Nothing,
      split = Core.Nothing,
      textPayload = Core.Nothing,
      timestamp = Core.Nothing,
      trace = Core.Nothing,
      traceSampled = Core.Nothing
    }

instance Core.FromJSON LogEntry where
  parseJSON =
    Core.withObject
      "LogEntry"
      ( \o ->
          LogEntry
            Core.<$> (o Core..:? "httpRequest")
            Core.<*> (o Core..:? "insertId")
            Core.<*> (o Core..:? "jsonPayload")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "logName")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "operation")
            Core.<*> (o Core..:? "protoPayload")
            Core.<*> (o Core..:? "receiveTimestamp")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "sourceLocation")
            Core.<*> (o Core..:? "spanId")
            Core.<*> (o Core..:? "split")
            Core.<*> (o Core..:? "textPayload")
            Core.<*> (o Core..:? "timestamp")
            Core.<*> (o Core..:? "trace")
            Core.<*> (o Core..:? "traceSampled")
      )

instance Core.ToJSON LogEntry where
  toJSON LogEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("httpRequest" Core..=) Core.<$> httpRequest,
            ("insertId" Core..=) Core.<$> insertId,
            ("jsonPayload" Core..=) Core.<$> jsonPayload,
            ("labels" Core..=) Core.<$> labels,
            ("logName" Core..=) Core.<$> logName,
            ("metadata" Core..=) Core.<$> metadata,
            ("operation" Core..=) Core.<$> operation,
            ("protoPayload" Core..=) Core.<$> protoPayload,
            ("receiveTimestamp" Core..=)
              Core.<$> receiveTimestamp,
            ("resource" Core..=) Core.<$> resource,
            ("severity" Core..=) Core.<$> severity,
            ("sourceLocation" Core..=) Core.<$> sourceLocation,
            ("spanId" Core..=) Core.<$> spanId,
            ("split" Core..=) Core.<$> split,
            ("textPayload" Core..=) Core.<$> textPayload,
            ("timestamp" Core..=) Core.<$> timestamp,
            ("trace" Core..=) Core.<$> trace,
            ("traceSampled" Core..=) Core.<$> traceSampled
          ]
      )

-- | The log entry payload, represented as a structure that is expressed as a JSON object.
--
-- /See:/ 'newLogEntry_JsonPayload' smart constructor.
newtype LogEntry_JsonPayload = LogEntry_JsonPayload
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogEntry_JsonPayload' with the minimum fields required to make a request.
newLogEntry_JsonPayload ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  LogEntry_JsonPayload
newLogEntry_JsonPayload additional =
  LogEntry_JsonPayload {additional = additional}

instance Core.FromJSON LogEntry_JsonPayload where
  parseJSON =
    Core.withObject
      "LogEntry_JsonPayload"
      ( \o ->
          LogEntry_JsonPayload
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LogEntry_JsonPayload where
  toJSON LogEntry_JsonPayload {..} =
    Core.toJSON additional

-- | Optional. A map of key, value pairs that provides additional information about the log entry. The labels can be user-defined or system-defined.User-defined labels are arbitrary key, value pairs that you can use to classify logs.System-defined labels are defined by GCP services for platform logs. They have two components - a service namespace component and the attribute name. For example: compute.googleapis.com\/resource_name.Cloud Logging truncates label keys that exceed 512 B and label values that exceed 64 KB upon their associated log entry being written. The truncation is indicated by an ellipsis at the end of the character string.
--
-- /See:/ 'newLogEntry_Labels' smart constructor.
newtype LogEntry_Labels = LogEntry_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogEntry_Labels' with the minimum fields required to make a request.
newLogEntry_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  LogEntry_Labels
newLogEntry_Labels additional = LogEntry_Labels {additional = additional}

instance Core.FromJSON LogEntry_Labels where
  parseJSON =
    Core.withObject
      "LogEntry_Labels"
      ( \o ->
          LogEntry_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LogEntry_Labels where
  toJSON LogEntry_Labels {..} = Core.toJSON additional

-- | The log entry payload, represented as a protocol buffer. Some Google Cloud Platform services use this field for their log entry payloads.The following protocol buffer types are supported; user-defined types are not supported:\"type.googleapis.com\/google.cloud.audit.AuditLog\" \"type.googleapis.com\/google.appengine.logging.v1.RequestLog\"
--
-- /See:/ 'newLogEntry_ProtoPayload' smart constructor.
newtype LogEntry_ProtoPayload = LogEntry_ProtoPayload
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogEntry_ProtoPayload' with the minimum fields required to make a request.
newLogEntry_ProtoPayload ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  LogEntry_ProtoPayload
newLogEntry_ProtoPayload additional =
  LogEntry_ProtoPayload {additional = additional}

instance Core.FromJSON LogEntry_ProtoPayload where
  parseJSON =
    Core.withObject
      "LogEntry_ProtoPayload"
      ( \o ->
          LogEntry_ProtoPayload
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LogEntry_ProtoPayload where
  toJSON LogEntry_ProtoPayload {..} =
    Core.toJSON additional

-- | Additional information about a potentially long-running operation with which a log entry is associated.
--
-- /See:/ 'newLogEntryOperation' smart constructor.
data LogEntryOperation = LogEntryOperation
  { -- | Optional. Set this to True if this is the first log entry in the operation.
    first :: (Core.Maybe Core.Bool),
    -- | Optional. An arbitrary operation identifier. Log entries with the same identifier are assumed to be part of the same operation.
    id :: (Core.Maybe Core.Text),
    -- | Optional. Set this to True if this is the last log entry in the operation.
    last :: (Core.Maybe Core.Bool),
    -- | Optional. An arbitrary producer identifier. The combination of id and producer must be globally unique. Examples for producer: \"MyDivision.MyBigCompany.com\", \"github.com\/MyProject\/MyApplication\".
    producer :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogEntryOperation' with the minimum fields required to make a request.
newLogEntryOperation ::
  LogEntryOperation
newLogEntryOperation =
  LogEntryOperation
    { first = Core.Nothing,
      id = Core.Nothing,
      last = Core.Nothing,
      producer = Core.Nothing
    }

instance Core.FromJSON LogEntryOperation where
  parseJSON =
    Core.withObject
      "LogEntryOperation"
      ( \o ->
          LogEntryOperation
            Core.<$> (o Core..:? "first")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "last")
            Core.<*> (o Core..:? "producer")
      )

instance Core.ToJSON LogEntryOperation where
  toJSON LogEntryOperation {..} =
    Core.object
      ( Core.catMaybes
          [ ("first" Core..=) Core.<$> first,
            ("id" Core..=) Core.<$> id,
            ("last" Core..=) Core.<$> last,
            ("producer" Core..=) Core.<$> producer
          ]
      )

-- | Additional information about the source code location that produced the log entry.
--
-- /See:/ 'newLogEntrySourceLocation' smart constructor.
data LogEntrySourceLocation = LogEntrySourceLocation
  { -- | Optional. Source file name. Depending on the runtime environment, this might be a simple name or a fully-qualified name.
    file :: (Core.Maybe Core.Text),
    -- | Optional. Human-readable name of the function or method being invoked, with optional context such as the class or package name. This information may be used in contexts such as the logs viewer, where a file and line number are less meaningful. The format can vary by language. For example: qual.if.ied.Class.method (Java), dir\/package.func (Go), function (Python).
    function :: (Core.Maybe Core.Text),
    -- | Optional. Line within the source file. 1-based; 0 indicates no line number available.
    line :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogEntrySourceLocation' with the minimum fields required to make a request.
newLogEntrySourceLocation ::
  LogEntrySourceLocation
newLogEntrySourceLocation =
  LogEntrySourceLocation
    { file = Core.Nothing,
      function = Core.Nothing,
      line = Core.Nothing
    }

instance Core.FromJSON LogEntrySourceLocation where
  parseJSON =
    Core.withObject
      "LogEntrySourceLocation"
      ( \o ->
          LogEntrySourceLocation
            Core.<$> (o Core..:? "file")
            Core.<*> (o Core..:? "function")
            Core.<*> (o Core..:? "line")
      )

instance Core.ToJSON LogEntrySourceLocation where
  toJSON LogEntrySourceLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("file" Core..=) Core.<$> file,
            ("function" Core..=) Core.<$> function,
            ("line" Core..=) Core.. Core.AsText Core.<$> line
          ]
      )

-- | Specifies a set of log entries that are filtered out by a sink. If your Google Cloud resource receives a large volume of log entries, you can use exclusions to reduce your chargeable logs. Note that exclusions on organization-level and folder-level sinks don\'t apply to child resources. Note also that you cannot modify the _Required sink or exclude logs from it.
--
-- /See:/ 'newLogExclusion' smart constructor.
data LogExclusion = LogExclusion
  { -- | Output only. The creation timestamp of the exclusion.This field may not be present for older exclusions.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Optional. A description of this exclusion.
    description :: (Core.Maybe Core.Text),
    -- | Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
    disabled :: (Core.Maybe Core.Bool),
    -- | Required. An advanced logs filter (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced-queries) that matches the log entries to be excluded. By using the sample function (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity\<ERROR sample(insertId, 0.99)
    filter :: (Core.Maybe Core.Text),
    -- | Required. A client-assigned identifier, such as \"load-balancer-exclusion\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The last update timestamp of the exclusion.This field may not be present for older exclusions.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogExclusion' with the minimum fields required to make a request.
newLogExclusion ::
  LogExclusion
newLogExclusion =
  LogExclusion
    { createTime = Core.Nothing,
      description = Core.Nothing,
      disabled = Core.Nothing,
      filter = Core.Nothing,
      name = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON LogExclusion where
  parseJSON =
    Core.withObject
      "LogExclusion"
      ( \o ->
          LogExclusion
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON LogExclusion where
  toJSON LogExclusion {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("disabled" Core..=) Core.<$> disabled,
            ("filter" Core..=) Core.<$> filter,
            ("name" Core..=) Core.<$> name,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Application log line emitted while processing a request.
--
-- /See:/ 'newLogLine' smart constructor.
data LogLine = LogLine
  { -- | App-provided log message.
    logMessage :: (Core.Maybe Core.Text),
    -- | Severity of this log entry.
    severity :: (Core.Maybe LogLine_Severity),
    -- | Where in the source code this log message was written.
    sourceLocation :: (Core.Maybe SourceLocation),
    -- | Approximate time when this log entry was made.
    time :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogLine' with the minimum fields required to make a request.
newLogLine ::
  LogLine
newLogLine =
  LogLine
    { logMessage = Core.Nothing,
      severity = Core.Nothing,
      sourceLocation = Core.Nothing,
      time = Core.Nothing
    }

instance Core.FromJSON LogLine where
  parseJSON =
    Core.withObject
      "LogLine"
      ( \o ->
          LogLine
            Core.<$> (o Core..:? "logMessage")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "sourceLocation")
            Core.<*> (o Core..:? "time")
      )

instance Core.ToJSON LogLine where
  toJSON LogLine {..} =
    Core.object
      ( Core.catMaybes
          [ ("logMessage" Core..=) Core.<$> logMessage,
            ("severity" Core..=) Core.<$> severity,
            ("sourceLocation" Core..=) Core.<$> sourceLocation,
            ("time" Core..=) Core.<$> time
          ]
      )

-- | Describes a logs-based metric. The value of the metric is the number of log entries that match a logs filter in a given time interval.Logs-based metrics can also be used to extract values from logs and create a distribution of the values. The distribution records the statistics of the extracted values along with an optional histogram of the values as specified by the bucket options.
--
-- /See:/ 'newLogMetric' smart constructor.
data LogMetric = LogMetric
  { -- | Optional. The bucket_options are required when the logs-based metric is using a DISTRIBUTION value type and it describes the bucket boundaries used to create a histogram of the extracted values.
    bucketOptions :: (Core.Maybe BucketOptions),
    -- | Output only. The creation timestamp of the metric.This field may not be present for older metrics.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Optional. A description of this metric, which is used in documentation. The maximum length of the description is 8000 characters.
    description :: (Core.Maybe Core.Text),
    -- | Optional. If set to True, then this metric is disabled and it does not generate any points.
    disabled :: (Core.Maybe Core.Bool),
    -- | Required. An advanced logs filter (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced/filters) which is used to match log entries. Example: \"resource.type=gae/app AND severity>=ERROR\" The maximum length of the filter is 20000 characters.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. A map from a label key string to an extractor expression which is used to extract data from a log entry field and assign as the label value. Each label key specified in the LabelDescriptor must have an associated extractor expression in this map. The syntax of the extractor expression is the same as for the value_extractor field.The extracted value is converted to the type defined in the label descriptor. If the either the extraction or the type conversion fails, the label will have a default value. The default value for a string label is an empty string, for an integer label its 0, and for a boolean label its false.Note that there are upper bounds on the maximum number of labels and the number of active time series that are allowed in a project.
    labelExtractors :: (Core.Maybe LogMetric_LabelExtractors),
    -- | Optional. The metric descriptor associated with the logs-based metric. If unspecified, it uses a default metric descriptor with a DELTA metric kind, INT64 value type, with no labels and a unit of \"1\". Such a metric counts the number of log entries matching the filter expression.The name, type, and description fields in the metric/descriptor are output only, and is constructed using the name and description field in the LogMetric.To create a logs-based metric that records a distribution of log values, a DELTA metric kind with a DISTRIBUTION value type must be used along with a value/extractor expression in the LogMetric.Each label in the metric descriptor must have a matching label name as the key and an extractor expression as the value in the label/extractors map.The metric/kind and value/type fields in the metric/descriptor cannot be updated once initially configured. New labels can be added in the metric_descriptor, but existing labels cannot be modified except for their description.
    metricDescriptor :: (Core.Maybe MetricDescriptor),
    -- | Required. The client-assigned metric identifier. Examples: \"error/count\", \"nginx\/requests\".Metric identifiers are limited to 100 characters and can include only the following characters: A-Z, a-z, 0-9, and the special characters /-.,+!*\',()%\/. The forward-slash character (\/) denotes a hierarchy of name pieces, and it cannot be the first character of the name.This field is the [METRIC/ID] part of a metric resource name in the format \"projects\/PROJECT/ID\/metrics\/METRIC_ID\". Example: If the resource name of a metric is \"projects\/my-project\/metrics\/nginx%2Frequests\", this field\'s value is \"nginx\/requests\".
    name :: (Core.Maybe Core.Text),
    -- | Output only. The last update timestamp of the metric.This field may not be present for older metrics.
    updateTime :: (Core.Maybe Core.DateTime'),
    -- | Optional. A value/extractor is required when using a distribution logs-based metric to extract the values to record from a log entry. Two functions are supported for value extraction: EXTRACT(field) or REGEXP/EXTRACT(field, regex). The argument are: 1. field: The name of the log entry field from which the value is to be extracted. 2. regex: A regular expression using the Google RE2 syntax (https:\/\/github.com\/google\/re2\/wiki\/Syntax) with a single capture group to extract data from the specified log entry field. The value of the field is converted to a string before applying the regex. It is an error to specify a regex that does not include exactly one capture group.The result of the extraction must be convertible to a double type, as the distribution always records double values. If either the extraction or the conversion to double fails, then those values are not recorded in the distribution.Example: REGEXP_EXTRACT(jsonPayload.request, \"./quantity=(\\d+)./\")
    valueExtractor :: (Core.Maybe Core.Text),
    -- | Deprecated. The API version that created or updated this metric. The v2 format is used by default and cannot be changed.
    version :: (Core.Maybe LogMetric_Version)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogMetric' with the minimum fields required to make a request.
newLogMetric ::
  LogMetric
newLogMetric =
  LogMetric
    { bucketOptions = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      disabled = Core.Nothing,
      filter = Core.Nothing,
      labelExtractors = Core.Nothing,
      metricDescriptor = Core.Nothing,
      name = Core.Nothing,
      updateTime = Core.Nothing,
      valueExtractor = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON LogMetric where
  parseJSON =
    Core.withObject
      "LogMetric"
      ( \o ->
          LogMetric
            Core.<$> (o Core..:? "bucketOptions")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "labelExtractors")
            Core.<*> (o Core..:? "metricDescriptor")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "valueExtractor")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON LogMetric where
  toJSON LogMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketOptions" Core..=) Core.<$> bucketOptions,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("disabled" Core..=) Core.<$> disabled,
            ("filter" Core..=) Core.<$> filter,
            ("labelExtractors" Core..=) Core.<$> labelExtractors,
            ("metricDescriptor" Core..=)
              Core.<$> metricDescriptor,
            ("name" Core..=) Core.<$> name,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("valueExtractor" Core..=) Core.<$> valueExtractor,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Optional. A map from a label key string to an extractor expression which is used to extract data from a log entry field and assign as the label value. Each label key specified in the LabelDescriptor must have an associated extractor expression in this map. The syntax of the extractor expression is the same as for the value_extractor field.The extracted value is converted to the type defined in the label descriptor. If the either the extraction or the type conversion fails, the label will have a default value. The default value for a string label is an empty string, for an integer label its 0, and for a boolean label its false.Note that there are upper bounds on the maximum number of labels and the number of active time series that are allowed in a project.
--
-- /See:/ 'newLogMetric_LabelExtractors' smart constructor.
newtype LogMetric_LabelExtractors = LogMetric_LabelExtractors
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogMetric_LabelExtractors' with the minimum fields required to make a request.
newLogMetric_LabelExtractors ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  LogMetric_LabelExtractors
newLogMetric_LabelExtractors additional =
  LogMetric_LabelExtractors {additional = additional}

instance Core.FromJSON LogMetric_LabelExtractors where
  parseJSON =
    Core.withObject
      "LogMetric_LabelExtractors"
      ( \o ->
          LogMetric_LabelExtractors
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LogMetric_LabelExtractors where
  toJSON LogMetric_LabelExtractors {..} =
    Core.toJSON additional

-- | Describes a sink used to export log entries to one of the following destinations in any project: a Cloud Storage bucket, a BigQuery dataset, a Pub\/Sub topic or a Cloud Logging log bucket. A logs filter controls which log entries are exported. The sink must be created within a project, organization, billing account, or folder.
--
-- /See:/ 'newLogSink' smart constructor.
data LogSink = LogSink
  { -- | Optional. Options that affect sinks exporting data to BigQuery.
    bigqueryOptions :: (Core.Maybe BigQueryOptions),
    -- | Output only. The creation timestamp of the sink.This field may not be present for older sinks.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Optional. A description of this sink.The maximum length of the description is 8000 characters.
    description :: (Core.Maybe Core.Text),
    -- | Required. The export destination: \"storage.googleapis.com\/[GCS/BUCKET]\" \"bigquery.googleapis.com\/projects\/[PROJECT/ID]\/datasets\/[DATASET]\" \"pubsub.googleapis.com\/projects\/[PROJECT/ID]\/topics\/[TOPIC/ID]\" The sink\'s writer_identity, set when the sink is created, must have permission to write to the destination or else the log entries are not exported. For more information, see Exporting Logs with Sinks (https:\/\/cloud.google.com\/logging\/docs\/api\/tasks\/exporting-logs).
    destination :: (Core.Maybe Core.Text),
    -- | Optional. If set to true, then this sink is disabled and it does not export any log entries.
    disabled :: (Core.Maybe Core.Bool),
    -- | Optional. Log entries that match any of these exclusion filters will not be exported.If a log entry is matched by both filter and one of exclusion_filters it will not be exported.
    exclusions :: (Core.Maybe [LogExclusion]),
    -- | Optional. An advanced logs filter (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced-queries). The only exported log entries are those that are in the resource owning the sink and that match the filter.For example:logName=\"projects\/[PROJECT/ID]\/logs\/[LOG/ID]\" AND severity>=ERROR
    filter :: (Core.Maybe Core.Text),
    -- | Optional. This field applies only to sinks owned by organizations and folders. If the field is false, the default, only the logs owned by the sink\'s parent resource are available for export. If the field is true, then log entries from all the projects, folders, and billing accounts contained in the sink\'s parent resource are also available for export. Whether a particular log entry from the children is exported depends on the sink\'s filter expression.For example, if this field is true, then the filter resource.type=gce/instance would export all Compute Engine VM instance log entries from all projects in the sink\'s parent.To only export entries from certain child projects, filter on the project part of the log name:logName:(\"projects\/test-project1\/\" OR \"projects\/test-project2\/\") AND resource.type=gce/instance
    includeChildren :: (Core.Maybe Core.Bool),
    -- | Required. The client-assigned sink identifier, unique within the project.For example: \"my-syslog-errors-to-pubsub\". Sink identifiers are limited to 100 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods. First character has to be alphanumeric.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. This field is unused.
    outputVersionFormat :: (Core.Maybe LogSink_OutputVersionFormat),
    -- | Output only. The last update timestamp of the sink.This field may not be present for older sinks.
    updateTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. An IAM identity—a service account or group—under which Cloud Logging writes the exported log entries to the sink\'s destination. This field is set by sinks.create and sinks.update based on the value of unique/writer/identity in those methods.Until you grant this identity write-access to the destination, log entry exports from this sink will fail. For more information, see Granting Access for a Resource (https:\/\/cloud.google.com\/iam\/docs\/granting-roles-to-service-accounts#granting/access/to/a/service/account/for/a/resource). Consult the destination service\'s documentation to determine the appropriate IAM roles to assign to the identity.Sinks that have a destination that is a log bucket in the same project as the sink do not have a writer_identity and no additional permissions are required.
    writerIdentity :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogSink' with the minimum fields required to make a request.
newLogSink ::
  LogSink
newLogSink =
  LogSink
    { bigqueryOptions = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      destination = Core.Nothing,
      disabled = Core.Nothing,
      exclusions = Core.Nothing,
      filter = Core.Nothing,
      includeChildren = Core.Nothing,
      name = Core.Nothing,
      outputVersionFormat = Core.Nothing,
      updateTime = Core.Nothing,
      writerIdentity = Core.Nothing
    }

instance Core.FromJSON LogSink where
  parseJSON =
    Core.withObject
      "LogSink"
      ( \o ->
          LogSink
            Core.<$> (o Core..:? "bigqueryOptions")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "exclusions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "includeChildren")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "outputVersionFormat")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "writerIdentity")
      )

instance Core.ToJSON LogSink where
  toJSON LogSink {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigqueryOptions" Core..=)
              Core.<$> bigqueryOptions,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("destination" Core..=) Core.<$> destination,
            ("disabled" Core..=) Core.<$> disabled,
            ("exclusions" Core..=) Core.<$> exclusions,
            ("filter" Core..=) Core.<$> filter,
            ("includeChildren" Core..=) Core.<$> includeChildren,
            ("name" Core..=) Core.<$> name,
            ("outputVersionFormat" Core..=)
              Core.<$> outputVersionFormat,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("writerIdentity" Core..=) Core.<$> writerIdentity
          ]
      )

-- | Additional information used to correlate multiple log entries. Used when a single LogEntry would exceed the Google Cloud Logging size limit and is split across multiple log entries.
--
-- /See:/ 'newLogSplit' smart constructor.
data LogSplit = LogSplit
  { -- | The index of this LogEntry in the sequence of split log entries. Log entries are given |index| values 0, 1, ..., n-1 for a sequence of n log entries.
    index :: (Core.Maybe Core.Int32),
    -- | The total number of log entries that the original LogEntry was split into.
    totalSplits :: (Core.Maybe Core.Int32),
    -- | A globally unique identifier for all log entries in a sequence of split log entries. All log entries with the same |LogSplit.uid| are assumed to be part of the same sequence of split log entries.
    uid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogSplit' with the minimum fields required to make a request.
newLogSplit ::
  LogSplit
newLogSplit =
  LogSplit
    { index = Core.Nothing,
      totalSplits = Core.Nothing,
      uid = Core.Nothing
    }

instance Core.FromJSON LogSplit where
  parseJSON =
    Core.withObject
      "LogSplit"
      ( \o ->
          LogSplit
            Core.<$> (o Core..:? "index")
            Core.<*> (o Core..:? "totalSplits")
            Core.<*> (o Core..:? "uid")
      )

instance Core.ToJSON LogSplit where
  toJSON LogSplit {..} =
    Core.object
      ( Core.catMaybes
          [ ("index" Core..=) Core.<$> index,
            ("totalSplits" Core..=) Core.<$> totalSplits,
            ("uid" Core..=) Core.<$> uid
          ]
      )

-- | Describes a view over log entries in a bucket.
--
-- /See:/ 'newLogView' smart constructor.
data LogView = LogView
  { -- | Output only. The creation timestamp of the view.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Describes this view.
    description :: (Core.Maybe Core.Text),
    -- | Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==\/!= of any of the following: originating project\/folder\/organization\/billing account. resource type log idFor example:SOURCE(\"projects\/myproject\") AND resource.type = \"gce/instance\" AND LOG/ID(\"stdout\")
    filter :: (Core.Maybe Core.Text),
    -- | The resource name of the view.For example:projects\/my-project\/locations\/global\/buckets\/my-bucket\/views\/my-view
    name :: (Core.Maybe Core.Text),
    -- | Output only. The last update timestamp of the view.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogView' with the minimum fields required to make a request.
newLogView ::
  LogView
newLogView =
  LogView
    { createTime = Core.Nothing,
      description = Core.Nothing,
      filter = Core.Nothing,
      name = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON LogView where
  parseJSON =
    Core.withObject
      "LogView"
      ( \o ->
          LogView
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON LogView where
  toJSON LogView {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("filter" Core..=) Core.<$> filter,
            ("name" Core..=) Core.<$> name,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type\'s existing data unusable.
--
-- /See:/ 'newMetricDescriptor' smart constructor.
data MetricDescriptor = MetricDescriptor
  { -- | A detailed description of the metric, which can be used in documentation.
    description :: (Core.Maybe Core.Text),
    -- | A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example \"Request count\". This field is optional but it is recommended to be set for any metrics associated with user-visible concepts, such as Quota.
    displayName :: (Core.Maybe Core.Text),
    -- | The set of labels that can be used to describe a specific instance of this metric type. For example, the appengine.googleapis.com\/http\/server\/response/latencies metric type has a label for the HTTP response code, response/code, so you can look at latencies for successful responses or just for responses that failed.
    labels :: (Core.Maybe [LabelDescriptor]),
    -- | Optional. The launch stage of the metric definition.
    launchStage :: (Core.Maybe MetricDescriptor_LaunchStage),
    -- | Optional. Metadata which can be used to guide usage of the metric.
    metadata :: (Core.Maybe MetricDescriptorMetadata),
    -- | Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metric/kind and value/type might not be supported.
    metricKind :: (Core.Maybe MetricDescriptor_MetricKind),
    -- | Read-only. If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here.
    monitoredResourceTypes :: (Core.Maybe [Core.Text]),
    -- | The resource name of the metric descriptor.
    name :: (Core.Maybe Core.Text),
    -- | The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined metric types have the DNS name custom.googleapis.com or external.googleapis.com. Metric types should use a natural hierarchical grouping. For example: \"custom.googleapis.com\/invoice\/paid\/amount\" \"external.googleapis.com\/prometheus\/up\" \"appengine.googleapis.com\/http\/server\/response_latencies\"
    type' :: (Core.Maybe Core.Text),
    -- | The units in which the metric value is reported. It is only applicable if the value/type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of the stored metric values.Different systems might scale the values to be more easily displayed (so a value of 0.02kBy might be displayed as 20By, and a value of 3523kBy might be displayed as 3.5MBy). However, if the unit is kBy, then the value of the metric is always in thousands of bytes, no matter how it might be displayed.If you want a custom metric to record the exact number of CPU-seconds used by a job, you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as 12005.Alternatively, if you want a custom metric to record data in a more granular way, you can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value 12.005 (which is 12005\/1000), or use Kis{CPU} and write 11.723 (which is 12005\/1024).The supported units
    -- are a subset of The Unified Code for Units of Measure (https:\/\/unitsofmeasure.org\/ucum.html) standard:Basic units (UNIT) bit bit By byte s second min minute h hour d day 1 dimensionlessPrefixes (PREFIX) k kilo (10^3) M mega (10^6) G giga (10^9) T tera (10^12) P peta (10^15) E exa (10^18) Z zetta (10^21) Y yotta (10^24) m milli (10^-3) u micro (10^-6) n nano (10^-9) p pico (10^-12) f femto (10^-15) a atto (10^-18) z zepto (10^-21) y yocto (10^-24) Ki kibi (2^10) Mi mebi (2^20) Gi gibi (2^30) Ti tebi (2^40) Pi pebi (2^50)GrammarThe grammar also includes these connectors: \/ division or ratio (as an infix operator). For examples, kBy\/{email} or MiBy\/10ms (although you should almost never have \/s in a metric unit; rates should always be computed at query time from the underlying cumulative or delta value). . multiplication or composition (as an infix operator). For examples, GBy.d or k{watt}.h.The grammar for a unit is as follows: Expression = Component { \".\" Component } { \"\/\" Component } ; Component =
    -- ( [ PREFIX ] UNIT | \"%\" ) [ Annotation ] | Annotation | \"1\" ; Annotation = \"{\" NAME \"}\" ; Notes: Annotation is just a comment if it follows a UNIT. If the annotation is used alone, then the unit is equivalent to 1. For examples, {request}\/s == 1\/s, By{transmitted}\/s == By\/s. NAME is a sequence of non-blank printable ASCII characters not containing { or }. 1 represents a unitary dimensionless unit (https:\/\/en.wikipedia.org\/wiki\/Dimensionless/quantity) of 1, such as in 1\/s. It is typically used when none of the basic units are appropriate. For example, \"new users per day\" can be represented as 1\/d or {new-users}\/d (and a metric value 5 would mean \"5 new users). Alternatively, \"thousands of page views per day\" would be represented as 1000\/d or k1\/d or k{page_views}\/d (and a metric value of 5.3 would mean \"5300 page views per day\"). % represents dimensionless value of 1\/100, and annotates values giving a percentage (so the metric values are typically in the range of 0..100, and a
    -- metric value 3 means \"3 percent\"). 10^2.% indicates a metric contains a ratio, typically in the range 0..1, that will be multiplied by 100 and displayed as a percentage (so a metric value 0.03 means \"3 percent\").
    unit :: (Core.Maybe Core.Text),
    -- | Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric/kind and value/type might not be supported.
    valueType :: (Core.Maybe MetricDescriptor_ValueType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricDescriptor' with the minimum fields required to make a request.
newMetricDescriptor ::
  MetricDescriptor
newMetricDescriptor =
  MetricDescriptor
    { description = Core.Nothing,
      displayName = Core.Nothing,
      labels = Core.Nothing,
      launchStage = Core.Nothing,
      metadata = Core.Nothing,
      metricKind = Core.Nothing,
      monitoredResourceTypes = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing,
      unit = Core.Nothing,
      valueType = Core.Nothing
    }

instance Core.FromJSON MetricDescriptor where
  parseJSON =
    Core.withObject
      "MetricDescriptor"
      ( \o ->
          MetricDescriptor
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels" Core..!= Core.mempty)
            Core.<*> (o Core..:? "launchStage")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "metricKind")
            Core.<*> ( o Core..:? "monitoredResourceTypes"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "unit")
            Core.<*> (o Core..:? "valueType")
      )

instance Core.ToJSON MetricDescriptor where
  toJSON MetricDescriptor {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("launchStage" Core..=) Core.<$> launchStage,
            ("metadata" Core..=) Core.<$> metadata,
            ("metricKind" Core..=) Core.<$> metricKind,
            ("monitoredResourceTypes" Core..=)
              Core.<$> monitoredResourceTypes,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type',
            ("unit" Core..=) Core.<$> unit,
            ("valueType" Core..=) Core.<$> valueType
          ]
      )

-- | Additional annotations that can be used to guide the usage of a metric.
--
-- /See:/ 'newMetricDescriptorMetadata' smart constructor.
data MetricDescriptorMetadata = MetricDescriptorMetadata
  { -- | The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.
    ingestDelay :: (Core.Maybe Core.GDuration),
    -- | Deprecated. Must use the MetricDescriptor.launch_stage instead.
    launchStage :: (Core.Maybe MetricDescriptorMetadata_LaunchStage),
    -- | The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.
    samplePeriod :: (Core.Maybe Core.GDuration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricDescriptorMetadata' with the minimum fields required to make a request.
newMetricDescriptorMetadata ::
  MetricDescriptorMetadata
newMetricDescriptorMetadata =
  MetricDescriptorMetadata
    { ingestDelay = Core.Nothing,
      launchStage = Core.Nothing,
      samplePeriod = Core.Nothing
    }

instance Core.FromJSON MetricDescriptorMetadata where
  parseJSON =
    Core.withObject
      "MetricDescriptorMetadata"
      ( \o ->
          MetricDescriptorMetadata
            Core.<$> (o Core..:? "ingestDelay")
            Core.<*> (o Core..:? "launchStage")
            Core.<*> (o Core..:? "samplePeriod")
      )

instance Core.ToJSON MetricDescriptorMetadata where
  toJSON MetricDescriptorMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("ingestDelay" Core..=) Core.<$> ingestDelay,
            ("launchStage" Core..=) Core.<$> launchStage,
            ("samplePeriod" Core..=) Core.<$> samplePeriod
          ]
      )

-- | An object representing a resource that can be used for monitoring, logging, billing, or other purposes. Examples include virtual machine instances, databases, and storage devices such as disks. The type field identifies a MonitoredResourceDescriptor object that describes the resource\'s schema. Information in the labels field identifies the actual resource and its attributes according to the schema. For example, a particular Compute Engine VM instance could be represented by the following object, because the MonitoredResourceDescriptor for \"gce/instance\" has labels \"project/id\", \"instance/id\" and \"zone\": { \"type\": \"gce/instance\", \"labels\": { \"project/id\": \"my-project\", \"instance/id\": \"12345678901234\", \"zone\": \"us-central1-a\" }}
--
-- /See:/ 'newMonitoredResource' smart constructor.
data MonitoredResource = MonitoredResource
  { -- | Required. Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels \"project/id\", \"instance/id\", and \"zone\".
    labels :: (Core.Maybe MonitoredResource_Labels),
    -- | Required. The monitored resource type. This field must match the type field of a MonitoredResourceDescriptor object. For example, the type of a Compute Engine VM instance is gce_instance. Some descriptors include the service name in the type; for example, the type of a Datastream stream is datastream.googleapis.com\/Stream.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResource' with the minimum fields required to make a request.
newMonitoredResource ::
  MonitoredResource
newMonitoredResource =
  MonitoredResource {labels = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON MonitoredResource where
  parseJSON =
    Core.withObject
      "MonitoredResource"
      ( \o ->
          MonitoredResource
            Core.<$> (o Core..:? "labels") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON MonitoredResource where
  toJSON MonitoredResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Required. Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels \"project/id\", \"instance/id\", and \"zone\".
--
-- /See:/ 'newMonitoredResource_Labels' smart constructor.
newtype MonitoredResource_Labels = MonitoredResource_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResource_Labels' with the minimum fields required to make a request.
newMonitoredResource_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  MonitoredResource_Labels
newMonitoredResource_Labels additional =
  MonitoredResource_Labels {additional = additional}

instance Core.FromJSON MonitoredResource_Labels where
  parseJSON =
    Core.withObject
      "MonitoredResource_Labels"
      ( \o ->
          MonitoredResource_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON MonitoredResource_Labels where
  toJSON MonitoredResource_Labels {..} =
    Core.toJSON additional

-- | An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of \"gce/instance\" and specifies the use of the labels \"instance/id\" and \"zone\" to identify particular VM instances.Different APIs can support different monitored resource types. APIs generally provide a list method that returns the monitored resource descriptors used by the API.
--
-- /See:/ 'newMonitoredResourceDescriptor' smart constructor.
data MonitoredResourceDescriptor = MonitoredResourceDescriptor
  { -- | Optional. A detailed description of the monitored resource type that might be used in documentation.
    description :: (Core.Maybe Core.Text),
    -- | Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, \"Google Cloud SQL Database\".
    displayName :: (Core.Maybe Core.Text),
    -- | Required. A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels \"database_id\" and \"zone\".
    labels :: (Core.Maybe [LabelDescriptor]),
    -- | Optional. The launch stage of the monitored resource definition.
    launchStage :: (Core.Maybe MonitoredResourceDescriptor_LaunchStage),
    -- | Optional. The resource name of the monitored resource descriptor: \"projects\/{project/id}\/monitoredResourceDescriptors\/{type}\" where {type} is the value of the type field in this object and {project/id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format \"monitoredResourceDescriptors\/{type}\".
    name :: (Core.Maybe Core.Text),
    -- | Required. The monitored resource type. For example, the type \"cloudsql_database\" represents databases in Google Cloud SQL. For a list of types, see Monitoring resource types (https:\/\/cloud.google.com\/monitoring\/api\/resources) and Logging resource types (https:\/\/cloud.google.com\/logging\/docs\/api\/v2\/resource-list).
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResourceDescriptor' with the minimum fields required to make a request.
newMonitoredResourceDescriptor ::
  MonitoredResourceDescriptor
newMonitoredResourceDescriptor =
  MonitoredResourceDescriptor
    { description = Core.Nothing,
      displayName = Core.Nothing,
      labels = Core.Nothing,
      launchStage = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON MonitoredResourceDescriptor where
  parseJSON =
    Core.withObject
      "MonitoredResourceDescriptor"
      ( \o ->
          MonitoredResourceDescriptor
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels" Core..!= Core.mempty)
            Core.<*> (o Core..:? "launchStage")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON MonitoredResourceDescriptor where
  toJSON MonitoredResourceDescriptor {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("launchStage" Core..=) Core.<$> launchStage,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Auxiliary metadata for a MonitoredResource object. MonitoredResource objects contain the minimum set of information to uniquely identify a monitored resource instance. There is some other useful auxiliary metadata. Monitoring and Logging use an ingestion pipeline to extract metadata for cloud resources of all types, and store the metadata in this message.
--
-- /See:/ 'newMonitoredResourceMetadata' smart constructor.
data MonitoredResourceMetadata = MonitoredResourceMetadata
  { -- | Output only. Values for predefined system metadata labels. System labels are a kind of metadata extracted by Google, including \"machine/image\", \"vpc\", \"subnet/id\", \"security/group\", \"name\", etc. System label values can be only strings, Boolean values, or a list of strings. For example: { \"name\": \"my-test-instance\", \"security/group\": [\"a\", \"b\", \"c\"], \"spot_instance\": false }
    systemLabels :: (Core.Maybe MonitoredResourceMetadata_SystemLabels),
    -- | Output only. A map of user-defined metadata labels.
    userLabels :: (Core.Maybe MonitoredResourceMetadata_UserLabels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResourceMetadata' with the minimum fields required to make a request.
newMonitoredResourceMetadata ::
  MonitoredResourceMetadata
newMonitoredResourceMetadata =
  MonitoredResourceMetadata
    { systemLabels = Core.Nothing,
      userLabels = Core.Nothing
    }

instance Core.FromJSON MonitoredResourceMetadata where
  parseJSON =
    Core.withObject
      "MonitoredResourceMetadata"
      ( \o ->
          MonitoredResourceMetadata
            Core.<$> (o Core..:? "systemLabels")
            Core.<*> (o Core..:? "userLabels")
      )

instance Core.ToJSON MonitoredResourceMetadata where
  toJSON MonitoredResourceMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("systemLabels" Core..=) Core.<$> systemLabels,
            ("userLabels" Core..=) Core.<$> userLabels
          ]
      )

-- | Output only. Values for predefined system metadata labels. System labels are a kind of metadata extracted by Google, including \"machine/image\", \"vpc\", \"subnet/id\", \"security/group\", \"name\", etc. System label values can be only strings, Boolean values, or a list of strings. For example: { \"name\": \"my-test-instance\", \"security/group\": [\"a\", \"b\", \"c\"], \"spot_instance\": false }
--
-- /See:/ 'newMonitoredResourceMetadata_SystemLabels' smart constructor.
newtype MonitoredResourceMetadata_SystemLabels = MonitoredResourceMetadata_SystemLabels
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResourceMetadata_SystemLabels' with the minimum fields required to make a request.
newMonitoredResourceMetadata_SystemLabels ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  MonitoredResourceMetadata_SystemLabels
newMonitoredResourceMetadata_SystemLabels additional =
  MonitoredResourceMetadata_SystemLabels {additional = additional}

instance
  Core.FromJSON
    MonitoredResourceMetadata_SystemLabels
  where
  parseJSON =
    Core.withObject
      "MonitoredResourceMetadata_SystemLabels"
      ( \o ->
          MonitoredResourceMetadata_SystemLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    MonitoredResourceMetadata_SystemLabels
  where
  toJSON MonitoredResourceMetadata_SystemLabels {..} =
    Core.toJSON additional

-- | Output only. A map of user-defined metadata labels.
--
-- /See:/ 'newMonitoredResourceMetadata_UserLabels' smart constructor.
newtype MonitoredResourceMetadata_UserLabels = MonitoredResourceMetadata_UserLabels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResourceMetadata_UserLabels' with the minimum fields required to make a request.
newMonitoredResourceMetadata_UserLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  MonitoredResourceMetadata_UserLabels
newMonitoredResourceMetadata_UserLabels additional =
  MonitoredResourceMetadata_UserLabels {additional = additional}

instance
  Core.FromJSON
    MonitoredResourceMetadata_UserLabels
  where
  parseJSON =
    Core.withObject
      "MonitoredResourceMetadata_UserLabels"
      ( \o ->
          MonitoredResourceMetadata_UserLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    MonitoredResourceMetadata_UserLabels
  where
  toJSON MonitoredResourceMetadata_UserLabels {..} =
    Core.toJSON additional

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is false, it means the operation is still in progress. If true, the operation is completed, and either error or response is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the name should be a resource name ending with operations\/{unique_id}.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get\/Create\/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get\/Create\/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | Complete log information about a single HTTP request to an App Engine application.
--
-- /See:/ 'newRequestLog' smart constructor.
data RequestLog = RequestLog
  { -- | App Engine release version.
    appEngineRelease :: (Core.Maybe Core.Text),
    -- | Application that handled this request.
    appId :: (Core.Maybe Core.Text),
    -- | An indication of the relative cost of serving this request.
    cost :: (Core.Maybe Core.Double),
    -- | Time when the request finished.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Whether this request is finished or active.
    finished :: (Core.Maybe Core.Bool),
    -- | Whether this is the first RequestLog entry for this request. If an active request has several RequestLog entries written to Stackdriver Logging, then this field will be set for one of them.
    first :: (Core.Maybe Core.Bool),
    -- | Internet host and port number of the resource being requested.
    host :: (Core.Maybe Core.Text),
    -- | HTTP version of request. Example: \"HTTP\/1.1\".
    httpVersion :: (Core.Maybe Core.Text),
    -- | An identifier for the instance that handled the request.
    instanceId :: (Core.Maybe Core.Text),
    -- | If the instance processing this request belongs to a manually scaled module, then this is the 0-based index of the instance. Otherwise, this value is -1.
    instanceIndex :: (Core.Maybe Core.Int32),
    -- | Origin IP address.
    ip :: (Core.Maybe Core.Text),
    -- | Latency of the request.
    latency :: (Core.Maybe Core.GDuration),
    -- | A list of log lines emitted by the application while serving this request.
    line :: (Core.Maybe [LogLine]),
    -- | Number of CPU megacycles used to process request.
    megaCycles :: (Core.Maybe Core.Int64),
    -- | Request method. Example: \"GET\", \"HEAD\", \"PUT\", \"POST\", \"DELETE\".
    method :: (Core.Maybe Core.Text),
    -- | Module of the application that handled this request.
    moduleId :: (Core.Maybe Core.Text),
    -- | The logged-in user who made the request.Most likely, this is the part of the user\'s email before the \@ sign. The field value is the same for different requests from the same user, but different users can have similar names. This information is also available to the application via the App Engine Users API.This field will be populated starting with App Engine 1.9.21.
    nickname :: (Core.Maybe Core.Text),
    -- | Time this request spent in the pending request queue.
    pendingTime :: (Core.Maybe Core.GDuration),
    -- | Referrer URL of request.
    referrer :: (Core.Maybe Core.Text),
    -- | Globally unique identifier for a request, which is based on the request start time. Request IDs for requests which started later will compare greater as strings than those for requests which started earlier.
    requestId :: (Core.Maybe Core.Text),
    -- | Contains the path and query portion of the URL that was requested. For example, if the URL was \"http:\/\/example.com\/app?name=val\", the resource would be \"\/app?name=val\". The fragment identifier, which is identified by the # character, is not included.
    resource :: (Core.Maybe Core.Text),
    -- | Size in bytes sent back to client by request.
    responseSize :: (Core.Maybe Core.Int64),
    -- | Source code for the application that handled this request. There can be more than one source reference per deployed application if source code is distributed among multiple repositories.
    sourceReference :: (Core.Maybe [SourceReference]),
    -- | Time when the request started.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | HTTP response status code. Example: 200, 404.
    status :: (Core.Maybe Core.Int32),
    -- | Task name of the request, in the case of an offline request.
    taskName :: (Core.Maybe Core.Text),
    -- | Queue name of the request, in the case of an offline request.
    taskQueueName :: (Core.Maybe Core.Text),
    -- | Stackdriver Trace identifier for this request.
    traceId :: (Core.Maybe Core.Text),
    -- | If true, the value in the \'trace_id\' field was sampled for storage in a trace backend.
    traceSampled :: (Core.Maybe Core.Bool),
    -- | File or class that handled the request.
    urlMapEntry :: (Core.Maybe Core.Text),
    -- | User agent that made the request.
    userAgent :: (Core.Maybe Core.Text),
    -- | Version of the application that handled this request.
    versionId :: (Core.Maybe Core.Text),
    -- | Whether this was a loading request for the instance.
    wasLoadingRequest :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestLog' with the minimum fields required to make a request.
newRequestLog ::
  RequestLog
newRequestLog =
  RequestLog
    { appEngineRelease = Core.Nothing,
      appId = Core.Nothing,
      cost = Core.Nothing,
      endTime = Core.Nothing,
      finished = Core.Nothing,
      first = Core.Nothing,
      host = Core.Nothing,
      httpVersion = Core.Nothing,
      instanceId = Core.Nothing,
      instanceIndex = Core.Nothing,
      ip = Core.Nothing,
      latency = Core.Nothing,
      line = Core.Nothing,
      megaCycles = Core.Nothing,
      method = Core.Nothing,
      moduleId = Core.Nothing,
      nickname = Core.Nothing,
      pendingTime = Core.Nothing,
      referrer = Core.Nothing,
      requestId = Core.Nothing,
      resource = Core.Nothing,
      responseSize = Core.Nothing,
      sourceReference = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing,
      taskName = Core.Nothing,
      taskQueueName = Core.Nothing,
      traceId = Core.Nothing,
      traceSampled = Core.Nothing,
      urlMapEntry = Core.Nothing,
      userAgent = Core.Nothing,
      versionId = Core.Nothing,
      wasLoadingRequest = Core.Nothing
    }

instance Core.FromJSON RequestLog where
  parseJSON =
    Core.withObject
      "RequestLog"
      ( \o ->
          RequestLog
            Core.<$> (o Core..:? "appEngineRelease")
            Core.<*> (o Core..:? "appId")
            Core.<*> (o Core..:? "cost")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "finished")
            Core.<*> (o Core..:? "first")
            Core.<*> (o Core..:? "host")
            Core.<*> (o Core..:? "httpVersion")
            Core.<*> (o Core..:? "instanceId")
            Core.<*> (o Core..:? "instanceIndex")
            Core.<*> (o Core..:? "ip")
            Core.<*> (o Core..:? "latency")
            Core.<*> (o Core..:? "line" Core..!= Core.mempty)
            Core.<*> (o Core..:? "megaCycles")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "moduleId")
            Core.<*> (o Core..:? "nickname")
            Core.<*> (o Core..:? "pendingTime")
            Core.<*> (o Core..:? "referrer")
            Core.<*> (o Core..:? "requestId")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "responseSize")
            Core.<*> (o Core..:? "sourceReference" Core..!= Core.mempty)
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "taskName")
            Core.<*> (o Core..:? "taskQueueName")
            Core.<*> (o Core..:? "traceId")
            Core.<*> (o Core..:? "traceSampled")
            Core.<*> (o Core..:? "urlMapEntry")
            Core.<*> (o Core..:? "userAgent")
            Core.<*> (o Core..:? "versionId")
            Core.<*> (o Core..:? "wasLoadingRequest")
      )

instance Core.ToJSON RequestLog where
  toJSON RequestLog {..} =
    Core.object
      ( Core.catMaybes
          [ ("appEngineRelease" Core..=)
              Core.<$> appEngineRelease,
            ("appId" Core..=) Core.<$> appId,
            ("cost" Core..=) Core.<$> cost,
            ("endTime" Core..=) Core.<$> endTime,
            ("finished" Core..=) Core.<$> finished,
            ("first" Core..=) Core.<$> first,
            ("host" Core..=) Core.<$> host,
            ("httpVersion" Core..=) Core.<$> httpVersion,
            ("instanceId" Core..=) Core.<$> instanceId,
            ("instanceIndex" Core..=) Core.<$> instanceIndex,
            ("ip" Core..=) Core.<$> ip,
            ("latency" Core..=) Core.<$> latency,
            ("line" Core..=) Core.<$> line,
            ("megaCycles" Core..=) Core.. Core.AsText
              Core.<$> megaCycles,
            ("method" Core..=) Core.<$> method,
            ("moduleId" Core..=) Core.<$> moduleId,
            ("nickname" Core..=) Core.<$> nickname,
            ("pendingTime" Core..=) Core.<$> pendingTime,
            ("referrer" Core..=) Core.<$> referrer,
            ("requestId" Core..=) Core.<$> requestId,
            ("resource" Core..=) Core.<$> resource,
            ("responseSize" Core..=) Core.. Core.AsText
              Core.<$> responseSize,
            ("sourceReference" Core..=) Core.<$> sourceReference,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status,
            ("taskName" Core..=) Core.<$> taskName,
            ("taskQueueName" Core..=) Core.<$> taskQueueName,
            ("traceId" Core..=) Core.<$> traceId,
            ("traceSampled" Core..=) Core.<$> traceSampled,
            ("urlMapEntry" Core..=) Core.<$> urlMapEntry,
            ("userAgent" Core..=) Core.<$> userAgent,
            ("versionId" Core..=) Core.<$> versionId,
            ("wasLoadingRequest" Core..=)
              Core.<$> wasLoadingRequest
          ]
      )

-- | Describes the settings associated with a project, folder, organization, billing account, or flexible resource.
--
-- /See:/ 'newSettings' smart constructor.
data Settings = Settings
  { -- | Optional. If set to true, the /Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log ingestion if there is already an aggregated sink configured in the hierarchy. The /Default sink can be re-enabled manually if needed.
    disableDefaultSink :: (Core.Maybe Core.Bool),
    -- | Optional. The resource name for the configured Cloud KMS key.KMS key name format: \"projects\/[PROJECT/ID]\/locations\/[LOCATION]\/keyRings\/[KEYRING]\/cryptoKeys\/[KEY]\" For example:\"projects\/my-project\/locations\/us-central1\/keyRings\/my-ring\/cryptoKeys\/my-key\"To enable CMEK for the Log Router, set this field to a valid kms/key/name for which the associated service account has the required roles\/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key.The Cloud KMS key used by the Log Router can be updated by changing the kms/key_name to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.To disable CMEK for the Log Router, set this field to an empty string.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more
    -- information.
    kmsKeyName :: (Core.Maybe Core.Text),
    -- | Output only. The service account that will be used by the Log Router to access your Cloud KMS key.Before enabling CMEK for Log Router, you must first assign the role roles\/cloudkms.cryptoKeyEncrypterDecrypter to the service account that the Log Router will use to access your Cloud KMS key. Use GetSettings to obtain the service account ID.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
    kmsServiceAccountId :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the settings.
    name :: (Core.Maybe Core.Text),
    -- | Optional. The Cloud region that will be used for /Default and /Required log buckets for newly created projects and folders. For example europe-west1. This setting does not affect the location of custom log buckets.
    storageLocation :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
newSettings ::
  Settings
newSettings =
  Settings
    { disableDefaultSink = Core.Nothing,
      kmsKeyName = Core.Nothing,
      kmsServiceAccountId = Core.Nothing,
      name = Core.Nothing,
      storageLocation = Core.Nothing
    }

instance Core.FromJSON Settings where
  parseJSON =
    Core.withObject
      "Settings"
      ( \o ->
          Settings
            Core.<$> (o Core..:? "disableDefaultSink")
            Core.<*> (o Core..:? "kmsKeyName")
            Core.<*> (o Core..:? "kmsServiceAccountId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "storageLocation")
      )

instance Core.ToJSON Settings where
  toJSON Settings {..} =
    Core.object
      ( Core.catMaybes
          [ ("disableDefaultSink" Core..=)
              Core.<$> disableDefaultSink,
            ("kmsKeyName" Core..=) Core.<$> kmsKeyName,
            ("kmsServiceAccountId" Core..=)
              Core.<$> kmsServiceAccountId,
            ("name" Core..=) Core.<$> name,
            ("storageLocation" Core..=)
              Core.<$> storageLocation
          ]
      )

-- | Specifies a location in a source code file.
--
-- /See:/ 'newSourceLocation' smart constructor.
data SourceLocation = SourceLocation
  { -- | Source file name. Depending on the runtime environment, this might be a simple name or a fully-qualified name.
    file :: (Core.Maybe Core.Text),
    -- | Human-readable name of the function or method being invoked, with optional context such as the class or package name. This information is used in contexts such as the logs viewer, where a file and line number are less meaningful. The format can vary by language. For example: qual.if.ied.Class.method (Java), dir\/package.func (Go), function (Python).
    functionName :: (Core.Maybe Core.Text),
    -- | Line within the source file.
    line :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceLocation' with the minimum fields required to make a request.
newSourceLocation ::
  SourceLocation
newSourceLocation =
  SourceLocation
    { file = Core.Nothing,
      functionName = Core.Nothing,
      line = Core.Nothing
    }

instance Core.FromJSON SourceLocation where
  parseJSON =
    Core.withObject
      "SourceLocation"
      ( \o ->
          SourceLocation
            Core.<$> (o Core..:? "file")
            Core.<*> (o Core..:? "functionName")
            Core.<*> (o Core..:? "line")
      )

instance Core.ToJSON SourceLocation where
  toJSON SourceLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("file" Core..=) Core.<$> file,
            ("functionName" Core..=) Core.<$> functionName,
            ("line" Core..=) Core.. Core.AsText Core.<$> line
          ]
      )

-- | A reference to a particular snapshot of the source tree used to build and deploy an application.
--
-- /See:/ 'newSourceReference' smart constructor.
data SourceReference = SourceReference
  { -- | Optional. A URI string identifying the repository. Example: \"https:\/\/github.com\/GoogleCloudPlatform\/kubernetes.git\"
    repository :: (Core.Maybe Core.Text),
    -- | The canonical and persistent identifier of the deployed revision. Example (git): \"0035781c50ec7aa23385dc841529ce8a4b70db1b\"
    revisionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceReference' with the minimum fields required to make a request.
newSourceReference ::
  SourceReference
newSourceReference =
  SourceReference {repository = Core.Nothing, revisionId = Core.Nothing}

instance Core.FromJSON SourceReference where
  parseJSON =
    Core.withObject
      "SourceReference"
      ( \o ->
          SourceReference
            Core.<$> (o Core..:? "repository")
            Core.<*> (o Core..:? "revisionId")
      )

instance Core.ToJSON SourceReference where
  toJSON SourceReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("repository" Core..=) Core.<$> repository,
            ("revisionId" Core..=) Core.<$> revisionId
          ]
      )

-- | The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https:\/\/github.com\/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Information about entries that were omitted from the session.
--
-- /See:/ 'newSuppressionInfo' smart constructor.
data SuppressionInfo = SuppressionInfo
  { -- | The reason that entries were omitted from the session.
    reason :: (Core.Maybe SuppressionInfo_Reason),
    -- | A lower bound on the count of entries omitted due to reason.
    suppressedCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuppressionInfo' with the minimum fields required to make a request.
newSuppressionInfo ::
  SuppressionInfo
newSuppressionInfo =
  SuppressionInfo {reason = Core.Nothing, suppressedCount = Core.Nothing}

instance Core.FromJSON SuppressionInfo where
  parseJSON =
    Core.withObject
      "SuppressionInfo"
      ( \o ->
          SuppressionInfo
            Core.<$> (o Core..:? "reason")
            Core.<*> (o Core..:? "suppressedCount")
      )

instance Core.ToJSON SuppressionInfo where
  toJSON SuppressionInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("reason" Core..=) Core.<$> reason,
            ("suppressedCount" Core..=)
              Core.<$> suppressedCount
          ]
      )

-- | The parameters to TailLogEntries.
--
-- /See:/ 'newTailLogEntriesRequest' smart constructor.
data TailLogEntriesRequest = TailLogEntriesRequest
  { -- | Optional. The amount of time to buffer log entries at the server before being returned to prevent out of order results due to late arriving log entries. Valid values are between 0-60000 milliseconds. Defaults to 2000 milliseconds.
    bufferWindow :: (Core.Maybe Core.GDuration),
    -- | Optional. A filter that chooses which log entries to return. See Advanced Logs Filters (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced/filters). Only log entries that match the filter are returned. An empty filter matches all log entries in the resources listed in resource/names. Referencing a parent resource that is not in resource_names will cause the filter to return no results. The maximum length of the filter is 20000 characters.
    filter :: (Core.Maybe Core.Text),
    -- | Required. Name of a parent resource from which to retrieve log entries: projects\/[PROJECT/ID] organizations\/[ORGANIZATION/ID] billingAccounts\/[BILLING/ACCOUNT/ID] folders\/[FOLDER/ID]May alternatively be one or more views: projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID] organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID] billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID] folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID]
    resourceNames :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TailLogEntriesRequest' with the minimum fields required to make a request.
newTailLogEntriesRequest ::
  TailLogEntriesRequest
newTailLogEntriesRequest =
  TailLogEntriesRequest
    { bufferWindow = Core.Nothing,
      filter = Core.Nothing,
      resourceNames = Core.Nothing
    }

instance Core.FromJSON TailLogEntriesRequest where
  parseJSON =
    Core.withObject
      "TailLogEntriesRequest"
      ( \o ->
          TailLogEntriesRequest
            Core.<$> (o Core..:? "bufferWindow")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "resourceNames" Core..!= Core.mempty)
      )

instance Core.ToJSON TailLogEntriesRequest where
  toJSON TailLogEntriesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("bufferWindow" Core..=) Core.<$> bufferWindow,
            ("filter" Core..=) Core.<$> filter,
            ("resourceNames" Core..=) Core.<$> resourceNames
          ]
      )

-- | Result returned from TailLogEntries.
--
-- /See:/ 'newTailLogEntriesResponse' smart constructor.
data TailLogEntriesResponse = TailLogEntriesResponse
  { -- | A list of log entries. Each response in the stream will order entries with increasing values of LogEntry.timestamp. Ordering is not guaranteed between separate responses.
    entries :: (Core.Maybe [LogEntry]),
    -- | If entries that otherwise would have been included in the session were not sent back to the client, counts of relevant entries omitted from the session with the reason that they were not included. There will be at most one of each reason per response. The counts represent the number of suppressed entries since the last streamed response.
    suppressionInfo :: (Core.Maybe [SuppressionInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TailLogEntriesResponse' with the minimum fields required to make a request.
newTailLogEntriesResponse ::
  TailLogEntriesResponse
newTailLogEntriesResponse =
  TailLogEntriesResponse
    { entries = Core.Nothing,
      suppressionInfo = Core.Nothing
    }

instance Core.FromJSON TailLogEntriesResponse where
  parseJSON =
    Core.withObject
      "TailLogEntriesResponse"
      ( \o ->
          TailLogEntriesResponse
            Core.<$> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "suppressionInfo" Core..!= Core.mempty)
      )

instance Core.ToJSON TailLogEntriesResponse where
  toJSON TailLogEntriesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entries" Core..=) Core.<$> entries,
            ("suppressionInfo" Core..=)
              Core.<$> suppressionInfo
          ]
      )

-- | The parameters to UndeleteBucket.
--
-- /See:/ 'newUndeleteBucketRequest' smart constructor.
data UndeleteBucketRequest = UndeleteBucketRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteBucketRequest' with the minimum fields required to make a request.
newUndeleteBucketRequest ::
  UndeleteBucketRequest
newUndeleteBucketRequest = UndeleteBucketRequest

instance Core.FromJSON UndeleteBucketRequest where
  parseJSON =
    Core.withObject
      "UndeleteBucketRequest"
      (\o -> Core.pure UndeleteBucketRequest)

instance Core.ToJSON UndeleteBucketRequest where
  toJSON = Core.const Core.emptyObject

-- | The parameters to WriteLogEntries.
--
-- /See:/ 'newWriteLogEntriesRequest' smart constructor.
data WriteLogEntriesRequest = WriteLogEntriesRequest
  { -- | Optional. If true, the request should expect normal response, but the entries won\'t be persisted nor exported. Useful for checking whether the logging API endpoints are working properly before sending valuable data.
    dryRun :: (Core.Maybe Core.Bool),
    -- | Required. The log entries to send to Logging. The order of log entries in this list does not matter. Values supplied in this method\'s log/name, resource, and labels fields are copied into those log entries in this list that do not include values for their corresponding fields. For more information, see the LogEntry type.If the timestamp or insert/id fields are missing in log entries, then this method supplies the current time or a unique identifier, respectively. The supplied values are chosen so that, among the log entries that did not supply their own values, the entries earlier in the list will sort before the entries later in the list. See the entries.list method.Log entries with timestamps that are more than the logs retention period (https:\/\/cloud.google.com\/logging\/quotas) in the past or more than 24 hours in the future will not be available when calling entries.list. However, those log entries can still be exported with LogSinks
    -- (https:\/\/cloud.google.com\/logging\/docs\/api\/tasks\/exporting-logs).To improve throughput and to avoid exceeding the quota limit (https:\/\/cloud.google.com\/logging\/quotas) for calls to entries.write, you should try to include several log entries in this list, rather than calling this method for each individual log entry.
    entries :: (Core.Maybe [LogEntry]),
    -- | Optional. Default labels that are added to the labels field of all log entries in entries. If a log entry already has a label with the same key as a label in this parameter, then the log entry\'s label is not changed. See LogEntry.
    labels :: (Core.Maybe WriteLogEntriesRequest_Labels),
    -- | Optional. A default log resource name that is assigned to all log entries in entries that do not specify a value for log/name: projects\/[PROJECT/ID]\/logs\/[LOG/ID] organizations\/[ORGANIZATION/ID]\/logs\/[LOG/ID] billingAccounts\/[BILLING/ACCOUNT/ID]\/logs\/[LOG/ID] folders\/[FOLDER_ID]\/logs\/[LOG_ID][LOG_ID] must be URL-encoded. For example: \"projects\/my-project-id\/logs\/syslog\" \"organizations\/123\/logs\/cloudaudit.googleapis.com%2Factivity\" The permission logging.logEntries.create is needed on each project, organization, billing account, or folder that is receiving new log entries, whether the resource is specified in logName or in an individual log entry.
    logName :: (Core.Maybe Core.Text),
    -- | Optional. Whether valid entries should be written even if some other entries fail due to INVALID/ARGUMENT or PERMISSION/DENIED errors. If any entry is not written, then the response status is the error associated with one of the failed entries and the response includes error details keyed by the entries\' zero-based index in the entries.write method.
    partialSuccess :: (Core.Maybe Core.Bool),
    -- | Optional. A default monitored resource object that is assigned to all log entries in entries that do not specify a value for resource. Example: { \"type\": \"gce/instance\", \"labels\": { \"zone\": \"us-central1-a\", \"instance/id\": \"00000000000000000000\" }} See LogEntry.
    resource :: (Core.Maybe MonitoredResource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteLogEntriesRequest' with the minimum fields required to make a request.
newWriteLogEntriesRequest ::
  WriteLogEntriesRequest
newWriteLogEntriesRequest =
  WriteLogEntriesRequest
    { dryRun = Core.Nothing,
      entries = Core.Nothing,
      labels = Core.Nothing,
      logName = Core.Nothing,
      partialSuccess = Core.Nothing,
      resource = Core.Nothing
    }

instance Core.FromJSON WriteLogEntriesRequest where
  parseJSON =
    Core.withObject
      "WriteLogEntriesRequest"
      ( \o ->
          WriteLogEntriesRequest
            Core.<$> (o Core..:? "dryRun")
            Core.<*> (o Core..:? "entries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "logName")
            Core.<*> (o Core..:? "partialSuccess")
            Core.<*> (o Core..:? "resource")
      )

instance Core.ToJSON WriteLogEntriesRequest where
  toJSON WriteLogEntriesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dryRun" Core..=) Core.<$> dryRun,
            ("entries" Core..=) Core.<$> entries,
            ("labels" Core..=) Core.<$> labels,
            ("logName" Core..=) Core.<$> logName,
            ("partialSuccess" Core..=) Core.<$> partialSuccess,
            ("resource" Core..=) Core.<$> resource
          ]
      )

-- | Optional. Default labels that are added to the labels field of all log entries in entries. If a log entry already has a label with the same key as a label in this parameter, then the log entry\'s label is not changed. See LogEntry.
--
-- /See:/ 'newWriteLogEntriesRequest_Labels' smart constructor.
newtype WriteLogEntriesRequest_Labels = WriteLogEntriesRequest_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteLogEntriesRequest_Labels' with the minimum fields required to make a request.
newWriteLogEntriesRequest_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  WriteLogEntriesRequest_Labels
newWriteLogEntriesRequest_Labels additional =
  WriteLogEntriesRequest_Labels {additional = additional}

instance Core.FromJSON WriteLogEntriesRequest_Labels where
  parseJSON =
    Core.withObject
      "WriteLogEntriesRequest_Labels"
      ( \o ->
          WriteLogEntriesRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON WriteLogEntriesRequest_Labels where
  toJSON WriteLogEntriesRequest_Labels {..} =
    Core.toJSON additional

-- | Result returned from WriteLogEntries.
--
-- /See:/ 'newWriteLogEntriesResponse' smart constructor.
data WriteLogEntriesResponse = WriteLogEntriesResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteLogEntriesResponse' with the minimum fields required to make a request.
newWriteLogEntriesResponse ::
  WriteLogEntriesResponse
newWriteLogEntriesResponse = WriteLogEntriesResponse

instance Core.FromJSON WriteLogEntriesResponse where
  parseJSON =
    Core.withObject
      "WriteLogEntriesResponse"
      (\o -> Core.pure WriteLogEntriesResponse)

instance Core.ToJSON WriteLogEntriesResponse where
  toJSON = Core.const Core.emptyObject
