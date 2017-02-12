{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceManagement.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceManagement.Types.Sum where

import           Network.Google.Prelude

-- | Whether the measurement is an integer, a floating-point number, etc.
-- Some combinations of \`metric_kind\` and \`value_type\` might not be
-- supported.
data MetricDescriptorValueType
    = ValueTypeUnspecified
      -- ^ @VALUE_TYPE_UNSPECIFIED@
      -- Do not use this default value.
    | Bool
      -- ^ @BOOL@
      -- The value is a boolean. This value type can be used only if the metric
      -- kind is \`GAUGE\`.
    | INT64
      -- ^ @INT64@
      -- The value is a signed 64-bit integer.
    | Double
      -- ^ @DOUBLE@
      -- The value is a double precision floating point number.
    | String
      -- ^ @STRING@
      -- The value is a text string. This value type can be used only if the
      -- metric kind is \`GAUGE\`.
    | Distribution
      -- ^ @DISTRIBUTION@
      -- The value is a \`Distribution\`.
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

-- | Trusted attributes supplied by any service that owns resources and uses
-- the IAM system for access control.
data ConditionSys
    = CSNoAttr
      -- ^ @NO_ATTR@
      -- Default non-attribute type
    | CSRegion
      -- ^ @REGION@
      -- Region of the resource
    | CSService
      -- ^ @SERVICE@
      -- Service name
    | CSName
      -- ^ @NAME@
      -- Resource name
    | CSIP
      -- ^ @IP@
      -- IP address of the caller
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionSys

instance FromHttpApiData ConditionSys where
    parseQueryParam = \case
        "NO_ATTR" -> Right CSNoAttr
        "REGION" -> Right CSRegion
        "SERVICE" -> Right CSService
        "NAME" -> Right CSName
        "IP" -> Right CSIP
        x -> Left ("Unable to parse ConditionSys from: " <> x)

instance ToHttpApiData ConditionSys where
    toQueryParam = \case
        CSNoAttr -> "NO_ATTR"
        CSRegion -> "REGION"
        CSService -> "SERVICE"
        CSName -> "NAME"
        CSIP -> "IP"

instance FromJSON ConditionSys where
    parseJSON = parseJSONText "ConditionSys"

instance ToJSON ConditionSys where
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

-- | The source syntax.
data EnumSyntax
    = SyntaxPROTO2
      -- ^ @SYNTAX_PROTO2@
      -- Syntax \`proto2\`.
    | SyntaxPROTO3
      -- ^ @SYNTAX_PROTO3@
      -- Syntax \`proto3\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnumSyntax

instance FromHttpApiData EnumSyntax where
    parseQueryParam = \case
        "SYNTAX_PROTO2" -> Right SyntaxPROTO2
        "SYNTAX_PROTO3" -> Right SyntaxPROTO3
        x -> Left ("Unable to parse EnumSyntax from: " <> x)

instance ToHttpApiData EnumSyntax where
    toQueryParam = \case
        SyntaxPROTO2 -> "SYNTAX_PROTO2"
        SyntaxPROTO3 -> "SYNTAX_PROTO3"

instance FromJSON EnumSyntax where
    parseJSON = parseJSONText "EnumSyntax"

instance ToJSON EnumSyntax where
    toJSON = toJSONText

-- | Required
data RuleAction
    = NoAction
      -- ^ @NO_ACTION@
      -- Default no action.
    | Allow
      -- ^ @ALLOW@
      -- Matching \'Entries\' grant access.
    | AllowWithLog
      -- ^ @ALLOW_WITH_LOG@
      -- Matching \'Entries\' grant access and the caller promises to log the
      -- request per the returned log_configs.
    | Deny
      -- ^ @DENY@
      -- Matching \'Entries\' deny access.
    | DenyWithLog
      -- ^ @DENY_WITH_LOG@
      -- Matching \'Entries\' deny access and the caller promises to log the
      -- request per the returned log_configs.
    | Log
      -- ^ @LOG@
      -- Matching \'Entries\' tell IAM.Check callers to generate logs.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RuleAction

instance FromHttpApiData RuleAction where
    parseQueryParam = \case
        "NO_ACTION" -> Right NoAction
        "ALLOW" -> Right Allow
        "ALLOW_WITH_LOG" -> Right AllowWithLog
        "DENY" -> Right Deny
        "DENY_WITH_LOG" -> Right DenyWithLog
        "LOG" -> Right Log
        x -> Left ("Unable to parse RuleAction from: " <> x)

instance ToHttpApiData RuleAction where
    toQueryParam = \case
        NoAction -> "NO_ACTION"
        Allow -> "ALLOW"
        AllowWithLog -> "ALLOW_WITH_LOG"
        Deny -> "DENY"
        DenyWithLog -> "DENY_WITH_LOG"
        Log -> "LOG"

instance FromJSON RuleAction where
    parseJSON = parseJSONText "RuleAction"

instance ToJSON RuleAction where
    toJSON = toJSONText

-- | The status code.
data StepStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Unspecifed code.
    | Done
      -- ^ @DONE@
      -- The step has completed without errors.
    | NotStarted
      -- ^ @NOT_STARTED@
      -- The step has not started yet.
    | InProgress
      -- ^ @IN_PROGRESS@
      -- The step is in progress.
    | Failed
      -- ^ @FAILED@
      -- The step has completed with errors.
    | Cancelled
      -- ^ @CANCELLED@
      -- The step has completed with cancellation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StepStatus

instance FromHttpApiData StepStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right StatusUnspecified
        "DONE" -> Right Done
        "NOT_STARTED" -> Right NotStarted
        "IN_PROGRESS" -> Right InProgress
        "FAILED" -> Right Failed
        "CANCELLED" -> Right Cancelled
        x -> Left ("Unable to parse StepStatus from: " <> x)

instance ToHttpApiData StepStatus where
    toQueryParam = \case
        StatusUnspecified -> "STATUS_UNSPECIFIED"
        Done -> "DONE"
        NotStarted -> "NOT_STARTED"
        InProgress -> "IN_PROGRESS"
        Failed -> "FAILED"
        Cancelled -> "CANCELLED"

instance FromJSON StepStatus where
    parseJSON = parseJSONText "StepStatus"

instance ToJSON StepStatus where
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

-- | The source syntax of the service.
data APISyntax
    = ASSyntaxPROTO2
      -- ^ @SYNTAX_PROTO2@
      -- Syntax \`proto2\`.
    | ASSyntaxPROTO3
      -- ^ @SYNTAX_PROTO3@
      -- Syntax \`proto3\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable APISyntax

instance FromHttpApiData APISyntax where
    parseQueryParam = \case
        "SYNTAX_PROTO2" -> Right ASSyntaxPROTO2
        "SYNTAX_PROTO3" -> Right ASSyntaxPROTO3
        x -> Left ("Unable to parse APISyntax from: " <> x)

instance ToHttpApiData APISyntax where
    toQueryParam = \case
        ASSyntaxPROTO2 -> "SYNTAX_PROTO2"
        ASSyntaxPROTO3 -> "SYNTAX_PROTO3"

instance FromJSON APISyntax where
    parseJSON = parseJSONText "APISyntax"

instance ToJSON APISyntax where
    toJSON = toJSONText

-- | The source syntax.
data TypeSyntax
    = TSSyntaxPROTO2
      -- ^ @SYNTAX_PROTO2@
      -- Syntax \`proto2\`.
    | TSSyntaxPROTO3
      -- ^ @SYNTAX_PROTO3@
      -- Syntax \`proto3\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TypeSyntax

instance FromHttpApiData TypeSyntax where
    parseQueryParam = \case
        "SYNTAX_PROTO2" -> Right TSSyntaxPROTO2
        "SYNTAX_PROTO3" -> Right TSSyntaxPROTO3
        x -> Left ("Unable to parse TypeSyntax from: " <> x)

instance ToHttpApiData TypeSyntax where
    toQueryParam = \case
        TSSyntaxPROTO2 -> "SYNTAX_PROTO2"
        TSSyntaxPROTO3 -> "SYNTAX_PROTO3"

instance FromJSON TypeSyntax where
    parseJSON = parseJSONText "TypeSyntax"

instance ToJSON TypeSyntax where
    toJSON = toJSONText

-- | An operator to apply the subject with.
data ConditionOp
    = NoOp
      -- ^ @NO_OP@
      -- Default no-op.
    | Equals
      -- ^ @EQUALS@
      -- DEPRECATED. Use IN instead.
    | NotEquals
      -- ^ @NOT_EQUALS@
      -- DEPRECATED. Use NOT_IN instead.
    | IN
      -- ^ @IN@
      -- Set-inclusion check.
    | NotIn
      -- ^ @NOT_IN@
      -- Set-exclusion check.
    | Discharged
      -- ^ @DISCHARGED@
      -- Subject is discharged
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionOp

instance FromHttpApiData ConditionOp where
    parseQueryParam = \case
        "NO_OP" -> Right NoOp
        "EQUALS" -> Right Equals
        "NOT_EQUALS" -> Right NotEquals
        "IN" -> Right IN
        "NOT_IN" -> Right NotIn
        "DISCHARGED" -> Right Discharged
        x -> Left ("Unable to parse ConditionOp from: " <> x)

instance ToHttpApiData ConditionOp where
    toQueryParam = \case
        NoOp -> "NO_OP"
        Equals -> "EQUALS"
        NotEquals -> "NOT_EQUALS"
        IN -> "IN"
        NotIn -> "NOT_IN"
        Discharged -> "DISCHARGED"

instance FromJSON ConditionOp where
    parseJSON = parseJSONText "ConditionOp"

instance ToJSON ConditionOp where
    toJSON = toJSONText

-- | The status of this rollout. Readonly. In case of a failed rollout, the
-- system will automatically rollback to the current Rollout version.
-- Readonly.
data RolloutStatus
    = RSRolloutStatusUnspecified
      -- ^ @ROLLOUT_STATUS_UNSPECIFIED@
      -- No status specified.
    | RSInProgress
      -- ^ @IN_PROGRESS@
      -- The Rollout is in progress.
    | RSSuccess
      -- ^ @SUCCESS@
      -- The Rollout has completed successfully.
    | RSCancelled
      -- ^ @CANCELLED@
      -- The Rollout has been cancelled. This can happen if you have overlapping
      -- Rollout pushes, and the previous ones will be cancelled.
    | RSFailed
      -- ^ @FAILED@
      -- The Rollout has failed. It is typically caused by configuration errors.
    | RSPending
      -- ^ @PENDING@
      -- The Rollout has not started yet and is pending for execution.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RolloutStatus

instance FromHttpApiData RolloutStatus where
    parseQueryParam = \case
        "ROLLOUT_STATUS_UNSPECIFIED" -> Right RSRolloutStatusUnspecified
        "IN_PROGRESS" -> Right RSInProgress
        "SUCCESS" -> Right RSSuccess
        "CANCELLED" -> Right RSCancelled
        "FAILED" -> Right RSFailed
        "PENDING" -> Right RSPending
        x -> Left ("Unable to parse RolloutStatus from: " <> x)

instance ToHttpApiData RolloutStatus where
    toQueryParam = \case
        RSRolloutStatusUnspecified -> "ROLLOUT_STATUS_UNSPECIFIED"
        RSInProgress -> "IN_PROGRESS"
        RSSuccess -> "SUCCESS"
        RSCancelled -> "CANCELLED"
        RSFailed -> "FAILED"
        RSPending -> "PENDING"

instance FromJSON RolloutStatus where
    parseJSON = parseJSONText "RolloutStatus"

instance ToJSON RolloutStatus where
    toJSON = toJSONText

-- | The kind of diagnostic information provided.
data DiagnosticKind
    = Warning
      -- ^ @WARNING@
      -- Warnings and errors
    | Error'
      -- ^ @ERROR@
      -- Only errors
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiagnosticKind

instance FromHttpApiData DiagnosticKind where
    parseQueryParam = \case
        "WARNING" -> Right Warning
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse DiagnosticKind from: " <> x)

instance ToHttpApiData DiagnosticKind where
    toQueryParam = \case
        Warning -> "WARNING"
        Error' -> "ERROR"

instance FromJSON DiagnosticKind where
    parseJSON = parseJSONText "DiagnosticKind"

instance ToJSON DiagnosticKind where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
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

-- | The type of configuration file this represents.
data ConfigFileFileType
    = FileTypeUnspecified
      -- ^ @FILE_TYPE_UNSPECIFIED@
      -- Unknown file type.
    | ServiceConfigYaml
      -- ^ @SERVICE_CONFIG_YAML@
      -- YAML-specification of service.
    | OpenAPIJSON
      -- ^ @OPEN_API_JSON@
      -- OpenAPI specification, serialized in JSON.
    | OpenAPIYaml
      -- ^ @OPEN_API_YAML@
      -- OpenAPI specification, serialized in YAML.
    | FileDescriptorSetProto
      -- ^ @FILE_DESCRIPTOR_SET_PROTO@
      -- FileDescriptorSet, generated by protoc. To generate, use protoc with
      -- imports and source info included. For an example test.proto file, the
      -- following command would put the value in a new file named out.pb.
      -- $protoc --include_imports --include_source_info test.proto -o out.pb
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConfigFileFileType

instance FromHttpApiData ConfigFileFileType where
    parseQueryParam = \case
        "FILE_TYPE_UNSPECIFIED" -> Right FileTypeUnspecified
        "SERVICE_CONFIG_YAML" -> Right ServiceConfigYaml
        "OPEN_API_JSON" -> Right OpenAPIJSON
        "OPEN_API_YAML" -> Right OpenAPIYaml
        "FILE_DESCRIPTOR_SET_PROTO" -> Right FileDescriptorSetProto
        x -> Left ("Unable to parse ConfigFileFileType from: " <> x)

instance ToHttpApiData ConfigFileFileType where
    toQueryParam = \case
        FileTypeUnspecified -> "FILE_TYPE_UNSPECIFIED"
        ServiceConfigYaml -> "SERVICE_CONFIG_YAML"
        OpenAPIJSON -> "OPEN_API_JSON"
        OpenAPIYaml -> "OPEN_API_YAML"
        FileDescriptorSetProto -> "FILE_DESCRIPTOR_SET_PROTO"

instance FromJSON ConfigFileFileType where
    parseJSON = parseJSONText "ConfigFileFileType"

instance ToJSON ConfigFileFileType where
    toJSON = toJSONText

-- | The type for this change, either ADDED, REMOVED, or MODIFIED.
data ConfigChangeChangeType
    = ChangeTypeUnspecified
      -- ^ @CHANGE_TYPE_UNSPECIFIED@
      -- No value was provided.
    | Added
      -- ^ @ADDED@
      -- The changed object exists in the \'new\' service configuration, but not
      -- in the \'old\' service configuration.
    | Removed
      -- ^ @REMOVED@
      -- The changed object exists in the \'old\' service configuration, but not
      -- in the \'new\' service configuration.
    | Modified
      -- ^ @MODIFIED@
      -- The changed object exists in both service configurations, but its value
      -- is different.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConfigChangeChangeType

instance FromHttpApiData ConfigChangeChangeType where
    parseQueryParam = \case
        "CHANGE_TYPE_UNSPECIFIED" -> Right ChangeTypeUnspecified
        "ADDED" -> Right Added
        "REMOVED" -> Right Removed
        "MODIFIED" -> Right Modified
        x -> Left ("Unable to parse ConfigChangeChangeType from: " <> x)

instance ToHttpApiData ConfigChangeChangeType where
    toQueryParam = \case
        ChangeTypeUnspecified -> "CHANGE_TYPE_UNSPECIFIED"
        Added -> "ADDED"
        Removed -> "REMOVED"
        Modified -> "MODIFIED"

instance FromJSON ConfigChangeChangeType where
    parseJSON = parseJSONText "ConfigChangeChangeType"

instance ToJSON ConfigChangeChangeType where
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
-- etc. Some combinations of \`metric_kind\` and \`value_type\` might not
-- be supported.
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

-- | The source syntax of this method.
data MethodSyntax
    = MSSyntaxPROTO2
      -- ^ @SYNTAX_PROTO2@
      -- Syntax \`proto2\`.
    | MSSyntaxPROTO3
      -- ^ @SYNTAX_PROTO3@
      -- Syntax \`proto3\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MethodSyntax

instance FromHttpApiData MethodSyntax where
    parseQueryParam = \case
        "SYNTAX_PROTO2" -> Right MSSyntaxPROTO2
        "SYNTAX_PROTO3" -> Right MSSyntaxPROTO3
        x -> Left ("Unable to parse MethodSyntax from: " <> x)

instance ToHttpApiData MethodSyntax where
    toQueryParam = \case
        MSSyntaxPROTO2 -> "SYNTAX_PROTO2"
        MSSyntaxPROTO3 -> "SYNTAX_PROTO3"

instance FromJSON MethodSyntax where
    parseJSON = parseJSONText "MethodSyntax"

instance ToJSON MethodSyntax where
    toJSON = toJSONText

-- | Trusted attributes supplied by the IAM system.
data ConditionIAM
    = NoAttr
      -- ^ @NO_ATTR@
      -- Default non-attribute.
    | Authority
      -- ^ @AUTHORITY@
      -- Either principal or (if present) authority selector.
    | Attribution
      -- ^ @ATTRIBUTION@
      -- The principal (even if an authority selector is present), which must
      -- only be used for attribution, not authorization.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionIAM

instance FromHttpApiData ConditionIAM where
    parseQueryParam = \case
        "NO_ATTR" -> Right NoAttr
        "AUTHORITY" -> Right Authority
        "ATTRIBUTION" -> Right Attribution
        x -> Left ("Unable to parse ConditionIAM from: " <> x)

instance ToHttpApiData ConditionIAM where
    toQueryParam = \case
        NoAttr -> "NO_ATTR"
        Authority -> "AUTHORITY"
        Attribution -> "ATTRIBUTION"

instance FromJSON ConditionIAM where
    parseJSON = parseJSONText "ConditionIAM"

instance ToJSON ConditionIAM where
    toJSON = toJSONText
