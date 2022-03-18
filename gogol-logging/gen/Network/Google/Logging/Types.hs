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
-- Module      : Network.Google.Logging.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Logging.Types
  ( -- * Configuration
    loggingService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    loggingAdminScope,
    loggingReadScope,
    loggingWriteScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** BigQueryOptions
    BigQueryOptions (..),
    newBigQueryOptions,

    -- ** BucketOptions
    BucketOptions (..),
    newBucketOptions,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CmekSettings
    CmekSettings (..),
    newCmekSettings,

    -- ** CopyLogEntriesMetadata
    CopyLogEntriesMetadata (..),
    newCopyLogEntriesMetadata,

    -- ** CopyLogEntriesMetadata_State
    CopyLogEntriesMetadata_State (..),

    -- ** CopyLogEntriesRequest
    CopyLogEntriesRequest (..),
    newCopyLogEntriesRequest,

    -- ** CopyLogEntriesResponse
    CopyLogEntriesResponse (..),
    newCopyLogEntriesResponse,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Explicit
    Explicit (..),
    newExplicit,

    -- ** Exponential
    Exponential (..),
    newExponential,

    -- ** HttpRequest
    HttpRequest (..),
    newHttpRequest,

    -- ** LabelDescriptor
    LabelDescriptor (..),
    newLabelDescriptor,

    -- ** LabelDescriptor_ValueType
    LabelDescriptor_ValueType (..),

    -- ** Linear
    Linear (..),
    newLinear,

    -- ** ListBucketsResponse
    ListBucketsResponse (..),
    newListBucketsResponse,

    -- ** ListExclusionsResponse
    ListExclusionsResponse (..),
    newListExclusionsResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListLogEntriesRequest
    ListLogEntriesRequest (..),
    newListLogEntriesRequest,

    -- ** ListLogEntriesResponse
    ListLogEntriesResponse (..),
    newListLogEntriesResponse,

    -- ** ListLogMetricsResponse
    ListLogMetricsResponse (..),
    newListLogMetricsResponse,

    -- ** ListLogsResponse
    ListLogsResponse (..),
    newListLogsResponse,

    -- ** ListMonitoredResourceDescriptorsResponse
    ListMonitoredResourceDescriptorsResponse (..),
    newListMonitoredResourceDescriptorsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListSinksResponse
    ListSinksResponse (..),
    newListSinksResponse,

    -- ** ListViewsResponse
    ListViewsResponse (..),
    newListViewsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** LogBucket
    LogBucket (..),
    newLogBucket,

    -- ** LogBucket_LifecycleState
    LogBucket_LifecycleState (..),

    -- ** LogEntry
    LogEntry (..),
    newLogEntry,

    -- ** LogEntry_JsonPayload
    LogEntry_JsonPayload (..),
    newLogEntry_JsonPayload,

    -- ** LogEntry_Labels
    LogEntry_Labels (..),
    newLogEntry_Labels,

    -- ** LogEntry_ProtoPayload
    LogEntry_ProtoPayload (..),
    newLogEntry_ProtoPayload,

    -- ** LogEntry_Severity
    LogEntry_Severity (..),

    -- ** LogEntryOperation
    LogEntryOperation (..),
    newLogEntryOperation,

    -- ** LogEntrySourceLocation
    LogEntrySourceLocation (..),
    newLogEntrySourceLocation,

    -- ** LogExclusion
    LogExclusion (..),
    newLogExclusion,

    -- ** LogLine
    LogLine (..),
    newLogLine,

    -- ** LogLine_Severity
    LogLine_Severity (..),

    -- ** LogMetric
    LogMetric (..),
    newLogMetric,

    -- ** LogMetric_LabelExtractors
    LogMetric_LabelExtractors (..),
    newLogMetric_LabelExtractors,

    -- ** LogMetric_Version
    LogMetric_Version (..),

    -- ** LogSink
    LogSink (..),
    newLogSink,

    -- ** LogSink_OutputVersionFormat
    LogSink_OutputVersionFormat (..),

    -- ** LogSplit
    LogSplit (..),
    newLogSplit,

    -- ** LogView
    LogView (..),
    newLogView,

    -- ** MetricDescriptor
    MetricDescriptor (..),
    newMetricDescriptor,

    -- ** MetricDescriptor_LaunchStage
    MetricDescriptor_LaunchStage (..),

    -- ** MetricDescriptor_MetricKind
    MetricDescriptor_MetricKind (..),

    -- ** MetricDescriptor_ValueType
    MetricDescriptor_ValueType (..),

    -- ** MetricDescriptorMetadata
    MetricDescriptorMetadata (..),
    newMetricDescriptorMetadata,

    -- ** MetricDescriptorMetadata_LaunchStage
    MetricDescriptorMetadata_LaunchStage (..),

    -- ** MonitoredResource
    MonitoredResource (..),
    newMonitoredResource,

    -- ** MonitoredResource_Labels
    MonitoredResource_Labels (..),
    newMonitoredResource_Labels,

    -- ** MonitoredResourceDescriptor
    MonitoredResourceDescriptor (..),
    newMonitoredResourceDescriptor,

    -- ** MonitoredResourceDescriptor_LaunchStage
    MonitoredResourceDescriptor_LaunchStage (..),

    -- ** MonitoredResourceMetadata
    MonitoredResourceMetadata (..),
    newMonitoredResourceMetadata,

    -- ** MonitoredResourceMetadata_SystemLabels
    MonitoredResourceMetadata_SystemLabels (..),
    newMonitoredResourceMetadata_SystemLabels,

    -- ** MonitoredResourceMetadata_UserLabels
    MonitoredResourceMetadata_UserLabels (..),
    newMonitoredResourceMetadata_UserLabels,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** RequestLog
    RequestLog (..),
    newRequestLog,

    -- ** Settings
    Settings (..),
    newSettings,

    -- ** SourceLocation
    SourceLocation (..),
    newSourceLocation,

    -- ** SourceReference
    SourceReference (..),
    newSourceReference,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** SuppressionInfo
    SuppressionInfo (..),
    newSuppressionInfo,

    -- ** SuppressionInfo_Reason
    SuppressionInfo_Reason (..),

    -- ** TailLogEntriesRequest
    TailLogEntriesRequest (..),
    newTailLogEntriesRequest,

    -- ** TailLogEntriesResponse
    TailLogEntriesResponse (..),
    newTailLogEntriesResponse,

    -- ** UndeleteBucketRequest
    UndeleteBucketRequest (..),
    newUndeleteBucketRequest,

    -- ** WriteLogEntriesRequest
    WriteLogEntriesRequest (..),
    newWriteLogEntriesRequest,

    -- ** WriteLogEntriesRequest_Labels
    WriteLogEntriesRequest_Labels (..),
    newWriteLogEntriesRequest_Labels,

    -- ** WriteLogEntriesResponse
    WriteLogEntriesResponse (..),
    newWriteLogEntriesResponse,
  )
where

import Network.Google.Logging.Internal.Product
import Network.Google.Logging.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v2@ of the Cloud Logging API. This contains the host and root path used as a starting point for constructing service requests.
loggingService :: Core.ServiceConfig
loggingService =
  Core.defaultService
    (Core.ServiceId "logging:v2")
    "logging.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View your data across Google Cloud services and see the email address of your Google Account
cloudPlatformReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Core.Proxy

-- | Administrate log data for your projects
loggingAdminScope :: Core.Proxy '["https://www.googleapis.com/auth/logging.admin"]
loggingAdminScope = Core.Proxy

-- | View log data for your projects
loggingReadScope :: Core.Proxy '["https://www.googleapis.com/auth/logging.read"]
loggingReadScope = Core.Proxy

-- | Submit log data for your projects
loggingWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/logging.write"]
loggingWriteScope = Core.Proxy
