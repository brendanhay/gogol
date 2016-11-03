{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Monitoring.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Monitoring.Types.Product where

import           Network.Google.Monitoring.Types.Sum
import           Network.Google.Prelude

-- | An object that describes the schema of a MonitoredResource object using
-- a type name and a set of labels. For example, the monitored resource
-- descriptor for Google Compute Engine VM instances has a type of
-- \"gce_instance\" and specifies the use of the labels \"instance_id\" and
-- \"zone\" to identify particular VM instances.Different APIs can support
-- different monitored resource types. APIs generally provide a list method
-- that returns the monitored resource descriptors used by the API.
--
-- /See:/ 'monitoredResourceDescriptor' smart constructor.
data MonitoredResourceDescriptor = MonitoredResourceDescriptor'
    { _mrdName        :: !(Maybe Text)
    , _mrdDisplayName :: !(Maybe Text)
    , _mrdLabels      :: !(Maybe [LabelDescriptor])
    , _mrdType        :: !(Maybe Text)
    , _mrdDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonitoredResourceDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrdName'
--
-- * 'mrdDisplayName'
--
-- * 'mrdLabels'
--
-- * 'mrdType'
--
-- * 'mrdDescription'
monitoredResourceDescriptor
    :: MonitoredResourceDescriptor
monitoredResourceDescriptor =
    MonitoredResourceDescriptor'
    { _mrdName = Nothing
    , _mrdDisplayName = Nothing
    , _mrdLabels = Nothing
    , _mrdType = Nothing
    , _mrdDescription = Nothing
    }

-- | Optional. The resource name of the monitored resource descriptor:
-- \"projects\/{project_id}\/monitoredResourceDescriptors\/{type}\" where
-- {type} is the value of the type field in this object and {project_id} is
-- a project ID that provides API-specific context for accessing the type.
-- APIs that do not use project information can use the resource name
-- format \"monitoredResourceDescriptors\/{type}\".
mrdName :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdName = lens _mrdName (\ s a -> s{_mrdName = a})

-- | Optional. A concise name for the monitored resource type that might be
-- displayed in user interfaces. It should be a Title Cased Noun Phrase,
-- without any article or other determiners. For example, \"Google Cloud
-- SQL Database\".
mrdDisplayName :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdDisplayName
  = lens _mrdDisplayName
      (\ s a -> s{_mrdDisplayName = a})

-- | Required. A set of labels used to describe instances of this monitored
-- resource type. For example, an individual Google Cloud SQL database is
-- identified by values for the labels \"database_id\" and \"zone\".
mrdLabels :: Lens' MonitoredResourceDescriptor [LabelDescriptor]
mrdLabels
  = lens _mrdLabels (\ s a -> s{_mrdLabels = a}) .
      _Default
      . _Coerce

-- | Required. The monitored resource type. For example, the type
-- \"cloudsql_database\" represents databases in Google Cloud SQL. The
-- maximum length of this value is 256 characters.
mrdType :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdType = lens _mrdType (\ s a -> s{_mrdType = a})

-- | Optional. A detailed description of the monitored resource type that
-- might be used in documentation.
mrdDescription :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdDescription
  = lens _mrdDescription
      (\ s a -> s{_mrdDescription = a})

instance FromJSON MonitoredResourceDescriptor where
        parseJSON
          = withObject "MonitoredResourceDescriptor"
              (\ o ->
                 MonitoredResourceDescriptor' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON MonitoredResourceDescriptor where
        toJSON MonitoredResourceDescriptor'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _mrdName,
                  ("displayName" .=) <$> _mrdDisplayName,
                  ("labels" .=) <$> _mrdLabels,
                  ("type" .=) <$> _mrdType,
                  ("description" .=) <$> _mrdDescription])

-- | The ListTimeSeries response.
--
-- /See:/ 'listTimeSeriesResponse' smart constructor.
data ListTimeSeriesResponse = ListTimeSeriesResponse'
    { _ltsrNextPageToken :: !(Maybe Text)
    , _ltsrTimeSeries    :: !(Maybe [TimeSeries])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTimeSeriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltsrNextPageToken'
--
-- * 'ltsrTimeSeries'
listTimeSeriesResponse
    :: ListTimeSeriesResponse
listTimeSeriesResponse =
    ListTimeSeriesResponse'
    { _ltsrNextPageToken = Nothing
    , _ltsrTimeSeries = Nothing
    }

-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as pageToken in the next call to this method.
ltsrNextPageToken :: Lens' ListTimeSeriesResponse (Maybe Text)
ltsrNextPageToken
  = lens _ltsrNextPageToken
      (\ s a -> s{_ltsrNextPageToken = a})

-- | One or more time series that match the filter included in the request.
ltsrTimeSeries :: Lens' ListTimeSeriesResponse [TimeSeries]
ltsrTimeSeries
  = lens _ltsrTimeSeries
      (\ s a -> s{_ltsrTimeSeries = a})
      . _Default
      . _Coerce

instance FromJSON ListTimeSeriesResponse where
        parseJSON
          = withObject "ListTimeSeriesResponse"
              (\ o ->
                 ListTimeSeriesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "timeSeries" .!= mempty))

instance ToJSON ListTimeSeriesResponse where
        toJSON ListTimeSeriesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltsrNextPageToken,
                  ("timeSeries" .=) <$> _ltsrTimeSeries])

-- | Defines a metric type and its schema.
--
-- /See:/ 'metricDescriptor' smart constructor.
data MetricDescriptor = MetricDescriptor'
    { _mdMetricKind  :: !(Maybe MetricDescriptorMetricKind)
    , _mdName        :: !(Maybe Text)
    , _mdDisplayName :: !(Maybe Text)
    , _mdLabels      :: !(Maybe [LabelDescriptor])
    , _mdType        :: !(Maybe Text)
    , _mdValueType   :: !(Maybe MetricDescriptorValueType)
    , _mdDescription :: !(Maybe Text)
    , _mdUnit        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdMetricKind'
--
-- * 'mdName'
--
-- * 'mdDisplayName'
--
-- * 'mdLabels'
--
-- * 'mdType'
--
-- * 'mdValueType'
--
-- * 'mdDescription'
--
-- * 'mdUnit'
metricDescriptor
    :: MetricDescriptor
metricDescriptor =
    MetricDescriptor'
    { _mdMetricKind = Nothing
    , _mdName = Nothing
    , _mdDisplayName = Nothing
    , _mdLabels = Nothing
    , _mdType = Nothing
    , _mdValueType = Nothing
    , _mdDescription = Nothing
    , _mdUnit = Nothing
    }

-- | Whether the metric records instantaneous values, changes to a value,
-- etc. Some combinations of metric_kind and value_type might not be
-- supported.
mdMetricKind :: Lens' MetricDescriptor (Maybe MetricDescriptorMetricKind)
mdMetricKind
  = lens _mdMetricKind (\ s a -> s{_mdMetricKind = a})

-- | Resource name. The format of the name may vary between different
-- implementations. For examples:
-- projects\/{project_id}\/metricDescriptors\/{type=**}
-- metricDescriptors\/{type=**}
mdName :: Lens' MetricDescriptor (Maybe Text)
mdName = lens _mdName (\ s a -> s{_mdName = a})

-- | A concise name for the metric, which can be displayed in user
-- interfaces. Use sentence case without an ending period, for example
-- \"Request count\".
mdDisplayName :: Lens' MetricDescriptor (Maybe Text)
mdDisplayName
  = lens _mdDisplayName
      (\ s a -> s{_mdDisplayName = a})

-- | The set of labels that can be used to describe a specific instance of
-- this metric type. For example, the
-- compute.googleapis.com\/instance\/network\/received_bytes_count metric
-- type has a label, loadbalanced, that specifies whether the traffic was
-- received through a load balanced IP address.
mdLabels :: Lens' MetricDescriptor [LabelDescriptor]
mdLabels
  = lens _mdLabels (\ s a -> s{_mdLabels = a}) .
      _Default
      . _Coerce

-- | The metric type including a DNS name prefix, for example
-- \"compute.googleapis.com\/instance\/cpu\/utilization\". Metric types
-- should use a natural hierarchical grouping such as the following:
-- compute.googleapis.com\/instance\/cpu\/utilization
-- compute.googleapis.com\/instance\/disk\/read_ops_count
-- compute.googleapis.com\/instance\/network\/received_bytes_count Note
-- that if the metric type changes, the monitoring data will be
-- discontinued, and anything depends on it will break, such as monitoring
-- dashboards, alerting rules and quota limits. Therefore, once a metric
-- has been published, its type should be immutable.
mdType :: Lens' MetricDescriptor (Maybe Text)
mdType = lens _mdType (\ s a -> s{_mdType = a})

-- | Whether the measurement is an integer, a floating-point number, etc.
-- Some combinations of metric_kind and value_type might not be supported.
mdValueType :: Lens' MetricDescriptor (Maybe MetricDescriptorValueType)
mdValueType
  = lens _mdValueType (\ s a -> s{_mdValueType = a})

-- | A detailed description of the metric, which can be used in
-- documentation.
mdDescription :: Lens' MetricDescriptor (Maybe Text)
mdDescription
  = lens _mdDescription
      (\ s a -> s{_mdDescription = a})

-- | The unit in which the metric value is reported. It is only applicable if
-- the value_type is INT64, DOUBLE, or DISTRIBUTION. The supported units
-- are a subset of The Unified Code for Units of Measure
-- (http:\/\/unitsofmeasure.org\/ucum.html) standard:Basic units (UNIT) bit
-- bit By byte s second min minute h hour d dayPrefixes (PREFIX) k kilo
-- (10**3) M mega (10**6) G giga (10**9) T tera (10**12) P peta (10**15) E
-- exa (10**18) Z zetta (10**21) Y yotta (10**24) m milli (10**-3) u micro
-- (10**-6) n nano (10**-9) p pico (10**-12) f femto (10**-15) a atto
-- (10**-18) z zepto (10**-21) y yocto (10**-24) Ki kibi (2**10) Mi mebi
-- (2**20) Gi gibi (2**30) Ti tebi (2**40)GrammarThe grammar includes the
-- dimensionless unit 1, such as 1\/s.The grammar also includes these
-- connectors: \/ division (as an infix operator, e.g. 1\/s). .
-- multiplication (as an infix operator, e.g. GBy.d)The grammar for a unit
-- is as follows: Expression = Component { \".\" Component } { \"\/\"
-- Component } ; Component = [ PREFIX ] UNIT [ Annotation ] | Annotation |
-- \"1\" ; Annotation = \"{\" NAME \"}\" ; Notes: Annotation is just a
-- comment if it follows a UNIT and is equivalent to 1 if it is used alone.
-- For examples, {requests}\/s == 1\/s, By{transmitted}\/s == By\/s. NAME
-- is a sequence of non-blank printable ASCII characters not containing
-- \'{\' or \'}\'.
mdUnit :: Lens' MetricDescriptor (Maybe Text)
mdUnit = lens _mdUnit (\ s a -> s{_mdUnit = a})

instance FromJSON MetricDescriptor where
        parseJSON
          = withObject "MetricDescriptor"
              (\ o ->
                 MetricDescriptor' <$>
                   (o .:? "metricKind") <*> (o .:? "name") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "valueType")
                     <*> (o .:? "description")
                     <*> (o .:? "unit"))

instance ToJSON MetricDescriptor where
        toJSON MetricDescriptor'{..}
          = object
              (catMaybes
                 [("metricKind" .=) <$> _mdMetricKind,
                  ("name" .=) <$> _mdName,
                  ("displayName" .=) <$> _mdDisplayName,
                  ("labels" .=) <$> _mdLabels, ("type" .=) <$> _mdType,
                  ("valueType" .=) <$> _mdValueType,
                  ("description" .=) <$> _mdDescription,
                  ("unit" .=) <$> _mdUnit])

-- | The description of a dynamic collection of monitored resources. Each
-- group has a filter that is matched against monitored resources and their
-- associated metadata. If a group\'s filter matches an available monitored
-- resource, then that resource is a member of that group. Groups can
-- contain any number of monitored resources, and each monitored resource
-- can be a member of any number of groups.Groups can be nested in
-- parent-child hierarchies. The parentName field identifies an optional
-- parent for each group. If a group has a parent, then the only monitored
-- resources available to be matched by the group\'s filter are the
-- resources contained in the parent group. In other words, a group
-- contains the monitored resources that match its filter and the filters
-- of all the group\'s ancestors. A group without a parent can contain any
-- monitored resource.For example, consider an infrastructure running a set
-- of instances with two user-defined tags: \"environment\" and \"role\". A
-- parent group has a filter, environment=\"production\". A child of that
-- parent group has a filter, role=\"transcoder\". The parent group
-- contains all instances in the production environment, regardless of
-- their roles. The child group contains instances that have the transcoder
-- role and are in the production environment.The monitored resources
-- contained in a group can change at any moment, depending on what
-- resources exist and what filters are associated with the group and its
-- ancestors.
--
-- /See:/ 'group'' smart constructor.
data Group = Group'
    { _gName        :: !(Maybe Text)
    , _gDisplayName :: !(Maybe Text)
    , _gFilter      :: !(Maybe Text)
    , _gIsCluster   :: !(Maybe Bool)
    , _gParentName  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gName'
--
-- * 'gDisplayName'
--
-- * 'gFilter'
--
-- * 'gIsCluster'
--
-- * 'gParentName'
group'
    :: Group
group' =
    Group'
    { _gName = Nothing
    , _gDisplayName = Nothing
    , _gFilter = Nothing
    , _gIsCluster = Nothing
    , _gParentName = Nothing
    }

-- | Output only. The name of this group. The format is
-- \"projects\/{project_id_or_number}\/groups\/{group_id}\". When creating
-- a group, this field is ignored and a new name is created consisting of
-- the project specified in the call to CreateGroup and a unique {group_id}
-- that is generated automatically.
gName :: Lens' Group (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | A user-assigned name for this group, used only for display purposes.
gDisplayName :: Lens' Group (Maybe Text)
gDisplayName
  = lens _gDisplayName (\ s a -> s{_gDisplayName = a})

-- | The filter used to determine which monitored resources belong to this
-- group.
gFilter :: Lens' Group (Maybe Text)
gFilter = lens _gFilter (\ s a -> s{_gFilter = a})

-- | If true, the members of this group are considered to be a cluster. The
-- system can perform additional analysis on groups that are clusters.
gIsCluster :: Lens' Group (Maybe Bool)
gIsCluster
  = lens _gIsCluster (\ s a -> s{_gIsCluster = a})

-- | The name of the group\'s parent, if it has one. The format is
-- \"projects\/{project_id_or_number}\/groups\/{group_id}\". For groups
-- with no parent, parentName is the empty string, \"\".
gParentName :: Lens' Group (Maybe Text)
gParentName
  = lens _gParentName (\ s a -> s{_gParentName = a})

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ o ->
                 Group' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "filter")
                     <*> (o .:? "isCluster")
                     <*> (o .:? "parentName"))

instance ToJSON Group where
        toJSON Group'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gName,
                  ("displayName" .=) <$> _gDisplayName,
                  ("filter" .=) <$> _gFilter,
                  ("isCluster" .=) <$> _gIsCluster,
                  ("parentName" .=) <$> _gParentName])

-- | A single strongly-typed value.
--
-- /See:/ 'typedValue' smart constructor.
data TypedValue = TypedValue'
    { _tvBoolValue         :: !(Maybe Bool)
    , _tvDoubleValue       :: !(Maybe (Textual Double))
    , _tvStringValue       :: !(Maybe Text)
    , _tvDistributionValue :: !(Maybe Distribution)
    , _tvInt64Value        :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TypedValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvBoolValue'
--
-- * 'tvDoubleValue'
--
-- * 'tvStringValue'
--
-- * 'tvDistributionValue'
--
-- * 'tvInt64Value'
typedValue
    :: TypedValue
typedValue =
    TypedValue'
    { _tvBoolValue = Nothing
    , _tvDoubleValue = Nothing
    , _tvStringValue = Nothing
    , _tvDistributionValue = Nothing
    , _tvInt64Value = Nothing
    }

-- | A Boolean value: true or false.
tvBoolValue :: Lens' TypedValue (Maybe Bool)
tvBoolValue
  = lens _tvBoolValue (\ s a -> s{_tvBoolValue = a})

-- | A 64-bit double-precision floating-point number. Its magnitude is
-- approximately ±10±300 and it has 16 significant digits of precision.
tvDoubleValue :: Lens' TypedValue (Maybe Double)
tvDoubleValue
  = lens _tvDoubleValue
      (\ s a -> s{_tvDoubleValue = a})
      . mapping _Coerce

-- | A variable-length string value.
tvStringValue :: Lens' TypedValue (Maybe Text)
tvStringValue
  = lens _tvStringValue
      (\ s a -> s{_tvStringValue = a})

-- | A distribution value.
tvDistributionValue :: Lens' TypedValue (Maybe Distribution)
tvDistributionValue
  = lens _tvDistributionValue
      (\ s a -> s{_tvDistributionValue = a})

-- | A 64-bit integer. Its range is approximately ±9.2x1018.
tvInt64Value :: Lens' TypedValue (Maybe Int64)
tvInt64Value
  = lens _tvInt64Value (\ s a -> s{_tvInt64Value = a})
      . mapping _Coerce

instance FromJSON TypedValue where
        parseJSON
          = withObject "TypedValue"
              (\ o ->
                 TypedValue' <$>
                   (o .:? "boolValue") <*> (o .:? "doubleValue") <*>
                     (o .:? "stringValue")
                     <*> (o .:? "distributionValue")
                     <*> (o .:? "int64Value"))

instance ToJSON TypedValue where
        toJSON TypedValue'{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _tvBoolValue,
                  ("doubleValue" .=) <$> _tvDoubleValue,
                  ("stringValue" .=) <$> _tvStringValue,
                  ("distributionValue" .=) <$> _tvDistributionValue,
                  ("int64Value" .=) <$> _tvInt64Value])

-- | Required. Values for all of the labels listed in the associated
-- monitored resource descriptor. For example, Cloud SQL databases use the
-- labels \"database_id\" and \"zone\".
--
-- /See:/ 'monitoredResourceLabels' smart constructor.
newtype MonitoredResourceLabels = MonitoredResourceLabels'
    { _mrlAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonitoredResourceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrlAddtional'
monitoredResourceLabels
    :: HashMap Text Text -- ^ 'mrlAddtional'
    -> MonitoredResourceLabels
monitoredResourceLabels pMrlAddtional_ =
    MonitoredResourceLabels'
    { _mrlAddtional = _Coerce # pMrlAddtional_
    }

mrlAddtional :: Lens' MonitoredResourceLabels (HashMap Text Text)
mrlAddtional
  = lens _mrlAddtional (\ s a -> s{_mrlAddtional = a})
      . _Coerce

instance FromJSON MonitoredResourceLabels where
        parseJSON
          = withObject "MonitoredResourceLabels"
              (\ o ->
                 MonitoredResourceLabels' <$> (parseJSONObject o))

instance ToJSON MonitoredResourceLabels where
        toJSON = toJSON . _mrlAddtional

-- | SourceContext represents information about the source of a protobuf
-- element, like the file in which it is defined.
--
-- /See:/ 'sourceContext' smart constructor.
newtype SourceContext = SourceContext'
    { _scFileName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scFileName'
sourceContext
    :: SourceContext
sourceContext =
    SourceContext'
    { _scFileName = Nothing
    }

-- | The path-qualified name of the .proto file that contained the associated
-- protobuf element. For example:
-- \"google\/protobuf\/source_context.proto\".
scFileName :: Lens' SourceContext (Maybe Text)
scFileName
  = lens _scFileName (\ s a -> s{_scFileName = a})

instance FromJSON SourceContext where
        parseJSON
          = withObject "SourceContext"
              (\ o -> SourceContext' <$> (o .:? "fileName"))

instance ToJSON SourceContext where
        toJSON SourceContext'{..}
          = object
              (catMaybes [("fileName" .=) <$> _scFileName])

-- | Distribution contains summary statistics for a population of values and,
-- optionally, a histogram representing the distribution of those values
-- across a specified set of histogram buckets.The summary statistics are
-- the count, mean, sum of the squared deviation from the mean, the
-- minimum, and the maximum of the set of population of values.The
-- histogram is based on a sequence of buckets and gives a count of values
-- that fall into each bucket. The boundaries of the buckets are given
-- either explicitly or by specifying parameters for a method of computing
-- them (buckets of fixed width or buckets of exponentially increasing
-- width).Although it is not forbidden, it is generally a bad idea to
-- include non-finite values (infinities or NaNs) in the population of
-- values, as this will render the mean and sum_of_squared_deviation fields
-- meaningless.
--
-- /See:/ 'distribution' smart constructor.
data Distribution = Distribution'
    { _dSumOfSquaredDeviation :: !(Maybe (Textual Double))
    , _dMean                  :: !(Maybe (Textual Double))
    , _dCount                 :: !(Maybe (Textual Int64))
    , _dBucketCounts          :: !(Maybe [Textual Int64])
    , _dRange                 :: !(Maybe Range)
    , _dBucketOptions         :: !(Maybe BucketOptions)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Distribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSumOfSquaredDeviation'
--
-- * 'dMean'
--
-- * 'dCount'
--
-- * 'dBucketCounts'
--
-- * 'dRange'
--
-- * 'dBucketOptions'
distribution
    :: Distribution
distribution =
    Distribution'
    { _dSumOfSquaredDeviation = Nothing
    , _dMean = Nothing
    , _dCount = Nothing
    , _dBucketCounts = Nothing
    , _dRange = Nothing
    , _dBucketOptions = Nothing
    }

-- | The sum of squared deviations from the mean of the values in the
-- population. For values x_i this is: Sum[i=1..n]((x_i - mean)^2) Knuth,
-- \"The Art of Computer Programming\", Vol. 2, page 323, 3rd edition
-- describes Welford\'s method for accumulating this sum in one pass.If
-- count is zero then this field must be zero.
dSumOfSquaredDeviation :: Lens' Distribution (Maybe Double)
dSumOfSquaredDeviation
  = lens _dSumOfSquaredDeviation
      (\ s a -> s{_dSumOfSquaredDeviation = a})
      . mapping _Coerce

-- | The arithmetic mean of the values in the population. If count is zero
-- then this field must be zero.
dMean :: Lens' Distribution (Maybe Double)
dMean
  = lens _dMean (\ s a -> s{_dMean = a}) .
      mapping _Coerce

-- | The number of values in the population. Must be non-negative.
dCount :: Lens' Distribution (Maybe Int64)
dCount
  = lens _dCount (\ s a -> s{_dCount = a}) .
      mapping _Coerce

-- | If bucket_options is given, then the sum of the values in bucket_counts
-- must equal the value in count. If bucket_options is not given, no
-- bucket_counts fields may be given.Bucket counts are given in order under
-- the numbering scheme described above (the underflow bucket has number 0;
-- the finite buckets, if any, have numbers 1 through N-2; the overflow
-- bucket has number N-1).The size of bucket_counts must be no greater than
-- N as defined in bucket_options.Any suffix of trailing zero bucket_count
-- fields may be omitted.
dBucketCounts :: Lens' Distribution [Int64]
dBucketCounts
  = lens _dBucketCounts
      (\ s a -> s{_dBucketCounts = a})
      . _Default
      . _Coerce

-- | If specified, contains the range of the population values. The field
-- must not be present if the count is zero. This field is presently
-- ignored by the Stackdriver Monitoring API v3.
dRange :: Lens' Distribution (Maybe Range)
dRange = lens _dRange (\ s a -> s{_dRange = a})

-- | Defines the histogram bucket boundaries.
dBucketOptions :: Lens' Distribution (Maybe BucketOptions)
dBucketOptions
  = lens _dBucketOptions
      (\ s a -> s{_dBucketOptions = a})

instance FromJSON Distribution where
        parseJSON
          = withObject "Distribution"
              (\ o ->
                 Distribution' <$>
                   (o .:? "sumOfSquaredDeviation") <*> (o .:? "mean")
                     <*> (o .:? "count")
                     <*> (o .:? "bucketCounts" .!= mempty)
                     <*> (o .:? "range")
                     <*> (o .:? "bucketOptions"))

instance ToJSON Distribution where
        toJSON Distribution'{..}
          = object
              (catMaybes
                 [("sumOfSquaredDeviation" .=) <$>
                    _dSumOfSquaredDeviation,
                  ("mean" .=) <$> _dMean, ("count" .=) <$> _dCount,
                  ("bucketCounts" .=) <$> _dBucketCounts,
                  ("range" .=) <$> _dRange,
                  ("bucketOptions" .=) <$> _dBucketOptions])

-- | A single field of a message type.
--
-- /See:/ 'field' smart constructor.
data Field = Field'
    { _fKind         :: !(Maybe FieldKind)
    , _fOneofIndex   :: !(Maybe (Textual Int32))
    , _fName         :: !(Maybe Text)
    , _fJSONName     :: !(Maybe Text)
    , _fCardinality  :: !(Maybe FieldCardinality)
    , _fOptions      :: !(Maybe [Option])
    , _fPacked       :: !(Maybe Bool)
    , _fDefaultValue :: !(Maybe Text)
    , _fNumber       :: !(Maybe (Textual Int32))
    , _fTypeURL      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Field' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fKind'
--
-- * 'fOneofIndex'
--
-- * 'fName'
--
-- * 'fJSONName'
--
-- * 'fCardinality'
--
-- * 'fOptions'
--
-- * 'fPacked'
--
-- * 'fDefaultValue'
--
-- * 'fNumber'
--
-- * 'fTypeURL'
field
    :: Field
field =
    Field'
    { _fKind = Nothing
    , _fOneofIndex = Nothing
    , _fName = Nothing
    , _fJSONName = Nothing
    , _fCardinality = Nothing
    , _fOptions = Nothing
    , _fPacked = Nothing
    , _fDefaultValue = Nothing
    , _fNumber = Nothing
    , _fTypeURL = Nothing
    }

-- | The field type.
fKind :: Lens' Field (Maybe FieldKind)
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | The index of the field type in Type.oneofs, for message or enumeration
-- types. The first type has index 1; zero means the type is not in the
-- list.
fOneofIndex :: Lens' Field (Maybe Int32)
fOneofIndex
  = lens _fOneofIndex (\ s a -> s{_fOneofIndex = a}) .
      mapping _Coerce

-- | The field name.
fName :: Lens' Field (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | The field JSON name.
fJSONName :: Lens' Field (Maybe Text)
fJSONName
  = lens _fJSONName (\ s a -> s{_fJSONName = a})

-- | The field cardinality.
fCardinality :: Lens' Field (Maybe FieldCardinality)
fCardinality
  = lens _fCardinality (\ s a -> s{_fCardinality = a})

-- | The protocol buffer options.
fOptions :: Lens' Field [Option]
fOptions
  = lens _fOptions (\ s a -> s{_fOptions = a}) .
      _Default
      . _Coerce

-- | Whether to use alternative packed wire representation.
fPacked :: Lens' Field (Maybe Bool)
fPacked = lens _fPacked (\ s a -> s{_fPacked = a})

-- | The string value of the default value of this field. Proto2 syntax only.
fDefaultValue :: Lens' Field (Maybe Text)
fDefaultValue
  = lens _fDefaultValue
      (\ s a -> s{_fDefaultValue = a})

-- | The field number.
fNumber :: Lens' Field (Maybe Int32)
fNumber
  = lens _fNumber (\ s a -> s{_fNumber = a}) .
      mapping _Coerce

-- | The field type URL, without the scheme, for message or enumeration
-- types. Example: \"type.googleapis.com\/google.protobuf.Timestamp\".
fTypeURL :: Lens' Field (Maybe Text)
fTypeURL = lens _fTypeURL (\ s a -> s{_fTypeURL = a})

instance FromJSON Field where
        parseJSON
          = withObject "Field"
              (\ o ->
                 Field' <$>
                   (o .:? "kind") <*> (o .:? "oneofIndex") <*>
                     (o .:? "name")
                     <*> (o .:? "jsonName")
                     <*> (o .:? "cardinality")
                     <*> (o .:? "options" .!= mempty)
                     <*> (o .:? "packed")
                     <*> (o .:? "defaultValue")
                     <*> (o .:? "number")
                     <*> (o .:? "typeUrl"))

instance ToJSON Field where
        toJSON Field'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _fKind,
                  ("oneofIndex" .=) <$> _fOneofIndex,
                  ("name" .=) <$> _fName,
                  ("jsonName" .=) <$> _fJSONName,
                  ("cardinality" .=) <$> _fCardinality,
                  ("options" .=) <$> _fOptions,
                  ("packed" .=) <$> _fPacked,
                  ("defaultValue" .=) <$> _fDefaultValue,
                  ("number" .=) <$> _fNumber,
                  ("typeUrl" .=) <$> _fTypeURL])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for Empty is empty JSON object {}.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | The ListGroups response.
--
-- /See:/ 'listGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse'
    { _lgrNextPageToken :: !(Maybe Text)
    , _lgrGroup         :: !(Maybe [Group])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrNextPageToken'
--
-- * 'lgrGroup'
listGroupsResponse
    :: ListGroupsResponse
listGroupsResponse =
    ListGroupsResponse'
    { _lgrNextPageToken = Nothing
    , _lgrGroup = Nothing
    }

-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as pageToken in the next call to this method.
lgrNextPageToken :: Lens' ListGroupsResponse (Maybe Text)
lgrNextPageToken
  = lens _lgrNextPageToken
      (\ s a -> s{_lgrNextPageToken = a})

-- | The groups that match the specified filters.
lgrGroup :: Lens' ListGroupsResponse [Group]
lgrGroup
  = lens _lgrGroup (\ s a -> s{_lgrGroup = a}) .
      _Default
      . _Coerce

instance FromJSON ListGroupsResponse where
        parseJSON
          = withObject "ListGroupsResponse"
              (\ o ->
                 ListGroupsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "group" .!= mempty))

instance ToJSON ListGroupsResponse where
        toJSON ListGroupsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lgrNextPageToken,
                  ("group" .=) <$> _lgrGroup])

-- | The ListMetricDescriptors response.
--
-- /See:/ 'listMetricDescriptorsResponse' smart constructor.
data ListMetricDescriptorsResponse = ListMetricDescriptorsResponse'
    { _lmdrMetricDescriptors :: !(Maybe [MetricDescriptor])
    , _lmdrNextPageToken     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMetricDescriptorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmdrMetricDescriptors'
--
-- * 'lmdrNextPageToken'
listMetricDescriptorsResponse
    :: ListMetricDescriptorsResponse
listMetricDescriptorsResponse =
    ListMetricDescriptorsResponse'
    { _lmdrMetricDescriptors = Nothing
    , _lmdrNextPageToken = Nothing
    }

-- | The metric descriptors that are available to the project and that match
-- the value of filter, if present.
lmdrMetricDescriptors :: Lens' ListMetricDescriptorsResponse [MetricDescriptor]
lmdrMetricDescriptors
  = lens _lmdrMetricDescriptors
      (\ s a -> s{_lmdrMetricDescriptors = a})
      . _Default
      . _Coerce

-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as pageToken in the next call to this method.
lmdrNextPageToken :: Lens' ListMetricDescriptorsResponse (Maybe Text)
lmdrNextPageToken
  = lens _lmdrNextPageToken
      (\ s a -> s{_lmdrNextPageToken = a})

instance FromJSON ListMetricDescriptorsResponse where
        parseJSON
          = withObject "ListMetricDescriptorsResponse"
              (\ o ->
                 ListMetricDescriptorsResponse' <$>
                   (o .:? "metricDescriptors" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListMetricDescriptorsResponse where
        toJSON ListMetricDescriptorsResponse'{..}
          = object
              (catMaybes
                 [("metricDescriptors" .=) <$> _lmdrMetricDescriptors,
                  ("nextPageToken" .=) <$> _lmdrNextPageToken])

-- | The option\'s value. For example, \"com.google.protobuf\".
--
-- /See:/ 'optionValue' smart constructor.
newtype OptionValue = OptionValue'
    { _ovAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OptionValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ovAddtional'
optionValue
    :: HashMap Text JSONValue -- ^ 'ovAddtional'
    -> OptionValue
optionValue pOvAddtional_ =
    OptionValue'
    { _ovAddtional = _Coerce # pOvAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
ovAddtional :: Lens' OptionValue (HashMap Text JSONValue)
ovAddtional
  = lens _ovAddtional (\ s a -> s{_ovAddtional = a}) .
      _Coerce

instance FromJSON OptionValue where
        parseJSON
          = withObject "OptionValue"
              (\ o -> OptionValue' <$> (parseJSONObject o))

instance ToJSON OptionValue where
        toJSON = toJSON . _ovAddtional

-- | The CreateTimeSeries request.
--
-- /See:/ 'createTimeSeriesRequest' smart constructor.
newtype CreateTimeSeriesRequest = CreateTimeSeriesRequest'
    { _ctsrTimeSeries :: Maybe [TimeSeries]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateTimeSeriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctsrTimeSeries'
createTimeSeriesRequest
    :: CreateTimeSeriesRequest
createTimeSeriesRequest =
    CreateTimeSeriesRequest'
    { _ctsrTimeSeries = Nothing
    }

-- | The new data to be added to a list of time series. Adds at most one data
-- point to each of several time series. The new data point must be more
-- recent than any other point in its time series. Each TimeSeries value
-- must fully specify a unique time series by supplying all label values
-- for the metric and the monitored resource.
ctsrTimeSeries :: Lens' CreateTimeSeriesRequest [TimeSeries]
ctsrTimeSeries
  = lens _ctsrTimeSeries
      (\ s a -> s{_ctsrTimeSeries = a})
      . _Default
      . _Coerce

instance FromJSON CreateTimeSeriesRequest where
        parseJSON
          = withObject "CreateTimeSeriesRequest"
              (\ o ->
                 CreateTimeSeriesRequest' <$>
                   (o .:? "timeSeries" .!= mempty))

instance ToJSON CreateTimeSeriesRequest where
        toJSON CreateTimeSeriesRequest'{..}
          = object
              (catMaybes [("timeSeries" .=) <$> _ctsrTimeSeries])

-- | The ListMonitoredResourcDescriptors response.
--
-- /See:/ 'listMonitoredResourceDescriptorsResponse' smart constructor.
data ListMonitoredResourceDescriptorsResponse = ListMonitoredResourceDescriptorsResponse'
    { _lmrdrNextPageToken       :: !(Maybe Text)
    , _lmrdrResourceDescriptors :: !(Maybe [MonitoredResourceDescriptor])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMonitoredResourceDescriptorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrdrNextPageToken'
--
-- * 'lmrdrResourceDescriptors'
listMonitoredResourceDescriptorsResponse
    :: ListMonitoredResourceDescriptorsResponse
listMonitoredResourceDescriptorsResponse =
    ListMonitoredResourceDescriptorsResponse'
    { _lmrdrNextPageToken = Nothing
    , _lmrdrResourceDescriptors = Nothing
    }

-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as pageToken in the next call to this method.
lmrdrNextPageToken :: Lens' ListMonitoredResourceDescriptorsResponse (Maybe Text)
lmrdrNextPageToken
  = lens _lmrdrNextPageToken
      (\ s a -> s{_lmrdrNextPageToken = a})

-- | The monitored resource descriptors that are available to this project
-- and that match filter, if present.
lmrdrResourceDescriptors :: Lens' ListMonitoredResourceDescriptorsResponse [MonitoredResourceDescriptor]
lmrdrResourceDescriptors
  = lens _lmrdrResourceDescriptors
      (\ s a -> s{_lmrdrResourceDescriptors = a})
      . _Default
      . _Coerce

instance FromJSON
         ListMonitoredResourceDescriptorsResponse where
        parseJSON
          = withObject
              "ListMonitoredResourceDescriptorsResponse"
              (\ o ->
                 ListMonitoredResourceDescriptorsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resourceDescriptors" .!= mempty))

instance ToJSON
         ListMonitoredResourceDescriptorsResponse where
        toJSON ListMonitoredResourceDescriptorsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrdrNextPageToken,
                  ("resourceDescriptors" .=) <$>
                    _lmrdrResourceDescriptors])

-- | A set of buckets with arbitrary widths.Defines size(bounds) + 1 (= N)
-- buckets with these boundaries for bucket i:Upper bound (0 \<= i \< N-1):
-- boundsi Lower bound (1 \<= i \< N); boundsi - 1There must be at least
-- one element in bounds. If bounds has only one element, there are no
-- finite buckets, and that single element is the common boundary of the
-- overflow and underflow buckets.
--
-- /See:/ 'explicit' smart constructor.
newtype Explicit = Explicit'
    { _eBounds :: Maybe [Textual Double]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Explicit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eBounds'
explicit
    :: Explicit
explicit =
    Explicit'
    { _eBounds = Nothing
    }

-- | The values must be monotonically increasing.
eBounds :: Lens' Explicit [Double]
eBounds
  = lens _eBounds (\ s a -> s{_eBounds = a}) . _Default
      . _Coerce

instance FromJSON Explicit where
        parseJSON
          = withObject "Explicit"
              (\ o -> Explicit' <$> (o .:? "bounds" .!= mempty))

instance ToJSON Explicit where
        toJSON Explicit'{..}
          = object (catMaybes [("bounds" .=) <$> _eBounds])

-- | The set of labels that uniquely identify a metric. To specify a metric,
-- all labels enumerated in the MetricDescriptor must be assigned values.
--
-- /See:/ 'metricLabels' smart constructor.
newtype MetricLabels = MetricLabels'
    { _mlAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlAddtional'
metricLabels
    :: HashMap Text Text -- ^ 'mlAddtional'
    -> MetricLabels
metricLabels pMlAddtional_ =
    MetricLabels'
    { _mlAddtional = _Coerce # pMlAddtional_
    }

mlAddtional :: Lens' MetricLabels (HashMap Text Text)
mlAddtional
  = lens _mlAddtional (\ s a -> s{_mlAddtional = a}) .
      _Coerce

instance FromJSON MetricLabels where
        parseJSON
          = withObject "MetricLabels"
              (\ o -> MetricLabels' <$> (parseJSONObject o))

instance ToJSON MetricLabels where
        toJSON = toJSON . _mlAddtional

-- | The measurement metadata. Example: \"process_id\" -> 12345
--
-- /See:/ 'collectdPayloadMetadata' smart constructor.
newtype CollectdPayloadMetadata = CollectdPayloadMetadata'
    { _cpmAddtional :: HashMap Text TypedValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectdPayloadMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpmAddtional'
collectdPayloadMetadata
    :: HashMap Text TypedValue -- ^ 'cpmAddtional'
    -> CollectdPayloadMetadata
collectdPayloadMetadata pCpmAddtional_ =
    CollectdPayloadMetadata'
    { _cpmAddtional = _Coerce # pCpmAddtional_
    }

cpmAddtional :: Lens' CollectdPayloadMetadata (HashMap Text TypedValue)
cpmAddtional
  = lens _cpmAddtional (\ s a -> s{_cpmAddtional = a})
      . _Coerce

instance FromJSON CollectdPayloadMetadata where
        parseJSON
          = withObject "CollectdPayloadMetadata"
              (\ o ->
                 CollectdPayloadMetadata' <$> (parseJSONObject o))

instance ToJSON CollectdPayloadMetadata where
        toJSON = toJSON . _cpmAddtional

-- | A single data point from a collectd-based plugin.
--
-- /See:/ 'collectdValue' smart constructor.
data CollectdValue = CollectdValue'
    { _cvDataSourceName :: !(Maybe Text)
    , _cvDataSourceType :: !(Maybe CollectdValueDataSourceType)
    , _cvValue          :: !(Maybe TypedValue)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectdValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvDataSourceName'
--
-- * 'cvDataSourceType'
--
-- * 'cvValue'
collectdValue
    :: CollectdValue
collectdValue =
    CollectdValue'
    { _cvDataSourceName = Nothing
    , _cvDataSourceType = Nothing
    , _cvValue = Nothing
    }

-- | The data source for the collectd value. For example there are two data
-- sources for network measurements: \"rx\" and \"tx\".
cvDataSourceName :: Lens' CollectdValue (Maybe Text)
cvDataSourceName
  = lens _cvDataSourceName
      (\ s a -> s{_cvDataSourceName = a})

-- | The type of measurement.
cvDataSourceType :: Lens' CollectdValue (Maybe CollectdValueDataSourceType)
cvDataSourceType
  = lens _cvDataSourceType
      (\ s a -> s{_cvDataSourceType = a})

-- | The measurement value.
cvValue :: Lens' CollectdValue (Maybe TypedValue)
cvValue = lens _cvValue (\ s a -> s{_cvValue = a})

instance FromJSON CollectdValue where
        parseJSON
          = withObject "CollectdValue"
              (\ o ->
                 CollectdValue' <$>
                   (o .:? "dataSourceName") <*> (o .:? "dataSourceType")
                     <*> (o .:? "value"))

instance ToJSON CollectdValue where
        toJSON CollectdValue'{..}
          = object
              (catMaybes
                 [("dataSourceName" .=) <$> _cvDataSourceName,
                  ("dataSourceType" .=) <$> _cvDataSourceType,
                  ("value" .=) <$> _cvValue])

-- | The CreateCollectdTimeSeries request.
--
-- /See:/ 'createCollectdTimeSeriesRequest' smart constructor.
data CreateCollectdTimeSeriesRequest = CreateCollectdTimeSeriesRequest'
    { _cctsrCollectdPayloads :: !(Maybe [CollectdPayload])
    , _cctsrResource         :: !(Maybe MonitoredResource)
    , _cctsrCollectdVersion  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateCollectdTimeSeriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cctsrCollectdPayloads'
--
-- * 'cctsrResource'
--
-- * 'cctsrCollectdVersion'
createCollectdTimeSeriesRequest
    :: CreateCollectdTimeSeriesRequest
createCollectdTimeSeriesRequest =
    CreateCollectdTimeSeriesRequest'
    { _cctsrCollectdPayloads = Nothing
    , _cctsrResource = Nothing
    , _cctsrCollectdVersion = Nothing
    }

-- | The collectd payloads representing the time series data. You must not
-- include more than a single point for each time series, so no two
-- payloads can have the same values for all of the fields plugin,
-- plugin_instance, type, and type_instance.
cctsrCollectdPayloads :: Lens' CreateCollectdTimeSeriesRequest [CollectdPayload]
cctsrCollectdPayloads
  = lens _cctsrCollectdPayloads
      (\ s a -> s{_cctsrCollectdPayloads = a})
      . _Default
      . _Coerce

-- | The monitored resource associated with the time series.
cctsrResource :: Lens' CreateCollectdTimeSeriesRequest (Maybe MonitoredResource)
cctsrResource
  = lens _cctsrResource
      (\ s a -> s{_cctsrResource = a})

-- | The version of collectd that collected the data. Example:
-- \"5.3.0-192.el6\".
cctsrCollectdVersion :: Lens' CreateCollectdTimeSeriesRequest (Maybe Text)
cctsrCollectdVersion
  = lens _cctsrCollectdVersion
      (\ s a -> s{_cctsrCollectdVersion = a})

instance FromJSON CreateCollectdTimeSeriesRequest
         where
        parseJSON
          = withObject "CreateCollectdTimeSeriesRequest"
              (\ o ->
                 CreateCollectdTimeSeriesRequest' <$>
                   (o .:? "collectdPayloads" .!= mempty) <*>
                     (o .:? "resource")
                     <*> (o .:? "collectdVersion"))

instance ToJSON CreateCollectdTimeSeriesRequest where
        toJSON CreateCollectdTimeSeriesRequest'{..}
          = object
              (catMaybes
                 [("collectdPayloads" .=) <$> _cctsrCollectdPayloads,
                  ("resource" .=) <$> _cctsrResource,
                  ("collectdVersion" .=) <$> _cctsrCollectdVersion])

-- | A single data point in a time series.
--
-- /See:/ 'point' smart constructor.
data Point = Point'
    { _pValue    :: !(Maybe TypedValue)
    , _pInterval :: !(Maybe TimeInterval)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Point' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pValue'
--
-- * 'pInterval'
point
    :: Point
point =
    Point'
    { _pValue = Nothing
    , _pInterval = Nothing
    }

-- | The value of the data point.
pValue :: Lens' Point (Maybe TypedValue)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | The time interval to which the data point applies. For GAUGE metrics,
-- only the end time of the interval is used. For DELTA metrics, the start
-- and end time should specify a non-zero interval, with subsequent points
-- specifying contiguous and non-overlapping intervals. For CUMULATIVE
-- metrics, the start and end time should specify a non-zero interval, with
-- subsequent points specifying the same start time and increasing end
-- times, until an event resets the cumulative value to zero and sets a new
-- start time for the following points.
pInterval :: Lens' Point (Maybe TimeInterval)
pInterval
  = lens _pInterval (\ s a -> s{_pInterval = a})

instance FromJSON Point where
        parseJSON
          = withObject "Point"
              (\ o ->
                 Point' <$> (o .:? "value") <*> (o .:? "interval"))

instance ToJSON Point where
        toJSON Point'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pValue,
                  ("interval" .=) <$> _pInterval])

-- | A collection of data points sent from a collectd-based plugin. See the
-- collectd documentation for more information.
--
-- /See:/ 'collectdPayload' smart constructor.
data CollectdPayload = CollectdPayload'
    { _cpStartTime      :: !(Maybe DateTime')
    , _cpPluginInstance :: !(Maybe Text)
    , _cpValues         :: !(Maybe [CollectdValue])
    , _cpTypeInstance   :: !(Maybe Text)
    , _cpEndTime        :: !(Maybe DateTime')
    , _cpMetadata       :: !(Maybe CollectdPayloadMetadata)
    , _cpType           :: !(Maybe Text)
    , _cpPlugin         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectdPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpStartTime'
--
-- * 'cpPluginInstance'
--
-- * 'cpValues'
--
-- * 'cpTypeInstance'
--
-- * 'cpEndTime'
--
-- * 'cpMetadata'
--
-- * 'cpType'
--
-- * 'cpPlugin'
collectdPayload
    :: CollectdPayload
collectdPayload =
    CollectdPayload'
    { _cpStartTime = Nothing
    , _cpPluginInstance = Nothing
    , _cpValues = Nothing
    , _cpTypeInstance = Nothing
    , _cpEndTime = Nothing
    , _cpMetadata = Nothing
    , _cpType = Nothing
    , _cpPlugin = Nothing
    }

-- | The start time of the interval.
cpStartTime :: Lens' CollectdPayload (Maybe UTCTime)
cpStartTime
  = lens _cpStartTime (\ s a -> s{_cpStartTime = a}) .
      mapping _DateTime

-- | The instance name of the plugin Example: \"hdcl\".
cpPluginInstance :: Lens' CollectdPayload (Maybe Text)
cpPluginInstance
  = lens _cpPluginInstance
      (\ s a -> s{_cpPluginInstance = a})

-- | The measured values during this time interval. Each value must have a
-- different dataSourceName.
cpValues :: Lens' CollectdPayload [CollectdValue]
cpValues
  = lens _cpValues (\ s a -> s{_cpValues = a}) .
      _Default
      . _Coerce

-- | The measurement type instance. Example: \"used\".
cpTypeInstance :: Lens' CollectdPayload (Maybe Text)
cpTypeInstance
  = lens _cpTypeInstance
      (\ s a -> s{_cpTypeInstance = a})

-- | The end time of the interval.
cpEndTime :: Lens' CollectdPayload (Maybe UTCTime)
cpEndTime
  = lens _cpEndTime (\ s a -> s{_cpEndTime = a}) .
      mapping _DateTime

-- | The measurement metadata. Example: \"process_id\" -> 12345
cpMetadata :: Lens' CollectdPayload (Maybe CollectdPayloadMetadata)
cpMetadata
  = lens _cpMetadata (\ s a -> s{_cpMetadata = a})

-- | The measurement type. Example: \"memory\".
cpType :: Lens' CollectdPayload (Maybe Text)
cpType = lens _cpType (\ s a -> s{_cpType = a})

-- | The name of the plugin. Example: \"disk\".
cpPlugin :: Lens' CollectdPayload (Maybe Text)
cpPlugin = lens _cpPlugin (\ s a -> s{_cpPlugin = a})

instance FromJSON CollectdPayload where
        parseJSON
          = withObject "CollectdPayload"
              (\ o ->
                 CollectdPayload' <$>
                   (o .:? "startTime") <*> (o .:? "pluginInstance") <*>
                     (o .:? "values" .!= mempty)
                     <*> (o .:? "typeInstance")
                     <*> (o .:? "endTime")
                     <*> (o .:? "metadata")
                     <*> (o .:? "type")
                     <*> (o .:? "plugin"))

instance ToJSON CollectdPayload where
        toJSON CollectdPayload'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _cpStartTime,
                  ("pluginInstance" .=) <$> _cpPluginInstance,
                  ("values" .=) <$> _cpValues,
                  ("typeInstance" .=) <$> _cpTypeInstance,
                  ("endTime" .=) <$> _cpEndTime,
                  ("metadata" .=) <$> _cpMetadata,
                  ("type" .=) <$> _cpType,
                  ("plugin" .=) <$> _cpPlugin])

-- | A specific metric identified by specifying values for all of the labels
-- of a MetricDescriptor.
--
-- /See:/ 'metric' smart constructor.
data Metric = Metric'
    { _mLabels :: !(Maybe MetricLabels)
    , _mType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Metric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mLabels'
--
-- * 'mType'
metric
    :: Metric
metric =
    Metric'
    { _mLabels = Nothing
    , _mType = Nothing
    }

-- | The set of labels that uniquely identify a metric. To specify a metric,
-- all labels enumerated in the MetricDescriptor must be assigned values.
mLabels :: Lens' Metric (Maybe MetricLabels)
mLabels = lens _mLabels (\ s a -> s{_mLabels = a})

-- | An existing metric type, see google.api.MetricDescriptor. For example,
-- compute.googleapis.com\/instance\/cpu\/usage_time.
mType :: Lens' Metric (Maybe Text)
mType = lens _mType (\ s a -> s{_mType = a})

instance FromJSON Metric where
        parseJSON
          = withObject "Metric"
              (\ o ->
                 Metric' <$> (o .:? "labels") <*> (o .:? "type"))

instance ToJSON Metric where
        toJSON Metric'{..}
          = object
              (catMaybes
                 [("labels" .=) <$> _mLabels, ("type" .=) <$> _mType])

-- | Specify a sequence of buckets that have a width that is proportional to
-- the value of the lower bound. Each bucket represents a constant relative
-- uncertainty on a specific value in the bucket.Defines num_finite_buckets
-- + 2 (= N) buckets with these boundaries for bucket i:Upper bound (0 \<=
-- i \< N-1): scale * (growth_factor ^ i). Lower bound (1 \<= i \< N):
-- scale * (growth_factor ^ (i - 1)).
--
-- /See:/ 'exponential' smart constructor.
data Exponential = Exponential'
    { _eGrowthFactor     :: !(Maybe (Textual Double))
    , _eScale            :: !(Maybe (Textual Double))
    , _eNumFiniteBuckets :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Exponential' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eGrowthFactor'
--
-- * 'eScale'
--
-- * 'eNumFiniteBuckets'
exponential
    :: Exponential
exponential =
    Exponential'
    { _eGrowthFactor = Nothing
    , _eScale = Nothing
    , _eNumFiniteBuckets = Nothing
    }

-- | Must be greater than 1.
eGrowthFactor :: Lens' Exponential (Maybe Double)
eGrowthFactor
  = lens _eGrowthFactor
      (\ s a -> s{_eGrowthFactor = a})
      . mapping _Coerce

-- | Must be greater than 0.
eScale :: Lens' Exponential (Maybe Double)
eScale
  = lens _eScale (\ s a -> s{_eScale = a}) .
      mapping _Coerce

-- | Must be greater than 0.
eNumFiniteBuckets :: Lens' Exponential (Maybe Int32)
eNumFiniteBuckets
  = lens _eNumFiniteBuckets
      (\ s a -> s{_eNumFiniteBuckets = a})
      . mapping _Coerce

instance FromJSON Exponential where
        parseJSON
          = withObject "Exponential"
              (\ o ->
                 Exponential' <$>
                   (o .:? "growthFactor") <*> (o .:? "scale") <*>
                     (o .:? "numFiniteBuckets"))

instance ToJSON Exponential where
        toJSON Exponential'{..}
          = object
              (catMaybes
                 [("growthFactor" .=) <$> _eGrowthFactor,
                  ("scale" .=) <$> _eScale,
                  ("numFiniteBuckets" .=) <$> _eNumFiniteBuckets])

-- | The range of the population values.
--
-- /See:/ 'range' smart constructor.
data Range = Range'
    { _rMax :: !(Maybe (Textual Double))
    , _rMin :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Range' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMax'
--
-- * 'rMin'
range
    :: Range
range =
    Range'
    { _rMax = Nothing
    , _rMin = Nothing
    }

-- | The maximum of the population values.
rMax :: Lens' Range (Maybe Double)
rMax
  = lens _rMax (\ s a -> s{_rMax = a}) .
      mapping _Coerce

-- | The minimum of the population values.
rMin :: Lens' Range (Maybe Double)
rMin
  = lens _rMin (\ s a -> s{_rMin = a}) .
      mapping _Coerce

instance FromJSON Range where
        parseJSON
          = withObject "Range"
              (\ o -> Range' <$> (o .:? "max") <*> (o .:? "min"))

instance ToJSON Range where
        toJSON Range'{..}
          = object
              (catMaybes
                 [("max" .=) <$> _rMax, ("min" .=) <$> _rMin])

-- | An object representing a resource that can be used for monitoring,
-- logging, billing, or other purposes. Examples include virtual machine
-- instances, databases, and storage devices such as disks. The type field
-- identifies a MonitoredResourceDescriptor object that describes the
-- resource\'s schema. Information in the labels field identifies the
-- actual resource and its attributes according to the schema. For example,
-- a particular Compute Engine VM instance could be represented by the
-- following object, because the MonitoredResourceDescriptor for
-- \"gce_instance\" has labels \"instance_id\" and \"zone\": { \"type\":
-- \"gce_instance\", \"labels\": { \"instance_id\": \"12345678901234\",
-- \"zone\": \"us-central1-a\" }}
--
-- /See:/ 'monitoredResource' smart constructor.
data MonitoredResource = MonitoredResource'
    { _mrLabels :: !(Maybe MonitoredResourceLabels)
    , _mrType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonitoredResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrLabels'
--
-- * 'mrType'
monitoredResource
    :: MonitoredResource
monitoredResource =
    MonitoredResource'
    { _mrLabels = Nothing
    , _mrType = Nothing
    }

-- | Required. Values for all of the labels listed in the associated
-- monitored resource descriptor. For example, Cloud SQL databases use the
-- labels \"database_id\" and \"zone\".
mrLabels :: Lens' MonitoredResource (Maybe MonitoredResourceLabels)
mrLabels = lens _mrLabels (\ s a -> s{_mrLabels = a})

-- | Required. The monitored resource type. This field must match the type
-- field of a MonitoredResourceDescriptor object. For example, the type of
-- a Cloud SQL database is \"cloudsql_database\".
mrType :: Lens' MonitoredResource (Maybe Text)
mrType = lens _mrType (\ s a -> s{_mrType = a})

instance FromJSON MonitoredResource where
        parseJSON
          = withObject "MonitoredResource"
              (\ o ->
                 MonitoredResource' <$>
                   (o .:? "labels") <*> (o .:? "type"))

instance ToJSON MonitoredResource where
        toJSON MonitoredResource'{..}
          = object
              (catMaybes
                 [("labels" .=) <$> _mrLabels,
                  ("type" .=) <$> _mrType])

-- | A time interval extending just after a start time through an end time.
-- If the start time is the same as the end time, then the interval
-- represents a single point in time.
--
-- /See:/ 'timeInterval' smart constructor.
data TimeInterval = TimeInterval'
    { _tiStartTime :: !(Maybe DateTime')
    , _tiEndTime   :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeInterval' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiStartTime'
--
-- * 'tiEndTime'
timeInterval
    :: TimeInterval
timeInterval =
    TimeInterval'
    { _tiStartTime = Nothing
    , _tiEndTime = Nothing
    }

-- | Optional. The beginning of the time interval. The default value for the
-- start time is the end time. The start time must not be later than the
-- end time.
tiStartTime :: Lens' TimeInterval (Maybe UTCTime)
tiStartTime
  = lens _tiStartTime (\ s a -> s{_tiStartTime = a}) .
      mapping _DateTime

-- | Required. The end of the time interval.
tiEndTime :: Lens' TimeInterval (Maybe UTCTime)
tiEndTime
  = lens _tiEndTime (\ s a -> s{_tiEndTime = a}) .
      mapping _DateTime

instance FromJSON TimeInterval where
        parseJSON
          = withObject "TimeInterval"
              (\ o ->
                 TimeInterval' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON TimeInterval where
        toJSON TimeInterval'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _tiStartTime,
                  ("endTime" .=) <$> _tiEndTime])

-- | The ListGroupMembers response.
--
-- /See:/ 'listGroupMembersResponse' smart constructor.
data ListGroupMembersResponse = ListGroupMembersResponse'
    { _lgmrNextPageToken :: !(Maybe Text)
    , _lgmrMembers       :: !(Maybe [MonitoredResource])
    , _lgmrTotalSize     :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListGroupMembersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgmrNextPageToken'
--
-- * 'lgmrMembers'
--
-- * 'lgmrTotalSize'
listGroupMembersResponse
    :: ListGroupMembersResponse
listGroupMembersResponse =
    ListGroupMembersResponse'
    { _lgmrNextPageToken = Nothing
    , _lgmrMembers = Nothing
    , _lgmrTotalSize = Nothing
    }

-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as pageToken in the next call to this method.
lgmrNextPageToken :: Lens' ListGroupMembersResponse (Maybe Text)
lgmrNextPageToken
  = lens _lgmrNextPageToken
      (\ s a -> s{_lgmrNextPageToken = a})

-- | A set of monitored resources in the group.
lgmrMembers :: Lens' ListGroupMembersResponse [MonitoredResource]
lgmrMembers
  = lens _lgmrMembers (\ s a -> s{_lgmrMembers = a}) .
      _Default
      . _Coerce

-- | The total number of elements matching this request.
lgmrTotalSize :: Lens' ListGroupMembersResponse (Maybe Int32)
lgmrTotalSize
  = lens _lgmrTotalSize
      (\ s a -> s{_lgmrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListGroupMembersResponse where
        parseJSON
          = withObject "ListGroupMembersResponse"
              (\ o ->
                 ListGroupMembersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "members" .!= mempty)
                     <*> (o .:? "totalSize"))

instance ToJSON ListGroupMembersResponse where
        toJSON ListGroupMembersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lgmrNextPageToken,
                  ("members" .=) <$> _lgmrMembers,
                  ("totalSize" .=) <$> _lgmrTotalSize])

-- | A description of a label.
--
-- /See:/ 'labelDescriptor' smart constructor.
data LabelDescriptor = LabelDescriptor'
    { _ldKey         :: !(Maybe Text)
    , _ldValueType   :: !(Maybe LabelDescriptorValueType)
    , _ldDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LabelDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldKey'
--
-- * 'ldValueType'
--
-- * 'ldDescription'
labelDescriptor
    :: LabelDescriptor
labelDescriptor =
    LabelDescriptor'
    { _ldKey = Nothing
    , _ldValueType = Nothing
    , _ldDescription = Nothing
    }

-- | The label key.
ldKey :: Lens' LabelDescriptor (Maybe Text)
ldKey = lens _ldKey (\ s a -> s{_ldKey = a})

-- | The type of data that can be assigned to the label.
ldValueType :: Lens' LabelDescriptor (Maybe LabelDescriptorValueType)
ldValueType
  = lens _ldValueType (\ s a -> s{_ldValueType = a})

-- | A human-readable description for the label.
ldDescription :: Lens' LabelDescriptor (Maybe Text)
ldDescription
  = lens _ldDescription
      (\ s a -> s{_ldDescription = a})

instance FromJSON LabelDescriptor where
        parseJSON
          = withObject "LabelDescriptor"
              (\ o ->
                 LabelDescriptor' <$>
                   (o .:? "key") <*> (o .:? "valueType") <*>
                     (o .:? "description"))

instance ToJSON LabelDescriptor where
        toJSON LabelDescriptor'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _ldKey,
                  ("valueType" .=) <$> _ldValueType,
                  ("description" .=) <$> _ldDescription])

-- | Specify a sequence of buckets that all have the same width (except
-- overflow and underflow). Each bucket represents a constant absolute
-- uncertainty on the specific value in the bucket.Defines
-- num_finite_buckets + 2 (= N) buckets with these boundaries for bucket
-- i:Upper bound (0 \<= i \< N-1): offset + (width * i). Lower bound (1 \<=
-- i \< N): offset + (width * (i - 1)).
--
-- /See:/ 'linear' smart constructor.
data Linear = Linear'
    { _lOffSet           :: !(Maybe (Textual Double))
    , _lWidth            :: !(Maybe (Textual Double))
    , _lNumFiniteBuckets :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Linear' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lOffSet'
--
-- * 'lWidth'
--
-- * 'lNumFiniteBuckets'
linear
    :: Linear
linear =
    Linear'
    { _lOffSet = Nothing
    , _lWidth = Nothing
    , _lNumFiniteBuckets = Nothing
    }

-- | Lower bound of the first bucket.
lOffSet :: Lens' Linear (Maybe Double)
lOffSet
  = lens _lOffSet (\ s a -> s{_lOffSet = a}) .
      mapping _Coerce

-- | Must be greater than 0.
lWidth :: Lens' Linear (Maybe Double)
lWidth
  = lens _lWidth (\ s a -> s{_lWidth = a}) .
      mapping _Coerce

-- | Must be greater than 0.
lNumFiniteBuckets :: Lens' Linear (Maybe Int32)
lNumFiniteBuckets
  = lens _lNumFiniteBuckets
      (\ s a -> s{_lNumFiniteBuckets = a})
      . mapping _Coerce

instance FromJSON Linear where
        parseJSON
          = withObject "Linear"
              (\ o ->
                 Linear' <$>
                   (o .:? "offset") <*> (o .:? "width") <*>
                     (o .:? "numFiniteBuckets"))

instance ToJSON Linear where
        toJSON Linear'{..}
          = object
              (catMaybes
                 [("offset" .=) <$> _lOffSet,
                  ("width" .=) <$> _lWidth,
                  ("numFiniteBuckets" .=) <$> _lNumFiniteBuckets])

-- | A protocol buffer message type.
--
-- /See:/ 'type'' smart constructor.
data Type = Type'
    { _tSourceContext :: !(Maybe SourceContext)
    , _tOneofs        :: !(Maybe [Text])
    , _tName          :: !(Maybe Text)
    , _tOptions       :: !(Maybe [Option])
    , _tFields        :: !(Maybe [Field])
    , _tSyntax        :: !(Maybe TypeSyntax)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Type' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tSourceContext'
--
-- * 'tOneofs'
--
-- * 'tName'
--
-- * 'tOptions'
--
-- * 'tFields'
--
-- * 'tSyntax'
type'
    :: Type
type' =
    Type'
    { _tSourceContext = Nothing
    , _tOneofs = Nothing
    , _tName = Nothing
    , _tOptions = Nothing
    , _tFields = Nothing
    , _tSyntax = Nothing
    }

-- | The source context.
tSourceContext :: Lens' Type (Maybe SourceContext)
tSourceContext
  = lens _tSourceContext
      (\ s a -> s{_tSourceContext = a})

-- | The list of types appearing in oneof definitions in this type.
tOneofs :: Lens' Type [Text]
tOneofs
  = lens _tOneofs (\ s a -> s{_tOneofs = a}) . _Default
      . _Coerce

-- | The fully qualified message name.
tName :: Lens' Type (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | The protocol buffer options.
tOptions :: Lens' Type [Option]
tOptions
  = lens _tOptions (\ s a -> s{_tOptions = a}) .
      _Default
      . _Coerce

-- | The list of fields.
tFields :: Lens' Type [Field]
tFields
  = lens _tFields (\ s a -> s{_tFields = a}) . _Default
      . _Coerce

-- | The source syntax.
tSyntax :: Lens' Type (Maybe TypeSyntax)
tSyntax = lens _tSyntax (\ s a -> s{_tSyntax = a})

instance FromJSON Type where
        parseJSON
          = withObject "Type"
              (\ o ->
                 Type' <$>
                   (o .:? "sourceContext") <*>
                     (o .:? "oneofs" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "options" .!= mempty)
                     <*> (o .:? "fields" .!= mempty)
                     <*> (o .:? "syntax"))

instance ToJSON Type where
        toJSON Type'{..}
          = object
              (catMaybes
                 [("sourceContext" .=) <$> _tSourceContext,
                  ("oneofs" .=) <$> _tOneofs, ("name" .=) <$> _tName,
                  ("options" .=) <$> _tOptions,
                  ("fields" .=) <$> _tFields,
                  ("syntax" .=) <$> _tSyntax])

-- | A protocol buffer option, which can be attached to a message, field,
-- enumeration, etc.
--
-- /See:/ 'option' smart constructor.
data Option = Option'
    { _oValue :: !(Maybe OptionValue)
    , _oName  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Option' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oValue'
--
-- * 'oName'
option
    :: Option
option =
    Option'
    { _oValue = Nothing
    , _oName = Nothing
    }

-- | The option\'s value. For example, \"com.google.protobuf\".
oValue :: Lens' Option (Maybe OptionValue)
oValue = lens _oValue (\ s a -> s{_oValue = a})

-- | The option\'s name. For example, \"java_package\".
oName :: Lens' Option (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

instance FromJSON Option where
        parseJSON
          = withObject "Option"
              (\ o ->
                 Option' <$> (o .:? "value") <*> (o .:? "name"))

instance ToJSON Option where
        toJSON Option'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _oValue, ("name" .=) <$> _oName])

-- | A Distribution may optionally contain a histogram of the values in the
-- population. The histogram is given in bucket_counts as counts of values
-- that fall into one of a sequence of non-overlapping buckets. The
-- sequence of buckets is described by bucket_options.A bucket specifies an
-- inclusive lower bound and exclusive upper bound for the values that are
-- counted for that bucket. The upper bound of a bucket is strictly greater
-- than the lower bound.The sequence of N buckets for a Distribution
-- consists of an underflow bucket (number 0), zero or more finite buckets
-- (number 1 through N - 2) and an overflow bucket (number N - 1). The
-- buckets are contiguous: the lower bound of bucket i (i > 0) is the same
-- as the upper bound of bucket i - 1. The buckets span the whole range of
-- finite values: lower bound of the underflow bucket is -infinity and the
-- upper bound of the overflow bucket is +infinity. The finite buckets are
-- so-called because both bounds are finite.BucketOptions describes bucket
-- boundaries in one of three ways. Two describe the boundaries by giving
-- parameters for a formula to generate boundaries and one gives the bucket
-- boundaries explicitly.If bucket_options is not given, then no
-- bucket_counts may be given.
--
-- /See:/ 'bucketOptions' smart constructor.
data BucketOptions = BucketOptions'
    { _boExponentialBuckets :: !(Maybe Exponential)
    , _boLinearBuckets      :: !(Maybe Linear)
    , _boExplicitBuckets    :: !(Maybe Explicit)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boExponentialBuckets'
--
-- * 'boLinearBuckets'
--
-- * 'boExplicitBuckets'
bucketOptions
    :: BucketOptions
bucketOptions =
    BucketOptions'
    { _boExponentialBuckets = Nothing
    , _boLinearBuckets = Nothing
    , _boExplicitBuckets = Nothing
    }

-- | The exponential buckets.
boExponentialBuckets :: Lens' BucketOptions (Maybe Exponential)
boExponentialBuckets
  = lens _boExponentialBuckets
      (\ s a -> s{_boExponentialBuckets = a})

-- | The linear bucket.
boLinearBuckets :: Lens' BucketOptions (Maybe Linear)
boLinearBuckets
  = lens _boLinearBuckets
      (\ s a -> s{_boLinearBuckets = a})

-- | The explicit buckets.
boExplicitBuckets :: Lens' BucketOptions (Maybe Explicit)
boExplicitBuckets
  = lens _boExplicitBuckets
      (\ s a -> s{_boExplicitBuckets = a})

instance FromJSON BucketOptions where
        parseJSON
          = withObject "BucketOptions"
              (\ o ->
                 BucketOptions' <$>
                   (o .:? "exponentialBuckets") <*>
                     (o .:? "linearBuckets")
                     <*> (o .:? "explicitBuckets"))

instance ToJSON BucketOptions where
        toJSON BucketOptions'{..}
          = object
              (catMaybes
                 [("exponentialBuckets" .=) <$> _boExponentialBuckets,
                  ("linearBuckets" .=) <$> _boLinearBuckets,
                  ("explicitBuckets" .=) <$> _boExplicitBuckets])

-- | A collection of data points that describes the time-varying values of a
-- metric. A time series is identified by a combination of a
-- fully-specified monitored resource and a fully-specified metric. This
-- type is used for both listing and creating time series.
--
-- /See:/ 'timeSeries' smart constructor.
data TimeSeries = TimeSeries'
    { _tsPoints     :: !(Maybe [Point])
    , _tsMetricKind :: !(Maybe TimeSeriesMetricKind)
    , _tsMetric     :: !(Maybe Metric)
    , _tsResource   :: !(Maybe MonitoredResource)
    , _tsValueType  :: !(Maybe TimeSeriesValueType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsPoints'
--
-- * 'tsMetricKind'
--
-- * 'tsMetric'
--
-- * 'tsResource'
--
-- * 'tsValueType'
timeSeries
    :: TimeSeries
timeSeries =
    TimeSeries'
    { _tsPoints = Nothing
    , _tsMetricKind = Nothing
    , _tsMetric = Nothing
    , _tsResource = Nothing
    , _tsValueType = Nothing
    }

-- | The data points of this time series. When listing time series, the order
-- of the points is specified by the list method.When creating a time
-- series, this field must contain exactly one point and the point\'s type
-- must be the same as the value type of the associated metric. If the
-- associated metric\'s descriptor must be auto-created, then the value
-- type of the descriptor is determined by the point\'s type, which must be
-- BOOL, INT64, DOUBLE, or DISTRIBUTION.
tsPoints :: Lens' TimeSeries [Point]
tsPoints
  = lens _tsPoints (\ s a -> s{_tsPoints = a}) .
      _Default
      . _Coerce

-- | The metric kind of the time series. When listing time series, this
-- metric kind might be different from the metric kind of the associated
-- metric if this time series is an alignment or reduction of other time
-- series.When creating a time series, this field is optional. If present,
-- it must be the same as the metric kind of the associated metric. If the
-- associated metric\'s descriptor must be auto-created, then this field
-- specifies the metric kind of the new descriptor and must be either GAUGE
-- (the default) or CUMULATIVE.
tsMetricKind :: Lens' TimeSeries (Maybe TimeSeriesMetricKind)
tsMetricKind
  = lens _tsMetricKind (\ s a -> s{_tsMetricKind = a})

-- | The associated metric. A fully-specified metric used to identify the
-- time series.
tsMetric :: Lens' TimeSeries (Maybe Metric)
tsMetric = lens _tsMetric (\ s a -> s{_tsMetric = a})

-- | The associated resource. A fully-specified monitored resource used to
-- identify the time series.
tsResource :: Lens' TimeSeries (Maybe MonitoredResource)
tsResource
  = lens _tsResource (\ s a -> s{_tsResource = a})

-- | The value type of the time series. When listing time series, this value
-- type might be different from the value type of the associated metric if
-- this time series is an alignment or reduction of other time series.When
-- creating a time series, this field is optional. If present, it must be
-- the same as the type of the data in the points field.
tsValueType :: Lens' TimeSeries (Maybe TimeSeriesValueType)
tsValueType
  = lens _tsValueType (\ s a -> s{_tsValueType = a})

instance FromJSON TimeSeries where
        parseJSON
          = withObject "TimeSeries"
              (\ o ->
                 TimeSeries' <$>
                   (o .:? "points" .!= mempty) <*> (o .:? "metricKind")
                     <*> (o .:? "metric")
                     <*> (o .:? "resource")
                     <*> (o .:? "valueType"))

instance ToJSON TimeSeries where
        toJSON TimeSeries'{..}
          = object
              (catMaybes
                 [("points" .=) <$> _tsPoints,
                  ("metricKind" .=) <$> _tsMetricKind,
                  ("metric" .=) <$> _tsMetric,
                  ("resource" .=) <$> _tsResource,
                  ("valueType" .=) <$> _tsValueType])
