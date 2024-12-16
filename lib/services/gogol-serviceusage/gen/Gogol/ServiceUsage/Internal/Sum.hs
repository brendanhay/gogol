{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceUsage.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ServiceUsage.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Analysis_AnalysisType
    Analysis_AnalysisType
      (
        Analysis_AnalysisType_ANALYSISTYPEUNSPECIFIED,
        Analysis_AnalysisType_ANALYSISTYPEDEPENDENCY,
        Analysis_AnalysisType_ANALYSISTYPERESOURCEUSAGE,
        ..
      ),

    -- * Api_Syntax
    Api_Syntax
      (
        Api_Syntax_SYNTAX_PROTO2,
        Api_Syntax_SYNTAX_PROTO3,
        Api_Syntax_SYNTAXEDITIONS,
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

    -- * ClientLibrarySettings_LaunchStage
    ClientLibrarySettings_LaunchStage
      (
        ClientLibrarySettings_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        ClientLibrarySettings_LaunchStage_Unimplemented,
        ClientLibrarySettings_LaunchStage_Prelaunch,
        ClientLibrarySettings_LaunchStage_EARLYACCESS,
        ClientLibrarySettings_LaunchStage_Alpha,
        ClientLibrarySettings_LaunchStage_Beta,
        ClientLibrarySettings_LaunchStage_GA,
        ClientLibrarySettings_LaunchStage_Deprecated,
        ..
      ),

    -- * CommonLanguageSettings_DestinationsItem
    CommonLanguageSettings_DestinationsItem
      (
        CommonLanguageSettings_DestinationsItem_CLIENTLIBRARYDESTINATIONUNSPECIFIED,
        CommonLanguageSettings_DestinationsItem_Github,
        CommonLanguageSettings_DestinationsItem_PACKAGEMANAGER,
        ..
      ),

    -- * DisableServiceRequest_CheckIfServiceHasUsage
    DisableServiceRequest_CheckIfServiceHasUsage
      (
        DisableServiceRequest_CheckIfServiceHasUsage_CHECKIFSERVICEHASUSAGEUNSPECIFIED,
        DisableServiceRequest_CheckIfServiceHasUsage_Skip,
        DisableServiceRequest_CheckIfServiceHasUsage_Check,
        ..
      ),

    -- * EnableRule_EnableType
    EnableRule_EnableType
      (
        EnableRule_EnableType_ENABLETYPEUNSPECIFIED,
        EnableRule_EnableType_Client,
        EnableRule_EnableType_Resource,
        EnableRule_EnableType_V1COMPATIBLE,
        ..
      ),

    -- * Enum_Syntax
    Enum_Syntax
      (
        Enum_Syntax_SYNTAX_PROTO2,
        Enum_Syntax_SYNTAX_PROTO3,
        Enum_Syntax_SYNTAXEDITIONS,
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

    -- * GetServiceIdentityResponse_State
    GetServiceIdentityResponse_State
      (
        GetServiceIdentityResponse_State_IDENTITYSTATEUNSPECIFIED,
        GetServiceIdentityResponse_State_Active,
        ..
      ),

    -- * GoogleApiServiceusageV1Service_State
    GoogleApiServiceusageV1Service_State
      (
        GoogleApiServiceusageV1Service_State_STATEUNSPECIFIED,
        GoogleApiServiceusageV1Service_State_Disabled,
        GoogleApiServiceusageV1Service_State_Enabled,
        ..
      ),

    -- * GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State
    GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State
      (
        GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State_IDENTITYSTATEUNSPECIFIED,
        GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State_Active,
        ..
      ),

    -- * GoogleApiServiceusageV2betaAnalysis_AnalysisType
    GoogleApiServiceusageV2betaAnalysis_AnalysisType
      (
        GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPEUNSPECIFIED,
        GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPEDEPENDENCY,
        GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPERESOURCEUSAGE,
        ..
      ),

    -- * GoogleApiServiceusageV2betaImpact_ImpactType
    GoogleApiServiceusageV2betaImpact_ImpactType
      (
        GoogleApiServiceusageV2betaImpact_ImpactType_IMPACTTYPEUNSPECIFIED,
        GoogleApiServiceusageV2betaImpact_ImpactType_DEPENDENCYMISSINGDEPENDENCIES,
        ..
      ),

    -- * Impact_ImpactType
    Impact_ImpactType
      (
        Impact_ImpactType_IMPACTTYPEUNSPECIFIED,
        Impact_ImpactType_DEPENDENCYMISSINGDEPENDENCIES,
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
        Method_Syntax_SYNTAXEDITIONS,
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

    -- * MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
    MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
      (
        MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_TIMESERIESRESOURCEHIERARCHYLEVELUNSPECIFIED,
        MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Project,
        MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Organization,
        MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Folder,
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

    -- * Publishing_Organization
    Publishing_Organization
      (
        Publishing_Organization_CLIENTLIBRARYORGANIZATIONUNSPECIFIED,
        Publishing_Organization_Cloud,
        Publishing_Organization_Ads,
        Publishing_Organization_Photos,
        Publishing_Organization_STREETVIEW,
        Publishing_Organization_Shopping,
        Publishing_Organization_Geo,
        Publishing_Organization_GENERATIVEAI,
        ..
      ),

    -- * Type_Syntax
    Type_Syntax
      (
        Type_Syntax_SYNTAX_PROTO2,
        Type_Syntax_SYNTAX_PROTO3,
        Type_Syntax_SYNTAXEDITIONS,
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

-- | Output only. The type of analysis.
newtype Analysis_AnalysisType = Analysis_AnalysisType { fromAnalysis_AnalysisType :: Core.Text }
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

-- | Unspecified analysis type. Do not use.
pattern Analysis_AnalysisType_ANALYSISTYPEUNSPECIFIED :: Analysis_AnalysisType
pattern Analysis_AnalysisType_ANALYSISTYPEUNSPECIFIED = Analysis_AnalysisType "ANALYSIS_TYPE_UNSPECIFIED"

-- | The analysis of service dependencies.
pattern Analysis_AnalysisType_ANALYSISTYPEDEPENDENCY :: Analysis_AnalysisType
pattern Analysis_AnalysisType_ANALYSISTYPEDEPENDENCY = Analysis_AnalysisType "ANALYSIS_TYPE_DEPENDENCY"

-- | The analysis of service resource usage.
pattern Analysis_AnalysisType_ANALYSISTYPERESOURCEUSAGE :: Analysis_AnalysisType
pattern Analysis_AnalysisType_ANALYSISTYPERESOURCEUSAGE = Analysis_AnalysisType "ANALYSIS_TYPE_RESOURCE_USAGE"

{-# COMPLETE
  Analysis_AnalysisType_ANALYSISTYPEUNSPECIFIED,
  Analysis_AnalysisType_ANALYSISTYPEDEPENDENCY,
  Analysis_AnalysisType_ANALYSISTYPERESOURCEUSAGE,
  Analysis_AnalysisType #-}

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

-- | Syntax @editions@.
pattern Api_Syntax_SYNTAXEDITIONS :: Api_Syntax
pattern Api_Syntax_SYNTAXEDITIONS = Api_Syntax "SYNTAX_EDITIONS"

{-# COMPLETE
  Api_Syntax_SYNTAX_PROTO2,
  Api_Syntax_SYNTAX_PROTO3,
  Api_Syntax_SYNTAXEDITIONS,
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

-- | Launch stage of this version of the API.
newtype ClientLibrarySettings_LaunchStage = ClientLibrarySettings_LaunchStage { fromClientLibrarySettings_LaunchStage :: Core.Text }
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
pattern ClientLibrarySettings_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: ClientLibrarySettings_LaunchStage
pattern ClientLibrarySettings_LaunchStage_LAUNCHSTAGEUNSPECIFIED = ClientLibrarySettings_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern ClientLibrarySettings_LaunchStage_Unimplemented :: ClientLibrarySettings_LaunchStage
pattern ClientLibrarySettings_LaunchStage_Unimplemented = ClientLibrarySettings_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern ClientLibrarySettings_LaunchStage_Prelaunch :: ClientLibrarySettings_LaunchStage
pattern ClientLibrarySettings_LaunchStage_Prelaunch = ClientLibrarySettings_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern ClientLibrarySettings_LaunchStage_EARLYACCESS :: ClientLibrarySettings_LaunchStage
pattern ClientLibrarySettings_LaunchStage_EARLYACCESS = ClientLibrarySettings_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern ClientLibrarySettings_LaunchStage_Alpha :: ClientLibrarySettings_LaunchStage
pattern ClientLibrarySettings_LaunchStage_Alpha = ClientLibrarySettings_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern ClientLibrarySettings_LaunchStage_Beta :: ClientLibrarySettings_LaunchStage
pattern ClientLibrarySettings_LaunchStage_Beta = ClientLibrarySettings_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern ClientLibrarySettings_LaunchStage_GA :: ClientLibrarySettings_LaunchStage
pattern ClientLibrarySettings_LaunchStage_GA = ClientLibrarySettings_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our <https://cloud.google.com/terms/ Terms of Service> and the <https://cloud.google.com/terms/deprecation Google Cloud Platform Subject to the Deprecation Policy> documentation.
pattern ClientLibrarySettings_LaunchStage_Deprecated :: ClientLibrarySettings_LaunchStage
pattern ClientLibrarySettings_LaunchStage_Deprecated = ClientLibrarySettings_LaunchStage "DEPRECATED"

{-# COMPLETE
  ClientLibrarySettings_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  ClientLibrarySettings_LaunchStage_Unimplemented,
  ClientLibrarySettings_LaunchStage_Prelaunch,
  ClientLibrarySettings_LaunchStage_EARLYACCESS,
  ClientLibrarySettings_LaunchStage_Alpha,
  ClientLibrarySettings_LaunchStage_Beta,
  ClientLibrarySettings_LaunchStage_GA,
  ClientLibrarySettings_LaunchStage_Deprecated,
  ClientLibrarySettings_LaunchStage #-}

newtype CommonLanguageSettings_DestinationsItem = CommonLanguageSettings_DestinationsItem { fromCommonLanguageSettings_DestinationsItem :: Core.Text }
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

-- | Client libraries will neither be generated nor published to package managers.
pattern CommonLanguageSettings_DestinationsItem_CLIENTLIBRARYDESTINATIONUNSPECIFIED :: CommonLanguageSettings_DestinationsItem
pattern CommonLanguageSettings_DestinationsItem_CLIENTLIBRARYDESTINATIONUNSPECIFIED = CommonLanguageSettings_DestinationsItem "CLIENT_LIBRARY_DESTINATION_UNSPECIFIED"

-- | Generate the client library in a repo under github.com\/googleapis, but don\'t publish it to package managers.
pattern CommonLanguageSettings_DestinationsItem_Github :: CommonLanguageSettings_DestinationsItem
pattern CommonLanguageSettings_DestinationsItem_Github = CommonLanguageSettings_DestinationsItem "GITHUB"

-- | Publish the library to package managers like nuget.org and npmjs.com.
pattern CommonLanguageSettings_DestinationsItem_PACKAGEMANAGER :: CommonLanguageSettings_DestinationsItem
pattern CommonLanguageSettings_DestinationsItem_PACKAGEMANAGER = CommonLanguageSettings_DestinationsItem "PACKAGE_MANAGER"

{-# COMPLETE
  CommonLanguageSettings_DestinationsItem_CLIENTLIBRARYDESTINATIONUNSPECIFIED,
  CommonLanguageSettings_DestinationsItem_Github,
  CommonLanguageSettings_DestinationsItem_PACKAGEMANAGER,
  CommonLanguageSettings_DestinationsItem #-}

-- | Defines the behavior for checking service usage when disabling a service.
newtype DisableServiceRequest_CheckIfServiceHasUsage = DisableServiceRequest_CheckIfServiceHasUsage { fromDisableServiceRequest_CheckIfServiceHasUsage :: Core.Text }
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

-- | When unset, the default behavior is used, which is SKIP.
pattern DisableServiceRequest_CheckIfServiceHasUsage_CHECKIFSERVICEHASUSAGEUNSPECIFIED :: DisableServiceRequest_CheckIfServiceHasUsage
pattern DisableServiceRequest_CheckIfServiceHasUsage_CHECKIFSERVICEHASUSAGEUNSPECIFIED = DisableServiceRequest_CheckIfServiceHasUsage "CHECK_IF_SERVICE_HAS_USAGE_UNSPECIFIED"

-- | If set, skip checking service usage when disabling a service.
pattern DisableServiceRequest_CheckIfServiceHasUsage_Skip :: DisableServiceRequest_CheckIfServiceHasUsage
pattern DisableServiceRequest_CheckIfServiceHasUsage_Skip = DisableServiceRequest_CheckIfServiceHasUsage "SKIP"

-- | If set, service usage is checked when disabling the service. If a service, or its dependents, has usage in the last 30 days, the request returns a FAILED_PRECONDITION error.
pattern DisableServiceRequest_CheckIfServiceHasUsage_Check :: DisableServiceRequest_CheckIfServiceHasUsage
pattern DisableServiceRequest_CheckIfServiceHasUsage_Check = DisableServiceRequest_CheckIfServiceHasUsage "CHECK"

{-# COMPLETE
  DisableServiceRequest_CheckIfServiceHasUsage_CHECKIFSERVICEHASUSAGEUNSPECIFIED,
  DisableServiceRequest_CheckIfServiceHasUsage_Skip,
  DisableServiceRequest_CheckIfServiceHasUsage_Check,
  DisableServiceRequest_CheckIfServiceHasUsage #-}

-- | Client and resource project enable type.
newtype EnableRule_EnableType = EnableRule_EnableType { fromEnableRule_EnableType :: Core.Text }
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

-- | Unspecified enable type, which means enabled as both client and resource project.
pattern EnableRule_EnableType_ENABLETYPEUNSPECIFIED :: EnableRule_EnableType
pattern EnableRule_EnableType_ENABLETYPEUNSPECIFIED = EnableRule_EnableType "ENABLE_TYPE_UNSPECIFIED"

-- | Enable all clients under the CRM node specified by @ConsumerPolicy.name@ to use the listed services. A client can be an API key, an OAuth client, or a service account.
pattern EnableRule_EnableType_Client :: EnableRule_EnableType
pattern EnableRule_EnableType_Client = EnableRule_EnableType "CLIENT"

-- | Enable resources in the list services to be created and used under the CRM node specified by the @ConsumerPolicy.name@.
pattern EnableRule_EnableType_Resource :: EnableRule_EnableType
pattern EnableRule_EnableType_Resource = EnableRule_EnableType "RESOURCE"

-- | Activation made by Service Usage v1 API. This will be how consumers differentiate between policy changes made by v1 and v2 clients and understand what is actually possible based on those different policies.
pattern EnableRule_EnableType_V1COMPATIBLE :: EnableRule_EnableType
pattern EnableRule_EnableType_V1COMPATIBLE = EnableRule_EnableType "V1_COMPATIBLE"

{-# COMPLETE
  EnableRule_EnableType_ENABLETYPEUNSPECIFIED,
  EnableRule_EnableType_Client,
  EnableRule_EnableType_Resource,
  EnableRule_EnableType_V1COMPATIBLE,
  EnableRule_EnableType #-}

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

-- | Syntax @editions@.
pattern Enum_Syntax_SYNTAXEDITIONS :: Enum_Syntax
pattern Enum_Syntax_SYNTAXEDITIONS = Enum_Syntax "SYNTAX_EDITIONS"

{-# COMPLETE
  Enum_Syntax_SYNTAX_PROTO2,
  Enum_Syntax_SYNTAX_PROTO3,
  Enum_Syntax_SYNTAXEDITIONS,
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

-- | Service identity state.
newtype GetServiceIdentityResponse_State = GetServiceIdentityResponse_State { fromGetServiceIdentityResponse_State :: Core.Text }
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

-- | Default service identity state. This value is used if the state is omitted.
pattern GetServiceIdentityResponse_State_IDENTITYSTATEUNSPECIFIED :: GetServiceIdentityResponse_State
pattern GetServiceIdentityResponse_State_IDENTITYSTATEUNSPECIFIED = GetServiceIdentityResponse_State "IDENTITY_STATE_UNSPECIFIED"

-- | Service identity has been created and can be used.
pattern GetServiceIdentityResponse_State_Active :: GetServiceIdentityResponse_State
pattern GetServiceIdentityResponse_State_Active = GetServiceIdentityResponse_State "ACTIVE"

{-# COMPLETE
  GetServiceIdentityResponse_State_IDENTITYSTATEUNSPECIFIED,
  GetServiceIdentityResponse_State_Active,
  GetServiceIdentityResponse_State #-}

-- | Whether or not the service has been enabled for use by the consumer.
newtype GoogleApiServiceusageV1Service_State = GoogleApiServiceusageV1Service_State { fromGoogleApiServiceusageV1Service_State :: Core.Text }
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

-- | The default value, which indicates that the enabled state of the service is unspecified or not meaningful. Currently, all consumers other than projects (such as folders and organizations) are always in this state.
pattern GoogleApiServiceusageV1Service_State_STATEUNSPECIFIED :: GoogleApiServiceusageV1Service_State
pattern GoogleApiServiceusageV1Service_State_STATEUNSPECIFIED = GoogleApiServiceusageV1Service_State "STATE_UNSPECIFIED"

-- | The service cannot be used by this consumer. It has either been explicitly disabled, or has never been enabled.
pattern GoogleApiServiceusageV1Service_State_Disabled :: GoogleApiServiceusageV1Service_State
pattern GoogleApiServiceusageV1Service_State_Disabled = GoogleApiServiceusageV1Service_State "DISABLED"

-- | The service has been explicitly enabled for use by this consumer.
pattern GoogleApiServiceusageV1Service_State_Enabled :: GoogleApiServiceusageV1Service_State
pattern GoogleApiServiceusageV1Service_State_Enabled = GoogleApiServiceusageV1Service_State "ENABLED"

{-# COMPLETE
  GoogleApiServiceusageV1Service_State_STATEUNSPECIFIED,
  GoogleApiServiceusageV1Service_State_Disabled,
  GoogleApiServiceusageV1Service_State_Enabled,
  GoogleApiServiceusageV1Service_State #-}

-- | Service identity state.
newtype GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State = GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State { fromGoogleApiServiceusageV1beta1GetServiceIdentityResponse_State :: Core.Text }
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

-- | Default service identity state. This value is used if the state is omitted.
pattern GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State_IDENTITYSTATEUNSPECIFIED :: GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State
pattern GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State_IDENTITYSTATEUNSPECIFIED = GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State "IDENTITY_STATE_UNSPECIFIED"

-- | Service identity has been created and can be used.
pattern GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State_Active :: GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State
pattern GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State_Active = GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State "ACTIVE"

{-# COMPLETE
  GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State_IDENTITYSTATEUNSPECIFIED,
  GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State_Active,
  GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State #-}

-- | Output only. The type of analysis.
newtype GoogleApiServiceusageV2betaAnalysis_AnalysisType = GoogleApiServiceusageV2betaAnalysis_AnalysisType { fromGoogleApiServiceusageV2betaAnalysis_AnalysisType :: Core.Text }
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

-- | Unspecified analysis type. Do not use.
pattern GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPEUNSPECIFIED :: GoogleApiServiceusageV2betaAnalysis_AnalysisType
pattern GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPEUNSPECIFIED = GoogleApiServiceusageV2betaAnalysis_AnalysisType "ANALYSIS_TYPE_UNSPECIFIED"

-- | The analysis of service dependencies.
pattern GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPEDEPENDENCY :: GoogleApiServiceusageV2betaAnalysis_AnalysisType
pattern GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPEDEPENDENCY = GoogleApiServiceusageV2betaAnalysis_AnalysisType "ANALYSIS_TYPE_DEPENDENCY"

-- | The analysis of service resource usage.
pattern GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPERESOURCEUSAGE :: GoogleApiServiceusageV2betaAnalysis_AnalysisType
pattern GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPERESOURCEUSAGE = GoogleApiServiceusageV2betaAnalysis_AnalysisType "ANALYSIS_TYPE_RESOURCE_USAGE"

{-# COMPLETE
  GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPEUNSPECIFIED,
  GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPEDEPENDENCY,
  GoogleApiServiceusageV2betaAnalysis_AnalysisType_ANALYSISTYPERESOURCEUSAGE,
  GoogleApiServiceusageV2betaAnalysis_AnalysisType #-}

-- | Output only. The type of impact.
newtype GoogleApiServiceusageV2betaImpact_ImpactType = GoogleApiServiceusageV2betaImpact_ImpactType { fromGoogleApiServiceusageV2betaImpact_ImpactType :: Core.Text }
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

-- | Reserved Blocks (Block n contains codes from 100n to 100(n+1) -1 Block 0 - Special\/Admin codes Block 1 - Impact Type of ANALYSIS/TYPE/DEPENDENCY Block 2 - Impact Type of ANALYSIS/TYPE/RESOURCE_USAGE ...
pattern GoogleApiServiceusageV2betaImpact_ImpactType_IMPACTTYPEUNSPECIFIED :: GoogleApiServiceusageV2betaImpact_ImpactType
pattern GoogleApiServiceusageV2betaImpact_ImpactType_IMPACTTYPEUNSPECIFIED = GoogleApiServiceusageV2betaImpact_ImpactType "IMPACT_TYPE_UNSPECIFIED"

-- | Block 1 - Impact Type of ANALYSIS/TYPE/DEPENDENCY
pattern GoogleApiServiceusageV2betaImpact_ImpactType_DEPENDENCYMISSINGDEPENDENCIES :: GoogleApiServiceusageV2betaImpact_ImpactType
pattern GoogleApiServiceusageV2betaImpact_ImpactType_DEPENDENCYMISSINGDEPENDENCIES = GoogleApiServiceusageV2betaImpact_ImpactType "DEPENDENCY_MISSING_DEPENDENCIES"

{-# COMPLETE
  GoogleApiServiceusageV2betaImpact_ImpactType_IMPACTTYPEUNSPECIFIED,
  GoogleApiServiceusageV2betaImpact_ImpactType_DEPENDENCYMISSINGDEPENDENCIES,
  GoogleApiServiceusageV2betaImpact_ImpactType #-}

-- | Output only. The type of impact.
newtype Impact_ImpactType = Impact_ImpactType { fromImpact_ImpactType :: Core.Text }
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

-- | Reserved Blocks (Block n contains codes from 100n to 100(n+1) -1 Block 0 - Special\/Admin codes Block 1 - Impact Type of ANALYSIS/TYPE/DEPENDENCY Block 2 - Impact Type of ANALYSIS/TYPE/RESOURCE_USAGE ...
pattern Impact_ImpactType_IMPACTTYPEUNSPECIFIED :: Impact_ImpactType
pattern Impact_ImpactType_IMPACTTYPEUNSPECIFIED = Impact_ImpactType "IMPACT_TYPE_UNSPECIFIED"

-- | Block 1 - Impact Type of ANALYSIS/TYPE/DEPENDENCY
pattern Impact_ImpactType_DEPENDENCYMISSINGDEPENDENCIES :: Impact_ImpactType
pattern Impact_ImpactType_DEPENDENCYMISSINGDEPENDENCIES = Impact_ImpactType "DEPENDENCY_MISSING_DEPENDENCIES"

{-# COMPLETE
  Impact_ImpactType_IMPACTTYPEUNSPECIFIED,
  Impact_ImpactType_DEPENDENCYMISSINGDEPENDENCIES,
  Impact_ImpactType #-}

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

-- | Syntax @editions@.
pattern Method_Syntax_SYNTAXEDITIONS :: Method_Syntax
pattern Method_Syntax_SYNTAXEDITIONS = Method_Syntax "SYNTAX_EDITIONS"

{-# COMPLETE
  Method_Syntax_SYNTAX_PROTO2,
  Method_Syntax_SYNTAX_PROTO3,
  Method_Syntax_SYNTAXEDITIONS,
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

newtype MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem = MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem { fromMetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem :: Core.Text }
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
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_TIMESERIESRESOURCEHIERARCHYLEVELUNSPECIFIED :: MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_TIMESERIESRESOURCEHIERARCHYLEVELUNSPECIFIED = MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem "TIME_SERIES_RESOURCE_HIERARCHY_LEVEL_UNSPECIFIED"

-- | Scopes a metric to a project.
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Project :: MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Project = MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem "PROJECT"

-- | Scopes a metric to an organization.
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Organization :: MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Organization = MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem "ORGANIZATION"

-- | Scopes a metric to a folder.
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Folder :: MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Folder = MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem "FOLDER"

{-# COMPLETE
  MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_TIMESERIESRESOURCEHIERARCHYLEVELUNSPECIFIED,
  MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Project,
  MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Organization,
  MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Folder,
  MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem #-}

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

-- | For whom the client library is being published.
newtype Publishing_Organization = Publishing_Organization { fromPublishing_Organization :: Core.Text }
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

-- | Not useful.
pattern Publishing_Organization_CLIENTLIBRARYORGANIZATIONUNSPECIFIED :: Publishing_Organization
pattern Publishing_Organization_CLIENTLIBRARYORGANIZATIONUNSPECIFIED = Publishing_Organization "CLIENT_LIBRARY_ORGANIZATION_UNSPECIFIED"

-- | Google Cloud Platform Org.
pattern Publishing_Organization_Cloud :: Publishing_Organization
pattern Publishing_Organization_Cloud = Publishing_Organization "CLOUD"

-- | Ads (Advertising) Org.
pattern Publishing_Organization_Ads :: Publishing_Organization
pattern Publishing_Organization_Ads = Publishing_Organization "ADS"

-- | Photos Org.
pattern Publishing_Organization_Photos :: Publishing_Organization
pattern Publishing_Organization_Photos = Publishing_Organization "PHOTOS"

-- | Street View Org.
pattern Publishing_Organization_STREETVIEW :: Publishing_Organization
pattern Publishing_Organization_STREETVIEW = Publishing_Organization "STREET_VIEW"

-- | Shopping Org.
pattern Publishing_Organization_Shopping :: Publishing_Organization
pattern Publishing_Organization_Shopping = Publishing_Organization "SHOPPING"

-- | Geo Org.
pattern Publishing_Organization_Geo :: Publishing_Organization
pattern Publishing_Organization_Geo = Publishing_Organization "GEO"

-- | Generative AI - https:\/\/developers.generativeai.google
pattern Publishing_Organization_GENERATIVEAI :: Publishing_Organization
pattern Publishing_Organization_GENERATIVEAI = Publishing_Organization "GENERATIVE_AI"

{-# COMPLETE
  Publishing_Organization_CLIENTLIBRARYORGANIZATIONUNSPECIFIED,
  Publishing_Organization_Cloud,
  Publishing_Organization_Ads,
  Publishing_Organization_Photos,
  Publishing_Organization_STREETVIEW,
  Publishing_Organization_Shopping,
  Publishing_Organization_Geo,
  Publishing_Organization_GENERATIVEAI,
  Publishing_Organization #-}

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

-- | Syntax @editions@.
pattern Type_Syntax_SYNTAXEDITIONS :: Type_Syntax
pattern Type_Syntax_SYNTAXEDITIONS = Type_Syntax "SYNTAX_EDITIONS"

{-# COMPLETE
  Type_Syntax_SYNTAX_PROTO2,
  Type_Syntax_SYNTAX_PROTO3,
  Type_Syntax_SYNTAXEDITIONS,
  Type_Syntax #-}
