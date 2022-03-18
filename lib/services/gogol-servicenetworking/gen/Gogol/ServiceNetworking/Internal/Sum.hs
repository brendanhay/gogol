{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceNetworking.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ServiceNetworking.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Api_Syntax
    Api_Syntax
      (
        Api_Syntax_SYNTAX_PROTO2,
        Api_Syntax_SYNTAX_PROTO3,
        ..
      ),

    -- * BackendRule_PathTranslation
    BackendRule_PathTranslation
      (
        BackendRule_PathTranslation_PATHTRANSLATIONUNSPECIFIED,
        BackendRule_PathTranslation_CONSTANTADDRESS,
        BackendRule_PathTranslation_APPENDPATHTOADDRESS,
        ..
      ),

    -- * Enum_Syntax
    Enum_Syntax
      (
        Enum_Syntax_SYNTAX_PROTO2,
        Enum_Syntax_SYNTAX_PROTO3,
        ..
      ),

    -- * Field_Cardinality
    Field_Cardinality
      (
        Field_Cardinality_CARDINALITYUNKNOWN,
        Field_Cardinality_CARDINALITYOPTIONAL,
        Field_Cardinality_CARDINALITYREQUIRED,
        Field_Cardinality_CARDINALITYREPEATED,
        ..
      ),

    -- * Field_Kind
    Field_Kind
      (
        Field_Kind_TYPEUNKNOWN,
        Field_Kind_TYPEDOUBLE,
        Field_Kind_TYPEFLOAT,
        Field_Kind_TYPE_INT64,
        Field_Kind_TYPE_UINT64,
        Field_Kind_TYPE_INT32,
        Field_Kind_TYPE_FIXED64,
        Field_Kind_TYPE_FIXED32,
        Field_Kind_TYPEBOOL,
        Field_Kind_TYPESTRING,
        Field_Kind_TYPEGROUP,
        Field_Kind_TYPEMESSAGE,
        Field_Kind_TYPEBYTES,
        Field_Kind_TYPE_UINT32,
        Field_Kind_TYPEENUM,
        Field_Kind_TYPE_SFIXED32,
        Field_Kind_TYPE_SFIXED64,
        Field_Kind_TYPE_SINT32,
        Field_Kind_TYPE_SINT64,
        ..
      ),

    -- * LabelDescriptor_ValueType
    LabelDescriptor_ValueType
      (
        LabelDescriptor_ValueType_String,
        LabelDescriptor_ValueType_Bool,
        LabelDescriptor_ValueType_INT64,
        ..
      ),

    -- * Method_Syntax
    Method_Syntax
      (
        Method_Syntax_SYNTAX_PROTO2,
        Method_Syntax_SYNTAX_PROTO3,
        ..
      ),

    -- * MetricDescriptor_LaunchStage
    MetricDescriptor_LaunchStage
      (
        MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        MetricDescriptor_LaunchStage_Unimplemented,
        MetricDescriptor_LaunchStage_Prelaunch,
        MetricDescriptor_LaunchStage_EARLYACCESS,
        MetricDescriptor_LaunchStage_Alpha,
        MetricDescriptor_LaunchStage_Beta,
        MetricDescriptor_LaunchStage_GA,
        MetricDescriptor_LaunchStage_Deprecated,
        ..
      ),

    -- * MetricDescriptor_MetricKind
    MetricDescriptor_MetricKind
      (
        MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED,
        MetricDescriptor_MetricKind_Gauge,
        MetricDescriptor_MetricKind_Delta,
        MetricDescriptor_MetricKind_Cumulative,
        ..
      ),

    -- * MetricDescriptor_ValueType
    MetricDescriptor_ValueType
      (
        MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED,
        MetricDescriptor_ValueType_Bool,
        MetricDescriptor_ValueType_INT64,
        MetricDescriptor_ValueType_Double,
        MetricDescriptor_ValueType_String,
        MetricDescriptor_ValueType_Distribution,
        MetricDescriptor_ValueType_Money,
        ..
      ),

    -- * MetricDescriptorMetadata_LaunchStage
    MetricDescriptorMetadata_LaunchStage
      (
        MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        MetricDescriptorMetadata_LaunchStage_Unimplemented,
        MetricDescriptorMetadata_LaunchStage_Prelaunch,
        MetricDescriptorMetadata_LaunchStage_EARLYACCESS,
        MetricDescriptorMetadata_LaunchStage_Alpha,
        MetricDescriptorMetadata_LaunchStage_Beta,
        MetricDescriptorMetadata_LaunchStage_GA,
        MetricDescriptorMetadata_LaunchStage_Deprecated,
        ..
      ),

    -- * MonitoredResourceDescriptor_LaunchStage
    MonitoredResourceDescriptor_LaunchStage
      (
        MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        MonitoredResourceDescriptor_LaunchStage_Unimplemented,
        MonitoredResourceDescriptor_LaunchStage_Prelaunch,
        MonitoredResourceDescriptor_LaunchStage_EARLYACCESS,
        MonitoredResourceDescriptor_LaunchStage_Alpha,
        MonitoredResourceDescriptor_LaunchStage_Beta,
        MonitoredResourceDescriptor_LaunchStage_GA,
        MonitoredResourceDescriptor_LaunchStage_Deprecated,
        ..
      ),

    -- * Type_Syntax
    Type_Syntax
      (
        Type_Syntax_SYNTAX_PROTO2,
        Type_Syntax_SYNTAX_PROTO3,
        ..
      ),

    -- * ValidateConsumerConfigResponse_ValidationError
    ValidateConsumerConfigResponse_ValidationError
      (
        ValidateConsumerConfigResponse_ValidationError_VALIDATIONERRORUNSPECIFIED,
        ValidateConsumerConfigResponse_ValidationError_VALIDATIONNOTREQUESTED,
        ValidateConsumerConfigResponse_ValidationError_SERVICENETWORKINGNOTENABLED,
        ValidateConsumerConfigResponse_ValidationError_NETWORKNOTFOUND,
        ValidateConsumerConfigResponse_ValidationError_NETWORKNOTPEERED,
        ValidateConsumerConfigResponse_ValidationError_NETWORKPEERINGDELETED,
        ValidateConsumerConfigResponse_ValidationError_NETWORKNOTINCONSUMERSPROJECT,
        ValidateConsumerConfigResponse_ValidationError_NETWORKNOTINCONSUMERSHOSTPROJECT,
        ValidateConsumerConfigResponse_ValidationError_HOSTPROJECTNOTFOUND,
        ValidateConsumerConfigResponse_ValidationError_CONSUMERPROJECTNOTSERVICEPROJECT,
        ValidateConsumerConfigResponse_ValidationError_RANGESEXHAUSTED,
        ValidateConsumerConfigResponse_ValidationError_RANGESNOTRESERVED,
        ValidateConsumerConfigResponse_ValidationError_RANGESDELETEDLATER,
        ValidateConsumerConfigResponse_ValidationError_COMPUTEAPINOTENABLED,
        ValidateConsumerConfigResponse_ValidationError_USEPERMISSIONNOTFOUND,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | The source syntax of the service.
newtype Api_Syntax = Api_Syntax { fromApi_Syntax :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Syntax @proto2@.
pattern Api_Syntax_SYNTAX_PROTO2 :: Api_Syntax
pattern Api_Syntax_SYNTAX_PROTO2 = Api_Syntax "SYNTAX_PROTO2"

-- | Syntax @proto3@.
pattern Api_Syntax_SYNTAX_PROTO3 :: Api_Syntax
pattern Api_Syntax_SYNTAX_PROTO3 = Api_Syntax "SYNTAX_PROTO3"

{-# COMPLETE
  Api_Syntax_SYNTAX_PROTO2,
  Api_Syntax_SYNTAX_PROTO3,
  Api_Syntax #-}

newtype BackendRule_PathTranslation = BackendRule_PathTranslation { fromBackendRule_PathTranslation :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern BackendRule_PathTranslation_PATHTRANSLATIONUNSPECIFIED :: BackendRule_PathTranslation
pattern BackendRule_PathTranslation_PATHTRANSLATIONUNSPECIFIED = BackendRule_PathTranslation "PATH_TRANSLATION_UNSPECIFIED"

-- | Use the backend address as-is, with no modification to the path. If the URL pattern contains variables, the variable names and values will be appended to the query string. If a query string parameter and a URL pattern variable have the same name, this may result in duplicate keys in the query string. # Examples Given the following operation config: Method path: \/api\/company\/{cid}\/user\/{uid} Backend address: https:\/\/example.cloudfunctions.net\/getUser Requests to the following request paths will call the backend at the translated path: Request path: \/api\/company\/widgetworks\/user\/johndoe Translated: https:\/\/example.cloudfunctions.net\/getUser?cid=widgetworks&uid=johndoe Request path: \/api\/company\/widgetworks\/user\/johndoe?timezone=EST Translated: https:\/\/example.cloudfunctions.net\/getUser?timezone=EST&cid=widgetworks&uid=johndoe
pattern BackendRule_PathTranslation_CONSTANTADDRESS :: BackendRule_PathTranslation
pattern BackendRule_PathTranslation_CONSTANTADDRESS = BackendRule_PathTranslation "CONSTANT_ADDRESS"

-- | The request path will be appended to the backend address. # Examples Given the following operation config: Method path: \/api\/company\/{cid}\/user\/{uid} Backend address: https:\/\/example.appspot.com Requests to the following request paths will call the backend at the translated path: Request path: \/api\/company\/widgetworks\/user\/johndoe Translated: https:\/\/example.appspot.com\/api\/company\/widgetworks\/user\/johndoe Request path: \/api\/company\/widgetworks\/user\/johndoe?timezone=EST Translated: https:\/\/example.appspot.com\/api\/company\/widgetworks\/user\/johndoe?timezone=EST
pattern BackendRule_PathTranslation_APPENDPATHTOADDRESS :: BackendRule_PathTranslation
pattern BackendRule_PathTranslation_APPENDPATHTOADDRESS = BackendRule_PathTranslation "APPEND_PATH_TO_ADDRESS"

{-# COMPLETE
  BackendRule_PathTranslation_PATHTRANSLATIONUNSPECIFIED,
  BackendRule_PathTranslation_CONSTANTADDRESS,
  BackendRule_PathTranslation_APPENDPATHTOADDRESS,
  BackendRule_PathTranslation #-}

-- | The source syntax.
newtype Enum_Syntax = Enum_Syntax { fromEnum_Syntax :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Syntax @proto2@.
pattern Enum_Syntax_SYNTAX_PROTO2 :: Enum_Syntax
pattern Enum_Syntax_SYNTAX_PROTO2 = Enum_Syntax "SYNTAX_PROTO2"

-- | Syntax @proto3@.
pattern Enum_Syntax_SYNTAX_PROTO3 :: Enum_Syntax
pattern Enum_Syntax_SYNTAX_PROTO3 = Enum_Syntax "SYNTAX_PROTO3"

{-# COMPLETE
  Enum_Syntax_SYNTAX_PROTO2,
  Enum_Syntax_SYNTAX_PROTO3,
  Enum_Syntax #-}

-- | The field cardinality.
newtype Field_Cardinality = Field_Cardinality { fromField_Cardinality :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | For fields with unknown cardinality.
pattern Field_Cardinality_CARDINALITYUNKNOWN :: Field_Cardinality
pattern Field_Cardinality_CARDINALITYUNKNOWN = Field_Cardinality "CARDINALITY_UNKNOWN"

-- | For optional fields.
pattern Field_Cardinality_CARDINALITYOPTIONAL :: Field_Cardinality
pattern Field_Cardinality_CARDINALITYOPTIONAL = Field_Cardinality "CARDINALITY_OPTIONAL"

-- | For required fields. Proto2 syntax only.
pattern Field_Cardinality_CARDINALITYREQUIRED :: Field_Cardinality
pattern Field_Cardinality_CARDINALITYREQUIRED = Field_Cardinality "CARDINALITY_REQUIRED"

-- | For repeated fields.
pattern Field_Cardinality_CARDINALITYREPEATED :: Field_Cardinality
pattern Field_Cardinality_CARDINALITYREPEATED = Field_Cardinality "CARDINALITY_REPEATED"

{-# COMPLETE
  Field_Cardinality_CARDINALITYUNKNOWN,
  Field_Cardinality_CARDINALITYOPTIONAL,
  Field_Cardinality_CARDINALITYREQUIRED,
  Field_Cardinality_CARDINALITYREPEATED,
  Field_Cardinality #-}

-- | The field type.
newtype Field_Kind = Field_Kind { fromField_Kind :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Field type unknown.
pattern Field_Kind_TYPEUNKNOWN :: Field_Kind
pattern Field_Kind_TYPEUNKNOWN = Field_Kind "TYPE_UNKNOWN"

-- | Field type double.
pattern Field_Kind_TYPEDOUBLE :: Field_Kind
pattern Field_Kind_TYPEDOUBLE = Field_Kind "TYPE_DOUBLE"

-- | Field type float.
pattern Field_Kind_TYPEFLOAT :: Field_Kind
pattern Field_Kind_TYPEFLOAT = Field_Kind "TYPE_FLOAT"

-- | Field type int64.
pattern Field_Kind_TYPE_INT64 :: Field_Kind
pattern Field_Kind_TYPE_INT64 = Field_Kind "TYPE_INT64"

-- | Field type uint64.
pattern Field_Kind_TYPE_UINT64 :: Field_Kind
pattern Field_Kind_TYPE_UINT64 = Field_Kind "TYPE_UINT64"

-- | Field type int32.
pattern Field_Kind_TYPE_INT32 :: Field_Kind
pattern Field_Kind_TYPE_INT32 = Field_Kind "TYPE_INT32"

-- | Field type fixed64.
pattern Field_Kind_TYPE_FIXED64 :: Field_Kind
pattern Field_Kind_TYPE_FIXED64 = Field_Kind "TYPE_FIXED64"

-- | Field type fixed32.
pattern Field_Kind_TYPE_FIXED32 :: Field_Kind
pattern Field_Kind_TYPE_FIXED32 = Field_Kind "TYPE_FIXED32"

-- | Field type bool.
pattern Field_Kind_TYPEBOOL :: Field_Kind
pattern Field_Kind_TYPEBOOL = Field_Kind "TYPE_BOOL"

-- | Field type string.
pattern Field_Kind_TYPESTRING :: Field_Kind
pattern Field_Kind_TYPESTRING = Field_Kind "TYPE_STRING"

-- | Field type group. Proto2 syntax only, and deprecated.
pattern Field_Kind_TYPEGROUP :: Field_Kind
pattern Field_Kind_TYPEGROUP = Field_Kind "TYPE_GROUP"

-- | Field type message.
pattern Field_Kind_TYPEMESSAGE :: Field_Kind
pattern Field_Kind_TYPEMESSAGE = Field_Kind "TYPE_MESSAGE"

-- | Field type bytes.
pattern Field_Kind_TYPEBYTES :: Field_Kind
pattern Field_Kind_TYPEBYTES = Field_Kind "TYPE_BYTES"

-- | Field type uint32.
pattern Field_Kind_TYPE_UINT32 :: Field_Kind
pattern Field_Kind_TYPE_UINT32 = Field_Kind "TYPE_UINT32"

-- | Field type enum.
pattern Field_Kind_TYPEENUM :: Field_Kind
pattern Field_Kind_TYPEENUM = Field_Kind "TYPE_ENUM"

-- | Field type sfixed32.
pattern Field_Kind_TYPE_SFIXED32 :: Field_Kind
pattern Field_Kind_TYPE_SFIXED32 = Field_Kind "TYPE_SFIXED32"

-- | Field type sfixed64.
pattern Field_Kind_TYPE_SFIXED64 :: Field_Kind
pattern Field_Kind_TYPE_SFIXED64 = Field_Kind "TYPE_SFIXED64"

-- | Field type sint32.
pattern Field_Kind_TYPE_SINT32 :: Field_Kind
pattern Field_Kind_TYPE_SINT32 = Field_Kind "TYPE_SINT32"

-- | Field type sint64.
pattern Field_Kind_TYPE_SINT64 :: Field_Kind
pattern Field_Kind_TYPE_SINT64 = Field_Kind "TYPE_SINT64"

{-# COMPLETE
  Field_Kind_TYPEUNKNOWN,
  Field_Kind_TYPEDOUBLE,
  Field_Kind_TYPEFLOAT,
  Field_Kind_TYPE_INT64,
  Field_Kind_TYPE_UINT64,
  Field_Kind_TYPE_INT32,
  Field_Kind_TYPE_FIXED64,
  Field_Kind_TYPE_FIXED32,
  Field_Kind_TYPEBOOL,
  Field_Kind_TYPESTRING,
  Field_Kind_TYPEGROUP,
  Field_Kind_TYPEMESSAGE,
  Field_Kind_TYPEBYTES,
  Field_Kind_TYPE_UINT32,
  Field_Kind_TYPEENUM,
  Field_Kind_TYPE_SFIXED32,
  Field_Kind_TYPE_SFIXED64,
  Field_Kind_TYPE_SINT32,
  Field_Kind_TYPE_SINT64,
  Field_Kind #-}

-- | The type of data that can be assigned to the label.
newtype LabelDescriptor_ValueType = LabelDescriptor_ValueType { fromLabelDescriptor_ValueType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | A variable-length string. This is the default.
pattern LabelDescriptor_ValueType_String :: LabelDescriptor_ValueType
pattern LabelDescriptor_ValueType_String = LabelDescriptor_ValueType "STRING"

-- | Boolean; true or false.
pattern LabelDescriptor_ValueType_Bool :: LabelDescriptor_ValueType
pattern LabelDescriptor_ValueType_Bool = LabelDescriptor_ValueType "BOOL"

-- | A 64-bit signed integer.
pattern LabelDescriptor_ValueType_INT64 :: LabelDescriptor_ValueType
pattern LabelDescriptor_ValueType_INT64 = LabelDescriptor_ValueType "INT64"

{-# COMPLETE
  LabelDescriptor_ValueType_String,
  LabelDescriptor_ValueType_Bool,
  LabelDescriptor_ValueType_INT64,
  LabelDescriptor_ValueType #-}

-- | The source syntax of this method.
newtype Method_Syntax = Method_Syntax { fromMethod_Syntax :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Syntax @proto2@.
pattern Method_Syntax_SYNTAX_PROTO2 :: Method_Syntax
pattern Method_Syntax_SYNTAX_PROTO2 = Method_Syntax "SYNTAX_PROTO2"

-- | Syntax @proto3@.
pattern Method_Syntax_SYNTAX_PROTO3 :: Method_Syntax
pattern Method_Syntax_SYNTAX_PROTO3 = Method_Syntax "SYNTAX_PROTO3"

{-# COMPLETE
  Method_Syntax_SYNTAX_PROTO2,
  Method_Syntax_SYNTAX_PROTO3,
  Method_Syntax #-}

-- | Optional. The launch stage of the metric definition.
newtype MetricDescriptor_LaunchStage = MetricDescriptor_LaunchStage { fromMetricDescriptor_LaunchStage :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use this default value.
pattern MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED = MetricDescriptor_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern MetricDescriptor_LaunchStage_Unimplemented :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Unimplemented = MetricDescriptor_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern MetricDescriptor_LaunchStage_Prelaunch :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Prelaunch = MetricDescriptor_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern MetricDescriptor_LaunchStage_EARLYACCESS :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_EARLYACCESS = MetricDescriptor_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern MetricDescriptor_LaunchStage_Alpha :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Alpha = MetricDescriptor_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern MetricDescriptor_LaunchStage_Beta :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Beta = MetricDescriptor_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern MetricDescriptor_LaunchStage_GA :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_GA = MetricDescriptor_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our <https://cloud.google.com/terms/ Terms of Service> and the <https://cloud.google.com/terms/deprecation Google Cloud Platform Subject to the Deprecation Policy> documentation.
pattern MetricDescriptor_LaunchStage_Deprecated :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Deprecated = MetricDescriptor_LaunchStage "DEPRECATED"

{-# COMPLETE
  MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  MetricDescriptor_LaunchStage_Unimplemented,
  MetricDescriptor_LaunchStage_Prelaunch,
  MetricDescriptor_LaunchStage_EARLYACCESS,
  MetricDescriptor_LaunchStage_Alpha,
  MetricDescriptor_LaunchStage_Beta,
  MetricDescriptor_LaunchStage_GA,
  MetricDescriptor_LaunchStage_Deprecated,
  MetricDescriptor_LaunchStage #-}

-- | Whether the metric records instantaneous values, changes to a value, etc. Some combinations of @metric_kind@ and @value_type@ might not be supported.
newtype MetricDescriptor_MetricKind = MetricDescriptor_MetricKind { fromMetricDescriptor_MetricKind :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use this default value.
pattern MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED = MetricDescriptor_MetricKind "METRIC_KIND_UNSPECIFIED"

-- | An instantaneous measurement of a value.
pattern MetricDescriptor_MetricKind_Gauge :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_Gauge = MetricDescriptor_MetricKind "GAUGE"

-- | The change in a value during a time interval.
pattern MetricDescriptor_MetricKind_Delta :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_Delta = MetricDescriptor_MetricKind "DELTA"

-- | A value accumulated over a time interval. Cumulative measurements in a time series should have the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.
pattern MetricDescriptor_MetricKind_Cumulative :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_Cumulative = MetricDescriptor_MetricKind "CUMULATIVE"

{-# COMPLETE
  MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED,
  MetricDescriptor_MetricKind_Gauge,
  MetricDescriptor_MetricKind_Delta,
  MetricDescriptor_MetricKind_Cumulative,
  MetricDescriptor_MetricKind #-}

-- | Whether the measurement is an integer, a floating-point number, etc. Some combinations of @metric_kind@ and @value_type@ might not be supported.
newtype MetricDescriptor_ValueType = MetricDescriptor_ValueType { fromMetricDescriptor_ValueType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use this default value.
pattern MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED = MetricDescriptor_ValueType "VALUE_TYPE_UNSPECIFIED"

-- | The value is a boolean. This value type can be used only if the metric kind is @GAUGE@.
pattern MetricDescriptor_ValueType_Bool :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Bool = MetricDescriptor_ValueType "BOOL"

-- | The value is a signed 64-bit integer.
pattern MetricDescriptor_ValueType_INT64 :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_INT64 = MetricDescriptor_ValueType "INT64"

-- | The value is a double precision floating point number.
pattern MetricDescriptor_ValueType_Double :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Double = MetricDescriptor_ValueType "DOUBLE"

-- | The value is a text string. This value type can be used only if the metric kind is @GAUGE@.
pattern MetricDescriptor_ValueType_String :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_String = MetricDescriptor_ValueType "STRING"

-- | The value is a @Distribution@.
pattern MetricDescriptor_ValueType_Distribution :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Distribution = MetricDescriptor_ValueType "DISTRIBUTION"

-- | The value is money.
pattern MetricDescriptor_ValueType_Money :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Money = MetricDescriptor_ValueType "MONEY"

{-# COMPLETE
  MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED,
  MetricDescriptor_ValueType_Bool,
  MetricDescriptor_ValueType_INT64,
  MetricDescriptor_ValueType_Double,
  MetricDescriptor_ValueType_String,
  MetricDescriptor_ValueType_Distribution,
  MetricDescriptor_ValueType_Money,
  MetricDescriptor_ValueType #-}

-- | Deprecated. Must use the MetricDescriptor.launch_stage instead.
newtype MetricDescriptorMetadata_LaunchStage = MetricDescriptorMetadata_LaunchStage { fromMetricDescriptorMetadata_LaunchStage :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use this default value.
pattern MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED = MetricDescriptorMetadata_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern MetricDescriptorMetadata_LaunchStage_Unimplemented :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Unimplemented = MetricDescriptorMetadata_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern MetricDescriptorMetadata_LaunchStage_Prelaunch :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Prelaunch = MetricDescriptorMetadata_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern MetricDescriptorMetadata_LaunchStage_EARLYACCESS :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_EARLYACCESS = MetricDescriptorMetadata_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern MetricDescriptorMetadata_LaunchStage_Alpha :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Alpha = MetricDescriptorMetadata_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern MetricDescriptorMetadata_LaunchStage_Beta :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Beta = MetricDescriptorMetadata_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern MetricDescriptorMetadata_LaunchStage_GA :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_GA = MetricDescriptorMetadata_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our <https://cloud.google.com/terms/ Terms of Service> and the <https://cloud.google.com/terms/deprecation Google Cloud Platform Subject to the Deprecation Policy> documentation.
pattern MetricDescriptorMetadata_LaunchStage_Deprecated :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Deprecated = MetricDescriptorMetadata_LaunchStage "DEPRECATED"

{-# COMPLETE
  MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  MetricDescriptorMetadata_LaunchStage_Unimplemented,
  MetricDescriptorMetadata_LaunchStage_Prelaunch,
  MetricDescriptorMetadata_LaunchStage_EARLYACCESS,
  MetricDescriptorMetadata_LaunchStage_Alpha,
  MetricDescriptorMetadata_LaunchStage_Beta,
  MetricDescriptorMetadata_LaunchStage_GA,
  MetricDescriptorMetadata_LaunchStage_Deprecated,
  MetricDescriptorMetadata_LaunchStage #-}

-- | Optional. The launch stage of the monitored resource definition.
newtype MonitoredResourceDescriptor_LaunchStage = MonitoredResourceDescriptor_LaunchStage { fromMonitoredResourceDescriptor_LaunchStage :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use this default value.
pattern MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED = MonitoredResourceDescriptor_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern MonitoredResourceDescriptor_LaunchStage_Unimplemented :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Unimplemented = MonitoredResourceDescriptor_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern MonitoredResourceDescriptor_LaunchStage_Prelaunch :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Prelaunch = MonitoredResourceDescriptor_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern MonitoredResourceDescriptor_LaunchStage_EARLYACCESS :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_EARLYACCESS = MonitoredResourceDescriptor_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern MonitoredResourceDescriptor_LaunchStage_Alpha :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Alpha = MonitoredResourceDescriptor_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern MonitoredResourceDescriptor_LaunchStage_Beta :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Beta = MonitoredResourceDescriptor_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern MonitoredResourceDescriptor_LaunchStage_GA :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_GA = MonitoredResourceDescriptor_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our <https://cloud.google.com/terms/ Terms of Service> and the <https://cloud.google.com/terms/deprecation Google Cloud Platform Subject to the Deprecation Policy> documentation.
pattern MonitoredResourceDescriptor_LaunchStage_Deprecated :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Deprecated = MonitoredResourceDescriptor_LaunchStage "DEPRECATED"

{-# COMPLETE
  MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  MonitoredResourceDescriptor_LaunchStage_Unimplemented,
  MonitoredResourceDescriptor_LaunchStage_Prelaunch,
  MonitoredResourceDescriptor_LaunchStage_EARLYACCESS,
  MonitoredResourceDescriptor_LaunchStage_Alpha,
  MonitoredResourceDescriptor_LaunchStage_Beta,
  MonitoredResourceDescriptor_LaunchStage_GA,
  MonitoredResourceDescriptor_LaunchStage_Deprecated,
  MonitoredResourceDescriptor_LaunchStage #-}

-- | The source syntax.
newtype Type_Syntax = Type_Syntax { fromType_Syntax :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Syntax @proto2@.
pattern Type_Syntax_SYNTAX_PROTO2 :: Type_Syntax
pattern Type_Syntax_SYNTAX_PROTO2 = Type_Syntax "SYNTAX_PROTO2"

-- | Syntax @proto3@.
pattern Type_Syntax_SYNTAX_PROTO3 :: Type_Syntax
pattern Type_Syntax_SYNTAX_PROTO3 = Type_Syntax "SYNTAX_PROTO3"

{-# COMPLETE
  Type_Syntax_SYNTAX_PROTO2,
  Type_Syntax_SYNTAX_PROTO3,
  Type_Syntax #-}

-- | The first validation which failed.
newtype ValidateConsumerConfigResponse_ValidationError = ValidateConsumerConfigResponse_ValidationError { fromValidateConsumerConfigResponse_ValidationError :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ValidateConsumerConfigResponse_ValidationError_VALIDATIONERRORUNSPECIFIED :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_VALIDATIONERRORUNSPECIFIED = ValidateConsumerConfigResponse_ValidationError "VALIDATION_ERROR_UNSPECIFIED"

-- | In case none of the validations are requested.
pattern ValidateConsumerConfigResponse_ValidationError_VALIDATIONNOTREQUESTED :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_VALIDATIONNOTREQUESTED = ValidateConsumerConfigResponse_ValidationError "VALIDATION_NOT_REQUESTED"

-- | 
pattern ValidateConsumerConfigResponse_ValidationError_SERVICENETWORKINGNOTENABLED :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_SERVICENETWORKINGNOTENABLED = ValidateConsumerConfigResponse_ValidationError "SERVICE_NETWORKING_NOT_ENABLED"

-- | The network provided by the consumer does not exist.
pattern ValidateConsumerConfigResponse_ValidationError_NETWORKNOTFOUND :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_NETWORKNOTFOUND = ValidateConsumerConfigResponse_ValidationError "NETWORK_NOT_FOUND"

-- | The network has not been peered with the producer org.
pattern ValidateConsumerConfigResponse_ValidationError_NETWORKNOTPEERED :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_NETWORKNOTPEERED = ValidateConsumerConfigResponse_ValidationError "NETWORK_NOT_PEERED"

-- | The peering was created and later deleted.
pattern ValidateConsumerConfigResponse_ValidationError_NETWORKPEERINGDELETED :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_NETWORKPEERINGDELETED = ValidateConsumerConfigResponse_ValidationError "NETWORK_PEERING_DELETED"

-- | The network is a regular VPC but the network is not in the consumer\'s project.
pattern ValidateConsumerConfigResponse_ValidationError_NETWORKNOTINCONSUMERSPROJECT :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_NETWORKNOTINCONSUMERSPROJECT = ValidateConsumerConfigResponse_ValidationError "NETWORK_NOT_IN_CONSUMERS_PROJECT"

-- | The consumer project is a service project, and network is a shared VPC, but the network is not in the host project of this consumer project.
pattern ValidateConsumerConfigResponse_ValidationError_NETWORKNOTINCONSUMERSHOSTPROJECT :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_NETWORKNOTINCONSUMERSHOSTPROJECT = ValidateConsumerConfigResponse_ValidationError "NETWORK_NOT_IN_CONSUMERS_HOST_PROJECT"

-- | The host project associated with the consumer project was not found.
pattern ValidateConsumerConfigResponse_ValidationError_HOSTPROJECTNOTFOUND :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_HOSTPROJECTNOTFOUND = ValidateConsumerConfigResponse_ValidationError "HOST_PROJECT_NOT_FOUND"

-- | The consumer project is not a service project for the specified host project.
pattern ValidateConsumerConfigResponse_ValidationError_CONSUMERPROJECTNOTSERVICEPROJECT :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_CONSUMERPROJECTNOTSERVICEPROJECT = ValidateConsumerConfigResponse_ValidationError "CONSUMER_PROJECT_NOT_SERVICE_PROJECT"

-- | The reserved IP ranges do not have enough space to create a subnet of desired size.
pattern ValidateConsumerConfigResponse_ValidationError_RANGESEXHAUSTED :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_RANGESEXHAUSTED = ValidateConsumerConfigResponse_ValidationError "RANGES_EXHAUSTED"

-- | The IP ranges were not reserved.
pattern ValidateConsumerConfigResponse_ValidationError_RANGESNOTRESERVED :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_RANGESNOTRESERVED = ValidateConsumerConfigResponse_ValidationError "RANGES_NOT_RESERVED"

-- | The IP ranges were reserved but deleted later.
pattern ValidateConsumerConfigResponse_ValidationError_RANGESDELETEDLATER :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_RANGESDELETEDLATER = ValidateConsumerConfigResponse_ValidationError "RANGES_DELETED_LATER"

-- | The consumer project does not have the compute api enabled.
pattern ValidateConsumerConfigResponse_ValidationError_COMPUTEAPINOTENABLED :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_COMPUTEAPINOTENABLED = ValidateConsumerConfigResponse_ValidationError "COMPUTE_API_NOT_ENABLED"

-- | The consumer project does not have the permission from the host project.
pattern ValidateConsumerConfigResponse_ValidationError_USEPERMISSIONNOTFOUND :: ValidateConsumerConfigResponse_ValidationError
pattern ValidateConsumerConfigResponse_ValidationError_USEPERMISSIONNOTFOUND = ValidateConsumerConfigResponse_ValidationError "USE_PERMISSION_NOT_FOUND"

{-# COMPLETE
  ValidateConsumerConfigResponse_ValidationError_VALIDATIONERRORUNSPECIFIED,
  ValidateConsumerConfigResponse_ValidationError_VALIDATIONNOTREQUESTED,
  ValidateConsumerConfigResponse_ValidationError_SERVICENETWORKINGNOTENABLED,
  ValidateConsumerConfigResponse_ValidationError_NETWORKNOTFOUND,
  ValidateConsumerConfigResponse_ValidationError_NETWORKNOTPEERED,
  ValidateConsumerConfigResponse_ValidationError_NETWORKPEERINGDELETED,
  ValidateConsumerConfigResponse_ValidationError_NETWORKNOTINCONSUMERSPROJECT,
  ValidateConsumerConfigResponse_ValidationError_NETWORKNOTINCONSUMERSHOSTPROJECT,
  ValidateConsumerConfigResponse_ValidationError_HOSTPROJECTNOTFOUND,
  ValidateConsumerConfigResponse_ValidationError_CONSUMERPROJECTNOTSERVICEPROJECT,
  ValidateConsumerConfigResponse_ValidationError_RANGESEXHAUSTED,
  ValidateConsumerConfigResponse_ValidationError_RANGESNOTRESERVED,
  ValidateConsumerConfigResponse_ValidationError_RANGESDELETEDLATER,
  ValidateConsumerConfigResponse_ValidationError_COMPUTEAPINOTENABLED,
  ValidateConsumerConfigResponse_ValidationError_USEPERMISSIONNOTFOUND,
  ValidateConsumerConfigResponse_ValidationError #-}
