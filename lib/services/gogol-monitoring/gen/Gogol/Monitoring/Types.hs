{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Monitoring.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Monitoring.Types
    (
    -- * Configuration
      monitoringService

    -- * OAuth Scopes
    , cloudPlatformScope
    , monitoringScope
    , monitoringReadScope
    , monitoringWriteScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Aggregation
    , Aggregation (..)
    , newAggregation

    -- ** Aggregation_CrossSeriesReducer
    , Aggregation_CrossSeriesReducer (..)

    -- ** Aggregation_PerSeriesAligner
    , Aggregation_PerSeriesAligner (..)

    -- ** AlertPolicy
    , AlertPolicy (..)
    , newAlertPolicy

    -- ** AlertPolicy_Combiner
    , AlertPolicy_Combiner (..)

    -- ** AlertPolicy_UserLabels
    , AlertPolicy_UserLabels (..)
    , newAlertPolicy_UserLabels

    -- ** AlertStrategy
    , AlertStrategy (..)
    , newAlertStrategy

    -- ** AppEngine
    , AppEngine (..)
    , newAppEngine

    -- ** AvailabilityCriteria
    , AvailabilityCriteria (..)
    , newAvailabilityCriteria

    -- ** BasicAuthentication
    , BasicAuthentication (..)
    , newBasicAuthentication

    -- ** BasicSli
    , BasicSli (..)
    , newBasicSli

    -- ** BucketOptions
    , BucketOptions (..)
    , newBucketOptions

    -- ** CloudEndpoints
    , CloudEndpoints (..)
    , newCloudEndpoints

    -- ** ClusterIstio
    , ClusterIstio (..)
    , newClusterIstio

    -- ** CollectdPayload
    , CollectdPayload (..)
    , newCollectdPayload

    -- ** CollectdPayload_Metadata
    , CollectdPayload_Metadata (..)
    , newCollectdPayload_Metadata

    -- ** CollectdPayloadError
    , CollectdPayloadError (..)
    , newCollectdPayloadError

    -- ** CollectdValue
    , CollectdValue (..)
    , newCollectdValue

    -- ** CollectdValue_DataSourceType
    , CollectdValue_DataSourceType (..)

    -- ** CollectdValueError
    , CollectdValueError (..)
    , newCollectdValueError

    -- ** Condition
    , Condition (..)
    , newCondition

    -- ** ContentMatcher
    , ContentMatcher (..)
    , newContentMatcher

    -- ** ContentMatcher_Matcher
    , ContentMatcher_Matcher (..)

    -- ** CreateCollectdTimeSeriesRequest
    , CreateCollectdTimeSeriesRequest (..)
    , newCreateCollectdTimeSeriesRequest

    -- ** CreateCollectdTimeSeriesResponse
    , CreateCollectdTimeSeriesResponse (..)
    , newCreateCollectdTimeSeriesResponse

    -- ** CreateTimeSeriesRequest
    , CreateTimeSeriesRequest (..)
    , newCreateTimeSeriesRequest

    -- ** CreateTimeSeriesSummary
    , CreateTimeSeriesSummary (..)
    , newCreateTimeSeriesSummary

    -- ** Custom
    , Custom (..)
    , newCustom

    -- ** Distribution
    , Distribution (..)
    , newDistribution

    -- ** DistributionCut
    , DistributionCut (..)
    , newDistributionCut

    -- ** Documentation
    , Documentation (..)
    , newDocumentation

    -- ** DroppedLabels
    , DroppedLabels (..)
    , newDroppedLabels

    -- ** DroppedLabels_Label
    , DroppedLabels_Label (..)
    , newDroppedLabels_Label

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Error'
    , Error' (..)
    , newError

    -- ** Exemplar
    , Exemplar (..)
    , newExemplar

    -- ** Exemplar_AttachmentsItem
    , Exemplar_AttachmentsItem (..)
    , newExemplar_AttachmentsItem

    -- ** Explicit
    , Explicit (..)
    , newExplicit

    -- ** Exponential
    , Exponential (..)
    , newExponential

    -- ** Field
    , Field (..)
    , newField

    -- ** Field_Cardinality
    , Field_Cardinality (..)

    -- ** Field_Kind
    , Field_Kind (..)

    -- ** GetNotificationChannelVerificationCodeRequest
    , GetNotificationChannelVerificationCodeRequest (..)
    , newGetNotificationChannelVerificationCodeRequest

    -- ** GetNotificationChannelVerificationCodeResponse
    , GetNotificationChannelVerificationCodeResponse (..)
    , newGetNotificationChannelVerificationCodeResponse

    -- ** GoogleMonitoringV3Range
    , GoogleMonitoringV3Range (..)
    , newGoogleMonitoringV3Range

    -- ** Group
    , Group (..)
    , newGroup

    -- ** HttpCheck
    , HttpCheck (..)
    , newHttpCheck

    -- ** HttpCheck_ContentType
    , HttpCheck_ContentType (..)

    -- ** HttpCheck_Headers
    , HttpCheck_Headers (..)
    , newHttpCheck_Headers

    -- ** HttpCheck_RequestMethod
    , HttpCheck_RequestMethod (..)

    -- ** InternalChecker
    , InternalChecker (..)
    , newInternalChecker

    -- ** InternalChecker_State
    , InternalChecker_State (..)

    -- ** IstioCanonicalService
    , IstioCanonicalService (..)
    , newIstioCanonicalService

    -- ** LabelDescriptor
    , LabelDescriptor (..)
    , newLabelDescriptor

    -- ** LabelDescriptor_ValueType
    , LabelDescriptor_ValueType (..)

    -- ** LabelValue
    , LabelValue (..)
    , newLabelValue

    -- ** LatencyCriteria
    , LatencyCriteria (..)
    , newLatencyCriteria

    -- ** Linear
    , Linear (..)
    , newLinear

    -- ** ListAlertPoliciesResponse
    , ListAlertPoliciesResponse (..)
    , newListAlertPoliciesResponse

    -- ** ListGroupMembersResponse
    , ListGroupMembersResponse (..)
    , newListGroupMembersResponse

    -- ** ListGroupsResponse
    , ListGroupsResponse (..)
    , newListGroupsResponse

    -- ** ListMetricDescriptorsResponse
    , ListMetricDescriptorsResponse (..)
    , newListMetricDescriptorsResponse

    -- ** ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse (..)
    , newListMonitoredResourceDescriptorsResponse

    -- ** ListNotificationChannelDescriptorsResponse
    , ListNotificationChannelDescriptorsResponse (..)
    , newListNotificationChannelDescriptorsResponse

    -- ** ListNotificationChannelsResponse
    , ListNotificationChannelsResponse (..)
    , newListNotificationChannelsResponse

    -- ** ListServiceLevelObjectivesResponse
    , ListServiceLevelObjectivesResponse (..)
    , newListServiceLevelObjectivesResponse

    -- ** ListServicesResponse
    , ListServicesResponse (..)
    , newListServicesResponse

    -- ** ListTimeSeriesResponse
    , ListTimeSeriesResponse (..)
    , newListTimeSeriesResponse

    -- ** ListUptimeCheckConfigsResponse
    , ListUptimeCheckConfigsResponse (..)
    , newListUptimeCheckConfigsResponse

    -- ** ListUptimeCheckIpsResponse
    , ListUptimeCheckIpsResponse (..)
    , newListUptimeCheckIpsResponse

    -- ** LogMatch
    , LogMatch (..)
    , newLogMatch

    -- ** LogMatch_LabelExtractors
    , LogMatch_LabelExtractors (..)
    , newLogMatch_LabelExtractors

    -- ** MeshIstio
    , MeshIstio (..)
    , newMeshIstio

    -- ** Metric
    , Metric (..)
    , newMetric

    -- ** Metric_Labels
    , Metric_Labels (..)
    , newMetric_Labels

    -- ** MetricAbsence
    , MetricAbsence (..)
    , newMetricAbsence

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

    -- ** MetricRange
    , MetricRange (..)
    , newMetricRange

    -- ** MetricThreshold
    , MetricThreshold (..)
    , newMetricThreshold

    -- ** MetricThreshold_Comparison
    , MetricThreshold_Comparison (..)

    -- ** MetricThreshold_EvaluationMissingData
    , MetricThreshold_EvaluationMissingData (..)

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

    -- ** MonitoringQueryLanguageCondition
    , MonitoringQueryLanguageCondition (..)
    , newMonitoringQueryLanguageCondition

    -- ** MonitoringQueryLanguageCondition_EvaluationMissingData
    , MonitoringQueryLanguageCondition_EvaluationMissingData (..)

    -- ** MutationRecord
    , MutationRecord (..)
    , newMutationRecord

    -- ** NotificationChannel
    , NotificationChannel (..)
    , newNotificationChannel

    -- ** NotificationChannel_Labels
    , NotificationChannel_Labels (..)
    , newNotificationChannel_Labels

    -- ** NotificationChannel_UserLabels
    , NotificationChannel_UserLabels (..)
    , newNotificationChannel_UserLabels

    -- ** NotificationChannel_VerificationStatus
    , NotificationChannel_VerificationStatus (..)

    -- ** NotificationChannelDescriptor
    , NotificationChannelDescriptor (..)
    , newNotificationChannelDescriptor

    -- ** NotificationChannelDescriptor_LaunchStage
    , NotificationChannelDescriptor_LaunchStage (..)

    -- ** NotificationChannelDescriptor_SupportedTiersItem
    , NotificationChannelDescriptor_SupportedTiersItem (..)

    -- ** NotificationRateLimit
    , NotificationRateLimit (..)
    , newNotificationRateLimit

    -- ** OperationMetadata
    , OperationMetadata (..)
    , newOperationMetadata

    -- ** OperationMetadata_State
    , OperationMetadata_State (..)

    -- ** Option
    , Option (..)
    , newOption

    -- ** Option_Value
    , Option_Value (..)
    , newOption_Value

    -- ** PerformanceThreshold
    , PerformanceThreshold (..)
    , newPerformanceThreshold

    -- ** Point
    , Point (..)
    , newPoint

    -- ** PointData
    , PointData (..)
    , newPointData

    -- ** QueryTimeSeriesRequest
    , QueryTimeSeriesRequest (..)
    , newQueryTimeSeriesRequest

    -- ** QueryTimeSeriesResponse
    , QueryTimeSeriesResponse (..)
    , newQueryTimeSeriesResponse

    -- ** Range
    , Range (..)
    , newRange

    -- ** RequestBasedSli
    , RequestBasedSli (..)
    , newRequestBasedSli

    -- ** ResourceGroup
    , ResourceGroup (..)
    , newResourceGroup

    -- ** ResourceGroup_ResourceType
    , ResourceGroup_ResourceType (..)

    -- ** SendNotificationChannelVerificationCodeRequest
    , SendNotificationChannelVerificationCodeRequest (..)
    , newSendNotificationChannelVerificationCodeRequest

    -- ** Service
    , Service (..)
    , newService

    -- ** Service_UserLabels
    , Service_UserLabels (..)
    , newService_UserLabels

    -- ** ServiceLevelIndicator
    , ServiceLevelIndicator (..)
    , newServiceLevelIndicator

    -- ** ServiceLevelObjective
    , ServiceLevelObjective (..)
    , newServiceLevelObjective

    -- ** ServiceLevelObjective_CalendarPeriod
    , ServiceLevelObjective_CalendarPeriod (..)

    -- ** ServiceLevelObjective_UserLabels
    , ServiceLevelObjective_UserLabels (..)
    , newServiceLevelObjective_UserLabels

    -- ** SourceContext
    , SourceContext (..)
    , newSourceContext

    -- ** SpanContext
    , SpanContext (..)
    , newSpanContext

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** TcpCheck
    , TcpCheck (..)
    , newTcpCheck

    -- ** Telemetry
    , Telemetry (..)
    , newTelemetry

    -- ** TimeInterval
    , TimeInterval (..)
    , newTimeInterval

    -- ** TimeSeries
    , TimeSeries (..)
    , newTimeSeries

    -- ** TimeSeries_MetricKind
    , TimeSeries_MetricKind (..)

    -- ** TimeSeries_ValueType
    , TimeSeries_ValueType (..)

    -- ** TimeSeriesData
    , TimeSeriesData (..)
    , newTimeSeriesData

    -- ** TimeSeriesDescriptor
    , TimeSeriesDescriptor (..)
    , newTimeSeriesDescriptor

    -- ** TimeSeriesRatio
    , TimeSeriesRatio (..)
    , newTimeSeriesRatio

    -- ** Trigger
    , Trigger (..)
    , newTrigger

    -- ** Type
    , Type (..)
    , newType

    -- ** Type_Syntax
    , Type_Syntax (..)

    -- ** TypedValue
    , TypedValue (..)
    , newTypedValue

    -- ** UptimeCheckConfig
    , UptimeCheckConfig (..)
    , newUptimeCheckConfig

    -- ** UptimeCheckConfig_CheckerType
    , UptimeCheckConfig_CheckerType (..)

    -- ** UptimeCheckConfig_SelectedRegionsItem
    , UptimeCheckConfig_SelectedRegionsItem (..)

    -- ** UptimeCheckIp
    , UptimeCheckIp (..)
    , newUptimeCheckIp

    -- ** UptimeCheckIp_Region
    , UptimeCheckIp_Region (..)

    -- ** ValueDescriptor
    , ValueDescriptor (..)
    , newValueDescriptor

    -- ** ValueDescriptor_MetricKind
    , ValueDescriptor_MetricKind (..)

    -- ** ValueDescriptor_ValueType
    , ValueDescriptor_ValueType (..)

    -- ** VerifyNotificationChannelRequest
    , VerifyNotificationChannelRequest (..)
    , newVerifyNotificationChannelRequest

    -- ** WindowsBasedSli
    , WindowsBasedSli (..)
    , newWindowsBasedSli

    -- ** FoldersTimeSeriesListAggregationCrossSeriesReducer
    , FoldersTimeSeriesListAggregationCrossSeriesReducer (..)

    -- ** FoldersTimeSeriesListAggregationPerSeriesAligner
    , FoldersTimeSeriesListAggregationPerSeriesAligner (..)

    -- ** FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
    , FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer (..)

    -- ** FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
    , FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner (..)

    -- ** FoldersTimeSeriesListView
    , FoldersTimeSeriesListView (..)

    -- ** OrganizationsTimeSeriesListAggregationCrossSeriesReducer
    , OrganizationsTimeSeriesListAggregationCrossSeriesReducer (..)

    -- ** OrganizationsTimeSeriesListAggregationPerSeriesAligner
    , OrganizationsTimeSeriesListAggregationPerSeriesAligner (..)

    -- ** OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    , OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer (..)

    -- ** OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
    , OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner (..)

    -- ** OrganizationsTimeSeriesListView
    , OrganizationsTimeSeriesListView (..)

    -- ** ProjectsTimeSeriesListAggregationCrossSeriesReducer
    , ProjectsTimeSeriesListAggregationCrossSeriesReducer (..)

    -- ** ProjectsTimeSeriesListAggregationPerSeriesAligner
    , ProjectsTimeSeriesListAggregationPerSeriesAligner (..)

    -- ** ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    , ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer (..)

    -- ** ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
    , ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner (..)

    -- ** ProjectsTimeSeriesListView
    , ProjectsTimeSeriesListView (..)

    -- ** ServicesServiceLevelObjectivesGetView
    , ServicesServiceLevelObjectivesGetView (..)

    -- ** ServicesServiceLevelObjectivesListView
    , ServicesServiceLevelObjectivesListView (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Internal.Product
import Gogol.Monitoring.Internal.Sum

-- | Default request referring to version @v3@ of the Cloud Monitoring API. This contains the host and root path used as a starting point for constructing service requests.
monitoringService :: Core.ServiceConfig
monitoringService
  = Core.defaultService
      (Core.ServiceId "monitoring:v3")
      "monitoring.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View and write monitoring data for all of your Google and third-party Cloud and API projects
monitoringScope :: Core.Proxy '["https://www.googleapis.com/auth/monitoring"]
monitoringScope = Core.Proxy

-- | View monitoring data for all of your Google Cloud and third-party projects
monitoringReadScope :: Core.Proxy '["https://www.googleapis.com/auth/monitoring.read"]
monitoringReadScope = Core.Proxy

-- | Publish metric data to your Google Cloud projects
monitoringWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/monitoring.write"]
monitoringWriteScope = Core.Proxy
