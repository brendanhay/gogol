{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ServiceConsumerManagement
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages the service consumers of a Service Infrastructure service.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference>
module Network.Google.ServiceConsumerManagement
    (
    -- * Service Configuration
      serviceConsumerManagementService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , ServiceConsumerManagementAPI

    -- * Resources

    -- ** serviceconsumermanagement.operations.cancel
    , module Network.Google.Resource.ServiceConsumerManagement.Operations.Cancel

    -- ** serviceconsumermanagement.operations.delete
    , module Network.Google.Resource.ServiceConsumerManagement.Operations.Delete

    -- ** serviceconsumermanagement.operations.get
    , module Network.Google.Resource.ServiceConsumerManagement.Operations.Get

    -- ** serviceconsumermanagement.operations.list
    , module Network.Google.Resource.ServiceConsumerManagement.Operations.List

    -- ** serviceconsumermanagement.services.search
    , module Network.Google.Resource.ServiceConsumerManagement.Services.Search

    -- ** serviceconsumermanagement.services.tenancyUnits.addProject
    , module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.AddProject

    -- ** serviceconsumermanagement.services.tenancyUnits.applyProjectConfig
    , module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.ApplyProjectConfig

    -- ** serviceconsumermanagement.services.tenancyUnits.attachProject
    , module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.AttachProject

    -- ** serviceconsumermanagement.services.tenancyUnits.create
    , module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.Create

    -- ** serviceconsumermanagement.services.tenancyUnits.delete
    , module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.Delete

    -- ** serviceconsumermanagement.services.tenancyUnits.list
    , module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.List

    -- ** serviceconsumermanagement.services.tenancyUnits.removeProject
    , module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.RemoveProject

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

    -- ** TenantResourceStatus
    , TenantResourceStatus (..)

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

    -- ** SourceContext
    , SourceContext
    , sourceContext
    , scFileName

    -- ** SearchTenancyUnitsResponse
    , SearchTenancyUnitsResponse
    , searchTenancyUnitsResponse
    , sturTenancyUnits
    , sturNextPageToken

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

    -- ** ServiceAccountConfig
    , ServiceAccountConfig
    , serviceAccountConfig
    , sacAccountId
    , sacTenantProjectRoles

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

    -- ** TenantProjectPolicy
    , TenantProjectPolicy
    , tenantProjectPolicy
    , tppPolicyBindings

    -- ** PolicyBinding
    , PolicyBinding
    , policyBinding
    , pbMembers
    , pbRole

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

    -- ** TenancyUnit
    , TenancyUnit
    , tenancyUnit
    , tuService
    , tuName
    , tuTenantResources
    , tuConsumer
    , tuCreateTime

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

    -- ** TenantProjectConfig
    , TenantProjectConfig
    , tenantProjectConfig
    , tpcFolder
    , tpcServiceAccountConfig
    , tpcTenantProjectPolicy
    , tpcLabels
    , tpcServices
    , tpcBillingConfig

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

    -- ** AttachTenantProjectRequest
    , AttachTenantProjectRequest
    , attachTenantProjectRequest
    , atprTag
    , atprExternalResource
    , atprReservedResource

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

    -- ** RemoveTenantProjectRequest
    , RemoveTenantProjectRequest
    , removeTenantProjectRequest
    , rtprTag

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

    -- ** ApplyTenantProjectConfigRequest
    , ApplyTenantProjectConfigRequest
    , applyTenantProjectConfigRequest
    , atpcrProjectConfig
    , atpcrTag

    -- ** ListTenancyUnitsResponse
    , ListTenancyUnitsResponse
    , listTenancyUnitsResponse
    , lturTenancyUnits
    , lturNextPageToken

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** TenantResource
    , TenantResource
    , tenantResource
    , trStatus
    , trTag
    , trResource

    -- ** TenantProjectConfigLabels
    , TenantProjectConfigLabels
    , tenantProjectConfigLabels
    , tpclAddtional

    -- ** AuthProvider
    , AuthProvider
    , authProvider
    , apJWKsURI
    , apAudiences
    , apId
    , apAuthorizationURL
    , apIssuer

    -- ** BillingConfig
    , BillingConfig
    , billingConfig
    , bcBillingAccount

    -- ** CreateTenancyUnitRequest
    , CreateTenancyUnitRequest
    , createTenancyUnitRequest
    , cturTenancyUnitId

    -- ** ContextRule
    , ContextRule
    , contextRule
    , crSelector
    , crRequested
    , crAllowedRequestExtensions
    , crProvided
    , crAllowedResponseExtensions

    -- ** AddTenantProjectRequest
    , AddTenantProjectRequest
    , addTenantProjectRequest
    , aProjectConfig
    , aTag
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.ServiceConsumerManagement.Operations.Cancel
import           Network.Google.Resource.ServiceConsumerManagement.Operations.Delete
import           Network.Google.Resource.ServiceConsumerManagement.Operations.Get
import           Network.Google.Resource.ServiceConsumerManagement.Operations.List
import           Network.Google.Resource.ServiceConsumerManagement.Services.Search
import           Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.AddProject
import           Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.ApplyProjectConfig
import           Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.AttachProject
import           Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.Create
import           Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.Delete
import           Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.List
import           Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.RemoveProject
import           Network.Google.ServiceConsumerManagement.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Service Consumer Management API service.
type ServiceConsumerManagementAPI =
     OperationsListResource :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
       :<|> ServicesTenancyUnitsListResource
       :<|> ServicesTenancyUnitsAttachProjectResource
       :<|> ServicesTenancyUnitsAddProjectResource
       :<|> ServicesTenancyUnitsCreateResource
       :<|> ServicesTenancyUnitsApplyProjectConfigResource
       :<|> ServicesTenancyUnitsRemoveProjectResource
       :<|> ServicesTenancyUnitsDeleteResource
       :<|> ServicesSearchResource
