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
-- Module      : Gogol.AppEngine.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppEngine.Types
  ( -- * Configuration
    appEngineService,

    -- * OAuth Scopes
    Appengine'Admin,
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,

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

    -- ** Application_GeneratedCustomerMetadata
    Application_GeneratedCustomerMetadata (..),
    newApplication_GeneratedCustomerMetadata,

    -- ** Application_ServingStatus
    Application_ServingStatus (..),

    -- ** Application_SslPolicy
    Application_SslPolicy (..),

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

    -- ** ContainerState
    ContainerState (..),
    newContainerState,

    -- ** ContainerState_State
    ContainerState_State (..),

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

    -- ** Date
    Date (..),
    newDate,

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

    -- ** FlexibleRuntimeSettings
    FlexibleRuntimeSettings (..),
    newFlexibleRuntimeSettings,

    -- ** GceTag
    GceTag (..),
    newGceTag,

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

    -- ** ListRuntimesResponse
    ListRuntimesResponse (..),
    newListRuntimesResponse,

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

    -- ** Network_InstanceIpMode
    Network_InstanceIpMode (..),

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

    -- ** ProjectEvent
    ProjectEvent (..),
    newProjectEvent,

    -- ** ProjectEvent_Phase
    ProjectEvent_Phase (..),

    -- ** ProjectsMetadata
    ProjectsMetadata (..),
    newProjectsMetadata,

    -- ** ProjectsMetadata_ConsumerProjectState
    ProjectsMetadata_ConsumerProjectState (..),

    -- ** ReadinessCheck
    ReadinessCheck (..),
    newReadinessCheck,

    -- ** Reasons
    Reasons (..),
    newReasons,

    -- ** Reasons_Abuse
    Reasons_Abuse (..),

    -- ** Reasons_Billing
    Reasons_Billing (..),

    -- ** Reasons_DataGovernance
    Reasons_DataGovernance (..),

    -- ** Reasons_ServiceActivation
    Reasons_ServiceActivation (..),

    -- ** Reasons_ServiceManagement
    Reasons_ServiceManagement (..),

    -- ** RepairApplicationRequest
    RepairApplicationRequest (..),
    newRepairApplicationRequest,

    -- ** RequestUtilization
    RequestUtilization (..),
    newRequestUtilization,

    -- ** ResourceEvent
    ResourceEvent (..),
    newResourceEvent,

    -- ** ResourceRecord
    ResourceRecord (..),
    newResourceRecord,

    -- ** ResourceRecord_Type
    ResourceRecord_Type (..),

    -- ** Resources
    Resources (..),
    newResources,

    -- ** Runtime
    Runtime (..),
    newRuntime,

    -- ** Runtime_Environment
    Runtime_Environment (..),

    -- ** Runtime_Stage
    Runtime_Stage (..),

    -- ** ScriptHandler
    ScriptHandler (..),
    newScriptHandler,

    -- ** Service
    Service (..),
    newService,

    -- ** Service_GeneratedCustomerMetadata
    Service_GeneratedCustomerMetadata (..),
    newService_GeneratedCustomerMetadata,

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

    -- ** Version_GeneratedCustomerMetadata
    Version_GeneratedCustomerMetadata (..),
    newVersion_GeneratedCustomerMetadata,

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

    -- ** AppsGetIncludeExtraData
    AppsGetIncludeExtraData (..),

    -- ** AppsListRuntimesEnvironment
    AppsListRuntimesEnvironment (..),

    -- ** AppsServicesVersionsGetView
    AppsServicesVersionsGetView (..),

    -- ** AppsServicesVersionsListView
    AppsServicesVersionsListView (..),
  )
where

import Gogol.AppEngine.Internal.Product
import Gogol.AppEngine.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the App Engine Admin API. This contains the host and root path used as a starting point for constructing service requests.
appEngineService :: Core.ServiceConfig
appEngineService =
  Core.defaultService
    (Core.ServiceId "appengine:v1")
    "appengine.googleapis.com"

-- | View and manage your applications deployed on Google App Engine
type Appengine'Admin =
  "https://www.googleapis.com/auth/appengine.admin"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud services and see the email address of your Google Account
type CloudPlatform'ReadOnly =
  "https://www.googleapis.com/auth/cloud-platform.read-only"
