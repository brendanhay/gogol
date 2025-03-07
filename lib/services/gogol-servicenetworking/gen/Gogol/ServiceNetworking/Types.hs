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
-- Module      : Gogol.ServiceNetworking.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ServiceNetworking.Types
  ( -- * Configuration
    serviceNetworkingService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Service'Management,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AddDnsRecordSetMetadata
    AddDnsRecordSetMetadata (..),
    newAddDnsRecordSetMetadata,

    -- ** AddDnsRecordSetRequest
    AddDnsRecordSetRequest (..),
    newAddDnsRecordSetRequest,

    -- ** AddDnsZoneMetadata
    AddDnsZoneMetadata (..),
    newAddDnsZoneMetadata,

    -- ** AddDnsZoneRequest
    AddDnsZoneRequest (..),
    newAddDnsZoneRequest,

    -- ** AddDnsZoneResponse
    AddDnsZoneResponse (..),
    newAddDnsZoneResponse,

    -- ** AddRolesMetadata
    AddRolesMetadata (..),
    newAddRolesMetadata,

    -- ** AddRolesRequest
    AddRolesRequest (..),
    newAddRolesRequest,

    -- ** AddRolesResponse
    AddRolesResponse (..),
    newAddRolesResponse,

    -- ** AddSubnetworkRequest
    AddSubnetworkRequest (..),
    newAddSubnetworkRequest,

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

    -- ** CloudSQLConfig
    CloudSQLConfig (..),
    newCloudSQLConfig,

    -- ** CommonLanguageSettings
    CommonLanguageSettings (..),
    newCommonLanguageSettings,

    -- ** CommonLanguageSettings_DestinationsItem
    CommonLanguageSettings_DestinationsItem (..),

    -- ** Connection
    Connection (..),
    newConnection,

    -- ** ConsumerConfig
    ConsumerConfig (..),
    newConsumerConfig,

    -- ** ConsumerConfigMetadata
    ConsumerConfigMetadata (..),
    newConsumerConfigMetadata,

    -- ** ConsumerProject
    ConsumerProject (..),
    newConsumerProject,

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

    -- ** DeleteConnectionMetadata
    DeleteConnectionMetadata (..),
    newDeleteConnectionMetadata,

    -- ** DeleteConnectionRequest
    DeleteConnectionRequest (..),
    newDeleteConnectionRequest,

    -- ** DeletePeeredDnsDomainMetadata
    DeletePeeredDnsDomainMetadata (..),
    newDeletePeeredDnsDomainMetadata,

    -- ** DisableVpcServiceControlsRequest
    DisableVpcServiceControlsRequest (..),
    newDisableVpcServiceControlsRequest,

    -- ** DnsRecordSet
    DnsRecordSet (..),
    newDnsRecordSet,

    -- ** DnsZone
    DnsZone (..),
    newDnsZone,

    -- ** DnsZonePair
    DnsZonePair (..),
    newDnsZonePair,

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

    -- ** EnableVpcServiceControlsRequest
    EnableVpcServiceControlsRequest (..),
    newEnableVpcServiceControlsRequest,

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

    -- ** GetDnsZoneResponse
    GetDnsZoneResponse (..),
    newGetDnsZoneResponse,

    -- ** GoSettings
    GoSettings (..),
    newGoSettings,

    -- ** GoSettings_RenamedServices
    GoSettings_RenamedServices (..),
    newGoSettings_RenamedServices,

    -- ** GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
    GoogleCloudServicenetworkingV1ConsumerConfigReservedRange (..),
    newGoogleCloudServicenetworkingV1ConsumerConfigReservedRange,

    -- ** GoogleCloudServicenetworkingV1betaConnection
    GoogleCloudServicenetworkingV1betaConnection (..),
    newGoogleCloudServicenetworkingV1betaConnection,

    -- ** GoogleCloudServicenetworkingV1betaSubnetwork
    GoogleCloudServicenetworkingV1betaSubnetwork (..),
    newGoogleCloudServicenetworkingV1betaSubnetwork,

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

    -- ** ListConnectionsResponse
    ListConnectionsResponse (..),
    newListConnectionsResponse,

    -- ** ListDnsRecordSetsResponse
    ListDnsRecordSetsResponse (..),
    newListDnsRecordSetsResponse,

    -- ** ListDnsZonesResponse
    ListDnsZonesResponse (..),
    newListDnsZonesResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListPeeredDnsDomainsResponse
    ListPeeredDnsDomainsResponse (..),
    newListPeeredDnsDomainsResponse,

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

    -- ** PartialDeleteConnectionMetadata
    PartialDeleteConnectionMetadata (..),
    newPartialDeleteConnectionMetadata,

    -- ** PeeredDnsDomain
    PeeredDnsDomain (..),
    newPeeredDnsDomain,

    -- ** PeeredDnsDomainMetadata
    PeeredDnsDomainMetadata (..),
    newPeeredDnsDomainMetadata,

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

    -- ** Range
    Range (..),
    newRange,

    -- ** RangeReservation
    RangeReservation (..),
    newRangeReservation,

    -- ** RemoveDnsRecordSetMetadata
    RemoveDnsRecordSetMetadata (..),
    newRemoveDnsRecordSetMetadata,

    -- ** RemoveDnsRecordSetRequest
    RemoveDnsRecordSetRequest (..),
    newRemoveDnsRecordSetRequest,

    -- ** RemoveDnsRecordSetResponse
    RemoveDnsRecordSetResponse (..),
    newRemoveDnsRecordSetResponse,

    -- ** RemoveDnsZoneMetadata
    RemoveDnsZoneMetadata (..),
    newRemoveDnsZoneMetadata,

    -- ** RemoveDnsZoneRequest
    RemoveDnsZoneRequest (..),
    newRemoveDnsZoneRequest,

    -- ** RemoveDnsZoneResponse
    RemoveDnsZoneResponse (..),
    newRemoveDnsZoneResponse,

    -- ** Route
    Route (..),
    newRoute,

    -- ** RubySettings
    RubySettings (..),
    newRubySettings,

    -- ** SearchRangeRequest
    SearchRangeRequest (..),
    newSearchRangeRequest,

    -- ** SecondaryIpRange
    SecondaryIpRange (..),
    newSecondaryIpRange,

    -- ** SecondaryIpRangeSpec
    SecondaryIpRangeSpec (..),
    newSecondaryIpRangeSpec,

    -- ** SelectiveGapicGeneration
    SelectiveGapicGeneration (..),
    newSelectiveGapicGeneration,

    -- ** Service
    Service (..),
    newService,

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

    -- ** Subnetwork
    Subnetwork (..),
    newSubnetwork,

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

    -- ** UpdateConsumerConfigRequest
    UpdateConsumerConfigRequest (..),
    newUpdateConsumerConfigRequest,

    -- ** UpdateDnsRecordSetMetadata
    UpdateDnsRecordSetMetadata (..),
    newUpdateDnsRecordSetMetadata,

    -- ** UpdateDnsRecordSetRequest
    UpdateDnsRecordSetRequest (..),
    newUpdateDnsRecordSetRequest,

    -- ** Usage
    Usage (..),
    newUsage,

    -- ** UsageRule
    UsageRule (..),
    newUsageRule,

    -- ** ValidateConsumerConfigRequest
    ValidateConsumerConfigRequest (..),
    newValidateConsumerConfigRequest,

    -- ** ValidateConsumerConfigResponse
    ValidateConsumerConfigResponse (..),
    newValidateConsumerConfigResponse,

    -- ** ValidateConsumerConfigResponse_ValidationError
    ValidateConsumerConfigResponse_ValidationError (..),

    -- ** VpcServiceControls
    VpcServiceControls (..),
    newVpcServiceControls,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceNetworking.Internal.Product
import Gogol.ServiceNetworking.Internal.Sum

-- | Default request referring to version @v1@ of the Service Networking API. This contains the host and root path used as a starting point for constructing service requests.
serviceNetworkingService :: Core.ServiceConfig
serviceNetworkingService =
  Core.defaultService
    (Core.ServiceId "servicenetworking:v1")
    "servicenetworking.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | Manage your Google API service configuration
type Service'Management =
  "https://www.googleapis.com/auth/service.management"
