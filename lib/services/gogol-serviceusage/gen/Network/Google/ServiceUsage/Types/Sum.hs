{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceUsage.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceUsage.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

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

data BackendRulePathTranslation
    = PathTranslationUnspecified
      -- ^ @PATH_TRANSLATION_UNSPECIFIED@
    | ConstantAddress
      -- ^ @CONSTANT_ADDRESS@
      -- Use the backend address as-is, with no modification to the path. If the
      -- URL pattern contains variables, the variable names and values will be
      -- appended to the query string. If a query string parameter and a URL
      -- pattern variable have the same name, this may result in duplicate keys
      -- in the query string. # Examples Given the following operation config:
      -- Method path: \/api\/company\/{cid}\/user\/{uid} Backend address:
      -- https:\/\/example.cloudfunctions.net\/getUser Requests to the following
      -- request paths will call the backend at the translated path: Request
      -- path: \/api\/company\/widgetworks\/user\/johndoe Translated:
      -- https:\/\/example.cloudfunctions.net\/getUser?cid=widgetworks&uid=johndoe
      -- Request path: \/api\/company\/widgetworks\/user\/johndoe?timezone=EST
      -- Translated:
      -- https:\/\/example.cloudfunctions.net\/getUser?timezone=EST&cid=widgetworks&uid=johndoe
    | AppendPathToAddress
      -- ^ @APPEND_PATH_TO_ADDRESS@
      -- The request path will be appended to the backend address. # Examples
      -- Given the following operation config: Method path:
      -- \/api\/company\/{cid}\/user\/{uid} Backend address:
      -- https:\/\/example.appspot.com Requests to the following request paths
      -- will call the backend at the translated path: Request path:
      -- \/api\/company\/widgetworks\/user\/johndoe Translated:
      -- https:\/\/example.appspot.com\/api\/company\/widgetworks\/user\/johndoe
      -- Request path: \/api\/company\/widgetworks\/user\/johndoe?timezone=EST
      -- Translated:
      -- https:\/\/example.appspot.com\/api\/company\/widgetworks\/user\/johndoe?timezone=EST
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackendRulePathTranslation

instance FromHttpApiData BackendRulePathTranslation where
    parseQueryParam = \case
        "PATH_TRANSLATION_UNSPECIFIED" -> Right PathTranslationUnspecified
        "CONSTANT_ADDRESS" -> Right ConstantAddress
        "APPEND_PATH_TO_ADDRESS" -> Right AppendPathToAddress
        x -> Left ("Unable to parse BackendRulePathTranslation from: " <> x)

instance ToHttpApiData BackendRulePathTranslation where
    toQueryParam = \case
        PathTranslationUnspecified -> "PATH_TRANSLATION_UNSPECIFIED"
        ConstantAddress -> "CONSTANT_ADDRESS"
        AppendPathToAddress -> "APPEND_PATH_TO_ADDRESS"

instance FromJSON BackendRulePathTranslation where
    parseJSON = parseJSONText "BackendRulePathTranslation"

instance ToJSON BackendRulePathTranslation where
    toJSON = toJSONText

-- | Service identity state.
data GoogleAPIServiceusageV1beta1GetServiceIdentityResponseState
    = IdentityStateUnspecified
      -- ^ @IDENTITY_STATE_UNSPECIFIED@
      -- Default service identity state. This value is used if the state is
      -- omitted.
    | Active
      -- ^ @ACTIVE@
      -- Service identity has been created and can be used.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAPIServiceusageV1beta1GetServiceIdentityResponseState

instance FromHttpApiData GoogleAPIServiceusageV1beta1GetServiceIdentityResponseState where
    parseQueryParam = \case
        "IDENTITY_STATE_UNSPECIFIED" -> Right IdentityStateUnspecified
        "ACTIVE" -> Right Active
        x -> Left ("Unable to parse GoogleAPIServiceusageV1beta1GetServiceIdentityResponseState from: " <> x)

instance ToHttpApiData GoogleAPIServiceusageV1beta1GetServiceIdentityResponseState where
    toQueryParam = \case
        IdentityStateUnspecified -> "IDENTITY_STATE_UNSPECIFIED"
        Active -> "ACTIVE"

instance FromJSON GoogleAPIServiceusageV1beta1GetServiceIdentityResponseState where
    parseJSON = parseJSONText "GoogleAPIServiceusageV1beta1GetServiceIdentityResponseState"

instance ToJSON GoogleAPIServiceusageV1beta1GetServiceIdentityResponseState where
    toJSON = toJSONText

-- | Whether or not the service has been enabled for use by the consumer.
data GoogleAPIServiceusageV1ServiceState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The default value, which indicates that the enabled state of the service
      -- is unspecified or not meaningful. Currently, all consumers other than
      -- projects (such as folders and organizations) are always in this state.
    | Disabled
      -- ^ @DISABLED@
      -- The service cannot be used by this consumer. It has either been
      -- explicitly disabled, or has never been enabled.
    | Enabled
      -- ^ @ENABLED@
      -- The service has been explicitly enabled for use by this consumer.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAPIServiceusageV1ServiceState

instance FromHttpApiData GoogleAPIServiceusageV1ServiceState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "DISABLED" -> Right Disabled
        "ENABLED" -> Right Enabled
        x -> Left ("Unable to parse GoogleAPIServiceusageV1ServiceState from: " <> x)

instance ToHttpApiData GoogleAPIServiceusageV1ServiceState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Disabled -> "DISABLED"
        Enabled -> "ENABLED"

instance FromJSON GoogleAPIServiceusageV1ServiceState where
    parseJSON = parseJSONText "GoogleAPIServiceusageV1ServiceState"

instance ToJSON GoogleAPIServiceusageV1ServiceState where
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

-- | Deprecated. Must use the MetricDescriptor.launch_stage instead.
data MetricDescriptorMetadataLaunchStage
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
      -- information, see the “Deprecation Policy” section of our [Terms of
      -- Service](https:\/\/cloud.google.com\/terms\/) and the [Google Cloud
      -- Platform Subject to the Deprecation
      -- Policy](https:\/\/cloud.google.com\/terms\/deprecation) documentation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricDescriptorMetadataLaunchStage

instance FromHttpApiData MetricDescriptorMetadataLaunchStage where
    parseQueryParam = \case
        "LAUNCH_STAGE_UNSPECIFIED" -> Right LaunchStageUnspecified
        "UNIMPLEMENTED" -> Right Unimplemented
        "PRELAUNCH" -> Right Prelaunch
        "EARLY_ACCESS" -> Right EarlyAccess
        "ALPHA" -> Right Alpha
        "BETA" -> Right Beta
        "GA" -> Right GA
        "DEPRECATED" -> Right Deprecated
        x -> Left ("Unable to parse MetricDescriptorMetadataLaunchStage from: " <> x)

instance ToHttpApiData MetricDescriptorMetadataLaunchStage where
    toQueryParam = \case
        LaunchStageUnspecified -> "LAUNCH_STAGE_UNSPECIFIED"
        Unimplemented -> "UNIMPLEMENTED"
        Prelaunch -> "PRELAUNCH"
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
      -- information, see the “Deprecation Policy” section of our [Terms of
      -- Service](https:\/\/cloud.google.com\/terms\/) and the [Google Cloud
      -- Platform Subject to the Deprecation
      -- Policy](https:\/\/cloud.google.com\/terms\/deprecation) documentation.
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

-- | Defines the behavior for checking service usage when disabling a
-- service.
data DisableServiceRequestCheckIfServiceHasUsage
    = CheckIfServiceHasUsageUnspecified
      -- ^ @CHECK_IF_SERVICE_HAS_USAGE_UNSPECIFIED@
      -- When unset, the default behavior is used, which is SKIP.
    | Skip
      -- ^ @SKIP@
      -- If set, skip checking service usage when disabling a service.
    | Check
      -- ^ @CHECK@
      -- If set, service usage is checked when disabling the service. If a
      -- service, or its dependents, has usage in the last 30 days, the request
      -- returns a FAILED_PRECONDITION error.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DisableServiceRequestCheckIfServiceHasUsage

instance FromHttpApiData DisableServiceRequestCheckIfServiceHasUsage where
    parseQueryParam = \case
        "CHECK_IF_SERVICE_HAS_USAGE_UNSPECIFIED" -> Right CheckIfServiceHasUsageUnspecified
        "SKIP" -> Right Skip
        "CHECK" -> Right Check
        x -> Left ("Unable to parse DisableServiceRequestCheckIfServiceHasUsage from: " <> x)

instance ToHttpApiData DisableServiceRequestCheckIfServiceHasUsage where
    toQueryParam = \case
        CheckIfServiceHasUsageUnspecified -> "CHECK_IF_SERVICE_HAS_USAGE_UNSPECIFIED"
        Skip -> "SKIP"
        Check -> "CHECK"

instance FromJSON DisableServiceRequestCheckIfServiceHasUsage where
    parseJSON = parseJSONText "DisableServiceRequestCheckIfServiceHasUsage"

instance ToJSON DisableServiceRequestCheckIfServiceHasUsage where
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
      -- information, see the “Deprecation Policy” section of our [Terms of
      -- Service](https:\/\/cloud.google.com\/terms\/) and the [Google Cloud
      -- Platform Subject to the Deprecation
      -- Policy](https:\/\/cloud.google.com\/terms\/deprecation) documentation.
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

-- | Service identity state.
data GetServiceIdentityResponseState
    = GSIRSIdentityStateUnspecified
      -- ^ @IDENTITY_STATE_UNSPECIFIED@
      -- Default service identity state. This value is used if the state is
      -- omitted.
    | GSIRSActive
      -- ^ @ACTIVE@
      -- Service identity has been created and can be used.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GetServiceIdentityResponseState

instance FromHttpApiData GetServiceIdentityResponseState where
    parseQueryParam = \case
        "IDENTITY_STATE_UNSPECIFIED" -> Right GSIRSIdentityStateUnspecified
        "ACTIVE" -> Right GSIRSActive
        x -> Left ("Unable to parse GetServiceIdentityResponseState from: " <> x)

instance ToHttpApiData GetServiceIdentityResponseState where
    toQueryParam = \case
        GSIRSIdentityStateUnspecified -> "IDENTITY_STATE_UNSPECIFIED"
        GSIRSActive -> "ACTIVE"

instance FromJSON GetServiceIdentityResponseState where
    parseJSON = parseJSONText "GetServiceIdentityResponseState"

instance ToJSON GetServiceIdentityResponseState where
    toJSON = toJSONText
