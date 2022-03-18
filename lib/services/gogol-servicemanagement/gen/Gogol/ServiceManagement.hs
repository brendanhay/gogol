{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceManagement
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    serviceManagementScope,
    serviceManagementReadOnlyScope,

    -- * Resources

    -- ** servicemanagement.operations.get
    ServiceManagementOperationsGetResource,
    newServiceManagementOperationsGet,
    ServiceManagementOperationsGet,

    -- ** servicemanagement.operations.list
    ServiceManagementOperationsListResource,
    newServiceManagementOperationsList,
    ServiceManagementOperationsList,

    -- ** servicemanagement.services.configs.create
    ServiceManagementServicesConfigsCreateResource,
    newServiceManagementServicesConfigsCreate,
    ServiceManagementServicesConfigsCreate,

    -- ** servicemanagement.services.configs.get
    ServiceManagementServicesConfigsGetResource,
    newServiceManagementServicesConfigsGet,
    ServiceManagementServicesConfigsGet,

    -- ** servicemanagement.services.configs.list
    ServiceManagementServicesConfigsListResource,
    newServiceManagementServicesConfigsList,
    ServiceManagementServicesConfigsList,

    -- ** servicemanagement.services.configs.submit
    ServiceManagementServicesConfigsSubmitResource,
    newServiceManagementServicesConfigsSubmit,
    ServiceManagementServicesConfigsSubmit,

    -- ** servicemanagement.services.consumers.getIamPolicy
    ServiceManagementServicesConsumersGetIamPolicyResource,
    newServiceManagementServicesConsumersGetIamPolicy,
    ServiceManagementServicesConsumersGetIamPolicy,

    -- ** servicemanagement.services.consumers.setIamPolicy
    ServiceManagementServicesConsumersSetIamPolicyResource,
    newServiceManagementServicesConsumersSetIamPolicy,
    ServiceManagementServicesConsumersSetIamPolicy,

    -- ** servicemanagement.services.consumers.testIamPermissions
    ServiceManagementServicesConsumersTestIamPermissionsResource,
    newServiceManagementServicesConsumersTestIamPermissions,
    ServiceManagementServicesConsumersTestIamPermissions,

    -- ** servicemanagement.services.create
    ServiceManagementServicesCreateResource,
    newServiceManagementServicesCreate,
    ServiceManagementServicesCreate,

    -- ** servicemanagement.services.delete
    ServiceManagementServicesDeleteResource,
    newServiceManagementServicesDelete,
    ServiceManagementServicesDelete,

    -- ** servicemanagement.services.generateConfigReport
    ServiceManagementServicesGenerateConfigReportResource,
    newServiceManagementServicesGenerateConfigReport,
    ServiceManagementServicesGenerateConfigReport,

    -- ** servicemanagement.services.get
    ServiceManagementServicesGetResource,
    newServiceManagementServicesGet,
    ServiceManagementServicesGet,

    -- ** servicemanagement.services.getConfig
    ServiceManagementServicesGetConfigResource,
    newServiceManagementServicesGetConfig,
    ServiceManagementServicesGetConfig,

    -- ** servicemanagement.services.getIamPolicy
    ServiceManagementServicesGetIamPolicyResource,
    newServiceManagementServicesGetIamPolicy,
    ServiceManagementServicesGetIamPolicy,

    -- ** servicemanagement.services.list
    ServiceManagementServicesListResource,
    newServiceManagementServicesList,
    ServiceManagementServicesList,

    -- ** servicemanagement.services.rollouts.create
    ServiceManagementServicesRolloutsCreateResource,
    newServiceManagementServicesRolloutsCreate,
    ServiceManagementServicesRolloutsCreate,

    -- ** servicemanagement.services.rollouts.get
    ServiceManagementServicesRolloutsGetResource,
    newServiceManagementServicesRolloutsGet,
    ServiceManagementServicesRolloutsGet,

    -- ** servicemanagement.services.rollouts.list
    ServiceManagementServicesRolloutsListResource,
    newServiceManagementServicesRolloutsList,
    ServiceManagementServicesRolloutsList,

    -- ** servicemanagement.services.setIamPolicy
    ServiceManagementServicesSetIamPolicyResource,
    newServiceManagementServicesSetIamPolicy,
    ServiceManagementServicesSetIamPolicy,

    -- ** servicemanagement.services.testIamPermissions
    ServiceManagementServicesTestIamPermissionsResource,
    newServiceManagementServicesTestIamPermissions,
    ServiceManagementServicesTestIamPermissions,

    -- ** servicemanagement.services.undelete
    ServiceManagementServicesUndeleteResource,
    newServiceManagementServicesUndelete,
    ServiceManagementServicesUndelete,

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

    -- ** Http
    Http (..),
    newHttp,

    -- ** HttpRule
    HttpRule (..),
    newHttpRule,

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

    -- ** ManagedService
    ManagedService (..),
    newManagedService,

    -- ** Method
    Method (..),
    newMethod,

    -- ** Method_Syntax
    Method_Syntax (..),

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

    -- ** Policy
    Policy (..),
    newPolicy,

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
