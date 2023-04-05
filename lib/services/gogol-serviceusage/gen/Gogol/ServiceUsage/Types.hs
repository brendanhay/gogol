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
-- Module      : Gogol.ServiceUsage.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ServiceUsage.Types
  ( -- * Configuration
    serviceUsageService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Service'Management,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdminQuotaPolicy
    AdminQuotaPolicy (..),
    newAdminQuotaPolicy,

    -- ** AdminQuotaPolicy_Dimensions
    AdminQuotaPolicy_Dimensions (..),
    newAdminQuotaPolicy_Dimensions,

    -- ** Api
    Api (..),
    newApi,

    -- ** Api_Syntax
    Api_Syntax (..),

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

    -- ** BatchCreateAdminOverridesResponse
    BatchCreateAdminOverridesResponse (..),
    newBatchCreateAdminOverridesResponse,

    -- ** BatchCreateConsumerOverridesResponse
    BatchCreateConsumerOverridesResponse (..),
    newBatchCreateConsumerOverridesResponse,

    -- ** BatchEnableServicesRequest
    BatchEnableServicesRequest (..),
    newBatchEnableServicesRequest,

    -- ** BatchEnableServicesResponse
    BatchEnableServicesResponse (..),
    newBatchEnableServicesResponse,

    -- ** BatchGetServicesResponse
    BatchGetServicesResponse (..),
    newBatchGetServicesResponse,

    -- ** Billing
    Billing (..),
    newBilling,

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

    -- ** CreateAdminQuotaPolicyMetadata
    CreateAdminQuotaPolicyMetadata (..),
    newCreateAdminQuotaPolicyMetadata,

    -- ** CustomError
    CustomError (..),
    newCustomError,

    -- ** CustomErrorRule
    CustomErrorRule (..),
    newCustomErrorRule,

    -- ** CustomHttpPattern
    CustomHttpPattern (..),
    newCustomHttpPattern,

    -- ** DeleteAdminQuotaPolicyMetadata
    DeleteAdminQuotaPolicyMetadata (..),
    newDeleteAdminQuotaPolicyMetadata,

    -- ** DisableServiceRequest
    DisableServiceRequest (..),
    newDisableServiceRequest,

    -- ** DisableServiceRequest_CheckIfServiceHasUsage
    DisableServiceRequest_CheckIfServiceHasUsage (..),

    -- ** DisableServiceResponse
    DisableServiceResponse (..),
    newDisableServiceResponse,

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

    -- ** EnableFailure
    EnableFailure (..),
    newEnableFailure,

    -- ** EnableServiceRequest
    EnableServiceRequest (..),
    newEnableServiceRequest,

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

    -- ** Field
    Field (..),
    newField,

    -- ** Field_Cardinality
    Field_Cardinality (..),

    -- ** Field_Kind
    Field_Kind (..),

    -- ** GetServiceIdentityMetadata
    GetServiceIdentityMetadata (..),
    newGetServiceIdentityMetadata,

    -- ** GetServiceIdentityResponse
    GetServiceIdentityResponse (..),
    newGetServiceIdentityResponse,

    -- ** GetServiceIdentityResponse_State
    GetServiceIdentityResponse_State (..),

    -- ** GoSettings
    GoSettings (..),
    newGoSettings,

    -- ** GoogleApiService
    GoogleApiService (..),
    newGoogleApiService,

    -- ** GoogleApiServiceusageV1OperationMetadata
    GoogleApiServiceusageV1OperationMetadata (..),
    newGoogleApiServiceusageV1OperationMetadata,

    -- ** GoogleApiServiceusageV1Service
    GoogleApiServiceusageV1Service (..),
    newGoogleApiServiceusageV1Service,

    -- ** GoogleApiServiceusageV1Service_State
    GoogleApiServiceusageV1Service_State (..),

    -- ** GoogleApiServiceusageV1ServiceConfig
    GoogleApiServiceusageV1ServiceConfig (..),
    newGoogleApiServiceusageV1ServiceConfig,

    -- ** GoogleApiServiceusageV1beta1GetServiceIdentityResponse
    GoogleApiServiceusageV1beta1GetServiceIdentityResponse (..),
    newGoogleApiServiceusageV1beta1GetServiceIdentityResponse,

    -- ** GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State
    GoogleApiServiceusageV1beta1GetServiceIdentityResponse_State (..),

    -- ** GoogleApiServiceusageV1beta1ServiceIdentity
    GoogleApiServiceusageV1beta1ServiceIdentity (..),
    newGoogleApiServiceusageV1beta1ServiceIdentity,

    -- ** Http
    Http (..),
    newHttp,

    -- ** HttpRule
    HttpRule (..),
    newHttpRule,

    -- ** ImportAdminOverridesMetadata
    ImportAdminOverridesMetadata (..),
    newImportAdminOverridesMetadata,

    -- ** ImportAdminOverridesResponse
    ImportAdminOverridesResponse (..),
    newImportAdminOverridesResponse,

    -- ** ImportAdminQuotaPoliciesMetadata
    ImportAdminQuotaPoliciesMetadata (..),
    newImportAdminQuotaPoliciesMetadata,

    -- ** ImportAdminQuotaPoliciesResponse
    ImportAdminQuotaPoliciesResponse (..),
    newImportAdminQuotaPoliciesResponse,

    -- ** ImportConsumerOverridesMetadata
    ImportConsumerOverridesMetadata (..),
    newImportConsumerOverridesMetadata,

    -- ** ImportConsumerOverridesResponse
    ImportConsumerOverridesResponse (..),
    newImportConsumerOverridesResponse,

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

    -- ** Method
    Method (..),
    newMethod,

    -- ** Method_Syntax
    Method_Syntax (..),

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

    -- ** QuotaOverride
    QuotaOverride (..),
    newQuotaOverride,

    -- ** QuotaOverride_Dimensions
    QuotaOverride_Dimensions (..),
    newQuotaOverride_Dimensions,

    -- ** RubySettings
    RubySettings (..),
    newRubySettings,

    -- ** ServiceIdentity
    ServiceIdentity (..),
    newServiceIdentity,

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

    -- ** Type
    Type (..),
    newType,

    -- ** Type_Syntax
    Type_Syntax (..),

    -- ** UpdateAdminQuotaPolicyMetadata
    UpdateAdminQuotaPolicyMetadata (..),
    newUpdateAdminQuotaPolicyMetadata,

    -- ** Usage
    Usage (..),
    newUsage,

    -- ** UsageRule
    UsageRule (..),
    newUsageRule,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceUsage.Internal.Product
import Gogol.ServiceUsage.Internal.Sum

-- | Default request referring to version @v1@ of the Service Usage API. This contains the host and root path used as a starting point for constructing service requests.
serviceUsageService :: Core.ServiceConfig
serviceUsageService =
  Core.defaultService
    (Core.ServiceId "serviceusage:v1")
    "serviceusage.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud services and see the email address of your Google Account
type CloudPlatform'ReadOnly = "https://www.googleapis.com/auth/cloud-platform.read-only"

-- | Manage your Google API service configuration
type Service'Management = "https://www.googleapis.com/auth/service.management"
