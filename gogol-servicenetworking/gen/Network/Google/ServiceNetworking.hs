{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ServiceNetworking
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Service Networking API provides automatic management of network
-- configurations necessary for certain services.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/reference/rest/ Service Networking API Reference>
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

    -- * Types

    -- ** MetricDescriptorValueType
    , MetricDescriptorValueType (..)

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

    -- ** BillingDestination
    , BillingDestination
    , billingDestination
    , bdMetrics
    , bdMonitoredResource

    -- ** Control
    , Control
    , control
    , cEnvironment

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
    , mdMetricKind
    , mdName
    , mdMetadata
    , mdDisplayName
    , mdLabels
    , mdType
    , mdValueType
    , mdDescription
    , mdUnit

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** BackendRule
    , BackendRule
    , backendRule
    , brSelector
    , brMinDeadline
    , brAddress
    , brDeadline

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
    , sExperimental
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

    -- ** CustomErrorRule
    , CustomErrorRule
    , customErrorRule
    , cerIsErrorType
    , cerSelector

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

    -- ** AuthenticationRule
    , AuthenticationRule
    , authenticationRule
    , arRequirements
    , arSelector
    , arAllowWithoutCredential
    , arOAuth

    -- ** LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- ** MetricRuleMetricCosts
    , MetricRuleMetricCosts
    , metricRuleMetricCosts
    , mrmcAddtional

    -- ** AuthorizationConfig
    , AuthorizationConfig
    , authorizationConfig
    , acProvider

    -- ** APISyntax
    , APISyntax (..)

    -- ** TypeSyntax
    , TypeSyntax (..)

    -- ** Experimental
    , Experimental
    , experimental
    , eAuthorization

    -- ** Backend
    , Backend
    , backend
    , bRules

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

    -- ** SystemParameters
    , SystemParameters
    , systemParameters
    , spRules

    -- ** Documentation
    , Documentation
    , documentation
    , dSummary
    , dDocumentationRootURL
    , dRules
    , dPages
    , dOverview

    -- ** Xgafv
    , Xgafv (..)

    -- ** MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

    -- ** Subnetwork
    , Subnetwork
    , subnetwork
    , subName
    , subIPCIdRRange

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

    -- ** Usage
    , Usage
    , usage
    , uRequirements
    , uRules
    , uProducerNotificationChannel

    -- ** FieldCardinality
    , FieldCardinality (..)

    -- ** HTTP
    , HTTP
    , hTTP
    , hRules
    , hFullyDecodeReservedExpansion

    -- ** AddSubnetworkResponse
    , AddSubnetworkResponse
    , addSubnetworkResponse
    , asrName
    , asrIPCIdRRange

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
    , eAliases
    , eAllowCORS
    , eName
    , eFeatures
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

    -- ** SourceInfoSourceFilesItem
    , SourceInfoSourceFilesItem
    , sourceInfoSourceFilesItem
    , sisfiAddtional

    -- ** Quota
    , Quota
    , quota
    , qLimits
    , qMetricRules

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

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** AuthProvider
    , AuthProvider
    , authProvider
    , apJWKsURI
    , apAudiences
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
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.ServiceNetworking.Operations.Cancel
import           Network.Google.Resource.ServiceNetworking.Operations.Delete
import           Network.Google.Resource.ServiceNetworking.Operations.Get
import           Network.Google.Resource.ServiceNetworking.Operations.List
import           Network.Google.ServiceNetworking.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Service Networking API service.
type ServiceNetworkingAPI =
     OperationsListResource :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
