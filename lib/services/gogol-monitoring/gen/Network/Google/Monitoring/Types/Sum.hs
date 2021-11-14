{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Monitoring.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Monitoring.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

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

-- | The product launch stage for channels of this type.
data NotificationChannelDescriptorLaunchStage
    = LaunchStageUnspecified
      -- ^ @LAUNCH_STAGE_UNSPECIFIED@
      -- Do not use this default value.
    | Unimplemented
      -- ^ @UNIMPLEMENTED@
      -- The feature is not yet implemented. Users can not use it.
    | Prelaunch
      -- ^ @PRELAUNCH@
      -- Prelaunch features are hidden from users and are only visible
      -- internally.
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
      -- their projects allowlisted. Alpha releases don’t have to be feature
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

instance Hashable NotificationChannelDescriptorLaunchStage

instance FromHttpApiData NotificationChannelDescriptorLaunchStage where
    parseQueryParam = \case
        "LAUNCH_STAGE_UNSPECIFIED" -> Right LaunchStageUnspecified
        "UNIMPLEMENTED" -> Right Unimplemented
        "PRELAUNCH" -> Right Prelaunch
        "EARLY_ACCESS" -> Right EarlyAccess
        "ALPHA" -> Right Alpha
        "BETA" -> Right Beta
        "GA" -> Right GA
        "DEPRECATED" -> Right Deprecated
        x -> Left ("Unable to parse NotificationChannelDescriptorLaunchStage from: " <> x)

instance ToHttpApiData NotificationChannelDescriptorLaunchStage where
    toQueryParam = \case
        LaunchStageUnspecified -> "LAUNCH_STAGE_UNSPECIFIED"
        Unimplemented -> "UNIMPLEMENTED"
        Prelaunch -> "PRELAUNCH"
        EarlyAccess -> "EARLY_ACCESS"
        Alpha -> "ALPHA"
        Beta -> "BETA"
        GA -> "GA"
        Deprecated -> "DEPRECATED"

instance FromJSON NotificationChannelDescriptorLaunchStage where
    parseJSON = parseJSONText "NotificationChannelDescriptorLaunchStage"

instance ToJSON NotificationChannelDescriptorLaunchStage where
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

-- | The value stream kind.
data ValueDescriptorMetricKind
    = VDMKMetricKindUnspecified
      -- ^ @METRIC_KIND_UNSPECIFIED@
      -- Do not use this default value.
    | VDMKGauge
      -- ^ @GAUGE@
      -- An instantaneous measurement of a value.
    | VDMKDelta
      -- ^ @DELTA@
      -- The change in a value during a time interval.
    | VDMKCumulative
      -- ^ @CUMULATIVE@
      -- A value accumulated over a time interval. Cumulative measurements in a
      -- time series should have the same start time and increasing end times,
      -- until an event resets the cumulative value to zero and sets a new start
      -- time for the following points.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ValueDescriptorMetricKind

instance FromHttpApiData ValueDescriptorMetricKind where
    parseQueryParam = \case
        "METRIC_KIND_UNSPECIFIED" -> Right VDMKMetricKindUnspecified
        "GAUGE" -> Right VDMKGauge
        "DELTA" -> Right VDMKDelta
        "CUMULATIVE" -> Right VDMKCumulative
        x -> Left ("Unable to parse ValueDescriptorMetricKind from: " <> x)

instance ToHttpApiData ValueDescriptorMetricKind where
    toQueryParam = \case
        VDMKMetricKindUnspecified -> "METRIC_KIND_UNSPECIFIED"
        VDMKGauge -> "GAUGE"
        VDMKDelta -> "DELTA"
        VDMKCumulative -> "CUMULATIVE"

instance FromJSON ValueDescriptorMetricKind where
    parseJSON = parseJSONText "ValueDescriptorMetricKind"

instance ToJSON ValueDescriptorMetricKind where
    toJSON = toJSONText

-- | A broad region category in which the IP address is located.
data UptimeCheckIPRegion
    = RegionUnspecified
      -- ^ @REGION_UNSPECIFIED@
      -- Default value if no region is specified. Will result in Uptime checks
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

-- | View of the ServiceLevelObjective to return. If DEFAULT, return the
-- ServiceLevelObjective as originally defined. If EXPLICIT and the
-- ServiceLevelObjective is defined in terms of a BasicSli, replace the
-- BasicSli with a RequestBasedSli spelling out how the SLI is computed.
data ServicesServiceLevelObjectivesGetView
    = SSLOGVViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Same as FULL.
    | SSLOGVFull
      -- ^ @FULL@
      -- Return the embedded ServiceLevelIndicator in the form in which it was
      -- defined. If it was defined using a BasicSli, return that BasicSli.
    | SSLOGVExplicit
      -- ^ @EXPLICIT@
      -- For ServiceLevelIndicators using BasicSli articulation, instead return
      -- the ServiceLevelIndicator with its mode of computation fully spelled out
      -- as a RequestBasedSli. For ServiceLevelIndicators using RequestBasedSli
      -- or WindowsBasedSli, return the ServiceLevelIndicator as it was provided.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServicesServiceLevelObjectivesGetView

instance FromHttpApiData ServicesServiceLevelObjectivesGetView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right SSLOGVViewUnspecified
        "FULL" -> Right SSLOGVFull
        "EXPLICIT" -> Right SSLOGVExplicit
        x -> Left ("Unable to parse ServicesServiceLevelObjectivesGetView from: " <> x)

instance ToHttpApiData ServicesServiceLevelObjectivesGetView where
    toQueryParam = \case
        SSLOGVViewUnspecified -> "VIEW_UNSPECIFIED"
        SSLOGVFull -> "FULL"
        SSLOGVExplicit -> "EXPLICIT"

instance FromJSON ServicesServiceLevelObjectivesGetView where
    parseJSON = parseJSONText "ServicesServiceLevelObjectivesGetView"

instance ToJSON ServicesServiceLevelObjectivesGetView where
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
      -- True if the left argument is greater than the right argument.
    | ComparisonGe
      -- ^ @COMPARISON_GE@
      -- True if the left argument is greater than or equal to the right
      -- argument.
    | ComparisonLT
      -- ^ @COMPARISON_LT@
      -- True if the left argument is less than the right argument.
    | ComparisonLe
      -- ^ @COMPARISON_LE@
      -- True if the left argument is less than or equal to the right argument.
    | ComparisonEQ
      -- ^ @COMPARISON_EQ@
      -- True if the left argument is equal to the right argument.
    | ComparisonNe
      -- ^ @COMPARISON_NE@
      -- True if the left argument is not equal to the right argument.
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

-- | An Aligner describes how to bring the data points in a single time
-- series into temporal alignment. Except for ALIGN_NONE, all alignments
-- cause all the data points in an alignment_period to be mathematically
-- grouped together, resulting in a single data point for each
-- alignment_period with end timestamp at the end of the period.Not all
-- alignment operations may be applied to all time series. The valid
-- choices depend on the metric_kind and value_type of the original time
-- series. Alignment can change the metric_kind or the value_type of the
-- time series.Time series data must be aligned in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified and not equal to ALIGN_NONE and
-- alignment_period must be specified; otherwise, an error is returned.
data ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
    = AlignNone
      -- ^ @ALIGN_NONE@
      -- No alignment. Raw data is returned. Not valid if cross-series reduction
      -- is requested. The value_type of the result is the same as the value_type
      -- of the input.
    | AlignDelta
      -- ^ @ALIGN_DELTA@
      -- Align and convert to DELTA. The output is delta = y1 - y0.This alignment
      -- is valid for CUMULATIVE and DELTA metrics. If the selected alignment
      -- period results in periods with no data, then the aligned value for such
      -- a period is created by interpolation. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | AlignRate
      -- ^ @ALIGN_RATE@
      -- Align and convert to a rate. The result is computed as rate = (y1 -
      -- y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as
      -- providing the slope of the line that passes through the value at the
      -- start and at the end of the alignment_period.This aligner is valid for
      -- CUMULATIVE and DELTA metrics with numeric values. If the selected
      -- alignment period results in periods with no data, then the aligned value
      -- for such a period is created by interpolation. The output is a GAUGE
      -- metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage
      -- change\", see the ALIGN_PERCENT_CHANGE aligner instead.
    | AlignInterpolate
      -- ^ @ALIGN_INTERPOLATE@
      -- Align by interpolating between adjacent points around the alignment
      -- period boundary. This aligner is valid for GAUGE metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | AlignNextOlder
      -- ^ @ALIGN_NEXT_OLDER@
      -- Align by moving the most recent data point before the end of the
      -- alignment period to the boundary at the end of the alignment period.
      -- This aligner is valid for GAUGE metrics. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | AlignMin
      -- ^ @ALIGN_MIN@
      -- Align the time series by returning the minimum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | AlignMax
      -- ^ @ALIGN_MAX@
      -- Align the time series by returning the maximum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | AlignMean
      -- ^ @ALIGN_MEAN@
      -- Align the time series by returning the mean value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is DOUBLE.
    | AlignCount
      -- ^ @ALIGN_COUNT@
      -- Align the time series by returning the number of values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric or Boolean values. The value_type of the aligned result is
      -- INT64.
    | AlignSum
      -- ^ @ALIGN_SUM@
      -- Align the time series by returning the sum of the values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric and distribution values. The value_type of the aligned result is
      -- the same as the value_type of the input.
    | AlignStddev
      -- ^ @ALIGN_STDDEV@
      -- Align the time series by returning the standard deviation of the values
      -- in each alignment period. This aligner is valid for GAUGE and DELTA
      -- metrics with numeric values. The value_type of the output is DOUBLE.
    | AlignCountTrue
      -- ^ @ALIGN_COUNT_TRUE@
      -- Align the time series by returning the number of True values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | AlignCountFalse
      -- ^ @ALIGN_COUNT_FALSE@
      -- Align the time series by returning the number of False values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | AlignFractionTrue
      -- ^ @ALIGN_FRACTION_TRUE@
      -- Align the time series by returning the ratio of the number of True
      -- values to the total number of values in each alignment period. This
      -- aligner is valid for GAUGE metrics with Boolean values. The output value
      -- is in the range 0.0, 1.0 and has value_type DOUBLE.
    | AlignPercentile99
      -- ^ @ALIGN_PERCENTILE_99@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 99th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | AlignPercentile95
      -- ^ @ALIGN_PERCENTILE_95@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 95th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | AlignPercentile50
      -- ^ @ALIGN_PERCENTILE_50@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 50th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | AlignPercentile05
      -- ^ @ALIGN_PERCENTILE_05@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 5th percentile of all data points in the
      -- period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | AlignPercentChange
      -- ^ @ALIGN_PERCENT_CHANGE@
      -- Align and convert to a percentage change. This aligner is valid for
      -- GAUGE and DELTA metrics with numeric values. This alignment returns
      -- ((current - previous)\/previous) * 100, where the value of previous is
      -- determined based on the alignment_period.If the values of current and
      -- previous are both 0, then the returned value is 0. If only previous is
      -- 0, the returned value is infinity.A 10-minute moving mean is computed at
      -- each point of the alignment period prior to the above calculation to
      -- smooth the metric and prevent false positives from very short-lived
      -- spikes. The moving mean is only applicable for data whose values are >=
      -- 0. Any values \< 0 are treated as a missing datapoint, and are ignored.
      -- While DELTA metrics are accepted by this alignment, special care should
      -- be taken that the values for the metric will always be positive. The
      -- output is a GAUGE metric with value_type DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner

instance FromHttpApiData ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner where
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
        x -> Left ("Unable to parse ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner from: " <> x)

instance ToHttpApiData ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner where
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

instance FromJSON ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner where
    parseJSON = parseJSONText "ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner"

instance ToJSON ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner where
    toJSON = toJSONText

-- | An Aligner describes how to bring the data points in a single time
-- series into temporal alignment. Except for ALIGN_NONE, all alignments
-- cause all the data points in an alignment_period to be mathematically
-- grouped together, resulting in a single data point for each
-- alignment_period with end timestamp at the end of the period.Not all
-- alignment operations may be applied to all time series. The valid
-- choices depend on the metric_kind and value_type of the original time
-- series. Alignment can change the metric_kind or the value_type of the
-- time series.Time series data must be aligned in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified and not equal to ALIGN_NONE and
-- alignment_period must be specified; otherwise, an error is returned.
data AggregationPerSeriesAligner
    = APSAAlignNone
      -- ^ @ALIGN_NONE@
      -- No alignment. Raw data is returned. Not valid if cross-series reduction
      -- is requested. The value_type of the result is the same as the value_type
      -- of the input.
    | APSAAlignDelta
      -- ^ @ALIGN_DELTA@
      -- Align and convert to DELTA. The output is delta = y1 - y0.This alignment
      -- is valid for CUMULATIVE and DELTA metrics. If the selected alignment
      -- period results in periods with no data, then the aligned value for such
      -- a period is created by interpolation. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | APSAAlignRate
      -- ^ @ALIGN_RATE@
      -- Align and convert to a rate. The result is computed as rate = (y1 -
      -- y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as
      -- providing the slope of the line that passes through the value at the
      -- start and at the end of the alignment_period.This aligner is valid for
      -- CUMULATIVE and DELTA metrics with numeric values. If the selected
      -- alignment period results in periods with no data, then the aligned value
      -- for such a period is created by interpolation. The output is a GAUGE
      -- metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage
      -- change\", see the ALIGN_PERCENT_CHANGE aligner instead.
    | APSAAlignInterpolate
      -- ^ @ALIGN_INTERPOLATE@
      -- Align by interpolating between adjacent points around the alignment
      -- period boundary. This aligner is valid for GAUGE metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | APSAAlignNextOlder
      -- ^ @ALIGN_NEXT_OLDER@
      -- Align by moving the most recent data point before the end of the
      -- alignment period to the boundary at the end of the alignment period.
      -- This aligner is valid for GAUGE metrics. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | APSAAlignMin
      -- ^ @ALIGN_MIN@
      -- Align the time series by returning the minimum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | APSAAlignMax
      -- ^ @ALIGN_MAX@
      -- Align the time series by returning the maximum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | APSAAlignMean
      -- ^ @ALIGN_MEAN@
      -- Align the time series by returning the mean value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is DOUBLE.
    | APSAAlignCount
      -- ^ @ALIGN_COUNT@
      -- Align the time series by returning the number of values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric or Boolean values. The value_type of the aligned result is
      -- INT64.
    | APSAAlignSum
      -- ^ @ALIGN_SUM@
      -- Align the time series by returning the sum of the values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric and distribution values. The value_type of the aligned result is
      -- the same as the value_type of the input.
    | APSAAlignStddev
      -- ^ @ALIGN_STDDEV@
      -- Align the time series by returning the standard deviation of the values
      -- in each alignment period. This aligner is valid for GAUGE and DELTA
      -- metrics with numeric values. The value_type of the output is DOUBLE.
    | APSAAlignCountTrue
      -- ^ @ALIGN_COUNT_TRUE@
      -- Align the time series by returning the number of True values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | APSAAlignCountFalse
      -- ^ @ALIGN_COUNT_FALSE@
      -- Align the time series by returning the number of False values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | APSAAlignFractionTrue
      -- ^ @ALIGN_FRACTION_TRUE@
      -- Align the time series by returning the ratio of the number of True
      -- values to the total number of values in each alignment period. This
      -- aligner is valid for GAUGE metrics with Boolean values. The output value
      -- is in the range 0.0, 1.0 and has value_type DOUBLE.
    | APSAAlignPercentile99
      -- ^ @ALIGN_PERCENTILE_99@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 99th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | APSAAlignPercentile95
      -- ^ @ALIGN_PERCENTILE_95@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 95th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | APSAAlignPercentile50
      -- ^ @ALIGN_PERCENTILE_50@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 50th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | APSAAlignPercentile05
      -- ^ @ALIGN_PERCENTILE_05@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 5th percentile of all data points in the
      -- period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | APSAAlignPercentChange
      -- ^ @ALIGN_PERCENT_CHANGE@
      -- Align and convert to a percentage change. This aligner is valid for
      -- GAUGE and DELTA metrics with numeric values. This alignment returns
      -- ((current - previous)\/previous) * 100, where the value of previous is
      -- determined based on the alignment_period.If the values of current and
      -- previous are both 0, then the returned value is 0. If only previous is
      -- 0, the returned value is infinity.A 10-minute moving mean is computed at
      -- each point of the alignment period prior to the above calculation to
      -- smooth the metric and prevent false positives from very short-lived
      -- spikes. The moving mean is only applicable for data whose values are >=
      -- 0. Any values \< 0 are treated as a missing datapoint, and are ignored.
      -- While DELTA metrics are accepted by this alignment, special care should
      -- be taken that the values for the metric will always be positive. The
      -- output is a GAUGE metric with value_type DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AggregationPerSeriesAligner

instance FromHttpApiData AggregationPerSeriesAligner where
    parseQueryParam = \case
        "ALIGN_NONE" -> Right APSAAlignNone
        "ALIGN_DELTA" -> Right APSAAlignDelta
        "ALIGN_RATE" -> Right APSAAlignRate
        "ALIGN_INTERPOLATE" -> Right APSAAlignInterpolate
        "ALIGN_NEXT_OLDER" -> Right APSAAlignNextOlder
        "ALIGN_MIN" -> Right APSAAlignMin
        "ALIGN_MAX" -> Right APSAAlignMax
        "ALIGN_MEAN" -> Right APSAAlignMean
        "ALIGN_COUNT" -> Right APSAAlignCount
        "ALIGN_SUM" -> Right APSAAlignSum
        "ALIGN_STDDEV" -> Right APSAAlignStddev
        "ALIGN_COUNT_TRUE" -> Right APSAAlignCountTrue
        "ALIGN_COUNT_FALSE" -> Right APSAAlignCountFalse
        "ALIGN_FRACTION_TRUE" -> Right APSAAlignFractionTrue
        "ALIGN_PERCENTILE_99" -> Right APSAAlignPercentile99
        "ALIGN_PERCENTILE_95" -> Right APSAAlignPercentile95
        "ALIGN_PERCENTILE_50" -> Right APSAAlignPercentile50
        "ALIGN_PERCENTILE_05" -> Right APSAAlignPercentile05
        "ALIGN_PERCENT_CHANGE" -> Right APSAAlignPercentChange
        x -> Left ("Unable to parse AggregationPerSeriesAligner from: " <> x)

instance ToHttpApiData AggregationPerSeriesAligner where
    toQueryParam = \case
        APSAAlignNone -> "ALIGN_NONE"
        APSAAlignDelta -> "ALIGN_DELTA"
        APSAAlignRate -> "ALIGN_RATE"
        APSAAlignInterpolate -> "ALIGN_INTERPOLATE"
        APSAAlignNextOlder -> "ALIGN_NEXT_OLDER"
        APSAAlignMin -> "ALIGN_MIN"
        APSAAlignMax -> "ALIGN_MAX"
        APSAAlignMean -> "ALIGN_MEAN"
        APSAAlignCount -> "ALIGN_COUNT"
        APSAAlignSum -> "ALIGN_SUM"
        APSAAlignStddev -> "ALIGN_STDDEV"
        APSAAlignCountTrue -> "ALIGN_COUNT_TRUE"
        APSAAlignCountFalse -> "ALIGN_COUNT_FALSE"
        APSAAlignFractionTrue -> "ALIGN_FRACTION_TRUE"
        APSAAlignPercentile99 -> "ALIGN_PERCENTILE_99"
        APSAAlignPercentile95 -> "ALIGN_PERCENTILE_95"
        APSAAlignPercentile50 -> "ALIGN_PERCENTILE_50"
        APSAAlignPercentile05 -> "ALIGN_PERCENTILE_05"
        APSAAlignPercentChange -> "ALIGN_PERCENT_CHANGE"

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

-- | The reduction operation to be used to combine time series into a single
-- time series, where the value of each data point in the resulting series
-- is a function of all the already aligned values in the input time
-- series.Not all reducer operations can be applied to all time series. The
-- valid choices depend on the metric_kind and the value_type of the
-- original time series. Reduction can yield a time series with a different
-- metric_kind or value_type than the input time series.Time series data
-- must first be aligned (see per_series_aligner) in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified, and must not be ALIGN_NONE. An
-- alignment_period must also be specified; otherwise, an error is
-- returned.
data FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
    = ReduceNone
      -- ^ @REDUCE_NONE@
      -- No cross-time series reduction. The output of the Aligner is returned.
    | ReduceMean
      -- ^ @REDUCE_MEAN@
      -- Reduce by computing the mean value across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- or distribution values. The value_type of the output is DOUBLE.
    | ReduceMin
      -- ^ @REDUCE_MIN@
      -- Reduce by computing the minimum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | ReduceMax
      -- ^ @REDUCE_MAX@
      -- Reduce by computing the maximum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | ReduceSum
      -- ^ @REDUCE_SUM@
      -- Reduce by computing the sum across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- and distribution values. The value_type of the output is the same as the
      -- value_type of the input.
    | ReduceStddev
      -- ^ @REDUCE_STDDEV@
      -- Reduce by computing the standard deviation across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric or distribution values. The value_type of the output is DOUBLE.
    | ReduceCount
      -- ^ @REDUCE_COUNT@
      -- Reduce by computing the number of data points across time series for
      -- each alignment period. This reducer is valid for DELTA and GAUGE metrics
      -- of numeric, Boolean, distribution, and string value_type. The value_type
      -- of the output is INT64.
    | ReduceCountTrue
      -- ^ @REDUCE_COUNT_TRUE@
      -- Reduce by computing the number of True-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | ReduceCountFalse
      -- ^ @REDUCE_COUNT_FALSE@
      -- Reduce by computing the number of False-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | ReduceFractionTrue
      -- ^ @REDUCE_FRACTION_TRUE@
      -- Reduce by computing the ratio of the number of True-valued data points
      -- to the total number of data points for each alignment period. This
      -- reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The
      -- output value is in the range 0.0, 1.0 and has value_type DOUBLE.
    | ReducePercentile99
      -- ^ @REDUCE_PERCENTILE_99@
      -- Reduce by computing the 99th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | ReducePercentile95
      -- ^ @REDUCE_PERCENTILE_95@
      -- Reduce by computing the 95th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | ReducePercentile50
      -- ^ @REDUCE_PERCENTILE_50@
      -- Reduce by computing the 50th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | ReducePercentile05
      -- ^ @REDUCE_PERCENTILE_05@
      -- Reduce by computing the 5th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer

instance FromHttpApiData FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer where
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
        x -> Left ("Unable to parse FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer from: " <> x)

instance ToHttpApiData FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer where
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

instance FromJSON FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer where
    parseJSON = parseJSONText "FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer"

instance ToJSON FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer where
    toJSON = toJSONText

-- | The HTTP request method to use for the check. If set to
-- METHOD_UNSPECIFIED then request_method defaults to GET.
data HTTPCheckRequestMethod
    = MethodUnspecified
      -- ^ @METHOD_UNSPECIFIED@
      -- No request method specified.
    | Get'
      -- ^ @GET@
      -- GET request.
    | Post'
      -- ^ @POST@
      -- POST request.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPCheckRequestMethod

instance FromHttpApiData HTTPCheckRequestMethod where
    parseQueryParam = \case
        "METHOD_UNSPECIFIED" -> Right MethodUnspecified
        "GET" -> Right Get'
        "POST" -> Right Post'
        x -> Left ("Unable to parse HTTPCheckRequestMethod from: " <> x)

instance ToHttpApiData HTTPCheckRequestMethod where
    toQueryParam = \case
        MethodUnspecified -> "METHOD_UNSPECIFIED"
        Get' -> "GET"
        Post' -> "POST"

instance FromJSON HTTPCheckRequestMethod where
    parseJSON = parseJSONText "HTTPCheckRequestMethod"

instance ToJSON HTTPCheckRequestMethod where
    toJSON = toJSONText

-- | An Aligner describes how to bring the data points in a single time
-- series into temporal alignment. Except for ALIGN_NONE, all alignments
-- cause all the data points in an alignment_period to be mathematically
-- grouped together, resulting in a single data point for each
-- alignment_period with end timestamp at the end of the period.Not all
-- alignment operations may be applied to all time series. The valid
-- choices depend on the metric_kind and value_type of the original time
-- series. Alignment can change the metric_kind or the value_type of the
-- time series.Time series data must be aligned in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified and not equal to ALIGN_NONE and
-- alignment_period must be specified; otherwise, an error is returned.
data ProjectsTimeSeriesListAggregationPerSeriesAligner
    = PTSLAPSAAlignNone
      -- ^ @ALIGN_NONE@
      -- No alignment. Raw data is returned. Not valid if cross-series reduction
      -- is requested. The value_type of the result is the same as the value_type
      -- of the input.
    | PTSLAPSAAlignDelta
      -- ^ @ALIGN_DELTA@
      -- Align and convert to DELTA. The output is delta = y1 - y0.This alignment
      -- is valid for CUMULATIVE and DELTA metrics. If the selected alignment
      -- period results in periods with no data, then the aligned value for such
      -- a period is created by interpolation. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | PTSLAPSAAlignRate
      -- ^ @ALIGN_RATE@
      -- Align and convert to a rate. The result is computed as rate = (y1 -
      -- y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as
      -- providing the slope of the line that passes through the value at the
      -- start and at the end of the alignment_period.This aligner is valid for
      -- CUMULATIVE and DELTA metrics with numeric values. If the selected
      -- alignment period results in periods with no data, then the aligned value
      -- for such a period is created by interpolation. The output is a GAUGE
      -- metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage
      -- change\", see the ALIGN_PERCENT_CHANGE aligner instead.
    | PTSLAPSAAlignInterpolate
      -- ^ @ALIGN_INTERPOLATE@
      -- Align by interpolating between adjacent points around the alignment
      -- period boundary. This aligner is valid for GAUGE metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | PTSLAPSAAlignNextOlder
      -- ^ @ALIGN_NEXT_OLDER@
      -- Align by moving the most recent data point before the end of the
      -- alignment period to the boundary at the end of the alignment period.
      -- This aligner is valid for GAUGE metrics. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | PTSLAPSAAlignMin
      -- ^ @ALIGN_MIN@
      -- Align the time series by returning the minimum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | PTSLAPSAAlignMax
      -- ^ @ALIGN_MAX@
      -- Align the time series by returning the maximum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | PTSLAPSAAlignMean
      -- ^ @ALIGN_MEAN@
      -- Align the time series by returning the mean value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is DOUBLE.
    | PTSLAPSAAlignCount
      -- ^ @ALIGN_COUNT@
      -- Align the time series by returning the number of values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric or Boolean values. The value_type of the aligned result is
      -- INT64.
    | PTSLAPSAAlignSum
      -- ^ @ALIGN_SUM@
      -- Align the time series by returning the sum of the values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric and distribution values. The value_type of the aligned result is
      -- the same as the value_type of the input.
    | PTSLAPSAAlignStddev
      -- ^ @ALIGN_STDDEV@
      -- Align the time series by returning the standard deviation of the values
      -- in each alignment period. This aligner is valid for GAUGE and DELTA
      -- metrics with numeric values. The value_type of the output is DOUBLE.
    | PTSLAPSAAlignCountTrue
      -- ^ @ALIGN_COUNT_TRUE@
      -- Align the time series by returning the number of True values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | PTSLAPSAAlignCountFalse
      -- ^ @ALIGN_COUNT_FALSE@
      -- Align the time series by returning the number of False values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | PTSLAPSAAlignFractionTrue
      -- ^ @ALIGN_FRACTION_TRUE@
      -- Align the time series by returning the ratio of the number of True
      -- values to the total number of values in each alignment period. This
      -- aligner is valid for GAUGE metrics with Boolean values. The output value
      -- is in the range 0.0, 1.0 and has value_type DOUBLE.
    | PTSLAPSAAlignPercentile99
      -- ^ @ALIGN_PERCENTILE_99@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 99th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | PTSLAPSAAlignPercentile95
      -- ^ @ALIGN_PERCENTILE_95@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 95th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | PTSLAPSAAlignPercentile50
      -- ^ @ALIGN_PERCENTILE_50@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 50th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | PTSLAPSAAlignPercentile05
      -- ^ @ALIGN_PERCENTILE_05@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 5th percentile of all data points in the
      -- period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | PTSLAPSAAlignPercentChange
      -- ^ @ALIGN_PERCENT_CHANGE@
      -- Align and convert to a percentage change. This aligner is valid for
      -- GAUGE and DELTA metrics with numeric values. This alignment returns
      -- ((current - previous)\/previous) * 100, where the value of previous is
      -- determined based on the alignment_period.If the values of current and
      -- previous are both 0, then the returned value is 0. If only previous is
      -- 0, the returned value is infinity.A 10-minute moving mean is computed at
      -- each point of the alignment period prior to the above calculation to
      -- smooth the metric and prevent false positives from very short-lived
      -- spikes. The moving mean is only applicable for data whose values are >=
      -- 0. Any values \< 0 are treated as a missing datapoint, and are ignored.
      -- While DELTA metrics are accepted by this alignment, special care should
      -- be taken that the values for the metric will always be positive. The
      -- output is a GAUGE metric with value_type DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTimeSeriesListAggregationPerSeriesAligner

instance FromHttpApiData ProjectsTimeSeriesListAggregationPerSeriesAligner where
    parseQueryParam = \case
        "ALIGN_NONE" -> Right PTSLAPSAAlignNone
        "ALIGN_DELTA" -> Right PTSLAPSAAlignDelta
        "ALIGN_RATE" -> Right PTSLAPSAAlignRate
        "ALIGN_INTERPOLATE" -> Right PTSLAPSAAlignInterpolate
        "ALIGN_NEXT_OLDER" -> Right PTSLAPSAAlignNextOlder
        "ALIGN_MIN" -> Right PTSLAPSAAlignMin
        "ALIGN_MAX" -> Right PTSLAPSAAlignMax
        "ALIGN_MEAN" -> Right PTSLAPSAAlignMean
        "ALIGN_COUNT" -> Right PTSLAPSAAlignCount
        "ALIGN_SUM" -> Right PTSLAPSAAlignSum
        "ALIGN_STDDEV" -> Right PTSLAPSAAlignStddev
        "ALIGN_COUNT_TRUE" -> Right PTSLAPSAAlignCountTrue
        "ALIGN_COUNT_FALSE" -> Right PTSLAPSAAlignCountFalse
        "ALIGN_FRACTION_TRUE" -> Right PTSLAPSAAlignFractionTrue
        "ALIGN_PERCENTILE_99" -> Right PTSLAPSAAlignPercentile99
        "ALIGN_PERCENTILE_95" -> Right PTSLAPSAAlignPercentile95
        "ALIGN_PERCENTILE_50" -> Right PTSLAPSAAlignPercentile50
        "ALIGN_PERCENTILE_05" -> Right PTSLAPSAAlignPercentile05
        "ALIGN_PERCENT_CHANGE" -> Right PTSLAPSAAlignPercentChange
        x -> Left ("Unable to parse ProjectsTimeSeriesListAggregationPerSeriesAligner from: " <> x)

instance ToHttpApiData ProjectsTimeSeriesListAggregationPerSeriesAligner where
    toQueryParam = \case
        PTSLAPSAAlignNone -> "ALIGN_NONE"
        PTSLAPSAAlignDelta -> "ALIGN_DELTA"
        PTSLAPSAAlignRate -> "ALIGN_RATE"
        PTSLAPSAAlignInterpolate -> "ALIGN_INTERPOLATE"
        PTSLAPSAAlignNextOlder -> "ALIGN_NEXT_OLDER"
        PTSLAPSAAlignMin -> "ALIGN_MIN"
        PTSLAPSAAlignMax -> "ALIGN_MAX"
        PTSLAPSAAlignMean -> "ALIGN_MEAN"
        PTSLAPSAAlignCount -> "ALIGN_COUNT"
        PTSLAPSAAlignSum -> "ALIGN_SUM"
        PTSLAPSAAlignStddev -> "ALIGN_STDDEV"
        PTSLAPSAAlignCountTrue -> "ALIGN_COUNT_TRUE"
        PTSLAPSAAlignCountFalse -> "ALIGN_COUNT_FALSE"
        PTSLAPSAAlignFractionTrue -> "ALIGN_FRACTION_TRUE"
        PTSLAPSAAlignPercentile99 -> "ALIGN_PERCENTILE_99"
        PTSLAPSAAlignPercentile95 -> "ALIGN_PERCENTILE_95"
        PTSLAPSAAlignPercentile50 -> "ALIGN_PERCENTILE_50"
        PTSLAPSAAlignPercentile05 -> "ALIGN_PERCENTILE_05"
        PTSLAPSAAlignPercentChange -> "ALIGN_PERCENT_CHANGE"

instance FromJSON ProjectsTimeSeriesListAggregationPerSeriesAligner where
    parseJSON = parseJSONText "ProjectsTimeSeriesListAggregationPerSeriesAligner"

instance ToJSON ProjectsTimeSeriesListAggregationPerSeriesAligner where
    toJSON = toJSONText

-- | The reduction operation to be used to combine time series into a single
-- time series, where the value of each data point in the resulting series
-- is a function of all the already aligned values in the input time
-- series.Not all reducer operations can be applied to all time series. The
-- valid choices depend on the metric_kind and the value_type of the
-- original time series. Reduction can yield a time series with a different
-- metric_kind or value_type than the input time series.Time series data
-- must first be aligned (see per_series_aligner) in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified, and must not be ALIGN_NONE. An
-- alignment_period must also be specified; otherwise, an error is
-- returned.
data AggregationCrossSeriesReducer
    = ACSRReduceNone
      -- ^ @REDUCE_NONE@
      -- No cross-time series reduction. The output of the Aligner is returned.
    | ACSRReduceMean
      -- ^ @REDUCE_MEAN@
      -- Reduce by computing the mean value across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- or distribution values. The value_type of the output is DOUBLE.
    | ACSRReduceMin
      -- ^ @REDUCE_MIN@
      -- Reduce by computing the minimum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | ACSRReduceMax
      -- ^ @REDUCE_MAX@
      -- Reduce by computing the maximum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | ACSRReduceSum
      -- ^ @REDUCE_SUM@
      -- Reduce by computing the sum across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- and distribution values. The value_type of the output is the same as the
      -- value_type of the input.
    | ACSRReduceStddev
      -- ^ @REDUCE_STDDEV@
      -- Reduce by computing the standard deviation across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric or distribution values. The value_type of the output is DOUBLE.
    | ACSRReduceCount
      -- ^ @REDUCE_COUNT@
      -- Reduce by computing the number of data points across time series for
      -- each alignment period. This reducer is valid for DELTA and GAUGE metrics
      -- of numeric, Boolean, distribution, and string value_type. The value_type
      -- of the output is INT64.
    | ACSRReduceCountTrue
      -- ^ @REDUCE_COUNT_TRUE@
      -- Reduce by computing the number of True-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | ACSRReduceCountFalse
      -- ^ @REDUCE_COUNT_FALSE@
      -- Reduce by computing the number of False-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | ACSRReduceFractionTrue
      -- ^ @REDUCE_FRACTION_TRUE@
      -- Reduce by computing the ratio of the number of True-valued data points
      -- to the total number of data points for each alignment period. This
      -- reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The
      -- output value is in the range 0.0, 1.0 and has value_type DOUBLE.
    | ACSRReducePercentile99
      -- ^ @REDUCE_PERCENTILE_99@
      -- Reduce by computing the 99th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | ACSRReducePercentile95
      -- ^ @REDUCE_PERCENTILE_95@
      -- Reduce by computing the 95th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | ACSRReducePercentile50
      -- ^ @REDUCE_PERCENTILE_50@
      -- Reduce by computing the 50th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | ACSRReducePercentile05
      -- ^ @REDUCE_PERCENTILE_05@
      -- Reduce by computing the 5th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AggregationCrossSeriesReducer

instance FromHttpApiData AggregationCrossSeriesReducer where
    parseQueryParam = \case
        "REDUCE_NONE" -> Right ACSRReduceNone
        "REDUCE_MEAN" -> Right ACSRReduceMean
        "REDUCE_MIN" -> Right ACSRReduceMin
        "REDUCE_MAX" -> Right ACSRReduceMax
        "REDUCE_SUM" -> Right ACSRReduceSum
        "REDUCE_STDDEV" -> Right ACSRReduceStddev
        "REDUCE_COUNT" -> Right ACSRReduceCount
        "REDUCE_COUNT_TRUE" -> Right ACSRReduceCountTrue
        "REDUCE_COUNT_FALSE" -> Right ACSRReduceCountFalse
        "REDUCE_FRACTION_TRUE" -> Right ACSRReduceFractionTrue
        "REDUCE_PERCENTILE_99" -> Right ACSRReducePercentile99
        "REDUCE_PERCENTILE_95" -> Right ACSRReducePercentile95
        "REDUCE_PERCENTILE_50" -> Right ACSRReducePercentile50
        "REDUCE_PERCENTILE_05" -> Right ACSRReducePercentile05
        x -> Left ("Unable to parse AggregationCrossSeriesReducer from: " <> x)

instance ToHttpApiData AggregationCrossSeriesReducer where
    toQueryParam = \case
        ACSRReduceNone -> "REDUCE_NONE"
        ACSRReduceMean -> "REDUCE_MEAN"
        ACSRReduceMin -> "REDUCE_MIN"
        ACSRReduceMax -> "REDUCE_MAX"
        ACSRReduceSum -> "REDUCE_SUM"
        ACSRReduceStddev -> "REDUCE_STDDEV"
        ACSRReduceCount -> "REDUCE_COUNT"
        ACSRReduceCountTrue -> "REDUCE_COUNT_TRUE"
        ACSRReduceCountFalse -> "REDUCE_COUNT_FALSE"
        ACSRReduceFractionTrue -> "REDUCE_FRACTION_TRUE"
        ACSRReducePercentile99 -> "REDUCE_PERCENTILE_99"
        ACSRReducePercentile95 -> "REDUCE_PERCENTILE_95"
        ACSRReducePercentile50 -> "REDUCE_PERCENTILE_50"
        ACSRReducePercentile05 -> "REDUCE_PERCENTILE_05"

instance FromJSON AggregationCrossSeriesReducer where
    parseJSON = parseJSONText "AggregationCrossSeriesReducer"

instance ToJSON AggregationCrossSeriesReducer where
    toJSON = toJSONText

-- | Deprecated. Must use the MetricDescriptor.launch_stage instead.
data MetricDescriptorMetadataLaunchStage
    = MDMLSLaunchStageUnspecified
      -- ^ @LAUNCH_STAGE_UNSPECIFIED@
      -- Do not use this default value.
    | MDMLSUnimplemented
      -- ^ @UNIMPLEMENTED@
      -- The feature is not yet implemented. Users can not use it.
    | MDMLSPrelaunch
      -- ^ @PRELAUNCH@
      -- Prelaunch features are hidden from users and are only visible
      -- internally.
    | MDMLSEarlyAccess
      -- ^ @EARLY_ACCESS@
      -- Early Access features are limited to a closed group of testers. To use
      -- these features, you must sign up in advance and sign a Trusted Tester
      -- agreement (which includes confidentiality provisions). These features
      -- may be unstable, changed in backward-incompatible ways, and are not
      -- guaranteed to be released.
    | MDMLSAlpha
      -- ^ @ALPHA@
      -- Alpha is a limited availability test for releases before they are
      -- cleared for widespread use. By Alpha, all significant design issues are
      -- resolved and we are in the process of verifying functionality. Alpha
      -- customers need to apply for access, agree to applicable terms, and have
      -- their projects allowlisted. Alpha releases don’t have to be feature
      -- complete, no SLAs are provided, and there are no technical support
      -- obligations, but they will be far enough along that customers can
      -- actually use them in test environments or for limited-use tests -- just
      -- like they would in normal production cases.
    | MDMLSBeta
      -- ^ @BETA@
      -- Beta is the point at which we are ready to open a release for any
      -- customer to use. There are no SLA or technical support obligations in a
      -- Beta release. Products will be complete from a feature perspective, but
      -- may have some open outstanding issues. Beta releases are suitable for
      -- limited production use cases.
    | MDMLSGA
      -- ^ @GA@
      -- GA features are open to all developers and are considered stable and
      -- fully qualified for production use.
    | MDMLSDeprecated
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
        "LAUNCH_STAGE_UNSPECIFIED" -> Right MDMLSLaunchStageUnspecified
        "UNIMPLEMENTED" -> Right MDMLSUnimplemented
        "PRELAUNCH" -> Right MDMLSPrelaunch
        "EARLY_ACCESS" -> Right MDMLSEarlyAccess
        "ALPHA" -> Right MDMLSAlpha
        "BETA" -> Right MDMLSBeta
        "GA" -> Right MDMLSGA
        "DEPRECATED" -> Right MDMLSDeprecated
        x -> Left ("Unable to parse MetricDescriptorMetadataLaunchStage from: " <> x)

instance ToHttpApiData MetricDescriptorMetadataLaunchStage where
    toQueryParam = \case
        MDMLSLaunchStageUnspecified -> "LAUNCH_STAGE_UNSPECIFIED"
        MDMLSUnimplemented -> "UNIMPLEMENTED"
        MDMLSPrelaunch -> "PRELAUNCH"
        MDMLSEarlyAccess -> "EARLY_ACCESS"
        MDMLSAlpha -> "ALPHA"
        MDMLSBeta -> "BETA"
        MDMLSGA -> "GA"
        MDMLSDeprecated -> "DEPRECATED"

instance FromJSON MetricDescriptorMetadataLaunchStage where
    parseJSON = parseJSONText "MetricDescriptorMetadataLaunchStage"

instance ToJSON MetricDescriptorMetadataLaunchStage where
    toJSON = toJSONText

-- | The reduction operation to be used to combine time series into a single
-- time series, where the value of each data point in the resulting series
-- is a function of all the already aligned values in the input time
-- series.Not all reducer operations can be applied to all time series. The
-- valid choices depend on the metric_kind and the value_type of the
-- original time series. Reduction can yield a time series with a different
-- metric_kind or value_type than the input time series.Time series data
-- must first be aligned (see per_series_aligner) in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified, and must not be ALIGN_NONE. An
-- alignment_period must also be specified; otherwise, an error is
-- returned.
data ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    = PTSLSACSRReduceNone
      -- ^ @REDUCE_NONE@
      -- No cross-time series reduction. The output of the Aligner is returned.
    | PTSLSACSRReduceMean
      -- ^ @REDUCE_MEAN@
      -- Reduce by computing the mean value across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- or distribution values. The value_type of the output is DOUBLE.
    | PTSLSACSRReduceMin
      -- ^ @REDUCE_MIN@
      -- Reduce by computing the minimum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | PTSLSACSRReduceMax
      -- ^ @REDUCE_MAX@
      -- Reduce by computing the maximum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | PTSLSACSRReduceSum
      -- ^ @REDUCE_SUM@
      -- Reduce by computing the sum across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- and distribution values. The value_type of the output is the same as the
      -- value_type of the input.
    | PTSLSACSRReduceStddev
      -- ^ @REDUCE_STDDEV@
      -- Reduce by computing the standard deviation across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric or distribution values. The value_type of the output is DOUBLE.
    | PTSLSACSRReduceCount
      -- ^ @REDUCE_COUNT@
      -- Reduce by computing the number of data points across time series for
      -- each alignment period. This reducer is valid for DELTA and GAUGE metrics
      -- of numeric, Boolean, distribution, and string value_type. The value_type
      -- of the output is INT64.
    | PTSLSACSRReduceCountTrue
      -- ^ @REDUCE_COUNT_TRUE@
      -- Reduce by computing the number of True-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | PTSLSACSRReduceCountFalse
      -- ^ @REDUCE_COUNT_FALSE@
      -- Reduce by computing the number of False-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | PTSLSACSRReduceFractionTrue
      -- ^ @REDUCE_FRACTION_TRUE@
      -- Reduce by computing the ratio of the number of True-valued data points
      -- to the total number of data points for each alignment period. This
      -- reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The
      -- output value is in the range 0.0, 1.0 and has value_type DOUBLE.
    | PTSLSACSRReducePercentile99
      -- ^ @REDUCE_PERCENTILE_99@
      -- Reduce by computing the 99th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | PTSLSACSRReducePercentile95
      -- ^ @REDUCE_PERCENTILE_95@
      -- Reduce by computing the 95th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | PTSLSACSRReducePercentile50
      -- ^ @REDUCE_PERCENTILE_50@
      -- Reduce by computing the 50th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | PTSLSACSRReducePercentile05
      -- ^ @REDUCE_PERCENTILE_05@
      -- Reduce by computing the 5th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer

instance FromHttpApiData ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer where
    parseQueryParam = \case
        "REDUCE_NONE" -> Right PTSLSACSRReduceNone
        "REDUCE_MEAN" -> Right PTSLSACSRReduceMean
        "REDUCE_MIN" -> Right PTSLSACSRReduceMin
        "REDUCE_MAX" -> Right PTSLSACSRReduceMax
        "REDUCE_SUM" -> Right PTSLSACSRReduceSum
        "REDUCE_STDDEV" -> Right PTSLSACSRReduceStddev
        "REDUCE_COUNT" -> Right PTSLSACSRReduceCount
        "REDUCE_COUNT_TRUE" -> Right PTSLSACSRReduceCountTrue
        "REDUCE_COUNT_FALSE" -> Right PTSLSACSRReduceCountFalse
        "REDUCE_FRACTION_TRUE" -> Right PTSLSACSRReduceFractionTrue
        "REDUCE_PERCENTILE_99" -> Right PTSLSACSRReducePercentile99
        "REDUCE_PERCENTILE_95" -> Right PTSLSACSRReducePercentile95
        "REDUCE_PERCENTILE_50" -> Right PTSLSACSRReducePercentile50
        "REDUCE_PERCENTILE_05" -> Right PTSLSACSRReducePercentile05
        x -> Left ("Unable to parse ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer from: " <> x)

instance ToHttpApiData ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer where
    toQueryParam = \case
        PTSLSACSRReduceNone -> "REDUCE_NONE"
        PTSLSACSRReduceMean -> "REDUCE_MEAN"
        PTSLSACSRReduceMin -> "REDUCE_MIN"
        PTSLSACSRReduceMax -> "REDUCE_MAX"
        PTSLSACSRReduceSum -> "REDUCE_SUM"
        PTSLSACSRReduceStddev -> "REDUCE_STDDEV"
        PTSLSACSRReduceCount -> "REDUCE_COUNT"
        PTSLSACSRReduceCountTrue -> "REDUCE_COUNT_TRUE"
        PTSLSACSRReduceCountFalse -> "REDUCE_COUNT_FALSE"
        PTSLSACSRReduceFractionTrue -> "REDUCE_FRACTION_TRUE"
        PTSLSACSRReducePercentile99 -> "REDUCE_PERCENTILE_99"
        PTSLSACSRReducePercentile95 -> "REDUCE_PERCENTILE_95"
        PTSLSACSRReducePercentile50 -> "REDUCE_PERCENTILE_50"
        PTSLSACSRReducePercentile05 -> "REDUCE_PERCENTILE_05"

instance FromJSON ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer where
    parseJSON = parseJSONText "ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer"

instance ToJSON ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer where
    toJSON = toJSONText

-- | The value type.
data ValueDescriptorValueType
    = VDVTValueTypeUnspecified
      -- ^ @VALUE_TYPE_UNSPECIFIED@
      -- Do not use this default value.
    | VDVTBool
      -- ^ @BOOL@
      -- The value is a boolean. This value type can be used only if the metric
      -- kind is GAUGE.
    | VDVTINT64
      -- ^ @INT64@
      -- The value is a signed 64-bit integer.
    | VDVTDouble
      -- ^ @DOUBLE@
      -- The value is a double precision floating point number.
    | VDVTString
      -- ^ @STRING@
      -- The value is a text string. This value type can be used only if the
      -- metric kind is GAUGE.
    | VDVTDistribution
      -- ^ @DISTRIBUTION@
      -- The value is a Distribution.
    | VDVTMoney
      -- ^ @MONEY@
      -- The value is money.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ValueDescriptorValueType

instance FromHttpApiData ValueDescriptorValueType where
    parseQueryParam = \case
        "VALUE_TYPE_UNSPECIFIED" -> Right VDVTValueTypeUnspecified
        "BOOL" -> Right VDVTBool
        "INT64" -> Right VDVTINT64
        "DOUBLE" -> Right VDVTDouble
        "STRING" -> Right VDVTString
        "DISTRIBUTION" -> Right VDVTDistribution
        "MONEY" -> Right VDVTMoney
        x -> Left ("Unable to parse ValueDescriptorValueType from: " <> x)

instance ToHttpApiData ValueDescriptorValueType where
    toQueryParam = \case
        VDVTValueTypeUnspecified -> "VALUE_TYPE_UNSPECIFIED"
        VDVTBool -> "BOOL"
        VDVTINT64 -> "INT64"
        VDVTDouble -> "DOUBLE"
        VDVTString -> "STRING"
        VDVTDistribution -> "DISTRIBUTION"
        VDVTMoney -> "MONEY"

instance FromJSON ValueDescriptorValueType where
    parseJSON = parseJSONText "ValueDescriptorValueType"

instance ToJSON ValueDescriptorValueType where
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

-- | An Aligner describes how to bring the data points in a single time
-- series into temporal alignment. Except for ALIGN_NONE, all alignments
-- cause all the data points in an alignment_period to be mathematically
-- grouped together, resulting in a single data point for each
-- alignment_period with end timestamp at the end of the period.Not all
-- alignment operations may be applied to all time series. The valid
-- choices depend on the metric_kind and value_type of the original time
-- series. Alignment can change the metric_kind or the value_type of the
-- time series.Time series data must be aligned in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified and not equal to ALIGN_NONE and
-- alignment_period must be specified; otherwise, an error is returned.
data OrganizationsTimeSeriesListAggregationPerSeriesAligner
    = OTSLAPSAAlignNone
      -- ^ @ALIGN_NONE@
      -- No alignment. Raw data is returned. Not valid if cross-series reduction
      -- is requested. The value_type of the result is the same as the value_type
      -- of the input.
    | OTSLAPSAAlignDelta
      -- ^ @ALIGN_DELTA@
      -- Align and convert to DELTA. The output is delta = y1 - y0.This alignment
      -- is valid for CUMULATIVE and DELTA metrics. If the selected alignment
      -- period results in periods with no data, then the aligned value for such
      -- a period is created by interpolation. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | OTSLAPSAAlignRate
      -- ^ @ALIGN_RATE@
      -- Align and convert to a rate. The result is computed as rate = (y1 -
      -- y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as
      -- providing the slope of the line that passes through the value at the
      -- start and at the end of the alignment_period.This aligner is valid for
      -- CUMULATIVE and DELTA metrics with numeric values. If the selected
      -- alignment period results in periods with no data, then the aligned value
      -- for such a period is created by interpolation. The output is a GAUGE
      -- metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage
      -- change\", see the ALIGN_PERCENT_CHANGE aligner instead.
    | OTSLAPSAAlignInterpolate
      -- ^ @ALIGN_INTERPOLATE@
      -- Align by interpolating between adjacent points around the alignment
      -- period boundary. This aligner is valid for GAUGE metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | OTSLAPSAAlignNextOlder
      -- ^ @ALIGN_NEXT_OLDER@
      -- Align by moving the most recent data point before the end of the
      -- alignment period to the boundary at the end of the alignment period.
      -- This aligner is valid for GAUGE metrics. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | OTSLAPSAAlignMin
      -- ^ @ALIGN_MIN@
      -- Align the time series by returning the minimum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | OTSLAPSAAlignMax
      -- ^ @ALIGN_MAX@
      -- Align the time series by returning the maximum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | OTSLAPSAAlignMean
      -- ^ @ALIGN_MEAN@
      -- Align the time series by returning the mean value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is DOUBLE.
    | OTSLAPSAAlignCount
      -- ^ @ALIGN_COUNT@
      -- Align the time series by returning the number of values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric or Boolean values. The value_type of the aligned result is
      -- INT64.
    | OTSLAPSAAlignSum
      -- ^ @ALIGN_SUM@
      -- Align the time series by returning the sum of the values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric and distribution values. The value_type of the aligned result is
      -- the same as the value_type of the input.
    | OTSLAPSAAlignStddev
      -- ^ @ALIGN_STDDEV@
      -- Align the time series by returning the standard deviation of the values
      -- in each alignment period. This aligner is valid for GAUGE and DELTA
      -- metrics with numeric values. The value_type of the output is DOUBLE.
    | OTSLAPSAAlignCountTrue
      -- ^ @ALIGN_COUNT_TRUE@
      -- Align the time series by returning the number of True values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | OTSLAPSAAlignCountFalse
      -- ^ @ALIGN_COUNT_FALSE@
      -- Align the time series by returning the number of False values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | OTSLAPSAAlignFractionTrue
      -- ^ @ALIGN_FRACTION_TRUE@
      -- Align the time series by returning the ratio of the number of True
      -- values to the total number of values in each alignment period. This
      -- aligner is valid for GAUGE metrics with Boolean values. The output value
      -- is in the range 0.0, 1.0 and has value_type DOUBLE.
    | OTSLAPSAAlignPercentile99
      -- ^ @ALIGN_PERCENTILE_99@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 99th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | OTSLAPSAAlignPercentile95
      -- ^ @ALIGN_PERCENTILE_95@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 95th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | OTSLAPSAAlignPercentile50
      -- ^ @ALIGN_PERCENTILE_50@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 50th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | OTSLAPSAAlignPercentile05
      -- ^ @ALIGN_PERCENTILE_05@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 5th percentile of all data points in the
      -- period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | OTSLAPSAAlignPercentChange
      -- ^ @ALIGN_PERCENT_CHANGE@
      -- Align and convert to a percentage change. This aligner is valid for
      -- GAUGE and DELTA metrics with numeric values. This alignment returns
      -- ((current - previous)\/previous) * 100, where the value of previous is
      -- determined based on the alignment_period.If the values of current and
      -- previous are both 0, then the returned value is 0. If only previous is
      -- 0, the returned value is infinity.A 10-minute moving mean is computed at
      -- each point of the alignment period prior to the above calculation to
      -- smooth the metric and prevent false positives from very short-lived
      -- spikes. The moving mean is only applicable for data whose values are >=
      -- 0. Any values \< 0 are treated as a missing datapoint, and are ignored.
      -- While DELTA metrics are accepted by this alignment, special care should
      -- be taken that the values for the metric will always be positive. The
      -- output is a GAUGE metric with value_type DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrganizationsTimeSeriesListAggregationPerSeriesAligner

instance FromHttpApiData OrganizationsTimeSeriesListAggregationPerSeriesAligner where
    parseQueryParam = \case
        "ALIGN_NONE" -> Right OTSLAPSAAlignNone
        "ALIGN_DELTA" -> Right OTSLAPSAAlignDelta
        "ALIGN_RATE" -> Right OTSLAPSAAlignRate
        "ALIGN_INTERPOLATE" -> Right OTSLAPSAAlignInterpolate
        "ALIGN_NEXT_OLDER" -> Right OTSLAPSAAlignNextOlder
        "ALIGN_MIN" -> Right OTSLAPSAAlignMin
        "ALIGN_MAX" -> Right OTSLAPSAAlignMax
        "ALIGN_MEAN" -> Right OTSLAPSAAlignMean
        "ALIGN_COUNT" -> Right OTSLAPSAAlignCount
        "ALIGN_SUM" -> Right OTSLAPSAAlignSum
        "ALIGN_STDDEV" -> Right OTSLAPSAAlignStddev
        "ALIGN_COUNT_TRUE" -> Right OTSLAPSAAlignCountTrue
        "ALIGN_COUNT_FALSE" -> Right OTSLAPSAAlignCountFalse
        "ALIGN_FRACTION_TRUE" -> Right OTSLAPSAAlignFractionTrue
        "ALIGN_PERCENTILE_99" -> Right OTSLAPSAAlignPercentile99
        "ALIGN_PERCENTILE_95" -> Right OTSLAPSAAlignPercentile95
        "ALIGN_PERCENTILE_50" -> Right OTSLAPSAAlignPercentile50
        "ALIGN_PERCENTILE_05" -> Right OTSLAPSAAlignPercentile05
        "ALIGN_PERCENT_CHANGE" -> Right OTSLAPSAAlignPercentChange
        x -> Left ("Unable to parse OrganizationsTimeSeriesListAggregationPerSeriesAligner from: " <> x)

instance ToHttpApiData OrganizationsTimeSeriesListAggregationPerSeriesAligner where
    toQueryParam = \case
        OTSLAPSAAlignNone -> "ALIGN_NONE"
        OTSLAPSAAlignDelta -> "ALIGN_DELTA"
        OTSLAPSAAlignRate -> "ALIGN_RATE"
        OTSLAPSAAlignInterpolate -> "ALIGN_INTERPOLATE"
        OTSLAPSAAlignNextOlder -> "ALIGN_NEXT_OLDER"
        OTSLAPSAAlignMin -> "ALIGN_MIN"
        OTSLAPSAAlignMax -> "ALIGN_MAX"
        OTSLAPSAAlignMean -> "ALIGN_MEAN"
        OTSLAPSAAlignCount -> "ALIGN_COUNT"
        OTSLAPSAAlignSum -> "ALIGN_SUM"
        OTSLAPSAAlignStddev -> "ALIGN_STDDEV"
        OTSLAPSAAlignCountTrue -> "ALIGN_COUNT_TRUE"
        OTSLAPSAAlignCountFalse -> "ALIGN_COUNT_FALSE"
        OTSLAPSAAlignFractionTrue -> "ALIGN_FRACTION_TRUE"
        OTSLAPSAAlignPercentile99 -> "ALIGN_PERCENTILE_99"
        OTSLAPSAAlignPercentile95 -> "ALIGN_PERCENTILE_95"
        OTSLAPSAAlignPercentile50 -> "ALIGN_PERCENTILE_50"
        OTSLAPSAAlignPercentile05 -> "ALIGN_PERCENTILE_05"
        OTSLAPSAAlignPercentChange -> "ALIGN_PERCENT_CHANGE"

instance FromJSON OrganizationsTimeSeriesListAggregationPerSeriesAligner where
    parseJSON = parseJSONText "OrganizationsTimeSeriesListAggregationPerSeriesAligner"

instance ToJSON OrganizationsTimeSeriesListAggregationPerSeriesAligner where
    toJSON = toJSONText

-- | The type of data that can be assigned to the label.
data LabelDescriptorValueType
    = String
      -- ^ @STRING@
      -- A variable-length string, not to exceed 1,024 characters. This is the
      -- default value type.
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

-- | The type of content matcher that will be applied to the server output,
-- compared to the content string when the check is run.
data ContentMatcherMatcher
    = ContentMatcherOptionUnspecified
      -- ^ @CONTENT_MATCHER_OPTION_UNSPECIFIED@
      -- No content matcher type specified (maintained for backward
      -- compatibility, but deprecated for future use). Treated as
      -- CONTAINS_STRING.
    | ContainsString
      -- ^ @CONTAINS_STRING@
      -- Selects substring matching. The match succeeds if the output contains
      -- the content string. This is the default value for checks without a
      -- matcher option, or where the value of matcher is
      -- CONTENT_MATCHER_OPTION_UNSPECIFIED.
    | NotContainsString
      -- ^ @NOT_CONTAINS_STRING@
      -- Selects negation of substring matching. The match succeeds if the output
      -- does NOT contain the content string.
    | MatchesRegex
      -- ^ @MATCHES_REGEX@
      -- Selects regular-expression matching. The match succeeds of the output
      -- matches the regular expression specified in the content string. Regex
      -- matching is only supported for HTTP\/HTTPS checks.
    | NotMatchesRegex
      -- ^ @NOT_MATCHES_REGEX@
      -- Selects negation of regular-expression matching. The match succeeds if
      -- the output does NOT match the regular expression specified in the
      -- content string. Regex matching is only supported for HTTP\/HTTPS checks.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentMatcherMatcher

instance FromHttpApiData ContentMatcherMatcher where
    parseQueryParam = \case
        "CONTENT_MATCHER_OPTION_UNSPECIFIED" -> Right ContentMatcherOptionUnspecified
        "CONTAINS_STRING" -> Right ContainsString
        "NOT_CONTAINS_STRING" -> Right NotContainsString
        "MATCHES_REGEX" -> Right MatchesRegex
        "NOT_MATCHES_REGEX" -> Right NotMatchesRegex
        x -> Left ("Unable to parse ContentMatcherMatcher from: " <> x)

instance ToHttpApiData ContentMatcherMatcher where
    toQueryParam = \case
        ContentMatcherOptionUnspecified -> "CONTENT_MATCHER_OPTION_UNSPECIFIED"
        ContainsString -> "CONTAINS_STRING"
        NotContainsString -> "NOT_CONTAINS_STRING"
        MatchesRegex -> "MATCHES_REGEX"
        NotMatchesRegex -> "NOT_MATCHES_REGEX"

instance FromJSON ContentMatcherMatcher where
    parseJSON = parseJSONText "ContentMatcherMatcher"

instance ToJSON ContentMatcherMatcher where
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

-- | An Aligner describes how to bring the data points in a single time
-- series into temporal alignment. Except for ALIGN_NONE, all alignments
-- cause all the data points in an alignment_period to be mathematically
-- grouped together, resulting in a single data point for each
-- alignment_period with end timestamp at the end of the period.Not all
-- alignment operations may be applied to all time series. The valid
-- choices depend on the metric_kind and value_type of the original time
-- series. Alignment can change the metric_kind or the value_type of the
-- time series.Time series data must be aligned in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified and not equal to ALIGN_NONE and
-- alignment_period must be specified; otherwise, an error is returned.
data FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
    = FTSLSAPSAAlignNone
      -- ^ @ALIGN_NONE@
      -- No alignment. Raw data is returned. Not valid if cross-series reduction
      -- is requested. The value_type of the result is the same as the value_type
      -- of the input.
    | FTSLSAPSAAlignDelta
      -- ^ @ALIGN_DELTA@
      -- Align and convert to DELTA. The output is delta = y1 - y0.This alignment
      -- is valid for CUMULATIVE and DELTA metrics. If the selected alignment
      -- period results in periods with no data, then the aligned value for such
      -- a period is created by interpolation. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | FTSLSAPSAAlignRate
      -- ^ @ALIGN_RATE@
      -- Align and convert to a rate. The result is computed as rate = (y1 -
      -- y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as
      -- providing the slope of the line that passes through the value at the
      -- start and at the end of the alignment_period.This aligner is valid for
      -- CUMULATIVE and DELTA metrics with numeric values. If the selected
      -- alignment period results in periods with no data, then the aligned value
      -- for such a period is created by interpolation. The output is a GAUGE
      -- metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage
      -- change\", see the ALIGN_PERCENT_CHANGE aligner instead.
    | FTSLSAPSAAlignInterpolate
      -- ^ @ALIGN_INTERPOLATE@
      -- Align by interpolating between adjacent points around the alignment
      -- period boundary. This aligner is valid for GAUGE metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | FTSLSAPSAAlignNextOlder
      -- ^ @ALIGN_NEXT_OLDER@
      -- Align by moving the most recent data point before the end of the
      -- alignment period to the boundary at the end of the alignment period.
      -- This aligner is valid for GAUGE metrics. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | FTSLSAPSAAlignMin
      -- ^ @ALIGN_MIN@
      -- Align the time series by returning the minimum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | FTSLSAPSAAlignMax
      -- ^ @ALIGN_MAX@
      -- Align the time series by returning the maximum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | FTSLSAPSAAlignMean
      -- ^ @ALIGN_MEAN@
      -- Align the time series by returning the mean value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is DOUBLE.
    | FTSLSAPSAAlignCount
      -- ^ @ALIGN_COUNT@
      -- Align the time series by returning the number of values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric or Boolean values. The value_type of the aligned result is
      -- INT64.
    | FTSLSAPSAAlignSum
      -- ^ @ALIGN_SUM@
      -- Align the time series by returning the sum of the values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric and distribution values. The value_type of the aligned result is
      -- the same as the value_type of the input.
    | FTSLSAPSAAlignStddev
      -- ^ @ALIGN_STDDEV@
      -- Align the time series by returning the standard deviation of the values
      -- in each alignment period. This aligner is valid for GAUGE and DELTA
      -- metrics with numeric values. The value_type of the output is DOUBLE.
    | FTSLSAPSAAlignCountTrue
      -- ^ @ALIGN_COUNT_TRUE@
      -- Align the time series by returning the number of True values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | FTSLSAPSAAlignCountFalse
      -- ^ @ALIGN_COUNT_FALSE@
      -- Align the time series by returning the number of False values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | FTSLSAPSAAlignFractionTrue
      -- ^ @ALIGN_FRACTION_TRUE@
      -- Align the time series by returning the ratio of the number of True
      -- values to the total number of values in each alignment period. This
      -- aligner is valid for GAUGE metrics with Boolean values. The output value
      -- is in the range 0.0, 1.0 and has value_type DOUBLE.
    | FTSLSAPSAAlignPercentile99
      -- ^ @ALIGN_PERCENTILE_99@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 99th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | FTSLSAPSAAlignPercentile95
      -- ^ @ALIGN_PERCENTILE_95@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 95th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | FTSLSAPSAAlignPercentile50
      -- ^ @ALIGN_PERCENTILE_50@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 50th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | FTSLSAPSAAlignPercentile05
      -- ^ @ALIGN_PERCENTILE_05@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 5th percentile of all data points in the
      -- period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | FTSLSAPSAAlignPercentChange
      -- ^ @ALIGN_PERCENT_CHANGE@
      -- Align and convert to a percentage change. This aligner is valid for
      -- GAUGE and DELTA metrics with numeric values. This alignment returns
      -- ((current - previous)\/previous) * 100, where the value of previous is
      -- determined based on the alignment_period.If the values of current and
      -- previous are both 0, then the returned value is 0. If only previous is
      -- 0, the returned value is infinity.A 10-minute moving mean is computed at
      -- each point of the alignment period prior to the above calculation to
      -- smooth the metric and prevent false positives from very short-lived
      -- spikes. The moving mean is only applicable for data whose values are >=
      -- 0. Any values \< 0 are treated as a missing datapoint, and are ignored.
      -- While DELTA metrics are accepted by this alignment, special care should
      -- be taken that the values for the metric will always be positive. The
      -- output is a GAUGE metric with value_type DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner

instance FromHttpApiData FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner where
    parseQueryParam = \case
        "ALIGN_NONE" -> Right FTSLSAPSAAlignNone
        "ALIGN_DELTA" -> Right FTSLSAPSAAlignDelta
        "ALIGN_RATE" -> Right FTSLSAPSAAlignRate
        "ALIGN_INTERPOLATE" -> Right FTSLSAPSAAlignInterpolate
        "ALIGN_NEXT_OLDER" -> Right FTSLSAPSAAlignNextOlder
        "ALIGN_MIN" -> Right FTSLSAPSAAlignMin
        "ALIGN_MAX" -> Right FTSLSAPSAAlignMax
        "ALIGN_MEAN" -> Right FTSLSAPSAAlignMean
        "ALIGN_COUNT" -> Right FTSLSAPSAAlignCount
        "ALIGN_SUM" -> Right FTSLSAPSAAlignSum
        "ALIGN_STDDEV" -> Right FTSLSAPSAAlignStddev
        "ALIGN_COUNT_TRUE" -> Right FTSLSAPSAAlignCountTrue
        "ALIGN_COUNT_FALSE" -> Right FTSLSAPSAAlignCountFalse
        "ALIGN_FRACTION_TRUE" -> Right FTSLSAPSAAlignFractionTrue
        "ALIGN_PERCENTILE_99" -> Right FTSLSAPSAAlignPercentile99
        "ALIGN_PERCENTILE_95" -> Right FTSLSAPSAAlignPercentile95
        "ALIGN_PERCENTILE_50" -> Right FTSLSAPSAAlignPercentile50
        "ALIGN_PERCENTILE_05" -> Right FTSLSAPSAAlignPercentile05
        "ALIGN_PERCENT_CHANGE" -> Right FTSLSAPSAAlignPercentChange
        x -> Left ("Unable to parse FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner from: " <> x)

instance ToHttpApiData FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner where
    toQueryParam = \case
        FTSLSAPSAAlignNone -> "ALIGN_NONE"
        FTSLSAPSAAlignDelta -> "ALIGN_DELTA"
        FTSLSAPSAAlignRate -> "ALIGN_RATE"
        FTSLSAPSAAlignInterpolate -> "ALIGN_INTERPOLATE"
        FTSLSAPSAAlignNextOlder -> "ALIGN_NEXT_OLDER"
        FTSLSAPSAAlignMin -> "ALIGN_MIN"
        FTSLSAPSAAlignMax -> "ALIGN_MAX"
        FTSLSAPSAAlignMean -> "ALIGN_MEAN"
        FTSLSAPSAAlignCount -> "ALIGN_COUNT"
        FTSLSAPSAAlignSum -> "ALIGN_SUM"
        FTSLSAPSAAlignStddev -> "ALIGN_STDDEV"
        FTSLSAPSAAlignCountTrue -> "ALIGN_COUNT_TRUE"
        FTSLSAPSAAlignCountFalse -> "ALIGN_COUNT_FALSE"
        FTSLSAPSAAlignFractionTrue -> "ALIGN_FRACTION_TRUE"
        FTSLSAPSAAlignPercentile99 -> "ALIGN_PERCENTILE_99"
        FTSLSAPSAAlignPercentile95 -> "ALIGN_PERCENTILE_95"
        FTSLSAPSAAlignPercentile50 -> "ALIGN_PERCENTILE_50"
        FTSLSAPSAAlignPercentile05 -> "ALIGN_PERCENTILE_05"
        FTSLSAPSAAlignPercentChange -> "ALIGN_PERCENT_CHANGE"

instance FromJSON FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner where
    parseJSON = parseJSONText "FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner"

instance ToJSON FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner where
    toJSON = toJSONText

-- | Required. Specifies which information is returned about the time series.
data OrganizationsTimeSeriesListView
    = Full
      -- ^ @FULL@
      -- Returns the identity of the metric(s), the time series, and the time
      -- series data.
    | Headers
      -- ^ @HEADERS@
      -- Returns the identity of the metric and the time series resource, but not
      -- the time series data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrganizationsTimeSeriesListView

instance FromHttpApiData OrganizationsTimeSeriesListView where
    parseQueryParam = \case
        "FULL" -> Right Full
        "HEADERS" -> Right Headers
        x -> Left ("Unable to parse OrganizationsTimeSeriesListView from: " <> x)

instance ToHttpApiData OrganizationsTimeSeriesListView where
    toQueryParam = \case
        Full -> "FULL"
        Headers -> "HEADERS"

instance FromJSON OrganizationsTimeSeriesListView where
    parseJSON = parseJSONText "OrganizationsTimeSeriesListView"

instance ToJSON OrganizationsTimeSeriesListView where
    toJSON = toJSONText

-- | The reduction operation to be used to combine time series into a single
-- time series, where the value of each data point in the resulting series
-- is a function of all the already aligned values in the input time
-- series.Not all reducer operations can be applied to all time series. The
-- valid choices depend on the metric_kind and the value_type of the
-- original time series. Reduction can yield a time series with a different
-- metric_kind or value_type than the input time series.Time series data
-- must first be aligned (see per_series_aligner) in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified, and must not be ALIGN_NONE. An
-- alignment_period must also be specified; otherwise, an error is
-- returned.
data ProjectsTimeSeriesListAggregationCrossSeriesReducer
    = PTSLACSRReduceNone
      -- ^ @REDUCE_NONE@
      -- No cross-time series reduction. The output of the Aligner is returned.
    | PTSLACSRReduceMean
      -- ^ @REDUCE_MEAN@
      -- Reduce by computing the mean value across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- or distribution values. The value_type of the output is DOUBLE.
    | PTSLACSRReduceMin
      -- ^ @REDUCE_MIN@
      -- Reduce by computing the minimum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | PTSLACSRReduceMax
      -- ^ @REDUCE_MAX@
      -- Reduce by computing the maximum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | PTSLACSRReduceSum
      -- ^ @REDUCE_SUM@
      -- Reduce by computing the sum across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- and distribution values. The value_type of the output is the same as the
      -- value_type of the input.
    | PTSLACSRReduceStddev
      -- ^ @REDUCE_STDDEV@
      -- Reduce by computing the standard deviation across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric or distribution values. The value_type of the output is DOUBLE.
    | PTSLACSRReduceCount
      -- ^ @REDUCE_COUNT@
      -- Reduce by computing the number of data points across time series for
      -- each alignment period. This reducer is valid for DELTA and GAUGE metrics
      -- of numeric, Boolean, distribution, and string value_type. The value_type
      -- of the output is INT64.
    | PTSLACSRReduceCountTrue
      -- ^ @REDUCE_COUNT_TRUE@
      -- Reduce by computing the number of True-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | PTSLACSRReduceCountFalse
      -- ^ @REDUCE_COUNT_FALSE@
      -- Reduce by computing the number of False-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | PTSLACSRReduceFractionTrue
      -- ^ @REDUCE_FRACTION_TRUE@
      -- Reduce by computing the ratio of the number of True-valued data points
      -- to the total number of data points for each alignment period. This
      -- reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The
      -- output value is in the range 0.0, 1.0 and has value_type DOUBLE.
    | PTSLACSRReducePercentile99
      -- ^ @REDUCE_PERCENTILE_99@
      -- Reduce by computing the 99th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | PTSLACSRReducePercentile95
      -- ^ @REDUCE_PERCENTILE_95@
      -- Reduce by computing the 95th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | PTSLACSRReducePercentile50
      -- ^ @REDUCE_PERCENTILE_50@
      -- Reduce by computing the 50th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | PTSLACSRReducePercentile05
      -- ^ @REDUCE_PERCENTILE_05@
      -- Reduce by computing the 5th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTimeSeriesListAggregationCrossSeriesReducer

instance FromHttpApiData ProjectsTimeSeriesListAggregationCrossSeriesReducer where
    parseQueryParam = \case
        "REDUCE_NONE" -> Right PTSLACSRReduceNone
        "REDUCE_MEAN" -> Right PTSLACSRReduceMean
        "REDUCE_MIN" -> Right PTSLACSRReduceMin
        "REDUCE_MAX" -> Right PTSLACSRReduceMax
        "REDUCE_SUM" -> Right PTSLACSRReduceSum
        "REDUCE_STDDEV" -> Right PTSLACSRReduceStddev
        "REDUCE_COUNT" -> Right PTSLACSRReduceCount
        "REDUCE_COUNT_TRUE" -> Right PTSLACSRReduceCountTrue
        "REDUCE_COUNT_FALSE" -> Right PTSLACSRReduceCountFalse
        "REDUCE_FRACTION_TRUE" -> Right PTSLACSRReduceFractionTrue
        "REDUCE_PERCENTILE_99" -> Right PTSLACSRReducePercentile99
        "REDUCE_PERCENTILE_95" -> Right PTSLACSRReducePercentile95
        "REDUCE_PERCENTILE_50" -> Right PTSLACSRReducePercentile50
        "REDUCE_PERCENTILE_05" -> Right PTSLACSRReducePercentile05
        x -> Left ("Unable to parse ProjectsTimeSeriesListAggregationCrossSeriesReducer from: " <> x)

instance ToHttpApiData ProjectsTimeSeriesListAggregationCrossSeriesReducer where
    toQueryParam = \case
        PTSLACSRReduceNone -> "REDUCE_NONE"
        PTSLACSRReduceMean -> "REDUCE_MEAN"
        PTSLACSRReduceMin -> "REDUCE_MIN"
        PTSLACSRReduceMax -> "REDUCE_MAX"
        PTSLACSRReduceSum -> "REDUCE_SUM"
        PTSLACSRReduceStddev -> "REDUCE_STDDEV"
        PTSLACSRReduceCount -> "REDUCE_COUNT"
        PTSLACSRReduceCountTrue -> "REDUCE_COUNT_TRUE"
        PTSLACSRReduceCountFalse -> "REDUCE_COUNT_FALSE"
        PTSLACSRReduceFractionTrue -> "REDUCE_FRACTION_TRUE"
        PTSLACSRReducePercentile99 -> "REDUCE_PERCENTILE_99"
        PTSLACSRReducePercentile95 -> "REDUCE_PERCENTILE_95"
        PTSLACSRReducePercentile50 -> "REDUCE_PERCENTILE_50"
        PTSLACSRReducePercentile05 -> "REDUCE_PERCENTILE_05"

instance FromJSON ProjectsTimeSeriesListAggregationCrossSeriesReducer where
    parseJSON = parseJSONText "ProjectsTimeSeriesListAggregationCrossSeriesReducer"

instance ToJSON ProjectsTimeSeriesListAggregationCrossSeriesReducer where
    toJSON = toJSONText

-- | An Aligner describes how to bring the data points in a single time
-- series into temporal alignment. Except for ALIGN_NONE, all alignments
-- cause all the data points in an alignment_period to be mathematically
-- grouped together, resulting in a single data point for each
-- alignment_period with end timestamp at the end of the period.Not all
-- alignment operations may be applied to all time series. The valid
-- choices depend on the metric_kind and value_type of the original time
-- series. Alignment can change the metric_kind or the value_type of the
-- time series.Time series data must be aligned in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified and not equal to ALIGN_NONE and
-- alignment_period must be specified; otherwise, an error is returned.
data OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
    = OTSLSAPSAAlignNone
      -- ^ @ALIGN_NONE@
      -- No alignment. Raw data is returned. Not valid if cross-series reduction
      -- is requested. The value_type of the result is the same as the value_type
      -- of the input.
    | OTSLSAPSAAlignDelta
      -- ^ @ALIGN_DELTA@
      -- Align and convert to DELTA. The output is delta = y1 - y0.This alignment
      -- is valid for CUMULATIVE and DELTA metrics. If the selected alignment
      -- period results in periods with no data, then the aligned value for such
      -- a period is created by interpolation. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | OTSLSAPSAAlignRate
      -- ^ @ALIGN_RATE@
      -- Align and convert to a rate. The result is computed as rate = (y1 -
      -- y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as
      -- providing the slope of the line that passes through the value at the
      -- start and at the end of the alignment_period.This aligner is valid for
      -- CUMULATIVE and DELTA metrics with numeric values. If the selected
      -- alignment period results in periods with no data, then the aligned value
      -- for such a period is created by interpolation. The output is a GAUGE
      -- metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage
      -- change\", see the ALIGN_PERCENT_CHANGE aligner instead.
    | OTSLSAPSAAlignInterpolate
      -- ^ @ALIGN_INTERPOLATE@
      -- Align by interpolating between adjacent points around the alignment
      -- period boundary. This aligner is valid for GAUGE metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | OTSLSAPSAAlignNextOlder
      -- ^ @ALIGN_NEXT_OLDER@
      -- Align by moving the most recent data point before the end of the
      -- alignment period to the boundary at the end of the alignment period.
      -- This aligner is valid for GAUGE metrics. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | OTSLSAPSAAlignMin
      -- ^ @ALIGN_MIN@
      -- Align the time series by returning the minimum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | OTSLSAPSAAlignMax
      -- ^ @ALIGN_MAX@
      -- Align the time series by returning the maximum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | OTSLSAPSAAlignMean
      -- ^ @ALIGN_MEAN@
      -- Align the time series by returning the mean value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is DOUBLE.
    | OTSLSAPSAAlignCount
      -- ^ @ALIGN_COUNT@
      -- Align the time series by returning the number of values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric or Boolean values. The value_type of the aligned result is
      -- INT64.
    | OTSLSAPSAAlignSum
      -- ^ @ALIGN_SUM@
      -- Align the time series by returning the sum of the values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric and distribution values. The value_type of the aligned result is
      -- the same as the value_type of the input.
    | OTSLSAPSAAlignStddev
      -- ^ @ALIGN_STDDEV@
      -- Align the time series by returning the standard deviation of the values
      -- in each alignment period. This aligner is valid for GAUGE and DELTA
      -- metrics with numeric values. The value_type of the output is DOUBLE.
    | OTSLSAPSAAlignCountTrue
      -- ^ @ALIGN_COUNT_TRUE@
      -- Align the time series by returning the number of True values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | OTSLSAPSAAlignCountFalse
      -- ^ @ALIGN_COUNT_FALSE@
      -- Align the time series by returning the number of False values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | OTSLSAPSAAlignFractionTrue
      -- ^ @ALIGN_FRACTION_TRUE@
      -- Align the time series by returning the ratio of the number of True
      -- values to the total number of values in each alignment period. This
      -- aligner is valid for GAUGE metrics with Boolean values. The output value
      -- is in the range 0.0, 1.0 and has value_type DOUBLE.
    | OTSLSAPSAAlignPercentile99
      -- ^ @ALIGN_PERCENTILE_99@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 99th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | OTSLSAPSAAlignPercentile95
      -- ^ @ALIGN_PERCENTILE_95@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 95th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | OTSLSAPSAAlignPercentile50
      -- ^ @ALIGN_PERCENTILE_50@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 50th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | OTSLSAPSAAlignPercentile05
      -- ^ @ALIGN_PERCENTILE_05@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 5th percentile of all data points in the
      -- period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | OTSLSAPSAAlignPercentChange
      -- ^ @ALIGN_PERCENT_CHANGE@
      -- Align and convert to a percentage change. This aligner is valid for
      -- GAUGE and DELTA metrics with numeric values. This alignment returns
      -- ((current - previous)\/previous) * 100, where the value of previous is
      -- determined based on the alignment_period.If the values of current and
      -- previous are both 0, then the returned value is 0. If only previous is
      -- 0, the returned value is infinity.A 10-minute moving mean is computed at
      -- each point of the alignment period prior to the above calculation to
      -- smooth the metric and prevent false positives from very short-lived
      -- spikes. The moving mean is only applicable for data whose values are >=
      -- 0. Any values \< 0 are treated as a missing datapoint, and are ignored.
      -- While DELTA metrics are accepted by this alignment, special care should
      -- be taken that the values for the metric will always be positive. The
      -- output is a GAUGE metric with value_type DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner

instance FromHttpApiData OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner where
    parseQueryParam = \case
        "ALIGN_NONE" -> Right OTSLSAPSAAlignNone
        "ALIGN_DELTA" -> Right OTSLSAPSAAlignDelta
        "ALIGN_RATE" -> Right OTSLSAPSAAlignRate
        "ALIGN_INTERPOLATE" -> Right OTSLSAPSAAlignInterpolate
        "ALIGN_NEXT_OLDER" -> Right OTSLSAPSAAlignNextOlder
        "ALIGN_MIN" -> Right OTSLSAPSAAlignMin
        "ALIGN_MAX" -> Right OTSLSAPSAAlignMax
        "ALIGN_MEAN" -> Right OTSLSAPSAAlignMean
        "ALIGN_COUNT" -> Right OTSLSAPSAAlignCount
        "ALIGN_SUM" -> Right OTSLSAPSAAlignSum
        "ALIGN_STDDEV" -> Right OTSLSAPSAAlignStddev
        "ALIGN_COUNT_TRUE" -> Right OTSLSAPSAAlignCountTrue
        "ALIGN_COUNT_FALSE" -> Right OTSLSAPSAAlignCountFalse
        "ALIGN_FRACTION_TRUE" -> Right OTSLSAPSAAlignFractionTrue
        "ALIGN_PERCENTILE_99" -> Right OTSLSAPSAAlignPercentile99
        "ALIGN_PERCENTILE_95" -> Right OTSLSAPSAAlignPercentile95
        "ALIGN_PERCENTILE_50" -> Right OTSLSAPSAAlignPercentile50
        "ALIGN_PERCENTILE_05" -> Right OTSLSAPSAAlignPercentile05
        "ALIGN_PERCENT_CHANGE" -> Right OTSLSAPSAAlignPercentChange
        x -> Left ("Unable to parse OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner from: " <> x)

instance ToHttpApiData OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner where
    toQueryParam = \case
        OTSLSAPSAAlignNone -> "ALIGN_NONE"
        OTSLSAPSAAlignDelta -> "ALIGN_DELTA"
        OTSLSAPSAAlignRate -> "ALIGN_RATE"
        OTSLSAPSAAlignInterpolate -> "ALIGN_INTERPOLATE"
        OTSLSAPSAAlignNextOlder -> "ALIGN_NEXT_OLDER"
        OTSLSAPSAAlignMin -> "ALIGN_MIN"
        OTSLSAPSAAlignMax -> "ALIGN_MAX"
        OTSLSAPSAAlignMean -> "ALIGN_MEAN"
        OTSLSAPSAAlignCount -> "ALIGN_COUNT"
        OTSLSAPSAAlignSum -> "ALIGN_SUM"
        OTSLSAPSAAlignStddev -> "ALIGN_STDDEV"
        OTSLSAPSAAlignCountTrue -> "ALIGN_COUNT_TRUE"
        OTSLSAPSAAlignCountFalse -> "ALIGN_COUNT_FALSE"
        OTSLSAPSAAlignFractionTrue -> "ALIGN_FRACTION_TRUE"
        OTSLSAPSAAlignPercentile99 -> "ALIGN_PERCENTILE_99"
        OTSLSAPSAAlignPercentile95 -> "ALIGN_PERCENTILE_95"
        OTSLSAPSAAlignPercentile50 -> "ALIGN_PERCENTILE_50"
        OTSLSAPSAAlignPercentile05 -> "ALIGN_PERCENTILE_05"
        OTSLSAPSAAlignPercentChange -> "ALIGN_PERCENT_CHANGE"

instance FromJSON OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner where
    parseJSON = parseJSONText "OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner"

instance ToJSON OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner where
    toJSON = toJSONText

-- | Required. Specifies which information is returned about the time series.
data FoldersTimeSeriesListView
    = FTSLVFull
      -- ^ @FULL@
      -- Returns the identity of the metric(s), the time series, and the time
      -- series data.
    | FTSLVHeaders
      -- ^ @HEADERS@
      -- Returns the identity of the metric and the time series resource, but not
      -- the time series data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FoldersTimeSeriesListView

instance FromHttpApiData FoldersTimeSeriesListView where
    parseQueryParam = \case
        "FULL" -> Right FTSLVFull
        "HEADERS" -> Right FTSLVHeaders
        x -> Left ("Unable to parse FoldersTimeSeriesListView from: " <> x)

instance ToHttpApiData FoldersTimeSeriesListView where
    toQueryParam = \case
        FTSLVFull -> "FULL"
        FTSLVHeaders -> "HEADERS"

instance FromJSON FoldersTimeSeriesListView where
    parseJSON = parseJSONText "FoldersTimeSeriesListView"

instance ToJSON FoldersTimeSeriesListView where
    toJSON = toJSONText

-- | Required. Specifies which information is returned about the time series.
data ProjectsTimeSeriesListView
    = PTSLVFull
      -- ^ @FULL@
      -- Returns the identity of the metric(s), the time series, and the time
      -- series data.
    | PTSLVHeaders
      -- ^ @HEADERS@
      -- Returns the identity of the metric and the time series resource, but not
      -- the time series data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTimeSeriesListView

instance FromHttpApiData ProjectsTimeSeriesListView where
    parseQueryParam = \case
        "FULL" -> Right PTSLVFull
        "HEADERS" -> Right PTSLVHeaders
        x -> Left ("Unable to parse ProjectsTimeSeriesListView from: " <> x)

instance ToHttpApiData ProjectsTimeSeriesListView where
    toQueryParam = \case
        PTSLVFull -> "FULL"
        PTSLVHeaders -> "HEADERS"

instance FromJSON ProjectsTimeSeriesListView where
    parseJSON = parseJSONText "ProjectsTimeSeriesListView"

instance ToJSON ProjectsTimeSeriesListView where
    toJSON = toJSONText

-- | Current state of the batch operation.
data OperationMetadataState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Invalid.
    | Created
      -- ^ @CREATED@
      -- Request has been received.
    | Running
      -- ^ @RUNNING@
      -- Request is actively being processed.
    | Done
      -- ^ @DONE@
      -- The batch processing is done.
    | Cancelled
      -- ^ @CANCELLED@
      -- The batch processing was cancelled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationMetadataState

instance FromHttpApiData OperationMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATED" -> Right Created
        "RUNNING" -> Right Running
        "DONE" -> Right Done
        "CANCELLED" -> Right Cancelled
        x -> Left ("Unable to parse OperationMetadataState from: " <> x)

instance ToHttpApiData OperationMetadataState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Created -> "CREATED"
        Running -> "RUNNING"
        Done -> "DONE"
        Cancelled -> "CANCELLED"

instance FromJSON OperationMetadataState where
    parseJSON = parseJSONText "OperationMetadataState"

instance ToJSON OperationMetadataState where
    toJSON = toJSONText

-- | The content type header to use for the check. The following
-- configurations result in errors: 1. Content type is specified in both
-- the headers field and the content_type field. 2. Request method is GET
-- and content_type is not TYPE_UNSPECIFIED 3. Request method is POST and
-- content_type is TYPE_UNSPECIFIED. 4. Request method is POST and a
-- \"Content-Type\" header is provided via headers field. The content_type
-- field should be used instead.
data HTTPCheckContentType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- No content type specified.
    | URLEncoded
      -- ^ @URL_ENCODED@
      -- body is in URL-encoded form. Equivalent to setting the Content-Type to
      -- application\/x-www-form-urlencoded in the HTTP request.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPCheckContentType

instance FromHttpApiData HTTPCheckContentType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "URL_ENCODED" -> Right URLEncoded
        x -> Left ("Unable to parse HTTPCheckContentType from: " <> x)

instance ToHttpApiData HTTPCheckContentType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        URLEncoded -> "URL_ENCODED"

instance FromJSON HTTPCheckContentType where
    parseJSON = parseJSONText "HTTPCheckContentType"

instance ToJSON HTTPCheckContentType where
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

-- | The reduction operation to be used to combine time series into a single
-- time series, where the value of each data point in the resulting series
-- is a function of all the already aligned values in the input time
-- series.Not all reducer operations can be applied to all time series. The
-- valid choices depend on the metric_kind and the value_type of the
-- original time series. Reduction can yield a time series with a different
-- metric_kind or value_type than the input time series.Time series data
-- must first be aligned (see per_series_aligner) in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified, and must not be ALIGN_NONE. An
-- alignment_period must also be specified; otherwise, an error is
-- returned.
data OrganizationsTimeSeriesListAggregationCrossSeriesReducer
    = OTSLACSRReduceNone
      -- ^ @REDUCE_NONE@
      -- No cross-time series reduction. The output of the Aligner is returned.
    | OTSLACSRReduceMean
      -- ^ @REDUCE_MEAN@
      -- Reduce by computing the mean value across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- or distribution values. The value_type of the output is DOUBLE.
    | OTSLACSRReduceMin
      -- ^ @REDUCE_MIN@
      -- Reduce by computing the minimum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | OTSLACSRReduceMax
      -- ^ @REDUCE_MAX@
      -- Reduce by computing the maximum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | OTSLACSRReduceSum
      -- ^ @REDUCE_SUM@
      -- Reduce by computing the sum across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- and distribution values. The value_type of the output is the same as the
      -- value_type of the input.
    | OTSLACSRReduceStddev
      -- ^ @REDUCE_STDDEV@
      -- Reduce by computing the standard deviation across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric or distribution values. The value_type of the output is DOUBLE.
    | OTSLACSRReduceCount
      -- ^ @REDUCE_COUNT@
      -- Reduce by computing the number of data points across time series for
      -- each alignment period. This reducer is valid for DELTA and GAUGE metrics
      -- of numeric, Boolean, distribution, and string value_type. The value_type
      -- of the output is INT64.
    | OTSLACSRReduceCountTrue
      -- ^ @REDUCE_COUNT_TRUE@
      -- Reduce by computing the number of True-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | OTSLACSRReduceCountFalse
      -- ^ @REDUCE_COUNT_FALSE@
      -- Reduce by computing the number of False-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | OTSLACSRReduceFractionTrue
      -- ^ @REDUCE_FRACTION_TRUE@
      -- Reduce by computing the ratio of the number of True-valued data points
      -- to the total number of data points for each alignment period. This
      -- reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The
      -- output value is in the range 0.0, 1.0 and has value_type DOUBLE.
    | OTSLACSRReducePercentile99
      -- ^ @REDUCE_PERCENTILE_99@
      -- Reduce by computing the 99th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | OTSLACSRReducePercentile95
      -- ^ @REDUCE_PERCENTILE_95@
      -- Reduce by computing the 95th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | OTSLACSRReducePercentile50
      -- ^ @REDUCE_PERCENTILE_50@
      -- Reduce by computing the 50th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | OTSLACSRReducePercentile05
      -- ^ @REDUCE_PERCENTILE_05@
      -- Reduce by computing the 5th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrganizationsTimeSeriesListAggregationCrossSeriesReducer

instance FromHttpApiData OrganizationsTimeSeriesListAggregationCrossSeriesReducer where
    parseQueryParam = \case
        "REDUCE_NONE" -> Right OTSLACSRReduceNone
        "REDUCE_MEAN" -> Right OTSLACSRReduceMean
        "REDUCE_MIN" -> Right OTSLACSRReduceMin
        "REDUCE_MAX" -> Right OTSLACSRReduceMax
        "REDUCE_SUM" -> Right OTSLACSRReduceSum
        "REDUCE_STDDEV" -> Right OTSLACSRReduceStddev
        "REDUCE_COUNT" -> Right OTSLACSRReduceCount
        "REDUCE_COUNT_TRUE" -> Right OTSLACSRReduceCountTrue
        "REDUCE_COUNT_FALSE" -> Right OTSLACSRReduceCountFalse
        "REDUCE_FRACTION_TRUE" -> Right OTSLACSRReduceFractionTrue
        "REDUCE_PERCENTILE_99" -> Right OTSLACSRReducePercentile99
        "REDUCE_PERCENTILE_95" -> Right OTSLACSRReducePercentile95
        "REDUCE_PERCENTILE_50" -> Right OTSLACSRReducePercentile50
        "REDUCE_PERCENTILE_05" -> Right OTSLACSRReducePercentile05
        x -> Left ("Unable to parse OrganizationsTimeSeriesListAggregationCrossSeriesReducer from: " <> x)

instance ToHttpApiData OrganizationsTimeSeriesListAggregationCrossSeriesReducer where
    toQueryParam = \case
        OTSLACSRReduceNone -> "REDUCE_NONE"
        OTSLACSRReduceMean -> "REDUCE_MEAN"
        OTSLACSRReduceMin -> "REDUCE_MIN"
        OTSLACSRReduceMax -> "REDUCE_MAX"
        OTSLACSRReduceSum -> "REDUCE_SUM"
        OTSLACSRReduceStddev -> "REDUCE_STDDEV"
        OTSLACSRReduceCount -> "REDUCE_COUNT"
        OTSLACSRReduceCountTrue -> "REDUCE_COUNT_TRUE"
        OTSLACSRReduceCountFalse -> "REDUCE_COUNT_FALSE"
        OTSLACSRReduceFractionTrue -> "REDUCE_FRACTION_TRUE"
        OTSLACSRReducePercentile99 -> "REDUCE_PERCENTILE_99"
        OTSLACSRReducePercentile95 -> "REDUCE_PERCENTILE_95"
        OTSLACSRReducePercentile50 -> "REDUCE_PERCENTILE_50"
        OTSLACSRReducePercentile05 -> "REDUCE_PERCENTILE_05"

instance FromJSON OrganizationsTimeSeriesListAggregationCrossSeriesReducer where
    parseJSON = parseJSONText "OrganizationsTimeSeriesListAggregationCrossSeriesReducer"

instance ToJSON OrganizationsTimeSeriesListAggregationCrossSeriesReducer where
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

-- | The reduction operation to be used to combine time series into a single
-- time series, where the value of each data point in the resulting series
-- is a function of all the already aligned values in the input time
-- series.Not all reducer operations can be applied to all time series. The
-- valid choices depend on the metric_kind and the value_type of the
-- original time series. Reduction can yield a time series with a different
-- metric_kind or value_type than the input time series.Time series data
-- must first be aligned (see per_series_aligner) in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified, and must not be ALIGN_NONE. An
-- alignment_period must also be specified; otherwise, an error is
-- returned.
data FoldersTimeSeriesListAggregationCrossSeriesReducer
    = FTSLACSRReduceNone
      -- ^ @REDUCE_NONE@
      -- No cross-time series reduction. The output of the Aligner is returned.
    | FTSLACSRReduceMean
      -- ^ @REDUCE_MEAN@
      -- Reduce by computing the mean value across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- or distribution values. The value_type of the output is DOUBLE.
    | FTSLACSRReduceMin
      -- ^ @REDUCE_MIN@
      -- Reduce by computing the minimum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | FTSLACSRReduceMax
      -- ^ @REDUCE_MAX@
      -- Reduce by computing the maximum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | FTSLACSRReduceSum
      -- ^ @REDUCE_SUM@
      -- Reduce by computing the sum across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- and distribution values. The value_type of the output is the same as the
      -- value_type of the input.
    | FTSLACSRReduceStddev
      -- ^ @REDUCE_STDDEV@
      -- Reduce by computing the standard deviation across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric or distribution values. The value_type of the output is DOUBLE.
    | FTSLACSRReduceCount
      -- ^ @REDUCE_COUNT@
      -- Reduce by computing the number of data points across time series for
      -- each alignment period. This reducer is valid for DELTA and GAUGE metrics
      -- of numeric, Boolean, distribution, and string value_type. The value_type
      -- of the output is INT64.
    | FTSLACSRReduceCountTrue
      -- ^ @REDUCE_COUNT_TRUE@
      -- Reduce by computing the number of True-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | FTSLACSRReduceCountFalse
      -- ^ @REDUCE_COUNT_FALSE@
      -- Reduce by computing the number of False-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | FTSLACSRReduceFractionTrue
      -- ^ @REDUCE_FRACTION_TRUE@
      -- Reduce by computing the ratio of the number of True-valued data points
      -- to the total number of data points for each alignment period. This
      -- reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The
      -- output value is in the range 0.0, 1.0 and has value_type DOUBLE.
    | FTSLACSRReducePercentile99
      -- ^ @REDUCE_PERCENTILE_99@
      -- Reduce by computing the 99th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | FTSLACSRReducePercentile95
      -- ^ @REDUCE_PERCENTILE_95@
      -- Reduce by computing the 95th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | FTSLACSRReducePercentile50
      -- ^ @REDUCE_PERCENTILE_50@
      -- Reduce by computing the 50th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | FTSLACSRReducePercentile05
      -- ^ @REDUCE_PERCENTILE_05@
      -- Reduce by computing the 5th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FoldersTimeSeriesListAggregationCrossSeriesReducer

instance FromHttpApiData FoldersTimeSeriesListAggregationCrossSeriesReducer where
    parseQueryParam = \case
        "REDUCE_NONE" -> Right FTSLACSRReduceNone
        "REDUCE_MEAN" -> Right FTSLACSRReduceMean
        "REDUCE_MIN" -> Right FTSLACSRReduceMin
        "REDUCE_MAX" -> Right FTSLACSRReduceMax
        "REDUCE_SUM" -> Right FTSLACSRReduceSum
        "REDUCE_STDDEV" -> Right FTSLACSRReduceStddev
        "REDUCE_COUNT" -> Right FTSLACSRReduceCount
        "REDUCE_COUNT_TRUE" -> Right FTSLACSRReduceCountTrue
        "REDUCE_COUNT_FALSE" -> Right FTSLACSRReduceCountFalse
        "REDUCE_FRACTION_TRUE" -> Right FTSLACSRReduceFractionTrue
        "REDUCE_PERCENTILE_99" -> Right FTSLACSRReducePercentile99
        "REDUCE_PERCENTILE_95" -> Right FTSLACSRReducePercentile95
        "REDUCE_PERCENTILE_50" -> Right FTSLACSRReducePercentile50
        "REDUCE_PERCENTILE_05" -> Right FTSLACSRReducePercentile05
        x -> Left ("Unable to parse FoldersTimeSeriesListAggregationCrossSeriesReducer from: " <> x)

instance ToHttpApiData FoldersTimeSeriesListAggregationCrossSeriesReducer where
    toQueryParam = \case
        FTSLACSRReduceNone -> "REDUCE_NONE"
        FTSLACSRReduceMean -> "REDUCE_MEAN"
        FTSLACSRReduceMin -> "REDUCE_MIN"
        FTSLACSRReduceMax -> "REDUCE_MAX"
        FTSLACSRReduceSum -> "REDUCE_SUM"
        FTSLACSRReduceStddev -> "REDUCE_STDDEV"
        FTSLACSRReduceCount -> "REDUCE_COUNT"
        FTSLACSRReduceCountTrue -> "REDUCE_COUNT_TRUE"
        FTSLACSRReduceCountFalse -> "REDUCE_COUNT_FALSE"
        FTSLACSRReduceFractionTrue -> "REDUCE_FRACTION_TRUE"
        FTSLACSRReducePercentile99 -> "REDUCE_PERCENTILE_99"
        FTSLACSRReducePercentile95 -> "REDUCE_PERCENTILE_95"
        FTSLACSRReducePercentile50 -> "REDUCE_PERCENTILE_50"
        FTSLACSRReducePercentile05 -> "REDUCE_PERCENTILE_05"

instance FromJSON FoldersTimeSeriesListAggregationCrossSeriesReducer where
    parseJSON = parseJSONText "FoldersTimeSeriesListAggregationCrossSeriesReducer"

instance ToJSON FoldersTimeSeriesListAggregationCrossSeriesReducer where
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

-- | Optional. The launch stage of the monitored resource definition.
data MonitoredResourceDescriptorLaunchStage
    = MRDLSLaunchStageUnspecified
      -- ^ @LAUNCH_STAGE_UNSPECIFIED@
      -- Do not use this default value.
    | MRDLSUnimplemented
      -- ^ @UNIMPLEMENTED@
      -- The feature is not yet implemented. Users can not use it.
    | MRDLSPrelaunch
      -- ^ @PRELAUNCH@
      -- Prelaunch features are hidden from users and are only visible
      -- internally.
    | MRDLSEarlyAccess
      -- ^ @EARLY_ACCESS@
      -- Early Access features are limited to a closed group of testers. To use
      -- these features, you must sign up in advance and sign a Trusted Tester
      -- agreement (which includes confidentiality provisions). These features
      -- may be unstable, changed in backward-incompatible ways, and are not
      -- guaranteed to be released.
    | MRDLSAlpha
      -- ^ @ALPHA@
      -- Alpha is a limited availability test for releases before they are
      -- cleared for widespread use. By Alpha, all significant design issues are
      -- resolved and we are in the process of verifying functionality. Alpha
      -- customers need to apply for access, agree to applicable terms, and have
      -- their projects allowlisted. Alpha releases don’t have to be feature
      -- complete, no SLAs are provided, and there are no technical support
      -- obligations, but they will be far enough along that customers can
      -- actually use them in test environments or for limited-use tests -- just
      -- like they would in normal production cases.
    | MRDLSBeta
      -- ^ @BETA@
      -- Beta is the point at which we are ready to open a release for any
      -- customer to use. There are no SLA or technical support obligations in a
      -- Beta release. Products will be complete from a feature perspective, but
      -- may have some open outstanding issues. Beta releases are suitable for
      -- limited production use cases.
    | MRDLSGA
      -- ^ @GA@
      -- GA features are open to all developers and are considered stable and
      -- fully qualified for production use.
    | MRDLSDeprecated
      -- ^ @DEPRECATED@
      -- Deprecated features are scheduled to be shut down and removed. For more
      -- information, see the “Deprecation Policy” section of our Terms of
      -- Service (https:\/\/cloud.google.com\/terms\/) and the Google Cloud
      -- Platform Subject to the Deprecation Policy
      -- (https:\/\/cloud.google.com\/terms\/deprecation) documentation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MonitoredResourceDescriptorLaunchStage

instance FromHttpApiData MonitoredResourceDescriptorLaunchStage where
    parseQueryParam = \case
        "LAUNCH_STAGE_UNSPECIFIED" -> Right MRDLSLaunchStageUnspecified
        "UNIMPLEMENTED" -> Right MRDLSUnimplemented
        "PRELAUNCH" -> Right MRDLSPrelaunch
        "EARLY_ACCESS" -> Right MRDLSEarlyAccess
        "ALPHA" -> Right MRDLSAlpha
        "BETA" -> Right MRDLSBeta
        "GA" -> Right MRDLSGA
        "DEPRECATED" -> Right MRDLSDeprecated
        x -> Left ("Unable to parse MonitoredResourceDescriptorLaunchStage from: " <> x)

instance ToHttpApiData MonitoredResourceDescriptorLaunchStage where
    toQueryParam = \case
        MRDLSLaunchStageUnspecified -> "LAUNCH_STAGE_UNSPECIFIED"
        MRDLSUnimplemented -> "UNIMPLEMENTED"
        MRDLSPrelaunch -> "PRELAUNCH"
        MRDLSEarlyAccess -> "EARLY_ACCESS"
        MRDLSAlpha -> "ALPHA"
        MRDLSBeta -> "BETA"
        MRDLSGA -> "GA"
        MRDLSDeprecated -> "DEPRECATED"

instance FromJSON MonitoredResourceDescriptorLaunchStage where
    parseJSON = parseJSONText "MonitoredResourceDescriptorLaunchStage"

instance ToJSON MonitoredResourceDescriptorLaunchStage where
    toJSON = toJSONText

-- | How to combine the results of multiple conditions to determine if an
-- incident should be opened. If condition_time_series_query_language is
-- present, this must be COMBINE_UNSPECIFIED.
data AlertPolicyCombiner
    = CombineUnspecified
      -- ^ @COMBINE_UNSPECIFIED@
      -- An unspecified combiner.
    | And
      -- ^ @AND@
      -- Combine conditions using the logical AND operator. An incident is
      -- created only if all the conditions are met simultaneously. This combiner
      -- is satisfied if all conditions are met, even if they are met on
      -- completely different resources.
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

-- | The reduction operation to be used to combine time series into a single
-- time series, where the value of each data point in the resulting series
-- is a function of all the already aligned values in the input time
-- series.Not all reducer operations can be applied to all time series. The
-- valid choices depend on the metric_kind and the value_type of the
-- original time series. Reduction can yield a time series with a different
-- metric_kind or value_type than the input time series.Time series data
-- must first be aligned (see per_series_aligner) in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified, and must not be ALIGN_NONE. An
-- alignment_period must also be specified; otherwise, an error is
-- returned.
data OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    = OTSLSACSRReduceNone
      -- ^ @REDUCE_NONE@
      -- No cross-time series reduction. The output of the Aligner is returned.
    | OTSLSACSRReduceMean
      -- ^ @REDUCE_MEAN@
      -- Reduce by computing the mean value across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- or distribution values. The value_type of the output is DOUBLE.
    | OTSLSACSRReduceMin
      -- ^ @REDUCE_MIN@
      -- Reduce by computing the minimum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | OTSLSACSRReduceMax
      -- ^ @REDUCE_MAX@
      -- Reduce by computing the maximum value across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric values. The value_type of the output is the same as the
      -- value_type of the input.
    | OTSLSACSRReduceSum
      -- ^ @REDUCE_SUM@
      -- Reduce by computing the sum across time series for each alignment
      -- period. This reducer is valid for DELTA and GAUGE metrics with numeric
      -- and distribution values. The value_type of the output is the same as the
      -- value_type of the input.
    | OTSLSACSRReduceStddev
      -- ^ @REDUCE_STDDEV@
      -- Reduce by computing the standard deviation across time series for each
      -- alignment period. This reducer is valid for DELTA and GAUGE metrics with
      -- numeric or distribution values. The value_type of the output is DOUBLE.
    | OTSLSACSRReduceCount
      -- ^ @REDUCE_COUNT@
      -- Reduce by computing the number of data points across time series for
      -- each alignment period. This reducer is valid for DELTA and GAUGE metrics
      -- of numeric, Boolean, distribution, and string value_type. The value_type
      -- of the output is INT64.
    | OTSLSACSRReduceCountTrue
      -- ^ @REDUCE_COUNT_TRUE@
      -- Reduce by computing the number of True-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | OTSLSACSRReduceCountFalse
      -- ^ @REDUCE_COUNT_FALSE@
      -- Reduce by computing the number of False-valued data points across time
      -- series for each alignment period. This reducer is valid for DELTA and
      -- GAUGE metrics of Boolean value_type. The value_type of the output is
      -- INT64.
    | OTSLSACSRReduceFractionTrue
      -- ^ @REDUCE_FRACTION_TRUE@
      -- Reduce by computing the ratio of the number of True-valued data points
      -- to the total number of data points for each alignment period. This
      -- reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The
      -- output value is in the range 0.0, 1.0 and has value_type DOUBLE.
    | OTSLSACSRReducePercentile99
      -- ^ @REDUCE_PERCENTILE_99@
      -- Reduce by computing the 99th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | OTSLSACSRReducePercentile95
      -- ^ @REDUCE_PERCENTILE_95@
      -- Reduce by computing the 95th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | OTSLSACSRReducePercentile50
      -- ^ @REDUCE_PERCENTILE_50@
      -- Reduce by computing the 50th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
    | OTSLSACSRReducePercentile05
      -- ^ @REDUCE_PERCENTILE_05@
      -- Reduce by computing the 5th percentile
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across
      -- time series for each alignment period. This reducer is valid for GAUGE
      -- and DELTA metrics of numeric and distribution type. The value of the
      -- output is DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer

instance FromHttpApiData OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer where
    parseQueryParam = \case
        "REDUCE_NONE" -> Right OTSLSACSRReduceNone
        "REDUCE_MEAN" -> Right OTSLSACSRReduceMean
        "REDUCE_MIN" -> Right OTSLSACSRReduceMin
        "REDUCE_MAX" -> Right OTSLSACSRReduceMax
        "REDUCE_SUM" -> Right OTSLSACSRReduceSum
        "REDUCE_STDDEV" -> Right OTSLSACSRReduceStddev
        "REDUCE_COUNT" -> Right OTSLSACSRReduceCount
        "REDUCE_COUNT_TRUE" -> Right OTSLSACSRReduceCountTrue
        "REDUCE_COUNT_FALSE" -> Right OTSLSACSRReduceCountFalse
        "REDUCE_FRACTION_TRUE" -> Right OTSLSACSRReduceFractionTrue
        "REDUCE_PERCENTILE_99" -> Right OTSLSACSRReducePercentile99
        "REDUCE_PERCENTILE_95" -> Right OTSLSACSRReducePercentile95
        "REDUCE_PERCENTILE_50" -> Right OTSLSACSRReducePercentile50
        "REDUCE_PERCENTILE_05" -> Right OTSLSACSRReducePercentile05
        x -> Left ("Unable to parse OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer from: " <> x)

instance ToHttpApiData OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer where
    toQueryParam = \case
        OTSLSACSRReduceNone -> "REDUCE_NONE"
        OTSLSACSRReduceMean -> "REDUCE_MEAN"
        OTSLSACSRReduceMin -> "REDUCE_MIN"
        OTSLSACSRReduceMax -> "REDUCE_MAX"
        OTSLSACSRReduceSum -> "REDUCE_SUM"
        OTSLSACSRReduceStddev -> "REDUCE_STDDEV"
        OTSLSACSRReduceCount -> "REDUCE_COUNT"
        OTSLSACSRReduceCountTrue -> "REDUCE_COUNT_TRUE"
        OTSLSACSRReduceCountFalse -> "REDUCE_COUNT_FALSE"
        OTSLSACSRReduceFractionTrue -> "REDUCE_FRACTION_TRUE"
        OTSLSACSRReducePercentile99 -> "REDUCE_PERCENTILE_99"
        OTSLSACSRReducePercentile95 -> "REDUCE_PERCENTILE_95"
        OTSLSACSRReducePercentile50 -> "REDUCE_PERCENTILE_50"
        OTSLSACSRReducePercentile05 -> "REDUCE_PERCENTILE_05"

instance FromJSON OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer where
    parseJSON = parseJSONText "OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer"

instance ToJSON OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer where
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

data UptimeCheckConfigSelectedRegionsItem
    = UCCSRIRegionUnspecified
      -- ^ @REGION_UNSPECIFIED@
      -- Default value if no region is specified. Will result in Uptime checks
      -- running from all regions.
    | UCCSRIUsa
      -- ^ @USA@
      -- Allows checks to run from locations within the United States of America.
    | UCCSRIEurope
      -- ^ @EUROPE@
      -- Allows checks to run from locations within the continent of Europe.
    | UCCSRISouthAmerica
      -- ^ @SOUTH_AMERICA@
      -- Allows checks to run from locations within the continent of South
      -- America.
    | UCCSRIAsiaPacific
      -- ^ @ASIA_PACIFIC@
      -- Allows checks to run from locations within the Asia Pacific area (ex:
      -- Singapore).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UptimeCheckConfigSelectedRegionsItem

instance FromHttpApiData UptimeCheckConfigSelectedRegionsItem where
    parseQueryParam = \case
        "REGION_UNSPECIFIED" -> Right UCCSRIRegionUnspecified
        "USA" -> Right UCCSRIUsa
        "EUROPE" -> Right UCCSRIEurope
        "SOUTH_AMERICA" -> Right UCCSRISouthAmerica
        "ASIA_PACIFIC" -> Right UCCSRIAsiaPacific
        x -> Left ("Unable to parse UptimeCheckConfigSelectedRegionsItem from: " <> x)

instance ToHttpApiData UptimeCheckConfigSelectedRegionsItem where
    toQueryParam = \case
        UCCSRIRegionUnspecified -> "REGION_UNSPECIFIED"
        UCCSRIUsa -> "USA"
        UCCSRIEurope -> "EUROPE"
        UCCSRISouthAmerica -> "SOUTH_AMERICA"
        UCCSRIAsiaPacific -> "ASIA_PACIFIC"

instance FromJSON UptimeCheckConfigSelectedRegionsItem where
    parseJSON = parseJSONText "UptimeCheckConfigSelectedRegionsItem"

instance ToJSON UptimeCheckConfigSelectedRegionsItem where
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

-- | A calendar period, semantically \"since the start of the current \". At
-- this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
data ServiceLevelObjectiveCalendarPeriod
    = CalendarPeriodUnspecified
      -- ^ @CALENDAR_PERIOD_UNSPECIFIED@
      -- Undefined period, raises an error.
    | Day
      -- ^ @DAY@
      -- A day.
    | Week
      -- ^ @WEEK@
      -- A week. Weeks begin on Monday, following ISO 8601
      -- (https:\/\/en.wikipedia.org\/wiki\/ISO_week_date).
    | Fortnight
      -- ^ @FORTNIGHT@
      -- A fortnight. The first calendar fortnight of the year begins at the
      -- start of week 1 according to ISO 8601
      -- (https:\/\/en.wikipedia.org\/wiki\/ISO_week_date).
    | Month
      -- ^ @MONTH@
      -- A month.
    | Quarter
      -- ^ @QUARTER@
      -- A quarter. Quarters start on dates 1-Jan, 1-Apr, 1-Jul, and 1-Oct of
      -- each year.
    | Half
      -- ^ @HALF@
      -- A half-year. Half-years start on dates 1-Jan and 1-Jul.
    | Year
      -- ^ @YEAR@
      -- A year.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServiceLevelObjectiveCalendarPeriod

instance FromHttpApiData ServiceLevelObjectiveCalendarPeriod where
    parseQueryParam = \case
        "CALENDAR_PERIOD_UNSPECIFIED" -> Right CalendarPeriodUnspecified
        "DAY" -> Right Day
        "WEEK" -> Right Week
        "FORTNIGHT" -> Right Fortnight
        "MONTH" -> Right Month
        "QUARTER" -> Right Quarter
        "HALF" -> Right Half
        "YEAR" -> Right Year
        x -> Left ("Unable to parse ServiceLevelObjectiveCalendarPeriod from: " <> x)

instance ToHttpApiData ServiceLevelObjectiveCalendarPeriod where
    toQueryParam = \case
        CalendarPeriodUnspecified -> "CALENDAR_PERIOD_UNSPECIFIED"
        Day -> "DAY"
        Week -> "WEEK"
        Fortnight -> "FORTNIGHT"
        Month -> "MONTH"
        Quarter -> "QUARTER"
        Half -> "HALF"
        Year -> "YEAR"

instance FromJSON ServiceLevelObjectiveCalendarPeriod where
    parseJSON = parseJSONText "ServiceLevelObjectiveCalendarPeriod"

instance ToJSON ServiceLevelObjectiveCalendarPeriod where
    toJSON = toJSONText

-- | An Aligner describes how to bring the data points in a single time
-- series into temporal alignment. Except for ALIGN_NONE, all alignments
-- cause all the data points in an alignment_period to be mathematically
-- grouped together, resulting in a single data point for each
-- alignment_period with end timestamp at the end of the period.Not all
-- alignment operations may be applied to all time series. The valid
-- choices depend on the metric_kind and value_type of the original time
-- series. Alignment can change the metric_kind or the value_type of the
-- time series.Time series data must be aligned in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified and not equal to ALIGN_NONE and
-- alignment_period must be specified; otherwise, an error is returned.
data FoldersTimeSeriesListAggregationPerSeriesAligner
    = FTSLAPSAAlignNone
      -- ^ @ALIGN_NONE@
      -- No alignment. Raw data is returned. Not valid if cross-series reduction
      -- is requested. The value_type of the result is the same as the value_type
      -- of the input.
    | FTSLAPSAAlignDelta
      -- ^ @ALIGN_DELTA@
      -- Align and convert to DELTA. The output is delta = y1 - y0.This alignment
      -- is valid for CUMULATIVE and DELTA metrics. If the selected alignment
      -- period results in periods with no data, then the aligned value for such
      -- a period is created by interpolation. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | FTSLAPSAAlignRate
      -- ^ @ALIGN_RATE@
      -- Align and convert to a rate. The result is computed as rate = (y1 -
      -- y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as
      -- providing the slope of the line that passes through the value at the
      -- start and at the end of the alignment_period.This aligner is valid for
      -- CUMULATIVE and DELTA metrics with numeric values. If the selected
      -- alignment period results in periods with no data, then the aligned value
      -- for such a period is created by interpolation. The output is a GAUGE
      -- metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage
      -- change\", see the ALIGN_PERCENT_CHANGE aligner instead.
    | FTSLAPSAAlignInterpolate
      -- ^ @ALIGN_INTERPOLATE@
      -- Align by interpolating between adjacent points around the alignment
      -- period boundary. This aligner is valid for GAUGE metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | FTSLAPSAAlignNextOlder
      -- ^ @ALIGN_NEXT_OLDER@
      -- Align by moving the most recent data point before the end of the
      -- alignment period to the boundary at the end of the alignment period.
      -- This aligner is valid for GAUGE metrics. The value_type of the aligned
      -- result is the same as the value_type of the input.
    | FTSLAPSAAlignMin
      -- ^ @ALIGN_MIN@
      -- Align the time series by returning the minimum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | FTSLAPSAAlignMax
      -- ^ @ALIGN_MAX@
      -- Align the time series by returning the maximum value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is the same as the
      -- value_type of the input.
    | FTSLAPSAAlignMean
      -- ^ @ALIGN_MEAN@
      -- Align the time series by returning the mean value in each alignment
      -- period. This aligner is valid for GAUGE and DELTA metrics with numeric
      -- values. The value_type of the aligned result is DOUBLE.
    | FTSLAPSAAlignCount
      -- ^ @ALIGN_COUNT@
      -- Align the time series by returning the number of values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric or Boolean values. The value_type of the aligned result is
      -- INT64.
    | FTSLAPSAAlignSum
      -- ^ @ALIGN_SUM@
      -- Align the time series by returning the sum of the values in each
      -- alignment period. This aligner is valid for GAUGE and DELTA metrics with
      -- numeric and distribution values. The value_type of the aligned result is
      -- the same as the value_type of the input.
    | FTSLAPSAAlignStddev
      -- ^ @ALIGN_STDDEV@
      -- Align the time series by returning the standard deviation of the values
      -- in each alignment period. This aligner is valid for GAUGE and DELTA
      -- metrics with numeric values. The value_type of the output is DOUBLE.
    | FTSLAPSAAlignCountTrue
      -- ^ @ALIGN_COUNT_TRUE@
      -- Align the time series by returning the number of True values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | FTSLAPSAAlignCountFalse
      -- ^ @ALIGN_COUNT_FALSE@
      -- Align the time series by returning the number of False values in each
      -- alignment period. This aligner is valid for GAUGE metrics with Boolean
      -- values. The value_type of the output is INT64.
    | FTSLAPSAAlignFractionTrue
      -- ^ @ALIGN_FRACTION_TRUE@
      -- Align the time series by returning the ratio of the number of True
      -- values to the total number of values in each alignment period. This
      -- aligner is valid for GAUGE metrics with Boolean values. The output value
      -- is in the range 0.0, 1.0 and has value_type DOUBLE.
    | FTSLAPSAAlignPercentile99
      -- ^ @ALIGN_PERCENTILE_99@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 99th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | FTSLAPSAAlignPercentile95
      -- ^ @ALIGN_PERCENTILE_95@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 95th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | FTSLAPSAAlignPercentile50
      -- ^ @ALIGN_PERCENTILE_50@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 50th percentile of all data points in
      -- the period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | FTSLAPSAAlignPercentile05
      -- ^ @ALIGN_PERCENTILE_05@
      -- Align the time series by using percentile aggregation
      -- (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point
      -- in each alignment period is the 5th percentile of all data points in the
      -- period. This aligner is valid for GAUGE and DELTA metrics with
      -- distribution values. The output is a GAUGE metric with value_type
      -- DOUBLE.
    | FTSLAPSAAlignPercentChange
      -- ^ @ALIGN_PERCENT_CHANGE@
      -- Align and convert to a percentage change. This aligner is valid for
      -- GAUGE and DELTA metrics with numeric values. This alignment returns
      -- ((current - previous)\/previous) * 100, where the value of previous is
      -- determined based on the alignment_period.If the values of current and
      -- previous are both 0, then the returned value is 0. If only previous is
      -- 0, the returned value is infinity.A 10-minute moving mean is computed at
      -- each point of the alignment period prior to the above calculation to
      -- smooth the metric and prevent false positives from very short-lived
      -- spikes. The moving mean is only applicable for data whose values are >=
      -- 0. Any values \< 0 are treated as a missing datapoint, and are ignored.
      -- While DELTA metrics are accepted by this alignment, special care should
      -- be taken that the values for the metric will always be positive. The
      -- output is a GAUGE metric with value_type DOUBLE.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FoldersTimeSeriesListAggregationPerSeriesAligner

instance FromHttpApiData FoldersTimeSeriesListAggregationPerSeriesAligner where
    parseQueryParam = \case
        "ALIGN_NONE" -> Right FTSLAPSAAlignNone
        "ALIGN_DELTA" -> Right FTSLAPSAAlignDelta
        "ALIGN_RATE" -> Right FTSLAPSAAlignRate
        "ALIGN_INTERPOLATE" -> Right FTSLAPSAAlignInterpolate
        "ALIGN_NEXT_OLDER" -> Right FTSLAPSAAlignNextOlder
        "ALIGN_MIN" -> Right FTSLAPSAAlignMin
        "ALIGN_MAX" -> Right FTSLAPSAAlignMax
        "ALIGN_MEAN" -> Right FTSLAPSAAlignMean
        "ALIGN_COUNT" -> Right FTSLAPSAAlignCount
        "ALIGN_SUM" -> Right FTSLAPSAAlignSum
        "ALIGN_STDDEV" -> Right FTSLAPSAAlignStddev
        "ALIGN_COUNT_TRUE" -> Right FTSLAPSAAlignCountTrue
        "ALIGN_COUNT_FALSE" -> Right FTSLAPSAAlignCountFalse
        "ALIGN_FRACTION_TRUE" -> Right FTSLAPSAAlignFractionTrue
        "ALIGN_PERCENTILE_99" -> Right FTSLAPSAAlignPercentile99
        "ALIGN_PERCENTILE_95" -> Right FTSLAPSAAlignPercentile95
        "ALIGN_PERCENTILE_50" -> Right FTSLAPSAAlignPercentile50
        "ALIGN_PERCENTILE_05" -> Right FTSLAPSAAlignPercentile05
        "ALIGN_PERCENT_CHANGE" -> Right FTSLAPSAAlignPercentChange
        x -> Left ("Unable to parse FoldersTimeSeriesListAggregationPerSeriesAligner from: " <> x)

instance ToHttpApiData FoldersTimeSeriesListAggregationPerSeriesAligner where
    toQueryParam = \case
        FTSLAPSAAlignNone -> "ALIGN_NONE"
        FTSLAPSAAlignDelta -> "ALIGN_DELTA"
        FTSLAPSAAlignRate -> "ALIGN_RATE"
        FTSLAPSAAlignInterpolate -> "ALIGN_INTERPOLATE"
        FTSLAPSAAlignNextOlder -> "ALIGN_NEXT_OLDER"
        FTSLAPSAAlignMin -> "ALIGN_MIN"
        FTSLAPSAAlignMax -> "ALIGN_MAX"
        FTSLAPSAAlignMean -> "ALIGN_MEAN"
        FTSLAPSAAlignCount -> "ALIGN_COUNT"
        FTSLAPSAAlignSum -> "ALIGN_SUM"
        FTSLAPSAAlignStddev -> "ALIGN_STDDEV"
        FTSLAPSAAlignCountTrue -> "ALIGN_COUNT_TRUE"
        FTSLAPSAAlignCountFalse -> "ALIGN_COUNT_FALSE"
        FTSLAPSAAlignFractionTrue -> "ALIGN_FRACTION_TRUE"
        FTSLAPSAAlignPercentile99 -> "ALIGN_PERCENTILE_99"
        FTSLAPSAAlignPercentile95 -> "ALIGN_PERCENTILE_95"
        FTSLAPSAAlignPercentile50 -> "ALIGN_PERCENTILE_50"
        FTSLAPSAAlignPercentile05 -> "ALIGN_PERCENTILE_05"
        FTSLAPSAAlignPercentChange -> "ALIGN_PERCENT_CHANGE"

instance FromJSON FoldersTimeSeriesListAggregationPerSeriesAligner where
    parseJSON = parseJSONText "FoldersTimeSeriesListAggregationPerSeriesAligner"

instance ToJSON FoldersTimeSeriesListAggregationPerSeriesAligner where
    toJSON = toJSONText

-- | View of the ServiceLevelObjectives to return. If DEFAULT, return each
-- ServiceLevelObjective as originally defined. If EXPLICIT and the
-- ServiceLevelObjective is defined in terms of a BasicSli, replace the
-- BasicSli with a RequestBasedSli spelling out how the SLI is computed.
data ServicesServiceLevelObjectivesListView
    = SSLOLVViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Same as FULL.
    | SSLOLVFull
      -- ^ @FULL@
      -- Return the embedded ServiceLevelIndicator in the form in which it was
      -- defined. If it was defined using a BasicSli, return that BasicSli.
    | SSLOLVExplicit
      -- ^ @EXPLICIT@
      -- For ServiceLevelIndicators using BasicSli articulation, instead return
      -- the ServiceLevelIndicator with its mode of computation fully spelled out
      -- as a RequestBasedSli. For ServiceLevelIndicators using RequestBasedSli
      -- or WindowsBasedSli, return the ServiceLevelIndicator as it was provided.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServicesServiceLevelObjectivesListView

instance FromHttpApiData ServicesServiceLevelObjectivesListView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right SSLOLVViewUnspecified
        "FULL" -> Right SSLOLVFull
        "EXPLICIT" -> Right SSLOLVExplicit
        x -> Left ("Unable to parse ServicesServiceLevelObjectivesListView from: " <> x)

instance ToHttpApiData ServicesServiceLevelObjectivesListView where
    toQueryParam = \case
        SSLOLVViewUnspecified -> "VIEW_UNSPECIFIED"
        SSLOLVFull -> "FULL"
        SSLOLVExplicit -> "EXPLICIT"

instance FromJSON ServicesServiceLevelObjectivesListView where
    parseJSON = parseJSONText "ServicesServiceLevelObjectivesListView"

instance ToJSON ServicesServiceLevelObjectivesListView where
    toJSON = toJSONText

-- | Optional. The launch stage of the metric definition.
data MetricDescriptorLaunchStage
    = MDLSLaunchStageUnspecified
      -- ^ @LAUNCH_STAGE_UNSPECIFIED@
      -- Do not use this default value.
    | MDLSUnimplemented
      -- ^ @UNIMPLEMENTED@
      -- The feature is not yet implemented. Users can not use it.
    | MDLSPrelaunch
      -- ^ @PRELAUNCH@
      -- Prelaunch features are hidden from users and are only visible
      -- internally.
    | MDLSEarlyAccess
      -- ^ @EARLY_ACCESS@
      -- Early Access features are limited to a closed group of testers. To use
      -- these features, you must sign up in advance and sign a Trusted Tester
      -- agreement (which includes confidentiality provisions). These features
      -- may be unstable, changed in backward-incompatible ways, and are not
      -- guaranteed to be released.
    | MDLSAlpha
      -- ^ @ALPHA@
      -- Alpha is a limited availability test for releases before they are
      -- cleared for widespread use. By Alpha, all significant design issues are
      -- resolved and we are in the process of verifying functionality. Alpha
      -- customers need to apply for access, agree to applicable terms, and have
      -- their projects allowlisted. Alpha releases don’t have to be feature
      -- complete, no SLAs are provided, and there are no technical support
      -- obligations, but they will be far enough along that customers can
      -- actually use them in test environments or for limited-use tests -- just
      -- like they would in normal production cases.
    | MDLSBeta
      -- ^ @BETA@
      -- Beta is the point at which we are ready to open a release for any
      -- customer to use. There are no SLA or technical support obligations in a
      -- Beta release. Products will be complete from a feature perspective, but
      -- may have some open outstanding issues. Beta releases are suitable for
      -- limited production use cases.
    | MDLSGA
      -- ^ @GA@
      -- GA features are open to all developers and are considered stable and
      -- fully qualified for production use.
    | MDLSDeprecated
      -- ^ @DEPRECATED@
      -- Deprecated features are scheduled to be shut down and removed. For more
      -- information, see the “Deprecation Policy” section of our Terms of
      -- Service (https:\/\/cloud.google.com\/terms\/) and the Google Cloud
      -- Platform Subject to the Deprecation Policy
      -- (https:\/\/cloud.google.com\/terms\/deprecation) documentation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricDescriptorLaunchStage

instance FromHttpApiData MetricDescriptorLaunchStage where
    parseQueryParam = \case
        "LAUNCH_STAGE_UNSPECIFIED" -> Right MDLSLaunchStageUnspecified
        "UNIMPLEMENTED" -> Right MDLSUnimplemented
        "PRELAUNCH" -> Right MDLSPrelaunch
        "EARLY_ACCESS" -> Right MDLSEarlyAccess
        "ALPHA" -> Right MDLSAlpha
        "BETA" -> Right MDLSBeta
        "GA" -> Right MDLSGA
        "DEPRECATED" -> Right MDLSDeprecated
        x -> Left ("Unable to parse MetricDescriptorLaunchStage from: " <> x)

instance ToHttpApiData MetricDescriptorLaunchStage where
    toQueryParam = \case
        MDLSLaunchStageUnspecified -> "LAUNCH_STAGE_UNSPECIFIED"
        MDLSUnimplemented -> "UNIMPLEMENTED"
        MDLSPrelaunch -> "PRELAUNCH"
        MDLSEarlyAccess -> "EARLY_ACCESS"
        MDLSAlpha -> "ALPHA"
        MDLSBeta -> "BETA"
        MDLSGA -> "GA"
        MDLSDeprecated -> "DEPRECATED"

instance FromJSON MetricDescriptorLaunchStage where
    parseJSON = parseJSONText "MetricDescriptorLaunchStage"

instance ToJSON MetricDescriptorLaunchStage where
    toJSON = toJSONText

-- | The current operational state of the internal checker.
data InternalCheckerState
    = ICSUnspecified
      -- ^ @UNSPECIFIED@
      -- An internal checker should never be in the unspecified state.
    | ICSCreating
      -- ^ @CREATING@
      -- The checker is being created, provisioned, and configured. A checker in
      -- this state can be returned by ListInternalCheckers or
      -- GetInternalChecker, as well as by examining the long running Operation
      -- (https:\/\/cloud.google.com\/apis\/design\/design_patterns#long_running_operations)
      -- that created it.
    | ICSRunning
      -- ^ @RUNNING@
      -- The checker is running and available for use. A checker in this state
      -- can be returned by ListInternalCheckers or GetInternalChecker as well as
      -- by examining the long running Operation
      -- (https:\/\/cloud.google.com\/apis\/design\/design_patterns#long_running_operations)
      -- that created it. If a checker is being torn down, it is neither visible
      -- nor usable, so there is no \"deleting\" or \"down\" state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InternalCheckerState

instance FromHttpApiData InternalCheckerState where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right ICSUnspecified
        "CREATING" -> Right ICSCreating
        "RUNNING" -> Right ICSRunning
        x -> Left ("Unable to parse InternalCheckerState from: " <> x)

instance ToHttpApiData InternalCheckerState where
    toQueryParam = \case
        ICSUnspecified -> "UNSPECIFIED"
        ICSCreating -> "CREATING"
        ICSRunning -> "RUNNING"

instance FromJSON InternalCheckerState where
    parseJSON = parseJSONText "InternalCheckerState"

instance ToJSON InternalCheckerState where
    toJSON = toJSONText
