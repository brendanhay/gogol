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
-- The Google Monitoring API lets you manage your monitoring data and
-- configurations.
--
-- /See:/ <https://cloud.google.com/monitoring/alpha/ Google Monitoring API Reference>
module Network.Google.Monitoring
    (
    -- * Service Configuration
      monitoringService

    -- * OAuth Scopes
    , authMonitoringReadScope
    , authCloudPlatformScope
    , authMonitoringScope
    , authMonitoringWriteScope

    -- * API Declaration
    , MonitoringAPI

    -- * Resources

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

    -- ** monitoring.projects.timeSeries.create
    , module Network.Google.Resource.Monitoring.Projects.TimeSeries.Create

    -- ** monitoring.projects.timeSeries.list
    , module Network.Google.Resource.Monitoring.Projects.TimeSeries.List

    -- * Types

    -- ** MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription

    -- ** ListTimeSeriesResponse
    , ListTimeSeriesResponse
    , listTimeSeriesResponse
    , ltsrNextPageToken
    , ltsrTimeSeries

    -- ** MetricDescriptor
    , MetricDescriptor
    , metricDescriptor
    , mdMetricKind
    , mdName
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

    -- ** SourceContext
    , SourceContext
    , sourceContext
    , scFileName

    -- ** Distribution
    , Distribution
    , distribution
    , dSumOfSquaredDeviation
    , dMean
    , dCount
    , dBucketCounts
    , dRange
    , dBucketOptions

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

    -- ** OptionValue
    , OptionValue
    , optionValue
    , ovAddtional

    -- ** CreateTimeSeriesRequest
    , CreateTimeSeriesRequest
    , createTimeSeriesRequest
    , ctsrTimeSeries

    -- ** ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse
    , listMonitoredResourceDescriptorsResponse
    , lmrdrNextPageToken
    , lmrdrResourceDescriptors

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

    -- ** Metric
    , Metric
    , metric
    , mLabels
    , mType

    -- ** Exponential
    , Exponential
    , exponential
    , eGrowthFactor
    , eScale
    , eNumFiniteBuckets

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

    -- ** TimeInterval
    , TimeInterval
    , timeInterval
    , tiStartTime
    , tiEndTime

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

    -- ** Linear
    , Linear
    , linear
    , lOffSet
    , lWidth
    , lNumFiniteBuckets

    -- ** Type
    , Type
    , type'
    , tSourceContext
    , tOneofs
    , tName
    , tOptions
    , tFields
    , tSyntax

    -- ** Option
    , Option
    , option
    , oValue
    , oName

    -- ** BucketOptions
    , BucketOptions
    , bucketOptions
    , boExponentialBuckets
    , boLinearBuckets
    , boExplicitBuckets

    -- ** TimeSeries
    , TimeSeries
    , timeSeries
    , tsPoints
    , tsMetricKind
    , tsMetric
    , tsResource
    , tsValueType
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude
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
import           Network.Google.Resource.Monitoring.Projects.TimeSeries.Create
import           Network.Google.Resource.Monitoring.Projects.TimeSeries.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Monitoring API service.
type MonitoringAPI =
     ProjectsMetricDescriptorsListResource :<|>
       ProjectsMetricDescriptorsGetResource
       :<|> ProjectsMetricDescriptorsCreateResource
       :<|> ProjectsMetricDescriptorsDeleteResource
       :<|> ProjectsGroupsMembersListResource
       :<|> ProjectsGroupsListResource
       :<|> ProjectsGroupsGetResource
       :<|> ProjectsGroupsCreateResource
       :<|> ProjectsGroupsDeleteResource
       :<|> ProjectsGroupsUpdateResource
       :<|> ProjectsCollectdTimeSeriesCreateResource
       :<|> ProjectsMonitoredResourceDescriptorsListResource
       :<|> ProjectsMonitoredResourceDescriptorsGetResource
       :<|> ProjectsTimeSeriesListResource
       :<|> ProjectsTimeSeriesCreateResource
