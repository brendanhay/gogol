{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Logging.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Logging.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Whether the measurement is an integer, a floating-point number, etc.
-- Some combinations of metric_kind and value_type might not be supported.
data MetricDescriptorValueType
    = ValueTypeUnspecified
      -- ^ @VALUE_TYPE_UNSPECIFIED@
      -- Do not use this default value.
    | Bool
      -- ^ @BOOL@
      -- The value is a boolean. This value type can be used only if the metric
      -- kind is GAUGE.
    | INT64
      -- ^ @INT64@
      -- The value is a signed 64-bit integer.
    | Double
      -- ^ @DOUBLE@
      -- The value is a double precision floating point number.
    | String
      -- ^ @STRING@
      -- The value is a text string. This value type can be used only if the
      -- metric kind is GAUGE.
    | Distribution
      -- ^ @DISTRIBUTION@
      -- The value is a Distribution.
    | Money
      -- ^ @MONEY@
      -- The value is money.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricDescriptorValueType

instance FromHttpApiData MetricDescriptorValueType where
    parseQueryParam = \case
        "VALUE_TYPE_UNSPECIFIED" -> Right ValueTypeUnspecified
        "BOOL" -> Right Bool
        "INT64" -> Right INT64
        "DOUBLE" -> Right Double
        "STRING" -> Right String
        "DISTRIBUTION" -> Right Distribution
        "MONEY" -> Right Money
        x -> Left ("Unable to parse MetricDescriptorValueType from: " <> x)

instance ToHttpApiData MetricDescriptorValueType where
    toQueryParam = \case
        ValueTypeUnspecified -> "VALUE_TYPE_UNSPECIFIED"
        Bool -> "BOOL"
        INT64 -> "INT64"
        Double -> "DOUBLE"
        String -> "STRING"
        Distribution -> "DISTRIBUTION"
        Money -> "MONEY"

instance FromJSON MetricDescriptorValueType where
    parseJSON = parseJSONText "MetricDescriptorValueType"

instance ToJSON MetricDescriptorValueType where
    toJSON = toJSONText

-- | Deprecated. The API version that created or updated this metric. The v2
-- format is used by default and cannot be changed.
data LogMetricVersion
    = V2
      -- ^ @V2@
      -- Logging API v2.
    | V1
      -- ^ @V1@
      -- Logging API v1.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogMetricVersion

instance FromHttpApiData LogMetricVersion where
    parseQueryParam = \case
        "V2" -> Right V2
        "V1" -> Right V1
        x -> Left ("Unable to parse LogMetricVersion from: " <> x)

instance ToHttpApiData LogMetricVersion where
    toQueryParam = \case
        V2 -> "V2"
        V1 -> "V1"

instance FromJSON LogMetricVersion where
    parseJSON = parseJSONText "LogMetricVersion"

instance ToJSON LogMetricVersion where
    toJSON = toJSONText

-- | Deprecated. The log entry format to use for this sink\'s exported log
-- entries. The v2 format is used by default and cannot be changed.
data LogSinkOutputVersionFormat
    = LSOVFVersionFormatUnspecified
      -- ^ @VERSION_FORMAT_UNSPECIFIED@
      -- An unspecified format version that will default to V2.
    | LSOVFV2
      -- ^ @V2@
      -- LogEntry version 2 format.
    | LSOVFV1
      -- ^ @V1@
      -- LogEntry version 1 format.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogSinkOutputVersionFormat

instance FromHttpApiData LogSinkOutputVersionFormat where
    parseQueryParam = \case
        "VERSION_FORMAT_UNSPECIFIED" -> Right LSOVFVersionFormatUnspecified
        "V2" -> Right LSOVFV2
        "V1" -> Right LSOVFV1
        x -> Left ("Unable to parse LogSinkOutputVersionFormat from: " <> x)

instance ToHttpApiData LogSinkOutputVersionFormat where
    toQueryParam = \case
        LSOVFVersionFormatUnspecified -> "VERSION_FORMAT_UNSPECIFIED"
        LSOVFV2 -> "V2"
        LSOVFV1 -> "V1"

instance FromJSON LogSinkOutputVersionFormat where
    parseJSON = parseJSONText "LogSinkOutputVersionFormat"

instance ToJSON LogSinkOutputVersionFormat where
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

-- | The type of data that can be assigned to the label.
data LabelDescriptorValueType
    = LDVTString
      -- ^ @STRING@
      -- A variable-length string. This is the default.
    | LDVTBool
      -- ^ @BOOL@
      -- Boolean; true or false.
    | LDVTINT64
      -- ^ @INT64@
      -- A 64-bit signed integer.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LabelDescriptorValueType

instance FromHttpApiData LabelDescriptorValueType where
    parseQueryParam = \case
        "STRING" -> Right LDVTString
        "BOOL" -> Right LDVTBool
        "INT64" -> Right LDVTINT64
        x -> Left ("Unable to parse LabelDescriptorValueType from: " <> x)

instance ToHttpApiData LabelDescriptorValueType where
    toQueryParam = \case
        LDVTString -> "STRING"
        LDVTBool -> "BOOL"
        LDVTINT64 -> "INT64"

instance FromJSON LabelDescriptorValueType where
    parseJSON = parseJSONText "LabelDescriptorValueType"

instance ToJSON LabelDescriptorValueType where
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

-- | Whether the metric records instantaneous values, changes to a value,
-- etc. Some combinations of metric_kind and value_type might not be
-- supported.
data MetricDescriptorMetricKind
    = MetricKindUnspecified
      -- ^ @METRIC_KIND_UNSPECIFIED@
      -- Do not use this default value.
    | Gauge
      -- ^ @GAUGE@
      -- An instantaneous measurement of a value.
    | Delta
      -- ^ @DELTA@
      -- The change in a value during a time interval.
    | Cumulative
      -- ^ @CUMULATIVE@
      -- A value accumulated over a time interval. Cumulative measurements in a
      -- time series should have the same start time and increasing end times,
      -- until an event resets the cumulative value to zero and sets a new start
      -- time for the following points.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricDescriptorMetricKind

instance FromHttpApiData MetricDescriptorMetricKind where
    parseQueryParam = \case
        "METRIC_KIND_UNSPECIFIED" -> Right MetricKindUnspecified
        "GAUGE" -> Right Gauge
        "DELTA" -> Right Delta
        "CUMULATIVE" -> Right Cumulative
        x -> Left ("Unable to parse MetricDescriptorMetricKind from: " <> x)

instance ToHttpApiData MetricDescriptorMetricKind where
    toQueryParam = \case
        MetricKindUnspecified -> "METRIC_KIND_UNSPECIFIED"
        Gauge -> "GAUGE"
        Delta -> "DELTA"
        Cumulative -> "CUMULATIVE"

instance FromJSON MetricDescriptorMetricKind where
    parseJSON = parseJSONText "MetricDescriptorMetricKind"

instance ToJSON MetricDescriptorMetricKind where
    toJSON = toJSONText

-- | Optional. The severity of the log entry. The default value is
-- LogSeverity.DEFAULT.
data LogEntrySeverity
    = Default
      -- ^ @DEFAULT@
      -- (0) The log entry has no assigned severity level.
    | Debug
      -- ^ @DEBUG@
      -- (100) Debug or trace information.
    | Info
      -- ^ @INFO@
      -- (200) Routine information, such as ongoing status or performance.
    | Notice
      -- ^ @NOTICE@
      -- (300) Normal but significant events, such as start up, shut down, or a
      -- configuration change.
    | Warning
      -- ^ @WARNING@
      -- (400) Warning events might cause problems.
    | Error'
      -- ^ @ERROR@
      -- (500) Error events are likely to cause problems.
    | Critical
      -- ^ @CRITICAL@
      -- (600) Critical events cause more severe problems or outages.
    | Alert
      -- ^ @ALERT@
      -- (700) A person must take an action immediately.
    | Emergency
      -- ^ @EMERGENCY@
      -- (800) One or more systems are unusable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogEntrySeverity

instance FromHttpApiData LogEntrySeverity where
    parseQueryParam = \case
        "DEFAULT" -> Right Default
        "DEBUG" -> Right Debug
        "INFO" -> Right Info
        "NOTICE" -> Right Notice
        "WARNING" -> Right Warning
        "ERROR" -> Right Error'
        "CRITICAL" -> Right Critical
        "ALERT" -> Right Alert
        "EMERGENCY" -> Right Emergency
        x -> Left ("Unable to parse LogEntrySeverity from: " <> x)

instance ToHttpApiData LogEntrySeverity where
    toQueryParam = \case
        Default -> "DEFAULT"
        Debug -> "DEBUG"
        Info -> "INFO"
        Notice -> "NOTICE"
        Warning -> "WARNING"
        Error' -> "ERROR"
        Critical -> "CRITICAL"
        Alert -> "ALERT"
        Emergency -> "EMERGENCY"

instance FromJSON LogEntrySeverity where
    parseJSON = parseJSONText "LogEntrySeverity"

instance ToJSON LogEntrySeverity where
    toJSON = toJSONText

-- | Severity of this log entry.
data LogLineSeverity
    = LLSDefault
      -- ^ @DEFAULT@
      -- (0) The log entry has no assigned severity level.
    | LLSDebug
      -- ^ @DEBUG@
      -- (100) Debug or trace information.
    | LLSInfo
      -- ^ @INFO@
      -- (200) Routine information, such as ongoing status or performance.
    | LLSNotice
      -- ^ @NOTICE@
      -- (300) Normal but significant events, such as start up, shut down, or a
      -- configuration change.
    | LLSWarning
      -- ^ @WARNING@
      -- (400) Warning events might cause problems.
    | LLSError'
      -- ^ @ERROR@
      -- (500) Error events are likely to cause problems.
    | LLSCritical
      -- ^ @CRITICAL@
      -- (600) Critical events cause more severe problems or outages.
    | LLSAlert
      -- ^ @ALERT@
      -- (700) A person must take an action immediately.
    | LLSEmergency
      -- ^ @EMERGENCY@
      -- (800) One or more systems are unusable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogLineSeverity

instance FromHttpApiData LogLineSeverity where
    parseQueryParam = \case
        "DEFAULT" -> Right LLSDefault
        "DEBUG" -> Right LLSDebug
        "INFO" -> Right LLSInfo
        "NOTICE" -> Right LLSNotice
        "WARNING" -> Right LLSWarning
        "ERROR" -> Right LLSError'
        "CRITICAL" -> Right LLSCritical
        "ALERT" -> Right LLSAlert
        "EMERGENCY" -> Right LLSEmergency
        x -> Left ("Unable to parse LogLineSeverity from: " <> x)

instance ToHttpApiData LogLineSeverity where
    toQueryParam = \case
        LLSDefault -> "DEFAULT"
        LLSDebug -> "DEBUG"
        LLSInfo -> "INFO"
        LLSNotice -> "NOTICE"
        LLSWarning -> "WARNING"
        LLSError' -> "ERROR"
        LLSCritical -> "CRITICAL"
        LLSAlert -> "ALERT"
        LLSEmergency -> "EMERGENCY"

instance FromJSON LogLineSeverity where
    parseJSON = parseJSONText "LogLineSeverity"

instance ToJSON LogLineSeverity where
    toJSON = toJSONText
