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
-- Module      : Gogol.AppEngine.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppEngine.Internal.Product
  ( -- * ApiConfigHandler
    ApiConfigHandler (..),
    newApiConfigHandler,

    -- * ApiEndpointHandler
    ApiEndpointHandler (..),
    newApiEndpointHandler,

    -- * Application
    Application (..),
    newApplication,

    -- * Application_GeneratedCustomerMetadata
    Application_GeneratedCustomerMetadata (..),
    newApplication_GeneratedCustomerMetadata,

    -- * AuthorizedCertificate
    AuthorizedCertificate (..),
    newAuthorizedCertificate,

    -- * AuthorizedDomain
    AuthorizedDomain (..),
    newAuthorizedDomain,

    -- * AutomaticScaling
    AutomaticScaling (..),
    newAutomaticScaling,

    -- * BasicScaling
    BasicScaling (..),
    newBasicScaling,

    -- * BatchUpdateIngressRulesRequest
    BatchUpdateIngressRulesRequest (..),
    newBatchUpdateIngressRulesRequest,

    -- * BatchUpdateIngressRulesResponse
    BatchUpdateIngressRulesResponse (..),
    newBatchUpdateIngressRulesResponse,

    -- * CertificateRawData
    CertificateRawData (..),
    newCertificateRawData,

    -- * CloudBuildOptions
    CloudBuildOptions (..),
    newCloudBuildOptions,

    -- * ContainerInfo
    ContainerInfo (..),
    newContainerInfo,

    -- * ContainerState
    ContainerState (..),
    newContainerState,

    -- * CpuUtilization
    CpuUtilization (..),
    newCpuUtilization,

    -- * CreateVersionMetadataV1
    CreateVersionMetadataV1 (..),
    newCreateVersionMetadataV1,

    -- * CreateVersionMetadataV1Alpha
    CreateVersionMetadataV1Alpha (..),
    newCreateVersionMetadataV1Alpha,

    -- * CreateVersionMetadataV1Beta
    CreateVersionMetadataV1Beta (..),
    newCreateVersionMetadataV1Beta,

    -- * Date
    Date (..),
    newDate,

    -- * DebugInstanceRequest
    DebugInstanceRequest (..),
    newDebugInstanceRequest,

    -- * Deployment
    Deployment (..),
    newDeployment,

    -- * Deployment_Files
    Deployment_Files (..),
    newDeployment_Files,

    -- * DiskUtilization
    DiskUtilization (..),
    newDiskUtilization,

    -- * DomainMapping
    DomainMapping (..),
    newDomainMapping,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EndpointsApiService
    EndpointsApiService (..),
    newEndpointsApiService,

    -- * Entrypoint
    Entrypoint (..),
    newEntrypoint,

    -- * ErrorHandler
    ErrorHandler (..),
    newErrorHandler,

    -- * FeatureSettings
    FeatureSettings (..),
    newFeatureSettings,

    -- * FileInfo
    FileInfo (..),
    newFileInfo,

    -- * FirewallRule
    FirewallRule (..),
    newFirewallRule,

    -- * FlexibleRuntimeSettings
    FlexibleRuntimeSettings (..),
    newFlexibleRuntimeSettings,

    -- * GceTag
    GceTag (..),
    newGceTag,

    -- * GoogleAppengineV1betaLocationMetadata
    GoogleAppengineV1betaLocationMetadata (..),
    newGoogleAppengineV1betaLocationMetadata,

    -- * HealthCheck
    HealthCheck (..),
    newHealthCheck,

    -- * IdentityAwareProxy
    IdentityAwareProxy (..),
    newIdentityAwareProxy,

    -- * Instance
    Instance (..),
    newInstance,

    -- * Library
    Library (..),
    newLibrary,

    -- * ListAuthorizedCertificatesResponse
    ListAuthorizedCertificatesResponse (..),
    newListAuthorizedCertificatesResponse,

    -- * ListAuthorizedDomainsResponse
    ListAuthorizedDomainsResponse (..),
    newListAuthorizedDomainsResponse,

    -- * ListDomainMappingsResponse
    ListDomainMappingsResponse (..),
    newListDomainMappingsResponse,

    -- * ListIngressRulesResponse
    ListIngressRulesResponse (..),
    newListIngressRulesResponse,

    -- * ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListRuntimesResponse
    ListRuntimesResponse (..),
    newListRuntimesResponse,

    -- * ListServicesResponse
    ListServicesResponse (..),
    newListServicesResponse,

    -- * ListVersionsResponse
    ListVersionsResponse (..),
    newListVersionsResponse,

    -- * LivenessCheck
    LivenessCheck (..),
    newLivenessCheck,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * LocationMetadata
    LocationMetadata (..),
    newLocationMetadata,

    -- * ManagedCertificate
    ManagedCertificate (..),
    newManagedCertificate,

    -- * ManualScaling
    ManualScaling (..),
    newManualScaling,

    -- * Network
    Network (..),
    newNetwork,

    -- * NetworkSettings
    NetworkSettings (..),
    newNetworkSettings,

    -- * NetworkUtilization
    NetworkUtilization (..),
    newNetworkUtilization,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationMetadataV1
    OperationMetadataV1 (..),
    newOperationMetadataV1,

    -- * OperationMetadataV1Alpha
    OperationMetadataV1Alpha (..),
    newOperationMetadataV1Alpha,

    -- * OperationMetadataV1Beta
    OperationMetadataV1Beta (..),
    newOperationMetadataV1Beta,

    -- * ProjectEvent
    ProjectEvent (..),
    newProjectEvent,

    -- * ProjectsMetadata
    ProjectsMetadata (..),
    newProjectsMetadata,

    -- * ReadinessCheck
    ReadinessCheck (..),
    newReadinessCheck,

    -- * Reasons
    Reasons (..),
    newReasons,

    -- * RepairApplicationRequest
    RepairApplicationRequest (..),
    newRepairApplicationRequest,

    -- * RequestUtilization
    RequestUtilization (..),
    newRequestUtilization,

    -- * ResourceEvent
    ResourceEvent (..),
    newResourceEvent,

    -- * ResourceRecord
    ResourceRecord (..),
    newResourceRecord,

    -- * Resources
    Resources (..),
    newResources,

    -- * Runtime
    Runtime (..),
    newRuntime,

    -- * ScriptHandler
    ScriptHandler (..),
    newScriptHandler,

    -- * Service
    Service (..),
    newService,

    -- * Service_GeneratedCustomerMetadata
    Service_GeneratedCustomerMetadata (..),
    newService_GeneratedCustomerMetadata,

    -- * Service_Labels
    Service_Labels (..),
    newService_Labels,

    -- * SslSettings
    SslSettings (..),
    newSslSettings,

    -- * StandardSchedulerSettings
    StandardSchedulerSettings (..),
    newStandardSchedulerSettings,

    -- * StaticFilesHandler
    StaticFilesHandler (..),
    newStaticFilesHandler,

    -- * StaticFilesHandler_HttpHeaders
    StaticFilesHandler_HttpHeaders (..),
    newStaticFilesHandler_HttpHeaders,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TrafficSplit
    TrafficSplit (..),
    newTrafficSplit,

    -- * TrafficSplit_Allocations
    TrafficSplit_Allocations (..),
    newTrafficSplit_Allocations,

    -- * UrlDispatchRule
    UrlDispatchRule (..),
    newUrlDispatchRule,

    -- * UrlMap
    UrlMap (..),
    newUrlMap,

    -- * Version
    Version (..),
    newVersion,

    -- * Version_BetaSettings
    Version_BetaSettings (..),
    newVersion_BetaSettings,

    -- * Version_BuildEnvVariables
    Version_BuildEnvVariables (..),
    newVersion_BuildEnvVariables,

    -- * Version_EnvVariables
    Version_EnvVariables (..),
    newVersion_EnvVariables,

    -- * Version_GeneratedCustomerMetadata
    Version_GeneratedCustomerMetadata (..),
    newVersion_GeneratedCustomerMetadata,

    -- * Volume
    Volume (..),
    newVolume,

    -- * VpcAccessConnector
    VpcAccessConnector (..),
    newVpcAccessConnector,

    -- * ZipInfo
    ZipInfo (..),
    newZipInfo,
  )
where

import Gogol.AppEngine.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Google Cloud Endpoints (https:\/\/cloud.google.com\/endpoints) configuration for API handlers.
--
-- /See:/ 'newApiConfigHandler' smart constructor.
data ApiConfigHandler = ApiConfigHandler
  { -- | Action to take when users access resources that require authentication. Defaults to redirect.
    authFailAction :: (Core.Maybe ApiConfigHandler_AuthFailAction),
    -- | Level of login required to access this resource. Defaults to optional.
    login :: (Core.Maybe ApiConfigHandler_Login),
    -- | Path to the script from the application root directory.
    script :: (Core.Maybe Core.Text),
    -- | Security (HTTPS) enforcement for this URL.
    securityLevel :: (Core.Maybe ApiConfigHandler_SecurityLevel),
    -- | URL to serve the endpoint at.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApiConfigHandler' with the minimum fields required to make a request.
newApiConfigHandler ::
  ApiConfigHandler
newApiConfigHandler =
  ApiConfigHandler
    { authFailAction = Core.Nothing,
      login = Core.Nothing,
      script = Core.Nothing,
      securityLevel = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON ApiConfigHandler where
  parseJSON =
    Core.withObject
      "ApiConfigHandler"
      ( \o ->
          ApiConfigHandler
            Core.<$> (o Core..:? "authFailAction")
            Core.<*> (o Core..:? "login")
            Core.<*> (o Core..:? "script")
            Core.<*> (o Core..:? "securityLevel")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON ApiConfigHandler where
  toJSON ApiConfigHandler {..} =
    Core.object
      ( Core.catMaybes
          [ ("authFailAction" Core..=) Core.<$> authFailAction,
            ("login" Core..=) Core.<$> login,
            ("script" Core..=) Core.<$> script,
            ("securityLevel" Core..=) Core.<$> securityLevel,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Uses Google Cloud Endpoints to handle requests.
--
-- /See:/ 'newApiEndpointHandler' smart constructor.
newtype ApiEndpointHandler = ApiEndpointHandler
  { -- | Path to the script from the application root directory.
    scriptPath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApiEndpointHandler' with the minimum fields required to make a request.
newApiEndpointHandler ::
  ApiEndpointHandler
newApiEndpointHandler =
  ApiEndpointHandler {scriptPath = Core.Nothing}

instance Core.FromJSON ApiEndpointHandler where
  parseJSON =
    Core.withObject
      "ApiEndpointHandler"
      (\o -> ApiEndpointHandler Core.<$> (o Core..:? "scriptPath"))

instance Core.ToJSON ApiEndpointHandler where
  toJSON ApiEndpointHandler {..} =
    Core.object
      (Core.catMaybes [("scriptPath" Core..=) Core.<$> scriptPath])

-- | An Application resource contains the top-level configuration of an App Engine application.
--
-- /See:/ 'newApplication' smart constructor.
data Application = Application
  { -- | Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
    authDomain :: (Core.Maybe Core.Text),
    -- | Output only. Google Cloud Storage bucket that can be used for storing files associated with this application. This bucket is associated with the application and can be used by the gcloud deployment commands.\@OutputOnly
    codeBucket :: (Core.Maybe Core.Text),
    -- | The type of the Cloud Firestore or Cloud Datastore database associated with this application.
    databaseType :: (Core.Maybe Application_DatabaseType),
    -- | Output only. Google Cloud Storage bucket that can be used by this application to store content.\@OutputOnly
    defaultBucket :: (Core.Maybe Core.Text),
    -- | Cookie expiration policy for this application.
    defaultCookieExpiration :: (Core.Maybe Core.Duration),
    -- | Output only. Hostname used to reach this application, as resolved by App Engine.\@OutputOnly
    defaultHostname :: (Core.Maybe Core.Text),
    -- | HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
    dispatchRules :: (Core.Maybe [UrlDispatchRule]),
    -- | The feature specific settings to be used in the application.
    featureSettings :: (Core.Maybe FeatureSettings),
    -- | Output only. The Google Container Registry domain used for storing managed build docker images for this application.
    gcrDomain :: (Core.Maybe Core.Text),
    -- | Additional Google Generated Customer Metadata, this field won\'t be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
    generatedCustomerMetadata :: (Core.Maybe Application_GeneratedCustomerMetadata),
    iap :: (Core.Maybe IdentityAwareProxy),
    -- | Identifier of the Application resource. This identifier is equivalent to the project ID of the Google Cloud Platform project where you want to deploy your application. Example: myapp.
    id :: (Core.Maybe Core.Text),
    -- | Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application\'s end user content is stored.Defaults to us-central.View the list of supported locations (https:\/\/cloud.google.com\/appengine\/docs\/locations).
    locationId :: (Core.Maybe Core.Text),
    -- | Output only. Full path to the Application resource in the API. Example: apps\/myapp.\@OutputOnly
    name :: (Core.Maybe Core.Text),
    -- | The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Serving status of this application.
    servingStatus :: (Core.Maybe Application_ServingStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Application' with the minimum fields required to make a request.
newApplication ::
  Application
newApplication =
  Application
    { authDomain = Core.Nothing,
      codeBucket = Core.Nothing,
      databaseType = Core.Nothing,
      defaultBucket = Core.Nothing,
      defaultCookieExpiration = Core.Nothing,
      defaultHostname = Core.Nothing,
      dispatchRules = Core.Nothing,
      featureSettings = Core.Nothing,
      gcrDomain = Core.Nothing,
      generatedCustomerMetadata = Core.Nothing,
      iap = Core.Nothing,
      id = Core.Nothing,
      locationId = Core.Nothing,
      name = Core.Nothing,
      serviceAccount = Core.Nothing,
      servingStatus = Core.Nothing
    }

instance Core.FromJSON Application where
  parseJSON =
    Core.withObject
      "Application"
      ( \o ->
          Application
            Core.<$> (o Core..:? "authDomain")
            Core.<*> (o Core..:? "codeBucket")
            Core.<*> (o Core..:? "databaseType")
            Core.<*> (o Core..:? "defaultBucket")
            Core.<*> (o Core..:? "defaultCookieExpiration")
            Core.<*> (o Core..:? "defaultHostname")
            Core.<*> (o Core..:? "dispatchRules")
            Core.<*> (o Core..:? "featureSettings")
            Core.<*> (o Core..:? "gcrDomain")
            Core.<*> (o Core..:? "generatedCustomerMetadata")
            Core.<*> (o Core..:? "iap")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "servingStatus")
      )

instance Core.ToJSON Application where
  toJSON Application {..} =
    Core.object
      ( Core.catMaybes
          [ ("authDomain" Core..=) Core.<$> authDomain,
            ("codeBucket" Core..=) Core.<$> codeBucket,
            ("databaseType" Core..=) Core.<$> databaseType,
            ("defaultBucket" Core..=) Core.<$> defaultBucket,
            ("defaultCookieExpiration" Core..=)
              Core.<$> defaultCookieExpiration,
            ("defaultHostname" Core..=) Core.<$> defaultHostname,
            ("dispatchRules" Core..=) Core.<$> dispatchRules,
            ("featureSettings" Core..=) Core.<$> featureSettings,
            ("gcrDomain" Core..=) Core.<$> gcrDomain,
            ("generatedCustomerMetadata" Core..=)
              Core.<$> generatedCustomerMetadata,
            ("iap" Core..=) Core.<$> iap,
            ("id" Core..=) Core.<$> id,
            ("locationId" Core..=) Core.<$> locationId,
            ("name" Core..=) Core.<$> name,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("servingStatus" Core..=) Core.<$> servingStatus
          ]
      )

-- | Additional Google Generated Customer Metadata, this field won\'t be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
--
-- /See:/ 'newApplication_GeneratedCustomerMetadata' smart constructor.
newtype Application_GeneratedCustomerMetadata = Application_GeneratedCustomerMetadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Application_GeneratedCustomerMetadata' with the minimum fields required to make a request.
newApplication_GeneratedCustomerMetadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Application_GeneratedCustomerMetadata
newApplication_GeneratedCustomerMetadata additional =
  Application_GeneratedCustomerMetadata {additional = additional}

instance Core.FromJSON Application_GeneratedCustomerMetadata where
  parseJSON =
    Core.withObject
      "Application_GeneratedCustomerMetadata"
      ( \o ->
          Application_GeneratedCustomerMetadata
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Application_GeneratedCustomerMetadata where
  toJSON Application_GeneratedCustomerMetadata {..} =
    Core.toJSON additional

-- | An SSL certificate that a user has been authorized to administer. A user is authorized to administer any certificate that applies to one of their authorized domains.
--
-- /See:/ 'newAuthorizedCertificate' smart constructor.
data AuthorizedCertificate = AuthorizedCertificate
  { -- | The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
    certificateRawData :: (Core.Maybe CertificateRawData),
    -- | The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
    displayName :: (Core.Maybe Core.Text),
    -- | Aggregate count of the domain mappings with this certificate mapped. This count includes domain mappings on applications for which the user does not have VIEWER permissions.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.\@OutputOnly
    domainMappingsCount :: (Core.Maybe Core.Int32),
    -- | Topmost applicable domains of this certificate. This certificate applies to these domains and their subdomains. Example: example.com.\@OutputOnly
    domainNames :: (Core.Maybe [Core.Text]),
    -- | The time when this certificate expires. To update the renewal time on this certificate, upload an SSL certificate with a different expiration time using AuthorizedCertificates.UpdateAuthorizedCertificate.\@OutputOnly
    expireTime :: (Core.Maybe Core.DateTime),
    -- | Relative name of the certificate. This is a unique value autogenerated on AuthorizedCertificate resource creation. Example: 12345.\@OutputOnly
    id :: (Core.Maybe Core.Text),
    -- | Only applicable if this certificate is managed by App Engine. Managed certificates are tied to the lifecycle of a DomainMapping and cannot be updated or deleted via the AuthorizedCertificates API. If this certificate is manually administered by the user, this field will be empty.\@OutputOnly
    managedCertificate :: (Core.Maybe ManagedCertificate),
    -- | Full path to the AuthorizedCertificate resource in the API. Example: apps\/myapp\/authorizedCertificates\/12345.\@OutputOnly
    name :: (Core.Maybe Core.Text),
    -- | The full paths to user visible Domain Mapping resources that have this certificate mapped. Example: apps\/myapp\/domainMappings\/example.com.This may not represent the full list of mapped domain mappings if the user does not have VIEWER permissions on all of the applications that have this certificate mapped. See domain/mappings/count for a complete count.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.\@OutputOnly
    visibleDomainMappings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthorizedCertificate' with the minimum fields required to make a request.
newAuthorizedCertificate ::
  AuthorizedCertificate
newAuthorizedCertificate =
  AuthorizedCertificate
    { certificateRawData = Core.Nothing,
      displayName = Core.Nothing,
      domainMappingsCount = Core.Nothing,
      domainNames = Core.Nothing,
      expireTime = Core.Nothing,
      id = Core.Nothing,
      managedCertificate = Core.Nothing,
      name = Core.Nothing,
      visibleDomainMappings = Core.Nothing
    }

instance Core.FromJSON AuthorizedCertificate where
  parseJSON =
    Core.withObject
      "AuthorizedCertificate"
      ( \o ->
          AuthorizedCertificate
            Core.<$> (o Core..:? "certificateRawData")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "domainMappingsCount")
            Core.<*> (o Core..:? "domainNames")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "managedCertificate")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "visibleDomainMappings")
      )

instance Core.ToJSON AuthorizedCertificate where
  toJSON AuthorizedCertificate {..} =
    Core.object
      ( Core.catMaybes
          [ ("certificateRawData" Core..=) Core.<$> certificateRawData,
            ("displayName" Core..=) Core.<$> displayName,
            ("domainMappingsCount" Core..=) Core.<$> domainMappingsCount,
            ("domainNames" Core..=) Core.<$> domainNames,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("id" Core..=) Core.<$> id,
            ("managedCertificate" Core..=) Core.<$> managedCertificate,
            ("name" Core..=) Core.<$> name,
            ("visibleDomainMappings" Core..=) Core.<$> visibleDomainMappings
          ]
      )

-- | A domain that a user has been authorized to administer. To authorize use of a domain, verify ownership via Search Console (https:\/\/search.google.com\/search-console\/welcome).
--
-- /See:/ 'newAuthorizedDomain' smart constructor.
data AuthorizedDomain = AuthorizedDomain
  { -- | Fully qualified domain name of the domain authorized for use. Example: example.com.
    id :: (Core.Maybe Core.Text),
    -- | Full path to the AuthorizedDomain resource in the API. Example: apps\/myapp\/authorizedDomains\/example.com.\@OutputOnly
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthorizedDomain' with the minimum fields required to make a request.
newAuthorizedDomain ::
  AuthorizedDomain
newAuthorizedDomain =
  AuthorizedDomain {id = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON AuthorizedDomain where
  parseJSON =
    Core.withObject
      "AuthorizedDomain"
      ( \o ->
          AuthorizedDomain
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AuthorizedDomain where
  toJSON AuthorizedDomain {..} =
    Core.object
      ( Core.catMaybes
          [("id" Core..=) Core.<$> id, ("name" Core..=) Core.<$> name]
      )

-- | Automatic scaling is based on request rate, response latencies, and other application metrics.
--
-- /See:/ 'newAutomaticScaling' smart constructor.
data AutomaticScaling = AutomaticScaling
  { -- | The time period that the Autoscaler (https:\/\/cloud.google.com\/compute\/docs\/autoscaler\/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
    coolDownPeriod :: (Core.Maybe Core.Duration),
    -- | Target scaling by CPU usage.
    cpuUtilization :: (Core.Maybe CpuUtilization),
    -- | Target scaling by disk usage.
    diskUtilization :: (Core.Maybe DiskUtilization),
    -- | Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.Defaults to a runtime-specific value.
    maxConcurrentRequests :: (Core.Maybe Core.Int32),
    -- | Maximum number of idle instances that should be maintained for this version.
    maxIdleInstances :: (Core.Maybe Core.Int32),
    -- | Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
    maxPendingLatency :: (Core.Maybe Core.Duration),
    -- | Maximum number of instances that should be started to handle requests for this version.
    maxTotalInstances :: (Core.Maybe Core.Int32),
    -- | Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
    minIdleInstances :: (Core.Maybe Core.Int32),
    -- | Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
    minPendingLatency :: (Core.Maybe Core.Duration),
    -- | Minimum number of running instances that should be maintained for this version.
    minTotalInstances :: (Core.Maybe Core.Int32),
    -- | Target scaling by network usage.
    networkUtilization :: (Core.Maybe NetworkUtilization),
    -- | Target scaling by request utilization.
    requestUtilization :: (Core.Maybe RequestUtilization),
    -- | Scheduler settings for standard environment.
    standardSchedulerSettings :: (Core.Maybe StandardSchedulerSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutomaticScaling' with the minimum fields required to make a request.
newAutomaticScaling ::
  AutomaticScaling
newAutomaticScaling =
  AutomaticScaling
    { coolDownPeriod = Core.Nothing,
      cpuUtilization = Core.Nothing,
      diskUtilization = Core.Nothing,
      maxConcurrentRequests = Core.Nothing,
      maxIdleInstances = Core.Nothing,
      maxPendingLatency = Core.Nothing,
      maxTotalInstances = Core.Nothing,
      minIdleInstances = Core.Nothing,
      minPendingLatency = Core.Nothing,
      minTotalInstances = Core.Nothing,
      networkUtilization = Core.Nothing,
      requestUtilization = Core.Nothing,
      standardSchedulerSettings = Core.Nothing
    }

instance Core.FromJSON AutomaticScaling where
  parseJSON =
    Core.withObject
      "AutomaticScaling"
      ( \o ->
          AutomaticScaling
            Core.<$> (o Core..:? "coolDownPeriod")
            Core.<*> (o Core..:? "cpuUtilization")
            Core.<*> (o Core..:? "diskUtilization")
            Core.<*> (o Core..:? "maxConcurrentRequests")
            Core.<*> (o Core..:? "maxIdleInstances")
            Core.<*> (o Core..:? "maxPendingLatency")
            Core.<*> (o Core..:? "maxTotalInstances")
            Core.<*> (o Core..:? "minIdleInstances")
            Core.<*> (o Core..:? "minPendingLatency")
            Core.<*> (o Core..:? "minTotalInstances")
            Core.<*> (o Core..:? "networkUtilization")
            Core.<*> (o Core..:? "requestUtilization")
            Core.<*> (o Core..:? "standardSchedulerSettings")
      )

instance Core.ToJSON AutomaticScaling where
  toJSON AutomaticScaling {..} =
    Core.object
      ( Core.catMaybes
          [ ("coolDownPeriod" Core..=) Core.<$> coolDownPeriod,
            ("cpuUtilization" Core..=) Core.<$> cpuUtilization,
            ("diskUtilization" Core..=) Core.<$> diskUtilization,
            ("maxConcurrentRequests" Core..=) Core.<$> maxConcurrentRequests,
            ("maxIdleInstances" Core..=) Core.<$> maxIdleInstances,
            ("maxPendingLatency" Core..=) Core.<$> maxPendingLatency,
            ("maxTotalInstances" Core..=) Core.<$> maxTotalInstances,
            ("minIdleInstances" Core..=) Core.<$> minIdleInstances,
            ("minPendingLatency" Core..=) Core.<$> minPendingLatency,
            ("minTotalInstances" Core..=) Core.<$> minTotalInstances,
            ("networkUtilization" Core..=) Core.<$> networkUtilization,
            ("requestUtilization" Core..=) Core.<$> requestUtilization,
            ("standardSchedulerSettings" Core..=)
              Core.<$> standardSchedulerSettings
          ]
      )

-- | A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
--
-- /See:/ 'newBasicScaling' smart constructor.
data BasicScaling = BasicScaling
  { -- | Duration of time after the last request that an instance must wait before the instance is shut down.
    idleTimeout :: (Core.Maybe Core.Duration),
    -- | Maximum number of instances to create for this version.
    maxInstances :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicScaling' with the minimum fields required to make a request.
newBasicScaling ::
  BasicScaling
newBasicScaling =
  BasicScaling
    { idleTimeout = Core.Nothing,
      maxInstances = Core.Nothing
    }

instance Core.FromJSON BasicScaling where
  parseJSON =
    Core.withObject
      "BasicScaling"
      ( \o ->
          BasicScaling
            Core.<$> (o Core..:? "idleTimeout")
            Core.<*> (o Core..:? "maxInstances")
      )

instance Core.ToJSON BasicScaling where
  toJSON BasicScaling {..} =
    Core.object
      ( Core.catMaybes
          [ ("idleTimeout" Core..=) Core.<$> idleTimeout,
            ("maxInstances" Core..=) Core.<$> maxInstances
          ]
      )

-- | Request message for Firewall.BatchUpdateIngressRules.
--
-- /See:/ 'newBatchUpdateIngressRulesRequest' smart constructor.
newtype BatchUpdateIngressRulesRequest = BatchUpdateIngressRulesRequest
  { -- | A list of FirewallRules to replace the existing set.
    ingressRules :: (Core.Maybe [FirewallRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateIngressRulesRequest' with the minimum fields required to make a request.
newBatchUpdateIngressRulesRequest ::
  BatchUpdateIngressRulesRequest
newBatchUpdateIngressRulesRequest =
  BatchUpdateIngressRulesRequest {ingressRules = Core.Nothing}

instance Core.FromJSON BatchUpdateIngressRulesRequest where
  parseJSON =
    Core.withObject
      "BatchUpdateIngressRulesRequest"
      ( \o ->
          BatchUpdateIngressRulesRequest
            Core.<$> (o Core..:? "ingressRules")
      )

instance Core.ToJSON BatchUpdateIngressRulesRequest where
  toJSON BatchUpdateIngressRulesRequest {..} =
    Core.object
      (Core.catMaybes [("ingressRules" Core..=) Core.<$> ingressRules])

-- | Response message for Firewall.UpdateAllIngressRules.
--
-- /See:/ 'newBatchUpdateIngressRulesResponse' smart constructor.
newtype BatchUpdateIngressRulesResponse = BatchUpdateIngressRulesResponse
  { -- | The full list of ingress FirewallRules for this application.
    ingressRules :: (Core.Maybe [FirewallRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateIngressRulesResponse' with the minimum fields required to make a request.
newBatchUpdateIngressRulesResponse ::
  BatchUpdateIngressRulesResponse
newBatchUpdateIngressRulesResponse =
  BatchUpdateIngressRulesResponse {ingressRules = Core.Nothing}

instance Core.FromJSON BatchUpdateIngressRulesResponse where
  parseJSON =
    Core.withObject
      "BatchUpdateIngressRulesResponse"
      ( \o ->
          BatchUpdateIngressRulesResponse
            Core.<$> (o Core..:? "ingressRules")
      )

instance Core.ToJSON BatchUpdateIngressRulesResponse where
  toJSON BatchUpdateIngressRulesResponse {..} =
    Core.object
      (Core.catMaybes [("ingressRules" Core..=) Core.<$> ingressRules])

-- | An SSL certificate obtained from a certificate authority.
--
-- /See:/ 'newCertificateRawData' smart constructor.
data CertificateRawData = CertificateRawData
  { -- | Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- \@InputOnly
    privateKey :: (Core.Maybe Core.Text),
    -- | PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
    publicCertificate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CertificateRawData' with the minimum fields required to make a request.
newCertificateRawData ::
  CertificateRawData
newCertificateRawData =
  CertificateRawData
    { privateKey = Core.Nothing,
      publicCertificate = Core.Nothing
    }

instance Core.FromJSON CertificateRawData where
  parseJSON =
    Core.withObject
      "CertificateRawData"
      ( \o ->
          CertificateRawData
            Core.<$> (o Core..:? "privateKey")
            Core.<*> (o Core..:? "publicCertificate")
      )

instance Core.ToJSON CertificateRawData where
  toJSON CertificateRawData {..} =
    Core.object
      ( Core.catMaybes
          [ ("privateKey" Core..=) Core.<$> privateKey,
            ("publicCertificate" Core..=) Core.<$> publicCertificate
          ]
      )

-- | Options for the build operations performed as a part of the version deployment. Only applicable for App Engine flexible environment when creating a version using source code directly.
--
-- /See:/ 'newCloudBuildOptions' smart constructor.
data CloudBuildOptions = CloudBuildOptions
  { -- | Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/appref for more details.
    appYamlPath :: (Core.Maybe Core.Text),
    -- | The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
    cloudBuildTimeout :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudBuildOptions' with the minimum fields required to make a request.
newCloudBuildOptions ::
  CloudBuildOptions
newCloudBuildOptions =
  CloudBuildOptions
    { appYamlPath = Core.Nothing,
      cloudBuildTimeout = Core.Nothing
    }

instance Core.FromJSON CloudBuildOptions where
  parseJSON =
    Core.withObject
      "CloudBuildOptions"
      ( \o ->
          CloudBuildOptions
            Core.<$> (o Core..:? "appYamlPath")
            Core.<*> (o Core..:? "cloudBuildTimeout")
      )

instance Core.ToJSON CloudBuildOptions where
  toJSON CloudBuildOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("appYamlPath" Core..=) Core.<$> appYamlPath,
            ("cloudBuildTimeout" Core..=) Core.<$> cloudBuildTimeout
          ]
      )

-- | Docker image that is used to create a container and start a VM instance for the version that you deploy. Only applicable for instances running in the App Engine flexible environment.
--
-- /See:/ 'newContainerInfo' smart constructor.
newtype ContainerInfo = ContainerInfo
  { -- | URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest. Examples: \"gcr.io\/my-project\/image:tag\" or \"gcr.io\/my-project\/image\@digest\"
    image :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerInfo' with the minimum fields required to make a request.
newContainerInfo ::
  ContainerInfo
newContainerInfo = ContainerInfo {image = Core.Nothing}

instance Core.FromJSON ContainerInfo where
  parseJSON =
    Core.withObject
      "ContainerInfo"
      (\o -> ContainerInfo Core.<$> (o Core..:? "image"))

instance Core.ToJSON ContainerInfo where
  toJSON ContainerInfo {..} =
    Core.object (Core.catMaybes [("image" Core..=) Core.<$> image])

-- | ContainerState contains the externally-visible container state that is used to communicate the state and reasoning for that state to the CLH. This data is not persisted by CCFE, but is instead derived from CCFE\'s internal representation of the container state.
--
-- /See:/ 'newContainerState' smart constructor.
data ContainerState = ContainerState
  { currentReasons :: (Core.Maybe Reasons),
    -- | The previous and current reasons for a container state will be sent for a container event. CLHs that need to know the signal that caused the container event to trigger (edges) as opposed to just knowing the state can act upon differences in the previous and current reasons.Reasons will be provided for every system: service management, data governance, abuse, and billing.If this is a CCFE-triggered event used for reconciliation then the current reasons will be set to their */CONTROL/PLANE/SYNC state. The previous reasons will contain the last known set of non-unknown non-control/plane_sync reasons for the state.
    previousReasons :: (Core.Maybe Reasons),
    -- | The current state of the container. This state is the culmination of all of the opinions from external systems that CCFE knows about of the container.
    state :: (Core.Maybe ContainerState_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerState' with the minimum fields required to make a request.
newContainerState ::
  ContainerState
newContainerState =
  ContainerState
    { currentReasons = Core.Nothing,
      previousReasons = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON ContainerState where
  parseJSON =
    Core.withObject
      "ContainerState"
      ( \o ->
          ContainerState
            Core.<$> (o Core..:? "currentReasons")
            Core.<*> (o Core..:? "previousReasons")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON ContainerState where
  toJSON ContainerState {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentReasons" Core..=) Core.<$> currentReasons,
            ("previousReasons" Core..=) Core.<$> previousReasons,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Target scaling by CPU usage.
--
-- /See:/ 'newCpuUtilization' smart constructor.
data CpuUtilization = CpuUtilization
  { -- | Period of time over which CPU utilization is calculated.
    aggregationWindowLength :: (Core.Maybe Core.Duration),
    -- | Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
    targetUtilization :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CpuUtilization' with the minimum fields required to make a request.
newCpuUtilization ::
  CpuUtilization
newCpuUtilization =
  CpuUtilization
    { aggregationWindowLength = Core.Nothing,
      targetUtilization = Core.Nothing
    }

instance Core.FromJSON CpuUtilization where
  parseJSON =
    Core.withObject
      "CpuUtilization"
      ( \o ->
          CpuUtilization
            Core.<$> (o Core..:? "aggregationWindowLength")
            Core.<*> (o Core..:? "targetUtilization")
      )

instance Core.ToJSON CpuUtilization where
  toJSON CpuUtilization {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregationWindowLength" Core..=)
              Core.<$> aggregationWindowLength,
            ("targetUtilization" Core..=) Core.<$> targetUtilization
          ]
      )

-- | Metadata for the given google.longrunning.Operation during a google.appengine.v1.CreateVersionRequest.
--
-- /See:/ 'newCreateVersionMetadataV1' smart constructor.
newtype CreateVersionMetadataV1 = CreateVersionMetadataV1
  { -- | The Cloud Build ID if one was created as part of the version create. \@OutputOnly
    cloudBuildId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateVersionMetadataV1' with the minimum fields required to make a request.
newCreateVersionMetadataV1 ::
  CreateVersionMetadataV1
newCreateVersionMetadataV1 =
  CreateVersionMetadataV1 {cloudBuildId = Core.Nothing}

instance Core.FromJSON CreateVersionMetadataV1 where
  parseJSON =
    Core.withObject
      "CreateVersionMetadataV1"
      ( \o ->
          CreateVersionMetadataV1 Core.<$> (o Core..:? "cloudBuildId")
      )

instance Core.ToJSON CreateVersionMetadataV1 where
  toJSON CreateVersionMetadataV1 {..} =
    Core.object
      (Core.catMaybes [("cloudBuildId" Core..=) Core.<$> cloudBuildId])

-- | Metadata for the given google.longrunning.Operation during a google.appengine.v1alpha.CreateVersionRequest.
--
-- /See:/ 'newCreateVersionMetadataV1Alpha' smart constructor.
newtype CreateVersionMetadataV1Alpha = CreateVersionMetadataV1Alpha
  { -- | The Cloud Build ID if one was created as part of the version create. \@OutputOnly
    cloudBuildId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateVersionMetadataV1Alpha' with the minimum fields required to make a request.
newCreateVersionMetadataV1Alpha ::
  CreateVersionMetadataV1Alpha
newCreateVersionMetadataV1Alpha =
  CreateVersionMetadataV1Alpha {cloudBuildId = Core.Nothing}

instance Core.FromJSON CreateVersionMetadataV1Alpha where
  parseJSON =
    Core.withObject
      "CreateVersionMetadataV1Alpha"
      ( \o ->
          CreateVersionMetadataV1Alpha Core.<$> (o Core..:? "cloudBuildId")
      )

instance Core.ToJSON CreateVersionMetadataV1Alpha where
  toJSON CreateVersionMetadataV1Alpha {..} =
    Core.object
      (Core.catMaybes [("cloudBuildId" Core..=) Core.<$> cloudBuildId])

-- | Metadata for the given google.longrunning.Operation during a google.appengine.v1beta.CreateVersionRequest.
--
-- /See:/ 'newCreateVersionMetadataV1Beta' smart constructor.
newtype CreateVersionMetadataV1Beta = CreateVersionMetadataV1Beta
  { -- | The Cloud Build ID if one was created as part of the version create. \@OutputOnly
    cloudBuildId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateVersionMetadataV1Beta' with the minimum fields required to make a request.
newCreateVersionMetadataV1Beta ::
  CreateVersionMetadataV1Beta
newCreateVersionMetadataV1Beta =
  CreateVersionMetadataV1Beta {cloudBuildId = Core.Nothing}

instance Core.FromJSON CreateVersionMetadataV1Beta where
  parseJSON =
    Core.withObject
      "CreateVersionMetadataV1Beta"
      ( \o ->
          CreateVersionMetadataV1Beta Core.<$> (o Core..:? "cloudBuildId")
      )

instance Core.ToJSON CreateVersionMetadataV1Beta where
  toJSON CreateVersionMetadataV1Beta {..} =
    Core.object
      (Core.catMaybes [("cloudBuildId" Core..=) Core.<$> cloudBuildId])

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: A full date, with non-zero year, month, and day values. A month and day, with a zero year (for example, an anniversary). A year on its own, with a zero month and a zero day. A year and month, with a zero day (for example, a credit card expiration date).Related types: google.type.TimeOfDay google.type.DateTime google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate =
  Date
    { day = Core.Nothing,
      month = Core.Nothing,
      year = Core.Nothing
    }

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | Request message for Instances.DebugInstance.
--
-- /See:/ 'newDebugInstanceRequest' smart constructor.
newtype DebugInstanceRequest = DebugInstanceRequest
  { -- | Public SSH key to add to the instance. Examples: [USERNAME]:ssh-rsa [KEY/VALUE] [USERNAME] [USERNAME]:ssh-rsa [KEY/VALUE] google-ssh {\"userName\":\"[USERNAME]\",\"expireOn\":\"[EXPIRE_TIME]\"}For more information, see Adding and Removing SSH Keys (https:\/\/cloud.google.com\/compute\/docs\/instances\/adding-removing-ssh-keys).
    sshKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DebugInstanceRequest' with the minimum fields required to make a request.
newDebugInstanceRequest ::
  DebugInstanceRequest
newDebugInstanceRequest =
  DebugInstanceRequest {sshKey = Core.Nothing}

instance Core.FromJSON DebugInstanceRequest where
  parseJSON =
    Core.withObject
      "DebugInstanceRequest"
      (\o -> DebugInstanceRequest Core.<$> (o Core..:? "sshKey"))

instance Core.ToJSON DebugInstanceRequest where
  toJSON DebugInstanceRequest {..} =
    Core.object (Core.catMaybes [("sshKey" Core..=) Core.<$> sshKey])

-- | Code and application artifacts used to deploy a version to App Engine.
--
-- /See:/ 'newDeployment' smart constructor.
data Deployment = Deployment
  { -- | Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
    cloudBuildOptions :: (Core.Maybe CloudBuildOptions),
    -- | The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
    container :: (Core.Maybe ContainerInfo),
    -- | Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
    files :: (Core.Maybe Deployment_Files),
    -- | The zip file for this deployment, if this is a zip deployment.
    zip :: (Core.Maybe ZipInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
newDeployment ::
  Deployment
newDeployment =
  Deployment
    { cloudBuildOptions = Core.Nothing,
      container = Core.Nothing,
      files = Core.Nothing,
      zip = Core.Nothing
    }

instance Core.FromJSON Deployment where
  parseJSON =
    Core.withObject
      "Deployment"
      ( \o ->
          Deployment
            Core.<$> (o Core..:? "cloudBuildOptions")
            Core.<*> (o Core..:? "container")
            Core.<*> (o Core..:? "files")
            Core.<*> (o Core..:? "zip")
      )

instance Core.ToJSON Deployment where
  toJSON Deployment {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudBuildOptions" Core..=) Core.<$> cloudBuildOptions,
            ("container" Core..=) Core.<$> container,
            ("files" Core..=) Core.<$> files,
            ("zip" Core..=) Core.<$> zip
          ]
      )

-- | Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
--
-- /See:/ 'newDeployment_Files' smart constructor.
newtype Deployment_Files = Deployment_Files
  { additional :: (Core.HashMap Core.Text FileInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Deployment_Files' with the minimum fields required to make a request.
newDeployment_Files ::
  -- |  See 'additional'.
  Core.HashMap Core.Text FileInfo ->
  Deployment_Files
newDeployment_Files additional =
  Deployment_Files {additional = additional}

instance Core.FromJSON Deployment_Files where
  parseJSON =
    Core.withObject
      "Deployment_Files"
      (\o -> Deployment_Files Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Deployment_Files where
  toJSON Deployment_Files {..} = Core.toJSON additional

-- | Target scaling by disk usage. Only applicable in the App Engine flexible environment.
--
-- /See:/ 'newDiskUtilization' smart constructor.
data DiskUtilization = DiskUtilization
  { -- | Target bytes read per second.
    targetReadBytesPerSecond :: (Core.Maybe Core.Int32),
    -- | Target ops read per seconds.
    targetReadOpsPerSecond :: (Core.Maybe Core.Int32),
    -- | Target bytes written per second.
    targetWriteBytesPerSecond :: (Core.Maybe Core.Int32),
    -- | Target ops written per second.
    targetWriteOpsPerSecond :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiskUtilization' with the minimum fields required to make a request.
newDiskUtilization ::
  DiskUtilization
newDiskUtilization =
  DiskUtilization
    { targetReadBytesPerSecond = Core.Nothing,
      targetReadOpsPerSecond = Core.Nothing,
      targetWriteBytesPerSecond = Core.Nothing,
      targetWriteOpsPerSecond = Core.Nothing
    }

instance Core.FromJSON DiskUtilization where
  parseJSON =
    Core.withObject
      "DiskUtilization"
      ( \o ->
          DiskUtilization
            Core.<$> (o Core..:? "targetReadBytesPerSecond")
            Core.<*> (o Core..:? "targetReadOpsPerSecond")
            Core.<*> (o Core..:? "targetWriteBytesPerSecond")
            Core.<*> (o Core..:? "targetWriteOpsPerSecond")
      )

instance Core.ToJSON DiskUtilization where
  toJSON DiskUtilization {..} =
    Core.object
      ( Core.catMaybes
          [ ("targetReadBytesPerSecond" Core..=)
              Core.<$> targetReadBytesPerSecond,
            ("targetReadOpsPerSecond" Core..=) Core.<$> targetReadOpsPerSecond,
            ("targetWriteBytesPerSecond" Core..=)
              Core.<$> targetWriteBytesPerSecond,
            ("targetWriteOpsPerSecond" Core..=)
              Core.<$> targetWriteOpsPerSecond
          ]
      )

-- | A domain serving an App Engine application.
--
-- /See:/ 'newDomainMapping' smart constructor.
data DomainMapping = DomainMapping
  { -- | Relative name of the domain serving the application. Example: example.com.
    id :: (Core.Maybe Core.Text),
    -- | Full path to the DomainMapping resource in the API. Example: apps\/myapp\/domainMapping\/example.com.\@OutputOnly
    name :: (Core.Maybe Core.Text),
    -- | The resource records required to configure this domain mapping. These records must be added to the domain\'s DNS configuration in order to serve the application via this domain mapping.\@OutputOnly
    resourceRecords :: (Core.Maybe [ResourceRecord]),
    -- | SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
    sslSettings :: (Core.Maybe SslSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DomainMapping' with the minimum fields required to make a request.
newDomainMapping ::
  DomainMapping
newDomainMapping =
  DomainMapping
    { id = Core.Nothing,
      name = Core.Nothing,
      resourceRecords = Core.Nothing,
      sslSettings = Core.Nothing
    }

instance Core.FromJSON DomainMapping where
  parseJSON =
    Core.withObject
      "DomainMapping"
      ( \o ->
          DomainMapping
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "resourceRecords")
            Core.<*> (o Core..:? "sslSettings")
      )

instance Core.ToJSON DomainMapping where
  toJSON DomainMapping {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("resourceRecords" Core..=) Core.<$> resourceRecords,
            ("sslSettings" Core..=) Core.<$> sslSettings
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Google Cloud Endpoints (https:\/\/cloud.google.com\/endpoints) configuration. The Endpoints API Service provides tooling for serving Open API and gRPC endpoints via an NGINX proxy. Only valid for App Engine Flexible environment deployments.The fields here refer to the name and configuration ID of a \"service\" resource in the Service Management API (https:\/\/cloud.google.com\/service-management\/overview).
--
-- /See:/ 'newEndpointsApiService' smart constructor.
data EndpointsApiService = EndpointsApiService
  { -- | Endpoints service configuration ID as specified by the Service Management API. For example \"2016-09-19r1\".By default, the rollout strategy for Endpoints is RolloutStrategy.FIXED. This means that Endpoints starts up with a particular configuration ID. When a new configuration is rolled out, Endpoints must be given the new configuration ID. The config/id field is used to give the configuration ID and is required in this case.Endpoints also has a rollout strategy called RolloutStrategy.MANAGED. When using this, Endpoints fetches the latest configuration and does not need the configuration ID. In this case, config/id must be omitted.
    configId :: (Core.Maybe Core.Text),
    -- | Enable or disable trace sampling. By default, this is set to false for enabled.
    disableTraceSampling :: (Core.Maybe Core.Bool),
    -- | Endpoints service name which is the name of the \"service\" resource in the Service Management API. For example \"myapi.endpoints.myproject.cloud.goog\"
    name :: (Core.Maybe Core.Text),
    -- | Endpoints rollout strategy. If FIXED, config/id must be specified. If MANAGED, config/id must be omitted.
    rolloutStrategy :: (Core.Maybe EndpointsApiService_RolloutStrategy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EndpointsApiService' with the minimum fields required to make a request.
newEndpointsApiService ::
  EndpointsApiService
newEndpointsApiService =
  EndpointsApiService
    { configId = Core.Nothing,
      disableTraceSampling = Core.Nothing,
      name = Core.Nothing,
      rolloutStrategy = Core.Nothing
    }

instance Core.FromJSON EndpointsApiService where
  parseJSON =
    Core.withObject
      "EndpointsApiService"
      ( \o ->
          EndpointsApiService
            Core.<$> (o Core..:? "configId")
            Core.<*> (o Core..:? "disableTraceSampling")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "rolloutStrategy")
      )

instance Core.ToJSON EndpointsApiService where
  toJSON EndpointsApiService {..} =
    Core.object
      ( Core.catMaybes
          [ ("configId" Core..=) Core.<$> configId,
            ("disableTraceSampling" Core..=) Core.<$> disableTraceSampling,
            ("name" Core..=) Core.<$> name,
            ("rolloutStrategy" Core..=) Core.<$> rolloutStrategy
          ]
      )

-- | The entrypoint for the application.
--
-- /See:/ 'newEntrypoint' smart constructor.
newtype Entrypoint = Entrypoint
  { -- | The format should be a shell command that can be fed to bash -c.
    shell :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entrypoint' with the minimum fields required to make a request.
newEntrypoint ::
  Entrypoint
newEntrypoint = Entrypoint {shell = Core.Nothing}

instance Core.FromJSON Entrypoint where
  parseJSON =
    Core.withObject
      "Entrypoint"
      (\o -> Entrypoint Core.<$> (o Core..:? "shell"))

instance Core.ToJSON Entrypoint where
  toJSON Entrypoint {..} =
    Core.object (Core.catMaybes [("shell" Core..=) Core.<$> shell])

-- | Custom static error page to be served when an error occurs.
--
-- /See:/ 'newErrorHandler' smart constructor.
data ErrorHandler = ErrorHandler
  { -- | Error condition this handler applies to.
    errorCode :: (Core.Maybe ErrorHandler_ErrorCode),
    -- | MIME type of file. Defaults to text\/html.
    mimeType :: (Core.Maybe Core.Text),
    -- | Static file content to be served for this error.
    staticFile :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorHandler' with the minimum fields required to make a request.
newErrorHandler ::
  ErrorHandler
newErrorHandler =
  ErrorHandler
    { errorCode = Core.Nothing,
      mimeType = Core.Nothing,
      staticFile = Core.Nothing
    }

instance Core.FromJSON ErrorHandler where
  parseJSON =
    Core.withObject
      "ErrorHandler"
      ( \o ->
          ErrorHandler
            Core.<$> (o Core..:? "errorCode")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "staticFile")
      )

instance Core.ToJSON ErrorHandler where
  toJSON ErrorHandler {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorCode" Core..=) Core.<$> errorCode,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("staticFile" Core..=) Core.<$> staticFile
          ]
      )

-- | The feature specific settings to be used in the application. These define behaviors that are user configurable.
--
-- /See:/ 'newFeatureSettings' smart constructor.
data FeatureSettings = FeatureSettings
  { -- | Boolean value indicating if split health checks should be used instead of the legacy health checks. At an app.yaml level, this means defaulting to \'readiness/check\' and \'liveness/check\' values instead of \'health/check\' ones. Once the legacy \'health/check\' behavior is deprecated, and this value is always true, this setting can be removed.
    splitHealthChecks :: (Core.Maybe Core.Bool),
    -- | If true, use Container-Optimized OS (https:\/\/cloud.google.com\/container-optimized-os\/) base image for VMs, rather than a base Debian image.
    useContainerOptimizedOs :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FeatureSettings' with the minimum fields required to make a request.
newFeatureSettings ::
  FeatureSettings
newFeatureSettings =
  FeatureSettings
    { splitHealthChecks = Core.Nothing,
      useContainerOptimizedOs = Core.Nothing
    }

instance Core.FromJSON FeatureSettings where
  parseJSON =
    Core.withObject
      "FeatureSettings"
      ( \o ->
          FeatureSettings
            Core.<$> (o Core..:? "splitHealthChecks")
            Core.<*> (o Core..:? "useContainerOptimizedOs")
      )

instance Core.ToJSON FeatureSettings where
  toJSON FeatureSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("splitHealthChecks" Core..=) Core.<$> splitHealthChecks,
            ("useContainerOptimizedOs" Core..=)
              Core.<$> useContainerOptimizedOs
          ]
      )

-- | Single source file that is part of the version to be deployed. Each source file that is deployed must be specified separately.
--
-- /See:/ 'newFileInfo' smart constructor.
data FileInfo = FileInfo
  { -- | The MIME type of the file.Defaults to the value from Google Cloud Storage.
    mimeType :: (Core.Maybe Core.Text),
    -- | The SHA1 hash of the file, in hex.
    sha1Sum :: (Core.Maybe Core.Text),
    -- | URL source to use to fetch this file. Must be a URL to a resource in Google Cloud Storage in the form \'http(s):\/\/storage.googleapis.com\/\/\'.
    sourceUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileInfo' with the minimum fields required to make a request.
newFileInfo ::
  FileInfo
newFileInfo =
  FileInfo
    { mimeType = Core.Nothing,
      sha1Sum = Core.Nothing,
      sourceUrl = Core.Nothing
    }

instance Core.FromJSON FileInfo where
  parseJSON =
    Core.withObject
      "FileInfo"
      ( \o ->
          FileInfo
            Core.<$> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "sha1Sum")
            Core.<*> (o Core..:? "sourceUrl")
      )

instance Core.ToJSON FileInfo where
  toJSON FileInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("mimeType" Core..=) Core.<$> mimeType,
            ("sha1Sum" Core..=) Core.<$> sha1Sum,
            ("sourceUrl" Core..=) Core.<$> sourceUrl
          ]
      )

-- | A single firewall rule that is evaluated against incoming traffic and provides an action to take on matched requests.
--
-- /See:/ 'newFirewallRule' smart constructor.
data FirewallRule = FirewallRule
  { -- | The action to take on matched requests.
    action :: (Core.Maybe FirewallRule_Action),
    -- | An optional string description of this rule. This field has a maximum length of 400 characters.
    description :: (Core.Maybe Core.Text),
    -- | A positive integer between 1, Int32.MaxValue-1 that defines the order of rule evaluation. Rules with the lowest priority are evaluated first.A default rule at priority Int32.MaxValue matches all IPv4 and IPv6 traffic when no previous rule matches. Only the action of this rule can be modified by the user.
    priority :: (Core.Maybe Core.Int32),
    -- | IP address or range, defined using CIDR notation, of requests that this rule applies to. You can use the wildcard character \"*\" to match all IPs equivalent to \"0\/0\" and \"::\/0\" together. Examples: 192.168.1.1 or 192.168.0.0\/16 or 2001:db8::\/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. Truncation will be silently performed on addresses which are not properly truncated. For example, 1.2.3.4\/24 is accepted as the same address as 1.2.3.0\/24. Similarly, for IPv6, 2001:db8::1\/32 is accepted as the same address as 2001:db8::\/32.
    sourceRange :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirewallRule' with the minimum fields required to make a request.
newFirewallRule ::
  FirewallRule
newFirewallRule =
  FirewallRule
    { action = Core.Nothing,
      description = Core.Nothing,
      priority = Core.Nothing,
      sourceRange = Core.Nothing
    }

instance Core.FromJSON FirewallRule where
  parseJSON =
    Core.withObject
      "FirewallRule"
      ( \o ->
          FirewallRule
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "priority")
            Core.<*> (o Core..:? "sourceRange")
      )

instance Core.ToJSON FirewallRule where
  toJSON FirewallRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("description" Core..=) Core.<$> description,
            ("priority" Core..=) Core.<$> priority,
            ("sourceRange" Core..=) Core.<$> sourceRange
          ]
      )

-- | Runtime settings for the App Engine flexible environment.
--
-- /See:/ 'newFlexibleRuntimeSettings' smart constructor.
data FlexibleRuntimeSettings = FlexibleRuntimeSettings
  { -- | The operating system of the application runtime.
    operatingSystem :: (Core.Maybe Core.Text),
    -- | The runtime version of an App Engine flexible application.
    runtimeVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FlexibleRuntimeSettings' with the minimum fields required to make a request.
newFlexibleRuntimeSettings ::
  FlexibleRuntimeSettings
newFlexibleRuntimeSettings =
  FlexibleRuntimeSettings
    { operatingSystem = Core.Nothing,
      runtimeVersion = Core.Nothing
    }

instance Core.FromJSON FlexibleRuntimeSettings where
  parseJSON =
    Core.withObject
      "FlexibleRuntimeSettings"
      ( \o ->
          FlexibleRuntimeSettings
            Core.<$> (o Core..:? "operatingSystem")
            Core.<*> (o Core..:? "runtimeVersion")
      )

instance Core.ToJSON FlexibleRuntimeSettings where
  toJSON FlexibleRuntimeSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatingSystem" Core..=) Core.<$> operatingSystem,
            ("runtimeVersion" Core..=) Core.<$> runtimeVersion
          ]
      )

-- | For use only by GCE. GceTag is a wrapper around the GCE administrative tag with parent info.
--
-- /See:/ 'newGceTag' smart constructor.
data GceTag = GceTag
  { -- | The parents(s) of the tag. Eg. projects\/123, folders\/456 It usually contains only one parent. But, in some corner cases, it can contain multiple parents. Currently, organizations are not supported.
    parent :: (Core.Maybe [Core.Text]),
    -- | The administrative_tag name.
    tag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GceTag' with the minimum fields required to make a request.
newGceTag ::
  GceTag
newGceTag = GceTag {parent = Core.Nothing, tag = Core.Nothing}

instance Core.FromJSON GceTag where
  parseJSON =
    Core.withObject
      "GceTag"
      ( \o ->
          GceTag Core.<$> (o Core..:? "parent") Core.<*> (o Core..:? "tag")
      )

instance Core.ToJSON GceTag where
  toJSON GceTag {..} =
    Core.object
      ( Core.catMaybes
          [("parent" Core..=) Core.<$> parent, ("tag" Core..=) Core.<$> tag]
      )

-- | Metadata for the given google.cloud.location.Location.
--
-- /See:/ 'newGoogleAppengineV1betaLocationMetadata' smart constructor.
data GoogleAppengineV1betaLocationMetadata = GoogleAppengineV1betaLocationMetadata
  { -- | App Engine flexible environment is available in the given location.\@OutputOnly
    flexibleEnvironmentAvailable :: (Core.Maybe Core.Bool),
    -- | Output only. Search API (https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/search) is available in the given location.
    searchApiAvailable :: (Core.Maybe Core.Bool),
    -- | App Engine standard environment is available in the given location.\@OutputOnly
    standardEnvironmentAvailable :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppengineV1betaLocationMetadata' with the minimum fields required to make a request.
newGoogleAppengineV1betaLocationMetadata ::
  GoogleAppengineV1betaLocationMetadata
newGoogleAppengineV1betaLocationMetadata =
  GoogleAppengineV1betaLocationMetadata
    { flexibleEnvironmentAvailable =
        Core.Nothing,
      searchApiAvailable = Core.Nothing,
      standardEnvironmentAvailable = Core.Nothing
    }

instance Core.FromJSON GoogleAppengineV1betaLocationMetadata where
  parseJSON =
    Core.withObject
      "GoogleAppengineV1betaLocationMetadata"
      ( \o ->
          GoogleAppengineV1betaLocationMetadata
            Core.<$> (o Core..:? "flexibleEnvironmentAvailable")
            Core.<*> (o Core..:? "searchApiAvailable")
            Core.<*> (o Core..:? "standardEnvironmentAvailable")
      )

instance Core.ToJSON GoogleAppengineV1betaLocationMetadata where
  toJSON GoogleAppengineV1betaLocationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("flexibleEnvironmentAvailable" Core..=)
              Core.<$> flexibleEnvironmentAvailable,
            ("searchApiAvailable" Core..=) Core.<$> searchApiAvailable,
            ("standardEnvironmentAvailable" Core..=)
              Core.<$> standardEnvironmentAvailable
          ]
      )

-- | Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. Only applicable for instances in App Engine flexible environment.
--
-- /See:/ 'newHealthCheck' smart constructor.
data HealthCheck = HealthCheck
  { -- | Interval between health checks.
    checkInterval :: (Core.Maybe Core.Duration),
    -- | Whether to explicitly disable health checks for this instance.
    disableHealthCheck :: (Core.Maybe Core.Bool),
    -- | Number of consecutive successful health checks required before receiving traffic.
    healthyThreshold :: (Core.Maybe Core.Word32),
    -- | Host header to send when performing an HTTP health check. Example: \"myapp.appspot.com\"
    host :: (Core.Maybe Core.Text),
    -- | Number of consecutive failed health checks required before an instance is restarted.
    restartThreshold :: (Core.Maybe Core.Word32),
    -- | Time before the health check is considered failed.
    timeout :: (Core.Maybe Core.Duration),
    -- | Number of consecutive failed health checks required before removing traffic.
    unhealthyThreshold :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthCheck' with the minimum fields required to make a request.
newHealthCheck ::
  HealthCheck
newHealthCheck =
  HealthCheck
    { checkInterval = Core.Nothing,
      disableHealthCheck = Core.Nothing,
      healthyThreshold = Core.Nothing,
      host = Core.Nothing,
      restartThreshold = Core.Nothing,
      timeout = Core.Nothing,
      unhealthyThreshold = Core.Nothing
    }

instance Core.FromJSON HealthCheck where
  parseJSON =
    Core.withObject
      "HealthCheck"
      ( \o ->
          HealthCheck
            Core.<$> (o Core..:? "checkInterval")
            Core.<*> (o Core..:? "disableHealthCheck")
            Core.<*> (o Core..:? "healthyThreshold")
            Core.<*> (o Core..:? "host")
            Core.<*> (o Core..:? "restartThreshold")
            Core.<*> (o Core..:? "timeout")
            Core.<*> (o Core..:? "unhealthyThreshold")
      )

instance Core.ToJSON HealthCheck where
  toJSON HealthCheck {..} =
    Core.object
      ( Core.catMaybes
          [ ("checkInterval" Core..=) Core.<$> checkInterval,
            ("disableHealthCheck" Core..=) Core.<$> disableHealthCheck,
            ("healthyThreshold" Core..=) Core.<$> healthyThreshold,
            ("host" Core..=) Core.<$> host,
            ("restartThreshold" Core..=) Core.<$> restartThreshold,
            ("timeout" Core..=) Core.<$> timeout,
            ("unhealthyThreshold" Core..=) Core.<$> unhealthyThreshold
          ]
      )

-- | Identity-Aware Proxy
--
-- /See:/ 'newIdentityAwareProxy' smart constructor.
data IdentityAwareProxy = IdentityAwareProxy
  { -- | Whether the serving infrastructure will authenticate and authorize all incoming requests.If true, the oauth2/client/id and oauth2/client/secret fields must be non-empty.
    enabled :: (Core.Maybe Core.Bool),
    -- | OAuth2 client ID to use for the authentication flow.
    oauth2ClientId :: (Core.Maybe Core.Text),
    -- | OAuth2 client secret to use for the authentication flow.For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2/client/secret_sha256 field.\@InputOnly
    oauth2ClientSecret :: (Core.Maybe Core.Text),
    -- | Output only. Hex-encoded SHA-256 hash of the client secret.\@OutputOnly
    oauth2ClientSecretSha256 :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityAwareProxy' with the minimum fields required to make a request.
newIdentityAwareProxy ::
  IdentityAwareProxy
newIdentityAwareProxy =
  IdentityAwareProxy
    { enabled = Core.Nothing,
      oauth2ClientId = Core.Nothing,
      oauth2ClientSecret = Core.Nothing,
      oauth2ClientSecretSha256 = Core.Nothing
    }

instance Core.FromJSON IdentityAwareProxy where
  parseJSON =
    Core.withObject
      "IdentityAwareProxy"
      ( \o ->
          IdentityAwareProxy
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "oauth2ClientId")
            Core.<*> (o Core..:? "oauth2ClientSecret")
            Core.<*> (o Core..:? "oauth2ClientSecretSha256")
      )

instance Core.ToJSON IdentityAwareProxy where
  toJSON IdentityAwareProxy {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("oauth2ClientId" Core..=) Core.<$> oauth2ClientId,
            ("oauth2ClientSecret" Core..=) Core.<$> oauth2ClientSecret,
            ("oauth2ClientSecretSha256" Core..=)
              Core.<$> oauth2ClientSecretSha256
          ]
      )

-- | An Instance resource is the computing unit that App Engine uses to automatically scale an application.
--
-- /See:/ 'newInstance' smart constructor.
data Instance = Instance
  { -- | Output only. App Engine release this instance is running on.
    appEngineRelease :: (Core.Maybe Core.Text),
    -- | Output only. Availability of the instance.
    availability :: (Core.Maybe Instance_Availability),
    -- | Output only. Average latency (ms) over the last minute.
    averageLatency :: (Core.Maybe Core.Int32),
    -- | Output only. Number of errors since this instance was started.
    errors :: (Core.Maybe Core.Int32),
    -- | Output only. Relative name of the instance within the version. Example: instance-1.
    id :: (Core.Maybe Core.Text),
    -- | Output only. Total memory in use (bytes).
    memoryUsage :: (Core.Maybe Core.Int64),
    -- | Output only. Full path to the Instance resource in the API. Example: apps\/myapp\/services\/default\/versions\/v1\/instances\/instance-1.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Average queries per second (QPS) over the last minute.
    qps :: (Core.Maybe Core.Double),
    -- | Output only. Number of requests since this instance was started.
    requests :: (Core.Maybe Core.Int32),
    -- | Output only. Time that this instance was started.\@OutputOnly
    startTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Whether this instance is in debug mode. Only applicable for instances in App Engine flexible environment.
    vmDebugEnabled :: (Core.Maybe Core.Bool),
    -- | Output only. Virtual machine ID of this instance. Only applicable for instances in App Engine flexible environment.
    vmId :: (Core.Maybe Core.Text),
    -- | Output only. The IP address of this instance. Only applicable for instances in App Engine flexible environment.
    vmIp :: (Core.Maybe Core.Text),
    -- | Output only. The liveness health check of this instance. Only applicable for instances in App Engine flexible environment.
    vmLiveness :: (Core.Maybe Instance_VmLiveness),
    -- | Output only. Name of the virtual machine where this instance lives. Only applicable for instances in App Engine flexible environment.
    vmName :: (Core.Maybe Core.Text),
    -- | Output only. Status of the virtual machine where this instance lives. Only applicable for instances in App Engine flexible environment.
    vmStatus :: (Core.Maybe Core.Text),
    -- | Output only. Zone where the virtual machine is located. Only applicable for instances in App Engine flexible environment.
    vmZoneName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
newInstance ::
  Instance
newInstance =
  Instance
    { appEngineRelease = Core.Nothing,
      availability = Core.Nothing,
      averageLatency = Core.Nothing,
      errors = Core.Nothing,
      id = Core.Nothing,
      memoryUsage = Core.Nothing,
      name = Core.Nothing,
      qps = Core.Nothing,
      requests = Core.Nothing,
      startTime = Core.Nothing,
      vmDebugEnabled = Core.Nothing,
      vmId = Core.Nothing,
      vmIp = Core.Nothing,
      vmLiveness = Core.Nothing,
      vmName = Core.Nothing,
      vmStatus = Core.Nothing,
      vmZoneName = Core.Nothing
    }

instance Core.FromJSON Instance where
  parseJSON =
    Core.withObject
      "Instance"
      ( \o ->
          Instance
            Core.<$> (o Core..:? "appEngineRelease")
            Core.<*> (o Core..:? "availability")
            Core.<*> (o Core..:? "averageLatency")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "memoryUsage" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "qps")
            Core.<*> (o Core..:? "requests")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "vmDebugEnabled")
            Core.<*> (o Core..:? "vmId")
            Core.<*> (o Core..:? "vmIp")
            Core.<*> (o Core..:? "vmLiveness")
            Core.<*> (o Core..:? "vmName")
            Core.<*> (o Core..:? "vmStatus")
            Core.<*> (o Core..:? "vmZoneName")
      )

instance Core.ToJSON Instance where
  toJSON Instance {..} =
    Core.object
      ( Core.catMaybes
          [ ("appEngineRelease" Core..=) Core.<$> appEngineRelease,
            ("availability" Core..=) Core.<$> availability,
            ("averageLatency" Core..=) Core.<$> averageLatency,
            ("errors" Core..=) Core.<$> errors,
            ("id" Core..=) Core.<$> id,
            ("memoryUsage" Core..=) Core.. Core.AsText Core.<$> memoryUsage,
            ("name" Core..=) Core.<$> name,
            ("qps" Core..=) Core.<$> qps,
            ("requests" Core..=) Core.<$> requests,
            ("startTime" Core..=) Core.<$> startTime,
            ("vmDebugEnabled" Core..=) Core.<$> vmDebugEnabled,
            ("vmId" Core..=) Core.<$> vmId,
            ("vmIp" Core..=) Core.<$> vmIp,
            ("vmLiveness" Core..=) Core.<$> vmLiveness,
            ("vmName" Core..=) Core.<$> vmName,
            ("vmStatus" Core..=) Core.<$> vmStatus,
            ("vmZoneName" Core..=) Core.<$> vmZoneName
          ]
      )

-- | Third-party Python runtime library that is required by the application.
--
-- /See:/ 'newLibrary' smart constructor.
data Library = Library
  { -- | Name of the library. Example: \"django\".
    name :: (Core.Maybe Core.Text),
    -- | Version of the library to select, or \"latest\".
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Library' with the minimum fields required to make a request.
newLibrary ::
  Library
newLibrary = Library {name = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Library where
  parseJSON =
    Core.withObject
      "Library"
      ( \o ->
          Library
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Library where
  toJSON Library {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Response message for AuthorizedCertificates.ListAuthorizedCertificates.
--
-- /See:/ 'newListAuthorizedCertificatesResponse' smart constructor.
data ListAuthorizedCertificatesResponse = ListAuthorizedCertificatesResponse
  { -- | The SSL certificates the user is authorized to administer.
    certificates :: (Core.Maybe [AuthorizedCertificate]),
    -- | Continuation token for fetching the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAuthorizedCertificatesResponse' with the minimum fields required to make a request.
newListAuthorizedCertificatesResponse ::
  ListAuthorizedCertificatesResponse
newListAuthorizedCertificatesResponse =
  ListAuthorizedCertificatesResponse
    { certificates = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListAuthorizedCertificatesResponse where
  parseJSON =
    Core.withObject
      "ListAuthorizedCertificatesResponse"
      ( \o ->
          ListAuthorizedCertificatesResponse
            Core.<$> (o Core..:? "certificates")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAuthorizedCertificatesResponse where
  toJSON ListAuthorizedCertificatesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("certificates" Core..=) Core.<$> certificates,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for AuthorizedDomains.ListAuthorizedDomains.
--
-- /See:/ 'newListAuthorizedDomainsResponse' smart constructor.
data ListAuthorizedDomainsResponse = ListAuthorizedDomainsResponse
  { -- | The authorized domains belonging to the user.
    domains :: (Core.Maybe [AuthorizedDomain]),
    -- | Continuation token for fetching the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAuthorizedDomainsResponse' with the minimum fields required to make a request.
newListAuthorizedDomainsResponse ::
  ListAuthorizedDomainsResponse
newListAuthorizedDomainsResponse =
  ListAuthorizedDomainsResponse
    { domains = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListAuthorizedDomainsResponse where
  parseJSON =
    Core.withObject
      "ListAuthorizedDomainsResponse"
      ( \o ->
          ListAuthorizedDomainsResponse
            Core.<$> (o Core..:? "domains")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAuthorizedDomainsResponse where
  toJSON ListAuthorizedDomainsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("domains" Core..=) Core.<$> domains,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for DomainMappings.ListDomainMappings.
--
-- /See:/ 'newListDomainMappingsResponse' smart constructor.
data ListDomainMappingsResponse = ListDomainMappingsResponse
  { -- | The domain mappings for the application.
    domainMappings :: (Core.Maybe [DomainMapping]),
    -- | Continuation token for fetching the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDomainMappingsResponse' with the minimum fields required to make a request.
newListDomainMappingsResponse ::
  ListDomainMappingsResponse
newListDomainMappingsResponse =
  ListDomainMappingsResponse
    { domainMappings = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListDomainMappingsResponse where
  parseJSON =
    Core.withObject
      "ListDomainMappingsResponse"
      ( \o ->
          ListDomainMappingsResponse
            Core.<$> (o Core..:? "domainMappings")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDomainMappingsResponse where
  toJSON ListDomainMappingsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("domainMappings" Core..=) Core.<$> domainMappings,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for Firewall.ListIngressRules.
--
-- /See:/ 'newListIngressRulesResponse' smart constructor.
data ListIngressRulesResponse = ListIngressRulesResponse
  { -- | The ingress FirewallRules for this application.
    ingressRules :: (Core.Maybe [FirewallRule]),
    -- | Continuation token for fetching the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListIngressRulesResponse' with the minimum fields required to make a request.
newListIngressRulesResponse ::
  ListIngressRulesResponse
newListIngressRulesResponse =
  ListIngressRulesResponse
    { ingressRules = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListIngressRulesResponse where
  parseJSON =
    Core.withObject
      "ListIngressRulesResponse"
      ( \o ->
          ListIngressRulesResponse
            Core.<$> (o Core..:? "ingressRules")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListIngressRulesResponse where
  toJSON ListIngressRulesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("ingressRules" Core..=) Core.<$> ingressRules,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for Instances.ListInstances.
--
-- /See:/ 'newListInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse
  { -- | The instances belonging to the requested version.
    instances :: (Core.Maybe [Instance]),
    -- | Continuation token for fetching the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
newListInstancesResponse ::
  ListInstancesResponse
newListInstancesResponse =
  ListInstancesResponse
    { instances = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListInstancesResponse where
  parseJSON =
    Core.withObject
      "ListInstancesResponse"
      ( \o ->
          ListInstancesResponse
            Core.<$> (o Core..:? "instances")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListInstancesResponse where
  toJSON ListInstancesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("instances" Core..=) Core.<$> instances,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
  { -- | A list of locations that matches the specified filter in the request.
    locations :: (Core.Maybe [Location]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse ::
  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse
    { locations = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLocationsResponse where
  toJSON ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | Response message for Applications.ListRuntimes.
--
-- /See:/ 'newListRuntimesResponse' smart constructor.
data ListRuntimesResponse = ListRuntimesResponse
  { -- | Continuation token for fetching the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The runtimes available to the requested application.
    runtimes :: (Core.Maybe [Runtime])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRuntimesResponse' with the minimum fields required to make a request.
newListRuntimesResponse ::
  ListRuntimesResponse
newListRuntimesResponse =
  ListRuntimesResponse
    { nextPageToken = Core.Nothing,
      runtimes = Core.Nothing
    }

instance Core.FromJSON ListRuntimesResponse where
  parseJSON =
    Core.withObject
      "ListRuntimesResponse"
      ( \o ->
          ListRuntimesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "runtimes")
      )

instance Core.ToJSON ListRuntimesResponse where
  toJSON ListRuntimesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("runtimes" Core..=) Core.<$> runtimes
          ]
      )

-- | Response message for Services.ListServices.
--
-- /See:/ 'newListServicesResponse' smart constructor.
data ListServicesResponse = ListServicesResponse
  { -- | Continuation token for fetching the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The services belonging to the requested application.
    services :: (Core.Maybe [Service])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListServicesResponse' with the minimum fields required to make a request.
newListServicesResponse ::
  ListServicesResponse
newListServicesResponse =
  ListServicesResponse
    { nextPageToken = Core.Nothing,
      services = Core.Nothing
    }

instance Core.FromJSON ListServicesResponse where
  parseJSON =
    Core.withObject
      "ListServicesResponse"
      ( \o ->
          ListServicesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "services")
      )

instance Core.ToJSON ListServicesResponse where
  toJSON ListServicesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("services" Core..=) Core.<$> services
          ]
      )

-- | Response message for Versions.ListVersions.
--
-- /See:/ 'newListVersionsResponse' smart constructor.
data ListVersionsResponse = ListVersionsResponse
  { -- | Continuation token for fetching the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The versions belonging to the requested service.
    versions :: (Core.Maybe [Version])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListVersionsResponse' with the minimum fields required to make a request.
newListVersionsResponse ::
  ListVersionsResponse
newListVersionsResponse =
  ListVersionsResponse
    { nextPageToken = Core.Nothing,
      versions = Core.Nothing
    }

instance Core.FromJSON ListVersionsResponse where
  parseJSON =
    Core.withObject
      "ListVersionsResponse"
      ( \o ->
          ListVersionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "versions")
      )

instance Core.ToJSON ListVersionsResponse where
  toJSON ListVersionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("versions" Core..=) Core.<$> versions
          ]
      )

-- | Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
--
-- /See:/ 'newLivenessCheck' smart constructor.
data LivenessCheck = LivenessCheck
  { -- | Interval between health checks.
    checkInterval :: (Core.Maybe Core.Duration),
    -- | Number of consecutive failed checks required before considering the VM unhealthy.
    failureThreshold :: (Core.Maybe Core.Word32),
    -- | Host header to send when performing a HTTP Liveness check. Example: \"myapp.appspot.com\"
    host :: (Core.Maybe Core.Text),
    -- | The initial delay before starting to execute the checks.
    initialDelay :: (Core.Maybe Core.Duration),
    -- | The request path.
    path :: (Core.Maybe Core.Text),
    -- | Number of consecutive successful checks required before considering the VM healthy.
    successThreshold :: (Core.Maybe Core.Word32),
    -- | Time before the check is considered failed.
    timeout :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LivenessCheck' with the minimum fields required to make a request.
newLivenessCheck ::
  LivenessCheck
newLivenessCheck =
  LivenessCheck
    { checkInterval = Core.Nothing,
      failureThreshold = Core.Nothing,
      host = Core.Nothing,
      initialDelay = Core.Nothing,
      path = Core.Nothing,
      successThreshold = Core.Nothing,
      timeout = Core.Nothing
    }

instance Core.FromJSON LivenessCheck where
  parseJSON =
    Core.withObject
      "LivenessCheck"
      ( \o ->
          LivenessCheck
            Core.<$> (o Core..:? "checkInterval")
            Core.<*> (o Core..:? "failureThreshold")
            Core.<*> (o Core..:? "host")
            Core.<*> (o Core..:? "initialDelay")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "successThreshold")
            Core.<*> (o Core..:? "timeout")
      )

instance Core.ToJSON LivenessCheck where
  toJSON LivenessCheck {..} =
    Core.object
      ( Core.catMaybes
          [ ("checkInterval" Core..=) Core.<$> checkInterval,
            ("failureThreshold" Core..=) Core.<$> failureThreshold,
            ("host" Core..=) Core.<$> host,
            ("initialDelay" Core..=) Core.<$> initialDelay,
            ("path" Core..=) Core.<$> path,
            ("successThreshold" Core..=) Core.<$> successThreshold,
            ("timeout" Core..=) Core.<$> timeout
          ]
      )

-- | A resource that represents a Google Cloud location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | The canonical id for this location. For example: \"us-east1\".
    locationId :: (Core.Maybe Core.Text),
    -- | Service-specific metadata. For example the available capacity at the given location.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Resource name for the location, which may vary between implementations. For example: \"projects\/example-project\/locations\/us-east1\"
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { displayName = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional =
  Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      (\o -> Location_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON additional

-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata additional =
  Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      (\o -> Location_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | Metadata for the given google.cloud.location.Location.
--
-- /See:/ 'newLocationMetadata' smart constructor.
data LocationMetadata = LocationMetadata
  { -- | App Engine flexible environment is available in the given location.\@OutputOnly
    flexibleEnvironmentAvailable :: (Core.Maybe Core.Bool),
    -- | Output only. Search API (https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/search) is available in the given location.
    searchApiAvailable :: (Core.Maybe Core.Bool),
    -- | App Engine standard environment is available in the given location.\@OutputOnly
    standardEnvironmentAvailable :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
newLocationMetadata ::
  LocationMetadata
newLocationMetadata =
  LocationMetadata
    { flexibleEnvironmentAvailable = Core.Nothing,
      searchApiAvailable = Core.Nothing,
      standardEnvironmentAvailable = Core.Nothing
    }

instance Core.FromJSON LocationMetadata where
  parseJSON =
    Core.withObject
      "LocationMetadata"
      ( \o ->
          LocationMetadata
            Core.<$> (o Core..:? "flexibleEnvironmentAvailable")
            Core.<*> (o Core..:? "searchApiAvailable")
            Core.<*> (o Core..:? "standardEnvironmentAvailable")
      )

instance Core.ToJSON LocationMetadata where
  toJSON LocationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("flexibleEnvironmentAvailable" Core..=)
              Core.<$> flexibleEnvironmentAvailable,
            ("searchApiAvailable" Core..=) Core.<$> searchApiAvailable,
            ("standardEnvironmentAvailable" Core..=)
              Core.<$> standardEnvironmentAvailable
          ]
      )

-- | A certificate managed by App Engine.
--
-- /See:/ 'newManagedCertificate' smart constructor.
data ManagedCertificate = ManagedCertificate
  { -- | Time at which the certificate was last renewed. The renewal process is fully managed. Certificate renewal will automatically occur before the certificate expires. Renewal errors can be tracked via ManagementStatus.\@OutputOnly
    lastRenewalTime :: (Core.Maybe Core.DateTime),
    -- | Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.\@OutputOnly
    status :: (Core.Maybe ManagedCertificate_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedCertificate' with the minimum fields required to make a request.
newManagedCertificate ::
  ManagedCertificate
newManagedCertificate =
  ManagedCertificate
    { lastRenewalTime = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON ManagedCertificate where
  parseJSON =
    Core.withObject
      "ManagedCertificate"
      ( \o ->
          ManagedCertificate
            Core.<$> (o Core..:? "lastRenewalTime")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON ManagedCertificate where
  toJSON ManagedCertificate {..} =
    Core.object
      ( Core.catMaybes
          [ ("lastRenewalTime" Core..=) Core.<$> lastRenewalTime,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
--
-- /See:/ 'newManualScaling' smart constructor.
newtype ManualScaling = ManualScaling
  { -- | Number of instances to assign to the service at the start. This number can later be altered by using the Modules API (https:\/\/cloud.google.com\/appengine\/docs\/python\/modules\/functions) set/num/instances() function.
    instances :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManualScaling' with the minimum fields required to make a request.
newManualScaling ::
  ManualScaling
newManualScaling = ManualScaling {instances = Core.Nothing}

instance Core.FromJSON ManualScaling where
  parseJSON =
    Core.withObject
      "ManualScaling"
      (\o -> ManualScaling Core.<$> (o Core..:? "instances"))

instance Core.ToJSON ManualScaling where
  toJSON ManualScaling {..} =
    Core.object
      (Core.catMaybes [("instances" Core..=) Core.<$> instances])

-- | Extra network settings. Only applicable in the App Engine flexible environment.
--
-- /See:/ 'newNetwork' smart constructor.
data Network = Network
  { -- | List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.
    forwardedPorts :: (Core.Maybe [Core.Text]),
    -- | The IP mode for instances. Only applicable in the App Engine flexible environment.
    instanceIpMode :: (Core.Maybe Network_InstanceIpMode),
    -- | Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.
    instanceTag :: (Core.Maybe Core.Text),
    -- | Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.
    name :: (Core.Maybe Core.Text),
    -- | Enable session affinity. Only applicable in the App Engine flexible environment.
    sessionAffinity :: (Core.Maybe Core.Bool),
    -- | Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork/name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork/name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
    subnetworkName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Network' with the minimum fields required to make a request.
newNetwork ::
  Network
newNetwork =
  Network
    { forwardedPorts = Core.Nothing,
      instanceIpMode = Core.Nothing,
      instanceTag = Core.Nothing,
      name = Core.Nothing,
      sessionAffinity = Core.Nothing,
      subnetworkName = Core.Nothing
    }

instance Core.FromJSON Network where
  parseJSON =
    Core.withObject
      "Network"
      ( \o ->
          Network
            Core.<$> (o Core..:? "forwardedPorts")
            Core.<*> (o Core..:? "instanceIpMode")
            Core.<*> (o Core..:? "instanceTag")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sessionAffinity")
            Core.<*> (o Core..:? "subnetworkName")
      )

instance Core.ToJSON Network where
  toJSON Network {..} =
    Core.object
      ( Core.catMaybes
          [ ("forwardedPorts" Core..=) Core.<$> forwardedPorts,
            ("instanceIpMode" Core..=) Core.<$> instanceIpMode,
            ("instanceTag" Core..=) Core.<$> instanceTag,
            ("name" Core..=) Core.<$> name,
            ("sessionAffinity" Core..=) Core.<$> sessionAffinity,
            ("subnetworkName" Core..=) Core.<$> subnetworkName
          ]
      )

-- | A NetworkSettings resource is a container for ingress settings for a version or service.
--
-- /See:/ 'newNetworkSettings' smart constructor.
newtype NetworkSettings = NetworkSettings
  { -- | The ingress settings for version or service.
    ingressTrafficAllowed :: (Core.Maybe NetworkSettings_IngressTrafficAllowed)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkSettings' with the minimum fields required to make a request.
newNetworkSettings ::
  NetworkSettings
newNetworkSettings =
  NetworkSettings {ingressTrafficAllowed = Core.Nothing}

instance Core.FromJSON NetworkSettings where
  parseJSON =
    Core.withObject
      "NetworkSettings"
      ( \o ->
          NetworkSettings Core.<$> (o Core..:? "ingressTrafficAllowed")
      )

instance Core.ToJSON NetworkSettings where
  toJSON NetworkSettings {..} =
    Core.object
      ( Core.catMaybes
          [("ingressTrafficAllowed" Core..=) Core.<$> ingressTrafficAllowed]
      )

-- | Target scaling by network usage. Only applicable in the App Engine flexible environment.
--
-- /See:/ 'newNetworkUtilization' smart constructor.
data NetworkUtilization = NetworkUtilization
  { -- | Target bytes received per second.
    targetReceivedBytesPerSecond :: (Core.Maybe Core.Int32),
    -- | Target packets received per second.
    targetReceivedPacketsPerSecond :: (Core.Maybe Core.Int32),
    -- | Target bytes sent per second.
    targetSentBytesPerSecond :: (Core.Maybe Core.Int32),
    -- | Target packets sent per second.
    targetSentPacketsPerSecond :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkUtilization' with the minimum fields required to make a request.
newNetworkUtilization ::
  NetworkUtilization
newNetworkUtilization =
  NetworkUtilization
    { targetReceivedBytesPerSecond = Core.Nothing,
      targetReceivedPacketsPerSecond = Core.Nothing,
      targetSentBytesPerSecond = Core.Nothing,
      targetSentPacketsPerSecond = Core.Nothing
    }

instance Core.FromJSON NetworkUtilization where
  parseJSON =
    Core.withObject
      "NetworkUtilization"
      ( \o ->
          NetworkUtilization
            Core.<$> (o Core..:? "targetReceivedBytesPerSecond")
            Core.<*> (o Core..:? "targetReceivedPacketsPerSecond")
            Core.<*> (o Core..:? "targetSentBytesPerSecond")
            Core.<*> (o Core..:? "targetSentPacketsPerSecond")
      )

instance Core.ToJSON NetworkUtilization where
  toJSON NetworkUtilization {..} =
    Core.object
      ( Core.catMaybes
          [ ("targetReceivedBytesPerSecond" Core..=)
              Core.<$> targetReceivedBytesPerSecond,
            ("targetReceivedPacketsPerSecond" Core..=)
              Core.<$> targetReceivedPacketsPerSecond,
            ("targetSentBytesPerSecond" Core..=)
              Core.<$> targetSentBytesPerSecond,
            ("targetSentPacketsPerSecond" Core..=)
              Core.<$> targetSentPacketsPerSecond
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is false, it means the operation is still in progress. If true, the operation is completed, and either error or response is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the name should be a resource name ending with operations\/{unique_id}.
    name :: (Core.Maybe Core.Text),
    -- | The normal, successful response of the operation. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get\/Create\/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional =
  Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      (\o -> Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON additional

-- | The normal, successful response of the operation. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get\/Create\/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional =
  Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      (\o -> Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON additional

-- | Metadata for the given google.longrunning.Operation.
--
-- /See:/ 'newOperationMetadataV1' smart constructor.
data OperationMetadataV1 = OperationMetadataV1
  { createVersionMetadata :: (Core.Maybe CreateVersionMetadataV1),
    -- | Time that this operation completed.\@OutputOnly
    endTime :: (Core.Maybe Core.DateTime),
    -- | Ephemeral message that may change every time the operation is polled. \@OutputOnly
    ephemeralMessage :: (Core.Maybe Core.Text),
    -- | Time that this operation was created.\@OutputOnly
    insertTime :: (Core.Maybe Core.DateTime),
    -- | API method that initiated this operation. Example: google.appengine.v1.Versions.CreateVersion.\@OutputOnly
    method :: (Core.Maybe Core.Text),
    -- | Name of the resource that this operation is acting on. Example: apps\/myapp\/services\/default.\@OutputOnly
    target :: (Core.Maybe Core.Text),
    -- | User who requested this operation.\@OutputOnly
    user :: (Core.Maybe Core.Text),
    -- | Durable messages that persist on every operation poll. \@OutputOnly
    warning :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadataV1' with the minimum fields required to make a request.
newOperationMetadataV1 ::
  OperationMetadataV1
newOperationMetadataV1 =
  OperationMetadataV1
    { createVersionMetadata = Core.Nothing,
      endTime = Core.Nothing,
      ephemeralMessage = Core.Nothing,
      insertTime = Core.Nothing,
      method = Core.Nothing,
      target = Core.Nothing,
      user = Core.Nothing,
      warning = Core.Nothing
    }

instance Core.FromJSON OperationMetadataV1 where
  parseJSON =
    Core.withObject
      "OperationMetadataV1"
      ( \o ->
          OperationMetadataV1
            Core.<$> (o Core..:? "createVersionMetadata")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "ephemeralMessage")
            Core.<*> (o Core..:? "insertTime")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "warning")
      )

instance Core.ToJSON OperationMetadataV1 where
  toJSON OperationMetadataV1 {..} =
    Core.object
      ( Core.catMaybes
          [ ("createVersionMetadata" Core..=) Core.<$> createVersionMetadata,
            ("endTime" Core..=) Core.<$> endTime,
            ("ephemeralMessage" Core..=) Core.<$> ephemeralMessage,
            ("insertTime" Core..=) Core.<$> insertTime,
            ("method" Core..=) Core.<$> method,
            ("target" Core..=) Core.<$> target,
            ("user" Core..=) Core.<$> user,
            ("warning" Core..=) Core.<$> warning
          ]
      )

-- | Metadata for the given google.longrunning.Operation.
--
-- /See:/ 'newOperationMetadataV1Alpha' smart constructor.
data OperationMetadataV1Alpha = OperationMetadataV1Alpha
  { createVersionMetadata :: (Core.Maybe CreateVersionMetadataV1Alpha),
    -- | Time that this operation completed.\@OutputOnly
    endTime :: (Core.Maybe Core.DateTime),
    -- | Ephemeral message that may change every time the operation is polled. \@OutputOnly
    ephemeralMessage :: (Core.Maybe Core.Text),
    -- | Time that this operation was created.\@OutputOnly
    insertTime :: (Core.Maybe Core.DateTime),
    -- | API method that initiated this operation. Example: google.appengine.v1alpha.Versions.CreateVersion.\@OutputOnly
    method :: (Core.Maybe Core.Text),
    -- | Name of the resource that this operation is acting on. Example: apps\/myapp\/services\/default.\@OutputOnly
    target :: (Core.Maybe Core.Text),
    -- | User who requested this operation.\@OutputOnly
    user :: (Core.Maybe Core.Text),
    -- | Durable messages that persist on every operation poll. \@OutputOnly
    warning :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadataV1Alpha' with the minimum fields required to make a request.
newOperationMetadataV1Alpha ::
  OperationMetadataV1Alpha
newOperationMetadataV1Alpha =
  OperationMetadataV1Alpha
    { createVersionMetadata = Core.Nothing,
      endTime = Core.Nothing,
      ephemeralMessage = Core.Nothing,
      insertTime = Core.Nothing,
      method = Core.Nothing,
      target = Core.Nothing,
      user = Core.Nothing,
      warning = Core.Nothing
    }

instance Core.FromJSON OperationMetadataV1Alpha where
  parseJSON =
    Core.withObject
      "OperationMetadataV1Alpha"
      ( \o ->
          OperationMetadataV1Alpha
            Core.<$> (o Core..:? "createVersionMetadata")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "ephemeralMessage")
            Core.<*> (o Core..:? "insertTime")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "warning")
      )

instance Core.ToJSON OperationMetadataV1Alpha where
  toJSON OperationMetadataV1Alpha {..} =
    Core.object
      ( Core.catMaybes
          [ ("createVersionMetadata" Core..=) Core.<$> createVersionMetadata,
            ("endTime" Core..=) Core.<$> endTime,
            ("ephemeralMessage" Core..=) Core.<$> ephemeralMessage,
            ("insertTime" Core..=) Core.<$> insertTime,
            ("method" Core..=) Core.<$> method,
            ("target" Core..=) Core.<$> target,
            ("user" Core..=) Core.<$> user,
            ("warning" Core..=) Core.<$> warning
          ]
      )

-- | Metadata for the given google.longrunning.Operation.
--
-- /See:/ 'newOperationMetadataV1Beta' smart constructor.
data OperationMetadataV1Beta = OperationMetadataV1Beta
  { createVersionMetadata :: (Core.Maybe CreateVersionMetadataV1Beta),
    -- | Time that this operation completed.\@OutputOnly
    endTime :: (Core.Maybe Core.DateTime),
    -- | Ephemeral message that may change every time the operation is polled. \@OutputOnly
    ephemeralMessage :: (Core.Maybe Core.Text),
    -- | Time that this operation was created.\@OutputOnly
    insertTime :: (Core.Maybe Core.DateTime),
    -- | API method that initiated this operation. Example: google.appengine.v1beta.Versions.CreateVersion.\@OutputOnly
    method :: (Core.Maybe Core.Text),
    -- | Name of the resource that this operation is acting on. Example: apps\/myapp\/services\/default.\@OutputOnly
    target :: (Core.Maybe Core.Text),
    -- | User who requested this operation.\@OutputOnly
    user :: (Core.Maybe Core.Text),
    -- | Durable messages that persist on every operation poll. \@OutputOnly
    warning :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadataV1Beta' with the minimum fields required to make a request.
newOperationMetadataV1Beta ::
  OperationMetadataV1Beta
newOperationMetadataV1Beta =
  OperationMetadataV1Beta
    { createVersionMetadata = Core.Nothing,
      endTime = Core.Nothing,
      ephemeralMessage = Core.Nothing,
      insertTime = Core.Nothing,
      method = Core.Nothing,
      target = Core.Nothing,
      user = Core.Nothing,
      warning = Core.Nothing
    }

instance Core.FromJSON OperationMetadataV1Beta where
  parseJSON =
    Core.withObject
      "OperationMetadataV1Beta"
      ( \o ->
          OperationMetadataV1Beta
            Core.<$> (o Core..:? "createVersionMetadata")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "ephemeralMessage")
            Core.<*> (o Core..:? "insertTime")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "warning")
      )

instance Core.ToJSON OperationMetadataV1Beta where
  toJSON OperationMetadataV1Beta {..} =
    Core.object
      ( Core.catMaybes
          [ ("createVersionMetadata" Core..=) Core.<$> createVersionMetadata,
            ("endTime" Core..=) Core.<$> endTime,
            ("ephemeralMessage" Core..=) Core.<$> ephemeralMessage,
            ("insertTime" Core..=) Core.<$> insertTime,
            ("method" Core..=) Core.<$> method,
            ("target" Core..=) Core.<$> target,
            ("user" Core..=) Core.<$> user,
            ("warning" Core..=) Core.<$> warning
          ]
      )

-- | The request sent to CLHs during project events.
--
-- /See:/ 'newProjectEvent' smart constructor.
data ProjectEvent = ProjectEvent
  { -- | The unique ID for this project event. CLHs can use this value to dedup repeated calls. required
    eventId :: (Core.Maybe Core.Text),
    -- | Phase indicates when in the container event propagation this event is being communicated. Events are sent before and after the per-resource events are propagated. required
    phase :: (Core.Maybe ProjectEvent_Phase),
    -- | The projects metadata for this project. required
    projectMetadata :: (Core.Maybe ProjectsMetadata),
    -- | The state of the organization that led to this event.
    state :: (Core.Maybe ContainerState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectEvent' with the minimum fields required to make a request.
newProjectEvent ::
  ProjectEvent
newProjectEvent =
  ProjectEvent
    { eventId = Core.Nothing,
      phase = Core.Nothing,
      projectMetadata = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON ProjectEvent where
  parseJSON =
    Core.withObject
      "ProjectEvent"
      ( \o ->
          ProjectEvent
            Core.<$> (o Core..:? "eventId")
            Core.<*> (o Core..:? "phase")
            Core.<*> (o Core..:? "projectMetadata")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON ProjectEvent where
  toJSON ProjectEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventId" Core..=) Core.<$> eventId,
            ("phase" Core..=) Core.<$> phase,
            ("projectMetadata" Core..=) Core.<$> projectMetadata,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | ProjectsMetadata is the metadata CCFE stores about the all the relevant projects (tenant, consumer, producer).
--
-- /See:/ 'newProjectsMetadata' smart constructor.
data ProjectsMetadata = ProjectsMetadata
  { -- | The consumer project id.
    consumerProjectId :: (Core.Maybe Core.Text),
    -- | The consumer project number.
    consumerProjectNumber :: (Core.Maybe Core.Int64),
    -- | The CCFE state of the consumer project. It is the same state that is communicated to the CLH during project events. Notice that this field is not set in the DB, it is only set in this proto when communicated to CLH in the side channel.
    consumerProjectState :: (Core.Maybe ProjectsMetadata_ConsumerProjectState),
    -- | The GCE tags associated with the consumer project and those inherited due to their ancestry, if any. Not supported by CCFE.
    gceTag :: (Core.Maybe [GceTag]),
    -- | The service account authorized to operate on the consumer project. Note: CCFE only propagates P4SA with default tag to CLH.
    p4ServiceAccount :: (Core.Maybe Core.Text),
    -- | The producer project id.
    producerProjectId :: (Core.Maybe Core.Text),
    -- | The producer project number.
    producerProjectNumber :: (Core.Maybe Core.Int64),
    -- | The tenant project id.
    tenantProjectId :: (Core.Maybe Core.Text),
    -- | The tenant project number.
    tenantProjectNumber :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectsMetadata' with the minimum fields required to make a request.
newProjectsMetadata ::
  ProjectsMetadata
newProjectsMetadata =
  ProjectsMetadata
    { consumerProjectId = Core.Nothing,
      consumerProjectNumber = Core.Nothing,
      consumerProjectState = Core.Nothing,
      gceTag = Core.Nothing,
      p4ServiceAccount = Core.Nothing,
      producerProjectId = Core.Nothing,
      producerProjectNumber = Core.Nothing,
      tenantProjectId = Core.Nothing,
      tenantProjectNumber = Core.Nothing
    }

instance Core.FromJSON ProjectsMetadata where
  parseJSON =
    Core.withObject
      "ProjectsMetadata"
      ( \o ->
          ProjectsMetadata
            Core.<$> (o Core..:? "consumerProjectId")
            Core.<*> ( o
                         Core..:? "consumerProjectNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "consumerProjectState")
            Core.<*> (o Core..:? "gceTag")
            Core.<*> (o Core..:? "p4ServiceAccount")
            Core.<*> (o Core..:? "producerProjectId")
            Core.<*> ( o
                         Core..:? "producerProjectNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "tenantProjectId")
            Core.<*> ( o
                         Core..:? "tenantProjectNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON ProjectsMetadata where
  toJSON ProjectsMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("consumerProjectId" Core..=) Core.<$> consumerProjectId,
            ("consumerProjectNumber" Core..=)
              Core.. Core.AsText
              Core.<$> consumerProjectNumber,
            ("consumerProjectState" Core..=) Core.<$> consumerProjectState,
            ("gceTag" Core..=) Core.<$> gceTag,
            ("p4ServiceAccount" Core..=) Core.<$> p4ServiceAccount,
            ("producerProjectId" Core..=) Core.<$> producerProjectId,
            ("producerProjectNumber" Core..=)
              Core.. Core.AsText
              Core.<$> producerProjectNumber,
            ("tenantProjectId" Core..=) Core.<$> tenantProjectId,
            ("tenantProjectNumber" Core..=)
              Core.. Core.AsText
              Core.<$> tenantProjectNumber
          ]
      )

-- | Readiness checking configuration for VM instances. Unhealthy instances are removed from traffic rotation.
--
-- /See:/ 'newReadinessCheck' smart constructor.
data ReadinessCheck = ReadinessCheck
  { -- | A maximum time limit on application initialization, measured from moment the application successfully replies to a healthcheck until it is ready to serve traffic.
    appStartTimeout :: (Core.Maybe Core.Duration),
    -- | Interval between health checks.
    checkInterval :: (Core.Maybe Core.Duration),
    -- | Number of consecutive failed checks required before removing traffic.
    failureThreshold :: (Core.Maybe Core.Word32),
    -- | Host header to send when performing a HTTP Readiness check. Example: \"myapp.appspot.com\"
    host :: (Core.Maybe Core.Text),
    -- | The request path.
    path :: (Core.Maybe Core.Text),
    -- | Number of consecutive successful checks required before receiving traffic.
    successThreshold :: (Core.Maybe Core.Word32),
    -- | Time before the check is considered failed.
    timeout :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadinessCheck' with the minimum fields required to make a request.
newReadinessCheck ::
  ReadinessCheck
newReadinessCheck =
  ReadinessCheck
    { appStartTimeout = Core.Nothing,
      checkInterval = Core.Nothing,
      failureThreshold = Core.Nothing,
      host = Core.Nothing,
      path = Core.Nothing,
      successThreshold = Core.Nothing,
      timeout = Core.Nothing
    }

instance Core.FromJSON ReadinessCheck where
  parseJSON =
    Core.withObject
      "ReadinessCheck"
      ( \o ->
          ReadinessCheck
            Core.<$> (o Core..:? "appStartTimeout")
            Core.<*> (o Core..:? "checkInterval")
            Core.<*> (o Core..:? "failureThreshold")
            Core.<*> (o Core..:? "host")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "successThreshold")
            Core.<*> (o Core..:? "timeout")
      )

instance Core.ToJSON ReadinessCheck where
  toJSON ReadinessCheck {..} =
    Core.object
      ( Core.catMaybes
          [ ("appStartTimeout" Core..=) Core.<$> appStartTimeout,
            ("checkInterval" Core..=) Core.<$> checkInterval,
            ("failureThreshold" Core..=) Core.<$> failureThreshold,
            ("host" Core..=) Core.<$> host,
            ("path" Core..=) Core.<$> path,
            ("successThreshold" Core..=) Core.<$> successThreshold,
            ("timeout" Core..=) Core.<$> timeout
          ]
      )

-- | Containers transition between and within states based on reasons sent from various systems. CCFE will provide the CLH with reasons for the current state per system.The current systems that CCFE supports are: Service Management (Inception) Data Governance (Wipeout) Abuse (Ares) Billing (Internal Cloud Billing API) Service Activation (Service Controller)
--
-- /See:/ 'newReasons' smart constructor.
data Reasons = Reasons
  { abuse :: (Core.Maybe Reasons_Abuse),
    billing :: (Core.Maybe Reasons_Billing),
    dataGovernance :: (Core.Maybe Reasons_DataGovernance),
    -- | Consumer Container denotes if the service is active within a project or not. This information could be used to clean up resources in case service in DISABLED_FULL i.e. Service is inactive > 30 days.
    serviceActivation :: (Core.Maybe Reasons_ServiceActivation),
    serviceManagement :: (Core.Maybe Reasons_ServiceManagement)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Reasons' with the minimum fields required to make a request.
newReasons ::
  Reasons
newReasons =
  Reasons
    { abuse = Core.Nothing,
      billing = Core.Nothing,
      dataGovernance = Core.Nothing,
      serviceActivation = Core.Nothing,
      serviceManagement = Core.Nothing
    }

instance Core.FromJSON Reasons where
  parseJSON =
    Core.withObject
      "Reasons"
      ( \o ->
          Reasons
            Core.<$> (o Core..:? "abuse")
            Core.<*> (o Core..:? "billing")
            Core.<*> (o Core..:? "dataGovernance")
            Core.<*> (o Core..:? "serviceActivation")
            Core.<*> (o Core..:? "serviceManagement")
      )

instance Core.ToJSON Reasons where
  toJSON Reasons {..} =
    Core.object
      ( Core.catMaybes
          [ ("abuse" Core..=) Core.<$> abuse,
            ("billing" Core..=) Core.<$> billing,
            ("dataGovernance" Core..=) Core.<$> dataGovernance,
            ("serviceActivation" Core..=) Core.<$> serviceActivation,
            ("serviceManagement" Core..=) Core.<$> serviceManagement
          ]
      )

-- | Request message for \'Applications.RepairApplication\'.
--
-- /See:/ 'newRepairApplicationRequest' smart constructor.
data RepairApplicationRequest = RepairApplicationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepairApplicationRequest' with the minimum fields required to make a request.
newRepairApplicationRequest ::
  RepairApplicationRequest
newRepairApplicationRequest = RepairApplicationRequest

instance Core.FromJSON RepairApplicationRequest where
  parseJSON =
    Core.withObject
      "RepairApplicationRequest"
      (\o -> Core.pure RepairApplicationRequest)

instance Core.ToJSON RepairApplicationRequest where
  toJSON = Core.const Core.emptyObject

-- | Target scaling by request utilization. Only applicable in the App Engine flexible environment.
--
-- /See:/ 'newRequestUtilization' smart constructor.
data RequestUtilization = RequestUtilization
  { -- | Target number of concurrent requests.
    targetConcurrentRequests :: (Core.Maybe Core.Int32),
    -- | Target requests per second.
    targetRequestCountPerSecond :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestUtilization' with the minimum fields required to make a request.
newRequestUtilization ::
  RequestUtilization
newRequestUtilization =
  RequestUtilization
    { targetConcurrentRequests = Core.Nothing,
      targetRequestCountPerSecond = Core.Nothing
    }

instance Core.FromJSON RequestUtilization where
  parseJSON =
    Core.withObject
      "RequestUtilization"
      ( \o ->
          RequestUtilization
            Core.<$> (o Core..:? "targetConcurrentRequests")
            Core.<*> (o Core..:? "targetRequestCountPerSecond")
      )

instance Core.ToJSON RequestUtilization where
  toJSON RequestUtilization {..} =
    Core.object
      ( Core.catMaybes
          [ ("targetConcurrentRequests" Core..=)
              Core.<$> targetConcurrentRequests,
            ("targetRequestCountPerSecond" Core..=)
              Core.<$> targetRequestCountPerSecond
          ]
      )

-- | The request that is passed to CLH during per-resource events. The request will be sent with update semantics in all cases except for data governance purge events. These events will be sent with delete semantics and the CLH is expected to delete the resource receiving this event.
--
-- /See:/ 'newResourceEvent' smart constructor.
data ResourceEvent = ResourceEvent
  { -- | The unique ID for this per-resource event. CLHs can use this value to dedup repeated calls. required
    eventId :: (Core.Maybe Core.Text),
    -- | The name of the resource for which this event is. required
    name :: (Core.Maybe Core.Text),
    -- | The state of the project that led to this event.
    state :: (Core.Maybe ContainerState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceEvent' with the minimum fields required to make a request.
newResourceEvent ::
  ResourceEvent
newResourceEvent =
  ResourceEvent
    { eventId = Core.Nothing,
      name = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON ResourceEvent where
  parseJSON =
    Core.withObject
      "ResourceEvent"
      ( \o ->
          ResourceEvent
            Core.<$> (o Core..:? "eventId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON ResourceEvent where
  toJSON ResourceEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventId" Core..=) Core.<$> eventId,
            ("name" Core..=) Core.<$> name,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | A DNS resource record.
--
-- /See:/ 'newResourceRecord' smart constructor.
data ResourceRecord = ResourceRecord
  { -- | Relative name of the object affected by this record. Only applicable for CNAME records. Example: \'www\'.
    name :: (Core.Maybe Core.Text),
    -- | Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
    rrdata :: (Core.Maybe Core.Text),
    -- | Resource record type. Example: AAAA.
    type' :: (Core.Maybe ResourceRecord_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceRecord' with the minimum fields required to make a request.
newResourceRecord ::
  ResourceRecord
newResourceRecord =
  ResourceRecord
    { name = Core.Nothing,
      rrdata = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ResourceRecord where
  parseJSON =
    Core.withObject
      "ResourceRecord"
      ( \o ->
          ResourceRecord
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "rrdata")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ResourceRecord where
  toJSON ResourceRecord {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("rrdata" Core..=) Core.<$> rrdata,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Machine resources for a version.
--
-- /See:/ 'newResources' smart constructor.
data Resources = Resources
  { -- | Number of CPU cores needed.
    cpu :: (Core.Maybe Core.Double),
    -- | Disk size (GB) needed.
    diskGb :: (Core.Maybe Core.Double),
    -- | The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
    kmsKeyReference :: (Core.Maybe Core.Text),
    -- | Memory (GB) needed.
    memoryGb :: (Core.Maybe Core.Double),
    -- | User specified volumes.
    volumes :: (Core.Maybe [Volume])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resources' with the minimum fields required to make a request.
newResources ::
  Resources
newResources =
  Resources
    { cpu = Core.Nothing,
      diskGb = Core.Nothing,
      kmsKeyReference = Core.Nothing,
      memoryGb = Core.Nothing,
      volumes = Core.Nothing
    }

instance Core.FromJSON Resources where
  parseJSON =
    Core.withObject
      "Resources"
      ( \o ->
          Resources
            Core.<$> (o Core..:? "cpu")
            Core.<*> (o Core..:? "diskGb")
            Core.<*> (o Core..:? "kmsKeyReference")
            Core.<*> (o Core..:? "memoryGb")
            Core.<*> (o Core..:? "volumes")
      )

instance Core.ToJSON Resources where
  toJSON Resources {..} =
    Core.object
      ( Core.catMaybes
          [ ("cpu" Core..=) Core.<$> cpu,
            ("diskGb" Core..=) Core.<$> diskGb,
            ("kmsKeyReference" Core..=) Core.<$> kmsKeyReference,
            ("memoryGb" Core..=) Core.<$> memoryGb,
            ("volumes" Core..=) Core.<$> volumes
          ]
      )

-- | Runtime versions for App Engine.
--
-- /See:/ 'newRuntime' smart constructor.
data Runtime = Runtime
  { -- | Date when Runtime is decommissioned.
    decommissionedDate :: (Core.Maybe Date),
    -- | Date when Runtime is deprecated.
    deprecationDate :: (Core.Maybe Date),
    -- | User-friendly display name, e.g. \'Node.js 12\', etc.
    displayName :: (Core.Maybe Core.Text),
    -- | Date when Runtime is end of support.
    endOfSupportDate :: (Core.Maybe Date),
    -- | The environment of the runtime.
    environment :: (Core.Maybe Runtime_Environment),
    -- | The name of the runtime, e.g., \'go113\', \'nodejs12\', etc.
    name :: (Core.Maybe Core.Text),
    -- | The stage of life this runtime is in, e.g., BETA, GA, etc.
    stage :: (Core.Maybe Runtime_Stage),
    -- | Supported operating systems for the runtime, e.g., \'ubuntu22\', etc.
    supportedOperatingSystems :: (Core.Maybe [Core.Text]),
    -- | Warning messages, e.g., a deprecation warning.
    warnings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Runtime' with the minimum fields required to make a request.
newRuntime ::
  Runtime
newRuntime =
  Runtime
    { decommissionedDate = Core.Nothing,
      deprecationDate = Core.Nothing,
      displayName = Core.Nothing,
      endOfSupportDate = Core.Nothing,
      environment = Core.Nothing,
      name = Core.Nothing,
      stage = Core.Nothing,
      supportedOperatingSystems = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON Runtime where
  parseJSON =
    Core.withObject
      "Runtime"
      ( \o ->
          Runtime
            Core.<$> (o Core..:? "decommissionedDate")
            Core.<*> (o Core..:? "deprecationDate")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "endOfSupportDate")
            Core.<*> (o Core..:? "environment")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "stage")
            Core.<*> (o Core..:? "supportedOperatingSystems")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON Runtime where
  toJSON Runtime {..} =
    Core.object
      ( Core.catMaybes
          [ ("decommissionedDate" Core..=) Core.<$> decommissionedDate,
            ("deprecationDate" Core..=) Core.<$> deprecationDate,
            ("displayName" Core..=) Core.<$> displayName,
            ("endOfSupportDate" Core..=) Core.<$> endOfSupportDate,
            ("environment" Core..=) Core.<$> environment,
            ("name" Core..=) Core.<$> name,
            ("stage" Core..=) Core.<$> stage,
            ("supportedOperatingSystems" Core..=)
              Core.<$> supportedOperatingSystems,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Executes a script to handle the request that matches the URL pattern.
--
-- /See:/ 'newScriptHandler' smart constructor.
newtype ScriptHandler = ScriptHandler
  { -- | Path to the script from the application root directory.
    scriptPath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptHandler' with the minimum fields required to make a request.
newScriptHandler ::
  ScriptHandler
newScriptHandler = ScriptHandler {scriptPath = Core.Nothing}

instance Core.FromJSON ScriptHandler where
  parseJSON =
    Core.withObject
      "ScriptHandler"
      (\o -> ScriptHandler Core.<$> (o Core..:? "scriptPath"))

instance Core.ToJSON ScriptHandler where
  toJSON ScriptHandler {..} =
    Core.object
      (Core.catMaybes [("scriptPath" Core..=) Core.<$> scriptPath])

-- | A Service resource is a logical component of an application that can share state and communicate in a secure fashion with other services. For example, an application that handles customer requests might include separate services to handle tasks such as backend data analysis or API requests from mobile devices. Each service has a collection of versions that define a specific set of code used to implement the functionality of that service.
--
-- /See:/ 'newService' smart constructor.
data Service = Service
  { -- | Additional Google Generated Customer Metadata, this field won\'t be provided by default and can be requested by setting the IncludeExtraData field in GetServiceRequest
    generatedCustomerMetadata :: (Core.Maybe Service_GeneratedCustomerMetadata),
    -- | Output only. Relative name of the service within the application. Example: default.\@OutputOnly
    id :: (Core.Maybe Core.Text),
    -- | A set of labels to apply to this service. Labels are key\/value pairs that describe the service and all resources that belong to it (e.g., versions). The labels can be used to search and group resources, and are propagated to the usage and billing reports, enabling fine-grain analysis of costs. An example of using labels is to tag resources belonging to different environments (e.g., \"env=prod\", \"env=qa\"). Label keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, dashes, and international characters. Label keys must start with a lowercase letter or an international character. Each service can have at most 32 labels.
    labels :: (Core.Maybe Service_Labels),
    -- | Output only. Full path to the Service resource in the API. Example: apps\/myapp\/services\/default.\@OutputOnly
    name :: (Core.Maybe Core.Text),
    -- | Ingress settings for this service. Will apply to all versions.
    networkSettings :: (Core.Maybe NetworkSettings),
    -- | Mapping that defines fractional HTTP traffic diversion to different versions within the service.
    split :: (Core.Maybe TrafficSplit)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Service' with the minimum fields required to make a request.
newService ::
  Service
newService =
  Service
    { generatedCustomerMetadata = Core.Nothing,
      id = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      networkSettings = Core.Nothing,
      split = Core.Nothing
    }

instance Core.FromJSON Service where
  parseJSON =
    Core.withObject
      "Service"
      ( \o ->
          Service
            Core.<$> (o Core..:? "generatedCustomerMetadata")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networkSettings")
            Core.<*> (o Core..:? "split")
      )

instance Core.ToJSON Service where
  toJSON Service {..} =
    Core.object
      ( Core.catMaybes
          [ ("generatedCustomerMetadata" Core..=)
              Core.<$> generatedCustomerMetadata,
            ("id" Core..=) Core.<$> id,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("networkSettings" Core..=) Core.<$> networkSettings,
            ("split" Core..=) Core.<$> split
          ]
      )

-- | Additional Google Generated Customer Metadata, this field won\'t be provided by default and can be requested by setting the IncludeExtraData field in GetServiceRequest
--
-- /See:/ 'newService_GeneratedCustomerMetadata' smart constructor.
newtype Service_GeneratedCustomerMetadata = Service_GeneratedCustomerMetadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Service_GeneratedCustomerMetadata' with the minimum fields required to make a request.
newService_GeneratedCustomerMetadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Service_GeneratedCustomerMetadata
newService_GeneratedCustomerMetadata additional =
  Service_GeneratedCustomerMetadata {additional = additional}

instance Core.FromJSON Service_GeneratedCustomerMetadata where
  parseJSON =
    Core.withObject
      "Service_GeneratedCustomerMetadata"
      ( \o ->
          Service_GeneratedCustomerMetadata
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Service_GeneratedCustomerMetadata where
  toJSON Service_GeneratedCustomerMetadata {..} =
    Core.toJSON additional

-- | A set of labels to apply to this service. Labels are key\/value pairs that describe the service and all resources that belong to it (e.g., versions). The labels can be used to search and group resources, and are propagated to the usage and billing reports, enabling fine-grain analysis of costs. An example of using labels is to tag resources belonging to different environments (e.g., \"env=prod\", \"env=qa\"). Label keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, dashes, and international characters. Label keys must start with a lowercase letter or an international character. Each service can have at most 32 labels.
--
-- /See:/ 'newService_Labels' smart constructor.
newtype Service_Labels = Service_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Service_Labels' with the minimum fields required to make a request.
newService_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Service_Labels
newService_Labels additional =
  Service_Labels {additional = additional}

instance Core.FromJSON Service_Labels where
  parseJSON =
    Core.withObject
      "Service_Labels"
      (\o -> Service_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Service_Labels where
  toJSON Service_Labels {..} = Core.toJSON additional

-- | SSL configuration for a DomainMapping resource.
--
-- /See:/ 'newSslSettings' smart constructor.
data SslSettings = SslSettings
  { -- | ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify SslManagementType.MANUAL on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
    certificateId :: (Core.Maybe Core.Text),
    -- | ID of the managed AuthorizedCertificate resource currently being provisioned, if applicable. Until the new managed certificate has been successfully provisioned, the previous SSL state will be preserved. Once the provisioning process completes, the certificate/id field will reflect the new managed certificate and this field will be left empty. To remove SSL support while there is still a pending managed certificate, clear the certificate/id field with an UpdateDomainMappingRequest.\@OutputOnly
    pendingManagedCertificateId :: (Core.Maybe Core.Text),
    -- | SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
    sslManagementType :: (Core.Maybe SslSettings_SslManagementType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SslSettings' with the minimum fields required to make a request.
newSslSettings ::
  SslSettings
newSslSettings =
  SslSettings
    { certificateId = Core.Nothing,
      pendingManagedCertificateId = Core.Nothing,
      sslManagementType = Core.Nothing
    }

instance Core.FromJSON SslSettings where
  parseJSON =
    Core.withObject
      "SslSettings"
      ( \o ->
          SslSettings
            Core.<$> (o Core..:? "certificateId")
            Core.<*> (o Core..:? "pendingManagedCertificateId")
            Core.<*> (o Core..:? "sslManagementType")
      )

instance Core.ToJSON SslSettings where
  toJSON SslSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("certificateId" Core..=) Core.<$> certificateId,
            ("pendingManagedCertificateId" Core..=)
              Core.<$> pendingManagedCertificateId,
            ("sslManagementType" Core..=) Core.<$> sslManagementType
          ]
      )

-- | Scheduler settings for standard environment.
--
-- /See:/ 'newStandardSchedulerSettings' smart constructor.
data StandardSchedulerSettings = StandardSchedulerSettings
  { -- | Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.
    maxInstances :: (Core.Maybe Core.Int32),
    -- | Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
    minInstances :: (Core.Maybe Core.Int32),
    -- | Target CPU utilization ratio to maintain when scaling.
    targetCpuUtilization :: (Core.Maybe Core.Double),
    -- | Target throughput utilization ratio to maintain when scaling
    targetThroughputUtilization :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StandardSchedulerSettings' with the minimum fields required to make a request.
newStandardSchedulerSettings ::
  StandardSchedulerSettings
newStandardSchedulerSettings =
  StandardSchedulerSettings
    { maxInstances = Core.Nothing,
      minInstances = Core.Nothing,
      targetCpuUtilization = Core.Nothing,
      targetThroughputUtilization = Core.Nothing
    }

instance Core.FromJSON StandardSchedulerSettings where
  parseJSON =
    Core.withObject
      "StandardSchedulerSettings"
      ( \o ->
          StandardSchedulerSettings
            Core.<$> (o Core..:? "maxInstances")
            Core.<*> (o Core..:? "minInstances")
            Core.<*> (o Core..:? "targetCpuUtilization")
            Core.<*> (o Core..:? "targetThroughputUtilization")
      )

instance Core.ToJSON StandardSchedulerSettings where
  toJSON StandardSchedulerSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxInstances" Core..=) Core.<$> maxInstances,
            ("minInstances" Core..=) Core.<$> minInstances,
            ("targetCpuUtilization" Core..=) Core.<$> targetCpuUtilization,
            ("targetThroughputUtilization" Core..=)
              Core.<$> targetThroughputUtilization
          ]
      )

-- | Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them.
--
-- /See:/ 'newStaticFilesHandler' smart constructor.
data StaticFilesHandler = StaticFilesHandler
  { -- | Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged against both your code and static data storage resource quotas.
    applicationReadable :: (Core.Maybe Core.Bool),
    -- | Time a static file served by this handler should be cached by web proxies and browsers.
    expiration :: (Core.Maybe Core.Duration),
    -- | HTTP headers to use for all responses from these URLs.
    httpHeaders :: (Core.Maybe StaticFilesHandler_HttpHeaders),
    -- | MIME type used to serve all files served by this handler.Defaults to file-specific MIME types, which are derived from each file\'s filename extension.
    mimeType :: (Core.Maybe Core.Text),
    -- | Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern.
    path :: (Core.Maybe Core.Text),
    -- | Whether this handler should match the request if the file referenced by the handler does not exist.
    requireMatchingFile :: (Core.Maybe Core.Bool),
    -- | Regular expression that matches the file paths for all files that should be referenced by this handler.
    uploadPathRegex :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StaticFilesHandler' with the minimum fields required to make a request.
newStaticFilesHandler ::
  StaticFilesHandler
newStaticFilesHandler =
  StaticFilesHandler
    { applicationReadable = Core.Nothing,
      expiration = Core.Nothing,
      httpHeaders = Core.Nothing,
      mimeType = Core.Nothing,
      path = Core.Nothing,
      requireMatchingFile = Core.Nothing,
      uploadPathRegex = Core.Nothing
    }

instance Core.FromJSON StaticFilesHandler where
  parseJSON =
    Core.withObject
      "StaticFilesHandler"
      ( \o ->
          StaticFilesHandler
            Core.<$> (o Core..:? "applicationReadable")
            Core.<*> (o Core..:? "expiration")
            Core.<*> (o Core..:? "httpHeaders")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "requireMatchingFile")
            Core.<*> (o Core..:? "uploadPathRegex")
      )

instance Core.ToJSON StaticFilesHandler where
  toJSON StaticFilesHandler {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationReadable" Core..=) Core.<$> applicationReadable,
            ("expiration" Core..=) Core.<$> expiration,
            ("httpHeaders" Core..=) Core.<$> httpHeaders,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("path" Core..=) Core.<$> path,
            ("requireMatchingFile" Core..=) Core.<$> requireMatchingFile,
            ("uploadPathRegex" Core..=) Core.<$> uploadPathRegex
          ]
      )

-- | HTTP headers to use for all responses from these URLs.
--
-- /See:/ 'newStaticFilesHandler_HttpHeaders' smart constructor.
newtype StaticFilesHandler_HttpHeaders = StaticFilesHandler_HttpHeaders
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StaticFilesHandler_HttpHeaders' with the minimum fields required to make a request.
newStaticFilesHandler_HttpHeaders ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  StaticFilesHandler_HttpHeaders
newStaticFilesHandler_HttpHeaders additional =
  StaticFilesHandler_HttpHeaders {additional = additional}

instance Core.FromJSON StaticFilesHandler_HttpHeaders where
  parseJSON =
    Core.withObject
      "StaticFilesHandler_HttpHeaders"
      ( \o ->
          StaticFilesHandler_HttpHeaders Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON StaticFilesHandler_HttpHeaders where
  toJSON StaticFilesHandler_HttpHeaders {..} = Core.toJSON additional

-- | The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https:\/\/github.com\/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | Traffic routing configuration for versions within a single service. Traffic splits define how traffic directed to the service is assigned to versions.
--
-- /See:/ 'newTrafficSplit' smart constructor.
data TrafficSplit = TrafficSplit
  { -- | Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for that version. Each version can be specified only once, but some versions in the service may not have any traffic allocation. Services that have traffic allocated cannot be deleted until either the service is deleted or their traffic allocation is removed. Allocations must sum to 1. Up to two decimal place precision is supported for IP-based splits and up to three decimal places is supported for cookie-based splits.
    allocations :: (Core.Maybe TrafficSplit_Allocations),
    -- | Mechanism used to determine which version a request is sent to. The traffic selection algorithm will be stable for either type until allocations are changed.
    shardBy :: (Core.Maybe TrafficSplit_ShardBy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrafficSplit' with the minimum fields required to make a request.
newTrafficSplit ::
  TrafficSplit
newTrafficSplit =
  TrafficSplit {allocations = Core.Nothing, shardBy = Core.Nothing}

instance Core.FromJSON TrafficSplit where
  parseJSON =
    Core.withObject
      "TrafficSplit"
      ( \o ->
          TrafficSplit
            Core.<$> (o Core..:? "allocations")
            Core.<*> (o Core..:? "shardBy")
      )

instance Core.ToJSON TrafficSplit where
  toJSON TrafficSplit {..} =
    Core.object
      ( Core.catMaybes
          [ ("allocations" Core..=) Core.<$> allocations,
            ("shardBy" Core..=) Core.<$> shardBy
          ]
      )

-- | Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for that version. Each version can be specified only once, but some versions in the service may not have any traffic allocation. Services that have traffic allocated cannot be deleted until either the service is deleted or their traffic allocation is removed. Allocations must sum to 1. Up to two decimal place precision is supported for IP-based splits and up to three decimal places is supported for cookie-based splits.
--
-- /See:/ 'newTrafficSplit_Allocations' smart constructor.
newtype TrafficSplit_Allocations = TrafficSplit_Allocations
  { additional :: (Core.HashMap Core.Text Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrafficSplit_Allocations' with the minimum fields required to make a request.
newTrafficSplit_Allocations ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Double ->
  TrafficSplit_Allocations
newTrafficSplit_Allocations additional =
  TrafficSplit_Allocations {additional = additional}

instance Core.FromJSON TrafficSplit_Allocations where
  parseJSON =
    Core.withObject
      "TrafficSplit_Allocations"
      (\o -> TrafficSplit_Allocations Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON TrafficSplit_Allocations where
  toJSON TrafficSplit_Allocations {..} = Core.toJSON additional

-- | Rules to match an HTTP request and dispatch that request to a service.
--
-- /See:/ 'newUrlDispatchRule' smart constructor.
data UrlDispatchRule = UrlDispatchRule
  { -- | Domain name to match against. The wildcard \"/\" is supported if specified before a period: \"/.\".Defaults to matching all domains: \"*\".
    domain :: (Core.Maybe Core.Text),
    -- | Pathname within the host. Must start with a \"\/\". A single \"*\" can be included at the end of the path.The sum of the lengths of the domain and path may not exceed 100 characters.
    path :: (Core.Maybe Core.Text),
    -- | Resource ID of a service in this application that should serve the matched request. The service must already exist. Example: default.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlDispatchRule' with the minimum fields required to make a request.
newUrlDispatchRule ::
  UrlDispatchRule
newUrlDispatchRule =
  UrlDispatchRule
    { domain = Core.Nothing,
      path = Core.Nothing,
      service = Core.Nothing
    }

instance Core.FromJSON UrlDispatchRule where
  parseJSON =
    Core.withObject
      "UrlDispatchRule"
      ( \o ->
          UrlDispatchRule
            Core.<$> (o Core..:? "domain")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON UrlDispatchRule where
  toJSON UrlDispatchRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("domain" Core..=) Core.<$> domain,
            ("path" Core..=) Core.<$> path,
            ("service" Core..=) Core.<$> service
          ]
      )

-- | URL pattern and description of how the URL should be handled. App Engine can handle URLs by executing application code or by serving static files uploaded with the version, such as images, CSS, or JavaScript.
--
-- /See:/ 'newUrlMap' smart constructor.
data UrlMap = UrlMap
  { -- | Uses API Endpoints to handle requests.
    apiEndpoint :: (Core.Maybe ApiEndpointHandler),
    -- | Action to take when users access resources that require authentication. Defaults to redirect.
    authFailAction :: (Core.Maybe UrlMap_AuthFailAction),
    -- | Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
    login :: (Core.Maybe UrlMap_Login),
    -- | 30x code to use when performing redirects for the secure field. Defaults to 302.
    redirectHttpResponseCode :: (Core.Maybe UrlMap_RedirectHttpResponseCode),
    -- | Executes a script to handle the requests that match this URL pattern. Only the auto value is supported for Node.js in the App Engine standard environment, for example \"script\": \"auto\".
    script :: (Core.Maybe ScriptHandler),
    -- | Security (HTTPS) enforcement for this URL.
    securityLevel :: (Core.Maybe UrlMap_SecurityLevel),
    -- | Returns the contents of a file, such as an image, as the response.
    staticFiles :: (Core.Maybe StaticFilesHandler),
    -- | URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings. All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
    urlRegex :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlMap' with the minimum fields required to make a request.
newUrlMap ::
  UrlMap
newUrlMap =
  UrlMap
    { apiEndpoint = Core.Nothing,
      authFailAction = Core.Nothing,
      login = Core.Nothing,
      redirectHttpResponseCode = Core.Nothing,
      script = Core.Nothing,
      securityLevel = Core.Nothing,
      staticFiles = Core.Nothing,
      urlRegex = Core.Nothing
    }

instance Core.FromJSON UrlMap where
  parseJSON =
    Core.withObject
      "UrlMap"
      ( \o ->
          UrlMap
            Core.<$> (o Core..:? "apiEndpoint")
            Core.<*> (o Core..:? "authFailAction")
            Core.<*> (o Core..:? "login")
            Core.<*> (o Core..:? "redirectHttpResponseCode")
            Core.<*> (o Core..:? "script")
            Core.<*> (o Core..:? "securityLevel")
            Core.<*> (o Core..:? "staticFiles")
            Core.<*> (o Core..:? "urlRegex")
      )

instance Core.ToJSON UrlMap where
  toJSON UrlMap {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiEndpoint" Core..=) Core.<$> apiEndpoint,
            ("authFailAction" Core..=) Core.<$> authFailAction,
            ("login" Core..=) Core.<$> login,
            ("redirectHttpResponseCode" Core..=)
              Core.<$> redirectHttpResponseCode,
            ("script" Core..=) Core.<$> script,
            ("securityLevel" Core..=) Core.<$> securityLevel,
            ("staticFiles" Core..=) Core.<$> staticFiles,
            ("urlRegex" Core..=) Core.<$> urlRegex
          ]
      )

-- | A Version resource is a specific set of source code and configuration files that are deployed into a service.
--
-- /See:/ 'newVersion' smart constructor.
data Version = Version
  { -- | Serving configuration for Google Cloud Endpoints (https:\/\/cloud.google.com\/endpoints).Only returned in GET requests if view=FULL is set.
    apiConfig :: (Core.Maybe ApiConfigHandler),
    -- | Allows App Engine second generation runtimes to access the legacy bundled services.
    appEngineApis :: (Core.Maybe Core.Bool),
    -- | Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.
    automaticScaling :: (Core.Maybe AutomaticScaling),
    -- | A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
    basicScaling :: (Core.Maybe BasicScaling),
    -- | Metadata settings that are supplied to this version to enable beta runtime features.
    betaSettings :: (Core.Maybe Version_BetaSettings),
    -- | Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
    buildEnvVariables :: (Core.Maybe Version_BuildEnvVariables),
    -- | Time that this version was created.\@OutputOnly
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Email address of the user who created this version.\@OutputOnly
    createdBy :: (Core.Maybe Core.Text),
    -- | Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.
    defaultExpiration :: (Core.Maybe Core.Duration),
    -- | Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.
    deployment :: (Core.Maybe Deployment),
    -- | Output only. Total size in bytes of all the files that are included in this version and currently hosted on the App Engine disk.\@OutputOnly
    diskUsageBytes :: (Core.Maybe Core.Int64),
    -- | Cloud Endpoints configuration.If endpoints/api/service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.
    endpointsApiService :: (Core.Maybe EndpointsApiService),
    -- | The entrypoint for the application.
    entrypoint :: (Core.Maybe Entrypoint),
    -- | App Engine execution environment for this version.Defaults to standard.
    env :: (Core.Maybe Core.Text),
    -- | Environment variables available to the application.Only returned in GET requests if view=FULL is set.
    envVariables :: (Core.Maybe Version_EnvVariables),
    -- | Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.
    errorHandlers :: (Core.Maybe [ErrorHandler]),
    -- | Settings for App Engine flexible runtimes.
    flexibleRuntimeSettings :: (Core.Maybe FlexibleRuntimeSettings),
    -- | Additional Google Generated Customer Metadata, this field won\'t be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
    generatedCustomerMetadata :: (Core.Maybe Version_GeneratedCustomerMetadata),
    -- | An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.
    handlers :: (Core.Maybe [UrlMap]),
    -- | Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.
    healthCheck :: (Core.Maybe HealthCheck),
    -- | Relative name of the version within the service. Example: v1. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names: \"default\", \"latest\", and any name with the prefix \"ah-\".
    id :: (Core.Maybe Core.Text),
    -- | Before an application can receive email or XMPP messages, the application must be configured to enable the service.
    inboundServices :: (Core.Maybe [Version_InboundServicesItem]),
    -- | Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4/1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4/1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.
    instanceClass :: (Core.Maybe Core.Text),
    -- | Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.
    libraries :: (Core.Maybe [Library]),
    -- | Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instances
    livenessCheck :: (Core.Maybe LivenessCheck),
    -- | A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as \"backends\".
    manualScaling :: (Core.Maybe ManualScaling),
    -- | Output only. Full path to the Version resource in the API. Example: apps\/myapp\/services\/default\/versions\/v1.\@OutputOnly
    name :: (Core.Maybe Core.Text),
    -- | Extra network settings. Only applicable in the App Engine flexible environment.
    network :: (Core.Maybe Network),
    -- | Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.
    nobuildFilesRegex :: (Core.Maybe Core.Text),
    -- | Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
    readinessCheck :: (Core.Maybe ReadinessCheck),
    -- | Machine resources for this version. Only applicable in the App Engine flexible environment.
    resources :: (Core.Maybe Resources),
    -- | Desired runtime. Example: python27.
    runtime :: (Core.Maybe Core.Text),
    -- | The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https:\/\/cloud.google.com\/appengine\/docs\/standard\/\/config\/appref
    runtimeApiVersion :: (Core.Maybe Core.Text),
    -- | The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.
    runtimeChannel :: (Core.Maybe Core.Text),
    -- | The path or name of the app\'s main executable.
    runtimeMainExecutablePath :: (Core.Maybe Core.Text),
    -- | The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING/STATUS/UNSPECIFIED is an invalid value. Defaults to SERVING.
    servingStatus :: (Core.Maybe Version_ServingStatus),
    -- | Whether multiple requests can be dispatched to this version at once.
    threadsafe :: (Core.Maybe Core.Bool),
    -- | Output only. Serving URL for this version. Example: \"https:\/\/myversion-dot-myservice-dot-myapp.appspot.com\"\@OutputOnly
    versionUrl :: (Core.Maybe Core.Text),
    -- | Whether to deploy this version in a container on a virtual machine.
    vm :: (Core.Maybe Core.Bool),
    -- | Enables VPC connectivity for standard apps.
    vpcAccessConnector :: (Core.Maybe VpcAccessConnector),
    -- | The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.
    zones :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Version' with the minimum fields required to make a request.
newVersion ::
  Version
newVersion =
  Version
    { apiConfig = Core.Nothing,
      appEngineApis = Core.Nothing,
      automaticScaling = Core.Nothing,
      basicScaling = Core.Nothing,
      betaSettings = Core.Nothing,
      buildEnvVariables = Core.Nothing,
      createTime = Core.Nothing,
      createdBy = Core.Nothing,
      defaultExpiration = Core.Nothing,
      deployment = Core.Nothing,
      diskUsageBytes = Core.Nothing,
      endpointsApiService = Core.Nothing,
      entrypoint = Core.Nothing,
      env = Core.Nothing,
      envVariables = Core.Nothing,
      errorHandlers = Core.Nothing,
      flexibleRuntimeSettings = Core.Nothing,
      generatedCustomerMetadata = Core.Nothing,
      handlers = Core.Nothing,
      healthCheck = Core.Nothing,
      id = Core.Nothing,
      inboundServices = Core.Nothing,
      instanceClass = Core.Nothing,
      libraries = Core.Nothing,
      livenessCheck = Core.Nothing,
      manualScaling = Core.Nothing,
      name = Core.Nothing,
      network = Core.Nothing,
      nobuildFilesRegex = Core.Nothing,
      readinessCheck = Core.Nothing,
      resources = Core.Nothing,
      runtime = Core.Nothing,
      runtimeApiVersion = Core.Nothing,
      runtimeChannel = Core.Nothing,
      runtimeMainExecutablePath = Core.Nothing,
      serviceAccount = Core.Nothing,
      servingStatus = Core.Nothing,
      threadsafe = Core.Nothing,
      versionUrl = Core.Nothing,
      vm = Core.Nothing,
      vpcAccessConnector = Core.Nothing,
      zones = Core.Nothing
    }

instance Core.FromJSON Version where
  parseJSON =
    Core.withObject
      "Version"
      ( \o ->
          Version
            Core.<$> (o Core..:? "apiConfig")
            Core.<*> (o Core..:? "appEngineApis")
            Core.<*> (o Core..:? "automaticScaling")
            Core.<*> (o Core..:? "basicScaling")
            Core.<*> (o Core..:? "betaSettings")
            Core.<*> (o Core..:? "buildEnvVariables")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "createdBy")
            Core.<*> (o Core..:? "defaultExpiration")
            Core.<*> (o Core..:? "deployment")
            Core.<*> (o Core..:? "diskUsageBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "endpointsApiService")
            Core.<*> (o Core..:? "entrypoint")
            Core.<*> (o Core..:? "env")
            Core.<*> (o Core..:? "envVariables")
            Core.<*> (o Core..:? "errorHandlers")
            Core.<*> (o Core..:? "flexibleRuntimeSettings")
            Core.<*> (o Core..:? "generatedCustomerMetadata")
            Core.<*> (o Core..:? "handlers")
            Core.<*> (o Core..:? "healthCheck")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "inboundServices")
            Core.<*> (o Core..:? "instanceClass")
            Core.<*> (o Core..:? "libraries")
            Core.<*> (o Core..:? "livenessCheck")
            Core.<*> (o Core..:? "manualScaling")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "nobuildFilesRegex")
            Core.<*> (o Core..:? "readinessCheck")
            Core.<*> (o Core..:? "resources")
            Core.<*> (o Core..:? "runtime")
            Core.<*> (o Core..:? "runtimeApiVersion")
            Core.<*> (o Core..:? "runtimeChannel")
            Core.<*> (o Core..:? "runtimeMainExecutablePath")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "servingStatus")
            Core.<*> (o Core..:? "threadsafe")
            Core.<*> (o Core..:? "versionUrl")
            Core.<*> (o Core..:? "vm")
            Core.<*> (o Core..:? "vpcAccessConnector")
            Core.<*> (o Core..:? "zones")
      )

instance Core.ToJSON Version where
  toJSON Version {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiConfig" Core..=) Core.<$> apiConfig,
            ("appEngineApis" Core..=) Core.<$> appEngineApis,
            ("automaticScaling" Core..=) Core.<$> automaticScaling,
            ("basicScaling" Core..=) Core.<$> basicScaling,
            ("betaSettings" Core..=) Core.<$> betaSettings,
            ("buildEnvVariables" Core..=) Core.<$> buildEnvVariables,
            ("createTime" Core..=) Core.<$> createTime,
            ("createdBy" Core..=) Core.<$> createdBy,
            ("defaultExpiration" Core..=) Core.<$> defaultExpiration,
            ("deployment" Core..=) Core.<$> deployment,
            ("diskUsageBytes" Core..=)
              Core.. Core.AsText
              Core.<$> diskUsageBytes,
            ("endpointsApiService" Core..=) Core.<$> endpointsApiService,
            ("entrypoint" Core..=) Core.<$> entrypoint,
            ("env" Core..=) Core.<$> env,
            ("envVariables" Core..=) Core.<$> envVariables,
            ("errorHandlers" Core..=) Core.<$> errorHandlers,
            ("flexibleRuntimeSettings" Core..=)
              Core.<$> flexibleRuntimeSettings,
            ("generatedCustomerMetadata" Core..=)
              Core.<$> generatedCustomerMetadata,
            ("handlers" Core..=) Core.<$> handlers,
            ("healthCheck" Core..=) Core.<$> healthCheck,
            ("id" Core..=) Core.<$> id,
            ("inboundServices" Core..=) Core.<$> inboundServices,
            ("instanceClass" Core..=) Core.<$> instanceClass,
            ("libraries" Core..=) Core.<$> libraries,
            ("livenessCheck" Core..=) Core.<$> livenessCheck,
            ("manualScaling" Core..=) Core.<$> manualScaling,
            ("name" Core..=) Core.<$> name,
            ("network" Core..=) Core.<$> network,
            ("nobuildFilesRegex" Core..=) Core.<$> nobuildFilesRegex,
            ("readinessCheck" Core..=) Core.<$> readinessCheck,
            ("resources" Core..=) Core.<$> resources,
            ("runtime" Core..=) Core.<$> runtime,
            ("runtimeApiVersion" Core..=) Core.<$> runtimeApiVersion,
            ("runtimeChannel" Core..=) Core.<$> runtimeChannel,
            ("runtimeMainExecutablePath" Core..=)
              Core.<$> runtimeMainExecutablePath,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("servingStatus" Core..=) Core.<$> servingStatus,
            ("threadsafe" Core..=) Core.<$> threadsafe,
            ("versionUrl" Core..=) Core.<$> versionUrl,
            ("vm" Core..=) Core.<$> vm,
            ("vpcAccessConnector" Core..=) Core.<$> vpcAccessConnector,
            ("zones" Core..=) Core.<$> zones
          ]
      )

-- | Metadata settings that are supplied to this version to enable beta runtime features.
--
-- /See:/ 'newVersion_BetaSettings' smart constructor.
newtype Version_BetaSettings = Version_BetaSettings
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Version_BetaSettings' with the minimum fields required to make a request.
newVersion_BetaSettings ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Version_BetaSettings
newVersion_BetaSettings additional =
  Version_BetaSettings {additional = additional}

instance Core.FromJSON Version_BetaSettings where
  parseJSON =
    Core.withObject
      "Version_BetaSettings"
      (\o -> Version_BetaSettings Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Version_BetaSettings where
  toJSON Version_BetaSettings {..} = Core.toJSON additional

-- | Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.
--
-- /See:/ 'newVersion_BuildEnvVariables' smart constructor.
newtype Version_BuildEnvVariables = Version_BuildEnvVariables
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Version_BuildEnvVariables' with the minimum fields required to make a request.
newVersion_BuildEnvVariables ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Version_BuildEnvVariables
newVersion_BuildEnvVariables additional =
  Version_BuildEnvVariables {additional = additional}

instance Core.FromJSON Version_BuildEnvVariables where
  parseJSON =
    Core.withObject
      "Version_BuildEnvVariables"
      ( \o ->
          Version_BuildEnvVariables Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Version_BuildEnvVariables where
  toJSON Version_BuildEnvVariables {..} = Core.toJSON additional

-- | Environment variables available to the application.Only returned in GET requests if view=FULL is set.
--
-- /See:/ 'newVersion_EnvVariables' smart constructor.
newtype Version_EnvVariables = Version_EnvVariables
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Version_EnvVariables' with the minimum fields required to make a request.
newVersion_EnvVariables ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Version_EnvVariables
newVersion_EnvVariables additional =
  Version_EnvVariables {additional = additional}

instance Core.FromJSON Version_EnvVariables where
  parseJSON =
    Core.withObject
      "Version_EnvVariables"
      (\o -> Version_EnvVariables Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Version_EnvVariables where
  toJSON Version_EnvVariables {..} = Core.toJSON additional

-- | Additional Google Generated Customer Metadata, this field won\'t be provided by default and can be requested by setting the IncludeExtraData field in GetVersionRequest
--
-- /See:/ 'newVersion_GeneratedCustomerMetadata' smart constructor.
newtype Version_GeneratedCustomerMetadata = Version_GeneratedCustomerMetadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Version_GeneratedCustomerMetadata' with the minimum fields required to make a request.
newVersion_GeneratedCustomerMetadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Version_GeneratedCustomerMetadata
newVersion_GeneratedCustomerMetadata additional =
  Version_GeneratedCustomerMetadata {additional = additional}

instance Core.FromJSON Version_GeneratedCustomerMetadata where
  parseJSON =
    Core.withObject
      "Version_GeneratedCustomerMetadata"
      ( \o ->
          Version_GeneratedCustomerMetadata
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Version_GeneratedCustomerMetadata where
  toJSON Version_GeneratedCustomerMetadata {..} =
    Core.toJSON additional

-- | Volumes mounted within the app container. Only applicable in the App Engine flexible environment.
--
-- /See:/ 'newVolume' smart constructor.
data Volume = Volume
  { -- | Unique name for the volume.
    name :: (Core.Maybe Core.Text),
    -- | Volume size in gigabytes.
    sizeGb :: (Core.Maybe Core.Double),
    -- | Underlying volume type, e.g. \'tmpfs\'.
    volumeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume' with the minimum fields required to make a request.
newVolume ::
  Volume
newVolume =
  Volume
    { name = Core.Nothing,
      sizeGb = Core.Nothing,
      volumeType = Core.Nothing
    }

instance Core.FromJSON Volume where
  parseJSON =
    Core.withObject
      "Volume"
      ( \o ->
          Volume
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "sizeGb")
            Core.<*> (o Core..:? "volumeType")
      )

instance Core.ToJSON Volume where
  toJSON Volume {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("sizeGb" Core..=) Core.<$> sizeGb,
            ("volumeType" Core..=) Core.<$> volumeType
          ]
      )

-- | VPC access connector specification.
--
-- /See:/ 'newVpcAccessConnector' smart constructor.
data VpcAccessConnector = VpcAccessConnector
  { -- | The egress setting for the connector, controlling what traffic is diverted through it.
    egressSetting :: (Core.Maybe VpcAccessConnector_EgressSetting),
    -- | Full Serverless VPC Access Connector name e.g. projects\/my-project\/locations\/us-central1\/connectors\/c1.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VpcAccessConnector' with the minimum fields required to make a request.
newVpcAccessConnector ::
  VpcAccessConnector
newVpcAccessConnector =
  VpcAccessConnector
    { egressSetting = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON VpcAccessConnector where
  parseJSON =
    Core.withObject
      "VpcAccessConnector"
      ( \o ->
          VpcAccessConnector
            Core.<$> (o Core..:? "egressSetting")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON VpcAccessConnector where
  toJSON VpcAccessConnector {..} =
    Core.object
      ( Core.catMaybes
          [ ("egressSetting" Core..=) Core.<$> egressSetting,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | The zip file information for a zip deployment.
--
-- /See:/ 'newZipInfo' smart constructor.
data ZipInfo = ZipInfo
  { -- | An estimate of the number of files in a zip for a zip deployment. If set, must be greater than or equal to the actual number of files. Used for optimizing performance; if not provided, deployment may be slow.
    filesCount :: (Core.Maybe Core.Int32),
    -- | URL of the zip file to deploy from. Must be a URL to a resource in Google Cloud Storage in the form \'http(s):\/\/storage.googleapis.com\/\/\'.
    sourceUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ZipInfo' with the minimum fields required to make a request.
newZipInfo ::
  ZipInfo
newZipInfo =
  ZipInfo {filesCount = Core.Nothing, sourceUrl = Core.Nothing}

instance Core.FromJSON ZipInfo where
  parseJSON =
    Core.withObject
      "ZipInfo"
      ( \o ->
          ZipInfo
            Core.<$> (o Core..:? "filesCount")
            Core.<*> (o Core..:? "sourceUrl")
      )

instance Core.ToJSON ZipInfo where
  toJSON ZipInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("filesCount" Core..=) Core.<$> filesCount,
            ("sourceUrl" Core..=) Core.<$> sourceUrl
          ]
      )
