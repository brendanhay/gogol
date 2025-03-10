{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Monitoring
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages your Cloud Monitoring data and configurations.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference>
module Gogol.Monitoring
  ( -- * Configuration
    monitoringService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Monitoring'FullControl,
    Monitoring'Read,
    Monitoring'Write,

    -- * Resources

    -- ** monitoring.folders.timeSeries.list
    MonitoringFoldersTimeSeriesListResource,
    MonitoringFoldersTimeSeriesList (..),
    newMonitoringFoldersTimeSeriesList,

    -- ** monitoring.organizations.timeSeries.list
    MonitoringOrganizationsTimeSeriesListResource,
    MonitoringOrganizationsTimeSeriesList (..),
    newMonitoringOrganizationsTimeSeriesList,

    -- ** monitoring.projects.alertPolicies.create
    MonitoringProjectsAlertPoliciesCreateResource,
    MonitoringProjectsAlertPoliciesCreate (..),
    newMonitoringProjectsAlertPoliciesCreate,

    -- ** monitoring.projects.alertPolicies.delete
    MonitoringProjectsAlertPoliciesDeleteResource,
    MonitoringProjectsAlertPoliciesDelete (..),
    newMonitoringProjectsAlertPoliciesDelete,

    -- ** monitoring.projects.alertPolicies.get
    MonitoringProjectsAlertPoliciesGetResource,
    MonitoringProjectsAlertPoliciesGet (..),
    newMonitoringProjectsAlertPoliciesGet,

    -- ** monitoring.projects.alertPolicies.list
    MonitoringProjectsAlertPoliciesListResource,
    MonitoringProjectsAlertPoliciesList (..),
    newMonitoringProjectsAlertPoliciesList,

    -- ** monitoring.projects.alertPolicies.patch
    MonitoringProjectsAlertPoliciesPatchResource,
    MonitoringProjectsAlertPoliciesPatch (..),
    newMonitoringProjectsAlertPoliciesPatch,

    -- ** monitoring.projects.collectdTimeSeries.create
    MonitoringProjectsCollectdTimeSeriesCreateResource,
    MonitoringProjectsCollectdTimeSeriesCreate (..),
    newMonitoringProjectsCollectdTimeSeriesCreate,

    -- ** monitoring.projects.groups.create
    MonitoringProjectsGroupsCreateResource,
    MonitoringProjectsGroupsCreate (..),
    newMonitoringProjectsGroupsCreate,

    -- ** monitoring.projects.groups.delete
    MonitoringProjectsGroupsDeleteResource,
    MonitoringProjectsGroupsDelete (..),
    newMonitoringProjectsGroupsDelete,

    -- ** monitoring.projects.groups.get
    MonitoringProjectsGroupsGetResource,
    MonitoringProjectsGroupsGet (..),
    newMonitoringProjectsGroupsGet,

    -- ** monitoring.projects.groups.list
    MonitoringProjectsGroupsListResource,
    MonitoringProjectsGroupsList (..),
    newMonitoringProjectsGroupsList,

    -- ** monitoring.projects.groups.members.list
    MonitoringProjectsGroupsMembersListResource,
    MonitoringProjectsGroupsMembersList (..),
    newMonitoringProjectsGroupsMembersList,

    -- ** monitoring.projects.groups.update
    MonitoringProjectsGroupsUpdateResource,
    MonitoringProjectsGroupsUpdate (..),
    newMonitoringProjectsGroupsUpdate,

    -- ** monitoring.projects.metricDescriptors.create
    MonitoringProjectsMetricDescriptorsCreateResource,
    MonitoringProjectsMetricDescriptorsCreate (..),
    newMonitoringProjectsMetricDescriptorsCreate,

    -- ** monitoring.projects.metricDescriptors.delete
    MonitoringProjectsMetricDescriptorsDeleteResource,
    MonitoringProjectsMetricDescriptorsDelete (..),
    newMonitoringProjectsMetricDescriptorsDelete,

    -- ** monitoring.projects.metricDescriptors.get
    MonitoringProjectsMetricDescriptorsGetResource,
    MonitoringProjectsMetricDescriptorsGet (..),
    newMonitoringProjectsMetricDescriptorsGet,

    -- ** monitoring.projects.metricDescriptors.list
    MonitoringProjectsMetricDescriptorsListResource,
    MonitoringProjectsMetricDescriptorsList (..),
    newMonitoringProjectsMetricDescriptorsList,

    -- ** monitoring.projects.monitoredResourceDescriptors.get
    MonitoringProjectsMonitoredResourceDescriptorsGetResource,
    MonitoringProjectsMonitoredResourceDescriptorsGet (..),
    newMonitoringProjectsMonitoredResourceDescriptorsGet,

    -- ** monitoring.projects.monitoredResourceDescriptors.list
    MonitoringProjectsMonitoredResourceDescriptorsListResource,
    MonitoringProjectsMonitoredResourceDescriptorsList (..),
    newMonitoringProjectsMonitoredResourceDescriptorsList,

    -- ** monitoring.projects.notificationChannelDescriptors.get
    MonitoringProjectsNotificationChannelDescriptorsGetResource,
    MonitoringProjectsNotificationChannelDescriptorsGet (..),
    newMonitoringProjectsNotificationChannelDescriptorsGet,

    -- ** monitoring.projects.notificationChannelDescriptors.list
    MonitoringProjectsNotificationChannelDescriptorsListResource,
    MonitoringProjectsNotificationChannelDescriptorsList (..),
    newMonitoringProjectsNotificationChannelDescriptorsList,

    -- ** monitoring.projects.notificationChannels.create
    MonitoringProjectsNotificationChannelsCreateResource,
    MonitoringProjectsNotificationChannelsCreate (..),
    newMonitoringProjectsNotificationChannelsCreate,

    -- ** monitoring.projects.notificationChannels.delete
    MonitoringProjectsNotificationChannelsDeleteResource,
    MonitoringProjectsNotificationChannelsDelete (..),
    newMonitoringProjectsNotificationChannelsDelete,

    -- ** monitoring.projects.notificationChannels.get
    MonitoringProjectsNotificationChannelsGetResource,
    MonitoringProjectsNotificationChannelsGet (..),
    newMonitoringProjectsNotificationChannelsGet,

    -- ** monitoring.projects.notificationChannels.getVerificationCode
    MonitoringProjectsNotificationChannelsGetVerificationCodeResource,
    MonitoringProjectsNotificationChannelsGetVerificationCode (..),
    newMonitoringProjectsNotificationChannelsGetVerificationCode,

    -- ** monitoring.projects.notificationChannels.list
    MonitoringProjectsNotificationChannelsListResource,
    MonitoringProjectsNotificationChannelsList (..),
    newMonitoringProjectsNotificationChannelsList,

    -- ** monitoring.projects.notificationChannels.patch
    MonitoringProjectsNotificationChannelsPatchResource,
    MonitoringProjectsNotificationChannelsPatch (..),
    newMonitoringProjectsNotificationChannelsPatch,

    -- ** monitoring.projects.notificationChannels.sendVerificationCode
    MonitoringProjectsNotificationChannelsSendVerificationCodeResource,
    MonitoringProjectsNotificationChannelsSendVerificationCode (..),
    newMonitoringProjectsNotificationChannelsSendVerificationCode,

    -- ** monitoring.projects.notificationChannels.verify
    MonitoringProjectsNotificationChannelsVerifyResource,
    MonitoringProjectsNotificationChannelsVerify (..),
    newMonitoringProjectsNotificationChannelsVerify,

    -- ** monitoring.projects.snoozes.create
    MonitoringProjectsSnoozesCreateResource,
    MonitoringProjectsSnoozesCreate (..),
    newMonitoringProjectsSnoozesCreate,

    -- ** monitoring.projects.snoozes.get
    MonitoringProjectsSnoozesGetResource,
    MonitoringProjectsSnoozesGet (..),
    newMonitoringProjectsSnoozesGet,

    -- ** monitoring.projects.snoozes.list
    MonitoringProjectsSnoozesListResource,
    MonitoringProjectsSnoozesList (..),
    newMonitoringProjectsSnoozesList,

    -- ** monitoring.projects.snoozes.patch
    MonitoringProjectsSnoozesPatchResource,
    MonitoringProjectsSnoozesPatch (..),
    newMonitoringProjectsSnoozesPatch,

    -- ** monitoring.projects.timeSeries.create
    MonitoringProjectsTimeSeriesCreateResource,
    MonitoringProjectsTimeSeriesCreate (..),
    newMonitoringProjectsTimeSeriesCreate,

    -- ** monitoring.projects.timeSeries.createService
    MonitoringProjectsTimeSeriesCreateServiceResource,
    MonitoringProjectsTimeSeriesCreateService (..),
    newMonitoringProjectsTimeSeriesCreateService,

    -- ** monitoring.projects.timeSeries.list
    MonitoringProjectsTimeSeriesListResource,
    MonitoringProjectsTimeSeriesList (..),
    newMonitoringProjectsTimeSeriesList,

    -- ** monitoring.projects.timeSeries.query
    MonitoringProjectsTimeSeriesQueryResource,
    MonitoringProjectsTimeSeriesQuery (..),
    newMonitoringProjectsTimeSeriesQuery,

    -- ** monitoring.projects.uptimeCheckConfigs.create
    MonitoringProjectsUptimeCheckConfigsCreateResource,
    MonitoringProjectsUptimeCheckConfigsCreate (..),
    newMonitoringProjectsUptimeCheckConfigsCreate,

    -- ** monitoring.projects.uptimeCheckConfigs.delete
    MonitoringProjectsUptimeCheckConfigsDeleteResource,
    MonitoringProjectsUptimeCheckConfigsDelete (..),
    newMonitoringProjectsUptimeCheckConfigsDelete,

    -- ** monitoring.projects.uptimeCheckConfigs.get
    MonitoringProjectsUptimeCheckConfigsGetResource,
    MonitoringProjectsUptimeCheckConfigsGet (..),
    newMonitoringProjectsUptimeCheckConfigsGet,

    -- ** monitoring.projects.uptimeCheckConfigs.list
    MonitoringProjectsUptimeCheckConfigsListResource,
    MonitoringProjectsUptimeCheckConfigsList (..),
    newMonitoringProjectsUptimeCheckConfigsList,

    -- ** monitoring.projects.uptimeCheckConfigs.patch
    MonitoringProjectsUptimeCheckConfigsPatchResource,
    MonitoringProjectsUptimeCheckConfigsPatch (..),
    newMonitoringProjectsUptimeCheckConfigsPatch,

    -- ** monitoring.services.create
    MonitoringServicesCreateResource,
    MonitoringServicesCreate (..),
    newMonitoringServicesCreate,

    -- ** monitoring.services.delete
    MonitoringServicesDeleteResource,
    MonitoringServicesDelete (..),
    newMonitoringServicesDelete,

    -- ** monitoring.services.get
    MonitoringServicesGetResource,
    MonitoringServicesGet (..),
    newMonitoringServicesGet,

    -- ** monitoring.services.list
    MonitoringServicesListResource,
    MonitoringServicesList (..),
    newMonitoringServicesList,

    -- ** monitoring.services.patch
    MonitoringServicesPatchResource,
    MonitoringServicesPatch (..),
    newMonitoringServicesPatch,

    -- ** monitoring.services.serviceLevelObjectives.create
    MonitoringServicesServiceLevelObjectivesCreateResource,
    MonitoringServicesServiceLevelObjectivesCreate (..),
    newMonitoringServicesServiceLevelObjectivesCreate,

    -- ** monitoring.services.serviceLevelObjectives.delete
    MonitoringServicesServiceLevelObjectivesDeleteResource,
    MonitoringServicesServiceLevelObjectivesDelete (..),
    newMonitoringServicesServiceLevelObjectivesDelete,

    -- ** monitoring.services.serviceLevelObjectives.get
    MonitoringServicesServiceLevelObjectivesGetResource,
    MonitoringServicesServiceLevelObjectivesGet (..),
    newMonitoringServicesServiceLevelObjectivesGet,

    -- ** monitoring.services.serviceLevelObjectives.list
    MonitoringServicesServiceLevelObjectivesListResource,
    MonitoringServicesServiceLevelObjectivesList (..),
    newMonitoringServicesServiceLevelObjectivesList,

    -- ** monitoring.services.serviceLevelObjectives.patch
    MonitoringServicesServiceLevelObjectivesPatchResource,
    MonitoringServicesServiceLevelObjectivesPatch (..),
    newMonitoringServicesServiceLevelObjectivesPatch,

    -- ** monitoring.uptimeCheckIps.list
    MonitoringUptimeCheckIpsListResource,
    MonitoringUptimeCheckIpsList (..),
    newMonitoringUptimeCheckIpsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Aggregation
    Aggregation (..),
    newAggregation,

    -- ** Aggregation_CrossSeriesReducer
    Aggregation_CrossSeriesReducer (..),

    -- ** Aggregation_PerSeriesAligner
    Aggregation_PerSeriesAligner (..),

    -- ** AlertPolicy
    AlertPolicy (..),
    newAlertPolicy,

    -- ** AlertPolicy_Combiner
    AlertPolicy_Combiner (..),

    -- ** AlertPolicy_Severity
    AlertPolicy_Severity (..),

    -- ** AlertPolicy_UserLabels
    AlertPolicy_UserLabels (..),
    newAlertPolicy_UserLabels,

    -- ** AlertStrategy
    AlertStrategy (..),
    newAlertStrategy,

    -- ** AlertStrategy_NotificationPromptsItem
    AlertStrategy_NotificationPromptsItem (..),

    -- ** AppEngine
    AppEngine (..),
    newAppEngine,

    -- ** AvailabilityCriteria
    AvailabilityCriteria (..),
    newAvailabilityCriteria,

    -- ** BasicAuthentication
    BasicAuthentication (..),
    newBasicAuthentication,

    -- ** BasicService
    BasicService (..),
    newBasicService,

    -- ** BasicService_ServiceLabels
    BasicService_ServiceLabels (..),
    newBasicService_ServiceLabels,

    -- ** BasicSli
    BasicSli (..),
    newBasicSli,

    -- ** BooleanTest
    BooleanTest (..),
    newBooleanTest,

    -- ** BucketOptions
    BucketOptions (..),
    newBucketOptions,

    -- ** CloudEndpoints
    CloudEndpoints (..),
    newCloudEndpoints,

    -- ** CloudFunctionV2Target
    CloudFunctionV2Target (..),
    newCloudFunctionV2Target,

    -- ** CloudRun
    CloudRun (..),
    newCloudRun,

    -- ** ClusterIstio
    ClusterIstio (..),
    newClusterIstio,

    -- ** CollectdPayload
    CollectdPayload (..),
    newCollectdPayload,

    -- ** CollectdPayload_Metadata
    CollectdPayload_Metadata (..),
    newCollectdPayload_Metadata,

    -- ** CollectdPayloadError
    CollectdPayloadError (..),
    newCollectdPayloadError,

    -- ** CollectdValue
    CollectdValue (..),
    newCollectdValue,

    -- ** CollectdValue_DataSourceType
    CollectdValue_DataSourceType (..),

    -- ** CollectdValueError
    CollectdValueError (..),
    newCollectdValueError,

    -- ** Condition
    Condition (..),
    newCondition,

    -- ** ContentMatcher
    ContentMatcher (..),
    newContentMatcher,

    -- ** ContentMatcher_Matcher
    ContentMatcher_Matcher (..),

    -- ** CreateCollectdTimeSeriesRequest
    CreateCollectdTimeSeriesRequest (..),
    newCreateCollectdTimeSeriesRequest,

    -- ** CreateCollectdTimeSeriesResponse
    CreateCollectdTimeSeriesResponse (..),
    newCreateCollectdTimeSeriesResponse,

    -- ** CreateTimeSeriesRequest
    CreateTimeSeriesRequest (..),
    newCreateTimeSeriesRequest,

    -- ** CreateTimeSeriesSummary
    CreateTimeSeriesSummary (..),
    newCreateTimeSeriesSummary,

    -- ** Criteria
    Criteria (..),
    newCriteria,

    -- ** Custom
    Custom (..),
    newCustom,

    -- ** Daily
    Daily (..),
    newDaily,

    -- ** Distribution
    Distribution (..),
    newDistribution,

    -- ** DistributionCut
    DistributionCut (..),
    newDistributionCut,

    -- ** Documentation
    Documentation (..),
    newDocumentation,

    -- ** DroppedLabels
    DroppedLabels (..),
    newDroppedLabels,

    -- ** DroppedLabels_Label
    DroppedLabels_Label (..),
    newDroppedLabels_Label,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Error'
    Error' (..),
    newError,

    -- ** Exemplar
    Exemplar (..),
    newExemplar,

    -- ** Exemplar_AttachmentsItem
    Exemplar_AttachmentsItem (..),
    newExemplar_AttachmentsItem,

    -- ** Explicit
    Explicit (..),
    newExplicit,

    -- ** Exponential
    Exponential (..),
    newExponential,

    -- ** Field
    Field (..),
    newField,

    -- ** Field_Cardinality
    Field_Cardinality (..),

    -- ** Field_Kind
    Field_Kind (..),

    -- ** ForecastOptions
    ForecastOptions (..),
    newForecastOptions,

    -- ** GetNotificationChannelVerificationCodeRequest
    GetNotificationChannelVerificationCodeRequest (..),
    newGetNotificationChannelVerificationCodeRequest,

    -- ** GetNotificationChannelVerificationCodeResponse
    GetNotificationChannelVerificationCodeResponse (..),
    newGetNotificationChannelVerificationCodeResponse,

    -- ** GkeNamespace
    GkeNamespace (..),
    newGkeNamespace,

    -- ** GkeService
    GkeService (..),
    newGkeService,

    -- ** GkeWorkload
    GkeWorkload (..),
    newGkeWorkload,

    -- ** GoogleMonitoringV3Range
    GoogleMonitoringV3Range (..),
    newGoogleMonitoringV3Range,

    -- ** Group
    Group (..),
    newGroup,

    -- ** Hourly
    Hourly (..),
    newHourly,

    -- ** HttpCheck
    HttpCheck (..),
    newHttpCheck,

    -- ** HttpCheck_ContentType
    HttpCheck_ContentType (..),

    -- ** HttpCheck_Headers
    HttpCheck_Headers (..),
    newHttpCheck_Headers,

    -- ** HttpCheck_RequestMethod
    HttpCheck_RequestMethod (..),

    -- ** InternalChecker
    InternalChecker (..),
    newInternalChecker,

    -- ** InternalChecker_State
    InternalChecker_State (..),

    -- ** IstioCanonicalService
    IstioCanonicalService (..),
    newIstioCanonicalService,

    -- ** JsonPathMatcher
    JsonPathMatcher (..),
    newJsonPathMatcher,

    -- ** JsonPathMatcher_JsonMatcher
    JsonPathMatcher_JsonMatcher (..),

    -- ** LabelDescriptor
    LabelDescriptor (..),
    newLabelDescriptor,

    -- ** LabelDescriptor_ValueType
    LabelDescriptor_ValueType (..),

    -- ** LabelValue
    LabelValue (..),
    newLabelValue,

    -- ** LatencyCriteria
    LatencyCriteria (..),
    newLatencyCriteria,

    -- ** Linear
    Linear (..),
    newLinear,

    -- ** Link
    Link (..),
    newLink,

    -- ** ListAlertPoliciesResponse
    ListAlertPoliciesResponse (..),
    newListAlertPoliciesResponse,

    -- ** ListGroupMembersResponse
    ListGroupMembersResponse (..),
    newListGroupMembersResponse,

    -- ** ListGroupsResponse
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- ** ListMetricDescriptorsResponse
    ListMetricDescriptorsResponse (..),
    newListMetricDescriptorsResponse,

    -- ** ListMonitoredResourceDescriptorsResponse
    ListMonitoredResourceDescriptorsResponse (..),
    newListMonitoredResourceDescriptorsResponse,

    -- ** ListNotificationChannelDescriptorsResponse
    ListNotificationChannelDescriptorsResponse (..),
    newListNotificationChannelDescriptorsResponse,

    -- ** ListNotificationChannelsResponse
    ListNotificationChannelsResponse (..),
    newListNotificationChannelsResponse,

    -- ** ListServiceLevelObjectivesResponse
    ListServiceLevelObjectivesResponse (..),
    newListServiceLevelObjectivesResponse,

    -- ** ListServicesResponse
    ListServicesResponse (..),
    newListServicesResponse,

    -- ** ListSnoozesResponse
    ListSnoozesResponse (..),
    newListSnoozesResponse,

    -- ** ListTimeSeriesResponse
    ListTimeSeriesResponse (..),
    newListTimeSeriesResponse,

    -- ** ListUptimeCheckConfigsResponse
    ListUptimeCheckConfigsResponse (..),
    newListUptimeCheckConfigsResponse,

    -- ** ListUptimeCheckIpsResponse
    ListUptimeCheckIpsResponse (..),
    newListUptimeCheckIpsResponse,

    -- ** LogMatch
    LogMatch (..),
    newLogMatch,

    -- ** LogMatch_LabelExtractors
    LogMatch_LabelExtractors (..),
    newLogMatch_LabelExtractors,

    -- ** MeshIstio
    MeshIstio (..),
    newMeshIstio,

    -- ** Metric
    Metric (..),
    newMetric,

    -- ** Metric_Labels
    Metric_Labels (..),
    newMetric_Labels,

    -- ** MetricAbsence
    MetricAbsence (..),
    newMetricAbsence,

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

    -- ** MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
    MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem (..),

    -- ** MetricRange
    MetricRange (..),
    newMetricRange,

    -- ** MetricThreshold
    MetricThreshold (..),
    newMetricThreshold,

    -- ** MetricThreshold_Comparison
    MetricThreshold_Comparison (..),

    -- ** MetricThreshold_EvaluationMissingData
    MetricThreshold_EvaluationMissingData (..),

    -- ** Minutes
    Minutes (..),
    newMinutes,

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

    -- ** MonitoringQueryLanguageCondition
    MonitoringQueryLanguageCondition (..),
    newMonitoringQueryLanguageCondition,

    -- ** MonitoringQueryLanguageCondition_EvaluationMissingData
    MonitoringQueryLanguageCondition_EvaluationMissingData (..),

    -- ** MutationRecord
    MutationRecord (..),
    newMutationRecord,

    -- ** NotificationChannel
    NotificationChannel (..),
    newNotificationChannel,

    -- ** NotificationChannel_Labels
    NotificationChannel_Labels (..),
    newNotificationChannel_Labels,

    -- ** NotificationChannel_UserLabels
    NotificationChannel_UserLabels (..),
    newNotificationChannel_UserLabels,

    -- ** NotificationChannel_VerificationStatus
    NotificationChannel_VerificationStatus (..),

    -- ** NotificationChannelDescriptor
    NotificationChannelDescriptor (..),
    newNotificationChannelDescriptor,

    -- ** NotificationChannelDescriptor_LaunchStage
    NotificationChannelDescriptor_LaunchStage (..),

    -- ** NotificationChannelDescriptor_SupportedTiersItem
    NotificationChannelDescriptor_SupportedTiersItem (..),

    -- ** NotificationChannelStrategy
    NotificationChannelStrategy (..),
    newNotificationChannelStrategy,

    -- ** NotificationRateLimit
    NotificationRateLimit (..),
    newNotificationRateLimit,

    -- ** OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- ** OperationMetadata_State
    OperationMetadata_State (..),

    -- ** Option
    Option (..),
    newOption,

    -- ** Option_Value
    Option_Value (..),
    newOption_Value,

    -- ** PerformanceThreshold
    PerformanceThreshold (..),
    newPerformanceThreshold,

    -- ** PingConfig
    PingConfig (..),
    newPingConfig,

    -- ** Point
    Point (..),
    newPoint,

    -- ** PointData
    PointData (..),
    newPointData,

    -- ** PrometheusQueryLanguageCondition
    PrometheusQueryLanguageCondition (..),
    newPrometheusQueryLanguageCondition,

    -- ** PrometheusQueryLanguageCondition_Labels
    PrometheusQueryLanguageCondition_Labels (..),
    newPrometheusQueryLanguageCondition_Labels,

    -- ** QueryTimeSeriesRequest
    QueryTimeSeriesRequest (..),
    newQueryTimeSeriesRequest,

    -- ** QueryTimeSeriesResponse
    QueryTimeSeriesResponse (..),
    newQueryTimeSeriesResponse,

    -- ** Range
    Range (..),
    newRange,

    -- ** RequestBasedSli
    RequestBasedSli (..),
    newRequestBasedSli,

    -- ** ResourceGroup
    ResourceGroup (..),
    newResourceGroup,

    -- ** ResourceGroup_ResourceType
    ResourceGroup_ResourceType (..),

    -- ** ResponseStatusCode
    ResponseStatusCode (..),
    newResponseStatusCode,

    -- ** ResponseStatusCode_StatusClass
    ResponseStatusCode_StatusClass (..),

    -- ** RowCountTest
    RowCountTest (..),
    newRowCountTest,

    -- ** RowCountTest_Comparison
    RowCountTest_Comparison (..),

    -- ** SendNotificationChannelVerificationCodeRequest
    SendNotificationChannelVerificationCodeRequest (..),
    newSendNotificationChannelVerificationCodeRequest,

    -- ** Service
    Service (..),
    newService,

    -- ** Service_UserLabels
    Service_UserLabels (..),
    newService_UserLabels,

    -- ** ServiceAgentAuthentication
    ServiceAgentAuthentication (..),
    newServiceAgentAuthentication,

    -- ** ServiceAgentAuthentication_Type
    ServiceAgentAuthentication_Type (..),

    -- ** ServiceLevelIndicator
    ServiceLevelIndicator (..),
    newServiceLevelIndicator,

    -- ** ServiceLevelObjective
    ServiceLevelObjective (..),
    newServiceLevelObjective,

    -- ** ServiceLevelObjective_CalendarPeriod
    ServiceLevelObjective_CalendarPeriod (..),

    -- ** ServiceLevelObjective_UserLabels
    ServiceLevelObjective_UserLabels (..),
    newServiceLevelObjective_UserLabels,

    -- ** Snooze
    Snooze (..),
    newSnooze,

    -- ** SourceContext
    SourceContext (..),
    newSourceContext,

    -- ** SpanContext
    SpanContext (..),
    newSpanContext,

    -- ** SqlCondition
    SqlCondition (..),
    newSqlCondition,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** SyntheticMonitorTarget
    SyntheticMonitorTarget (..),
    newSyntheticMonitorTarget,

    -- ** TcpCheck
    TcpCheck (..),
    newTcpCheck,

    -- ** Telemetry
    Telemetry (..),
    newTelemetry,

    -- ** TimeInterval
    TimeInterval (..),
    newTimeInterval,

    -- ** TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- ** TimeSeries
    TimeSeries (..),
    newTimeSeries,

    -- ** TimeSeries_MetricKind
    TimeSeries_MetricKind (..),

    -- ** TimeSeries_ValueType
    TimeSeries_ValueType (..),

    -- ** TimeSeriesData
    TimeSeriesData (..),
    newTimeSeriesData,

    -- ** TimeSeriesDescriptor
    TimeSeriesDescriptor (..),
    newTimeSeriesDescriptor,

    -- ** TimeSeriesRatio
    TimeSeriesRatio (..),
    newTimeSeriesRatio,

    -- ** Trigger
    Trigger (..),
    newTrigger,

    -- ** Type
    Type (..),
    newType,

    -- ** Type_Syntax
    Type_Syntax (..),

    -- ** TypedValue
    TypedValue (..),
    newTypedValue,

    -- ** UptimeCheckConfig
    UptimeCheckConfig (..),
    newUptimeCheckConfig,

    -- ** UptimeCheckConfig_CheckerType
    UptimeCheckConfig_CheckerType (..),

    -- ** UptimeCheckConfig_SelectedRegionsItem
    UptimeCheckConfig_SelectedRegionsItem (..),

    -- ** UptimeCheckConfig_UserLabels
    UptimeCheckConfig_UserLabels (..),
    newUptimeCheckConfig_UserLabels,

    -- ** UptimeCheckIp
    UptimeCheckIp (..),
    newUptimeCheckIp,

    -- ** UptimeCheckIp_Region
    UptimeCheckIp_Region (..),

    -- ** ValueDescriptor
    ValueDescriptor (..),
    newValueDescriptor,

    -- ** ValueDescriptor_MetricKind
    ValueDescriptor_MetricKind (..),

    -- ** ValueDescriptor_ValueType
    ValueDescriptor_ValueType (..),

    -- ** VerifyNotificationChannelRequest
    VerifyNotificationChannelRequest (..),
    newVerifyNotificationChannelRequest,

    -- ** WindowsBasedSli
    WindowsBasedSli (..),
    newWindowsBasedSli,

    -- ** FoldersTimeSeriesListAggregationCrossSeriesReducer
    FoldersTimeSeriesListAggregationCrossSeriesReducer (..),

    -- ** FoldersTimeSeriesListAggregationPerSeriesAligner
    FoldersTimeSeriesListAggregationPerSeriesAligner (..),

    -- ** FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
    FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer (..),

    -- ** FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
    FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner (..),

    -- ** FoldersTimeSeriesListView
    FoldersTimeSeriesListView (..),

    -- ** OrganizationsTimeSeriesListAggregationCrossSeriesReducer
    OrganizationsTimeSeriesListAggregationCrossSeriesReducer (..),

    -- ** OrganizationsTimeSeriesListAggregationPerSeriesAligner
    OrganizationsTimeSeriesListAggregationPerSeriesAligner (..),

    -- ** OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer (..),

    -- ** OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
    OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner (..),

    -- ** OrganizationsTimeSeriesListView
    OrganizationsTimeSeriesListView (..),

    -- ** ProjectsTimeSeriesListAggregationCrossSeriesReducer
    ProjectsTimeSeriesListAggregationCrossSeriesReducer (..),

    -- ** ProjectsTimeSeriesListAggregationPerSeriesAligner
    ProjectsTimeSeriesListAggregationPerSeriesAligner (..),

    -- ** ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer (..),

    -- ** ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
    ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner (..),

    -- ** ProjectsTimeSeriesListView
    ProjectsTimeSeriesListView (..),

    -- ** ServicesServiceLevelObjectivesGetView
    ServicesServiceLevelObjectivesGetView (..),

    -- ** ServicesServiceLevelObjectivesListView
    ServicesServiceLevelObjectivesListView (..),
  )
where

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
import Gogol.Monitoring.Projects.Snoozes.Create
import Gogol.Monitoring.Projects.Snoozes.Get
import Gogol.Monitoring.Projects.Snoozes.List
import Gogol.Monitoring.Projects.Snoozes.Patch
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
