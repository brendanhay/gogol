{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Logging.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Logging.Types
    (
    -- * Configuration
      loggingService

    -- * OAuth Scopes
    , CloudPlatform'FullControl
    , CloudPlatform'ReadOnly
    , Logging'Admin
    , Logging'Read
    , Logging'Write

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** BigQueryDataset
    , BigQueryDataset (..)
    , newBigQueryDataset

    -- ** BigQueryOptions
    , BigQueryOptions (..)
    , newBigQueryOptions

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** BucketMetadata
    , BucketMetadata (..)
    , newBucketMetadata

    -- ** BucketMetadata_State
    , BucketMetadata_State (..)

    -- ** BucketOptions
    , BucketOptions (..)
    , newBucketOptions

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** CmekSettings
    , CmekSettings (..)
    , newCmekSettings

    -- ** CopyLogEntriesMetadata
    , CopyLogEntriesMetadata (..)
    , newCopyLogEntriesMetadata

    -- ** CopyLogEntriesMetadata_State
    , CopyLogEntriesMetadata_State (..)

    -- ** CopyLogEntriesRequest
    , CopyLogEntriesRequest (..)
    , newCopyLogEntriesRequest

    -- ** CopyLogEntriesResponse
    , CopyLogEntriesResponse (..)
    , newCopyLogEntriesResponse

    -- ** CreateBucketRequest
    , CreateBucketRequest (..)
    , newCreateBucketRequest

    -- ** CreateLinkRequest
    , CreateLinkRequest (..)
    , newCreateLinkRequest

    -- ** DefaultSinkConfig
    , DefaultSinkConfig (..)
    , newDefaultSinkConfig

    -- ** DefaultSinkConfig_Mode
    , DefaultSinkConfig_Mode (..)

    -- ** DeleteLinkRequest
    , DeleteLinkRequest (..)
    , newDeleteLinkRequest

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Explicit
    , Explicit (..)
    , newExplicit

    -- ** Exponential
    , Exponential (..)
    , newExponential

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** GetIamPolicyRequest
    , GetIamPolicyRequest (..)
    , newGetIamPolicyRequest

    -- ** GetPolicyOptions
    , GetPolicyOptions (..)
    , newGetPolicyOptions

    -- ** HttpRequest
    , HttpRequest (..)
    , newHttpRequest

    -- ** IndexConfig
    , IndexConfig (..)
    , newIndexConfig

    -- ** IndexConfig_Type
    , IndexConfig_Type (..)

    -- ** LabelDescriptor
    , LabelDescriptor (..)
    , newLabelDescriptor

    -- ** LabelDescriptor_ValueType
    , LabelDescriptor_ValueType (..)

    -- ** Linear
    , Linear (..)
    , newLinear

    -- ** Link
    , Link (..)
    , newLink

    -- ** Link_LifecycleState
    , Link_LifecycleState (..)

    -- ** LinkMetadata
    , LinkMetadata (..)
    , newLinkMetadata

    -- ** LinkMetadata_State
    , LinkMetadata_State (..)

    -- ** ListBucketsResponse
    , ListBucketsResponse (..)
    , newListBucketsResponse

    -- ** ListExclusionsResponse
    , ListExclusionsResponse (..)
    , newListExclusionsResponse

    -- ** ListLinksResponse
    , ListLinksResponse (..)
    , newListLinksResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListLogEntriesRequest
    , ListLogEntriesRequest (..)
    , newListLogEntriesRequest

    -- ** ListLogEntriesResponse
    , ListLogEntriesResponse (..)
    , newListLogEntriesResponse

    -- ** ListLogMetricsResponse
    , ListLogMetricsResponse (..)
    , newListLogMetricsResponse

    -- ** ListLogScopesResponse
    , ListLogScopesResponse (..)
    , newListLogScopesResponse

    -- ** ListLogsResponse
    , ListLogsResponse (..)
    , newListLogsResponse

    -- ** ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse (..)
    , newListMonitoredResourceDescriptorsResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListRecentQueriesResponse
    , ListRecentQueriesResponse (..)
    , newListRecentQueriesResponse

    -- ** ListSavedQueriesResponse
    , ListSavedQueriesResponse (..)
    , newListSavedQueriesResponse

    -- ** ListSinksResponse
    , ListSinksResponse (..)
    , newListSinksResponse

    -- ** ListViewsResponse
    , ListViewsResponse (..)
    , newListViewsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** LocationMetadata
    , LocationMetadata (..)
    , newLocationMetadata

    -- ** LogBucket
    , LogBucket (..)
    , newLogBucket

    -- ** LogBucket_LifecycleState
    , LogBucket_LifecycleState (..)

    -- ** LogEntry
    , LogEntry (..)
    , newLogEntry

    -- ** LogEntry_JsonPayload
    , LogEntry_JsonPayload (..)
    , newLogEntry_JsonPayload

    -- ** LogEntry_Labels
    , LogEntry_Labels (..)
    , newLogEntry_Labels

    -- ** LogEntry_ProtoPayload
    , LogEntry_ProtoPayload (..)
    , newLogEntry_ProtoPayload

    -- ** LogEntry_Severity
    , LogEntry_Severity (..)

    -- ** LogEntryOperation
    , LogEntryOperation (..)
    , newLogEntryOperation

    -- ** LogEntrySourceLocation
    , LogEntrySourceLocation (..)
    , newLogEntrySourceLocation

    -- ** LogErrorGroup
    , LogErrorGroup (..)
    , newLogErrorGroup

    -- ** LogExclusion
    , LogExclusion (..)
    , newLogExclusion

    -- ** LogLine
    , LogLine (..)
    , newLogLine

    -- ** LogLine_Severity
    , LogLine_Severity (..)

    -- ** LogMetric
    , LogMetric (..)
    , newLogMetric

    -- ** LogMetric_LabelExtractors
    , LogMetric_LabelExtractors (..)
    , newLogMetric_LabelExtractors

    -- ** LogMetric_Version
    , LogMetric_Version (..)

    -- ** LogScope
    , LogScope (..)
    , newLogScope

    -- ** LogSink
    , LogSink (..)
    , newLogSink

    -- ** LogSink_OutputVersionFormat
    , LogSink_OutputVersionFormat (..)

    -- ** LogSplit
    , LogSplit (..)
    , newLogSplit

    -- ** LogView
    , LogView (..)
    , newLogView

    -- ** LoggingQuery
    , LoggingQuery (..)
    , newLoggingQuery

    -- ** MetricDescriptor
    , MetricDescriptor (..)
    , newMetricDescriptor

    -- ** MetricDescriptor_LaunchStage
    , MetricDescriptor_LaunchStage (..)

    -- ** MetricDescriptor_MetricKind
    , MetricDescriptor_MetricKind (..)

    -- ** MetricDescriptor_ValueType
    , MetricDescriptor_ValueType (..)

    -- ** MetricDescriptorMetadata
    , MetricDescriptorMetadata (..)
    , newMetricDescriptorMetadata

    -- ** MetricDescriptorMetadata_LaunchStage
    , MetricDescriptorMetadata_LaunchStage (..)

    -- ** MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
    , MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem (..)

    -- ** MonitoredResource
    , MonitoredResource (..)
    , newMonitoredResource

    -- ** MonitoredResource_Labels
    , MonitoredResource_Labels (..)
    , newMonitoredResource_Labels

    -- ** MonitoredResourceDescriptor
    , MonitoredResourceDescriptor (..)
    , newMonitoredResourceDescriptor

    -- ** MonitoredResourceDescriptor_LaunchStage
    , MonitoredResourceDescriptor_LaunchStage (..)

    -- ** MonitoredResourceMetadata
    , MonitoredResourceMetadata (..)
    , newMonitoredResourceMetadata

    -- ** MonitoredResourceMetadata_SystemLabels
    , MonitoredResourceMetadata_SystemLabels (..)
    , newMonitoredResourceMetadata_SystemLabels

    -- ** MonitoredResourceMetadata_UserLabels
    , MonitoredResourceMetadata_UserLabels (..)
    , newMonitoredResourceMetadata_UserLabels

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OpsAnalyticsQuery
    , OpsAnalyticsQuery (..)
    , newOpsAnalyticsQuery

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** RecentQuery
    , RecentQuery (..)
    , newRecentQuery

    -- ** RequestLog
    , RequestLog (..)
    , newRequestLog

    -- ** SavedQuery
    , SavedQuery (..)
    , newSavedQuery

    -- ** SavedQuery_Visibility
    , SavedQuery_Visibility (..)

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** Settings
    , Settings (..)
    , newSettings

    -- ** SourceLocation
    , SourceLocation (..)
    , newSourceLocation

    -- ** SourceReference
    , SourceReference (..)
    , newSourceReference

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** SummaryField
    , SummaryField (..)
    , newSummaryField

    -- ** SuppressionInfo
    , SuppressionInfo (..)
    , newSuppressionInfo

    -- ** SuppressionInfo_Reason
    , SuppressionInfo_Reason (..)

    -- ** TailLogEntriesRequest
    , TailLogEntriesRequest (..)
    , newTailLogEntriesRequest

    -- ** TailLogEntriesResponse
    , TailLogEntriesResponse (..)
    , newTailLogEntriesResponse

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** UndeleteBucketRequest
    , UndeleteBucketRequest (..)
    , newUndeleteBucketRequest

    -- ** UpdateBucketRequest
    , UpdateBucketRequest (..)
    , newUpdateBucketRequest

    -- ** WriteLogEntriesRequest
    , WriteLogEntriesRequest (..)
    , newWriteLogEntriesRequest

    -- ** WriteLogEntriesRequest_Labels
    , WriteLogEntriesRequest_Labels (..)
    , newWriteLogEntriesRequest_Labels

    -- ** WriteLogEntriesResponse
    , WriteLogEntriesResponse (..)
    , newWriteLogEntriesResponse
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Internal.Product
import Gogol.Logging.Internal.Sum

-- | Default request referring to version @v2@ of the Cloud Logging API. This contains the host and root path used as a starting point for constructing service requests.
loggingService :: Core.ServiceConfig
loggingService
  = Core.defaultService (Core.ServiceId "logging:v2")
      "logging.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud services and see the email address of your Google Account
type CloudPlatform'ReadOnly = "https://www.googleapis.com/auth/cloud-platform.read-only"

-- | Administrate log data for your projects
type Logging'Admin = "https://www.googleapis.com/auth/logging.admin"

-- | View log data for your projects
type Logging'Read = "https://www.googleapis.com/auth/logging.read"

-- | Submit log data for your projects
type Logging'Write = "https://www.googleapis.com/auth/logging.write"
