{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Monitoring
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages your Cloud Monitoring data and configurations. Most projects
-- must be associated with a Workspace, with a few exceptions as noted on
-- the individual method pages. The table entries below are presented in
-- alphabetical order, not in order of common use. For explanations of the
-- concepts found in the table entries, read the Cloud Monitoring
-- documentation (https:\/\/cloud.google.com\/monitoring\/docs).
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference>
module Network.Google.Monitoring
    (
    -- * Service Configuration
      monitoringService

    -- * OAuth Scopes
    , monitoringReadScope
    , cloudPlatformScope
    , monitoringScope
    , monitoringWriteScope

    -- * API Declaration
    , MonitoringAPI

    -- * Resources

    -- ** monitoring.folders.timeSeries.list
    , module Network.Google.Resource.Monitoring.Folders.TimeSeries.List

    -- ** monitoring.organizations.timeSeries.list
    , module Network.Google.Resource.Monitoring.Organizations.TimeSeries.List

    -- ** monitoring.projects.alertPolicies.create
    , module Network.Google.Resource.Monitoring.Projects.AlertPolicies.Create

    -- ** monitoring.projects.alertPolicies.delete
    , module Network.Google.Resource.Monitoring.Projects.AlertPolicies.Delete

    -- ** monitoring.projects.alertPolicies.get
    , module Network.Google.Resource.Monitoring.Projects.AlertPolicies.Get

    -- ** monitoring.projects.alertPolicies.list
    , module Network.Google.Resource.Monitoring.Projects.AlertPolicies.List

    -- ** monitoring.projects.alertPolicies.patch
    , module Network.Google.Resource.Monitoring.Projects.AlertPolicies.Patch

    -- ** monitoring.projects.collectdTimeSeries.create
    , module Network.Google.Resource.Monitoring.Projects.CollectdTimeSeries.Create

    -- ** monitoring.projects.groups.create
    , module Network.Google.Resource.Monitoring.Projects.Groups.Create

    -- ** monitoring.projects.groups.delete
    , module Network.Google.Resource.Monitoring.Projects.Groups.Delete

    -- ** monitoring.projects.groups.get
    , module Network.Google.Resource.Monitoring.Projects.Groups.Get

    -- ** monitoring.projects.groups.list
    , module Network.Google.Resource.Monitoring.Projects.Groups.List

    -- ** monitoring.projects.groups.members.list
    , module Network.Google.Resource.Monitoring.Projects.Groups.Members.List

    -- ** monitoring.projects.groups.update
    , module Network.Google.Resource.Monitoring.Projects.Groups.Update

    -- ** monitoring.projects.metricDescriptors.create
    , module Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Create

    -- ** monitoring.projects.metricDescriptors.delete
    , module Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Delete

    -- ** monitoring.projects.metricDescriptors.get
    , module Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Get

    -- ** monitoring.projects.metricDescriptors.list
    , module Network.Google.Resource.Monitoring.Projects.MetricDescriptors.List

    -- ** monitoring.projects.monitoredResourceDescriptors.get
    , module Network.Google.Resource.Monitoring.Projects.MonitoredResourceDescriptors.Get

    -- ** monitoring.projects.monitoredResourceDescriptors.list
    , module Network.Google.Resource.Monitoring.Projects.MonitoredResourceDescriptors.List

    -- ** monitoring.projects.notificationChannelDescriptors.get
    , module Network.Google.Resource.Monitoring.Projects.NotificationChannelDescriptors.Get

    -- ** monitoring.projects.notificationChannelDescriptors.list
    , module Network.Google.Resource.Monitoring.Projects.NotificationChannelDescriptors.List

    -- ** monitoring.projects.notificationChannels.create
    , module Network.Google.Resource.Monitoring.Projects.NotificationChannels.Create

    -- ** monitoring.projects.notificationChannels.delete
    , module Network.Google.Resource.Monitoring.Projects.NotificationChannels.Delete

    -- ** monitoring.projects.notificationChannels.get
    , module Network.Google.Resource.Monitoring.Projects.NotificationChannels.Get

    -- ** monitoring.projects.notificationChannels.getVerificationCode
    , module Network.Google.Resource.Monitoring.Projects.NotificationChannels.GetVerificationCode

    -- ** monitoring.projects.notificationChannels.list
    , module Network.Google.Resource.Monitoring.Projects.NotificationChannels.List

    -- ** monitoring.projects.notificationChannels.patch
    , module Network.Google.Resource.Monitoring.Projects.NotificationChannels.Patch

    -- ** monitoring.projects.notificationChannels.sendVerificationCode
    , module Network.Google.Resource.Monitoring.Projects.NotificationChannels.SendVerificationCode

    -- ** monitoring.projects.notificationChannels.verify
    , module Network.Google.Resource.Monitoring.Projects.NotificationChannels.Verify

    -- ** monitoring.projects.timeSeries.create
    , module Network.Google.Resource.Monitoring.Projects.TimeSeries.Create

    -- ** monitoring.projects.timeSeries.list
    , module Network.Google.Resource.Monitoring.Projects.TimeSeries.List

    -- ** monitoring.projects.timeSeries.query
    , module Network.Google.Resource.Monitoring.Projects.TimeSeries.Query

    -- ** monitoring.projects.uptimeCheckConfigs.create
    , module Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Create

    -- ** monitoring.projects.uptimeCheckConfigs.delete
    , module Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Delete

    -- ** monitoring.projects.uptimeCheckConfigs.get
    , module Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Get

    -- ** monitoring.projects.uptimeCheckConfigs.list
    , module Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.List

    -- ** monitoring.projects.uptimeCheckConfigs.patch
    , module Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Patch

    -- ** monitoring.services.create
    , module Network.Google.Resource.Monitoring.Services.Create

    -- ** monitoring.services.delete
    , module Network.Google.Resource.Monitoring.Services.Delete

    -- ** monitoring.services.get
    , module Network.Google.Resource.Monitoring.Services.Get

    -- ** monitoring.services.list
    , module Network.Google.Resource.Monitoring.Services.List

    -- ** monitoring.services.patch
    , module Network.Google.Resource.Monitoring.Services.Patch

    -- ** monitoring.services.serviceLevelObjectives.create
    , module Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Create

    -- ** monitoring.services.serviceLevelObjectives.delete
    , module Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Delete

    -- ** monitoring.services.serviceLevelObjectives.get
    , module Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Get

    -- ** monitoring.services.serviceLevelObjectives.list
    , module Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.List

    -- ** monitoring.services.serviceLevelObjectives.patch
    , module Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Patch

    -- ** monitoring.uptimeCheckIps.list
    , module Network.Google.Resource.Monitoring.UptimeCheckIPs.List

    -- * Types

    -- ** MetricDescriptorValueType
    , MetricDescriptorValueType (..)

    -- ** NotificationChannelDescriptorLaunchStage
    , NotificationChannelDescriptorLaunchStage (..)

    -- ** MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription
    , mrdLaunchStage

    -- ** BasicSli
    , BasicSli
    , basicSli
    , bsLocation
    , bsLatency
    , bsAvailability
    , bsMethod
    , bsVersion

    -- ** CollectdValueDataSourceType
    , CollectdValueDataSourceType (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ValueDescriptorMetricKind
    , ValueDescriptorMetricKind (..)

    -- ** ServiceLevelObjective
    , ServiceLevelObjective
    , serviceLevelObjective
    , sloUserLabels
    , sloName
    , sloCalendarPeriod
    , sloServiceLevelIndicator
    , sloGoal
    , sloDisplayName
    , sloRollingPeriod

    -- ** ListNotificationChannelsResponse
    , ListNotificationChannelsResponse
    , listNotificationChannelsResponse
    , lncrNextPageToken
    , lncrNotificationChannels
    , lncrTotalSize

    -- ** ListTimeSeriesResponse
    , ListTimeSeriesResponse
    , listTimeSeriesResponse
    , ltsrNextPageToken
    , ltsrExecutionErrors
    , ltsrUnit
    , ltsrTimeSeries

    -- ** GetNotificationChannelVerificationCodeResponse
    , GetNotificationChannelVerificationCodeResponse
    , getNotificationChannelVerificationCodeResponse
    , gncvcrCode
    , gncvcrExpireTime

    -- ** Telemetry
    , Telemetry
    , telemetry
    , tResourceName

    -- ** MonitoringQueryLanguageCondition
    , MonitoringQueryLanguageCondition
    , monitoringQueryLanguageCondition
    , mqlcQuery
    , mqlcTrigger
    , mqlcDuration

    -- ** ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

    -- ** ListNotificationChannelDescriptorsResponse
    , ListNotificationChannelDescriptorsResponse
    , listNotificationChannelDescriptorsResponse
    , lncdrNextPageToken
    , lncdrChannelDescriptors

    -- ** TimeSeriesRatio
    , TimeSeriesRatio
    , timeSeriesRatio
    , tsrTotalServiceFilter
    , tsrGoodServiceFilter
    , tsrBadServiceFilter

    -- ** UptimeCheckIPRegion
    , UptimeCheckIPRegion (..)

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

    -- ** GoogleMonitoringV3Range
    , GoogleMonitoringV3Range
    , googleMonitoringV3Range
    , gmvrMax
    , gmvrMin

    -- ** Group
    , Group
    , group'
    , gName
    , gDisplayName
    , gFilter
    , gIsCluster
    , gParentName

    -- ** TypedValue
    , TypedValue
    , typedValue
    , tvBoolValue
    , tvDoubleValue
    , tvStringValue
    , tvDistributionValue
    , tvInt64Value

    -- ** MonitoredResourceLabels
    , MonitoredResourceLabels
    , monitoredResourceLabels
    , mrlAddtional

    -- ** MonitoredResourceMetadata
    , MonitoredResourceMetadata
    , monitoredResourceMetadata
    , mrmUserLabels
    , mrmSystemLabels

    -- ** NotificationChannelUserLabels
    , NotificationChannelUserLabels
    , notificationChannelUserLabels
    , nculAddtional

    -- ** ServicesServiceLevelObjectivesGetView
    , ServicesServiceLevelObjectivesGetView (..)

    -- ** SourceContext
    , SourceContext
    , sourceContext
    , scFileName

    -- ** BasicAuthentication
    , BasicAuthentication
    , basicAuthentication
    , baUsername
    , baPassword

    -- ** Distribution
    , Distribution
    , distribution
    , dSumOfSquaredDeviation
    , dMean
    , dCount
    , dBucketCounts
    , dExemplars
    , dRange
    , dBucketOptions

    -- ** MetricThresholdComparison
    , MetricThresholdComparison (..)

    -- ** ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
    , ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner (..)

    -- ** AggregationPerSeriesAligner
    , AggregationPerSeriesAligner (..)

    -- ** Field
    , Field
    , field
    , fKind
    , fOneofIndex
    , fName
    , fJSONName
    , fCardinality
    , fOptions
    , fPacked
    , fDefaultValue
    , fNumber
    , fTypeURL

    -- ** FieldKind
    , FieldKind (..)

    -- ** ExemplarAttachmentsItem
    , ExemplarAttachmentsItem
    , exemplarAttachmentsItem
    , eaiAddtional

    -- ** Service
    , Service
    , service
    , sTelemetry
    , sCustom
    , sUserLabels
    , sIstioCanonicalService
    , sName
    , sAppEngine
    , sClusterIstio
    , sDisplayName
    , sMeshIstio
    , sCloudEndpoints

    -- ** QueryTimeSeriesRequest
    , QueryTimeSeriesRequest
    , queryTimeSeriesRequest
    , qtsrQuery
    , qtsrPageToken
    , qtsrPageSize

    -- ** NotificationChannelDescriptor
    , NotificationChannelDescriptor
    , notificationChannelDescriptor
    , ncdName
    , ncdDisplayName
    , ncdLabels
    , ncdType
    , ncdDescription
    , ncdLaunchStage

    -- ** LabelValue
    , LabelValue
    , labelValue
    , lvBoolValue
    , lvStringValue
    , lvInt64Value

    -- ** Empty
    , Empty
    , empty

    -- ** ListGroupsResponse
    , ListGroupsResponse
    , listGroupsResponse
    , lgrNextPageToken
    , lgrGroup

    -- ** ListMetricDescriptorsResponse
    , ListMetricDescriptorsResponse
    , listMetricDescriptorsResponse
    , lmdrMetricDescriptors
    , lmdrNextPageToken

    -- ** WindowsBasedSli
    , WindowsBasedSli
    , windowsBasedSli
    , wbsMetricSumInRange
    , wbsWindowPeriod
    , wbsGoodTotalRatioThreshold
    , wbsGoodBadMetricFilter
    , wbsMetricMeanInRange

    -- ** FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
    , FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer (..)

    -- ** HTTPCheckRequestMethod
    , HTTPCheckRequestMethod (..)

    -- ** Error'
    , Error'
    , error'
    , eStatus
    , ePointCount

    -- ** VerifyNotificationChannelRequest
    , VerifyNotificationChannelRequest
    , verifyNotificationChannelRequest
    , vncrCode

    -- ** OptionValue
    , OptionValue
    , optionValue
    , ovAddtional

    -- ** DistributionCut
    , DistributionCut
    , distributionCut
    , dcRange
    , dcDistributionFilter

    -- ** ProjectsTimeSeriesListAggregationPerSeriesAligner
    , ProjectsTimeSeriesListAggregationPerSeriesAligner (..)

    -- ** MetricRange
    , MetricRange
    , metricRange
    , mrRange
    , mrTimeSeries

    -- ** AggregationCrossSeriesReducer
    , AggregationCrossSeriesReducer (..)

    -- ** NotificationChannelLabels
    , NotificationChannelLabels
    , notificationChannelLabels
    , nclAddtional

    -- ** MetricDescriptorMetadataLaunchStage
    , MetricDescriptorMetadataLaunchStage (..)

    -- ** CreateTimeSeriesRequest
    , CreateTimeSeriesRequest
    , createTimeSeriesRequest
    , ctsrTimeSeries

    -- ** Custom
    , Custom
    , custom

    -- ** DroppedLabelsLabel
    , DroppedLabelsLabel
    , droppedLabelsLabel
    , dllAddtional

    -- ** MetricThreshold
    , MetricThreshold
    , metricThreshold
    , mtThresholdValue
    , mtAggregations
    , mtDenominatorAggregations
    , mtComparison
    , mtDenominatorFilter
    , mtFilter
    , mtTrigger
    , mtDuration

    -- ** SpanContext
    , SpanContext
    , spanContext
    , scSpanName

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    , ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer (..)

    -- ** ValueDescriptorValueType
    , ValueDescriptorValueType (..)

    -- ** NotificationChannelVerificationStatus
    , NotificationChannelVerificationStatus (..)

    -- ** CreateTimeSeriesSummary
    , CreateTimeSeriesSummary
    , createTimeSeriesSummary
    , ctssTotalPointCount
    , ctssSuccessPointCount
    , ctssErrors

    -- ** MonitoredResourceMetadataUserLabels
    , MonitoredResourceMetadataUserLabels
    , monitoredResourceMetadataUserLabels
    , mrmulAddtional

    -- ** InternalChecker
    , InternalChecker
    , internalChecker
    , icState
    , icNetwork
    , icName
    , icPeerProjectId
    , icGcpZone
    , icDisplayName

    -- ** NotificationChannel
    , NotificationChannel
    , notificationChannel
    , ncMutationRecords
    , ncEnabled
    , ncCreationRecord
    , ncUserLabels
    , ncName
    , ncDisplayName
    , ncVerificationStatus
    , ncLabels
    , ncType
    , ncDescription

    -- ** OrganizationsTimeSeriesListAggregationPerSeriesAligner
    , OrganizationsTimeSeriesListAggregationPerSeriesAligner (..)

    -- ** ListServiceLevelObjectivesResponse
    , ListServiceLevelObjectivesResponse
    , listServiceLevelObjectivesResponse
    , lslorNextPageToken
    , lslorServiceLevelObjectives

    -- ** ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse
    , listMonitoredResourceDescriptorsResponse
    , lmrdrNextPageToken
    , lmrdrResourceDescriptors

    -- ** LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- ** Explicit
    , Explicit
    , explicit
    , eBounds

    -- ** MetricLabels
    , MetricLabels
    , metricLabels
    , mlAddtional

    -- ** CollectdPayloadMetadata
    , CollectdPayloadMetadata
    , collectdPayloadMetadata
    , cpmAddtional

    -- ** ContentMatcherMatcher
    , ContentMatcherMatcher (..)

    -- ** CollectdValue
    , CollectdValue
    , collectdValue
    , cvDataSourceName
    , cvDataSourceType
    , cvValue

    -- ** CreateCollectdTimeSeriesRequest
    , CreateCollectdTimeSeriesRequest
    , createCollectdTimeSeriesRequest
    , cctsrCollectdPayloads
    , cctsrResource
    , cctsrCollectdVersion

    -- ** TypeSyntax
    , TypeSyntax (..)

    -- ** FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
    , FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner (..)

    -- ** OrganizationsTimeSeriesListView
    , OrganizationsTimeSeriesListView (..)

    -- ** ProjectsTimeSeriesListAggregationCrossSeriesReducer
    , ProjectsTimeSeriesListAggregationCrossSeriesReducer (..)

    -- ** PointData
    , PointData
    , pointData
    , pdValues
    , pdTimeInterval

    -- ** OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
    , OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner (..)

    -- ** Aggregation
    , Aggregation
    , aggregation
    , aPerSeriesAligner
    , aCrossSeriesReducer
    , aAlignmentPeriod
    , aGroupByFields

    -- ** UptimeCheckConfig
    , UptimeCheckConfig
    , uptimeCheckConfig
    , uccInternalCheckers
    , uccPeriod
    , uccContentMatchers
    , uccName
    , uccMonitoredResource
    , uccSelectedRegions
    , uccIsInternal
    , uccDisplayName
    , uccResourceGroup
    , uccTimeout
    , uccHTTPCheck
    , uccTCPCheck

    -- ** Point
    , Point
    , point
    , pValue
    , pInterval

    -- ** FoldersTimeSeriesListView
    , FoldersTimeSeriesListView (..)

    -- ** CollectdPayload
    , CollectdPayload
    , collectdPayload
    , cpStartTime
    , cpPluginInstance
    , cpValues
    , cpTypeInstance
    , cpEndTime
    , cpMetadata
    , cpType
    , cpPlugin

    -- ** MutationRecord
    , MutationRecord
    , mutationRecord
    , mrMutatedBy
    , mrMutateTime

    -- ** Metric
    , Metric
    , metric
    , mLabels
    , mType

    -- ** CollectdPayloadError
    , CollectdPayloadError
    , collectdPayloadError
    , cpeError
    , cpeValueErrors
    , cpeIndex

    -- ** ProjectsTimeSeriesListView
    , ProjectsTimeSeriesListView (..)

    -- ** OperationMetadataState
    , OperationMetadataState (..)

    -- ** SendNotificationChannelVerificationCodeRequest
    , SendNotificationChannelVerificationCodeRequest
    , sendNotificationChannelVerificationCodeRequest

    -- ** Exponential
    , Exponential
    , exponential
    , eGrowthFactor
    , eScale
    , eNumFiniteBuckets

    -- ** PerformanceThreshold
    , PerformanceThreshold
    , performanceThreshold
    , ptBasicSliPerformance
    , ptPerformance
    , ptThreshold

    -- ** LogMatch
    , LogMatch
    , logMatch
    , lmLabelExtractors
    , lmFilter

    -- ** HTTPCheckContentType
    , HTTPCheckContentType (..)

    -- ** ResourceGroupResourceType
    , ResourceGroupResourceType (..)

    -- ** Range
    , Range
    , range
    , rMax
    , rMin

    -- ** IstioCanonicalService
    , IstioCanonicalService
    , istioCanonicalService
    , icsCanonicalService
    , icsMeshUid
    , icsCanonicalServiceNamespace

    -- ** AppEngine
    , AppEngine
    , appEngine
    , aeModuleId

    -- ** QueryTimeSeriesResponse
    , QueryTimeSeriesResponse
    , queryTimeSeriesResponse
    , qtsrNextPageToken
    , qtsrPartialErrors
    , qtsrTimeSeriesDescriptor
    , qtsrTimeSeriesData

    -- ** OrganizationsTimeSeriesListAggregationCrossSeriesReducer
    , OrganizationsTimeSeriesListAggregationCrossSeriesReducer (..)

    -- ** MonitoredResource
    , MonitoredResource
    , monitoredResource
    , mrLabels
    , mrType

    -- ** UptimeCheckIP
    , UptimeCheckIP
    , uptimeCheckIP
    , uciIPAddress
    , uciLocation
    , uciRegion

    -- ** ClusterIstio
    , ClusterIstio
    , clusterIstio
    , ciLocation
    , ciServiceNamespace
    , ciServiceName
    , ciClusterName

    -- ** AlertPolicyUserLabels
    , AlertPolicyUserLabels
    , alertPolicyUserLabels
    , apulAddtional

    -- ** Documentation
    , Documentation
    , documentation
    , dContent
    , dMimeType

    -- ** Xgafv
    , Xgafv (..)

    -- ** LogMatchLabelExtractors
    , LogMatchLabelExtractors
    , logMatchLabelExtractors
    , lmleAddtional

    -- ** AvailabilityCriteria
    , AvailabilityCriteria
    , availabilityCriteria

    -- ** Exemplar
    , Exemplar
    , exemplar
    , eAttachments
    , eValue
    , eTimestamp

    -- ** NotificationRateLimit
    , NotificationRateLimit
    , notificationRateLimit
    , nrlPeriod

    -- ** FoldersTimeSeriesListAggregationCrossSeriesReducer
    , FoldersTimeSeriesListAggregationCrossSeriesReducer (..)

    -- ** MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

    -- ** ServiceLevelIndicator
    , ServiceLevelIndicator
    , serviceLevelIndicator
    , sliBasicSli
    , sliRequestBased
    , sliWindowsBased

    -- ** TimeInterval
    , TimeInterval
    , timeInterval
    , tiStartTime
    , tiEndTime

    -- ** HTTPCheckHeaders
    , HTTPCheckHeaders
    , hTTPCheckHeaders
    , httpchAddtional

    -- ** TimeSeriesMetricKind
    , TimeSeriesMetricKind (..)

    -- ** MonitoredResourceMetadataSystemLabels
    , MonitoredResourceMetadataSystemLabels
    , monitoredResourceMetadataSystemLabels
    , mrmslAddtional

    -- ** ContentMatcher
    , ContentMatcher
    , contentMatcher
    , cmMatcher
    , cmContent

    -- ** ListGroupMembersResponse
    , ListGroupMembersResponse
    , listGroupMembersResponse
    , lgmrNextPageToken
    , lgmrMembers
    , lgmrTotalSize

    -- ** AlertStrategy
    , AlertStrategy
    , alertStrategy
    , asNotificationRateLimit

    -- ** LabelDescriptor
    , LabelDescriptor
    , labelDescriptor
    , ldKey
    , ldValueType
    , ldDescription

    -- ** TimeSeriesValueType
    , TimeSeriesValueType (..)

    -- ** Linear
    , Linear
    , linear
    , lOffSet
    , lWidth
    , lNumFiniteBuckets

    -- ** MonitoredResourceDescriptorLaunchStage
    , MonitoredResourceDescriptorLaunchStage (..)

    -- ** AlertPolicyCombiner
    , AlertPolicyCombiner (..)

    -- ** ListUptimeCheckIPsResponse
    , ListUptimeCheckIPsResponse
    , listUptimeCheckIPsResponse
    , lucirNextPageToken
    , lucirUptimeCheckIPs

    -- ** GetNotificationChannelVerificationCodeRequest
    , GetNotificationChannelVerificationCodeRequest
    , getNotificationChannelVerificationCodeRequest
    , gExpireTime

    -- ** ResourceGroup
    , ResourceGroup
    , resourceGroup
    , rgResourceType
    , rgGroupId

    -- ** DroppedLabels
    , DroppedLabels
    , droppedLabels
    , dlLabel

    -- ** TimeSeriesDescriptor
    , TimeSeriesDescriptor
    , timeSeriesDescriptor
    , tsdPointDescriptors
    , tsdLabelDescriptors

    -- ** OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    , OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer (..)

    -- ** FieldCardinality
    , FieldCardinality (..)

    -- ** Trigger
    , Trigger
    , trigger
    , tPercent
    , tCount

    -- ** ServiceLevelObjectiveUserLabels
    , ServiceLevelObjectiveUserLabels
    , serviceLevelObjectiveUserLabels
    , sloulAddtional

    -- ** ValueDescriptor
    , ValueDescriptor
    , valueDescriptor
    , vdMetricKind
    , vdKey
    , vdValueType
    , vdUnit

    -- ** Type
    , Type
    , type'
    , tSourceContext
    , tOneofs
    , tName
    , tOptions
    , tFields
    , tSyntax

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omState
    , omUpdateTime
    , omCreateTime

    -- ** UptimeCheckConfigSelectedRegionsItem
    , UptimeCheckConfigSelectedRegionsItem (..)

    -- ** MetricDescriptorMetricKind
    , MetricDescriptorMetricKind (..)

    -- ** CreateCollectdTimeSeriesResponse
    , CreateCollectdTimeSeriesResponse
    , createCollectdTimeSeriesResponse
    , cctsrSummary
    , cctsrPayloadErrors

    -- ** LatencyCriteria
    , LatencyCriteria
    , latencyCriteria
    , lcThreshold

    -- ** MeshIstio
    , MeshIstio
    , meshIstio
    , miMeshUid
    , miServiceNamespace
    , miServiceName

    -- ** Option
    , Option
    , option
    , oValue
    , oName

    -- ** ServiceLevelObjectiveCalendarPeriod
    , ServiceLevelObjectiveCalendarPeriod (..)

    -- ** FoldersTimeSeriesListAggregationPerSeriesAligner
    , FoldersTimeSeriesListAggregationPerSeriesAligner (..)

    -- ** Condition
    , Condition
    , condition
    , cConditionAbsent
    , cConditionThreshold
    , cName
    , cConditionMonitoringQueryLanguage
    , cConditionMatchedLog
    , cDisplayName

    -- ** TimeSeriesData
    , TimeSeriesData
    , timeSeriesData
    , tsdPointData
    , tsdLabelValues

    -- ** ServicesServiceLevelObjectivesListView
    , ServicesServiceLevelObjectivesListView (..)

    -- ** BucketOptions
    , BucketOptions
    , bucketOptions
    , boExponentialBuckets
    , boLinearBuckets
    , boExplicitBuckets

    -- ** ListUptimeCheckConfigsResponse
    , ListUptimeCheckConfigsResponse
    , listUptimeCheckConfigsResponse
    , luccrUptimeCheckConfigs
    , luccrNextPageToken
    , luccrTotalSize

    -- ** HTTPCheck
    , HTTPCheck
    , hTTPCheck
    , httpcUseSSL
    , httpcPath
    , httpcBody
    , httpcMaskHeaders
    , httpcHeaders
    , httpcValidateSSL
    , httpcRequestMethod
    , httpcAuthInfo
    , httpcContentType
    , httpcPort

    -- ** TimeSeries
    , TimeSeries
    , timeSeries
    , tsPoints
    , tsMetricKind
    , tsMetric
    , tsResource
    , tsMetadata
    , tsValueType
    , tsUnit

    -- ** MetricDescriptorLaunchStage
    , MetricDescriptorLaunchStage (..)

    -- ** AlertPolicy
    , AlertPolicy
    , alertPolicy
    , apEnabled
    , apNotificationChannels
    , apMutationRecord
    , apCreationRecord
    , apUserLabels
    , apName
    , apDocumentation
    , apValidity
    , apDisplayName
    , apAlertStrategy
    , apConditions
    , apCombiner

    -- ** RequestBasedSli
    , RequestBasedSli
    , requestBasedSli
    , rbsGoodTotalRatio
    , rbsDistributionCut

    -- ** CloudEndpoints
    , CloudEndpoints
    , cloudEndpoints
    , ceService

    -- ** ListAlertPoliciesResponse
    , ListAlertPoliciesResponse
    , listAlertPoliciesResponse
    , laprNextPageToken
    , laprTotalSize
    , laprAlertPolicies

    -- ** TCPCheck
    , TCPCheck
    , tcpCheck
    , tcPort

    -- ** InternalCheckerState
    , InternalCheckerState (..)

    -- ** ServiceUserLabels
    , ServiceUserLabels
    , serviceUserLabels
    , sulAddtional

    -- ** MetricAbsence
    , MetricAbsence
    , metricAbsence
    , maAggregations
    , maFilter
    , maTrigger
    , maDuration

    -- ** CollectdValueError
    , CollectdValueError
    , collectdValueError
    , cveError
    , cveIndex
    ) where

import Network.Google.Prelude
import Network.Google.Monitoring.Types
import Network.Google.Resource.Monitoring.Folders.TimeSeries.List
import Network.Google.Resource.Monitoring.Organizations.TimeSeries.List
import Network.Google.Resource.Monitoring.Projects.AlertPolicies.Create
import Network.Google.Resource.Monitoring.Projects.AlertPolicies.Delete
import Network.Google.Resource.Monitoring.Projects.AlertPolicies.Get
import Network.Google.Resource.Monitoring.Projects.AlertPolicies.List
import Network.Google.Resource.Monitoring.Projects.AlertPolicies.Patch
import Network.Google.Resource.Monitoring.Projects.CollectdTimeSeries.Create
import Network.Google.Resource.Monitoring.Projects.Groups.Create
import Network.Google.Resource.Monitoring.Projects.Groups.Delete
import Network.Google.Resource.Monitoring.Projects.Groups.Get
import Network.Google.Resource.Monitoring.Projects.Groups.List
import Network.Google.Resource.Monitoring.Projects.Groups.Members.List
import Network.Google.Resource.Monitoring.Projects.Groups.Update
import Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Create
import Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Delete
import Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Get
import Network.Google.Resource.Monitoring.Projects.MetricDescriptors.List
import Network.Google.Resource.Monitoring.Projects.MonitoredResourceDescriptors.Get
import Network.Google.Resource.Monitoring.Projects.MonitoredResourceDescriptors.List
import Network.Google.Resource.Monitoring.Projects.NotificationChannelDescriptors.Get
import Network.Google.Resource.Monitoring.Projects.NotificationChannelDescriptors.List
import Network.Google.Resource.Monitoring.Projects.NotificationChannels.Create
import Network.Google.Resource.Monitoring.Projects.NotificationChannels.Delete
import Network.Google.Resource.Monitoring.Projects.NotificationChannels.Get
import Network.Google.Resource.Monitoring.Projects.NotificationChannels.GetVerificationCode
import Network.Google.Resource.Monitoring.Projects.NotificationChannels.List
import Network.Google.Resource.Monitoring.Projects.NotificationChannels.Patch
import Network.Google.Resource.Monitoring.Projects.NotificationChannels.SendVerificationCode
import Network.Google.Resource.Monitoring.Projects.NotificationChannels.Verify
import Network.Google.Resource.Monitoring.Projects.TimeSeries.Create
import Network.Google.Resource.Monitoring.Projects.TimeSeries.List
import Network.Google.Resource.Monitoring.Projects.TimeSeries.Query
import Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Create
import Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Delete
import Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Get
import Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.List
import Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Patch
import Network.Google.Resource.Monitoring.Services.Create
import Network.Google.Resource.Monitoring.Services.Delete
import Network.Google.Resource.Monitoring.Services.Get
import Network.Google.Resource.Monitoring.Services.List
import Network.Google.Resource.Monitoring.Services.Patch
import Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Create
import Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Delete
import Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Get
import Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.List
import Network.Google.Resource.Monitoring.Services.ServiceLevelObjectives.Patch
import Network.Google.Resource.Monitoring.UptimeCheckIPs.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Monitoring API service.
type MonitoringAPI =
     FoldersTimeSeriesListResource :<|>
       UptimeCheckIPsListResource
       :<|> OrganizationsTimeSeriesListResource
       :<|> ProjectsMetricDescriptorsListResource
       :<|> ProjectsMetricDescriptorsGetResource
       :<|> ProjectsMetricDescriptorsCreateResource
       :<|> ProjectsMetricDescriptorsDeleteResource
       :<|> ProjectsGroupsMembersListResource
       :<|> ProjectsGroupsListResource
       :<|> ProjectsGroupsGetResource
       :<|> ProjectsGroupsCreateResource
       :<|> ProjectsGroupsDeleteResource
       :<|> ProjectsGroupsUpdateResource
       :<|> ProjectsCollectdTimeSeriesCreateResource
       :<|> ProjectsUptimeCheckConfigsListResource
       :<|> ProjectsUptimeCheckConfigsPatchResource
       :<|> ProjectsUptimeCheckConfigsGetResource
       :<|> ProjectsUptimeCheckConfigsCreateResource
       :<|> ProjectsUptimeCheckConfigsDeleteResource
       :<|> ProjectsNotificationChannelsVerifyResource
       :<|> ProjectsNotificationChannelsListResource
       :<|> ProjectsNotificationChannelsPatchResource
       :<|> ProjectsNotificationChannelsGetResource
       :<|> ProjectsNotificationChannelsCreateResource
       :<|>
       ProjectsNotificationChannelsGetVerificationCodeResource
       :<|>
       ProjectsNotificationChannelsSendVerificationCodeResource
       :<|> ProjectsNotificationChannelsDeleteResource
       :<|> ProjectsMonitoredResourceDescriptorsListResource
       :<|> ProjectsMonitoredResourceDescriptorsGetResource
       :<|> ProjectsAlertPoliciesListResource
       :<|> ProjectsAlertPoliciesPatchResource
       :<|> ProjectsAlertPoliciesGetResource
       :<|> ProjectsAlertPoliciesCreateResource
       :<|> ProjectsAlertPoliciesDeleteResource
       :<|>
       ProjectsNotificationChannelDescriptorsListResource
       :<|>
       ProjectsNotificationChannelDescriptorsGetResource
       :<|> ProjectsTimeSeriesListResource
       :<|> ProjectsTimeSeriesCreateResource
       :<|> ProjectsTimeSeriesQueryResource
       :<|> ServicesServiceLevelObjectivesListResource
       :<|> ServicesServiceLevelObjectivesPatchResource
       :<|> ServicesServiceLevelObjectivesGetResource
       :<|> ServicesServiceLevelObjectivesCreateResource
       :<|> ServicesServiceLevelObjectivesDeleteResource
       :<|> ServicesListResource
       :<|> ServicesPatchResource
       :<|> ServicesGetResource
       :<|> ServicesCreateResource
       :<|> ServicesDeleteResource
