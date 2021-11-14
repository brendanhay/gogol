{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceControl.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceControl.Types
    (
    -- * Service Configuration
      serviceControlService

    -- * OAuth Scopes
    , serviceControlScope
    , cloudPlatformScope

    -- * AuditLogServiceData
    , AuditLogServiceData
    , auditLogServiceData
    , alsdAddtional

    -- * AuditLogMetadata
    , AuditLogMetadata
    , auditLogMetadata
    , almAddtional

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmCallerSuppliedUserAgent
    , rmCallerIP
    , rmDestinationAttributes
    , rmCallerNetwork
    , rmRequestAttributes

    -- * ThirdPartyPrincipal
    , ThirdPartyPrincipal
    , thirdPartyPrincipal
    , tppThirdPartyClaims

    -- * ResourceLabels
    , ResourceLabels
    , resourceLabels
    , rlAddtional

    -- * ReportRequest
    , ReportRequest
    , reportRequest
    , rrServiceConfigId
    , rrOperations

    -- * ResponseHeaders
    , ResponseHeaders
    , responseHeaders
    , rhAddtional

    -- * CheckRequest
    , CheckRequest
    , checkRequest
    , crFlags
    , crResources
    , crAttributes
    , crServiceConfigId

    -- * Peer
    , Peer
    , peer
    , pRegionCode
    , pIP
    , pPrincipal
    , pLabels
    , pPort

    -- * AuthorizationInfo
    , AuthorizationInfo
    , authorizationInfo
    , aiGranted
    , aiResourceAttributes
    , aiResource
    , aiPermission

    -- * ServiceAccountDelegationInfo
    , ServiceAccountDelegationInfo
    , serviceAccountDelegationInfo
    , sadiThirdPartyPrincipal
    , sadiFirstPartyPrincipal
    , sadiPrincipalSubject

    -- * Auth
    , Auth
    , auth
    , aPresenter
    , aClaims
    , aAudiences
    , aPrincipal
    , aAccessLevels

    -- * Response
    , Response
    , response
    , rTime
    , rSize
    , rBackendLatency
    , rHeaders
    , rCode

    -- * ThirdPartyPrincipalThirdPartyClaims
    , ThirdPartyPrincipalThirdPartyClaims
    , thirdPartyPrincipalThirdPartyClaims
    , tpptpcAddtional

    -- * AttributeContext
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

    -- * SpanContext
    , SpanContext
    , spanContext
    , scSpanName

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * FirstPartyPrincipal
    , FirstPartyPrincipal
    , firstPartyPrincipal
    , fppPrincipalEmail
    , fppServiceMetadata

    -- * ResourceAnnotations
    , ResourceAnnotations
    , resourceAnnotations
    , raAddtional

    -- * AuthClaims
    , AuthClaims
    , authClaims
    , acAddtional

    -- * AuthenticationInfoThirdPartyPrincipal
    , AuthenticationInfoThirdPartyPrincipal
    , authenticationInfoThirdPartyPrincipal
    , aitppAddtional

    -- * AttributeContextExtensionsItem
    , AttributeContextExtensionsItem
    , attributeContextExtensionsItem
    , aceiAddtional

    -- * ResourceInfo
    , ResourceInfo
    , resourceInfo
    , riLocation
    , riName
    , riContainer
    , riType
    , riPermission

    -- * ResourceLocation
    , ResourceLocation
    , resourceLocation
    , rlOriginalLocations
    , rlCurrentLocations

    -- * PeerLabels
    , PeerLabels
    , peerLabels
    , plAddtional

    -- * Resource
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

    -- * Xgafv
    , Xgafv (..)

    -- * AuditLogResponse
    , AuditLogResponse
    , auditLogResponse
    , alrAddtional

    -- * RequestHeaders
    , RequestHeaders
    , requestHeaders
    , rAddtional

    -- * CheckResponse
    , CheckResponse
    , checkResponse
    , crStatus
    , crHeaders

    -- * AuditLogResourceOriginalState
    , AuditLogResourceOriginalState
    , auditLogResourceOriginalState
    , alrosAddtional

    -- * ReportResponse
    , ReportResponse
    , reportResponse

    -- * AuditLogRequest
    , AuditLogRequest
    , auditLogRequest
    , aAddtional

    -- * API
    , API
    , api
    , aService
    , aOperation
    , aProtocol
    , aVersion

    -- * FirstPartyPrincipalServiceMetadata
    , FirstPartyPrincipalServiceMetadata
    , firstPartyPrincipalServiceMetadata
    , fppsmAddtional

    -- * AuthenticationInfo
    , AuthenticationInfo
    , authenticationInfo
    , aiThirdPartyPrincipal
    , aiServiceAccountDelegationInfo
    , aiPrincipalEmail
    , aiPrincipalSubject
    , aiAuthoritySelector
    , aiServiceAccountKeyName

    -- * AuditLog
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

    -- * CheckResponseHeaders
    , CheckResponseHeaders
    , checkResponseHeaders
    , crhAddtional

    -- * Request'
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
import Network.Google.ServiceControl.Types.Product
import Network.Google.ServiceControl.Types.Sum

-- | Default request referring to version 'v2' of the Service Control API. This contains the host and root path used as a starting point for constructing service requests.
serviceControlService :: ServiceConfig
serviceControlService
  = defaultService (ServiceId "servicecontrol:v2")
      "servicecontrol.googleapis.com"

-- | Manage your Google Service Control data
serviceControlScope :: Proxy '["https://www.googleapis.com/auth/servicecontrol"]
serviceControlScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
