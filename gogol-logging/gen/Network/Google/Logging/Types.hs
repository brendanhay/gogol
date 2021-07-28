{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Logging.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Logging.Types
    (
    -- * Service Configuration
      loggingService

    -- * OAuth Scopes
    , loggingAdminScope
    , loggingReadScope
    , loggingWriteScope
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope

    -- * MetricDescriptorValueType
    , MetricDescriptorValueType (..)

    -- * MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription
    , mrdLaunchStage

    -- * ListBucketsResponse
    , ListBucketsResponse
    , listBucketsResponse
    , lbrNextPageToken
    , lbrBuckets

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ListLogEntriesResponse
    , ListLogEntriesResponse
    , listLogEntriesResponse
    , llerNextPageToken
    , llerEntries

    -- * MetricDescriptor
    , MetricDescriptor
    , metricDescriptor
    , mdMonitoredResourceTypes
    , mdMetricKind
    , mdName
    , mdMetadata
    , mdDisplayName
    , mdLabels
    , mdType
    , mdValueType
    , mdDescription
    , mdUnit
    , mdLaunchStage

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * TailLogEntriesRequest
    , TailLogEntriesRequest
    , tailLogEntriesRequest
    , tlerBufferWindow
    , tlerFilter
    , tlerResourceNames

    -- * MonitoredResourceLabels
    , MonitoredResourceLabels
    , monitoredResourceLabels
    , mrlAddtional

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * LogMetricVersion
    , LogMetricVersion (..)

    -- * MonitoredResourceMetadata
    , MonitoredResourceMetadata
    , monitoredResourceMetadata
    , mrmUserLabels
    , mrmSystemLabels

    -- * ListLogMetricsResponse
    , ListLogMetricsResponse
    , listLogMetricsResponse
    , llmrMetrics
    , llmrNextPageToken

    -- * WriteLogEntriesRequest
    , WriteLogEntriesRequest
    , writeLogEntriesRequest
    , wlerEntries
    , wlerPartialSuccess
    , wlerResource
    , wlerLabels
    , wlerLogName
    , wlerDryRun

    -- * CopyLogEntriesRequest
    , CopyLogEntriesRequest
    , copyLogEntriesRequest
    , clerDestination
    , clerName
    , clerFilter

    -- * UndeleteBucketRequest
    , UndeleteBucketRequest
    , undeleteBucketRequest

    -- * CmekSettings
    , CmekSettings
    , cmekSettings
    , csServiceAccountId
    , csName
    , csKmsKeyName

    -- * LogMetricLabelExtractors
    , LogMetricLabelExtractors
    , logMetricLabelExtractors
    , lmleAddtional

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * LogSinkOutputVersionFormat
    , LogSinkOutputVersionFormat (..)

    -- * Empty
    , Empty
    , empty

    -- * LogEntryLabels
    , LogEntryLabels
    , logEntryLabels
    , lelAddtional

    -- * ListSinksResponse
    , ListSinksResponse
    , listSinksResponse
    , lsrSinks
    , lsrNextPageToken

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
    , rlFirst
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
    , rlTraceSampled
    , rlTaskQueueName
    , rlResponseSize
    , rlSourceReference
    , rlAppEngineRelease

    -- * LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload
    , leppAddtional

    -- * LogEntrySourceLocation
    , LogEntrySourceLocation
    , logEntrySourceLocation
    , leslFunction
    , leslLine
    , leslFile

    -- * LogExclusion
    , LogExclusion
    , logExclusion
    , leDisabled
    , leUpdateTime
    , leName
    , leFilter
    , leDescription
    , leCreateTime

    -- * WriteLogEntriesResponse
    , WriteLogEntriesResponse
    , writeLogEntriesResponse

    -- * CopyLogEntriesResponse
    , CopyLogEntriesResponse
    , copyLogEntriesResponse
    , clerLogEntriesCopiedCount

    -- * MetricDescriptorMetadataLaunchStage
    , MetricDescriptorMetadataLaunchStage (..)

    -- * LogSink
    , LogSink
    , logSink
    , lsDestination
    , lsIncludeChildren
    , lsDisabled
    , lsOutputVersionFormat
    , lsBigQueryOptions
    , lsWriterIdentity
    , lsUpdateTime
    , lsName
    , lsExclusions
    , lsFilter
    , lsDescription
    , lsCreateTime

    -- * LogBucketLifecycleState
    , LogBucketLifecycleState (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SuppressionInfoReason
    , SuppressionInfoReason (..)

    -- * MonitoredResourceMetadataUserLabels
    , MonitoredResourceMetadataUserLabels
    , monitoredResourceMetadataUserLabels
    , mrmulAddtional

    -- * ListExclusionsResponse
    , ListExclusionsResponse
    , listExclusionsResponse
    , lerNextPageToken
    , lerExclusions

    -- * ListLogsResponse
    , ListLogsResponse
    , listLogsResponse
    , lNextPageToken
    , lLogNames

    -- * CopyLogEntriesMetadata
    , CopyLogEntriesMetadata
    , copyLogEntriesMetadata
    , clemState
    , clemCancellationRequested
    , clemProgress
    , clemStartTime
    , clemWriterIdentity
    , clemEndTime
    , clemRequest

    -- * ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse
    , listMonitoredResourceDescriptorsResponse
    , lmrdrNextPageToken
    , lmrdrResourceDescriptors

    -- * BigQueryOptions
    , BigQueryOptions
    , bigQueryOptions
    , bqoUsePartitionedTables
    , bqoUsesTimestampColumnPartitioning

    -- * LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- * Explicit
    , Explicit
    , explicit
    , eBounds

    -- * HTTPRequest
    , HTTPRequest
    , hTTPRequest
    , httprStatus
    , httprRequestURL
    , httprCacheFillBytes
    , httprRemoteIP
    , httprLatency
    , httprProtocol
    , httprServerIP
    , httprRequestSize
    , httprCacheValidatedWithOriginServer
    , httprUserAgent
    , httprCacheLookup
    , httprResponseSize
    , httprRequestMethod
    , httprCacheHit
    , httprReferer

    -- * Exponential
    , Exponential
    , exponential
    , eGrowthFactor
    , eScale
    , eNumFiniteBuckets

    -- * WriteLogEntriesRequestLabels
    , WriteLogEntriesRequestLabels
    , writeLogEntriesRequestLabels
    , wlerlAddtional

    -- * SuppressionInfo
    , SuppressionInfo
    , suppressionInfo
    , siReason
    , siSuppressedCount

    -- * ListViewsResponse
    , ListViewsResponse
    , listViewsResponse
    , lvrNextPageToken
    , lvrViews

    -- * MonitoredResource
    , MonitoredResource
    , monitoredResource
    , mrLabels
    , mrType

    -- * Xgafv
    , Xgafv (..)

    -- * LogBucket
    , LogBucket
    , logBucket
    , lbRestrictedFields
    , lbLocked
    , lbRetentionDays
    , lbUpdateTime
    , lbName
    , lbDescription
    , lbLifecycleState
    , lbCreateTime

    -- * LogLine
    , LogLine
    , logLine
    , llTime
    , llSeverity
    , llLogMessage
    , llSourceLocation

    -- * MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

    -- * MonitoredResourceMetadataSystemLabels
    , MonitoredResourceMetadataSystemLabels
    , monitoredResourceMetadataSystemLabels
    , mrmslAddtional

    -- * LabelDescriptor
    , LabelDescriptor
    , labelDescriptor
    , ldKey
    , ldValueType
    , ldDescription

    -- * Linear
    , Linear
    , linear
    , lOffSet
    , lWidth
    , lNumFiniteBuckets

    -- * ListLogEntriesRequest
    , ListLogEntriesRequest
    , listLogEntriesRequest
    , llerOrderBy
    , llerProjectIds
    , llerFilter
    , llerPageToken
    , llerPageSize
    , llerResourceNames

    -- * MonitoredResourceDescriptorLaunchStage
    , MonitoredResourceDescriptorLaunchStage (..)

    -- * TailLogEntriesResponse
    , TailLogEntriesResponse
    , tailLogEntriesResponse
    , tlerEntries
    , tlerSuppressionInfo

    -- * LogEntryOperation
    , LogEntryOperation
    , logEntryOperation
    , leoFirst
    , leoProducer
    , leoLast
    , leoId

    -- * LogMetric
    , LogMetric
    , logMetric
    , lmMetricDescriptor
    , lmDisabled
    , lmUpdateTime
    , lmName
    , lmVersion
    , lmLabelExtractors
    , lmFilter
    , lmValueExtractor
    , lmBucketOptions
    , lmDescription
    , lmCreateTime

    -- * LogEntry
    , LogEntry
    , logEntry
    , leOperation
    , leSeverity
    , leTextPayload
    , leJSONPayload
    , leHTTPRequest
    , leResource
    , leInsertId
    , leMetadata
    , leReceiveTimestamp
    , leLabels
    , leProtoPayload
    , leSourceLocation
    , leTraceSampled
    , leLogName
    , leTimestamp
    , leTrace
    , leSpanId

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * SourceLocation
    , SourceLocation
    , sourceLocation
    , slLine
    , slFunctionName
    , slFile

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * MetricDescriptorMetricKind
    , MetricDescriptorMetricKind (..)

    -- * LogEntrySeverity
    , LogEntrySeverity (..)

    -- * BucketOptions
    , BucketOptions
    , bucketOptions
    , boExponentialBuckets
    , boLinearBuckets
    , boExplicitBuckets

    -- * SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- * LogEntryJSONPayload
    , LogEntryJSONPayload
    , logEntryJSONPayload
    , lejpAddtional

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * MetricDescriptorLaunchStage
    , MetricDescriptorLaunchStage (..)

    -- * LogView
    , LogView
    , logView
    , lvUpdateTime
    , lvName
    , lvFilter
    , lvDescription
    , lvCreateTime

    -- * LogLineSeverity
    , LogLineSeverity (..)

    -- * CopyLogEntriesMetadataState
    , CopyLogEntriesMetadataState (..)
    ) where

import Network.Google.Logging.Types.Product
import Network.Google.Logging.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v2' of the Cloud Logging API. This contains the host and root path used as a starting point for constructing service requests.
loggingService :: ServiceConfig
loggingService
  = defaultService (ServiceId "logging:v2")
      "logging.googleapis.com"

-- | Administrate log data for your projects
loggingAdminScope :: Proxy '["https://www.googleapis.com/auth/logging.admin"]
loggingAdminScope = Proxy

-- | View log data for your projects
loggingReadScope :: Proxy '["https://www.googleapis.com/auth/logging.read"]
loggingReadScope = Proxy

-- | Submit log data for your projects
loggingWriteScope :: Proxy '["https://www.googleapis.com/auth/logging.write"]
loggingWriteScope = Proxy

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
