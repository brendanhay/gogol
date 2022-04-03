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
-- Module      : Gogol.ServiceUsage
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables services that service consumers want to use on Google Cloud Platform, lists the available or enabled services, or disables services that service consumers no longer use.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference>
module Gogol.ServiceUsage
  ( -- * Configuration
    serviceUsageService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Service'Management,

    -- * Resources

    -- ** serviceusage.operations.cancel
    ServiceUsageOperationsCancelResource,
    ServiceUsageOperationsCancel (..),
    newServiceUsageOperationsCancel,

    -- ** serviceusage.operations.delete
    ServiceUsageOperationsDeleteResource,
    ServiceUsageOperationsDelete (..),
    newServiceUsageOperationsDelete,

    -- ** serviceusage.operations.get
    ServiceUsageOperationsGetResource,
    ServiceUsageOperationsGet (..),
    newServiceUsageOperationsGet,

    -- ** serviceusage.operations.list
    ServiceUsageOperationsListResource,
    ServiceUsageOperationsList (..),
    newServiceUsageOperationsList,

    -- ** serviceusage.services.batchEnable
    ServiceUsageServicesBatchEnableResource,
    ServiceUsageServicesBatchEnable (..),
    newServiceUsageServicesBatchEnable,

    -- ** serviceusage.services.batchGet
    ServiceUsageServicesBatchGetResource,
    ServiceUsageServicesBatchGet (..),
    newServiceUsageServicesBatchGet,

    -- ** serviceusage.services.disable
    ServiceUsageServicesDisableResource,
    ServiceUsageServicesDisable (..),
    newServiceUsageServicesDisable,

    -- ** serviceusage.services.enable
    ServiceUsageServicesEnableResource,
    ServiceUsageServicesEnable (..),
    newServiceUsageServicesEnable,

    -- ** serviceusage.services.get
    ServiceUsageServicesGetResource,
    ServiceUsageServicesGet (..),
    newServiceUsageServicesGet,

    -- ** serviceusage.services.list
    ServiceUsageServicesListResource,
    ServiceUsageServicesList (..),
    newServiceUsageServicesList,

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

    -- ** Context
    Context (..),
    newContext,

    -- ** ContextRule
    ContextRule (..),
    newContextRule,

    -- ** Control
    Control (..),
    newControl,

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

import Gogol.ServiceUsage.Operations.Cancel
import Gogol.ServiceUsage.Operations.Delete
import Gogol.ServiceUsage.Operations.Get
import Gogol.ServiceUsage.Operations.List
import Gogol.ServiceUsage.Services.BatchEnable
import Gogol.ServiceUsage.Services.BatchGet
import Gogol.ServiceUsage.Services.Disable
import Gogol.ServiceUsage.Services.Enable
import Gogol.ServiceUsage.Services.Get
import Gogol.ServiceUsage.Services.List
import Gogol.ServiceUsage.Types
