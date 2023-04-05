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
-- Module      : Gogol.ServiceNetworking
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides automatic management of network configurations necessary for certain services.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference>
module Gogol.ServiceNetworking
  ( -- * Configuration
    serviceNetworkingService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Service'Management,

    -- * Resources

    -- ** servicenetworking.operations.cancel
    ServiceNetworkingOperationsCancelResource,
    ServiceNetworkingOperationsCancel (..),
    newServiceNetworkingOperationsCancel,

    -- ** servicenetworking.operations.delete
    ServiceNetworkingOperationsDeleteResource,
    ServiceNetworkingOperationsDelete (..),
    newServiceNetworkingOperationsDelete,

    -- ** servicenetworking.operations.get
    ServiceNetworkingOperationsGetResource,
    ServiceNetworkingOperationsGet (..),
    newServiceNetworkingOperationsGet,

    -- ** servicenetworking.operations.list
    ServiceNetworkingOperationsListResource,
    ServiceNetworkingOperationsList (..),
    newServiceNetworkingOperationsList,

    -- ** servicenetworking.services.addSubnetwork
    ServiceNetworkingServicesAddSubnetworkResource,
    ServiceNetworkingServicesAddSubnetwork (..),
    newServiceNetworkingServicesAddSubnetwork,

    -- ** servicenetworking.services.connections.create
    ServiceNetworkingServicesConnectionsCreateResource,
    ServiceNetworkingServicesConnectionsCreate (..),
    newServiceNetworkingServicesConnectionsCreate,

    -- ** servicenetworking.services.connections.deleteConnection
    ServiceNetworkingServicesConnectionsDeleteConnectionResource,
    ServiceNetworkingServicesConnectionsDeleteConnection (..),
    newServiceNetworkingServicesConnectionsDeleteConnection,

    -- ** servicenetworking.services.connections.list
    ServiceNetworkingServicesConnectionsListResource,
    ServiceNetworkingServicesConnectionsList (..),
    newServiceNetworkingServicesConnectionsList,

    -- ** servicenetworking.services.connections.patch
    ServiceNetworkingServicesConnectionsPatchResource,
    ServiceNetworkingServicesConnectionsPatch (..),
    newServiceNetworkingServicesConnectionsPatch,

    -- ** servicenetworking.services.disableVpcServiceControls
    ServiceNetworkingServicesDisableVpcServiceControlsResource,
    ServiceNetworkingServicesDisableVpcServiceControls (..),
    newServiceNetworkingServicesDisableVpcServiceControls,

    -- ** servicenetworking.services.dnsRecordSets.add
    ServiceNetworkingServicesDnsRecordSetsAddResource,
    ServiceNetworkingServicesDnsRecordSetsAdd (..),
    newServiceNetworkingServicesDnsRecordSetsAdd,

    -- ** servicenetworking.services.dnsRecordSets.remove
    ServiceNetworkingServicesDnsRecordSetsRemoveResource,
    ServiceNetworkingServicesDnsRecordSetsRemove (..),
    newServiceNetworkingServicesDnsRecordSetsRemove,

    -- ** servicenetworking.services.dnsRecordSets.update
    ServiceNetworkingServicesDnsRecordSetsUpdateResource,
    ServiceNetworkingServicesDnsRecordSetsUpdate (..),
    newServiceNetworkingServicesDnsRecordSetsUpdate,

    -- ** servicenetworking.services.dnsZones.add
    ServiceNetworkingServicesDnsZonesAddResource,
    ServiceNetworkingServicesDnsZonesAdd (..),
    newServiceNetworkingServicesDnsZonesAdd,

    -- ** servicenetworking.services.dnsZones.remove
    ServiceNetworkingServicesDnsZonesRemoveResource,
    ServiceNetworkingServicesDnsZonesRemove (..),
    newServiceNetworkingServicesDnsZonesRemove,

    -- ** servicenetworking.services.enableVpcServiceControls
    ServiceNetworkingServicesEnableVpcServiceControlsResource,
    ServiceNetworkingServicesEnableVpcServiceControls (..),
    newServiceNetworkingServicesEnableVpcServiceControls,

    -- ** servicenetworking.services.projects.global.networks.get
    ServiceNetworkingServicesProjectsGlobalNetworksGetResource,
    ServiceNetworkingServicesProjectsGlobalNetworksGet (..),
    newServiceNetworkingServicesProjectsGlobalNetworksGet,

    -- ** servicenetworking.services.projects.global.networks.peeredDnsDomains.create
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreateResource,
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate (..),
    newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate,

    -- ** servicenetworking.services.projects.global.networks.peeredDnsDomains.delete
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDeleteResource,
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete (..),
    newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete,

    -- ** servicenetworking.services.projects.global.networks.peeredDnsDomains.list
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsListResource,
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList (..),
    newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList,

    -- ** servicenetworking.services.projects.global.networks.updateConsumerConfig
    ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfigResource,
    ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig (..),
    newServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig,

    -- ** servicenetworking.services.roles.add
    ServiceNetworkingServicesRolesAddResource,
    ServiceNetworkingServicesRolesAdd (..),
    newServiceNetworkingServicesRolesAdd,

    -- ** servicenetworking.services.searchRange
    ServiceNetworkingServicesSearchRangeResource,
    ServiceNetworkingServicesSearchRange (..),
    newServiceNetworkingServicesSearchRange,

    -- ** servicenetworking.services.validate
    ServiceNetworkingServicesValidateResource,
    ServiceNetworkingServicesValidate (..),
    newServiceNetworkingServicesValidate,

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

    -- ** Field
    Field (..),
    newField,

    -- ** Field_Cardinality
    Field_Cardinality (..),

    -- ** Field_Kind
    Field_Kind (..),

    -- ** GoSettings
    GoSettings (..),
    newGoSettings,

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
  )
where

import Gogol.ServiceNetworking.Operations.Cancel
import Gogol.ServiceNetworking.Operations.Delete
import Gogol.ServiceNetworking.Operations.Get
import Gogol.ServiceNetworking.Operations.List
import Gogol.ServiceNetworking.Services.AddSubnetwork
import Gogol.ServiceNetworking.Services.Connections.Create
import Gogol.ServiceNetworking.Services.Connections.DeleteConnection
import Gogol.ServiceNetworking.Services.Connections.List
import Gogol.ServiceNetworking.Services.Connections.Patch
import Gogol.ServiceNetworking.Services.DisableVpcServiceControls
import Gogol.ServiceNetworking.Services.DnsRecordSets.Add
import Gogol.ServiceNetworking.Services.DnsRecordSets.Remove
import Gogol.ServiceNetworking.Services.DnsRecordSets.Update
import Gogol.ServiceNetworking.Services.DnsZones.Add
import Gogol.ServiceNetworking.Services.DnsZones.Remove
import Gogol.ServiceNetworking.Services.EnableVpcServiceControls
import Gogol.ServiceNetworking.Services.Projects.Global.Networks.Get
import Gogol.ServiceNetworking.Services.Projects.Global.Networks.PeeredDnsDomains.Create
import Gogol.ServiceNetworking.Services.Projects.Global.Networks.PeeredDnsDomains.Delete
import Gogol.ServiceNetworking.Services.Projects.Global.Networks.PeeredDnsDomains.List
import Gogol.ServiceNetworking.Services.Projects.Global.Networks.UpdateConsumerConfig
import Gogol.ServiceNetworking.Services.Roles.Add
import Gogol.ServiceNetworking.Services.SearchRange
import Gogol.ServiceNetworking.Services.Validate
import Gogol.ServiceNetworking.Types
