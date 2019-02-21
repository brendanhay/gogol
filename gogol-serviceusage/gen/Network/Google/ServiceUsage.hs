{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ServiceUsage
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables services that service consumers want to use on Google Cloud
-- Platform, lists the available or enabled services, or disables services
-- that service consumers no longer use.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference>
module Network.Google.ServiceUsage
    (
    -- * Service Configuration
      serviceUsageService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , serviceManagementScope

    -- * API Declaration
    , ServiceUsageAPI

    -- * Resources

    -- ** serviceusage.operations.cancel
    , module Network.Google.Resource.ServiceUsage.Operations.Cancel

    -- ** serviceusage.operations.delete
    , module Network.Google.Resource.ServiceUsage.Operations.Delete

    -- ** serviceusage.operations.get
    , module Network.Google.Resource.ServiceUsage.Operations.Get

    -- ** serviceusage.operations.list
    , module Network.Google.Resource.ServiceUsage.Operations.List

    -- ** serviceusage.services.batchEnable
    , module Network.Google.Resource.ServiceUsage.Services.BatchEnable

    -- ** serviceusage.services.disable
    , module Network.Google.Resource.ServiceUsage.Services.Disable

    -- ** serviceusage.services.enable
    , module Network.Google.Resource.ServiceUsage.Services.Enable

    -- ** serviceusage.services.get
    , module Network.Google.Resource.ServiceUsage.Services.Get

    -- ** serviceusage.services.list
    , module Network.Google.Resource.ServiceUsage.Services.List

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

    -- ** BackendRulePathTranslation
    , BackendRulePathTranslation (..)

    -- ** GoogleAPIService
    , GoogleAPIService
    , googleAPIService
    , gasControl
    , gasMetrics
    , gasContext
    , gasAuthentication
    , gasAPIs
    , gasTypes
    , gasSystemTypes
    , gasExperimental
    , gasMonitoredResources
    , gasBackend
    , gasMonitoring
    , gasName
    , gasSystemParameters
    , gasLogs
    , gasDocumentation
    , gasId
    , gasUsage
    , gasEndpoints
    , gasEnums
    , gasConfigVersion
    , gasHTTP
    , gasTitle
    , gasProducerProjectId
    , gasSourceInfo
    , gasBilling
    , gasCustomError
    , gasLogging
    , gasQuota

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

    -- ** OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- ** GoogleAPIServiceusageV1ServiceState
    , GoogleAPIServiceusageV1ServiceState (..)

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

    -- ** ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

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
    , brJwtAudience
    , brSelector
    , brMinDeadline
    , brAddress
    , brOperationDeadline
    , brDeadline
    , brPathTranslation

    -- ** BatchEnableServicesRequest
    , BatchEnableServicesRequest
    , batchEnableServicesRequest
    , besrServiceIds

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

    -- ** EnableServiceRequest
    , EnableServiceRequest
    , enableServiceRequest

    -- ** CustomErrorRule
    , CustomErrorRule
    , customErrorRule
    , cerIsErrorType
    , cerSelector

    -- ** OptionValue
    , OptionValue
    , optionValue
    , ovAddtional

    -- ** BatchEnableServicesResponse
    , BatchEnableServicesResponse
    , batchEnableServicesResponse
    , besrFailures
    , besrServices

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

    -- ** EnableFailure
    , EnableFailure
    , enableFailure
    , efServiceId
    , efErrorMessage

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

    -- ** EnableServiceResponse
    , EnableServiceResponse
    , enableServiceResponse
    , esrService

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

    -- ** DisableServiceResponse
    , DisableServiceResponse
    , disableServiceResponse
    , dsrService

    -- ** MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

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

    -- ** DisableServiceRequest
    , DisableServiceRequest
    , disableServiceRequest
    , dsrDisableDependentServices

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
    , omResourceNames

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

    -- ** GoogleAPIServiceusageV1Service
    , GoogleAPIServiceusageV1Service
    , googleAPIServiceusageV1Service
    , gasvsParent
    , gasvsState
    , gasvsConfig
    , gasvsName

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

    -- ** GoogleAPIServiceusageV1OperationMetadata
    , GoogleAPIServiceusageV1OperationMetadata
    , googleAPIServiceusageV1OperationMetadata
    , gasvomResourceNames

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

    -- ** GoogleAPIServiceusageV1ServiceConfig
    , GoogleAPIServiceusageV1ServiceConfig
    , googleAPIServiceusageV1ServiceConfig
    , gasvscAuthentication
    , gasvscAPIs
    , gasvscName
    , gasvscDocumentation
    , gasvscUsage
    , gasvscEndpoints
    , gasvscTitle
    , gasvscQuota
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.ServiceUsage.Operations.Cancel
import           Network.Google.Resource.ServiceUsage.Operations.Delete
import           Network.Google.Resource.ServiceUsage.Operations.Get
import           Network.Google.Resource.ServiceUsage.Operations.List
import           Network.Google.Resource.ServiceUsage.Services.BatchEnable
import           Network.Google.Resource.ServiceUsage.Services.Disable
import           Network.Google.Resource.ServiceUsage.Services.Enable
import           Network.Google.Resource.ServiceUsage.Services.Get
import           Network.Google.Resource.ServiceUsage.Services.List
import           Network.Google.ServiceUsage.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Service Usage API service.
type ServiceUsageAPI =
     OperationsListResource :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
       :<|> ServicesListResource
       :<|> ServicesBatchEnableResource
       :<|> ServicesGetResource
       :<|> ServicesEnableResource
       :<|> ServicesDisableResource
