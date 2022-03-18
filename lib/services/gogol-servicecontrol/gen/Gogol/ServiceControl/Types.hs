{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceControl.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ServiceControl.Types
  ( -- * Configuration
    serviceControlService,

    -- * OAuth Scopes
    cloudPlatformScope,
    serviceControlScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Api
    Api (..),
    newApi,

    -- ** AttributeContext
    AttributeContext (..),
    newAttributeContext,

    -- ** AttributeContext_ExtensionsItem
    AttributeContext_ExtensionsItem (..),
    newAttributeContext_ExtensionsItem,

    -- ** AuditLog
    AuditLog (..),
    newAuditLog,

    -- ** AuditLog_Metadata
    AuditLog_Metadata (..),
    newAuditLog_Metadata,

    -- ** AuditLog_Request
    AuditLog_Request (..),
    newAuditLog_Request,

    -- ** AuditLog_ResourceOriginalState
    AuditLog_ResourceOriginalState (..),
    newAuditLog_ResourceOriginalState,

    -- ** AuditLog_Response
    AuditLog_Response (..),
    newAuditLog_Response,

    -- ** AuditLog_ServiceData
    AuditLog_ServiceData (..),
    newAuditLog_ServiceData,

    -- ** Auth
    Auth (..),
    newAuth,

    -- ** Auth_Claims
    Auth_Claims (..),
    newAuth_Claims,

    -- ** AuthenticationInfo
    AuthenticationInfo (..),
    newAuthenticationInfo,

    -- ** AuthenticationInfo_ThirdPartyPrincipal
    AuthenticationInfo_ThirdPartyPrincipal (..),
    newAuthenticationInfo_ThirdPartyPrincipal,

    -- ** AuthorizationInfo
    AuthorizationInfo (..),
    newAuthorizationInfo,

    -- ** CheckRequest
    CheckRequest (..),
    newCheckRequest,

    -- ** CheckResponse
    CheckResponse (..),
    newCheckResponse,

    -- ** CheckResponse_Headers
    CheckResponse_Headers (..),
    newCheckResponse_Headers,

    -- ** FirstPartyPrincipal
    FirstPartyPrincipal (..),
    newFirstPartyPrincipal,

    -- ** FirstPartyPrincipal_ServiceMetadata
    FirstPartyPrincipal_ServiceMetadata (..),
    newFirstPartyPrincipal_ServiceMetadata,

    -- ** Peer
    Peer (..),
    newPeer,

    -- ** Peer_Labels
    Peer_Labels (..),
    newPeer_Labels,

    -- ** ReportRequest
    ReportRequest (..),
    newReportRequest,

    -- ** ReportResponse
    ReportResponse (..),
    newReportResponse,

    -- ** Request'
    Request' (..),
    newRequest,

    -- ** Request_Headers
    Request_Headers (..),
    newRequest_Headers,

    -- ** RequestMetadata
    RequestMetadata (..),
    newRequestMetadata,

    -- ** Resource
    Resource (..),
    newResource,

    -- ** Resource_Annotations
    Resource_Annotations (..),
    newResource_Annotations,

    -- ** Resource_Labels
    Resource_Labels (..),
    newResource_Labels,

    -- ** ResourceInfo
    ResourceInfo (..),
    newResourceInfo,

    -- ** ResourceLocation
    ResourceLocation (..),
    newResourceLocation,

    -- ** Response
    Response (..),
    newResponse,

    -- ** Response_Headers
    Response_Headers (..),
    newResponse_Headers,

    -- ** ServiceAccountDelegationInfo
    ServiceAccountDelegationInfo (..),
    newServiceAccountDelegationInfo,

    -- ** SpanContext
    SpanContext (..),
    newSpanContext,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** ThirdPartyPrincipal
    ThirdPartyPrincipal (..),
    newThirdPartyPrincipal,

    -- ** ThirdPartyPrincipal_ThirdPartyClaims
    ThirdPartyPrincipal_ThirdPartyClaims (..),
    newThirdPartyPrincipal_ThirdPartyClaims,

    -- ** V2HttpRequest
    V2HttpRequest (..),
    newV2HttpRequest,

    -- ** V2LogEntry
    V2LogEntry (..),
    newV2LogEntry,

    -- ** V2LogEntry_Labels
    V2LogEntry_Labels (..),
    newV2LogEntry_Labels,

    -- ** V2LogEntry_MonitoredResourceLabels
    V2LogEntry_MonitoredResourceLabels (..),
    newV2LogEntry_MonitoredResourceLabels,

    -- ** V2LogEntry_ProtoPayload
    V2LogEntry_ProtoPayload (..),
    newV2LogEntry_ProtoPayload,

    -- ** V2LogEntry_Severity
    V2LogEntry_Severity (..),

    -- ** V2LogEntry_StructPayload
    V2LogEntry_StructPayload (..),
    newV2LogEntry_StructPayload,

    -- ** V2LogEntryOperation
    V2LogEntryOperation (..),
    newV2LogEntryOperation,

    -- ** V2LogEntrySourceLocation
    V2LogEntrySourceLocation (..),
    newV2LogEntrySourceLocation,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceControl.Internal.Product
import Gogol.ServiceControl.Internal.Sum

-- | Default request referring to version @v2@ of the Service Control API. This contains the host and root path used as a starting point for constructing service requests.
serviceControlService :: Core.ServiceConfig
serviceControlService =
  Core.defaultService
    (Core.ServiceId "servicecontrol:v2")
    "servicecontrol.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | Manage your Google Service Control data
serviceControlScope :: Core.Proxy '["https://www.googleapis.com/auth/servicecontrol"]
serviceControlScope = Core.Proxy
