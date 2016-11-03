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

import           Network.Google.Prelude

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
