{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Monitoring.Types
-- Copyright   : (c) 2015 Brendan Hay
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

    -- * MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription

    -- * ListTimeSeriesResponse
    , ListTimeSeriesResponse
    , listTimeSeriesResponse
    , ltsrNextPageToken
    , ltsrTimeSeries

    -- * MetricDescriptor
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

    -- * SourceContext
    , SourceContext
    , sourceContext
    , scFileName

    -- * Distribution
    , Distribution
    , distribution
    , dSumOfSquaredDeviation
    , dMean
    , dCount
    , dBucketCounts
    , dRange
    , dBucketOptions

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

    -- * OptionValue
    , OptionValue
    , optionValue
    , ovAddtional

    -- * CreateTimeSeriesRequest
    , CreateTimeSeriesRequest
    , createTimeSeriesRequest
    , ctsrTimeSeries

    -- * ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse
    , listMonitoredResourceDescriptorsResponse
    , lmrdrNextPageToken
    , lmrdrResourceDescriptors

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

    -- * Metric
    , Metric
    , metric
    , mLabels
    , mType

    -- * Exponential
    , Exponential
    , exponential
    , eGrowthFactor
    , eScale
    , eNumFiniteBuckets

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

    -- * TimeInterval
    , TimeInterval
    , timeInterval
    , tiStartTime
    , tiEndTime

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

    -- * Linear
    , Linear
    , linear
    , lOffSet
    , lWidth
    , lNumFiniteBuckets

    -- * Type
    , Type
    , type'
    , tSourceContext
    , tOneofs
    , tName
    , tOptions
    , tFields
    , tSyntax

    -- * Option
    , Option
    , option
    , oValue
    , oName

    -- * BucketOptions
    , BucketOptions
    , bucketOptions
    , boExponentialBuckets
    , boLinearBuckets
    , boExplicitBuckets

    -- * TimeSeries
    , TimeSeries
    , timeSeries
    , tsPoints
    , tsMetricKind
    , tsMetric
    , tsResource
    , tsValueType
    ) where

import           Network.Google.Monitoring.Types.Product
import           Network.Google.Monitoring.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v3' of the Google Monitoring API. This contains the host and root path used as a starting point for constructing service requests.
monitoringService :: ServiceConfig
monitoringService
  = defaultService (ServiceId "monitoring:v3")
      "monitoring.googleapis.com"

-- | View monitoring data for all of your Google Cloud and third-party
-- projects
monitoringReadScope :: OAuthScope
monitoringReadScope = "https://www.googleapis.com/auth/monitoring.read";

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: OAuthScope
cloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

-- | View and write monitoring data for all of your Google and third-party
-- Cloud and API projects
monitoringScope :: OAuthScope
monitoringScope = "https://www.googleapis.com/auth/monitoring";

-- | Publish metric data to your Google Cloud projects
monitoringWriteScope :: OAuthScope
monitoringWriteScope = "https://www.googleapis.com/auth/monitoring.write";
