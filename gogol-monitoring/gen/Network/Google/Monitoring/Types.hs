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
    -- * Service Request
      monitoringRequest

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

    -- * WriteTimeseriesRequest
    , WriteTimeseriesRequest
    , writeTimeseriesRequest
    , wtrCommonLabels
    , wtrTimeseries

    -- * WriteTimeseriesRequestCommonLabels
    , WriteTimeseriesRequestCommonLabels
    , writeTimeseriesRequestCommonLabels

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

    -- * TimeseriesListAggregator
    , TimeseriesListAggregator (..)

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

    -- * TimeseriesDescriptorLabels
    , TimeseriesDescriptorLabels
    , timeseriesDescriptorLabels

    -- * PointDistributionBucket
    , PointDistributionBucket
    , pointDistributionBucket
    , pdbUpperBound
    , pdbCount
    , pdbLowerBound

    -- * WriteTimeseriesResponse
    , WriteTimeseriesResponse
    , writeTimeseriesResponse
    , wtrKind

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

    -- * TimeseriesDescriptorsListAggregator
    , TimeseriesDescriptorsListAggregator (..)

    -- * DeleteMetricDescriptorResponse
    , DeleteMetricDescriptorResponse
    , deleteMetricDescriptorResponse
    , dmdrKind

    -- * ListTimeseriesRequest
    , ListTimeseriesRequest
    , listTimeseriesRequest
    , ltrtKind

    -- * TimeseriesDescriptor
    , TimeseriesDescriptor
    , timeseriesDescriptor
    , tdProject
    , tdMetric
    , tdLabels

    -- * Timeseries
    , Timeseries
    , timeseries
    , tPoints
    , tTimeseriesDesc
    ) where

import           Network.Google.Monitoring.Types.Product
import           Network.Google.Monitoring.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2beta2' of the Cloud Monitoring API. This contains the host and root path used as a starting point for constructing service requests.
monitoringRequest :: RequestBuilder
monitoringRequest
  = defaultRequest "https://www.googleapis.com/"
      "cloudmonitoring/v2beta2/projects/"
