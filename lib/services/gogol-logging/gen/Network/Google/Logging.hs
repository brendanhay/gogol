{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Logging
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Writes log entries and manages your Cloud Logging configuration. The
-- table entries below are presented in alphabetical order, not in order of
-- common use. For explanations of the concepts found in the table entries,
-- read the documentation at https:\/\/cloud.google.com\/logging\/docs.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference>
module Network.Google.Logging
    (
    -- * Service Configuration
      loggingService

    -- * OAuth Scopes
    , loggingAdminScope
    , loggingReadScope
    , loggingWriteScope
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope

    -- * API Declaration
    , LoggingAPI

    -- * Resources

    -- ** logging.billingAccounts.buckets.get
    , module Network.Google.Resource.Logging.BillingAccounts.Buckets.Get

    -- ** logging.billingAccounts.buckets.views.get
    , module Network.Google.Resource.Logging.BillingAccounts.Buckets.Views.Get

    -- ** logging.billingAccounts.exclusions.create
    , module Network.Google.Resource.Logging.BillingAccounts.Exclusions.Create

    -- ** logging.billingAccounts.exclusions.delete
    , module Network.Google.Resource.Logging.BillingAccounts.Exclusions.Delete

    -- ** logging.billingAccounts.exclusions.get
    , module Network.Google.Resource.Logging.BillingAccounts.Exclusions.Get

    -- ** logging.billingAccounts.exclusions.list
    , module Network.Google.Resource.Logging.BillingAccounts.Exclusions.List

    -- ** logging.billingAccounts.exclusions.patch
    , module Network.Google.Resource.Logging.BillingAccounts.Exclusions.Patch

    -- ** logging.billingAccounts.locations.buckets.create
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Create

    -- ** logging.billingAccounts.locations.buckets.delete
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Delete

    -- ** logging.billingAccounts.locations.buckets.list
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.List

    -- ** logging.billingAccounts.locations.buckets.patch
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Patch

    -- ** logging.billingAccounts.locations.buckets.undelete
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Undelete

    -- ** logging.billingAccounts.locations.buckets.views.create
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Create

    -- ** logging.billingAccounts.locations.buckets.views.delete
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Delete

    -- ** logging.billingAccounts.locations.buckets.views.list
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.List

    -- ** logging.billingAccounts.locations.buckets.views.patch
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Patch

    -- ** logging.billingAccounts.locations.get
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Get

    -- ** logging.billingAccounts.locations.list
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.List

    -- ** logging.billingAccounts.locations.operations.cancel
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Operations.Cancel

    -- ** logging.billingAccounts.locations.operations.list
    , module Network.Google.Resource.Logging.BillingAccounts.Locations.Operations.List

    -- ** logging.billingAccounts.logs.delete
    , module Network.Google.Resource.Logging.BillingAccounts.Logs.Delete

    -- ** logging.billingAccounts.logs.list
    , module Network.Google.Resource.Logging.BillingAccounts.Logs.List

    -- ** logging.billingAccounts.operations.get
    , module Network.Google.Resource.Logging.BillingAccounts.Operations.Get

    -- ** logging.billingAccounts.sinks.create
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.Create

    -- ** logging.billingAccounts.sinks.delete
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.Delete

    -- ** logging.billingAccounts.sinks.get
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.Get

    -- ** logging.billingAccounts.sinks.list
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.List

    -- ** logging.billingAccounts.sinks.patch
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.Patch

    -- ** logging.billingAccounts.sinks.update
    , module Network.Google.Resource.Logging.BillingAccounts.Sinks.Update

    -- ** logging.entries.copy
    , module Network.Google.Resource.Logging.Entries.Copy

    -- ** logging.entries.list
    , module Network.Google.Resource.Logging.Entries.List

    -- ** logging.entries.tail
    , module Network.Google.Resource.Logging.Entries.Tail

    -- ** logging.entries.write
    , module Network.Google.Resource.Logging.Entries.Write

    -- ** logging.exclusions.create
    , module Network.Google.Resource.Logging.Exclusions.Create

    -- ** logging.exclusions.delete
    , module Network.Google.Resource.Logging.Exclusions.Delete

    -- ** logging.exclusions.get
    , module Network.Google.Resource.Logging.Exclusions.Get

    -- ** logging.exclusions.list
    , module Network.Google.Resource.Logging.Exclusions.List

    -- ** logging.exclusions.patch
    , module Network.Google.Resource.Logging.Exclusions.Patch

    -- ** logging.folders.exclusions.create
    , module Network.Google.Resource.Logging.Folders.Exclusions.Create

    -- ** logging.folders.exclusions.delete
    , module Network.Google.Resource.Logging.Folders.Exclusions.Delete

    -- ** logging.folders.exclusions.get
    , module Network.Google.Resource.Logging.Folders.Exclusions.Get

    -- ** logging.folders.exclusions.list
    , module Network.Google.Resource.Logging.Folders.Exclusions.List

    -- ** logging.folders.exclusions.patch
    , module Network.Google.Resource.Logging.Folders.Exclusions.Patch

    -- ** logging.folders.locations.buckets.create
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.Create

    -- ** logging.folders.locations.buckets.delete
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.Delete

    -- ** logging.folders.locations.buckets.get
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.Get

    -- ** logging.folders.locations.buckets.list
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.List

    -- ** logging.folders.locations.buckets.patch
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.Patch

    -- ** logging.folders.locations.buckets.undelete
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.Undelete

    -- ** logging.folders.locations.buckets.views.create
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Create

    -- ** logging.folders.locations.buckets.views.delete
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Delete

    -- ** logging.folders.locations.buckets.views.get
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Get

    -- ** logging.folders.locations.buckets.views.list
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.List

    -- ** logging.folders.locations.buckets.views.patch
    , module Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Patch

    -- ** logging.folders.locations.get
    , module Network.Google.Resource.Logging.Folders.Locations.Get

    -- ** logging.folders.locations.list
    , module Network.Google.Resource.Logging.Folders.Locations.List

    -- ** logging.folders.locations.operations.cancel
    , module Network.Google.Resource.Logging.Folders.Locations.Operations.Cancel

    -- ** logging.folders.locations.operations.get
    , module Network.Google.Resource.Logging.Folders.Locations.Operations.Get

    -- ** logging.folders.locations.operations.list
    , module Network.Google.Resource.Logging.Folders.Locations.Operations.List

    -- ** logging.folders.logs.delete
    , module Network.Google.Resource.Logging.Folders.Logs.Delete

    -- ** logging.folders.logs.list
    , module Network.Google.Resource.Logging.Folders.Logs.List

    -- ** logging.folders.sinks.create
    , module Network.Google.Resource.Logging.Folders.Sinks.Create

    -- ** logging.folders.sinks.delete
    , module Network.Google.Resource.Logging.Folders.Sinks.Delete

    -- ** logging.folders.sinks.get
    , module Network.Google.Resource.Logging.Folders.Sinks.Get

    -- ** logging.folders.sinks.list
    , module Network.Google.Resource.Logging.Folders.Sinks.List

    -- ** logging.folders.sinks.patch
    , module Network.Google.Resource.Logging.Folders.Sinks.Patch

    -- ** logging.folders.sinks.update
    , module Network.Google.Resource.Logging.Folders.Sinks.Update

    -- ** logging.getCmekSettings
    , module Network.Google.Resource.Logging.GetCmekSettings

    -- ** logging.locations.buckets.create
    , module Network.Google.Resource.Logging.Locations.Buckets.Create

    -- ** logging.locations.buckets.delete
    , module Network.Google.Resource.Logging.Locations.Buckets.Delete

    -- ** logging.locations.buckets.get
    , module Network.Google.Resource.Logging.Locations.Buckets.Get

    -- ** logging.locations.buckets.list
    , module Network.Google.Resource.Logging.Locations.Buckets.List

    -- ** logging.locations.buckets.patch
    , module Network.Google.Resource.Logging.Locations.Buckets.Patch

    -- ** logging.locations.buckets.undelete
    , module Network.Google.Resource.Logging.Locations.Buckets.Undelete

    -- ** logging.locations.buckets.views.create
    , module Network.Google.Resource.Logging.Locations.Buckets.Views.Create

    -- ** logging.locations.buckets.views.delete
    , module Network.Google.Resource.Logging.Locations.Buckets.Views.Delete

    -- ** logging.locations.buckets.views.get
    , module Network.Google.Resource.Logging.Locations.Buckets.Views.Get

    -- ** logging.locations.buckets.views.list
    , module Network.Google.Resource.Logging.Locations.Buckets.Views.List

    -- ** logging.locations.buckets.views.patch
    , module Network.Google.Resource.Logging.Locations.Buckets.Views.Patch

    -- ** logging.locations.get
    , module Network.Google.Resource.Logging.Locations.Get

    -- ** logging.locations.list
    , module Network.Google.Resource.Logging.Locations.List

    -- ** logging.locations.operations.cancel
    , module Network.Google.Resource.Logging.Locations.Operations.Cancel

    -- ** logging.locations.operations.get
    , module Network.Google.Resource.Logging.Locations.Operations.Get

    -- ** logging.locations.operations.list
    , module Network.Google.Resource.Logging.Locations.Operations.List

    -- ** logging.logs.delete
    , module Network.Google.Resource.Logging.Logs.Delete

    -- ** logging.logs.list
    , module Network.Google.Resource.Logging.Logs.List

    -- ** logging.monitoredResourceDescriptors.list
    , module Network.Google.Resource.Logging.MonitoredResourceDescriptors.List

    -- ** logging.organizations.exclusions.create
    , module Network.Google.Resource.Logging.Organizations.Exclusions.Create

    -- ** logging.organizations.exclusions.delete
    , module Network.Google.Resource.Logging.Organizations.Exclusions.Delete

    -- ** logging.organizations.exclusions.get
    , module Network.Google.Resource.Logging.Organizations.Exclusions.Get

    -- ** logging.organizations.exclusions.list
    , module Network.Google.Resource.Logging.Organizations.Exclusions.List

    -- ** logging.organizations.exclusions.patch
    , module Network.Google.Resource.Logging.Organizations.Exclusions.Patch

    -- ** logging.organizations.getCmekSettings
    , module Network.Google.Resource.Logging.Organizations.GetCmekSettings

    -- ** logging.organizations.locations.buckets.create
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Create

    -- ** logging.organizations.locations.buckets.delete
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Delete

    -- ** logging.organizations.locations.buckets.get
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Get

    -- ** logging.organizations.locations.buckets.list
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.List

    -- ** logging.organizations.locations.buckets.patch
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Patch

    -- ** logging.organizations.locations.buckets.undelete
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Undelete

    -- ** logging.organizations.locations.buckets.views.create
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Create

    -- ** logging.organizations.locations.buckets.views.delete
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Delete

    -- ** logging.organizations.locations.buckets.views.get
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Get

    -- ** logging.organizations.locations.buckets.views.list
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.List

    -- ** logging.organizations.locations.buckets.views.patch
    , module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Patch

    -- ** logging.organizations.locations.get
    , module Network.Google.Resource.Logging.Organizations.Locations.Get

    -- ** logging.organizations.locations.list
    , module Network.Google.Resource.Logging.Organizations.Locations.List

    -- ** logging.organizations.locations.operations.cancel
    , module Network.Google.Resource.Logging.Organizations.Locations.Operations.Cancel

    -- ** logging.organizations.locations.operations.get
    , module Network.Google.Resource.Logging.Organizations.Locations.Operations.Get

    -- ** logging.organizations.locations.operations.list
    , module Network.Google.Resource.Logging.Organizations.Locations.Operations.List

    -- ** logging.organizations.logs.delete
    , module Network.Google.Resource.Logging.Organizations.Logs.Delete

    -- ** logging.organizations.logs.list
    , module Network.Google.Resource.Logging.Organizations.Logs.List

    -- ** logging.organizations.sinks.create
    , module Network.Google.Resource.Logging.Organizations.Sinks.Create

    -- ** logging.organizations.sinks.delete
    , module Network.Google.Resource.Logging.Organizations.Sinks.Delete

    -- ** logging.organizations.sinks.get
    , module Network.Google.Resource.Logging.Organizations.Sinks.Get

    -- ** logging.organizations.sinks.list
    , module Network.Google.Resource.Logging.Organizations.Sinks.List

    -- ** logging.organizations.sinks.patch
    , module Network.Google.Resource.Logging.Organizations.Sinks.Patch

    -- ** logging.organizations.sinks.update
    , module Network.Google.Resource.Logging.Organizations.Sinks.Update

    -- ** logging.organizations.updateCmekSettings
    , module Network.Google.Resource.Logging.Organizations.UpdateCmekSettings

    -- ** logging.projects.exclusions.create
    , module Network.Google.Resource.Logging.Projects.Exclusions.Create

    -- ** logging.projects.exclusions.delete
    , module Network.Google.Resource.Logging.Projects.Exclusions.Delete

    -- ** logging.projects.exclusions.get
    , module Network.Google.Resource.Logging.Projects.Exclusions.Get

    -- ** logging.projects.exclusions.list
    , module Network.Google.Resource.Logging.Projects.Exclusions.List

    -- ** logging.projects.exclusions.patch
    , module Network.Google.Resource.Logging.Projects.Exclusions.Patch

    -- ** logging.projects.locations.buckets.create
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.Create

    -- ** logging.projects.locations.buckets.delete
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.Delete

    -- ** logging.projects.locations.buckets.get
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.Get

    -- ** logging.projects.locations.buckets.list
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.List

    -- ** logging.projects.locations.buckets.patch
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.Patch

    -- ** logging.projects.locations.buckets.undelete
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.Undelete

    -- ** logging.projects.locations.buckets.views.create
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Create

    -- ** logging.projects.locations.buckets.views.delete
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Delete

    -- ** logging.projects.locations.buckets.views.get
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Get

    -- ** logging.projects.locations.buckets.views.list
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.List

    -- ** logging.projects.locations.buckets.views.patch
    , module Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Patch

    -- ** logging.projects.locations.get
    , module Network.Google.Resource.Logging.Projects.Locations.Get

    -- ** logging.projects.locations.list
    , module Network.Google.Resource.Logging.Projects.Locations.List

    -- ** logging.projects.locations.operations.cancel
    , module Network.Google.Resource.Logging.Projects.Locations.Operations.Cancel

    -- ** logging.projects.locations.operations.get
    , module Network.Google.Resource.Logging.Projects.Locations.Operations.Get

    -- ** logging.projects.locations.operations.list
    , module Network.Google.Resource.Logging.Projects.Locations.Operations.List

    -- ** logging.projects.logs.delete
    , module Network.Google.Resource.Logging.Projects.Logs.Delete

    -- ** logging.projects.logs.list
    , module Network.Google.Resource.Logging.Projects.Logs.List

    -- ** logging.projects.metrics.create
    , module Network.Google.Resource.Logging.Projects.Metrics.Create

    -- ** logging.projects.metrics.delete
    , module Network.Google.Resource.Logging.Projects.Metrics.Delete

    -- ** logging.projects.metrics.get
    , module Network.Google.Resource.Logging.Projects.Metrics.Get

    -- ** logging.projects.metrics.list
    , module Network.Google.Resource.Logging.Projects.Metrics.List

    -- ** logging.projects.metrics.update
    , module Network.Google.Resource.Logging.Projects.Metrics.Update

    -- ** logging.projects.sinks.create
    , module Network.Google.Resource.Logging.Projects.Sinks.Create

    -- ** logging.projects.sinks.delete
    , module Network.Google.Resource.Logging.Projects.Sinks.Delete

    -- ** logging.projects.sinks.get
    , module Network.Google.Resource.Logging.Projects.Sinks.Get

    -- ** logging.projects.sinks.list
    , module Network.Google.Resource.Logging.Projects.Sinks.List

    -- ** logging.projects.sinks.patch
    , module Network.Google.Resource.Logging.Projects.Sinks.Patch

    -- ** logging.projects.sinks.update
    , module Network.Google.Resource.Logging.Projects.Sinks.Update

    -- ** logging.sinks.create
    , module Network.Google.Resource.Logging.Sinks.Create

    -- ** logging.sinks.delete
    , module Network.Google.Resource.Logging.Sinks.Delete

    -- ** logging.sinks.get
    , module Network.Google.Resource.Logging.Sinks.Get

    -- ** logging.sinks.list
    , module Network.Google.Resource.Logging.Sinks.List

    -- ** logging.sinks.update
    , module Network.Google.Resource.Logging.Sinks.Update

    -- ** logging.updateCmekSettings
    , module Network.Google.Resource.Logging.UpdateCmekSettings

    -- * Types

    -- ** MetricDescriptorValueType
    , MetricDescriptorValueType (..)

    -- ** MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription
    , mrdLaunchStage

    -- ** ListBucketsResponse
    , ListBucketsResponse
    , listBucketsResponse
    , lbrNextPageToken
    , lbrBuckets

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ListLogEntriesResponse
    , ListLogEntriesResponse
    , listLogEntriesResponse
    , llerNextPageToken
    , llerEntries

    -- ** MetricDescriptor
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

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** TailLogEntriesRequest
    , TailLogEntriesRequest
    , tailLogEntriesRequest
    , tlerBufferWindow
    , tlerFilter
    , tlerResourceNames

    -- ** MonitoredResourceLabels
    , MonitoredResourceLabels
    , monitoredResourceLabels
    , mrlAddtional

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** LogMetricVersion
    , LogMetricVersion (..)

    -- ** MonitoredResourceMetadata
    , MonitoredResourceMetadata
    , monitoredResourceMetadata
    , mrmUserLabels
    , mrmSystemLabels

    -- ** ListLogMetricsResponse
    , ListLogMetricsResponse
    , listLogMetricsResponse
    , llmrMetrics
    , llmrNextPageToken

    -- ** WriteLogEntriesRequest
    , WriteLogEntriesRequest
    , writeLogEntriesRequest
    , wlerEntries
    , wlerPartialSuccess
    , wlerResource
    , wlerLabels
    , wlerLogName
    , wlerDryRun

    -- ** CopyLogEntriesRequest
    , CopyLogEntriesRequest
    , copyLogEntriesRequest
    , clerDestination
    , clerName
    , clerFilter

    -- ** UndeleteBucketRequest
    , UndeleteBucketRequest
    , undeleteBucketRequest

    -- ** CmekSettings
    , CmekSettings
    , cmekSettings
    , csServiceAccountId
    , csName
    , csKmsKeyName

    -- ** LogMetricLabelExtractors
    , LogMetricLabelExtractors
    , logMetricLabelExtractors
    , lmleAddtional

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** LogSinkOutputVersionFormat
    , LogSinkOutputVersionFormat (..)

    -- ** Empty
    , Empty
    , empty

    -- ** LogEntryLabels
    , LogEntryLabels
    , logEntryLabels
    , lelAddtional

    -- ** ListSinksResponse
    , ListSinksResponse
    , listSinksResponse
    , lsrSinks
    , lsrNextPageToken

    -- ** RequestLog
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

    -- ** LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload
    , leppAddtional

    -- ** LogEntrySourceLocation
    , LogEntrySourceLocation
    , logEntrySourceLocation
    , leslFunction
    , leslLine
    , leslFile

    -- ** LogExclusion
    , LogExclusion
    , logExclusion
    , leDisabled
    , leUpdateTime
    , leName
    , leFilter
    , leDescription
    , leCreateTime

    -- ** WriteLogEntriesResponse
    , WriteLogEntriesResponse
    , writeLogEntriesResponse

    -- ** CopyLogEntriesResponse
    , CopyLogEntriesResponse
    , copyLogEntriesResponse
    , clerLogEntriesCopiedCount

    -- ** MetricDescriptorMetadataLaunchStage
    , MetricDescriptorMetadataLaunchStage (..)

    -- ** LogSink
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

    -- ** LogBucketLifecycleState
    , LogBucketLifecycleState (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** SuppressionInfoReason
    , SuppressionInfoReason (..)

    -- ** MonitoredResourceMetadataUserLabels
    , MonitoredResourceMetadataUserLabels
    , monitoredResourceMetadataUserLabels
    , mrmulAddtional

    -- ** ListExclusionsResponse
    , ListExclusionsResponse
    , listExclusionsResponse
    , lerNextPageToken
    , lerExclusions

    -- ** ListLogsResponse
    , ListLogsResponse
    , listLogsResponse
    , lNextPageToken
    , lLogNames

    -- ** CopyLogEntriesMetadata
    , CopyLogEntriesMetadata
    , copyLogEntriesMetadata
    , clemState
    , clemCancellationRequested
    , clemProgress
    , clemStartTime
    , clemWriterIdentity
    , clemEndTime
    , clemRequest

    -- ** ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse
    , listMonitoredResourceDescriptorsResponse
    , lmrdrNextPageToken
    , lmrdrResourceDescriptors

    -- ** BigQueryOptions
    , BigQueryOptions
    , bigQueryOptions
    , bqoUsePartitionedTables
    , bqoUsesTimestampColumnPartitioning

    -- ** LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- ** Explicit
    , Explicit
    , explicit
    , eBounds

    -- ** HTTPRequest
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

    -- ** Exponential
    , Exponential
    , exponential
    , eGrowthFactor
    , eScale
    , eNumFiniteBuckets

    -- ** WriteLogEntriesRequestLabels
    , WriteLogEntriesRequestLabels
    , writeLogEntriesRequestLabels
    , wlerlAddtional

    -- ** SuppressionInfo
    , SuppressionInfo
    , suppressionInfo
    , siReason
    , siSuppressedCount

    -- ** ListViewsResponse
    , ListViewsResponse
    , listViewsResponse
    , lvrNextPageToken
    , lvrViews

    -- ** MonitoredResource
    , MonitoredResource
    , monitoredResource
    , mrLabels
    , mrType

    -- ** Xgafv
    , Xgafv (..)

    -- ** LogBucket
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

    -- ** LogLine
    , LogLine
    , logLine
    , llTime
    , llSeverity
    , llLogMessage
    , llSourceLocation

    -- ** MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

    -- ** MonitoredResourceMetadataSystemLabels
    , MonitoredResourceMetadataSystemLabels
    , monitoredResourceMetadataSystemLabels
    , mrmslAddtional

    -- ** LabelDescriptor
    , LabelDescriptor
    , labelDescriptor
    , ldKey
    , ldValueType
    , ldDescription

    -- ** Linear
    , Linear
    , linear
    , lOffSet
    , lWidth
    , lNumFiniteBuckets

    -- ** ListLogEntriesRequest
    , ListLogEntriesRequest
    , listLogEntriesRequest
    , llerOrderBy
    , llerProjectIds
    , llerFilter
    , llerPageToken
    , llerPageSize
    , llerResourceNames

    -- ** MonitoredResourceDescriptorLaunchStage
    , MonitoredResourceDescriptorLaunchStage (..)

    -- ** TailLogEntriesResponse
    , TailLogEntriesResponse
    , tailLogEntriesResponse
    , tlerEntries
    , tlerSuppressionInfo

    -- ** LogEntryOperation
    , LogEntryOperation
    , logEntryOperation
    , leoFirst
    , leoProducer
    , leoLast
    , leoId

    -- ** LogMetric
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

    -- ** LogEntry
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

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** SourceLocation
    , SourceLocation
    , sourceLocation
    , slLine
    , slFunctionName
    , slFile

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** MetricDescriptorMetricKind
    , MetricDescriptorMetricKind (..)

    -- ** LogEntrySeverity
    , LogEntrySeverity (..)

    -- ** BucketOptions
    , BucketOptions
    , bucketOptions
    , boExponentialBuckets
    , boLinearBuckets
    , boExplicitBuckets

    -- ** SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- ** LogEntryJSONPayload
    , LogEntryJSONPayload
    , logEntryJSONPayload
    , lejpAddtional

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** MetricDescriptorLaunchStage
    , MetricDescriptorLaunchStage (..)

    -- ** LogView
    , LogView
    , logView
    , lvUpdateTime
    , lvName
    , lvFilter
    , lvDescription
    , lvCreateTime

    -- ** LogLineSeverity
    , LogLineSeverity (..)

    -- ** CopyLogEntriesMetadataState
    , CopyLogEntriesMetadataState (..)
    ) where

import Network.Google.Prelude
import Network.Google.Logging.Types
import Network.Google.Resource.Logging.BillingAccounts.Buckets.Get
import Network.Google.Resource.Logging.BillingAccounts.Buckets.Views.Get
import Network.Google.Resource.Logging.BillingAccounts.Exclusions.Create
import Network.Google.Resource.Logging.BillingAccounts.Exclusions.Delete
import Network.Google.Resource.Logging.BillingAccounts.Exclusions.Get
import Network.Google.Resource.Logging.BillingAccounts.Exclusions.List
import Network.Google.Resource.Logging.BillingAccounts.Exclusions.Patch
import Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Create
import Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Delete
import Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.List
import Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Patch
import Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Undelete
import Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Create
import Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Delete
import Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.List
import Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Patch
import Network.Google.Resource.Logging.BillingAccounts.Locations.Get
import Network.Google.Resource.Logging.BillingAccounts.Locations.List
import Network.Google.Resource.Logging.BillingAccounts.Locations.Operations.Cancel
import Network.Google.Resource.Logging.BillingAccounts.Locations.Operations.List
import Network.Google.Resource.Logging.BillingAccounts.Logs.Delete
import Network.Google.Resource.Logging.BillingAccounts.Logs.List
import Network.Google.Resource.Logging.BillingAccounts.Operations.Get
import Network.Google.Resource.Logging.BillingAccounts.Sinks.Create
import Network.Google.Resource.Logging.BillingAccounts.Sinks.Delete
import Network.Google.Resource.Logging.BillingAccounts.Sinks.Get
import Network.Google.Resource.Logging.BillingAccounts.Sinks.List
import Network.Google.Resource.Logging.BillingAccounts.Sinks.Patch
import Network.Google.Resource.Logging.BillingAccounts.Sinks.Update
import Network.Google.Resource.Logging.Entries.Copy
import Network.Google.Resource.Logging.Entries.List
import Network.Google.Resource.Logging.Entries.Tail
import Network.Google.Resource.Logging.Entries.Write
import Network.Google.Resource.Logging.Exclusions.Create
import Network.Google.Resource.Logging.Exclusions.Delete
import Network.Google.Resource.Logging.Exclusions.Get
import Network.Google.Resource.Logging.Exclusions.List
import Network.Google.Resource.Logging.Exclusions.Patch
import Network.Google.Resource.Logging.Folders.Exclusions.Create
import Network.Google.Resource.Logging.Folders.Exclusions.Delete
import Network.Google.Resource.Logging.Folders.Exclusions.Get
import Network.Google.Resource.Logging.Folders.Exclusions.List
import Network.Google.Resource.Logging.Folders.Exclusions.Patch
import Network.Google.Resource.Logging.Folders.Locations.Buckets.Create
import Network.Google.Resource.Logging.Folders.Locations.Buckets.Delete
import Network.Google.Resource.Logging.Folders.Locations.Buckets.Get
import Network.Google.Resource.Logging.Folders.Locations.Buckets.List
import Network.Google.Resource.Logging.Folders.Locations.Buckets.Patch
import Network.Google.Resource.Logging.Folders.Locations.Buckets.Undelete
import Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Create
import Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Delete
import Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Get
import Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.List
import Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Patch
import Network.Google.Resource.Logging.Folders.Locations.Get
import Network.Google.Resource.Logging.Folders.Locations.List
import Network.Google.Resource.Logging.Folders.Locations.Operations.Cancel
import Network.Google.Resource.Logging.Folders.Locations.Operations.Get
import Network.Google.Resource.Logging.Folders.Locations.Operations.List
import Network.Google.Resource.Logging.Folders.Logs.Delete
import Network.Google.Resource.Logging.Folders.Logs.List
import Network.Google.Resource.Logging.Folders.Sinks.Create
import Network.Google.Resource.Logging.Folders.Sinks.Delete
import Network.Google.Resource.Logging.Folders.Sinks.Get
import Network.Google.Resource.Logging.Folders.Sinks.List
import Network.Google.Resource.Logging.Folders.Sinks.Patch
import Network.Google.Resource.Logging.Folders.Sinks.Update
import Network.Google.Resource.Logging.GetCmekSettings
import Network.Google.Resource.Logging.Locations.Buckets.Create
import Network.Google.Resource.Logging.Locations.Buckets.Delete
import Network.Google.Resource.Logging.Locations.Buckets.Get
import Network.Google.Resource.Logging.Locations.Buckets.List
import Network.Google.Resource.Logging.Locations.Buckets.Patch
import Network.Google.Resource.Logging.Locations.Buckets.Undelete
import Network.Google.Resource.Logging.Locations.Buckets.Views.Create
import Network.Google.Resource.Logging.Locations.Buckets.Views.Delete
import Network.Google.Resource.Logging.Locations.Buckets.Views.Get
import Network.Google.Resource.Logging.Locations.Buckets.Views.List
import Network.Google.Resource.Logging.Locations.Buckets.Views.Patch
import Network.Google.Resource.Logging.Locations.Get
import Network.Google.Resource.Logging.Locations.List
import Network.Google.Resource.Logging.Locations.Operations.Cancel
import Network.Google.Resource.Logging.Locations.Operations.Get
import Network.Google.Resource.Logging.Locations.Operations.List
import Network.Google.Resource.Logging.Logs.Delete
import Network.Google.Resource.Logging.Logs.List
import Network.Google.Resource.Logging.MonitoredResourceDescriptors.List
import Network.Google.Resource.Logging.Organizations.Exclusions.Create
import Network.Google.Resource.Logging.Organizations.Exclusions.Delete
import Network.Google.Resource.Logging.Organizations.Exclusions.Get
import Network.Google.Resource.Logging.Organizations.Exclusions.List
import Network.Google.Resource.Logging.Organizations.Exclusions.Patch
import Network.Google.Resource.Logging.Organizations.GetCmekSettings
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.Create
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.Delete
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.Get
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.List
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.Patch
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.Undelete
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Create
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Delete
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Get
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.List
import Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Patch
import Network.Google.Resource.Logging.Organizations.Locations.Get
import Network.Google.Resource.Logging.Organizations.Locations.List
import Network.Google.Resource.Logging.Organizations.Locations.Operations.Cancel
import Network.Google.Resource.Logging.Organizations.Locations.Operations.Get
import Network.Google.Resource.Logging.Organizations.Locations.Operations.List
import Network.Google.Resource.Logging.Organizations.Logs.Delete
import Network.Google.Resource.Logging.Organizations.Logs.List
import Network.Google.Resource.Logging.Organizations.Sinks.Create
import Network.Google.Resource.Logging.Organizations.Sinks.Delete
import Network.Google.Resource.Logging.Organizations.Sinks.Get
import Network.Google.Resource.Logging.Organizations.Sinks.List
import Network.Google.Resource.Logging.Organizations.Sinks.Patch
import Network.Google.Resource.Logging.Organizations.Sinks.Update
import Network.Google.Resource.Logging.Organizations.UpdateCmekSettings
import Network.Google.Resource.Logging.Projects.Exclusions.Create
import Network.Google.Resource.Logging.Projects.Exclusions.Delete
import Network.Google.Resource.Logging.Projects.Exclusions.Get
import Network.Google.Resource.Logging.Projects.Exclusions.List
import Network.Google.Resource.Logging.Projects.Exclusions.Patch
import Network.Google.Resource.Logging.Projects.Locations.Buckets.Create
import Network.Google.Resource.Logging.Projects.Locations.Buckets.Delete
import Network.Google.Resource.Logging.Projects.Locations.Buckets.Get
import Network.Google.Resource.Logging.Projects.Locations.Buckets.List
import Network.Google.Resource.Logging.Projects.Locations.Buckets.Patch
import Network.Google.Resource.Logging.Projects.Locations.Buckets.Undelete
import Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Create
import Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Delete
import Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Get
import Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.List
import Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Patch
import Network.Google.Resource.Logging.Projects.Locations.Get
import Network.Google.Resource.Logging.Projects.Locations.List
import Network.Google.Resource.Logging.Projects.Locations.Operations.Cancel
import Network.Google.Resource.Logging.Projects.Locations.Operations.Get
import Network.Google.Resource.Logging.Projects.Locations.Operations.List
import Network.Google.Resource.Logging.Projects.Logs.Delete
import Network.Google.Resource.Logging.Projects.Logs.List
import Network.Google.Resource.Logging.Projects.Metrics.Create
import Network.Google.Resource.Logging.Projects.Metrics.Delete
import Network.Google.Resource.Logging.Projects.Metrics.Get
import Network.Google.Resource.Logging.Projects.Metrics.List
import Network.Google.Resource.Logging.Projects.Metrics.Update
import Network.Google.Resource.Logging.Projects.Sinks.Create
import Network.Google.Resource.Logging.Projects.Sinks.Delete
import Network.Google.Resource.Logging.Projects.Sinks.Get
import Network.Google.Resource.Logging.Projects.Sinks.List
import Network.Google.Resource.Logging.Projects.Sinks.Patch
import Network.Google.Resource.Logging.Projects.Sinks.Update
import Network.Google.Resource.Logging.Sinks.Create
import Network.Google.Resource.Logging.Sinks.Delete
import Network.Google.Resource.Logging.Sinks.Get
import Network.Google.Resource.Logging.Sinks.List
import Network.Google.Resource.Logging.Sinks.Update
import Network.Google.Resource.Logging.UpdateCmekSettings

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Logging API service.
type LoggingAPI =
     SinksListResource :<|> SinksGetResource :<|>
       SinksCreateResource
       :<|> SinksDeleteResource
       :<|> SinksUpdateResource
       :<|> EntriesListResource
       :<|> EntriesWriteResource
       :<|> EntriesCopyResource
       :<|> EntriesTailResource
       :<|> FoldersSinksListResource
       :<|> FoldersSinksPatchResource
       :<|> FoldersSinksGetResource
       :<|> FoldersSinksCreateResource
       :<|> FoldersSinksDeleteResource
       :<|> FoldersSinksUpdateResource
       :<|> FoldersExclusionsListResource
       :<|> FoldersExclusionsPatchResource
       :<|> FoldersExclusionsGetResource
       :<|> FoldersExclusionsCreateResource
       :<|> FoldersExclusionsDeleteResource
       :<|> FoldersLogsListResource
       :<|> FoldersLogsDeleteResource
       :<|> FoldersLocationsBucketsViewsListResource
       :<|> FoldersLocationsBucketsViewsPatchResource
       :<|> FoldersLocationsBucketsViewsGetResource
       :<|> FoldersLocationsBucketsViewsCreateResource
       :<|> FoldersLocationsBucketsViewsDeleteResource
       :<|> FoldersLocationsBucketsListResource
       :<|> FoldersLocationsBucketsUndeleteResource
       :<|> FoldersLocationsBucketsPatchResource
       :<|> FoldersLocationsBucketsGetResource
       :<|> FoldersLocationsBucketsCreateResource
       :<|> FoldersLocationsBucketsDeleteResource
       :<|> FoldersLocationsOperationsListResource
       :<|> FoldersLocationsOperationsGetResource
       :<|> FoldersLocationsOperationsCancelResource
       :<|> FoldersLocationsListResource
       :<|> FoldersLocationsGetResource
       :<|> UpdateCmekSettingsResource
       :<|> GetCmekSettingsResource
       :<|> MonitoredResourceDescriptorsListResource
       :<|> ExclusionsListResource
       :<|> ExclusionsPatchResource
       :<|> ExclusionsGetResource
       :<|> ExclusionsCreateResource
       :<|> ExclusionsDeleteResource
       :<|> LogsListResource
       :<|> LogsDeleteResource
       :<|> OrganizationsSinksListResource
       :<|> OrganizationsSinksPatchResource
       :<|> OrganizationsSinksGetResource
       :<|> OrganizationsSinksCreateResource
       :<|> OrganizationsSinksDeleteResource
       :<|> OrganizationsSinksUpdateResource
       :<|> OrganizationsExclusionsListResource
       :<|> OrganizationsExclusionsPatchResource
       :<|> OrganizationsExclusionsGetResource
       :<|> OrganizationsExclusionsCreateResource
       :<|> OrganizationsExclusionsDeleteResource
       :<|> OrganizationsLogsListResource
       :<|> OrganizationsLogsDeleteResource
       :<|> OrganizationsLocationsBucketsViewsListResource
       :<|> OrganizationsLocationsBucketsViewsPatchResource
       :<|> OrganizationsLocationsBucketsViewsGetResource
       :<|> OrganizationsLocationsBucketsViewsCreateResource
       :<|> OrganizationsLocationsBucketsViewsDeleteResource
       :<|> OrganizationsLocationsBucketsListResource
       :<|> OrganizationsLocationsBucketsUndeleteResource
       :<|> OrganizationsLocationsBucketsPatchResource
       :<|> OrganizationsLocationsBucketsGetResource
       :<|> OrganizationsLocationsBucketsCreateResource
       :<|> OrganizationsLocationsBucketsDeleteResource
       :<|> OrganizationsLocationsOperationsListResource
       :<|> OrganizationsLocationsOperationsGetResource
       :<|> OrganizationsLocationsOperationsCancelResource
       :<|> OrganizationsLocationsListResource
       :<|> OrganizationsLocationsGetResource
       :<|> OrganizationsUpdateCmekSettingsResource
       :<|> OrganizationsGetCmekSettingsResource
       :<|> ProjectsSinksListResource
       :<|> ProjectsSinksPatchResource
       :<|> ProjectsSinksGetResource
       :<|> ProjectsSinksCreateResource
       :<|> ProjectsSinksDeleteResource
       :<|> ProjectsSinksUpdateResource
       :<|> ProjectsMetricsListResource
       :<|> ProjectsMetricsGetResource
       :<|> ProjectsMetricsCreateResource
       :<|> ProjectsMetricsDeleteResource
       :<|> ProjectsMetricsUpdateResource
       :<|> ProjectsExclusionsListResource
       :<|> ProjectsExclusionsPatchResource
       :<|> ProjectsExclusionsGetResource
       :<|> ProjectsExclusionsCreateResource
       :<|> ProjectsExclusionsDeleteResource
       :<|> ProjectsLogsListResource
       :<|> ProjectsLogsDeleteResource
       :<|> ProjectsLocationsBucketsViewsListResource
       :<|> ProjectsLocationsBucketsViewsPatchResource
       :<|> ProjectsLocationsBucketsViewsGetResource
       :<|> ProjectsLocationsBucketsViewsCreateResource
       :<|> ProjectsLocationsBucketsViewsDeleteResource
       :<|> ProjectsLocationsBucketsListResource
       :<|> ProjectsLocationsBucketsUndeleteResource
       :<|> ProjectsLocationsBucketsPatchResource
       :<|> ProjectsLocationsBucketsGetResource
       :<|> ProjectsLocationsBucketsCreateResource
       :<|> ProjectsLocationsBucketsDeleteResource
       :<|> ProjectsLocationsOperationsListResource
       :<|> ProjectsLocationsOperationsGetResource
       :<|> ProjectsLocationsOperationsCancelResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
       :<|> LocationsBucketsViewsListResource
       :<|> LocationsBucketsViewsPatchResource
       :<|> LocationsBucketsViewsGetResource
       :<|> LocationsBucketsViewsCreateResource
       :<|> LocationsBucketsViewsDeleteResource
       :<|> LocationsBucketsListResource
       :<|> LocationsBucketsUndeleteResource
       :<|> LocationsBucketsPatchResource
       :<|> LocationsBucketsGetResource
       :<|> LocationsBucketsCreateResource
       :<|> LocationsBucketsDeleteResource
       :<|> LocationsOperationsListResource
       :<|> LocationsOperationsGetResource
       :<|> LocationsOperationsCancelResource
       :<|> LocationsListResource
       :<|> LocationsGetResource
       :<|> BillingAccountsSinksListResource
       :<|> BillingAccountsSinksPatchResource
       :<|> BillingAccountsSinksGetResource
       :<|> BillingAccountsSinksCreateResource
       :<|> BillingAccountsSinksDeleteResource
       :<|> BillingAccountsSinksUpdateResource
       :<|> BillingAccountsBucketsViewsGetResource
       :<|> BillingAccountsBucketsGetResource
       :<|> BillingAccountsExclusionsListResource
       :<|> BillingAccountsExclusionsPatchResource
       :<|> BillingAccountsExclusionsGetResource
       :<|> BillingAccountsExclusionsCreateResource
       :<|> BillingAccountsExclusionsDeleteResource
       :<|> BillingAccountsLogsListResource
       :<|> BillingAccountsLogsDeleteResource
       :<|> BillingAccountsOperationsGetResource
       :<|> BillingAccountsLocationsBucketsViewsListResource
       :<|>
       BillingAccountsLocationsBucketsViewsPatchResource
       :<|>
       BillingAccountsLocationsBucketsViewsCreateResource
       :<|>
       BillingAccountsLocationsBucketsViewsDeleteResource
       :<|> BillingAccountsLocationsBucketsListResource
       :<|> BillingAccountsLocationsBucketsUndeleteResource
       :<|> BillingAccountsLocationsBucketsPatchResource
       :<|> BillingAccountsLocationsBucketsCreateResource
       :<|> BillingAccountsLocationsBucketsDeleteResource
       :<|> BillingAccountsLocationsOperationsListResource
       :<|> BillingAccountsLocationsOperationsCancelResource
       :<|> BillingAccountsLocationsListResource
       :<|> BillingAccountsLocationsGetResource
