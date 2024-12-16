{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceControl.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ServiceControl.Internal.Product
  (

    -- * Api
    Api (..),
    newApi,

    -- * AttributeContext
    AttributeContext (..),
    newAttributeContext,

    -- * AttributeContext_ExtensionsItem
    AttributeContext_ExtensionsItem (..),
    newAttributeContext_ExtensionsItem,

    -- * AuditLog
    AuditLog (..),
    newAuditLog,

    -- * AuditLog_Metadata
    AuditLog_Metadata (..),
    newAuditLog_Metadata,

    -- * AuditLog_Request
    AuditLog_Request (..),
    newAuditLog_Request,

    -- * AuditLog_ResourceOriginalState
    AuditLog_ResourceOriginalState (..),
    newAuditLog_ResourceOriginalState,

    -- * AuditLog_Response
    AuditLog_Response (..),
    newAuditLog_Response,

    -- * AuditLog_ServiceData
    AuditLog_ServiceData (..),
    newAuditLog_ServiceData,

    -- * Auth
    Auth (..),
    newAuth,

    -- * Auth_Claims
    Auth_Claims (..),
    newAuth_Claims,

    -- * AuthenticationInfo
    AuthenticationInfo (..),
    newAuthenticationInfo,

    -- * AuthenticationInfo_ThirdPartyPrincipal
    AuthenticationInfo_ThirdPartyPrincipal (..),
    newAuthenticationInfo_ThirdPartyPrincipal,

    -- * AuthorizationInfo
    AuthorizationInfo (..),
    newAuthorizationInfo,

    -- * CheckRequest
    CheckRequest (..),
    newCheckRequest,

    -- * CheckResponse
    CheckResponse (..),
    newCheckResponse,

    -- * CheckResponse_Headers
    CheckResponse_Headers (..),
    newCheckResponse_Headers,

    -- * FirstPartyPrincipal
    FirstPartyPrincipal (..),
    newFirstPartyPrincipal,

    -- * FirstPartyPrincipal_ServiceMetadata
    FirstPartyPrincipal_ServiceMetadata (..),
    newFirstPartyPrincipal_ServiceMetadata,

    -- * OrgPolicyViolationInfo
    OrgPolicyViolationInfo (..),
    newOrgPolicyViolationInfo,

    -- * OrgPolicyViolationInfo_Payload
    OrgPolicyViolationInfo_Payload (..),
    newOrgPolicyViolationInfo_Payload,

    -- * OrgPolicyViolationInfo_ResourceTags
    OrgPolicyViolationInfo_ResourceTags (..),
    newOrgPolicyViolationInfo_ResourceTags,

    -- * Peer
    Peer (..),
    newPeer,

    -- * Peer_Labels
    Peer_Labels (..),
    newPeer_Labels,

    -- * PolicyViolationInfo
    PolicyViolationInfo (..),
    newPolicyViolationInfo,

    -- * ReportRequest
    ReportRequest (..),
    newReportRequest,

    -- * ReportResponse
    ReportResponse (..),
    newReportResponse,

    -- * ReportResponse_Extensions
    ReportResponse_Extensions (..),
    newReportResponse_Extensions,

    -- * Request'
    Request' (..),
    newRequest,

    -- * Request_Headers
    Request_Headers (..),
    newRequest_Headers,

    -- * RequestMetadata
    RequestMetadata (..),
    newRequestMetadata,

    -- * Resource
    Resource (..),
    newResource,

    -- * Resource_Annotations
    Resource_Annotations (..),
    newResource_Annotations,

    -- * Resource_Labels
    Resource_Labels (..),
    newResource_Labels,

    -- * ResourceInfo
    ResourceInfo (..),
    newResourceInfo,

    -- * ResourceLocation
    ResourceLocation (..),
    newResourceLocation,

    -- * Response
    Response (..),
    newResponse,

    -- * Response_Headers
    Response_Headers (..),
    newResponse_Headers,

    -- * ServiceAccountDelegationInfo
    ServiceAccountDelegationInfo (..),
    newServiceAccountDelegationInfo,

    -- * ServiceDelegationHistory
    ServiceDelegationHistory (..),
    newServiceDelegationHistory,

    -- * ServiceMetadata
    ServiceMetadata (..),
    newServiceMetadata,

    -- * ServiceMetadata_JobMetadata
    ServiceMetadata_JobMetadata (..),
    newServiceMetadata_JobMetadata,

    -- * SpanContext
    SpanContext (..),
    newSpanContext,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * ThirdPartyPrincipal
    ThirdPartyPrincipal (..),
    newThirdPartyPrincipal,

    -- * ThirdPartyPrincipal_ThirdPartyClaims
    ThirdPartyPrincipal_ThirdPartyClaims (..),
    newThirdPartyPrincipal_ThirdPartyClaims,

    -- * V2HttpRequest
    V2HttpRequest (..),
    newV2HttpRequest,

    -- * V2LogEntry
    V2LogEntry (..),
    newV2LogEntry,

    -- * V2LogEntry_Labels
    V2LogEntry_Labels (..),
    newV2LogEntry_Labels,

    -- * V2LogEntry_MonitoredResourceLabels
    V2LogEntry_MonitoredResourceLabels (..),
    newV2LogEntry_MonitoredResourceLabels,

    -- * V2LogEntry_ProtoPayload
    V2LogEntry_ProtoPayload (..),
    newV2LogEntry_ProtoPayload,

    -- * V2LogEntry_StructPayload
    V2LogEntry_StructPayload (..),
    newV2LogEntry_StructPayload,

    -- * V2LogEntryOperation
    V2LogEntryOperation (..),
    newV2LogEntryOperation,

    -- * V2LogEntrySourceLocation
    V2LogEntrySourceLocation (..),
    newV2LogEntrySourceLocation,

    -- * V2ResourceEvent
    V2ResourceEvent (..),
    newV2ResourceEvent,

    -- * V2ResourceEvent_Payload
    V2ResourceEvent_Payload (..),
    newV2ResourceEvent_Payload,

    -- * ViolationInfo
    ViolationInfo (..),
    newViolationInfo,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceControl.Internal.Sum

-- | This message defines attributes associated with API operations, such as a network API request. The terminology is based on the conventions used by Google APIs, Istio, and OpenAPI.
--
-- /See:/ 'newApi' smart constructor.
data Api = Api
    {
      -- | The API operation name. For gRPC requests, it is the fully qualified API method name, such as \"google.pubsub.v1.Publisher.Publish\". For OpenAPI requests, it is the @operationId@, such as \"getPet\".
      operation :: (Core.Maybe Core.Text)
      -- | The API protocol used for sending the request, such as \"http\", \"https\", \"grpc\", or \"internal\".
    , protocol :: (Core.Maybe Core.Text)
      -- | The API service name. It is a logical identifier for a networked API, such as \"pubsub.googleapis.com\". The naming syntax depends on the API management system being used for handling the request.
    , service :: (Core.Maybe Core.Text)
      -- | The API version associated with the API operation above, such as \"v1\" or \"v1alpha1\".
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Api' with the minimum fields required to make a request.
newApi 
    ::  Api
newApi =
  Api
    { operation = Core.Nothing
    , protocol = Core.Nothing
    , service = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON Api where
        parseJSON
          = Core.withObject "Api"
              (\ o ->
                 Api Core.<$>
                   (o Core..:? "operation") Core.<*>
                     (o Core..:? "protocol")
                     Core.<*> (o Core..:? "service")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON Api where
        toJSON Api{..}
          = Core.object
              (Core.catMaybes
                 [("operation" Core..=) Core.<$> operation,
                  ("protocol" Core..=) Core.<$> protocol,
                  ("service" Core..=) Core.<$> service,
                  ("version" Core..=) Core.<$> version])


-- | This message defines the standard attribute vocabulary for Google APIs. An attribute is a piece of metadata that describes an activity on a network service. For example, the size of an HTTP request, or the status code of an HTTP response. Each attribute has a type and a name, which is logically defined as a proto message field in @AttributeContext@. The field type becomes the attribute type, and the field path becomes the attribute name. For example, the attribute @source.ip@ maps to field @AttributeContext.source.ip@. This message definition is guaranteed not to have any wire breaking change. So you can use it directly for passing attributes across different systems. NOTE: Different system may generate different subset of attributes. Please verify the system specification before relying on an attribute generated a system.
--
-- /See:/ 'newAttributeContext' smart constructor.
data AttributeContext = AttributeContext
    {
      -- | Represents an API operation that is involved to a network activity.
      api :: (Core.Maybe Api)
      -- | The destination of a network activity, such as accepting a TCP connection. In a multi hop network activity, the destination represents the receiver of the last hop.
    , destination :: (Core.Maybe Peer)
      -- | Supports extensions for advanced use cases, such as logs and metrics.
    , extensions :: (Core.Maybe [AttributeContext_ExtensionsItem])
      -- | The origin of a network activity. In a multi hop network activity, the origin represents the sender of the first hop. For the first hop, the @source@ and the @origin@ must have the same content.
    , origin :: (Core.Maybe Peer)
      -- | Represents a network request, such as an HTTP request.
    , request' :: (Core.Maybe Request')
      -- | Represents a target resource that is involved with a network activity. If multiple resources are involved with an activity, this must be the primary one.
    , resource :: (Core.Maybe Resource)
      -- | Represents a network response, such as an HTTP response.
    , response :: (Core.Maybe Response)
      -- | The source of a network activity, such as starting a TCP connection. In a multi hop network activity, the source represents the sender of the last hop.
    , source :: (Core.Maybe Peer)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributeContext' with the minimum fields required to make a request.
newAttributeContext 
    ::  AttributeContext
newAttributeContext =
  AttributeContext
    { api = Core.Nothing
    , destination = Core.Nothing
    , extensions = Core.Nothing
    , origin = Core.Nothing
    , request' = Core.Nothing
    , resource = Core.Nothing
    , response = Core.Nothing
    , source = Core.Nothing
    }

instance Core.FromJSON AttributeContext where
        parseJSON
          = Core.withObject "AttributeContext"
              (\ o ->
                 AttributeContext Core.<$>
                   (o Core..:? "api") Core.<*>
                     (o Core..:? "destination")
                     Core.<*> (o Core..:? "extensions")
                     Core.<*> (o Core..:? "origin")
                     Core.<*> (o Core..:? "request")
                     Core.<*> (o Core..:? "resource")
                     Core.<*> (o Core..:? "response")
                     Core.<*> (o Core..:? "source"))

instance Core.ToJSON AttributeContext where
        toJSON AttributeContext{..}
          = Core.object
              (Core.catMaybes
                 [("api" Core..=) Core.<$> api,
                  ("destination" Core..=) Core.<$> destination,
                  ("extensions" Core..=) Core.<$> extensions,
                  ("origin" Core..=) Core.<$> origin,
                  ("request" Core..=) Core.<$> request',
                  ("resource" Core..=) Core.<$> resource,
                  ("response" Core..=) Core.<$> response,
                  ("source" Core..=) Core.<$> source])


--
-- /See:/ 'newAttributeContext_ExtensionsItem' smart constructor.
newtype AttributeContext_ExtensionsItem = AttributeContext_ExtensionsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributeContext_ExtensionsItem' with the minimum fields required to make a request.
newAttributeContext_ExtensionsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> AttributeContext_ExtensionsItem
newAttributeContext_ExtensionsItem additional =
  AttributeContext_ExtensionsItem {additional = additional}

instance Core.FromJSON
           AttributeContext_ExtensionsItem
         where
        parseJSON
          = Core.withObject "AttributeContext_ExtensionsItem"
              (\ o ->
                 AttributeContext_ExtensionsItem Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON AttributeContext_ExtensionsItem
         where
        toJSON AttributeContext_ExtensionsItem{..}
          = Core.toJSON additional


-- | Common audit log format for Google Cloud Platform API operations.
--
-- /See:/ 'newAuditLog' smart constructor.
data AuditLog = AuditLog
    {
      -- | Authentication information.
      authenticationInfo :: (Core.Maybe AuthenticationInfo)
      -- | Authorization information. If there are multiple resources or permissions involved, then there is one AuthorizationInfo element for each {resource, permission} tuple.
    , authorizationInfo :: (Core.Maybe [AuthorizationInfo])
      -- | Other service-specific data about the request, response, and other information associated with the current audited event.
    , metadata :: (Core.Maybe AuditLog_Metadata)
      -- | The name of the service method or operation. For API calls, this should be the name of the API method. For example, \"google.cloud.bigquery.v2.TableService.InsertTable\" \"google.logging.v2.ConfigServiceV2.CreateSink\"
    , methodName :: (Core.Maybe Core.Text)
      -- | The number of items returned from a List or Query API method, if applicable.
    , numResponseItems :: (Core.Maybe Core.Int64)
      -- | Indicates the policy violations for this request. If the request is denied by the policy, violation information will be logged here.
    , policyViolationInfo :: (Core.Maybe PolicyViolationInfo)
      -- | The operation request. This may not include all request parameters, such as those that are too large, privacy-sensitive, or duplicated elsewhere in the log record. It should never include user-generated data, such as file contents. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the @\@type@ property.
    , request' :: (Core.Maybe AuditLog_Request)
      -- | Metadata about the operation.
    , requestMetadata :: (Core.Maybe RequestMetadata)
      -- | The resource location information.
    , resourceLocation :: (Core.Maybe ResourceLocation)
      -- | The resource or collection that is the target of the operation. The name is a scheme-less URI, not including the API service name. For example: \"projects\/PROJECT/ID\/zones\/us-central1-a\/instances\" \"projects\/PROJECT/ID\/datasets\/DATASET_ID\"
    , resourceName :: (Core.Maybe Core.Text)
      -- | The resource\'s original state before mutation. Present only for operations which have successfully modified the targeted resource(s). In general, this field should contain all changed fields, except those that are already been included in @request@, @response@, @metadata@ or @service_data@ fields. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the @\@type@ property.
    , resourceOriginalState :: (Core.Maybe AuditLog_ResourceOriginalState)
      -- | The operation response. This may not include all response elements, such as those that are too large, privacy-sensitive, or duplicated elsewhere in the log record. It should never include user-generated data, such as file contents. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the @\@type@ property.
    , response :: (Core.Maybe AuditLog_Response)
      -- | Deprecated. Use the @metadata@ field instead. Other service-specific data about the request, response, and other activities.
    , serviceData :: (Core.Maybe AuditLog_ServiceData)
      -- | The name of the API service performing the operation. For example, @\"compute.googleapis.com\"@.
    , serviceName :: (Core.Maybe Core.Text)
      -- | The status of the overall operation.
    , status :: (Core.Maybe Status)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLog' with the minimum fields required to make a request.
newAuditLog 
    ::  AuditLog
newAuditLog =
  AuditLog
    { authenticationInfo = Core.Nothing
    , authorizationInfo = Core.Nothing
    , metadata = Core.Nothing
    , methodName = Core.Nothing
    , numResponseItems = Core.Nothing
    , policyViolationInfo = Core.Nothing
    , request' = Core.Nothing
    , requestMetadata = Core.Nothing
    , resourceLocation = Core.Nothing
    , resourceName = Core.Nothing
    , resourceOriginalState = Core.Nothing
    , response = Core.Nothing
    , serviceData = Core.Nothing
    , serviceName = Core.Nothing
    , status = Core.Nothing
    }

instance Core.FromJSON AuditLog where
        parseJSON
          = Core.withObject "AuditLog"
              (\ o ->
                 AuditLog Core.<$>
                   (o Core..:? "authenticationInfo") Core.<*>
                     (o Core..:? "authorizationInfo")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "methodName")
                     Core.<*>
                     (o Core..:? "numResponseItems" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "policyViolationInfo")
                     Core.<*> (o Core..:? "request")
                     Core.<*> (o Core..:? "requestMetadata")
                     Core.<*> (o Core..:? "resourceLocation")
                     Core.<*> (o Core..:? "resourceName")
                     Core.<*> (o Core..:? "resourceOriginalState")
                     Core.<*> (o Core..:? "response")
                     Core.<*> (o Core..:? "serviceData")
                     Core.<*> (o Core..:? "serviceName")
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON AuditLog where
        toJSON AuditLog{..}
          = Core.object
              (Core.catMaybes
                 [("authenticationInfo" Core..=) Core.<$>
                    authenticationInfo,
                  ("authorizationInfo" Core..=) Core.<$>
                    authorizationInfo,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("methodName" Core..=) Core.<$> methodName,
                  ("numResponseItems" Core..=) Core.. Core.AsText
                    Core.<$> numResponseItems,
                  ("policyViolationInfo" Core..=) Core.<$>
                    policyViolationInfo,
                  ("request" Core..=) Core.<$> request',
                  ("requestMetadata" Core..=) Core.<$> requestMetadata,
                  ("resourceLocation" Core..=) Core.<$>
                    resourceLocation,
                  ("resourceName" Core..=) Core.<$> resourceName,
                  ("resourceOriginalState" Core..=) Core.<$>
                    resourceOriginalState,
                  ("response" Core..=) Core.<$> response,
                  ("serviceData" Core..=) Core.<$> serviceData,
                  ("serviceName" Core..=) Core.<$> serviceName,
                  ("status" Core..=) Core.<$> status])


-- | Other service-specific data about the request, response, and other information associated with the current audited event.
--
-- /See:/ 'newAuditLog_Metadata' smart constructor.
newtype AuditLog_Metadata = AuditLog_Metadata
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLog_Metadata' with the minimum fields required to make a request.
newAuditLog_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> AuditLog_Metadata
newAuditLog_Metadata additional = AuditLog_Metadata {additional = additional}

instance Core.FromJSON AuditLog_Metadata where
        parseJSON
          = Core.withObject "AuditLog_Metadata"
              (\ o ->
                 AuditLog_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON AuditLog_Metadata where
        toJSON AuditLog_Metadata{..} = Core.toJSON additional


-- | The operation request. This may not include all request parameters, such as those that are too large, privacy-sensitive, or duplicated elsewhere in the log record. It should never include user-generated data, such as file contents. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the @\@type@ property.
--
-- /See:/ 'newAuditLog_Request' smart constructor.
newtype AuditLog_Request = AuditLog_Request
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLog_Request' with the minimum fields required to make a request.
newAuditLog_Request 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> AuditLog_Request
newAuditLog_Request additional = AuditLog_Request {additional = additional}

instance Core.FromJSON AuditLog_Request where
        parseJSON
          = Core.withObject "AuditLog_Request"
              (\ o ->
                 AuditLog_Request Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON AuditLog_Request where
        toJSON AuditLog_Request{..} = Core.toJSON additional


-- | The resource\'s original state before mutation. Present only for operations which have successfully modified the targeted resource(s). In general, this field should contain all changed fields, except those that are already been included in @request@, @response@, @metadata@ or @service_data@ fields. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the @\@type@ property.
--
-- /See:/ 'newAuditLog_ResourceOriginalState' smart constructor.
newtype AuditLog_ResourceOriginalState = AuditLog_ResourceOriginalState
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLog_ResourceOriginalState' with the minimum fields required to make a request.
newAuditLog_ResourceOriginalState 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> AuditLog_ResourceOriginalState
newAuditLog_ResourceOriginalState additional =
  AuditLog_ResourceOriginalState {additional = additional}

instance Core.FromJSON AuditLog_ResourceOriginalState
         where
        parseJSON
          = Core.withObject "AuditLog_ResourceOriginalState"
              (\ o ->
                 AuditLog_ResourceOriginalState Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON AuditLog_ResourceOriginalState
         where
        toJSON AuditLog_ResourceOriginalState{..}
          = Core.toJSON additional


-- | The operation response. This may not include all response elements, such as those that are too large, privacy-sensitive, or duplicated elsewhere in the log record. It should never include user-generated data, such as file contents. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the @\@type@ property.
--
-- /See:/ 'newAuditLog_Response' smart constructor.
newtype AuditLog_Response = AuditLog_Response
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLog_Response' with the minimum fields required to make a request.
newAuditLog_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> AuditLog_Response
newAuditLog_Response additional = AuditLog_Response {additional = additional}

instance Core.FromJSON AuditLog_Response where
        parseJSON
          = Core.withObject "AuditLog_Response"
              (\ o ->
                 AuditLog_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON AuditLog_Response where
        toJSON AuditLog_Response{..} = Core.toJSON additional


-- | Deprecated. Use the @metadata@ field instead. Other service-specific data about the request, response, and other activities.
--
-- /See:/ 'newAuditLog_ServiceData' smart constructor.
newtype AuditLog_ServiceData = AuditLog_ServiceData
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLog_ServiceData' with the minimum fields required to make a request.
newAuditLog_ServiceData 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> AuditLog_ServiceData
newAuditLog_ServiceData additional =
  AuditLog_ServiceData {additional = additional}

instance Core.FromJSON AuditLog_ServiceData where
        parseJSON
          = Core.withObject "AuditLog_ServiceData"
              (\ o ->
                 AuditLog_ServiceData Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON AuditLog_ServiceData where
        toJSON AuditLog_ServiceData{..}
          = Core.toJSON additional


-- | This message defines request authentication attributes. Terminology is based on the JSON Web Token (JWT) standard, but the terms also correlate to concepts in other standards.
--
-- /See:/ 'newAuth' smart constructor.
data Auth = Auth
    {
      -- | A list of access level resource names that allow resources to be accessed by authenticated requester. It is part of Secure GCP processing for the incoming request. An access level string has the format: \"\/\/{api/service/name}\/accessPolicies\/{policy/id}\/accessLevels\/{short/name}\" Example: \"\/\/accesscontextmanager.googleapis.com\/accessPolicies\/MY/POLICY/ID\/accessLevels\/MY_LEVEL\"
      accessLevels :: (Core.Maybe [Core.Text])
      -- | The intended audience(s) for this authentication information. Reflects the audience (@aud@) claim within a JWT. The audience value(s) depends on the @issuer@, but typically include one or more of the following pieces of information: * The services intended to receive the credential. For example, [\"https:\/\/pubsub.googleapis.com\/\", \"https:\/\/storage.googleapis.com\/\"]. * A set of service-based scopes. For example, [\"https:\/\/www.googleapis.com\/auth\/cloud-platform\"]. * The client id of an app, such as the Firebase project id for JWTs from Firebase Auth. Consult the documentation for the credential issuer to determine the information provided.
    , audiences :: (Core.Maybe [Core.Text])
      -- | Structured claims presented with the credential. JWTs include @{key: value}@ pairs for standard and private claims. The following is a subset of the standard required and optional claims that would typically be presented for a Google-based JWT: {\'iss\': \'accounts.google.com\', \'sub\': \'113289723416554971153\', \'aud\': [\'123456789012\', \'pubsub.googleapis.com\'], \'azp\': \'123456789012.apps.googleusercontent.com\', \'email\': \'jsmith\@example.com\', \'iat\': 1353601026, \'exp\': 1353604926} SAML assertions are similarly specified, but with an identity provider dependent structure.
    , claims :: (Core.Maybe Auth_Claims)
      -- | Identifies the client credential id used for authentication. credential/id is in the format of AUTH/METHOD:IDENTIFIER, e.g. \"serviceaccount:XXXXX, apikey:XXXXX\" where the format of the IDENTIFIER can vary for different AUTH_METHODs.
    , credentialId :: (Core.Maybe Core.Text)
      -- | The authorized presenter of the credential. Reflects the optional Authorized Presenter (@azp@) claim within a JWT or the OAuth client id. For example, a Google Cloud Platform client id looks as follows: \"123456789012.apps.googleusercontent.com\".
    , presenter :: (Core.Maybe Core.Text)
      -- | The authenticated principal. Reflects the issuer (@iss@) and subject (@sub@) claims within a JWT. The issuer and subject should be @\/@ delimited, with @\/@ percent-encoded within the subject fragment. For Google accounts, the principal format is: \"https:\/\/accounts.google.com\/{id}\"
    , principal :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Auth' with the minimum fields required to make a request.
newAuth 
    ::  Auth
newAuth =
  Auth
    { accessLevels = Core.Nothing
    , audiences = Core.Nothing
    , claims = Core.Nothing
    , credentialId = Core.Nothing
    , presenter = Core.Nothing
    , principal = Core.Nothing
    }

instance Core.FromJSON Auth where
        parseJSON
          = Core.withObject "Auth"
              (\ o ->
                 Auth Core.<$>
                   (o Core..:? "accessLevels") Core.<*>
                     (o Core..:? "audiences")
                     Core.<*> (o Core..:? "claims")
                     Core.<*> (o Core..:? "credentialId")
                     Core.<*> (o Core..:? "presenter")
                     Core.<*> (o Core..:? "principal"))

instance Core.ToJSON Auth where
        toJSON Auth{..}
          = Core.object
              (Core.catMaybes
                 [("accessLevels" Core..=) Core.<$> accessLevels,
                  ("audiences" Core..=) Core.<$> audiences,
                  ("claims" Core..=) Core.<$> claims,
                  ("credentialId" Core..=) Core.<$> credentialId,
                  ("presenter" Core..=) Core.<$> presenter,
                  ("principal" Core..=) Core.<$> principal])


-- | Structured claims presented with the credential. JWTs include @{key: value}@ pairs for standard and private claims. The following is a subset of the standard required and optional claims that would typically be presented for a Google-based JWT: {\'iss\': \'accounts.google.com\', \'sub\': \'113289723416554971153\', \'aud\': [\'123456789012\', \'pubsub.googleapis.com\'], \'azp\': \'123456789012.apps.googleusercontent.com\', \'email\': \'jsmith\@example.com\', \'iat\': 1353601026, \'exp\': 1353604926} SAML assertions are similarly specified, but with an identity provider dependent structure.
--
-- /See:/ 'newAuth_Claims' smart constructor.
newtype Auth_Claims = Auth_Claims
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Auth_Claims' with the minimum fields required to make a request.
newAuth_Claims 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> Auth_Claims
newAuth_Claims additional = Auth_Claims {additional = additional}

instance Core.FromJSON Auth_Claims where
        parseJSON
          = Core.withObject "Auth_Claims"
              (\ o ->
                 Auth_Claims Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Auth_Claims where
        toJSON Auth_Claims{..} = Core.toJSON additional


-- | Authentication information for the operation.
--
-- /See:/ 'newAuthenticationInfo' smart constructor.
data AuthenticationInfo = AuthenticationInfo
    {
      -- | The authority selector specified by the requestor, if any. It is not guaranteed that the principal was allowed to use this authority.
      authoritySelector :: (Core.Maybe Core.Text)
      -- | The email address of the authenticated user (or service account on behalf of third party principal) making the request. For third party identity callers, the @principal_subject@ field is populated instead of this field. For privacy reasons, the principal email address is sometimes redacted. For more information, see <https://cloud.google.com/logging/docs/audit#user-id Caller identities in audit logs>.
    , principalEmail :: (Core.Maybe Core.Text)
      -- | String representation of identity of requesting party. Populated for both first and third party identities.
    , principalSubject :: (Core.Maybe Core.Text)
      -- | Identity delegation history of an authenticated service account that makes the request. It contains information on the real authorities that try to access GCP resources by delegating on a service account. When multiple authorities present, they are guaranteed to be sorted based on the original ordering of the identity delegation events.
    , serviceAccountDelegationInfo :: (Core.Maybe [ServiceAccountDelegationInfo])
      -- | The name of the service account key used to create or exchange credentials for authenticating the service account making the request. This is a scheme-less URI full resource name. For example: \"\/\/iam.googleapis.com\/projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\/keys\/{key}\"
    , serviceAccountKeyName :: (Core.Maybe Core.Text)
      -- | Records the history of delegated resource access across Google services.
    , serviceDelegationHistory :: (Core.Maybe ServiceDelegationHistory)
      -- | The third party identification (if any) of the authenticated user making the request. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the @\@type@ property.
    , thirdPartyPrincipal :: (Core.Maybe AuthenticationInfo_ThirdPartyPrincipal)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthenticationInfo' with the minimum fields required to make a request.
newAuthenticationInfo 
    ::  AuthenticationInfo
newAuthenticationInfo =
  AuthenticationInfo
    { authoritySelector = Core.Nothing
    , principalEmail = Core.Nothing
    , principalSubject = Core.Nothing
    , serviceAccountDelegationInfo = Core.Nothing
    , serviceAccountKeyName = Core.Nothing
    , serviceDelegationHistory = Core.Nothing
    , thirdPartyPrincipal = Core.Nothing
    }

instance Core.FromJSON AuthenticationInfo where
        parseJSON
          = Core.withObject "AuthenticationInfo"
              (\ o ->
                 AuthenticationInfo Core.<$>
                   (o Core..:? "authoritySelector") Core.<*>
                     (o Core..:? "principalEmail")
                     Core.<*> (o Core..:? "principalSubject")
                     Core.<*> (o Core..:? "serviceAccountDelegationInfo")
                     Core.<*> (o Core..:? "serviceAccountKeyName")
                     Core.<*> (o Core..:? "serviceDelegationHistory")
                     Core.<*> (o Core..:? "thirdPartyPrincipal"))

instance Core.ToJSON AuthenticationInfo where
        toJSON AuthenticationInfo{..}
          = Core.object
              (Core.catMaybes
                 [("authoritySelector" Core..=) Core.<$>
                    authoritySelector,
                  ("principalEmail" Core..=) Core.<$> principalEmail,
                  ("principalSubject" Core..=) Core.<$>
                    principalSubject,
                  ("serviceAccountDelegationInfo" Core..=) Core.<$>
                    serviceAccountDelegationInfo,
                  ("serviceAccountKeyName" Core..=) Core.<$>
                    serviceAccountKeyName,
                  ("serviceDelegationHistory" Core..=) Core.<$>
                    serviceDelegationHistory,
                  ("thirdPartyPrincipal" Core..=) Core.<$>
                    thirdPartyPrincipal])


-- | The third party identification (if any) of the authenticated user making the request. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the @\@type@ property.
--
-- /See:/ 'newAuthenticationInfo_ThirdPartyPrincipal' smart constructor.
newtype AuthenticationInfo_ThirdPartyPrincipal = AuthenticationInfo_ThirdPartyPrincipal
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthenticationInfo_ThirdPartyPrincipal' with the minimum fields required to make a request.
newAuthenticationInfo_ThirdPartyPrincipal 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> AuthenticationInfo_ThirdPartyPrincipal
newAuthenticationInfo_ThirdPartyPrincipal additional =
  AuthenticationInfo_ThirdPartyPrincipal {additional = additional}

instance Core.FromJSON
           AuthenticationInfo_ThirdPartyPrincipal
         where
        parseJSON
          = Core.withObject
              "AuthenticationInfo_ThirdPartyPrincipal"
              (\ o ->
                 AuthenticationInfo_ThirdPartyPrincipal Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           AuthenticationInfo_ThirdPartyPrincipal
         where
        toJSON AuthenticationInfo_ThirdPartyPrincipal{..}
          = Core.toJSON additional


-- | Authorization information for the operation.
--
-- /See:/ 'newAuthorizationInfo' smart constructor.
data AuthorizationInfo = AuthorizationInfo
    {
      -- | Whether or not authorization for @resource@ and @permission@ was granted.
      granted :: (Core.Maybe Core.Bool)
      -- | The required IAM permission.
    , permission :: (Core.Maybe Core.Text)
      -- | The type of the permission that was checked. For data access audit logs this corresponds with the permission type that must be enabled in the project\/folder\/organization IAM policy in order for the log to be written.
    , permissionType :: (Core.Maybe AuthorizationInfo_PermissionType)
      -- | The resource being accessed, as a REST-style or cloud resource string. For example: bigquery.googleapis.com\/projects\/PROJECTID\/datasets\/DATASETID or projects\/PROJECTID\/datasets\/DATASETID
    , resource :: (Core.Maybe Core.Text)
      -- | Resource attributes used in IAM condition evaluation. This field contains resource attributes like resource type and resource name. To get the whole view of the attributes used in IAM condition evaluation, the user must also look into @AuditLog.request_metadata.request_attributes@.
    , resourceAttributes :: (Core.Maybe Resource)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthorizationInfo' with the minimum fields required to make a request.
newAuthorizationInfo 
    ::  AuthorizationInfo
newAuthorizationInfo =
  AuthorizationInfo
    { granted = Core.Nothing
    , permission = Core.Nothing
    , permissionType = Core.Nothing
    , resource = Core.Nothing
    , resourceAttributes = Core.Nothing
    }

instance Core.FromJSON AuthorizationInfo where
        parseJSON
          = Core.withObject "AuthorizationInfo"
              (\ o ->
                 AuthorizationInfo Core.<$>
                   (o Core..:? "granted") Core.<*>
                     (o Core..:? "permission")
                     Core.<*> (o Core..:? "permissionType")
                     Core.<*> (o Core..:? "resource")
                     Core.<*> (o Core..:? "resourceAttributes"))

instance Core.ToJSON AuthorizationInfo where
        toJSON AuthorizationInfo{..}
          = Core.object
              (Core.catMaybes
                 [("granted" Core..=) Core.<$> granted,
                  ("permission" Core..=) Core.<$> permission,
                  ("permissionType" Core..=) Core.<$> permissionType,
                  ("resource" Core..=) Core.<$> resource,
                  ("resourceAttributes" Core..=) Core.<$>
                    resourceAttributes])


-- | Request message for the Check method.
--
-- /See:/ 'newCheckRequest' smart constructor.
data CheckRequest = CheckRequest
    {
      -- | Describes attributes about the operation being executed by the service.
      attributes :: (Core.Maybe AttributeContext)
      -- | Optional. Contains a comma-separated list of flags.
    , flags :: (Core.Maybe Core.Text)
      -- | Describes the resources and the policies applied to each resource.
    , resources :: (Core.Maybe [ResourceInfo])
      -- | Specifies the version of the service configuration that should be used to process the request. Must not be empty. Set this field to \'latest\' to specify using the latest configuration.
    , serviceConfigId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckRequest' with the minimum fields required to make a request.
newCheckRequest 
    ::  CheckRequest
newCheckRequest =
  CheckRequest
    { attributes = Core.Nothing
    , flags = Core.Nothing
    , resources = Core.Nothing
    , serviceConfigId = Core.Nothing
    }

instance Core.FromJSON CheckRequest where
        parseJSON
          = Core.withObject "CheckRequest"
              (\ o ->
                 CheckRequest Core.<$>
                   (o Core..:? "attributes") Core.<*>
                     (o Core..:? "flags")
                     Core.<*> (o Core..:? "resources")
                     Core.<*> (o Core..:? "serviceConfigId"))

instance Core.ToJSON CheckRequest where
        toJSON CheckRequest{..}
          = Core.object
              (Core.catMaybes
                 [("attributes" Core..=) Core.<$> attributes,
                  ("flags" Core..=) Core.<$> flags,
                  ("resources" Core..=) Core.<$> resources,
                  ("serviceConfigId" Core..=) Core.<$>
                    serviceConfigId])


-- | Response message for the Check method.
--
-- /See:/ 'newCheckResponse' smart constructor.
data CheckResponse = CheckResponse
    {
      -- | Returns a set of request contexts generated from the @CheckRequest@.
      headers :: (Core.Maybe CheckResponse_Headers)
      -- | Operation is allowed when this field is not set. Any non-\'OK\' status indicates a denial; google.rpc.Status.details would contain additional details about the denial.
    , status :: (Core.Maybe Status)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckResponse' with the minimum fields required to make a request.
newCheckResponse 
    ::  CheckResponse
newCheckResponse = CheckResponse {headers = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON CheckResponse where
        parseJSON
          = Core.withObject "CheckResponse"
              (\ o ->
                 CheckResponse Core.<$>
                   (o Core..:? "headers") Core.<*>
                     (o Core..:? "status"))

instance Core.ToJSON CheckResponse where
        toJSON CheckResponse{..}
          = Core.object
              (Core.catMaybes
                 [("headers" Core..=) Core.<$> headers,
                  ("status" Core..=) Core.<$> status])


-- | Returns a set of request contexts generated from the @CheckRequest@.
--
-- /See:/ 'newCheckResponse_Headers' smart constructor.
newtype CheckResponse_Headers = CheckResponse_Headers
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckResponse_Headers' with the minimum fields required to make a request.
newCheckResponse_Headers 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> CheckResponse_Headers
newCheckResponse_Headers additional =
  CheckResponse_Headers {additional = additional}

instance Core.FromJSON CheckResponse_Headers where
        parseJSON
          = Core.withObject "CheckResponse_Headers"
              (\ o ->
                 CheckResponse_Headers Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON CheckResponse_Headers where
        toJSON CheckResponse_Headers{..}
          = Core.toJSON additional


-- | First party identity principal.
--
-- /See:/ 'newFirstPartyPrincipal' smart constructor.
data FirstPartyPrincipal = FirstPartyPrincipal
    {
      -- | The email address of a Google account. .
      principalEmail :: (Core.Maybe Core.Text)
      -- | Metadata about the service that uses the service account. .
    , serviceMetadata :: (Core.Maybe FirstPartyPrincipal_ServiceMetadata)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirstPartyPrincipal' with the minimum fields required to make a request.
newFirstPartyPrincipal 
    ::  FirstPartyPrincipal
newFirstPartyPrincipal =
  FirstPartyPrincipal
    {principalEmail = Core.Nothing, serviceMetadata = Core.Nothing}

instance Core.FromJSON FirstPartyPrincipal where
        parseJSON
          = Core.withObject "FirstPartyPrincipal"
              (\ o ->
                 FirstPartyPrincipal Core.<$>
                   (o Core..:? "principalEmail") Core.<*>
                     (o Core..:? "serviceMetadata"))

instance Core.ToJSON FirstPartyPrincipal where
        toJSON FirstPartyPrincipal{..}
          = Core.object
              (Core.catMaybes
                 [("principalEmail" Core..=) Core.<$> principalEmail,
                  ("serviceMetadata" Core..=) Core.<$>
                    serviceMetadata])


-- | Metadata about the service that uses the service account. .
--
-- /See:/ 'newFirstPartyPrincipal_ServiceMetadata' smart constructor.
newtype FirstPartyPrincipal_ServiceMetadata = FirstPartyPrincipal_ServiceMetadata
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirstPartyPrincipal_ServiceMetadata' with the minimum fields required to make a request.
newFirstPartyPrincipal_ServiceMetadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> FirstPartyPrincipal_ServiceMetadata
newFirstPartyPrincipal_ServiceMetadata additional =
  FirstPartyPrincipal_ServiceMetadata {additional = additional}

instance Core.FromJSON
           FirstPartyPrincipal_ServiceMetadata
         where
        parseJSON
          = Core.withObject
              "FirstPartyPrincipal_ServiceMetadata"
              (\ o ->
                 FirstPartyPrincipal_ServiceMetadata Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           FirstPartyPrincipal_ServiceMetadata
         where
        toJSON FirstPartyPrincipal_ServiceMetadata{..}
          = Core.toJSON additional


-- | Represents OrgPolicy Violation information.
--
-- /See:/ 'newOrgPolicyViolationInfo' smart constructor.
data OrgPolicyViolationInfo = OrgPolicyViolationInfo
    {
      -- | Optional. Deprecated. Resource payload that is currently in scope and is subjected to orgpolicy conditions. This payload may be the subset of the actual Resource that may come in the request.
      payload :: (Core.Maybe OrgPolicyViolationInfo_Payload)
      -- | Optional. Deprecated. Tags referenced on the resource at the time of evaluation.
    , resourceTags :: (Core.Maybe OrgPolicyViolationInfo_ResourceTags)
      -- | Optional. Resource type that the orgpolicy is checked against. Example: compute.googleapis.com\/Instance, store.googleapis.com\/bucket
    , resourceType :: (Core.Maybe Core.Text)
      -- | Optional. Policy violations
    , violationInfo :: (Core.Maybe [ViolationInfo])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrgPolicyViolationInfo' with the minimum fields required to make a request.
newOrgPolicyViolationInfo 
    ::  OrgPolicyViolationInfo
newOrgPolicyViolationInfo =
  OrgPolicyViolationInfo
    { payload = Core.Nothing
    , resourceTags = Core.Nothing
    , resourceType = Core.Nothing
    , violationInfo = Core.Nothing
    }

instance Core.FromJSON OrgPolicyViolationInfo where
        parseJSON
          = Core.withObject "OrgPolicyViolationInfo"
              (\ o ->
                 OrgPolicyViolationInfo Core.<$>
                   (o Core..:? "payload") Core.<*>
                     (o Core..:? "resourceTags")
                     Core.<*> (o Core..:? "resourceType")
                     Core.<*> (o Core..:? "violationInfo"))

instance Core.ToJSON OrgPolicyViolationInfo where
        toJSON OrgPolicyViolationInfo{..}
          = Core.object
              (Core.catMaybes
                 [("payload" Core..=) Core.<$> payload,
                  ("resourceTags" Core..=) Core.<$> resourceTags,
                  ("resourceType" Core..=) Core.<$> resourceType,
                  ("violationInfo" Core..=) Core.<$> violationInfo])


-- | Optional. Deprecated. Resource payload that is currently in scope and is subjected to orgpolicy conditions. This payload may be the subset of the actual Resource that may come in the request.
--
-- /See:/ 'newOrgPolicyViolationInfo_Payload' smart constructor.
newtype OrgPolicyViolationInfo_Payload = OrgPolicyViolationInfo_Payload
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrgPolicyViolationInfo_Payload' with the minimum fields required to make a request.
newOrgPolicyViolationInfo_Payload 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> OrgPolicyViolationInfo_Payload
newOrgPolicyViolationInfo_Payload additional =
  OrgPolicyViolationInfo_Payload {additional = additional}

instance Core.FromJSON OrgPolicyViolationInfo_Payload
         where
        parseJSON
          = Core.withObject "OrgPolicyViolationInfo_Payload"
              (\ o ->
                 OrgPolicyViolationInfo_Payload Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON OrgPolicyViolationInfo_Payload
         where
        toJSON OrgPolicyViolationInfo_Payload{..}
          = Core.toJSON additional


-- | Optional. Deprecated. Tags referenced on the resource at the time of evaluation.
--
-- /See:/ 'newOrgPolicyViolationInfo_ResourceTags' smart constructor.
newtype OrgPolicyViolationInfo_ResourceTags = OrgPolicyViolationInfo_ResourceTags
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrgPolicyViolationInfo_ResourceTags' with the minimum fields required to make a request.
newOrgPolicyViolationInfo_ResourceTags 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> OrgPolicyViolationInfo_ResourceTags
newOrgPolicyViolationInfo_ResourceTags additional =
  OrgPolicyViolationInfo_ResourceTags {additional = additional}

instance Core.FromJSON
           OrgPolicyViolationInfo_ResourceTags
         where
        parseJSON
          = Core.withObject
              "OrgPolicyViolationInfo_ResourceTags"
              (\ o ->
                 OrgPolicyViolationInfo_ResourceTags Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           OrgPolicyViolationInfo_ResourceTags
         where
        toJSON OrgPolicyViolationInfo_ResourceTags{..}
          = Core.toJSON additional


-- | This message defines attributes for a node that handles a network request. The node can be either a service or an application that sends, forwards, or receives the request. Service peers should fill in @principal@ and @labels@ as appropriate.
--
-- /See:/ 'newPeer' smart constructor.
data Peer = Peer
    {
      -- | The IP address of the peer.
      ip :: (Core.Maybe Core.Text)
      -- | The labels associated with the peer.
    , labels :: (Core.Maybe Peer_Labels)
      -- | The network port of the peer.
    , port :: (Core.Maybe Core.Int64)
      -- | The identity of this peer. Similar to @Request.auth.principal@, but relative to the peer instead of the request. For example, the identity associated with a load balancer that forwarded the request.
    , principal :: (Core.Maybe Core.Text)
      -- | The CLDR country\/region code associated with the above IP address. If the IP address is private, the @region_code@ should reflect the physical location where this peer is running.
    , regionCode :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Peer' with the minimum fields required to make a request.
newPeer 
    ::  Peer
newPeer =
  Peer
    { ip = Core.Nothing
    , labels = Core.Nothing
    , port = Core.Nothing
    , principal = Core.Nothing
    , regionCode = Core.Nothing
    }

instance Core.FromJSON Peer where
        parseJSON
          = Core.withObject "Peer"
              (\ o ->
                 Peer Core.<$>
                   (o Core..:? "ip") Core.<*> (o Core..:? "labels")
                     Core.<*>
                     (o Core..:? "port" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "principal")
                     Core.<*> (o Core..:? "regionCode"))

instance Core.ToJSON Peer where
        toJSON Peer{..}
          = Core.object
              (Core.catMaybes
                 [("ip" Core..=) Core.<$> ip,
                  ("labels" Core..=) Core.<$> labels,
                  ("port" Core..=) Core.. Core.AsText Core.<$> port,
                  ("principal" Core..=) Core.<$> principal,
                  ("regionCode" Core..=) Core.<$> regionCode])


-- | The labels associated with the peer.
--
-- /See:/ 'newPeer_Labels' smart constructor.
newtype Peer_Labels = Peer_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Peer_Labels' with the minimum fields required to make a request.
newPeer_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Peer_Labels
newPeer_Labels additional = Peer_Labels {additional = additional}

instance Core.FromJSON Peer_Labels where
        parseJSON
          = Core.withObject "Peer_Labels"
              (\ o ->
                 Peer_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Peer_Labels where
        toJSON Peer_Labels{..} = Core.toJSON additional


-- | Information related to policy violations for this request.
--
-- /See:/ 'newPolicyViolationInfo' smart constructor.
newtype PolicyViolationInfo = PolicyViolationInfo
    {
      -- | Indicates the orgpolicy violations for this resource.
      orgPolicyViolationInfo :: (Core.Maybe OrgPolicyViolationInfo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolicyViolationInfo' with the minimum fields required to make a request.
newPolicyViolationInfo 
    ::  PolicyViolationInfo
newPolicyViolationInfo =
  PolicyViolationInfo {orgPolicyViolationInfo = Core.Nothing}

instance Core.FromJSON PolicyViolationInfo where
        parseJSON
          = Core.withObject "PolicyViolationInfo"
              (\ o ->
                 PolicyViolationInfo Core.<$>
                   (o Core..:? "orgPolicyViolationInfo"))

instance Core.ToJSON PolicyViolationInfo where
        toJSON PolicyViolationInfo{..}
          = Core.object
              (Core.catMaybes
                 [("orgPolicyViolationInfo" Core..=) Core.<$>
                    orgPolicyViolationInfo])


-- | Request message for the Report method.
--
-- /See:/ 'newReportRequest' smart constructor.
data ReportRequest = ReportRequest
    {
      -- | Describes the list of operations to be reported. Each operation is represented as an AttributeContext, and contains all attributes around an API access.
      operations :: (Core.Maybe [AttributeContext])
      -- | Specifies the version of the service configuration that should be used to process the request. Must not be empty. Set this field to \'latest\' to specify using the latest configuration.
    , serviceConfigId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRequest' with the minimum fields required to make a request.
newReportRequest 
    ::  ReportRequest
newReportRequest =
  ReportRequest {operations = Core.Nothing, serviceConfigId = Core.Nothing}

instance Core.FromJSON ReportRequest where
        parseJSON
          = Core.withObject "ReportRequest"
              (\ o ->
                 ReportRequest Core.<$>
                   (o Core..:? "operations") Core.<*>
                     (o Core..:? "serviceConfigId"))

instance Core.ToJSON ReportRequest where
        toJSON ReportRequest{..}
          = Core.object
              (Core.catMaybes
                 [("operations" Core..=) Core.<$> operations,
                  ("serviceConfigId" Core..=) Core.<$>
                    serviceConfigId])


-- | Response message for the Report method.
--
-- /See:/ 'newReportResponse' smart constructor.
newtype ReportResponse = ReportResponse
    {
      -- | The extension field to store serialized OTel responses. e.g. ExportLogsServiceResponse, ExportMetricsServiceResponse.
      extensions :: (Core.Maybe ReportResponse_Extensions)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportResponse' with the minimum fields required to make a request.
newReportResponse 
    ::  ReportResponse
newReportResponse = ReportResponse {extensions = Core.Nothing}

instance Core.FromJSON ReportResponse where
        parseJSON
          = Core.withObject "ReportResponse"
              (\ o ->
                 ReportResponse Core.<$> (o Core..:? "extensions"))

instance Core.ToJSON ReportResponse where
        toJSON ReportResponse{..}
          = Core.object
              (Core.catMaybes
                 [("extensions" Core..=) Core.<$> extensions])


-- | The extension field to store serialized OTel responses. e.g. ExportLogsServiceResponse, ExportMetricsServiceResponse.
--
-- /See:/ 'newReportResponse_Extensions' smart constructor.
newtype ReportResponse_Extensions = ReportResponse_Extensions
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportResponse_Extensions' with the minimum fields required to make a request.
newReportResponse_Extensions 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> ReportResponse_Extensions
newReportResponse_Extensions additional =
  ReportResponse_Extensions {additional = additional}

instance Core.FromJSON ReportResponse_Extensions
         where
        parseJSON
          = Core.withObject "ReportResponse_Extensions"
              (\ o ->
                 ReportResponse_Extensions Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON ReportResponse_Extensions where
        toJSON ReportResponse_Extensions{..}
          = Core.toJSON additional


-- | This message defines attributes for an HTTP request. If the actual request is not an HTTP request, the runtime system should try to map the actual request to an equivalent HTTP request.
--
-- /See:/ 'newRequest' smart constructor.
data Request' = Request'
    {
      -- | The request authentication. May be absent for unauthenticated requests. Derived from the HTTP request @Authorization@ header or equivalent.
      auth :: (Core.Maybe Auth)
      -- | The HTTP request headers. If multiple headers share the same key, they must be merged according to the HTTP spec. All header keys must be lowercased, because HTTP header keys are case-insensitive.
    , headers :: (Core.Maybe Request_Headers)
      -- | The HTTP request @Host@ header value.
    , host :: (Core.Maybe Core.Text)
      -- | The unique ID for a request, which can be propagated to downstream systems. The ID should have low probability of collision within a single day for a specific service.
    , id :: (Core.Maybe Core.Text)
      -- | The HTTP request method, such as @GET@, @POST@.
    , method :: (Core.Maybe Core.Text)
      -- | The HTTP URL path, excluding the query parameters.
    , path :: (Core.Maybe Core.Text)
      -- | The network protocol used with the request, such as \"http\/1.1\", \"spdy\/3\", \"h2\", \"h2c\", \"webrtc\", \"tcp\", \"udp\", \"quic\". See https:\/\/www.iana.org\/assignments\/tls-extensiontype-values\/tls-extensiontype-values.xhtml#alpn-protocol-ids for details.
    , protocol :: (Core.Maybe Core.Text)
      -- | The HTTP URL query in the format of @name1=value1&name2=value2@, as it appears in the first line of the HTTP request. No decoding is performed.
    , query :: (Core.Maybe Core.Text)
      -- | A special parameter for request reason. It is used by security systems to associate auditing information with a request.
    , reason :: (Core.Maybe Core.Text)
      -- | The HTTP URL scheme, such as @http@ and @https@.
    , scheme :: (Core.Maybe Core.Text)
      -- | The HTTP request size in bytes. If unknown, it must be -1.
    , size :: (Core.Maybe Core.Int64)
      -- | The timestamp when the @destination@ service receives the last byte of the request.
    , time :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Request' with the minimum fields required to make a request.
newRequest 
    ::  Request'
newRequest =
  Request'
    { auth = Core.Nothing
    , headers = Core.Nothing
    , host = Core.Nothing
    , id = Core.Nothing
    , method = Core.Nothing
    , path = Core.Nothing
    , protocol = Core.Nothing
    , query = Core.Nothing
    , reason = Core.Nothing
    , scheme = Core.Nothing
    , size = Core.Nothing
    , time = Core.Nothing
    }

instance Core.FromJSON Request' where
        parseJSON
          = Core.withObject "Request'"
              (\ o ->
                 Request' Core.<$>
                   (o Core..:? "auth") Core.<*> (o Core..:? "headers")
                     Core.<*> (o Core..:? "host")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "method")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "protocol")
                     Core.<*> (o Core..:? "query")
                     Core.<*> (o Core..:? "reason")
                     Core.<*> (o Core..:? "scheme")
                     Core.<*>
                     (o Core..:? "size" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "time"))

instance Core.ToJSON Request' where
        toJSON Request'{..}
          = Core.object
              (Core.catMaybes
                 [("auth" Core..=) Core.<$> auth,
                  ("headers" Core..=) Core.<$> headers,
                  ("host" Core..=) Core.<$> host,
                  ("id" Core..=) Core.<$> id,
                  ("method" Core..=) Core.<$> method,
                  ("path" Core..=) Core.<$> path,
                  ("protocol" Core..=) Core.<$> protocol,
                  ("query" Core..=) Core.<$> query,
                  ("reason" Core..=) Core.<$> reason,
                  ("scheme" Core..=) Core.<$> scheme,
                  ("size" Core..=) Core.. Core.AsText Core.<$> size,
                  ("time" Core..=) Core.<$> time])


-- | The HTTP request headers. If multiple headers share the same key, they must be merged according to the HTTP spec. All header keys must be lowercased, because HTTP header keys are case-insensitive.
--
-- /See:/ 'newRequest_Headers' smart constructor.
newtype Request_Headers = Request_Headers
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Request_Headers' with the minimum fields required to make a request.
newRequest_Headers 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Request_Headers
newRequest_Headers additional = Request_Headers {additional = additional}

instance Core.FromJSON Request_Headers where
        parseJSON
          = Core.withObject "Request_Headers"
              (\ o ->
                 Request_Headers Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Request_Headers where
        toJSON Request_Headers{..} = Core.toJSON additional


-- | Metadata about the request.
--
-- /See:/ 'newRequestMetadata' smart constructor.
data RequestMetadata = RequestMetadata
    {
      -- | The IP address of the caller. For a caller from the internet, this will be the public IPv4 or IPv6 address. For calls made from inside Google\'s internal production network from one GCP service to another, @caller_ip@ will be redacted to \"private\". For a caller from a Compute Engine VM with a external IP address, @caller_ip@ will be the VM\'s external IP address. For a caller from a Compute Engine VM without a external IP address, if the VM is in the same organization (or project) as the accessed resource, @caller_ip@ will be the VM\'s internal IPv4 address, otherwise @caller_ip@ will be redacted to \"gce-internal-ip\". See https:\/\/cloud.google.com\/compute\/docs\/vpc\/ for more information.
      callerIp :: (Core.Maybe Core.Text)
      -- | The network of the caller. Set only if the network host project is part of the same GCP organization (or project) as the accessed resource. See https:\/\/cloud.google.com\/compute\/docs\/vpc\/ for more information. This is a scheme-less URI full resource name. For example: \"\/\/compute.googleapis.com\/projects\/PROJECT/ID\/global\/networks\/NETWORK/ID\"
    , callerNetwork :: (Core.Maybe Core.Text)
      -- | The user agent of the caller. This information is not authenticated and should be treated accordingly. For example: + @google-api-python-client\/1.4.0@: The request was made by the Google API client for Python. + @Cloud SDK Command Line Tool apitools-client\/1.0 gcloud\/0.9.62@: The request was made by the Google Cloud SDK CLI (gcloud). + @AppEngine-Google; (+http:\/\/code.google.com\/appengine; appid: s~my-project@: The request was made from the @my-project@ App Engine app.
    , callerSuppliedUserAgent :: (Core.Maybe Core.Text)
      -- | The destination of a network activity, such as accepting a TCP connection. In a multi hop network activity, the destination represents the receiver of the last hop. Only two fields are used in this message, Peer.port and Peer.ip. These fields are optionally populated by those services utilizing the IAM condition feature.
    , destinationAttributes :: (Core.Maybe Peer)
      -- | Request attributes used in IAM condition evaluation. This field contains request attributes like request time and access levels associated with the request. To get the whole view of the attributes used in IAM condition evaluation, the user must also look into @AuditLog.authentication_info.resource_attributes@.
    , requestAttributes :: (Core.Maybe Request')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestMetadata' with the minimum fields required to make a request.
newRequestMetadata 
    ::  RequestMetadata
newRequestMetadata =
  RequestMetadata
    { callerIp = Core.Nothing
    , callerNetwork = Core.Nothing
    , callerSuppliedUserAgent = Core.Nothing
    , destinationAttributes = Core.Nothing
    , requestAttributes = Core.Nothing
    }

instance Core.FromJSON RequestMetadata where
        parseJSON
          = Core.withObject "RequestMetadata"
              (\ o ->
                 RequestMetadata Core.<$>
                   (o Core..:? "callerIp") Core.<*>
                     (o Core..:? "callerNetwork")
                     Core.<*> (o Core..:? "callerSuppliedUserAgent")
                     Core.<*> (o Core..:? "destinationAttributes")
                     Core.<*> (o Core..:? "requestAttributes"))

instance Core.ToJSON RequestMetadata where
        toJSON RequestMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("callerIp" Core..=) Core.<$> callerIp,
                  ("callerNetwork" Core..=) Core.<$> callerNetwork,
                  ("callerSuppliedUserAgent" Core..=) Core.<$>
                    callerSuppliedUserAgent,
                  ("destinationAttributes" Core..=) Core.<$>
                    destinationAttributes,
                  ("requestAttributes" Core..=) Core.<$>
                    requestAttributes])


-- | This message defines core attributes for a resource. A resource is an addressable (named) entity provided by the destination service. For example, a file stored on a network storage service.
--
-- /See:/ 'newResource' smart constructor.
data Resource = Resource
    {
      -- | Annotations is an unstructured key-value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/annotations\/
      annotations :: (Core.Maybe Resource_Annotations)
      -- | Output only. The timestamp when the resource was created. This may be either the time creation was initiated or when it was completed.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The timestamp when the resource was deleted. If the resource is not deleted, this must be empty.
    , deleteTime :: (Core.Maybe Core.DateTime)
      -- | Mutable. The display name set by clients. Must be \<= 63 characters.
    , displayName :: (Core.Maybe Core.Text)
      -- | Output only. An opaque value that uniquely identifies a version or generation of a resource. It can be used to confirm that the client and server agree on the ordering of a resource being written.
    , etag :: (Core.Maybe Core.Text)
      -- | The labels or tags on the resource, such as AWS resource tags and Kubernetes resource labels.
    , labels :: (Core.Maybe Resource_Labels)
      -- | Immutable. The location of the resource. The location encoding is specific to the service provider, and new encoding may be introduced as the service evolves. For Google Cloud products, the encoding is what is used by Google Cloud APIs, such as @us-east1@, @aws-us-east-1@, and @azure-eastus2@. The semantics of @location@ is identical to the @cloud.googleapis.com\/location@ label used by some Google Cloud APIs.
    , location :: (Core.Maybe Core.Text)
      -- | The stable identifier (name) of a resource on the @service@. A resource can be logically identified as \"\/\/{resource.service}\/{resource.name}\". The differences between a resource name and a URI are: * Resource name is a logical identifier, independent of network protocol and API version. For example, @\/\/pubsub.googleapis.com\/projects\/123\/topics\/news-feed@. * URI often includes protocol and version information, so it can be used directly by applications. For example, @https:\/\/pubsub.googleapis.com\/v1\/projects\/123\/topics\/news-feed@. See https:\/\/cloud.google.com\/apis\/design\/resource_names for details.
    , name :: (Core.Maybe Core.Text)
      -- | The name of the service that this resource belongs to, such as @pubsub.googleapis.com@. The service may be different from the DNS hostname that actually serves the request.
    , service :: (Core.Maybe Core.Text)
      -- | The type of the resource. The syntax is platform-specific because different platforms define their resources differently. For Google APIs, the type format must be \"{service}\/{kind}\", such as \"pubsub.googleapis.com\/Topic\".
    , type' :: (Core.Maybe Core.Text)
      -- | The unique identifier of the resource. UID is unique in the time and space for this resource within the scope of the service. It is typically generated by the server on successful creation of a resource and must not be changed. UID is used to uniquely identify resources with resource name reuses. This should be a UUID4.
    , uid :: (Core.Maybe Core.Text)
      -- | Output only. The timestamp when the resource was last updated. Any change to the resource made by users must refresh this value. Changes to a resource made by the service should refresh this value.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource' with the minimum fields required to make a request.
newResource 
    ::  Resource
newResource =
  Resource
    { annotations = Core.Nothing
    , createTime = Core.Nothing
    , deleteTime = Core.Nothing
    , displayName = Core.Nothing
    , etag = Core.Nothing
    , labels = Core.Nothing
    , location = Core.Nothing
    , name = Core.Nothing
    , service = Core.Nothing
    , type' = Core.Nothing
    , uid = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON Resource where
        parseJSON
          = Core.withObject "Resource"
              (\ o ->
                 Resource Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deleteTime")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "service")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "uid")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON Resource where
        toJSON Resource{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deleteTime" Core..=) Core.<$> deleteTime,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("etag" Core..=) Core.<$> etag,
                  ("labels" Core..=) Core.<$> labels,
                  ("location" Core..=) Core.<$> location,
                  ("name" Core..=) Core.<$> name,
                  ("service" Core..=) Core.<$> service,
                  ("type" Core..=) Core.<$> type',
                  ("uid" Core..=) Core.<$> uid,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Annotations is an unstructured key-value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/annotations\/
--
-- /See:/ 'newResource_Annotations' smart constructor.
newtype Resource_Annotations = Resource_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource_Annotations' with the minimum fields required to make a request.
newResource_Annotations 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Resource_Annotations
newResource_Annotations additional =
  Resource_Annotations {additional = additional}

instance Core.FromJSON Resource_Annotations where
        parseJSON
          = Core.withObject "Resource_Annotations"
              (\ o ->
                 Resource_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON Resource_Annotations where
        toJSON Resource_Annotations{..}
          = Core.toJSON additional


-- | The labels or tags on the resource, such as AWS resource tags and Kubernetes resource labels.
--
-- /See:/ 'newResource_Labels' smart constructor.
newtype Resource_Labels = Resource_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource_Labels' with the minimum fields required to make a request.
newResource_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Resource_Labels
newResource_Labels additional = Resource_Labels {additional = additional}

instance Core.FromJSON Resource_Labels where
        parseJSON
          = Core.withObject "Resource_Labels"
              (\ o ->
                 Resource_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Resource_Labels where
        toJSON Resource_Labels{..} = Core.toJSON additional


-- | Describes a resource referenced in the request.
--
-- /See:/ 'newResourceInfo' smart constructor.
data ResourceInfo = ResourceInfo
    {
      -- | Optional. The identifier of the container of this resource. For Google Cloud APIs, the resource container must be one of the following formats: - @projects\/@ - @folders\/@ - @organizations\/@ Required for the policy enforcement on the container level (e.g. VPCSC, Location Policy check, Org Policy check).
      container :: (Core.Maybe Core.Text)
      -- | Optional. The location of the resource, it must be a valid zone, region or multiregion, for example: \"europe-west4\", \"northamerica-northeast1-a\". Required for location policy check.
    , location :: (Core.Maybe Core.Text)
      -- | The name of the resource referenced in the request.
    , name :: (Core.Maybe Core.Text)
      -- | The resource permission needed for this request. The format must be \"{service}\/{plural}.{verb}\".
    , permission :: (Core.Maybe Core.Text)
      -- | The resource type in the format of \"{service}\/{kind}\".
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceInfo' with the minimum fields required to make a request.
newResourceInfo 
    ::  ResourceInfo
newResourceInfo =
  ResourceInfo
    { container = Core.Nothing
    , location = Core.Nothing
    , name = Core.Nothing
    , permission = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON ResourceInfo where
        parseJSON
          = Core.withObject "ResourceInfo"
              (\ o ->
                 ResourceInfo Core.<$>
                   (o Core..:? "container") Core.<*>
                     (o Core..:? "location")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "permission")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON ResourceInfo where
        toJSON ResourceInfo{..}
          = Core.object
              (Core.catMaybes
                 [("container" Core..=) Core.<$> container,
                  ("location" Core..=) Core.<$> location,
                  ("name" Core..=) Core.<$> name,
                  ("permission" Core..=) Core.<$> permission,
                  ("type" Core..=) Core.<$> type'])


-- | Location information about a resource.
--
-- /See:/ 'newResourceLocation' smart constructor.
data ResourceLocation = ResourceLocation
    {
      -- | The locations of a resource after the execution of the operation. Requests to create or delete a location based resource must populate the \'current/locations\' field and not the \'original/locations\' field. For example: \"europe-west1-a\" \"us-east1\" \"nam3\"
      currentLocations :: (Core.Maybe [Core.Text])
      -- | The locations of a resource prior to the execution of the operation. Requests that mutate the resource\'s location must populate both the \'original/locations\' as well as the \'current/locations\' fields. For example: \"europe-west1-a\" \"us-east1\" \"nam3\"
    , originalLocations :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceLocation' with the minimum fields required to make a request.
newResourceLocation 
    ::  ResourceLocation
newResourceLocation =
  ResourceLocation
    {currentLocations = Core.Nothing, originalLocations = Core.Nothing}

instance Core.FromJSON ResourceLocation where
        parseJSON
          = Core.withObject "ResourceLocation"
              (\ o ->
                 ResourceLocation Core.<$>
                   (o Core..:? "currentLocations") Core.<*>
                     (o Core..:? "originalLocations"))

instance Core.ToJSON ResourceLocation where
        toJSON ResourceLocation{..}
          = Core.object
              (Core.catMaybes
                 [("currentLocations" Core..=) Core.<$>
                    currentLocations,
                  ("originalLocations" Core..=) Core.<$>
                    originalLocations])


-- | This message defines attributes for a typical network response. It generally models semantics of an HTTP response.
--
-- /See:/ 'newResponse' smart constructor.
data Response = Response
    {
      -- | The amount of time it takes the backend service to fully respond to a request. Measured from when the destination service starts to send the request to the backend until when the destination service receives the complete response from the backend.
      backendLatency :: (Core.Maybe Core.Duration)
      -- | The HTTP response status code, such as @200@ and @404@.
    , code :: (Core.Maybe Core.Int64)
      -- | The HTTP response headers. If multiple headers share the same key, they must be merged according to HTTP spec. All header keys must be lowercased, because HTTP header keys are case-insensitive.
    , headers :: (Core.Maybe Response_Headers)
      -- | The HTTP response size in bytes. If unknown, it must be -1.
    , size :: (Core.Maybe Core.Int64)
      -- | The timestamp when the @destination@ service sends the last byte of the response.
    , time :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Response' with the minimum fields required to make a request.
newResponse 
    ::  Response
newResponse =
  Response
    { backendLatency = Core.Nothing
    , code = Core.Nothing
    , headers = Core.Nothing
    , size = Core.Nothing
    , time = Core.Nothing
    }

instance Core.FromJSON Response where
        parseJSON
          = Core.withObject "Response"
              (\ o ->
                 Response Core.<$>
                   (o Core..:? "backendLatency") Core.<*>
                     (o Core..:? "code" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "headers")
                     Core.<*>
                     (o Core..:? "size" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "time"))

instance Core.ToJSON Response where
        toJSON Response{..}
          = Core.object
              (Core.catMaybes
                 [("backendLatency" Core..=) Core.<$> backendLatency,
                  ("code" Core..=) Core.. Core.AsText Core.<$> code,
                  ("headers" Core..=) Core.<$> headers,
                  ("size" Core..=) Core.. Core.AsText Core.<$> size,
                  ("time" Core..=) Core.<$> time])


-- | The HTTP response headers. If multiple headers share the same key, they must be merged according to HTTP spec. All header keys must be lowercased, because HTTP header keys are case-insensitive.
--
-- /See:/ 'newResponse_Headers' smart constructor.
newtype Response_Headers = Response_Headers
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Response_Headers' with the minimum fields required to make a request.
newResponse_Headers 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Response_Headers
newResponse_Headers additional = Response_Headers {additional = additional}

instance Core.FromJSON Response_Headers where
        parseJSON
          = Core.withObject "Response_Headers"
              (\ o ->
                 Response_Headers Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Response_Headers where
        toJSON Response_Headers{..} = Core.toJSON additional


-- | Identity delegation history of an authenticated service account.
--
-- /See:/ 'newServiceAccountDelegationInfo' smart constructor.
data ServiceAccountDelegationInfo = ServiceAccountDelegationInfo
    {
      -- | First party (Google) identity as the real authority.
      firstPartyPrincipal :: (Core.Maybe FirstPartyPrincipal)
      -- | A string representing the principal/subject associated with the identity. For most identities, the format will be @principal:\/\/iam.googleapis.com\/{identity pool name}\/subject\/{subject)@ except for some GKE identities (GKE/WORKLOAD, FREEFORM, GKE/HUB/WORKLOAD) that are still in the legacy format @serviceAccount:{identity pool name}[{subject}]@
    , principalSubject :: (Core.Maybe Core.Text)
      -- | Third party identity as the real authority.
    , thirdPartyPrincipal :: (Core.Maybe ThirdPartyPrincipal)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccountDelegationInfo' with the minimum fields required to make a request.
newServiceAccountDelegationInfo 
    ::  ServiceAccountDelegationInfo
newServiceAccountDelegationInfo =
  ServiceAccountDelegationInfo
    { firstPartyPrincipal = Core.Nothing
    , principalSubject = Core.Nothing
    , thirdPartyPrincipal = Core.Nothing
    }

instance Core.FromJSON ServiceAccountDelegationInfo
         where
        parseJSON
          = Core.withObject "ServiceAccountDelegationInfo"
              (\ o ->
                 ServiceAccountDelegationInfo Core.<$>
                   (o Core..:? "firstPartyPrincipal") Core.<*>
                     (o Core..:? "principalSubject")
                     Core.<*> (o Core..:? "thirdPartyPrincipal"))

instance Core.ToJSON ServiceAccountDelegationInfo
         where
        toJSON ServiceAccountDelegationInfo{..}
          = Core.object
              (Core.catMaybes
                 [("firstPartyPrincipal" Core..=) Core.<$>
                    firstPartyPrincipal,
                  ("principalSubject" Core..=) Core.<$>
                    principalSubject,
                  ("thirdPartyPrincipal" Core..=) Core.<$>
                    thirdPartyPrincipal])


-- | The history of delegation across multiple services as the result of the original user\'s action. Such as \"service A uses its own account to do something for user B\". This differs from ServiceAccountDelegationInfo, which only tracks the history of direct token exchanges (impersonation).
--
-- /See:/ 'newServiceDelegationHistory' smart constructor.
data ServiceDelegationHistory = ServiceDelegationHistory
    {
      -- | The original end user who initiated the request to GCP.
      originalPrincipal :: (Core.Maybe Core.Text)
      -- | Data identifying the service specific jobs or units of work that were involved in a chain of service calls.
    , serviceMetadata :: (Core.Maybe [ServiceMetadata])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceDelegationHistory' with the minimum fields required to make a request.
newServiceDelegationHistory 
    ::  ServiceDelegationHistory
newServiceDelegationHistory =
  ServiceDelegationHistory
    {originalPrincipal = Core.Nothing, serviceMetadata = Core.Nothing}

instance Core.FromJSON ServiceDelegationHistory where
        parseJSON
          = Core.withObject "ServiceDelegationHistory"
              (\ o ->
                 ServiceDelegationHistory Core.<$>
                   (o Core..:? "originalPrincipal") Core.<*>
                     (o Core..:? "serviceMetadata"))

instance Core.ToJSON ServiceDelegationHistory where
        toJSON ServiceDelegationHistory{..}
          = Core.object
              (Core.catMaybes
                 [("originalPrincipal" Core..=) Core.<$>
                    originalPrincipal,
                  ("serviceMetadata" Core..=) Core.<$>
                    serviceMetadata])


-- | Metadata describing the service and additional service specific information used to identify the job or unit of work at hand.
--
-- /See:/ 'newServiceMetadata' smart constructor.
data ServiceMetadata = ServiceMetadata
    {
      -- | Additional metadata provided by service teams to describe service specific job information that was triggered by the original principal.
      jobMetadata :: (Core.Maybe ServiceMetadata_JobMetadata)
      -- | A string representing the principal/subject associated with the identity. For most identities, the format will be @principal:\/\/iam.googleapis.com\/{identity pool name}\/subject\/{subject)@ except for some GKE identities (GKE/WORKLOAD, FREEFORM, GKE/HUB/WORKLOAD) that are still in the legacy format @serviceAccount:{identity pool name}[{subject}]@ If the identity is a Google account (e.g. workspace user account or service account), this will be the email of the prefixed by @serviceAccount:@. For example: @serviceAccount:my-service-account\@project-1.iam.gserviceaccount.com@. If the identity is an individual user, the identity will be formatted as: @user:user_ABC\@email.com@.
    , principalSubject :: (Core.Maybe Core.Text)
      -- | The service\'s fully qualified domain name, e.g. \"dataproc.googleapis.com\".
    , serviceDomain :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceMetadata' with the minimum fields required to make a request.
newServiceMetadata 
    ::  ServiceMetadata
newServiceMetadata =
  ServiceMetadata
    { jobMetadata = Core.Nothing
    , principalSubject = Core.Nothing
    , serviceDomain = Core.Nothing
    }

instance Core.FromJSON ServiceMetadata where
        parseJSON
          = Core.withObject "ServiceMetadata"
              (\ o ->
                 ServiceMetadata Core.<$>
                   (o Core..:? "jobMetadata") Core.<*>
                     (o Core..:? "principalSubject")
                     Core.<*> (o Core..:? "serviceDomain"))

instance Core.ToJSON ServiceMetadata where
        toJSON ServiceMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("jobMetadata" Core..=) Core.<$> jobMetadata,
                  ("principalSubject" Core..=) Core.<$>
                    principalSubject,
                  ("serviceDomain" Core..=) Core.<$> serviceDomain])


-- | Additional metadata provided by service teams to describe service specific job information that was triggered by the original principal.
--
-- /See:/ 'newServiceMetadata_JobMetadata' smart constructor.
newtype ServiceMetadata_JobMetadata = ServiceMetadata_JobMetadata
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceMetadata_JobMetadata' with the minimum fields required to make a request.
newServiceMetadata_JobMetadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> ServiceMetadata_JobMetadata
newServiceMetadata_JobMetadata additional =
  ServiceMetadata_JobMetadata {additional = additional}

instance Core.FromJSON ServiceMetadata_JobMetadata
         where
        parseJSON
          = Core.withObject "ServiceMetadata_JobMetadata"
              (\ o ->
                 ServiceMetadata_JobMetadata Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON ServiceMetadata_JobMetadata
         where
        toJSON ServiceMetadata_JobMetadata{..}
          = Core.toJSON additional


-- | The context of a span. This is attached to an Exemplar in Distribution values during aggregation. It contains the name of a span with format: projects\/[PROJECT/ID/OR/NUMBER]\/traces\/[TRACE/ID]\/spans\/[SPAN_ID]
--
-- /See:/ 'newSpanContext' smart constructor.
newtype SpanContext = SpanContext
    {
      -- | The resource name of the span. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/traces\/[TRACE/ID]\/spans\/[SPAN_ID] @[TRACE_ID]@ is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. @[SPAN_ID]@ is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array.
      spanName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpanContext' with the minimum fields required to make a request.
newSpanContext 
    ::  SpanContext
newSpanContext = SpanContext {spanName = Core.Nothing}

instance Core.FromJSON SpanContext where
        parseJSON
          = Core.withObject "SpanContext"
              (\ o -> SpanContext Core.<$> (o Core..:? "spanName"))

instance Core.ToJSON SpanContext where
        toJSON SpanContext{..}
          = Core.object
              (Core.catMaybes
                 [("spanName" Core..=) Core.<$> spanName])


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional


-- | Third party identity principal.
--
-- /See:/ 'newThirdPartyPrincipal' smart constructor.
newtype ThirdPartyPrincipal = ThirdPartyPrincipal
    {
      -- | Metadata about third party identity.
      thirdPartyClaims :: (Core.Maybe ThirdPartyPrincipal_ThirdPartyClaims)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThirdPartyPrincipal' with the minimum fields required to make a request.
newThirdPartyPrincipal 
    ::  ThirdPartyPrincipal
newThirdPartyPrincipal = ThirdPartyPrincipal {thirdPartyClaims = Core.Nothing}

instance Core.FromJSON ThirdPartyPrincipal where
        parseJSON
          = Core.withObject "ThirdPartyPrincipal"
              (\ o ->
                 ThirdPartyPrincipal Core.<$>
                   (o Core..:? "thirdPartyClaims"))

instance Core.ToJSON ThirdPartyPrincipal where
        toJSON ThirdPartyPrincipal{..}
          = Core.object
              (Core.catMaybes
                 [("thirdPartyClaims" Core..=) Core.<$>
                    thirdPartyClaims])


-- | Metadata about third party identity.
--
-- /See:/ 'newThirdPartyPrincipal_ThirdPartyClaims' smart constructor.
newtype ThirdPartyPrincipal_ThirdPartyClaims = ThirdPartyPrincipal_ThirdPartyClaims
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThirdPartyPrincipal_ThirdPartyClaims' with the minimum fields required to make a request.
newThirdPartyPrincipal_ThirdPartyClaims 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> ThirdPartyPrincipal_ThirdPartyClaims
newThirdPartyPrincipal_ThirdPartyClaims additional =
  ThirdPartyPrincipal_ThirdPartyClaims {additional = additional}

instance Core.FromJSON
           ThirdPartyPrincipal_ThirdPartyClaims
         where
        parseJSON
          = Core.withObject
              "ThirdPartyPrincipal_ThirdPartyClaims"
              (\ o ->
                 ThirdPartyPrincipal_ThirdPartyClaims Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           ThirdPartyPrincipal_ThirdPartyClaims
         where
        toJSON ThirdPartyPrincipal_ThirdPartyClaims{..}
          = Core.toJSON additional


-- | A common proto for logging HTTP requests. Only contains semantics defined by the HTTP specification. Product-specific logging information MUST be defined in a separate message.
--
-- /See:/ 'newV2HttpRequest' smart constructor.
data V2HttpRequest = V2HttpRequest
    {
      -- | The number of HTTP response bytes inserted into cache. Set only when a cache fill was attempted.
      cacheFillBytes :: (Core.Maybe Core.Int64)
      -- | Whether or not an entity was served from cache (with or without validation).
    , cacheHit :: (Core.Maybe Core.Bool)
      -- | Whether or not a cache lookup was attempted.
    , cacheLookup :: (Core.Maybe Core.Bool)
      -- | Whether or not the response was validated with the origin server before being served from cache. This field is only meaningful if @cache_hit@ is True.
    , cacheValidatedWithOriginServer :: (Core.Maybe Core.Bool)
      -- | The request processing latency on the server, from the time the request was received until the response was sent.
    , latency :: (Core.Maybe Core.Duration)
      -- | Protocol used for the request. Examples: \"HTTP\/1.1\", \"HTTP\/2\", \"websocket\"
    , protocol :: (Core.Maybe Core.Text)
      -- | The referer URL of the request, as defined in <http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html HTTP\/1.1 Header Field Definitions>.
    , referer :: (Core.Maybe Core.Text)
      -- | The IP address (IPv4 or IPv6) of the client that issued the HTTP request. Examples: @\"192.168.1.1\"@, @\"FE80::0202:B3FF:FE1E:8329\"@.
    , remoteIp :: (Core.Maybe Core.Text)
      -- | The request method. Examples: @\"GET\"@, @\"HEAD\"@, @\"PUT\"@, @\"POST\"@.
    , requestMethod :: (Core.Maybe Core.Text)
      -- | The size of the HTTP request message in bytes, including the request headers and the request body.
    , requestSize :: (Core.Maybe Core.Int64)
      -- | The scheme (http, https), the host name, the path, and the query portion of the URL that was requested. Example: @\"http:\/\/example.com\/some\/info?color=red\"@.
    , requestUrl :: (Core.Maybe Core.Text)
      -- | The size of the HTTP response message sent back to the client, in bytes, including the response headers and the response body.
    , responseSize :: (Core.Maybe Core.Int64)
      -- | The IP address (IPv4 or IPv6) of the origin server that the request was sent to.
    , serverIp :: (Core.Maybe Core.Text)
      -- | The response code indicating the status of the response. Examples: 200, 404.
    , status :: (Core.Maybe Core.Int32)
      -- | The user agent sent by the client. Example: @\"Mozilla\/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)\"@.
    , userAgent :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'V2HttpRequest' with the minimum fields required to make a request.
newV2HttpRequest 
    ::  V2HttpRequest
newV2HttpRequest =
  V2HttpRequest
    { cacheFillBytes = Core.Nothing
    , cacheHit = Core.Nothing
    , cacheLookup = Core.Nothing
    , cacheValidatedWithOriginServer = Core.Nothing
    , latency = Core.Nothing
    , protocol = Core.Nothing
    , referer = Core.Nothing
    , remoteIp = Core.Nothing
    , requestMethod = Core.Nothing
    , requestSize = Core.Nothing
    , requestUrl = Core.Nothing
    , responseSize = Core.Nothing
    , serverIp = Core.Nothing
    , status = Core.Nothing
    , userAgent = Core.Nothing
    }

instance Core.FromJSON V2HttpRequest where
        parseJSON
          = Core.withObject "V2HttpRequest"
              (\ o ->
                 V2HttpRequest Core.<$>
                   (o Core..:? "cacheFillBytes" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "cacheHit")
                     Core.<*> (o Core..:? "cacheLookup")
                     Core.<*>
                     (o Core..:? "cacheValidatedWithOriginServer")
                     Core.<*> (o Core..:? "latency")
                     Core.<*> (o Core..:? "protocol")
                     Core.<*> (o Core..:? "referer")
                     Core.<*> (o Core..:? "remoteIp")
                     Core.<*> (o Core..:? "requestMethod")
                     Core.<*>
                     (o Core..:? "requestSize" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "requestUrl")
                     Core.<*>
                     (o Core..:? "responseSize" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "serverIp")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "userAgent"))

instance Core.ToJSON V2HttpRequest where
        toJSON V2HttpRequest{..}
          = Core.object
              (Core.catMaybes
                 [("cacheFillBytes" Core..=) Core.. Core.AsText
                    Core.<$> cacheFillBytes,
                  ("cacheHit" Core..=) Core.<$> cacheHit,
                  ("cacheLookup" Core..=) Core.<$> cacheLookup,
                  ("cacheValidatedWithOriginServer" Core..=) Core.<$>
                    cacheValidatedWithOriginServer,
                  ("latency" Core..=) Core.<$> latency,
                  ("protocol" Core..=) Core.<$> protocol,
                  ("referer" Core..=) Core.<$> referer,
                  ("remoteIp" Core..=) Core.<$> remoteIp,
                  ("requestMethod" Core..=) Core.<$> requestMethod,
                  ("requestSize" Core..=) Core.. Core.AsText Core.<$>
                    requestSize,
                  ("requestUrl" Core..=) Core.<$> requestUrl,
                  ("responseSize" Core..=) Core.. Core.AsText Core.<$>
                    responseSize,
                  ("serverIp" Core..=) Core.<$> serverIp,
                  ("status" Core..=) Core.<$> status,
                  ("userAgent" Core..=) Core.<$> userAgent])


-- | An individual log entry.
--
-- /See:/ 'newV2LogEntry' smart constructor.
data V2LogEntry = V2LogEntry
    {
      -- | Optional. Information about the HTTP request associated with this log entry, if applicable.
      httpRequest :: (Core.Maybe V2HttpRequest)
      -- | A unique ID for the log entry used for deduplication. If omitted, the implementation will generate one based on operation_id.
    , insertId :: (Core.Maybe Core.Text)
      -- | A set of user-defined (key, value) data that provides additional information about the log entry.
    , labels :: (Core.Maybe V2LogEntry_Labels)
      -- | A set of user-defined (key, value) data that provides additional information about the moniotored resource that the log entry belongs to.
    , monitoredResourceLabels :: (Core.Maybe V2LogEntry_MonitoredResourceLabels)
      -- | Required. The log to which this log entry belongs. Examples: @\"syslog\"@, @\"book_log\"@.
    , name :: (Core.Maybe Core.Text)
      -- | Optional. Information about an operation associated with the log entry, if applicable.
    , operation :: (Core.Maybe V2LogEntryOperation)
      -- | The log entry payload, represented as a protocol buffer that is expressed as a JSON object. The only accepted type currently is AuditLog.
    , protoPayload :: (Core.Maybe V2LogEntry_ProtoPayload)
      -- | The severity of the log entry. The default value is @LogSeverity.DEFAULT@.
    , severity :: (Core.Maybe V2LogEntry_Severity)
      -- | Optional. Source code location information associated with the log entry, if any.
    , sourceLocation :: (Core.Maybe V2LogEntrySourceLocation)
      -- | The log entry payload, represented as a structure that is expressed as a JSON object.
    , structPayload :: (Core.Maybe V2LogEntry_StructPayload)
      -- | The log entry payload, represented as a Unicode string (UTF-8).
    , textPayload :: (Core.Maybe Core.Text)
      -- | The time the event described by the log entry occurred. If omitted, defaults to operation start time.
    , timestamp :: (Core.Maybe Core.DateTime)
      -- | Optional. Resource name of the trace associated with the log entry, if any. If this field contains a relative resource name, you can assume the name is relative to @\/\/tracing.googleapis.com@. Example: @projects\/my-projectid\/traces\/06796866738c859f2f19b7cfb3214824@
    , trace :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'V2LogEntry' with the minimum fields required to make a request.
newV2LogEntry 
    ::  V2LogEntry
newV2LogEntry =
  V2LogEntry
    { httpRequest = Core.Nothing
    , insertId = Core.Nothing
    , labels = Core.Nothing
    , monitoredResourceLabels = Core.Nothing
    , name = Core.Nothing
    , operation = Core.Nothing
    , protoPayload = Core.Nothing
    , severity = Core.Nothing
    , sourceLocation = Core.Nothing
    , structPayload = Core.Nothing
    , textPayload = Core.Nothing
    , timestamp = Core.Nothing
    , trace = Core.Nothing
    }

instance Core.FromJSON V2LogEntry where
        parseJSON
          = Core.withObject "V2LogEntry"
              (\ o ->
                 V2LogEntry Core.<$>
                   (o Core..:? "httpRequest") Core.<*>
                     (o Core..:? "insertId")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "monitoredResourceLabels")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "operation")
                     Core.<*> (o Core..:? "protoPayload")
                     Core.<*> (o Core..:? "severity")
                     Core.<*> (o Core..:? "sourceLocation")
                     Core.<*> (o Core..:? "structPayload")
                     Core.<*> (o Core..:? "textPayload")
                     Core.<*> (o Core..:? "timestamp")
                     Core.<*> (o Core..:? "trace"))

instance Core.ToJSON V2LogEntry where
        toJSON V2LogEntry{..}
          = Core.object
              (Core.catMaybes
                 [("httpRequest" Core..=) Core.<$> httpRequest,
                  ("insertId" Core..=) Core.<$> insertId,
                  ("labels" Core..=) Core.<$> labels,
                  ("monitoredResourceLabels" Core..=) Core.<$>
                    monitoredResourceLabels,
                  ("name" Core..=) Core.<$> name,
                  ("operation" Core..=) Core.<$> operation,
                  ("protoPayload" Core..=) Core.<$> protoPayload,
                  ("severity" Core..=) Core.<$> severity,
                  ("sourceLocation" Core..=) Core.<$> sourceLocation,
                  ("structPayload" Core..=) Core.<$> structPayload,
                  ("textPayload" Core..=) Core.<$> textPayload,
                  ("timestamp" Core..=) Core.<$> timestamp,
                  ("trace" Core..=) Core.<$> trace])


-- | A set of user-defined (key, value) data that provides additional information about the log entry.
--
-- /See:/ 'newV2LogEntry_Labels' smart constructor.
newtype V2LogEntry_Labels = V2LogEntry_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'V2LogEntry_Labels' with the minimum fields required to make a request.
newV2LogEntry_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> V2LogEntry_Labels
newV2LogEntry_Labels additional = V2LogEntry_Labels {additional = additional}

instance Core.FromJSON V2LogEntry_Labels where
        parseJSON
          = Core.withObject "V2LogEntry_Labels"
              (\ o ->
                 V2LogEntry_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON V2LogEntry_Labels where
        toJSON V2LogEntry_Labels{..} = Core.toJSON additional


-- | A set of user-defined (key, value) data that provides additional information about the moniotored resource that the log entry belongs to.
--
-- /See:/ 'newV2LogEntry_MonitoredResourceLabels' smart constructor.
newtype V2LogEntry_MonitoredResourceLabels = V2LogEntry_MonitoredResourceLabels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'V2LogEntry_MonitoredResourceLabels' with the minimum fields required to make a request.
newV2LogEntry_MonitoredResourceLabels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> V2LogEntry_MonitoredResourceLabels
newV2LogEntry_MonitoredResourceLabels additional =
  V2LogEntry_MonitoredResourceLabels {additional = additional}

instance Core.FromJSON
           V2LogEntry_MonitoredResourceLabels
         where
        parseJSON
          = Core.withObject
              "V2LogEntry_MonitoredResourceLabels"
              (\ o ->
                 V2LogEntry_MonitoredResourceLabels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           V2LogEntry_MonitoredResourceLabels
         where
        toJSON V2LogEntry_MonitoredResourceLabels{..}
          = Core.toJSON additional


-- | The log entry payload, represented as a protocol buffer that is expressed as a JSON object. The only accepted type currently is AuditLog.
--
-- /See:/ 'newV2LogEntry_ProtoPayload' smart constructor.
newtype V2LogEntry_ProtoPayload = V2LogEntry_ProtoPayload
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'V2LogEntry_ProtoPayload' with the minimum fields required to make a request.
newV2LogEntry_ProtoPayload 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> V2LogEntry_ProtoPayload
newV2LogEntry_ProtoPayload additional =
  V2LogEntry_ProtoPayload {additional = additional}

instance Core.FromJSON V2LogEntry_ProtoPayload where
        parseJSON
          = Core.withObject "V2LogEntry_ProtoPayload"
              (\ o ->
                 V2LogEntry_ProtoPayload Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON V2LogEntry_ProtoPayload where
        toJSON V2LogEntry_ProtoPayload{..}
          = Core.toJSON additional


-- | The log entry payload, represented as a structure that is expressed as a JSON object.
--
-- /See:/ 'newV2LogEntry_StructPayload' smart constructor.
newtype V2LogEntry_StructPayload = V2LogEntry_StructPayload
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'V2LogEntry_StructPayload' with the minimum fields required to make a request.
newV2LogEntry_StructPayload 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> V2LogEntry_StructPayload
newV2LogEntry_StructPayload additional =
  V2LogEntry_StructPayload {additional = additional}

instance Core.FromJSON V2LogEntry_StructPayload where
        parseJSON
          = Core.withObject "V2LogEntry_StructPayload"
              (\ o ->
                 V2LogEntry_StructPayload Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON V2LogEntry_StructPayload where
        toJSON V2LogEntry_StructPayload{..}
          = Core.toJSON additional


-- | Additional information about a potentially long-running operation with which a log entry is associated.
--
-- /See:/ 'newV2LogEntryOperation' smart constructor.
data V2LogEntryOperation = V2LogEntryOperation
    {
      -- | Optional. Set this to True if this is the first log entry in the operation.
      first :: (Core.Maybe Core.Bool)
      -- | Optional. An arbitrary operation identifier. Log entries with the same identifier are assumed to be part of the same operation.
    , id :: (Core.Maybe Core.Text)
      -- | Optional. Set this to True if this is the last log entry in the operation.
    , last :: (Core.Maybe Core.Bool)
      -- | Optional. An arbitrary producer identifier. The combination of @id@ and @producer@ must be globally unique. Examples for @producer@: @\"MyDivision.MyBigCompany.com\"@, @\"github.com\/MyProject\/MyApplication\"@.
    , producer :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'V2LogEntryOperation' with the minimum fields required to make a request.
newV2LogEntryOperation 
    ::  V2LogEntryOperation
newV2LogEntryOperation =
  V2LogEntryOperation
    { first = Core.Nothing
    , id = Core.Nothing
    , last = Core.Nothing
    , producer = Core.Nothing
    }

instance Core.FromJSON V2LogEntryOperation where
        parseJSON
          = Core.withObject "V2LogEntryOperation"
              (\ o ->
                 V2LogEntryOperation Core.<$>
                   (o Core..:? "first") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "last")
                     Core.<*> (o Core..:? "producer"))

instance Core.ToJSON V2LogEntryOperation where
        toJSON V2LogEntryOperation{..}
          = Core.object
              (Core.catMaybes
                 [("first" Core..=) Core.<$> first,
                  ("id" Core..=) Core.<$> id,
                  ("last" Core..=) Core.<$> last,
                  ("producer" Core..=) Core.<$> producer])


-- | Additional information about the source code location that produced the log entry.
--
-- /See:/ 'newV2LogEntrySourceLocation' smart constructor.
data V2LogEntrySourceLocation = V2LogEntrySourceLocation
    {
      -- | Optional. Source file name. Depending on the runtime environment, this might be a simple name or a fully-qualified name.
      file :: (Core.Maybe Core.Text)
      -- | Optional. Human-readable name of the function or method being invoked, with optional context such as the class or package name. This information may be used in contexts such as the logs viewer, where a file and line number are less meaningful. The format can vary by language. For example: @qual.if.ied.Class.method@ (Java), @dir\/package.func@ (Go), @function@ (Python).
    , function :: (Core.Maybe Core.Text)
      -- | Optional. Line within the source file. 1-based; 0 indicates no line number available.
    , line :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'V2LogEntrySourceLocation' with the minimum fields required to make a request.
newV2LogEntrySourceLocation 
    ::  V2LogEntrySourceLocation
newV2LogEntrySourceLocation =
  V2LogEntrySourceLocation
    {file = Core.Nothing, function = Core.Nothing, line = Core.Nothing}

instance Core.FromJSON V2LogEntrySourceLocation where
        parseJSON
          = Core.withObject "V2LogEntrySourceLocation"
              (\ o ->
                 V2LogEntrySourceLocation Core.<$>
                   (o Core..:? "file") Core.<*> (o Core..:? "function")
                     Core.<*>
                     (o Core..:? "line" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON V2LogEntrySourceLocation where
        toJSON V2LogEntrySourceLocation{..}
          = Core.object
              (Core.catMaybes
                 [("file" Core..=) Core.<$> file,
                  ("function" Core..=) Core.<$> function,
                  ("line" Core..=) Core.. Core.AsText Core.<$> line])


-- | Report v2 extension proto for passing the resource metadata associated with a resource create\/update\/delete\/undelete event from ESF to Chemist. ResourceEvent proto should be serialized into the ReportRequest.operations.extensions.
--
-- /See:/ 'newV2ResourceEvent' smart constructor.
data V2ResourceEvent = V2ResourceEvent
    {
      -- | The ESF unique context id of the api request, from which this resource event originated. This field is only needed for CAIS integration via api annotation. See go\/cais-lro-delete for more details.
      contextId :: (Core.Maybe Core.Int64)
      -- | The destinations field determines which backend services should handle the event. This should be specified as a comma-delimited string.
    , destinations :: (Core.Maybe Core.Text)
      -- | The parent resource for the resource.
    , parent :: (Core.Maybe Resource)
      -- | The api path the resource event was created in. This should match the source of the @payload@ field. For direct integrations with Chemist, this should generally be the RESPONSE. go\/resource-event-pipeline-type
    , path :: (Core.Maybe V2ResourceEvent_Path)
      -- | The payload contains metadata associated with the resource event. A ResourceEventPayloadStatus is provided instead if the original payload cannot be returned due to a limitation (e.g. size limit).
    , payload :: (Core.Maybe V2ResourceEvent_Payload)
      -- | The resource associated with the event.
    , resource :: (Core.Maybe Resource)
      -- | The resource event type determines how the backend service should process the event.
    , type' :: (Core.Maybe V2ResourceEvent_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'V2ResourceEvent' with the minimum fields required to make a request.
newV2ResourceEvent 
    ::  V2ResourceEvent
newV2ResourceEvent =
  V2ResourceEvent
    { contextId = Core.Nothing
    , destinations = Core.Nothing
    , parent = Core.Nothing
    , path = Core.Nothing
    , payload = Core.Nothing
    , resource = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON V2ResourceEvent where
        parseJSON
          = Core.withObject "V2ResourceEvent"
              (\ o ->
                 V2ResourceEvent Core.<$>
                   (o Core..:? "contextId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "destinations")
                     Core.<*> (o Core..:? "parent")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "payload")
                     Core.<*> (o Core..:? "resource")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON V2ResourceEvent where
        toJSON V2ResourceEvent{..}
          = Core.object
              (Core.catMaybes
                 [("contextId" Core..=) Core.. Core.AsText Core.<$>
                    contextId,
                  ("destinations" Core..=) Core.<$> destinations,
                  ("parent" Core..=) Core.<$> parent,
                  ("path" Core..=) Core.<$> path,
                  ("payload" Core..=) Core.<$> payload,
                  ("resource" Core..=) Core.<$> resource,
                  ("type" Core..=) Core.<$> type'])


-- | The payload contains metadata associated with the resource event. A ResourceEventPayloadStatus is provided instead if the original payload cannot be returned due to a limitation (e.g. size limit).
--
-- /See:/ 'newV2ResourceEvent_Payload' smart constructor.
newtype V2ResourceEvent_Payload = V2ResourceEvent_Payload
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'V2ResourceEvent_Payload' with the minimum fields required to make a request.
newV2ResourceEvent_Payload 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> V2ResourceEvent_Payload
newV2ResourceEvent_Payload additional =
  V2ResourceEvent_Payload {additional = additional}

instance Core.FromJSON V2ResourceEvent_Payload where
        parseJSON
          = Core.withObject "V2ResourceEvent_Payload"
              (\ o ->
                 V2ResourceEvent_Payload Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON V2ResourceEvent_Payload where
        toJSON V2ResourceEvent_Payload{..}
          = Core.toJSON additional


-- | Provides information about the Policy violation info for this request.
--
-- /See:/ 'newViolationInfo' smart constructor.
data ViolationInfo = ViolationInfo
    {
      -- | Optional. Value that is being checked for the policy. This could be in encrypted form (if pii sensitive). This field will only be emitted in LIST_POLICY types
      checkedValue :: (Core.Maybe Core.Text)
      -- | Optional. Constraint name
    , constraint :: (Core.Maybe Core.Text)
      -- | Optional. Error message that policy is indicating.
    , errorMessage :: (Core.Maybe Core.Text)
      -- | Optional. Indicates the type of the policy.
    , policyType :: (Core.Maybe ViolationInfo_PolicyType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ViolationInfo' with the minimum fields required to make a request.
newViolationInfo 
    ::  ViolationInfo
newViolationInfo =
  ViolationInfo
    { checkedValue = Core.Nothing
    , constraint = Core.Nothing
    , errorMessage = Core.Nothing
    , policyType = Core.Nothing
    }

instance Core.FromJSON ViolationInfo where
        parseJSON
          = Core.withObject "ViolationInfo"
              (\ o ->
                 ViolationInfo Core.<$>
                   (o Core..:? "checkedValue") Core.<*>
                     (o Core..:? "constraint")
                     Core.<*> (o Core..:? "errorMessage")
                     Core.<*> (o Core..:? "policyType"))

instance Core.ToJSON ViolationInfo where
        toJSON ViolationInfo{..}
          = Core.object
              (Core.catMaybes
                 [("checkedValue" Core..=) Core.<$> checkedValue,
                  ("constraint" Core..=) Core.<$> constraint,
                  ("errorMessage" Core..=) Core.<$> errorMessage,
                  ("policyType" Core..=) Core.<$> policyType])

