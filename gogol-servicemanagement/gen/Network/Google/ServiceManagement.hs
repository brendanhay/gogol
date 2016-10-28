{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ServiceManagement
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Google Service Management allows service producers to publish their
-- services on Google Cloud Platform so that they can be discovered and
-- used by service consumers.
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference>
module Network.Google.ServiceManagement
    (
    -- * Service Configuration
      serviceManagementService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , serviceManagementReadOnlyScope
    , serviceManagementScope

    -- * API Declaration
    , ServiceManagementAPI

    -- * Resources

    -- ** servicemanagement.operations.get
    , module Network.Google.Resource.ServiceManagement.Operations.Get

    -- ** servicemanagement.services.configs.create
    , module Network.Google.Resource.ServiceManagement.Services.Configs.Create

    -- ** servicemanagement.services.configs.get
    , module Network.Google.Resource.ServiceManagement.Services.Configs.Get

    -- ** servicemanagement.services.configs.list
    , module Network.Google.Resource.ServiceManagement.Services.Configs.List

    -- ** servicemanagement.services.configs.submit
    , module Network.Google.Resource.ServiceManagement.Services.Configs.Submit

    -- ** servicemanagement.services.create
    , module Network.Google.Resource.ServiceManagement.Services.Create

    -- ** servicemanagement.services.delete
    , module Network.Google.Resource.ServiceManagement.Services.Delete

    -- ** servicemanagement.services.disable
    , module Network.Google.Resource.ServiceManagement.Services.Disable

    -- ** servicemanagement.services.enable
    , module Network.Google.Resource.ServiceManagement.Services.Enable

    -- ** servicemanagement.services.generateConfigReport
    , module Network.Google.Resource.ServiceManagement.Services.GenerateConfigReport

    -- ** servicemanagement.services.get
    , module Network.Google.Resource.ServiceManagement.Services.Get

    -- ** servicemanagement.services.getConfig
    , module Network.Google.Resource.ServiceManagement.Services.GetConfig

    -- ** servicemanagement.services.getIamPolicy
    , module Network.Google.Resource.ServiceManagement.Services.GetIAMPolicy

    -- ** servicemanagement.services.list
    , module Network.Google.Resource.ServiceManagement.Services.List

    -- ** servicemanagement.services.rollouts.create
    , module Network.Google.Resource.ServiceManagement.Services.Rollouts.Create

    -- ** servicemanagement.services.rollouts.get
    , module Network.Google.Resource.ServiceManagement.Services.Rollouts.Get

    -- ** servicemanagement.services.rollouts.list
    , module Network.Google.Resource.ServiceManagement.Services.Rollouts.List

    -- ** servicemanagement.services.setIamPolicy
    , module Network.Google.Resource.ServiceManagement.Services.SetIAMPolicy

    -- ** servicemanagement.services.testIamPermissions
    , module Network.Google.Resource.ServiceManagement.Services.TestIAMPermissions

    -- ** servicemanagement.services.undelete
    , module Network.Google.Resource.ServiceManagement.Services.Undelete

    -- * Types

    -- ** MetricDescriptorValueType
    , MetricDescriptorValueType (..)

    -- ** UndeleteServiceResponse
    , UndeleteServiceResponse
    , undeleteServiceResponse
    , usrService

    -- ** SystemParameter
    , SystemParameter
    , systemParameter
    , spHTTPHeader
    , spURLQueryParameter
    , spName

    -- ** Advice
    , Advice
    , advice
    , aDescription

    -- ** ConfigFile
    , ConfigFile
    , configFile
    , cfFileContents
    , cfFilePath
    , cfFileType

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

    -- ** OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- ** GenerateConfigReportResponse
    , GenerateConfigReportResponse
    , generateConfigReportResponse
    , gcrrDiagnostics
    , gcrrServiceName
    , gcrrId
    , gcrrChangeReports

    -- ** CounterOptions
    , CounterOptions
    , counterOptions
    , coField
    , coMetric

    -- ** MediaUpload'
    , MediaUpload'
    , mediaUpload
    , muEnabled

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acExemptedMembers

    -- ** Control
    , Control
    , control
    , cEnvironment

    -- ** DeleteServiceStrategy
    , DeleteServiceStrategy
    , deleteServiceStrategy

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
    , mdDisplayName
    , mdLabels
    , mdType
    , mdValueType
    , mdDescription
    , mdUnit

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- ** BackendRule
    , BackendRule
    , backendRule
    , brSelector
    , brAddress
    , brDeadline

    -- ** SubmitConfigSourceRequest
    , SubmitConfigSourceRequest
    , submitConfigSourceRequest
    , scsrValidateOnly
    , scsrConfigSource

    -- ** SourceContext
    , SourceContext
    , sourceContext
    , scFileName

    -- ** ConditionSys
    , ConditionSys (..)

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

    -- ** FieldKind
    , FieldKind (..)

    -- ** EnumSyntax
    , EnumSyntax (..)

    -- ** TrafficPercentStrategy
    , TrafficPercentStrategy
    , trafficPercentStrategy
    , tpsPercentages

    -- ** Service
    , Service
    , service
    , sControl
    , sMetrics
    , sContext
    , sAuthentication
    , sAPIs
    , sTypes
    , sAnalytics
    , sVisibility
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
    , sCustomError
    , sLogging

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** EnableServiceRequest
    , EnableServiceRequest
    , enableServiceRequest
    , esrConsumerId

    -- ** ListServiceConfigsResponse
    , ListServiceConfigsResponse
    , listServiceConfigsResponse
    , lscrServiceConfigs
    , lscrNextPageToken

    -- ** CustomErrorRule
    , CustomErrorRule
    , customErrorRule
    , cerIsErrorType
    , cerSelector

    -- ** SubmitConfigSourceResponse
    , SubmitConfigSourceResponse
    , submitConfigSourceResponse
    , scsrServiceConfig

    -- ** VisibilityRule
    , VisibilityRule
    , visibilityRule
    , vrRestriction
    , vrSelector

    -- ** ChangeReport
    , ChangeReport
    , changeReport
    , crConfigChanges

    -- ** MediaDownload'
    , MediaDownload'
    , mediaDownload
    , mdEnabled

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

    -- ** RuleAction
    , RuleAction (..)

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

    -- ** GenerateConfigReportRequestOldConfig
    , GenerateConfigReportRequestOldConfig
    , generateConfigReportRequestOldConfig
    , gcrrocAddtional

    -- ** Analytics
    , Analytics
    , analytics
    , aProducerDestinations

    -- ** Rule
    , Rule
    , rule
    , rAction
    , rIn
    , rNotIn
    , rConditions
    , rPermissions
    , rLogConfig
    , rDescription

    -- ** Visibility
    , Visibility
    , visibility
    , vRules

    -- ** AuthenticationRule
    , AuthenticationRule
    , authenticationRule
    , arRequirements
    , arSelector
    , arAllowWithoutCredential
    , arOAuth

    -- ** StepStatus
    , StepStatus (..)

    -- ** LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** TrafficPercentStrategyPercentages
    , TrafficPercentStrategyPercentages
    , trafficPercentStrategyPercentages
    , tpspAddtional

    -- ** APISyntax
    , APISyntax (..)

    -- ** TypeSyntax
    , TypeSyntax (..)

    -- ** ListServiceRolloutsResponse
    , ListServiceRolloutsResponse
    , listServiceRolloutsResponse
    , lsrrNextPageToken
    , lsrrRollouts

    -- ** ConfigChange
    , ConfigChange
    , configChange
    , ccOldValue
    , ccNewValue
    , ccAdvices
    , ccChangeType
    , ccElement

    -- ** CloudAuditOptions
    , CloudAuditOptions
    , cloudAuditOptions

    -- ** Backend
    , Backend
    , backend
    , bRules

    -- ** ConditionOp
    , ConditionOp (..)

    -- ** DataAccessOptions
    , DataAccessOptions
    , dataAccessOptions

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

    -- ** Diagnostic
    , Diagnostic
    , diagnostic
    , dLocation
    , dKind
    , dMessage

    -- ** RolloutStatus
    , RolloutStatus (..)

    -- ** SystemParameters
    , SystemParameters
    , systemParameters
    , spRules

    -- ** DiagnosticKind
    , DiagnosticKind (..)

    -- ** ConfigSource
    , ConfigSource
    , configSource
    , csFiles
    , csId

    -- ** Documentation
    , Documentation
    , documentation
    , dSummary
    , dDocumentationRootURL
    , dRules
    , dPages
    , dOverview

    -- ** Step
    , Step
    , step
    , sStatus
    , sDescription

    -- ** Xgafv
    , Xgafv (..)

    -- ** AnalyticsDestination
    , AnalyticsDestination
    , analyticsDestination
    , adMetrics
    , adMonitoredResource

    -- ** ConfigFileFileType
    , ConfigFileFileType (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** ConfigChangeChangeType
    , ConfigChangeChangeType (..)

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

    -- ** FieldCardinality
    , FieldCardinality (..)

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** GenerateConfigReportRequestNewConfig
    , GenerateConfigReportRequestNewConfig
    , generateConfigReportRequestNewConfig
    , gcrrncAddtional

    -- ** HTTP
    , HTTP
    , hTTP
    , hRules

    -- ** DisableServiceRequest
    , DisableServiceRequest
    , disableServiceRequest
    , dsrConsumerId

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pRules
    , pVersion
    , pBindings
    , pIAMOwned

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

    -- ** ManagedService
    , ManagedService
    , managedService
    , msServiceName
    , msProducerProjectId

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omStartTime
    , omSteps
    , omProgressPercentage
    , omResourceNames

    -- ** Endpoint
    , Endpoint
    , endpoint
    , eAliases
    , eAPIs
    , eAllowCORS
    , eName
    , eFeatures

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

    -- ** Option
    , Option
    , option
    , optValue
    , optName

    -- ** Rollout
    , Rollout
    , rollout
    , rStatus
    , rDeleteServiceStrategy
    , rTrafficPercentStrategy
    , rCreatedBy
    , rServiceName
    , rRolloutId
    , rCreateTime

    -- ** Condition
    , Condition
    , condition
    , cOp
    , cIAM
    , cValues
    , cValue
    , cSys
    , cSvc

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

    -- ** ConfigRef
    , ConfigRef
    , configRef
    , crName

    -- ** MethodSyntax
    , MethodSyntax (..)

    -- ** GenerateConfigReportRequest
    , GenerateConfigReportRequest
    , generateConfigReportRequest
    , gcrrOldConfig
    , gcrrNewConfig

    -- ** HTTPRule
    , HTTPRule
    , hTTPRule
    , httprMediaUpload
    , httprSelector
    , httprPost
    , httprMediaDownload
    , httprBody
    , httprCustom
    , httprResponseBody
    , httprPatch
    , httprGet
    , httprAdditionalBindings
    , httprDelete
    , httprPut

    -- ** ConditionIAM
    , ConditionIAM (..)

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** LogConfig
    , LogConfig
    , logConfig
    , lcCloudAudit
    , lcDataAccess
    , lcCounter

    -- ** AuthProvider
    , AuthProvider
    , authProvider
    , apJWKsURI
    , apId
    , apIssuer

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- ** ContextRule
    , ContextRule
    , contextRule
    , crSelector
    , crRequested
    , crProvided
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.ServiceManagement.Operations.Get
import           Network.Google.Resource.ServiceManagement.Services.Configs.Create
import           Network.Google.Resource.ServiceManagement.Services.Configs.Get
import           Network.Google.Resource.ServiceManagement.Services.Configs.List
import           Network.Google.Resource.ServiceManagement.Services.Configs.Submit
import           Network.Google.Resource.ServiceManagement.Services.Create
import           Network.Google.Resource.ServiceManagement.Services.Delete
import           Network.Google.Resource.ServiceManagement.Services.Disable
import           Network.Google.Resource.ServiceManagement.Services.Enable
import           Network.Google.Resource.ServiceManagement.Services.GenerateConfigReport
import           Network.Google.Resource.ServiceManagement.Services.Get
import           Network.Google.Resource.ServiceManagement.Services.GetConfig
import           Network.Google.Resource.ServiceManagement.Services.GetIAMPolicy
import           Network.Google.Resource.ServiceManagement.Services.List
import           Network.Google.Resource.ServiceManagement.Services.Rollouts.Create
import           Network.Google.Resource.ServiceManagement.Services.Rollouts.Get
import           Network.Google.Resource.ServiceManagement.Services.Rollouts.List
import           Network.Google.Resource.ServiceManagement.Services.SetIAMPolicy
import           Network.Google.Resource.ServiceManagement.Services.TestIAMPermissions
import           Network.Google.Resource.ServiceManagement.Services.Undelete
import           Network.Google.ServiceManagement.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Service Management API service.
type ServiceManagementAPI =
     OperationsGetResource :<|>
       ServicesRolloutsListResource
       :<|> ServicesRolloutsGetResource
       :<|> ServicesRolloutsCreateResource
       :<|> ServicesConfigsListResource
       :<|> ServicesConfigsGetResource
       :<|> ServicesConfigsSubmitResource
       :<|> ServicesConfigsCreateResource
       :<|> ServicesGenerateConfigReportResource
       :<|> ServicesListResource
       :<|> ServicesUndeleteResource
       :<|> ServicesGetIAMPolicyResource
       :<|> ServicesGetResource
       :<|> ServicesEnableResource
       :<|> ServicesCreateResource
       :<|> ServicesDisableResource
       :<|> ServicesGetConfigResource
       :<|> ServicesSetIAMPolicyResource
       :<|> ServicesTestIAMPermissionsResource
       :<|> ServicesDeleteResource
