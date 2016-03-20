{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudMonitoring
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses Google Cloud Monitoring data.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference>
module Network.Google.CloudMonitoring
    (
    -- * Service Configuration
      cloudMonitoringService

    -- * OAuth Scopes
    , authCloudPlatformScope
    , authMonitoringScope

    -- * API Declaration
    , CloudMonitoringAPI

    -- * Resources

    -- ** cloudmonitoring.metricDescriptors.create
    , module Network.Google.Resource.CloudMonitoring.MetricDescriptors.Create

    -- ** cloudmonitoring.metricDescriptors.delete
    , module Network.Google.Resource.CloudMonitoring.MetricDescriptors.Delete

    -- ** cloudmonitoring.metricDescriptors.list
    , module Network.Google.Resource.CloudMonitoring.MetricDescriptors.List

    -- ** cloudmonitoring.timeseries.list
    , module Network.Google.Resource.CloudMonitoring.Timeseries.List

    -- ** cloudmonitoring.timeseries.write
    , module Network.Google.Resource.CloudMonitoring.Timeseries.Write

    -- ** cloudmonitoring.timeseriesDescriptors.list
    , module Network.Google.Resource.CloudMonitoring.TimeseriesDescriptors.List

    -- * Types

    -- ** MetricDescriptorTypeDescriptor
    , MetricDescriptorTypeDescriptor
    , metricDescriptorTypeDescriptor
    , mdtdMetricType
    , mdtdValueType

    -- ** ListTimeseriesResponse
    , ListTimeseriesResponse
    , listTimeseriesResponse
    , ltrNextPageToken
    , ltrKind
    , ltrOldest
    , ltrYoungest
    , ltrTimeseries

    -- ** MetricDescriptor
    , MetricDescriptor
    , metricDescriptor
    , mdProject
    , mdTypeDescriptor
    , mdName
    , mdLabels
    , mdDescription

    -- ** WriteTimeseriesRequest
    , WriteTimeseriesRequest
    , writeTimeseriesRequest
    , wtrCommonLabels
    , wtrTimeseries

    -- ** WriteTimeseriesRequestCommonLabels
    , WriteTimeseriesRequestCommonLabels
    , writeTimeseriesRequestCommonLabels
    , wtrclAddtional

    -- ** MetricDescriptorLabelDescriptor
    , MetricDescriptorLabelDescriptor
    , metricDescriptorLabelDescriptor
    , mdldKey
    , mdldDescription

    -- ** PointDistributionUnderflowBucket
    , PointDistributionUnderflowBucket
    , pointDistributionUnderflowBucket
    , pdubUpperBound
    , pdubCount

    -- ** TimeseriesListAggregator
    , TimeseriesListAggregator (..)

    -- ** ListMetricDescriptorsResponse
    , ListMetricDescriptorsResponse
    , listMetricDescriptorsResponse
    , lmdrMetrics
    , lmdrNextPageToken
    , lmdrKind

    -- ** ListTimeseriesDescriptorsRequest
    , ListTimeseriesDescriptorsRequest
    , listTimeseriesDescriptorsRequest
    , ltdrKind

    -- ** TimeseriesDescriptorLabels
    , TimeseriesDescriptorLabels
    , timeseriesDescriptorLabels
    , tdlAddtional

    -- ** PointDistributionBucket
    , PointDistributionBucket
    , pointDistributionBucket
    , pdbUpperBound
    , pdbCount
    , pdbLowerBound

    -- ** WriteTimeseriesResponse
    , WriteTimeseriesResponse
    , writeTimeseriesResponse
    , wtrKind

    -- ** TimeseriesDescriptorLabel
    , TimeseriesDescriptorLabel
    , timeseriesDescriptorLabel
    , tdlValue
    , tdlKey

    -- ** PointDistribution
    , PointDistribution
    , pointDistribution
    , pdOverflowBucket
    , pdBuckets
    , pdUnderflowBucket

    -- ** Point
    , Point
    , point
    , pBoolValue
    , pStart
    , pDoubleValue
    , pStringValue
    , pDistributionValue
    , pEnd
    , pInt64Value

    -- ** PointDistributionOverflowBucket
    , PointDistributionOverflowBucket
    , pointDistributionOverflowBucket
    , pdobCount
    , pdobLowerBound

    -- ** ListTimeseriesDescriptorsResponse
    , ListTimeseriesDescriptorsResponse
    , listTimeseriesDescriptorsResponse
    , lNextPageToken
    , lKind
    , lOldest
    , lYoungest
    , lTimeseries

    -- ** ListMetricDescriptorsRequest
    , ListMetricDescriptorsRequest
    , listMetricDescriptorsRequest
    , lisKind

    -- ** TimeseriesPoint
    , TimeseriesPoint
    , timeseriesPoint
    , tpPoint
    , tpTimeseriesDesc

    -- ** TimeseriesDescriptorsListAggregator
    , TimeseriesDescriptorsListAggregator (..)

    -- ** DeleteMetricDescriptorResponse
    , DeleteMetricDescriptorResponse
    , deleteMetricDescriptorResponse
    , dmdrKind

    -- ** ListTimeseriesRequest
    , ListTimeseriesRequest
    , listTimeseriesRequest
    , ltrtKind

    -- ** TimeseriesDescriptor
    , TimeseriesDescriptor
    , timeseriesDescriptor
    , tdProject
    , tdMetric
    , tdLabels

    -- ** Timeseries
    , Timeseries
    , timeseries
    , tPoints
    , tTimeseriesDesc
    ) where

import           Network.Google.CloudMonitoring.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CloudMonitoring.MetricDescriptors.Create
import           Network.Google.Resource.CloudMonitoring.MetricDescriptors.Delete
import           Network.Google.Resource.CloudMonitoring.MetricDescriptors.List
import           Network.Google.Resource.CloudMonitoring.Timeseries.List
import           Network.Google.Resource.CloudMonitoring.Timeseries.Write
import           Network.Google.Resource.CloudMonitoring.TimeseriesDescriptors.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Monitoring API service.
type CloudMonitoringAPI =
     MetricDescriptorsListResource :<|>
       MetricDescriptorsCreateResource
       :<|> MetricDescriptorsDeleteResource
       :<|> TimeseriesDescriptorsListResource
       :<|> TimeseriesListResource
       :<|> TimeseriesWriteResource
