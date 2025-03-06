{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.ServiceConsumerManagement.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ServiceConsumerManagement.Types
  ( -- * Configuration
    serviceConsumerManagementService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AddTenantProjectRequest
    AddTenantProjectRequest (..),
    newAddTenantProjectRequest,

    -- ** Api
    Api (..),
    newApi,

    -- ** Api_Syntax
    Api_Syntax (..),

    -- ** ApplyTenantProjectConfigRequest
    ApplyTenantProjectConfigRequest (..),
    newApplyTenantProjectConfigRequest,

    -- ** AttachTenantProjectRequest
    AttachTenantProjectRequest (..),
    newAttachTenantProjectRequest,

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

    -- ** BillingConfig
    BillingConfig (..),
    newBillingConfig,

    -- ** BillingDestination
    BillingDestination (..),
    newBillingDestination,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

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

    -- ** CreateTenancyUnitRequest
    CreateTenancyUnitRequest (..),
    newCreateTenancyUnitRequest,

    -- ** CustomError
    CustomError (..),
    newCustomError,

    -- ** CustomErrorRule
    CustomErrorRule (..),
    newCustomErrorRule,

    -- ** CustomHttpPattern
    CustomHttpPattern (..),
    newCustomHttpPattern,

    -- ** DeleteTenantProjectRequest
    DeleteTenantProjectRequest (..),
    newDeleteTenantProjectRequest,

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

    -- ** Empty
    Empty (..),
    newEmpty,

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

    -- ** ListTenancyUnitsResponse
    ListTenancyUnitsResponse (..),
    newListTenancyUnitsResponse,

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

    -- ** PolicyBinding
    PolicyBinding (..),
    newPolicyBinding,

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

    -- ** RemoveTenantProjectRequest
    RemoveTenantProjectRequest (..),
    newRemoveTenantProjectRequest,

    -- ** RubySettings
    RubySettings (..),
    newRubySettings,

    -- ** SearchTenancyUnitsResponse
    SearchTenancyUnitsResponse (..),
    newSearchTenancyUnitsResponse,

    -- ** SelectiveGapicGeneration
    SelectiveGapicGeneration (..),
    newSelectiveGapicGeneration,

    -- ** Service
    Service (..),
    newService,

    -- ** ServiceAccountConfig
    ServiceAccountConfig (..),
    newServiceAccountConfig,

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

    -- ** SystemParameter
    SystemParameter (..),
    newSystemParameter,

    -- ** SystemParameterRule
    SystemParameterRule (..),
    newSystemParameterRule,

    -- ** SystemParameters
    SystemParameters (..),
    newSystemParameters,

    -- ** TenancyUnit
    TenancyUnit (..),
    newTenancyUnit,

    -- ** TenantProjectConfig
    TenantProjectConfig (..),
    newTenantProjectConfig,

    -- ** TenantProjectConfig_Labels
    TenantProjectConfig_Labels (..),
    newTenantProjectConfig_Labels,

    -- ** TenantProjectPolicy
    TenantProjectPolicy (..),
    newTenantProjectPolicy,

    -- ** TenantResource
    TenantResource (..),
    newTenantResource,

    -- ** TenantResource_Status
    TenantResource_Status (..),

    -- ** Type
    Type (..),
    newType,

    -- ** Type_Syntax
    Type_Syntax (..),

    -- ** UndeleteTenantProjectRequest
    UndeleteTenantProjectRequest (..),
    newUndeleteTenantProjectRequest,

    -- ** Usage
    Usage (..),
    newUsage,

    -- ** UsageRule
    UsageRule (..),
    newUsageRule,

    -- ** V1AddVisibilityLabelsResponse
    V1AddVisibilityLabelsResponse (..),
    newV1AddVisibilityLabelsResponse,

    -- ** V1Beta1BatchCreateProducerOverridesResponse
    V1Beta1BatchCreateProducerOverridesResponse (..),
    newV1Beta1BatchCreateProducerOverridesResponse,

    -- ** V1Beta1DisableConsumerResponse
    V1Beta1DisableConsumerResponse (..),
    newV1Beta1DisableConsumerResponse,

    -- ** V1Beta1EnableConsumerResponse
    V1Beta1EnableConsumerResponse (..),
    newV1Beta1EnableConsumerResponse,

    -- ** V1Beta1GenerateServiceIdentityResponse
    V1Beta1GenerateServiceIdentityResponse (..),
    newV1Beta1GenerateServiceIdentityResponse,

    -- ** V1Beta1ImportProducerOverridesResponse
    V1Beta1ImportProducerOverridesResponse (..),
    newV1Beta1ImportProducerOverridesResponse,

    -- ** V1Beta1ImportProducerQuotaPoliciesResponse
    V1Beta1ImportProducerQuotaPoliciesResponse (..),
    newV1Beta1ImportProducerQuotaPoliciesResponse,

    -- ** V1Beta1ProducerQuotaPolicy
    V1Beta1ProducerQuotaPolicy (..),
    newV1Beta1ProducerQuotaPolicy,

    -- ** V1Beta1ProducerQuotaPolicy_Dimensions
    V1Beta1ProducerQuotaPolicy_Dimensions (..),
    newV1Beta1ProducerQuotaPolicy_Dimensions,

    -- ** V1Beta1QuotaOverride
    V1Beta1QuotaOverride (..),
    newV1Beta1QuotaOverride,

    -- ** V1Beta1QuotaOverride_Dimensions
    V1Beta1QuotaOverride_Dimensions (..),
    newV1Beta1QuotaOverride_Dimensions,

    -- ** V1Beta1RefreshConsumerResponse
    V1Beta1RefreshConsumerResponse (..),
    newV1Beta1RefreshConsumerResponse,

    -- ** V1Beta1ServiceIdentity
    V1Beta1ServiceIdentity (..),
    newV1Beta1ServiceIdentity,

    -- ** V1DefaultIdentity
    V1DefaultIdentity (..),
    newV1DefaultIdentity,

    -- ** V1DisableConsumerResponse
    V1DisableConsumerResponse (..),
    newV1DisableConsumerResponse,

    -- ** V1EnableConsumerResponse
    V1EnableConsumerResponse (..),
    newV1EnableConsumerResponse,

    -- ** V1GenerateDefaultIdentityResponse
    V1GenerateDefaultIdentityResponse (..),
    newV1GenerateDefaultIdentityResponse,

    -- ** V1GenerateDefaultIdentityResponse_AttachStatus
    V1GenerateDefaultIdentityResponse_AttachStatus (..),

    -- ** V1GenerateServiceAccountResponse
    V1GenerateServiceAccountResponse (..),
    newV1GenerateServiceAccountResponse,

    -- ** V1RefreshConsumerResponse
    V1RefreshConsumerResponse (..),
    newV1RefreshConsumerResponse,

    -- ** V1RemoveVisibilityLabelsResponse
    V1RemoveVisibilityLabelsResponse (..),
    newV1RemoveVisibilityLabelsResponse,

    -- ** V1ServiceAccount
    V1ServiceAccount (..),
    newV1ServiceAccount,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceConsumerManagement.Internal.Product
import Gogol.ServiceConsumerManagement.Internal.Sum

-- | Default request referring to version @v1@ of the Service Consumer Management API. This contains the host and root path used as a starting point for constructing service requests.
serviceConsumerManagementService :: Core.ServiceConfig
serviceConsumerManagementService =
  Core.defaultService
    (Core.ServiceId "serviceconsumermanagement:v1")
    "serviceconsumermanagement.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
