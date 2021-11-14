{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AnalyticsReporting.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AnalyticsReporting.Types.Product where

import Network.Google.AnalyticsReporting.Types.Sum
import Network.Google.Prelude

-- | MetricFilter specifies the filter on a metric.
--
-- /See:/ 'metricFilter' smart constructor.
data MetricFilter =
  MetricFilter'
    { _mfNot :: !(Maybe Bool)
    , _mfOperator :: !(Maybe MetricFilterOperator)
    , _mfMetricName :: !(Maybe Text)
    , _mfComparisonValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfNot'
--
-- * 'mfOperator'
--
-- * 'mfMetricName'
--
-- * 'mfComparisonValue'
metricFilter
    :: MetricFilter
metricFilter =
  MetricFilter'
    { _mfNot = Nothing
    , _mfOperator = Nothing
    , _mfMetricName = Nothing
    , _mfComparisonValue = Nothing
    }


-- | Logical \`NOT\` operator. If this boolean is set to true, then the
-- matching metric values will be excluded in the report. The default is
-- false.
mfNot :: Lens' MetricFilter (Maybe Bool)
mfNot = lens _mfNot (\ s a -> s{_mfNot = a})

-- | Is the metric \`EQUAL\`, \`LESS_THAN\` or \`GREATER_THAN\` the
-- comparisonValue, the default is \`EQUAL\`. If the operator is
-- \`IS_MISSING\`, checks if the metric is missing and would ignore the
-- comparisonValue.
mfOperator :: Lens' MetricFilter (Maybe MetricFilterOperator)
mfOperator
  = lens _mfOperator (\ s a -> s{_mfOperator = a})

-- | The metric that will be filtered on. A metricFilter must contain a
-- metric name. A metric name can be an alias earlier defined as a metric
-- or it can also be a metric expression.
mfMetricName :: Lens' MetricFilter (Maybe Text)
mfMetricName
  = lens _mfMetricName (\ s a -> s{_mfMetricName = a})

-- | The value to compare against.
mfComparisonValue :: Lens' MetricFilter (Maybe Text)
mfComparisonValue
  = lens _mfComparisonValue
      (\ s a -> s{_mfComparisonValue = a})

instance FromJSON MetricFilter where
        parseJSON
          = withObject "MetricFilter"
              (\ o ->
                 MetricFilter' <$>
                   (o .:? "not") <*> (o .:? "operator") <*>
                     (o .:? "metricName")
                     <*> (o .:? "comparisonValue"))

instance ToJSON MetricFilter where
        toJSON MetricFilter'{..}
          = object
              (catMaybes
                 [("not" .=) <$> _mfNot,
                  ("operator" .=) <$> _mfOperator,
                  ("metricName" .=) <$> _mfMetricName,
                  ("comparisonValue" .=) <$> _mfComparisonValue])

-- | Represents all the details pertaining to an event.
--
-- /See:/ 'eventData' smart constructor.
data EventData =
  EventData'
    { _edEventCategory :: !(Maybe Text)
    , _edEventCount :: !(Maybe (Textual Int64))
    , _edEventValue :: !(Maybe (Textual Int64))
    , _edEventLabel :: !(Maybe Text)
    , _edEventAction :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edEventCategory'
--
-- * 'edEventCount'
--
-- * 'edEventValue'
--
-- * 'edEventLabel'
--
-- * 'edEventAction'
eventData
    :: EventData
eventData =
  EventData'
    { _edEventCategory = Nothing
    , _edEventCount = Nothing
    , _edEventValue = Nothing
    , _edEventLabel = Nothing
    , _edEventAction = Nothing
    }


-- | The object on the page that was interacted with. Eg: \'Video\'.
edEventCategory :: Lens' EventData (Maybe Text)
edEventCategory
  = lens _edEventCategory
      (\ s a -> s{_edEventCategory = a})

-- | Number of such events in this activity.
edEventCount :: Lens' EventData (Maybe Int64)
edEventCount
  = lens _edEventCount (\ s a -> s{_edEventCount = a})
      . mapping _Coerce

-- | Numeric value associated with the event.
edEventValue :: Lens' EventData (Maybe Int64)
edEventValue
  = lens _edEventValue (\ s a -> s{_edEventValue = a})
      . mapping _Coerce

-- | Label attached with the event.
edEventLabel :: Lens' EventData (Maybe Text)
edEventLabel
  = lens _edEventLabel (\ s a -> s{_edEventLabel = a})

-- | Type of interaction with the object. Eg: \'play\'.
edEventAction :: Lens' EventData (Maybe Text)
edEventAction
  = lens _edEventAction
      (\ s a -> s{_edEventAction = a})

instance FromJSON EventData where
        parseJSON
          = withObject "EventData"
              (\ o ->
                 EventData' <$>
                   (o .:? "eventCategory") <*> (o .:? "eventCount") <*>
                     (o .:? "eventValue")
                     <*> (o .:? "eventLabel")
                     <*> (o .:? "eventAction"))

instance ToJSON EventData where
        toJSON EventData'{..}
          = object
              (catMaybes
                 [("eventCategory" .=) <$> _edEventCategory,
                  ("eventCount" .=) <$> _edEventCount,
                  ("eventValue" .=) <$> _edEventValue,
                  ("eventLabel" .=) <$> _edEventLabel,
                  ("eventAction" .=) <$> _edEventAction])

-- | A row in the report.
--
-- /See:/ 'reportRow' smart constructor.
data ReportRow =
  ReportRow'
    { _rrMetrics :: !(Maybe [DateRangeValues])
    , _rrDimensions :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrMetrics'
--
-- * 'rrDimensions'
reportRow
    :: ReportRow
reportRow = ReportRow' {_rrMetrics = Nothing, _rrDimensions = Nothing}


-- | List of metrics for each requested DateRange.
rrMetrics :: Lens' ReportRow [DateRangeValues]
rrMetrics
  = lens _rrMetrics (\ s a -> s{_rrMetrics = a}) .
      _Default
      . _Coerce

-- | List of requested dimensions.
rrDimensions :: Lens' ReportRow [Text]
rrDimensions
  = lens _rrDimensions (\ s a -> s{_rrDimensions = a})
      . _Default
      . _Coerce

instance FromJSON ReportRow where
        parseJSON
          = withObject "ReportRow"
              (\ o ->
                 ReportRow' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "dimensions" .!= mempty))

instance ToJSON ReportRow where
        toJSON ReportRow'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _rrMetrics,
                  ("dimensions" .=) <$> _rrDimensions])

-- | The headers for the each of the metric column corresponding to the
-- metrics requested in the pivots section of the response.
--
-- /See:/ 'pivotHeaderEntry' smart constructor.
data PivotHeaderEntry =
  PivotHeaderEntry'
    { _pheDimensionValues :: !(Maybe [Text])
    , _pheDimensionNames :: !(Maybe [Text])
    , _pheMetric :: !(Maybe MetricHeaderEntry)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotHeaderEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pheDimensionValues'
--
-- * 'pheDimensionNames'
--
-- * 'pheMetric'
pivotHeaderEntry
    :: PivotHeaderEntry
pivotHeaderEntry =
  PivotHeaderEntry'
    { _pheDimensionValues = Nothing
    , _pheDimensionNames = Nothing
    , _pheMetric = Nothing
    }


-- | The values for the dimensions in the pivot.
pheDimensionValues :: Lens' PivotHeaderEntry [Text]
pheDimensionValues
  = lens _pheDimensionValues
      (\ s a -> s{_pheDimensionValues = a})
      . _Default
      . _Coerce

-- | The name of the dimensions in the pivot response.
pheDimensionNames :: Lens' PivotHeaderEntry [Text]
pheDimensionNames
  = lens _pheDimensionNames
      (\ s a -> s{_pheDimensionNames = a})
      . _Default
      . _Coerce

-- | The metric header for the metric in the pivot.
pheMetric :: Lens' PivotHeaderEntry (Maybe MetricHeaderEntry)
pheMetric
  = lens _pheMetric (\ s a -> s{_pheMetric = a})

instance FromJSON PivotHeaderEntry where
        parseJSON
          = withObject "PivotHeaderEntry"
              (\ o ->
                 PivotHeaderEntry' <$>
                   (o .:? "dimensionValues" .!= mempty) <*>
                     (o .:? "dimensionNames" .!= mempty)
                     <*> (o .:? "metric"))

instance ToJSON PivotHeaderEntry where
        toJSON PivotHeaderEntry'{..}
          = object
              (catMaybes
                 [("dimensionValues" .=) <$> _pheDimensionValues,
                  ("dimensionNames" .=) <$> _pheDimensionNames,
                  ("metric" .=) <$> _pheMetric])

-- | The metric values in the pivot region.
--
-- /See:/ 'pivotValueRegion' smart constructor.
newtype PivotValueRegion =
  PivotValueRegion'
    { _pvrValues :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotValueRegion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvrValues'
pivotValueRegion
    :: PivotValueRegion
pivotValueRegion = PivotValueRegion' {_pvrValues = Nothing}


-- | The values of the metrics in each of the pivot regions.
pvrValues :: Lens' PivotValueRegion [Text]
pvrValues
  = lens _pvrValues (\ s a -> s{_pvrValues = a}) .
      _Default
      . _Coerce

instance FromJSON PivotValueRegion where
        parseJSON
          = withObject "PivotValueRegion"
              (\ o ->
                 PivotValueRegion' <$> (o .:? "values" .!= mempty))

instance ToJSON PivotValueRegion where
        toJSON PivotValueRegion'{..}
          = object (catMaybes [("values" .=) <$> _pvrValues])

-- | The main request class which specifies the Reporting API request.
--
-- /See:/ 'reportRequest' smart constructor.
data ReportRequest =
  ReportRequest'
    { _rMetrics :: !(Maybe [Metric])
    , _rPivots :: !(Maybe [Pivot])
    , _rCohortGroup :: !(Maybe CohortGroup)
    , _rSamplingLevel :: !(Maybe ReportRequestSamplingLevel)
    , _rIncludeEmptyRows :: !(Maybe Bool)
    , _rDateRanges :: !(Maybe [DateRange])
    , _rViewId :: !(Maybe Text)
    , _rHideTotals :: !(Maybe Bool)
    , _rHideValueRanges :: !(Maybe Bool)
    , _rMetricFilterClauses :: !(Maybe [MetricFilterClause])
    , _rSegments :: !(Maybe [Segment])
    , _rPageToken :: !(Maybe Text)
    , _rDimensions :: !(Maybe [Dimension])
    , _rDimensionFilterClauses :: !(Maybe [DimensionFilterClause])
    , _rPageSize :: !(Maybe (Textual Int32))
    , _rOrderBys :: !(Maybe [OrderBy])
    , _rFiltersExpression :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMetrics'
--
-- * 'rPivots'
--
-- * 'rCohortGroup'
--
-- * 'rSamplingLevel'
--
-- * 'rIncludeEmptyRows'
--
-- * 'rDateRanges'
--
-- * 'rViewId'
--
-- * 'rHideTotals'
--
-- * 'rHideValueRanges'
--
-- * 'rMetricFilterClauses'
--
-- * 'rSegments'
--
-- * 'rPageToken'
--
-- * 'rDimensions'
--
-- * 'rDimensionFilterClauses'
--
-- * 'rPageSize'
--
-- * 'rOrderBys'
--
-- * 'rFiltersExpression'
reportRequest
    :: ReportRequest
reportRequest =
  ReportRequest'
    { _rMetrics = Nothing
    , _rPivots = Nothing
    , _rCohortGroup = Nothing
    , _rSamplingLevel = Nothing
    , _rIncludeEmptyRows = Nothing
    , _rDateRanges = Nothing
    , _rViewId = Nothing
    , _rHideTotals = Nothing
    , _rHideValueRanges = Nothing
    , _rMetricFilterClauses = Nothing
    , _rSegments = Nothing
    , _rPageToken = Nothing
    , _rDimensions = Nothing
    , _rDimensionFilterClauses = Nothing
    , _rPageSize = Nothing
    , _rOrderBys = Nothing
    , _rFiltersExpression = Nothing
    }


-- | The metrics requested. Requests must specify at least one metric.
-- Requests can have a total of 10 metrics.
rMetrics :: Lens' ReportRequest [Metric]
rMetrics
  = lens _rMetrics (\ s a -> s{_rMetrics = a}) .
      _Default
      . _Coerce

-- | The pivot definitions. Requests can have a maximum of 2 pivots.
rPivots :: Lens' ReportRequest [Pivot]
rPivots
  = lens _rPivots (\ s a -> s{_rPivots = a}) . _Default
      . _Coerce

-- | Cohort group associated with this request. If there is a cohort group in
-- the request the \`ga:cohort\` dimension must be present. Every
-- [ReportRequest](#ReportRequest) within a \`batchGet\` method must
-- contain the same \`cohortGroup\` definition.
rCohortGroup :: Lens' ReportRequest (Maybe CohortGroup)
rCohortGroup
  = lens _rCohortGroup (\ s a -> s{_rCohortGroup = a})

-- | The desired report
-- [sample](https:\/\/support.google.com\/analytics\/answer\/2637192) size.
-- If the the \`samplingLevel\` field is unspecified the \`DEFAULT\`
-- sampling level is used. Every [ReportRequest](#ReportRequest) within a
-- \`batchGet\` method must contain the same \`samplingLevel\` definition.
-- See [developer
-- guide](\/analytics\/devguides\/reporting\/core\/v4\/basics#sampling) for
-- details.
rSamplingLevel :: Lens' ReportRequest (Maybe ReportRequestSamplingLevel)
rSamplingLevel
  = lens _rSamplingLevel
      (\ s a -> s{_rSamplingLevel = a})

-- | If set to false, the response does not include rows if all the retrieved
-- metrics are equal to zero. The default is false which will exclude these
-- rows.
rIncludeEmptyRows :: Lens' ReportRequest (Maybe Bool)
rIncludeEmptyRows
  = lens _rIncludeEmptyRows
      (\ s a -> s{_rIncludeEmptyRows = a})

-- | Date ranges in the request. The request can have a maximum of 2 date
-- ranges. The response will contain a set of metric values for each
-- combination of the dimensions for each date range in the request. So, if
-- there are two date ranges, there will be two set of metric values, one
-- for the original date range and one for the second date range. The
-- \`reportRequest.dateRanges\` field should not be specified for cohorts
-- or Lifetime value requests. If a date range is not provided, the default
-- date range is (startDate: current date - 7 days, endDate: current date -
-- 1 day). Every [ReportRequest](#ReportRequest) within a \`batchGet\`
-- method must contain the same \`dateRanges\` definition.
rDateRanges :: Lens' ReportRequest [DateRange]
rDateRanges
  = lens _rDateRanges (\ s a -> s{_rDateRanges = a}) .
      _Default
      . _Coerce

-- | The Analytics [view
-- ID](https:\/\/support.google.com\/analytics\/answer\/1009618) from which
-- to retrieve data. Every [ReportRequest](#ReportRequest) within a
-- \`batchGet\` method must contain the same \`viewId\`.
rViewId :: Lens' ReportRequest (Maybe Text)
rViewId = lens _rViewId (\ s a -> s{_rViewId = a})

-- | If set to true, hides the total of all metrics for all the matching
-- rows, for every date range. The default false and will return the
-- totals.
rHideTotals :: Lens' ReportRequest (Maybe Bool)
rHideTotals
  = lens _rHideTotals (\ s a -> s{_rHideTotals = a})

-- | If set to true, hides the minimum and maximum across all matching rows.
-- The default is false and the value ranges are returned.
rHideValueRanges :: Lens' ReportRequest (Maybe Bool)
rHideValueRanges
  = lens _rHideValueRanges
      (\ s a -> s{_rHideValueRanges = a})

-- | The metric filter clauses. They are logically combined with the \`AND\`
-- operator. Metric filters look at only the first date range and not the
-- comparing date range. Note that filtering on metrics occurs after the
-- metrics are aggregated.
rMetricFilterClauses :: Lens' ReportRequest [MetricFilterClause]
rMetricFilterClauses
  = lens _rMetricFilterClauses
      (\ s a -> s{_rMetricFilterClauses = a})
      . _Default
      . _Coerce

-- | Segment the data returned for the request. A segment definition helps
-- look at a subset of the segment request. A request can contain up to
-- four segments. Every [ReportRequest](#ReportRequest) within a
-- \`batchGet\` method must contain the same \`segments\` definition.
-- Requests with segments must have the \`ga:segment\` dimension.
rSegments :: Lens' ReportRequest [Segment]
rSegments
  = lens _rSegments (\ s a -> s{_rSegments = a}) .
      _Default
      . _Coerce

-- | A continuation token to get the next page of the results. Adding this to
-- the request will return the rows after the pageToken. The pageToken
-- should be the value returned in the nextPageToken parameter in the
-- response to the GetReports request.
rPageToken :: Lens' ReportRequest (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | The dimensions requested. Requests can have a total of 9 dimensions.
rDimensions :: Lens' ReportRequest [Dimension]
rDimensions
  = lens _rDimensions (\ s a -> s{_rDimensions = a}) .
      _Default
      . _Coerce

-- | The dimension filter clauses for filtering Dimension Values. They are
-- logically combined with the \`AND\` operator. Note that filtering occurs
-- before any dimensions are aggregated, so that the returned metrics
-- represent the total for only the relevant dimensions.
rDimensionFilterClauses :: Lens' ReportRequest [DimensionFilterClause]
rDimensionFilterClauses
  = lens _rDimensionFilterClauses
      (\ s a -> s{_rDimensionFilterClauses = a})
      . _Default
      . _Coerce

-- | Page size is for paging and specifies the maximum number of returned
-- rows. Page size should be >= 0. A query returns the default of 1,000
-- rows. The Analytics Core Reporting API returns a maximum of 100,000 rows
-- per request, no matter how many you ask for. It can also return fewer
-- rows than requested, if there aren\'t as many dimension segments as you
-- expect. For instance, there are fewer than 300 possible values for
-- \`ga:country\`, so when segmenting only by country, you can\'t get more
-- than 300 rows, even if you set \`pageSize\` to a higher value.
rPageSize :: Lens' ReportRequest (Maybe Int32)
rPageSize
  = lens _rPageSize (\ s a -> s{_rPageSize = a}) .
      mapping _Coerce

-- | Sort order on output rows. To compare two rows, the elements of the
-- following are applied in order until a difference is found. All date
-- ranges in the output get the same row order.
rOrderBys :: Lens' ReportRequest [OrderBy]
rOrderBys
  = lens _rOrderBys (\ s a -> s{_rOrderBys = a}) .
      _Default
      . _Coerce

-- | Dimension or metric filters that restrict the data returned for your
-- request. To use the \`filtersExpression\`, supply a dimension or metric
-- on which to filter, followed by the filter expression. For example, the
-- following expression selects \`ga:browser\` dimension which starts with
-- Firefox; \`ga:browser=~^Firefox\`. For more information on dimensions
-- and metric filters, see [Filters
-- reference](https:\/\/developers.google.com\/analytics\/devguides\/reporting\/core\/v3\/reference#filters).
rFiltersExpression :: Lens' ReportRequest (Maybe Text)
rFiltersExpression
  = lens _rFiltersExpression
      (\ s a -> s{_rFiltersExpression = a})

instance FromJSON ReportRequest where
        parseJSON
          = withObject "ReportRequest"
              (\ o ->
                 ReportRequest' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "pivots" .!= mempty)
                     <*> (o .:? "cohortGroup")
                     <*> (o .:? "samplingLevel")
                     <*> (o .:? "includeEmptyRows")
                     <*> (o .:? "dateRanges" .!= mempty)
                     <*> (o .:? "viewId")
                     <*> (o .:? "hideTotals")
                     <*> (o .:? "hideValueRanges")
                     <*> (o .:? "metricFilterClauses" .!= mempty)
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "pageToken")
                     <*> (o .:? "dimensions" .!= mempty)
                     <*> (o .:? "dimensionFilterClauses" .!= mempty)
                     <*> (o .:? "pageSize")
                     <*> (o .:? "orderBys" .!= mempty)
                     <*> (o .:? "filtersExpression"))

instance ToJSON ReportRequest where
        toJSON ReportRequest'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _rMetrics,
                  ("pivots" .=) <$> _rPivots,
                  ("cohortGroup" .=) <$> _rCohortGroup,
                  ("samplingLevel" .=) <$> _rSamplingLevel,
                  ("includeEmptyRows" .=) <$> _rIncludeEmptyRows,
                  ("dateRanges" .=) <$> _rDateRanges,
                  ("viewId" .=) <$> _rViewId,
                  ("hideTotals" .=) <$> _rHideTotals,
                  ("hideValueRanges" .=) <$> _rHideValueRanges,
                  ("metricFilterClauses" .=) <$> _rMetricFilterClauses,
                  ("segments" .=) <$> _rSegments,
                  ("pageToken" .=) <$> _rPageToken,
                  ("dimensions" .=) <$> _rDimensions,
                  ("dimensionFilterClauses" .=) <$>
                    _rDimensionFilterClauses,
                  ("pageSize" .=) <$> _rPageSize,
                  ("orderBys" .=) <$> _rOrderBys,
                  ("filtersExpression" .=) <$> _rFiltersExpression])

-- | Header for the metrics.
--
-- /See:/ 'metricHeaderEntry' smart constructor.
data MetricHeaderEntry =
  MetricHeaderEntry'
    { _mheName :: !(Maybe Text)
    , _mheType :: !(Maybe MetricHeaderEntryType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricHeaderEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mheName'
--
-- * 'mheType'
metricHeaderEntry
    :: MetricHeaderEntry
metricHeaderEntry = MetricHeaderEntry' {_mheName = Nothing, _mheType = Nothing}


-- | The name of the header.
mheName :: Lens' MetricHeaderEntry (Maybe Text)
mheName = lens _mheName (\ s a -> s{_mheName = a})

-- | The type of the metric, for example \`INTEGER\`.
mheType :: Lens' MetricHeaderEntry (Maybe MetricHeaderEntryType)
mheType = lens _mheType (\ s a -> s{_mheType = a})

instance FromJSON MetricHeaderEntry where
        parseJSON
          = withObject "MetricHeaderEntry"
              (\ o ->
                 MetricHeaderEntry' <$>
                   (o .:? "name") <*> (o .:? "type"))

instance ToJSON MetricHeaderEntry where
        toJSON MetricHeaderEntry'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _mheName, ("type" .=) <$> _mheType])

-- | Represents a set of goals that were reached in an activity.
--
-- /See:/ 'goalSetData' smart constructor.
newtype GoalSetData =
  GoalSetData'
    { _gsdGoals :: Maybe [GoalData]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoalSetData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdGoals'
goalSetData
    :: GoalSetData
goalSetData = GoalSetData' {_gsdGoals = Nothing}


-- | All the goals that were reached in the current activity.
gsdGoals :: Lens' GoalSetData [GoalData]
gsdGoals
  = lens _gsdGoals (\ s a -> s{_gsdGoals = a}) .
      _Default
      . _Coerce

instance FromJSON GoalSetData where
        parseJSON
          = withObject "GoalSetData"
              (\ o -> GoalSetData' <$> (o .:? "goals" .!= mempty))

instance ToJSON GoalSetData where
        toJSON GoalSetData'{..}
          = object (catMaybes [("goals" .=) <$> _gsdGoals])

-- | Defines a cohort group. For example: \"cohortGroup\": { \"cohorts\": [{
-- \"name\": \"cohort 1\", \"type\": \"FIRST_VISIT_DATE\", \"dateRange\": {
-- \"startDate\": \"2015-08-01\", \"endDate\": \"2015-08-01\" } },{
-- \"name\": \"cohort 2\" \"type\": \"FIRST_VISIT_DATE\" \"dateRange\": {
-- \"startDate\": \"2015-07-01\", \"endDate\": \"2015-07-01\" } }] }
--
-- /See:/ 'cohortGroup' smart constructor.
data CohortGroup =
  CohortGroup'
    { _cgCohorts :: !(Maybe [Cohort])
    , _cgLifetimeValue :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CohortGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgCohorts'
--
-- * 'cgLifetimeValue'
cohortGroup
    :: CohortGroup
cohortGroup = CohortGroup' {_cgCohorts = Nothing, _cgLifetimeValue = Nothing}


-- | The definition for the cohort.
cgCohorts :: Lens' CohortGroup [Cohort]
cgCohorts
  = lens _cgCohorts (\ s a -> s{_cgCohorts = a}) .
      _Default
      . _Coerce

-- | Enable Life Time Value (LTV). LTV measures lifetime value for users
-- acquired through different channels. Please see: [Cohort
-- Analysis](https:\/\/support.google.com\/analytics\/answer\/6074676) and
-- [Lifetime
-- Value](https:\/\/support.google.com\/analytics\/answer\/6182550) If the
-- value of lifetimeValue is false: - The metric values are similar to the
-- values in the web interface cohort report. - The cohort definition date
-- ranges must be aligned to the calendar week and month. i.e. while
-- requesting \`ga:cohortNthWeek\` the \`startDate\` in the cohort
-- definition should be a Sunday and the \`endDate\` should be the
-- following Saturday, and for \`ga:cohortNthMonth\`, the \`startDate\`
-- should be the 1st of the month and \`endDate\` should be the last day of
-- the month. When the lifetimeValue is true: - The metric values will
-- correspond to the values in the web interface LifeTime value report. -
-- The Lifetime Value report shows you how user value (Revenue) and
-- engagement (Appviews, Goal Completions, Sessions, and Session Duration)
-- grow during the 90 days after a user is acquired. - The metrics are
-- calculated as a cumulative average per user per the time increment. -
-- The cohort definition date ranges need not be aligned to the calendar
-- week and month boundaries. - The \`viewId\` must be an [app view
-- ID](https:\/\/support.google.com\/analytics\/answer\/2649553#WebVersusAppViews)
cgLifetimeValue :: Lens' CohortGroup (Maybe Bool)
cgLifetimeValue
  = lens _cgLifetimeValue
      (\ s a -> s{_cgLifetimeValue = a})

instance FromJSON CohortGroup where
        parseJSON
          = withObject "CohortGroup"
              (\ o ->
                 CohortGroup' <$>
                   (o .:? "cohorts" .!= mempty) <*>
                     (o .:? "lifetimeValue"))

instance ToJSON CohortGroup where
        toJSON CohortGroup'{..}
          = object
              (catMaybes
                 [("cohorts" .=) <$> _cgCohorts,
                  ("lifetimeValue" .=) <$> _cgLifetimeValue])

-- | A Simple segment conditions consist of one or more dimension\/metric
-- conditions that can be combined.
--
-- /See:/ 'simpleSegment' smart constructor.
newtype SimpleSegment =
  SimpleSegment'
    { _ssOrFiltersForSegment :: Maybe [OrFiltersForSegment]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SimpleSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssOrFiltersForSegment'
simpleSegment
    :: SimpleSegment
simpleSegment = SimpleSegment' {_ssOrFiltersForSegment = Nothing}


-- | A list of segment filters groups which are combined with logical \`AND\`
-- operator.
ssOrFiltersForSegment :: Lens' SimpleSegment [OrFiltersForSegment]
ssOrFiltersForSegment
  = lens _ssOrFiltersForSegment
      (\ s a -> s{_ssOrFiltersForSegment = a})
      . _Default
      . _Coerce

instance FromJSON SimpleSegment where
        parseJSON
          = withObject "SimpleSegment"
              (\ o ->
                 SimpleSegment' <$>
                   (o .:? "orFiltersForSegment" .!= mempty))

instance ToJSON SimpleSegment where
        toJSON SimpleSegment'{..}
          = object
              (catMaybes
                 [("orFiltersForSegment" .=) <$>
                    _ssOrFiltersForSegment])

-- | A group of dimension filters. Set the operator value to specify how the
-- filters are logically combined.
--
-- /See:/ 'dimensionFilterClause' smart constructor.
data DimensionFilterClause =
  DimensionFilterClause'
    { _dfcOperator :: !(Maybe DimensionFilterClauseOperator)
    , _dfcFilters :: !(Maybe [DimensionFilter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DimensionFilterClause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfcOperator'
--
-- * 'dfcFilters'
dimensionFilterClause
    :: DimensionFilterClause
dimensionFilterClause =
  DimensionFilterClause' {_dfcOperator = Nothing, _dfcFilters = Nothing}


-- | The operator for combining multiple dimension filters. If unspecified,
-- it is treated as an \`OR\`.
dfcOperator :: Lens' DimensionFilterClause (Maybe DimensionFilterClauseOperator)
dfcOperator
  = lens _dfcOperator (\ s a -> s{_dfcOperator = a})

-- | The repeated set of filters. They are logically combined based on the
-- operator specified.
dfcFilters :: Lens' DimensionFilterClause [DimensionFilter]
dfcFilters
  = lens _dfcFilters (\ s a -> s{_dfcFilters = a}) .
      _Default
      . _Coerce

instance FromJSON DimensionFilterClause where
        parseJSON
          = withObject "DimensionFilterClause"
              (\ o ->
                 DimensionFilterClause' <$>
                   (o .:? "operator") <*> (o .:? "filters" .!= mempty))

instance ToJSON DimensionFilterClause where
        toJSON DimensionFilterClause'{..}
          = object
              (catMaybes
                 [("operator" .=) <$> _dfcOperator,
                  ("filters" .=) <$> _dfcFilters])

-- | Specifies the sorting options.
--
-- /See:/ 'orderBy' smart constructor.
data OrderBy =
  OrderBy'
    { _obOrderType :: !(Maybe OrderByOrderType)
    , _obSortOrder :: !(Maybe OrderBySortOrder)
    , _obFieldName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderBy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'obOrderType'
--
-- * 'obSortOrder'
--
-- * 'obFieldName'
orderBy
    :: OrderBy
orderBy =
  OrderBy'
    {_obOrderType = Nothing, _obSortOrder = Nothing, _obFieldName = Nothing}


-- | The order type. The default orderType is \`VALUE\`.
obOrderType :: Lens' OrderBy (Maybe OrderByOrderType)
obOrderType
  = lens _obOrderType (\ s a -> s{_obOrderType = a})

-- | The sorting order for the field.
obSortOrder :: Lens' OrderBy (Maybe OrderBySortOrder)
obSortOrder
  = lens _obSortOrder (\ s a -> s{_obSortOrder = a})

-- | The field which to sort by. The default sort order is ascending.
-- Example: \`ga:browser\`. Note, that you can only specify one field for
-- sort here. For example, \`ga:browser, ga:city\` is not valid.
obFieldName :: Lens' OrderBy (Maybe Text)
obFieldName
  = lens _obFieldName (\ s a -> s{_obFieldName = a})

instance FromJSON OrderBy where
        parseJSON
          = withObject "OrderBy"
              (\ o ->
                 OrderBy' <$>
                   (o .:? "orderType") <*> (o .:? "sortOrder") <*>
                     (o .:? "fieldName"))

instance ToJSON OrderBy where
        toJSON OrderBy'{..}
          = object
              (catMaybes
                 [("orderType" .=) <$> _obOrderType,
                  ("sortOrder" .=) <$> _obSortOrder,
                  ("fieldName" .=) <$> _obFieldName])

-- | [Dimensions](https:\/\/support.google.com\/analytics\/answer\/1033861)
-- are attributes of your data. For example, the dimension \`ga:city\`
-- indicates the city, for example, \"Paris\" or \"New York\", from which a
-- session originates.
--
-- /See:/ 'dimension' smart constructor.
data Dimension =
  Dimension'
    { _dName :: !(Maybe Text)
    , _dHistogramBuckets :: !(Maybe [Textual Int64])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dName'
--
-- * 'dHistogramBuckets'
dimension
    :: Dimension
dimension = Dimension' {_dName = Nothing, _dHistogramBuckets = Nothing}


-- | Name of the dimension to fetch, for example \`ga:browser\`.
dName :: Lens' Dimension (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | If non-empty, we place dimension values into buckets after string to
-- int64. Dimension values that are not the string representation of an
-- integral value will be converted to zero. The bucket values have to be
-- in increasing order. Each bucket is closed on the lower end, and open on
-- the upper end. The \"first\" bucket includes all values less than the
-- first boundary, the \"last\" bucket includes all values up to infinity.
-- Dimension values that fall in a bucket get transformed to a new
-- dimension value. For example, if one gives a list of \"0, 1, 3, 4, 7\",
-- then we return the following buckets: - bucket #1: values \< 0,
-- dimension value \"\<0\" - bucket #2: values in [0,1), dimension value
-- \"0\" - bucket #3: values in [1,3), dimension value \"1-2\" - bucket #4:
-- values in [3,4), dimension value \"3\" - bucket #5: values in [4,7),
-- dimension value \"4-6\" - bucket #6: values >= 7, dimension value \"7+\"
-- NOTE: If you are applying histogram mutation on any dimension, and using
-- that dimension in sort, you will want to use the sort type
-- \`HISTOGRAM_BUCKET\` for that purpose. Without that the dimension values
-- will be sorted according to dictionary (lexicographic) order. For
-- example the ascending dictionary order is: \"\<50\", \"1001+\",
-- \"121-1000\", \"50-120\" And the ascending \`HISTOGRAM_BUCKET\` order
-- is: \"\<50\", \"50-120\", \"121-1000\", \"1001+\" The client has to
-- explicitly request \`\"orderType\": \"HISTOGRAM_BUCKET\"\` for a
-- histogram-mutated dimension.
dHistogramBuckets :: Lens' Dimension [Int64]
dHistogramBuckets
  = lens _dHistogramBuckets
      (\ s a -> s{_dHistogramBuckets = a})
      . _Default
      . _Coerce

instance FromJSON Dimension where
        parseJSON
          = withObject "Dimension"
              (\ o ->
                 Dimension' <$>
                   (o .:? "name") <*>
                     (o .:? "histogramBuckets" .!= mempty))

instance ToJSON Dimension where
        toJSON Dimension'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _dName,
                  ("histogramBuckets" .=) <$> _dHistogramBuckets])

-- | Used to return a list of metrics for a single DateRange \/ dimension
-- combination
--
-- /See:/ 'dateRangeValues' smart constructor.
data DateRangeValues =
  DateRangeValues'
    { _drvPivotValueRegions :: !(Maybe [PivotValueRegion])
    , _drvValues :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DateRangeValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drvPivotValueRegions'
--
-- * 'drvValues'
dateRangeValues
    :: DateRangeValues
dateRangeValues =
  DateRangeValues' {_drvPivotValueRegions = Nothing, _drvValues = Nothing}


-- | The values of each pivot region.
drvPivotValueRegions :: Lens' DateRangeValues [PivotValueRegion]
drvPivotValueRegions
  = lens _drvPivotValueRegions
      (\ s a -> s{_drvPivotValueRegions = a})
      . _Default
      . _Coerce

-- | Each value corresponds to each Metric in the request.
drvValues :: Lens' DateRangeValues [Text]
drvValues
  = lens _drvValues (\ s a -> s{_drvValues = a}) .
      _Default
      . _Coerce

instance FromJSON DateRangeValues where
        parseJSON
          = withObject "DateRangeValues"
              (\ o ->
                 DateRangeValues' <$>
                   (o .:? "pivotValueRegions" .!= mempty) <*>
                     (o .:? "values" .!= mempty))

instance ToJSON DateRangeValues where
        toJSON DateRangeValues'{..}
          = object
              (catMaybes
                 [("pivotValueRegions" .=) <$> _drvPivotValueRegions,
                  ("values" .=) <$> _drvValues])

-- | The headers for each of the pivot sections defined in the request.
--
-- /See:/ 'pivotHeader' smart constructor.
data PivotHeader =
  PivotHeader'
    { _phTotalPivotGroupsCount :: !(Maybe (Textual Int32))
    , _phPivotHeaderEntries :: !(Maybe [PivotHeaderEntry])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phTotalPivotGroupsCount'
--
-- * 'phPivotHeaderEntries'
pivotHeader
    :: PivotHeader
pivotHeader =
  PivotHeader'
    {_phTotalPivotGroupsCount = Nothing, _phPivotHeaderEntries = Nothing}


-- | The total number of groups for this pivot.
phTotalPivotGroupsCount :: Lens' PivotHeader (Maybe Int32)
phTotalPivotGroupsCount
  = lens _phTotalPivotGroupsCount
      (\ s a -> s{_phTotalPivotGroupsCount = a})
      . mapping _Coerce

-- | A single pivot section header.
phPivotHeaderEntries :: Lens' PivotHeader [PivotHeaderEntry]
phPivotHeaderEntries
  = lens _phPivotHeaderEntries
      (\ s a -> s{_phPivotHeaderEntries = a})
      . _Default
      . _Coerce

instance FromJSON PivotHeader where
        parseJSON
          = withObject "PivotHeader"
              (\ o ->
                 PivotHeader' <$>
                   (o .:? "totalPivotGroupsCount") <*>
                     (o .:? "pivotHeaderEntries" .!= mempty))

instance ToJSON PivotHeader where
        toJSON PivotHeader'{..}
          = object
              (catMaybes
                 [("totalPivotGroupsCount" .=) <$>
                    _phTotalPivotGroupsCount,
                  ("pivotHeaderEntries" .=) <$> _phPivotHeaderEntries])

-- | The request to fetch User Report from Reporting API \`userActivity:get\`
-- call.
--
-- /See:/ 'searchUserActivityRequest' smart constructor.
data SearchUserActivityRequest =
  SearchUserActivityRequest'
    { _suarViewId :: !(Maybe Text)
    , _suarDateRange :: !(Maybe DateRange)
    , _suarUser :: !(Maybe User)
    , _suarPageToken :: !(Maybe Text)
    , _suarPageSize :: !(Maybe (Textual Int32))
    , _suarActivityTypes :: !(Maybe [SearchUserActivityRequestActivityTypesItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchUserActivityRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suarViewId'
--
-- * 'suarDateRange'
--
-- * 'suarUser'
--
-- * 'suarPageToken'
--
-- * 'suarPageSize'
--
-- * 'suarActivityTypes'
searchUserActivityRequest
    :: SearchUserActivityRequest
searchUserActivityRequest =
  SearchUserActivityRequest'
    { _suarViewId = Nothing
    , _suarDateRange = Nothing
    , _suarUser = Nothing
    , _suarPageToken = Nothing
    , _suarPageSize = Nothing
    , _suarActivityTypes = Nothing
    }


-- | Required. The Analytics [view
-- ID](https:\/\/support.google.com\/analytics\/answer\/1009618) from which
-- to retrieve data. Every
-- [SearchUserActivityRequest](#SearchUserActivityRequest) must contain the
-- \`viewId\`.
suarViewId :: Lens' SearchUserActivityRequest (Maybe Text)
suarViewId
  = lens _suarViewId (\ s a -> s{_suarViewId = a})

-- | Date range for which to retrieve the user activity. If a date range is
-- not provided, the default date range is (startDate: current date - 7
-- days, endDate: current date - 1 day).
suarDateRange :: Lens' SearchUserActivityRequest (Maybe DateRange)
suarDateRange
  = lens _suarDateRange
      (\ s a -> s{_suarDateRange = a})

-- | Required. Unique user Id to query for. Every
-- [SearchUserActivityRequest](#SearchUserActivityRequest) must contain
-- this field.
suarUser :: Lens' SearchUserActivityRequest (Maybe User)
suarUser = lens _suarUser (\ s a -> s{_suarUser = a})

-- | A continuation token to get the next page of the results. Adding this to
-- the request will return the rows after the pageToken. The pageToken
-- should be the value returned in the nextPageToken parameter in the
-- response to the [SearchUserActivityRequest](#SearchUserActivityRequest)
-- request.
suarPageToken :: Lens' SearchUserActivityRequest (Maybe Text)
suarPageToken
  = lens _suarPageToken
      (\ s a -> s{_suarPageToken = a})

-- | Page size is for paging and specifies the maximum number of returned
-- rows. Page size should be > 0. If the value is 0 or if the field isn\'t
-- specified, the request returns the default of 1000 rows per page.
suarPageSize :: Lens' SearchUserActivityRequest (Maybe Int32)
suarPageSize
  = lens _suarPageSize (\ s a -> s{_suarPageSize = a})
      . mapping _Coerce

-- | Set of all activity types being requested. Only acvities matching these
-- types will be returned in the response. If empty, all activies will be
-- returned.
suarActivityTypes :: Lens' SearchUserActivityRequest [SearchUserActivityRequestActivityTypesItem]
suarActivityTypes
  = lens _suarActivityTypes
      (\ s a -> s{_suarActivityTypes = a})
      . _Default
      . _Coerce

instance FromJSON SearchUserActivityRequest where
        parseJSON
          = withObject "SearchUserActivityRequest"
              (\ o ->
                 SearchUserActivityRequest' <$>
                   (o .:? "viewId") <*> (o .:? "dateRange") <*>
                     (o .:? "user")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize")
                     <*> (o .:? "activityTypes" .!= mempty))

instance ToJSON SearchUserActivityRequest where
        toJSON SearchUserActivityRequest'{..}
          = object
              (catMaybes
                 [("viewId" .=) <$> _suarViewId,
                  ("dateRange" .=) <$> _suarDateRange,
                  ("user" .=) <$> _suarUser,
                  ("pageToken" .=) <$> _suarPageToken,
                  ("pageSize" .=) <$> _suarPageSize,
                  ("activityTypes" .=) <$> _suarActivityTypes])

-- | The headers for the metrics.
--
-- /See:/ 'metricHeader' smart constructor.
data MetricHeader =
  MetricHeader'
    { _mhPivotHeaders :: !(Maybe [PivotHeader])
    , _mhMetricHeaderEntries :: !(Maybe [MetricHeaderEntry])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhPivotHeaders'
--
-- * 'mhMetricHeaderEntries'
metricHeader
    :: MetricHeader
metricHeader =
  MetricHeader' {_mhPivotHeaders = Nothing, _mhMetricHeaderEntries = Nothing}


-- | Headers for the pivots in the response.
mhPivotHeaders :: Lens' MetricHeader [PivotHeader]
mhPivotHeaders
  = lens _mhPivotHeaders
      (\ s a -> s{_mhPivotHeaders = a})
      . _Default
      . _Coerce

-- | Headers for the metrics in the response.
mhMetricHeaderEntries :: Lens' MetricHeader [MetricHeaderEntry]
mhMetricHeaderEntries
  = lens _mhMetricHeaderEntries
      (\ s a -> s{_mhMetricHeaderEntries = a})
      . _Default
      . _Coerce

instance FromJSON MetricHeader where
        parseJSON
          = withObject "MetricHeader"
              (\ o ->
                 MetricHeader' <$>
                   (o .:? "pivotHeaders" .!= mempty) <*>
                     (o .:? "metricHeaderEntries" .!= mempty))

instance ToJSON MetricHeader where
        toJSON MetricHeader'{..}
          = object
              (catMaybes
                 [("pivotHeaders" .=) <$> _mhPivotHeaders,
                  ("metricHeaderEntries" .=) <$>
                    _mhMetricHeaderEntries])

-- | SegmentFilter defines the segment to be either a simple or a sequence
-- segment. A simple segment condition contains dimension and metric
-- conditions to select the sessions or users. A sequence segment condition
-- can be used to select users or sessions based on sequential conditions.
--
-- /See:/ 'segmentFilter' smart constructor.
data SegmentFilter =
  SegmentFilter'
    { _sfNot :: !(Maybe Bool)
    , _sfSimpleSegment :: !(Maybe SimpleSegment)
    , _sfSequenceSegment :: !(Maybe SequenceSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SegmentFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfNot'
--
-- * 'sfSimpleSegment'
--
-- * 'sfSequenceSegment'
segmentFilter
    :: SegmentFilter
segmentFilter =
  SegmentFilter'
    {_sfNot = Nothing, _sfSimpleSegment = Nothing, _sfSequenceSegment = Nothing}


-- | If true, match the complement of simple or sequence segment. For
-- example, to match all visits not from \"New York\", we can define the
-- segment as follows: \"sessionSegment\": { \"segmentFilters\": [{
-- \"simpleSegment\" :{ \"orFiltersForSegment\": [{
-- \"segmentFilterClauses\":[{ \"dimensionFilter\": { \"dimensionName\":
-- \"ga:city\", \"expressions\": [\"New York\"] } }] }] }, \"not\":
-- \"True\" }] },
sfNot :: Lens' SegmentFilter (Maybe Bool)
sfNot = lens _sfNot (\ s a -> s{_sfNot = a})

-- | A Simple segment conditions consist of one or more dimension\/metric
-- conditions that can be combined
sfSimpleSegment :: Lens' SegmentFilter (Maybe SimpleSegment)
sfSimpleSegment
  = lens _sfSimpleSegment
      (\ s a -> s{_sfSimpleSegment = a})

-- | Sequence conditions consist of one or more steps, where each step is
-- defined by one or more dimension\/metric conditions. Multiple steps can
-- be combined with special sequence operators.
sfSequenceSegment :: Lens' SegmentFilter (Maybe SequenceSegment)
sfSequenceSegment
  = lens _sfSequenceSegment
      (\ s a -> s{_sfSequenceSegment = a})

instance FromJSON SegmentFilter where
        parseJSON
          = withObject "SegmentFilter"
              (\ o ->
                 SegmentFilter' <$>
                   (o .:? "not") <*> (o .:? "simpleSegment") <*>
                     (o .:? "sequenceSegment"))

instance ToJSON SegmentFilter where
        toJSON SegmentFilter'{..}
          = object
              (catMaybes
                 [("not" .=) <$> _sfNot,
                  ("simpleSegment" .=) <$> _sfSimpleSegment,
                  ("sequenceSegment" .=) <$> _sfSequenceSegment])

-- | A contiguous set of days: startDate, startDate + 1 day, ..., endDate.
-- The start and end dates are specified in
-- [ISO8601](https:\/\/en.wikipedia.org\/wiki\/ISO_8601) date format
-- \`YYYY-MM-DD\`.
--
-- /See:/ 'dateRange' smart constructor.
data DateRange =
  DateRange'
    { _drEndDate :: !(Maybe Text)
    , _drStartDate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DateRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drEndDate'
--
-- * 'drStartDate'
dateRange
    :: DateRange
dateRange = DateRange' {_drEndDate = Nothing, _drStartDate = Nothing}


-- | The end date for the query in the format \`YYYY-MM-DD\`.
drEndDate :: Lens' DateRange (Maybe Text)
drEndDate
  = lens _drEndDate (\ s a -> s{_drEndDate = a})

-- | The start date for the query in the format \`YYYY-MM-DD\`.
drStartDate :: Lens' DateRange (Maybe Text)
drStartDate
  = lens _drStartDate (\ s a -> s{_drStartDate = a})

instance FromJSON DateRange where
        parseJSON
          = withObject "DateRange"
              (\ o ->
                 DateRange' <$>
                   (o .:? "endDate") <*> (o .:? "startDate"))

instance ToJSON DateRange where
        toJSON DateRange'{..}
          = object
              (catMaybes
                 [("endDate" .=) <$> _drEndDate,
                  ("startDate" .=) <$> _drStartDate])

-- | The data response corresponding to the request.
--
-- /See:/ 'report' smart constructor.
data Report =
  Report'
    { _rNextPageToken :: !(Maybe Text)
    , _rData :: !(Maybe ReportData)
    , _rColumnHeader :: !(Maybe ColumnHeader)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Report' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rNextPageToken'
--
-- * 'rData'
--
-- * 'rColumnHeader'
report
    :: Report
report =
  Report'
    {_rNextPageToken = Nothing, _rData = Nothing, _rColumnHeader = Nothing}


-- | Page token to retrieve the next page of results in the list.
rNextPageToken :: Lens' Report (Maybe Text)
rNextPageToken
  = lens _rNextPageToken
      (\ s a -> s{_rNextPageToken = a})

-- | Response data.
rData :: Lens' Report (Maybe ReportData)
rData = lens _rData (\ s a -> s{_rData = a})

-- | The column headers.
rColumnHeader :: Lens' Report (Maybe ColumnHeader)
rColumnHeader
  = lens _rColumnHeader
      (\ s a -> s{_rColumnHeader = a})

instance FromJSON Report where
        parseJSON
          = withObject "Report"
              (\ o ->
                 Report' <$>
                   (o .:? "nextPageToken") <*> (o .:? "data") <*>
                     (o .:? "columnHeader"))

instance ToJSON Report where
        toJSON Report'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rNextPageToken,
                  ("data" .=) <$> _rData,
                  ("columnHeader" .=) <$> _rColumnHeader])

-- | Represents details collected when the visitor views a page.
--
-- /See:/ 'pageviewData' smart constructor.
data PageviewData =
  PageviewData'
    { _pdPageTitle :: !(Maybe Text)
    , _pdPagePath :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PageviewData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdPageTitle'
--
-- * 'pdPagePath'
pageviewData
    :: PageviewData
pageviewData = PageviewData' {_pdPageTitle = Nothing, _pdPagePath = Nothing}


-- | The title of the page that the visitor viewed.
pdPageTitle :: Lens' PageviewData (Maybe Text)
pdPageTitle
  = lens _pdPageTitle (\ s a -> s{_pdPageTitle = a})

-- | The URL of the page that the visitor viewed.
pdPagePath :: Lens' PageviewData (Maybe Text)
pdPagePath
  = lens _pdPagePath (\ s a -> s{_pdPagePath = a})

instance FromJSON PageviewData where
        parseJSON
          = withObject "PageviewData"
              (\ o ->
                 PageviewData' <$>
                   (o .:? "pageTitle") <*> (o .:? "pagePath"))

instance ToJSON PageviewData where
        toJSON PageviewData'{..}
          = object
              (catMaybes
                 [("pageTitle" .=) <$> _pdPageTitle,
                  ("pagePath" .=) <$> _pdPagePath])

-- | The data part of the report.
--
-- /See:/ 'reportData' smart constructor.
data ReportData =
  ReportData'
    { _rdMinimums :: !(Maybe [DateRangeValues])
    , _rdRows :: !(Maybe [ReportRow])
    , _rdTotals :: !(Maybe [DateRangeValues])
    , _rdSamplesReadCounts :: !(Maybe [Textual Int64])
    , _rdMaximums :: !(Maybe [DateRangeValues])
    , _rdDataLastRefreshed :: !(Maybe DateTime')
    , _rdRowCount :: !(Maybe (Textual Int32))
    , _rdSamplingSpaceSizes :: !(Maybe [Textual Int64])
    , _rdIsDataGolden :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdMinimums'
--
-- * 'rdRows'
--
-- * 'rdTotals'
--
-- * 'rdSamplesReadCounts'
--
-- * 'rdMaximums'
--
-- * 'rdDataLastRefreshed'
--
-- * 'rdRowCount'
--
-- * 'rdSamplingSpaceSizes'
--
-- * 'rdIsDataGolden'
reportData
    :: ReportData
reportData =
  ReportData'
    { _rdMinimums = Nothing
    , _rdRows = Nothing
    , _rdTotals = Nothing
    , _rdSamplesReadCounts = Nothing
    , _rdMaximums = Nothing
    , _rdDataLastRefreshed = Nothing
    , _rdRowCount = Nothing
    , _rdSamplingSpaceSizes = Nothing
    , _rdIsDataGolden = Nothing
    }


-- | Minimum and maximum values seen over all matching rows. These are both
-- empty when \`hideValueRanges\` in the request is false, or when rowCount
-- is zero.
rdMinimums :: Lens' ReportData [DateRangeValues]
rdMinimums
  = lens _rdMinimums (\ s a -> s{_rdMinimums = a}) .
      _Default
      . _Coerce

-- | There\'s one ReportRow for every unique combination of dimensions.
rdRows :: Lens' ReportData [ReportRow]
rdRows
  = lens _rdRows (\ s a -> s{_rdRows = a}) . _Default .
      _Coerce

-- | For each requested date range, for the set of all rows that match the
-- query, every requested value format gets a total. The total for a value
-- format is computed by first totaling the metrics mentioned in the value
-- format and then evaluating the value format as a scalar expression.
-- E.g., The \"totals\" for \`3 \/ (ga:sessions + 2)\` we compute \`3 \/
-- ((sum of all relevant ga:sessions) + 2)\`. Totals are computed before
-- pagination.
rdTotals :: Lens' ReportData [DateRangeValues]
rdTotals
  = lens _rdTotals (\ s a -> s{_rdTotals = a}) .
      _Default
      . _Coerce

-- | If the results are
-- [sampled](https:\/\/support.google.com\/analytics\/answer\/2637192),
-- this returns the total number of samples read, one entry per date range.
-- If the results are not sampled this field will not be defined. See
-- [developer
-- guide](\/analytics\/devguides\/reporting\/core\/v4\/basics#sampling) for
-- details.
rdSamplesReadCounts :: Lens' ReportData [Int64]
rdSamplesReadCounts
  = lens _rdSamplesReadCounts
      (\ s a -> s{_rdSamplesReadCounts = a})
      . _Default
      . _Coerce

-- | Minimum and maximum values seen over all matching rows. These are both
-- empty when \`hideValueRanges\` in the request is false, or when rowCount
-- is zero.
rdMaximums :: Lens' ReportData [DateRangeValues]
rdMaximums
  = lens _rdMaximums (\ s a -> s{_rdMaximums = a}) .
      _Default
      . _Coerce

-- | The last time the data in the report was refreshed. All the hits
-- received before this timestamp are included in the calculation of the
-- report.
rdDataLastRefreshed :: Lens' ReportData (Maybe UTCTime)
rdDataLastRefreshed
  = lens _rdDataLastRefreshed
      (\ s a -> s{_rdDataLastRefreshed = a})
      . mapping _DateTime

-- | Total number of matching rows for this query.
rdRowCount :: Lens' ReportData (Maybe Int32)
rdRowCount
  = lens _rdRowCount (\ s a -> s{_rdRowCount = a}) .
      mapping _Coerce

-- | If the results are
-- [sampled](https:\/\/support.google.com\/analytics\/answer\/2637192),
-- this returns the total number of samples present, one entry per date
-- range. If the results are not sampled this field will not be defined.
-- See [developer
-- guide](\/analytics\/devguides\/reporting\/core\/v4\/basics#sampling) for
-- details.
rdSamplingSpaceSizes :: Lens' ReportData [Int64]
rdSamplingSpaceSizes
  = lens _rdSamplingSpaceSizes
      (\ s a -> s{_rdSamplingSpaceSizes = a})
      . _Default
      . _Coerce

-- | Indicates if response to this request is golden or not. Data is golden
-- when the exact same request will not produce any new results if asked at
-- a later point in time.
rdIsDataGolden :: Lens' ReportData (Maybe Bool)
rdIsDataGolden
  = lens _rdIsDataGolden
      (\ s a -> s{_rdIsDataGolden = a})

instance FromJSON ReportData where
        parseJSON
          = withObject "ReportData"
              (\ o ->
                 ReportData' <$>
                   (o .:? "minimums" .!= mempty) <*>
                     (o .:? "rows" .!= mempty)
                     <*> (o .:? "totals" .!= mempty)
                     <*> (o .:? "samplesReadCounts" .!= mempty)
                     <*> (o .:? "maximums" .!= mempty)
                     <*> (o .:? "dataLastRefreshed")
                     <*> (o .:? "rowCount")
                     <*> (o .:? "samplingSpaceSizes" .!= mempty)
                     <*> (o .:? "isDataGolden"))

instance ToJSON ReportData where
        toJSON ReportData'{..}
          = object
              (catMaybes
                 [("minimums" .=) <$> _rdMinimums,
                  ("rows" .=) <$> _rdRows, ("totals" .=) <$> _rdTotals,
                  ("samplesReadCounts" .=) <$> _rdSamplesReadCounts,
                  ("maximums" .=) <$> _rdMaximums,
                  ("dataLastRefreshed" .=) <$> _rdDataLastRefreshed,
                  ("rowCount" .=) <$> _rdRowCount,
                  ("samplingSpaceSizes" .=) <$> _rdSamplingSpaceSizes,
                  ("isDataGolden" .=) <$> _rdIsDataGolden])

-- | Filter Clause to be used in a segment definition, can be wither a metric
-- or a dimension filter.
--
-- /See:/ 'segmentFilterClause' smart constructor.
data SegmentFilterClause =
  SegmentFilterClause'
    { _sfcMetricFilter :: !(Maybe SegmentMetricFilter)
    , _sfcNot :: !(Maybe Bool)
    , _sfcDimensionFilter :: !(Maybe SegmentDimensionFilter)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SegmentFilterClause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfcMetricFilter'
--
-- * 'sfcNot'
--
-- * 'sfcDimensionFilter'
segmentFilterClause
    :: SegmentFilterClause
segmentFilterClause =
  SegmentFilterClause'
    { _sfcMetricFilter = Nothing
    , _sfcNot = Nothing
    , _sfcDimensionFilter = Nothing
    }


-- | Metric Filter for the segment definition.
sfcMetricFilter :: Lens' SegmentFilterClause (Maybe SegmentMetricFilter)
sfcMetricFilter
  = lens _sfcMetricFilter
      (\ s a -> s{_sfcMetricFilter = a})

-- | Matches the complement (\`!\`) of the filter.
sfcNot :: Lens' SegmentFilterClause (Maybe Bool)
sfcNot = lens _sfcNot (\ s a -> s{_sfcNot = a})

-- | Dimension Filter for the segment definition.
sfcDimensionFilter :: Lens' SegmentFilterClause (Maybe SegmentDimensionFilter)
sfcDimensionFilter
  = lens _sfcDimensionFilter
      (\ s a -> s{_sfcDimensionFilter = a})

instance FromJSON SegmentFilterClause where
        parseJSON
          = withObject "SegmentFilterClause"
              (\ o ->
                 SegmentFilterClause' <$>
                   (o .:? "metricFilter") <*> (o .:? "not") <*>
                     (o .:? "dimensionFilter"))

instance ToJSON SegmentFilterClause where
        toJSON SegmentFilterClause'{..}
          = object
              (catMaybes
                 [("metricFilter" .=) <$> _sfcMetricFilter,
                  ("not" .=) <$> _sfcNot,
                  ("dimensionFilter" .=) <$> _sfcDimensionFilter])

-- | A segment sequence definition.
--
-- /See:/ 'segmentSequenceStep' smart constructor.
data SegmentSequenceStep =
  SegmentSequenceStep'
    { _sssMatchType :: !(Maybe SegmentSequenceStepMatchType)
    , _sssOrFiltersForSegment :: !(Maybe [OrFiltersForSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SegmentSequenceStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssMatchType'
--
-- * 'sssOrFiltersForSegment'
segmentSequenceStep
    :: SegmentSequenceStep
segmentSequenceStep =
  SegmentSequenceStep'
    {_sssMatchType = Nothing, _sssOrFiltersForSegment = Nothing}


-- | Specifies if the step immediately precedes or can be any time before the
-- next step.
sssMatchType :: Lens' SegmentSequenceStep (Maybe SegmentSequenceStepMatchType)
sssMatchType
  = lens _sssMatchType (\ s a -> s{_sssMatchType = a})

-- | A sequence is specified with a list of Or grouped filters which are
-- combined with \`AND\` operator.
sssOrFiltersForSegment :: Lens' SegmentSequenceStep [OrFiltersForSegment]
sssOrFiltersForSegment
  = lens _sssOrFiltersForSegment
      (\ s a -> s{_sssOrFiltersForSegment = a})
      . _Default
      . _Coerce

instance FromJSON SegmentSequenceStep where
        parseJSON
          = withObject "SegmentSequenceStep"
              (\ o ->
                 SegmentSequenceStep' <$>
                   (o .:? "matchType") <*>
                     (o .:? "orFiltersForSegment" .!= mempty))

instance ToJSON SegmentSequenceStep where
        toJSON SegmentSequenceStep'{..}
          = object
              (catMaybes
                 [("matchType" .=) <$> _sssMatchType,
                  ("orFiltersForSegment" .=) <$>
                    _sssOrFiltersForSegment])

-- | A list of segment filters in the \`OR\` group are combined with the
-- logical OR operator.
--
-- /See:/ 'orFiltersForSegment' smart constructor.
newtype OrFiltersForSegment =
  OrFiltersForSegment'
    { _offsSegmentFilterClauses :: Maybe [SegmentFilterClause]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrFiltersForSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'offsSegmentFilterClauses'
orFiltersForSegment
    :: OrFiltersForSegment
orFiltersForSegment = OrFiltersForSegment' {_offsSegmentFilterClauses = Nothing}


-- | List of segment filters to be combined with a \`OR\` operator.
offsSegmentFilterClauses :: Lens' OrFiltersForSegment [SegmentFilterClause]
offsSegmentFilterClauses
  = lens _offsSegmentFilterClauses
      (\ s a -> s{_offsSegmentFilterClauses = a})
      . _Default
      . _Coerce

instance FromJSON OrFiltersForSegment where
        parseJSON
          = withObject "OrFiltersForSegment"
              (\ o ->
                 OrFiltersForSegment' <$>
                   (o .:? "segmentFilterClauses" .!= mempty))

instance ToJSON OrFiltersForSegment where
        toJSON OrFiltersForSegment'{..}
          = object
              (catMaybes
                 [("segmentFilterClauses" .=) <$>
                    _offsSegmentFilterClauses])

-- | SegmentDefinition defines the segment to be a set of SegmentFilters
-- which are combined together with a logical \`AND\` operation.
--
-- /See:/ 'segmentDefinition' smart constructor.
newtype SegmentDefinition =
  SegmentDefinition'
    { _sdSegmentFilters :: Maybe [SegmentFilter]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SegmentDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdSegmentFilters'
segmentDefinition
    :: SegmentDefinition
segmentDefinition = SegmentDefinition' {_sdSegmentFilters = Nothing}


-- | A segment is defined by a set of segment filters which are combined
-- together with a logical \`AND\` operation.
sdSegmentFilters :: Lens' SegmentDefinition [SegmentFilter]
sdSegmentFilters
  = lens _sdSegmentFilters
      (\ s a -> s{_sdSegmentFilters = a})
      . _Default
      . _Coerce

instance FromJSON SegmentDefinition where
        parseJSON
          = withObject "SegmentDefinition"
              (\ o ->
                 SegmentDefinition' <$>
                   (o .:? "segmentFilters" .!= mempty))

instance ToJSON SegmentDefinition where
        toJSON SegmentDefinition'{..}
          = object
              (catMaybes
                 [("segmentFilters" .=) <$> _sdSegmentFilters])

-- | Contains information to identify a particular user uniquely.
--
-- /See:/ 'user' smart constructor.
data User =
  User'
    { _uUserId :: !(Maybe Text)
    , _uType :: !(Maybe UserType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uUserId'
--
-- * 'uType'
user
    :: User
user = User' {_uUserId = Nothing, _uType = Nothing}


-- | Unique Id of the user for which the data is being requested.
uUserId :: Lens' User (Maybe Text)
uUserId = lens _uUserId (\ s a -> s{_uUserId = a})

-- | Type of the user in the request. The field \`userId\` is associated with
-- this type.
uType :: Lens' User (Maybe UserType)
uType = lens _uType (\ s a -> s{_uType = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User' <$> (o .:? "userId") <*> (o .:? "type"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("userId" .=) <$> _uUserId, ("type" .=) <$> _uType])

-- | The Pivot describes the pivot section in the request. The Pivot helps
-- rearrange the information in the table for certain reports by pivoting
-- your data on a second dimension.
--
-- /See:/ 'pivot' smart constructor.
data Pivot =
  Pivot'
    { _pStartGroup :: !(Maybe (Textual Int32))
    , _pMetrics :: !(Maybe [Metric])
    , _pMaxGroupCount :: !(Maybe (Textual Int32))
    , _pDimensions :: !(Maybe [Dimension])
    , _pDimensionFilterClauses :: !(Maybe [DimensionFilterClause])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Pivot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pStartGroup'
--
-- * 'pMetrics'
--
-- * 'pMaxGroupCount'
--
-- * 'pDimensions'
--
-- * 'pDimensionFilterClauses'
pivot
    :: Pivot
pivot =
  Pivot'
    { _pStartGroup = Nothing
    , _pMetrics = Nothing
    , _pMaxGroupCount = Nothing
    , _pDimensions = Nothing
    , _pDimensionFilterClauses = Nothing
    }


-- | If k metrics were requested, then the response will contain some
-- data-dependent multiple of k columns in the report. E.g., if you pivoted
-- on the dimension \`ga:browser\` then you\'d get k columns for
-- \"Firefox\", k columns for \"IE\", k columns for \"Chrome\", etc. The
-- ordering of the groups of columns is determined by descending order of
-- \"total\" for the first of the k values. Ties are broken by
-- lexicographic ordering of the first pivot dimension, then lexicographic
-- ordering of the second pivot dimension, and so on. E.g., if the totals
-- for the first value for Firefox, IE, and Chrome were 8, 2, 8,
-- respectively, the order of columns would be Chrome, Firefox, IE. The
-- following let you choose which of the groups of k columns are included
-- in the response.
pStartGroup :: Lens' Pivot (Maybe Int32)
pStartGroup
  = lens _pStartGroup (\ s a -> s{_pStartGroup = a}) .
      mapping _Coerce

-- | The pivot metrics. Pivot metrics are part of the restriction on total
-- number of metrics allowed in the request.
pMetrics :: Lens' Pivot [Metric]
pMetrics
  = lens _pMetrics (\ s a -> s{_pMetrics = a}) .
      _Default
      . _Coerce

-- | Specifies the maximum number of groups to return. The default value is
-- 10, also the maximum value is 1,000.
pMaxGroupCount :: Lens' Pivot (Maybe Int32)
pMaxGroupCount
  = lens _pMaxGroupCount
      (\ s a -> s{_pMaxGroupCount = a})
      . mapping _Coerce

-- | A list of dimensions to show as pivot columns. A Pivot can have a
-- maximum of 4 dimensions. Pivot dimensions are part of the restriction on
-- the total number of dimensions allowed in the request.
pDimensions :: Lens' Pivot [Dimension]
pDimensions
  = lens _pDimensions (\ s a -> s{_pDimensions = a}) .
      _Default
      . _Coerce

-- | DimensionFilterClauses are logically combined with an \`AND\` operator:
-- only data that is included by all these DimensionFilterClauses
-- contributes to the values in this pivot region. Dimension filters can be
-- used to restrict the columns shown in the pivot region. For example if
-- you have \`ga:browser\` as the requested dimension in the pivot region,
-- and you specify key filters to restrict \`ga:browser\` to only \"IE\" or
-- \"Firefox\", then only those two browsers would show up as columns.
pDimensionFilterClauses :: Lens' Pivot [DimensionFilterClause]
pDimensionFilterClauses
  = lens _pDimensionFilterClauses
      (\ s a -> s{_pDimensionFilterClauses = a})
      . _Default
      . _Coerce

instance FromJSON Pivot where
        parseJSON
          = withObject "Pivot"
              (\ o ->
                 Pivot' <$>
                   (o .:? "startGroup") <*> (o .:? "metrics" .!= mempty)
                     <*> (o .:? "maxGroupCount")
                     <*> (o .:? "dimensions" .!= mempty)
                     <*> (o .:? "dimensionFilterClauses" .!= mempty))

instance ToJSON Pivot where
        toJSON Pivot'{..}
          = object
              (catMaybes
                 [("startGroup" .=) <$> _pStartGroup,
                  ("metrics" .=) <$> _pMetrics,
                  ("maxGroupCount" .=) <$> _pMaxGroupCount,
                  ("dimensions" .=) <$> _pDimensions,
                  ("dimensionFilterClauses" .=) <$>
                    _pDimensionFilterClauses])

-- | Represents details collected when the visitor performs a transaction on
-- the page.
--
-- /See:/ 'transactionData' smart constructor.
data TransactionData =
  TransactionData'
    { _tdTransactionId :: !(Maybe Text)
    , _tdTransactionTax :: !(Maybe (Textual Double))
    , _tdTransactionShipping :: !(Maybe (Textual Double))
    , _tdTransactionRevenue :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransactionData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdTransactionId'
--
-- * 'tdTransactionTax'
--
-- * 'tdTransactionShipping'
--
-- * 'tdTransactionRevenue'
transactionData
    :: TransactionData
transactionData =
  TransactionData'
    { _tdTransactionId = Nothing
    , _tdTransactionTax = Nothing
    , _tdTransactionShipping = Nothing
    , _tdTransactionRevenue = Nothing
    }


-- | The transaction ID, supplied by the e-commerce tracking method, for the
-- purchase in the shopping cart.
tdTransactionId :: Lens' TransactionData (Maybe Text)
tdTransactionId
  = lens _tdTransactionId
      (\ s a -> s{_tdTransactionId = a})

-- | Total tax for the transaction.
tdTransactionTax :: Lens' TransactionData (Maybe Double)
tdTransactionTax
  = lens _tdTransactionTax
      (\ s a -> s{_tdTransactionTax = a})
      . mapping _Coerce

-- | Total cost of shipping.
tdTransactionShipping :: Lens' TransactionData (Maybe Double)
tdTransactionShipping
  = lens _tdTransactionShipping
      (\ s a -> s{_tdTransactionShipping = a})
      . mapping _Coerce

-- | The total sale revenue (excluding shipping and tax) of the transaction.
tdTransactionRevenue :: Lens' TransactionData (Maybe Double)
tdTransactionRevenue
  = lens _tdTransactionRevenue
      (\ s a -> s{_tdTransactionRevenue = a})
      . mapping _Coerce

instance FromJSON TransactionData where
        parseJSON
          = withObject "TransactionData"
              (\ o ->
                 TransactionData' <$>
                   (o .:? "transactionId") <*> (o .:? "transactionTax")
                     <*> (o .:? "transactionShipping")
                     <*> (o .:? "transactionRevenue"))

instance ToJSON TransactionData where
        toJSON TransactionData'{..}
          = object
              (catMaybes
                 [("transactionId" .=) <$> _tdTransactionId,
                  ("transactionTax" .=) <$> _tdTransactionTax,
                  ("transactionShipping" .=) <$>
                    _tdTransactionShipping,
                  ("transactionRevenue" .=) <$> _tdTransactionRevenue])

-- | Sequence conditions consist of one or more steps, where each step is
-- defined by one or more dimension\/metric conditions. Multiple steps can
-- be combined with special sequence operators.
--
-- /See:/ 'sequenceSegment' smart constructor.
data SequenceSegment =
  SequenceSegment'
    { _ssFirstStepShouldMatchFirstHit :: !(Maybe Bool)
    , _ssSegmentSequenceSteps :: !(Maybe [SegmentSequenceStep])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SequenceSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssFirstStepShouldMatchFirstHit'
--
-- * 'ssSegmentSequenceSteps'
sequenceSegment
    :: SequenceSegment
sequenceSegment =
  SequenceSegment'
    { _ssFirstStepShouldMatchFirstHit = Nothing
    , _ssSegmentSequenceSteps = Nothing
    }


-- | If set, first step condition must match the first hit of the visitor (in
-- the date range).
ssFirstStepShouldMatchFirstHit :: Lens' SequenceSegment (Maybe Bool)
ssFirstStepShouldMatchFirstHit
  = lens _ssFirstStepShouldMatchFirstHit
      (\ s a -> s{_ssFirstStepShouldMatchFirstHit = a})

-- | The list of steps in the sequence.
ssSegmentSequenceSteps :: Lens' SequenceSegment [SegmentSequenceStep]
ssSegmentSequenceSteps
  = lens _ssSegmentSequenceSteps
      (\ s a -> s{_ssSegmentSequenceSteps = a})
      . _Default
      . _Coerce

instance FromJSON SequenceSegment where
        parseJSON
          = withObject "SequenceSegment"
              (\ o ->
                 SequenceSegment' <$>
                   (o .:? "firstStepShouldMatchFirstHit") <*>
                     (o .:? "segmentSequenceSteps" .!= mempty))

instance ToJSON SequenceSegment where
        toJSON SequenceSegment'{..}
          = object
              (catMaybes
                 [("firstStepShouldMatchFirstHit" .=) <$>
                    _ssFirstStepShouldMatchFirstHit,
                  ("segmentSequenceSteps" .=) <$>
                    _ssSegmentSequenceSteps])

-- | [Metrics](https:\/\/support.google.com\/analytics\/answer\/1033861) are
-- the quantitative measurements. For example, the metric \`ga:users\`
-- indicates the total number of users for the requested time period.
--
-- /See:/ 'metric' smart constructor.
data Metric =
  Metric'
    { _mFormattingType :: !(Maybe MetricFormattingType)
    , _mAlias :: !(Maybe Text)
    , _mExpression :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mFormattingType'
--
-- * 'mAlias'
--
-- * 'mExpression'
metric
    :: Metric
metric =
  Metric'
    {_mFormattingType = Nothing, _mAlias = Nothing, _mExpression = Nothing}


-- | Specifies how the metric expression should be formatted, for example
-- \`INTEGER\`.
mFormattingType :: Lens' Metric (Maybe MetricFormattingType)
mFormattingType
  = lens _mFormattingType
      (\ s a -> s{_mFormattingType = a})

-- | An alias for the metric expression is an alternate name for the
-- expression. The alias can be used for filtering and sorting. This field
-- is optional and is useful if the expression is not a single metric but a
-- complex expression which cannot be used in filtering and sorting. The
-- alias is also used in the response column header.
mAlias :: Lens' Metric (Maybe Text)
mAlias = lens _mAlias (\ s a -> s{_mAlias = a})

-- | A metric expression in the request. An expression is constructed from
-- one or more metrics and numbers. Accepted operators include: Plus (+),
-- Minus (-), Negation (Unary -), Divided by (\/), Multiplied by (*),
-- Parenthesis, Positive cardinal numbers (0-9), can include decimals and
-- is limited to 1024 characters. Example \`ga:totalRefunds\/ga:users\`, in
-- most cases the metric expression is just a single metric name like
-- \`ga:users\`. Adding mixed \`MetricType\` (E.g., \`CURRENCY\` +
-- \`PERCENTAGE\`) metrics will result in unexpected results.
mExpression :: Lens' Metric (Maybe Text)
mExpression
  = lens _mExpression (\ s a -> s{_mExpression = a})

instance FromJSON Metric where
        parseJSON
          = withObject "Metric"
              (\ o ->
                 Metric' <$>
                   (o .:? "formattingType") <*> (o .:? "alias") <*>
                     (o .:? "expression"))

instance ToJSON Metric where
        toJSON Metric'{..}
          = object
              (catMaybes
                 [("formattingType" .=) <$> _mFormattingType,
                  ("alias" .=) <$> _mAlias,
                  ("expression" .=) <$> _mExpression])

-- | Metric filter to be used in a segment filter clause.
--
-- /See:/ 'segmentMetricFilter' smart constructor.
data SegmentMetricFilter =
  SegmentMetricFilter'
    { _smfOperator :: !(Maybe SegmentMetricFilterOperator)
    , _smfMetricName :: !(Maybe Text)
    , _smfMaxComparisonValue :: !(Maybe Text)
    , _smfScope :: !(Maybe SegmentMetricFilterScope)
    , _smfComparisonValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SegmentMetricFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smfOperator'
--
-- * 'smfMetricName'
--
-- * 'smfMaxComparisonValue'
--
-- * 'smfScope'
--
-- * 'smfComparisonValue'
segmentMetricFilter
    :: SegmentMetricFilter
segmentMetricFilter =
  SegmentMetricFilter'
    { _smfOperator = Nothing
    , _smfMetricName = Nothing
    , _smfMaxComparisonValue = Nothing
    , _smfScope = Nothing
    , _smfComparisonValue = Nothing
    }


-- | Specifies is the operation to perform to compare the metric. The default
-- is \`EQUAL\`.
smfOperator :: Lens' SegmentMetricFilter (Maybe SegmentMetricFilterOperator)
smfOperator
  = lens _smfOperator (\ s a -> s{_smfOperator = a})

-- | The metric that will be filtered on. A \`metricFilter\` must contain a
-- metric name.
smfMetricName :: Lens' SegmentMetricFilter (Maybe Text)
smfMetricName
  = lens _smfMetricName
      (\ s a -> s{_smfMetricName = a})

-- | Max comparison value is only used for \`BETWEEN\` operator.
smfMaxComparisonValue :: Lens' SegmentMetricFilter (Maybe Text)
smfMaxComparisonValue
  = lens _smfMaxComparisonValue
      (\ s a -> s{_smfMaxComparisonValue = a})

-- | Scope for a metric defines the level at which that metric is defined.
-- The specified metric scope must be equal to or greater than its primary
-- scope as defined in the data model. The primary scope is defined by if
-- the segment is selecting users or sessions.
smfScope :: Lens' SegmentMetricFilter (Maybe SegmentMetricFilterScope)
smfScope = lens _smfScope (\ s a -> s{_smfScope = a})

-- | The value to compare against. If the operator is \`BETWEEN\`, this value
-- is treated as minimum comparison value.
smfComparisonValue :: Lens' SegmentMetricFilter (Maybe Text)
smfComparisonValue
  = lens _smfComparisonValue
      (\ s a -> s{_smfComparisonValue = a})

instance FromJSON SegmentMetricFilter where
        parseJSON
          = withObject "SegmentMetricFilter"
              (\ o ->
                 SegmentMetricFilter' <$>
                   (o .:? "operator") <*> (o .:? "metricName") <*>
                     (o .:? "maxComparisonValue")
                     <*> (o .:? "scope")
                     <*> (o .:? "comparisonValue"))

instance ToJSON SegmentMetricFilter where
        toJSON SegmentMetricFilter'{..}
          = object
              (catMaybes
                 [("operator" .=) <$> _smfOperator,
                  ("metricName" .=) <$> _smfMetricName,
                  ("maxComparisonValue" .=) <$> _smfMaxComparisonValue,
                  ("scope" .=) <$> _smfScope,
                  ("comparisonValue" .=) <$> _smfComparisonValue])

-- | The batch request containing multiple report request.
--
-- /See:/ 'getReportsRequest' smart constructor.
data GetReportsRequest =
  GetReportsRequest'
    { _grrUseResourceQuotas :: !(Maybe Bool)
    , _grrReportRequests :: !(Maybe [ReportRequest])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetReportsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrUseResourceQuotas'
--
-- * 'grrReportRequests'
getReportsRequest
    :: GetReportsRequest
getReportsRequest =
  GetReportsRequest'
    {_grrUseResourceQuotas = Nothing, _grrReportRequests = Nothing}


-- | Enables [resource based
-- quotas](\/analytics\/devguides\/reporting\/core\/v4\/limits-quotas#analytics_reporting_api_v4),
-- (defaults to \`False\`). If this field is set to \`True\` the per view
-- (profile) quotas are governed by the computational cost of the request.
-- Note that using cost based quotas will higher enable sampling rates. (10
-- Million for \`SMALL\`, 100M for \`LARGE\`. See the [limits and quotas
-- documentation](\/analytics\/devguides\/reporting\/core\/v4\/limits-quotas#analytics_reporting_api_v4)
-- for details.
grrUseResourceQuotas :: Lens' GetReportsRequest (Maybe Bool)
grrUseResourceQuotas
  = lens _grrUseResourceQuotas
      (\ s a -> s{_grrUseResourceQuotas = a})

-- | Requests, each request will have a separate response. There can be a
-- maximum of 5 requests. All requests should have the same \`dateRanges\`,
-- \`viewId\`, \`segments\`, \`samplingLevel\`, and \`cohortGroup\`.
grrReportRequests :: Lens' GetReportsRequest [ReportRequest]
grrReportRequests
  = lens _grrReportRequests
      (\ s a -> s{_grrReportRequests = a})
      . _Default
      . _Coerce

instance FromJSON GetReportsRequest where
        parseJSON
          = withObject "GetReportsRequest"
              (\ o ->
                 GetReportsRequest' <$>
                   (o .:? "useResourceQuotas") <*>
                     (o .:? "reportRequests" .!= mempty))

instance ToJSON GetReportsRequest where
        toJSON GetReportsRequest'{..}
          = object
              (catMaybes
                 [("useResourceQuotas" .=) <$> _grrUseResourceQuotas,
                  ("reportRequests" .=) <$> _grrReportRequests])

-- | This represents a user session performed on a specific device at a
-- certain time over a period of time.
--
-- /See:/ 'userActivitySession' smart constructor.
data UserActivitySession =
  UserActivitySession'
    { _uasPlatform :: !(Maybe Text)
    , _uasDeviceCategory :: !(Maybe Text)
    , _uasActivities :: !(Maybe [Activity])
    , _uasSessionDate :: !(Maybe Text)
    , _uasDataSource :: !(Maybe Text)
    , _uasSessionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserActivitySession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uasPlatform'
--
-- * 'uasDeviceCategory'
--
-- * 'uasActivities'
--
-- * 'uasSessionDate'
--
-- * 'uasDataSource'
--
-- * 'uasSessionId'
userActivitySession
    :: UserActivitySession
userActivitySession =
  UserActivitySession'
    { _uasPlatform = Nothing
    , _uasDeviceCategory = Nothing
    , _uasActivities = Nothing
    , _uasSessionDate = Nothing
    , _uasDataSource = Nothing
    , _uasSessionId = Nothing
    }


-- | Platform on which the activity happened: \"android\", \"ios\" etc.
uasPlatform :: Lens' UserActivitySession (Maybe Text)
uasPlatform
  = lens _uasPlatform (\ s a -> s{_uasPlatform = a})

-- | The type of device used: \"mobile\", \"tablet\" etc.
uasDeviceCategory :: Lens' UserActivitySession (Maybe Text)
uasDeviceCategory
  = lens _uasDeviceCategory
      (\ s a -> s{_uasDeviceCategory = a})

-- | Represents a detailed view into each of the activity in this session.
uasActivities :: Lens' UserActivitySession [Activity]
uasActivities
  = lens _uasActivities
      (\ s a -> s{_uasActivities = a})
      . _Default
      . _Coerce

-- | Date of this session in ISO-8601 format.
uasSessionDate :: Lens' UserActivitySession (Maybe Text)
uasSessionDate
  = lens _uasSessionDate
      (\ s a -> s{_uasSessionDate = a})

-- | The data source of a hit. By default, hits sent from analytics.js are
-- reported as \"web\" and hits sent from the mobile SDKs are reported as
-- \"app\". These values can be overridden in the Measurement Protocol.
uasDataSource :: Lens' UserActivitySession (Maybe Text)
uasDataSource
  = lens _uasDataSource
      (\ s a -> s{_uasDataSource = a})

-- | Unique ID of the session.
uasSessionId :: Lens' UserActivitySession (Maybe Text)
uasSessionId
  = lens _uasSessionId (\ s a -> s{_uasSessionId = a})

instance FromJSON UserActivitySession where
        parseJSON
          = withObject "UserActivitySession"
              (\ o ->
                 UserActivitySession' <$>
                   (o .:? "platform") <*> (o .:? "deviceCategory") <*>
                     (o .:? "activities" .!= mempty)
                     <*> (o .:? "sessionDate")
                     <*> (o .:? "dataSource")
                     <*> (o .:? "sessionId"))

instance ToJSON UserActivitySession where
        toJSON UserActivitySession'{..}
          = object
              (catMaybes
                 [("platform" .=) <$> _uasPlatform,
                  ("deviceCategory" .=) <$> _uasDeviceCategory,
                  ("activities" .=) <$> _uasActivities,
                  ("sessionDate" .=) <$> _uasSessionDate,
                  ("dataSource" .=) <$> _uasDataSource,
                  ("sessionId" .=) <$> _uasSessionId])

-- | Represents all the details pertaining to a goal.
--
-- /See:/ 'goalData' smart constructor.
data GoalData =
  GoalData'
    { _gdGoalPreviousStep2 :: !(Maybe Text)
    , _gdGoalName :: !(Maybe Text)
    , _gdGoalPreviousStep3 :: !(Maybe Text)
    , _gdGoalIndex :: !(Maybe (Textual Int32))
    , _gdGoalCompletionLocation :: !(Maybe Text)
    , _gdGoalPreviousStep1 :: !(Maybe Text)
    , _gdGoalCompletions :: !(Maybe (Textual Int64))
    , _gdGoalValue :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoalData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdGoalPreviousStep2'
--
-- * 'gdGoalName'
--
-- * 'gdGoalPreviousStep3'
--
-- * 'gdGoalIndex'
--
-- * 'gdGoalCompletionLocation'
--
-- * 'gdGoalPreviousStep1'
--
-- * 'gdGoalCompletions'
--
-- * 'gdGoalValue'
goalData
    :: GoalData
goalData =
  GoalData'
    { _gdGoalPreviousStep2 = Nothing
    , _gdGoalName = Nothing
    , _gdGoalPreviousStep3 = Nothing
    , _gdGoalIndex = Nothing
    , _gdGoalCompletionLocation = Nothing
    , _gdGoalPreviousStep1 = Nothing
    , _gdGoalCompletions = Nothing
    , _gdGoalValue = Nothing
    }


-- | URL of the page two steps prior to the goal completion.
gdGoalPreviousStep2 :: Lens' GoalData (Maybe Text)
gdGoalPreviousStep2
  = lens _gdGoalPreviousStep2
      (\ s a -> s{_gdGoalPreviousStep2 = a})

-- | Name of the goal.
gdGoalName :: Lens' GoalData (Maybe Text)
gdGoalName
  = lens _gdGoalName (\ s a -> s{_gdGoalName = a})

-- | URL of the page three steps prior to the goal completion.
gdGoalPreviousStep3 :: Lens' GoalData (Maybe Text)
gdGoalPreviousStep3
  = lens _gdGoalPreviousStep3
      (\ s a -> s{_gdGoalPreviousStep3 = a})

-- | This identifies the goal as configured for the profile.
gdGoalIndex :: Lens' GoalData (Maybe Int32)
gdGoalIndex
  = lens _gdGoalIndex (\ s a -> s{_gdGoalIndex = a}) .
      mapping _Coerce

-- | URL of the page where this goal was completed.
gdGoalCompletionLocation :: Lens' GoalData (Maybe Text)
gdGoalCompletionLocation
  = lens _gdGoalCompletionLocation
      (\ s a -> s{_gdGoalCompletionLocation = a})

-- | URL of the page one step prior to the goal completion.
gdGoalPreviousStep1 :: Lens' GoalData (Maybe Text)
gdGoalPreviousStep1
  = lens _gdGoalPreviousStep1
      (\ s a -> s{_gdGoalPreviousStep1 = a})

-- | Total number of goal completions in this activity.
gdGoalCompletions :: Lens' GoalData (Maybe Int64)
gdGoalCompletions
  = lens _gdGoalCompletions
      (\ s a -> s{_gdGoalCompletions = a})
      . mapping _Coerce

-- | Value in this goal.
gdGoalValue :: Lens' GoalData (Maybe Double)
gdGoalValue
  = lens _gdGoalValue (\ s a -> s{_gdGoalValue = a}) .
      mapping _Coerce

instance FromJSON GoalData where
        parseJSON
          = withObject "GoalData"
              (\ o ->
                 GoalData' <$>
                   (o .:? "goalPreviousStep2") <*> (o .:? "goalName")
                     <*> (o .:? "goalPreviousStep3")
                     <*> (o .:? "goalIndex")
                     <*> (o .:? "goalCompletionLocation")
                     <*> (o .:? "goalPreviousStep1")
                     <*> (o .:? "goalCompletions")
                     <*> (o .:? "goalValue"))

instance ToJSON GoalData where
        toJSON GoalData'{..}
          = object
              (catMaybes
                 [("goalPreviousStep2" .=) <$> _gdGoalPreviousStep2,
                  ("goalName" .=) <$> _gdGoalName,
                  ("goalPreviousStep3" .=) <$> _gdGoalPreviousStep3,
                  ("goalIndex" .=) <$> _gdGoalIndex,
                  ("goalCompletionLocation" .=) <$>
                    _gdGoalCompletionLocation,
                  ("goalPreviousStep1" .=) <$> _gdGoalPreviousStep1,
                  ("goalCompletions" .=) <$> _gdGoalCompletions,
                  ("goalValue" .=) <$> _gdGoalValue])

-- | An Activity represents data for an activity of a user. Note that an
-- Activity is different from a hit. A hit might result in multiple
-- Activity\'s. For example, if a hit includes a transaction and a goal
-- completion, there will be two Activity protos for this hit, one for
-- ECOMMERCE and one for GOAL. Conversely, multiple hits can also construct
-- one Activity. In classic e-commerce, data for one transaction might be
-- sent through multiple hits. These hits will be merged into one ECOMMERCE
-- Activity.
--
-- /See:/ 'activity' smart constructor.
data Activity =
  Activity'
    { _aEvent :: !(Maybe EventData)
    , _aHostname :: !(Maybe Text)
    , _aActivityType :: !(Maybe ActivityActivityType)
    , _aMedium :: !(Maybe Text)
    , _aPageview :: !(Maybe PageviewData)
    , _aCampaign :: !(Maybe Text)
    , _aGoals :: !(Maybe GoalSetData)
    , _aChannelGrouping :: !(Maybe Text)
    , _aAppview :: !(Maybe ScreenviewData)
    , _aSource :: !(Maybe Text)
    , _aActivityTime :: !(Maybe DateTime')
    , _aEcommerce :: !(Maybe EcommerceData)
    , _aCustomDimension :: !(Maybe [CustomDimension])
    , _aKeyword :: !(Maybe Text)
    , _aLandingPagePath :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEvent'
--
-- * 'aHostname'
--
-- * 'aActivityType'
--
-- * 'aMedium'
--
-- * 'aPageview'
--
-- * 'aCampaign'
--
-- * 'aGoals'
--
-- * 'aChannelGrouping'
--
-- * 'aAppview'
--
-- * 'aSource'
--
-- * 'aActivityTime'
--
-- * 'aEcommerce'
--
-- * 'aCustomDimension'
--
-- * 'aKeyword'
--
-- * 'aLandingPagePath'
activity
    :: Activity
activity =
  Activity'
    { _aEvent = Nothing
    , _aHostname = Nothing
    , _aActivityType = Nothing
    , _aMedium = Nothing
    , _aPageview = Nothing
    , _aCampaign = Nothing
    , _aGoals = Nothing
    , _aChannelGrouping = Nothing
    , _aAppview = Nothing
    , _aSource = Nothing
    , _aActivityTime = Nothing
    , _aEcommerce = Nothing
    , _aCustomDimension = Nothing
    , _aKeyword = Nothing
    , _aLandingPagePath = Nothing
    }


-- | This field contains all the details pertaining to an event and will be
-- set if \`activity_type\` equals \`EVENT\`.
aEvent :: Lens' Activity (Maybe EventData)
aEvent = lens _aEvent (\ s a -> s{_aEvent = a})

-- | The hostname from which the tracking request was made.
aHostname :: Lens' Activity (Maybe Text)
aHostname
  = lens _aHostname (\ s a -> s{_aHostname = a})

-- | Type of this activity.
aActivityType :: Lens' Activity (Maybe ActivityActivityType)
aActivityType
  = lens _aActivityType
      (\ s a -> s{_aActivityType = a})

-- | The type of referrals. For manual campaign tracking, it is the value of
-- the utm_medium campaign tracking parameter. For AdWords autotagging, it
-- is cpc. If users came from a search engine detected by Google Analytics,
-- it is organic. If the referrer is not a search engine, it is referral.
-- If users came directly to the property and document.referrer is empty,
-- its value is (none).
aMedium :: Lens' Activity (Maybe Text)
aMedium = lens _aMedium (\ s a -> s{_aMedium = a})

-- | This will be set if \`activity_type\` equals \`PAGEVIEW\`. This field
-- contains all the details about the visitor and the page that was
-- visited.
aPageview :: Lens' Activity (Maybe PageviewData)
aPageview
  = lens _aPageview (\ s a -> s{_aPageview = a})

-- | For manual campaign tracking, it is the value of the utm_campaign
-- campaign tracking parameter. For AdWords autotagging, it is the name(s)
-- of the online ad campaign(s) you use for the property. If you use
-- neither, its value is (not set).
aCampaign :: Lens' Activity (Maybe Text)
aCampaign
  = lens _aCampaign (\ s a -> s{_aCampaign = a})

-- | This field contains a list of all the goals that were reached in this
-- activity when \`activity_type\` equals \`GOAL\`.
aGoals :: Lens' Activity (Maybe GoalSetData)
aGoals = lens _aGoals (\ s a -> s{_aGoals = a})

-- | The Channel Group associated with an end user\'s session for this View
-- (defined by the View\'s Channel Groupings).
aChannelGrouping :: Lens' Activity (Maybe Text)
aChannelGrouping
  = lens _aChannelGrouping
      (\ s a -> s{_aChannelGrouping = a})

-- | This will be set if \`activity_type\` equals \`SCREEN_VIEW\`.
aAppview :: Lens' Activity (Maybe ScreenviewData)
aAppview = lens _aAppview (\ s a -> s{_aAppview = a})

-- | The source of referrals. For manual campaign tracking, it is the value
-- of the utm_source campaign tracking parameter. For AdWords autotagging,
-- it is google. If you use neither, it is the domain of the source (e.g.,
-- document.referrer) referring the users. It may also contain a port
-- address. If users arrived without a referrer, its value is (direct).
aSource :: Lens' Activity (Maybe Text)
aSource = lens _aSource (\ s a -> s{_aSource = a})

-- | Timestamp of the activity. If activities for a visit cross midnight and
-- occur in two separate dates, then two sessions (one per date) share the
-- session identifier. For example, say session ID 113472 has activity
-- within 2019-08-20, and session ID 243742 has activity within 2019-08-25
-- and 2019-08-26. Session ID 113472 is one session, and session ID 243742
-- is two sessions.
aActivityTime :: Lens' Activity (Maybe UTCTime)
aActivityTime
  = lens _aActivityTime
      (\ s a -> s{_aActivityTime = a})
      . mapping _DateTime

-- | This will be set if \`activity_type\` equals \`ECOMMERCE\`.
aEcommerce :: Lens' Activity (Maybe EcommerceData)
aEcommerce
  = lens _aEcommerce (\ s a -> s{_aEcommerce = a})

-- | A list of all custom dimensions associated with this activity.
aCustomDimension :: Lens' Activity [CustomDimension]
aCustomDimension
  = lens _aCustomDimension
      (\ s a -> s{_aCustomDimension = a})
      . _Default
      . _Coerce

-- | For manual campaign tracking, it is the value of the utm_term campaign
-- tracking parameter. For AdWords traffic, it contains the best matching
-- targeting criteria. For the display network, where multiple targeting
-- criteria could have caused the ad to show up, it returns the best
-- matching targeting criteria as selected by Ads. This could be
-- display_keyword, site placement, boomuserlist, user_interest, age, or
-- gender. Otherwise its value is (not set).
aKeyword :: Lens' Activity (Maybe Text)
aKeyword = lens _aKeyword (\ s a -> s{_aKeyword = a})

-- | The first page in users\' sessions, or the landing page.
aLandingPagePath :: Lens' Activity (Maybe Text)
aLandingPagePath
  = lens _aLandingPagePath
      (\ s a -> s{_aLandingPagePath = a})

instance FromJSON Activity where
        parseJSON
          = withObject "Activity"
              (\ o ->
                 Activity' <$>
                   (o .:? "event") <*> (o .:? "hostname") <*>
                     (o .:? "activityType")
                     <*> (o .:? "medium")
                     <*> (o .:? "pageview")
                     <*> (o .:? "campaign")
                     <*> (o .:? "goals")
                     <*> (o .:? "channelGrouping")
                     <*> (o .:? "appview")
                     <*> (o .:? "source")
                     <*> (o .:? "activityTime")
                     <*> (o .:? "ecommerce")
                     <*> (o .:? "customDimension" .!= mempty)
                     <*> (o .:? "keyword")
                     <*> (o .:? "landingPagePath"))

instance ToJSON Activity where
        toJSON Activity'{..}
          = object
              (catMaybes
                 [("event" .=) <$> _aEvent,
                  ("hostname" .=) <$> _aHostname,
                  ("activityType" .=) <$> _aActivityType,
                  ("medium" .=) <$> _aMedium,
                  ("pageview" .=) <$> _aPageview,
                  ("campaign" .=) <$> _aCampaign,
                  ("goals" .=) <$> _aGoals,
                  ("channelGrouping" .=) <$> _aChannelGrouping,
                  ("appview" .=) <$> _aAppview,
                  ("source" .=) <$> _aSource,
                  ("activityTime" .=) <$> _aActivityTime,
                  ("ecommerce" .=) <$> _aEcommerce,
                  ("customDimension" .=) <$> _aCustomDimension,
                  ("keyword" .=) <$> _aKeyword,
                  ("landingPagePath" .=) <$> _aLandingPagePath])

-- | Defines a cohort. A cohort is a group of users who share a common
-- characteristic. For example, all users with the same acquisition date
-- belong to the same cohort.
--
-- /See:/ 'cohort' smart constructor.
data Cohort =
  Cohort'
    { _cDateRange :: !(Maybe DateRange)
    , _cName :: !(Maybe Text)
    , _cType :: !(Maybe CohortType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Cohort' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDateRange'
--
-- * 'cName'
--
-- * 'cType'
cohort
    :: Cohort
cohort = Cohort' {_cDateRange = Nothing, _cName = Nothing, _cType = Nothing}


-- | This is used for \`FIRST_VISIT_DATE\` cohort, the cohort selects users
-- whose first visit date is between start date and end date defined in the
-- DateRange. The date ranges should be aligned for cohort requests. If the
-- request contains \`ga:cohortNthDay\` it should be exactly one day long,
-- if \`ga:cohortNthWeek\` it should be aligned to the week boundary
-- (starting at Sunday and ending Saturday), and for \`ga:cohortNthMonth\`
-- the date range should be aligned to the month (starting at the first and
-- ending on the last day of the month). For LTV requests there are no such
-- restrictions. You do not need to supply a date range for the
-- \`reportsRequest.dateRanges\` field.
cDateRange :: Lens' Cohort (Maybe DateRange)
cDateRange
  = lens _cDateRange (\ s a -> s{_cDateRange = a})

-- | A unique name for the cohort. If not defined name will be auto-generated
-- with values cohort_[1234...].
cName :: Lens' Cohort (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Type of the cohort. The only supported type as of now is
-- \`FIRST_VISIT_DATE\`. If this field is unspecified the cohort is treated
-- as \`FIRST_VISIT_DATE\` type cohort.
cType :: Lens' Cohort (Maybe CohortType)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON Cohort where
        parseJSON
          = withObject "Cohort"
              (\ o ->
                 Cohort' <$>
                   (o .:? "dateRange") <*> (o .:? "name") <*>
                     (o .:? "type"))

instance ToJSON Cohort where
        toJSON Cohort'{..}
          = object
              (catMaybes
                 [("dateRange" .=) <$> _cDateRange,
                  ("name" .=) <$> _cName, ("type" .=) <$> _cType])

-- | E-commerce details associated with the user activity.
--
-- /See:/ 'ecommerceData' smart constructor.
data EcommerceData =
  EcommerceData'
    { _edEcommerceType :: !(Maybe EcommerceDataEcommerceType)
    , _edTransaction :: !(Maybe TransactionData)
    , _edProducts :: !(Maybe [ProductData])
    , _edActionType :: !(Maybe EcommerceDataActionType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EcommerceData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edEcommerceType'
--
-- * 'edTransaction'
--
-- * 'edProducts'
--
-- * 'edActionType'
ecommerceData
    :: EcommerceData
ecommerceData =
  EcommerceData'
    { _edEcommerceType = Nothing
    , _edTransaction = Nothing
    , _edProducts = Nothing
    , _edActionType = Nothing
    }


-- | The type of this e-commerce activity.
edEcommerceType :: Lens' EcommerceData (Maybe EcommerceDataEcommerceType)
edEcommerceType
  = lens _edEcommerceType
      (\ s a -> s{_edEcommerceType = a})

-- | Transaction details of this e-commerce action.
edTransaction :: Lens' EcommerceData (Maybe TransactionData)
edTransaction
  = lens _edTransaction
      (\ s a -> s{_edTransaction = a})

-- | Details of the products in this transaction.
edProducts :: Lens' EcommerceData [ProductData]
edProducts
  = lens _edProducts (\ s a -> s{_edProducts = a}) .
      _Default
      . _Coerce

-- | Action associated with this e-commerce action.
edActionType :: Lens' EcommerceData (Maybe EcommerceDataActionType)
edActionType
  = lens _edActionType (\ s a -> s{_edActionType = a})

instance FromJSON EcommerceData where
        parseJSON
          = withObject "EcommerceData"
              (\ o ->
                 EcommerceData' <$>
                   (o .:? "ecommerceType") <*> (o .:? "transaction") <*>
                     (o .:? "products" .!= mempty)
                     <*> (o .:? "actionType"))

instance ToJSON EcommerceData where
        toJSON EcommerceData'{..}
          = object
              (catMaybes
                 [("ecommerceType" .=) <$> _edEcommerceType,
                  ("transaction" .=) <$> _edTransaction,
                  ("products" .=) <$> _edProducts,
                  ("actionType" .=) <$> _edActionType])

-- | Dimension filter specifies the filtering options on a dimension.
--
-- /See:/ 'dimensionFilter' smart constructor.
data DimensionFilter =
  DimensionFilter'
    { _dfNot :: !(Maybe Bool)
    , _dfOperator :: !(Maybe DimensionFilterOperator)
    , _dfExpressions :: !(Maybe [Text])
    , _dfDimensionName :: !(Maybe Text)
    , _dfCaseSensitive :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DimensionFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfNot'
--
-- * 'dfOperator'
--
-- * 'dfExpressions'
--
-- * 'dfDimensionName'
--
-- * 'dfCaseSensitive'
dimensionFilter
    :: DimensionFilter
dimensionFilter =
  DimensionFilter'
    { _dfNot = Nothing
    , _dfOperator = Nothing
    , _dfExpressions = Nothing
    , _dfDimensionName = Nothing
    , _dfCaseSensitive = Nothing
    }


-- | Logical \`NOT\` operator. If this boolean is set to true, then the
-- matching dimension values will be excluded in the report. The default is
-- false.
dfNot :: Lens' DimensionFilter (Maybe Bool)
dfNot = lens _dfNot (\ s a -> s{_dfNot = a})

-- | How to match the dimension to the expression. The default is REGEXP.
dfOperator :: Lens' DimensionFilter (Maybe DimensionFilterOperator)
dfOperator
  = lens _dfOperator (\ s a -> s{_dfOperator = a})

-- | Strings or regular expression to match against. Only the first value of
-- the list is used for comparison unless the operator is \`IN_LIST\`. If
-- \`IN_LIST\` operator, then the entire list is used to filter the
-- dimensions as explained in the description of the \`IN_LIST\` operator.
dfExpressions :: Lens' DimensionFilter [Text]
dfExpressions
  = lens _dfExpressions
      (\ s a -> s{_dfExpressions = a})
      . _Default
      . _Coerce

-- | The dimension to filter on. A DimensionFilter must contain a dimension.
dfDimensionName :: Lens' DimensionFilter (Maybe Text)
dfDimensionName
  = lens _dfDimensionName
      (\ s a -> s{_dfDimensionName = a})

-- | Should the match be case sensitive? Default is false.
dfCaseSensitive :: Lens' DimensionFilter (Maybe Bool)
dfCaseSensitive
  = lens _dfCaseSensitive
      (\ s a -> s{_dfCaseSensitive = a})

instance FromJSON DimensionFilter where
        parseJSON
          = withObject "DimensionFilter"
              (\ o ->
                 DimensionFilter' <$>
                   (o .:? "not") <*> (o .:? "operator") <*>
                     (o .:? "expressions" .!= mempty)
                     <*> (o .:? "dimensionName")
                     <*> (o .:? "caseSensitive"))

instance ToJSON DimensionFilter where
        toJSON DimensionFilter'{..}
          = object
              (catMaybes
                 [("not" .=) <$> _dfNot,
                  ("operator" .=) <$> _dfOperator,
                  ("expressions" .=) <$> _dfExpressions,
                  ("dimensionName" .=) <$> _dfDimensionName,
                  ("caseSensitive" .=) <$> _dfCaseSensitive])

-- | The main response class which holds the reports from the Reporting API
-- \`batchGet\` call.
--
-- /See:/ 'getReportsResponse' smart constructor.
data GetReportsResponse =
  GetReportsResponse'
    { _grrReports :: !(Maybe [Report])
    , _grrResourceQuotasRemaining :: !(Maybe ResourceQuotasRemaining)
    , _grrQueryCost :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrReports'
--
-- * 'grrResourceQuotasRemaining'
--
-- * 'grrQueryCost'
getReportsResponse
    :: GetReportsResponse
getReportsResponse =
  GetReportsResponse'
    { _grrReports = Nothing
    , _grrResourceQuotasRemaining = Nothing
    , _grrQueryCost = Nothing
    }


-- | Responses corresponding to each of the request.
grrReports :: Lens' GetReportsResponse [Report]
grrReports
  = lens _grrReports (\ s a -> s{_grrReports = a}) .
      _Default
      . _Coerce

-- | The amount of resource quota remaining for the property.
grrResourceQuotasRemaining :: Lens' GetReportsResponse (Maybe ResourceQuotasRemaining)
grrResourceQuotasRemaining
  = lens _grrResourceQuotasRemaining
      (\ s a -> s{_grrResourceQuotasRemaining = a})

-- | The amount of resource quota tokens deducted to execute the query.
-- Includes all responses.
grrQueryCost :: Lens' GetReportsResponse (Maybe Int32)
grrQueryCost
  = lens _grrQueryCost (\ s a -> s{_grrQueryCost = a})
      . mapping _Coerce

instance FromJSON GetReportsResponse where
        parseJSON
          = withObject "GetReportsResponse"
              (\ o ->
                 GetReportsResponse' <$>
                   (o .:? "reports" .!= mempty) <*>
                     (o .:? "resourceQuotasRemaining")
                     <*> (o .:? "queryCost"))

instance ToJSON GetReportsResponse where
        toJSON GetReportsResponse'{..}
          = object
              (catMaybes
                 [("reports" .=) <$> _grrReports,
                  ("resourceQuotasRemaining" .=) <$>
                    _grrResourceQuotasRemaining,
                  ("queryCost" .=) <$> _grrQueryCost])

-- | Custom dimension.
--
-- /See:/ 'customDimension' smart constructor.
data CustomDimension =
  CustomDimension'
    { _cdValue :: !(Maybe Text)
    , _cdIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdValue'
--
-- * 'cdIndex'
customDimension
    :: CustomDimension
customDimension = CustomDimension' {_cdValue = Nothing, _cdIndex = Nothing}


-- | Value of the custom dimension. Default value (i.e. empty string)
-- indicates clearing sesion\/visitor scope custom dimension value.
cdValue :: Lens' CustomDimension (Maybe Text)
cdValue = lens _cdValue (\ s a -> s{_cdValue = a})

-- | Slot number of custom dimension.
cdIndex :: Lens' CustomDimension (Maybe Int32)
cdIndex
  = lens _cdIndex (\ s a -> s{_cdIndex = a}) .
      mapping _Coerce

instance FromJSON CustomDimension where
        parseJSON
          = withObject "CustomDimension"
              (\ o ->
                 CustomDimension' <$>
                   (o .:? "value") <*> (o .:? "index"))

instance ToJSON CustomDimension where
        toJSON CustomDimension'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _cdValue,
                  ("index" .=) <$> _cdIndex])

-- | The segment definition, if the report needs to be segmented. A Segment
-- is a subset of the Analytics data. For example, of the entire set of
-- users, one Segment might be users from a particular country or city.
--
-- /See:/ 'segment' smart constructor.
data Segment =
  Segment'
    { _sDynamicSegment :: !(Maybe DynamicSegment)
    , _sSegmentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Segment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDynamicSegment'
--
-- * 'sSegmentId'
segment
    :: Segment
segment = Segment' {_sDynamicSegment = Nothing, _sSegmentId = Nothing}


-- | A dynamic segment definition in the request.
sDynamicSegment :: Lens' Segment (Maybe DynamicSegment)
sDynamicSegment
  = lens _sDynamicSegment
      (\ s a -> s{_sDynamicSegment = a})

-- | The segment ID of a built-in or custom segment, for example
-- \`gaid::-3\`.
sSegmentId :: Lens' Segment (Maybe Text)
sSegmentId
  = lens _sSegmentId (\ s a -> s{_sSegmentId = a})

instance FromJSON Segment where
        parseJSON
          = withObject "Segment"
              (\ o ->
                 Segment' <$>
                   (o .:? "dynamicSegment") <*> (o .:? "segmentId"))

instance ToJSON Segment where
        toJSON Segment'{..}
          = object
              (catMaybes
                 [("dynamicSegment" .=) <$> _sDynamicSegment,
                  ("segmentId" .=) <$> _sSegmentId])

-- | Details of the products in an e-commerce transaction.
--
-- /See:/ 'productData' smart constructor.
data ProductData =
  ProductData'
    { _pdProductName :: !(Maybe Text)
    , _pdProductSKU :: !(Maybe Text)
    , _pdItemRevenue :: !(Maybe (Textual Double))
    , _pdProductQuantity :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdProductName'
--
-- * 'pdProductSKU'
--
-- * 'pdItemRevenue'
--
-- * 'pdProductQuantity'
productData
    :: ProductData
productData =
  ProductData'
    { _pdProductName = Nothing
    , _pdProductSKU = Nothing
    , _pdItemRevenue = Nothing
    , _pdProductQuantity = Nothing
    }


-- | The product name, supplied by the e-commerce tracking application, for
-- the purchased items.
pdProductName :: Lens' ProductData (Maybe Text)
pdProductName
  = lens _pdProductName
      (\ s a -> s{_pdProductName = a})

-- | Unique code that represents the product.
pdProductSKU :: Lens' ProductData (Maybe Text)
pdProductSKU
  = lens _pdProductSKU (\ s a -> s{_pdProductSKU = a})

-- | The total revenue from purchased product items.
pdItemRevenue :: Lens' ProductData (Maybe Double)
pdItemRevenue
  = lens _pdItemRevenue
      (\ s a -> s{_pdItemRevenue = a})
      . mapping _Coerce

-- | Total number of this product units in the transaction.
pdProductQuantity :: Lens' ProductData (Maybe Int64)
pdProductQuantity
  = lens _pdProductQuantity
      (\ s a -> s{_pdProductQuantity = a})
      . mapping _Coerce

instance FromJSON ProductData where
        parseJSON
          = withObject "ProductData"
              (\ o ->
                 ProductData' <$>
                   (o .:? "productName") <*> (o .:? "productSku") <*>
                     (o .:? "itemRevenue")
                     <*> (o .:? "productQuantity"))

instance ToJSON ProductData where
        toJSON ProductData'{..}
          = object
              (catMaybes
                 [("productName" .=) <$> _pdProductName,
                  ("productSku" .=) <$> _pdProductSKU,
                  ("itemRevenue" .=) <$> _pdItemRevenue,
                  ("productQuantity" .=) <$> _pdProductQuantity])

-- | The resource quota tokens remaining for the property after the request
-- is completed.
--
-- /See:/ 'resourceQuotasRemaining' smart constructor.
data ResourceQuotasRemaining =
  ResourceQuotasRemaining'
    { _rqrHourlyQuotaTokensRemaining :: !(Maybe (Textual Int32))
    , _rqrDailyQuotaTokensRemaining :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceQuotasRemaining' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rqrHourlyQuotaTokensRemaining'
--
-- * 'rqrDailyQuotaTokensRemaining'
resourceQuotasRemaining
    :: ResourceQuotasRemaining
resourceQuotasRemaining =
  ResourceQuotasRemaining'
    { _rqrHourlyQuotaTokensRemaining = Nothing
    , _rqrDailyQuotaTokensRemaining = Nothing
    }


-- | Hourly resource quota tokens remaining.
rqrHourlyQuotaTokensRemaining :: Lens' ResourceQuotasRemaining (Maybe Int32)
rqrHourlyQuotaTokensRemaining
  = lens _rqrHourlyQuotaTokensRemaining
      (\ s a -> s{_rqrHourlyQuotaTokensRemaining = a})
      . mapping _Coerce

-- | Daily resource quota remaining remaining.
rqrDailyQuotaTokensRemaining :: Lens' ResourceQuotasRemaining (Maybe Int32)
rqrDailyQuotaTokensRemaining
  = lens _rqrDailyQuotaTokensRemaining
      (\ s a -> s{_rqrDailyQuotaTokensRemaining = a})
      . mapping _Coerce

instance FromJSON ResourceQuotasRemaining where
        parseJSON
          = withObject "ResourceQuotasRemaining"
              (\ o ->
                 ResourceQuotasRemaining' <$>
                   (o .:? "hourlyQuotaTokensRemaining") <*>
                     (o .:? "dailyQuotaTokensRemaining"))

instance ToJSON ResourceQuotasRemaining where
        toJSON ResourceQuotasRemaining'{..}
          = object
              (catMaybes
                 [("hourlyQuotaTokensRemaining" .=) <$>
                    _rqrHourlyQuotaTokensRemaining,
                  ("dailyQuotaTokensRemaining" .=) <$>
                    _rqrDailyQuotaTokensRemaining])

-- | Dimension filter specifies the filtering options on a dimension.
--
-- /See:/ 'segmentDimensionFilter' smart constructor.
data SegmentDimensionFilter =
  SegmentDimensionFilter'
    { _sdfOperator :: !(Maybe SegmentDimensionFilterOperator)
    , _sdfMinComparisonValue :: !(Maybe Text)
    , _sdfMaxComparisonValue :: !(Maybe Text)
    , _sdfExpressions :: !(Maybe [Text])
    , _sdfDimensionName :: !(Maybe Text)
    , _sdfCaseSensitive :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SegmentDimensionFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdfOperator'
--
-- * 'sdfMinComparisonValue'
--
-- * 'sdfMaxComparisonValue'
--
-- * 'sdfExpressions'
--
-- * 'sdfDimensionName'
--
-- * 'sdfCaseSensitive'
segmentDimensionFilter
    :: SegmentDimensionFilter
segmentDimensionFilter =
  SegmentDimensionFilter'
    { _sdfOperator = Nothing
    , _sdfMinComparisonValue = Nothing
    , _sdfMaxComparisonValue = Nothing
    , _sdfExpressions = Nothing
    , _sdfDimensionName = Nothing
    , _sdfCaseSensitive = Nothing
    }


-- | The operator to use to match the dimension with the expressions.
sdfOperator :: Lens' SegmentDimensionFilter (Maybe SegmentDimensionFilterOperator)
sdfOperator
  = lens _sdfOperator (\ s a -> s{_sdfOperator = a})

-- | Minimum comparison values for \`BETWEEN\` match type.
sdfMinComparisonValue :: Lens' SegmentDimensionFilter (Maybe Text)
sdfMinComparisonValue
  = lens _sdfMinComparisonValue
      (\ s a -> s{_sdfMinComparisonValue = a})

-- | Maximum comparison values for \`BETWEEN\` match type.
sdfMaxComparisonValue :: Lens' SegmentDimensionFilter (Maybe Text)
sdfMaxComparisonValue
  = lens _sdfMaxComparisonValue
      (\ s a -> s{_sdfMaxComparisonValue = a})

-- | The list of expressions, only the first element is used for all
-- operators
sdfExpressions :: Lens' SegmentDimensionFilter [Text]
sdfExpressions
  = lens _sdfExpressions
      (\ s a -> s{_sdfExpressions = a})
      . _Default
      . _Coerce

-- | Name of the dimension for which the filter is being applied.
sdfDimensionName :: Lens' SegmentDimensionFilter (Maybe Text)
sdfDimensionName
  = lens _sdfDimensionName
      (\ s a -> s{_sdfDimensionName = a})

-- | Should the match be case sensitive, ignored for \`IN_LIST\` operator.
sdfCaseSensitive :: Lens' SegmentDimensionFilter (Maybe Bool)
sdfCaseSensitive
  = lens _sdfCaseSensitive
      (\ s a -> s{_sdfCaseSensitive = a})

instance FromJSON SegmentDimensionFilter where
        parseJSON
          = withObject "SegmentDimensionFilter"
              (\ o ->
                 SegmentDimensionFilter' <$>
                   (o .:? "operator") <*> (o .:? "minComparisonValue")
                     <*> (o .:? "maxComparisonValue")
                     <*> (o .:? "expressions" .!= mempty)
                     <*> (o .:? "dimensionName")
                     <*> (o .:? "caseSensitive"))

instance ToJSON SegmentDimensionFilter where
        toJSON SegmentDimensionFilter'{..}
          = object
              (catMaybes
                 [("operator" .=) <$> _sdfOperator,
                  ("minComparisonValue" .=) <$> _sdfMinComparisonValue,
                  ("maxComparisonValue" .=) <$> _sdfMaxComparisonValue,
                  ("expressions" .=) <$> _sdfExpressions,
                  ("dimensionName" .=) <$> _sdfDimensionName,
                  ("caseSensitive" .=) <$> _sdfCaseSensitive])

-- | Dynamic segment definition for defining the segment within the request.
-- A segment can select users, sessions or both.
--
-- /See:/ 'dynamicSegment' smart constructor.
data DynamicSegment =
  DynamicSegment'
    { _dsUserSegment :: !(Maybe SegmentDefinition)
    , _dsName :: !(Maybe Text)
    , _dsSessionSegment :: !(Maybe SegmentDefinition)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DynamicSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsUserSegment'
--
-- * 'dsName'
--
-- * 'dsSessionSegment'
dynamicSegment
    :: DynamicSegment
dynamicSegment =
  DynamicSegment'
    {_dsUserSegment = Nothing, _dsName = Nothing, _dsSessionSegment = Nothing}


-- | User Segment to select users to include in the segment.
dsUserSegment :: Lens' DynamicSegment (Maybe SegmentDefinition)
dsUserSegment
  = lens _dsUserSegment
      (\ s a -> s{_dsUserSegment = a})

-- | The name of the dynamic segment.
dsName :: Lens' DynamicSegment (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

-- | Session Segment to select sessions to include in the segment.
dsSessionSegment :: Lens' DynamicSegment (Maybe SegmentDefinition)
dsSessionSegment
  = lens _dsSessionSegment
      (\ s a -> s{_dsSessionSegment = a})

instance FromJSON DynamicSegment where
        parseJSON
          = withObject "DynamicSegment"
              (\ o ->
                 DynamicSegment' <$>
                   (o .:? "userSegment") <*> (o .:? "name") <*>
                     (o .:? "sessionSegment"))

instance ToJSON DynamicSegment where
        toJSON DynamicSegment'{..}
          = object
              (catMaybes
                 [("userSegment" .=) <$> _dsUserSegment,
                  ("name" .=) <$> _dsName,
                  ("sessionSegment" .=) <$> _dsSessionSegment])

-- | Represents a group of metric filters. Set the operator value to specify
-- how the filters are logically combined.
--
-- /See:/ 'metricFilterClause' smart constructor.
data MetricFilterClause =
  MetricFilterClause'
    { _mfcOperator :: !(Maybe MetricFilterClauseOperator)
    , _mfcFilters :: !(Maybe [MetricFilter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricFilterClause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfcOperator'
--
-- * 'mfcFilters'
metricFilterClause
    :: MetricFilterClause
metricFilterClause =
  MetricFilterClause' {_mfcOperator = Nothing, _mfcFilters = Nothing}


-- | The operator for combining multiple metric filters. If unspecified, it
-- is treated as an \`OR\`.
mfcOperator :: Lens' MetricFilterClause (Maybe MetricFilterClauseOperator)
mfcOperator
  = lens _mfcOperator (\ s a -> s{_mfcOperator = a})

-- | The repeated set of filters. They are logically combined based on the
-- operator specified.
mfcFilters :: Lens' MetricFilterClause [MetricFilter]
mfcFilters
  = lens _mfcFilters (\ s a -> s{_mfcFilters = a}) .
      _Default
      . _Coerce

instance FromJSON MetricFilterClause where
        parseJSON
          = withObject "MetricFilterClause"
              (\ o ->
                 MetricFilterClause' <$>
                   (o .:? "operator") <*> (o .:? "filters" .!= mempty))

instance ToJSON MetricFilterClause where
        toJSON MetricFilterClause'{..}
          = object
              (catMaybes
                 [("operator" .=) <$> _mfcOperator,
                  ("filters" .=) <$> _mfcFilters])

-- | Column headers.
--
-- /See:/ 'columnHeader' smart constructor.
data ColumnHeader =
  ColumnHeader'
    { _chMetricHeader :: !(Maybe MetricHeader)
    , _chDimensions :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ColumnHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chMetricHeader'
--
-- * 'chDimensions'
columnHeader
    :: ColumnHeader
columnHeader =
  ColumnHeader' {_chMetricHeader = Nothing, _chDimensions = Nothing}


-- | Metric headers for the metrics in the response.
chMetricHeader :: Lens' ColumnHeader (Maybe MetricHeader)
chMetricHeader
  = lens _chMetricHeader
      (\ s a -> s{_chMetricHeader = a})

-- | The dimension names in the response.
chDimensions :: Lens' ColumnHeader [Text]
chDimensions
  = lens _chDimensions (\ s a -> s{_chDimensions = a})
      . _Default
      . _Coerce

instance FromJSON ColumnHeader where
        parseJSON
          = withObject "ColumnHeader"
              (\ o ->
                 ColumnHeader' <$>
                   (o .:? "metricHeader") <*>
                     (o .:? "dimensions" .!= mempty))

instance ToJSON ColumnHeader where
        toJSON ColumnHeader'{..}
          = object
              (catMaybes
                 [("metricHeader" .=) <$> _chMetricHeader,
                  ("dimensions" .=) <$> _chDimensions])

-- | The response from \`userActivity:get\` call.
--
-- /See:/ 'searchUserActivityResponse' smart constructor.
data SearchUserActivityResponse =
  SearchUserActivityResponse'
    { _suarNextPageToken :: !(Maybe Text)
    , _suarSampleRate :: !(Maybe (Textual Double))
    , _suarSessions :: !(Maybe [UserActivitySession])
    , _suarTotalRows :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchUserActivityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suarNextPageToken'
--
-- * 'suarSampleRate'
--
-- * 'suarSessions'
--
-- * 'suarTotalRows'
searchUserActivityResponse
    :: SearchUserActivityResponse
searchUserActivityResponse =
  SearchUserActivityResponse'
    { _suarNextPageToken = Nothing
    , _suarSampleRate = Nothing
    , _suarSessions = Nothing
    , _suarTotalRows = Nothing
    }


-- | This token should be passed to
-- [SearchUserActivityRequest](#SearchUserActivityRequest) to retrieve the
-- next page.
suarNextPageToken :: Lens' SearchUserActivityResponse (Maybe Text)
suarNextPageToken
  = lens _suarNextPageToken
      (\ s a -> s{_suarNextPageToken = a})

-- | This field represents the [sampling
-- rate](https:\/\/support.google.com\/analytics\/answer\/2637192) for the
-- given request and is a number between 0.0 to 1.0. See [developer
-- guide](\/analytics\/devguides\/reporting\/core\/v4\/basics#sampling) for
-- details.
suarSampleRate :: Lens' SearchUserActivityResponse (Maybe Double)
suarSampleRate
  = lens _suarSampleRate
      (\ s a -> s{_suarSampleRate = a})
      . mapping _Coerce

-- | Each record represents a session (device details, duration, etc).
suarSessions :: Lens' SearchUserActivityResponse [UserActivitySession]
suarSessions
  = lens _suarSessions (\ s a -> s{_suarSessions = a})
      . _Default
      . _Coerce

-- | Total rows returned by this query (across different pages).
suarTotalRows :: Lens' SearchUserActivityResponse (Maybe Int32)
suarTotalRows
  = lens _suarTotalRows
      (\ s a -> s{_suarTotalRows = a})
      . mapping _Coerce

instance FromJSON SearchUserActivityResponse where
        parseJSON
          = withObject "SearchUserActivityResponse"
              (\ o ->
                 SearchUserActivityResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "sampleRate") <*>
                     (o .:? "sessions" .!= mempty)
                     <*> (o .:? "totalRows"))

instance ToJSON SearchUserActivityResponse where
        toJSON SearchUserActivityResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _suarNextPageToken,
                  ("sampleRate" .=) <$> _suarSampleRate,
                  ("sessions" .=) <$> _suarSessions,
                  ("totalRows" .=) <$> _suarTotalRows])

--
-- /See:/ 'screenviewData' smart constructor.
data ScreenviewData =
  ScreenviewData'
    { _sdMobileDeviceModel :: !(Maybe Text)
    , _sdMobileDeviceBranding :: !(Maybe Text)
    , _sdAppName :: !(Maybe Text)
    , _sdScreenName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScreenviewData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdMobileDeviceModel'
--
-- * 'sdMobileDeviceBranding'
--
-- * 'sdAppName'
--
-- * 'sdScreenName'
screenviewData
    :: ScreenviewData
screenviewData =
  ScreenviewData'
    { _sdMobileDeviceModel = Nothing
    , _sdMobileDeviceBranding = Nothing
    , _sdAppName = Nothing
    , _sdScreenName = Nothing
    }


-- | Mobile device model. Eg: \"Pixel\", \"iPhone\" etc.
sdMobileDeviceModel :: Lens' ScreenviewData (Maybe Text)
sdMobileDeviceModel
  = lens _sdMobileDeviceModel
      (\ s a -> s{_sdMobileDeviceModel = a})

-- | Mobile manufacturer or branded name. Eg: \"Google\", \"Apple\" etc.
sdMobileDeviceBranding :: Lens' ScreenviewData (Maybe Text)
sdMobileDeviceBranding
  = lens _sdMobileDeviceBranding
      (\ s a -> s{_sdMobileDeviceBranding = a})

-- | The application name.
sdAppName :: Lens' ScreenviewData (Maybe Text)
sdAppName
  = lens _sdAppName (\ s a -> s{_sdAppName = a})

-- | The name of the screen.
sdScreenName :: Lens' ScreenviewData (Maybe Text)
sdScreenName
  = lens _sdScreenName (\ s a -> s{_sdScreenName = a})

instance FromJSON ScreenviewData where
        parseJSON
          = withObject "ScreenviewData"
              (\ o ->
                 ScreenviewData' <$>
                   (o .:? "mobileDeviceModel") <*>
                     (o .:? "mobileDeviceBranding")
                     <*> (o .:? "appName")
                     <*> (o .:? "screenName"))

instance ToJSON ScreenviewData where
        toJSON ScreenviewData'{..}
          = object
              (catMaybes
                 [("mobileDeviceModel" .=) <$> _sdMobileDeviceModel,
                  ("mobileDeviceBranding" .=) <$>
                    _sdMobileDeviceBranding,
                  ("appName" .=) <$> _sdAppName,
                  ("screenName" .=) <$> _sdScreenName])
