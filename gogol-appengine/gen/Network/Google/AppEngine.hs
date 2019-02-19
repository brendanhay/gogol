{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppEngine
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provisions and manages developers\' App Engine applications.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference>
module Network.Google.AppEngine
    (
    -- * Service Configuration
      appEngineService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , appEngineAdminScope
    , cloudPlatformScope

    -- * API Declaration
    , AppEngineAPI

    -- * Resources

    -- ** appengine.apps.authorizedCertificates.create
    , module Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Create

    -- ** appengine.apps.authorizedCertificates.delete
    , module Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Delete

    -- ** appengine.apps.authorizedCertificates.get
    , module Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Get

    -- ** appengine.apps.authorizedCertificates.list
    , module Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.List

    -- ** appengine.apps.authorizedCertificates.patch
    , module Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Patch

    -- ** appengine.apps.authorizedDomains.list
    , module Network.Google.Resource.AppEngine.Apps.AuthorizedDomains.List

    -- ** appengine.apps.create
    , module Network.Google.Resource.AppEngine.Apps.Create

    -- ** appengine.apps.domainMappings.create
    , module Network.Google.Resource.AppEngine.Apps.DomainMAppings.Create

    -- ** appengine.apps.domainMappings.delete
    , module Network.Google.Resource.AppEngine.Apps.DomainMAppings.Delete

    -- ** appengine.apps.domainMappings.get
    , module Network.Google.Resource.AppEngine.Apps.DomainMAppings.Get

    -- ** appengine.apps.domainMappings.list
    , module Network.Google.Resource.AppEngine.Apps.DomainMAppings.List

    -- ** appengine.apps.domainMappings.patch
    , module Network.Google.Resource.AppEngine.Apps.DomainMAppings.Patch

    -- ** appengine.apps.firewall.ingressRules.batchUpdate
    , module Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.BatchUpdate

    -- ** appengine.apps.firewall.ingressRules.create
    , module Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Create

    -- ** appengine.apps.firewall.ingressRules.delete
    , module Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Delete

    -- ** appengine.apps.firewall.ingressRules.get
    , module Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Get

    -- ** appengine.apps.firewall.ingressRules.list
    , module Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.List

    -- ** appengine.apps.firewall.ingressRules.patch
    , module Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Patch

    -- ** appengine.apps.get
    , module Network.Google.Resource.AppEngine.Apps.Get

    -- ** appengine.apps.locations.get
    , module Network.Google.Resource.AppEngine.Apps.Locations.Get

    -- ** appengine.apps.locations.list
    , module Network.Google.Resource.AppEngine.Apps.Locations.List

    -- ** appengine.apps.operations.get
    , module Network.Google.Resource.AppEngine.Apps.Operations.Get

    -- ** appengine.apps.operations.list
    , module Network.Google.Resource.AppEngine.Apps.Operations.List

    -- ** appengine.apps.patch
    , module Network.Google.Resource.AppEngine.Apps.Patch

    -- ** appengine.apps.repair
    , module Network.Google.Resource.AppEngine.Apps.Repair

    -- ** appengine.apps.services.delete
    , module Network.Google.Resource.AppEngine.Apps.Services.Delete

    -- ** appengine.apps.services.get
    , module Network.Google.Resource.AppEngine.Apps.Services.Get

    -- ** appengine.apps.services.list
    , module Network.Google.Resource.AppEngine.Apps.Services.List

    -- ** appengine.apps.services.patch
    , module Network.Google.Resource.AppEngine.Apps.Services.Patch

    -- ** appengine.apps.services.versions.create
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Create

    -- ** appengine.apps.services.versions.delete
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Delete

    -- ** appengine.apps.services.versions.get
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Get

    -- ** appengine.apps.services.versions.instances.debug
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Debug

    -- ** appengine.apps.services.versions.instances.delete
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Delete

    -- ** appengine.apps.services.versions.instances.get
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Get

    -- ** appengine.apps.services.versions.instances.list
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.List

    -- ** appengine.apps.services.versions.list
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.List

    -- ** appengine.apps.services.versions.patch
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Patch

    -- * Types

    -- ** ApplicationServingStatus
    , ApplicationServingStatus (..)

    -- ** URLMapLogin
    , URLMapLogin (..)

    -- ** NetworkUtilization
    , NetworkUtilization
    , networkUtilization
    , nuTargetReceivedBytesPerSecond
    , nuTargetSentPacketsPerSecond
    , nuTargetReceivedPacketsPerSecond
    , nuTargetSentBytesPerSecond

    -- ** ManagedCertificateStatus
    , ManagedCertificateStatus (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- ** LocationSchema
    , LocationSchema
    , locationSchema
    , lsAddtional

    -- ** AuthorizedDomain
    , AuthorizedDomain
    , authorizedDomain
    , adName
    , adId

    -- ** TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- ** ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- ** ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

    -- ** URLMap
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

    -- ** Library
    , Library
    , library
    , lName
    , lVersion

    -- ** ResourceRecord
    , ResourceRecord
    , resourceRecord
    , rrRrData
    , rrName
    , rrType

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** DiskUtilization
    , DiskUtilization
    , diskUtilization
    , duTargetReadBytesPerSecond
    , duTargetReadOpsPerSecond
    , duTargetWriteOpsPerSecond
    , duTargetWriteBytesPerSecond

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcDisableHealthCheck
    , hcCheckInterval
    , hcRestartThreshold
    , hcHost
    , hcTimeout
    , hcUnhealthyThreshold

    -- ** AuthorizedCertificate
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

    -- ** APIConfigHandler
    , APIConfigHandler
    , apiConfigHandler
    , achScript
    , achSecurityLevel
    , achURL
    , achAuthFailAction
    , achLogin

    -- ** VersionEnvVariables
    , VersionEnvVariables
    , versionEnvVariables
    , vevAddtional

    -- ** APIConfigHandlerSecurityLevel
    , APIConfigHandlerSecurityLevel (..)

    -- ** Application
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
    , aDispatchRules
    , aDefaultBucket
    , aId
    , aLocationId
    , aServingStatus

    -- ** VersionBetaSettings
    , VersionBetaSettings
    , versionBetaSettings
    , vbsAddtional

    -- ** Service
    , Service
    , service
    , sSplit
    , sName
    , sId

    -- ** ErrorHandlerErrorCode
    , ErrorHandlerErrorCode (..)

    -- ** EndpointsAPIService
    , EndpointsAPIService
    , endpointsAPIService
    , easDisableTraceSampling
    , easName
    , easConfigId
    , easRolloutStrategy

    -- ** Location
    , Location
    , location
    , locName
    , locMetadata
    , locDisplayName
    , locLabels
    , locLocationId

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** EndpointsAPIServiceRolloutStrategy
    , EndpointsAPIServiceRolloutStrategy (..)

    -- ** ZipInfo
    , ZipInfo
    , zipInfo
    , ziFilesCount
    , ziSourceURL

    -- ** Empty
    , Empty
    , empty

    -- ** URLDispatchRule
    , URLDispatchRule
    , urlDispatchRule
    , udrPath
    , udrService
    , udrDomain

    -- ** OperationMetadataV1Beta
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

    -- ** ListAuthorizedDomainsResponse
    , ListAuthorizedDomainsResponse
    , listAuthorizedDomainsResponse
    , ladrNextPageToken
    , ladrDomains

    -- ** Entrypoint
    , Entrypoint
    , entrypoint
    , eShell

    -- ** ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- ** ManagedCertificate
    , ManagedCertificate
    , managedCertificate
    , mcStatus
    , mcLastRenewalTime

    -- ** CreateVersionMetadataV1Alpha
    , CreateVersionMetadataV1Alpha
    , createVersionMetadataV1Alpha
    , cvmvaCloudBuildId

    -- ** FileInfo
    , FileInfo
    , fileInfo
    , fiSha1Sum
    , fiMimeType
    , fiSourceURL

    -- ** AutomaticScaling
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

    -- ** OperationMetadataV1Beta5
    , OperationMetadataV1Beta5
    , operationMetadataV1Beta5
    , oInsertTime
    , oUser
    , oMethod
    , oEndTime
    , oTarget

    -- ** Volume
    , Volume
    , volume
    , vSizeGb
    , vName
    , vVolumeType

    -- ** APIEndpointHandler
    , APIEndpointHandler
    , apiEndpointHandler
    , aehScriptPath

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ListIngressRulesResponse
    , ListIngressRulesResponse
    , listIngressRulesResponse
    , lirrNextPageToken
    , lirrIngressRules

    -- ** Network
    , Network
    , network
    , nSessionAffinity
    , nSubnetworkName
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- ** APIConfigHandlerAuthFailAction
    , APIConfigHandlerAuthFailAction (..)

    -- ** ReadinessCheck
    , ReadinessCheck
    , readinessCheck
    , rcSuccessThreshold
    , rcFailureThreshold
    , rcPath
    , rcCheckInterval
    , rcAppStartTimeout
    , rcHost
    , rcTimeout

    -- ** BatchUpdateIngressRulesRequest
    , BatchUpdateIngressRulesRequest
    , batchUpdateIngressRulesRequest
    , buirrIngressRules

    -- ** DebugInstanceRequest
    , DebugInstanceRequest
    , debugInstanceRequest
    , dirSSHKey

    -- ** StaticFilesHandlerHTTPHeaders
    , StaticFilesHandlerHTTPHeaders
    , staticFilesHandlerHTTPHeaders
    , sfhhttphAddtional

    -- ** Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rVolumes
    , rCPU

    -- ** FeatureSettings
    , FeatureSettings
    , featureSettings
    , fsSplitHealthChecks

    -- ** CertificateRawData
    , CertificateRawData
    , certificateRawData
    , crdPrivateKey
    , crdPublicCertificate

    -- ** DomainMApping
    , DomainMApping
    , domainMApping
    , dmaResourceRecords
    , dmaName
    , dmaId
    , dmaSSLSettings

    -- ** VersionServingStatus
    , VersionServingStatus (..)

    -- ** DeploymentFiles
    , DeploymentFiles
    , deploymentFiles
    , dfAddtional

    -- ** BatchUpdateIngressRulesResponse
    , BatchUpdateIngressRulesResponse
    , batchUpdateIngressRulesResponse
    , bIngressRules

    -- ** CPUUtilization
    , CPUUtilization
    , cpuUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- ** CreateVersionMetadataV1
    , CreateVersionMetadataV1
    , createVersionMetadataV1
    , cvmvCloudBuildId

    -- ** TrafficSplitAllocations
    , TrafficSplitAllocations
    , trafficSplitAllocations
    , tsaAddtional

    -- ** CloudBuildOptions
    , CloudBuildOptions
    , cloudBuildOptions
    , cboCloudBuildTimeout
    , cboAppYamlPath

    -- ** ManualScaling
    , ManualScaling
    , manualScaling
    , msInstances

    -- ** BasicScaling
    , BasicScaling
    , basicScaling
    , bsMaxInstances
    , bsIdleTimeout

    -- ** URLMapSecurityLevel
    , URLMapSecurityLevel (..)

    -- ** ResourceRecordType
    , ResourceRecordType (..)

    -- ** OperationMetadataV1
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

    -- ** Version
    , Version
    , version
    , verRuntime
    , verNobuildFilesRegex
    , verInstanceClass
    , verRuntimeChannel
    , verRuntimeMainExecutablePath
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
    , verName
    , verThreadsafe
    , verBetaSettings
    , verBasicScaling
    , verManualScaling
    , verAPIConfig
    , verId
    , verEnvVariables
    , verLivenessCheck
    , verRuntimeAPIVersion
    , verServingStatus
    , verDiskUsageBytes
    , verCreateTime
    , verLibraries
    , verVersionURL
    , verDeployment

    -- ** Xgafv
    , Xgafv (..)

    -- ** IdentityAwareProxy
    , IdentityAwareProxy
    , identityAwareProxy
    , iapEnabled
    , iapOAuth2ClientSecretSha256
    , iapOAuth2ClientSecret
    , iapOAuth2ClientId

    -- ** StaticFilesHandler
    , StaticFilesHandler
    , staticFilesHandler
    , sfhHTTPHeaders
    , sfhPath
    , sfhRequireMatchingFile
    , sfhExpiration
    , sfhMimeType
    , sfhApplicationReadable
    , sfhUploadPathRegex

    -- ** ErrorHandler
    , ErrorHandler
    , errorHandler
    , ehMimeType
    , ehErrorCode
    , ehStaticFile

    -- ** TrafficSplitShardBy
    , TrafficSplitShardBy (..)

    -- ** InstanceAvailability
    , InstanceAvailability (..)

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** ListAuthorizedCertificatesResponse
    , ListAuthorizedCertificatesResponse
    , listAuthorizedCertificatesResponse
    , lacrNextPageToken
    , lacrCertificates

    -- ** FirewallRule
    , FirewallRule
    , firewallRule
    , frPriority
    , frAction
    , frSourceRange
    , frDescription

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmStandardEnvironmentAvailable
    , lmFlexibleEnvironmentAvailable

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omInsertTime
    , omUser
    , omMethod
    , omEndTime
    , omOperationType
    , omTarget

    -- ** URLMapAuthFailAction
    , URLMapAuthFailAction (..)

    -- ** ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirInstances

    -- ** OperationMetadataV1Alpha
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

    -- ** LivenessCheck
    , LivenessCheck
    , livenessCheck
    , lcSuccessThreshold
    , lcFailureThreshold
    , lcPath
    , lcCheckInterval
    , lcHost
    , lcInitialDelay
    , lcTimeout

    -- ** URLMapRedirectHTTPResponseCode
    , URLMapRedirectHTTPResponseCode (..)

    -- ** RequestUtilization
    , RequestUtilization
    , requestUtilization
    , ruTargetConcurrentRequests
    , ruTargetRequestCountPerSecond

    -- ** FirewallRuleAction
    , FirewallRuleAction (..)

    -- ** SSLSettingsSSLManagementType
    , SSLSettingsSSLManagementType (..)

    -- ** RepairApplicationRequest
    , RepairApplicationRequest
    , repairApplicationRequest

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** CreateVersionMetadataV1Beta
    , CreateVersionMetadataV1Beta
    , createVersionMetadataV1Beta
    , cvmvbCloudBuildId

    -- ** ListDomainMAppingsResponse
    , ListDomainMAppingsResponse
    , listDomainMAppingsResponse
    , ldmarDomainMAppings
    , ldmarNextPageToken

    -- ** StandardSchedulerSettings
    , StandardSchedulerSettings
    , standardSchedulerSettings
    , sssTargetCPUUtilization
    , sssMinInstances
    , sssMaxInstances
    , sssTargetThroughputUtilization

    -- ** APIConfigHandlerLogin
    , APIConfigHandlerLogin (..)

    -- ** ContainerInfo
    , ContainerInfo
    , containerInfo
    , ciImage

    -- ** Instance
    , Instance
    , instance'
    , iMemoryUsage
    , iVMStatus
    , iVMZoneName
    , iVMIP
    , iStartTime
    , iVMId
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

    -- ** SSLSettings
    , SSLSettings
    , sslSettings
    , ssSSLManagementType
    , ssCertificateId
    , ssPendingManagedCertificateId

    -- ** Deployment
    , Deployment
    , deployment
    , dZip
    , dCloudBuildOptions
    , dContainer
    , dFiles
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Create
import           Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Delete
import           Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Get
import           Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.List
import           Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Patch
import           Network.Google.Resource.AppEngine.Apps.AuthorizedDomains.List
import           Network.Google.Resource.AppEngine.Apps.Create
import           Network.Google.Resource.AppEngine.Apps.DomainMAppings.Create
import           Network.Google.Resource.AppEngine.Apps.DomainMAppings.Delete
import           Network.Google.Resource.AppEngine.Apps.DomainMAppings.Get
import           Network.Google.Resource.AppEngine.Apps.DomainMAppings.List
import           Network.Google.Resource.AppEngine.Apps.DomainMAppings.Patch
import           Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.BatchUpdate
import           Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Create
import           Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Delete
import           Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Get
import           Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.List
import           Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Patch
import           Network.Google.Resource.AppEngine.Apps.Get
import           Network.Google.Resource.AppEngine.Apps.Locations.Get
import           Network.Google.Resource.AppEngine.Apps.Locations.List
import           Network.Google.Resource.AppEngine.Apps.Operations.Get
import           Network.Google.Resource.AppEngine.Apps.Operations.List
import           Network.Google.Resource.AppEngine.Apps.Patch
import           Network.Google.Resource.AppEngine.Apps.Repair
import           Network.Google.Resource.AppEngine.Apps.Services.Delete
import           Network.Google.Resource.AppEngine.Apps.Services.Get
import           Network.Google.Resource.AppEngine.Apps.Services.List
import           Network.Google.Resource.AppEngine.Apps.Services.Patch
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Create
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Delete
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Get
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Debug
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Delete
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Get
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.List
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.List
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Patch

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the App Engine Admin API service.
type AppEngineAPI =
     AppsAuthorizedDomainsListResource :<|>
       AppsDomainMAppingsListResource
       :<|> AppsDomainMAppingsPatchResource
       :<|> AppsDomainMAppingsGetResource
       :<|> AppsDomainMAppingsCreateResource
       :<|> AppsDomainMAppingsDeleteResource
       :<|> AppsFirewallIngressRulesListResource
       :<|> AppsFirewallIngressRulesPatchResource
       :<|> AppsFirewallIngressRulesGetResource
       :<|> AppsFirewallIngressRulesCreateResource
       :<|> AppsFirewallIngressRulesBatchUpdateResource
       :<|> AppsFirewallIngressRulesDeleteResource
       :<|> AppsOperationsListResource
       :<|> AppsOperationsGetResource
       :<|> AppsLocationsListResource
       :<|> AppsLocationsGetResource
       :<|> AppsServicesVersionsInstancesListResource
       :<|> AppsServicesVersionsInstancesGetResource
       :<|> AppsServicesVersionsInstancesDebugResource
       :<|> AppsServicesVersionsInstancesDeleteResource
       :<|> AppsServicesVersionsListResource
       :<|> AppsServicesVersionsPatchResource
       :<|> AppsServicesVersionsGetResource
       :<|> AppsServicesVersionsCreateResource
       :<|> AppsServicesVersionsDeleteResource
       :<|> AppsServicesListResource
       :<|> AppsServicesPatchResource
       :<|> AppsServicesGetResource
       :<|> AppsServicesDeleteResource
       :<|> AppsAuthorizedCertificatesListResource
       :<|> AppsAuthorizedCertificatesPatchResource
       :<|> AppsAuthorizedCertificatesGetResource
       :<|> AppsAuthorizedCertificatesCreateResource
       :<|> AppsAuthorizedCertificatesDeleteResource
       :<|> AppsPatchResource
       :<|> AppsGetResource
       :<|> AppsCreateResource
       :<|> AppsRepairResource
