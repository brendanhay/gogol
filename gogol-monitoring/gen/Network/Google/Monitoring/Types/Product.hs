{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Monitoring.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Monitoring.Types.Product where

import           Network.Google.Monitoring.Types.Sum
import           Network.Google.Prelude

-- | A type in a metric contains information about how the metric is
-- collected and what its data points look like.
--
-- /See:/ 'metricDescriptorTypeDescriptor' smart constructor.
data MetricDescriptorTypeDescriptor = MetricDescriptorTypeDescriptor
    { _mdtdMetricType :: !(Maybe Text)
    , _mdtdValueType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON MetricDescriptorTypeDescriptor
         where
        parseJSON
          = withObject "MetricDescriptorTypeDescriptor"
              (\ o ->
                 MetricDescriptorTypeDescriptor <$>
                   (o .:? "metricType") <*> (o .:? "valueType"))

instance ToJSON MetricDescriptorTypeDescriptor where
        toJSON MetricDescriptorTypeDescriptor{..}
          = object
              (catMaybes
                 [("metricType" .=) <$> _mdtdMetricType,
                  ("valueType" .=) <$> _mdtdValueType])

-- | The response of cloudmonitoring.timeseries.list
--
-- /See:/ 'listTimeseriesResponse' smart constructor.
data ListTimeseriesResponse = ListTimeseriesResponse
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrKind          :: !Text
    , _ltrOldest        :: !(Maybe DateTime')
    , _ltrYoungest      :: !(Maybe DateTime')
    , _ltrTimeseries    :: !(Maybe [Timeseries])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTimeseriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextPageToken'
--
-- * 'ltrKind'
--
-- * 'ltrOldest'
--
-- * 'ltrYoungest'
--
-- * 'ltrTimeseries'
listTimeseriesResponse
    :: ListTimeseriesResponse
listTimeseriesResponse =
    ListTimeseriesResponse
    { _ltrNextPageToken = Nothing
    , _ltrKind = "cloudmonitoring#listTimeseriesResponse"
    , _ltrOldest = Nothing
    , _ltrYoungest = Nothing
    , _ltrTimeseries = Nothing
    }

-- | Pagination token. If present, indicates that additional results are
-- available for retrieval. To access the results past the pagination
-- limit, set the pageToken query parameter to this value. All of the
-- points of a time series will be returned before returning any point of
-- the subsequent time series.
ltrNextPageToken :: Lens' ListTimeseriesResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listTimeseriesResponse\".
ltrKind :: Lens' ListTimeseriesResponse Text
ltrKind = lens _ltrKind (\ s a -> s{_ltrKind = a})

-- | The oldest timestamp of the interval of this query as an RFC 3339
-- string.
ltrOldest :: Lens' ListTimeseriesResponse (Maybe UTCTime)
ltrOldest
  = lens _ltrOldest (\ s a -> s{_ltrOldest = a}) .
      mapping _DateTime

-- | The youngest timestamp of the interval of this query as an RFC 3339
-- string.
ltrYoungest :: Lens' ListTimeseriesResponse (Maybe UTCTime)
ltrYoungest
  = lens _ltrYoungest (\ s a -> s{_ltrYoungest = a}) .
      mapping _DateTime

-- | The returned time series.
ltrTimeseries :: Lens' ListTimeseriesResponse [Timeseries]
ltrTimeseries
  = lens _ltrTimeseries
      (\ s a -> s{_ltrTimeseries = a})
      . _Default
      . _Coerce

instance FromJSON ListTimeseriesResponse where
        parseJSON
          = withObject "ListTimeseriesResponse"
              (\ o ->
                 ListTimeseriesResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "cloudmonitoring#listTimeseriesResponse")
                     <*> (o .:? "oldest")
                     <*> (o .:? "youngest")
                     <*> (o .:? "timeseries" .!= mempty))

instance ToJSON ListTimeseriesResponse where
        toJSON ListTimeseriesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  Just ("kind" .= _ltrKind),
                  ("oldest" .=) <$> _ltrOldest,
                  ("youngest" .=) <$> _ltrYoungest,
                  ("timeseries" .=) <$> _ltrTimeseries])

-- | A metricDescriptor defines the name, label keys, and data type of a
-- particular metric.
--
-- /See:/ 'metricDescriptor' smart constructor.
data MetricDescriptor = MetricDescriptor
    { _mdProject        :: !(Maybe Text)
    , _mdTypeDescriptor :: !(Maybe MetricDescriptorTypeDescriptor)
    , _mdName           :: !(Maybe Text)
    , _mdLabels         :: !(Maybe [MetricDescriptorLabelDescriptor])
    , _mdDescription    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
mdTypeDescriptor :: Lens' MetricDescriptor (Maybe MetricDescriptorTypeDescriptor)
mdTypeDescriptor
  = lens _mdTypeDescriptor
      (\ s a -> s{_mdTypeDescriptor = a})

-- | The name of this metric.
mdName :: Lens' MetricDescriptor (Maybe Text)
mdName = lens _mdName (\ s a -> s{_mdName = a})

-- | Labels defined for this metric.
mdLabels :: Lens' MetricDescriptor [MetricDescriptorLabelDescriptor]
mdLabels
  = lens _mdLabels (\ s a -> s{_mdLabels = a}) .
      _Default
      . _Coerce

-- | Description of this metric.
mdDescription :: Lens' MetricDescriptor (Maybe Text)
mdDescription
  = lens _mdDescription
      (\ s a -> s{_mdDescription = a})

instance FromJSON MetricDescriptor where
        parseJSON
          = withObject "MetricDescriptor"
              (\ o ->
                 MetricDescriptor <$>
                   (o .:? "project") <*> (o .:? "typeDescriptor") <*>
                     (o .:? "name")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON MetricDescriptor where
        toJSON MetricDescriptor{..}
          = object
              (catMaybes
                 [("project" .=) <$> _mdProject,
                  ("typeDescriptor" .=) <$> _mdTypeDescriptor,
                  ("name" .=) <$> _mdName, ("labels" .=) <$> _mdLabels,
                  ("description" .=) <$> _mdDescription])

-- | The request of cloudmonitoring.timeseries.write
--
-- /See:/ 'writeTimeseriesRequest' smart constructor.
data WriteTimeseriesRequest = WriteTimeseriesRequest
    { _wtrCommonLabels :: !(Maybe WriteTimeseriesRequestCommonLabels)
    , _wtrTimeseries   :: !(Maybe [TimeseriesPoint])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
wtrTimeseries :: Lens' WriteTimeseriesRequest [TimeseriesPoint]
wtrTimeseries
  = lens _wtrTimeseries
      (\ s a -> s{_wtrTimeseries = a})
      . _Default
      . _Coerce

instance FromJSON WriteTimeseriesRequest where
        parseJSON
          = withObject "WriteTimeseriesRequest"
              (\ o ->
                 WriteTimeseriesRequest <$>
                   (o .:? "commonLabels") <*>
                     (o .:? "timeseries" .!= mempty))

instance ToJSON WriteTimeseriesRequest where
        toJSON WriteTimeseriesRequest{..}
          = object
              (catMaybes
                 [("commonLabels" .=) <$> _wtrCommonLabels,
                  ("timeseries" .=) <$> _wtrTimeseries])

-- | The label\'s name.
--
-- /See:/ 'writeTimeseriesRequestCommonLabels' smart constructor.
newtype WriteTimeseriesRequestCommonLabels = WriteTimeseriesRequestCommonLabels
    { _wtrclProperties :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteTimeseriesRequestCommonLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtrclProperties'
writeTimeseriesRequestCommonLabels
    :: HashMap Text Text -- ^ 'properties'
    -> WriteTimeseriesRequestCommonLabels
writeTimeseriesRequestCommonLabels pWtrclProperties_ =
    WriteTimeseriesRequestCommonLabels
    { _wtrclProperties = pWtrclProperties_
    }

-- | The label\'s name.
wtrclProperties :: Lens' WriteTimeseriesRequestCommonLabels (HashMap Text Text)
wtrclProperties
  = lens _wtrclProperties
      (\ s a -> s{_wtrclProperties = a})

instance FromJSON WriteTimeseriesRequestCommonLabels
         where
        parseJSON
          = withObject "WriteTimeseriesRequestCommonLabels"
              (\ o ->
                 WriteTimeseriesRequestCommonLabels <$>
                   (parseJSONObject o))

instance ToJSON WriteTimeseriesRequestCommonLabels
         where
        toJSON = toJSON . _wtrclProperties

-- | A label in a metric is a description of this metric, including the key
-- of this description (what the description is), and the value for this
-- description.
--
-- /See:/ 'metricDescriptorLabelDescriptor' smart constructor.
data MetricDescriptorLabelDescriptor = MetricDescriptorLabelDescriptor
    { _mdldKey         :: !(Maybe Text)
    , _mdldDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON MetricDescriptorLabelDescriptor
         where
        parseJSON
          = withObject "MetricDescriptorLabelDescriptor"
              (\ o ->
                 MetricDescriptorLabelDescriptor <$>
                   (o .:? "key") <*> (o .:? "description"))

instance ToJSON MetricDescriptorLabelDescriptor where
        toJSON MetricDescriptorLabelDescriptor{..}
          = object
              (catMaybes
                 [("key" .=) <$> _mdldKey,
                  ("description" .=) <$> _mdldDescription])

-- | The underflow bucket is a special bucket that does not have the
-- lowerBound field; it includes all of the events that are less than its
-- upper bound.
--
-- /See:/ 'pointDistributionUnderflowBucket' smart constructor.
data PointDistributionUnderflowBucket = PointDistributionUnderflowBucket
    { _pdubUpperBound :: !(Maybe Double)
    , _pdubCount      :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON PointDistributionUnderflowBucket
         where
        parseJSON
          = withObject "PointDistributionUnderflowBucket"
              (\ o ->
                 PointDistributionUnderflowBucket <$>
                   (o .:? "upperBound") <*> (o .:? "count"))

instance ToJSON PointDistributionUnderflowBucket
         where
        toJSON PointDistributionUnderflowBucket{..}
          = object
              (catMaybes
                 [("upperBound" .=) <$> _pdubUpperBound,
                  ("count" .=) <$> _pdubCount])

-- | The response of cloudmonitoring.metricDescriptors.list.
--
-- /See:/ 'listMetricDescriptorsResponse' smart constructor.
data ListMetricDescriptorsResponse = ListMetricDescriptorsResponse
    { _lmdrMetrics       :: !(Maybe [MetricDescriptor])
    , _lmdrNextPageToken :: !(Maybe Text)
    , _lmdrKind          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMetricDescriptorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmdrMetrics'
--
-- * 'lmdrNextPageToken'
--
-- * 'lmdrKind'
listMetricDescriptorsResponse
    :: ListMetricDescriptorsResponse
listMetricDescriptorsResponse =
    ListMetricDescriptorsResponse
    { _lmdrMetrics = Nothing
    , _lmdrNextPageToken = Nothing
    , _lmdrKind = "cloudmonitoring#listMetricDescriptorsResponse"
    }

-- | The returned metric descriptors.
lmdrMetrics :: Lens' ListMetricDescriptorsResponse [MetricDescriptor]
lmdrMetrics
  = lens _lmdrMetrics (\ s a -> s{_lmdrMetrics = a}) .
      _Default
      . _Coerce

-- | Pagination token. If present, indicates that additional results are
-- available for retrieval. To access the results past the pagination
-- limit, pass this value to the pageToken query parameter.
lmdrNextPageToken :: Lens' ListMetricDescriptorsResponse (Maybe Text)
lmdrNextPageToken
  = lens _lmdrNextPageToken
      (\ s a -> s{_lmdrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listMetricDescriptorsResponse\".
lmdrKind :: Lens' ListMetricDescriptorsResponse Text
lmdrKind = lens _lmdrKind (\ s a -> s{_lmdrKind = a})

instance FromJSON ListMetricDescriptorsResponse where
        parseJSON
          = withObject "ListMetricDescriptorsResponse"
              (\ o ->
                 ListMetricDescriptorsResponse <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*>
                     (o .:? "kind" .!=
                        "cloudmonitoring#listMetricDescriptorsResponse"))

instance ToJSON ListMetricDescriptorsResponse where
        toJSON ListMetricDescriptorsResponse{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _lmdrMetrics,
                  ("nextPageToken" .=) <$> _lmdrNextPageToken,
                  Just ("kind" .= _lmdrKind)])

-- | The request of cloudmonitoring.timeseriesDescriptors.list
--
-- /See:/ 'listTimeseriesDescriptorsRequest' smart constructor.
newtype ListTimeseriesDescriptorsRequest = ListTimeseriesDescriptorsRequest
    { _ltdrKind :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTimeseriesDescriptorsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltdrKind'
listTimeseriesDescriptorsRequest
    :: ListTimeseriesDescriptorsRequest
listTimeseriesDescriptorsRequest =
    ListTimeseriesDescriptorsRequest
    { _ltdrKind = "cloudmonitoring#listTimeseriesDescriptorsRequest"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listTimeseriesDescriptorsRequest\".
ltdrKind :: Lens' ListTimeseriesDescriptorsRequest Text
ltdrKind = lens _ltdrKind (\ s a -> s{_ltdrKind = a})

instance FromJSON ListTimeseriesDescriptorsRequest
         where
        parseJSON
          = withObject "ListTimeseriesDescriptorsRequest"
              (\ o ->
                 ListTimeseriesDescriptorsRequest <$>
                   (o .:? "kind" .!=
                      "cloudmonitoring#listTimeseriesDescriptorsRequest"))

instance ToJSON ListTimeseriesDescriptorsRequest
         where
        toJSON ListTimeseriesDescriptorsRequest{..}
          = object (catMaybes [Just ("kind" .= _ltdrKind)])

-- | The label\'s name.
--
-- /See:/ 'timeseriesDescriptorLabels' smart constructor.
newtype TimeseriesDescriptorLabels = TimeseriesDescriptorLabels
    { _tdlProperties :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesDescriptorLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdlProperties'
timeseriesDescriptorLabels
    :: HashMap Text Text -- ^ 'properties'
    -> TimeseriesDescriptorLabels
timeseriesDescriptorLabels pTdlProperties_ =
    TimeseriesDescriptorLabels
    { _tdlProperties = pTdlProperties_
    }

-- | The label\'s name.
tdlProperties :: Lens' TimeseriesDescriptorLabels (HashMap Text Text)
tdlProperties
  = lens _tdlProperties
      (\ s a -> s{_tdlProperties = a})

instance FromJSON TimeseriesDescriptorLabels where
        parseJSON
          = withObject "TimeseriesDescriptorLabels"
              (\ o ->
                 TimeseriesDescriptorLabels <$> (parseJSONObject o))

instance ToJSON TimeseriesDescriptorLabels where
        toJSON = toJSON . _tdlProperties

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON PointDistributionBucket where
        parseJSON
          = withObject "PointDistributionBucket"
              (\ o ->
                 PointDistributionBucket <$>
                   (o .:? "upperBound") <*> (o .:? "count") <*>
                     (o .:? "lowerBound"))

instance ToJSON PointDistributionBucket where
        toJSON PointDistributionBucket{..}
          = object
              (catMaybes
                 [("upperBound" .=) <$> _pdbUpperBound,
                  ("count" .=) <$> _pdbCount,
                  ("lowerBound" .=) <$> _pdbLowerBound])

-- | The response of cloudmonitoring.timeseries.write
--
-- /See:/ 'writeTimeseriesResponse' smart constructor.
newtype WriteTimeseriesResponse = WriteTimeseriesResponse
    { _wtrKind :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON WriteTimeseriesResponse where
        parseJSON
          = withObject "WriteTimeseriesResponse"
              (\ o ->
                 WriteTimeseriesResponse <$>
                   (o .:? "kind" .!=
                      "cloudmonitoring#writeTimeseriesResponse"))

instance ToJSON WriteTimeseriesResponse where
        toJSON WriteTimeseriesResponse{..}
          = object (catMaybes [Just ("kind" .= _wtrKind)])

--
-- /See:/ 'timeseriesDescriptorLabel' smart constructor.
data TimeseriesDescriptorLabel = TimeseriesDescriptorLabel
    { _tdlValue :: !(Maybe Text)
    , _tdlKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON TimeseriesDescriptorLabel where
        parseJSON
          = withObject "TimeseriesDescriptorLabel"
              (\ o ->
                 TimeseriesDescriptorLabel <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON TimeseriesDescriptorLabel where
        toJSON TimeseriesDescriptorLabel{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tdlValue, ("key" .=) <$> _tdlKey])

-- | Distribution data point value type. When writing distribution points,
-- try to be consistent with the boundaries of your buckets. If you must
-- modify the bucket boundaries, then do so by merging, partitioning, or
-- appending rather than skewing them.
--
-- /See:/ 'pointDistribution' smart constructor.
data PointDistribution = PointDistribution
    { _pdOverflowBucket  :: !(Maybe PointDistributionOverflowBucket)
    , _pdBuckets         :: !(Maybe [PointDistributionBucket])
    , _pdUnderflowBucket :: !(Maybe PointDistributionUnderflowBucket)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
pdOverflowBucket :: Lens' PointDistribution (Maybe PointDistributionOverflowBucket)
pdOverflowBucket
  = lens _pdOverflowBucket
      (\ s a -> s{_pdOverflowBucket = a})

-- | The finite buckets.
pdBuckets :: Lens' PointDistribution [PointDistributionBucket]
pdBuckets
  = lens _pdBuckets (\ s a -> s{_pdBuckets = a}) .
      _Default
      . _Coerce

-- | The underflow bucket.
pdUnderflowBucket :: Lens' PointDistribution (Maybe PointDistributionUnderflowBucket)
pdUnderflowBucket
  = lens _pdUnderflowBucket
      (\ s a -> s{_pdUnderflowBucket = a})

instance FromJSON PointDistribution where
        parseJSON
          = withObject "PointDistribution"
              (\ o ->
                 PointDistribution <$>
                   (o .:? "overflowBucket") <*>
                     (o .:? "buckets" .!= mempty)
                     <*> (o .:? "underflowBucket"))

instance ToJSON PointDistribution where
        toJSON PointDistribution{..}
          = object
              (catMaybes
                 [("overflowBucket" .=) <$> _pdOverflowBucket,
                  ("buckets" .=) <$> _pdBuckets,
                  ("underflowBucket" .=) <$> _pdUnderflowBucket])

-- | Point is a single point in a time series. It consists of a start time,
-- an end time, and a value.
--
-- /See:/ 'point' smart constructor.
data Point = Point
    { _pBoolValue         :: !(Maybe Bool)
    , _pStart             :: !(Maybe DateTime')
    , _pDoubleValue       :: !(Maybe Double)
    , _pStringValue       :: !(Maybe Text)
    , _pDistributionValue :: !(Maybe PointDistribution)
    , _pEnd               :: !(Maybe DateTime')
    , _pInt64Value        :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
pStart
  = lens _pStart (\ s a -> s{_pStart = a}) .
      mapping _DateTime

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
pDistributionValue :: Lens' Point (Maybe PointDistribution)
pDistributionValue
  = lens _pDistributionValue
      (\ s a -> s{_pDistributionValue = a})

-- | The interval [start, end] is the time period to which the point\'s value
-- applies. For gauge metrics, whose values are instantaneous measurements,
-- this interval should be empty (start should equal end). For cumulative
-- metrics (of which deltas and rates are special cases), the interval
-- should be non-empty. Both start and end are RFC 3339 strings.
pEnd :: Lens' Point (Maybe UTCTime)
pEnd
  = lens _pEnd (\ s a -> s{_pEnd = a}) .
      mapping _DateTime

-- | The value of this data point as a 64-bit integer.
pInt64Value :: Lens' Point (Maybe Int64)
pInt64Value
  = lens _pInt64Value (\ s a -> s{_pInt64Value = a})

instance FromJSON Point where
        parseJSON
          = withObject "Point"
              (\ o ->
                 Point <$>
                   (o .:? "boolValue") <*> (o .:? "start") <*>
                     (o .:? "doubleValue")
                     <*> (o .:? "stringValue")
                     <*> (o .:? "distributionValue")
                     <*> (o .:? "end")
                     <*> (o .:? "int64Value"))

instance ToJSON Point where
        toJSON Point{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _pBoolValue,
                  ("start" .=) <$> _pStart,
                  ("doubleValue" .=) <$> _pDoubleValue,
                  ("stringValue" .=) <$> _pStringValue,
                  ("distributionValue" .=) <$> _pDistributionValue,
                  ("end" .=) <$> _pEnd,
                  ("int64Value" .=) <$> _pInt64Value])

-- | The overflow bucket is a special bucket that does not have the
-- upperBound field; it includes all of the events that are no less than
-- its lower bound.
--
-- /See:/ 'pointDistributionOverflowBucket' smart constructor.
data PointDistributionOverflowBucket = PointDistributionOverflowBucket
    { _pdobCount      :: !(Maybe Int64)
    , _pdobLowerBound :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON PointDistributionOverflowBucket
         where
        parseJSON
          = withObject "PointDistributionOverflowBucket"
              (\ o ->
                 PointDistributionOverflowBucket <$>
                   (o .:? "count") <*> (o .:? "lowerBound"))

instance ToJSON PointDistributionOverflowBucket where
        toJSON PointDistributionOverflowBucket{..}
          = object
              (catMaybes
                 [("count" .=) <$> _pdobCount,
                  ("lowerBound" .=) <$> _pdobLowerBound])

-- | The response of cloudmonitoring.timeseriesDescriptors.list
--
-- /See:/ 'listTimeseriesDescriptorsResponse' smart constructor.
data ListTimeseriesDescriptorsResponse = ListTimeseriesDescriptorsResponse
    { _lNextPageToken :: !(Maybe Text)
    , _lKind          :: !Text
    , _lOldest        :: !(Maybe DateTime')
    , _lYoungest      :: !(Maybe DateTime')
    , _lTimeseries    :: !(Maybe [TimeseriesDescriptor])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTimeseriesDescriptorsResponse' with the minimum fields required to make a request.
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
listTimeseriesDescriptorsResponse
    :: ListTimeseriesDescriptorsResponse
listTimeseriesDescriptorsResponse =
    ListTimeseriesDescriptorsResponse
    { _lNextPageToken = Nothing
    , _lKind = "cloudmonitoring#listTimeseriesDescriptorsResponse"
    , _lOldest = Nothing
    , _lYoungest = Nothing
    , _lTimeseries = Nothing
    }

-- | Pagination token. If present, indicates that additional results are
-- available for retrieval. To access the results past the pagination
-- limit, set this value to the pageToken query parameter.
lNextPageToken :: Lens' ListTimeseriesDescriptorsResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listTimeseriesDescriptorsResponse\".
lKind :: Lens' ListTimeseriesDescriptorsResponse Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | The oldest timestamp of the interval of this query, as an RFC 3339
-- string.
lOldest :: Lens' ListTimeseriesDescriptorsResponse (Maybe UTCTime)
lOldest
  = lens _lOldest (\ s a -> s{_lOldest = a}) .
      mapping _DateTime

-- | The youngest timestamp of the interval of this query, as an RFC 3339
-- string.
lYoungest :: Lens' ListTimeseriesDescriptorsResponse (Maybe UTCTime)
lYoungest
  = lens _lYoungest (\ s a -> s{_lYoungest = a}) .
      mapping _DateTime

-- | The returned time series descriptors.
lTimeseries :: Lens' ListTimeseriesDescriptorsResponse [TimeseriesDescriptor]
lTimeseries
  = lens _lTimeseries (\ s a -> s{_lTimeseries = a}) .
      _Default
      . _Coerce

instance FromJSON ListTimeseriesDescriptorsResponse
         where
        parseJSON
          = withObject "ListTimeseriesDescriptorsResponse"
              (\ o ->
                 ListTimeseriesDescriptorsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "cloudmonitoring#listTimeseriesDescriptorsResponse")
                     <*> (o .:? "oldest")
                     <*> (o .:? "youngest")
                     <*> (o .:? "timeseries" .!= mempty))

instance ToJSON ListTimeseriesDescriptorsResponse
         where
        toJSON ListTimeseriesDescriptorsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  Just ("kind" .= _lKind), ("oldest" .=) <$> _lOldest,
                  ("youngest" .=) <$> _lYoungest,
                  ("timeseries" .=) <$> _lTimeseries])

-- | The request of cloudmonitoring.metricDescriptors.list.
--
-- /See:/ 'listMetricDescriptorsRequest' smart constructor.
newtype ListMetricDescriptorsRequest = ListMetricDescriptorsRequest
    { _lisKind :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMetricDescriptorsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisKind'
listMetricDescriptorsRequest
    :: ListMetricDescriptorsRequest
listMetricDescriptorsRequest =
    ListMetricDescriptorsRequest
    { _lisKind = "cloudmonitoring#listMetricDescriptorsRequest"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listMetricDescriptorsRequest\".
lisKind :: Lens' ListMetricDescriptorsRequest Text
lisKind = lens _lisKind (\ s a -> s{_lisKind = a})

instance FromJSON ListMetricDescriptorsRequest where
        parseJSON
          = withObject "ListMetricDescriptorsRequest"
              (\ o ->
                 ListMetricDescriptorsRequest <$>
                   (o .:? "kind" .!=
                      "cloudmonitoring#listMetricDescriptorsRequest"))

instance ToJSON ListMetricDescriptorsRequest where
        toJSON ListMetricDescriptorsRequest{..}
          = object (catMaybes [Just ("kind" .= _lisKind)])

-- | When writing time series, TimeseriesPoint should be used instead of
-- Timeseries, to enforce single point for each time series in the
-- timeseries.write request.
--
-- /See:/ 'timeseriesPoint' smart constructor.
data TimeseriesPoint = TimeseriesPoint
    { _tpPoint          :: !(Maybe Point)
    , _tpTimeseriesDesc :: !(Maybe TimeseriesDescriptor)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
tpPoint :: Lens' TimeseriesPoint (Maybe Point)
tpPoint = lens _tpPoint (\ s a -> s{_tpPoint = a})

-- | The descriptor of this time series.
tpTimeseriesDesc :: Lens' TimeseriesPoint (Maybe TimeseriesDescriptor)
tpTimeseriesDesc
  = lens _tpTimeseriesDesc
      (\ s a -> s{_tpTimeseriesDesc = a})

instance FromJSON TimeseriesPoint where
        parseJSON
          = withObject "TimeseriesPoint"
              (\ o ->
                 TimeseriesPoint <$>
                   (o .:? "point") <*> (o .:? "timeseriesDesc"))

instance ToJSON TimeseriesPoint where
        toJSON TimeseriesPoint{..}
          = object
              (catMaybes
                 [("point" .=) <$> _tpPoint,
                  ("timeseriesDesc" .=) <$> _tpTimeseriesDesc])

-- | The response of cloudmonitoring.metricDescriptors.delete.
--
-- /See:/ 'deleteMetricDescriptorResponse' smart constructor.
newtype DeleteMetricDescriptorResponse = DeleteMetricDescriptorResponse
    { _dmdrKind :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON DeleteMetricDescriptorResponse
         where
        parseJSON
          = withObject "DeleteMetricDescriptorResponse"
              (\ o ->
                 DeleteMetricDescriptorResponse <$>
                   (o .:? "kind" .!=
                      "cloudmonitoring#deleteMetricDescriptorResponse"))

instance ToJSON DeleteMetricDescriptorResponse where
        toJSON DeleteMetricDescriptorResponse{..}
          = object (catMaybes [Just ("kind" .= _dmdrKind)])

-- | The request of cloudmonitoring.timeseries.list
--
-- /See:/ 'listTimeseriesRequest' smart constructor.
newtype ListTimeseriesRequest = ListTimeseriesRequest
    { _ltrtKind :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTimeseriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrtKind'
listTimeseriesRequest
    :: ListTimeseriesRequest
listTimeseriesRequest =
    ListTimeseriesRequest
    { _ltrtKind = "cloudmonitoring#listTimeseriesRequest"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"cloudmonitoring#listTimeseriesRequest\".
ltrtKind :: Lens' ListTimeseriesRequest Text
ltrtKind = lens _ltrtKind (\ s a -> s{_ltrtKind = a})

instance FromJSON ListTimeseriesRequest where
        parseJSON
          = withObject "ListTimeseriesRequest"
              (\ o ->
                 ListTimeseriesRequest <$>
                   (o .:? "kind" .!=
                      "cloudmonitoring#listTimeseriesRequest"))

instance ToJSON ListTimeseriesRequest where
        toJSON ListTimeseriesRequest{..}
          = object (catMaybes [Just ("kind" .= _ltrtKind)])

-- | TimeseriesDescriptor identifies a single time series.
--
-- /See:/ 'timeseriesDescriptor' smart constructor.
data TimeseriesDescriptor = TimeseriesDescriptor
    { _tdProject :: !(Maybe Text)
    , _tdMetric  :: !(Maybe Text)
    , _tdLabels  :: !(Maybe TimeseriesDescriptorLabels)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON TimeseriesDescriptor where
        parseJSON
          = withObject "TimeseriesDescriptor"
              (\ o ->
                 TimeseriesDescriptor <$>
                   (o .:? "project") <*> (o .:? "metric") <*>
                     (o .:? "labels"))

instance ToJSON TimeseriesDescriptor where
        toJSON TimeseriesDescriptor{..}
          = object
              (catMaybes
                 [("project" .=) <$> _tdProject,
                  ("metric" .=) <$> _tdMetric,
                  ("labels" .=) <$> _tdLabels])

-- | The monitoring data is organized as metrics and stored as data points
-- that are recorded over time. Each data point represents information like
-- the CPU utilization of your virtual machine. A historical record of
-- these data points is called a time series.
--
-- /See:/ 'timeseries' smart constructor.
data Timeseries = Timeseries
    { _tPoints         :: !(Maybe [Point])
    , _tTimeseriesDesc :: !(Maybe TimeseriesDescriptor)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
tPoints :: Lens' Timeseries [Point]
tPoints
  = lens _tPoints (\ s a -> s{_tPoints = a}) . _Default
      . _Coerce

-- | The descriptor of this time series.
tTimeseriesDesc :: Lens' Timeseries (Maybe TimeseriesDescriptor)
tTimeseriesDesc
  = lens _tTimeseriesDesc
      (\ s a -> s{_tTimeseriesDesc = a})

instance FromJSON Timeseries where
        parseJSON
          = withObject "Timeseries"
              (\ o ->
                 Timeseries <$>
                   (o .:? "points" .!= mempty) <*>
                     (o .:? "timeseriesDesc"))

instance ToJSON Timeseries where
        toJSON Timeseries{..}
          = object
              (catMaybes
                 [("points" .=) <$> _tPoints,
                  ("timeseriesDesc" .=) <$> _tTimeseriesDesc])
