{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Cloud.Monitoring.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Cloud.Monitoring.Types.Product where

import           Network.Google.Cloud.Monitoring.Types.Sum
import           Network.Google.Prelude

-- | The response of cloudmonitoring.metricDescriptors.delete.
--
-- /See:/ 'deleteMetricDescriptorResponse' smart constructor.
newtype DeleteMetricDescriptorResponse = DeleteMetricDescriptorResponse
    { _dmdrKind :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteMetricDescriptorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmdrKind'
deleteMetricDescriptorResponse
    :: DeleteMetricDescriptorResponse
deleteMetricDescriptorResponse =
    DeleteMetricDescriptorResponse
    { _dmdrKind = "cloudmonitoring#deleteMetricDescriptorResponse"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#deleteMetricDescriptorResponse\".
dmdrKind :: Lens' DeleteMetricDescriptorResponse Text
dmdrKind = lens _dmdrKind (\ s a -> s{_dmdrKind = a})

-- | The request of cloudmonitoring.metricDescriptors.list.
--
-- /See:/ 'listMetricDescriptorsRequest' smart constructor.
newtype ListMetricDescriptorsRequest = ListMetricDescriptorsRequest
    { _lmdrKind :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMetricDescriptorsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmdrKind'
listMetricDescriptorsRequest
    :: ListMetricDescriptorsRequest
listMetricDescriptorsRequest =
    ListMetricDescriptorsRequest
    { _lmdrKind = "cloudmonitoring#listMetricDescriptorsRequest"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listMetricDescriptorsRequest\".
lmdrKind :: Lens' ListMetricDescriptorsRequest Text
lmdrKind = lens _lmdrKind (\ s a -> s{_lmdrKind = a})

-- | The response of cloudmonitoring.metricDescriptors.list.
--
-- /See:/ 'listMetricDescriptorsResponse' smart constructor.
data ListMetricDescriptorsResponse = ListMetricDescriptorsResponse
    { _lisMetrics       :: !(Maybe [Maybe MetricDescriptor])
    , _lisNextPageToken :: !(Maybe Text)
    , _lisKind          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMetricDescriptorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisMetrics'
--
-- * 'lisNextPageToken'
--
-- * 'lisKind'
listMetricDescriptorsResponse
    :: ListMetricDescriptorsResponse
listMetricDescriptorsResponse =
    ListMetricDescriptorsResponse
    { _lisMetrics = Nothing
    , _lisNextPageToken = Nothing
    , _lisKind = "cloudmonitoring#listMetricDescriptorsResponse"
    }

-- | The returned metric descriptors.
lisMetrics :: Lens' ListMetricDescriptorsResponse [Maybe MetricDescriptor]
lisMetrics
  = lens _lisMetrics (\ s a -> s{_lisMetrics = a}) .
      _Default
      . _Coerce

-- | Pagination token. If present, indicates that additional results are
-- available for retrieval. To access the results past the pagination
-- limit, pass this value to the pageToken query parameter.
lisNextPageToken :: Lens' ListMetricDescriptorsResponse (Maybe Text)
lisNextPageToken
  = lens _lisNextPageToken
      (\ s a -> s{_lisNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listMetricDescriptorsResponse\".
lisKind :: Lens' ListMetricDescriptorsResponse Text
lisKind = lens _lisKind (\ s a -> s{_lisKind = a})

-- | The request of cloudmonitoring.timeseriesDescriptors.list
--
-- /See:/ 'listTimeseriesDescriptorsRequest' smart constructor.
newtype ListTimeseriesDescriptorsRequest = ListTimeseriesDescriptorsRequest
    { _ltdrtKind :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTimeseriesDescriptorsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltdrtKind'
listTimeseriesDescriptorsRequest
    :: ListTimeseriesDescriptorsRequest
listTimeseriesDescriptorsRequest =
    ListTimeseriesDescriptorsRequest
    { _ltdrtKind = "cloudmonitoring#listTimeseriesDescriptorsRequest"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listTimeseriesDescriptorsRequest\".
ltdrtKind :: Lens' ListTimeseriesDescriptorsRequest Text
ltdrtKind
  = lens _ltdrtKind (\ s a -> s{_ltdrtKind = a})

-- | The response of cloudmonitoring.timeseriesDescriptors.list
--
-- /See:/ 'listTimeseriesDescriptorsResponse' smart constructor.
data ListTimeseriesDescriptorsResponse = ListTimeseriesDescriptorsResponse
    { _ltdrNextPageToken :: !(Maybe Text)
    , _ltdrKind          :: !Text
    , _ltdrOldest        :: !(Maybe UTCTime)
    , _ltdrYoungest      :: !(Maybe UTCTime)
    , _ltdrTimeseries    :: !(Maybe [Maybe TimeseriesDescriptor])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTimeseriesDescriptorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltdrNextPageToken'
--
-- * 'ltdrKind'
--
-- * 'ltdrOldest'
--
-- * 'ltdrYoungest'
--
-- * 'ltdrTimeseries'
listTimeseriesDescriptorsResponse
    :: ListTimeseriesDescriptorsResponse
listTimeseriesDescriptorsResponse =
    ListTimeseriesDescriptorsResponse
    { _ltdrNextPageToken = Nothing
    , _ltdrKind = "cloudmonitoring#listTimeseriesDescriptorsResponse"
    , _ltdrOldest = Nothing
    , _ltdrYoungest = Nothing
    , _ltdrTimeseries = Nothing
    }

-- | Pagination token. If present, indicates that additional results are
-- available for retrieval. To access the results past the pagination
-- limit, set this value to the pageToken query parameter.
ltdrNextPageToken :: Lens' ListTimeseriesDescriptorsResponse (Maybe Text)
ltdrNextPageToken
  = lens _ltdrNextPageToken
      (\ s a -> s{_ltdrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listTimeseriesDescriptorsResponse\".
ltdrKind :: Lens' ListTimeseriesDescriptorsResponse Text
ltdrKind = lens _ltdrKind (\ s a -> s{_ltdrKind = a})

-- | The oldest timestamp of the interval of this query, as an RFC 3339
-- string.
ltdrOldest :: Lens' ListTimeseriesDescriptorsResponse (Maybe UTCTime)
ltdrOldest
  = lens _ltdrOldest (\ s a -> s{_ltdrOldest = a})

-- | The youngest timestamp of the interval of this query, as an RFC 3339
-- string.
ltdrYoungest :: Lens' ListTimeseriesDescriptorsResponse (Maybe UTCTime)
ltdrYoungest
  = lens _ltdrYoungest (\ s a -> s{_ltdrYoungest = a})

-- | The returned time series descriptors.
ltdrTimeseries :: Lens' ListTimeseriesDescriptorsResponse [Maybe TimeseriesDescriptor]
ltdrTimeseries
  = lens _ltdrTimeseries
      (\ s a -> s{_ltdrTimeseries = a})
      . _Default
      . _Coerce

-- | The request of cloudmonitoring.timeseries.list
--
-- /See:/ 'listTimeseriesRequest' smart constructor.
newtype ListTimeseriesRequest = ListTimeseriesRequest
    { _ltrKind :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTimeseriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrKind'
listTimeseriesRequest
    :: ListTimeseriesRequest
listTimeseriesRequest =
    ListTimeseriesRequest
    { _ltrKind = "cloudmonitoring#listTimeseriesRequest"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listTimeseriesRequest\".
ltrKind :: Lens' ListTimeseriesRequest Text
ltrKind = lens _ltrKind (\ s a -> s{_ltrKind = a})

-- | The response of cloudmonitoring.timeseries.list
--
-- /See:/ 'listTimeseriesResponse' smart constructor.
data ListTimeseriesResponse = ListTimeseriesResponse
    { _lNextPageToken :: !(Maybe Text)
    , _lKind          :: !Text
    , _lOldest        :: !(Maybe UTCTime)
    , _lYoungest      :: !(Maybe UTCTime)
    , _lTimeseries    :: !(Maybe [Maybe Timeseries])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTimeseriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lKind'
--
-- * 'lOldest'
--
-- * 'lYoungest'
--
-- * 'lTimeseries'
listTimeseriesResponse
    :: ListTimeseriesResponse
listTimeseriesResponse =
    ListTimeseriesResponse
    { _lNextPageToken = Nothing
    , _lKind = "cloudmonitoring#listTimeseriesResponse"
    , _lOldest = Nothing
    , _lYoungest = Nothing
    , _lTimeseries = Nothing
    }

-- | Pagination token. If present, indicates that additional results are
-- available for retrieval. To access the results past the pagination
-- limit, set the pageToken query parameter to this value. All of the
-- points of a time series will be returned before returning any point of
-- the subsequent time series.
lNextPageToken :: Lens' ListTimeseriesResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listTimeseriesResponse\".
lKind :: Lens' ListTimeseriesResponse Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | The oldest timestamp of the interval of this query as an RFC 3339
-- string.
lOldest :: Lens' ListTimeseriesResponse (Maybe UTCTime)
lOldest = lens _lOldest (\ s a -> s{_lOldest = a})

-- | The youngest timestamp of the interval of this query as an RFC 3339
-- string.
lYoungest :: Lens' ListTimeseriesResponse (Maybe UTCTime)
lYoungest
  = lens _lYoungest (\ s a -> s{_lYoungest = a})

-- | The returned time series.
lTimeseries :: Lens' ListTimeseriesResponse [Maybe Timeseries]
lTimeseries
  = lens _lTimeseries (\ s a -> s{_lTimeseries = a}) .
      _Default
      . _Coerce

-- | A metricDescriptor defines the name, label keys, and data type of a
-- particular metric.
--
-- /See:/ 'metricDescriptor' smart constructor.
data MetricDescriptor = MetricDescriptor
    { _mdProject        :: !(Maybe Text)
    , _mdTypeDescriptor :: !(Maybe (Maybe MetricDescriptorTypeDescriptor))
    , _mdName           :: !(Maybe Text)
    , _mdLabels         :: !(Maybe [Maybe MetricDescriptorLabelDescriptor])
    , _mdDescription    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdProject'
--
-- * 'mdTypeDescriptor'
--
-- * 'mdName'
--
-- * 'mdLabels'
--
-- * 'mdDescription'
metricDescriptor
    :: MetricDescriptor
metricDescriptor =
    MetricDescriptor
    { _mdProject = Nothing
    , _mdTypeDescriptor = Nothing
    , _mdName = Nothing
    , _mdLabels = Nothing
    , _mdDescription = Nothing
    }

-- | The project ID to which the metric belongs.
mdProject :: Lens' MetricDescriptor (Maybe Text)
mdProject
  = lens _mdProject (\ s a -> s{_mdProject = a})

-- | Type description for this metric.
mdTypeDescriptor :: Lens' MetricDescriptor (Maybe (Maybe MetricDescriptorTypeDescriptor))
mdTypeDescriptor
  = lens _mdTypeDescriptor
      (\ s a -> s{_mdTypeDescriptor = a})

-- | The name of this metric.
mdName :: Lens' MetricDescriptor (Maybe Text)
mdName = lens _mdName (\ s a -> s{_mdName = a})

-- | Labels defined for this metric.
mdLabels :: Lens' MetricDescriptor [Maybe MetricDescriptorLabelDescriptor]
mdLabels
  = lens _mdLabels (\ s a -> s{_mdLabels = a}) .
      _Default
      . _Coerce

-- | Description of this metric.
mdDescription :: Lens' MetricDescriptor (Maybe Text)
mdDescription
  = lens _mdDescription
      (\ s a -> s{_mdDescription = a})

-- | A label in a metric is a description of this metric, including the key
-- of this description (what the description is), and the value for this
-- description.
--
-- /See:/ 'metricDescriptorLabelDescriptor' smart constructor.
data MetricDescriptorLabelDescriptor = MetricDescriptorLabelDescriptor
    { _mdldKey         :: !(Maybe Text)
    , _mdldDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptorLabelDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdldKey'
--
-- * 'mdldDescription'
metricDescriptorLabelDescriptor
    :: MetricDescriptorLabelDescriptor
metricDescriptorLabelDescriptor =
    MetricDescriptorLabelDescriptor
    { _mdldKey = Nothing
    , _mdldDescription = Nothing
    }

-- | Label key.
mdldKey :: Lens' MetricDescriptorLabelDescriptor (Maybe Text)
mdldKey = lens _mdldKey (\ s a -> s{_mdldKey = a})

-- | Label description.
mdldDescription :: Lens' MetricDescriptorLabelDescriptor (Maybe Text)
mdldDescription
  = lens _mdldDescription
      (\ s a -> s{_mdldDescription = a})

-- | A type in a metric contains information about how the metric is
-- collected and what its data points look like.
--
-- /See:/ 'metricDescriptorTypeDescriptor' smart constructor.
data MetricDescriptorTypeDescriptor = MetricDescriptorTypeDescriptor
    { _mdtdMetricType :: !(Maybe Text)
    , _mdtdValueType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptorTypeDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdtdMetricType'
--
-- * 'mdtdValueType'
metricDescriptorTypeDescriptor
    :: MetricDescriptorTypeDescriptor
metricDescriptorTypeDescriptor =
    MetricDescriptorTypeDescriptor
    { _mdtdMetricType = Nothing
    , _mdtdValueType = Nothing
    }

-- | The method of collecting data for the metric. See Metric types.
mdtdMetricType :: Lens' MetricDescriptorTypeDescriptor (Maybe Text)
mdtdMetricType
  = lens _mdtdMetricType
      (\ s a -> s{_mdtdMetricType = a})

-- | The data type of of individual points in the metric\'s time series. See
-- Metric value types.
mdtdValueType :: Lens' MetricDescriptorTypeDescriptor (Maybe Text)
mdtdValueType
  = lens _mdtdValueType
      (\ s a -> s{_mdtdValueType = a})

-- | Point is a single point in a time series. It consists of a start time,
-- an end time, and a value.
--
-- /See:/ 'point' smart constructor.
data Point = Point
    { _pBoolValue         :: !(Maybe Bool)
    , _pStart             :: !(Maybe UTCTime)
    , _pDoubleValue       :: !(Maybe Double)
    , _pStringValue       :: !(Maybe Text)
    , _pDistributionValue :: !(Maybe (Maybe PointDistribution))
    , _pEnd               :: !(Maybe UTCTime)
    , _pInt64Value        :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Point' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pBoolValue'
--
-- * 'pStart'
--
-- * 'pDoubleValue'
--
-- * 'pStringValue'
--
-- * 'pDistributionValue'
--
-- * 'pEnd'
--
-- * 'pInt64Value'
point
    :: Point
point =
    Point
    { _pBoolValue = Nothing
    , _pStart = Nothing
    , _pDoubleValue = Nothing
    , _pStringValue = Nothing
    , _pDistributionValue = Nothing
    , _pEnd = Nothing
    , _pInt64Value = Nothing
    }

-- | The value of this data point. Either \"true\" or \"false\".
pBoolValue :: Lens' Point (Maybe Bool)
pBoolValue
  = lens _pBoolValue (\ s a -> s{_pBoolValue = a})

-- | The interval [start, end] is the time period to which the point\'s value
-- applies. For gauge metrics, whose values are instantaneous measurements,
-- this interval should be empty (start should equal end). For cumulative
-- metrics (of which deltas and rates are special cases), the interval
-- should be non-empty. Both start and end are RFC 3339 strings.
pStart :: Lens' Point (Maybe UTCTime)
pStart = lens _pStart (\ s a -> s{_pStart = a})

-- | The value of this data point as a double-precision floating-point
-- number.
pDoubleValue :: Lens' Point (Maybe Double)
pDoubleValue
  = lens _pDoubleValue (\ s a -> s{_pDoubleValue = a})

-- | The value of this data point in string format.
pStringValue :: Lens' Point (Maybe Text)
pStringValue
  = lens _pStringValue (\ s a -> s{_pStringValue = a})

-- | The value of this data point as a distribution. A distribution value can
-- contain a list of buckets and\/or an underflowBucket and an
-- overflowBucket. The values of these points can be used to create a
-- histogram.
pDistributionValue :: Lens' Point (Maybe (Maybe PointDistribution))
pDistributionValue
  = lens _pDistributionValue
      (\ s a -> s{_pDistributionValue = a})

-- | The interval [start, end] is the time period to which the point\'s value
-- applies. For gauge metrics, whose values are instantaneous measurements,
-- this interval should be empty (start should equal end). For cumulative
-- metrics (of which deltas and rates are special cases), the interval
-- should be non-empty. Both start and end are RFC 3339 strings.
pEnd :: Lens' Point (Maybe UTCTime)
pEnd = lens _pEnd (\ s a -> s{_pEnd = a})

-- | The value of this data point as a 64-bit integer.
pInt64Value :: Lens' Point (Maybe Int64)
pInt64Value
  = lens _pInt64Value (\ s a -> s{_pInt64Value = a})

-- | Distribution data point value type. When writing distribution points,
-- try to be consistent with the boundaries of your buckets. If you must
-- modify the bucket boundaries, then do so by merging, partitioning, or
-- appending rather than skewing them.
--
-- /See:/ 'pointDistribution' smart constructor.
data PointDistribution = PointDistribution
    { _pdOverflowBucket  :: !(Maybe (Maybe PointDistributionOverflowBucket))
    , _pdBuckets         :: !(Maybe [Maybe PointDistributionBucket])
    , _pdUnderflowBucket :: !(Maybe (Maybe PointDistributionUnderflowBucket))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PointDistribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdOverflowBucket'
--
-- * 'pdBuckets'
--
-- * 'pdUnderflowBucket'
pointDistribution
    :: PointDistribution
pointDistribution =
    PointDistribution
    { _pdOverflowBucket = Nothing
    , _pdBuckets = Nothing
    , _pdUnderflowBucket = Nothing
    }

-- | The overflow bucket.
pdOverflowBucket :: Lens' PointDistribution (Maybe (Maybe PointDistributionOverflowBucket))
pdOverflowBucket
  = lens _pdOverflowBucket
      (\ s a -> s{_pdOverflowBucket = a})

-- | The finite buckets.
pdBuckets :: Lens' PointDistribution [Maybe PointDistributionBucket]
pdBuckets
  = lens _pdBuckets (\ s a -> s{_pdBuckets = a}) .
      _Default
      . _Coerce

-- | The underflow bucket.
pdUnderflowBucket :: Lens' PointDistribution (Maybe (Maybe PointDistributionUnderflowBucket))
pdUnderflowBucket
  = lens _pdUnderflowBucket
      (\ s a -> s{_pdUnderflowBucket = a})

-- | The histogram\'s bucket. Buckets that form the histogram of a
-- distribution value. If the upper bound of a bucket, say U1, does not
-- equal the lower bound of the next bucket, say L2, this means that there
-- is no event in [U1, L2).
--
-- /See:/ 'pointDistributionBucket' smart constructor.
data PointDistributionBucket = PointDistributionBucket
    { _pdbUpperBound :: !(Maybe Double)
    , _pdbCount      :: !(Maybe Int64)
    , _pdbLowerBound :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PointDistributionBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdbUpperBound'
--
-- * 'pdbCount'
--
-- * 'pdbLowerBound'
pointDistributionBucket
    :: PointDistributionBucket
pointDistributionBucket =
    PointDistributionBucket
    { _pdbUpperBound = Nothing
    , _pdbCount = Nothing
    , _pdbLowerBound = Nothing
    }

-- | The upper bound of the value interval of this bucket (exclusive).
pdbUpperBound :: Lens' PointDistributionBucket (Maybe Double)
pdbUpperBound
  = lens _pdbUpperBound
      (\ s a -> s{_pdbUpperBound = a})

-- | The number of events whose values are in the interval defined by this
-- bucket.
pdbCount :: Lens' PointDistributionBucket (Maybe Int64)
pdbCount = lens _pdbCount (\ s a -> s{_pdbCount = a})

-- | The lower bound of the value interval of this bucket (inclusive).
pdbLowerBound :: Lens' PointDistributionBucket (Maybe Double)
pdbLowerBound
  = lens _pdbLowerBound
      (\ s a -> s{_pdbLowerBound = a})

-- | The overflow bucket is a special bucket that does not have the
-- upperBound field; it includes all of the events that are no less than
-- its lower bound.
--
-- /See:/ 'pointDistributionOverflowBucket' smart constructor.
data PointDistributionOverflowBucket = PointDistributionOverflowBucket
    { _pdobCount      :: !(Maybe Int64)
    , _pdobLowerBound :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PointDistributionOverflowBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdobCount'
--
-- * 'pdobLowerBound'
pointDistributionOverflowBucket
    :: PointDistributionOverflowBucket
pointDistributionOverflowBucket =
    PointDistributionOverflowBucket
    { _pdobCount = Nothing
    , _pdobLowerBound = Nothing
    }

-- | The number of events whose values are in the interval defined by this
-- bucket.
pdobCount :: Lens' PointDistributionOverflowBucket (Maybe Int64)
pdobCount
  = lens _pdobCount (\ s a -> s{_pdobCount = a})

-- | The lower bound of the value interval of this bucket (inclusive).
pdobLowerBound :: Lens' PointDistributionOverflowBucket (Maybe Double)
pdobLowerBound
  = lens _pdobLowerBound
      (\ s a -> s{_pdobLowerBound = a})

-- | The underflow bucket is a special bucket that does not have the
-- lowerBound field; it includes all of the events that are less than its
-- upper bound.
--
-- /See:/ 'pointDistributionUnderflowBucket' smart constructor.
data PointDistributionUnderflowBucket = PointDistributionUnderflowBucket
    { _pdubUpperBound :: !(Maybe Double)
    , _pdubCount      :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PointDistributionUnderflowBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdubUpperBound'
--
-- * 'pdubCount'
pointDistributionUnderflowBucket
    :: PointDistributionUnderflowBucket
pointDistributionUnderflowBucket =
    PointDistributionUnderflowBucket
    { _pdubUpperBound = Nothing
    , _pdubCount = Nothing
    }

-- | The upper bound of the value interval of this bucket (exclusive).
pdubUpperBound :: Lens' PointDistributionUnderflowBucket (Maybe Double)
pdubUpperBound
  = lens _pdubUpperBound
      (\ s a -> s{_pdubUpperBound = a})

-- | The number of events whose values are in the interval defined by this
-- bucket.
pdubCount :: Lens' PointDistributionUnderflowBucket (Maybe Int64)
pdubCount
  = lens _pdubCount (\ s a -> s{_pdubCount = a})

-- | The monitoring data is organized as metrics and stored as data points
-- that are recorded over time. Each data point represents information like
-- the CPU utilization of your virtual machine. A historical record of
-- these data points is called a time series.
--
-- /See:/ 'timeseries' smart constructor.
data Timeseries = Timeseries
    { _tPoints         :: !(Maybe [Maybe Point])
    , _tTimeseriesDesc :: !(Maybe (Maybe TimeseriesDescriptor))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Timeseries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tPoints'
--
-- * 'tTimeseriesDesc'
timeseries
    :: Timeseries
timeseries =
    Timeseries
    { _tPoints = Nothing
    , _tTimeseriesDesc = Nothing
    }

-- | The data points of this time series. The points are listed in order of
-- their end timestamp, from younger to older.
tPoints :: Lens' Timeseries [Maybe Point]
tPoints
  = lens _tPoints (\ s a -> s{_tPoints = a}) . _Default
      . _Coerce

-- | The descriptor of this time series.
tTimeseriesDesc :: Lens' Timeseries (Maybe (Maybe TimeseriesDescriptor))
tTimeseriesDesc
  = lens _tTimeseriesDesc
      (\ s a -> s{_tTimeseriesDesc = a})

-- | TimeseriesDescriptor identifies a single time series.
--
-- /See:/ 'timeseriesDescriptor' smart constructor.
data TimeseriesDescriptor = TimeseriesDescriptor
    { _tdProject :: !(Maybe Text)
    , _tdMetric  :: !(Maybe Text)
    , _tdLabels  :: !(Maybe TimeseriesDescriptorLabels)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdProject'
--
-- * 'tdMetric'
--
-- * 'tdLabels'
timeseriesDescriptor
    :: TimeseriesDescriptor
timeseriesDescriptor =
    TimeseriesDescriptor
    { _tdProject = Nothing
    , _tdMetric = Nothing
    , _tdLabels = Nothing
    }

-- | The Developers Console project number to which this time series belongs.
tdProject :: Lens' TimeseriesDescriptor (Maybe Text)
tdProject
  = lens _tdProject (\ s a -> s{_tdProject = a})

-- | The name of the metric.
tdMetric :: Lens' TimeseriesDescriptor (Maybe Text)
tdMetric = lens _tdMetric (\ s a -> s{_tdMetric = a})

-- | The label\'s name.
tdLabels :: Lens' TimeseriesDescriptor (Maybe TimeseriesDescriptorLabels)
tdLabels = lens _tdLabels (\ s a -> s{_tdLabels = a})

--
-- /See:/ 'timeseriesDescriptorLabel' smart constructor.
data TimeseriesDescriptorLabel = TimeseriesDescriptorLabel
    { _tdlValue :: !(Maybe Text)
    , _tdlKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesDescriptorLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdlValue'
--
-- * 'tdlKey'
timeseriesDescriptorLabel
    :: TimeseriesDescriptorLabel
timeseriesDescriptorLabel =
    TimeseriesDescriptorLabel
    { _tdlValue = Nothing
    , _tdlKey = Nothing
    }

-- | The label\'s value.
tdlValue :: Lens' TimeseriesDescriptorLabel (Maybe Text)
tdlValue = lens _tdlValue (\ s a -> s{_tdlValue = a})

-- | The label\'s name.
tdlKey :: Lens' TimeseriesDescriptorLabel (Maybe Text)
tdlKey = lens _tdlKey (\ s a -> s{_tdlKey = a})

-- | The label\'s name.
--
-- /See:/ 'timeseriesDescriptorLabels' smart constructor.
data TimeseriesDescriptorLabels =
    TimeseriesDescriptorLabels
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesDescriptorLabels' with the minimum fields required to make a request.
--
timeseriesDescriptorLabels
    :: TimeseriesDescriptorLabels
timeseriesDescriptorLabels = TimeseriesDescriptorLabels

-- | When writing time series, TimeseriesPoint should be used instead of
-- Timeseries, to enforce single point for each time series in the
-- timeseries.write request.
--
-- /See:/ 'timeseriesPoint' smart constructor.
data TimeseriesPoint = TimeseriesPoint
    { _tpPoint          :: !(Maybe (Maybe Point))
    , _tpTimeseriesDesc :: !(Maybe (Maybe TimeseriesDescriptor))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpPoint'
--
-- * 'tpTimeseriesDesc'
timeseriesPoint
    :: TimeseriesPoint
timeseriesPoint =
    TimeseriesPoint
    { _tpPoint = Nothing
    , _tpTimeseriesDesc = Nothing
    }

-- | The data point in this time series snapshot.
tpPoint :: Lens' TimeseriesPoint (Maybe (Maybe Point))
tpPoint = lens _tpPoint (\ s a -> s{_tpPoint = a})

-- | The descriptor of this time series.
tpTimeseriesDesc :: Lens' TimeseriesPoint (Maybe (Maybe TimeseriesDescriptor))
tpTimeseriesDesc
  = lens _tpTimeseriesDesc
      (\ s a -> s{_tpTimeseriesDesc = a})

-- | The request of cloudmonitoring.timeseries.write
--
-- /See:/ 'writeTimeseriesRequest' smart constructor.
data WriteTimeseriesRequest = WriteTimeseriesRequest
    { _wtrCommonLabels :: !(Maybe WriteTimeseriesRequestCommonLabels)
    , _wtrTimeseries   :: !(Maybe [Maybe TimeseriesPoint])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteTimeseriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtrCommonLabels'
--
-- * 'wtrTimeseries'
writeTimeseriesRequest
    :: WriteTimeseriesRequest
writeTimeseriesRequest =
    WriteTimeseriesRequest
    { _wtrCommonLabels = Nothing
    , _wtrTimeseries = Nothing
    }

-- | The label\'s name.
wtrCommonLabels :: Lens' WriteTimeseriesRequest (Maybe WriteTimeseriesRequestCommonLabels)
wtrCommonLabels
  = lens _wtrCommonLabels
      (\ s a -> s{_wtrCommonLabels = a})

-- | Provide time series specific labels and the data points for each time
-- series. The labels in timeseries and the common_labels should form a
-- complete list of labels that required by the metric.
wtrTimeseries :: Lens' WriteTimeseriesRequest [Maybe TimeseriesPoint]
wtrTimeseries
  = lens _wtrTimeseries
      (\ s a -> s{_wtrTimeseries = a})
      . _Default
      . _Coerce

-- | The label\'s name.
--
-- /See:/ 'writeTimeseriesRequestCommonLabels' smart constructor.
data WriteTimeseriesRequestCommonLabels =
    WriteTimeseriesRequestCommonLabels
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteTimeseriesRequestCommonLabels' with the minimum fields required to make a request.
--
writeTimeseriesRequestCommonLabels
    :: WriteTimeseriesRequestCommonLabels
writeTimeseriesRequestCommonLabels = WriteTimeseriesRequestCommonLabels

-- | The response of cloudmonitoring.timeseries.write
--
-- /See:/ 'writeTimeseriesResponse' smart constructor.
newtype WriteTimeseriesResponse = WriteTimeseriesResponse
    { _wtrKind :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteTimeseriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtrKind'
writeTimeseriesResponse
    :: WriteTimeseriesResponse
writeTimeseriesResponse =
    WriteTimeseriesResponse
    { _wtrKind = "cloudmonitoring#writeTimeseriesResponse"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#writeTimeseriesResponse\".
wtrKind :: Lens' WriteTimeseriesResponse Text
wtrKind = lens _wtrKind (\ s a -> s{_wtrKind = a})
