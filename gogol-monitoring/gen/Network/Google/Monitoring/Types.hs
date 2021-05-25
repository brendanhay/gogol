{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Monitoring.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Monitoring.Types
    (
    -- * Service Configuration
      monitoringService

    -- * OAuth Scopes
    , monitoringReadScope
    , cloudPlatformScope
    , monitoringScope
    , monitoringWriteScope

    -- * MetricDescriptorValueType
    , MetricDescriptorValueType (..)

    -- * NotificationChannelDescriptorLaunchStage
    , NotificationChannelDescriptorLaunchStage (..)

    -- * MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription
    , mrdLaunchStage

    -- * BasicSli
    , BasicSli
    , basicSli
    , bsLocation
    , bsLatency
    , bsAvailability
    , bsMethod
    , bsVersion

    -- * CollectdValueDataSourceType
    , CollectdValueDataSourceType (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ValueDescriptorMetricKind
    , ValueDescriptorMetricKind (..)

    -- * ServiceLevelObjective
    , ServiceLevelObjective
    , serviceLevelObjective
    , sloUserLabels
    , sloName
    , sloCalendarPeriod
    , sloServiceLevelIndicator
    , sloGoal
    , sloDisplayName
    , sloRollingPeriod

    -- * ListNotificationChannelsResponse
    , ListNotificationChannelsResponse
    , listNotificationChannelsResponse
    , lncrNextPageToken
    , lncrNotificationChannels
    , lncrTotalSize

    -- * ListTimeSeriesResponse
    , ListTimeSeriesResponse
    , listTimeSeriesResponse
    , ltsrNextPageToken
    , ltsrExecutionErrors
    , ltsrUnit
    , ltsrTimeSeries

    -- * GetNotificationChannelVerificationCodeResponse
    , GetNotificationChannelVerificationCodeResponse
    , getNotificationChannelVerificationCodeResponse
    , gncvcrCode
    , gncvcrExpireTime

    -- * Telemetry
    , Telemetry
    , telemetry
    , tResourceName

    -- * MonitoringQueryLanguageCondition
    , MonitoringQueryLanguageCondition
    , monitoringQueryLanguageCondition
    , mqlcQuery
    , mqlcTrigger
    , mqlcDuration

    -- * ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

    -- * ListNotificationChannelDescriptorsResponse
    , ListNotificationChannelDescriptorsResponse
    , listNotificationChannelDescriptorsResponse
    , lncdrNextPageToken
    , lncdrChannelDescriptors

    -- * TimeSeriesRatio
    , TimeSeriesRatio
    , timeSeriesRatio
    , tsrTotalServiceFilter
    , tsrGoodServiceFilter
    , tsrBadServiceFilter

    -- * UptimeCheckIPRegion
    , UptimeCheckIPRegion (..)

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

    -- * GoogleMonitoringV3Range
    , GoogleMonitoringV3Range
    , googleMonitoringV3Range
    , gmvrMax
    , gmvrMin

    -- * Group
    , Group
    , group'
    , gName
    , gDisplayName
    , gFilter
    , gIsCluster
    , gParentName

    -- * TypedValue
    , TypedValue
    , typedValue
    , tvBoolValue
    , tvDoubleValue
    , tvStringValue
    , tvDistributionValue
    , tvInt64Value

    -- * MonitoredResourceLabels
    , MonitoredResourceLabels
    , monitoredResourceLabels
    , mrlAddtional

    -- * MonitoredResourceMetadata
    , MonitoredResourceMetadata
    , monitoredResourceMetadata
    , mrmUserLabels
    , mrmSystemLabels

    -- * NotificationChannelUserLabels
    , NotificationChannelUserLabels
    , notificationChannelUserLabels
    , nculAddtional

    -- * ServicesServiceLevelObjectivesGetView
    , ServicesServiceLevelObjectivesGetView (..)

    -- * SourceContext
    , SourceContext
    , sourceContext
    , scFileName

    -- * BasicAuthentication
    , BasicAuthentication
    , basicAuthentication
    , baUsername
    , baPassword

    -- * Distribution
    , Distribution
    , distribution
    , dSumOfSquaredDeviation
    , dMean
    , dCount
    , dBucketCounts
    , dExemplars
    , dRange
    , dBucketOptions

    -- * MetricThresholdComparison
    , MetricThresholdComparison (..)

    -- * ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
    , ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner (..)

    -- * AggregationPerSeriesAligner
    , AggregationPerSeriesAligner (..)

    -- * Field
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

    -- * FieldKind
    , FieldKind (..)

    -- * ExemplarAttachmentsItem
    , ExemplarAttachmentsItem
    , exemplarAttachmentsItem
    , eaiAddtional

    -- * Service
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

    -- * QueryTimeSeriesRequest
    , QueryTimeSeriesRequest
    , queryTimeSeriesRequest
    , qtsrQuery
    , qtsrPageToken
    , qtsrPageSize

    -- * NotificationChannelDescriptor
    , NotificationChannelDescriptor
    , notificationChannelDescriptor
    , ncdName
    , ncdDisplayName
    , ncdLabels
    , ncdType
    , ncdDescription
    , ncdLaunchStage

    -- * LabelValue
    , LabelValue
    , labelValue
    , lvBoolValue
    , lvStringValue
    , lvInt64Value

    -- * Empty
    , Empty
    , empty

    -- * ListGroupsResponse
    , ListGroupsResponse
    , listGroupsResponse
    , lgrNextPageToken
    , lgrGroup

    -- * ListMetricDescriptorsResponse
    , ListMetricDescriptorsResponse
    , listMetricDescriptorsResponse
    , lmdrMetricDescriptors
    , lmdrNextPageToken

    -- * WindowsBasedSli
    , WindowsBasedSli
    , windowsBasedSli
    , wbsMetricSumInRange
    , wbsWindowPeriod
    , wbsGoodTotalRatioThreshold
    , wbsGoodBadMetricFilter
    , wbsMetricMeanInRange

    -- * FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
    , FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer (..)

    -- * HTTPCheckRequestMethod
    , HTTPCheckRequestMethod (..)

    -- * Error'
    , Error'
    , error'
    , eStatus
    , ePointCount

    -- * VerifyNotificationChannelRequest
    , VerifyNotificationChannelRequest
    , verifyNotificationChannelRequest
    , vncrCode

    -- * OptionValue
    , OptionValue
    , optionValue
    , ovAddtional

    -- * DistributionCut
    , DistributionCut
    , distributionCut
    , dcRange
    , dcDistributionFilter

    -- * ProjectsTimeSeriesListAggregationPerSeriesAligner
    , ProjectsTimeSeriesListAggregationPerSeriesAligner (..)

    -- * MetricRange
    , MetricRange
    , metricRange
    , mrRange
    , mrTimeSeries

    -- * AggregationCrossSeriesReducer
    , AggregationCrossSeriesReducer (..)

    -- * NotificationChannelLabels
    , NotificationChannelLabels
    , notificationChannelLabels
    , nclAddtional

    -- * MetricDescriptorMetadataLaunchStage
    , MetricDescriptorMetadataLaunchStage (..)

    -- * CreateTimeSeriesRequest
    , CreateTimeSeriesRequest
    , createTimeSeriesRequest
    , ctsrTimeSeries

    -- * Custom
    , Custom
    , custom

    -- * DroppedLabelsLabel
    , DroppedLabelsLabel
    , droppedLabelsLabel
    , dllAddtional

    -- * MetricThreshold
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

    -- * SpanContext
    , SpanContext
    , spanContext
    , scSpanName

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    , ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer (..)

    -- * ValueDescriptorValueType
    , ValueDescriptorValueType (..)

    -- * NotificationChannelVerificationStatus
    , NotificationChannelVerificationStatus (..)

    -- * CreateTimeSeriesSummary
    , CreateTimeSeriesSummary
    , createTimeSeriesSummary
    , ctssTotalPointCount
    , ctssSuccessPointCount
    , ctssErrors

    -- * MonitoredResourceMetadataUserLabels
    , MonitoredResourceMetadataUserLabels
    , monitoredResourceMetadataUserLabels
    , mrmulAddtional

    -- * InternalChecker
    , InternalChecker
    , internalChecker
    , icState
    , icNetwork
    , icName
    , icPeerProjectId
    , icGcpZone
    , icDisplayName

    -- * NotificationChannel
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

    -- * OrganizationsTimeSeriesListAggregationPerSeriesAligner
    , OrganizationsTimeSeriesListAggregationPerSeriesAligner (..)

    -- * ListServiceLevelObjectivesResponse
    , ListServiceLevelObjectivesResponse
    , listServiceLevelObjectivesResponse
    , lslorNextPageToken
    , lslorServiceLevelObjectives

    -- * ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse
    , listMonitoredResourceDescriptorsResponse
    , lmrdrNextPageToken
    , lmrdrResourceDescriptors

    -- * LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- * Explicit
    , Explicit
    , explicit
    , eBounds

    -- * MetricLabels
    , MetricLabels
    , metricLabels
    , mlAddtional

    -- * CollectdPayloadMetadata
    , CollectdPayloadMetadata
    , collectdPayloadMetadata
    , cpmAddtional

    -- * ContentMatcherMatcher
    , ContentMatcherMatcher (..)

    -- * CollectdValue
    , CollectdValue
    , collectdValue
    , cvDataSourceName
    , cvDataSourceType
    , cvValue

    -- * CreateCollectdTimeSeriesRequest
    , CreateCollectdTimeSeriesRequest
    , createCollectdTimeSeriesRequest
    , cctsrCollectdPayloads
    , cctsrResource
    , cctsrCollectdVersion

    -- * TypeSyntax
    , TypeSyntax (..)

    -- * FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
    , FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner (..)

    -- * OrganizationsTimeSeriesListView
    , OrganizationsTimeSeriesListView (..)

    -- * ProjectsTimeSeriesListAggregationCrossSeriesReducer
    , ProjectsTimeSeriesListAggregationCrossSeriesReducer (..)

    -- * PointData
    , PointData
    , pointData
    , pdValues
    , pdTimeInterval

    -- * OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
    , OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner (..)

    -- * Aggregation
    , Aggregation
    , aggregation
    , aPerSeriesAligner
    , aCrossSeriesReducer
    , aAlignmentPeriod
    , aGroupByFields

    -- * UptimeCheckConfig
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

    -- * Point
    , Point
    , point
    , pValue
    , pInterval

    -- * FoldersTimeSeriesListView
    , FoldersTimeSeriesListView (..)

    -- * CollectdPayload
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

    -- * MutationRecord
    , MutationRecord
    , mutationRecord
    , mrMutatedBy
    , mrMutateTime

    -- * Metric
    , Metric
    , metric
    , mLabels
    , mType

    -- * CollectdPayloadError
    , CollectdPayloadError
    , collectdPayloadError
    , cpeError
    , cpeValueErrors
    , cpeIndex

    -- * ProjectsTimeSeriesListView
    , ProjectsTimeSeriesListView (..)

    -- * OperationMetadataState
    , OperationMetadataState (..)

    -- * SendNotificationChannelVerificationCodeRequest
    , SendNotificationChannelVerificationCodeRequest
    , sendNotificationChannelVerificationCodeRequest

    -- * Exponential
    , Exponential
    , exponential
    , eGrowthFactor
    , eScale
    , eNumFiniteBuckets

    -- * PerformanceThreshold
    , PerformanceThreshold
    , performanceThreshold
    , ptBasicSliPerformance
    , ptPerformance
    , ptThreshold

    -- * LogMatch
    , LogMatch
    , logMatch
    , lmLabelExtractors
    , lmFilter

    -- * HTTPCheckContentType
    , HTTPCheckContentType (..)

    -- * ResourceGroupResourceType
    , ResourceGroupResourceType (..)

    -- * Range
    , Range
    , range
    , rMax
    , rMin

    -- * IstioCanonicalService
    , IstioCanonicalService
    , istioCanonicalService
    , icsCanonicalService
    , icsMeshUid
    , icsCanonicalServiceNamespace

    -- * AppEngine
    , AppEngine
    , appEngine
    , aeModuleId

    -- * QueryTimeSeriesResponse
    , QueryTimeSeriesResponse
    , queryTimeSeriesResponse
    , qtsrNextPageToken
    , qtsrPartialErrors
    , qtsrTimeSeriesDescriptor
    , qtsrTimeSeriesData

    -- * OrganizationsTimeSeriesListAggregationCrossSeriesReducer
    , OrganizationsTimeSeriesListAggregationCrossSeriesReducer (..)

    -- * MonitoredResource
    , MonitoredResource
    , monitoredResource
    , mrLabels
    , mrType

    -- * UptimeCheckIP
    , UptimeCheckIP
    , uptimeCheckIP
    , uciIPAddress
    , uciLocation
    , uciRegion

    -- * ClusterIstio
    , ClusterIstio
    , clusterIstio
    , ciLocation
    , ciServiceNamespace
    , ciServiceName
    , ciClusterName

    -- * AlertPolicyUserLabels
    , AlertPolicyUserLabels
    , alertPolicyUserLabels
    , apulAddtional

    -- * Documentation
    , Documentation
    , documentation
    , dContent
    , dMimeType

    -- * Xgafv
    , Xgafv (..)

    -- * LogMatchLabelExtractors
    , LogMatchLabelExtractors
    , logMatchLabelExtractors
    , lmleAddtional

    -- * AvailabilityCriteria
    , AvailabilityCriteria
    , availabilityCriteria

    -- * Exemplar
    , Exemplar
    , exemplar
    , eAttachments
    , eValue
    , eTimestamp

    -- * NotificationRateLimit
    , NotificationRateLimit
    , notificationRateLimit
    , nrlPeriod

    -- * FoldersTimeSeriesListAggregationCrossSeriesReducer
    , FoldersTimeSeriesListAggregationCrossSeriesReducer (..)

    -- * MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

    -- * ServiceLevelIndicator
    , ServiceLevelIndicator
    , serviceLevelIndicator
    , sliBasicSli
    , sliRequestBased
    , sliWindowsBased

    -- * TimeInterval
    , TimeInterval
    , timeInterval
    , tiStartTime
    , tiEndTime

    -- * HTTPCheckHeaders
    , HTTPCheckHeaders
    , hTTPCheckHeaders
    , httpchAddtional

    -- * TimeSeriesMetricKind
    , TimeSeriesMetricKind (..)

    -- * MonitoredResourceMetadataSystemLabels
    , MonitoredResourceMetadataSystemLabels
    , monitoredResourceMetadataSystemLabels
    , mrmslAddtional

    -- * ContentMatcher
    , ContentMatcher
    , contentMatcher
    , cmMatcher
    , cmContent

    -- * ListGroupMembersResponse
    , ListGroupMembersResponse
    , listGroupMembersResponse
    , lgmrNextPageToken
    , lgmrMembers
    , lgmrTotalSize

    -- * AlertStrategy
    , AlertStrategy
    , alertStrategy
    , asNotificationRateLimit

    -- * LabelDescriptor
    , LabelDescriptor
    , labelDescriptor
    , ldKey
    , ldValueType
    , ldDescription

    -- * TimeSeriesValueType
    , TimeSeriesValueType (..)

    -- * Linear
    , Linear
    , linear
    , lOffSet
    , lWidth
    , lNumFiniteBuckets

    -- * MonitoredResourceDescriptorLaunchStage
    , MonitoredResourceDescriptorLaunchStage (..)

    -- * AlertPolicyCombiner
    , AlertPolicyCombiner (..)

    -- * ListUptimeCheckIPsResponse
    , ListUptimeCheckIPsResponse
    , listUptimeCheckIPsResponse
    , lucirNextPageToken
    , lucirUptimeCheckIPs

    -- * GetNotificationChannelVerificationCodeRequest
    , GetNotificationChannelVerificationCodeRequest
    , getNotificationChannelVerificationCodeRequest
    , gExpireTime

    -- * ResourceGroup
    , ResourceGroup
    , resourceGroup
    , rgResourceType
    , rgGroupId

    -- * DroppedLabels
    , DroppedLabels
    , droppedLabels
    , dlLabel

    -- * TimeSeriesDescriptor
    , TimeSeriesDescriptor
    , timeSeriesDescriptor
    , tsdPointDescriptors
    , tsdLabelDescriptors

    -- * OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    , OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer (..)

    -- * FieldCardinality
    , FieldCardinality (..)

    -- * Trigger
    , Trigger
    , trigger
    , tPercent
    , tCount

    -- * ServiceLevelObjectiveUserLabels
    , ServiceLevelObjectiveUserLabels
    , serviceLevelObjectiveUserLabels
    , sloulAddtional

    -- * ValueDescriptor
    , ValueDescriptor
    , valueDescriptor
    , vdMetricKind
    , vdKey
    , vdValueType
    , vdUnit

    -- * Type
    , Type
    , type'
    , tSourceContext
    , tOneofs
    , tName
    , tOptions
    , tFields
    , tSyntax

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omState
    , omUpdateTime
    , omCreateTime

    -- * UptimeCheckConfigSelectedRegionsItem
    , UptimeCheckConfigSelectedRegionsItem (..)

    -- * MetricDescriptorMetricKind
    , MetricDescriptorMetricKind (..)

    -- * CreateCollectdTimeSeriesResponse
    , CreateCollectdTimeSeriesResponse
    , createCollectdTimeSeriesResponse
    , cctsrSummary
    , cctsrPayloadErrors

    -- * LatencyCriteria
    , LatencyCriteria
    , latencyCriteria
    , lcThreshold

    -- * MeshIstio
    , MeshIstio
    , meshIstio
    , miMeshUid
    , miServiceNamespace
    , miServiceName

    -- * Option
    , Option
    , option
    , oValue
    , oName

    -- * ServiceLevelObjectiveCalendarPeriod
    , ServiceLevelObjectiveCalendarPeriod (..)

    -- * FoldersTimeSeriesListAggregationPerSeriesAligner
    , FoldersTimeSeriesListAggregationPerSeriesAligner (..)

    -- * Condition
    , Condition
    , condition
    , cConditionAbsent
    , cConditionThreshold
    , cName
    , cConditionMonitoringQueryLanguage
    , cConditionMatchedLog
    , cDisplayName

    -- * TimeSeriesData
    , TimeSeriesData
    , timeSeriesData
    , tsdPointData
    , tsdLabelValues

    -- * ServicesServiceLevelObjectivesListView
    , ServicesServiceLevelObjectivesListView (..)

    -- * BucketOptions
    , BucketOptions
    , bucketOptions
    , boExponentialBuckets
    , boLinearBuckets
    , boExplicitBuckets

    -- * ListUptimeCheckConfigsResponse
    , ListUptimeCheckConfigsResponse
    , listUptimeCheckConfigsResponse
    , luccrUptimeCheckConfigs
    , luccrNextPageToken
    , luccrTotalSize

    -- * HTTPCheck
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

    -- * TimeSeries
    , TimeSeries
    , timeSeries
    , tsPoints
    , tsMetricKind
    , tsMetric
    , tsResource
    , tsMetadata
    , tsValueType
    , tsUnit

    -- * MetricDescriptorLaunchStage
    , MetricDescriptorLaunchStage (..)

    -- * AlertPolicy
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

    -- * RequestBasedSli
    , RequestBasedSli
    , requestBasedSli
    , rbsGoodTotalRatio
    , rbsDistributionCut

    -- * CloudEndpoints
    , CloudEndpoints
    , cloudEndpoints
    , ceService

    -- * ListAlertPoliciesResponse
    , ListAlertPoliciesResponse
    , listAlertPoliciesResponse
    , laprNextPageToken
    , laprTotalSize
    , laprAlertPolicies

    -- * TCPCheck
    , TCPCheck
    , tcpCheck
    , tcPort

    -- * InternalCheckerState
    , InternalCheckerState (..)

    -- * ServiceUserLabels
    , ServiceUserLabels
    , serviceUserLabels
    , sulAddtional

    -- * MetricAbsence
    , MetricAbsence
    , metricAbsence
    , maAggregations
    , maFilter
    , maTrigger
    , maDuration

    -- * CollectdValueError
    , CollectdValueError
    , collectdValueError
    , cveError
    , cveIndex
    ) where

import Network.Google.Monitoring.Types.Product
import Network.Google.Monitoring.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v3' of the Cloud Monitoring API. This contains the host and root path used as a starting point for constructing service requests.
monitoringService :: ServiceConfig
monitoringService
  = defaultService (ServiceId "monitoring:v3")
      "monitoring.googleapis.com"

-- | View monitoring data for all of your Google Cloud and third-party
-- projects
monitoringReadScope :: Proxy '["https://www.googleapis.com/auth/monitoring.read"]
monitoringReadScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View and write monitoring data for all of your Google and third-party
-- Cloud and API projects
monitoringScope :: Proxy '["https://www.googleapis.com/auth/monitoring"]
monitoringScope = Proxy

-- | Publish metric data to your Google Cloud projects
monitoringWriteScope :: Proxy '["https://www.googleapis.com/auth/monitoring.write"]
monitoringWriteScope = Proxy
