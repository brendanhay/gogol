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
-- -- | API for accessing Google Cloud and API monitoring data.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference>
module Network.Google.Monitoring
    (
    -- * REST Resources

    -- ** Cloud Monitoring API
      Monitoring
    , monitoring
    , monitoringURL

    -- ** cloudmonitoring.metricDescriptors.create
    , module Network.Google.API.Cloudmonitoring.MetricDescriptors.Create

    -- ** cloudmonitoring.metricDescriptors.delete
    , module Network.Google.API.Cloudmonitoring.MetricDescriptors.Delete

    -- ** cloudmonitoring.metricDescriptors.list
    , module Network.Google.API.Cloudmonitoring.MetricDescriptors.List

    -- ** cloudmonitoring.timeseriesDescriptors.list
    , module Network.Google.API.Cloudmonitoring.TimeseriesDescriptors.List

    -- ** cloudmonitoring.timeseries.list
    , module Network.Google.API.Cloudmonitoring.Timeseries.List

    -- ** cloudmonitoring.timeseries.write
    , module Network.Google.API.Cloudmonitoring.Timeseries.Write

    -- * Types

    -- ** PointDistributionOverflowBucket
    , PointDistributionOverflowBucket
    , pointDistributionOverflowBucket
    , pdobCount
    , pdobLowerBound

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

    -- ** ListMetricDescriptorsRequest
    , ListMetricDescriptorsRequest
    , listMetricDescriptorsRequest
    , lmdrKind

    -- ** ListTimeseriesDescriptorsResponse
    , ListTimeseriesDescriptorsResponse
    , listTimeseriesDescriptorsResponse
    , ltdrNextPageToken
    , ltdrKind
    , ltdrOldest
    , ltdrYoungest
    , ltdrTimeseries

    -- ** MetricDescriptorLabelDescriptor
    , MetricDescriptorLabelDescriptor
    , metricDescriptorLabelDescriptor
    , mdldKey
    , mdldDescription

    -- ** WriteTimeseriesRequest
    , WriteTimeseriesRequest
    , writeTimeseriesRequest
    , wtrCommonLabels
    , wtrTimeseries

    -- ** Alt
    , Alt (..)

    -- ** PointDistributionUnderflowBucket
    , PointDistributionUnderflowBucket
    , pointDistributionUnderflowBucket
    , pdubUpperBound
    , pdubCount

    -- ** DeleteMetricDescriptorResponse
    , DeleteMetricDescriptorResponse
    , deleteMetricDescriptorResponse
    , dmdrKind

    -- ** TimeseriesDescriptor
    , TimeseriesDescriptor
    , timeseriesDescriptor
    , tdProject
    , tdMetric
    , tdLabels

    -- ** ListTimeseriesRequest
    , ListTimeseriesRequest
    , listTimeseriesRequest
    , ltrKind

    -- ** PointDistribution
    , PointDistribution
    , pointDistribution
    , pdOverflowBucket
    , pdBuckets
    , pdUnderflowBucket

    -- ** TimeseriesList'Aggregator
    , TimeseriesList'Aggregator (..)

    -- ** TimeseriesDescriptorsList'Aggregator
    , TimeseriesDescriptorsList'Aggregator (..)

    -- ** MetricDescriptorTypeDescriptor
    , MetricDescriptorTypeDescriptor
    , metricDescriptorTypeDescriptor
    , mdtdMetricType
    , mdtdValueType

    -- ** MetricDescriptor
    , MetricDescriptor
    , metricDescriptor
    , mdProject
    , mdTypeDescriptor
    , mdName
    , mdLabels
    , mdDescription

    -- ** ListTimeseriesResponse
    , ListTimeseriesResponse
    , listTimeseriesResponse
    , lNextPageToken
    , lKind
    , lOldest
    , lYoungest
    , lTimeseries

    -- ** TimeseriesPoint
    , TimeseriesPoint
    , timeseriesPoint
    , tpPoint
    , tpTimeseriesDesc

    -- ** ListMetricDescriptorsResponse
    , ListMetricDescriptorsResponse
    , listMetricDescriptorsResponse
    , lisMetrics
    , lisNextPageToken
    , lisKind

    -- ** ListTimeseriesDescriptorsRequest
    , ListTimeseriesDescriptorsRequest
    , listTimeseriesDescriptorsRequest
    , ltdrtKind

    -- ** WriteTimeseriesResponse
    , WriteTimeseriesResponse
    , writeTimeseriesResponse
    , wtrKind

    -- ** PointDistributionBucket
    , PointDistributionBucket
    , pointDistributionBucket
    , pdbUpperBound
    , pdbCount
    , pdbLowerBound

    -- ** TimeseriesDescriptorLabels
    , TimeseriesDescriptorLabels
    , timeseriesDescriptorLabels

    -- ** TimeseriesDescriptorLabel
    , TimeseriesDescriptorLabel
    , timeseriesDescriptorLabel
    , tValue
    , tKey

    -- ** Timeseries
    , Timeseries
    , timeseries
    , tPoints
    , tTimeseriesDesc

    -- ** WriteTimeseriesRequestCommonLabels
    , WriteTimeseriesRequestCommonLabels
    , writeTimeseriesRequestCommonLabels
    ) where

import           Network.Google.API.Cloudmonitoring.MetricDescriptors.Create
import           Network.Google.API.Cloudmonitoring.MetricDescriptors.Delete
import           Network.Google.API.Cloudmonitoring.MetricDescriptors.List
import           Network.Google.API.Cloudmonitoring.Timeseries.List
import           Network.Google.API.Cloudmonitoring.Timeseries.Write
import           Network.Google.API.Cloudmonitoring.TimeseriesDescriptors.List
import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Monitoring =
     TimeseriesListAPI :<|> MetricDescriptorsListAPI :<|>
       TimeseriesDescriptorsListAPI
       :<|> TimeseriesWriteAPI
       :<|> MetricDescriptorsDeleteAPI
       :<|> MetricDescriptorsCreateAPI

monitoring :: Proxy Monitoring
monitoring = Proxy
