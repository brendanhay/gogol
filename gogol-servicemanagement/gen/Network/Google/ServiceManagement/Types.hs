{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceManagement.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceManagement.Types
    (
    -- * Service Configuration
      serviceManagementService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , serviceManagementReadOnlyScope
    , serviceManagementScope

    -- * MetricDescriptorValueType
    , MetricDescriptorValueType (..)

    -- * UndeleteServiceResponse
    , UndeleteServiceResponse
    , undeleteServiceResponse
    , usrService

    -- * SystemParameter
    , SystemParameter
    , systemParameter
    , spHTTPHeader
    , spURLQueryParameter
    , spName

    -- * Advice
    , Advice
    , advice
    , aDescription

    -- * ConfigFile
    , ConfigFile
    , configFile
    , cfFileContents
    , cfFilePath
    , cfFileType

    -- * MonitoredResourceDescriptor
    , MonitoredResourceDescriptor
    , monitoredResourceDescriptor
    , mrdName
    , mrdDisplayName
    , mrdLabels
    , mrdType
    , mrdDescription

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

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * GenerateConfigReportResponse
    , GenerateConfigReportResponse
    , generateConfigReportResponse
    , gcrrDiagnostics
    , gcrrServiceName
    , gcrrId
    , gcrrChangeReports

    -- * BillingDestination
    , BillingDestination
    , billingDestination
    , bdMetrics
    , bdMonitoredResource

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * Control
    , Control
    , control
    , cEnvironment

    -- * DeleteServiceStrategy
    , DeleteServiceStrategy
    , deleteServiceStrategy

    -- * AuthRequirement
    , AuthRequirement
    , authRequirement
    , arProviderId
    , arAudiences

    -- * ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

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
    , mdMetricKind
    , mdName
    , mdMetadata
    , mdDisplayName
    , mdLabels
    , mdType
    , mdValueType
    , mdDescription
    , mdUnit

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- * BackendRule
    , BackendRule
    , backendRule
    , brSelector
    , brMinDeadline
    , brAddress
    , brOperationDeadline
    , brDeadline

    -- * SubmitConfigSourceRequest
    , SubmitConfigSourceRequest
    , submitConfigSourceRequest
    , scsrValidateOnly
    , scsrConfigSource

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

    -- * TrafficPercentStrategy
    , TrafficPercentStrategy
    , trafficPercentStrategy
    , tpsPercentages

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

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * EnableServiceRequest
    , EnableServiceRequest
    , enableServiceRequest
    , esrConsumerId

    -- * ListServiceConfigsResponse
    , ListServiceConfigsResponse
    , listServiceConfigsResponse
    , lscrServiceConfigs
    , lscrNextPageToken

    -- * CustomErrorRule
    , CustomErrorRule
    , customErrorRule
    , cerIsErrorType
    , cerSelector

    -- * SubmitConfigSourceResponse
    , SubmitConfigSourceResponse
    , submitConfigSourceResponse
    , scsrServiceConfig

    -- * ChangeReport
    , ChangeReport
    , changeReport
    , crConfigChanges

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

    -- * GenerateConfigReportRequestOldConfig
    , GenerateConfigReportRequestOldConfig
    , generateConfigReportRequestOldConfig
    , gcrrocAddtional

    -- * AuthenticationRule
    , AuthenticationRule
    , authenticationRule
    , arRequirements
    , arSelector
    , arAllowWithoutCredential
    , arOAuth

    -- * StepStatus
    , StepStatus (..)

    -- * LabelDescriptorValueType
    , LabelDescriptorValueType (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * MetricRuleMetricCosts
    , MetricRuleMetricCosts
    , metricRuleMetricCosts
    , mrmcAddtional

    -- * TrafficPercentStrategyPercentages
    , TrafficPercentStrategyPercentages
    , trafficPercentStrategyPercentages
    , tpspAddtional

    -- * AuthorizationConfig
    , AuthorizationConfig
    , authorizationConfig
    , acProvider

    -- * APISyntax
    , APISyntax (..)

    -- * TypeSyntax
    , TypeSyntax (..)

    -- * Experimental
    , Experimental
    , experimental
    , eAuthorization

    -- * ListServiceRolloutsResponse
    , ListServiceRolloutsResponse
    , listServiceRolloutsResponse
    , lsrrNextPageToken
    , lsrrRollouts

    -- * ConfigChange
    , ConfigChange
    , configChange
    , ccOldValue
    , ccNewValue
    , ccAdvices
    , ccChangeType
    , ccElement

    -- * Backend
    , Backend
    , backend
    , bRules

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

    -- * Diagnostic
    , Diagnostic
    , diagnostic
    , dLocation
    , dKind
    , dMessage

    -- * RolloutStatus
    , RolloutStatus (..)

    -- * SystemParameters
    , SystemParameters
    , systemParameters
    , spRules

    -- * DiagnosticKind
    , DiagnosticKind (..)

    -- * ConfigSource
    , ConfigSource
    , configSource
    , csFiles
    , csId

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Documentation
    , Documentation
    , documentation
    , dSummary
    , dDocumentationRootURL
    , dRules
    , dPages
    , dOverview

    -- * Step
    , Step
    , step
    , sStatus
    , sDescription

    -- * Xgafv
    , Xgafv (..)

    -- * ConfigFileFileType
    , ConfigFileFileType (..)

    -- * MetricDescriptorMetadata
    , MetricDescriptorMetadata
    , metricDescriptorMetadata
    , mdmSamplePeriod
    , mdmIngestDelay
    , mdmLaunchStage

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * ConfigChangeChangeType
    , ConfigChangeChangeType (..)

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

    -- * Usage
    , Usage
    , usage
    , uRequirements
    , uRules
    , uProducerNotificationChannel

    -- * FieldCardinality
    , FieldCardinality (..)

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * GenerateConfigReportRequestNewConfig
    , GenerateConfigReportRequestNewConfig
    , generateConfigReportRequestNewConfig
    , gcrrncAddtional

    -- * HTTP
    , HTTP
    , hTTP
    , hRules
    , hFullyDecodeReservedExpansion

    -- * DisableServiceRequest
    , DisableServiceRequest
    , disableServiceRequest
    , dsrConsumerId

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

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

    -- * ManagedService
    , ManagedService
    , managedService
    , msServiceName
    , msProducerProjectId

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omStartTime
    , omSteps
    , omProgressPercentage
    , omResourceNames

    -- * Endpoint
    , Endpoint
    , endpoint
    , eAliases
    , eAllowCORS
    , eName
    , eFeatures
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

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

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

    -- * Rollout
    , Rollout
    , rollout
    , rStatus
    , rDeleteServiceStrategy
    , rTrafficPercentStrategy
    , rCreatedBy
    , rServiceName
    , rRolloutId
    , rCreateTime

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

    -- * ConfigRef
    , ConfigRef
    , configRef
    , crName

    -- * MethodSyntax
    , MethodSyntax (..)

    -- * GenerateConfigReportRequest
    , GenerateConfigReportRequest
    , generateConfigReportRequest
    , gcrrOldConfig
    , gcrrNewConfig

    -- * SourceInfoSourceFilesItem
    , SourceInfoSourceFilesItem
    , sourceInfoSourceFilesItem
    , sisfiAddtional

    -- * Quota
    , Quota
    , quota
    , qLimits
    , qMetricRules

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

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * AuthProvider
    , AuthProvider
    , authProvider
    , apJWKsURI
    , apAudiences
    , apId
    , apAuthorizationURL
    , apIssuer

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * ContextRule
    , ContextRule
    , contextRule
    , crSelector
    , crRequested
    , crAllowedRequestExtensions
    , crProvided
    , crAllowedResponseExtensions
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types.Product
import           Network.Google.ServiceManagement.Types.Sum

-- | Default request referring to version 'v1' of the Service Management API. This contains the host and root path used as a starting point for constructing service requests.
serviceManagementService :: ServiceConfig
serviceManagementService
  = defaultService (ServiceId "servicemanagement:v1")
      "servicemanagement.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View your Google API service configuration
serviceManagementReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/service.management.readonly"]
serviceManagementReadOnlyScope = Proxy;

-- | Manage your Google API service configuration
serviceManagementScope :: Proxy '["https://www.googleapis.com/auth/service.management"]
serviceManagementScope = Proxy;
