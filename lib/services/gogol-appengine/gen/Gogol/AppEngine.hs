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
-- Module      : Gogol.AppEngine
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provisions and manages developers\' App Engine applications.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference>
module Gogol.AppEngine
  ( -- * Configuration
    appEngineService,

    -- * OAuth Scopes
    Appengine'Admin,
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,

    -- * Resources

    -- ** appengine.apps.authorizedCertificates.create
    AppEngineAppsAuthorizedCertificatesCreateResource,
    newAppEngineAppsAuthorizedCertificatesCreate,
    AppEngineAppsAuthorizedCertificatesCreate,

    -- ** appengine.apps.authorizedCertificates.delete
    AppEngineAppsAuthorizedCertificatesDeleteResource,
    newAppEngineAppsAuthorizedCertificatesDelete,
    AppEngineAppsAuthorizedCertificatesDelete,

    -- ** appengine.apps.authorizedCertificates.get
    AppEngineAppsAuthorizedCertificatesGetResource,
    newAppEngineAppsAuthorizedCertificatesGet,
    AppEngineAppsAuthorizedCertificatesGet,

    -- ** appengine.apps.authorizedCertificates.list
    AppEngineAppsAuthorizedCertificatesListResource,
    newAppEngineAppsAuthorizedCertificatesList,
    AppEngineAppsAuthorizedCertificatesList,

    -- ** appengine.apps.authorizedCertificates.patch
    AppEngineAppsAuthorizedCertificatesPatchResource,
    newAppEngineAppsAuthorizedCertificatesPatch,
    AppEngineAppsAuthorizedCertificatesPatch,

    -- ** appengine.apps.authorizedDomains.list
    AppEngineAppsAuthorizedDomainsListResource,
    newAppEngineAppsAuthorizedDomainsList,
    AppEngineAppsAuthorizedDomainsList,

    -- ** appengine.apps.create
    AppEngineAppsCreateResource,
    newAppEngineAppsCreate,
    AppEngineAppsCreate,

    -- ** appengine.apps.domainMappings.create
    AppEngineAppsDomainMappingsCreateResource,
    newAppEngineAppsDomainMappingsCreate,
    AppEngineAppsDomainMappingsCreate,

    -- ** appengine.apps.domainMappings.delete
    AppEngineAppsDomainMappingsDeleteResource,
    newAppEngineAppsDomainMappingsDelete,
    AppEngineAppsDomainMappingsDelete,

    -- ** appengine.apps.domainMappings.get
    AppEngineAppsDomainMappingsGetResource,
    newAppEngineAppsDomainMappingsGet,
    AppEngineAppsDomainMappingsGet,

    -- ** appengine.apps.domainMappings.list
    AppEngineAppsDomainMappingsListResource,
    newAppEngineAppsDomainMappingsList,
    AppEngineAppsDomainMappingsList,

    -- ** appengine.apps.domainMappings.patch
    AppEngineAppsDomainMappingsPatchResource,
    newAppEngineAppsDomainMappingsPatch,
    AppEngineAppsDomainMappingsPatch,

    -- ** appengine.apps.firewall.ingressRules.batchUpdate
    AppEngineAppsFirewallIngressRulesBatchUpdateResource,
    newAppEngineAppsFirewallIngressRulesBatchUpdate,
    AppEngineAppsFirewallIngressRulesBatchUpdate,

    -- ** appengine.apps.firewall.ingressRules.create
    AppEngineAppsFirewallIngressRulesCreateResource,
    newAppEngineAppsFirewallIngressRulesCreate,
    AppEngineAppsFirewallIngressRulesCreate,

    -- ** appengine.apps.firewall.ingressRules.delete
    AppEngineAppsFirewallIngressRulesDeleteResource,
    newAppEngineAppsFirewallIngressRulesDelete,
    AppEngineAppsFirewallIngressRulesDelete,

    -- ** appengine.apps.firewall.ingressRules.get
    AppEngineAppsFirewallIngressRulesGetResource,
    newAppEngineAppsFirewallIngressRulesGet,
    AppEngineAppsFirewallIngressRulesGet,

    -- ** appengine.apps.firewall.ingressRules.list
    AppEngineAppsFirewallIngressRulesListResource,
    newAppEngineAppsFirewallIngressRulesList,
    AppEngineAppsFirewallIngressRulesList,

    -- ** appengine.apps.firewall.ingressRules.patch
    AppEngineAppsFirewallIngressRulesPatchResource,
    newAppEngineAppsFirewallIngressRulesPatch,
    AppEngineAppsFirewallIngressRulesPatch,

    -- ** appengine.apps.get
    AppEngineAppsGetResource,
    newAppEngineAppsGet,
    AppEngineAppsGet,

    -- ** appengine.apps.locations.get
    AppEngineAppsLocationsGetResource,
    newAppEngineAppsLocationsGet,
    AppEngineAppsLocationsGet,

    -- ** appengine.apps.locations.list
    AppEngineAppsLocationsListResource,
    newAppEngineAppsLocationsList,
    AppEngineAppsLocationsList,

    -- ** appengine.apps.operations.get
    AppEngineAppsOperationsGetResource,
    newAppEngineAppsOperationsGet,
    AppEngineAppsOperationsGet,

    -- ** appengine.apps.operations.list
    AppEngineAppsOperationsListResource,
    newAppEngineAppsOperationsList,
    AppEngineAppsOperationsList,

    -- ** appengine.apps.patch
    AppEngineAppsPatchResource,
    newAppEngineAppsPatch,
    AppEngineAppsPatch,

    -- ** appengine.apps.repair
    AppEngineAppsRepairResource,
    newAppEngineAppsRepair,
    AppEngineAppsRepair,

    -- ** appengine.apps.services.delete
    AppEngineAppsServicesDeleteResource,
    newAppEngineAppsServicesDelete,
    AppEngineAppsServicesDelete,

    -- ** appengine.apps.services.get
    AppEngineAppsServicesGetResource,
    newAppEngineAppsServicesGet,
    AppEngineAppsServicesGet,

    -- ** appengine.apps.services.list
    AppEngineAppsServicesListResource,
    newAppEngineAppsServicesList,
    AppEngineAppsServicesList,

    -- ** appengine.apps.services.patch
    AppEngineAppsServicesPatchResource,
    newAppEngineAppsServicesPatch,
    AppEngineAppsServicesPatch,

    -- ** appengine.apps.services.versions.create
    AppEngineAppsServicesVersionsCreateResource,
    newAppEngineAppsServicesVersionsCreate,
    AppEngineAppsServicesVersionsCreate,

    -- ** appengine.apps.services.versions.delete
    AppEngineAppsServicesVersionsDeleteResource,
    newAppEngineAppsServicesVersionsDelete,
    AppEngineAppsServicesVersionsDelete,

    -- ** appengine.apps.services.versions.get
    AppEngineAppsServicesVersionsGetResource,
    newAppEngineAppsServicesVersionsGet,
    AppEngineAppsServicesVersionsGet,

    -- ** appengine.apps.services.versions.instances.debug
    AppEngineAppsServicesVersionsInstancesDebugResource,
    newAppEngineAppsServicesVersionsInstancesDebug,
    AppEngineAppsServicesVersionsInstancesDebug,

    -- ** appengine.apps.services.versions.instances.delete
    AppEngineAppsServicesVersionsInstancesDeleteResource,
    newAppEngineAppsServicesVersionsInstancesDelete,
    AppEngineAppsServicesVersionsInstancesDelete,

    -- ** appengine.apps.services.versions.instances.get
    AppEngineAppsServicesVersionsInstancesGetResource,
    newAppEngineAppsServicesVersionsInstancesGet,
    AppEngineAppsServicesVersionsInstancesGet,

    -- ** appengine.apps.services.versions.instances.list
    AppEngineAppsServicesVersionsInstancesListResource,
    newAppEngineAppsServicesVersionsInstancesList,
    AppEngineAppsServicesVersionsInstancesList,

    -- ** appengine.apps.services.versions.list
    AppEngineAppsServicesVersionsListResource,
    newAppEngineAppsServicesVersionsList,
    AppEngineAppsServicesVersionsList,

    -- ** appengine.apps.services.versions.patch
    AppEngineAppsServicesVersionsPatchResource,
    newAppEngineAppsServicesVersionsPatch,
    AppEngineAppsServicesVersionsPatch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** ApiConfigHandler
    ApiConfigHandler (..),
    newApiConfigHandler,

    -- ** ApiConfigHandler_AuthFailAction
    ApiConfigHandler_AuthFailAction (..),

    -- ** ApiConfigHandler_Login
    ApiConfigHandler_Login (..),

    -- ** ApiConfigHandler_SecurityLevel
    ApiConfigHandler_SecurityLevel (..),

    -- ** ApiEndpointHandler
    ApiEndpointHandler (..),
    newApiEndpointHandler,

    -- ** Application
    Application (..),
    newApplication,

    -- ** Application_DatabaseType
    Application_DatabaseType (..),

    -- ** Application_ServingStatus
    Application_ServingStatus (..),

    -- ** AuthorizedCertificate
    AuthorizedCertificate (..),
    newAuthorizedCertificate,

    -- ** AuthorizedDomain
    AuthorizedDomain (..),
    newAuthorizedDomain,

    -- ** AutomaticScaling
    AutomaticScaling (..),
    newAutomaticScaling,

    -- ** BasicScaling
    BasicScaling (..),
    newBasicScaling,

    -- ** BatchUpdateIngressRulesRequest
    BatchUpdateIngressRulesRequest (..),
    newBatchUpdateIngressRulesRequest,

    -- ** BatchUpdateIngressRulesResponse
    BatchUpdateIngressRulesResponse (..),
    newBatchUpdateIngressRulesResponse,

    -- ** CertificateRawData
    CertificateRawData (..),
    newCertificateRawData,

    -- ** CloudBuildOptions
    CloudBuildOptions (..),
    newCloudBuildOptions,

    -- ** ContainerInfo
    ContainerInfo (..),
    newContainerInfo,

    -- ** CpuUtilization
    CpuUtilization (..),
    newCpuUtilization,

    -- ** CreateVersionMetadataV1
    CreateVersionMetadataV1 (..),
    newCreateVersionMetadataV1,

    -- ** CreateVersionMetadataV1Alpha
    CreateVersionMetadataV1Alpha (..),
    newCreateVersionMetadataV1Alpha,

    -- ** CreateVersionMetadataV1Beta
    CreateVersionMetadataV1Beta (..),
    newCreateVersionMetadataV1Beta,

    -- ** DebugInstanceRequest
    DebugInstanceRequest (..),
    newDebugInstanceRequest,

    -- ** Deployment
    Deployment (..),
    newDeployment,

    -- ** Deployment_Files
    Deployment_Files (..),
    newDeployment_Files,

    -- ** DiskUtilization
    DiskUtilization (..),
    newDiskUtilization,

    -- ** DomainMapping
    DomainMapping (..),
    newDomainMapping,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EndpointsApiService
    EndpointsApiService (..),
    newEndpointsApiService,

    -- ** EndpointsApiService_RolloutStrategy
    EndpointsApiService_RolloutStrategy (..),

    -- ** Entrypoint
    Entrypoint (..),
    newEntrypoint,

    -- ** ErrorHandler
    ErrorHandler (..),
    newErrorHandler,

    -- ** ErrorHandler_ErrorCode
    ErrorHandler_ErrorCode (..),

    -- ** FeatureSettings
    FeatureSettings (..),
    newFeatureSettings,

    -- ** FileInfo
    FileInfo (..),
    newFileInfo,

    -- ** FirewallRule
    FirewallRule (..),
    newFirewallRule,

    -- ** FirewallRule_Action
    FirewallRule_Action (..),

    -- ** GoogleAppengineV1betaLocationMetadata
    GoogleAppengineV1betaLocationMetadata (..),
    newGoogleAppengineV1betaLocationMetadata,

    -- ** HealthCheck
    HealthCheck (..),
    newHealthCheck,

    -- ** IdentityAwareProxy
    IdentityAwareProxy (..),
    newIdentityAwareProxy,

    -- ** Instance
    Instance (..),
    newInstance,

    -- ** Instance_Availability
    Instance_Availability (..),

    -- ** Instance_VmLiveness
    Instance_VmLiveness (..),

    -- ** Library
    Library (..),
    newLibrary,

    -- ** ListAuthorizedCertificatesResponse
    ListAuthorizedCertificatesResponse (..),
    newListAuthorizedCertificatesResponse,

    -- ** ListAuthorizedDomainsResponse
    ListAuthorizedDomainsResponse (..),
    newListAuthorizedDomainsResponse,

    -- ** ListDomainMappingsResponse
    ListDomainMappingsResponse (..),
    newListDomainMappingsResponse,

    -- ** ListIngressRulesResponse
    ListIngressRulesResponse (..),
    newListIngressRulesResponse,

    -- ** ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListServicesResponse
    ListServicesResponse (..),
    newListServicesResponse,

    -- ** ListVersionsResponse
    ListVersionsResponse (..),
    newListVersionsResponse,

    -- ** LivenessCheck
    LivenessCheck (..),
    newLivenessCheck,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** LocationMetadata
    LocationMetadata (..),
    newLocationMetadata,

    -- ** ManagedCertificate
    ManagedCertificate (..),
    newManagedCertificate,

    -- ** ManagedCertificate_Status
    ManagedCertificate_Status (..),

    -- ** ManualScaling
    ManualScaling (..),
    newManualScaling,

    -- ** Network
    Network (..),
    newNetwork,

    -- ** NetworkSettings
    NetworkSettings (..),
    newNetworkSettings,

    -- ** NetworkSettings_IngressTrafficAllowed
    NetworkSettings_IngressTrafficAllowed (..),

    -- ** NetworkUtilization
    NetworkUtilization (..),
    newNetworkUtilization,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationMetadataV1
    OperationMetadataV1 (..),
    newOperationMetadataV1,

    -- ** OperationMetadataV1Alpha
    OperationMetadataV1Alpha (..),
    newOperationMetadataV1Alpha,

    -- ** OperationMetadataV1Beta
    OperationMetadataV1Beta (..),
    newOperationMetadataV1Beta,

    -- ** ReadinessCheck
    ReadinessCheck (..),
    newReadinessCheck,

    -- ** RepairApplicationRequest
    RepairApplicationRequest (..),
    newRepairApplicationRequest,

    -- ** RequestUtilization
    RequestUtilization (..),
    newRequestUtilization,

    -- ** ResourceRecord
    ResourceRecord (..),
    newResourceRecord,

    -- ** ResourceRecord_Type
    ResourceRecord_Type (..),

    -- ** Resources
    Resources (..),
    newResources,

    -- ** ScriptHandler
    ScriptHandler (..),
    newScriptHandler,

    -- ** Service
    Service (..),
    newService,

    -- ** Service_Labels
    Service_Labels (..),
    newService_Labels,

    -- ** SslSettings
    SslSettings (..),
    newSslSettings,

    -- ** SslSettings_SslManagementType
    SslSettings_SslManagementType (..),

    -- ** StandardSchedulerSettings
    StandardSchedulerSettings (..),
    newStandardSchedulerSettings,

    -- ** StaticFilesHandler
    StaticFilesHandler (..),
    newStaticFilesHandler,

    -- ** StaticFilesHandler_HttpHeaders
    StaticFilesHandler_HttpHeaders (..),
    newStaticFilesHandler_HttpHeaders,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TrafficSplit
    TrafficSplit (..),
    newTrafficSplit,

    -- ** TrafficSplit_Allocations
    TrafficSplit_Allocations (..),
    newTrafficSplit_Allocations,

    -- ** TrafficSplit_ShardBy
    TrafficSplit_ShardBy (..),

    -- ** UrlDispatchRule
    UrlDispatchRule (..),
    newUrlDispatchRule,

    -- ** UrlMap
    UrlMap (..),
    newUrlMap,

    -- ** UrlMap_AuthFailAction
    UrlMap_AuthFailAction (..),

    -- ** UrlMap_Login
    UrlMap_Login (..),

    -- ** UrlMap_RedirectHttpResponseCode
    UrlMap_RedirectHttpResponseCode (..),

    -- ** UrlMap_SecurityLevel
    UrlMap_SecurityLevel (..),

    -- ** Version
    Version (..),
    newVersion,

    -- ** Version_BetaSettings
    Version_BetaSettings (..),
    newVersion_BetaSettings,

    -- ** Version_BuildEnvVariables
    Version_BuildEnvVariables (..),
    newVersion_BuildEnvVariables,

    -- ** Version_EnvVariables
    Version_EnvVariables (..),
    newVersion_EnvVariables,

    -- ** Version_InboundServicesItem
    Version_InboundServicesItem (..),

    -- ** Version_ServingStatus
    Version_ServingStatus (..),

    -- ** Volume
    Volume (..),
    newVolume,

    -- ** VpcAccessConnector
    VpcAccessConnector (..),
    newVpcAccessConnector,

    -- ** VpcAccessConnector_EgressSetting
    VpcAccessConnector_EgressSetting (..),

    -- ** ZipInfo
    ZipInfo (..),
    newZipInfo,

    -- ** AppsAuthorizedCertificatesGetView
    AppsAuthorizedCertificatesGetView (..),

    -- ** AppsAuthorizedCertificatesListView
    AppsAuthorizedCertificatesListView (..),

    -- ** AppsDomainMappingsCreateOverrideStrategy
    AppsDomainMappingsCreateOverrideStrategy (..),

    -- ** AppsServicesVersionsGetView
    AppsServicesVersionsGetView (..),

    -- ** AppsServicesVersionsListView
    AppsServicesVersionsListView (..),
  )
where

import Gogol.AppEngine.Apps.AuthorizedCertificates.Create
import Gogol.AppEngine.Apps.AuthorizedCertificates.Delete
import Gogol.AppEngine.Apps.AuthorizedCertificates.Get
import Gogol.AppEngine.Apps.AuthorizedCertificates.List
import Gogol.AppEngine.Apps.AuthorizedCertificates.Patch
import Gogol.AppEngine.Apps.AuthorizedDomains.List
import Gogol.AppEngine.Apps.Create
import Gogol.AppEngine.Apps.DomainMappings.Create
import Gogol.AppEngine.Apps.DomainMappings.Delete
import Gogol.AppEngine.Apps.DomainMappings.Get
import Gogol.AppEngine.Apps.DomainMappings.List
import Gogol.AppEngine.Apps.DomainMappings.Patch
import Gogol.AppEngine.Apps.Firewall.IngressRules.BatchUpdate
import Gogol.AppEngine.Apps.Firewall.IngressRules.Create
import Gogol.AppEngine.Apps.Firewall.IngressRules.Delete
import Gogol.AppEngine.Apps.Firewall.IngressRules.Get
import Gogol.AppEngine.Apps.Firewall.IngressRules.List
import Gogol.AppEngine.Apps.Firewall.IngressRules.Patch
import Gogol.AppEngine.Apps.Get
import Gogol.AppEngine.Apps.Locations.Get
import Gogol.AppEngine.Apps.Locations.List
import Gogol.AppEngine.Apps.Operations.Get
import Gogol.AppEngine.Apps.Operations.List
import Gogol.AppEngine.Apps.Patch
import Gogol.AppEngine.Apps.Repair
import Gogol.AppEngine.Apps.Services.Delete
import Gogol.AppEngine.Apps.Services.Get
import Gogol.AppEngine.Apps.Services.List
import Gogol.AppEngine.Apps.Services.Patch
import Gogol.AppEngine.Apps.Services.Versions.Create
import Gogol.AppEngine.Apps.Services.Versions.Delete
import Gogol.AppEngine.Apps.Services.Versions.Get
import Gogol.AppEngine.Apps.Services.Versions.Instances.Debug
import Gogol.AppEngine.Apps.Services.Versions.Instances.Delete
import Gogol.AppEngine.Apps.Services.Versions.Instances.Get
import Gogol.AppEngine.Apps.Services.Versions.Instances.List
import Gogol.AppEngine.Apps.Services.Versions.List
import Gogol.AppEngine.Apps.Services.Versions.Patch
import Gogol.AppEngine.Types
