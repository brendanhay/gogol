{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ServiceControl
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides admission control and telemetry reporting for services
-- integrated with Service Infrastructure.
--
-- /See:/ <https://cloud.google.com/service-control/ Service Control API Reference>
module Network.Google.ServiceControl
    (
    -- * Service Configuration
      serviceControlService

    -- * OAuth Scopes
    , serviceControlScope
    , cloudPlatformScope

    -- * API Declaration
    , ServiceControlAPI

    -- * Resources

    -- ** servicecontrol.services.check
    , module Network.Google.Resource.ServiceControl.Services.Check

    -- ** servicecontrol.services.report
    , module Network.Google.Resource.ServiceControl.Services.Report

    -- * Types

    -- ** AuditLogServiceData
    , AuditLogServiceData
    , auditLogServiceData
    , alsdAddtional

    -- ** AuditLogMetadata
    , AuditLogMetadata
    , auditLogMetadata
    , almAddtional

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmCallerSuppliedUserAgent
    , rmCallerIP
    , rmDestinationAttributes
    , rmCallerNetwork
    , rmRequestAttributes

    -- ** ThirdPartyPrincipal
    , ThirdPartyPrincipal
    , thirdPartyPrincipal
    , tppThirdPartyClaims

    -- ** ResourceLabels
    , ResourceLabels
    , resourceLabels
    , rlAddtional

    -- ** ReportRequest
    , ReportRequest
    , reportRequest
    , rrServiceConfigId
    , rrOperations

    -- ** ResponseHeaders
    , ResponseHeaders
    , responseHeaders
    , rhAddtional

    -- ** CheckRequest
    , CheckRequest
    , checkRequest
    , crFlags
    , crResources
    , crAttributes
    , crServiceConfigId

    -- ** Peer
    , Peer
    , peer
    , pRegionCode
    , pIP
    , pPrincipal
    , pLabels
    , pPort

    -- ** AuthorizationInfo
    , AuthorizationInfo
    , authorizationInfo
    , aiGranted
    , aiResourceAttributes
    , aiResource
    , aiPermission

    -- ** ServiceAccountDelegationInfo
    , ServiceAccountDelegationInfo
    , serviceAccountDelegationInfo
    , sadiThirdPartyPrincipal
    , sadiFirstPartyPrincipal
    , sadiPrincipalSubject

    -- ** Auth
    , Auth
    , auth
    , aPresenter
    , aClaims
    , aAudiences
    , aPrincipal
    , aAccessLevels

    -- ** Response
    , Response
    , response
    , rTime
    , rSize
    , rBackendLatency
    , rHeaders
    , rCode

    -- ** ThirdPartyPrincipalThirdPartyClaims
    , ThirdPartyPrincipalThirdPartyClaims
    , thirdPartyPrincipalThirdPartyClaims
    , tpptpcAddtional

    -- ** AttributeContext
    , AttributeContext
    , attributeContext
    , acDestination
    , acOrigin
    , acExtensions
    , acResponse
    , acResource
    , acSource
    , acAPI
    , acRequest

    -- ** SpanContext
    , SpanContext
    , spanContext
    , scSpanName

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** FirstPartyPrincipal
    , FirstPartyPrincipal
    , firstPartyPrincipal
    , fppPrincipalEmail
    , fppServiceMetadata

    -- ** ResourceAnnotations
    , ResourceAnnotations
    , resourceAnnotations
    , raAddtional

    -- ** AuthClaims
    , AuthClaims
    , authClaims
    , acAddtional

    -- ** AuthenticationInfoThirdPartyPrincipal
    , AuthenticationInfoThirdPartyPrincipal
    , authenticationInfoThirdPartyPrincipal
    , aitppAddtional

    -- ** AttributeContextExtensionsItem
    , AttributeContextExtensionsItem
    , attributeContextExtensionsItem
    , aceiAddtional

    -- ** ResourceInfo
    , ResourceInfo
    , resourceInfo
    , riLocation
    , riName
    , riContainer
    , riType
    , riPermission

    -- ** ResourceLocation
    , ResourceLocation
    , resourceLocation
    , rlOriginalLocations
    , rlCurrentLocations

    -- ** PeerLabels
    , PeerLabels
    , peerLabels
    , plAddtional

    -- ** Resource
    , Resource
    , resource
    , rAnnotations
    , rEtag
    , rService
    , rLocation
    , rUid
    , rUpdateTime
    , rDeleteTime
    , rName
    , rDisplayName
    , rLabels
    , rType
    , rCreateTime

    -- ** Xgafv
    , Xgafv (..)

    -- ** AuditLogResponse
    , AuditLogResponse
    , auditLogResponse
    , alrAddtional

    -- ** RequestHeaders
    , RequestHeaders
    , requestHeaders
    , rAddtional

    -- ** CheckResponse
    , CheckResponse
    , checkResponse
    , crStatus
    , crHeaders

    -- ** AuditLogResourceOriginalState
    , AuditLogResourceOriginalState
    , auditLogResourceOriginalState
    , alrosAddtional

    -- ** ReportResponse
    , ReportResponse
    , reportResponse

    -- ** AuditLogRequest
    , AuditLogRequest
    , auditLogRequest
    , aAddtional

    -- ** API
    , API
    , api
    , aService
    , aOperation
    , aProtocol
    , aVersion

    -- ** FirstPartyPrincipalServiceMetadata
    , FirstPartyPrincipalServiceMetadata
    , firstPartyPrincipalServiceMetadata
    , fppsmAddtional

    -- ** AuthenticationInfo
    , AuthenticationInfo
    , authenticationInfo
    , aiThirdPartyPrincipal
    , aiServiceAccountDelegationInfo
    , aiPrincipalEmail
    , aiPrincipalSubject
    , aiAuthoritySelector
    , aiServiceAccountKeyName

    -- ** AuditLog
    , AuditLog
    , auditLog
    , alRequestMetadata
    , alStatus
    , alResourceName
    , alAuthorizationInfo
    , alServiceData
    , alMethodName
    , alResponse
    , alResourceOriginalState
    , alResourceLocation
    , alServiceName
    , alMetadata
    , alNumResponseItems
    , alAuthenticationInfo
    , alRequest

    -- ** CheckResponseHeaders
    , CheckResponseHeaders
    , checkResponseHeaders
    , crhAddtional

    -- ** Request'
    , Request'
    , request'
    , reqPath
    , reqTime
    , reqSize
    , reqAuth
    , reqProtocol
    , reqReason
    , reqHeaders
    , reqMethod
    , reqQuery
    , reqScheme
    , reqId
    , reqHost
    ) where

import Network.Google.Prelude
import Network.Google.Resource.ServiceControl.Services.Check
import Network.Google.Resource.ServiceControl.Services.Report
import Network.Google.ServiceControl.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Service Control API service.
type ServiceControlAPI =
     ServicesReportResource :<|> ServicesCheckResource
