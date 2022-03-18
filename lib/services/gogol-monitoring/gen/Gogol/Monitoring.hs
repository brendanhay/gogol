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
-- Module      : Gogol.Monitoring
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages your Cloud Monitoring data and configurations.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference>
module Gogol.Monitoring
    (
    -- * Configuration
      monitoringService

    -- * OAuth Scopes
    , cloudPlatformScope
    , monitoringScope
    , monitoringReadScope
    , monitoringWriteScope

    -- * Resources

    -- ** monitoring.folders.timeSeries.list
    , MonitoringFoldersTimeSeriesListResource
    , newMonitoringFoldersTimeSeriesList
    , MonitoringFoldersTimeSeriesList

    -- ** monitoring.organizations.timeSeries.list
    , MonitoringOrganizationsTimeSeriesListResource
    , newMonitoringOrganizationsTimeSeriesList
    , MonitoringOrganizationsTimeSeriesList

    -- ** monitoring.projects.alertPolicies.create
    , MonitoringProjectsAlertPoliciesCreateResource
    , newMonitoringProjectsAlertPoliciesCreate
    , MonitoringProjectsAlertPoliciesCreate

    -- ** monitoring.projects.alertPolicies.delete
    , MonitoringProjectsAlertPoliciesDeleteResource
    , newMonitoringProjectsAlertPoliciesDelete
    , MonitoringProjectsAlertPoliciesDelete

    -- ** monitoring.projects.alertPolicies.get
    , MonitoringProjectsAlertPoliciesGetResource
    , newMonitoringProjectsAlertPoliciesGet
    , MonitoringProjectsAlertPoliciesGet

    -- ** monitoring.projects.alertPolicies.list
    , MonitoringProjectsAlertPoliciesListResource
    , newMonitoringProjectsAlertPoliciesList
    , MonitoringProjectsAlertPoliciesList

    -- ** monitoring.projects.alertPolicies.patch
    , MonitoringProjectsAlertPoliciesPatchResource
    , newMonitoringProjectsAlertPoliciesPatch
    , MonitoringProjectsAlertPoliciesPatch

    -- ** monitoring.projects.collectdTimeSeries.create
    , MonitoringProjectsCollectdTimeSeriesCreateResource
    , newMonitoringProjectsCollectdTimeSeriesCreate
    , MonitoringProjectsCollectdTimeSeriesCreate

    -- ** monitoring.projects.groups.create
    , MonitoringProjectsGroupsCreateResource
    , newMonitoringProjectsGroupsCreate
    , MonitoringProjectsGroupsCreate

    -- ** monitoring.projects.groups.delete
    , MonitoringProjectsGroupsDeleteResource
    , newMonitoringProjectsGroupsDelete
    , MonitoringProjectsGroupsDelete

    -- ** monitoring.projects.groups.get
    , MonitoringProjectsGroupsGetResource
    , newMonitoringProjectsGroupsGet
    , MonitoringProjectsGroupsGet

    -- ** monitoring.projects.groups.list
    , MonitoringProjectsGroupsListResource
    , newMonitoringProjectsGroupsList
    , MonitoringProjectsGroupsList

    -- ** monitoring.projects.groups.members.list
    , MonitoringProjectsGroupsMembersListResource
    , newMonitoringProjectsGroupsMembersList
    , MonitoringProjectsGroupsMembersList

    -- ** monitoring.projects.groups.update
    , MonitoringProjectsGroupsUpdateResource
    , newMonitoringProjectsGroupsUpdate
    , MonitoringProjectsGroupsUpdate

    -- ** monitoring.projects.metricDescriptors.create
    , MonitoringProjectsMetricDescriptorsCreateResource
    , newMonitoringProjectsMetricDescriptorsCreate
    , MonitoringProjectsMetricDescriptorsCreate

    -- ** monitoring.projects.metricDescriptors.delete
    , MonitoringProjectsMetricDescriptorsDeleteResource
    , newMonitoringProjectsMetricDescriptorsDelete
    , MonitoringProjectsMetricDescriptorsDelete

    -- ** monitoring.projects.metricDescriptors.get
    , MonitoringProjectsMetricDescriptorsGetResource
    , newMonitoringProjectsMetricDescriptorsGet
    , MonitoringProjectsMetricDescriptorsGet

    -- ** monitoring.projects.metricDescriptors.list
    , MonitoringProjectsMetricDescriptorsListResource
    , newMonitoringProjectsMetricDescriptorsList
    , MonitoringProjectsMetricDescriptorsList

    -- ** monitoring.projects.monitoredResourceDescriptors.get
    , MonitoringProjectsMonitoredResourceDescriptorsGetResource
    , newMonitoringProjectsMonitoredResourceDescriptorsGet
    , MonitoringProjectsMonitoredResourceDescriptorsGet

    -- ** monitoring.projects.monitoredResourceDescriptors.list
    , MonitoringProjectsMonitoredResourceDescriptorsListResource
    , newMonitoringProjectsMonitoredResourceDescriptorsList
    , MonitoringProjectsMonitoredResourceDescriptorsList

    -- ** monitoring.projects.notificationChannelDescriptors.get
    , MonitoringProjectsNotificationChannelDescriptorsGetResource
    , newMonitoringProjectsNotificationChannelDescriptorsGet
    , MonitoringProjectsNotificationChannelDescriptorsGet

    -- ** monitoring.projects.notificationChannelDescriptors.list
    , MonitoringProjectsNotificationChannelDescriptorsListResource
    , newMonitoringProjectsNotificationChannelDescriptorsList
    , MonitoringProjectsNotificationChannelDescriptorsList

    -- ** monitoring.projects.notificationChannels.create
    , MonitoringProjectsNotificationChannelsCreateResource
    , newMonitoringProjectsNotificationChannelsCreate
    , MonitoringProjectsNotificationChannelsCreate

    -- ** monitoring.projects.notificationChannels.delete
    , MonitoringProjectsNotificationChannelsDeleteResource
    , newMonitoringProjectsNotificationChannelsDelete
    , MonitoringProjectsNotificationChannelsDelete

    -- ** monitoring.projects.notificationChannels.get
    , MonitoringProjectsNotificationChannelsGetResource
    , newMonitoringProjectsNotificationChannelsGet
    , MonitoringProjectsNotificationChannelsGet

    -- ** monitoring.projects.notificationChannels.getVerificationCode
    , MonitoringProjectsNotificationChannelsGetVerificationCodeResource
    , newMonitoringProjectsNotificationChannelsGetVerificationCode
    , MonitoringProjectsNotificationChannelsGetVerificationCode

    -- ** monitoring.projects.notificationChannels.list
    , MonitoringProjectsNotificationChannelsListResource
    , newMonitoringProjectsNotificationChannelsList
    , MonitoringProjectsNotificationChannelsList

    -- ** monitoring.projects.notificationChannels.patch
    , MonitoringProjectsNotificationChannelsPatchResource
    , newMonitoringProjectsNotificationChannelsPatch
    , MonitoringProjectsNotificationChannelsPatch

    -- ** monitoring.projects.notificationChannels.sendVerificationCode
    , MonitoringProjectsNotificationChannelsSendVerificationCodeResource
    , newMonitoringProjectsNotificationChannelsSendVerificationCode
    , MonitoringProjectsNotificationChannelsSendVerificationCode

    -- ** monitoring.projects.notificationChannels.verify
    , MonitoringProjectsNotificationChannelsVerifyResource
    , newMonitoringProjectsNotificationChannelsVerify
    , MonitoringProjectsNotificationChannelsVerify

    -- ** monitoring.projects.timeSeries.create
    , MonitoringProjectsTimeSeriesCreateResource
    , newMonitoringProjectsTimeSeriesCreate
    , MonitoringProjectsTimeSeriesCreate

    -- ** monitoring.projects.timeSeries.createService
    , MonitoringProjectsTimeSeriesCreateServiceResource
    , newMonitoringProjectsTimeSeriesCreateService
    , MonitoringProjectsTimeSeriesCreateService

    -- ** monitoring.projects.timeSeries.list
    , MonitoringProjectsTimeSeriesListResource
    , newMonitoringProjectsTimeSeriesList
    , MonitoringProjectsTimeSeriesList

    -- ** monitoring.projects.timeSeries.query
    , MonitoringProjectsTimeSeriesQueryResource
    , newMonitoringProjectsTimeSeriesQuery
    , MonitoringProjectsTimeSeriesQuery

    -- ** monitoring.projects.uptimeCheckConfigs.create
    , MonitoringProjectsUptimeCheckConfigsCreateResource
    , newMonitoringProjectsUptimeCheckConfigsCreate
    , MonitoringProjectsUptimeCheckConfigsCreate

    -- ** monitoring.projects.uptimeCheckConfigs.delete
    , MonitoringProjectsUptimeCheckConfigsDeleteResource
    , newMonitoringProjectsUptimeCheckConfigsDelete
    , MonitoringProjectsUptimeCheckConfigsDelete

    -- ** monitoring.projects.uptimeCheckConfigs.get
    , MonitoringProjectsUptimeCheckConfigsGetResource
    , newMonitoringProjectsUptimeCheckConfigsGet
    , MonitoringProjectsUptimeCheckConfigsGet

    -- ** monitoring.projects.uptimeCheckConfigs.list
    , MonitoringProjectsUptimeCheckConfigsListResource
    , newMonitoringProjectsUptimeCheckConfigsList
    , MonitoringProjectsUptimeCheckConfigsList

    -- ** monitoring.projects.uptimeCheckConfigs.patch
    , MonitoringProjectsUptimeCheckConfigsPatchResource
    , newMonitoringProjectsUptimeCheckConfigsPatch
    , MonitoringProjectsUptimeCheckConfigsPatch

    -- ** monitoring.services.create
    , MonitoringServicesCreateResource
    , newMonitoringServicesCreate
    , MonitoringServicesCreate

    -- ** monitoring.services.delete
    , MonitoringServicesDeleteResource
    , newMonitoringServicesDelete
    , MonitoringServicesDelete

    -- ** monitoring.services.get
    , MonitoringServicesGetResource
    , newMonitoringServicesGet
    , MonitoringServicesGet

    -- ** monitoring.services.list
    , MonitoringServicesListResource
    , newMonitoringServicesList
    , MonitoringServicesList

    -- ** monitoring.services.patch
    , MonitoringServicesPatchResource
    , newMonitoringServicesPatch
    , MonitoringServicesPatch

    -- ** monitoring.services.serviceLevelObjectives.create
    , MonitoringServicesServiceLevelObjectivesCreateResource
    , newMonitoringServicesServiceLevelObjectivesCreate
    , MonitoringServicesServiceLevelObjectivesCreate

    -- ** monitoring.services.serviceLevelObjectives.delete
    , MonitoringServicesServiceLevelObjectivesDeleteResource
    , newMonitoringServicesServiceLevelObjectivesDelete
    , MonitoringServicesServiceLevelObjectivesDelete

    -- ** monitoring.services.serviceLevelObjectives.get
    , MonitoringServicesServiceLevelObjectivesGetResource
    , newMonitoringServicesServiceLevelObjectivesGet
    , MonitoringServicesServiceLevelObjectivesGet

    -- ** monitoring.services.serviceLevelObjectives.list
    , MonitoringServicesServiceLevelObjectivesListResource
    , newMonitoringServicesServiceLevelObjectivesList
    , MonitoringServicesServiceLevelObjectivesList

    -- ** monitoring.services.serviceLevelObjectives.patch
    , MonitoringServicesServiceLevelObjectivesPatchResource
    , newMonitoringServicesServiceLevelObjectivesPatch
    , MonitoringServicesServiceLevelObjectivesPatch

    -- ** monitoring.uptimeCheckIps.list
    , MonitoringUptimeCheckIpsListResource
    , newMonitoringUptimeCheckIpsList
    , MonitoringUptimeCheckIpsList

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

import Gogol.Monitoring.Folders.TimeSeries.List
import Gogol.Monitoring.Organizations.TimeSeries.List
import Gogol.Monitoring.Projects.AlertPolicies.Create
import Gogol.Monitoring.Projects.AlertPolicies.Delete
import Gogol.Monitoring.Projects.AlertPolicies.Get
import Gogol.Monitoring.Projects.AlertPolicies.List
import Gogol.Monitoring.Projects.AlertPolicies.Patch
import Gogol.Monitoring.Projects.CollectdTimeSeries.Create
import Gogol.Monitoring.Projects.Groups.Create
import Gogol.Monitoring.Projects.Groups.Delete
import Gogol.Monitoring.Projects.Groups.Get
import Gogol.Monitoring.Projects.Groups.List
import Gogol.Monitoring.Projects.Groups.Members.List
import Gogol.Monitoring.Projects.Groups.Update
import Gogol.Monitoring.Projects.MetricDescriptors.Create
import Gogol.Monitoring.Projects.MetricDescriptors.Delete
import Gogol.Monitoring.Projects.MetricDescriptors.Get
import Gogol.Monitoring.Projects.MetricDescriptors.List
import Gogol.Monitoring.Projects.MonitoredResourceDescriptors.Get
import Gogol.Monitoring.Projects.MonitoredResourceDescriptors.List
import Gogol.Monitoring.Projects.NotificationChannelDescriptors.Get
import Gogol.Monitoring.Projects.NotificationChannelDescriptors.List
import Gogol.Monitoring.Projects.NotificationChannels.Create
import Gogol.Monitoring.Projects.NotificationChannels.Delete
import Gogol.Monitoring.Projects.NotificationChannels.Get
import Gogol.Monitoring.Projects.NotificationChannels.GetVerificationCode
import Gogol.Monitoring.Projects.NotificationChannels.List
import Gogol.Monitoring.Projects.NotificationChannels.Patch
import Gogol.Monitoring.Projects.NotificationChannels.SendVerificationCode
import Gogol.Monitoring.Projects.NotificationChannels.Verify
import Gogol.Monitoring.Projects.TimeSeries.Create
import Gogol.Monitoring.Projects.TimeSeries.CreateService
import Gogol.Monitoring.Projects.TimeSeries.List
import Gogol.Monitoring.Projects.TimeSeries.Query
import Gogol.Monitoring.Projects.UptimeCheckConfigs.Create
import Gogol.Monitoring.Projects.UptimeCheckConfigs.Delete
import Gogol.Monitoring.Projects.UptimeCheckConfigs.Get
import Gogol.Monitoring.Projects.UptimeCheckConfigs.List
import Gogol.Monitoring.Projects.UptimeCheckConfigs.Patch
import Gogol.Monitoring.Services.Create
import Gogol.Monitoring.Services.Delete
import Gogol.Monitoring.Services.Get
import Gogol.Monitoring.Services.List
import Gogol.Monitoring.Services.Patch
import Gogol.Monitoring.Services.ServiceLevelObjectives.Create
import Gogol.Monitoring.Services.ServiceLevelObjectives.Delete
import Gogol.Monitoring.Services.ServiceLevelObjectives.Get
import Gogol.Monitoring.Services.ServiceLevelObjectives.List
import Gogol.Monitoring.Services.ServiceLevelObjectives.Patch
import Gogol.Monitoring.Types
import Gogol.Monitoring.UptimeCheckIps.List
