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
-- Module      : Gogol.ServiceConsumerManagement
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages the service consumers of a Service Infrastructure service.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference>
module Gogol.ServiceConsumerManagement
  ( -- * Configuration
    serviceConsumerManagementService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** serviceconsumermanagement.operations.cancel
    ServiceConsumerManagementOperationsCancelResource,
    newServiceConsumerManagementOperationsCancel,
    ServiceConsumerManagementOperationsCancel,

    -- ** serviceconsumermanagement.operations.delete
    ServiceConsumerManagementOperationsDeleteResource,
    newServiceConsumerManagementOperationsDelete,
    ServiceConsumerManagementOperationsDelete,

    -- ** serviceconsumermanagement.operations.get
    ServiceConsumerManagementOperationsGetResource,
    newServiceConsumerManagementOperationsGet,
    ServiceConsumerManagementOperationsGet,

    -- ** serviceconsumermanagement.operations.list
    ServiceConsumerManagementOperationsListResource,
    newServiceConsumerManagementOperationsList,
    ServiceConsumerManagementOperationsList,

    -- ** serviceconsumermanagement.services.search
    ServiceConsumerManagementServicesSearchResource,
    newServiceConsumerManagementServicesSearch,
    ServiceConsumerManagementServicesSearch,

    -- ** serviceconsumermanagement.services.tenancyUnits.addProject
    ServiceConsumerManagementServicesTenancyUnitsAddProjectResource,
    newServiceConsumerManagementServicesTenancyUnitsAddProject,
    ServiceConsumerManagementServicesTenancyUnitsAddProject,

    -- ** serviceconsumermanagement.services.tenancyUnits.applyProjectConfig
    ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfigResource,
    newServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig,
    ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig,

    -- ** serviceconsumermanagement.services.tenancyUnits.attachProject
    ServiceConsumerManagementServicesTenancyUnitsAttachProjectResource,
    newServiceConsumerManagementServicesTenancyUnitsAttachProject,
    ServiceConsumerManagementServicesTenancyUnitsAttachProject,

    -- ** serviceconsumermanagement.services.tenancyUnits.create
    ServiceConsumerManagementServicesTenancyUnitsCreateResource,
    newServiceConsumerManagementServicesTenancyUnitsCreate,
    ServiceConsumerManagementServicesTenancyUnitsCreate,

    -- ** serviceconsumermanagement.services.tenancyUnits.delete
    ServiceConsumerManagementServicesTenancyUnitsDeleteResource,
    newServiceConsumerManagementServicesTenancyUnitsDelete,
    ServiceConsumerManagementServicesTenancyUnitsDelete,

    -- ** serviceconsumermanagement.services.tenancyUnits.deleteProject
    ServiceConsumerManagementServicesTenancyUnitsDeleteProjectResource,
    newServiceConsumerManagementServicesTenancyUnitsDeleteProject,
    ServiceConsumerManagementServicesTenancyUnitsDeleteProject,

    -- ** serviceconsumermanagement.services.tenancyUnits.list
    ServiceConsumerManagementServicesTenancyUnitsListResource,
    newServiceConsumerManagementServicesTenancyUnitsList,
    ServiceConsumerManagementServicesTenancyUnitsList,

    -- ** serviceconsumermanagement.services.tenancyUnits.removeProject
    ServiceConsumerManagementServicesTenancyUnitsRemoveProjectResource,
    newServiceConsumerManagementServicesTenancyUnitsRemoveProject,
    ServiceConsumerManagementServicesTenancyUnitsRemoveProject,

    -- ** serviceconsumermanagement.services.tenancyUnits.undeleteProject
    ServiceConsumerManagementServicesTenancyUnitsUndeleteProjectResource,
    newServiceConsumerManagementServicesTenancyUnitsUndeleteProject,
    ServiceConsumerManagementServicesTenancyUnitsUndeleteProject,

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

    -- ** Context
    Context (..),
    newContext,

    -- ** ContextRule
    ContextRule (..),
    newContextRule,

    -- ** Control
    Control (..),
    newControl,

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

    -- ** Field
    Field (..),
    newField,

    -- ** Field_Cardinality
    Field_Cardinality (..),

    -- ** Field_Kind
    Field_Kind (..),

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

    -- ** Option
    Option (..),
    newOption,

    -- ** Option_Value
    Option_Value (..),
    newOption_Value,

    -- ** Page
    Page (..),
    newPage,

    -- ** PolicyBinding
    PolicyBinding (..),
    newPolicyBinding,

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

    -- ** SearchTenancyUnitsResponse
    SearchTenancyUnitsResponse (..),
    newSearchTenancyUnitsResponse,

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

import Gogol.ServiceConsumerManagement.Operations.Cancel
import Gogol.ServiceConsumerManagement.Operations.Delete
import Gogol.ServiceConsumerManagement.Operations.Get
import Gogol.ServiceConsumerManagement.Operations.List
import Gogol.ServiceConsumerManagement.Services.Search
import Gogol.ServiceConsumerManagement.Services.TenancyUnits.AddProject
import Gogol.ServiceConsumerManagement.Services.TenancyUnits.ApplyProjectConfig
import Gogol.ServiceConsumerManagement.Services.TenancyUnits.AttachProject
import Gogol.ServiceConsumerManagement.Services.TenancyUnits.Create
import Gogol.ServiceConsumerManagement.Services.TenancyUnits.Delete
import Gogol.ServiceConsumerManagement.Services.TenancyUnits.DeleteProject
import Gogol.ServiceConsumerManagement.Services.TenancyUnits.List
import Gogol.ServiceConsumerManagement.Services.TenancyUnits.RemoveProject
import Gogol.ServiceConsumerManagement.Services.TenancyUnits.UndeleteProject
import Gogol.ServiceConsumerManagement.Types
