{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceManagement
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Google Service Management allows service producers to publish their services on Google Cloud Platform so that they can be discovered and used by service consumers.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference>
module Gogol.ServiceManagement
  ( -- * Configuration
    serviceManagementService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Service'Management,
    Service'Management'Readonly,

    -- * Resources

    -- ** servicemanagement.operations.get
    ServiceManagementOperationsGetResource,
    ServiceManagementOperationsGet (..),
    newServiceManagementOperationsGet,

    -- ** servicemanagement.operations.list
    ServiceManagementOperationsListResource,
    ServiceManagementOperationsList (..),
    newServiceManagementOperationsList,

    -- ** servicemanagement.services.configs.create
    ServiceManagementServicesConfigsCreateResource,
    ServiceManagementServicesConfigsCreate (..),
    newServiceManagementServicesConfigsCreate,

    -- ** servicemanagement.services.configs.get
    ServiceManagementServicesConfigsGetResource,
    ServiceManagementServicesConfigsGet (..),
    newServiceManagementServicesConfigsGet,

    -- ** servicemanagement.services.configs.list
    ServiceManagementServicesConfigsListResource,
    ServiceManagementServicesConfigsList (..),
    newServiceManagementServicesConfigsList,

    -- ** servicemanagement.services.configs.submit
    ServiceManagementServicesConfigsSubmitResource,
    ServiceManagementServicesConfigsSubmit (..),
    newServiceManagementServicesConfigsSubmit,

    -- ** servicemanagement.services.consumers.getIamPolicy
    ServiceManagementServicesConsumersGetIamPolicyResource,
    ServiceManagementServicesConsumersGetIamPolicy (..),
    newServiceManagementServicesConsumersGetIamPolicy,

    -- ** servicemanagement.services.consumers.setIamPolicy
    ServiceManagementServicesConsumersSetIamPolicyResource,
    ServiceManagementServicesConsumersSetIamPolicy (..),
    newServiceManagementServicesConsumersSetIamPolicy,

    -- ** servicemanagement.services.consumers.testIamPermissions
    ServiceManagementServicesConsumersTestIamPermissionsResource,
    ServiceManagementServicesConsumersTestIamPermissions (..),
    newServiceManagementServicesConsumersTestIamPermissions,

    -- ** servicemanagement.services.create
    ServiceManagementServicesCreateResource,
    ServiceManagementServicesCreate (..),
    newServiceManagementServicesCreate,

    -- ** servicemanagement.services.delete
    ServiceManagementServicesDeleteResource,
    ServiceManagementServicesDelete (..),
    newServiceManagementServicesDelete,

    -- ** servicemanagement.services.generateConfigReport
    ServiceManagementServicesGenerateConfigReportResource,
    ServiceManagementServicesGenerateConfigReport (..),
    newServiceManagementServicesGenerateConfigReport,

    -- ** servicemanagement.services.get
    ServiceManagementServicesGetResource,
    ServiceManagementServicesGet (..),
    newServiceManagementServicesGet,

    -- ** servicemanagement.services.getConfig
    ServiceManagementServicesGetConfigResource,
    ServiceManagementServicesGetConfig (..),
    newServiceManagementServicesGetConfig,

    -- ** servicemanagement.services.getIamPolicy
    ServiceManagementServicesGetIamPolicyResource,
    ServiceManagementServicesGetIamPolicy (..),
    newServiceManagementServicesGetIamPolicy,

    -- ** servicemanagement.services.list
    ServiceManagementServicesListResource,
    ServiceManagementServicesList (..),
    newServiceManagementServicesList,

    -- ** servicemanagement.services.rollouts.create
    ServiceManagementServicesRolloutsCreateResource,
    ServiceManagementServicesRolloutsCreate (..),
    newServiceManagementServicesRolloutsCreate,

    -- ** servicemanagement.services.rollouts.get
    ServiceManagementServicesRolloutsGetResource,
    ServiceManagementServicesRolloutsGet (..),
    newServiceManagementServicesRolloutsGet,

    -- ** servicemanagement.services.rollouts.list
    ServiceManagementServicesRolloutsListResource,
    ServiceManagementServicesRolloutsList (..),
    newServiceManagementServicesRolloutsList,

    -- ** servicemanagement.services.setIamPolicy
    ServiceManagementServicesSetIamPolicyResource,
    ServiceManagementServicesSetIamPolicy (..),
    newServiceManagementServicesSetIamPolicy,

    -- ** servicemanagement.services.testIamPermissions
    ServiceManagementServicesTestIamPermissionsResource,
    ServiceManagementServicesTestIamPermissions (..),
    newServiceManagementServicesTestIamPermissions,

    -- ** servicemanagement.services.undelete
    ServiceManagementServicesUndeleteResource,
    ServiceManagementServicesUndelete (..),
    newServiceManagementServicesUndelete,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Advice
    Advice (..),
    newAdvice,

    -- ** Api
    Api (..),
    newApi,

    -- ** Api_Syntax
    Api_Syntax (..),

    -- ** Aspect
    Aspect (..),
    newAspect,

    -- ** Aspect_Spec
    Aspect_Spec (..),
    newAspect_Spec,

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** AuthProvider
    AuthProvider (..),
    newAuthProvider,

    -- ** AuthRequirement
    AuthRequirement (..),
    newAuthRequirement,

    -- ** Authentication
    Authentication (..),
    newAuthentication,

    -- ** AuthenticationRule
    AuthenticationRule (..),
    newAuthenticationRule,

    -- ** Backend
    Backend (..),
    newBackend,

    -- ** BackendRule
    BackendRule (..),
    newBackendRule,

    -- ** BackendRule_OverridesByRequestProtocol
    BackendRule_OverridesByRequestProtocol (..),
    newBackendRule_OverridesByRequestProtocol,

    -- ** BackendRule_PathTranslation
    BackendRule_PathTranslation (..),

    -- ** Billing
    Billing (..),
    newBilling,

    -- ** BillingDestination
    BillingDestination (..),
    newBillingDestination,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** ChangeReport
    ChangeReport (..),
    newChangeReport,

    -- ** ClientLibrarySettings
    ClientLibrarySettings (..),
    newClientLibrarySettings,

    -- ** ClientLibrarySettings_LaunchStage
    ClientLibrarySettings_LaunchStage (..),

    -- ** CommonLanguageSettings
    CommonLanguageSettings (..),
    newCommonLanguageSettings,

    -- ** CommonLanguageSettings_DestinationsItem
    CommonLanguageSettings_DestinationsItem (..),

    -- ** ConfigChange
    ConfigChange (..),
    newConfigChange,

    -- ** ConfigChange_ChangeType
    ConfigChange_ChangeType (..),

    -- ** ConfigFile
    ConfigFile (..),
    newConfigFile,

    -- ** ConfigFile_FileType
    ConfigFile_FileType (..),

    -- ** ConfigRef
    ConfigRef (..),
    newConfigRef,

    -- ** ConfigSource
    ConfigSource (..),
    newConfigSource,

    -- ** Context
    Context (..),
    newContext,

    -- ** ContextRule
    ContextRule (..),
    newContextRule,

    -- ** Control
    Control (..),
    newControl,

    -- ** CppSettings
    CppSettings (..),
    newCppSettings,

    -- ** CustomError
    CustomError (..),
    newCustomError,

    -- ** CustomErrorRule
    CustomErrorRule (..),
    newCustomErrorRule,

    -- ** CustomHttpPattern
    CustomHttpPattern (..),
    newCustomHttpPattern,

    -- ** DeleteServiceStrategy
    DeleteServiceStrategy (..),
    newDeleteServiceStrategy,

    -- ** Diagnostic
    Diagnostic (..),
    newDiagnostic,

    -- ** Diagnostic_Kind
    Diagnostic_Kind (..),

    -- ** Documentation
    Documentation (..),
    newDocumentation,

    -- ** DocumentationRule
    DocumentationRule (..),
    newDocumentationRule,

    -- ** DotnetSettings
    DotnetSettings (..),
    newDotnetSettings,

    -- ** DotnetSettings_RenamedResources
    DotnetSettings_RenamedResources (..),
    newDotnetSettings_RenamedResources,

    -- ** DotnetSettings_RenamedServices
    DotnetSettings_RenamedServices (..),
    newDotnetSettings_RenamedServices,

    -- ** EnableServiceResponse
    EnableServiceResponse (..),
    newEnableServiceResponse,

    -- ** Endpoint
    Endpoint (..),
    newEndpoint,

    -- ** Enum'
    Enum' (..),
    newEnum,

    -- ** Enum_Syntax
    Enum_Syntax (..),

    -- ** EnumValue
    EnumValue (..),
    newEnumValue,

    -- ** ExperimentalFeatures
    ExperimentalFeatures (..),
    newExperimentalFeatures,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** Field
    Field (..),
    newField,

    -- ** Field_Cardinality
    Field_Cardinality (..),

    -- ** Field_Kind
    Field_Kind (..),

    -- ** FieldPolicy
    FieldPolicy (..),
    newFieldPolicy,

    -- ** FlowErrorDetails
    FlowErrorDetails (..),
    newFlowErrorDetails,

    -- ** GenerateConfigReportRequest
    GenerateConfigReportRequest (..),
    newGenerateConfigReportRequest,

    -- ** GenerateConfigReportRequest_NewConfig
    GenerateConfigReportRequest_NewConfig (..),
    newGenerateConfigReportRequest_NewConfig,

    -- ** GenerateConfigReportRequest_OldConfig
    GenerateConfigReportRequest_OldConfig (..),
    newGenerateConfigReportRequest_OldConfig,

    -- ** GenerateConfigReportResponse
    GenerateConfigReportResponse (..),
    newGenerateConfigReportResponse,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** GoSettings
    GoSettings (..),
    newGoSettings,

    -- ** GoSettings_RenamedServices
    GoSettings_RenamedServices (..),
    newGoSettings_RenamedServices,

    -- ** Http
    Http (..),
    newHttp,

    -- ** HttpRule
    HttpRule (..),
    newHttpRule,

    -- ** JavaSettings
    JavaSettings (..),
    newJavaSettings,

    -- ** JavaSettings_ServiceClassNames
    JavaSettings_ServiceClassNames (..),
    newJavaSettings_ServiceClassNames,

    -- ** JwtLocation
    JwtLocation (..),
    newJwtLocation,

    -- ** LabelDescriptor
    LabelDescriptor (..),
    newLabelDescriptor,

    -- ** LabelDescriptor_ValueType
    LabelDescriptor_ValueType (..),

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListServiceConfigsResponse
    ListServiceConfigsResponse (..),
    newListServiceConfigsResponse,

    -- ** ListServiceRolloutsResponse
    ListServiceRolloutsResponse (..),
    newListServiceRolloutsResponse,

    -- ** ListServicesResponse
    ListServicesResponse (..),
    newListServicesResponse,

    -- ** LogDescriptor
    LogDescriptor (..),
    newLogDescriptor,

    -- ** Logging
    Logging (..),
    newLogging,

    -- ** LoggingDestination
    LoggingDestination (..),
    newLoggingDestination,

    -- ** LongRunning
    LongRunning (..),
    newLongRunning,

    -- ** ManagedService
    ManagedService (..),
    newManagedService,

    -- ** Method
    Method (..),
    newMethod,

    -- ** Method_Syntax
    Method_Syntax (..),

    -- ** MethodPolicy
    MethodPolicy (..),
    newMethodPolicy,

    -- ** MethodSettings
    MethodSettings (..),
    newMethodSettings,

    -- ** MetricDescriptor
    MetricDescriptor (..),
    newMetricDescriptor,

    -- ** MetricDescriptor_LaunchStage
    MetricDescriptor_LaunchStage (..),

    -- ** MetricDescriptor_MetricKind
    MetricDescriptor_MetricKind (..),

    -- ** MetricDescriptor_ValueType
    MetricDescriptor_ValueType (..),

    -- ** MetricDescriptorMetadata
    MetricDescriptorMetadata (..),
    newMetricDescriptorMetadata,

    -- ** MetricDescriptorMetadata_LaunchStage
    MetricDescriptorMetadata_LaunchStage (..),

    -- ** MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
    MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem (..),

    -- ** MetricRule
    MetricRule (..),
    newMetricRule,

    -- ** MetricRule_MetricCosts
    MetricRule_MetricCosts (..),
    newMetricRule_MetricCosts,

    -- ** Mixin
    Mixin (..),
    newMixin,

    -- ** MonitoredResourceDescriptor
    MonitoredResourceDescriptor (..),
    newMonitoredResourceDescriptor,

    -- ** MonitoredResourceDescriptor_LaunchStage
    MonitoredResourceDescriptor_LaunchStage (..),

    -- ** Monitoring
    Monitoring (..),
    newMonitoring,

    -- ** MonitoringDestination
    MonitoringDestination (..),
    newMonitoringDestination,

    -- ** NodeSettings
    NodeSettings (..),
    newNodeSettings,

    -- ** OAuthRequirements
    OAuthRequirements (..),
    newOAuthRequirements,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationInfo
    OperationInfo (..),
    newOperationInfo,

    -- ** OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- ** Option
    Option (..),
    newOption,

    -- ** Option_Value
    Option_Value (..),
    newOption_Value,

    -- ** Page
    Page (..),
    newPage,

    -- ** PhpSettings
    PhpSettings (..),
    newPhpSettings,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Publishing
    Publishing (..),
    newPublishing,

    -- ** Publishing_Organization
    Publishing_Organization (..),

    -- ** PythonSettings
    PythonSettings (..),
    newPythonSettings,

    -- ** Quota
    Quota (..),
    newQuota,

    -- ** QuotaLimit
    QuotaLimit (..),
    newQuotaLimit,

    -- ** QuotaLimit_Values
    QuotaLimit_Values (..),
    newQuotaLimit_Values,

    -- ** ResourceReference
    ResourceReference (..),
    newResourceReference,

    -- ** Rollout
    Rollout (..),
    newRollout,

    -- ** Rollout_Status
    Rollout_Status (..),

    -- ** RubySettings
    RubySettings (..),
    newRubySettings,

    -- ** SelectiveGapicGeneration
    SelectiveGapicGeneration (..),
    newSelectiveGapicGeneration,

    -- ** Service
    Service (..),
    newService,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** SourceContext
    SourceContext (..),
    newSourceContext,

    -- ** SourceInfo
    SourceInfo (..),
    newSourceInfo,

    -- ** SourceInfo_SourceFilesItem
    SourceInfo_SourceFilesItem (..),
    newSourceInfo_SourceFilesItem,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Step
    Step (..),
    newStep,

    -- ** Step_Status
    Step_Status (..),

    -- ** SubmitConfigSourceRequest
    SubmitConfigSourceRequest (..),
    newSubmitConfigSourceRequest,

    -- ** SubmitConfigSourceResponse
    SubmitConfigSourceResponse (..),
    newSubmitConfigSourceResponse,

    -- ** SystemParameter
    SystemParameter (..),
    newSystemParameter,

    -- ** SystemParameterRule
    SystemParameterRule (..),
    newSystemParameterRule,

    -- ** SystemParameters
    SystemParameters (..),
    newSystemParameters,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** TrafficPercentStrategy
    TrafficPercentStrategy (..),
    newTrafficPercentStrategy,

    -- ** TrafficPercentStrategy_Percentages
    TrafficPercentStrategy_Percentages (..),
    newTrafficPercentStrategy_Percentages,

    -- ** Type
    Type (..),
    newType,

    -- ** Type_Syntax
    Type_Syntax (..),

    -- ** UndeleteServiceResponse
    UndeleteServiceResponse (..),
    newUndeleteServiceResponse,

    -- ** Usage
    Usage (..),
    newUsage,

    -- ** UsageRule
    UsageRule (..),
    newUsageRule,

    -- ** ServicesConfigsGetView
    ServicesConfigsGetView (..),

    -- ** ServicesGetConfigView
    ServicesGetConfigView (..),
  )
where

import Gogol.ServiceManagement.Operations.Get
import Gogol.ServiceManagement.Operations.List
import Gogol.ServiceManagement.Services.Configs.Create
import Gogol.ServiceManagement.Services.Configs.Get
import Gogol.ServiceManagement.Services.Configs.List
import Gogol.ServiceManagement.Services.Configs.Submit
import Gogol.ServiceManagement.Services.Consumers.GetIamPolicy
import Gogol.ServiceManagement.Services.Consumers.SetIamPolicy
import Gogol.ServiceManagement.Services.Consumers.TestIamPermissions
import Gogol.ServiceManagement.Services.Create
import Gogol.ServiceManagement.Services.Delete
import Gogol.ServiceManagement.Services.GenerateConfigReport
import Gogol.ServiceManagement.Services.Get
import Gogol.ServiceManagement.Services.GetConfig
import Gogol.ServiceManagement.Services.GetIamPolicy
import Gogol.ServiceManagement.Services.List
import Gogol.ServiceManagement.Services.Rollouts.Create
import Gogol.ServiceManagement.Services.Rollouts.Get
import Gogol.ServiceManagement.Services.Rollouts.List
import Gogol.ServiceManagement.Services.SetIamPolicy
import Gogol.ServiceManagement.Services.TestIamPermissions
import Gogol.ServiceManagement.Services.Undelete
import Gogol.ServiceManagement.Types
