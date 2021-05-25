{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppEngine.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngine.Types
    (
    -- * Service Configuration
      appEngineService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , appEngineAdminScope
    , cloudPlatformScope

    -- * ApplicationServingStatus
    , ApplicationServingStatus (..)

    -- * AppsAuthorizedCertificatesListView
    , AppsAuthorizedCertificatesListView (..)

    -- * VersionInboundServicesItem
    , VersionInboundServicesItem (..)

    -- * URLMapLogin
    , URLMapLogin (..)

    -- * NetworkUtilization
    , NetworkUtilization
    , networkUtilization
    , nuTargetReceivedBytesPerSecond
    , nuTargetSentPacketsPerSecond
    , nuTargetReceivedPacketsPerSecond
    , nuTargetSentBytesPerSecond

    -- * ManagedCertificateStatus
    , ManagedCertificateStatus (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * LocationSchema
    , LocationSchema
    , locationSchema
    , lsAddtional

    -- * AuthorizedDomain
    , AuthorizedDomain
    , authorizedDomain
    , adName
    , adId

    -- * InstanceVMLiveness
    , InstanceVMLiveness (..)

    -- * TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- * ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- * ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

    -- * URLMap
    , URLMap
    , urlMap
    , umScript
    , umSecurityLevel
    , umAPIEndpoint
    , umURLRegex
    , umRedirectHTTPResponseCode
    , umAuthFailAction
    , umStaticFiles
    , umLogin

    -- * Library
    , Library
    , library
    , lName
    , lVersion

    -- * ResourceRecord
    , ResourceRecord
    , resourceRecord
    , rrRrData
    , rrName
    , rrType

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * DiskUtilization
    , DiskUtilization
    , diskUtilization
    , duTargetReadBytesPerSecond
    , duTargetReadOpsPerSecond
    , duTargetWriteOpsPerSecond
    , duTargetWriteBytesPerSecond

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcDisableHealthCheck
    , hcCheckInterval
    , hcRestartThreshold
    , hcHost
    , hcTimeout
    , hcUnhealthyThreshold

    -- * AuthorizedCertificate
    , AuthorizedCertificate
    , authorizedCertificate
    , acManagedCertificate
    , acCertificateRawData
    , acDomainNames
    , acDomainMAppingsCount
    , acName
    , acDisplayName
    , acId
    , acExpireTime
    , acVisibleDomainMAppings

    -- * VPCAccessConnector
    , VPCAccessConnector
    , vpcAccessConnector
    , vacName
    , vacEgressSetting

    -- * APIConfigHandler
    , APIConfigHandler
    , apiConfigHandler
    , achScript
    , achSecurityLevel
    , achURL
    , achAuthFailAction
    , achLogin

    -- * VersionEnvVariables
    , VersionEnvVariables
    , versionEnvVariables
    , vevAddtional

    -- * APIConfigHandlerSecurityLevel
    , APIConfigHandlerSecurityLevel (..)

    -- * Application
    , Application
    , application
    , aDefaultHostname
    , aDefaultCookieExpiration
    , aIap
    , aAuthDomain
    , aCodeBucket
    , aGcrDomain
    , aFeatureSettings
    , aName
    , aDatabaseType
    , aDispatchRules
    , aDefaultBucket
    , aId
    , aLocationId
    , aServingStatus

    -- * VersionBetaSettings
    , VersionBetaSettings
    , versionBetaSettings
    , vbsAddtional

    -- * Service
    , Service
    , service
    , sSplit
    , sName
    , sId
    , sNetworkSettings

    -- * ErrorHandlerErrorCode
    , ErrorHandlerErrorCode (..)

    -- * EndpointsAPIService
    , EndpointsAPIService
    , endpointsAPIService
    , easDisableTraceSampling
    , easName
    , easConfigId
    , easRolloutStrategy

    -- * Location
    , Location
    , location
    , locName
    , locMetadata
    , locDisplayName
    , locLabels
    , locLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * EndpointsAPIServiceRolloutStrategy
    , EndpointsAPIServiceRolloutStrategy (..)

    -- * ZipInfo
    , ZipInfo
    , zipInfo
    , ziFilesCount
    , ziSourceURL

    -- * Empty
    , Empty
    , empty

    -- * URLDispatchRule
    , URLDispatchRule
    , urlDispatchRule
    , udrPath
    , udrService
    , udrDomain

    -- * OperationMetadataV1Beta
    , OperationMetadataV1Beta
    , operationMetadataV1Beta
    , omvbEphemeralMessage
    , omvbInsertTime
    , omvbUser
    , omvbMethod
    , omvbEndTime
    , omvbWarning
    , omvbCreateVersionMetadata
    , omvbTarget

    -- * ListAuthorizedDomainsResponse
    , ListAuthorizedDomainsResponse
    , listAuthorizedDomainsResponse
    , ladrNextPageToken
    , ladrDomains

    -- * Entrypoint
    , Entrypoint
    , entrypoint
    , eShell

    -- * ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- * ManagedCertificate
    , ManagedCertificate
    , managedCertificate
    , mcStatus
    , mcLastRenewalTime

    -- * CreateVersionMetadataV1Alpha
    , CreateVersionMetadataV1Alpha
    , createVersionMetadataV1Alpha
    , cvmvaCloudBuildId

    -- * AppsAuthorizedCertificatesGetView
    , AppsAuthorizedCertificatesGetView (..)

    -- * FileInfo
    , FileInfo
    , fileInfo
    , fiSha1Sum
    , fiMimeType
    , fiSourceURL

    -- * AutomaticScaling
    , AutomaticScaling
    , automaticScaling
    , asNetworkUtilization
    , asMaxTotalInstances
    , asMinIdleInstances
    , asDiskUtilization
    , asMinPendingLatency
    , asCPUUtilization
    , asMaxIdleInstances
    , asMinTotalInstances
    , asMaxConcurrentRequests
    , asCoolDownPeriod
    , asRequestUtilization
    , asMaxPendingLatency
    , asStandardSchedulerSettings

    -- * Volume
    , Volume
    , volume
    , vSizeGb
    , vName
    , vVolumeType

    -- * APIEndpointHandler
    , APIEndpointHandler
    , apiEndpointHandler
    , aehScriptPath

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * ListIngressRulesResponse
    , ListIngressRulesResponse
    , listIngressRulesResponse
    , lirrNextPageToken
    , lirrIngressRules

    -- * Network
    , Network
    , network
    , nSessionAffinity
    , nSubnetworkName
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- * AppsServicesVersionsGetView
    , AppsServicesVersionsGetView (..)

    -- * APIConfigHandlerAuthFailAction
    , APIConfigHandlerAuthFailAction (..)

    -- * ReadinessCheck
    , ReadinessCheck
    , readinessCheck
    , rcSuccessThreshold
    , rcFailureThreshold
    , rcPath
    , rcCheckInterval
    , rcAppStartTimeout
    , rcHost
    , rcTimeout

    -- * BatchUpdateIngressRulesRequest
    , BatchUpdateIngressRulesRequest
    , batchUpdateIngressRulesRequest
    , buirrIngressRules

    -- * DebugInstanceRequest
    , DebugInstanceRequest
    , debugInstanceRequest
    , dirSSHKey

    -- * StaticFilesHandlerHTTPHeaders
    , StaticFilesHandlerHTTPHeaders
    , staticFilesHandlerHTTPHeaders
    , sfhhttphAddtional

    -- * Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rKmsKeyReference
    , rVolumes
    , rCPU

    -- * FeatureSettings
    , FeatureSettings
    , featureSettings
    , fsUseContainerOptimizedOS
    , fsSplitHealthChecks

    -- * CertificateRawData
    , CertificateRawData
    , certificateRawData
    , crdPrivateKey
    , crdPublicCertificate

    -- * NetworkSettingsIngressTrafficAllowed
    , NetworkSettingsIngressTrafficAllowed (..)

    -- * DomainMApping
    , DomainMApping
    , domainMApping
    , dmaResourceRecords
    , dmaName
    , dmaId
    , dmaSSLSettings

    -- * VersionServingStatus
    , VersionServingStatus (..)

    -- * DeploymentFiles
    , DeploymentFiles
    , deploymentFiles
    , dfAddtional

    -- * BatchUpdateIngressRulesResponse
    , BatchUpdateIngressRulesResponse
    , batchUpdateIngressRulesResponse
    , bIngressRules

    -- * CPUUtilization
    , CPUUtilization
    , cpuUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- * VersionBuildEnvVariables
    , VersionBuildEnvVariables
    , versionBuildEnvVariables
    , vbevAddtional

    -- * CreateVersionMetadataV1
    , CreateVersionMetadataV1
    , createVersionMetadataV1
    , cvmvCloudBuildId

    -- * TrafficSplitAllocations
    , TrafficSplitAllocations
    , trafficSplitAllocations
    , tsaAddtional

    -- * CloudBuildOptions
    , CloudBuildOptions
    , cloudBuildOptions
    , cboCloudBuildTimeout
    , cboAppYamlPath

    -- * ApplicationDatabaseType
    , ApplicationDatabaseType (..)

    -- * ManualScaling
    , ManualScaling
    , manualScaling
    , msInstances

    -- * BasicScaling
    , BasicScaling
    , basicScaling
    , bsMaxInstances
    , bsIdleTimeout

    -- * URLMapSecurityLevel
    , URLMapSecurityLevel (..)

    -- * ResourceRecordType
    , ResourceRecordType (..)

    -- * OperationMetadataV1
    , OperationMetadataV1
    , operationMetadataV1
    , omvEphemeralMessage
    , omvInsertTime
    , omvUser
    , omvMethod
    , omvEndTime
    , omvWarning
    , omvCreateVersionMetadata
    , omvTarget

    -- * Version
    , Version
    , version
    , verRuntime
    , verNobuildFilesRegex
    , verInstanceClass
    , verRuntimeChannel
    , verRuntimeMainExecutablePath
    , verVPCAccessConnector
    , verHealthCheck
    , verEndpointsAPIService
    , verEnv
    , verZones
    , verEntrypoint
    , verDefaultExpiration
    , verAutomaticScaling
    , verErrorHandlers
    , verCreatedBy
    , verVM
    , verHandlers
    , verInboundServices
    , verReadinessCheck
    , verNetwork
    , verResources
    , verServiceAccount
    , verName
    , verThreadsafe
    , verBetaSettings
    , verBasicScaling
    , verManualScaling
    , verAPIConfig
    , verId
    , verEnvVariables
    , verLivenessCheck
    , verBuildEnvVariables
    , verRuntimeAPIVersion
    , verServingStatus
    , verDiskUsageBytes
    , verCreateTime
    , verLibraries
    , verVersionURL
    , verDeployment

    -- * AppsServicesVersionsListView
    , AppsServicesVersionsListView (..)

    -- * Xgafv
    , Xgafv (..)

    -- * IdentityAwareProxy
    , IdentityAwareProxy
    , identityAwareProxy
    , iapEnabled
    , iapOAuth2ClientSecretSha256
    , iapOAuth2ClientSecret
    , iapOAuth2ClientId

    -- * StaticFilesHandler
    , StaticFilesHandler
    , staticFilesHandler
    , sfhHTTPHeaders
    , sfhPath
    , sfhRequireMatchingFile
    , sfhExpiration
    , sfhMimeType
    , sfhApplicationReadable
    , sfhUploadPathRegex

    -- * ErrorHandler
    , ErrorHandler
    , errorHandler
    , ehMimeType
    , ehErrorCode
    , ehStaticFile

    -- * TrafficSplitShardBy
    , TrafficSplitShardBy (..)

    -- * InstanceAvailability
    , InstanceAvailability (..)

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * ListAuthorizedCertificatesResponse
    , ListAuthorizedCertificatesResponse
    , listAuthorizedCertificatesResponse
    , lacrNextPageToken
    , lacrCertificates

    -- * FirewallRule
    , FirewallRule
    , firewallRule
    , frPriority
    , frAction
    , frSourceRange
    , frDescription

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmStandardEnvironmentAvailable
    , lmSearchAPIAvailable
    , lmFlexibleEnvironmentAvailable

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * GoogleAppEngineV1betaLocationMetadata
    , GoogleAppEngineV1betaLocationMetadata
    , googleAppEngineV1betaLocationMetadata
    , gaevlmStandardEnvironmentAvailable
    , gaevlmSearchAPIAvailable
    , gaevlmFlexibleEnvironmentAvailable

    -- * URLMapAuthFailAction
    , URLMapAuthFailAction (..)

    -- * ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirInstances

    -- * OperationMetadataV1Alpha
    , OperationMetadataV1Alpha
    , operationMetadataV1Alpha
    , omvaEphemeralMessage
    , omvaInsertTime
    , omvaUser
    , omvaMethod
    , omvaEndTime
    , omvaWarning
    , omvaCreateVersionMetadata
    , omvaTarget

    -- * LivenessCheck
    , LivenessCheck
    , livenessCheck
    , lcSuccessThreshold
    , lcFailureThreshold
    , lcPath
    , lcCheckInterval
    , lcHost
    , lcInitialDelay
    , lcTimeout

    -- * URLMapRedirectHTTPResponseCode
    , URLMapRedirectHTTPResponseCode (..)

    -- * NetworkSettings
    , NetworkSettings
    , networkSettings
    , nsIngressTrafficAllowed

    -- * RequestUtilization
    , RequestUtilization
    , requestUtilization
    , ruTargetConcurrentRequests
    , ruTargetRequestCountPerSecond

    -- * AppsDomainMAppingsCreateOverrideStrategy
    , AppsDomainMAppingsCreateOverrideStrategy (..)

    -- * FirewallRuleAction
    , FirewallRuleAction (..)

    -- * SSLSettingsSSLManagementType
    , SSLSettingsSSLManagementType (..)

    -- * RepairApplicationRequest
    , RepairApplicationRequest
    , repairApplicationRequest

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * CreateVersionMetadataV1Beta
    , CreateVersionMetadataV1Beta
    , createVersionMetadataV1Beta
    , cvmvbCloudBuildId

    -- * ListDomainMAppingsResponse
    , ListDomainMAppingsResponse
    , listDomainMAppingsResponse
    , ldmarDomainMAppings
    , ldmarNextPageToken

    -- * StandardSchedulerSettings
    , StandardSchedulerSettings
    , standardSchedulerSettings
    , sssTargetCPUUtilization
    , sssMinInstances
    , sssMaxInstances
    , sssTargetThroughputUtilization

    -- * APIConfigHandlerLogin
    , APIConfigHandlerLogin (..)

    -- * VPCAccessConnectorEgressSetting
    , VPCAccessConnectorEgressSetting (..)

    -- * ContainerInfo
    , ContainerInfo
    , containerInfo
    , ciImage

    -- * Instance
    , Instance
    , instance'
    , iMemoryUsage
    , iVMStatus
    , iVMZoneName
    , iVMIP
    , iStartTime
    , iVMId
    , iVMLiveness
    , iAvailability
    , iVMName
    , iName
    , iVMDebugEnabled
    , iRequests
    , iQps
    , iId
    , iErrors
    , iAverageLatency
    , iAppEngineRelease

    -- * SSLSettings
    , SSLSettings
    , sslSettings
    , ssSSLManagementType
    , ssCertificateId
    , ssPendingManagedCertificateId

    -- * Deployment
    , Deployment
    , deployment
    , dZip
    , dCloudBuildOptions
    , dContainer
    , dFiles
    ) where

import Network.Google.AppEngine.Types.Product
import Network.Google.AppEngine.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the App Engine Admin API. This contains the host and root path used as a starting point for constructing service requests.
appEngineService :: ServiceConfig
appEngineService
  = defaultService (ServiceId "appengine:v1")
      "appengine.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | View and manage your applications deployed on Google App Engine
appEngineAdminScope :: Proxy '["https://www.googleapis.com/auth/appengine.admin"]
appEngineAdminScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
