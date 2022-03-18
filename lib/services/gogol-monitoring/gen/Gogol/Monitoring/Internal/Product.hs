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
-- Module      : Gogol.Monitoring.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Monitoring.Internal.Product
  (

    -- * Aggregation
    Aggregation (..),
    newAggregation,

    -- * AlertPolicy
    AlertPolicy (..),
    newAlertPolicy,

    -- * AlertPolicy_UserLabels
    AlertPolicy_UserLabels (..),
    newAlertPolicy_UserLabels,

    -- * AlertStrategy
    AlertStrategy (..),
    newAlertStrategy,

    -- * AppEngine
    AppEngine (..),
    newAppEngine,

    -- * AvailabilityCriteria
    AvailabilityCriteria (..),
    newAvailabilityCriteria,

    -- * BasicAuthentication
    BasicAuthentication (..),
    newBasicAuthentication,

    -- * BasicSli
    BasicSli (..),
    newBasicSli,

    -- * BucketOptions
    BucketOptions (..),
    newBucketOptions,

    -- * CloudEndpoints
    CloudEndpoints (..),
    newCloudEndpoints,

    -- * ClusterIstio
    ClusterIstio (..),
    newClusterIstio,

    -- * CollectdPayload
    CollectdPayload (..),
    newCollectdPayload,

    -- * CollectdPayload_Metadata
    CollectdPayload_Metadata (..),
    newCollectdPayload_Metadata,

    -- * CollectdPayloadError
    CollectdPayloadError (..),
    newCollectdPayloadError,

    -- * CollectdValue
    CollectdValue (..),
    newCollectdValue,

    -- * CollectdValueError
    CollectdValueError (..),
    newCollectdValueError,

    -- * Condition
    Condition (..),
    newCondition,

    -- * ContentMatcher
    ContentMatcher (..),
    newContentMatcher,

    -- * CreateCollectdTimeSeriesRequest
    CreateCollectdTimeSeriesRequest (..),
    newCreateCollectdTimeSeriesRequest,

    -- * CreateCollectdTimeSeriesResponse
    CreateCollectdTimeSeriesResponse (..),
    newCreateCollectdTimeSeriesResponse,

    -- * CreateTimeSeriesRequest
    CreateTimeSeriesRequest (..),
    newCreateTimeSeriesRequest,

    -- * CreateTimeSeriesSummary
    CreateTimeSeriesSummary (..),
    newCreateTimeSeriesSummary,

    -- * Custom
    Custom (..),
    newCustom,

    -- * Distribution
    Distribution (..),
    newDistribution,

    -- * DistributionCut
    DistributionCut (..),
    newDistributionCut,

    -- * Documentation
    Documentation (..),
    newDocumentation,

    -- * DroppedLabels
    DroppedLabels (..),
    newDroppedLabels,

    -- * DroppedLabels_Label
    DroppedLabels_Label (..),
    newDroppedLabels_Label,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Error'
    Error' (..),
    newError,

    -- * Exemplar
    Exemplar (..),
    newExemplar,

    -- * Exemplar_AttachmentsItem
    Exemplar_AttachmentsItem (..),
    newExemplar_AttachmentsItem,

    -- * Explicit
    Explicit (..),
    newExplicit,

    -- * Exponential
    Exponential (..),
    newExponential,

    -- * Field
    Field (..),
    newField,

    -- * GetNotificationChannelVerificationCodeRequest
    GetNotificationChannelVerificationCodeRequest (..),
    newGetNotificationChannelVerificationCodeRequest,

    -- * GetNotificationChannelVerificationCodeResponse
    GetNotificationChannelVerificationCodeResponse (..),
    newGetNotificationChannelVerificationCodeResponse,

    -- * GoogleMonitoringV3Range
    GoogleMonitoringV3Range (..),
    newGoogleMonitoringV3Range,

    -- * Group
    Group (..),
    newGroup,

    -- * HttpCheck
    HttpCheck (..),
    newHttpCheck,

    -- * HttpCheck_Headers
    HttpCheck_Headers (..),
    newHttpCheck_Headers,

    -- * InternalChecker
    InternalChecker (..),
    newInternalChecker,

    -- * IstioCanonicalService
    IstioCanonicalService (..),
    newIstioCanonicalService,

    -- * LabelDescriptor
    LabelDescriptor (..),
    newLabelDescriptor,

    -- * LabelValue
    LabelValue (..),
    newLabelValue,

    -- * LatencyCriteria
    LatencyCriteria (..),
    newLatencyCriteria,

    -- * Linear
    Linear (..),
    newLinear,

    -- * ListAlertPoliciesResponse
    ListAlertPoliciesResponse (..),
    newListAlertPoliciesResponse,

    -- * ListGroupMembersResponse
    ListGroupMembersResponse (..),
    newListGroupMembersResponse,

    -- * ListGroupsResponse
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- * ListMetricDescriptorsResponse
    ListMetricDescriptorsResponse (..),
    newListMetricDescriptorsResponse,

    -- * ListMonitoredResourceDescriptorsResponse
    ListMonitoredResourceDescriptorsResponse (..),
    newListMonitoredResourceDescriptorsResponse,

    -- * ListNotificationChannelDescriptorsResponse
    ListNotificationChannelDescriptorsResponse (..),
    newListNotificationChannelDescriptorsResponse,

    -- * ListNotificationChannelsResponse
    ListNotificationChannelsResponse (..),
    newListNotificationChannelsResponse,

    -- * ListServiceLevelObjectivesResponse
    ListServiceLevelObjectivesResponse (..),
    newListServiceLevelObjectivesResponse,

    -- * ListServicesResponse
    ListServicesResponse (..),
    newListServicesResponse,

    -- * ListTimeSeriesResponse
    ListTimeSeriesResponse (..),
    newListTimeSeriesResponse,

    -- * ListUptimeCheckConfigsResponse
    ListUptimeCheckConfigsResponse (..),
    newListUptimeCheckConfigsResponse,

    -- * ListUptimeCheckIpsResponse
    ListUptimeCheckIpsResponse (..),
    newListUptimeCheckIpsResponse,

    -- * LogMatch
    LogMatch (..),
    newLogMatch,

    -- * LogMatch_LabelExtractors
    LogMatch_LabelExtractors (..),
    newLogMatch_LabelExtractors,

    -- * MeshIstio
    MeshIstio (..),
    newMeshIstio,

    -- * Metric
    Metric (..),
    newMetric,

    -- * Metric_Labels
    Metric_Labels (..),
    newMetric_Labels,

    -- * MetricAbsence
    MetricAbsence (..),
    newMetricAbsence,

    -- * MetricDescriptor
    MetricDescriptor (..),
    newMetricDescriptor,

    -- * MetricDescriptorMetadata
    MetricDescriptorMetadata (..),
    newMetricDescriptorMetadata,

    -- * MetricRange
    MetricRange (..),
    newMetricRange,

    -- * MetricThreshold
    MetricThreshold (..),
    newMetricThreshold,

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

    -- * MonitoringQueryLanguageCondition
    MonitoringQueryLanguageCondition (..),
    newMonitoringQueryLanguageCondition,

    -- * MutationRecord
    MutationRecord (..),
    newMutationRecord,

    -- * NotificationChannel
    NotificationChannel (..),
    newNotificationChannel,

    -- * NotificationChannel_Labels
    NotificationChannel_Labels (..),
    newNotificationChannel_Labels,

    -- * NotificationChannel_UserLabels
    NotificationChannel_UserLabels (..),
    newNotificationChannel_UserLabels,

    -- * NotificationChannelDescriptor
    NotificationChannelDescriptor (..),
    newNotificationChannelDescriptor,

    -- * NotificationRateLimit
    NotificationRateLimit (..),
    newNotificationRateLimit,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * Option
    Option (..),
    newOption,

    -- * Option_Value
    Option_Value (..),
    newOption_Value,

    -- * PerformanceThreshold
    PerformanceThreshold (..),
    newPerformanceThreshold,

    -- * Point
    Point (..),
    newPoint,

    -- * PointData
    PointData (..),
    newPointData,

    -- * QueryTimeSeriesRequest
    QueryTimeSeriesRequest (..),
    newQueryTimeSeriesRequest,

    -- * QueryTimeSeriesResponse
    QueryTimeSeriesResponse (..),
    newQueryTimeSeriesResponse,

    -- * Range
    Range (..),
    newRange,

    -- * RequestBasedSli
    RequestBasedSli (..),
    newRequestBasedSli,

    -- * ResourceGroup
    ResourceGroup (..),
    newResourceGroup,

    -- * SendNotificationChannelVerificationCodeRequest
    SendNotificationChannelVerificationCodeRequest (..),
    newSendNotificationChannelVerificationCodeRequest,

    -- * Service
    Service (..),
    newService,

    -- * Service_UserLabels
    Service_UserLabels (..),
    newService_UserLabels,

    -- * ServiceLevelIndicator
    ServiceLevelIndicator (..),
    newServiceLevelIndicator,

    -- * ServiceLevelObjective
    ServiceLevelObjective (..),
    newServiceLevelObjective,

    -- * ServiceLevelObjective_UserLabels
    ServiceLevelObjective_UserLabels (..),
    newServiceLevelObjective_UserLabels,

    -- * SourceContext
    SourceContext (..),
    newSourceContext,

    -- * SpanContext
    SpanContext (..),
    newSpanContext,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TcpCheck
    TcpCheck (..),
    newTcpCheck,

    -- * Telemetry
    Telemetry (..),
    newTelemetry,

    -- * TimeInterval
    TimeInterval (..),
    newTimeInterval,

    -- * TimeSeries
    TimeSeries (..),
    newTimeSeries,

    -- * TimeSeriesData
    TimeSeriesData (..),
    newTimeSeriesData,

    -- * TimeSeriesDescriptor
    TimeSeriesDescriptor (..),
    newTimeSeriesDescriptor,

    -- * TimeSeriesRatio
    TimeSeriesRatio (..),
    newTimeSeriesRatio,

    -- * Trigger
    Trigger (..),
    newTrigger,

    -- * Type
    Type (..),
    newType,

    -- * TypedValue
    TypedValue (..),
    newTypedValue,

    -- * UptimeCheckConfig
    UptimeCheckConfig (..),
    newUptimeCheckConfig,

    -- * UptimeCheckIp
    UptimeCheckIp (..),
    newUptimeCheckIp,

    -- * ValueDescriptor
    ValueDescriptor (..),
    newValueDescriptor,

    -- * VerifyNotificationChannelRequest
    VerifyNotificationChannelRequest (..),
    newVerifyNotificationChannelRequest,

    -- * WindowsBasedSli
    WindowsBasedSli (..),
    newWindowsBasedSli,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Internal.Sum

-- | Describes how to combine multiple time series to provide a different view of the data. Aggregation of time series is done in two steps. First, each time series in the set is aligned to the same time interval boundaries, then the set of time series is optionally reduced in number.Alignment consists of applying the per/series/aligner operation to each time series after its data has been divided into regular alignment/period time intervals. This process takes all of the data points in an alignment period, applies a mathematical transformation such as averaging, minimum, maximum, delta, etc., and converts them into a single data point per period.Reduction is when the aligned and transformed time series can optionally be combined, reducing the number of time series through similar mathematical transformations. Reduction involves applying a cross/series/reducer to all the time series, optionally sorting the time series into subsets with group/by_fields, and applying the reducer to each subset.The raw time series
-- data can contain a huge amount of information from multiple sources. Alignment and reduction transforms this mass of data into a more manageable and representative collection of data, for example \"the 95% latency across the average of all tasks in a cluster\". This representative data can be more easily graphed and comprehended, and the individual time series data is still available for later drilldown. For more details, see Filtering and aggregation (https:\/\/cloud.google.com\/monitoring\/api\/v3\/aggregation).
--
-- /See:/ 'newAggregation' smart constructor.
data Aggregation = Aggregation
    {
      -- | The alignment/period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN/NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN/NONE is specified, then this field is ignored.The maximum value of the alignment/period is 104 weeks (2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.
      alignmentPeriod :: (Core.Maybe Core.GDuration)
      -- | The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric/kind and the value/type of the original time series. Reduction can yield a time series with a different metric/kind or value/type than the input time series.Time series data must first be aligned (see per/series/aligner) in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified, and must not be ALIGN/NONE. An alignment/period must also be specified; otherwise, an error is returned.
    , crossSeriesReducer :: (Core.Maybe Aggregation_CrossSeriesReducer)
      -- | The set of fields to preserve when cross/series/reducer is specified. The group/by/fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross/series/reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group/by/fields are aggregated away. If group/by/fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross/series/reducer is not defined, this field is ignored.
    , groupByFields :: (Core.Maybe [Core.Text])
      -- | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN/NONE, all alignments cause all the data points in an alignment/period to be mathematically grouped together, resulting in a single data point for each alignment/period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric/kind and value/type of the original time series. Alignment can change the metric/kind or the value/type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified and not equal to ALIGN/NONE and alignment_period must be specified; otherwise, an error is returned.
    , perSeriesAligner :: (Core.Maybe Aggregation_PerSeriesAligner)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Aggregation' with the minimum fields required to make a request.
newAggregation 
    ::  Aggregation
newAggregation =
  Aggregation
    { alignmentPeriod = Core.Nothing
    , crossSeriesReducer = Core.Nothing
    , groupByFields = Core.Nothing
    , perSeriesAligner = Core.Nothing
    }

instance Core.FromJSON Aggregation where
        parseJSON
          = Core.withObject "Aggregation"
              (\ o ->
                 Aggregation Core.<$>
                   (o Core..:? "alignmentPeriod") Core.<*>
                     (o Core..:? "crossSeriesReducer")
                     Core.<*>
                     (o Core..:? "groupByFields" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "perSeriesAligner"))

instance Core.ToJSON Aggregation where
        toJSON Aggregation{..}
          = Core.object
              (Core.catMaybes
                 [("alignmentPeriod" Core..=) Core.<$>
                    alignmentPeriod,
                  ("crossSeriesReducer" Core..=) Core.<$>
                    crossSeriesReducer,
                  ("groupByFields" Core..=) Core.<$> groupByFields,
                  ("perSeriesAligner" Core..=) Core.<$>
                    perSeriesAligner])


-- | A description of the conditions under which some aspect of your system is considered to be \"unhealthy\" and the ways to notify people or services about this state. For an overview of alert policies, see Introduction to Alerting (https:\/\/cloud.google.com\/monitoring\/alerts\/).
--
-- /See:/ 'newAlertPolicy' smart constructor.
data AlertPolicy = AlertPolicy
    {
      -- | Control over how this alert policy\'s notification channels are notified.
      alertStrategy :: (Core.Maybe AlertStrategy)
      -- | How to combine the results of multiple conditions to determine if an incident should be opened. If condition/time/series/query/language is present, this must be COMBINE_UNSPECIFIED.
    , combiner :: (Core.Maybe AlertPolicy_Combiner)
      -- | A list of conditions for the policy. The conditions are combined by AND or OR according to the combiner field. If the combined conditions evaluate to true, then an incident is created. A policy can have from one to six conditions. If condition/time/series/query/language is present, it must be the only condition.
    , conditions :: (Core.Maybe [Condition])
      -- | A read-only record of the creation of the alerting policy. If provided in a call to create or update, this field will be ignored.
    , creationRecord :: (Core.Maybe MutationRecord)
      -- | A short name or phrase used to identify the policy in dashboards, notifications, and incidents. To avoid confusion, don\'t use the same display name for multiple policies in the same project. The name is limited to 512 Unicode characters.
    , displayName :: (Core.Maybe Core.Text)
      -- | Documentation that is included with notifications and incidents related to this policy. Best practice is for the documentation to include information to help responders understand, mitigate, escalate, and correct the underlying problems detected by the alerting policy. Notification channels that have limited capacity might not show this documentation.
    , documentation :: (Core.Maybe Documentation)
      -- | Whether or not the policy is enabled. On write, the default interpretation if unset is that the policy is enabled. On read, clients should not make any assumption about the state if it has not been populated. The field should always be populated on List and Get operations, unless a field projection has been specified that strips it out.
    , enabled :: (Core.Maybe Core.Bool)
      -- | A read-only record of the most recent change to the alerting policy. If provided in a call to create or update, this field will be ignored.
    , mutationRecord :: (Core.Maybe MutationRecord)
      -- | Required if the policy exists. The resource name for this policy. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/alertPolicies\/[ALERT/POLICY/ID] [ALERT/POLICY_ID] is assigned by Stackdriver Monitoring when the policy is created. When calling the alertPolicies.create method, do not include the name field in the alerting policy passed as part of the request.
    , name :: (Core.Maybe Core.Text)
      -- | Identifies the notification channels to which notifications should be sent when incidents are opened or closed or when new violations occur on an already opened incident. Each element of this array corresponds to the name field in each of the NotificationChannel objects that are returned from the ListNotificationChannels method. The format of the entries in this field is: projects\/[PROJECT/ID/OR/NUMBER]\/notificationChannels\/[CHANNEL/ID]
    , notificationChannels :: (Core.Maybe [Core.Text])
      -- | User-supplied key\/value data to be used for organizing and identifying the AlertPolicy objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
    , userLabels :: (Core.Maybe AlertPolicy_UserLabels)
      -- | Read-only description of how the alert policy is invalid. OK if the alert policy is valid. If not OK, the alert policy will not generate incidents.
    , validity :: (Core.Maybe Status)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertPolicy' with the minimum fields required to make a request.
newAlertPolicy 
    ::  AlertPolicy
newAlertPolicy =
  AlertPolicy
    { alertStrategy = Core.Nothing
    , combiner = Core.Nothing
    , conditions = Core.Nothing
    , creationRecord = Core.Nothing
    , displayName = Core.Nothing
    , documentation = Core.Nothing
    , enabled = Core.Nothing
    , mutationRecord = Core.Nothing
    , name = Core.Nothing
    , notificationChannels = Core.Nothing
    , userLabels = Core.Nothing
    , validity = Core.Nothing
    }

instance Core.FromJSON AlertPolicy where
        parseJSON
          = Core.withObject "AlertPolicy"
              (\ o ->
                 AlertPolicy Core.<$>
                   (o Core..:? "alertStrategy") Core.<*>
                     (o Core..:? "combiner")
                     Core.<*>
                     (o Core..:? "conditions" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "creationRecord")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "documentation")
                     Core.<*> (o Core..:? "enabled")
                     Core.<*> (o Core..:? "mutationRecord")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "notificationChannels" Core..!=
                        Core.mempty)
                     Core.<*> (o Core..:? "userLabels")
                     Core.<*> (o Core..:? "validity"))

instance Core.ToJSON AlertPolicy where
        toJSON AlertPolicy{..}
          = Core.object
              (Core.catMaybes
                 [("alertStrategy" Core..=) Core.<$> alertStrategy,
                  ("combiner" Core..=) Core.<$> combiner,
                  ("conditions" Core..=) Core.<$> conditions,
                  ("creationRecord" Core..=) Core.<$> creationRecord,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("documentation" Core..=) Core.<$> documentation,
                  ("enabled" Core..=) Core.<$> enabled,
                  ("mutationRecord" Core..=) Core.<$> mutationRecord,
                  ("name" Core..=) Core.<$> name,
                  ("notificationChannels" Core..=) Core.<$>
                    notificationChannels,
                  ("userLabels" Core..=) Core.<$> userLabels,
                  ("validity" Core..=) Core.<$> validity])


-- | User-supplied key\/value data to be used for organizing and identifying the AlertPolicy objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
--
-- /See:/ 'newAlertPolicy_UserLabels' smart constructor.
newtype AlertPolicy_UserLabels = AlertPolicy_UserLabels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertPolicy_UserLabels' with the minimum fields required to make a request.
newAlertPolicy_UserLabels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> AlertPolicy_UserLabels
newAlertPolicy_UserLabels addtional =
  AlertPolicy_UserLabels {addtional = addtional}

instance Core.FromJSON AlertPolicy_UserLabels where
        parseJSON
          = Core.withObject "AlertPolicy_UserLabels"
              (\ o ->
                 AlertPolicy_UserLabels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON AlertPolicy_UserLabels where
        toJSON AlertPolicy_UserLabels{..}
          = Core.toJSON addtional


-- | Control over how the notification channels in notification_channels are notified when this alert fires.
--
-- /See:/ 'newAlertStrategy' smart constructor.
data AlertStrategy = AlertStrategy
    {
      -- | If an alert policy that was active has no data for this long, any open incidents will close
      autoClose :: (Core.Maybe Core.GDuration)
      -- | Required for alert policies with a LogMatch condition.This limit is not implemented for alert policies that are not log-based.
    , notificationRateLimit :: (Core.Maybe NotificationRateLimit)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertStrategy' with the minimum fields required to make a request.
newAlertStrategy 
    ::  AlertStrategy
newAlertStrategy =
  AlertStrategy {autoClose = Core.Nothing, notificationRateLimit = Core.Nothing}

instance Core.FromJSON AlertStrategy where
        parseJSON
          = Core.withObject "AlertStrategy"
              (\ o ->
                 AlertStrategy Core.<$>
                   (o Core..:? "autoClose") Core.<*>
                     (o Core..:? "notificationRateLimit"))

instance Core.ToJSON AlertStrategy where
        toJSON AlertStrategy{..}
          = Core.object
              (Core.catMaybes
                 [("autoClose" Core..=) Core.<$> autoClose,
                  ("notificationRateLimit" Core..=) Core.<$>
                    notificationRateLimit])


-- | App Engine service. Learn more at https:\/\/cloud.google.com\/appengine.
--
-- /See:/ 'newAppEngine' smart constructor.
newtype AppEngine = AppEngine
    {
      -- | The ID of the App Engine module underlying this service. Corresponds to the module/id resource label in the gae/app monitored resource: https:\/\/cloud.google.com\/monitoring\/api\/resources#tag/gae/app
      moduleId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngine' with the minimum fields required to make a request.
newAppEngine 
    ::  AppEngine
newAppEngine = AppEngine {moduleId = Core.Nothing}

instance Core.FromJSON AppEngine where
        parseJSON
          = Core.withObject "AppEngine"
              (\ o -> AppEngine Core.<$> (o Core..:? "moduleId"))

instance Core.ToJSON AppEngine where
        toJSON AppEngine{..}
          = Core.object
              (Core.catMaybes
                 [("moduleId" Core..=) Core.<$> moduleId])


-- | Future parameters for the availability SLI.
--
-- /See:/ 'newAvailabilityCriteria' smart constructor.
data AvailabilityCriteria = AvailabilityCriteria
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AvailabilityCriteria' with the minimum fields required to make a request.
newAvailabilityCriteria 
    ::  AvailabilityCriteria
newAvailabilityCriteria = AvailabilityCriteria

instance Core.FromJSON AvailabilityCriteria where
        parseJSON
          = Core.withObject "AvailabilityCriteria"
              (\ o -> Core.pure AvailabilityCriteria)

instance Core.ToJSON AvailabilityCriteria where
        toJSON = Core.const Core.emptyObject


-- | The authentication parameters to provide to the specified resource or URL that requires a username and password. Currently, only Basic HTTP authentication (https:\/\/tools.ietf.org\/html\/rfc7617) is supported in Uptime checks.
--
-- /See:/ 'newBasicAuthentication' smart constructor.
data BasicAuthentication = BasicAuthentication
    {
      -- | The password to use when authenticating with the HTTP server.
      password :: (Core.Maybe Core.Text)
      -- | The username to use when authenticating with the HTTP server.
    , username :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicAuthentication' with the minimum fields required to make a request.
newBasicAuthentication 
    ::  BasicAuthentication
newBasicAuthentication =
  BasicAuthentication {password = Core.Nothing, username = Core.Nothing}

instance Core.FromJSON BasicAuthentication where
        parseJSON
          = Core.withObject "BasicAuthentication"
              (\ o ->
                 BasicAuthentication Core.<$>
                   (o Core..:? "password") Core.<*>
                     (o Core..:? "username"))

instance Core.ToJSON BasicAuthentication where
        toJSON BasicAuthentication{..}
          = Core.object
              (Core.catMaybes
                 [("password" Core..=) Core.<$> password,
                  ("username" Core..=) Core.<$> username])


-- | An SLI measuring performance on a well-known service type. Performance will be computed on the basis of pre-defined metrics. The type of the service/resource determines the metrics to use and the service/resource.labels and metric_labels are used to construct a monitoring filter to filter that metric down to just the data relevant to this service.
--
-- /See:/ 'newBasicSli' smart constructor.
data BasicSli = BasicSli
    {
      -- | Good service is defined to be the count of requests made to this service that return successfully.
      availability :: (Core.Maybe AvailabilityCriteria)
      -- | Good service is defined to be the count of requests made to this service that are fast enough with respect to latency.threshold.
    , latency :: (Core.Maybe LatencyCriteria)
      -- | OPTIONAL: The set of locations to which this SLI is relevant. Telemetry from other locations will not be used to calculate performance for this SLI. If omitted, this SLI applies to all locations in which the Service has activity. For service types that don\'t support breaking down by location, setting this field will result in an error.
    , location :: (Core.Maybe [Core.Text])
      -- | OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from other methods will not be used to calculate performance for this SLI. If omitted, this SLI applies to all the Service\'s methods. For service types that don\'t support breaking down by method, setting this field will result in an error.
    , method :: (Core.Maybe [Core.Text])
      -- | OPTIONAL: The set of API versions to which this SLI is relevant. Telemetry from other API versions will not be used to calculate performance for this SLI. If omitted, this SLI applies to all API versions. For service types that don\'t support breaking down by version, setting this field will result in an error.
    , version :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicSli' with the minimum fields required to make a request.
newBasicSli 
    ::  BasicSli
newBasicSli =
  BasicSli
    { availability = Core.Nothing
    , latency = Core.Nothing
    , location = Core.Nothing
    , method = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON BasicSli where
        parseJSON
          = Core.withObject "BasicSli"
              (\ o ->
                 BasicSli Core.<$>
                   (o Core..:? "availability") Core.<*>
                     (o Core..:? "latency")
                     Core.<*> (o Core..:? "location" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "method" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "version" Core..!= Core.mempty))

instance Core.ToJSON BasicSli where
        toJSON BasicSli{..}
          = Core.object
              (Core.catMaybes
                 [("availability" Core..=) Core.<$> availability,
                  ("latency" Core..=) Core.<$> latency,
                  ("location" Core..=) Core.<$> location,
                  ("method" Core..=) Core.<$> method,
                  ("version" Core..=) Core.<$> version])


-- | BucketOptions describes the bucket boundaries used to create a histogram for the distribution. The buckets can be in a linear sequence, an exponential sequence, or each bucket can be specified explicitly. BucketOptions does not include the number of values in each bucket.A bucket has an inclusive lower bound and exclusive upper bound for the values that are counted for that bucket. The upper bound of a bucket must be strictly greater than the lower bound. The sequence of N buckets for a distribution consists of an underflow bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an overflow bucket (number N - 1). The buckets are contiguous: the lower bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets span the whole range of finite values: lower bound of the underflow bucket is -infinity and the upper bound of the overflow bucket is +infinity. The finite buckets are so-called because both bounds are finite.
--
-- /See:/ 'newBucketOptions' smart constructor.
data BucketOptions = BucketOptions
    {
      -- | The explicit buckets.
      explicitBuckets :: (Core.Maybe Explicit)
      -- | The exponential buckets.
    , exponentialBuckets :: (Core.Maybe Exponential)
      -- | The linear bucket.
    , linearBuckets :: (Core.Maybe Linear)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BucketOptions' with the minimum fields required to make a request.
newBucketOptions 
    ::  BucketOptions
newBucketOptions =
  BucketOptions
    { explicitBuckets = Core.Nothing
    , exponentialBuckets = Core.Nothing
    , linearBuckets = Core.Nothing
    }

instance Core.FromJSON BucketOptions where
        parseJSON
          = Core.withObject "BucketOptions"
              (\ o ->
                 BucketOptions Core.<$>
                   (o Core..:? "explicitBuckets") Core.<*>
                     (o Core..:? "exponentialBuckets")
                     Core.<*> (o Core..:? "linearBuckets"))

instance Core.ToJSON BucketOptions where
        toJSON BucketOptions{..}
          = Core.object
              (Core.catMaybes
                 [("explicitBuckets" Core..=) Core.<$>
                    explicitBuckets,
                  ("exponentialBuckets" Core..=) Core.<$>
                    exponentialBuckets,
                  ("linearBuckets" Core..=) Core.<$> linearBuckets])


-- | Cloud Endpoints service. Learn more at https:\/\/cloud.google.com\/endpoints.
--
-- /See:/ 'newCloudEndpoints' smart constructor.
newtype CloudEndpoints = CloudEndpoints
    {
      -- | The name of the Cloud Endpoints service underlying this service. Corresponds to the service resource label in the api monitored resource: https:\/\/cloud.google.com\/monitoring\/api\/resources#tag_api
      service :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudEndpoints' with the minimum fields required to make a request.
newCloudEndpoints 
    ::  CloudEndpoints
newCloudEndpoints = CloudEndpoints {service = Core.Nothing}

instance Core.FromJSON CloudEndpoints where
        parseJSON
          = Core.withObject "CloudEndpoints"
              (\ o ->
                 CloudEndpoints Core.<$> (o Core..:? "service"))

instance Core.ToJSON CloudEndpoints where
        toJSON CloudEndpoints{..}
          = Core.object
              (Core.catMaybes
                 [("service" Core..=) Core.<$> service])


-- | Istio service scoped to a single Kubernetes cluster. Learn more at https:\/\/istio.io. Clusters running OSS Istio will have their services ingested as this type.
--
-- /See:/ 'newClusterIstio' smart constructor.
data ClusterIstio = ClusterIstio
    {
      -- | The name of the Kubernetes cluster in which this Istio service is defined. Corresponds to the cluster/name resource label in k8s/cluster resources.
      clusterName :: (Core.Maybe Core.Text)
      -- | The location of the Kubernetes cluster in which this Istio service is defined. Corresponds to the location resource label in k8s_cluster resources.
    , location :: (Core.Maybe Core.Text)
      -- | The name of the Istio service underlying this service. Corresponds to the destination/service/name metric label in Istio metrics.
    , serviceName :: (Core.Maybe Core.Text)
      -- | The namespace of the Istio service underlying this service. Corresponds to the destination/service/namespace metric label in Istio metrics.
    , serviceNamespace :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterIstio' with the minimum fields required to make a request.
newClusterIstio 
    ::  ClusterIstio
newClusterIstio =
  ClusterIstio
    { clusterName = Core.Nothing
    , location = Core.Nothing
    , serviceName = Core.Nothing
    , serviceNamespace = Core.Nothing
    }

instance Core.FromJSON ClusterIstio where
        parseJSON
          = Core.withObject "ClusterIstio"
              (\ o ->
                 ClusterIstio Core.<$>
                   (o Core..:? "clusterName") Core.<*>
                     (o Core..:? "location")
                     Core.<*> (o Core..:? "serviceName")
                     Core.<*> (o Core..:? "serviceNamespace"))

instance Core.ToJSON ClusterIstio where
        toJSON ClusterIstio{..}
          = Core.object
              (Core.catMaybes
                 [("clusterName" Core..=) Core.<$> clusterName,
                  ("location" Core..=) Core.<$> location,
                  ("serviceName" Core..=) Core.<$> serviceName,
                  ("serviceNamespace" Core..=) Core.<$>
                    serviceNamespace])


-- | A collection of data points sent from a collectd-based plugin. See the collectd documentation for more information.
--
-- /See:/ 'newCollectdPayload' smart constructor.
data CollectdPayload = CollectdPayload
    {
      -- | The end time of the interval.
      endTime :: (Core.Maybe Core.DateTime')
      -- | The measurement metadata. Example: \"process_id\" -> 12345
    , metadata :: (Core.Maybe CollectdPayload_Metadata)
      -- | The name of the plugin. Example: \"disk\".
    , plugin :: (Core.Maybe Core.Text)
      -- | The instance name of the plugin Example: \"hdcl\".
    , pluginInstance :: (Core.Maybe Core.Text)
      -- | The start time of the interval.
    , startTime :: (Core.Maybe Core.DateTime')
      -- | The measurement type. Example: \"memory\".
    , type' :: (Core.Maybe Core.Text)
      -- | The measurement type instance. Example: \"used\".
    , typeInstance :: (Core.Maybe Core.Text)
      -- | The measured values during this time interval. Each value must have a different data/source/name.
    , values :: (Core.Maybe [CollectdValue])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectdPayload' with the minimum fields required to make a request.
newCollectdPayload 
    ::  CollectdPayload
newCollectdPayload =
  CollectdPayload
    { endTime = Core.Nothing
    , metadata = Core.Nothing
    , plugin = Core.Nothing
    , pluginInstance = Core.Nothing
    , startTime = Core.Nothing
    , type' = Core.Nothing
    , typeInstance = Core.Nothing
    , values = Core.Nothing
    }

instance Core.FromJSON CollectdPayload where
        parseJSON
          = Core.withObject "CollectdPayload"
              (\ o ->
                 CollectdPayload Core.<$>
                   (o Core..:? "endTime") Core.<*>
                     (o Core..:? "metadata")
                     Core.<*> (o Core..:? "plugin")
                     Core.<*> (o Core..:? "pluginInstance")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "typeInstance")
                     Core.<*> (o Core..:? "values" Core..!= Core.mempty))

instance Core.ToJSON CollectdPayload where
        toJSON CollectdPayload{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("plugin" Core..=) Core.<$> plugin,
                  ("pluginInstance" Core..=) Core.<$> pluginInstance,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("type" Core..=) Core.<$> type',
                  ("typeInstance" Core..=) Core.<$> typeInstance,
                  ("values" Core..=) Core.<$> values])


-- | The measurement metadata. Example: \"process_id\" -> 12345
--
-- /See:/ 'newCollectdPayload_Metadata' smart constructor.
newtype CollectdPayload_Metadata = CollectdPayload_Metadata
    {
      -- | 
      addtional :: (Core.HashMap Core.Text TypedValue)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectdPayload_Metadata' with the minimum fields required to make a request.
newCollectdPayload_Metadata 
    ::  Core.HashMap Core.Text TypedValue
       -- ^  See 'addtional'.
    -> CollectdPayload_Metadata
newCollectdPayload_Metadata addtional =
  CollectdPayload_Metadata {addtional = addtional}

instance Core.FromJSON CollectdPayload_Metadata where
        parseJSON
          = Core.withObject "CollectdPayload_Metadata"
              (\ o ->
                 CollectdPayload_Metadata Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON CollectdPayload_Metadata where
        toJSON CollectdPayload_Metadata{..}
          = Core.toJSON addtional


-- | Describes the error status for payloads that were not written.
--
-- /See:/ 'newCollectdPayloadError' smart constructor.
data CollectdPayloadError = CollectdPayloadError
    {
      -- | Records the error status for the payload. If this field is present, the partial errors for nested values won\'t be populated.
      error :: (Core.Maybe Status)
      -- | The zero-based index in CreateCollectdTimeSeriesRequest.collectd_payloads.
    , index :: (Core.Maybe Core.Int32)
      -- | Records the error status for values that were not written due to an error.Failed payloads for which nothing is written will not include partial value errors.
    , valueErrors :: (Core.Maybe [CollectdValueError])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectdPayloadError' with the minimum fields required to make a request.
newCollectdPayloadError 
    ::  CollectdPayloadError
newCollectdPayloadError =
  CollectdPayloadError
    {error = Core.Nothing, index = Core.Nothing, valueErrors = Core.Nothing}

instance Core.FromJSON CollectdPayloadError where
        parseJSON
          = Core.withObject "CollectdPayloadError"
              (\ o ->
                 CollectdPayloadError Core.<$>
                   (o Core..:? "error") Core.<*> (o Core..:? "index")
                     Core.<*>
                     (o Core..:? "valueErrors" Core..!= Core.mempty))

instance Core.ToJSON CollectdPayloadError where
        toJSON CollectdPayloadError{..}
          = Core.object
              (Core.catMaybes
                 [("error" Core..=) Core.<$> error,
                  ("index" Core..=) Core.<$> index,
                  ("valueErrors" Core..=) Core.<$> valueErrors])


-- | A single data point from a collectd-based plugin.
--
-- /See:/ 'newCollectdValue' smart constructor.
data CollectdValue = CollectdValue
    {
      -- | The data source for the collectd value. For example, there are two data sources for network measurements: \"rx\" and \"tx\".
      dataSourceName :: (Core.Maybe Core.Text)
      -- | The type of measurement.
    , dataSourceType :: (Core.Maybe CollectdValue_DataSourceType)
      -- | The measurement value.
    , value :: (Core.Maybe TypedValue)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectdValue' with the minimum fields required to make a request.
newCollectdValue 
    ::  CollectdValue
newCollectdValue =
  CollectdValue
    { dataSourceName = Core.Nothing
    , dataSourceType = Core.Nothing
    , value = Core.Nothing
    }

instance Core.FromJSON CollectdValue where
        parseJSON
          = Core.withObject "CollectdValue"
              (\ o ->
                 CollectdValue Core.<$>
                   (o Core..:? "dataSourceName") Core.<*>
                     (o Core..:? "dataSourceType")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON CollectdValue where
        toJSON CollectdValue{..}
          = Core.object
              (Core.catMaybes
                 [("dataSourceName" Core..=) Core.<$> dataSourceName,
                  ("dataSourceType" Core..=) Core.<$> dataSourceType,
                  ("value" Core..=) Core.<$> value])


-- | Describes the error status for values that were not written.
--
-- /See:/ 'newCollectdValueError' smart constructor.
data CollectdValueError = CollectdValueError
    {
      -- | Records the error status for the value.
      error :: (Core.Maybe Status)
      -- | The zero-based index in CollectdPayload.values within the parent CreateCollectdTimeSeriesRequest.collectd_payloads.
    , index :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CollectdValueError' with the minimum fields required to make a request.
newCollectdValueError 
    ::  CollectdValueError
newCollectdValueError =
  CollectdValueError {error = Core.Nothing, index = Core.Nothing}

instance Core.FromJSON CollectdValueError where
        parseJSON
          = Core.withObject "CollectdValueError"
              (\ o ->
                 CollectdValueError Core.<$>
                   (o Core..:? "error") Core.<*> (o Core..:? "index"))

instance Core.ToJSON CollectdValueError where
        toJSON CollectdValueError{..}
          = Core.object
              (Core.catMaybes
                 [("error" Core..=) Core.<$> error,
                  ("index" Core..=) Core.<$> index])


-- | A condition is a true\/false test that determines when an alerting policy should open an incident. If a condition evaluates to true, it signifies that something is wrong.
--
-- /See:/ 'newCondition' smart constructor.
data Condition = Condition
    {
      -- | A condition that checks that a time series continues to receive new data points.
      conditionAbsent :: (Core.Maybe MetricAbsence)
      -- | A condition that checks for log messages matching given constraints. If set, no other conditions can be present.
    , conditionMatchedLog :: (Core.Maybe LogMatch)
      -- | A condition that uses the Monitoring Query Language to define alerts.
    , conditionMonitoringQueryLanguage :: (Core.Maybe MonitoringQueryLanguageCondition)
      -- | A condition that compares a time series against a threshold.
    , conditionThreshold :: (Core.Maybe MetricThreshold)
      -- | A short name or phrase used to identify the condition in dashboards, notifications, and incidents. To avoid confusion, don\'t use the same display name for multiple conditions in the same policy.
    , displayName :: (Core.Maybe Core.Text)
      -- | Required if the condition exists. The unique resource name for this condition. Its format is: projects\/[PROJECT/ID/OR/NUMBER]\/alertPolicies\/[POLICY/ID]\/conditions\/[CONDITION/ID] [CONDITION/ID] is assigned by Stackdriver Monitoring when the condition is created as part of a new or updated alerting policy.When calling the alertPolicies.create method, do not include the name field in the conditions of the requested alerting policy. Stackdriver Monitoring creates the condition identifiers and includes them in the new policy.When calling the alertPolicies.update method to update a policy, including a condition name causes the existing condition to be updated. Conditions without names are added to the updated policy. Existing conditions are deleted if they are not updated.Best practice is to preserve [CONDITION_ID] if you make only small changes, such as those to condition thresholds, durations, or trigger values. Otherwise, treat the change as a new condition and let the existing condition be deleted.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Condition' with the minimum fields required to make a request.
newCondition 
    ::  Condition
newCondition =
  Condition
    { conditionAbsent = Core.Nothing
    , conditionMatchedLog = Core.Nothing
    , conditionMonitoringQueryLanguage = Core.Nothing
    , conditionThreshold = Core.Nothing
    , displayName = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON Condition where
        parseJSON
          = Core.withObject "Condition"
              (\ o ->
                 Condition Core.<$>
                   (o Core..:? "conditionAbsent") Core.<*>
                     (o Core..:? "conditionMatchedLog")
                     Core.<*>
                     (o Core..:? "conditionMonitoringQueryLanguage")
                     Core.<*> (o Core..:? "conditionThreshold")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Condition where
        toJSON Condition{..}
          = Core.object
              (Core.catMaybes
                 [("conditionAbsent" Core..=) Core.<$>
                    conditionAbsent,
                  ("conditionMatchedLog" Core..=) Core.<$>
                    conditionMatchedLog,
                  ("conditionMonitoringQueryLanguage" Core..=) Core.<$>
                    conditionMonitoringQueryLanguage,
                  ("conditionThreshold" Core..=) Core.<$>
                    conditionThreshold,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("name" Core..=) Core.<$> name])


-- | Optional. Used to perform content matching. This allows matching based on substrings and regular expressions, together with their negations. Only the first 4 MB of an HTTP or HTTPS check\'s response (and the first 1 MB of a TCP check\'s response) are examined for purposes of content matching.
--
-- /See:/ 'newContentMatcher' smart constructor.
data ContentMatcher = ContentMatcher
    {
      -- | String, regex or JSON content to match. Maximum 1024 bytes. An empty content string indicates no content matching is to be performed.
      content :: (Core.Maybe Core.Text)
      -- | The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
    , matcher :: (Core.Maybe ContentMatcher_Matcher)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentMatcher' with the minimum fields required to make a request.
newContentMatcher 
    ::  ContentMatcher
newContentMatcher =
  ContentMatcher {content = Core.Nothing, matcher = Core.Nothing}

instance Core.FromJSON ContentMatcher where
        parseJSON
          = Core.withObject "ContentMatcher"
              (\ o ->
                 ContentMatcher Core.<$>
                   (o Core..:? "content") Core.<*>
                     (o Core..:? "matcher"))

instance Core.ToJSON ContentMatcher where
        toJSON ContentMatcher{..}
          = Core.object
              (Core.catMaybes
                 [("content" Core..=) Core.<$> content,
                  ("matcher" Core..=) Core.<$> matcher])


-- | The CreateCollectdTimeSeries request.
--
-- /See:/ 'newCreateCollectdTimeSeriesRequest' smart constructor.
data CreateCollectdTimeSeriesRequest = CreateCollectdTimeSeriesRequest
    {
      -- | The collectd payloads representing the time series data. You must not include more than a single point for each time series, so no two payloads can have the same values for all of the fields plugin, plugin/instance, type, and type/instance.
      collectdPayloads :: (Core.Maybe [CollectdPayload])
      -- | The version of collectd that collected the data. Example: \"5.3.0-192.el6\".
    , collectdVersion :: (Core.Maybe Core.Text)
      -- | The monitored resource associated with the time series.
    , resource :: (Core.Maybe MonitoredResource)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateCollectdTimeSeriesRequest' with the minimum fields required to make a request.
newCreateCollectdTimeSeriesRequest 
    ::  CreateCollectdTimeSeriesRequest
newCreateCollectdTimeSeriesRequest =
  CreateCollectdTimeSeriesRequest
    { collectdPayloads = Core.Nothing
    , collectdVersion = Core.Nothing
    , resource = Core.Nothing
    }

instance Core.FromJSON
           CreateCollectdTimeSeriesRequest
         where
        parseJSON
          = Core.withObject "CreateCollectdTimeSeriesRequest"
              (\ o ->
                 CreateCollectdTimeSeriesRequest Core.<$>
                   (o Core..:? "collectdPayloads" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "collectdVersion")
                     Core.<*> (o Core..:? "resource"))

instance Core.ToJSON CreateCollectdTimeSeriesRequest
         where
        toJSON CreateCollectdTimeSeriesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("collectdPayloads" Core..=) Core.<$>
                    collectdPayloads,
                  ("collectdVersion" Core..=) Core.<$> collectdVersion,
                  ("resource" Core..=) Core.<$> resource])


-- | The CreateCollectdTimeSeries response.
--
-- /See:/ 'newCreateCollectdTimeSeriesResponse' smart constructor.
data CreateCollectdTimeSeriesResponse = CreateCollectdTimeSeriesResponse
    {
      -- | Records the error status for points that were not written due to an error in the request.Failed requests for which nothing is written will return an error response instead. Requests where data points were rejected by the backend will set summary instead.
      payloadErrors :: (Core.Maybe [CollectdPayloadError])
      -- | Aggregate statistics from writing the payloads. This field is omitted if all points were successfully written, so that the response is empty. This is for backwards compatibility with clients that log errors on any non-empty response.
    , summary :: (Core.Maybe CreateTimeSeriesSummary)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateCollectdTimeSeriesResponse' with the minimum fields required to make a request.
newCreateCollectdTimeSeriesResponse 
    ::  CreateCollectdTimeSeriesResponse
newCreateCollectdTimeSeriesResponse =
  CreateCollectdTimeSeriesResponse
    {payloadErrors = Core.Nothing, summary = Core.Nothing}

instance Core.FromJSON
           CreateCollectdTimeSeriesResponse
         where
        parseJSON
          = Core.withObject "CreateCollectdTimeSeriesResponse"
              (\ o ->
                 CreateCollectdTimeSeriesResponse Core.<$>
                   (o Core..:? "payloadErrors" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "summary"))

instance Core.ToJSON CreateCollectdTimeSeriesResponse
         where
        toJSON CreateCollectdTimeSeriesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("payloadErrors" Core..=) Core.<$> payloadErrors,
                  ("summary" Core..=) Core.<$> summary])


-- | The CreateTimeSeries request.
--
-- /See:/ 'newCreateTimeSeriesRequest' smart constructor.
newtype CreateTimeSeriesRequest = CreateTimeSeriesRequest
    {
      -- | Required. The new data to be added to a list of time series. Adds at most one data point to each of several time series. The new data point must be more recent than any other point in its time series. Each TimeSeries value must fully specify a unique time series by supplying all label values for the metric and the monitored resource.The maximum number of TimeSeries objects per Create request is 200.
      timeSeries :: (Core.Maybe [TimeSeries])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateTimeSeriesRequest' with the minimum fields required to make a request.
newCreateTimeSeriesRequest 
    ::  CreateTimeSeriesRequest
newCreateTimeSeriesRequest = CreateTimeSeriesRequest {timeSeries = Core.Nothing}

instance Core.FromJSON CreateTimeSeriesRequest where
        parseJSON
          = Core.withObject "CreateTimeSeriesRequest"
              (\ o ->
                 CreateTimeSeriesRequest Core.<$>
                   (o Core..:? "timeSeries" Core..!= Core.mempty))

instance Core.ToJSON CreateTimeSeriesRequest where
        toJSON CreateTimeSeriesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("timeSeries" Core..=) Core.<$> timeSeries])


-- | Summary of the result of a failed request to write data to a time series.
--
-- /See:/ 'newCreateTimeSeriesSummary' smart constructor.
data CreateTimeSeriesSummary = CreateTimeSeriesSummary
    {
      -- | The number of points that failed to be written. Order is not guaranteed.
      errors :: (Core.Maybe [Error'])
      -- | The number of points that were successfully written.
    , successPointCount :: (Core.Maybe Core.Int32)
      -- | The number of points in the request.
    , totalPointCount :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateTimeSeriesSummary' with the minimum fields required to make a request.
newCreateTimeSeriesSummary 
    ::  CreateTimeSeriesSummary
newCreateTimeSeriesSummary =
  CreateTimeSeriesSummary
    { errors = Core.Nothing
    , successPointCount = Core.Nothing
    , totalPointCount = Core.Nothing
    }

instance Core.FromJSON CreateTimeSeriesSummary where
        parseJSON
          = Core.withObject "CreateTimeSeriesSummary"
              (\ o ->
                 CreateTimeSeriesSummary Core.<$>
                   (o Core..:? "errors" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "successPointCount")
                     Core.<*> (o Core..:? "totalPointCount"))

instance Core.ToJSON CreateTimeSeriesSummary where
        toJSON CreateTimeSeriesSummary{..}
          = Core.object
              (Core.catMaybes
                 [("errors" Core..=) Core.<$> errors,
                  ("successPointCount" Core..=) Core.<$>
                    successPointCount,
                  ("totalPointCount" Core..=) Core.<$>
                    totalPointCount])


-- | Custom view of service telemetry. Currently a place-holder pending final design.
--
-- /See:/ 'newCustom' smart constructor.
data Custom = Custom
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Custom' with the minimum fields required to make a request.
newCustom 
    ::  Custom
newCustom = Custom

instance Core.FromJSON Custom where
        parseJSON
          = Core.withObject "Custom" (\ o -> Core.pure Custom)

instance Core.ToJSON Custom where
        toJSON = Core.const Core.emptyObject


-- | Distribution contains summary statistics for a population of values. It optionally contains a histogram representing the distribution of those values across a set of buckets.The summary statistics are the count, mean, sum of the squared deviation from the mean, the minimum, and the maximum of the set of population of values. The histogram is based on a sequence of buckets and gives a count of values that fall into each bucket. The boundaries of the buckets are given either explicitly or by formulas for buckets of fixed or exponentially increasing widths.Although it is not forbidden, it is generally a bad idea to include non-finite values (infinities or NaNs) in the population of values, as this will render the mean and sum/of/squared_deviation fields meaningless.
--
-- /See:/ 'newDistribution' smart constructor.
data Distribution = Distribution
    {
      -- | Required in the Cloud Monitoring API v3. The values for each bucket specified in bucket/options. The sum of the values in bucketCounts must equal the value in the count field of the Distribution object. The order of the bucket counts follows the numbering schemes described for the three bucket types. The underflow bucket has number 0; the finite buckets, if any, have numbers 1 through N-2; and the overflow bucket has number N-1. The size of bucket/counts must not be greater than N. If the size is less than N, then the remaining buckets are assigned values of zero.
      bucketCounts :: (Core.Maybe [Core.Int64])
      -- | Required in the Cloud Monitoring API v3. Defines the histogram bucket boundaries.
    , bucketOptions :: (Core.Maybe BucketOptions)
      -- | The number of values in the population. Must be non-negative. This value must equal the sum of the values in bucket_counts if a histogram is provided.
    , count :: (Core.Maybe Core.Int64)
      -- | Must be in increasing order of value field.
    , exemplars :: (Core.Maybe [Exemplar])
      -- | The arithmetic mean of the values in the population. If count is zero then this field must be zero.
    , mean :: (Core.Maybe Core.Double)
      -- | If specified, contains the range of the population values. The field must not be present if the count is zero. This field is presently ignored by the Cloud Monitoring API v3.
    , range :: (Core.Maybe Range)
      -- | The sum of squared deviations from the mean of the values in the population. For values x_i this is: Sum<(x_i%20-%20mean)%5E2 i=1..n> Knuth, \"The Art of Computer Programming\", Vol. 2, page 232, 3rd edition describes Welford\'s method for accumulating this sum in one pass.If count is zero then this field must be zero.
    , sumOfSquaredDeviation :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Distribution' with the minimum fields required to make a request.
newDistribution 
    ::  Distribution
newDistribution =
  Distribution
    { bucketCounts = Core.Nothing
    , bucketOptions = Core.Nothing
    , count = Core.Nothing
    , exemplars = Core.Nothing
    , mean = Core.Nothing
    , range = Core.Nothing
    , sumOfSquaredDeviation = Core.Nothing
    }

instance Core.FromJSON Distribution where
        parseJSON
          = Core.withObject "Distribution"
              (\ o ->
                 Distribution Core.<$>
                   (o Core..:? "bucketCounts" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "bucketOptions")
                     Core.<*> (o Core..:? "count")
                     Core.<*>
                     (o Core..:? "exemplars" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "mean")
                     Core.<*> (o Core..:? "range")
                     Core.<*> (o Core..:? "sumOfSquaredDeviation"))

instance Core.ToJSON Distribution where
        toJSON Distribution{..}
          = Core.object
              (Core.catMaybes
                 [("bucketCounts" Core..=) Core.<$> bucketCounts,
                  ("bucketOptions" Core..=) Core.<$> bucketOptions,
                  ("count" Core..=) Core.. Core.AsText Core.<$> count,
                  ("exemplars" Core..=) Core.<$> exemplars,
                  ("mean" Core..=) Core.<$> mean,
                  ("range" Core..=) Core.<$> range,
                  ("sumOfSquaredDeviation" Core..=) Core.<$>
                    sumOfSquaredDeviation])


-- | A DistributionCut defines a TimeSeries and thresholds used for measuring good service and total service. The TimeSeries must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE. The computed good_service will be the estimated count of values in the Distribution that fall within the specified min and max.
--
-- /See:/ 'newDistributionCut' smart constructor.
data DistributionCut = DistributionCut
    {
      -- | A monitoring filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying a TimeSeries aggregating values. Must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE.
      distributionFilter :: (Core.Maybe Core.Text)
      -- | Range of values considered \"good.\" For a one-sided range, set one bound to an infinite value.
    , range :: (Core.Maybe GoogleMonitoringV3Range)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DistributionCut' with the minimum fields required to make a request.
newDistributionCut 
    ::  DistributionCut
newDistributionCut =
  DistributionCut {distributionFilter = Core.Nothing, range = Core.Nothing}

instance Core.FromJSON DistributionCut where
        parseJSON
          = Core.withObject "DistributionCut"
              (\ o ->
                 DistributionCut Core.<$>
                   (o Core..:? "distributionFilter") Core.<*>
                     (o Core..:? "range"))

instance Core.ToJSON DistributionCut where
        toJSON DistributionCut{..}
          = Core.object
              (Core.catMaybes
                 [("distributionFilter" Core..=) Core.<$>
                    distributionFilter,
                  ("range" Core..=) Core.<$> range])


-- | A content string and a MIME type that describes the content string\'s format.
--
-- /See:/ 'newDocumentation' smart constructor.
data Documentation = Documentation
    {
      -- | The text of the documentation, interpreted according to mime_type. The content may not exceed 8,192 Unicode characters and may not exceed more than 10,240 bytes when encoded in UTF-8 format, whichever is smaller. This text can be templatized by using variables (https:\/\/cloud.google.com\/monitoring\/alerts\/doc-variables).
      content :: (Core.Maybe Core.Text)
      -- | The format of the content field. Presently, only the value \"text\/markdown\" is supported. See Markdown (https:\/\/en.wikipedia.org\/wiki\/Markdown) for more information.
    , mimeType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Documentation' with the minimum fields required to make a request.
newDocumentation 
    ::  Documentation
newDocumentation =
  Documentation {content = Core.Nothing, mimeType = Core.Nothing}

instance Core.FromJSON Documentation where
        parseJSON
          = Core.withObject "Documentation"
              (\ o ->
                 Documentation Core.<$>
                   (o Core..:? "content") Core.<*>
                     (o Core..:? "mimeType"))

instance Core.ToJSON Documentation where
        toJSON Documentation{..}
          = Core.object
              (Core.catMaybes
                 [("content" Core..=) Core.<$> content,
                  ("mimeType" Core..=) Core.<$> mimeType])


-- | A set of (label, value) pairs that were removed from a Distribution time series during aggregation and then added as an attachment to a Distribution.Exemplar.The full label set for the exemplars is constructed by using the dropped pairs in combination with the label values that remain on the aggregated Distribution time series. The constructed full label set can be used to identify the specific entity, such as the instance or job, which might be contributing to a long-tail. However, with dropped labels, the storage requirements are reduced because only the aggregated distribution values for a large group of time series are stored.Note that there are no guarantees on ordering of the labels from exemplar-to-exemplar and from distribution-to-distribution in the same stream, and there may be duplicates. It is up to clients to resolve any ambiguities.
--
-- /See:/ 'newDroppedLabels' smart constructor.
newtype DroppedLabels = DroppedLabels
    {
      -- | Map from label to its value, for all labels dropped in any aggregation.
      label :: (Core.Maybe DroppedLabels_Label)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DroppedLabels' with the minimum fields required to make a request.
newDroppedLabels 
    ::  DroppedLabels
newDroppedLabels = DroppedLabels {label = Core.Nothing}

instance Core.FromJSON DroppedLabels where
        parseJSON
          = Core.withObject "DroppedLabels"
              (\ o -> DroppedLabels Core.<$> (o Core..:? "label"))

instance Core.ToJSON DroppedLabels where
        toJSON DroppedLabels{..}
          = Core.object
              (Core.catMaybes [("label" Core..=) Core.<$> label])


-- | Map from label to its value, for all labels dropped in any aggregation.
--
-- /See:/ 'newDroppedLabels_Label' smart constructor.
newtype DroppedLabels_Label = DroppedLabels_Label
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DroppedLabels_Label' with the minimum fields required to make a request.
newDroppedLabels_Label 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> DroppedLabels_Label
newDroppedLabels_Label addtional = DroppedLabels_Label {addtional = addtional}

instance Core.FromJSON DroppedLabels_Label where
        parseJSON
          = Core.withObject "DroppedLabels_Label"
              (\ o ->
                 DroppedLabels_Label Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON DroppedLabels_Label where
        toJSON DroppedLabels_Label{..}
          = Core.toJSON addtional


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for Empty is empty JSON object {}.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Detailed information about an error category.
--
-- /See:/ 'newError' smart constructor.
data Error' = Error'
    {
      -- | The number of points that couldn\'t be written because of status.
      pointCount :: (Core.Maybe Core.Int32)
      -- | The status of the requested write operation.
    , status :: (Core.Maybe Status)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Error' with the minimum fields required to make a request.
newError 
    ::  Error'
newError = Error' {pointCount = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON Error' where
        parseJSON
          = Core.withObject "Error'"
              (\ o ->
                 Error' Core.<$>
                   (o Core..:? "pointCount") Core.<*>
                     (o Core..:? "status"))

instance Core.ToJSON Error' where
        toJSON Error'{..}
          = Core.object
              (Core.catMaybes
                 [("pointCount" Core..=) Core.<$> pointCount,
                  ("status" Core..=) Core.<$> status])


-- | Exemplars are example points that may be used to annotate aggregated distribution values. They are metadata that gives information about a particular value added to a Distribution bucket, such as a trace ID that was active when a value was added. They may contain further information, such as a example values and timestamps, origin, etc.
--
-- /See:/ 'newExemplar' smart constructor.
data Exemplar = Exemplar
    {
      -- | Contextual information about the example value. Examples are:Trace: type.googleapis.com\/google.monitoring.v3.SpanContextLiteral string: type.googleapis.com\/google.protobuf.StringValueLabels dropped during aggregation: type.googleapis.com\/google.monitoring.v3.DroppedLabelsThere may be only a single attachment of any given message type in a single exemplar, and this is enforced by the system.
      attachments :: (Core.Maybe [Exemplar_AttachmentsItem])
      -- | The observation (sampling) time of the above value.
    , timestamp :: (Core.Maybe Core.DateTime')
      -- | Value of the exemplar point. This value determines to which bucket the exemplar belongs.
    , value :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Exemplar' with the minimum fields required to make a request.
newExemplar 
    ::  Exemplar
newExemplar =
  Exemplar
    {attachments = Core.Nothing, timestamp = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Exemplar where
        parseJSON
          = Core.withObject "Exemplar"
              (\ o ->
                 Exemplar Core.<$>
                   (o Core..:? "attachments" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "timestamp")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON Exemplar where
        toJSON Exemplar{..}
          = Core.object
              (Core.catMaybes
                 [("attachments" Core..=) Core.<$> attachments,
                  ("timestamp" Core..=) Core.<$> timestamp,
                  ("value" Core..=) Core.<$> value])


--
-- /See:/ 'newExemplar_AttachmentsItem' smart constructor.
newtype Exemplar_AttachmentsItem = Exemplar_AttachmentsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Exemplar_AttachmentsItem' with the minimum fields required to make a request.
newExemplar_AttachmentsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> Exemplar_AttachmentsItem
newExemplar_AttachmentsItem addtional =
  Exemplar_AttachmentsItem {addtional = addtional}

instance Core.FromJSON Exemplar_AttachmentsItem where
        parseJSON
          = Core.withObject "Exemplar_AttachmentsItem"
              (\ o ->
                 Exemplar_AttachmentsItem Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON Exemplar_AttachmentsItem where
        toJSON Exemplar_AttachmentsItem{..}
          = Core.toJSON addtional


-- | Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 \<= i \< N-1): boundsi Lower bound (1 \<= i \< N); boundsi - 1The bounds field must contain at least one element. If bounds has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.
--
-- /See:/ 'newExplicit' smart constructor.
newtype Explicit = Explicit
    {
      -- | The values must be monotonically increasing.
      bounds :: (Core.Maybe [Core.Double])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Explicit' with the minimum fields required to make a request.
newExplicit 
    ::  Explicit
newExplicit = Explicit {bounds = Core.Nothing}

instance Core.FromJSON Explicit where
        parseJSON
          = Core.withObject "Explicit"
              (\ o ->
                 Explicit Core.<$>
                   (o Core..:? "bounds" Core..!= Core.mempty))

instance Core.ToJSON Explicit where
        toJSON Explicit{..}
          = Core.object
              (Core.catMaybes [("bounds" Core..=) Core.<$> bounds])


-- | Specifies an exponential sequence of buckets that have a width that is proportional to the value of the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.There are num/finite/buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 \<= i \< N-1): scale * (growth/factor ^ i). Lower bound (1 \<= i \< N): scale * (growth/factor ^ (i - 1)).
--
-- /See:/ 'newExponential' smart constructor.
data Exponential = Exponential
    {
      -- | Must be greater than 1.
      growthFactor :: (Core.Maybe Core.Double)
      -- | Must be greater than 0.
    , numFiniteBuckets :: (Core.Maybe Core.Int32)
      -- | Must be greater than 0.
    , scale :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Exponential' with the minimum fields required to make a request.
newExponential 
    ::  Exponential
newExponential =
  Exponential
    { growthFactor = Core.Nothing
    , numFiniteBuckets = Core.Nothing
    , scale = Core.Nothing
    }

instance Core.FromJSON Exponential where
        parseJSON
          = Core.withObject "Exponential"
              (\ o ->
                 Exponential Core.<$>
                   (o Core..:? "growthFactor") Core.<*>
                     (o Core..:? "numFiniteBuckets")
                     Core.<*> (o Core..:? "scale"))

instance Core.ToJSON Exponential where
        toJSON Exponential{..}
          = Core.object
              (Core.catMaybes
                 [("growthFactor" Core..=) Core.<$> growthFactor,
                  ("numFiniteBuckets" Core..=) Core.<$>
                    numFiniteBuckets,
                  ("scale" Core..=) Core.<$> scale])


-- | A single field of a message type.
--
-- /See:/ 'newField' smart constructor.
data Field = Field
    {
      -- | The field cardinality.
      cardinality :: (Core.Maybe Field_Cardinality)
      -- | The string value of the default value of this field. Proto2 syntax only.
    , defaultValue :: (Core.Maybe Core.Text)
      -- | The field JSON name.
    , jsonName :: (Core.Maybe Core.Text)
      -- | The field type.
    , kind :: (Core.Maybe Field_Kind)
      -- | The field name.
    , name :: (Core.Maybe Core.Text)
      -- | The field number.
    , number :: (Core.Maybe Core.Int32)
      -- | The index of the field type in Type.oneofs, for message or enumeration types. The first type has index 1; zero means the type is not in the list.
    , oneofIndex :: (Core.Maybe Core.Int32)
      -- | The protocol buffer options.
    , options :: (Core.Maybe [Option])
      -- | Whether to use alternative packed wire representation.
    , packed :: (Core.Maybe Core.Bool)
      -- | The field type URL, without the scheme, for message or enumeration types. Example: \"type.googleapis.com\/google.protobuf.Timestamp\".
    , typeUrl :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Field' with the minimum fields required to make a request.
newField 
    ::  Field
newField =
  Field
    { cardinality = Core.Nothing
    , defaultValue = Core.Nothing
    , jsonName = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , number = Core.Nothing
    , oneofIndex = Core.Nothing
    , options = Core.Nothing
    , packed = Core.Nothing
    , typeUrl = Core.Nothing
    }

instance Core.FromJSON Field where
        parseJSON
          = Core.withObject "Field"
              (\ o ->
                 Field Core.<$>
                   (o Core..:? "cardinality") Core.<*>
                     (o Core..:? "defaultValue")
                     Core.<*> (o Core..:? "jsonName")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "number")
                     Core.<*> (o Core..:? "oneofIndex")
                     Core.<*> (o Core..:? "options" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "packed")
                     Core.<*> (o Core..:? "typeUrl"))

instance Core.ToJSON Field where
        toJSON Field{..}
          = Core.object
              (Core.catMaybes
                 [("cardinality" Core..=) Core.<$> cardinality,
                  ("defaultValue" Core..=) Core.<$> defaultValue,
                  ("jsonName" Core..=) Core.<$> jsonName,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("number" Core..=) Core.<$> number,
                  ("oneofIndex" Core..=) Core.<$> oneofIndex,
                  ("options" Core..=) Core.<$> options,
                  ("packed" Core..=) Core.<$> packed,
                  ("typeUrl" Core..=) Core.<$> typeUrl])


-- | The GetNotificationChannelVerificationCode request.
--
-- /See:/ 'newGetNotificationChannelVerificationCodeRequest' smart constructor.
newtype GetNotificationChannelVerificationCodeRequest = GetNotificationChannelVerificationCodeRequest
    {
      -- | The desired expiration time. If specified, the API will guarantee that the returned code will not be valid after the specified timestamp; however, the API cannot guarantee that the returned code will be valid for at least as long as the requested time (the API puts an upper bound on the amount of time for which a code may be valid). If omitted, a default expiration will be used, which may be less than the max permissible expiration (so specifying an expiration may extend the code\'s lifetime over omitting an expiration, even though the API does impose an upper limit on the maximum expiration that is permitted).
      expireTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetNotificationChannelVerificationCodeRequest' with the minimum fields required to make a request.
newGetNotificationChannelVerificationCodeRequest 
    ::  GetNotificationChannelVerificationCodeRequest
newGetNotificationChannelVerificationCodeRequest =
  GetNotificationChannelVerificationCodeRequest {expireTime = Core.Nothing}

instance Core.FromJSON
           GetNotificationChannelVerificationCodeRequest
         where
        parseJSON
          = Core.withObject
              "GetNotificationChannelVerificationCodeRequest"
              (\ o ->
                 GetNotificationChannelVerificationCodeRequest
                   Core.<$> (o Core..:? "expireTime"))

instance Core.ToJSON
           GetNotificationChannelVerificationCodeRequest
         where
        toJSON
          GetNotificationChannelVerificationCodeRequest{..}
          = Core.object
              (Core.catMaybes
                 [("expireTime" Core..=) Core.<$> expireTime])


-- | The GetNotificationChannelVerificationCode request.
--
-- /See:/ 'newGetNotificationChannelVerificationCodeResponse' smart constructor.
data GetNotificationChannelVerificationCodeResponse = GetNotificationChannelVerificationCodeResponse
    {
      -- | The verification code, which may be used to verify other channels that have an equivalent identity (i.e. other channels of the same type with the same fingerprint such as other email channels with the same email address or other sms channels with the same number).
      code :: (Core.Maybe Core.Text)
      -- | The expiration time associated with the code that was returned. If an expiration was provided in the request, this is the minimum of the requested expiration in the request and the max permitted expiration.
    , expireTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetNotificationChannelVerificationCodeResponse' with the minimum fields required to make a request.
newGetNotificationChannelVerificationCodeResponse 
    ::  GetNotificationChannelVerificationCodeResponse
newGetNotificationChannelVerificationCodeResponse =
  GetNotificationChannelVerificationCodeResponse
    {code = Core.Nothing, expireTime = Core.Nothing}

instance Core.FromJSON
           GetNotificationChannelVerificationCodeResponse
         where
        parseJSON
          = Core.withObject
              "GetNotificationChannelVerificationCodeResponse"
              (\ o ->
                 GetNotificationChannelVerificationCodeResponse
                   Core.<$>
                   (o Core..:? "code") Core.<*>
                     (o Core..:? "expireTime"))

instance Core.ToJSON
           GetNotificationChannelVerificationCodeResponse
         where
        toJSON
          GetNotificationChannelVerificationCodeResponse{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("expireTime" Core..=) Core.<$> expireTime])


-- | Range of numerical values within min and max.
--
-- /See:/ 'newGoogleMonitoringV3Range' smart constructor.
data GoogleMonitoringV3Range = GoogleMonitoringV3Range
    {
      -- | Range maximum.
      max :: (Core.Maybe Core.Double)
      -- | Range minimum.
    , min :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleMonitoringV3Range' with the minimum fields required to make a request.
newGoogleMonitoringV3Range 
    ::  GoogleMonitoringV3Range
newGoogleMonitoringV3Range =
  GoogleMonitoringV3Range {max = Core.Nothing, min = Core.Nothing}

instance Core.FromJSON GoogleMonitoringV3Range where
        parseJSON
          = Core.withObject "GoogleMonitoringV3Range"
              (\ o ->
                 GoogleMonitoringV3Range Core.<$>
                   (o Core..:? "max") Core.<*> (o Core..:? "min"))

instance Core.ToJSON GoogleMonitoringV3Range where
        toJSON GoogleMonitoringV3Range{..}
          = Core.object
              (Core.catMaybes
                 [("max" Core..=) Core.<$> max,
                  ("min" Core..=) Core.<$> min])


-- | The description of a dynamic collection of monitored resources. Each group has a filter that is matched against monitored resources and their associated metadata. If a group\'s filter matches an available monitored resource, then that resource is a member of that group. Groups can contain any number of monitored resources, and each monitored resource can be a member of any number of groups.Groups can be nested in parent-child hierarchies. The parentName field identifies an optional parent for each group. If a group has a parent, then the only monitored resources available to be matched by the group\'s filter are the resources contained in the parent group. In other words, a group contains the monitored resources that match its filter and the filters of all the group\'s ancestors. A group without a parent can contain any monitored resource.For example, consider an infrastructure running a set of instances with two user-defined tags: \"environment\" and \"role\". A parent group has a filter,
-- environment=\"production\". A child of that parent group has a filter, role=\"transcoder\". The parent group contains all instances in the production environment, regardless of their roles. The child group contains instances that have the transcoder role and are in the production environment.The monitored resources contained in a group can change at any moment, depending on what resources exist and what filters are associated with the group and its ancestors.
--
-- /See:/ 'newGroup' smart constructor.
data Group = Group
    {
      -- | A user-assigned name for this group, used only for display purposes.
      displayName :: (Core.Maybe Core.Text)
      -- | The filter used to determine which monitored resources belong to this group.
    , filter :: (Core.Maybe Core.Text)
      -- | If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
    , isCluster :: (Core.Maybe Core.Bool)
      -- | Output only. The name of this group. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID] When creating a group, this field is ignored and a new name is created consisting of the project specified in the call to CreateGroup and a unique [GROUP_ID] that is generated automatically.
    , name :: (Core.Maybe Core.Text)
      -- | The name of the group\'s parent, if it has one. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID] For groups with no parent, parent_name is the empty string, \"\".
    , parentName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
newGroup 
    ::  Group
newGroup =
  Group
    { displayName = Core.Nothing
    , filter = Core.Nothing
    , isCluster = Core.Nothing
    , name = Core.Nothing
    , parentName = Core.Nothing
    }

instance Core.FromJSON Group where
        parseJSON
          = Core.withObject "Group"
              (\ o ->
                 Group Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "filter")
                     Core.<*> (o Core..:? "isCluster")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "parentName"))

instance Core.ToJSON Group where
        toJSON Group{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("filter" Core..=) Core.<$> filter,
                  ("isCluster" Core..=) Core.<$> isCluster,
                  ("name" Core..=) Core.<$> name,
                  ("parentName" Core..=) Core.<$> parentName])


-- | Information involved in an HTTP\/HTTPS Uptime check request.
--
-- /See:/ 'newHttpCheck' smart constructor.
data HttpCheck = HttpCheck
    {
      -- | The authentication information. Optional when creating an HTTP check; defaults to empty.
      authInfo :: (Core.Maybe BasicAuthentication)
      -- | The request body associated with the HTTP POST request. If content/type is URL/ENCODED, the body passed in must be URL-encoded. Users can provide a Content-Length header via the headers field or the API will do so. If the request_method is GET and body is not empty, the API will return an error. The maximum byte size is 1 megabyte.Note: If client libraries aren\'t used (which performs the conversion automatically) base64 encode your body data since the field is of bytes type.
    , body :: (Core.Maybe Core.Base64)
      -- | The content type header to use for the check. The following configurations result in errors: 1. Content type is specified in both the headers field and the content/type field. 2. Request method is GET and content/type is not TYPE/UNSPECIFIED 3. Request method is POST and content/type is TYPE/UNSPECIFIED. 4. Request method is POST and a \"Content-Type\" header is provided via headers field. The content/type field should be used instead.
    , contentType :: (Core.Maybe HttpCheck_ContentType)
      -- | The list of headers to send as part of the Uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
    , headers :: (Core.Maybe HttpCheck_Headers)
      -- | Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get\/List calls, if mask_headers is set to true then the headers will be obscured with ******.
    , maskHeaders :: (Core.Maybe Core.Bool)
      -- | Optional (defaults to \"\/\"). The path to the page against which to run the check. Will be combined with the host (specified within the monitored_resource) and port to construct the full URL. If the provided path does not begin with \"\/\", a \"\/\" will be prepended automatically.
    , path :: (Core.Maybe Core.Text)
      -- | Optional (defaults to 80 when use/ssl is false, and 443 when use/ssl is true). The TCP port on the HTTP server against which to run the check. Will be combined with host (specified within the monitored_resource) and path to construct the full URL.
    , port :: (Core.Maybe Core.Int32)
      -- | The HTTP request method to use for the check. If set to METHOD/UNSPECIFIED then request/method defaults to GET.
    , requestMethod :: (Core.Maybe HttpCheck_RequestMethod)
      -- | If true, use HTTPS instead of HTTP to run the check.
    , useSsl :: (Core.Maybe Core.Bool)
      -- | Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where monitored/resource is set to uptime/url. If use/ssl is false, setting validate/ssl to true has no effect.
    , validateSsl :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpCheck' with the minimum fields required to make a request.
newHttpCheck 
    ::  HttpCheck
newHttpCheck =
  HttpCheck
    { authInfo = Core.Nothing
    , body = Core.Nothing
    , contentType = Core.Nothing
    , headers = Core.Nothing
    , maskHeaders = Core.Nothing
    , path = Core.Nothing
    , port = Core.Nothing
    , requestMethod = Core.Nothing
    , useSsl = Core.Nothing
    , validateSsl = Core.Nothing
    }

instance Core.FromJSON HttpCheck where
        parseJSON
          = Core.withObject "HttpCheck"
              (\ o ->
                 HttpCheck Core.<$>
                   (o Core..:? "authInfo") Core.<*> (o Core..:? "body")
                     Core.<*> (o Core..:? "contentType")
                     Core.<*> (o Core..:? "headers")
                     Core.<*> (o Core..:? "maskHeaders")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "port")
                     Core.<*> (o Core..:? "requestMethod")
                     Core.<*> (o Core..:? "useSsl")
                     Core.<*> (o Core..:? "validateSsl"))

instance Core.ToJSON HttpCheck where
        toJSON HttpCheck{..}
          = Core.object
              (Core.catMaybes
                 [("authInfo" Core..=) Core.<$> authInfo,
                  ("body" Core..=) Core.<$> body,
                  ("contentType" Core..=) Core.<$> contentType,
                  ("headers" Core..=) Core.<$> headers,
                  ("maskHeaders" Core..=) Core.<$> maskHeaders,
                  ("path" Core..=) Core.<$> path,
                  ("port" Core..=) Core.<$> port,
                  ("requestMethod" Core..=) Core.<$> requestMethod,
                  ("useSsl" Core..=) Core.<$> useSsl,
                  ("validateSsl" Core..=) Core.<$> validateSsl])


-- | The list of headers to send as part of the Uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
--
-- /See:/ 'newHttpCheck_Headers' smart constructor.
newtype HttpCheck_Headers = HttpCheck_Headers
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpCheck_Headers' with the minimum fields required to make a request.
newHttpCheck_Headers 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> HttpCheck_Headers
newHttpCheck_Headers addtional = HttpCheck_Headers {addtional = addtional}

instance Core.FromJSON HttpCheck_Headers where
        parseJSON
          = Core.withObject "HttpCheck_Headers"
              (\ o ->
                 HttpCheck_Headers Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON HttpCheck_Headers where
        toJSON HttpCheck_Headers{..} = Core.toJSON addtional


-- | An internal checker allows Uptime checks to run on private\/internal GCP resources.
--
-- /See:/ 'newInternalChecker' smart constructor.
data InternalChecker = InternalChecker
    {
      -- | The checker\'s human-readable name. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
      displayName :: (Core.Maybe Core.Text)
      -- | The GCP zone the Uptime check should egress from. Only respected for internal Uptime checks, where internal_network is specified.
    , gcpZone :: (Core.Maybe Core.Text)
      -- | A unique resource name for this InternalChecker. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/internalCheckers\/[INTERNAL/CHECKER/ID] [PROJECT/ID/OR/NUMBER] is the Stackdriver Workspace project for the Uptime check config associated with the internal checker.
    , name :: (Core.Maybe Core.Text)
      -- | The GCP VPC network (https:\/\/cloud.google.com\/vpc\/docs\/vpc) where the internal resource lives (ex: \"default\").
    , network :: (Core.Maybe Core.Text)
      -- | The GCP project ID where the internal checker lives. Not necessary the same as the Workspace project.
    , peerProjectId :: (Core.Maybe Core.Text)
      -- | The current operational state of the internal checker.
    , state :: (Core.Maybe InternalChecker_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InternalChecker' with the minimum fields required to make a request.
newInternalChecker 
    ::  InternalChecker
newInternalChecker =
  InternalChecker
    { displayName = Core.Nothing
    , gcpZone = Core.Nothing
    , name = Core.Nothing
    , network = Core.Nothing
    , peerProjectId = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON InternalChecker where
        parseJSON
          = Core.withObject "InternalChecker"
              (\ o ->
                 InternalChecker Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "gcpZone")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "network")
                     Core.<*> (o Core..:? "peerProjectId")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON InternalChecker where
        toJSON InternalChecker{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("gcpZone" Core..=) Core.<$> gcpZone,
                  ("name" Core..=) Core.<$> name,
                  ("network" Core..=) Core.<$> network,
                  ("peerProjectId" Core..=) Core.<$> peerProjectId,
                  ("state" Core..=) Core.<$> state])


-- | Canonical service scoped to an Istio mesh. Anthos clusters running ASM >= 1.6.8 will have their services ingested as this type.
--
-- /See:/ 'newIstioCanonicalService' smart constructor.
data IstioCanonicalService = IstioCanonicalService
    {
      -- | The name of the canonical service underlying this service. Corresponds to the destination/canonical/service/name metric label in label in Istio metrics (https:\/\/cloud.google.com\/monitoring\/api\/metrics/istio).
      canonicalService :: (Core.Maybe Core.Text)
      -- | The namespace of the canonical service underlying this service. Corresponds to the destination/canonical/service/namespace metric label in Istio metrics (https:\/\/cloud.google.com\/monitoring\/api\/metrics/istio).
    , canonicalServiceNamespace :: (Core.Maybe Core.Text)
      -- | Identifier for the Istio mesh in which this canonical service is defined. Corresponds to the mesh/uid metric label in Istio metrics (https:\/\/cloud.google.com\/monitoring\/api\/metrics/istio).
    , meshUid :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IstioCanonicalService' with the minimum fields required to make a request.
newIstioCanonicalService 
    ::  IstioCanonicalService
newIstioCanonicalService =
  IstioCanonicalService
    { canonicalService = Core.Nothing
    , canonicalServiceNamespace = Core.Nothing
    , meshUid = Core.Nothing
    }

instance Core.FromJSON IstioCanonicalService where
        parseJSON
          = Core.withObject "IstioCanonicalService"
              (\ o ->
                 IstioCanonicalService Core.<$>
                   (o Core..:? "canonicalService") Core.<*>
                     (o Core..:? "canonicalServiceNamespace")
                     Core.<*> (o Core..:? "meshUid"))

instance Core.ToJSON IstioCanonicalService where
        toJSON IstioCanonicalService{..}
          = Core.object
              (Core.catMaybes
                 [("canonicalService" Core..=) Core.<$>
                    canonicalService,
                  ("canonicalServiceNamespace" Core..=) Core.<$>
                    canonicalServiceNamespace,
                  ("meshUid" Core..=) Core.<$> meshUid])


-- | A description of a label.
--
-- /See:/ 'newLabelDescriptor' smart constructor.
data LabelDescriptor = LabelDescriptor
    {
      -- | A human-readable description for the label.
      description :: (Core.Maybe Core.Text)
      -- | The key for this label. The key must meet the following criteria: Does not exceed 100 characters. Matches the following regular expression: [a-zA-Z][a-zA-Z0-9_]* The first character must be an upper- or lower-case letter. The remaining characters must be letters, digits, or underscores.
    , key :: (Core.Maybe Core.Text)
      -- | The type of data that can be assigned to the label.
    , valueType :: (Core.Maybe LabelDescriptor_ValueType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LabelDescriptor' with the minimum fields required to make a request.
newLabelDescriptor 
    ::  LabelDescriptor
newLabelDescriptor =
  LabelDescriptor
    {description = Core.Nothing, key = Core.Nothing, valueType = Core.Nothing}

instance Core.FromJSON LabelDescriptor where
        parseJSON
          = Core.withObject "LabelDescriptor"
              (\ o ->
                 LabelDescriptor Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "key")
                     Core.<*> (o Core..:? "valueType"))

instance Core.ToJSON LabelDescriptor where
        toJSON LabelDescriptor{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("key" Core..=) Core.<$> key,
                  ("valueType" Core..=) Core.<$> valueType])


-- | A label value.
--
-- /See:/ 'newLabelValue' smart constructor.
data LabelValue = LabelValue
    {
      -- | A bool label value.
      boolValue :: (Core.Maybe Core.Bool)
      -- | An int64 label value.
    , int64Value :: (Core.Maybe Core.Int64)
      -- | A string label value.
    , stringValue :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LabelValue' with the minimum fields required to make a request.
newLabelValue 
    ::  LabelValue
newLabelValue =
  LabelValue
    { boolValue = Core.Nothing
    , int64Value = Core.Nothing
    , stringValue = Core.Nothing
    }

instance Core.FromJSON LabelValue where
        parseJSON
          = Core.withObject "LabelValue"
              (\ o ->
                 LabelValue Core.<$>
                   (o Core..:? "boolValue") Core.<*>
                     (o Core..:? "int64Value")
                     Core.<*> (o Core..:? "stringValue"))

instance Core.ToJSON LabelValue where
        toJSON LabelValue{..}
          = Core.object
              (Core.catMaybes
                 [("boolValue" Core..=) Core.<$> boolValue,
                  ("int64Value" Core..=) Core.. Core.AsText Core.<$>
                    int64Value,
                  ("stringValue" Core..=) Core.<$> stringValue])


-- | Parameters for a latency threshold SLI.
--
-- /See:/ 'newLatencyCriteria' smart constructor.
newtype LatencyCriteria = LatencyCriteria
    {
      -- | Good service is defined to be the count of requests made to this service that return in no more than threshold.
      threshold :: (Core.Maybe Core.GDuration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatencyCriteria' with the minimum fields required to make a request.
newLatencyCriteria 
    ::  LatencyCriteria
newLatencyCriteria = LatencyCriteria {threshold = Core.Nothing}

instance Core.FromJSON LatencyCriteria where
        parseJSON
          = Core.withObject "LatencyCriteria"
              (\ o ->
                 LatencyCriteria Core.<$> (o Core..:? "threshold"))

instance Core.ToJSON LatencyCriteria where
        toJSON LatencyCriteria{..}
          = Core.object
              (Core.catMaybes
                 [("threshold" Core..=) Core.<$> threshold])


-- | Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket.There are num/finite/buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 \<= i \< N-1): offset + (width * i). Lower bound (1 \<= i \< N): offset + (width * (i - 1)).
--
-- /See:/ 'newLinear' smart constructor.
data Linear = Linear
    {
      -- | Must be greater than 0.
      numFiniteBuckets :: (Core.Maybe Core.Int32)
      -- | Lower bound of the first bucket.
    , offset :: (Core.Maybe Core.Double)
      -- | Must be greater than 0.
    , width :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Linear' with the minimum fields required to make a request.
newLinear 
    ::  Linear
newLinear =
  Linear
    { numFiniteBuckets = Core.Nothing
    , offset = Core.Nothing
    , width = Core.Nothing
    }

instance Core.FromJSON Linear where
        parseJSON
          = Core.withObject "Linear"
              (\ o ->
                 Linear Core.<$>
                   (o Core..:? "numFiniteBuckets") Core.<*>
                     (o Core..:? "offset")
                     Core.<*> (o Core..:? "width"))

instance Core.ToJSON Linear where
        toJSON Linear{..}
          = Core.object
              (Core.catMaybes
                 [("numFiniteBuckets" Core..=) Core.<$>
                    numFiniteBuckets,
                  ("offset" Core..=) Core.<$> offset,
                  ("width" Core..=) Core.<$> width])


-- | The protocol for the ListAlertPolicies response.
--
-- /See:/ 'newListAlertPoliciesResponse' smart constructor.
data ListAlertPoliciesResponse = ListAlertPoliciesResponse
    {
      -- | The returned alert policies.
      alertPolicies :: (Core.Maybe [AlertPolicy])
      -- | If there might be more results than were returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | The total number of alert policies in all pages. This number is only an estimate, and may change in subsequent pages. https:\/\/aip.dev\/158
    , totalSize :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAlertPoliciesResponse' with the minimum fields required to make a request.
newListAlertPoliciesResponse 
    ::  ListAlertPoliciesResponse
newListAlertPoliciesResponse =
  ListAlertPoliciesResponse
    { alertPolicies = Core.Nothing
    , nextPageToken = Core.Nothing
    , totalSize = Core.Nothing
    }

instance Core.FromJSON ListAlertPoliciesResponse
         where
        parseJSON
          = Core.withObject "ListAlertPoliciesResponse"
              (\ o ->
                 ListAlertPoliciesResponse Core.<$>
                   (o Core..:? "alertPolicies" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "totalSize"))

instance Core.ToJSON ListAlertPoliciesResponse where
        toJSON ListAlertPoliciesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("alertPolicies" Core..=) Core.<$> alertPolicies,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("totalSize" Core..=) Core.<$> totalSize])


-- | The ListGroupMembers response.
--
-- /See:/ 'newListGroupMembersResponse' smart constructor.
data ListGroupMembersResponse = ListGroupMembersResponse
    {
      -- | A set of monitored resources in the group.
      members :: (Core.Maybe [MonitoredResource])
      -- | If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | The total number of elements matching this request.
    , totalSize :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGroupMembersResponse' with the minimum fields required to make a request.
newListGroupMembersResponse 
    ::  ListGroupMembersResponse
newListGroupMembersResponse =
  ListGroupMembersResponse
    { members = Core.Nothing
    , nextPageToken = Core.Nothing
    , totalSize = Core.Nothing
    }

instance Core.FromJSON ListGroupMembersResponse where
        parseJSON
          = Core.withObject "ListGroupMembersResponse"
              (\ o ->
                 ListGroupMembersResponse Core.<$>
                   (o Core..:? "members" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "totalSize"))

instance Core.ToJSON ListGroupMembersResponse where
        toJSON ListGroupMembersResponse{..}
          = Core.object
              (Core.catMaybes
                 [("members" Core..=) Core.<$> members,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("totalSize" Core..=) Core.<$> totalSize])


-- | The ListGroups response.
--
-- /See:/ 'newListGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse
    {
      -- | The groups that match the specified filters.
      group' :: (Core.Maybe [Group])
      -- | If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
newListGroupsResponse 
    ::  ListGroupsResponse
newListGroupsResponse =
  ListGroupsResponse {group' = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListGroupsResponse where
        parseJSON
          = Core.withObject "ListGroupsResponse"
              (\ o ->
                 ListGroupsResponse Core.<$>
                   (o Core..:? "group" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListGroupsResponse where
        toJSON ListGroupsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("group" Core..=) Core.<$> group',
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The ListMetricDescriptors response.
--
-- /See:/ 'newListMetricDescriptorsResponse' smart constructor.
data ListMetricDescriptorsResponse = ListMetricDescriptorsResponse
    {
      -- | The metric descriptors that are available to the project and that match the value of filter, if present.
      metricDescriptors :: (Core.Maybe [MetricDescriptor])
      -- | If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMetricDescriptorsResponse' with the minimum fields required to make a request.
newListMetricDescriptorsResponse 
    ::  ListMetricDescriptorsResponse
newListMetricDescriptorsResponse =
  ListMetricDescriptorsResponse
    {metricDescriptors = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListMetricDescriptorsResponse
         where
        parseJSON
          = Core.withObject "ListMetricDescriptorsResponse"
              (\ o ->
                 ListMetricDescriptorsResponse Core.<$>
                   (o Core..:? "metricDescriptors" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListMetricDescriptorsResponse
         where
        toJSON ListMetricDescriptorsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("metricDescriptors" Core..=) Core.<$>
                    metricDescriptors,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The ListMonitoredResourceDescriptors response.
--
-- /See:/ 'newListMonitoredResourceDescriptorsResponse' smart constructor.
data ListMonitoredResourceDescriptorsResponse = ListMonitoredResourceDescriptorsResponse
    {
      -- | If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The monitored resource descriptors that are available to this project and that match filter, if present.
    , resourceDescriptors :: (Core.Maybe [MonitoredResourceDescriptor])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMonitoredResourceDescriptorsResponse' with the minimum fields required to make a request.
newListMonitoredResourceDescriptorsResponse 
    ::  ListMonitoredResourceDescriptorsResponse
newListMonitoredResourceDescriptorsResponse =
  ListMonitoredResourceDescriptorsResponse
    {nextPageToken = Core.Nothing, resourceDescriptors = Core.Nothing}

instance Core.FromJSON
           ListMonitoredResourceDescriptorsResponse
         where
        parseJSON
          = Core.withObject
              "ListMonitoredResourceDescriptorsResponse"
              (\ o ->
                 ListMonitoredResourceDescriptorsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "resourceDescriptors" Core..!=
                        Core.mempty))

instance Core.ToJSON
           ListMonitoredResourceDescriptorsResponse
         where
        toJSON ListMonitoredResourceDescriptorsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("resourceDescriptors" Core..=) Core.<$>
                    resourceDescriptors])


-- | The ListNotificationChannelDescriptors response.
--
-- /See:/ 'newListNotificationChannelDescriptorsResponse' smart constructor.
data ListNotificationChannelDescriptorsResponse = ListNotificationChannelDescriptorsResponse
    {
      -- | The monitored resource descriptors supported for the specified project, optionally filtered.
      channelDescriptors :: (Core.Maybe [NotificationChannelDescriptor])
      -- | If not empty, indicates that there may be more results that match the request. Use the value in the page_token field in a subsequent request to fetch the next set of results. If empty, all results have been returned.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListNotificationChannelDescriptorsResponse' with the minimum fields required to make a request.
newListNotificationChannelDescriptorsResponse 
    ::  ListNotificationChannelDescriptorsResponse
newListNotificationChannelDescriptorsResponse =
  ListNotificationChannelDescriptorsResponse
    {channelDescriptors = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           ListNotificationChannelDescriptorsResponse
         where
        parseJSON
          = Core.withObject
              "ListNotificationChannelDescriptorsResponse"
              (\ o ->
                 ListNotificationChannelDescriptorsResponse Core.<$>
                   (o Core..:? "channelDescriptors" Core..!=
                      Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON
           ListNotificationChannelDescriptorsResponse
         where
        toJSON ListNotificationChannelDescriptorsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("channelDescriptors" Core..=) Core.<$>
                    channelDescriptors,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The ListNotificationChannels response.
--
-- /See:/ 'newListNotificationChannelsResponse' smart constructor.
data ListNotificationChannelsResponse = ListNotificationChannelsResponse
    {
      -- | If not empty, indicates that there may be more results that match the request. Use the value in the page_token field in a subsequent request to fetch the next set of results. If empty, all results have been returned.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The notification channels defined for the specified project.
    , notificationChannels :: (Core.Maybe [NotificationChannel])
      -- | The total number of notification channels in all pages. This number is only an estimate, and may change in subsequent pages. https:\/\/aip.dev\/158
    , totalSize :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListNotificationChannelsResponse' with the minimum fields required to make a request.
newListNotificationChannelsResponse 
    ::  ListNotificationChannelsResponse
newListNotificationChannelsResponse =
  ListNotificationChannelsResponse
    { nextPageToken = Core.Nothing
    , notificationChannels = Core.Nothing
    , totalSize = Core.Nothing
    }

instance Core.FromJSON
           ListNotificationChannelsResponse
         where
        parseJSON
          = Core.withObject "ListNotificationChannelsResponse"
              (\ o ->
                 ListNotificationChannelsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "notificationChannels" Core..!=
                        Core.mempty)
                     Core.<*> (o Core..:? "totalSize"))

instance Core.ToJSON ListNotificationChannelsResponse
         where
        toJSON ListNotificationChannelsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("notificationChannels" Core..=) Core.<$>
                    notificationChannels,
                  ("totalSize" Core..=) Core.<$> totalSize])


-- | The ListServiceLevelObjectives response.
--
-- /See:/ 'newListServiceLevelObjectivesResponse' smart constructor.
data ListServiceLevelObjectivesResponse = ListServiceLevelObjectivesResponse
    {
      -- | If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The ServiceLevelObjectives matching the specified filter.
    , serviceLevelObjectives :: (Core.Maybe [ServiceLevelObjective])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListServiceLevelObjectivesResponse' with the minimum fields required to make a request.
newListServiceLevelObjectivesResponse 
    ::  ListServiceLevelObjectivesResponse
newListServiceLevelObjectivesResponse =
  ListServiceLevelObjectivesResponse
    {nextPageToken = Core.Nothing, serviceLevelObjectives = Core.Nothing}

instance Core.FromJSON
           ListServiceLevelObjectivesResponse
         where
        parseJSON
          = Core.withObject
              "ListServiceLevelObjectivesResponse"
              (\ o ->
                 ListServiceLevelObjectivesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "serviceLevelObjectives" Core..!=
                        Core.mempty))

instance Core.ToJSON
           ListServiceLevelObjectivesResponse
         where
        toJSON ListServiceLevelObjectivesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("serviceLevelObjectives" Core..=) Core.<$>
                    serviceLevelObjectives])


-- | The ListServices response.
--
-- /See:/ 'newListServicesResponse' smart constructor.
data ListServicesResponse = ListServicesResponse
    {
      -- | If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The Services matching the specified filter.
    , services :: (Core.Maybe [Service])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListServicesResponse' with the minimum fields required to make a request.
newListServicesResponse 
    ::  ListServicesResponse
newListServicesResponse =
  ListServicesResponse {nextPageToken = Core.Nothing, services = Core.Nothing}

instance Core.FromJSON ListServicesResponse where
        parseJSON
          = Core.withObject "ListServicesResponse"
              (\ o ->
                 ListServicesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "services" Core..!= Core.mempty))

instance Core.ToJSON ListServicesResponse where
        toJSON ListServicesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("services" Core..=) Core.<$> services])


-- | The ListTimeSeries response.
--
-- /See:/ 'newListTimeSeriesResponse' smart constructor.
data ListTimeSeriesResponse = ListTimeSeriesResponse
    {
      -- | Query execution errors that may have caused the time series data returned to be incomplete.
      executionErrors :: (Core.Maybe [Status])
      -- | If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | One or more time series that match the filter included in the request.
    , timeSeries :: (Core.Maybe [TimeSeries])
      -- | The unit in which all time/series point values are reported. unit follows the UCUM format for units as seen in https:\/\/unitsofmeasure.org\/ucum.html. If different time/series have different units (for example, because they come from different metric types, or a unit is absent), then unit will be \"{not/a/unit}\".
    , unit :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTimeSeriesResponse' with the minimum fields required to make a request.
newListTimeSeriesResponse 
    ::  ListTimeSeriesResponse
newListTimeSeriesResponse =
  ListTimeSeriesResponse
    { executionErrors = Core.Nothing
    , nextPageToken = Core.Nothing
    , timeSeries = Core.Nothing
    , unit = Core.Nothing
    }

instance Core.FromJSON ListTimeSeriesResponse where
        parseJSON
          = Core.withObject "ListTimeSeriesResponse"
              (\ o ->
                 ListTimeSeriesResponse Core.<$>
                   (o Core..:? "executionErrors" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*>
                     (o Core..:? "timeSeries" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "unit"))

instance Core.ToJSON ListTimeSeriesResponse where
        toJSON ListTimeSeriesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("executionErrors" Core..=) Core.<$>
                    executionErrors,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("timeSeries" Core..=) Core.<$> timeSeries,
                  ("unit" Core..=) Core.<$> unit])


-- | The protocol for the ListUptimeCheckConfigs response.
--
-- /See:/ 'newListUptimeCheckConfigsResponse' smart constructor.
data ListUptimeCheckConfigsResponse = ListUptimeCheckConfigsResponse
    {
      -- | This field represents the pagination token to retrieve the next page of results. If the value is empty, it means no further results for the request. To retrieve the next page of results, the value of the next/page/token is passed to the subsequent List method call (in the request message\'s page_token field).
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The total number of Uptime check configurations for the project, irrespective of any pagination.
    , totalSize :: (Core.Maybe Core.Int32)
      -- | The returned Uptime check configurations.
    , uptimeCheckConfigs :: (Core.Maybe [UptimeCheckConfig])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUptimeCheckConfigsResponse' with the minimum fields required to make a request.
newListUptimeCheckConfigsResponse 
    ::  ListUptimeCheckConfigsResponse
newListUptimeCheckConfigsResponse =
  ListUptimeCheckConfigsResponse
    { nextPageToken = Core.Nothing
    , totalSize = Core.Nothing
    , uptimeCheckConfigs = Core.Nothing
    }

instance Core.FromJSON ListUptimeCheckConfigsResponse
         where
        parseJSON
          = Core.withObject "ListUptimeCheckConfigsResponse"
              (\ o ->
                 ListUptimeCheckConfigsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "totalSize")
                     Core.<*>
                     (o Core..:? "uptimeCheckConfigs" Core..!=
                        Core.mempty))

instance Core.ToJSON ListUptimeCheckConfigsResponse
         where
        toJSON ListUptimeCheckConfigsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("totalSize" Core..=) Core.<$> totalSize,
                  ("uptimeCheckConfigs" Core..=) Core.<$>
                    uptimeCheckConfigs])


-- | The protocol for the ListUptimeCheckIps response.
--
-- /See:/ 'newListUptimeCheckIpsResponse' smart constructor.
data ListUptimeCheckIpsResponse = ListUptimeCheckIpsResponse
    {
      -- | This field represents the pagination token to retrieve the next page of results. If the value is empty, it means no further results for the request. To retrieve the next page of results, the value of the next/page/token is passed to the subsequent List method call (in the request message\'s page_token field). NOTE: this field is not yet implemented
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The returned list of IP addresses (including region and location) that the checkers run from.
    , uptimeCheckIps :: (Core.Maybe [UptimeCheckIp])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUptimeCheckIpsResponse' with the minimum fields required to make a request.
newListUptimeCheckIpsResponse 
    ::  ListUptimeCheckIpsResponse
newListUptimeCheckIpsResponse =
  ListUptimeCheckIpsResponse
    {nextPageToken = Core.Nothing, uptimeCheckIps = Core.Nothing}

instance Core.FromJSON ListUptimeCheckIpsResponse
         where
        parseJSON
          = Core.withObject "ListUptimeCheckIpsResponse"
              (\ o ->
                 ListUptimeCheckIpsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "uptimeCheckIps" Core..!= Core.mempty))

instance Core.ToJSON ListUptimeCheckIpsResponse where
        toJSON ListUptimeCheckIpsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("uptimeCheckIps" Core..=) Core.<$> uptimeCheckIps])


-- | A condition type that checks whether a log message in the scoping project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name) satisfies the given filter. Logs from other projects in the metrics scope are not evaluated.
--
-- /See:/ 'newLogMatch' smart constructor.
data LogMatch = LogMatch
    {
      -- | Required. A logs-based filter. See Advanced Logs Queries (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced-queries) for how this filter should be constructed.
      filter :: (Core.Maybe Core.Text)
      -- | Optional. A map from a label key to an extractor expression, which is used to extract the value for this label key. Each entry in this map is a specification for how data should be extracted from log entries that match filter. Each combination of extracted values is treated as a separate rule for the purposes of triggering notifications. Label keys and corresponding values can be used in notifications generated by this condition.Please see the documentation on logs-based metric valueExtractors (https:\/\/cloud.google.com\/logging\/docs\/reference\/v2\/rest\/v2\/projects.metrics#LogMetric.FIELDS.value_extractor) for syntax and examples.
    , labelExtractors :: (Core.Maybe LogMatch_LabelExtractors)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogMatch' with the minimum fields required to make a request.
newLogMatch 
    ::  LogMatch
newLogMatch = LogMatch {filter = Core.Nothing, labelExtractors = Core.Nothing}

instance Core.FromJSON LogMatch where
        parseJSON
          = Core.withObject "LogMatch"
              (\ o ->
                 LogMatch Core.<$>
                   (o Core..:? "filter") Core.<*>
                     (o Core..:? "labelExtractors"))

instance Core.ToJSON LogMatch where
        toJSON LogMatch{..}
          = Core.object
              (Core.catMaybes
                 [("filter" Core..=) Core.<$> filter,
                  ("labelExtractors" Core..=) Core.<$>
                    labelExtractors])


-- | Optional. A map from a label key to an extractor expression, which is used to extract the value for this label key. Each entry in this map is a specification for how data should be extracted from log entries that match filter. Each combination of extracted values is treated as a separate rule for the purposes of triggering notifications. Label keys and corresponding values can be used in notifications generated by this condition.Please see the documentation on logs-based metric valueExtractors (https:\/\/cloud.google.com\/logging\/docs\/reference\/v2\/rest\/v2\/projects.metrics#LogMetric.FIELDS.value_extractor) for syntax and examples.
--
-- /See:/ 'newLogMatch_LabelExtractors' smart constructor.
newtype LogMatch_LabelExtractors = LogMatch_LabelExtractors
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogMatch_LabelExtractors' with the minimum fields required to make a request.
newLogMatch_LabelExtractors 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> LogMatch_LabelExtractors
newLogMatch_LabelExtractors addtional =
  LogMatch_LabelExtractors {addtional = addtional}

instance Core.FromJSON LogMatch_LabelExtractors where
        parseJSON
          = Core.withObject "LogMatch_LabelExtractors"
              (\ o ->
                 LogMatch_LabelExtractors Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON LogMatch_LabelExtractors where
        toJSON LogMatch_LabelExtractors{..}
          = Core.toJSON addtional


-- | Istio service scoped to an Istio mesh. Anthos clusters running ASM \< 1.6.8 will have their services ingested as this type.
--
-- /See:/ 'newMeshIstio' smart constructor.
data MeshIstio = MeshIstio
    {
      -- | Identifier for the mesh in which this Istio service is defined. Corresponds to the mesh_uid metric label in Istio metrics.
      meshUid :: (Core.Maybe Core.Text)
      -- | The name of the Istio service underlying this service. Corresponds to the destination/service/name metric label in Istio metrics.
    , serviceName :: (Core.Maybe Core.Text)
      -- | The namespace of the Istio service underlying this service. Corresponds to the destination/service/namespace metric label in Istio metrics.
    , serviceNamespace :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MeshIstio' with the minimum fields required to make a request.
newMeshIstio 
    ::  MeshIstio
newMeshIstio =
  MeshIstio
    { meshUid = Core.Nothing
    , serviceName = Core.Nothing
    , serviceNamespace = Core.Nothing
    }

instance Core.FromJSON MeshIstio where
        parseJSON
          = Core.withObject "MeshIstio"
              (\ o ->
                 MeshIstio Core.<$>
                   (o Core..:? "meshUid") Core.<*>
                     (o Core..:? "serviceName")
                     Core.<*> (o Core..:? "serviceNamespace"))

instance Core.ToJSON MeshIstio where
        toJSON MeshIstio{..}
          = Core.object
              (Core.catMaybes
                 [("meshUid" Core..=) Core.<$> meshUid,
                  ("serviceName" Core..=) Core.<$> serviceName,
                  ("serviceNamespace" Core..=) Core.<$>
                    serviceNamespace])


-- | A specific metric, identified by specifying values for all of the labels of a MetricDescriptor.
--
-- /See:/ 'newMetric' smart constructor.
data Metric = Metric
    {
      -- | The set of label values that uniquely identify this metric. All labels listed in the MetricDescriptor must be assigned values.
      labels :: (Core.Maybe Metric_Labels)
      -- | An existing metric type, see google.api.MetricDescriptor. For example, custom.googleapis.com\/invoice\/paid\/amount.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric' with the minimum fields required to make a request.
newMetric 
    ::  Metric
newMetric = Metric {labels = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON Metric where
        parseJSON
          = Core.withObject "Metric"
              (\ o ->
                 Metric Core.<$>
                   (o Core..:? "labels") Core.<*> (o Core..:? "type"))

instance Core.ToJSON Metric where
        toJSON Metric{..}
          = Core.object
              (Core.catMaybes
                 [("labels" Core..=) Core.<$> labels,
                  ("type" Core..=) Core.<$> type'])


-- | The set of label values that uniquely identify this metric. All labels listed in the MetricDescriptor must be assigned values.
--
-- /See:/ 'newMetric_Labels' smart constructor.
newtype Metric_Labels = Metric_Labels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric_Labels' with the minimum fields required to make a request.
newMetric_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> Metric_Labels
newMetric_Labels addtional = Metric_Labels {addtional = addtional}

instance Core.FromJSON Metric_Labels where
        parseJSON
          = Core.withObject "Metric_Labels"
              (\ o ->
                 Metric_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Metric_Labels where
        toJSON Metric_Labels{..} = Core.toJSON addtional


-- | A condition type that checks that monitored resources are reporting data. The configuration defines a metric and a set of monitored resources. The predicate is considered in violation when a time series for the specified metric of a monitored resource does not include any data in the specified duration.
--
-- /See:/ 'newMetricAbsence' smart constructor.
data MetricAbsence = MetricAbsence
    {
      -- | Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources). Multiple aggregations are applied in the order specified.This field is similar to the one in the ListTimeSeries request (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.timeSeries\/list). It is advisable to use the ListTimeSeries method when debugging this field.
      aggregations :: (Core.Maybe [Aggregation])
      -- | The amount of time that a time series must fail to report new data to be considered failing. The minimum value of this field is 120 seconds. Larger values that are a multiple of a minute--for example, 240 or 300 seconds--are supported. If an invalid value is given, an error will be returned. The Duration.nanos field is ignored.
    , duration :: (Core.Maybe Core.GDuration)
      -- | Required. A filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the ListTimeSeries request (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.timeSeries\/list) (that call is useful to verify the time series that will be retrieved \/ processed). The filter must specify the metric type and the resource type. Optionally, it can specify resource labels and metric labels. This field must not exceed 2048 Unicode characters in length.
    , filter :: (Core.Maybe Core.Text)
      -- | The number\/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations.
    , trigger :: (Core.Maybe Trigger)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricAbsence' with the minimum fields required to make a request.
newMetricAbsence 
    ::  MetricAbsence
newMetricAbsence =
  MetricAbsence
    { aggregations = Core.Nothing
    , duration = Core.Nothing
    , filter = Core.Nothing
    , trigger = Core.Nothing
    }

instance Core.FromJSON MetricAbsence where
        parseJSON
          = Core.withObject "MetricAbsence"
              (\ o ->
                 MetricAbsence Core.<$>
                   (o Core..:? "aggregations" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "duration")
                     Core.<*> (o Core..:? "filter")
                     Core.<*> (o Core..:? "trigger"))

instance Core.ToJSON MetricAbsence where
        toJSON MetricAbsence{..}
          = Core.object
              (Core.catMaybes
                 [("aggregations" Core..=) Core.<$> aggregations,
                  ("duration" Core..=) Core.<$> duration,
                  ("filter" Core..=) Core.<$> filter,
                  ("trigger" Core..=) Core.<$> trigger])


-- | Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type\'s existing data unusable.
--
-- /See:/ 'newMetricDescriptor' smart constructor.
data MetricDescriptor = MetricDescriptor
    {
      -- | A detailed description of the metric, which can be used in documentation.
      description :: (Core.Maybe Core.Text)
      -- | A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example \"Request count\". This field is optional but it is recommended to be set for any metrics associated with user-visible concepts, such as Quota.
    , displayName :: (Core.Maybe Core.Text)
      -- | The set of labels that can be used to describe a specific instance of this metric type. For example, the appengine.googleapis.com\/http\/server\/response/latencies metric type has a label for the HTTP response code, response/code, so you can look at latencies for successful responses or just for responses that failed.
    , labels :: (Core.Maybe [LabelDescriptor])
      -- | Optional. The launch stage of the metric definition.
    , launchStage :: (Core.Maybe MetricDescriptor_LaunchStage)
      -- | Optional. Metadata which can be used to guide usage of the metric.
    , metadata :: (Core.Maybe MetricDescriptorMetadata)
      -- | Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metric/kind and value/type might not be supported.
    , metricKind :: (Core.Maybe MetricDescriptor_MetricKind)
      -- | Read-only. If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here.
    , monitoredResourceTypes :: (Core.Maybe [Core.Text])
      -- | The resource name of the metric descriptor.
    , name :: (Core.Maybe Core.Text)
      -- | The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined metric types have the DNS name custom.googleapis.com or external.googleapis.com. Metric types should use a natural hierarchical grouping. For example: \"custom.googleapis.com\/invoice\/paid\/amount\" \"external.googleapis.com\/prometheus\/up\" \"appengine.googleapis.com\/http\/server\/response_latencies\"
    , type' :: (Core.Maybe Core.Text)
      -- | The units in which the metric value is reported. It is only applicable if the value/type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of the stored metric values.Different systems might scale the values to be more easily displayed (so a value of 0.02kBy might be displayed as 20By, and a value of 3523kBy might be displayed as 3.5MBy). However, if the unit is kBy, then the value of the metric is always in thousands of bytes, no matter how it might be displayed.If you want a custom metric to record the exact number of CPU-seconds used by a job, you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as 12005.Alternatively, if you want a custom metric to record data in a more granular way, you can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value 12.005 (which is 12005\/1000), or use Kis{CPU} and write 11.723 (which is 12005\/1024).The supported units
      -- are a subset of The Unified Code for Units of Measure (https:\/\/unitsofmeasure.org\/ucum.html) standard:Basic units (UNIT) bit bit By byte s second min minute h hour d day 1 dimensionlessPrefixes (PREFIX) k kilo (10^3) M mega (10^6) G giga (10^9) T tera (10^12) P peta (10^15) E exa (10^18) Z zetta (10^21) Y yotta (10^24) m milli (10^-3) u micro (10^-6) n nano (10^-9) p pico (10^-12) f femto (10^-15) a atto (10^-18) z zepto (10^-21) y yocto (10^-24) Ki kibi (2^10) Mi mebi (2^20) Gi gibi (2^30) Ti tebi (2^40) Pi pebi (2^50)GrammarThe grammar also includes these connectors: \/ division or ratio (as an infix operator). For examples, kBy\/{email} or MiBy\/10ms (although you should almost never have \/s in a metric unit; rates should always be computed at query time from the underlying cumulative or delta value). . multiplication or composition (as an infix operator). For examples, GBy.d or k{watt}.h.The grammar for a unit is as follows: Expression = Component { \".\" Component } { \"\/\" Component } ; Component =
      -- ( [ PREFIX ] UNIT | \"%\" ) [ Annotation ] | Annotation | \"1\" ; Annotation = \"{\" NAME \"}\" ; Notes: Annotation is just a comment if it follows a UNIT. If the annotation is used alone, then the unit is equivalent to 1. For examples, {request}\/s == 1\/s, By{transmitted}\/s == By\/s. NAME is a sequence of non-blank printable ASCII characters not containing { or }. 1 represents a unitary dimensionless unit (https:\/\/en.wikipedia.org\/wiki\/Dimensionless/quantity) of 1, such as in 1\/s. It is typically used when none of the basic units are appropriate. For example, \"new users per day\" can be represented as 1\/d or {new-users}\/d (and a metric value 5 would mean \"5 new users). Alternatively, \"thousands of page views per day\" would be represented as 1000\/d or k1\/d or k{page_views}\/d (and a metric value of 5.3 would mean \"5300 page views per day\"). % represents dimensionless value of 1\/100, and annotates values giving a percentage (so the metric values are typically in the range of 0..100, and a
      -- metric value 3 means \"3 percent\"). 10^2.% indicates a metric contains a ratio, typically in the range 0..1, that will be multiplied by 100 and displayed as a percentage (so a metric value 0.03 means \"3 percent\").
    , unit :: (Core.Maybe Core.Text)
      -- | Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric/kind and value/type might not be supported.
    , valueType :: (Core.Maybe MetricDescriptor_ValueType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricDescriptor' with the minimum fields required to make a request.
newMetricDescriptor 
    ::  MetricDescriptor
newMetricDescriptor =
  MetricDescriptor
    { description = Core.Nothing
    , displayName = Core.Nothing
    , labels = Core.Nothing
    , launchStage = Core.Nothing
    , metadata = Core.Nothing
    , metricKind = Core.Nothing
    , monitoredResourceTypes = Core.Nothing
    , name = Core.Nothing
    , type' = Core.Nothing
    , unit = Core.Nothing
    , valueType = Core.Nothing
    }

instance Core.FromJSON MetricDescriptor where
        parseJSON
          = Core.withObject "MetricDescriptor"
              (\ o ->
                 MetricDescriptor Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "labels" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "metricKind")
                     Core.<*>
                     (o Core..:? "monitoredResourceTypes" Core..!=
                        Core.mempty)
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "unit")
                     Core.<*> (o Core..:? "valueType"))

instance Core.ToJSON MetricDescriptor where
        toJSON MetricDescriptor{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("labels" Core..=) Core.<$> labels,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("metricKind" Core..=) Core.<$> metricKind,
                  ("monitoredResourceTypes" Core..=) Core.<$>
                    monitoredResourceTypes,
                  ("name" Core..=) Core.<$> name,
                  ("type" Core..=) Core.<$> type',
                  ("unit" Core..=) Core.<$> unit,
                  ("valueType" Core..=) Core.<$> valueType])


-- | Additional annotations that can be used to guide the usage of a metric.
--
-- /See:/ 'newMetricDescriptorMetadata' smart constructor.
data MetricDescriptorMetadata = MetricDescriptorMetadata
    {
      -- | The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.
      ingestDelay :: (Core.Maybe Core.GDuration)
      -- | Deprecated. Must use the MetricDescriptor.launch_stage instead.
    , launchStage :: (Core.Maybe MetricDescriptorMetadata_LaunchStage)
      -- | The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.
    , samplePeriod :: (Core.Maybe Core.GDuration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricDescriptorMetadata' with the minimum fields required to make a request.
newMetricDescriptorMetadata 
    ::  MetricDescriptorMetadata
newMetricDescriptorMetadata =
  MetricDescriptorMetadata
    { ingestDelay = Core.Nothing
    , launchStage = Core.Nothing
    , samplePeriod = Core.Nothing
    }

instance Core.FromJSON MetricDescriptorMetadata where
        parseJSON
          = Core.withObject "MetricDescriptorMetadata"
              (\ o ->
                 MetricDescriptorMetadata Core.<$>
                   (o Core..:? "ingestDelay") Core.<*>
                     (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "samplePeriod"))

instance Core.ToJSON MetricDescriptorMetadata where
        toJSON MetricDescriptorMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("ingestDelay" Core..=) Core.<$> ingestDelay,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("samplePeriod" Core..=) Core.<$> samplePeriod])


-- | A MetricRange is used when each window is good when the value x of a single TimeSeries satisfies range.min \<= x \<= range.max. The provided TimeSeries must have ValueType = INT64 or ValueType = DOUBLE and MetricKind = GAUGE.
--
-- /See:/ 'newMetricRange' smart constructor.
data MetricRange = MetricRange
    {
      -- | Range of values considered \"good.\" For a one-sided range, set one bound to an infinite value.
      range :: (Core.Maybe GoogleMonitoringV3Range)
      -- | A monitoring filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying the TimeSeries to use for evaluating window quality.
    , timeSeries :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricRange' with the minimum fields required to make a request.
newMetricRange 
    ::  MetricRange
newMetricRange = MetricRange {range = Core.Nothing, timeSeries = Core.Nothing}

instance Core.FromJSON MetricRange where
        parseJSON
          = Core.withObject "MetricRange"
              (\ o ->
                 MetricRange Core.<$>
                   (o Core..:? "range") Core.<*>
                     (o Core..:? "timeSeries"))

instance Core.ToJSON MetricRange where
        toJSON MetricRange{..}
          = Core.object
              (Core.catMaybes
                 [("range" Core..=) Core.<$> range,
                  ("timeSeries" Core..=) Core.<$> timeSeries])


-- | A condition type that compares a collection of time series against a threshold.
--
-- /See:/ 'newMetricThreshold' smart constructor.
data MetricThreshold = MetricThreshold
    {
      -- | Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources). Multiple aggregations are applied in the order specified.This field is similar to the one in the ListTimeSeries request (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.timeSeries\/list). It is advisable to use the ListTimeSeries method when debugging this field.
      aggregations :: (Core.Maybe [Aggregation])
      -- | The comparison to apply between the time series (indicated by filter and aggregation) and the threshold (indicated by threshold/value). The comparison is applied on each time series, with the time series on the left-hand side and the threshold on the right-hand side.Only COMPARISON/LT and COMPARISON_GT are supported currently.
    , comparison :: (Core.Maybe MetricThreshold_Comparison)
      -- | Specifies the alignment of data points in individual time series selected by denominatorFilter as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources).When computing ratios, the aggregations and denominator_aggregations fields must use the same alignment period and produce time series that have the same periodicity and labels.
    , denominatorAggregations :: (Core.Maybe [Aggregation])
      -- | A filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) that identifies a time series that should be used as the denominator of a ratio that will be compared with the threshold. If a denominator_filter is specified, the time series specified by the filter field will be used as the numerator.The filter must specify the metric type and optionally may contain restrictions on resource type, resource labels, and metric labels. This field may not exceed 2048 Unicode characters in length.
    , denominatorFilter :: (Core.Maybe Core.Text)
      -- | The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
    , duration :: (Core.Maybe Core.GDuration)
      -- | A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
    , evaluationMissingData :: (Core.Maybe MetricThreshold_EvaluationMissingData)
      -- | Required. A filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the ListTimeSeries request (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.timeSeries\/list) (that call is useful to verify the time series that will be retrieved \/ processed). The filter must specify the metric type and the resource type. Optionally, it can specify resource labels and metric labels. This field must not exceed 2048 Unicode characters in length.
    , filter :: (Core.Maybe Core.Text)
      -- | A value against which to compare the time series.
    , thresholdValue :: (Core.Maybe Core.Double)
      -- | The number\/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator/filter and denominator/aggregations are specified.
    , trigger :: (Core.Maybe Trigger)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricThreshold' with the minimum fields required to make a request.
newMetricThreshold 
    ::  MetricThreshold
newMetricThreshold =
  MetricThreshold
    { aggregations = Core.Nothing
    , comparison = Core.Nothing
    , denominatorAggregations = Core.Nothing
    , denominatorFilter = Core.Nothing
    , duration = Core.Nothing
    , evaluationMissingData = Core.Nothing
    , filter = Core.Nothing
    , thresholdValue = Core.Nothing
    , trigger = Core.Nothing
    }

instance Core.FromJSON MetricThreshold where
        parseJSON
          = Core.withObject "MetricThreshold"
              (\ o ->
                 MetricThreshold Core.<$>
                   (o Core..:? "aggregations" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "comparison")
                     Core.<*>
                     (o Core..:? "denominatorAggregations" Core..!=
                        Core.mempty)
                     Core.<*> (o Core..:? "denominatorFilter")
                     Core.<*> (o Core..:? "duration")
                     Core.<*> (o Core..:? "evaluationMissingData")
                     Core.<*> (o Core..:? "filter")
                     Core.<*> (o Core..:? "thresholdValue")
                     Core.<*> (o Core..:? "trigger"))

instance Core.ToJSON MetricThreshold where
        toJSON MetricThreshold{..}
          = Core.object
              (Core.catMaybes
                 [("aggregations" Core..=) Core.<$> aggregations,
                  ("comparison" Core..=) Core.<$> comparison,
                  ("denominatorAggregations" Core..=) Core.<$>
                    denominatorAggregations,
                  ("denominatorFilter" Core..=) Core.<$>
                    denominatorFilter,
                  ("duration" Core..=) Core.<$> duration,
                  ("evaluationMissingData" Core..=) Core.<$>
                    evaluationMissingData,
                  ("filter" Core..=) Core.<$> filter,
                  ("thresholdValue" Core..=) Core.<$> thresholdValue,
                  ("trigger" Core..=) Core.<$> trigger])


-- | An object representing a resource that can be used for monitoring, logging, billing, or other purposes. Examples include virtual machine instances, databases, and storage devices such as disks. The type field identifies a MonitoredResourceDescriptor object that describes the resource\'s schema. Information in the labels field identifies the actual resource and its attributes according to the schema. For example, a particular Compute Engine VM instance could be represented by the following object, because the MonitoredResourceDescriptor for \"gce/instance\" has labels \"project/id\", \"instance/id\" and \"zone\": { \"type\": \"gce/instance\", \"labels\": { \"project/id\": \"my-project\", \"instance/id\": \"12345678901234\", \"zone\": \"us-central1-a\" }}
--
-- /See:/ 'newMonitoredResource' smart constructor.
data MonitoredResource = MonitoredResource
    {
      -- | Required. Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels \"project/id\", \"instance/id\", and \"zone\".
      labels :: (Core.Maybe MonitoredResource_Labels)
      -- | Required. The monitored resource type. This field must match the type field of a MonitoredResourceDescriptor object. For example, the type of a Compute Engine VM instance is gce_instance. For a list of types, see Monitoring resource types (https:\/\/cloud.google.com\/monitoring\/api\/resources) and Logging resource types (https:\/\/cloud.google.com\/logging\/docs\/api\/v2\/resource-list).
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResource' with the minimum fields required to make a request.
newMonitoredResource 
    ::  MonitoredResource
newMonitoredResource =
  MonitoredResource {labels = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON MonitoredResource where
        parseJSON
          = Core.withObject "MonitoredResource"
              (\ o ->
                 MonitoredResource Core.<$>
                   (o Core..:? "labels") Core.<*> (o Core..:? "type"))

instance Core.ToJSON MonitoredResource where
        toJSON MonitoredResource{..}
          = Core.object
              (Core.catMaybes
                 [("labels" Core..=) Core.<$> labels,
                  ("type" Core..=) Core.<$> type'])


-- | Required. Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels \"project/id\", \"instance/id\", and \"zone\".
--
-- /See:/ 'newMonitoredResource_Labels' smart constructor.
newtype MonitoredResource_Labels = MonitoredResource_Labels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResource_Labels' with the minimum fields required to make a request.
newMonitoredResource_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> MonitoredResource_Labels
newMonitoredResource_Labels addtional =
  MonitoredResource_Labels {addtional = addtional}

instance Core.FromJSON MonitoredResource_Labels where
        parseJSON
          = Core.withObject "MonitoredResource_Labels"
              (\ o ->
                 MonitoredResource_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON MonitoredResource_Labels where
        toJSON MonitoredResource_Labels{..}
          = Core.toJSON addtional


-- | An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of \"gce/instance\" and specifies the use of the labels \"instance/id\" and \"zone\" to identify particular VM instances.Different APIs can support different monitored resource types. APIs generally provide a list method that returns the monitored resource descriptors used by the API.
--
-- /See:/ 'newMonitoredResourceDescriptor' smart constructor.
data MonitoredResourceDescriptor = MonitoredResourceDescriptor
    {
      -- | Optional. A detailed description of the monitored resource type that might be used in documentation.
      description :: (Core.Maybe Core.Text)
      -- | Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, \"Google Cloud SQL Database\".
    , displayName :: (Core.Maybe Core.Text)
      -- | Required. A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels \"database_id\" and \"zone\".
    , labels :: (Core.Maybe [LabelDescriptor])
      -- | Optional. The launch stage of the monitored resource definition.
    , launchStage :: (Core.Maybe MonitoredResourceDescriptor_LaunchStage)
      -- | Optional. The resource name of the monitored resource descriptor: \"projects\/{project/id}\/monitoredResourceDescriptors\/{type}\" where {type} is the value of the type field in this object and {project/id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format \"monitoredResourceDescriptors\/{type}\".
    , name :: (Core.Maybe Core.Text)
      -- | Required. The monitored resource type. For example, the type \"cloudsql_database\" represents databases in Google Cloud SQL. For a list of types, see Monitoring resource types (https:\/\/cloud.google.com\/monitoring\/api\/resources) and Logging resource types (https:\/\/cloud.google.com\/logging\/docs\/api\/v2\/resource-list).
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResourceDescriptor' with the minimum fields required to make a request.
newMonitoredResourceDescriptor 
    ::  MonitoredResourceDescriptor
newMonitoredResourceDescriptor =
  MonitoredResourceDescriptor
    { description = Core.Nothing
    , displayName = Core.Nothing
    , labels = Core.Nothing
    , launchStage = Core.Nothing
    , name = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON MonitoredResourceDescriptor
         where
        parseJSON
          = Core.withObject "MonitoredResourceDescriptor"
              (\ o ->
                 MonitoredResourceDescriptor Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "labels" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON MonitoredResourceDescriptor
         where
        toJSON MonitoredResourceDescriptor{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("labels" Core..=) Core.<$> labels,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("name" Core..=) Core.<$> name,
                  ("type" Core..=) Core.<$> type'])


-- | Auxiliary metadata for a MonitoredResource object. MonitoredResource objects contain the minimum set of information to uniquely identify a monitored resource instance. There is some other useful auxiliary metadata. Monitoring and Logging use an ingestion pipeline to extract metadata for cloud resources of all types, and store the metadata in this message.
--
-- /See:/ 'newMonitoredResourceMetadata' smart constructor.
data MonitoredResourceMetadata = MonitoredResourceMetadata
    {
      -- | Output only. Values for predefined system metadata labels. System labels are a kind of metadata extracted by Google, including \"machine/image\", \"vpc\", \"subnet/id\", \"security/group\", \"name\", etc. System label values can be only strings, Boolean values, or a list of strings. For example: { \"name\": \"my-test-instance\", \"security/group\": [\"a\", \"b\", \"c\"], \"spot_instance\": false }
      systemLabels :: (Core.Maybe MonitoredResourceMetadata_SystemLabels)
      -- | Output only. A map of user-defined metadata labels.
    , userLabels :: (Core.Maybe MonitoredResourceMetadata_UserLabels)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResourceMetadata' with the minimum fields required to make a request.
newMonitoredResourceMetadata 
    ::  MonitoredResourceMetadata
newMonitoredResourceMetadata =
  MonitoredResourceMetadata
    {systemLabels = Core.Nothing, userLabels = Core.Nothing}

instance Core.FromJSON MonitoredResourceMetadata
         where
        parseJSON
          = Core.withObject "MonitoredResourceMetadata"
              (\ o ->
                 MonitoredResourceMetadata Core.<$>
                   (o Core..:? "systemLabels") Core.<*>
                     (o Core..:? "userLabels"))

instance Core.ToJSON MonitoredResourceMetadata where
        toJSON MonitoredResourceMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("systemLabels" Core..=) Core.<$> systemLabels,
                  ("userLabels" Core..=) Core.<$> userLabels])


-- | Output only. Values for predefined system metadata labels. System labels are a kind of metadata extracted by Google, including \"machine/image\", \"vpc\", \"subnet/id\", \"security/group\", \"name\", etc. System label values can be only strings, Boolean values, or a list of strings. For example: { \"name\": \"my-test-instance\", \"security/group\": [\"a\", \"b\", \"c\"], \"spot_instance\": false }
--
-- /See:/ 'newMonitoredResourceMetadata_SystemLabels' smart constructor.
newtype MonitoredResourceMetadata_SystemLabels = MonitoredResourceMetadata_SystemLabels
    {
      -- | Properties of the object.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResourceMetadata_SystemLabels' with the minimum fields required to make a request.
newMonitoredResourceMetadata_SystemLabels 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'addtional'.
    -> MonitoredResourceMetadata_SystemLabels
newMonitoredResourceMetadata_SystemLabels addtional =
  MonitoredResourceMetadata_SystemLabels {addtional = addtional}

instance Core.FromJSON
           MonitoredResourceMetadata_SystemLabels
         where
        parseJSON
          = Core.withObject
              "MonitoredResourceMetadata_SystemLabels"
              (\ o ->
                 MonitoredResourceMetadata_SystemLabels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           MonitoredResourceMetadata_SystemLabels
         where
        toJSON MonitoredResourceMetadata_SystemLabels{..}
          = Core.toJSON addtional


-- | Output only. A map of user-defined metadata labels.
--
-- /See:/ 'newMonitoredResourceMetadata_UserLabels' smart constructor.
newtype MonitoredResourceMetadata_UserLabels = MonitoredResourceMetadata_UserLabels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResourceMetadata_UserLabels' with the minimum fields required to make a request.
newMonitoredResourceMetadata_UserLabels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> MonitoredResourceMetadata_UserLabels
newMonitoredResourceMetadata_UserLabels addtional =
  MonitoredResourceMetadata_UserLabels {addtional = addtional}

instance Core.FromJSON
           MonitoredResourceMetadata_UserLabels
         where
        parseJSON
          = Core.withObject
              "MonitoredResourceMetadata_UserLabels"
              (\ o ->
                 MonitoredResourceMetadata_UserLabels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           MonitoredResourceMetadata_UserLabels
         where
        toJSON MonitoredResourceMetadata_UserLabels{..}
          = Core.toJSON addtional


-- | A condition type that allows alert policies to be defined using Monitoring Query Language (https:\/\/cloud.google.com\/monitoring\/mql).
--
-- /See:/ 'newMonitoringQueryLanguageCondition' smart constructor.
data MonitoringQueryLanguageCondition = MonitoringQueryLanguageCondition
    {
      -- | The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
      duration :: (Core.Maybe Core.GDuration)
      -- | A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
    , evaluationMissingData :: (Core.Maybe MonitoringQueryLanguageCondition_EvaluationMissingData)
      -- | Monitoring Query Language (https:\/\/cloud.google.com\/monitoring\/mql) query that outputs a boolean stream.
    , query :: (Core.Maybe Core.Text)
      -- | The number\/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator/filter and denominator/aggregations are specified.
    , trigger :: (Core.Maybe Trigger)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringQueryLanguageCondition' with the minimum fields required to make a request.
newMonitoringQueryLanguageCondition 
    ::  MonitoringQueryLanguageCondition
newMonitoringQueryLanguageCondition =
  MonitoringQueryLanguageCondition
    { duration = Core.Nothing
    , evaluationMissingData = Core.Nothing
    , query = Core.Nothing
    , trigger = Core.Nothing
    }

instance Core.FromJSON
           MonitoringQueryLanguageCondition
         where
        parseJSON
          = Core.withObject "MonitoringQueryLanguageCondition"
              (\ o ->
                 MonitoringQueryLanguageCondition Core.<$>
                   (o Core..:? "duration") Core.<*>
                     (o Core..:? "evaluationMissingData")
                     Core.<*> (o Core..:? "query")
                     Core.<*> (o Core..:? "trigger"))

instance Core.ToJSON MonitoringQueryLanguageCondition
         where
        toJSON MonitoringQueryLanguageCondition{..}
          = Core.object
              (Core.catMaybes
                 [("duration" Core..=) Core.<$> duration,
                  ("evaluationMissingData" Core..=) Core.<$>
                    evaluationMissingData,
                  ("query" Core..=) Core.<$> query,
                  ("trigger" Core..=) Core.<$> trigger])


-- | Describes a change made to a configuration.
--
-- /See:/ 'newMutationRecord' smart constructor.
data MutationRecord = MutationRecord
    {
      -- | When the change occurred.
      mutateTime :: (Core.Maybe Core.DateTime')
      -- | The email address of the user making the change.
    , mutatedBy :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MutationRecord' with the minimum fields required to make a request.
newMutationRecord 
    ::  MutationRecord
newMutationRecord =
  MutationRecord {mutateTime = Core.Nothing, mutatedBy = Core.Nothing}

instance Core.FromJSON MutationRecord where
        parseJSON
          = Core.withObject "MutationRecord"
              (\ o ->
                 MutationRecord Core.<$>
                   (o Core..:? "mutateTime") Core.<*>
                     (o Core..:? "mutatedBy"))

instance Core.ToJSON MutationRecord where
        toJSON MutationRecord{..}
          = Core.object
              (Core.catMaybes
                 [("mutateTime" Core..=) Core.<$> mutateTime,
                  ("mutatedBy" Core..=) Core.<$> mutatedBy])


-- | A NotificationChannel is a medium through which an alert is delivered when a policy violation is detected. Examples of channels include email, SMS, and third-party messaging applications. Fields containing sensitive information like authentication tokens or contact info are only partially populated on retrieval.
--
-- /See:/ 'newNotificationChannel' smart constructor.
data NotificationChannel = NotificationChannel
    {
      -- | Record of the creation of this channel.
      creationRecord :: (Core.Maybe MutationRecord)
      -- | An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
    , description :: (Core.Maybe Core.Text)
      -- | An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
    , displayName :: (Core.Maybe Core.Text)
      -- | Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
    , enabled :: (Core.Maybe Core.Bool)
      -- | Configuration fields that define the channel and its behavior. The permissible and required labels are specified in the NotificationChannelDescriptor.labels of the NotificationChannelDescriptor corresponding to the type field.
    , labels :: (Core.Maybe NotificationChannel_Labels)
      -- | Records of the modification of this channel.
    , mutationRecords :: (Core.Maybe [MutationRecord])
      -- | The full REST resource name for this channel. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/notificationChannels\/[CHANNEL/ID] The [CHANNEL_ID] is automatically assigned by the server on creation.
    , name :: (Core.Maybe Core.Text)
      -- | The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field.
    , type' :: (Core.Maybe Core.Text)
      -- | User-supplied key\/value data that does not need to conform to the corresponding NotificationChannelDescriptor\'s schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
    , userLabels :: (Core.Maybe NotificationChannel_UserLabels)
      -- | Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
    , verificationStatus :: (Core.Maybe NotificationChannel_VerificationStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationChannel' with the minimum fields required to make a request.
newNotificationChannel 
    ::  NotificationChannel
newNotificationChannel =
  NotificationChannel
    { creationRecord = Core.Nothing
    , description = Core.Nothing
    , displayName = Core.Nothing
    , enabled = Core.Nothing
    , labels = Core.Nothing
    , mutationRecords = Core.Nothing
    , name = Core.Nothing
    , type' = Core.Nothing
    , userLabels = Core.Nothing
    , verificationStatus = Core.Nothing
    }

instance Core.FromJSON NotificationChannel where
        parseJSON
          = Core.withObject "NotificationChannel"
              (\ o ->
                 NotificationChannel Core.<$>
                   (o Core..:? "creationRecord") Core.<*>
                     (o Core..:? "description")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "enabled")
                     Core.<*> (o Core..:? "labels")
                     Core.<*>
                     (o Core..:? "mutationRecords" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "userLabels")
                     Core.<*> (o Core..:? "verificationStatus"))

instance Core.ToJSON NotificationChannel where
        toJSON NotificationChannel{..}
          = Core.object
              (Core.catMaybes
                 [("creationRecord" Core..=) Core.<$> creationRecord,
                  ("description" Core..=) Core.<$> description,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("enabled" Core..=) Core.<$> enabled,
                  ("labels" Core..=) Core.<$> labels,
                  ("mutationRecords" Core..=) Core.<$> mutationRecords,
                  ("name" Core..=) Core.<$> name,
                  ("type" Core..=) Core.<$> type',
                  ("userLabels" Core..=) Core.<$> userLabels,
                  ("verificationStatus" Core..=) Core.<$>
                    verificationStatus])


-- | Configuration fields that define the channel and its behavior. The permissible and required labels are specified in the NotificationChannelDescriptor.labels of the NotificationChannelDescriptor corresponding to the type field.
--
-- /See:/ 'newNotificationChannel_Labels' smart constructor.
newtype NotificationChannel_Labels = NotificationChannel_Labels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationChannel_Labels' with the minimum fields required to make a request.
newNotificationChannel_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> NotificationChannel_Labels
newNotificationChannel_Labels addtional =
  NotificationChannel_Labels {addtional = addtional}

instance Core.FromJSON NotificationChannel_Labels
         where
        parseJSON
          = Core.withObject "NotificationChannel_Labels"
              (\ o ->
                 NotificationChannel_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON NotificationChannel_Labels where
        toJSON NotificationChannel_Labels{..}
          = Core.toJSON addtional


-- | User-supplied key\/value data that does not need to conform to the corresponding NotificationChannelDescriptor\'s schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
--
-- /See:/ 'newNotificationChannel_UserLabels' smart constructor.
newtype NotificationChannel_UserLabels = NotificationChannel_UserLabels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationChannel_UserLabels' with the minimum fields required to make a request.
newNotificationChannel_UserLabels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> NotificationChannel_UserLabels
newNotificationChannel_UserLabels addtional =
  NotificationChannel_UserLabels {addtional = addtional}

instance Core.FromJSON NotificationChannel_UserLabels
         where
        parseJSON
          = Core.withObject "NotificationChannel_UserLabels"
              (\ o ->
                 NotificationChannel_UserLabels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON NotificationChannel_UserLabels
         where
        toJSON NotificationChannel_UserLabels{..}
          = Core.toJSON addtional


-- | A description of a notification channel. The descriptor includes the properties of the channel and the set of labels or fields that must be specified to configure channels of a given type.
--
-- /See:/ 'newNotificationChannelDescriptor' smart constructor.
data NotificationChannelDescriptor = NotificationChannelDescriptor
    {
      -- | A human-readable description of the notification channel type. The description may include a description of the properties of the channel and pointers to external documentation.
      description :: (Core.Maybe Core.Text)
      -- | A human-readable name for the notification channel type. This form of the name is suitable for a user interface.
    , displayName :: (Core.Maybe Core.Text)
      -- | The set of labels that must be defined to identify a particular channel of the corresponding type. Each label includes a description for how that field should be populated.
    , labels :: (Core.Maybe [LabelDescriptor])
      -- | The product launch stage for channels of this type.
    , launchStage :: (Core.Maybe NotificationChannelDescriptor_LaunchStage)
      -- | The full REST resource name for this descriptor. The format is: projects\/[PROJECT/ID/OR_NUMBER]\/notificationChannelDescriptors\/[TYPE] In the above, [TYPE] is the value of the type field.
    , name :: (Core.Maybe Core.Text)
      -- | The tiers that support this notification channel; the project service tier must be one of the supported_tiers.
    , supportedTiers :: (Core.Maybe [NotificationChannelDescriptor_SupportedTiersItem])
      -- | The type of notification channel, such as \"email\" and \"sms\". To view the full list of channels, see Channel descriptors (https:\/\/cloud.google.com\/monitoring\/alerts\/using-channels-api#ncd). Notification channel types are globally unique.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationChannelDescriptor' with the minimum fields required to make a request.
newNotificationChannelDescriptor 
    ::  NotificationChannelDescriptor
newNotificationChannelDescriptor =
  NotificationChannelDescriptor
    { description = Core.Nothing
    , displayName = Core.Nothing
    , labels = Core.Nothing
    , launchStage = Core.Nothing
    , name = Core.Nothing
    , supportedTiers = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON NotificationChannelDescriptor
         where
        parseJSON
          = Core.withObject "NotificationChannelDescriptor"
              (\ o ->
                 NotificationChannelDescriptor Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "labels" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "launchStage")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "supportedTiers" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON NotificationChannelDescriptor
         where
        toJSON NotificationChannelDescriptor{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("labels" Core..=) Core.<$> labels,
                  ("launchStage" Core..=) Core.<$> launchStage,
                  ("name" Core..=) Core.<$> name,
                  ("supportedTiers" Core..=) Core.<$> supportedTiers,
                  ("type" Core..=) Core.<$> type'])


-- | Control over the rate of notifications sent to this alert policy\'s notification channels.
--
-- /See:/ 'newNotificationRateLimit' smart constructor.
newtype NotificationRateLimit = NotificationRateLimit
    {
      -- | Not more than one notification per period.
      period :: (Core.Maybe Core.GDuration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationRateLimit' with the minimum fields required to make a request.
newNotificationRateLimit 
    ::  NotificationRateLimit
newNotificationRateLimit = NotificationRateLimit {period = Core.Nothing}

instance Core.FromJSON NotificationRateLimit where
        parseJSON
          = Core.withObject "NotificationRateLimit"
              (\ o ->
                 NotificationRateLimit Core.<$> (o Core..:? "period"))

instance Core.ToJSON NotificationRateLimit where
        toJSON NotificationRateLimit{..}
          = Core.object
              (Core.catMaybes [("period" Core..=) Core.<$> period])


-- | Contains metadata for longrunning operation for the edit Metrics Scope endpoints.
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
    {
      -- | The time when the batch request was received.
      createTime :: (Core.Maybe Core.DateTime')
      -- | Current state of the batch operation.
    , state :: (Core.Maybe OperationMetadata_State)
      -- | The time when the operation result was last updated.
    , updateTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata 
    ::  OperationMetadata
newOperationMetadata =
  OperationMetadata
    {createTime = Core.Nothing, state = Core.Nothing, updateTime = Core.Nothing}

instance Core.FromJSON OperationMetadata where
        parseJSON
          = Core.withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "state")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON OperationMetadata where
        toJSON OperationMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("state" Core..=) Core.<$> state,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | A protocol buffer option, which can be attached to a message, field, enumeration, etc.
--
-- /See:/ 'newOption' smart constructor.
data Option = Option
    {
      -- | The option\'s name. For protobuf built-in options (options defined in descriptor.proto), this is the short name. For example, \"map_entry\". For custom options, it should be the fully-qualified name. For example, \"google.api.http\".
      name :: (Core.Maybe Core.Text)
      -- | The option\'s value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google\/protobuf\/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type.
    , value :: (Core.Maybe Option_Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Option' with the minimum fields required to make a request.
newOption 
    ::  Option
newOption = Option {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Option where
        parseJSON
          = Core.withObject "Option"
              (\ o ->
                 Option Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "value"))

instance Core.ToJSON Option where
        toJSON Option{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("value" Core..=) Core.<$> value])


-- | The option\'s value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google\/protobuf\/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type.
--
-- /See:/ 'newOption_Value' smart constructor.
newtype Option_Value = Option_Value
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Option_Value' with the minimum fields required to make a request.
newOption_Value 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> Option_Value
newOption_Value addtional = Option_Value {addtional = addtional}

instance Core.FromJSON Option_Value where
        parseJSON
          = Core.withObject "Option_Value"
              (\ o ->
                 Option_Value Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Option_Value where
        toJSON Option_Value{..} = Core.toJSON addtional


-- | A PerformanceThreshold is used when each window is good when that window has a sufficiently high performance.
--
-- /See:/ 'newPerformanceThreshold' smart constructor.
data PerformanceThreshold = PerformanceThreshold
    {
      -- | BasicSli to evaluate to judge window quality.
      basicSliPerformance :: (Core.Maybe BasicSli)
      -- | RequestBasedSli to evaluate to judge window quality.
    , performance :: (Core.Maybe RequestBasedSli)
      -- | If window performance >= threshold, the window is counted as good.
    , threshold :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PerformanceThreshold' with the minimum fields required to make a request.
newPerformanceThreshold 
    ::  PerformanceThreshold
newPerformanceThreshold =
  PerformanceThreshold
    { basicSliPerformance = Core.Nothing
    , performance = Core.Nothing
    , threshold = Core.Nothing
    }

instance Core.FromJSON PerformanceThreshold where
        parseJSON
          = Core.withObject "PerformanceThreshold"
              (\ o ->
                 PerformanceThreshold Core.<$>
                   (o Core..:? "basicSliPerformance") Core.<*>
                     (o Core..:? "performance")
                     Core.<*> (o Core..:? "threshold"))

instance Core.ToJSON PerformanceThreshold where
        toJSON PerformanceThreshold{..}
          = Core.object
              (Core.catMaybes
                 [("basicSliPerformance" Core..=) Core.<$>
                    basicSliPerformance,
                  ("performance" Core..=) Core.<$> performance,
                  ("threshold" Core..=) Core.<$> threshold])


-- | A single data point in a time series.
--
-- /See:/ 'newPoint' smart constructor.
data Point = Point
    {
      -- | The time interval to which the data point applies. For GAUGE metrics, the start time is optional, but if it is supplied, it must equal the end time. For DELTA metrics, the start and end time should specify a non-zero interval, with subsequent points specifying contiguous and non-overlapping intervals. For CUMULATIVE metrics, the start and end time should specify a non-zero interval, with subsequent points specifying the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.
      interval :: (Core.Maybe TimeInterval)
      -- | The value of the data point.
    , value :: (Core.Maybe TypedValue)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Point' with the minimum fields required to make a request.
newPoint 
    ::  Point
newPoint = Point {interval = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Point where
        parseJSON
          = Core.withObject "Point"
              (\ o ->
                 Point Core.<$>
                   (o Core..:? "interval") Core.<*>
                     (o Core..:? "value"))

instance Core.ToJSON Point where
        toJSON Point{..}
          = Core.object
              (Core.catMaybes
                 [("interval" Core..=) Core.<$> interval,
                  ("value" Core..=) Core.<$> value])


-- | A point\'s value columns and time interval. Each point has one or more point values corresponding to the entries in point_descriptors field in the TimeSeriesDescriptor associated with this object.
--
-- /See:/ 'newPointData' smart constructor.
data PointData = PointData
    {
      -- | The time interval associated with the point.
      timeInterval :: (Core.Maybe TimeInterval)
      -- | The values that make up the point.
    , values :: (Core.Maybe [TypedValue])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PointData' with the minimum fields required to make a request.
newPointData 
    ::  PointData
newPointData = PointData {timeInterval = Core.Nothing, values = Core.Nothing}

instance Core.FromJSON PointData where
        parseJSON
          = Core.withObject "PointData"
              (\ o ->
                 PointData Core.<$>
                   (o Core..:? "timeInterval") Core.<*>
                     (o Core..:? "values" Core..!= Core.mempty))

instance Core.ToJSON PointData where
        toJSON PointData{..}
          = Core.object
              (Core.catMaybes
                 [("timeInterval" Core..=) Core.<$> timeInterval,
                  ("values" Core..=) Core.<$> values])


-- | The QueryTimeSeries request.
--
-- /See:/ 'newQueryTimeSeriesRequest' smart constructor.
data QueryTimeSeriesRequest = QueryTimeSeriesRequest
    {
      -- | A positive number that is the maximum number of time/series/data to return.
      pageSize :: (Core.Maybe Core.Int32)
      -- | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The query in the Monitoring Query Language (https:\/\/cloud.google.com\/monitoring\/mql\/reference) format. The default time zone is in UTC.
    , query :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryTimeSeriesRequest' with the minimum fields required to make a request.
newQueryTimeSeriesRequest 
    ::  QueryTimeSeriesRequest
newQueryTimeSeriesRequest =
  QueryTimeSeriesRequest
    {pageSize = Core.Nothing, pageToken = Core.Nothing, query = Core.Nothing}

instance Core.FromJSON QueryTimeSeriesRequest where
        parseJSON
          = Core.withObject "QueryTimeSeriesRequest"
              (\ o ->
                 QueryTimeSeriesRequest Core.<$>
                   (o Core..:? "pageSize") Core.<*>
                     (o Core..:? "pageToken")
                     Core.<*> (o Core..:? "query"))

instance Core.ToJSON QueryTimeSeriesRequest where
        toJSON QueryTimeSeriesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("pageSize" Core..=) Core.<$> pageSize,
                  ("pageToken" Core..=) Core.<$> pageToken,
                  ("query" Core..=) Core.<$> query])


-- | The QueryTimeSeries response.
--
-- /See:/ 'newQueryTimeSeriesResponse' smart constructor.
data QueryTimeSeriesResponse = QueryTimeSeriesResponse
    {
      -- | If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | Query execution errors that may have caused the time series data returned to be incomplete. The available data will be available in the response.
    , partialErrors :: (Core.Maybe [Status])
      -- | The time series data.
    , timeSeriesData :: (Core.Maybe [TimeSeriesData])
      -- | The descriptor for the time series data.
    , timeSeriesDescriptor :: (Core.Maybe TimeSeriesDescriptor)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryTimeSeriesResponse' with the minimum fields required to make a request.
newQueryTimeSeriesResponse 
    ::  QueryTimeSeriesResponse
newQueryTimeSeriesResponse =
  QueryTimeSeriesResponse
    { nextPageToken = Core.Nothing
    , partialErrors = Core.Nothing
    , timeSeriesData = Core.Nothing
    , timeSeriesDescriptor = Core.Nothing
    }

instance Core.FromJSON QueryTimeSeriesResponse where
        parseJSON
          = Core.withObject "QueryTimeSeriesResponse"
              (\ o ->
                 QueryTimeSeriesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "partialErrors" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "timeSeriesData" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "timeSeriesDescriptor"))

instance Core.ToJSON QueryTimeSeriesResponse where
        toJSON QueryTimeSeriesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("partialErrors" Core..=) Core.<$> partialErrors,
                  ("timeSeriesData" Core..=) Core.<$> timeSeriesData,
                  ("timeSeriesDescriptor" Core..=) Core.<$>
                    timeSeriesDescriptor])


-- | The range of the population values.
--
-- /See:/ 'newRange' smart constructor.
data Range = Range
    {
      -- | The maximum of the population values.
      max :: (Core.Maybe Core.Double)
      -- | The minimum of the population values.
    , min :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Range' with the minimum fields required to make a request.
newRange 
    ::  Range
newRange = Range {max = Core.Nothing, min = Core.Nothing}

instance Core.FromJSON Range where
        parseJSON
          = Core.withObject "Range"
              (\ o ->
                 Range Core.<$>
                   (o Core..:? "max") Core.<*> (o Core..:? "min"))

instance Core.ToJSON Range where
        toJSON Range{..}
          = Core.object
              (Core.catMaybes
                 [("max" Core..=) Core.<$> max,
                  ("min" Core..=) Core.<$> min])


-- | Service Level Indicators for which atomic units of service are counted directly.
--
-- /See:/ 'newRequestBasedSli' smart constructor.
data RequestBasedSli = RequestBasedSli
    {
      -- | distribution/cut is used when good/service is a count of values aggregated in a Distribution that fall into a good range. The total_service is the total count of all values aggregated in the Distribution.
      distributionCut :: (Core.Maybe DistributionCut)
      -- | good/total/ratio is used when the ratio of good/service to total/service is computed from two TimeSeries.
    , goodTotalRatio :: (Core.Maybe TimeSeriesRatio)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestBasedSli' with the minimum fields required to make a request.
newRequestBasedSli 
    ::  RequestBasedSli
newRequestBasedSli =
  RequestBasedSli
    {distributionCut = Core.Nothing, goodTotalRatio = Core.Nothing}

instance Core.FromJSON RequestBasedSli where
        parseJSON
          = Core.withObject "RequestBasedSli"
              (\ o ->
                 RequestBasedSli Core.<$>
                   (o Core..:? "distributionCut") Core.<*>
                     (o Core..:? "goodTotalRatio"))

instance Core.ToJSON RequestBasedSli where
        toJSON RequestBasedSli{..}
          = Core.object
              (Core.catMaybes
                 [("distributionCut" Core..=) Core.<$>
                    distributionCut,
                  ("goodTotalRatio" Core..=) Core.<$> goodTotalRatio])


-- | The resource submessage for group checks. It can be used instead of a monitored resource, when multiple resources are being monitored.
--
-- /See:/ 'newResourceGroup' smart constructor.
data ResourceGroup = ResourceGroup
    {
      -- | The group of resources being monitored. Should be only the [GROUP/ID], and not the full-path projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP_ID].
      groupId :: (Core.Maybe Core.Text)
      -- | The resource type of the group members.
    , resourceType :: (Core.Maybe ResourceGroup_ResourceType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceGroup' with the minimum fields required to make a request.
newResourceGroup 
    ::  ResourceGroup
newResourceGroup =
  ResourceGroup {groupId = Core.Nothing, resourceType = Core.Nothing}

instance Core.FromJSON ResourceGroup where
        parseJSON
          = Core.withObject "ResourceGroup"
              (\ o ->
                 ResourceGroup Core.<$>
                   (o Core..:? "groupId") Core.<*>
                     (o Core..:? "resourceType"))

instance Core.ToJSON ResourceGroup where
        toJSON ResourceGroup{..}
          = Core.object
              (Core.catMaybes
                 [("groupId" Core..=) Core.<$> groupId,
                  ("resourceType" Core..=) Core.<$> resourceType])


-- | The SendNotificationChannelVerificationCode request.
--
-- /See:/ 'newSendNotificationChannelVerificationCodeRequest' smart constructor.
data SendNotificationChannelVerificationCodeRequest = SendNotificationChannelVerificationCodeRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SendNotificationChannelVerificationCodeRequest' with the minimum fields required to make a request.
newSendNotificationChannelVerificationCodeRequest 
    ::  SendNotificationChannelVerificationCodeRequest
newSendNotificationChannelVerificationCodeRequest =
  SendNotificationChannelVerificationCodeRequest

instance Core.FromJSON
           SendNotificationChannelVerificationCodeRequest
         where
        parseJSON
          = Core.withObject
              "SendNotificationChannelVerificationCodeRequest"
              (\ o ->
                 Core.pure
                   SendNotificationChannelVerificationCodeRequest)

instance Core.ToJSON
           SendNotificationChannelVerificationCodeRequest
         where
        toJSON = Core.const Core.emptyObject


-- | A Service is a discrete, autonomous, and network-accessible unit, designed to solve an individual concern (Wikipedia (https:\/\/en.wikipedia.org\/wiki\/Service-orientation)). In Cloud Monitoring, a Service acts as the root resource under which operational aspects of the service are accessible.
--
-- /See:/ 'newService' smart constructor.
data Service = Service
    {
      -- | Type used for App Engine services.
      appEngine :: (Core.Maybe AppEngine)
      -- | Type used for Cloud Endpoints services.
    , cloudEndpoints :: (Core.Maybe CloudEndpoints)
      -- | Type used for Istio services that live in a Kubernetes cluster.
    , clusterIstio :: (Core.Maybe ClusterIstio)
      -- | Custom service type.
    , custom :: (Core.Maybe Custom)
      -- | Name used for UI elements listing this Service.
    , displayName :: (Core.Maybe Core.Text)
      -- | Type used for canonical services scoped to an Istio mesh. Metrics for Istio are documented here (https:\/\/istio.io\/latest\/docs\/reference\/config\/metrics\/)
    , istioCanonicalService :: (Core.Maybe IstioCanonicalService)
      -- | Type used for Istio services scoped to an Istio mesh.
    , meshIstio :: (Core.Maybe MeshIstio)
      -- | Resource name for this Service. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]
    , name :: (Core.Maybe Core.Text)
      -- | Configuration for how to query telemetry on a Service.
    , telemetry :: (Core.Maybe Telemetry)
      -- | Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
    , userLabels :: (Core.Maybe Service_UserLabels)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Service' with the minimum fields required to make a request.
newService 
    ::  Service
newService =
  Service
    { appEngine = Core.Nothing
    , cloudEndpoints = Core.Nothing
    , clusterIstio = Core.Nothing
    , custom = Core.Nothing
    , displayName = Core.Nothing
    , istioCanonicalService = Core.Nothing
    , meshIstio = Core.Nothing
    , name = Core.Nothing
    , telemetry = Core.Nothing
    , userLabels = Core.Nothing
    }

instance Core.FromJSON Service where
        parseJSON
          = Core.withObject "Service"
              (\ o ->
                 Service Core.<$>
                   (o Core..:? "appEngine") Core.<*>
                     (o Core..:? "cloudEndpoints")
                     Core.<*> (o Core..:? "clusterIstio")
                     Core.<*> (o Core..:? "custom")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "istioCanonicalService")
                     Core.<*> (o Core..:? "meshIstio")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "telemetry")
                     Core.<*> (o Core..:? "userLabels"))

instance Core.ToJSON Service where
        toJSON Service{..}
          = Core.object
              (Core.catMaybes
                 [("appEngine" Core..=) Core.<$> appEngine,
                  ("cloudEndpoints" Core..=) Core.<$> cloudEndpoints,
                  ("clusterIstio" Core..=) Core.<$> clusterIstio,
                  ("custom" Core..=) Core.<$> custom,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("istioCanonicalService" Core..=) Core.<$>
                    istioCanonicalService,
                  ("meshIstio" Core..=) Core.<$> meshIstio,
                  ("name" Core..=) Core.<$> name,
                  ("telemetry" Core..=) Core.<$> telemetry,
                  ("userLabels" Core..=) Core.<$> userLabels])


-- | Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
--
-- /See:/ 'newService_UserLabels' smart constructor.
newtype Service_UserLabels = Service_UserLabels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Service_UserLabels' with the minimum fields required to make a request.
newService_UserLabels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> Service_UserLabels
newService_UserLabels addtional = Service_UserLabels {addtional = addtional}

instance Core.FromJSON Service_UserLabels where
        parseJSON
          = Core.withObject "Service_UserLabels"
              (\ o ->
                 Service_UserLabels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Service_UserLabels where
        toJSON Service_UserLabels{..} = Core.toJSON addtional


-- | A Service-Level Indicator (SLI) describes the \"performance\" of a service. For some services, the SLI is well-defined. In such cases, the SLI can be described easily by referencing the well-known SLI and providing the needed parameters. Alternatively, a \"custom\" SLI can be defined with a query to the underlying metric store. An SLI is defined to be good/service \/ total/service over any queried time interval. The value of performance always falls into the range 0 \<= performance \<= 1. A custom SLI describes how to compute this ratio, whether this is by dividing values from a pair of time series, cutting a Distribution into good and bad counts, or counting time windows in which the service complies with a criterion. For separation of concerns, a single Service-Level Indicator measures performance for only one aspect of service quality, such as fraction of successful queries or fast-enough queries.
--
-- /See:/ 'newServiceLevelIndicator' smart constructor.
data ServiceLevelIndicator = ServiceLevelIndicator
    {
      -- | Basic SLI on a well-known service type.
      basicSli :: (Core.Maybe BasicSli)
      -- | Request-based SLIs
    , requestBased :: (Core.Maybe RequestBasedSli)
      -- | Windows-based SLIs
    , windowsBased :: (Core.Maybe WindowsBasedSli)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceLevelIndicator' with the minimum fields required to make a request.
newServiceLevelIndicator 
    ::  ServiceLevelIndicator
newServiceLevelIndicator =
  ServiceLevelIndicator
    { basicSli = Core.Nothing
    , requestBased = Core.Nothing
    , windowsBased = Core.Nothing
    }

instance Core.FromJSON ServiceLevelIndicator where
        parseJSON
          = Core.withObject "ServiceLevelIndicator"
              (\ o ->
                 ServiceLevelIndicator Core.<$>
                   (o Core..:? "basicSli") Core.<*>
                     (o Core..:? "requestBased")
                     Core.<*> (o Core..:? "windowsBased"))

instance Core.ToJSON ServiceLevelIndicator where
        toJSON ServiceLevelIndicator{..}
          = Core.object
              (Core.catMaybes
                 [("basicSli" Core..=) Core.<$> basicSli,
                  ("requestBased" Core..=) Core.<$> requestBased,
                  ("windowsBased" Core..=) Core.<$> windowsBased])


-- | A Service-Level Objective (SLO) describes a level of desired good service. It consists of a service-level indicator (SLI), a performance goal, and a period over which the objective is to be evaluated against that goal. The SLO can use SLIs defined in a number of different manners. Typical SLOs might include \"99% of requests in each rolling week have latency below 200 milliseconds\" or \"99.5% of requests in each calendar month return successfully.\"
--
-- /See:/ 'newServiceLevelObjective' smart constructor.
data ServiceLevelObjective = ServiceLevelObjective
    {
      -- | A calendar period, semantically \"since the start of the current \". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
      calendarPeriod :: (Core.Maybe ServiceLevelObjective_CalendarPeriod)
      -- | Name used for UI elements listing this SLO.
    , displayName :: (Core.Maybe Core.Text)
      -- | The fraction of service that must be good in order for this objective to be met. 0 \< goal \<= 0.999.
    , goal :: (Core.Maybe Core.Double)
      -- | Resource name for this ServiceLevelObjective. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]\/serviceLevelObjectives\/[SLO_NAME]
    , name :: (Core.Maybe Core.Text)
      -- | A rolling time period, semantically \"in the past \". Must be an integer multiple of 1 day no larger than 30 days.
    , rollingPeriod :: (Core.Maybe Core.GDuration)
      -- | The definition of good service, used to measure and calculate the quality of the Service\'s performance with respect to a single aspect of service quality.
    , serviceLevelIndicator :: (Core.Maybe ServiceLevelIndicator)
      -- | Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
    , userLabels :: (Core.Maybe ServiceLevelObjective_UserLabels)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceLevelObjective' with the minimum fields required to make a request.
newServiceLevelObjective 
    ::  ServiceLevelObjective
newServiceLevelObjective =
  ServiceLevelObjective
    { calendarPeriod = Core.Nothing
    , displayName = Core.Nothing
    , goal = Core.Nothing
    , name = Core.Nothing
    , rollingPeriod = Core.Nothing
    , serviceLevelIndicator = Core.Nothing
    , userLabels = Core.Nothing
    }

instance Core.FromJSON ServiceLevelObjective where
        parseJSON
          = Core.withObject "ServiceLevelObjective"
              (\ o ->
                 ServiceLevelObjective Core.<$>
                   (o Core..:? "calendarPeriod") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "goal")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "rollingPeriod")
                     Core.<*> (o Core..:? "serviceLevelIndicator")
                     Core.<*> (o Core..:? "userLabels"))

instance Core.ToJSON ServiceLevelObjective where
        toJSON ServiceLevelObjective{..}
          = Core.object
              (Core.catMaybes
                 [("calendarPeriod" Core..=) Core.<$> calendarPeriod,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("goal" Core..=) Core.<$> goal,
                  ("name" Core..=) Core.<$> name,
                  ("rollingPeriod" Core..=) Core.<$> rollingPeriod,
                  ("serviceLevelIndicator" Core..=) Core.<$>
                    serviceLevelIndicator,
                  ("userLabels" Core..=) Core.<$> userLabels])


-- | Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
--
-- /See:/ 'newServiceLevelObjective_UserLabels' smart constructor.
newtype ServiceLevelObjective_UserLabels = ServiceLevelObjective_UserLabels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceLevelObjective_UserLabels' with the minimum fields required to make a request.
newServiceLevelObjective_UserLabels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> ServiceLevelObjective_UserLabels
newServiceLevelObjective_UserLabels addtional =
  ServiceLevelObjective_UserLabels {addtional = addtional}

instance Core.FromJSON
           ServiceLevelObjective_UserLabels
         where
        parseJSON
          = Core.withObject "ServiceLevelObjective_UserLabels"
              (\ o ->
                 ServiceLevelObjective_UserLabels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON ServiceLevelObjective_UserLabels
         where
        toJSON ServiceLevelObjective_UserLabels{..}
          = Core.toJSON addtional


-- | SourceContext represents information about the source of a protobuf element, like the file in which it is defined.
--
-- /See:/ 'newSourceContext' smart constructor.
newtype SourceContext = SourceContext
    {
      -- | The path-qualified name of the .proto file that contained the associated protobuf element. For example: \"google\/protobuf\/source_context.proto\".
      fileName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceContext' with the minimum fields required to make a request.
newSourceContext 
    ::  SourceContext
newSourceContext = SourceContext {fileName = Core.Nothing}

instance Core.FromJSON SourceContext where
        parseJSON
          = Core.withObject "SourceContext"
              (\ o ->
                 SourceContext Core.<$> (o Core..:? "fileName"))

instance Core.ToJSON SourceContext where
        toJSON SourceContext{..}
          = Core.object
              (Core.catMaybes
                 [("fileName" Core..=) Core.<$> fileName])


-- | The context of a span. This is attached to an Exemplar in Distribution values during aggregation.It contains the name of a span with format: projects\/[PROJECT/ID/OR/NUMBER]\/traces\/[TRACE/ID]\/spans\/[SPAN_ID]
--
-- /See:/ 'newSpanContext' smart constructor.
newtype SpanContext = SpanContext
    {
      -- | The resource name of the span. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/traces\/[TRACE/ID]\/spans\/[SPAN/ID] [TRACE/ID] is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array.[SPAN_ID] is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array.
      spanName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpanContext' with the minimum fields required to make a request.
newSpanContext 
    ::  SpanContext
newSpanContext = SpanContext {spanName = Core.Nothing}

instance Core.FromJSON SpanContext where
        parseJSON
          = Core.withObject "SpanContext"
              (\ o -> SpanContext Core.<$> (o Core..:? "spanName"))

instance Core.ToJSON SpanContext where
        toJSON SpanContext{..}
          = Core.object
              (Core.catMaybes
                 [("spanName" Core..=) Core.<$> spanName])


-- | The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https:\/\/github.com\/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*>
                     (o Core..:? "details" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..} = Core.toJSON addtional


-- | Information required for a TCP Uptime check request.
--
-- /See:/ 'newTcpCheck' smart constructor.
newtype TcpCheck = TcpCheck
    {
      -- | The TCP port on the server against which to run the check. Will be combined with host (specified within the monitored_resource) to construct the full URL. Required.
      port :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TcpCheck' with the minimum fields required to make a request.
newTcpCheck 
    ::  TcpCheck
newTcpCheck = TcpCheck {port = Core.Nothing}

instance Core.FromJSON TcpCheck where
        parseJSON
          = Core.withObject "TcpCheck"
              (\ o -> TcpCheck Core.<$> (o Core..:? "port"))

instance Core.ToJSON TcpCheck where
        toJSON TcpCheck{..}
          = Core.object
              (Core.catMaybes [("port" Core..=) Core.<$> port])


-- | Configuration for how to query telemetry on a Service.
--
-- /See:/ 'newTelemetry' smart constructor.
newtype Telemetry = Telemetry
    {
      -- | The full name of the resource that defines this service. Formatted as described in https:\/\/cloud.google.com\/apis\/design\/resource_names.
      resourceName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Telemetry' with the minimum fields required to make a request.
newTelemetry 
    ::  Telemetry
newTelemetry = Telemetry {resourceName = Core.Nothing}

instance Core.FromJSON Telemetry where
        parseJSON
          = Core.withObject "Telemetry"
              (\ o ->
                 Telemetry Core.<$> (o Core..:? "resourceName"))

instance Core.ToJSON Telemetry where
        toJSON Telemetry{..}
          = Core.object
              (Core.catMaybes
                 [("resourceName" Core..=) Core.<$> resourceName])


-- | Describes a time interval: Reads: A half-open time interval. It includes the end time but excludes the start time: (startTime, endTime]. The start time must be specified, must be earlier than the end time, and should be no older than the data retention period for the metric. Writes: A closed time interval. It extends from the start time to the end time, and includes both: [startTime, endTime]. Valid time intervals depend on the MetricKind (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.metricDescriptors#MetricKind) of the metric value. The end time must not be earlier than the start time, and the end time must not be more than 25 hours in the past or more than five minutes in the future. For GAUGE metrics, the startTime value is technically optional; if no value is specified, the start time defaults to the value of the end time, and the interval represents a single point in time. If both start and end times are specified, they must be identical. Such an interval is valid only for
-- GAUGE metrics, which are point-in-time measurements. The end time of a new interval must be at least a millisecond after the end time of the previous interval. For DELTA metrics, the start time and end time must specify a non-zero interval, with subsequent points specifying contiguous and non-overlapping intervals. For DELTA metrics, the start time of the next interval must be at least a millisecond after the end time of the previous interval. For CUMULATIVE metrics, the start time and end time must specify a non-zero interval, with subsequent points specifying the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points. The new start time must be at least a millisecond after the end time of the previous interval. The start time of a new interval must be at least a millisecond after the end time of the previous interval because intervals are closed. If the start time of a new interval is the same as the end time of the
-- previous interval, then data written at the new start time could overwrite data written at the previous end time.
--
-- /See:/ 'newTimeInterval' smart constructor.
data TimeInterval = TimeInterval
    {
      -- | Required. The end of the time interval.
      endTime :: (Core.Maybe Core.DateTime')
      -- | Optional. The beginning of the time interval. The default value for the start time is the end time. The start time must not be later than the end time.
    , startTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeInterval' with the minimum fields required to make a request.
newTimeInterval 
    ::  TimeInterval
newTimeInterval =
  TimeInterval {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON TimeInterval where
        parseJSON
          = Core.withObject "TimeInterval"
              (\ o ->
                 TimeInterval Core.<$>
                   (o Core..:? "endTime") Core.<*>
                     (o Core..:? "startTime"))

instance Core.ToJSON TimeInterval where
        toJSON TimeInterval{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("startTime" Core..=) Core.<$> startTime])


-- | A collection of data points that describes the time-varying values of a metric. A time series is identified by a combination of a fully-specified monitored resource and a fully-specified metric. This type is used for both listing and creating time series.
--
-- /See:/ 'newTimeSeries' smart constructor.
data TimeSeries = TimeSeries
    {
      -- | Output only. The associated monitored resource metadata. When reading a time series, this field will include metadata labels that are explicitly named in the reduction. When creating a time series, this field is ignored.
      metadata :: (Core.Maybe MonitoredResourceMetadata)
      -- | The associated metric. A fully-specified metric used to identify the time series.
    , metric :: (Core.Maybe Metric)
      -- | The metric kind of the time series. When listing time series, this metric kind might be different from the metric kind of the associated metric if this time series is an alignment or reduction of other time series.When creating a time series, this field is optional. If present, it must be the same as the metric kind of the associated metric. If the associated metric\'s descriptor must be auto-created, then this field specifies the metric kind of the new descriptor and must be either GAUGE (the default) or CUMULATIVE.
    , metricKind :: (Core.Maybe TimeSeries_MetricKind)
      -- | The data points of this time series. When listing time series, points are returned in reverse time order.When creating a time series, this field must contain exactly one point and the point\'s type must be the same as the value type of the associated metric. If the associated metric\'s descriptor must be auto-created, then the value type of the descriptor is determined by the point\'s type, which must be BOOL, INT64, DOUBLE, or DISTRIBUTION.
    , points :: (Core.Maybe [Point])
      -- | The associated monitored resource. Custom metrics can use only certain monitored resource types in their time series data. For more information, see Monitored resources for custom metrics (https:\/\/cloud.google.com\/monitoring\/custom-metrics\/creating-metrics#custom-metric-resources).
    , resource :: (Core.Maybe MonitoredResource)
      -- | The units in which the metric value is reported. It is only applicable if the value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of the stored metric values.
    , unit :: (Core.Maybe Core.Text)
      -- | The value type of the time series. When listing time series, this value type might be different from the value type of the associated metric if this time series is an alignment or reduction of other time series.When creating a time series, this field is optional. If present, it must be the same as the type of the data in the points field.
    , valueType :: (Core.Maybe TimeSeries_ValueType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeSeries' with the minimum fields required to make a request.
newTimeSeries 
    ::  TimeSeries
newTimeSeries =
  TimeSeries
    { metadata = Core.Nothing
    , metric = Core.Nothing
    , metricKind = Core.Nothing
    , points = Core.Nothing
    , resource = Core.Nothing
    , unit = Core.Nothing
    , valueType = Core.Nothing
    }

instance Core.FromJSON TimeSeries where
        parseJSON
          = Core.withObject "TimeSeries"
              (\ o ->
                 TimeSeries Core.<$>
                   (o Core..:? "metadata") Core.<*>
                     (o Core..:? "metric")
                     Core.<*> (o Core..:? "metricKind")
                     Core.<*> (o Core..:? "points" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "resource")
                     Core.<*> (o Core..:? "unit")
                     Core.<*> (o Core..:? "valueType"))

instance Core.ToJSON TimeSeries where
        toJSON TimeSeries{..}
          = Core.object
              (Core.catMaybes
                 [("metadata" Core..=) Core.<$> metadata,
                  ("metric" Core..=) Core.<$> metric,
                  ("metricKind" Core..=) Core.<$> metricKind,
                  ("points" Core..=) Core.<$> points,
                  ("resource" Core..=) Core.<$> resource,
                  ("unit" Core..=) Core.<$> unit,
                  ("valueType" Core..=) Core.<$> valueType])


-- | Represents the values of a time series associated with a TimeSeriesDescriptor.
--
-- /See:/ 'newTimeSeriesData' smart constructor.
data TimeSeriesData = TimeSeriesData
    {
      -- | The values of the labels in the time series identifier, given in the same order as the label/descriptors field of the TimeSeriesDescriptor associated with this object. Each value must have a value of the type given in the corresponding entry of label/descriptors.
      labelValues :: (Core.Maybe [LabelValue])
      -- | The points in the time series.
    , pointData :: (Core.Maybe [PointData])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeSeriesData' with the minimum fields required to make a request.
newTimeSeriesData 
    ::  TimeSeriesData
newTimeSeriesData =
  TimeSeriesData {labelValues = Core.Nothing, pointData = Core.Nothing}

instance Core.FromJSON TimeSeriesData where
        parseJSON
          = Core.withObject "TimeSeriesData"
              (\ o ->
                 TimeSeriesData Core.<$>
                   (o Core..:? "labelValues" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "pointData" Core..!= Core.mempty))

instance Core.ToJSON TimeSeriesData where
        toJSON TimeSeriesData{..}
          = Core.object
              (Core.catMaybes
                 [("labelValues" Core..=) Core.<$> labelValues,
                  ("pointData" Core..=) Core.<$> pointData])


-- | A descriptor for the labels and points in a time series.
--
-- /See:/ 'newTimeSeriesDescriptor' smart constructor.
data TimeSeriesDescriptor = TimeSeriesDescriptor
    {
      -- | Descriptors for the labels.
      labelDescriptors :: (Core.Maybe [LabelDescriptor])
      -- | Descriptors for the point data value columns.
    , pointDescriptors :: (Core.Maybe [ValueDescriptor])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeSeriesDescriptor' with the minimum fields required to make a request.
newTimeSeriesDescriptor 
    ::  TimeSeriesDescriptor
newTimeSeriesDescriptor =
  TimeSeriesDescriptor
    {labelDescriptors = Core.Nothing, pointDescriptors = Core.Nothing}

instance Core.FromJSON TimeSeriesDescriptor where
        parseJSON
          = Core.withObject "TimeSeriesDescriptor"
              (\ o ->
                 TimeSeriesDescriptor Core.<$>
                   (o Core..:? "labelDescriptors" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "pointDescriptors" Core..!= Core.mempty))

instance Core.ToJSON TimeSeriesDescriptor where
        toJSON TimeSeriesDescriptor{..}
          = Core.object
              (Core.catMaybes
                 [("labelDescriptors" Core..=) Core.<$>
                    labelDescriptors,
                  ("pointDescriptors" Core..=) Core.<$>
                    pointDescriptors])


-- | A TimeSeriesRatio specifies two TimeSeries to use for computing the good/service \/ total/service ratio. The specified TimeSeries must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE. The TimeSeriesRatio must specify exactly two of good, bad, and total, and the relationship good/service + bad/service = total_service will be assumed.
--
-- /See:/ 'newTimeSeriesRatio' smart constructor.
data TimeSeriesRatio = TimeSeriesRatio
    {
      -- | A monitoring filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying a TimeSeries quantifying bad service, either demanded service that was not provided or demanded service that was of inadequate quality. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
      badServiceFilter :: (Core.Maybe Core.Text)
      -- | A monitoring filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying a TimeSeries quantifying good service provided. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
    , goodServiceFilter :: (Core.Maybe Core.Text)
      -- | A monitoring filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying a TimeSeries quantifying total demanded service. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
    , totalServiceFilter :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeSeriesRatio' with the minimum fields required to make a request.
newTimeSeriesRatio 
    ::  TimeSeriesRatio
newTimeSeriesRatio =
  TimeSeriesRatio
    { badServiceFilter = Core.Nothing
    , goodServiceFilter = Core.Nothing
    , totalServiceFilter = Core.Nothing
    }

instance Core.FromJSON TimeSeriesRatio where
        parseJSON
          = Core.withObject "TimeSeriesRatio"
              (\ o ->
                 TimeSeriesRatio Core.<$>
                   (o Core..:? "badServiceFilter") Core.<*>
                     (o Core..:? "goodServiceFilter")
                     Core.<*> (o Core..:? "totalServiceFilter"))

instance Core.ToJSON TimeSeriesRatio where
        toJSON TimeSeriesRatio{..}
          = Core.object
              (Core.catMaybes
                 [("badServiceFilter" Core..=) Core.<$>
                    badServiceFilter,
                  ("goodServiceFilter" Core..=) Core.<$>
                    goodServiceFilter,
                  ("totalServiceFilter" Core..=) Core.<$>
                    totalServiceFilter])


-- | Specifies how many time series must fail a predicate to trigger a condition. If not specified, then a {count: 1} trigger is used.
--
-- /See:/ 'newTrigger' smart constructor.
data Trigger = Trigger
    {
      -- | The absolute number of time series that must fail the predicate for the condition to be triggered.
      count :: (Core.Maybe Core.Int32)
      -- | The percentage of time series that must fail the predicate for the condition to be triggered.
    , percent :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Trigger' with the minimum fields required to make a request.
newTrigger 
    ::  Trigger
newTrigger = Trigger {count = Core.Nothing, percent = Core.Nothing}

instance Core.FromJSON Trigger where
        parseJSON
          = Core.withObject "Trigger"
              (\ o ->
                 Trigger Core.<$>
                   (o Core..:? "count") Core.<*> (o Core..:? "percent"))

instance Core.ToJSON Trigger where
        toJSON Trigger{..}
          = Core.object
              (Core.catMaybes
                 [("count" Core..=) Core.<$> count,
                  ("percent" Core..=) Core.<$> percent])


-- | A protocol buffer message type.
--
-- /See:/ 'newType' smart constructor.
data Type = Type
    {
      -- | The list of fields.
      fields :: (Core.Maybe [Field])
      -- | The fully qualified message name.
    , name :: (Core.Maybe Core.Text)
      -- | The list of types appearing in oneof definitions in this type.
    , oneofs :: (Core.Maybe [Core.Text])
      -- | The protocol buffer options.
    , options :: (Core.Maybe [Option])
      -- | The source context.
    , sourceContext :: (Core.Maybe SourceContext)
      -- | The source syntax.
    , syntax :: (Core.Maybe Type_Syntax)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Type' with the minimum fields required to make a request.
newType 
    ::  Type
newType =
  Type
    { fields = Core.Nothing
    , name = Core.Nothing
    , oneofs = Core.Nothing
    , options = Core.Nothing
    , sourceContext = Core.Nothing
    , syntax = Core.Nothing
    }

instance Core.FromJSON Type where
        parseJSON
          = Core.withObject "Type"
              (\ o ->
                 Type Core.<$>
                   (o Core..:? "fields" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "oneofs" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "options" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "sourceContext")
                     Core.<*> (o Core..:? "syntax"))

instance Core.ToJSON Type where
        toJSON Type{..}
          = Core.object
              (Core.catMaybes
                 [("fields" Core..=) Core.<$> fields,
                  ("name" Core..=) Core.<$> name,
                  ("oneofs" Core..=) Core.<$> oneofs,
                  ("options" Core..=) Core.<$> options,
                  ("sourceContext" Core..=) Core.<$> sourceContext,
                  ("syntax" Core..=) Core.<$> syntax])


-- | A single strongly-typed value.
--
-- /See:/ 'newTypedValue' smart constructor.
data TypedValue = TypedValue
    {
      -- | A Boolean value: true or false.
      boolValue :: (Core.Maybe Core.Bool)
      -- | A distribution value.
    , distributionValue :: (Core.Maybe Distribution)
      -- | A 64-bit double-precision floating-point number. Its magnitude is approximately ±10±300 and it has 16 significant digits of precision.
    , doubleValue :: (Core.Maybe Core.Double)
      -- | A 64-bit integer. Its range is approximately ±9.2x1018.
    , int64Value :: (Core.Maybe Core.Int64)
      -- | A variable-length string value.
    , stringValue :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TypedValue' with the minimum fields required to make a request.
newTypedValue 
    ::  TypedValue
newTypedValue =
  TypedValue
    { boolValue = Core.Nothing
    , distributionValue = Core.Nothing
    , doubleValue = Core.Nothing
    , int64Value = Core.Nothing
    , stringValue = Core.Nothing
    }

instance Core.FromJSON TypedValue where
        parseJSON
          = Core.withObject "TypedValue"
              (\ o ->
                 TypedValue Core.<$>
                   (o Core..:? "boolValue") Core.<*>
                     (o Core..:? "distributionValue")
                     Core.<*> (o Core..:? "doubleValue")
                     Core.<*> (o Core..:? "int64Value")
                     Core.<*> (o Core..:? "stringValue"))

instance Core.ToJSON TypedValue where
        toJSON TypedValue{..}
          = Core.object
              (Core.catMaybes
                 [("boolValue" Core..=) Core.<$> boolValue,
                  ("distributionValue" Core..=) Core.<$>
                    distributionValue,
                  ("doubleValue" Core..=) Core.<$> doubleValue,
                  ("int64Value" Core..=) Core.. Core.AsText Core.<$>
                    int64Value,
                  ("stringValue" Core..=) Core.<$> stringValue])


-- | This message configures which resources and services to monitor for availability.
--
-- /See:/ 'newUptimeCheckConfig' smart constructor.
data UptimeCheckConfig = UptimeCheckConfig
    {
      -- | The type of checkers to use to execute the Uptime check.
      checkerType :: (Core.Maybe UptimeCheckConfig_CheckerType)
      -- | The content that is expected to appear in the data returned by the target server against which the check is run. Currently, only the first entry in the content_matchers list is supported, and additional entries will be ignored. This field is optional and should only be specified if a content match is required as part of the\/ Uptime check.
    , contentMatchers :: (Core.Maybe [ContentMatcher])
      -- | A human-friendly name for the Uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced. Required.
    , displayName :: (Core.Maybe Core.Text)
      -- | Contains information needed to make an HTTP or HTTPS check.
    , httpCheck :: (Core.Maybe HttpCheck)
      -- | The internal checkers that this check will egress from. If is_internal is true and this list is empty, the check will egress from all the InternalCheckers configured for the project that owns this UptimeCheckConfig.
    , internalCheckers :: (Core.Maybe [InternalChecker])
      -- | If this is true, then checks are made only from the \'internal/checkers\'. If it is false, then checks are made only from the \'selected/regions\'. It is an error to provide \'selected/regions\' when is/internal is true, or to provide \'internal/checkers\' when is/internal is false.
    , isInternal :: (Core.Maybe Core.Bool)
      -- | The monitored resource (https:\/\/cloud.google.com\/monitoring\/api\/resources) associated with the configuration. The following monitored resource types are valid for this field: uptime/url, gce/instance, gae/app, aws/ec2/instance, aws/elb/load/balancer k8s/service servicedirectory/service
    , monitoredResource :: (Core.Maybe MonitoredResource)
      -- | A unique resource name for this Uptime check configuration. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/uptimeCheckConfigs\/[UPTIME/CHECK/ID] [PROJECT/ID/OR/NUMBER] is the Workspace host project associated with the Uptime check.This field should be omitted when creating the Uptime check configuration; on create, the resource name is assigned by the server and included in the response.
    , name :: (Core.Maybe Core.Text)
      -- | How often, in seconds, the Uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 60s.
    , period :: (Core.Maybe Core.GDuration)
      -- | The group resource associated with the configuration.
    , resourceGroup :: (Core.Maybe ResourceGroup)
      -- | The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions must be provided to include a minimum of 3 locations. Not specifying this field will result in Uptime checks running from all available regions.
    , selectedRegions :: (Core.Maybe [UptimeCheckConfig_SelectedRegionsItem])
      -- | Contains information needed to make a TCP check.
    , tcpCheck :: (Core.Maybe TcpCheck)
      -- | The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Required.
    , timeout :: (Core.Maybe Core.GDuration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UptimeCheckConfig' with the minimum fields required to make a request.
newUptimeCheckConfig 
    ::  UptimeCheckConfig
newUptimeCheckConfig =
  UptimeCheckConfig
    { checkerType = Core.Nothing
    , contentMatchers = Core.Nothing
    , displayName = Core.Nothing
    , httpCheck = Core.Nothing
    , internalCheckers = Core.Nothing
    , isInternal = Core.Nothing
    , monitoredResource = Core.Nothing
    , name = Core.Nothing
    , period = Core.Nothing
    , resourceGroup = Core.Nothing
    , selectedRegions = Core.Nothing
    , tcpCheck = Core.Nothing
    , timeout = Core.Nothing
    }

instance Core.FromJSON UptimeCheckConfig where
        parseJSON
          = Core.withObject "UptimeCheckConfig"
              (\ o ->
                 UptimeCheckConfig Core.<$>
                   (o Core..:? "checkerType") Core.<*>
                     (o Core..:? "contentMatchers" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "httpCheck")
                     Core.<*>
                     (o Core..:? "internalCheckers" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "isInternal")
                     Core.<*> (o Core..:? "monitoredResource")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "period")
                     Core.<*> (o Core..:? "resourceGroup")
                     Core.<*>
                     (o Core..:? "selectedRegions" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "tcpCheck")
                     Core.<*> (o Core..:? "timeout"))

instance Core.ToJSON UptimeCheckConfig where
        toJSON UptimeCheckConfig{..}
          = Core.object
              (Core.catMaybes
                 [("checkerType" Core..=) Core.<$> checkerType,
                  ("contentMatchers" Core..=) Core.<$> contentMatchers,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("httpCheck" Core..=) Core.<$> httpCheck,
                  ("internalCheckers" Core..=) Core.<$>
                    internalCheckers,
                  ("isInternal" Core..=) Core.<$> isInternal,
                  ("monitoredResource" Core..=) Core.<$>
                    monitoredResource,
                  ("name" Core..=) Core.<$> name,
                  ("period" Core..=) Core.<$> period,
                  ("resourceGroup" Core..=) Core.<$> resourceGroup,
                  ("selectedRegions" Core..=) Core.<$> selectedRegions,
                  ("tcpCheck" Core..=) Core.<$> tcpCheck,
                  ("timeout" Core..=) Core.<$> timeout])


-- | Contains the region, location, and list of IP addresses where checkers in the location run from.
--
-- /See:/ 'newUptimeCheckIp' smart constructor.
data UptimeCheckIp = UptimeCheckIp
    {
      -- | The IP address from which the Uptime check originates. This is a fully specified IP address (not an IP address range). Most IP addresses, as of this publication, are in IPv4 format; however, one should not rely on the IP addresses being in IPv4 format indefinitely, and should support interpreting this field in either IPv4 or IPv6 format.
      ipAddress :: (Core.Maybe Core.Text)
      -- | A more specific location within the region that typically encodes a particular city\/town\/metro (and its containing state\/province or country) within the broader umbrella region category.
    , location :: (Core.Maybe Core.Text)
      -- | A broad region category in which the IP address is located.
    , region :: (Core.Maybe UptimeCheckIp_Region)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UptimeCheckIp' with the minimum fields required to make a request.
newUptimeCheckIp 
    ::  UptimeCheckIp
newUptimeCheckIp =
  UptimeCheckIp
    {ipAddress = Core.Nothing, location = Core.Nothing, region = Core.Nothing}

instance Core.FromJSON UptimeCheckIp where
        parseJSON
          = Core.withObject "UptimeCheckIp"
              (\ o ->
                 UptimeCheckIp Core.<$>
                   (o Core..:? "ipAddress") Core.<*>
                     (o Core..:? "location")
                     Core.<*> (o Core..:? "region"))

instance Core.ToJSON UptimeCheckIp where
        toJSON UptimeCheckIp{..}
          = Core.object
              (Core.catMaybes
                 [("ipAddress" Core..=) Core.<$> ipAddress,
                  ("location" Core..=) Core.<$> location,
                  ("region" Core..=) Core.<$> region])


-- | A descriptor for the value columns in a data point.
--
-- /See:/ 'newValueDescriptor' smart constructor.
data ValueDescriptor = ValueDescriptor
    {
      -- | The value key.
      key :: (Core.Maybe Core.Text)
      -- | The value stream kind.
    , metricKind :: (Core.Maybe ValueDescriptor_MetricKind)
      -- | The unit in which time/series point values are reported. unit follows the UCUM format for units as seen in https:\/\/unitsofmeasure.org\/ucum.html. unit is only valid if value/type is INTEGER, DOUBLE, DISTRIBUTION.
    , unit :: (Core.Maybe Core.Text)
      -- | The value type.
    , valueType :: (Core.Maybe ValueDescriptor_ValueType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValueDescriptor' with the minimum fields required to make a request.
newValueDescriptor 
    ::  ValueDescriptor
newValueDescriptor =
  ValueDescriptor
    { key = Core.Nothing
    , metricKind = Core.Nothing
    , unit = Core.Nothing
    , valueType = Core.Nothing
    }

instance Core.FromJSON ValueDescriptor where
        parseJSON
          = Core.withObject "ValueDescriptor"
              (\ o ->
                 ValueDescriptor Core.<$>
                   (o Core..:? "key") Core.<*> (o Core..:? "metricKind")
                     Core.<*> (o Core..:? "unit")
                     Core.<*> (o Core..:? "valueType"))

instance Core.ToJSON ValueDescriptor where
        toJSON ValueDescriptor{..}
          = Core.object
              (Core.catMaybes
                 [("key" Core..=) Core.<$> key,
                  ("metricKind" Core..=) Core.<$> metricKind,
                  ("unit" Core..=) Core.<$> unit,
                  ("valueType" Core..=) Core.<$> valueType])


-- | The VerifyNotificationChannel request.
--
-- /See:/ 'newVerifyNotificationChannelRequest' smart constructor.
newtype VerifyNotificationChannelRequest = VerifyNotificationChannelRequest
    {
      -- | Required. The verification code that was delivered to the channel as a result of invoking the SendNotificationChannelVerificationCode API method or that was retrieved from a verified channel via GetNotificationChannelVerificationCode. For example, one might have \"G-123456\" or \"TKNZGhhd2EyN3I1MnRnMjRv\" (in general, one is only guaranteed that the code is valid UTF-8; one should not make any assumptions regarding the structure or format of the code).
      code :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerifyNotificationChannelRequest' with the minimum fields required to make a request.
newVerifyNotificationChannelRequest 
    ::  VerifyNotificationChannelRequest
newVerifyNotificationChannelRequest =
  VerifyNotificationChannelRequest {code = Core.Nothing}

instance Core.FromJSON
           VerifyNotificationChannelRequest
         where
        parseJSON
          = Core.withObject "VerifyNotificationChannelRequest"
              (\ o ->
                 VerifyNotificationChannelRequest Core.<$>
                   (o Core..:? "code"))

instance Core.ToJSON VerifyNotificationChannelRequest
         where
        toJSON VerifyNotificationChannelRequest{..}
          = Core.object
              (Core.catMaybes [("code" Core..=) Core.<$> code])


-- | A WindowsBasedSli defines good/service as the count of time windows for which the provided service was of good quality. Criteria for determining if service was good are embedded in the window/criterion.
--
-- /See:/ 'newWindowsBasedSli' smart constructor.
data WindowsBasedSli = WindowsBasedSli
    {
      -- | A monitoring filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying a TimeSeries with ValueType = BOOL. The window is good if any true values appear in the window.
      goodBadMetricFilter :: (Core.Maybe Core.Text)
      -- | A window is good if its performance is high enough.
    , goodTotalRatioThreshold :: (Core.Maybe PerformanceThreshold)
      -- | A window is good if the metric\'s value is in a good range, averaged across returned streams.
    , metricMeanInRange :: (Core.Maybe MetricRange)
      -- | A window is good if the metric\'s value is in a good range, summed across returned streams.
    , metricSumInRange :: (Core.Maybe MetricRange)
      -- | Duration over which window quality is evaluated. Must be an integer fraction of a day and at least 60s.
    , windowPeriod :: (Core.Maybe Core.GDuration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WindowsBasedSli' with the minimum fields required to make a request.
newWindowsBasedSli 
    ::  WindowsBasedSli
newWindowsBasedSli =
  WindowsBasedSli
    { goodBadMetricFilter = Core.Nothing
    , goodTotalRatioThreshold = Core.Nothing
    , metricMeanInRange = Core.Nothing
    , metricSumInRange = Core.Nothing
    , windowPeriod = Core.Nothing
    }

instance Core.FromJSON WindowsBasedSli where
        parseJSON
          = Core.withObject "WindowsBasedSli"
              (\ o ->
                 WindowsBasedSli Core.<$>
                   (o Core..:? "goodBadMetricFilter") Core.<*>
                     (o Core..:? "goodTotalRatioThreshold")
                     Core.<*> (o Core..:? "metricMeanInRange")
                     Core.<*> (o Core..:? "metricSumInRange")
                     Core.<*> (o Core..:? "windowPeriod"))

instance Core.ToJSON WindowsBasedSli where
        toJSON WindowsBasedSli{..}
          = Core.object
              (Core.catMaybes
                 [("goodBadMetricFilter" Core..=) Core.<$>
                    goodBadMetricFilter,
                  ("goodTotalRatioThreshold" Core..=) Core.<$>
                    goodTotalRatioThreshold,
                  ("metricMeanInRange" Core..=) Core.<$>
                    metricMeanInRange,
                  ("metricSumInRange" Core..=) Core.<$>
                    metricSumInRange,
                  ("windowPeriod" Core..=) Core.<$> windowPeriod])

