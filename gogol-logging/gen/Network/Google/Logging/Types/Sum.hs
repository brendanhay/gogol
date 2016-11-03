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

import           Network.Google.Prelude

-- | Output only. The API version that created or updated this metric. The
-- version also dictates the syntax of the filter expression. When a value
-- for this field is missing, the default value of V2 should be assumed.
data LogMetricVersion
    = V2
      -- ^ @V2@
      -- Stackdriver Logging API v2.
    | V1
      -- ^ @V1@
      -- Stackdriver Logging API v1.
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

-- | Optional. The log entry version to use for this sink\'s exported log
-- entries. This version does not have to correspond to the version of the
-- log entry that was written to Stackdriver Logging. If omitted, the v2
-- format is used.
data LogSinkOutputVersionFormat
    = LSOVFVersionFormatUnspecified
      -- ^ @VERSION_FORMAT_UNSPECIFIED@
      -- An unspecified version format will default to V2.
    | LSOVFV2
      -- ^ @V2@
      -- \`LogEntry\` version 2 format.
    | LSOVFV1
      -- ^ @V1@
      -- \`LogEntry\` version 1 format.
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

-- | Optional. The severity of the log entry. The default value is
-- \`LogSeverity.DEFAULT\`.
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
