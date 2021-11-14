{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ServiceNetworking
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides automatic management of network configurations necessary for
-- certain services.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference>
module Network.Google.ServiceNetworking
    (
    -- * Service Configuration
      serviceNetworkingService

    -- * OAuth Scopes
    , cloudPlatformScope
    , serviceManagementScope

    -- * API Declaration
    , ServiceNetworkingAPI

    -- * Resources

    -- ** servicenetworking.operations.cancel
    , module Network.Google.Resource.ServiceNetworking.Operations.Cancel

    -- ** servicenetworking.operations.delete
    , module Network.Google.Resource.ServiceNetworking.Operations.Delete

    -- ** servicenetworking.operations.get
    , module Network.Google.Resource.ServiceNetworking.Operations.Get

    -- ** servicenetworking.operations.list
    , module Network.Google.Resource.ServiceNetworking.Operations.List

    -- ** servicenetworking.services.addSubnetwork
    , module Network.Google.Resource.ServiceNetworking.Services.AddSubnetwork

    -- ** servicenetworking.services.connections.create
    , module Network.Google.Resource.ServiceNetworking.Services.Connections.Create

    -- ** servicenetworking.services.connections.deleteConnection
    , module Network.Google.Resource.ServiceNetworking.Services.Connections.DeleteConnection

    -- ** servicenetworking.services.connections.list
    , module Network.Google.Resource.ServiceNetworking.Services.Connections.List

    -- ** servicenetworking.services.connections.patch
    , module Network.Google.Resource.ServiceNetworking.Services.Connections.Patch

    -- ** servicenetworking.services.disableVpcServiceControls
    , module Network.Google.Resource.ServiceNetworking.Services.DisableVPCServiceControls

    -- ** servicenetworking.services.dnsRecordSets.add
    , module Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Add

    -- ** servicenetworking.services.dnsRecordSets.remove
    , module Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Remove

    -- ** servicenetworking.services.dnsRecordSets.update
    , module Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Update

    -- ** servicenetworking.services.dnsZones.add
    , module Network.Google.Resource.ServiceNetworking.Services.DNSZones.Add

    -- ** servicenetworking.services.dnsZones.remove
    , module Network.Google.Resource.ServiceNetworking.Services.DNSZones.Remove

    -- ** servicenetworking.services.enableVpcServiceControls
    , module Network.Google.Resource.ServiceNetworking.Services.EnableVPCServiceControls

    -- ** servicenetworking.services.projects.global.networks.get
    , module Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.Get

    -- ** servicenetworking.services.projects.global.networks.peeredDnsDomains.create
    , module Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.Create

    -- ** servicenetworking.services.projects.global.networks.peeredDnsDomains.delete
    , module Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.Delete

    -- ** servicenetworking.services.projects.global.networks.peeredDnsDomains.list
    , module Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.List

    -- ** servicenetworking.services.projects.global.networks.updateConsumerConfig
    , module Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.UpdateConsumerConfig

    -- ** servicenetworking.services.roles.add
    , module Network.Google.Resource.ServiceNetworking.Services.Roles.Add

    -- ** servicenetworking.services.searchRange
    , module Network.Google.Resource.ServiceNetworking.Services.SearchRange

    -- ** servicenetworking.services.validate
    , module Network.Google.Resource.ServiceNetworking.Services.Validate

    -- * Types

    -- ** GoogleCloudServicenetworkingV1betaSubnetwork
    , GoogleCloudServicenetworkingV1betaSubnetwork
    , googleCloudServicenetworkingV1betaSubnetwork
    , gcsvsOutsideAllocation
    , gcsvsNetwork
    , gcsvsName
    , gcsvsIPCIdRRange

    -- ** JwtLocation
    , JwtLocation
    , jwtLocation
    , jlValuePrefix
    , jlHeader
    , jlQuery

    -- ** MetricDescriptorValueType
    , MetricDescriptorValueType (..)

    -- ** RemoveDNSZoneMetadata
    , RemoveDNSZoneMetadata
    , removeDNSZoneMetadata

    -- ** SystemParameter
    , SystemParameter
    , systemParameter
    , spHTTPHeader
    , spURLQueryParameter
    , spName

    -- ** MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription
    , mrdLaunchStage

    -- ** SecondaryIPRange
    , SecondaryIPRange
    , secondaryIPRange
    , sirRangeName
    , sirIPCIdRRange

    -- ** BackendRulePathTranslation
    , BackendRulePathTranslation (..)

    -- ** EnableVPCServiceControlsRequest
    , EnableVPCServiceControlsRequest
    , enableVPCServiceControlsRequest
    , evscrConsumerNetwork

    -- ** ListConnectionsResponse
    , ListConnectionsResponse
    , listConnectionsResponse
    , lcrConnections

    -- ** DocumentationRule
    , DocumentationRule
    , documentationRule
    , drSelector
    , drDeprecationDescription
    , drDescription

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ConsumerConfig
    , ConsumerConfig
    , consumerConfig
    , ccProducerExportCustomRoutes
    , ccConsumerImportSubnetRoutesWithPublicIP
    , ccReservedRanges
    , ccConsumerExportCustomRoutes
    , ccVPCScReferenceArchitectureEnabled
    , ccProducerNetwork
    , ccProducerImportCustomRoutes
    , ccProducerExportSubnetRoutesWithPublicIP
    , ccConsumerImportCustomRoutes
    , ccProducerImportSubnetRoutesWithPublicIP
    , ccConsumerExportSubnetRoutesWithPublicIP

    -- ** AddDNSZoneRequest
    , AddDNSZoneRequest
    , addDNSZoneRequest
    , adzrDNSSuffix
    , adzrName
    , adzrConsumerNetwork

    -- ** AddRolesRequest
    , AddRolesRequest
    , addRolesRequest
    , arrPolicyBinding
    , arrConsumerNetwork

    -- ** BillingDestination
    , BillingDestination
    , billingDestination
    , bdMetrics
    , bdMonitoredResource

    -- ** Control
    , Control
    , control
    , cEnvironment

    -- ** PeeredDNSDomainMetadata
    , PeeredDNSDomainMetadata
    , peeredDNSDomainMetadata

    -- ** RangeReservation
    , RangeReservation
    , rangeReservation
    , rrIPPrefixLength
    , rrSecondaryRangeIPPrefixLengths
    , rrRequestedRanges
    , rrSubnetworkCandidates

    -- ** AuthRequirement
    , AuthRequirement
    , authRequirement
    , arProviderId
    , arAudiences

    -- ** Context
    , Context
    , context
    , cRules

    -- ** LoggingDestination
    , LoggingDestination
    , loggingDestination
    , ldMonitoredResource
    , ldLogs

    -- ** MetricDescriptor
    , MetricDescriptor
    , metricDescriptor
    , mdMonitoredResourceTypes
    , mdMetricKind
    , mdName
    , mdMetadata
    , mdDisplayName
    , mdLabels
    , mdType
    , mdValueType
    , mdDescription
    , mdUnit
    , mdLaunchStage

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** DNSZone
    , DNSZone
    , dnsZone
    , dzDNSSuffix
    , dzName

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** BackendRule
    , BackendRule
    , backendRule
    , brJwtAudience
    , brSelector
    , brAddress
    , brProtocol
    , brDisableAuth
    , brOperationDeadline
    , brDeadline
    , brPathTranslation

    -- ** UpdateDNSRecordSetMetadata
    , UpdateDNSRecordSetMetadata
    , updateDNSRecordSetMetadata

    -- ** SourceContext
    , SourceContext
    , sourceContext
    , scFileName

    -- ** Field
    , Field
    , field
    , fKind
    , fOneofIndex
    , fName
    , fJSONName
    , fCardinality
    , fOptions
    , fPacked
    , fDefaultValue
    , fNumber
    , fTypeURL

    -- ** MetricRule
    , MetricRule
    , metricRule
    , mrSelector
    , mrMetricCosts

    -- ** FieldKind
    , FieldKind (..)

    -- ** EnumSyntax
    , EnumSyntax (..)

    -- ** Service
    , Service
    , service
    , sControl
    , sMetrics
    , sContext
    , sAuthentication
    , sAPIs
    , sTypes
    , sSystemTypes
    , sMonitoredResources
    , sBackend
    , sMonitoring
    , sName
    , sSystemParameters
    , sLogs
    , sDocumentation
    , sId
    , sUsage
    , sEndpoints
    , sEnums
    , sConfigVersion
    , sHTTP
    , sTitle
    , sProducerProjectId
    , sSourceInfo
    , sBilling
    , sCustomError
    , sLogging
    , sQuota

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** RemoveDNSRecordSetMetadata
    , RemoveDNSRecordSetMetadata
    , removeDNSRecordSetMetadata

    -- ** CustomErrorRule
    , CustomErrorRule
    , customErrorRule
    , cerIsErrorType
    , cerSelector

    -- ** ListPeeredDNSDomainsResponse
    , ListPeeredDNSDomainsResponse
    , listPeeredDNSDomainsResponse
    , lpddrPeeredDNSDomains

    -- ** GoogleCloudServicenetworkingV1betaConnection
    , GoogleCloudServicenetworkingV1betaConnection
    , googleCloudServicenetworkingV1betaConnection
    , gcsvcPeering
    , gcsvcReservedPeeringRanges
    , gcsvcService
    , gcsvcNetwork

    -- ** OptionValue
    , OptionValue
    , optionValue
    , ovAddtional

    -- ** EnumValue
    , EnumValue
    , enumValue
    , evName
    , evOptions
    , evNumber

    -- ** Authentication
    , Authentication
    , authentication
    , aRules
    , aProviders

    -- ** MetricDescriptorMetadataLaunchStage
    , MetricDescriptorMetadataLaunchStage (..)

    -- ** AddRolesMetadata
    , AddRolesMetadata
    , addRolesMetadata

    -- ** Mixin
    , Mixin
    , mixin
    , mRoot
    , mName

    -- ** CustomHTTPPattern
    , CustomHTTPPattern
    , customHTTPPattern
    , chttppPath
    , chttppKind

    -- ** ConsumerProject
    , ConsumerProject
    , consumerProject
    , cpProjectNum

    -- ** UsageRule
    , UsageRule
    , usageRule
    , urSelector
    , urAllowUnregisteredCalls
    , urSkipServiceControl

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** Page
    , Page
    , page
    , pSubpages
    , pContent
    , pName

    -- ** GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
    , GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
    , googleCloudServicenetworkingV1ConsumerConfigReservedRange
    , gcsvccrrIPPrefixLength
    , gcsvccrrAddress
    , gcsvccrrName

    -- ** AddDNSZoneMetadata
    , AddDNSZoneMetadata
    , addDNSZoneMetadata

    -- ** AuthenticationRule
    , AuthenticationRule
    , authenticationRule
    , arRequirements
    , arSelector
    , arAllowWithoutCredential
    , arOAuth

    -- ** Connection
    , Connection
    , connection
    , cPeering
    , cReservedPeeringRanges
    , cService
    , cNetwork

    -- ** UpdateDNSRecordSetRequest
    , UpdateDNSRecordSetRequest
    , updateDNSRecordSetRequest
    , udrsrZone
    , udrsrNewDNSRecordSet
    , udrsrExistingDNSRecordSet
    , udrsrConsumerNetwork

    -- ** LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- ** MetricRuleMetricCosts
    , MetricRuleMetricCosts
    , metricRuleMetricCosts
    , mrmcAddtional

    -- ** Route
    , Route
    , route
    , rNextHopGateway
    , rNetwork
    , rDestRange
    , rName

    -- ** DisableVPCServiceControlsRequest
    , DisableVPCServiceControlsRequest
    , disableVPCServiceControlsRequest
    , dvscrConsumerNetwork

    -- ** PartialDeleteConnectionMetadata
    , PartialDeleteConnectionMetadata
    , partialDeleteConnectionMetadata

    -- ** RemoveDNSRecordSetRequest
    , RemoveDNSRecordSetRequest
    , removeDNSRecordSetRequest
    , rdrsrZone
    , rdrsrConsumerNetwork
    , rdrsrDNSRecordSet

    -- ** PolicyBinding
    , PolicyBinding
    , policyBinding
    , pbRole
    , pbMember

    -- ** ValidateConsumerConfigResponse
    , ValidateConsumerConfigResponse
    , validateConsumerConfigResponse
    , vccrExistingSubnetworkCandidates
    , vccrValidationError
    , vccrIsValid

    -- ** APISyntax
    , APISyntax (..)

    -- ** TypeSyntax
    , TypeSyntax (..)

    -- ** Backend
    , Backend
    , backend
    , bRules

    -- ** UpdateConsumerConfigRequest
    , UpdateConsumerConfigRequest
    , updateConsumerConfigRequest
    , uccrConsumerConfig

    -- ** Monitoring
    , Monitoring
    , monitoring
    , mProducerDestinations
    , mConsumerDestinations

    -- ** LogDescriptor
    , LogDescriptor
    , logDescriptor
    , ldName
    , ldDisplayName
    , ldLabels
    , ldDescription

    -- ** Method
    , Method
    , method
    , metRequestStreaming
    , metResponseTypeURL
    , metName
    , metResponseStreaming
    , metRequestTypeURL
    , metOptions
    , metSyntax

    -- ** Range
    , Range
    , range
    , ranNetwork
    , ranIPCIdRRange

    -- ** SystemParameters
    , SystemParameters
    , systemParameters
    , spRules

    -- ** DeleteConnectionMetadata
    , DeleteConnectionMetadata
    , deleteConnectionMetadata

    -- ** RemoveDNSZoneResponse
    , RemoveDNSZoneResponse
    , removeDNSZoneResponse

    -- ** Documentation
    , Documentation
    , documentation
    , dSummary
    , dDocumentationRootURL
    , dRules
    , dPages
    , dServiceRootURL
    , dOverview

    -- ** Xgafv
    , Xgafv (..)

    -- ** AddDNSRecordSetMetadata
    , AddDNSRecordSetMetadata
    , addDNSRecordSetMetadata

    -- ** MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

    -- ** PeeredDNSDomain
    , PeeredDNSDomain
    , peeredDNSDomain
    , pddDNSSuffix
    , pddName

    -- ** Subnetwork
    , Subnetwork
    , subnetwork
    , subOutsideAllocation
    , subNetwork
    , subName
    , subSecondaryIPRanges
    , subIPCIdRRange
    , subRegion

    -- ** ValidateConsumerConfigResponseValidationError
    , ValidateConsumerConfigResponseValidationError (..)

    -- ** AddSubnetworkRequest
    , AddSubnetworkRequest
    , addSubnetworkRequest
    , asrIPPrefixLength
    , asrRequestedAddress
    , asrRequestedRanges
    , asrSecondaryIPRangeSpecs
    , asrSubnetwork
    , asrRegion
    , asrSubnetworkUsers
    , asrConsumerNetwork
    , asrConsumer
    , asrDescription

    -- ** SystemParameterRule
    , SystemParameterRule
    , systemParameterRule
    , sprSelector
    , sprParameters

    -- ** LabelDescriptor
    , LabelDescriptor
    , labelDescriptor
    , lKey
    , lValueType
    , lDescription

    -- ** AddRolesResponse
    , AddRolesResponse
    , addRolesResponse
    , aPolicyBinding

    -- ** MonitoredResourceDescriptorLaunchStage
    , MonitoredResourceDescriptorLaunchStage (..)

    -- ** Usage
    , Usage
    , usage
    , uRequirements
    , uRules
    , uProducerNotificationChannel

    -- ** AddDNSZoneResponse
    , AddDNSZoneResponse
    , addDNSZoneResponse
    , adzrConsumerPeeringZone
    , adzrProducerPrivateZone

    -- ** RemoveDNSZoneRequest
    , RemoveDNSZoneRequest
    , removeDNSZoneRequest
    , rdzrName
    , rdzrConsumerNetwork

    -- ** FieldCardinality
    , FieldCardinality (..)

    -- ** SearchRangeRequest
    , SearchRangeRequest
    , searchRangeRequest
    , srrIPPrefixLength
    , srrNetwork

    -- ** HTTP
    , HTTP
    , hTTP
    , hRules
    , hFullyDecodeReservedExpansion

    -- ** Type
    , Type
    , type'
    , tSourceContext
    , tOneofs
    , tName
    , tOptions
    , tFields
    , tSyntax

    -- ** API
    , API
    , api
    , aSourceContext
    , aMixins
    , aMethods
    , aName
    , aVersion
    , aOptions
    , aSyntax

    -- ** MonitoringDestination
    , MonitoringDestination
    , monitoringDestination
    , mdMetrics
    , mdMonitoredResource

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** Endpoint
    , Endpoint
    , endpoint
    , eAllowCORS
    , eName
    , eTarget

    -- ** OAuthRequirements
    , OAuthRequirements
    , oAuthRequirements
    , oarCanonicalScopes

    -- ** MetricDescriptorMetricKind
    , MetricDescriptorMetricKind (..)

    -- ** CustomError
    , CustomError
    , customError
    , ceRules
    , ceTypes

    -- ** QuotaLimit
    , QuotaLimit
    , quotaLimit
    , qlValues
    , qlFreeTier
    , qlMetric
    , qlName
    , qlDisplayName
    , qlDuration
    , qlDefaultLimit
    , qlDescription
    , qlUnit
    , qlMaxLimit

    -- ** RemoveDNSRecordSetResponse
    , RemoveDNSRecordSetResponse
    , removeDNSRecordSetResponse

    -- ** Option
    , Option
    , option
    , optValue
    , optName

    -- ** Billing
    , Billing
    , billing
    , bConsumerDestinations

    -- ** SourceInfo
    , SourceInfo
    , sourceInfo
    , siSourceFiles

    -- ** QuotaLimitValues
    , QuotaLimitValues
    , quotaLimitValues
    , qlvAddtional

    -- ** ValidateConsumerConfigRequest
    , ValidateConsumerConfigRequest
    , validateConsumerConfigRequest
    , vccrRangeReservation
    , vccrConsumerProject
    , vccrValidateNetwork
    , vccrConsumerNetwork

    -- ** Enum'
    , Enum'
    , enum
    , enuSourceContext
    , enuEnumvalue
    , enuName
    , enuOptions
    , enuSyntax

    -- ** Logging
    , Logging
    , logging
    , lProducerDestinations
    , lConsumerDestinations

    -- ** MethodSyntax
    , MethodSyntax (..)

    -- ** DeleteConnectionRequest
    , DeleteConnectionRequest
    , deleteConnectionRequest
    , dcrConsumerNetwork

    -- ** SourceInfoSourceFilesItem
    , SourceInfoSourceFilesItem
    , sourceInfoSourceFilesItem
    , sisfiAddtional

    -- ** Quota
    , Quota
    , quota
    , qLimits
    , qMetricRules

    -- ** DeletePeeredDNSDomainMetadata
    , DeletePeeredDNSDomainMetadata
    , deletePeeredDNSDomainMetadata

    -- ** HTTPRule
    , HTTPRule
    , hTTPRule
    , httprSelector
    , httprPost
    , httprBody
    , httprCustom
    , httprResponseBody
    , httprPatch
    , httprGet
    , httprAdditionalBindings
    , httprDelete
    , httprPut

    -- ** DNSRecordSet
    , DNSRecordSet
    , dnsRecordSet
    , drsTtl
    , drsData
    , drsDomain
    , drsType

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** AddDNSRecordSetRequest
    , AddDNSRecordSetRequest
    , addDNSRecordSetRequest
    , adrsrZone
    , adrsrConsumerNetwork
    , adrsrDNSRecordSet

    -- ** MetricDescriptorLaunchStage
    , MetricDescriptorLaunchStage (..)

    -- ** ConsumerConfigMetadata
    , ConsumerConfigMetadata
    , consumerConfigMetadata

    -- ** AuthProvider
    , AuthProvider
    , authProvider
    , apJWKsURI
    , apAudiences
    , apJwtLocations
    , apId
    , apAuthorizationURL
    , apIssuer

    -- ** ContextRule
    , ContextRule
    , contextRule
    , crSelector
    , crRequested
    , crAllowedRequestExtensions
    , crProvided
    , crAllowedResponseExtensions

    -- ** SecondaryIPRangeSpec
    , SecondaryIPRangeSpec
    , secondaryIPRangeSpec
    , sirsIPPrefixLength
    , sirsRangeName
    , sirsRequestedAddress
    ) where

import Network.Google.Prelude
import Network.Google.Resource.ServiceNetworking.Operations.Cancel
import Network.Google.Resource.ServiceNetworking.Operations.Delete
import Network.Google.Resource.ServiceNetworking.Operations.Get
import Network.Google.Resource.ServiceNetworking.Operations.List
import Network.Google.Resource.ServiceNetworking.Services.AddSubnetwork
import Network.Google.Resource.ServiceNetworking.Services.Connections.Create
import Network.Google.Resource.ServiceNetworking.Services.Connections.DeleteConnection
import Network.Google.Resource.ServiceNetworking.Services.Connections.List
import Network.Google.Resource.ServiceNetworking.Services.Connections.Patch
import Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Add
import Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Remove
import Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Update
import Network.Google.Resource.ServiceNetworking.Services.DNSZones.Add
import Network.Google.Resource.ServiceNetworking.Services.DNSZones.Remove
import Network.Google.Resource.ServiceNetworking.Services.DisableVPCServiceControls
import Network.Google.Resource.ServiceNetworking.Services.EnableVPCServiceControls
import Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.Get
import Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.Create
import Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.Delete
import Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.List
import Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.UpdateConsumerConfig
import Network.Google.Resource.ServiceNetworking.Services.Roles.Add
import Network.Google.Resource.ServiceNetworking.Services.SearchRange
import Network.Google.Resource.ServiceNetworking.Services.Validate
import Network.Google.ServiceNetworking.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Service Networking API service.
type ServiceNetworkingAPI =
     OperationsListResource :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
       :<|> ServicesDNSZonesRemoveResource
       :<|> ServicesDNSZonesAddResource
       :<|> ServicesRolesAddResource
       :<|> ServicesConnectionsDeleteConnectionResource
       :<|> ServicesConnectionsListResource
       :<|> ServicesConnectionsPatchResource
       :<|> ServicesConnectionsCreateResource
       :<|> ServicesDNSRecordSetsRemoveResource
       :<|> ServicesDNSRecordSetsAddResource
       :<|> ServicesDNSRecordSetsUpdateResource
       :<|>
       ServicesProjectsGlobalNetworksPeeredDNSDomainsListResource
       :<|>
       ServicesProjectsGlobalNetworksPeeredDNSDomainsCreateResource
       :<|>
       ServicesProjectsGlobalNetworksPeeredDNSDomainsDeleteResource
       :<|> ServicesProjectsGlobalNetworksGetResource
       :<|>
       ServicesProjectsGlobalNetworksUpdateConsumerConfigResource
       :<|> ServicesEnableVPCServiceControlsResource
       :<|> ServicesDisableVPCServiceControlsResource
       :<|> ServicesAddSubnetworkResource
       :<|> ServicesValidateResource
       :<|> ServicesSearchRangeResource
