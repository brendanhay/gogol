{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription

    -- * CollectdValueDataSourceType
    , CollectdValueDataSourceType (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ListNotificationChannelsResponse
    , ListNotificationChannelsResponse
    , listNotificationChannelsResponse
    , lncrNextPageToken
    , lncrNotificationChannels

    -- * ListTimeSeriesResponse
    , ListTimeSeriesResponse
    , listTimeSeriesResponse
    , ltsrNextPageToken
    , ltsrExecutionErrors
    , ltsrTimeSeries

    -- * GetNotificationChannelVerificationCodeResponse
    , GetNotificationChannelVerificationCodeResponse
    , getNotificationChannelVerificationCodeResponse
    , gncvcrCode
    , gncvcrExpireTime

    -- * ListNotificationChannelDescriptorsResponse
    , ListNotificationChannelDescriptorsResponse
    , listNotificationChannelDescriptorsResponse
    , lncdrNextPageToken
    , lncdrChannelDescriptors

    -- * UptimeCheckIPRegion
    , UptimeCheckIPRegion (..)

    -- * MetricDescriptor
    , MetricDescriptor
    , metricDescriptor
    , mdMetricKind
    , mdName
    , mdMetadata
    , mdDisplayName
    , mdLabels
    , mdType
    , mdValueType
    , mdDescription
    , mdUnit

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

    -- * NotificationChannelDescriptor
    , NotificationChannelDescriptor
    , notificationChannelDescriptor
    , ncdName
    , ncdSupportedTiers
    , ncdDisplayName
    , ncdLabels
    , ncdType
    , ncdDescription

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

    -- * VerifyNotificationChannelRequest
    , VerifyNotificationChannelRequest
    , verifyNotificationChannelRequest
    , vncrCode

    -- * OptionValue
    , OptionValue
    , optionValue
    , ovAddtional

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

    -- * NotificationChannelVerificationStatus
    , NotificationChannelVerificationStatus (..)

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
    , ncEnabled
    , ncUserLabels
    , ncName
    , ncDisplayName
    , ncVerificationStatus
    , ncLabels
    , ncType
    , ncDescription

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

    -- * SendNotificationChannelVerificationCodeRequest
    , SendNotificationChannelVerificationCodeRequest
    , sendNotificationChannelVerificationCodeRequest

    -- * Exponential
    , Exponential
    , exponential
    , eGrowthFactor
    , eScale
    , eNumFiniteBuckets

    -- * ResourceGroupResourceType
    , ResourceGroupResourceType (..)

    -- * Range
    , Range
    , range
    , rMax
    , rMin

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

    -- * Exemplar
    , Exemplar
    , exemplar
    , eAttachments
    , eValue
    , eTimestamp

    -- * MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

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
    , cmContent

    -- * ListGroupMembersResponse
    , ListGroupMembersResponse
    , listGroupMembersResponse
    , lgmrNextPageToken
    , lgmrMembers
    , lgmrTotalSize

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

    -- * FieldCardinality
    , FieldCardinality (..)

    -- * Trigger
    , Trigger
    , trigger
    , tPercent
    , tCount

    -- * Type
    , Type
    , type'
    , tSourceContext
    , tOneofs
    , tName
    , tOptions
    , tFields
    , tSyntax

    -- * MetricDescriptorMetricKind
    , MetricDescriptorMetricKind (..)

    -- * CreateCollectdTimeSeriesResponse
    , CreateCollectdTimeSeriesResponse
    , createCollectdTimeSeriesResponse
    , cctsrPayloadErrors

    -- * Option
    , Option
    , option
    , oValue
    , oName

    -- * Condition
    , Condition
    , condition
    , cConditionAbsent
    , cConditionThreshold
    , cName
    , cDisplayName

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
    , httpcMaskHeaders
    , httpcHeaders
    , httpcAuthInfo
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
    , apDisplayName
    , apConditions
    , apCombiner

    -- * ListAlertPoliciesResponse
    , ListAlertPoliciesResponse
    , listAlertPoliciesResponse
    , laprNextPageToken
    , laprAlertPolicies

    -- * TCPCheck
    , TCPCheck
    , tcpCheck
    , tcPort

    -- * InternalCheckerState
    , InternalCheckerState (..)

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

import           Network.Google.Monitoring.Types.Product
import           Network.Google.Monitoring.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v3' of the Stackdriver Monitoring API. This contains the host and root path used as a starting point for constructing service requests.
monitoringService :: ServiceConfig
monitoringService
  = defaultService (ServiceId "monitoring:v3")
      "monitoring.googleapis.com"

-- | View monitoring data for all of your Google Cloud and third-party
-- projects
monitoringReadScope :: Proxy '["https://www.googleapis.com/auth/monitoring.read"]
monitoringReadScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View and write monitoring data for all of your Google and third-party
-- Cloud and API projects
monitoringScope :: Proxy '["https://www.googleapis.com/auth/monitoring"]
monitoringScope = Proxy;

-- | Publish metric data to your Google Cloud projects
monitoringWriteScope :: Proxy '["https://www.googleapis.com/auth/monitoring.write"]
monitoringWriteScope = Proxy;
