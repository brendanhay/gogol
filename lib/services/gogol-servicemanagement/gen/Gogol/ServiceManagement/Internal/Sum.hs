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
-- Module      : Gogol.ServiceManagement.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ServiceManagement.Internal.Sum
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
        Api_Syntax_SYNTAXEDITIONS,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      (
        AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
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

    -- * ConfigChange_ChangeType
    ConfigChange_ChangeType
      (
        ConfigChange_ChangeType_CHANGETYPEUNSPECIFIED,
        ConfigChange_ChangeType_Added,
        ConfigChange_ChangeType_Removed,
        ConfigChange_ChangeType_Modified,
        ..
      ),

    -- * ConfigFile_FileType
    ConfigFile_FileType
      (
        ConfigFile_FileType_FILETYPEUNSPECIFIED,
        ConfigFile_FileType_SERVICECONFIGYAML,
        ConfigFile_FileType_OPENAPIJSON,
        ConfigFile_FileType_OPENAPIYAML,
        ConfigFile_FileType_FILEDESCRIPTORSETPROTO,
        ConfigFile_FileType_PROTOFILE,
        ..
      ),

    -- * Diagnostic_Kind
    Diagnostic_Kind
      (
        Diagnostic_Kind_Warning,
        Diagnostic_Kind_Error',
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

    -- * Rollout_Status
    Rollout_Status
      (
        Rollout_Status_ROLLOUTSTATUSUNSPECIFIED,
        Rollout_Status_INPROGRESS,
        Rollout_Status_Success,
        Rollout_Status_Cancelled,
        Rollout_Status_Failed,
        Rollout_Status_Pending,
        Rollout_Status_FAILEDROLLEDBACK,
        ..
      ),

    -- * Step_Status
    Step_Status
      (
        Step_Status_STATUSUNSPECIFIED,
        Step_Status_Done,
        Step_Status_NOTSTARTED,
        Step_Status_INPROGRESS,
        Step_Status_Failed,
        Step_Status_Cancelled,
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

    -- * ServicesConfigsGetView
    ServicesConfigsGetView
      (
        ServicesConfigsGetView_Basic,
        ServicesConfigsGetView_Full,
        ..
      ),

    -- * ServicesGetConfigView
    ServicesGetConfigView
      (
        ServicesGetConfigView_Basic,
        ServicesGetConfigView_Full,
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

-- | Syntax @editions@.
pattern Api_Syntax_SYNTAXEDITIONS :: Api_Syntax
pattern Api_Syntax_SYNTAXEDITIONS = Api_Syntax "SYNTAX_EDITIONS"

{-# COMPLETE
  Api_Syntax_SYNTAX_PROTO2,
  Api_Syntax_SYNTAX_PROTO3,
  Api_Syntax_SYNTAXEDITIONS,
  Api_Syntax #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType { fromAuditLogConfig_LogType :: Core.Text }
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

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType #-}

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

-- | The type for this change, either ADDED, REMOVED, or MODIFIED.
newtype ConfigChange_ChangeType = ConfigChange_ChangeType { fromConfigChange_ChangeType :: Core.Text }
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

-- | No value was provided.
pattern ConfigChange_ChangeType_CHANGETYPEUNSPECIFIED :: ConfigChange_ChangeType
pattern ConfigChange_ChangeType_CHANGETYPEUNSPECIFIED = ConfigChange_ChangeType "CHANGE_TYPE_UNSPECIFIED"

-- | The changed object exists in the \'new\' service configuration, but not in the \'old\' service configuration.
pattern ConfigChange_ChangeType_Added :: ConfigChange_ChangeType
pattern ConfigChange_ChangeType_Added = ConfigChange_ChangeType "ADDED"

-- | The changed object exists in the \'old\' service configuration, but not in the \'new\' service configuration.
pattern ConfigChange_ChangeType_Removed :: ConfigChange_ChangeType
pattern ConfigChange_ChangeType_Removed = ConfigChange_ChangeType "REMOVED"

-- | The changed object exists in both service configurations, but its value is different.
pattern ConfigChange_ChangeType_Modified :: ConfigChange_ChangeType
pattern ConfigChange_ChangeType_Modified = ConfigChange_ChangeType "MODIFIED"

{-# COMPLETE
  ConfigChange_ChangeType_CHANGETYPEUNSPECIFIED,
  ConfigChange_ChangeType_Added,
  ConfigChange_ChangeType_Removed,
  ConfigChange_ChangeType_Modified,
  ConfigChange_ChangeType #-}

-- | The type of configuration file this represents.
newtype ConfigFile_FileType = ConfigFile_FileType { fromConfigFile_FileType :: Core.Text }
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

-- | Unknown file type.
pattern ConfigFile_FileType_FILETYPEUNSPECIFIED :: ConfigFile_FileType
pattern ConfigFile_FileType_FILETYPEUNSPECIFIED = ConfigFile_FileType "FILE_TYPE_UNSPECIFIED"

-- | YAML-specification of service.
pattern ConfigFile_FileType_SERVICECONFIGYAML :: ConfigFile_FileType
pattern ConfigFile_FileType_SERVICECONFIGYAML = ConfigFile_FileType "SERVICE_CONFIG_YAML"

-- | OpenAPI specification, serialized in JSON.
pattern ConfigFile_FileType_OPENAPIJSON :: ConfigFile_FileType
pattern ConfigFile_FileType_OPENAPIJSON = ConfigFile_FileType "OPEN_API_JSON"

-- | OpenAPI specification, serialized in YAML.
pattern ConfigFile_FileType_OPENAPIYAML :: ConfigFile_FileType
pattern ConfigFile_FileType_OPENAPIYAML = ConfigFile_FileType "OPEN_API_YAML"

-- | FileDescriptorSet, generated by protoc. To generate, use protoc with imports and source info included. For an example test.proto file, the following command would put the value in a new file named out.pb. $protoc --include/imports --include/source_info test.proto -o out.pb
pattern ConfigFile_FileType_FILEDESCRIPTORSETPROTO :: ConfigFile_FileType
pattern ConfigFile_FileType_FILEDESCRIPTORSETPROTO = ConfigFile_FileType "FILE_DESCRIPTOR_SET_PROTO"

-- | Uncompiled Proto file. Used for storage and display purposes only, currently server-side compilation is not supported. Should match the inputs to \'protoc\' command used to generated FILE/DESCRIPTOR/SET/PROTO. A file of this type can only be included if at least one file of type FILE/DESCRIPTOR/SET/PROTO is included.
pattern ConfigFile_FileType_PROTOFILE :: ConfigFile_FileType
pattern ConfigFile_FileType_PROTOFILE = ConfigFile_FileType "PROTO_FILE"

{-# COMPLETE
  ConfigFile_FileType_FILETYPEUNSPECIFIED,
  ConfigFile_FileType_SERVICECONFIGYAML,
  ConfigFile_FileType_OPENAPIJSON,
  ConfigFile_FileType_OPENAPIYAML,
  ConfigFile_FileType_FILEDESCRIPTORSETPROTO,
  ConfigFile_FileType_PROTOFILE,
  ConfigFile_FileType #-}

-- | The kind of diagnostic information provided.
newtype Diagnostic_Kind = Diagnostic_Kind { fromDiagnostic_Kind :: Core.Text }
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

-- | Warnings and errors
pattern Diagnostic_Kind_Warning :: Diagnostic_Kind
pattern Diagnostic_Kind_Warning = Diagnostic_Kind "WARNING"

-- | Only errors
pattern Diagnostic_Kind_Error' :: Diagnostic_Kind
pattern Diagnostic_Kind_Error' = Diagnostic_Kind "ERROR"

{-# COMPLETE
  Diagnostic_Kind_Warning,
  Diagnostic_Kind_Error',
  Diagnostic_Kind #-}

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

-- | The status of this rollout. Readonly. In case of a failed rollout, the system will automatically rollback to the current Rollout version. Readonly.
newtype Rollout_Status = Rollout_Status { fromRollout_Status :: Core.Text }
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

-- | No status specified.
pattern Rollout_Status_ROLLOUTSTATUSUNSPECIFIED :: Rollout_Status
pattern Rollout_Status_ROLLOUTSTATUSUNSPECIFIED = Rollout_Status "ROLLOUT_STATUS_UNSPECIFIED"

-- | The Rollout is in progress.
pattern Rollout_Status_INPROGRESS :: Rollout_Status
pattern Rollout_Status_INPROGRESS = Rollout_Status "IN_PROGRESS"

-- | The Rollout has completed successfully.
pattern Rollout_Status_Success :: Rollout_Status
pattern Rollout_Status_Success = Rollout_Status "SUCCESS"

-- | The Rollout has been cancelled. This can happen if you have overlapping Rollout pushes, and the previous ones will be cancelled.
pattern Rollout_Status_Cancelled :: Rollout_Status
pattern Rollout_Status_Cancelled = Rollout_Status "CANCELLED"

-- | The Rollout has failed and the rollback attempt has failed too.
pattern Rollout_Status_Failed :: Rollout_Status
pattern Rollout_Status_Failed = Rollout_Status "FAILED"

-- | The Rollout has not started yet and is pending for execution.
pattern Rollout_Status_Pending :: Rollout_Status
pattern Rollout_Status_Pending = Rollout_Status "PENDING"

-- | The Rollout has failed and rolled back to the previous successful Rollout.
pattern Rollout_Status_FAILEDROLLEDBACK :: Rollout_Status
pattern Rollout_Status_FAILEDROLLEDBACK = Rollout_Status "FAILED_ROLLED_BACK"

{-# COMPLETE
  Rollout_Status_ROLLOUTSTATUSUNSPECIFIED,
  Rollout_Status_INPROGRESS,
  Rollout_Status_Success,
  Rollout_Status_Cancelled,
  Rollout_Status_Failed,
  Rollout_Status_Pending,
  Rollout_Status_FAILEDROLLEDBACK,
  Rollout_Status #-}

-- | The status code.
newtype Step_Status = Step_Status { fromStep_Status :: Core.Text }
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

-- | Unspecifed code.
pattern Step_Status_STATUSUNSPECIFIED :: Step_Status
pattern Step_Status_STATUSUNSPECIFIED = Step_Status "STATUS_UNSPECIFIED"

-- | The operation or step has completed without errors.
pattern Step_Status_Done :: Step_Status
pattern Step_Status_Done = Step_Status "DONE"

-- | The operation or step has not started yet.
pattern Step_Status_NOTSTARTED :: Step_Status
pattern Step_Status_NOTSTARTED = Step_Status "NOT_STARTED"

-- | The operation or step is in progress.
pattern Step_Status_INPROGRESS :: Step_Status
pattern Step_Status_INPROGRESS = Step_Status "IN_PROGRESS"

-- | The operation or step has completed with errors. If the operation is rollbackable, the rollback completed with errors too.
pattern Step_Status_Failed :: Step_Status
pattern Step_Status_Failed = Step_Status "FAILED"

-- | The operation or step has completed with cancellation.
pattern Step_Status_Cancelled :: Step_Status
pattern Step_Status_Cancelled = Step_Status "CANCELLED"

{-# COMPLETE
  Step_Status_STATUSUNSPECIFIED,
  Step_Status_Done,
  Step_Status_NOTSTARTED,
  Step_Status_INPROGRESS,
  Step_Status_Failed,
  Step_Status_Cancelled,
  Step_Status #-}

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

-- | Specifies which parts of the Service Config should be returned in the response.
newtype ServicesConfigsGetView = ServicesConfigsGetView { fromServicesConfigsGetView :: Core.Text }
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

-- | Server response includes all fields except SourceInfo.
pattern ServicesConfigsGetView_Basic :: ServicesConfigsGetView
pattern ServicesConfigsGetView_Basic = ServicesConfigsGetView "BASIC"

-- | Server response includes all fields including SourceInfo. SourceFiles are of type \'google.api.servicemanagement.v1.ConfigFile\' and are only available for configs created using the SubmitConfigSource method.
pattern ServicesConfigsGetView_Full :: ServicesConfigsGetView
pattern ServicesConfigsGetView_Full = ServicesConfigsGetView "FULL"

{-# COMPLETE
  ServicesConfigsGetView_Basic,
  ServicesConfigsGetView_Full,
  ServicesConfigsGetView #-}

-- | Specifies which parts of the Service Config should be returned in the response.
newtype ServicesGetConfigView = ServicesGetConfigView { fromServicesGetConfigView :: Core.Text }
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

-- | Server response includes all fields except SourceInfo.
pattern ServicesGetConfigView_Basic :: ServicesGetConfigView
pattern ServicesGetConfigView_Basic = ServicesGetConfigView "BASIC"

-- | Server response includes all fields including SourceInfo. SourceFiles are of type \'google.api.servicemanagement.v1.ConfigFile\' and are only available for configs created using the SubmitConfigSource method.
pattern ServicesGetConfigView_Full :: ServicesGetConfigView
pattern ServicesGetConfigView_Full = ServicesGetConfigView "FULL"

{-# COMPLETE
  ServicesGetConfigView_Basic,
  ServicesGetConfigView_Full,
  ServicesGetConfigView #-}
