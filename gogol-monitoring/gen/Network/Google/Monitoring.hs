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

    -- ** monitoring.categories.list
    , module Network.Google.Resource.Monitoring.Categories.List

    -- ** monitoring.categories.metricAssociations.list
    , module Network.Google.Resource.Monitoring.Categories.MetricAssociations.List

    -- ** monitoring.projects.categories.create
    , module Network.Google.Resource.Monitoring.Projects.Categories.Create

    -- ** monitoring.projects.categories.delete
    , module Network.Google.Resource.Monitoring.Projects.Categories.Delete

    -- ** monitoring.projects.categories.list
    , module Network.Google.Resource.Monitoring.Projects.Categories.List

    -- ** monitoring.projects.categories.metricAssociations.create
    , module Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.Create

    -- ** monitoring.projects.categories.metricAssociations.delete
    , module Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.Delete

    -- ** monitoring.projects.categories.metricAssociations.list
    , module Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.List

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

    -- ** ListTimeSeriesResponse
    , ListTimeSeriesResponse
    , listTimeSeriesResponse
    , ltsrNextPageToken
    , ltsrTimeSeries

    -- ** ListMetricAssociationsResponse
    , ListMetricAssociationsResponse
    , listMetricAssociationsResponse
    , lmarNextPageToken
    , lmarMetricAssociations

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

    -- ** FieldKind
    , FieldKind (..)

    -- ** MetricAssociation
    , MetricAssociation
    , metricAssociation
    , maMetricType
    , maName
    , maIsDefault

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

    -- ** Category
    , Category
    , category
    , cShortName
    , cName
    , cDisplayName
    , cDescription
    , cIsDefault

    -- ** CreateTimeSeriesRequest
    , CreateTimeSeriesRequest
    , createTimeSeriesRequest
    , ctsrTimeSeries

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

    -- ** ListCategoriesResponse
    , ListCategoriesResponse
    , listCategoriesResponse
    , lcrNextPageToken
    , lcrCategory

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

    -- ** Xgafv
    , Xgafv (..)

    -- ** TimeInterval
    , TimeInterval
    , timeInterval
    , tiStartTime
    , tiEndTime

    -- ** TimeSeriesMetricKind
    , TimeSeriesMetricKind (..)

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

    -- ** FieldCardinality
    , FieldCardinality (..)

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
import           Network.Google.Resource.Monitoring.Categories.List
import           Network.Google.Resource.Monitoring.Categories.MetricAssociations.List
import           Network.Google.Resource.Monitoring.Projects.Categories.Create
import           Network.Google.Resource.Monitoring.Projects.Categories.Delete
import           Network.Google.Resource.Monitoring.Projects.Categories.List
import           Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.Create
import           Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.Delete
import           Network.Google.Resource.Monitoring.Projects.Categories.MetricAssociations.List
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

-- | Represents the entirety of the methods and resources available for the Stackdriver Monitoring API service.
type MonitoringAPI =
     CategoriesMetricAssociationsListResource :<|>
       CategoriesListResource
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
       :<|> ProjectsCategoriesMetricAssociationsListResource
       :<|>
       ProjectsCategoriesMetricAssociationsCreateResource
       :<|>
       ProjectsCategoriesMetricAssociationsDeleteResource
       :<|> ProjectsCategoriesListResource
       :<|> ProjectsCategoriesCreateResource
       :<|> ProjectsCategoriesDeleteResource
       :<|> ProjectsMonitoredResourceDescriptorsListResource
       :<|> ProjectsMonitoredResourceDescriptorsGetResource
       :<|> ProjectsTimeSeriesListResource
       :<|> ProjectsTimeSeriesCreateResource
