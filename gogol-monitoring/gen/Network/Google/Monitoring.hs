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
    -- * Resources
      Monitoring
    , MetricDescriptorsAPI
    , MetricDescriptorsList
    , MetricDescriptorsCreate
    , MetricDescriptorsDelete
    , TimeseriesDescriptorsAPI
    , TimeseriesDescriptorsList
    , TimeseriesAPI
    , TimeseriesList
    , TimeseriesWrite

    -- * Types

    -- ** DeleteMetricDescriptorResponse
    , DeleteMetricDescriptorResponse
    , deleteMetricDescriptorResponse
    , dmdrKind

    -- ** ListMetricDescriptorsRequest
    , ListMetricDescriptorsRequest
    , listMetricDescriptorsRequest
    , lmdrKind

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

    -- ** ListTimeseriesDescriptorsResponse
    , ListTimeseriesDescriptorsResponse
    , listTimeseriesDescriptorsResponse
    , ltdrNextPageToken
    , ltdrKind
    , ltdrOldest
    , ltdrYoungest
    , ltdrTimeseries

    -- ** ListTimeseriesRequest
    , ListTimeseriesRequest
    , listTimeseriesRequest
    , ltrKind

    -- ** ListTimeseriesResponse
    , ListTimeseriesResponse
    , listTimeseriesResponse
    , lNextPageToken
    , lKind
    , lOldest
    , lYoungest
    , lTimeseries

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

    -- ** MetricDescriptorTypeDescriptor
    , MetricDescriptorTypeDescriptor
    , metricDescriptorTypeDescriptor
    , mdtdMetricType
    , mdtdValueType

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

    -- ** PointDistribution
    , PointDistribution
    , pointDistribution
    , pdOverflowBucket
    , pdBuckets
    , pdUnderflowBucket

    -- ** PointDistributionBucket
    , PointDistributionBucket
    , pointDistributionBucket
    , pdbUpperBound
    , pdbCount
    , pdbLowerBound

    -- ** PointDistributionOverflowBucket
    , PointDistributionOverflowBucket
    , pointDistributionOverflowBucket
    , pdobCount
    , pdobLowerBound

    -- ** PointDistributionUnderflowBucket
    , PointDistributionUnderflowBucket
    , pointDistributionUnderflowBucket
    , pdubUpperBound
    , pdubCount

    -- ** Timeseries
    , Timeseries
    , timeseries
    , tPoints
    , tTimeseriesDesc

    -- ** TimeseriesDescriptor
    , TimeseriesDescriptor
    , timeseriesDescriptor
    , tdProject
    , tdMetric
    , tdLabels

    -- ** TimeseriesDescriptorLabel
    , TimeseriesDescriptorLabel
    , timeseriesDescriptorLabel
    , tdlValue
    , tdlKey

    -- ** TimeseriesDescriptorLabels
    , TimeseriesDescriptorLabels
    , timeseriesDescriptorLabels

    -- ** TimeseriesPoint
    , TimeseriesPoint
    , timeseriesPoint
    , tpPoint
    , tpTimeseriesDesc

    -- ** WriteTimeseriesRequest
    , WriteTimeseriesRequest
    , writeTimeseriesRequest
    , wtrCommonLabels
    , wtrTimeseries

    -- ** WriteTimeseriesRequestCommonLabels
    , WriteTimeseriesRequestCommonLabels
    , writeTimeseriesRequestCommonLabels

    -- ** WriteTimeseriesResponse
    , WriteTimeseriesResponse
    , writeTimeseriesResponse
    , wtrKind
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Monitoring =
     MetricDescriptorsAPI :<|> TimeseriesDescriptorsAPI
       :<|> TimeseriesAPI

type MetricDescriptorsAPI =
     MetricDescriptorsList :<|> MetricDescriptorsCreate
       :<|> MetricDescriptorsDelete

-- | List metric descriptors that match the query. If the query is not set,
-- then all of the metric descriptors will be returned. Large responses
-- will be paginated, use the nextPageToken returned in the response to
-- request subsequent pages of results by setting the pageToken query
-- parameter to the value of the nextPageToken.
type MetricDescriptorsList =
     "cloudmonitoring" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "metricDescriptors"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "count" Natural
       :> QueryParam "key" Text
       :> QueryParam "query" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Create a new metric.
type MetricDescriptorsCreate =
     "cloudmonitoring" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "metricDescriptors"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete an existing metric.
type MetricDescriptorsDelete =
     "cloudmonitoring" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "metricDescriptors"
       :> Capture "metric" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TimeseriesDescriptorsAPI =
     TimeseriesDescriptorsList

-- | List the descriptors of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
type TimeseriesDescriptorsList =
     "cloudmonitoring" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "timeseriesDescriptors"
       :> Capture "metric" Text
       :> QueryParam "window" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "count" Natural
       :> QueryParam "aggregator" Text
       :> QueryParam "timespan" Text
       :> QueryParam "key" Text
       :> QueryParam "oldest" Text
       :> QueryParam "labels" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "youngest" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TimeseriesAPI =
     TimeseriesList :<|> TimeseriesWrite

-- | List the data points of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
type TimeseriesList =
     "cloudmonitoring" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "timeseries"
       :> Capture "metric" Text
       :> QueryParam "window" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "count" Natural
       :> QueryParam "aggregator" Text
       :> QueryParam "timespan" Text
       :> QueryParam "key" Text
       :> QueryParam "oldest" Text
       :> QueryParam "labels" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "youngest" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Put data points to one or more time series for one or more metrics. If a
-- time series does not exist, a new time series will be created. It is not
-- allowed to write a time series point that is older than the existing
-- youngest point of that time series. Points that are older than the
-- existing youngest point of that time series will be discarded silently.
-- Therefore, users should make sure that points of a time series are
-- written sequentially in the order of their end time.
type TimeseriesWrite =
     "cloudmonitoring" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "timeseries:write"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
