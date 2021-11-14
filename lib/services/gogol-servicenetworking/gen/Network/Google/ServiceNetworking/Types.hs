{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceNetworking.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceNetworking.Types
    (
    -- * Service Configuration
      serviceNetworkingService

    -- * OAuth Scopes
    , cloudPlatformScope
    , serviceManagementScope

    -- * GoogleCloudServicenetworkingV1betaSubnetwork
    , GoogleCloudServicenetworkingV1betaSubnetwork
    , googleCloudServicenetworkingV1betaSubnetwork
    , gcsvsOutsideAllocation
    , gcsvsNetwork
    , gcsvsName
    , gcsvsIPCIdRRange

    -- * JwtLocation
    , JwtLocation
    , jwtLocation
    , jlValuePrefix
    , jlHeader
    , jlQuery

    -- * MetricDescriptorValueType
    , MetricDescriptorValueType (..)

    -- * RemoveDNSZoneMetadata
    , RemoveDNSZoneMetadata
    , removeDNSZoneMetadata

    -- * SystemParameter
    , SystemParameter
    , systemParameter
    , spHTTPHeader
    , spURLQueryParameter
    , spName

    -- * MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription
    , mrdLaunchStage

    -- * SecondaryIPRange
    , SecondaryIPRange
    , secondaryIPRange
    , sirRangeName
    , sirIPCIdRRange

    -- * BackendRulePathTranslation
    , BackendRulePathTranslation (..)

    -- * EnableVPCServiceControlsRequest
    , EnableVPCServiceControlsRequest
    , enableVPCServiceControlsRequest
    , evscrConsumerNetwork

    -- * ListConnectionsResponse
    , ListConnectionsResponse
    , listConnectionsResponse
    , lcrConnections

    -- * DocumentationRule
    , DocumentationRule
    , documentationRule
    , drSelector
    , drDeprecationDescription
    , drDescription

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ConsumerConfig
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

    -- * AddDNSZoneRequest
    , AddDNSZoneRequest
    , addDNSZoneRequest
    , adzrDNSSuffix
    , adzrName
    , adzrConsumerNetwork

    -- * AddRolesRequest
    , AddRolesRequest
    , addRolesRequest
    , arrPolicyBinding
    , arrConsumerNetwork

    -- * BillingDestination
    , BillingDestination
    , billingDestination
    , bdMetrics
    , bdMonitoredResource

    -- * Control
    , Control
    , control
    , cEnvironment

    -- * PeeredDNSDomainMetadata
    , PeeredDNSDomainMetadata
    , peeredDNSDomainMetadata

    -- * RangeReservation
    , RangeReservation
    , rangeReservation
    , rrIPPrefixLength
    , rrSecondaryRangeIPPrefixLengths
    , rrRequestedRanges
    , rrSubnetworkCandidates

    -- * AuthRequirement
    , AuthRequirement
    , authRequirement
    , arProviderId
    , arAudiences

    -- * Context
    , Context
    , context
    , cRules

    -- * LoggingDestination
    , LoggingDestination
    , loggingDestination
    , ldMonitoredResource
    , ldLogs

    -- * MetricDescriptor
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

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * DNSZone
    , DNSZone
    , dnsZone
    , dzDNSSuffix
    , dzName

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * BackendRule
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

    -- * UpdateDNSRecordSetMetadata
    , UpdateDNSRecordSetMetadata
    , updateDNSRecordSetMetadata

    -- * SourceContext
    , SourceContext
    , sourceContext
    , scFileName

    -- * Field
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

    -- * MetricRule
    , MetricRule
    , metricRule
    , mrSelector
    , mrMetricCosts

    -- * FieldKind
    , FieldKind (..)

    -- * EnumSyntax
    , EnumSyntax (..)

    -- * Service
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

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * RemoveDNSRecordSetMetadata
    , RemoveDNSRecordSetMetadata
    , removeDNSRecordSetMetadata

    -- * CustomErrorRule
    , CustomErrorRule
    , customErrorRule
    , cerIsErrorType
    , cerSelector

    -- * ListPeeredDNSDomainsResponse
    , ListPeeredDNSDomainsResponse
    , listPeeredDNSDomainsResponse
    , lpddrPeeredDNSDomains

    -- * GoogleCloudServicenetworkingV1betaConnection
    , GoogleCloudServicenetworkingV1betaConnection
    , googleCloudServicenetworkingV1betaConnection
    , gcsvcPeering
    , gcsvcReservedPeeringRanges
    , gcsvcService
    , gcsvcNetwork

    -- * OptionValue
    , OptionValue
    , optionValue
    , ovAddtional

    -- * EnumValue
    , EnumValue
    , enumValue
    , evName
    , evOptions
    , evNumber

    -- * Authentication
    , Authentication
    , authentication
    , aRules
    , aProviders

    -- * MetricDescriptorMetadataLaunchStage
    , MetricDescriptorMetadataLaunchStage (..)

    -- * AddRolesMetadata
    , AddRolesMetadata
    , addRolesMetadata

    -- * Mixin
    , Mixin
    , mixin
    , mRoot
    , mName

    -- * CustomHTTPPattern
    , CustomHTTPPattern
    , customHTTPPattern
    , chttppPath
    , chttppKind

    -- * ConsumerProject
    , ConsumerProject
    , consumerProject
    , cpProjectNum

    -- * UsageRule
    , UsageRule
    , usageRule
    , urSelector
    , urAllowUnregisteredCalls
    , urSkipServiceControl

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * Page
    , Page
    , page
    , pSubpages
    , pContent
    , pName

    -- * GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
    , GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
    , googleCloudServicenetworkingV1ConsumerConfigReservedRange
    , gcsvccrrIPPrefixLength
    , gcsvccrrAddress
    , gcsvccrrName

    -- * AddDNSZoneMetadata
    , AddDNSZoneMetadata
    , addDNSZoneMetadata

    -- * AuthenticationRule
    , AuthenticationRule
    , authenticationRule
    , arRequirements
    , arSelector
    , arAllowWithoutCredential
    , arOAuth

    -- * Connection
    , Connection
    , connection
    , cPeering
    , cReservedPeeringRanges
    , cService
    , cNetwork

    -- * UpdateDNSRecordSetRequest
    , UpdateDNSRecordSetRequest
    , updateDNSRecordSetRequest
    , udrsrZone
    , udrsrNewDNSRecordSet
    , udrsrExistingDNSRecordSet
    , udrsrConsumerNetwork

    -- * LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- * MetricRuleMetricCosts
    , MetricRuleMetricCosts
    , metricRuleMetricCosts
    , mrmcAddtional

    -- * Route
    , Route
    , route
    , rNextHopGateway
    , rNetwork
    , rDestRange
    , rName

    -- * DisableVPCServiceControlsRequest
    , DisableVPCServiceControlsRequest
    , disableVPCServiceControlsRequest
    , dvscrConsumerNetwork

    -- * PartialDeleteConnectionMetadata
    , PartialDeleteConnectionMetadata
    , partialDeleteConnectionMetadata

    -- * RemoveDNSRecordSetRequest
    , RemoveDNSRecordSetRequest
    , removeDNSRecordSetRequest
    , rdrsrZone
    , rdrsrConsumerNetwork
    , rdrsrDNSRecordSet

    -- * PolicyBinding
    , PolicyBinding
    , policyBinding
    , pbRole
    , pbMember

    -- * ValidateConsumerConfigResponse
    , ValidateConsumerConfigResponse
    , validateConsumerConfigResponse
    , vccrExistingSubnetworkCandidates
    , vccrValidationError
    , vccrIsValid

    -- * APISyntax
    , APISyntax (..)

    -- * TypeSyntax
    , TypeSyntax (..)

    -- * Backend
    , Backend
    , backend
    , bRules

    -- * UpdateConsumerConfigRequest
    , UpdateConsumerConfigRequest
    , updateConsumerConfigRequest
    , uccrConsumerConfig

    -- * Monitoring
    , Monitoring
    , monitoring
    , mProducerDestinations
    , mConsumerDestinations

    -- * LogDescriptor
    , LogDescriptor
    , logDescriptor
    , ldName
    , ldDisplayName
    , ldLabels
    , ldDescription

    -- * Method
    , Method
    , method
    , metRequestStreaming
    , metResponseTypeURL
    , metName
    , metResponseStreaming
    , metRequestTypeURL
    , metOptions
    , metSyntax

    -- * Range
    , Range
    , range
    , ranNetwork
    , ranIPCIdRRange

    -- * SystemParameters
    , SystemParameters
    , systemParameters
    , spRules

    -- * DeleteConnectionMetadata
    , DeleteConnectionMetadata
    , deleteConnectionMetadata

    -- * RemoveDNSZoneResponse
    , RemoveDNSZoneResponse
    , removeDNSZoneResponse

    -- * Documentation
    , Documentation
    , documentation
    , dSummary
    , dDocumentationRootURL
    , dRules
    , dPages
    , dServiceRootURL
    , dOverview

    -- * Xgafv
    , Xgafv (..)

    -- * AddDNSRecordSetMetadata
    , AddDNSRecordSetMetadata
    , addDNSRecordSetMetadata

    -- * MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

    -- * PeeredDNSDomain
    , PeeredDNSDomain
    , peeredDNSDomain
    , pddDNSSuffix
    , pddName

    -- * Subnetwork
    , Subnetwork
    , subnetwork
    , subOutsideAllocation
    , subNetwork
    , subName
    , subSecondaryIPRanges
    , subIPCIdRRange
    , subRegion

    -- * ValidateConsumerConfigResponseValidationError
    , ValidateConsumerConfigResponseValidationError (..)

    -- * AddSubnetworkRequest
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

    -- * SystemParameterRule
    , SystemParameterRule
    , systemParameterRule
    , sprSelector
    , sprParameters

    -- * LabelDescriptor
    , LabelDescriptor
    , labelDescriptor
    , lKey
    , lValueType
    , lDescription

    -- * AddRolesResponse
    , AddRolesResponse
    , addRolesResponse
    , aPolicyBinding

    -- * MonitoredResourceDescriptorLaunchStage
    , MonitoredResourceDescriptorLaunchStage (..)

    -- * Usage
    , Usage
    , usage
    , uRequirements
    , uRules
    , uProducerNotificationChannel

    -- * AddDNSZoneResponse
    , AddDNSZoneResponse
    , addDNSZoneResponse
    , adzrConsumerPeeringZone
    , adzrProducerPrivateZone

    -- * RemoveDNSZoneRequest
    , RemoveDNSZoneRequest
    , removeDNSZoneRequest
    , rdzrName
    , rdzrConsumerNetwork

    -- * FieldCardinality
    , FieldCardinality (..)

    -- * SearchRangeRequest
    , SearchRangeRequest
    , searchRangeRequest
    , srrIPPrefixLength
    , srrNetwork

    -- * HTTP
    , HTTP
    , hTTP
    , hRules
    , hFullyDecodeReservedExpansion

    -- * Type
    , Type
    , type'
    , tSourceContext
    , tOneofs
    , tName
    , tOptions
    , tFields
    , tSyntax

    -- * API
    , API
    , api
    , aSourceContext
    , aMixins
    , aMethods
    , aName
    , aVersion
    , aOptions
    , aSyntax

    -- * MonitoringDestination
    , MonitoringDestination
    , monitoringDestination
    , mdMetrics
    , mdMonitoredResource

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * Endpoint
    , Endpoint
    , endpoint
    , eAllowCORS
    , eName
    , eTarget

    -- * OAuthRequirements
    , OAuthRequirements
    , oAuthRequirements
    , oarCanonicalScopes

    -- * MetricDescriptorMetricKind
    , MetricDescriptorMetricKind (..)

    -- * CustomError
    , CustomError
    , customError
    , ceRules
    , ceTypes

    -- * QuotaLimit
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

    -- * RemoveDNSRecordSetResponse
    , RemoveDNSRecordSetResponse
    , removeDNSRecordSetResponse

    -- * Option
    , Option
    , option
    , optValue
    , optName

    -- * Billing
    , Billing
    , billing
    , bConsumerDestinations

    -- * SourceInfo
    , SourceInfo
    , sourceInfo
    , siSourceFiles

    -- * QuotaLimitValues
    , QuotaLimitValues
    , quotaLimitValues
    , qlvAddtional

    -- * ValidateConsumerConfigRequest
    , ValidateConsumerConfigRequest
    , validateConsumerConfigRequest
    , vccrRangeReservation
    , vccrConsumerProject
    , vccrValidateNetwork
    , vccrConsumerNetwork

    -- * Enum'
    , Enum'
    , enum
    , enuSourceContext
    , enuEnumvalue
    , enuName
    , enuOptions
    , enuSyntax

    -- * Logging
    , Logging
    , logging
    , lProducerDestinations
    , lConsumerDestinations

    -- * MethodSyntax
    , MethodSyntax (..)

    -- * DeleteConnectionRequest
    , DeleteConnectionRequest
    , deleteConnectionRequest
    , dcrConsumerNetwork

    -- * SourceInfoSourceFilesItem
    , SourceInfoSourceFilesItem
    , sourceInfoSourceFilesItem
    , sisfiAddtional

    -- * Quota
    , Quota
    , quota
    , qLimits
    , qMetricRules

    -- * DeletePeeredDNSDomainMetadata
    , DeletePeeredDNSDomainMetadata
    , deletePeeredDNSDomainMetadata

    -- * HTTPRule
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

    -- * DNSRecordSet
    , DNSRecordSet
    , dnsRecordSet
    , drsTtl
    , drsData
    , drsDomain
    , drsType

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * AddDNSRecordSetRequest
    , AddDNSRecordSetRequest
    , addDNSRecordSetRequest
    , adrsrZone
    , adrsrConsumerNetwork
    , adrsrDNSRecordSet

    -- * MetricDescriptorLaunchStage
    , MetricDescriptorLaunchStage (..)

    -- * ConsumerConfigMetadata
    , ConsumerConfigMetadata
    , consumerConfigMetadata

    -- * AuthProvider
    , AuthProvider
    , authProvider
    , apJWKsURI
    , apAudiences
    , apJwtLocations
    , apId
    , apAuthorizationURL
    , apIssuer

    -- * ContextRule
    , ContextRule
    , contextRule
    , crSelector
    , crRequested
    , crAllowedRequestExtensions
    , crProvided
    , crAllowedResponseExtensions

    -- * SecondaryIPRangeSpec
    , SecondaryIPRangeSpec
    , secondaryIPRangeSpec
    , sirsIPPrefixLength
    , sirsRangeName
    , sirsRequestedAddress
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types.Product
import Network.Google.ServiceNetworking.Types.Sum

-- | Default request referring to version 'v1' of the Service Networking API. This contains the host and root path used as a starting point for constructing service requests.
serviceNetworkingService :: ServiceConfig
serviceNetworkingService
  = defaultService (ServiceId "servicenetworking:v1")
      "servicenetworking.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | Manage your Google API service configuration
serviceManagementScope :: Proxy '["https://www.googleapis.com/auth/service.management"]
serviceManagementScope = Proxy
