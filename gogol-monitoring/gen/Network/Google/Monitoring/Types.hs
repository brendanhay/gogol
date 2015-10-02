{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      monitoringURL

    -- * MetricDescriptorTypeDescriptor
    , MetricDescriptorTypeDescriptor
    , metricDescriptorTypeDescriptor
    , mdtdMetricType
    , mdtdValueType

    -- * ListTimeseriesResponse
    , ListTimeseriesResponse
    , listTimeseriesResponse
    , ltrNextPageToken
    , ltrKind
    , ltrOldest
    , ltrYoungest
    , ltrTimeseries

    -- * MetricDescriptor
    , MetricDescriptor
    , metricDescriptor
    , mdProject
    , mdTypeDescriptor
    , mdName
    , mdLabels
    , mdDescription

    -- * MetricDescriptorLabelDescriptor
    , MetricDescriptorLabelDescriptor
    , metricDescriptorLabelDescriptor
    , mdldKey
    , mdldDescription

    -- * PointDistributionUnderflowBucket
    , PointDistributionUnderflowBucket
    , pointDistributionUnderflowBucket
    , pdubUpperBound
    , pdubCount

    -- * WriteTimeseriesRequestCommonLabels
    , WriteTimeseriesRequestCommonLabels
    , writeTimeseriesRequestCommonLabels

    -- * WriteTimeseriesRequest
    , WriteTimeseriesRequest
    , writeTimeseriesRequest
    , wtrCommonLabels
    , wtrTimeseries

    -- * ListMetricDescriptorsResponse
    , ListMetricDescriptorsResponse
    , listMetricDescriptorsResponse
    , lmdrMetrics
    , lmdrNextPageToken
    , lmdrKind

    -- * ListTimeseriesDescriptorsRequest
    , ListTimeseriesDescriptorsRequest
    , listTimeseriesDescriptorsRequest
    , ltdrKind

    -- * WriteTimeseriesResponse
    , WriteTimeseriesResponse
    , writeTimeseriesResponse
    , wtrKind

    -- * TimeseriesDescriptorLabels
    , TimeseriesDescriptorLabels
    , timeseriesDescriptorLabels

    -- * PointDistributionBucket
    , PointDistributionBucket
    , pointDistributionBucket
    , pdbUpperBound
    , pdbCount
    , pdbLowerBound

    -- * CloudMonitoringTimeseriesListAggregator
    , CloudMonitoringTimeseriesListAggregator (..)

    -- * CloudMonitoringTimeseriesDescriptorsListAggregator
    , CloudMonitoringTimeseriesDescriptorsListAggregator (..)

    -- * TimeseriesDescriptorLabel
    , TimeseriesDescriptorLabel
    , timeseriesDescriptorLabel
    , tdlValue
    , tdlKey

    -- * PointDistribution
    , PointDistribution
    , pointDistribution
    , pdOverflowBucket
    , pdBuckets
    , pdUnderflowBucket

    -- * Point
    , Point
    , point
    , pBoolValue
    , pStart
    , pDoubleValue
    , pStringValue
    , pDistributionValue
    , pEnd
    , pInt64Value

    -- * PointDistributionOverflowBucket
    , PointDistributionOverflowBucket
    , pointDistributionOverflowBucket
    , pdobCount
    , pdobLowerBound

    -- * ListTimeseriesDescriptorsResponse
    , ListTimeseriesDescriptorsResponse
    , listTimeseriesDescriptorsResponse
    , lNextPageToken
    , lKind
    , lOldest
    , lYoungest
    , lTimeseries

    -- * ListMetricDescriptorsRequest
    , ListMetricDescriptorsRequest
    , listMetricDescriptorsRequest
    , lisKind

    -- * TimeseriesPoint
    , TimeseriesPoint
    , timeseriesPoint
    , tpPoint
    , tpTimeseriesDesc

    -- * TimeseriesDescriptor
    , TimeseriesDescriptor
    , timeseriesDescriptor
    , tdProject
    , tdMetric
    , tdLabels

    -- * ListTimeseriesRequest
    , ListTimeseriesRequest
    , listTimeseriesRequest
    , ltrtKind

    -- * DeleteMetricDescriptorResponse
    , DeleteMetricDescriptorResponse
    , deleteMetricDescriptorResponse
    , dmdrKind

    -- * Timeseries
    , Timeseries
    , timeseries
    , tPoints
    , tTimeseriesDesc
    ) where

import           Network.Google.Monitoring.Types.Product
import           Network.Google.Monitoring.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2beta2' of the Cloud Monitoring API.
monitoringURL :: BaseUrl
monitoringURL
  = BaseUrl Https
      "https://www.googleapis.com/cloudmonitoring/v2beta2/projects/"
      443
