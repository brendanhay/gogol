{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Monitoring
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | API for accessing Google Cloud and API monitoring data.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference>
module Network.Google.Monitoring
    (
    -- * API
      MonitoringAPI
    , monitoringAPI
    , monitoringURL

    -- * Service Methods

    -- * REST Resources

    -- ** CloudMonitoringMetricDescriptorsCreate
    , module Network.Google.Resource.CloudMonitoring.MetricDescriptors.Create

    -- ** CloudMonitoringMetricDescriptorsDelete
    , module Network.Google.Resource.CloudMonitoring.MetricDescriptors.Delete

    -- ** CloudMonitoringMetricDescriptorsList
    , module Network.Google.Resource.CloudMonitoring.MetricDescriptors.List

    -- ** CloudMonitoringTimeseriesList
    , module Network.Google.Resource.CloudMonitoring.Timeseries.List

    -- ** CloudMonitoringTimeseriesWrite
    , module Network.Google.Resource.CloudMonitoring.Timeseries.Write

    -- ** CloudMonitoringTimeseriesDescriptorsList
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

    -- ** WriteTimeseriesRequest
    , WriteTimeseriesRequest
    , writeTimeseriesRequest
    , wtrCommonLabels
    , wtrTimeseries

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

    -- ** WriteTimeseriesResponse
    , WriteTimeseriesResponse
    , writeTimeseriesResponse
    , wtrKind

    -- ** TimeseriesDescriptorLabels
    , TimeseriesDescriptorLabels
    , timeseriesDescriptorLabels

    -- ** CommonLabels
    , CommonLabels
    , commonLabels

    -- ** PointDistributionBucket
    , PointDistributionBucket
    , pointDistributionBucket
    , pdbUpperBound
    , pdbCount
    , pdbLowerBound

    -- ** CloudMonitoringTimeseriesListAggregator
    , CloudMonitoringTimeseriesListAggregator (..)

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

    -- ** Aggregator
    , Aggregator (..)

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

    -- ** TimeseriesDescriptor
    , TimeseriesDescriptor
    , timeseriesDescriptor
    , tdProject
    , tdMetric
    , tdLabels

    -- ** ListTimeseriesRequest
    , ListTimeseriesRequest
    , listTimeseriesRequest
    , ltrtKind

    -- ** DeleteMetricDescriptorResponse
    , DeleteMetricDescriptorResponse
    , deleteMetricDescriptorResponse
    , dmdrKind

    -- ** Timeseries
    , Timeseries
    , timeseries
    , tPoints
    , tTimeseriesDesc
    ) where

import           Network.Google.Monitoring.Types
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

type MonitoringAPI =
     MetricDescriptorsListResource :<|>
       MetricDescriptorsCreateResource
       :<|> MetricDescriptorsDeleteResource
       :<|> TimeseriesDescriptorsListResource
       :<|> TimeseriesListResource
       :<|> TimeseriesWriteResource

monitoringAPI :: Proxy MonitoringAPI
monitoringAPI = Proxy
