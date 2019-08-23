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
-- Manages your Stackdriver Monitoring data and configurations. Most
-- projects must be associated with a Stackdriver account, with a few
-- exceptions as noted on the individual method pages.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference>
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

    -- ** monitoring.uptimeCheckIps.list
    , module Network.Google.Resource.Monitoring.UptimeCheckIPs.List

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

    -- ** CollectdValueDataSourceType
    , CollectdValueDataSourceType (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ListNotificationChannelsResponse
    , ListNotificationChannelsResponse
    , listNotificationChannelsResponse
    , lncrNextPageToken
    , lncrNotificationChannels

    -- ** ListTimeSeriesResponse
    , ListTimeSeriesResponse
    , listTimeSeriesResponse
    , ltsrNextPageToken
    , ltsrExecutionErrors
    , ltsrTimeSeries

    -- ** GetNotificationChannelVerificationCodeResponse
    , GetNotificationChannelVerificationCodeResponse
    , getNotificationChannelVerificationCodeResponse
    , gncvcrCode
    , gncvcrExpireTime

    -- ** ListNotificationChannelDescriptorsResponse
    , ListNotificationChannelDescriptorsResponse
    , listNotificationChannelDescriptorsResponse
    , lncdrNextPageToken
    , lncdrChannelDescriptors

    -- ** UptimeCheckIPRegion
    , UptimeCheckIPRegion (..)

    -- ** MetricDescriptor
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

    -- ** NotificationChannelDescriptor
    , NotificationChannelDescriptor
    , notificationChannelDescriptor
    , ncdName
    , ncdSupportedTiers
    , ncdDisplayName
    , ncdLabels
    , ncdType
    , ncdDescription

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

    -- ** VerifyNotificationChannelRequest
    , VerifyNotificationChannelRequest
    , verifyNotificationChannelRequest
    , vncrCode

    -- ** OptionValue
    , OptionValue
    , optionValue
    , ovAddtional

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

    -- ** NotificationChannelVerificationStatus
    , NotificationChannelVerificationStatus (..)

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
    , ncEnabled
    , ncUserLabels
    , ncName
    , ncDisplayName
    , ncVerificationStatus
    , ncLabels
    , ncType
    , ncDescription

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

    -- ** SendNotificationChannelVerificationCodeRequest
    , SendNotificationChannelVerificationCodeRequest
    , sendNotificationChannelVerificationCodeRequest

    -- ** Exponential
    , Exponential
    , exponential
    , eGrowthFactor
    , eScale
    , eNumFiniteBuckets

    -- ** ResourceGroupResourceType
    , ResourceGroupResourceType (..)

    -- ** Range
    , Range
    , range
    , rMax
    , rMin

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

    -- ** Exemplar
    , Exemplar
    , exemplar
    , eAttachments
    , eValue
    , eTimestamp

    -- ** MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

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
    , cmContent

    -- ** ListGroupMembersResponse
    , ListGroupMembersResponse
    , listGroupMembersResponse
    , lgmrNextPageToken
    , lgmrMembers
    , lgmrTotalSize

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

    -- ** FieldCardinality
    , FieldCardinality (..)

    -- ** Trigger
    , Trigger
    , trigger
    , tPercent
    , tCount

    -- ** Type
    , Type
    , type'
    , tSourceContext
    , tOneofs
    , tName
    , tOptions
    , tFields
    , tSyntax

    -- ** MetricDescriptorMetricKind
    , MetricDescriptorMetricKind (..)

    -- ** CreateCollectdTimeSeriesResponse
    , CreateCollectdTimeSeriesResponse
    , createCollectdTimeSeriesResponse
    , cctsrPayloadErrors

    -- ** Option
    , Option
    , option
    , oValue
    , oName

    -- ** Condition
    , Condition
    , condition
    , cConditionAbsent
    , cConditionThreshold
    , cName
    , cDisplayName

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
    , httpcMaskHeaders
    , httpcHeaders
    , httpcAuthInfo
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
    , apDisplayName
    , apConditions
    , apCombiner

    -- ** ListAlertPoliciesResponse
    , ListAlertPoliciesResponse
    , listAlertPoliciesResponse
    , laprNextPageToken
    , laprAlertPolicies

    -- ** TCPCheck
    , TCPCheck
    , tcpCheck
    , tcPort

    -- ** InternalCheckerState
    , InternalCheckerState (..)

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

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Monitoring.Projects.AlertPolicies.Create
import           Network.Google.Resource.Monitoring.Projects.AlertPolicies.Delete
import           Network.Google.Resource.Monitoring.Projects.AlertPolicies.Get
import           Network.Google.Resource.Monitoring.Projects.AlertPolicies.List
import           Network.Google.Resource.Monitoring.Projects.AlertPolicies.Patch
import           Network.Google.Resource.Monitoring.Projects.CollectdTimeSeries.Create
import           Network.Google.Resource.Monitoring.Projects.Groups.Create
import           Network.Google.Resource.Monitoring.Projects.Groups.Delete
import           Network.Google.Resource.Monitoring.Projects.Groups.Get
import           Network.Google.Resource.Monitoring.Projects.Groups.List
import           Network.Google.Resource.Monitoring.Projects.Groups.Members.List
import           Network.Google.Resource.Monitoring.Projects.Groups.Update
import           Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Create
import           Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Delete
import           Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Get
import           Network.Google.Resource.Monitoring.Projects.MetricDescriptors.List
import           Network.Google.Resource.Monitoring.Projects.MonitoredResourceDescriptors.Get
import           Network.Google.Resource.Monitoring.Projects.MonitoredResourceDescriptors.List
import           Network.Google.Resource.Monitoring.Projects.NotificationChannelDescriptors.Get
import           Network.Google.Resource.Monitoring.Projects.NotificationChannelDescriptors.List
import           Network.Google.Resource.Monitoring.Projects.NotificationChannels.Create
import           Network.Google.Resource.Monitoring.Projects.NotificationChannels.Delete
import           Network.Google.Resource.Monitoring.Projects.NotificationChannels.Get
import           Network.Google.Resource.Monitoring.Projects.NotificationChannels.GetVerificationCode
import           Network.Google.Resource.Monitoring.Projects.NotificationChannels.List
import           Network.Google.Resource.Monitoring.Projects.NotificationChannels.Patch
import           Network.Google.Resource.Monitoring.Projects.NotificationChannels.SendVerificationCode
import           Network.Google.Resource.Monitoring.Projects.NotificationChannels.Verify
import           Network.Google.Resource.Monitoring.Projects.TimeSeries.Create
import           Network.Google.Resource.Monitoring.Projects.TimeSeries.List
import           Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Create
import           Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Delete
import           Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Get
import           Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.List
import           Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Patch
import           Network.Google.Resource.Monitoring.UptimeCheckIPs.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Stackdriver Monitoring API service.
type MonitoringAPI =
     UptimeCheckIPsListResource :<|>
       ProjectsMetricDescriptorsListResource
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
