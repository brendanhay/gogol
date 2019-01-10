{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Monitoring.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Monitoring.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Whether the measurement is an integer, a floating-point number, etc.
-- Some combinations of metric_kind and value_type might not be supported.
data MetricDescriptorValueType
    = MDVTValueTypeUnspecified
      -- ^ @VALUE_TYPE_UNSPECIFIED@
      -- Do not use this default value.
    | MDVTBool
      -- ^ @BOOL@
      -- The value is a boolean. This value type can be used only if the metric
      -- kind is GAUGE.
    | MDVTINT64
      -- ^ @INT64@
      -- The value is a signed 64-bit integer.
    | MDVTDouble
      -- ^ @DOUBLE@
      -- The value is a double precision floating point number.
    | MDVTString
      -- ^ @STRING@
      -- The value is a text string. This value type can be used only if the
      -- metric kind is GAUGE.
    | MDVTDistribution
      -- ^ @DISTRIBUTION@
      -- The value is a Distribution.
    | MDVTMoney
      -- ^ @MONEY@
      -- The value is money.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricDescriptorValueType

instance FromHttpApiData MetricDescriptorValueType where
    parseQueryParam = \case
        "VALUE_TYPE_UNSPECIFIED" -> Right MDVTValueTypeUnspecified
        "BOOL" -> Right MDVTBool
        "INT64" -> Right MDVTINT64
        "DOUBLE" -> Right MDVTDouble
        "STRING" -> Right MDVTString
        "DISTRIBUTION" -> Right MDVTDistribution
        "MONEY" -> Right MDVTMoney
        x -> Left ("Unable to parse MetricDescriptorValueType from: " <> x)

instance ToHttpApiData MetricDescriptorValueType where
    toQueryParam = \case
        MDVTValueTypeUnspecified -> "VALUE_TYPE_UNSPECIFIED"
        MDVTBool -> "BOOL"
        MDVTINT64 -> "INT64"
        MDVTDouble -> "DOUBLE"
        MDVTString -> "STRING"
        MDVTDistribution -> "DISTRIBUTION"
        MDVTMoney -> "MONEY"

instance FromJSON MetricDescriptorValueType where
    parseJSON = parseJSONText "MetricDescriptorValueType"

instance ToJSON MetricDescriptorValueType where
    toJSON = toJSONText

-- | The type of measurement.
data CollectdValueDataSourceType
    = UnspecifiedDataSourceType
      -- ^ @UNSPECIFIED_DATA_SOURCE_TYPE@
      -- An unspecified data source type. This corresponds to
      -- google.api.MetricDescriptor.MetricKind.METRIC_KIND_UNSPECIFIED.
    | Gauge
      -- ^ @GAUGE@
      -- An instantaneous measurement of a varying quantity. This corresponds to
      -- google.api.MetricDescriptor.MetricKind.GAUGE.
    | Counter
      -- ^ @COUNTER@
      -- A cumulative value over time. This corresponds to
      -- google.api.MetricDescriptor.MetricKind.CUMULATIVE.
    | Derive
      -- ^ @DERIVE@
      -- A rate of change of the measurement.
    | Absolute
      -- ^ @ABSOLUTE@
      -- An amount of change since the last measurement interval. This
      -- corresponds to google.api.MetricDescriptor.MetricKind.DELTA.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CollectdValueDataSourceType

instance FromHttpApiData CollectdValueDataSourceType where
    parseQueryParam = \case
        "UNSPECIFIED_DATA_SOURCE_TYPE" -> Right UnspecifiedDataSourceType
        "GAUGE" -> Right Gauge
        "COUNTER" -> Right Counter
        "DERIVE" -> Right Derive
        "ABSOLUTE" -> Right Absolute
        x -> Left ("Unable to parse CollectdValueDataSourceType from: " <> x)

instance ToHttpApiData CollectdValueDataSourceType where
    toQueryParam = \case
        UnspecifiedDataSourceType -> "UNSPECIFIED_DATA_SOURCE_TYPE"
        Gauge -> "GAUGE"
        Counter -> "COUNTER"
        Derive -> "DERIVE"
        Absolute -> "ABSOLUTE"

instance FromJSON CollectdValueDataSourceType where
    parseJSON = parseJSONText "CollectdValueDataSourceType"

instance ToJSON CollectdValueDataSourceType where
    toJSON = toJSONText

-- | A broad region category in which the IP address is located.
data UptimeCheckIPRegion
    = RegionUnspecified
      -- ^ @REGION_UNSPECIFIED@
      -- Default value if no region is specified. Will result in uptime checks
      -- running from all regions.
    | Usa
      -- ^ @USA@
      -- Allows checks to run from locations within the United States of America.
    | Europe
      -- ^ @EUROPE@
      -- Allows checks to run from locations within the continent of Europe.
    | SouthAmerica
      -- ^ @SOUTH_AMERICA@
      -- Allows checks to run from locations within the continent of South
      -- America.
    | AsiaPacific
      -- ^ @ASIA_PACIFIC@
      -- Allows checks to run from locations within the Asia Pacific area (ex:
      -- Singapore).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UptimeCheckIPRegion

instance FromHttpApiData UptimeCheckIPRegion where
    parseQueryParam = \case
        "REGION_UNSPECIFIED" -> Right RegionUnspecified
        "USA" -> Right Usa
        "EUROPE" -> Right Europe
        "SOUTH_AMERICA" -> Right SouthAmerica
        "ASIA_PACIFIC" -> Right AsiaPacific
        x -> Left ("Unable to parse UptimeCheckIPRegion from: " <> x)

instance ToHttpApiData UptimeCheckIPRegion where
    toQueryParam = \case
        RegionUnspecified -> "REGION_UNSPECIFIED"
        Usa -> "USA"
        Europe -> "EUROPE"
        SouthAmerica -> "SOUTH_AMERICA"
        AsiaPacific -> "ASIA_PACIFIC"

instance FromJSON UptimeCheckIPRegion where
    parseJSON = parseJSONText "UptimeCheckIPRegion"

instance ToJSON UptimeCheckIPRegion where
    toJSON = toJSONText

-- | The comparison to apply between the time series (indicated by filter and
-- aggregation) and the threshold (indicated by threshold_value). The
-- comparison is applied on each time series, with the time series on the
-- left-hand side and the threshold on the right-hand side.Only
-- COMPARISON_LT and COMPARISON_GT are supported currently.
data MetricThresholdComparison
    = ComparisonUnspecified
      -- ^ @COMPARISON_UNSPECIFIED@
      -- No ordering relationship is specified.
    | ComparisonGT
      -- ^ @COMPARISON_GT@
      -- The left argument is greater than the right argument.
    | ComparisonGe
      -- ^ @COMPARISON_GE@
      -- The left argument is greater than or equal to the right argument.
    | ComparisonLT
      -- ^ @COMPARISON_LT@
      -- The left argument is less than the right argument.
    | ComparisonLe
      -- ^ @COMPARISON_LE@
      -- The left argument is less than or equal to the right argument.
    | ComparisonEQ
      -- ^ @COMPARISON_EQ@
      -- The left argument is equal to the right argument.
    | ComparisonNe
      -- ^ @COMPARISON_NE@
      -- The left argument is not equal to the right argument.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricThresholdComparison

instance FromHttpApiData MetricThresholdComparison where
    parseQueryParam = \case
        "COMPARISON_UNSPECIFIED" -> Right ComparisonUnspecified
        "COMPARISON_GT" -> Right ComparisonGT
        "COMPARISON_GE" -> Right ComparisonGe
        "COMPARISON_LT" -> Right ComparisonLT
        "COMPARISON_LE" -> Right ComparisonLe
        "COMPARISON_EQ" -> Right ComparisonEQ
        "COMPARISON_NE" -> Right ComparisonNe
        x -> Left ("Unable to parse MetricThresholdComparison from: " <> x)

instance ToHttpApiData MetricThresholdComparison where
    toQueryParam = \case
        ComparisonUnspecified -> "COMPARISON_UNSPECIFIED"
        ComparisonGT -> "COMPARISON_GT"
        ComparisonGe -> "COMPARISON_GE"
        ComparisonLT -> "COMPARISON_LT"
        ComparisonLe -> "COMPARISON_LE"
        ComparisonEQ -> "COMPARISON_EQ"
        ComparisonNe -> "COMPARISON_NE"

instance FromJSON MetricThresholdComparison where
    parseJSON = parseJSONText "MetricThresholdComparison"

instance ToJSON MetricThresholdComparison where
    toJSON = toJSONText

-- | The approach to be used to align individual time series. Not all
-- alignment functions may be applied to all time series, depending on the
-- metric type and value type of the original time series. Alignment may
-- change the metric type or the value type of the time series.Time series
-- data must be aligned in order to perform cross-time series reduction. If
-- crossSeriesReducer is specified, then perSeriesAligner must be specified
-- and not equal ALIGN_NONE and alignmentPeriod must be specified;
-- otherwise, an error is returned.
data AggregationPerSeriesAligner
    = AlignNone
      -- ^ @ALIGN_NONE@
      -- No alignment. Raw data is returned. Not valid if cross-time series
      -- reduction is requested. The value type of the result is the same as the
      -- value type of the input.
    | AlignDelta
      -- ^ @ALIGN_DELTA@
      -- Align and convert to delta metric type. This alignment is valid for
      -- cumulative metrics and delta metrics. Aligning an existing delta metric
      -- to a delta metric requires that the alignment period be increased. The
      -- value type of the result is the same as the value type of the input.One
      -- can think of this aligner as a rate but without time units; that is, the
      -- output is conceptually (second_point - first_point).
    | AlignRate
      -- ^ @ALIGN_RATE@
      -- Align and convert to a rate. This alignment is valid for cumulative
      -- metrics and delta metrics with numeric values. The output is a gauge
      -- metric with value type DOUBLE.One can think of this aligner as
      -- conceptually providing the slope of the line that passes through the
      -- value at the start and end of the window. In other words, this is
      -- conceptually ((y1 - y0)\/(t1 - t0)), and the output unit is one that has
      -- a \"\/time\" dimension.If, by rate, you are looking for percentage
      -- change, see the ALIGN_PERCENT_CHANGE aligner option.
    | AlignInterpolate
      -- ^ @ALIGN_INTERPOLATE@
      -- Align by interpolating between adjacent points around the period
      -- boundary. This alignment is valid for gauge metrics with numeric values.
      -- The value type of the result is the same as the value type of the input.
    | AlignNextOlder
      -- ^ @ALIGN_NEXT_OLDER@
      -- Align by shifting the oldest data point before the period boundary to
      -- the boundary. This alignment is valid for gauge metrics. The value type
      -- of the result is the same as the value type of the input.
    | AlignMin
      -- ^ @ALIGN_MIN@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the minimum of all data points in the period. This
      -- alignment is valid for gauge and delta metrics with numeric values. The
      -- value type of the result is the same as the value type of the input.
    | AlignMax
      -- ^ @ALIGN_MAX@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the maximum of all data points in the period. This
      -- alignment is valid for gauge and delta metrics with numeric values. The
      -- value type of the result is the same as the value type of the input.
    | AlignMean
      -- ^ @ALIGN_MEAN@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the average or arithmetic mean of all data points in
      -- the period. This alignment is valid for gauge and delta metrics with
      -- numeric values. The value type of the output is DOUBLE.
    | AlignCount
      -- ^ @ALIGN_COUNT@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the count of all data points in the period. This
      -- alignment is valid for gauge and delta metrics with numeric or Boolean
      -- values. The value type of the output is INT64.
    | AlignSum
      -- ^ @ALIGN_SUM@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the sum of all data points in the period. This
      -- alignment is valid for gauge and delta metrics with numeric and
      -- distribution values. The value type of the output is the same as the
      -- value type of the input.
    | AlignStddev
      -- ^ @ALIGN_STDDEV@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the standard deviation of all data points in the
      -- period. This alignment is valid for gauge and delta metrics with numeric
      -- values. The value type of the output is DOUBLE.
    | AlignCountTrue
      -- ^ @ALIGN_COUNT_TRUE@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the count of True-valued data points in the period.
      -- This alignment is valid for gauge metrics with Boolean values. The value
      -- type of the output is INT64.
    | AlignCountFalse
      -- ^ @ALIGN_COUNT_FALSE@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the count of False-valued data points in the period.
      -- This alignment is valid for gauge metrics with Boolean values. The value
      -- type of the output is INT64.
    | AlignFractionTrue
      -- ^ @ALIGN_FRACTION_TRUE@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the fraction of True-valued data points in the
      -- period. This alignment is valid for gauge metrics with Boolean values.
      -- The output value is in the range 0, 1 and has value type DOUBLE.
    | AlignPercentile99
      -- ^ @ALIGN_PERCENTILE_99@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the 99th percentile of all data points in the
      -- period. This alignment is valid for gauge and delta metrics with
      -- distribution values. The output is a gauge metric with value type
      -- DOUBLE.
    | AlignPercentile95
      -- ^ @ALIGN_PERCENTILE_95@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the 95th percentile of all data points in the
      -- period. This alignment is valid for gauge and delta metrics with
      -- distribution values. The output is a gauge metric with value type
      -- DOUBLE.
    | AlignPercentile50
      -- ^ @ALIGN_PERCENTILE_50@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the 50th percentile of all data points in the
      -- period. This alignment is valid for gauge and delta metrics with
      -- distribution values. The output is a gauge metric with value type
      -- DOUBLE.
    | AlignPercentile05
      -- ^ @ALIGN_PERCENTILE_05@
      -- Align time series via aggregation. The resulting data point in the
      -- alignment period is the 5th percentile of all data points in the period.
      -- This alignment is valid for gauge and delta metrics with distribution
      -- values. The output is a gauge metric with value type DOUBLE.
    | AlignPercentChange
      -- ^ @ALIGN_PERCENT_CHANGE@
      -- Align and convert to a percentage change. This alignment is valid for
      -- gauge and delta metrics with numeric values. This alignment conceptually
      -- computes the equivalent of \"((current - previous)\/previous)*100\"
      -- where previous value is determined based on the alignmentPeriod. In the
      -- event that previous is 0 the calculated value is infinity with the
      -- exception that if both (current - previous) and previous are 0 the
      -- calculated value is 0. A 10 minute moving mean is computed at each point
      -- of the time window prior to the above calculation to smooth the metric
      -- and prevent false positives from very short lived spikes. Only
      -- applicable for data that is >= 0. Any values \< 0 are treated as no
      -- data. While delta metrics are accepted by this alignment special care
      -- should be taken that the values for the metric will always be positive.
      -- The output is a gauge metric with value type DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AggregationPerSeriesAligner

instance FromHttpApiData AggregationPerSeriesAligner where
    parseQueryParam = \case
        "ALIGN_NONE" -> Right AlignNone
        "ALIGN_DELTA" -> Right AlignDelta
        "ALIGN_RATE" -> Right AlignRate
        "ALIGN_INTERPOLATE" -> Right AlignInterpolate
        "ALIGN_NEXT_OLDER" -> Right AlignNextOlder
        "ALIGN_MIN" -> Right AlignMin
        "ALIGN_MAX" -> Right AlignMax
        "ALIGN_MEAN" -> Right AlignMean
        "ALIGN_COUNT" -> Right AlignCount
        "ALIGN_SUM" -> Right AlignSum
        "ALIGN_STDDEV" -> Right AlignStddev
        "ALIGN_COUNT_TRUE" -> Right AlignCountTrue
        "ALIGN_COUNT_FALSE" -> Right AlignCountFalse
        "ALIGN_FRACTION_TRUE" -> Right AlignFractionTrue
        "ALIGN_PERCENTILE_99" -> Right AlignPercentile99
        "ALIGN_PERCENTILE_95" -> Right AlignPercentile95
        "ALIGN_PERCENTILE_50" -> Right AlignPercentile50
        "ALIGN_PERCENTILE_05" -> Right AlignPercentile05
        "ALIGN_PERCENT_CHANGE" -> Right AlignPercentChange
        x -> Left ("Unable to parse AggregationPerSeriesAligner from: " <> x)

instance ToHttpApiData AggregationPerSeriesAligner where
    toQueryParam = \case
        AlignNone -> "ALIGN_NONE"
        AlignDelta -> "ALIGN_DELTA"
        AlignRate -> "ALIGN_RATE"
        AlignInterpolate -> "ALIGN_INTERPOLATE"
        AlignNextOlder -> "ALIGN_NEXT_OLDER"
        AlignMin -> "ALIGN_MIN"
        AlignMax -> "ALIGN_MAX"
        AlignMean -> "ALIGN_MEAN"
        AlignCount -> "ALIGN_COUNT"
        AlignSum -> "ALIGN_SUM"
        AlignStddev -> "ALIGN_STDDEV"
        AlignCountTrue -> "ALIGN_COUNT_TRUE"
        AlignCountFalse -> "ALIGN_COUNT_FALSE"
        AlignFractionTrue -> "ALIGN_FRACTION_TRUE"
        AlignPercentile99 -> "ALIGN_PERCENTILE_99"
        AlignPercentile95 -> "ALIGN_PERCENTILE_95"
        AlignPercentile50 -> "ALIGN_PERCENTILE_50"
        AlignPercentile05 -> "ALIGN_PERCENTILE_05"
        AlignPercentChange -> "ALIGN_PERCENT_CHANGE"

instance FromJSON AggregationPerSeriesAligner where
    parseJSON = parseJSONText "AggregationPerSeriesAligner"

instance ToJSON AggregationPerSeriesAligner where
    toJSON = toJSONText

-- | The field type.
data FieldKind
    = TypeUnknown
      -- ^ @TYPE_UNKNOWN@
      -- Field type unknown.
    | TypeDouble
      -- ^ @TYPE_DOUBLE@
      -- Field type double.
    | TypeFloat
      -- ^ @TYPE_FLOAT@
      -- Field type float.
    | TypeINT64
      -- ^ @TYPE_INT64@
      -- Field type int64.
    | TypeUINT64
      -- ^ @TYPE_UINT64@
      -- Field type uint64.
    | TypeINT32
      -- ^ @TYPE_INT32@
      -- Field type int32.
    | TypeFIXED64
      -- ^ @TYPE_FIXED64@
      -- Field type fixed64.
    | TypeFIXED32
      -- ^ @TYPE_FIXED32@
      -- Field type fixed32.
    | TypeBool
      -- ^ @TYPE_BOOL@
      -- Field type bool.
    | TypeString
      -- ^ @TYPE_STRING@
      -- Field type string.
    | TypeGroup
      -- ^ @TYPE_GROUP@
      -- Field type group. Proto2 syntax only, and deprecated.
    | TypeMessage
      -- ^ @TYPE_MESSAGE@
      -- Field type message.
    | TypeBytes
      -- ^ @TYPE_BYTES@
      -- Field type bytes.
    | TypeUINT32
      -- ^ @TYPE_UINT32@
      -- Field type uint32.
    | TypeEnum
      -- ^ @TYPE_ENUM@
      -- Field type enum.
    | TypeSFIXED32
      -- ^ @TYPE_SFIXED32@
      -- Field type sfixed32.
    | TypeSFIXED64
      -- ^ @TYPE_SFIXED64@
      -- Field type sfixed64.
    | TypeSINT32
      -- ^ @TYPE_SINT32@
      -- Field type sint32.
    | TypeSINT64
      -- ^ @TYPE_SINT64@
      -- Field type sint64.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FieldKind

instance FromHttpApiData FieldKind where
    parseQueryParam = \case
        "TYPE_UNKNOWN" -> Right TypeUnknown
        "TYPE_DOUBLE" -> Right TypeDouble
        "TYPE_FLOAT" -> Right TypeFloat
        "TYPE_INT64" -> Right TypeINT64
        "TYPE_UINT64" -> Right TypeUINT64
        "TYPE_INT32" -> Right TypeINT32
        "TYPE_FIXED64" -> Right TypeFIXED64
        "TYPE_FIXED32" -> Right TypeFIXED32
        "TYPE_BOOL" -> Right TypeBool
        "TYPE_STRING" -> Right TypeString
        "TYPE_GROUP" -> Right TypeGroup
        "TYPE_MESSAGE" -> Right TypeMessage
        "TYPE_BYTES" -> Right TypeBytes
        "TYPE_UINT32" -> Right TypeUINT32
        "TYPE_ENUM" -> Right TypeEnum
        "TYPE_SFIXED32" -> Right TypeSFIXED32
        "TYPE_SFIXED64" -> Right TypeSFIXED64
        "TYPE_SINT32" -> Right TypeSINT32
        "TYPE_SINT64" -> Right TypeSINT64
        x -> Left ("Unable to parse FieldKind from: " <> x)

instance ToHttpApiData FieldKind where
    toQueryParam = \case
        TypeUnknown -> "TYPE_UNKNOWN"
        TypeDouble -> "TYPE_DOUBLE"
        TypeFloat -> "TYPE_FLOAT"
        TypeINT64 -> "TYPE_INT64"
        TypeUINT64 -> "TYPE_UINT64"
        TypeINT32 -> "TYPE_INT32"
        TypeFIXED64 -> "TYPE_FIXED64"
        TypeFIXED32 -> "TYPE_FIXED32"
        TypeBool -> "TYPE_BOOL"
        TypeString -> "TYPE_STRING"
        TypeGroup -> "TYPE_GROUP"
        TypeMessage -> "TYPE_MESSAGE"
        TypeBytes -> "TYPE_BYTES"
        TypeUINT32 -> "TYPE_UINT32"
        TypeEnum -> "TYPE_ENUM"
        TypeSFIXED32 -> "TYPE_SFIXED32"
        TypeSFIXED64 -> "TYPE_SFIXED64"
        TypeSINT32 -> "TYPE_SINT32"
        TypeSINT64 -> "TYPE_SINT64"

instance FromJSON FieldKind where
    parseJSON = parseJSONText "FieldKind"

instance ToJSON FieldKind where
    toJSON = toJSONText

-- | The approach to be used to combine time series. Not all reducer
-- functions may be applied to all time series, depending on the metric
-- type and the value type of the original time series. Reduction may
-- change the metric type of value type of the time series.Time series data
-- must be aligned in order to perform cross-time series reduction. If
-- crossSeriesReducer is specified, then perSeriesAligner must be specified
-- and not equal ALIGN_NONE and alignmentPeriod must be specified;
-- otherwise, an error is returned.
data AggregationCrossSeriesReducer
    = ReduceNone
      -- ^ @REDUCE_NONE@
      -- No cross-time series reduction. The output of the aligner is returned.
    | ReduceMean
      -- ^ @REDUCE_MEAN@
      -- Reduce by computing the mean across time series for each alignment
      -- period. This reducer is valid for delta and gauge metrics with numeric
      -- or distribution values. The value type of the output is DOUBLE.
    | ReduceMin
      -- ^ @REDUCE_MIN@
      -- Reduce by computing the minimum across time series for each alignment
      -- period. This reducer is valid for delta and gauge metrics with numeric
      -- values. The value type of the output is the same as the value type of
      -- the input.
    | ReduceMax
      -- ^ @REDUCE_MAX@
      -- Reduce by computing the maximum across time series for each alignment
      -- period. This reducer is valid for delta and gauge metrics with numeric
      -- values. The value type of the output is the same as the value type of
      -- the input.
    | ReduceSum
      -- ^ @REDUCE_SUM@
      -- Reduce by computing the sum across time series for each alignment
      -- period. This reducer is valid for delta and gauge metrics with numeric
      -- and distribution values. The value type of the output is the same as the
      -- value type of the input.
    | ReduceStddev
      -- ^ @REDUCE_STDDEV@
      -- Reduce by computing the standard deviation across time series for each
      -- alignment period. This reducer is valid for delta and gauge metrics with
      -- numeric or distribution values. The value type of the output is DOUBLE.
    | ReduceCount
      -- ^ @REDUCE_COUNT@
      -- Reduce by computing the count of data points across time series for each
      -- alignment period. This reducer is valid for delta and gauge metrics of
      -- numeric, Boolean, distribution, and string value type. The value type of
      -- the output is INT64.
    | ReduceCountTrue
      -- ^ @REDUCE_COUNT_TRUE@
      -- Reduce by computing the count of True-valued data points across time
      -- series for each alignment period. This reducer is valid for delta and
      -- gauge metrics of Boolean value type. The value type of the output is
      -- INT64.
    | ReduceCountFalse
      -- ^ @REDUCE_COUNT_FALSE@
      -- Reduce by computing the count of False-valued data points across time
      -- series for each alignment period. This reducer is valid for delta and
      -- gauge metrics of Boolean value type. The value type of the output is
      -- INT64.
    | ReduceFractionTrue
      -- ^ @REDUCE_FRACTION_TRUE@
      -- Reduce by computing the fraction of True-valued data points across time
      -- series for each alignment period. This reducer is valid for delta and
      -- gauge metrics of Boolean value type. The output value is in the range 0,
      -- 1 and has value type DOUBLE.
    | ReducePercentile99
      -- ^ @REDUCE_PERCENTILE_99@
      -- Reduce by computing 99th percentile of data points across time series
      -- for each alignment period. This reducer is valid for gauge and delta
      -- metrics of numeric and distribution type. The value of the output is
      -- DOUBLE
    | ReducePercentile95
      -- ^ @REDUCE_PERCENTILE_95@
      -- Reduce by computing 95th percentile of data points across time series
      -- for each alignment period. This reducer is valid for gauge and delta
      -- metrics of numeric and distribution type. The value of the output is
      -- DOUBLE
    | ReducePercentile50
      -- ^ @REDUCE_PERCENTILE_50@
      -- Reduce by computing 50th percentile of data points across time series
      -- for each alignment period. This reducer is valid for gauge and delta
      -- metrics of numeric and distribution type. The value of the output is
      -- DOUBLE
    | ReducePercentile05
      -- ^ @REDUCE_PERCENTILE_05@
      -- Reduce by computing 5th percentile of data points across time series for
      -- each alignment period. This reducer is valid for gauge and delta metrics
      -- of numeric and distribution type. The value of the output is DOUBLE
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AggregationCrossSeriesReducer

instance FromHttpApiData AggregationCrossSeriesReducer where
    parseQueryParam = \case
        "REDUCE_NONE" -> Right ReduceNone
        "REDUCE_MEAN" -> Right ReduceMean
        "REDUCE_MIN" -> Right ReduceMin
        "REDUCE_MAX" -> Right ReduceMax
        "REDUCE_SUM" -> Right ReduceSum
        "REDUCE_STDDEV" -> Right ReduceStddev
        "REDUCE_COUNT" -> Right ReduceCount
        "REDUCE_COUNT_TRUE" -> Right ReduceCountTrue
        "REDUCE_COUNT_FALSE" -> Right ReduceCountFalse
        "REDUCE_FRACTION_TRUE" -> Right ReduceFractionTrue
        "REDUCE_PERCENTILE_99" -> Right ReducePercentile99
        "REDUCE_PERCENTILE_95" -> Right ReducePercentile95
        "REDUCE_PERCENTILE_50" -> Right ReducePercentile50
        "REDUCE_PERCENTILE_05" -> Right ReducePercentile05
        x -> Left ("Unable to parse AggregationCrossSeriesReducer from: " <> x)

instance ToHttpApiData AggregationCrossSeriesReducer where
    toQueryParam = \case
        ReduceNone -> "REDUCE_NONE"
        ReduceMean -> "REDUCE_MEAN"
        ReduceMin -> "REDUCE_MIN"
        ReduceMax -> "REDUCE_MAX"
        ReduceSum -> "REDUCE_SUM"
        ReduceStddev -> "REDUCE_STDDEV"
        ReduceCount -> "REDUCE_COUNT"
        ReduceCountTrue -> "REDUCE_COUNT_TRUE"
        ReduceCountFalse -> "REDUCE_COUNT_FALSE"
        ReduceFractionTrue -> "REDUCE_FRACTION_TRUE"
        ReducePercentile99 -> "REDUCE_PERCENTILE_99"
        ReducePercentile95 -> "REDUCE_PERCENTILE_95"
        ReducePercentile50 -> "REDUCE_PERCENTILE_50"
        ReducePercentile05 -> "REDUCE_PERCENTILE_05"

instance FromJSON AggregationCrossSeriesReducer where
    parseJSON = parseJSONText "AggregationCrossSeriesReducer"

instance ToJSON AggregationCrossSeriesReducer where
    toJSON = toJSONText

-- | The launch stage of the metric definition.
data MetricDescriptorMetadataLaunchStage
    = LaunchStageUnspecified
      -- ^ @LAUNCH_STAGE_UNSPECIFIED@
      -- Do not use this default value.
    | EarlyAccess
      -- ^ @EARLY_ACCESS@
      -- Early Access features are limited to a closed group of testers. To use
      -- these features, you must sign up in advance and sign a Trusted Tester
      -- agreement (which includes confidentiality provisions). These features
      -- may be unstable, changed in backward-incompatible ways, and are not
      -- guaranteed to be released.
    | Alpha
      -- ^ @ALPHA@
      -- Alpha is a limited availability test for releases before they are
      -- cleared for widespread use. By Alpha, all significant design issues are
      -- resolved and we are in the process of verifying functionality. Alpha
      -- customers need to apply for access, agree to applicable terms, and have
      -- their projects whitelisted. Alpha releases don’t have to be feature
      -- complete, no SLAs are provided, and there are no technical support
      -- obligations, but they will be far enough along that customers can
      -- actually use them in test environments or for limited-use tests -- just
      -- like they would in normal production cases.
    | Beta
      -- ^ @BETA@
      -- Beta is the point at which we are ready to open a release for any
      -- customer to use. There are no SLA or technical support obligations in a
      -- Beta release. Products will be complete from a feature perspective, but
      -- may have some open outstanding issues. Beta releases are suitable for
      -- limited production use cases.
    | GA
      -- ^ @GA@
      -- GA features are open to all developers and are considered stable and
      -- fully qualified for production use.
    | Deprecated
      -- ^ @DEPRECATED@
      -- Deprecated features are scheduled to be shut down and removed. For more
      -- information, see the “Deprecation Policy” section of our Terms of
      -- Service (https:\/\/cloud.google.com\/terms\/) and the Google Cloud
      -- Platform Subject to the Deprecation Policy
      -- (https:\/\/cloud.google.com\/terms\/deprecation) documentation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricDescriptorMetadataLaunchStage

instance FromHttpApiData MetricDescriptorMetadataLaunchStage where
    parseQueryParam = \case
        "LAUNCH_STAGE_UNSPECIFIED" -> Right LaunchStageUnspecified
        "EARLY_ACCESS" -> Right EarlyAccess
        "ALPHA" -> Right Alpha
        "BETA" -> Right Beta
        "GA" -> Right GA
        "DEPRECATED" -> Right Deprecated
        x -> Left ("Unable to parse MetricDescriptorMetadataLaunchStage from: " <> x)

instance ToHttpApiData MetricDescriptorMetadataLaunchStage where
    toQueryParam = \case
        LaunchStageUnspecified -> "LAUNCH_STAGE_UNSPECIFIED"
        EarlyAccess -> "EARLY_ACCESS"
        Alpha -> "ALPHA"
        Beta -> "BETA"
        GA -> "GA"
        Deprecated -> "DEPRECATED"

instance FromJSON MetricDescriptorMetadataLaunchStage where
    parseJSON = parseJSONText "MetricDescriptorMetadataLaunchStage"

instance ToJSON MetricDescriptorMetadataLaunchStage where
    toJSON = toJSONText

-- | Indicates whether this channel has been verified or not. On a
-- ListNotificationChannels or GetNotificationChannel operation, this field
-- is expected to be populated.If the value is UNVERIFIED, then it
-- indicates that the channel is non-functioning (it both requires
-- verification and lacks verification); otherwise, it is assumed that the
-- channel works.If the channel is neither VERIFIED nor UNVERIFIED, it
-- implies that the channel is of a type that does not require verification
-- or that this specific channel has been exempted from verification
-- because it was created prior to verification being required for channels
-- of this type.This field cannot be modified using a standard
-- UpdateNotificationChannel operation. To change the value of this field,
-- you must call VerifyNotificationChannel.
data NotificationChannelVerificationStatus
    = VerificationStatusUnspecified
      -- ^ @VERIFICATION_STATUS_UNSPECIFIED@
      -- Sentinel value used to indicate that the state is unknown, omitted, or
      -- is not applicable (as in the case of channels that neither support nor
      -- require verification in order to function).
    | Unverified
      -- ^ @UNVERIFIED@
      -- The channel has yet to be verified and requires verification to
      -- function. Note that this state also applies to the case where the
      -- verification process has been initiated by sending a verification code
      -- but where the verification code has not been submitted to complete the
      -- process.
    | Verified
      -- ^ @VERIFIED@
      -- It has been proven that notifications can be received on this
      -- notification channel and that someone on the project has access to
      -- messages that are delivered to that channel.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NotificationChannelVerificationStatus

instance FromHttpApiData NotificationChannelVerificationStatus where
    parseQueryParam = \case
        "VERIFICATION_STATUS_UNSPECIFIED" -> Right VerificationStatusUnspecified
        "UNVERIFIED" -> Right Unverified
        "VERIFIED" -> Right Verified
        x -> Left ("Unable to parse NotificationChannelVerificationStatus from: " <> x)

instance ToHttpApiData NotificationChannelVerificationStatus where
    toQueryParam = \case
        VerificationStatusUnspecified -> "VERIFICATION_STATUS_UNSPECIFIED"
        Unverified -> "UNVERIFIED"
        Verified -> "VERIFIED"

instance FromJSON NotificationChannelVerificationStatus where
    parseJSON = parseJSONText "NotificationChannelVerificationStatus"

instance ToJSON NotificationChannelVerificationStatus where
    toJSON = toJSONText

-- | The type of data that can be assigned to the label.
data LabelDescriptorValueType
    = String
      -- ^ @STRING@
      -- A variable-length string. This is the default.
    | Bool
      -- ^ @BOOL@
      -- Boolean; true or false.
    | INT64
      -- ^ @INT64@
      -- A 64-bit signed integer.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LabelDescriptorValueType

instance FromHttpApiData LabelDescriptorValueType where
    parseQueryParam = \case
        "STRING" -> Right String
        "BOOL" -> Right Bool
        "INT64" -> Right INT64
        x -> Left ("Unable to parse LabelDescriptorValueType from: " <> x)

instance ToHttpApiData LabelDescriptorValueType where
    toQueryParam = \case
        String -> "STRING"
        Bool -> "BOOL"
        INT64 -> "INT64"

instance FromJSON LabelDescriptorValueType where
    parseJSON = parseJSONText "LabelDescriptorValueType"

instance ToJSON LabelDescriptorValueType where
    toJSON = toJSONText

-- | The source syntax.
data TypeSyntax
    = SyntaxPROTO2
      -- ^ @SYNTAX_PROTO2@
      -- Syntax proto2.
    | SyntaxPROTO3
      -- ^ @SYNTAX_PROTO3@
      -- Syntax proto3.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TypeSyntax

instance FromHttpApiData TypeSyntax where
    parseQueryParam = \case
        "SYNTAX_PROTO2" -> Right SyntaxPROTO2
        "SYNTAX_PROTO3" -> Right SyntaxPROTO3
        x -> Left ("Unable to parse TypeSyntax from: " <> x)

instance ToHttpApiData TypeSyntax where
    toQueryParam = \case
        SyntaxPROTO2 -> "SYNTAX_PROTO2"
        SyntaxPROTO3 -> "SYNTAX_PROTO3"

instance FromJSON TypeSyntax where
    parseJSON = parseJSONText "TypeSyntax"

instance ToJSON TypeSyntax where
    toJSON = toJSONText

-- | The resource type of the group members.
data ResourceGroupResourceType
    = ResourceTypeUnspecified
      -- ^ @RESOURCE_TYPE_UNSPECIFIED@
      -- Default value (not valid).
    | Instance
      -- ^ @INSTANCE@
      -- A group of instances from Google Cloud Platform (GCP) or Amazon Web
      -- Services (AWS).
    | AwsElbLoadBalancer
      -- ^ @AWS_ELB_LOAD_BALANCER@
      -- A group of Amazon ELB load balancers.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourceGroupResourceType

instance FromHttpApiData ResourceGroupResourceType where
    parseQueryParam = \case
        "RESOURCE_TYPE_UNSPECIFIED" -> Right ResourceTypeUnspecified
        "INSTANCE" -> Right Instance
        "AWS_ELB_LOAD_BALANCER" -> Right AwsElbLoadBalancer
        x -> Left ("Unable to parse ResourceGroupResourceType from: " <> x)

instance ToHttpApiData ResourceGroupResourceType where
    toQueryParam = \case
        ResourceTypeUnspecified -> "RESOURCE_TYPE_UNSPECIFIED"
        Instance -> "INSTANCE"
        AwsElbLoadBalancer -> "AWS_ELB_LOAD_BALANCER"

instance FromJSON ResourceGroupResourceType where
    parseJSON = parseJSONText "ResourceGroupResourceType"

instance ToJSON ResourceGroupResourceType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The metric kind of the time series. When listing time series, this
-- metric kind might be different from the metric kind of the associated
-- metric if this time series is an alignment or reduction of other time
-- series.When creating a time series, this field is optional. If present,
-- it must be the same as the metric kind of the associated metric. If the
-- associated metric\'s descriptor must be auto-created, then this field
-- specifies the metric kind of the new descriptor and must be either GAUGE
-- (the default) or CUMULATIVE.
data TimeSeriesMetricKind
    = TSMKMetricKindUnspecified
      -- ^ @METRIC_KIND_UNSPECIFIED@
      -- Do not use this default value.
    | TSMKGauge
      -- ^ @GAUGE@
      -- An instantaneous measurement of a value.
    | TSMKDelta
      -- ^ @DELTA@
      -- The change in a value during a time interval.
    | TSMKCumulative
      -- ^ @CUMULATIVE@
      -- A value accumulated over a time interval. Cumulative measurements in a
      -- time series should have the same start time and increasing end times,
      -- until an event resets the cumulative value to zero and sets a new start
      -- time for the following points.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TimeSeriesMetricKind

instance FromHttpApiData TimeSeriesMetricKind where
    parseQueryParam = \case
        "METRIC_KIND_UNSPECIFIED" -> Right TSMKMetricKindUnspecified
        "GAUGE" -> Right TSMKGauge
        "DELTA" -> Right TSMKDelta
        "CUMULATIVE" -> Right TSMKCumulative
        x -> Left ("Unable to parse TimeSeriesMetricKind from: " <> x)

instance ToHttpApiData TimeSeriesMetricKind where
    toQueryParam = \case
        TSMKMetricKindUnspecified -> "METRIC_KIND_UNSPECIFIED"
        TSMKGauge -> "GAUGE"
        TSMKDelta -> "DELTA"
        TSMKCumulative -> "CUMULATIVE"

instance FromJSON TimeSeriesMetricKind where
    parseJSON = parseJSONText "TimeSeriesMetricKind"

instance ToJSON TimeSeriesMetricKind where
    toJSON = toJSONText

-- | The value type of the time series. When listing time series, this value
-- type might be different from the value type of the associated metric if
-- this time series is an alignment or reduction of other time series.When
-- creating a time series, this field is optional. If present, it must be
-- the same as the type of the data in the points field.
data TimeSeriesValueType
    = TSVTValueTypeUnspecified
      -- ^ @VALUE_TYPE_UNSPECIFIED@
      -- Do not use this default value.
    | TSVTBool
      -- ^ @BOOL@
      -- The value is a boolean. This value type can be used only if the metric
      -- kind is GAUGE.
    | TSVTINT64
      -- ^ @INT64@
      -- The value is a signed 64-bit integer.
    | TSVTDouble
      -- ^ @DOUBLE@
      -- The value is a double precision floating point number.
    | TSVTString
      -- ^ @STRING@
      -- The value is a text string. This value type can be used only if the
      -- metric kind is GAUGE.
    | TSVTDistribution
      -- ^ @DISTRIBUTION@
      -- The value is a Distribution.
    | TSVTMoney
      -- ^ @MONEY@
      -- The value is money.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TimeSeriesValueType

instance FromHttpApiData TimeSeriesValueType where
    parseQueryParam = \case
        "VALUE_TYPE_UNSPECIFIED" -> Right TSVTValueTypeUnspecified
        "BOOL" -> Right TSVTBool
        "INT64" -> Right TSVTINT64
        "DOUBLE" -> Right TSVTDouble
        "STRING" -> Right TSVTString
        "DISTRIBUTION" -> Right TSVTDistribution
        "MONEY" -> Right TSVTMoney
        x -> Left ("Unable to parse TimeSeriesValueType from: " <> x)

instance ToHttpApiData TimeSeriesValueType where
    toQueryParam = \case
        TSVTValueTypeUnspecified -> "VALUE_TYPE_UNSPECIFIED"
        TSVTBool -> "BOOL"
        TSVTINT64 -> "INT64"
        TSVTDouble -> "DOUBLE"
        TSVTString -> "STRING"
        TSVTDistribution -> "DISTRIBUTION"
        TSVTMoney -> "MONEY"

instance FromJSON TimeSeriesValueType where
    parseJSON = parseJSONText "TimeSeriesValueType"

instance ToJSON TimeSeriesValueType where
    toJSON = toJSONText

-- | How to combine the results of multiple conditions to determine if an
-- incident should be opened.
data AlertPolicyCombiner
    = CombineUnspecified
      -- ^ @COMBINE_UNSPECIFIED@
      -- An unspecified combiner.
    | And
      -- ^ @AND@
      -- Combine conditions using the logical AND operator. An incident is
      -- created only if all conditions are met simultaneously. This combiner is
      -- satisfied if all conditions are met, even if they are met on completely
      -- different resources.
    | OR
      -- ^ @OR@
      -- Combine conditions using the logical OR operator. An incident is created
      -- if any of the listed conditions is met.
    | AndWithMatchingResource
      -- ^ @AND_WITH_MATCHING_RESOURCE@
      -- Combine conditions using logical AND operator, but unlike the regular
      -- AND option, an incident is created only if all conditions are met
      -- simultaneously on at least one resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AlertPolicyCombiner

instance FromHttpApiData AlertPolicyCombiner where
    parseQueryParam = \case
        "COMBINE_UNSPECIFIED" -> Right CombineUnspecified
        "AND" -> Right And
        "OR" -> Right OR
        "AND_WITH_MATCHING_RESOURCE" -> Right AndWithMatchingResource
        x -> Left ("Unable to parse AlertPolicyCombiner from: " <> x)

instance ToHttpApiData AlertPolicyCombiner where
    toQueryParam = \case
        CombineUnspecified -> "COMBINE_UNSPECIFIED"
        And -> "AND"
        OR -> "OR"
        AndWithMatchingResource -> "AND_WITH_MATCHING_RESOURCE"

instance FromJSON AlertPolicyCombiner where
    parseJSON = parseJSONText "AlertPolicyCombiner"

instance ToJSON AlertPolicyCombiner where
    toJSON = toJSONText

-- | The field cardinality.
data FieldCardinality
    = CardinalityUnknown
      -- ^ @CARDINALITY_UNKNOWN@
      -- For fields with unknown cardinality.
    | CardinalityOptional
      -- ^ @CARDINALITY_OPTIONAL@
      -- For optional fields.
    | CardinalityRequired
      -- ^ @CARDINALITY_REQUIRED@
      -- For required fields. Proto2 syntax only.
    | CardinalityRepeated
      -- ^ @CARDINALITY_REPEATED@
      -- For repeated fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FieldCardinality

instance FromHttpApiData FieldCardinality where
    parseQueryParam = \case
        "CARDINALITY_UNKNOWN" -> Right CardinalityUnknown
        "CARDINALITY_OPTIONAL" -> Right CardinalityOptional
        "CARDINALITY_REQUIRED" -> Right CardinalityRequired
        "CARDINALITY_REPEATED" -> Right CardinalityRepeated
        x -> Left ("Unable to parse FieldCardinality from: " <> x)

instance ToHttpApiData FieldCardinality where
    toQueryParam = \case
        CardinalityUnknown -> "CARDINALITY_UNKNOWN"
        CardinalityOptional -> "CARDINALITY_OPTIONAL"
        CardinalityRequired -> "CARDINALITY_REQUIRED"
        CardinalityRepeated -> "CARDINALITY_REPEATED"

instance FromJSON FieldCardinality where
    parseJSON = parseJSONText "FieldCardinality"

instance ToJSON FieldCardinality where
    toJSON = toJSONText

-- | Whether the metric records instantaneous values, changes to a value,
-- etc. Some combinations of metric_kind and value_type might not be
-- supported.
data MetricDescriptorMetricKind
    = MDMKMetricKindUnspecified
      -- ^ @METRIC_KIND_UNSPECIFIED@
      -- Do not use this default value.
    | MDMKGauge
      -- ^ @GAUGE@
      -- An instantaneous measurement of a value.
    | MDMKDelta
      -- ^ @DELTA@
      -- The change in a value during a time interval.
    | MDMKCumulative
      -- ^ @CUMULATIVE@
      -- A value accumulated over a time interval. Cumulative measurements in a
      -- time series should have the same start time and increasing end times,
      -- until an event resets the cumulative value to zero and sets a new start
      -- time for the following points.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricDescriptorMetricKind

instance FromHttpApiData MetricDescriptorMetricKind where
    parseQueryParam = \case
        "METRIC_KIND_UNSPECIFIED" -> Right MDMKMetricKindUnspecified
        "GAUGE" -> Right MDMKGauge
        "DELTA" -> Right MDMKDelta
        "CUMULATIVE" -> Right MDMKCumulative
        x -> Left ("Unable to parse MetricDescriptorMetricKind from: " <> x)

instance ToHttpApiData MetricDescriptorMetricKind where
    toQueryParam = \case
        MDMKMetricKindUnspecified -> "METRIC_KIND_UNSPECIFIED"
        MDMKGauge -> "GAUGE"
        MDMKDelta -> "DELTA"
        MDMKCumulative -> "CUMULATIVE"

instance FromJSON MetricDescriptorMetricKind where
    parseJSON = parseJSONText "MetricDescriptorMetricKind"

instance ToJSON MetricDescriptorMetricKind where
    toJSON = toJSONText

-- | The current operational state of the internal checker.
data InternalCheckerState
    = Unspecified
      -- ^ @UNSPECIFIED@
      -- An internal checker should never be in the unspecified state.
    | Creating
      -- ^ @CREATING@
      -- The checker is being created, provisioned, and configured. A checker in
      -- this state can be returned by ListInternalCheckers or
      -- GetInternalChecker, as well as by examining the longrunning.Operation
      -- that created it.
    | Running
      -- ^ @RUNNING@
      -- The checker is running and available for use. A checker in this state
      -- can be returned by ListInternalCheckers or GetInternalChecker as well as
      -- by examining the longrunning.Operation that created it. If a checker is
      -- being torn down, it is neither visible nor usable, so there is no
      -- \"deleting\" or \"down\" state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InternalCheckerState

instance FromHttpApiData InternalCheckerState where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "CREATING" -> Right Creating
        "RUNNING" -> Right Running
        x -> Left ("Unable to parse InternalCheckerState from: " <> x)

instance ToHttpApiData InternalCheckerState where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        Creating -> "CREATING"
        Running -> "RUNNING"

instance FromJSON InternalCheckerState where
    parseJSON = parseJSONText "InternalCheckerState"

instance ToJSON InternalCheckerState where
    toJSON = toJSONText
