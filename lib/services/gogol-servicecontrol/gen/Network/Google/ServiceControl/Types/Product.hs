{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceControl.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceControl.Types.Product where

import Network.Google.Prelude
import Network.Google.ServiceControl.Types.Sum

-- | Deprecated. Use the \`metadata\` field instead. Other service-specific
-- data about the request, response, and other activities.
--
-- /See:/ 'auditLogServiceData' smart constructor.
newtype AuditLogServiceData =
  AuditLogServiceData'
    { _alsdAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogServiceData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alsdAddtional'
auditLogServiceData
    :: HashMap Text JSONValue -- ^ 'alsdAddtional'
    -> AuditLogServiceData
auditLogServiceData pAlsdAddtional_ =
  AuditLogServiceData' {_alsdAddtional = _Coerce # pAlsdAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
alsdAddtional :: Lens' AuditLogServiceData (HashMap Text JSONValue)
alsdAddtional
  = lens _alsdAddtional
      (\ s a -> s{_alsdAddtional = a})
      . _Coerce

instance FromJSON AuditLogServiceData where
        parseJSON
          = withObject "AuditLogServiceData"
              (\ o -> AuditLogServiceData' <$> (parseJSONObject o))

instance ToJSON AuditLogServiceData where
        toJSON = toJSON . _alsdAddtional

-- | Other service-specific data about the request, response, and other
-- information associated with the current audited event.
--
-- /See:/ 'auditLogMetadata' smart constructor.
newtype AuditLogMetadata =
  AuditLogMetadata'
    { _almAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'almAddtional'
auditLogMetadata
    :: HashMap Text JSONValue -- ^ 'almAddtional'
    -> AuditLogMetadata
auditLogMetadata pAlmAddtional_ =
  AuditLogMetadata' {_almAddtional = _Coerce # pAlmAddtional_}


-- | Properties of the object.
almAddtional :: Lens' AuditLogMetadata (HashMap Text JSONValue)
almAddtional
  = lens _almAddtional (\ s a -> s{_almAddtional = a})
      . _Coerce

instance FromJSON AuditLogMetadata where
        parseJSON
          = withObject "AuditLogMetadata"
              (\ o -> AuditLogMetadata' <$> (parseJSONObject o))

instance ToJSON AuditLogMetadata where
        toJSON = toJSON . _almAddtional

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Metadata about the request.
--
-- /See:/ 'requestMetadata' smart constructor.
data RequestMetadata =
  RequestMetadata'
    { _rmCallerSuppliedUserAgent :: !(Maybe Text)
    , _rmCallerIP :: !(Maybe Text)
    , _rmDestinationAttributes :: !(Maybe Peer)
    , _rmCallerNetwork :: !(Maybe Text)
    , _rmRequestAttributes :: !(Maybe Request')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RequestMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmCallerSuppliedUserAgent'
--
-- * 'rmCallerIP'
--
-- * 'rmDestinationAttributes'
--
-- * 'rmCallerNetwork'
--
-- * 'rmRequestAttributes'
requestMetadata
    :: RequestMetadata
requestMetadata =
  RequestMetadata'
    { _rmCallerSuppliedUserAgent = Nothing
    , _rmCallerIP = Nothing
    , _rmDestinationAttributes = Nothing
    , _rmCallerNetwork = Nothing
    , _rmRequestAttributes = Nothing
    }


-- | The user agent of the caller. This information is not authenticated and
-- should be treated accordingly. For example: +
-- \`google-api-python-client\/1.4.0\`: The request was made by the Google
-- API client for Python. + \`Cloud SDK Command Line Tool
-- apitools-client\/1.0 gcloud\/0.9.62\`: The request was made by the
-- Google Cloud SDK CLI (gcloud). + \`AppEngine-Google;
-- (+http:\/\/code.google.com\/appengine; appid: s~my-project\`: The
-- request was made from the \`my-project\` App Engine app. NOLINT
rmCallerSuppliedUserAgent :: Lens' RequestMetadata (Maybe Text)
rmCallerSuppliedUserAgent
  = lens _rmCallerSuppliedUserAgent
      (\ s a -> s{_rmCallerSuppliedUserAgent = a})

-- | The IP address of the caller. For caller from internet, this will be
-- public IPv4 or IPv6 address. For caller from a Compute Engine VM with
-- external IP address, this will be the VM\'s external IP address. For
-- caller from a Compute Engine VM without external IP address, if the VM
-- is in the same organization (or project) as the accessed resource,
-- \`caller_ip\` will be the VM\'s internal IPv4 address, otherwise the
-- \`caller_ip\` will be redacted to \"gce-internal-ip\". See
-- https:\/\/cloud.google.com\/compute\/docs\/vpc\/ for more information.
rmCallerIP :: Lens' RequestMetadata (Maybe Text)
rmCallerIP
  = lens _rmCallerIP (\ s a -> s{_rmCallerIP = a})

-- | The destination of a network activity, such as accepting a TCP
-- connection. In a multi hop network activity, the destination represents
-- the receiver of the last hop. Only two fields are used in this message,
-- Peer.port and Peer.ip. These fields are optionally populated by those
-- services utilizing the IAM condition feature.
rmDestinationAttributes :: Lens' RequestMetadata (Maybe Peer)
rmDestinationAttributes
  = lens _rmDestinationAttributes
      (\ s a -> s{_rmDestinationAttributes = a})

-- | The network of the caller. Set only if the network host project is part
-- of the same GCP organization (or project) as the accessed resource. See
-- https:\/\/cloud.google.com\/compute\/docs\/vpc\/ for more information.
-- This is a scheme-less URI full resource name. For example:
-- \"\/\/compute.googleapis.com\/projects\/PROJECT_ID\/global\/networks\/NETWORK_ID\"
rmCallerNetwork :: Lens' RequestMetadata (Maybe Text)
rmCallerNetwork
  = lens _rmCallerNetwork
      (\ s a -> s{_rmCallerNetwork = a})

-- | Request attributes used in IAM condition evaluation. This field contains
-- request attributes like request time and access levels associated with
-- the request. To get the whole view of the attributes used in IAM
-- condition evaluation, the user must also look into
-- \`AuditLog.authentication_info.resource_attributes\`.
rmRequestAttributes :: Lens' RequestMetadata (Maybe Request')
rmRequestAttributes
  = lens _rmRequestAttributes
      (\ s a -> s{_rmRequestAttributes = a})

instance FromJSON RequestMetadata where
        parseJSON
          = withObject "RequestMetadata"
              (\ o ->
                 RequestMetadata' <$>
                   (o .:? "callerSuppliedUserAgent") <*>
                     (o .:? "callerIp")
                     <*> (o .:? "destinationAttributes")
                     <*> (o .:? "callerNetwork")
                     <*> (o .:? "requestAttributes"))

instance ToJSON RequestMetadata where
        toJSON RequestMetadata'{..}
          = object
              (catMaybes
                 [("callerSuppliedUserAgent" .=) <$>
                    _rmCallerSuppliedUserAgent,
                  ("callerIp" .=) <$> _rmCallerIP,
                  ("destinationAttributes" .=) <$>
                    _rmDestinationAttributes,
                  ("callerNetwork" .=) <$> _rmCallerNetwork,
                  ("requestAttributes" .=) <$> _rmRequestAttributes])

-- | Third party identity principal.
--
-- /See:/ 'thirdPartyPrincipal' smart constructor.
newtype ThirdPartyPrincipal =
  ThirdPartyPrincipal'
    { _tppThirdPartyClaims :: Maybe ThirdPartyPrincipalThirdPartyClaims
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ThirdPartyPrincipal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tppThirdPartyClaims'
thirdPartyPrincipal
    :: ThirdPartyPrincipal
thirdPartyPrincipal = ThirdPartyPrincipal' {_tppThirdPartyClaims = Nothing}


-- | Metadata about third party identity.
tppThirdPartyClaims :: Lens' ThirdPartyPrincipal (Maybe ThirdPartyPrincipalThirdPartyClaims)
tppThirdPartyClaims
  = lens _tppThirdPartyClaims
      (\ s a -> s{_tppThirdPartyClaims = a})

instance FromJSON ThirdPartyPrincipal where
        parseJSON
          = withObject "ThirdPartyPrincipal"
              (\ o ->
                 ThirdPartyPrincipal' <$> (o .:? "thirdPartyClaims"))

instance ToJSON ThirdPartyPrincipal where
        toJSON ThirdPartyPrincipal'{..}
          = object
              (catMaybes
                 [("thirdPartyClaims" .=) <$> _tppThirdPartyClaims])

-- | The labels or tags on the resource, such as AWS resource tags and
-- Kubernetes resource labels.
--
-- /See:/ 'resourceLabels' smart constructor.
newtype ResourceLabels =
  ResourceLabels'
    { _rlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlAddtional'
resourceLabels
    :: HashMap Text Text -- ^ 'rlAddtional'
    -> ResourceLabels
resourceLabels pRlAddtional_ =
  ResourceLabels' {_rlAddtional = _Coerce # pRlAddtional_}


rlAddtional :: Lens' ResourceLabels (HashMap Text Text)
rlAddtional
  = lens _rlAddtional (\ s a -> s{_rlAddtional = a}) .
      _Coerce

instance FromJSON ResourceLabels where
        parseJSON
          = withObject "ResourceLabels"
              (\ o -> ResourceLabels' <$> (parseJSONObject o))

instance ToJSON ResourceLabels where
        toJSON = toJSON . _rlAddtional

-- | Request message for the Report method.
--
-- /See:/ 'reportRequest' smart constructor.
data ReportRequest =
  ReportRequest'
    { _rrServiceConfigId :: !(Maybe Text)
    , _rrOperations :: !(Maybe [AttributeContext])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrServiceConfigId'
--
-- * 'rrOperations'
reportRequest
    :: ReportRequest
reportRequest =
  ReportRequest' {_rrServiceConfigId = Nothing, _rrOperations = Nothing}


-- | Specifies the version of the service configuration that should be used
-- to process the request. Must not be empty. Set this field to \'latest\'
-- to specify using the latest configuration.
rrServiceConfigId :: Lens' ReportRequest (Maybe Text)
rrServiceConfigId
  = lens _rrServiceConfigId
      (\ s a -> s{_rrServiceConfigId = a})

-- | Describes the list of operations to be reported. Each operation is
-- represented as an AttributeContext, and contains all attributes around
-- an API access.
rrOperations :: Lens' ReportRequest [AttributeContext]
rrOperations
  = lens _rrOperations (\ s a -> s{_rrOperations = a})
      . _Default
      . _Coerce

instance FromJSON ReportRequest where
        parseJSON
          = withObject "ReportRequest"
              (\ o ->
                 ReportRequest' <$>
                   (o .:? "serviceConfigId") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ReportRequest where
        toJSON ReportRequest'{..}
          = object
              (catMaybes
                 [("serviceConfigId" .=) <$> _rrServiceConfigId,
                  ("operations" .=) <$> _rrOperations])

-- | The HTTP response headers. If multiple headers share the same key, they
-- must be merged according to HTTP spec. All header keys must be
-- lowercased, because HTTP header keys are case-insensitive.
--
-- /See:/ 'responseHeaders' smart constructor.
newtype ResponseHeaders =
  ResponseHeaders'
    { _rhAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResponseHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhAddtional'
responseHeaders
    :: HashMap Text Text -- ^ 'rhAddtional'
    -> ResponseHeaders
responseHeaders pRhAddtional_ =
  ResponseHeaders' {_rhAddtional = _Coerce # pRhAddtional_}


rhAddtional :: Lens' ResponseHeaders (HashMap Text Text)
rhAddtional
  = lens _rhAddtional (\ s a -> s{_rhAddtional = a}) .
      _Coerce

instance FromJSON ResponseHeaders where
        parseJSON
          = withObject "ResponseHeaders"
              (\ o -> ResponseHeaders' <$> (parseJSONObject o))

instance ToJSON ResponseHeaders where
        toJSON = toJSON . _rhAddtional

-- | Request message for the Check method.
--
-- /See:/ 'checkRequest' smart constructor.
data CheckRequest =
  CheckRequest'
    { _crFlags :: !(Maybe Text)
    , _crResources :: !(Maybe [ResourceInfo])
    , _crAttributes :: !(Maybe AttributeContext)
    , _crServiceConfigId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crFlags'
--
-- * 'crResources'
--
-- * 'crAttributes'
--
-- * 'crServiceConfigId'
checkRequest
    :: CheckRequest
checkRequest =
  CheckRequest'
    { _crFlags = Nothing
    , _crResources = Nothing
    , _crAttributes = Nothing
    , _crServiceConfigId = Nothing
    }


-- | Optional. Contains a comma-separated list of flags.
crFlags :: Lens' CheckRequest (Maybe Text)
crFlags = lens _crFlags (\ s a -> s{_crFlags = a})

-- | Describes the resources and the policies applied to each resource.
crResources :: Lens' CheckRequest [ResourceInfo]
crResources
  = lens _crResources (\ s a -> s{_crResources = a}) .
      _Default
      . _Coerce

-- | Describes attributes about the operation being executed by the service.
crAttributes :: Lens' CheckRequest (Maybe AttributeContext)
crAttributes
  = lens _crAttributes (\ s a -> s{_crAttributes = a})

-- | Specifies the version of the service configuration that should be used
-- to process the request. Must not be empty. Set this field to \'latest\'
-- to specify using the latest configuration.
crServiceConfigId :: Lens' CheckRequest (Maybe Text)
crServiceConfigId
  = lens _crServiceConfigId
      (\ s a -> s{_crServiceConfigId = a})

instance FromJSON CheckRequest where
        parseJSON
          = withObject "CheckRequest"
              (\ o ->
                 CheckRequest' <$>
                   (o .:? "flags") <*> (o .:? "resources" .!= mempty)
                     <*> (o .:? "attributes")
                     <*> (o .:? "serviceConfigId"))

instance ToJSON CheckRequest where
        toJSON CheckRequest'{..}
          = object
              (catMaybes
                 [("flags" .=) <$> _crFlags,
                  ("resources" .=) <$> _crResources,
                  ("attributes" .=) <$> _crAttributes,
                  ("serviceConfigId" .=) <$> _crServiceConfigId])

-- | This message defines attributes for a node that handles a network
-- request. The node can be either a service or an application that sends,
-- forwards, or receives the request. Service peers should fill in
-- \`principal\` and \`labels\` as appropriate.
--
-- /See:/ 'peer' smart constructor.
data Peer =
  Peer'
    { _pRegionCode :: !(Maybe Text)
    , _pIP :: !(Maybe Text)
    , _pPrincipal :: !(Maybe Text)
    , _pLabels :: !(Maybe PeerLabels)
    , _pPort :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Peer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pRegionCode'
--
-- * 'pIP'
--
-- * 'pPrincipal'
--
-- * 'pLabels'
--
-- * 'pPort'
peer
    :: Peer
peer =
  Peer'
    { _pRegionCode = Nothing
    , _pIP = Nothing
    , _pPrincipal = Nothing
    , _pLabels = Nothing
    , _pPort = Nothing
    }


-- | The CLDR country\/region code associated with the above IP address. If
-- the IP address is private, the \`region_code\` should reflect the
-- physical location where this peer is running.
pRegionCode :: Lens' Peer (Maybe Text)
pRegionCode
  = lens _pRegionCode (\ s a -> s{_pRegionCode = a})

-- | The IP address of the peer.
pIP :: Lens' Peer (Maybe Text)
pIP = lens _pIP (\ s a -> s{_pIP = a})

-- | The identity of this peer. Similar to \`Request.auth.principal\`, but
-- relative to the peer instead of the request. For example, the idenity
-- associated with a load balancer that forwared the request.
pPrincipal :: Lens' Peer (Maybe Text)
pPrincipal
  = lens _pPrincipal (\ s a -> s{_pPrincipal = a})

-- | The labels associated with the peer.
pLabels :: Lens' Peer (Maybe PeerLabels)
pLabels = lens _pLabels (\ s a -> s{_pLabels = a})

-- | The network port of the peer.
pPort :: Lens' Peer (Maybe Int64)
pPort
  = lens _pPort (\ s a -> s{_pPort = a}) .
      mapping _Coerce

instance FromJSON Peer where
        parseJSON
          = withObject "Peer"
              (\ o ->
                 Peer' <$>
                   (o .:? "regionCode") <*> (o .:? "ip") <*>
                     (o .:? "principal")
                     <*> (o .:? "labels")
                     <*> (o .:? "port"))

instance ToJSON Peer where
        toJSON Peer'{..}
          = object
              (catMaybes
                 [("regionCode" .=) <$> _pRegionCode,
                  ("ip" .=) <$> _pIP, ("principal" .=) <$> _pPrincipal,
                  ("labels" .=) <$> _pLabels, ("port" .=) <$> _pPort])

-- | Authorization information for the operation.
--
-- /See:/ 'authorizationInfo' smart constructor.
data AuthorizationInfo =
  AuthorizationInfo'
    { _aiGranted :: !(Maybe Bool)
    , _aiResourceAttributes :: !(Maybe Resource)
    , _aiResource :: !(Maybe Text)
    , _aiPermission :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthorizationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiGranted'
--
-- * 'aiResourceAttributes'
--
-- * 'aiResource'
--
-- * 'aiPermission'
authorizationInfo
    :: AuthorizationInfo
authorizationInfo =
  AuthorizationInfo'
    { _aiGranted = Nothing
    , _aiResourceAttributes = Nothing
    , _aiResource = Nothing
    , _aiPermission = Nothing
    }


-- | Whether or not authorization for \`resource\` and \`permission\` was
-- granted.
aiGranted :: Lens' AuthorizationInfo (Maybe Bool)
aiGranted
  = lens _aiGranted (\ s a -> s{_aiGranted = a})

-- | Resource attributes used in IAM condition evaluation. This field
-- contains resource attributes like resource type and resource name. To
-- get the whole view of the attributes used in IAM condition evaluation,
-- the user must also look into
-- \`AuditLog.request_metadata.request_attributes\`.
aiResourceAttributes :: Lens' AuthorizationInfo (Maybe Resource)
aiResourceAttributes
  = lens _aiResourceAttributes
      (\ s a -> s{_aiResourceAttributes = a})

-- | The resource being accessed, as a REST-style or cloud resource string.
-- For example:
-- bigquery.googleapis.com\/projects\/PROJECTID\/datasets\/DATASETID or
-- projects\/PROJECTID\/datasets\/DATASETID
aiResource :: Lens' AuthorizationInfo (Maybe Text)
aiResource
  = lens _aiResource (\ s a -> s{_aiResource = a})

-- | The required IAM permission.
aiPermission :: Lens' AuthorizationInfo (Maybe Text)
aiPermission
  = lens _aiPermission (\ s a -> s{_aiPermission = a})

instance FromJSON AuthorizationInfo where
        parseJSON
          = withObject "AuthorizationInfo"
              (\ o ->
                 AuthorizationInfo' <$>
                   (o .:? "granted") <*> (o .:? "resourceAttributes")
                     <*> (o .:? "resource")
                     <*> (o .:? "permission"))

instance ToJSON AuthorizationInfo where
        toJSON AuthorizationInfo'{..}
          = object
              (catMaybes
                 [("granted" .=) <$> _aiGranted,
                  ("resourceAttributes" .=) <$> _aiResourceAttributes,
                  ("resource" .=) <$> _aiResource,
                  ("permission" .=) <$> _aiPermission])

-- | Identity delegation history of an authenticated service account.
--
-- /See:/ 'serviceAccountDelegationInfo' smart constructor.
data ServiceAccountDelegationInfo =
  ServiceAccountDelegationInfo'
    { _sadiThirdPartyPrincipal :: !(Maybe ThirdPartyPrincipal)
    , _sadiFirstPartyPrincipal :: !(Maybe FirstPartyPrincipal)
    , _sadiPrincipalSubject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceAccountDelegationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sadiThirdPartyPrincipal'
--
-- * 'sadiFirstPartyPrincipal'
--
-- * 'sadiPrincipalSubject'
serviceAccountDelegationInfo
    :: ServiceAccountDelegationInfo
serviceAccountDelegationInfo =
  ServiceAccountDelegationInfo'
    { _sadiThirdPartyPrincipal = Nothing
    , _sadiFirstPartyPrincipal = Nothing
    , _sadiPrincipalSubject = Nothing
    }


-- | Third party identity as the real authority.
sadiThirdPartyPrincipal :: Lens' ServiceAccountDelegationInfo (Maybe ThirdPartyPrincipal)
sadiThirdPartyPrincipal
  = lens _sadiThirdPartyPrincipal
      (\ s a -> s{_sadiThirdPartyPrincipal = a})

-- | First party (Google) identity as the real authority.
sadiFirstPartyPrincipal :: Lens' ServiceAccountDelegationInfo (Maybe FirstPartyPrincipal)
sadiFirstPartyPrincipal
  = lens _sadiFirstPartyPrincipal
      (\ s a -> s{_sadiFirstPartyPrincipal = a})

-- | A string representing the principal_subject associated with the
-- identity. For most identities, the format will be
-- \`principal:\/\/iam.googleapis.com\/{identity pool
-- name}\/subject\/{subject)\` except for some GKE identities
-- (GKE_WORKLOAD, FREEFORM, GKE_HUB_WORKLOAD) that are still in the legacy
-- format \`serviceAccount:{identity pool name}[{subject}]\`
sadiPrincipalSubject :: Lens' ServiceAccountDelegationInfo (Maybe Text)
sadiPrincipalSubject
  = lens _sadiPrincipalSubject
      (\ s a -> s{_sadiPrincipalSubject = a})

instance FromJSON ServiceAccountDelegationInfo where
        parseJSON
          = withObject "ServiceAccountDelegationInfo"
              (\ o ->
                 ServiceAccountDelegationInfo' <$>
                   (o .:? "thirdPartyPrincipal") <*>
                     (o .:? "firstPartyPrincipal")
                     <*> (o .:? "principalSubject"))

instance ToJSON ServiceAccountDelegationInfo where
        toJSON ServiceAccountDelegationInfo'{..}
          = object
              (catMaybes
                 [("thirdPartyPrincipal" .=) <$>
                    _sadiThirdPartyPrincipal,
                  ("firstPartyPrincipal" .=) <$>
                    _sadiFirstPartyPrincipal,
                  ("principalSubject" .=) <$> _sadiPrincipalSubject])

-- | This message defines request authentication attributes. Terminology is
-- based on the JSON Web Token (JWT) standard, but the terms also correlate
-- to concepts in other standards.
--
-- /See:/ 'auth' smart constructor.
data Auth =
  Auth'
    { _aPresenter :: !(Maybe Text)
    , _aClaims :: !(Maybe AuthClaims)
    , _aAudiences :: !(Maybe [Text])
    , _aPrincipal :: !(Maybe Text)
    , _aAccessLevels :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Auth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aPresenter'
--
-- * 'aClaims'
--
-- * 'aAudiences'
--
-- * 'aPrincipal'
--
-- * 'aAccessLevels'
auth
    :: Auth
auth =
  Auth'
    { _aPresenter = Nothing
    , _aClaims = Nothing
    , _aAudiences = Nothing
    , _aPrincipal = Nothing
    , _aAccessLevels = Nothing
    }


-- | The authorized presenter of the credential. Reflects the optional
-- Authorized Presenter (\`azp\`) claim within a JWT or the OAuth client
-- id. For example, a Google Cloud Platform client id looks as follows:
-- \"123456789012.apps.googleusercontent.com\".
aPresenter :: Lens' Auth (Maybe Text)
aPresenter
  = lens _aPresenter (\ s a -> s{_aPresenter = a})

-- | Structured claims presented with the credential. JWTs include \`{key:
-- value}\` pairs for standard and private claims. The following is a
-- subset of the standard required and optional claims that would typically
-- be presented for a Google-based JWT: {\'iss\': \'accounts.google.com\',
-- \'sub\': \'113289723416554971153\', \'aud\': [\'123456789012\',
-- \'pubsub.googleapis.com\'], \'azp\':
-- \'123456789012.apps.googleusercontent.com\', \'email\':
-- \'jsmith\'example.com\', \'iat\': 1353601026, \'exp\': 1353604926} SAML
-- assertions are similarly specified, but with an identity provider
-- dependent structure.
aClaims :: Lens' Auth (Maybe AuthClaims)
aClaims = lens _aClaims (\ s a -> s{_aClaims = a})

-- | The intended audience(s) for this authentication information. Reflects
-- the audience (\`aud\`) claim within a JWT. The audience value(s) depends
-- on the \`issuer\`, but typically include one or more of the following
-- pieces of information: * The services intended to receive the
-- credential. For example, [\"https:\/\/pubsub.googleapis.com\/\",
-- \"https:\/\/storage.googleapis.com\/\"]. * A set of service-based
-- scopes. For example,
-- [\"https:\/\/www.googleapis.com\/auth\/cloud-platform\"]. * The client
-- id of an app, such as the Firebase project id for JWTs from Firebase
-- Auth. Consult the documentation for the credential issuer to determine
-- the information provided.
aAudiences :: Lens' Auth [Text]
aAudiences
  = lens _aAudiences (\ s a -> s{_aAudiences = a}) .
      _Default
      . _Coerce

-- | The authenticated principal. Reflects the issuer (\`iss\`) and subject
-- (\`sub\`) claims within a JWT. The issuer and subject should be \`\/\`
-- delimited, with \`\/\` percent-encoded within the subject fragment. For
-- Google accounts, the principal format is:
-- \"https:\/\/accounts.google.com\/{id}\"
aPrincipal :: Lens' Auth (Maybe Text)
aPrincipal
  = lens _aPrincipal (\ s a -> s{_aPrincipal = a})

-- | A list of access level resource names that allow resources to be
-- accessed by authenticated requester. It is part of Secure GCP processing
-- for the incoming request. An access level string has the format:
-- \"\/\/{api_service_name}\/accessPolicies\/{policy_id}\/accessLevels\/{short_name}\"
-- Example:
-- \"\/\/accesscontextmanager.googleapis.com\/accessPolicies\/MY_POLICY_ID\/accessLevels\/MY_LEVEL\"
aAccessLevels :: Lens' Auth [Text]
aAccessLevels
  = lens _aAccessLevels
      (\ s a -> s{_aAccessLevels = a})
      . _Default
      . _Coerce

instance FromJSON Auth where
        parseJSON
          = withObject "Auth"
              (\ o ->
                 Auth' <$>
                   (o .:? "presenter") <*> (o .:? "claims") <*>
                     (o .:? "audiences" .!= mempty)
                     <*> (o .:? "principal")
                     <*> (o .:? "accessLevels" .!= mempty))

instance ToJSON Auth where
        toJSON Auth'{..}
          = object
              (catMaybes
                 [("presenter" .=) <$> _aPresenter,
                  ("claims" .=) <$> _aClaims,
                  ("audiences" .=) <$> _aAudiences,
                  ("principal" .=) <$> _aPrincipal,
                  ("accessLevels" .=) <$> _aAccessLevels])

-- | This message defines attributes for a typical network response. It
-- generally models semantics of an HTTP response.
--
-- /See:/ 'response' smart constructor.
data Response =
  Response'
    { _rTime :: !(Maybe DateTime')
    , _rSize :: !(Maybe (Textual Int64))
    , _rBackendLatency :: !(Maybe GDuration)
    , _rHeaders :: !(Maybe ResponseHeaders)
    , _rCode :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Response' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rTime'
--
-- * 'rSize'
--
-- * 'rBackendLatency'
--
-- * 'rHeaders'
--
-- * 'rCode'
response
    :: Response
response =
  Response'
    { _rTime = Nothing
    , _rSize = Nothing
    , _rBackendLatency = Nothing
    , _rHeaders = Nothing
    , _rCode = Nothing
    }


-- | The timestamp when the \`destination\` service sends the last byte of
-- the response.
rTime :: Lens' Response (Maybe UTCTime)
rTime
  = lens _rTime (\ s a -> s{_rTime = a}) .
      mapping _DateTime

-- | The HTTP response size in bytes. If unknown, it must be -1.
rSize :: Lens' Response (Maybe Int64)
rSize
  = lens _rSize (\ s a -> s{_rSize = a}) .
      mapping _Coerce

-- | The amount of time it takes the backend service to fully respond to a
-- request. Measured from when the destination service starts to send the
-- request to the backend until when the destination service receives the
-- complete response from the backend.
rBackendLatency :: Lens' Response (Maybe Scientific)
rBackendLatency
  = lens _rBackendLatency
      (\ s a -> s{_rBackendLatency = a})
      . mapping _GDuration

-- | The HTTP response headers. If multiple headers share the same key, they
-- must be merged according to HTTP spec. All header keys must be
-- lowercased, because HTTP header keys are case-insensitive.
rHeaders :: Lens' Response (Maybe ResponseHeaders)
rHeaders = lens _rHeaders (\ s a -> s{_rHeaders = a})

-- | The HTTP response status code, such as \`200\` and \`404\`.
rCode :: Lens' Response (Maybe Int64)
rCode
  = lens _rCode (\ s a -> s{_rCode = a}) .
      mapping _Coerce

instance FromJSON Response where
        parseJSON
          = withObject "Response"
              (\ o ->
                 Response' <$>
                   (o .:? "time") <*> (o .:? "size") <*>
                     (o .:? "backendLatency")
                     <*> (o .:? "headers")
                     <*> (o .:? "code"))

instance ToJSON Response where
        toJSON Response'{..}
          = object
              (catMaybes
                 [("time" .=) <$> _rTime, ("size" .=) <$> _rSize,
                  ("backendLatency" .=) <$> _rBackendLatency,
                  ("headers" .=) <$> _rHeaders,
                  ("code" .=) <$> _rCode])

-- | Metadata about third party identity.
--
-- /See:/ 'thirdPartyPrincipalThirdPartyClaims' smart constructor.
newtype ThirdPartyPrincipalThirdPartyClaims =
  ThirdPartyPrincipalThirdPartyClaims'
    { _tpptpcAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ThirdPartyPrincipalThirdPartyClaims' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpptpcAddtional'
thirdPartyPrincipalThirdPartyClaims
    :: HashMap Text JSONValue -- ^ 'tpptpcAddtional'
    -> ThirdPartyPrincipalThirdPartyClaims
thirdPartyPrincipalThirdPartyClaims pTpptpcAddtional_ =
  ThirdPartyPrincipalThirdPartyClaims'
    {_tpptpcAddtional = _Coerce # pTpptpcAddtional_}


-- | Properties of the object.
tpptpcAddtional :: Lens' ThirdPartyPrincipalThirdPartyClaims (HashMap Text JSONValue)
tpptpcAddtional
  = lens _tpptpcAddtional
      (\ s a -> s{_tpptpcAddtional = a})
      . _Coerce

instance FromJSON ThirdPartyPrincipalThirdPartyClaims
         where
        parseJSON
          = withObject "ThirdPartyPrincipalThirdPartyClaims"
              (\ o ->
                 ThirdPartyPrincipalThirdPartyClaims' <$>
                   (parseJSONObject o))

instance ToJSON ThirdPartyPrincipalThirdPartyClaims
         where
        toJSON = toJSON . _tpptpcAddtional

-- | This message defines the standard attribute vocabulary for Google APIs.
-- An attribute is a piece of metadata that describes an activity on a
-- network service. For example, the size of an HTTP request, or the status
-- code of an HTTP response. Each attribute has a type and a name, which is
-- logically defined as a proto message field in \`AttributeContext\`. The
-- field type becomes the attribute type, and the field path becomes the
-- attribute name. For example, the attribute \`source.ip\` maps to field
-- \`AttributeContext.source.ip\`. This message definition is guaranteed
-- not to have any wire breaking change. So you can use it directly for
-- passing attributes across different systems. NOTE: Different system may
-- generate different subset of attributes. Please verify the system
-- specification before relying on an attribute generated a system.
--
-- /See:/ 'attributeContext' smart constructor.
data AttributeContext =
  AttributeContext'
    { _acDestination :: !(Maybe Peer)
    , _acOrigin :: !(Maybe Peer)
    , _acExtensions :: !(Maybe [AttributeContextExtensionsItem])
    , _acResponse :: !(Maybe Response)
    , _acResource :: !(Maybe Resource)
    , _acSource :: !(Maybe Peer)
    , _acAPI :: !(Maybe API)
    , _acRequest :: !(Maybe Request')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttributeContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acDestination'
--
-- * 'acOrigin'
--
-- * 'acExtensions'
--
-- * 'acResponse'
--
-- * 'acResource'
--
-- * 'acSource'
--
-- * 'acAPI'
--
-- * 'acRequest'
attributeContext
    :: AttributeContext
attributeContext =
  AttributeContext'
    { _acDestination = Nothing
    , _acOrigin = Nothing
    , _acExtensions = Nothing
    , _acResponse = Nothing
    , _acResource = Nothing
    , _acSource = Nothing
    , _acAPI = Nothing
    , _acRequest = Nothing
    }


-- | The destination of a network activity, such as accepting a TCP
-- connection. In a multi hop network activity, the destination represents
-- the receiver of the last hop.
acDestination :: Lens' AttributeContext (Maybe Peer)
acDestination
  = lens _acDestination
      (\ s a -> s{_acDestination = a})

-- | The origin of a network activity. In a multi hop network activity, the
-- origin represents the sender of the first hop. For the first hop, the
-- \`source\` and the \`origin\` must have the same content.
acOrigin :: Lens' AttributeContext (Maybe Peer)
acOrigin = lens _acOrigin (\ s a -> s{_acOrigin = a})

-- | Supports extensions for advanced use cases, such as logs and metrics.
acExtensions :: Lens' AttributeContext [AttributeContextExtensionsItem]
acExtensions
  = lens _acExtensions (\ s a -> s{_acExtensions = a})
      . _Default
      . _Coerce

-- | Represents a network response, such as an HTTP response.
acResponse :: Lens' AttributeContext (Maybe Response)
acResponse
  = lens _acResponse (\ s a -> s{_acResponse = a})

-- | Represents a target resource that is involved with a network activity.
-- If multiple resources are involved with an activity, this must be the
-- primary one.
acResource :: Lens' AttributeContext (Maybe Resource)
acResource
  = lens _acResource (\ s a -> s{_acResource = a})

-- | The source of a network activity, such as starting a TCP connection. In
-- a multi hop network activity, the source represents the sender of the
-- last hop.
acSource :: Lens' AttributeContext (Maybe Peer)
acSource = lens _acSource (\ s a -> s{_acSource = a})

-- | Represents an API operation that is involved to a network activity.
acAPI :: Lens' AttributeContext (Maybe API)
acAPI = lens _acAPI (\ s a -> s{_acAPI = a})

-- | Represents a network request, such as an HTTP request.
acRequest :: Lens' AttributeContext (Maybe Request')
acRequest
  = lens _acRequest (\ s a -> s{_acRequest = a})

instance FromJSON AttributeContext where
        parseJSON
          = withObject "AttributeContext"
              (\ o ->
                 AttributeContext' <$>
                   (o .:? "destination") <*> (o .:? "origin") <*>
                     (o .:? "extensions" .!= mempty)
                     <*> (o .:? "response")
                     <*> (o .:? "resource")
                     <*> (o .:? "source")
                     <*> (o .:? "api")
                     <*> (o .:? "request"))

instance ToJSON AttributeContext where
        toJSON AttributeContext'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _acDestination,
                  ("origin" .=) <$> _acOrigin,
                  ("extensions" .=) <$> _acExtensions,
                  ("response" .=) <$> _acResponse,
                  ("resource" .=) <$> _acResource,
                  ("source" .=) <$> _acSource, ("api" .=) <$> _acAPI,
                  ("request" .=) <$> _acRequest])

-- | The context of a span. This is attached to an Exemplar in Distribution
-- values during aggregation. It contains the name of a span with format:
-- projects\/[PROJECT_ID_OR_NUMBER]\/traces\/[TRACE_ID]\/spans\/[SPAN_ID]
--
-- /See:/ 'spanContext' smart constructor.
newtype SpanContext =
  SpanContext'
    { _scSpanName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpanContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scSpanName'
spanContext
    :: SpanContext
spanContext = SpanContext' {_scSpanName = Nothing}


-- | The resource name of the span. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/traces\/[TRACE_ID]\/spans\/[SPAN_ID]
-- \`[TRACE_ID]\` is a unique identifier for a trace within a project; it
-- is a 32-character hexadecimal encoding of a 16-byte array. \`[SPAN_ID]\`
-- is a unique identifier for a span within a trace; it is a 16-character
-- hexadecimal encoding of an 8-byte array.
scSpanName :: Lens' SpanContext (Maybe Text)
scSpanName
  = lens _scSpanName (\ s a -> s{_scSpanName = a})

instance FromJSON SpanContext where
        parseJSON
          = withObject "SpanContext"
              (\ o -> SpanContext' <$> (o .:? "spanName"))

instance ToJSON SpanContext where
        toJSON SpanContext'{..}
          = object
              (catMaybes [("spanName" .=) <$> _scSpanName])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | First party identity principal.
--
-- /See:/ 'firstPartyPrincipal' smart constructor.
data FirstPartyPrincipal =
  FirstPartyPrincipal'
    { _fppPrincipalEmail :: !(Maybe Text)
    , _fppServiceMetadata :: !(Maybe FirstPartyPrincipalServiceMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirstPartyPrincipal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fppPrincipalEmail'
--
-- * 'fppServiceMetadata'
firstPartyPrincipal
    :: FirstPartyPrincipal
firstPartyPrincipal =
  FirstPartyPrincipal'
    {_fppPrincipalEmail = Nothing, _fppServiceMetadata = Nothing}


-- | The email address of a Google account. .
fppPrincipalEmail :: Lens' FirstPartyPrincipal (Maybe Text)
fppPrincipalEmail
  = lens _fppPrincipalEmail
      (\ s a -> s{_fppPrincipalEmail = a})

-- | Metadata about the service that uses the service account. .
fppServiceMetadata :: Lens' FirstPartyPrincipal (Maybe FirstPartyPrincipalServiceMetadata)
fppServiceMetadata
  = lens _fppServiceMetadata
      (\ s a -> s{_fppServiceMetadata = a})

instance FromJSON FirstPartyPrincipal where
        parseJSON
          = withObject "FirstPartyPrincipal"
              (\ o ->
                 FirstPartyPrincipal' <$>
                   (o .:? "principalEmail") <*>
                     (o .:? "serviceMetadata"))

instance ToJSON FirstPartyPrincipal where
        toJSON FirstPartyPrincipal'{..}
          = object
              (catMaybes
                 [("principalEmail" .=) <$> _fppPrincipalEmail,
                  ("serviceMetadata" .=) <$> _fppServiceMetadata])

-- | Annotations is an unstructured key-value map stored with a resource that
-- may be set by external tools to store and retrieve arbitrary metadata.
-- They are not queryable and should be preserved when modifying objects.
-- More info: https:\/\/kubernetes.io\/docs\/user-guide\/annotations
--
-- /See:/ 'resourceAnnotations' smart constructor.
newtype ResourceAnnotations =
  ResourceAnnotations'
    { _raAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceAnnotations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raAddtional'
resourceAnnotations
    :: HashMap Text Text -- ^ 'raAddtional'
    -> ResourceAnnotations
resourceAnnotations pRaAddtional_ =
  ResourceAnnotations' {_raAddtional = _Coerce # pRaAddtional_}


raAddtional :: Lens' ResourceAnnotations (HashMap Text Text)
raAddtional
  = lens _raAddtional (\ s a -> s{_raAddtional = a}) .
      _Coerce

instance FromJSON ResourceAnnotations where
        parseJSON
          = withObject "ResourceAnnotations"
              (\ o -> ResourceAnnotations' <$> (parseJSONObject o))

instance ToJSON ResourceAnnotations where
        toJSON = toJSON . _raAddtional

-- | Structured claims presented with the credential. JWTs include \`{key:
-- value}\` pairs for standard and private claims. The following is a
-- subset of the standard required and optional claims that would typically
-- be presented for a Google-based JWT: {\'iss\': \'accounts.google.com\',
-- \'sub\': \'113289723416554971153\', \'aud\': [\'123456789012\',
-- \'pubsub.googleapis.com\'], \'azp\':
-- \'123456789012.apps.googleusercontent.com\', \'email\':
-- \'jsmith\'example.com\', \'iat\': 1353601026, \'exp\': 1353604926} SAML
-- assertions are similarly specified, but with an identity provider
-- dependent structure.
--
-- /See:/ 'authClaims' smart constructor.
newtype AuthClaims =
  AuthClaims'
    { _acAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthClaims' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acAddtional'
authClaims
    :: HashMap Text JSONValue -- ^ 'acAddtional'
    -> AuthClaims
authClaims pAcAddtional_ = AuthClaims' {_acAddtional = _Coerce # pAcAddtional_}


-- | Properties of the object.
acAddtional :: Lens' AuthClaims (HashMap Text JSONValue)
acAddtional
  = lens _acAddtional (\ s a -> s{_acAddtional = a}) .
      _Coerce

instance FromJSON AuthClaims where
        parseJSON
          = withObject "AuthClaims"
              (\ o -> AuthClaims' <$> (parseJSONObject o))

instance ToJSON AuthClaims where
        toJSON = toJSON . _acAddtional

-- | The third party identification (if any) of the authenticated user making
-- the request. When the JSON object represented here has a proto
-- equivalent, the proto name will be indicated in the \`\'type\` property.
--
-- /See:/ 'authenticationInfoThirdPartyPrincipal' smart constructor.
newtype AuthenticationInfoThirdPartyPrincipal =
  AuthenticationInfoThirdPartyPrincipal'
    { _aitppAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthenticationInfoThirdPartyPrincipal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aitppAddtional'
authenticationInfoThirdPartyPrincipal
    :: HashMap Text JSONValue -- ^ 'aitppAddtional'
    -> AuthenticationInfoThirdPartyPrincipal
authenticationInfoThirdPartyPrincipal pAitppAddtional_ =
  AuthenticationInfoThirdPartyPrincipal'
    {_aitppAddtional = _Coerce # pAitppAddtional_}


-- | Properties of the object.
aitppAddtional :: Lens' AuthenticationInfoThirdPartyPrincipal (HashMap Text JSONValue)
aitppAddtional
  = lens _aitppAddtional
      (\ s a -> s{_aitppAddtional = a})
      . _Coerce

instance FromJSON
           AuthenticationInfoThirdPartyPrincipal
         where
        parseJSON
          = withObject "AuthenticationInfoThirdPartyPrincipal"
              (\ o ->
                 AuthenticationInfoThirdPartyPrincipal' <$>
                   (parseJSONObject o))

instance ToJSON AuthenticationInfoThirdPartyPrincipal
         where
        toJSON = toJSON . _aitppAddtional

--
-- /See:/ 'attributeContextExtensionsItem' smart constructor.
newtype AttributeContextExtensionsItem =
  AttributeContextExtensionsItem'
    { _aceiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttributeContextExtensionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aceiAddtional'
attributeContextExtensionsItem
    :: HashMap Text JSONValue -- ^ 'aceiAddtional'
    -> AttributeContextExtensionsItem
attributeContextExtensionsItem pAceiAddtional_ =
  AttributeContextExtensionsItem' {_aceiAddtional = _Coerce # pAceiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
aceiAddtional :: Lens' AttributeContextExtensionsItem (HashMap Text JSONValue)
aceiAddtional
  = lens _aceiAddtional
      (\ s a -> s{_aceiAddtional = a})
      . _Coerce

instance FromJSON AttributeContextExtensionsItem
         where
        parseJSON
          = withObject "AttributeContextExtensionsItem"
              (\ o ->
                 AttributeContextExtensionsItem' <$>
                   (parseJSONObject o))

instance ToJSON AttributeContextExtensionsItem where
        toJSON = toJSON . _aceiAddtional

-- | Describes a resource referenced in the request.
--
-- /See:/ 'resourceInfo' smart constructor.
data ResourceInfo =
  ResourceInfo'
    { _riLocation :: !(Maybe Text)
    , _riName :: !(Maybe Text)
    , _riContainer :: !(Maybe Text)
    , _riType :: !(Maybe Text)
    , _riPermission :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riLocation'
--
-- * 'riName'
--
-- * 'riContainer'
--
-- * 'riType'
--
-- * 'riPermission'
resourceInfo
    :: ResourceInfo
resourceInfo =
  ResourceInfo'
    { _riLocation = Nothing
    , _riName = Nothing
    , _riContainer = Nothing
    , _riType = Nothing
    , _riPermission = Nothing
    }


-- | Optional. The location of the resource. The value must be a valid zone,
-- region or multiregion. For example: \"europe-west4\" or
-- \"northamerica-northeast1-a\"
riLocation :: Lens' ResourceInfo (Maybe Text)
riLocation
  = lens _riLocation (\ s a -> s{_riLocation = a})

-- | The name of the resource referenced in the request.
riName :: Lens' ResourceInfo (Maybe Text)
riName = lens _riName (\ s a -> s{_riName = a})

-- | Optional. The identifier of the container of this resource. For Google
-- Cloud APIs, the resource container must be one of the following formats:
-- - \`projects\/\` - \`folders\/\` - \`organizations\/\` For the policy
-- enforcement on the container level (VPCSC and Location Policy check),
-- this field takes precedence on the container extracted from name when
-- presents.
riContainer :: Lens' ResourceInfo (Maybe Text)
riContainer
  = lens _riContainer (\ s a -> s{_riContainer = a})

-- | The resource type in the format of \"{service}\/{kind}\".
riType :: Lens' ResourceInfo (Maybe Text)
riType = lens _riType (\ s a -> s{_riType = a})

-- | The resource permission needed for this request. The format must be
-- \"{service}\/{plural}.{verb}\".
riPermission :: Lens' ResourceInfo (Maybe Text)
riPermission
  = lens _riPermission (\ s a -> s{_riPermission = a})

instance FromJSON ResourceInfo where
        parseJSON
          = withObject "ResourceInfo"
              (\ o ->
                 ResourceInfo' <$>
                   (o .:? "location") <*> (o .:? "name") <*>
                     (o .:? "container")
                     <*> (o .:? "type")
                     <*> (o .:? "permission"))

instance ToJSON ResourceInfo where
        toJSON ResourceInfo'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _riLocation,
                  ("name" .=) <$> _riName,
                  ("container" .=) <$> _riContainer,
                  ("type" .=) <$> _riType,
                  ("permission" .=) <$> _riPermission])

-- | Location information about a resource.
--
-- /See:/ 'resourceLocation' smart constructor.
data ResourceLocation =
  ResourceLocation'
    { _rlOriginalLocations :: !(Maybe [Text])
    , _rlCurrentLocations :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlOriginalLocations'
--
-- * 'rlCurrentLocations'
resourceLocation
    :: ResourceLocation
resourceLocation =
  ResourceLocation'
    {_rlOriginalLocations = Nothing, _rlCurrentLocations = Nothing}


-- | The locations of a resource prior to the execution of the operation.
-- Requests that mutate the resource\'s location must populate both the
-- \'original_locations\' as well as the \'current_locations\' fields. For
-- example: \"europe-west1-a\" \"us-east1\" \"nam3\"
rlOriginalLocations :: Lens' ResourceLocation [Text]
rlOriginalLocations
  = lens _rlOriginalLocations
      (\ s a -> s{_rlOriginalLocations = a})
      . _Default
      . _Coerce

-- | The locations of a resource after the execution of the operation.
-- Requests to create or delete a location based resource must populate the
-- \'current_locations\' field and not the \'original_locations\' field.
-- For example: \"europe-west1-a\" \"us-east1\" \"nam3\"
rlCurrentLocations :: Lens' ResourceLocation [Text]
rlCurrentLocations
  = lens _rlCurrentLocations
      (\ s a -> s{_rlCurrentLocations = a})
      . _Default
      . _Coerce

instance FromJSON ResourceLocation where
        parseJSON
          = withObject "ResourceLocation"
              (\ o ->
                 ResourceLocation' <$>
                   (o .:? "originalLocations" .!= mempty) <*>
                     (o .:? "currentLocations" .!= mempty))

instance ToJSON ResourceLocation where
        toJSON ResourceLocation'{..}
          = object
              (catMaybes
                 [("originalLocations" .=) <$> _rlOriginalLocations,
                  ("currentLocations" .=) <$> _rlCurrentLocations])

-- | The labels associated with the peer.
--
-- /See:/ 'peerLabels' smart constructor.
newtype PeerLabels =
  PeerLabels'
    { _plAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeerLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plAddtional'
peerLabels
    :: HashMap Text Text -- ^ 'plAddtional'
    -> PeerLabels
peerLabels pPlAddtional_ = PeerLabels' {_plAddtional = _Coerce # pPlAddtional_}


plAddtional :: Lens' PeerLabels (HashMap Text Text)
plAddtional
  = lens _plAddtional (\ s a -> s{_plAddtional = a}) .
      _Coerce

instance FromJSON PeerLabels where
        parseJSON
          = withObject "PeerLabels"
              (\ o -> PeerLabels' <$> (parseJSONObject o))

instance ToJSON PeerLabels where
        toJSON = toJSON . _plAddtional

-- | This message defines core attributes for a resource. A resource is an
-- addressable (named) entity provided by the destination service. For
-- example, a file stored on a network storage service.
--
-- /See:/ 'resource' smart constructor.
data Resource =
  Resource'
    { _rAnnotations :: !(Maybe ResourceAnnotations)
    , _rEtag :: !(Maybe Text)
    , _rService :: !(Maybe Text)
    , _rLocation :: !(Maybe Text)
    , _rUid :: !(Maybe Text)
    , _rUpdateTime :: !(Maybe DateTime')
    , _rDeleteTime :: !(Maybe DateTime')
    , _rName :: !(Maybe Text)
    , _rDisplayName :: !(Maybe Text)
    , _rLabels :: !(Maybe ResourceLabels)
    , _rType :: !(Maybe Text)
    , _rCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rAnnotations'
--
-- * 'rEtag'
--
-- * 'rService'
--
-- * 'rLocation'
--
-- * 'rUid'
--
-- * 'rUpdateTime'
--
-- * 'rDeleteTime'
--
-- * 'rName'
--
-- * 'rDisplayName'
--
-- * 'rLabels'
--
-- * 'rType'
--
-- * 'rCreateTime'
resource
    :: Resource
resource =
  Resource'
    { _rAnnotations = Nothing
    , _rEtag = Nothing
    , _rService = Nothing
    , _rLocation = Nothing
    , _rUid = Nothing
    , _rUpdateTime = Nothing
    , _rDeleteTime = Nothing
    , _rName = Nothing
    , _rDisplayName = Nothing
    , _rLabels = Nothing
    , _rType = Nothing
    , _rCreateTime = Nothing
    }


-- | Annotations is an unstructured key-value map stored with a resource that
-- may be set by external tools to store and retrieve arbitrary metadata.
-- They are not queryable and should be preserved when modifying objects.
-- More info: https:\/\/kubernetes.io\/docs\/user-guide\/annotations
rAnnotations :: Lens' Resource (Maybe ResourceAnnotations)
rAnnotations
  = lens _rAnnotations (\ s a -> s{_rAnnotations = a})

-- | Output only. An opaque value that uniquely identifies a version or
-- generation of a resource. It can be used to confirm that the client and
-- server agree on the ordering of a resource being written.
rEtag :: Lens' Resource (Maybe Text)
rEtag = lens _rEtag (\ s a -> s{_rEtag = a})

-- | The name of the service that this resource belongs to, such as
-- \`pubsub.googleapis.com\`. The service may be different from the DNS
-- hostname that actually serves the request.
rService :: Lens' Resource (Maybe Text)
rService = lens _rService (\ s a -> s{_rService = a})

-- | Immutable. The location of the resource. The location encoding is
-- specific to the service provider, and new encoding may be introduced as
-- the service evolves. For Google Cloud products, the encoding is what is
-- used by Google Cloud APIs, such as \`us-east1\`, \`aws-us-east-1\`, and
-- \`azure-eastus2\`. The semantics of \`location\` is identical to the
-- \`cloud.googleapis.com\/location\` label used by some Google Cloud APIs.
rLocation :: Lens' Resource (Maybe Text)
rLocation
  = lens _rLocation (\ s a -> s{_rLocation = a})

-- | The unique identifier of the resource. UID is unique in the time and
-- space for this resource within the scope of the service. It is typically
-- generated by the server on successful creation of a resource and must
-- not be changed. UID is used to uniquely identify resources with resource
-- name reuses. This should be a UUID4.
rUid :: Lens' Resource (Maybe Text)
rUid = lens _rUid (\ s a -> s{_rUid = a})

-- | Output only. The timestamp when the resource was last updated. Any
-- change to the resource made by users must refresh this value. Changes to
-- a resource made by the service should refresh this value.
rUpdateTime :: Lens' Resource (Maybe UTCTime)
rUpdateTime
  = lens _rUpdateTime (\ s a -> s{_rUpdateTime = a}) .
      mapping _DateTime

-- | Output only. The timestamp when the resource was deleted. If the
-- resource is not deleted, this must be empty.
rDeleteTime :: Lens' Resource (Maybe UTCTime)
rDeleteTime
  = lens _rDeleteTime (\ s a -> s{_rDeleteTime = a}) .
      mapping _DateTime

-- | The stable identifier (name) of a resource on the \`service\`. A
-- resource can be logically identified as
-- \"\/\/{resource.service}\/{resource.name}\". The differences between a
-- resource name and a URI are: * Resource name is a logical identifier,
-- independent of network protocol and API version. For example,
-- \`\/\/pubsub.googleapis.com\/projects\/123\/topics\/news-feed\`. * URI
-- often includes protocol and version information, so it can be used
-- directly by applications. For example,
-- \`https:\/\/pubsub.googleapis.com\/v1\/projects\/123\/topics\/news-feed\`.
-- See https:\/\/cloud.google.com\/apis\/design\/resource_names for
-- details.
rName :: Lens' Resource (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | Mutable. The display name set by clients. Must be \<= 63 characters.
rDisplayName :: Lens' Resource (Maybe Text)
rDisplayName
  = lens _rDisplayName (\ s a -> s{_rDisplayName = a})

-- | The labels or tags on the resource, such as AWS resource tags and
-- Kubernetes resource labels.
rLabels :: Lens' Resource (Maybe ResourceLabels)
rLabels = lens _rLabels (\ s a -> s{_rLabels = a})

-- | The type of the resource. The syntax is platform-specific because
-- different platforms define their resources differently. For Google APIs,
-- the type format must be \"{service}\/{kind}\".
rType :: Lens' Resource (Maybe Text)
rType = lens _rType (\ s a -> s{_rType = a})

-- | Output only. The timestamp when the resource was created. This may be
-- either the time creation was initiated or when it was completed.
rCreateTime :: Lens' Resource (Maybe UTCTime)
rCreateTime
  = lens _rCreateTime (\ s a -> s{_rCreateTime = a}) .
      mapping _DateTime

instance FromJSON Resource where
        parseJSON
          = withObject "Resource"
              (\ o ->
                 Resource' <$>
                   (o .:? "annotations") <*> (o .:? "etag") <*>
                     (o .:? "service")
                     <*> (o .:? "location")
                     <*> (o .:? "uid")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "deleteTime")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "type")
                     <*> (o .:? "createTime"))

instance ToJSON Resource where
        toJSON Resource'{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _rAnnotations,
                  ("etag" .=) <$> _rEtag, ("service" .=) <$> _rService,
                  ("location" .=) <$> _rLocation, ("uid" .=) <$> _rUid,
                  ("updateTime" .=) <$> _rUpdateTime,
                  ("deleteTime" .=) <$> _rDeleteTime,
                  ("name" .=) <$> _rName,
                  ("displayName" .=) <$> _rDisplayName,
                  ("labels" .=) <$> _rLabels, ("type" .=) <$> _rType,
                  ("createTime" .=) <$> _rCreateTime])

-- | The operation response. This may not include all response elements, such
-- as those that are too large, privacy-sensitive, or duplicated elsewhere
-- in the log record. It should never include user-generated data, such as
-- file contents. When the JSON object represented here has a proto
-- equivalent, the proto name will be indicated in the \`\'type\` property.
--
-- /See:/ 'auditLogResponse' smart constructor.
newtype AuditLogResponse =
  AuditLogResponse'
    { _alrAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrAddtional'
auditLogResponse
    :: HashMap Text JSONValue -- ^ 'alrAddtional'
    -> AuditLogResponse
auditLogResponse pAlrAddtional_ =
  AuditLogResponse' {_alrAddtional = _Coerce # pAlrAddtional_}


-- | Properties of the object.
alrAddtional :: Lens' AuditLogResponse (HashMap Text JSONValue)
alrAddtional
  = lens _alrAddtional (\ s a -> s{_alrAddtional = a})
      . _Coerce

instance FromJSON AuditLogResponse where
        parseJSON
          = withObject "AuditLogResponse"
              (\ o -> AuditLogResponse' <$> (parseJSONObject o))

instance ToJSON AuditLogResponse where
        toJSON = toJSON . _alrAddtional

-- | The HTTP request headers. If multiple headers share the same key, they
-- must be merged according to the HTTP spec. All header keys must be
-- lowercased, because HTTP header keys are case-insensitive.
--
-- /See:/ 'requestHeaders' smart constructor.
newtype RequestHeaders =
  RequestHeaders'
    { _rAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RequestHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rAddtional'
requestHeaders
    :: HashMap Text Text -- ^ 'rAddtional'
    -> RequestHeaders
requestHeaders pRAddtional_ =
  RequestHeaders' {_rAddtional = _Coerce # pRAddtional_}


rAddtional :: Lens' RequestHeaders (HashMap Text Text)
rAddtional
  = lens _rAddtional (\ s a -> s{_rAddtional = a}) .
      _Coerce

instance FromJSON RequestHeaders where
        parseJSON
          = withObject "RequestHeaders"
              (\ o -> RequestHeaders' <$> (parseJSONObject o))

instance ToJSON RequestHeaders where
        toJSON = toJSON . _rAddtional

-- | Response message for the Check method.
--
-- /See:/ 'checkResponse' smart constructor.
data CheckResponse =
  CheckResponse'
    { _crStatus :: !(Maybe Status)
    , _crHeaders :: !(Maybe CheckResponseHeaders)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crStatus'
--
-- * 'crHeaders'
checkResponse
    :: CheckResponse
checkResponse = CheckResponse' {_crStatus = Nothing, _crHeaders = Nothing}


-- | Operation is allowed when this field is not set. Any non-\'OK\' status
-- indicates a denial; [google.rpc.Status.details]() would contain
-- additional details about the denial.
crStatus :: Lens' CheckResponse (Maybe Status)
crStatus = lens _crStatus (\ s a -> s{_crStatus = a})

-- | Returns a set of request contexts generated from the \`CheckRequest\`.
crHeaders :: Lens' CheckResponse (Maybe CheckResponseHeaders)
crHeaders
  = lens _crHeaders (\ s a -> s{_crHeaders = a})

instance FromJSON CheckResponse where
        parseJSON
          = withObject "CheckResponse"
              (\ o ->
                 CheckResponse' <$>
                   (o .:? "status") <*> (o .:? "headers"))

instance ToJSON CheckResponse where
        toJSON CheckResponse'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _crStatus,
                  ("headers" .=) <$> _crHeaders])

-- | The resource\'s original state before mutation. Present only for
-- operations which have successfully modified the targeted resource(s). In
-- general, this field should contain all changed fields, except those that
-- are already been included in \`request\`, \`response\`, \`metadata\` or
-- \`service_data\` fields. When the JSON object represented here has a
-- proto equivalent, the proto name will be indicated in the \`\'type\`
-- property.
--
-- /See:/ 'auditLogResourceOriginalState' smart constructor.
newtype AuditLogResourceOriginalState =
  AuditLogResourceOriginalState'
    { _alrosAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogResourceOriginalState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrosAddtional'
auditLogResourceOriginalState
    :: HashMap Text JSONValue -- ^ 'alrosAddtional'
    -> AuditLogResourceOriginalState
auditLogResourceOriginalState pAlrosAddtional_ =
  AuditLogResourceOriginalState' {_alrosAddtional = _Coerce # pAlrosAddtional_}


-- | Properties of the object.
alrosAddtional :: Lens' AuditLogResourceOriginalState (HashMap Text JSONValue)
alrosAddtional
  = lens _alrosAddtional
      (\ s a -> s{_alrosAddtional = a})
      . _Coerce

instance FromJSON AuditLogResourceOriginalState where
        parseJSON
          = withObject "AuditLogResourceOriginalState"
              (\ o ->
                 AuditLogResourceOriginalState' <$>
                   (parseJSONObject o))

instance ToJSON AuditLogResourceOriginalState where
        toJSON = toJSON . _alrosAddtional

-- | Response message for the Report method. If the request contains any
-- invalid data, the server returns an RPC error.
--
-- /See:/ 'reportResponse' smart constructor.
data ReportResponse =
  ReportResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportResponse' with the minimum fields required to make a request.
--
reportResponse
    :: ReportResponse
reportResponse = ReportResponse'


instance FromJSON ReportResponse where
        parseJSON
          = withObject "ReportResponse"
              (\ o -> pure ReportResponse')

instance ToJSON ReportResponse where
        toJSON = const emptyObject

-- | The operation request. This may not include all request parameters, such
-- as those that are too large, privacy-sensitive, or duplicated elsewhere
-- in the log record. It should never include user-generated data, such as
-- file contents. When the JSON object represented here has a proto
-- equivalent, the proto name will be indicated in the \`\'type\` property.
--
-- /See:/ 'auditLogRequest' smart constructor.
newtype AuditLogRequest =
  AuditLogRequest'
    { _aAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAddtional'
auditLogRequest
    :: HashMap Text JSONValue -- ^ 'aAddtional'
    -> AuditLogRequest
auditLogRequest pAAddtional_ =
  AuditLogRequest' {_aAddtional = _Coerce # pAAddtional_}


-- | Properties of the object.
aAddtional :: Lens' AuditLogRequest (HashMap Text JSONValue)
aAddtional
  = lens _aAddtional (\ s a -> s{_aAddtional = a}) .
      _Coerce

instance FromJSON AuditLogRequest where
        parseJSON
          = withObject "AuditLogRequest"
              (\ o -> AuditLogRequest' <$> (parseJSONObject o))

instance ToJSON AuditLogRequest where
        toJSON = toJSON . _aAddtional

-- | This message defines attributes associated with API operations, such as
-- a network API request. The terminology is based on the conventions used
-- by Google APIs, Istio, and OpenAPI.
--
-- /See:/ 'api' smart constructor.
data API =
  API'
    { _aService :: !(Maybe Text)
    , _aOperation :: !(Maybe Text)
    , _aProtocol :: !(Maybe Text)
    , _aVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'API' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aService'
--
-- * 'aOperation'
--
-- * 'aProtocol'
--
-- * 'aVersion'
api
    :: API
api =
  API'
    { _aService = Nothing
    , _aOperation = Nothing
    , _aProtocol = Nothing
    , _aVersion = Nothing
    }


-- | The API service name. It is a logical identifier for a networked API,
-- such as \"pubsub.googleapis.com\". The naming syntax depends on the API
-- management system being used for handling the request.
aService :: Lens' API (Maybe Text)
aService = lens _aService (\ s a -> s{_aService = a})

-- | The API operation name. For gRPC requests, it is the fully qualified API
-- method name, such as \"google.pubsub.v1.Publisher.Publish\". For OpenAPI
-- requests, it is the \`operationId\`, such as \"getPet\".
aOperation :: Lens' API (Maybe Text)
aOperation
  = lens _aOperation (\ s a -> s{_aOperation = a})

-- | The API protocol used for sending the request, such as \"http\",
-- \"https\", \"grpc\", or \"internal\".
aProtocol :: Lens' API (Maybe Text)
aProtocol
  = lens _aProtocol (\ s a -> s{_aProtocol = a})

-- | The API version associated with the API operation above, such as \"v1\"
-- or \"v1alpha1\".
aVersion :: Lens' API (Maybe Text)
aVersion = lens _aVersion (\ s a -> s{_aVersion = a})

instance FromJSON API where
        parseJSON
          = withObject "API"
              (\ o ->
                 API' <$>
                   (o .:? "service") <*> (o .:? "operation") <*>
                     (o .:? "protocol")
                     <*> (o .:? "version"))

instance ToJSON API where
        toJSON API'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _aService,
                  ("operation" .=) <$> _aOperation,
                  ("protocol" .=) <$> _aProtocol,
                  ("version" .=) <$> _aVersion])

-- | Metadata about the service that uses the service account. .
--
-- /See:/ 'firstPartyPrincipalServiceMetadata' smart constructor.
newtype FirstPartyPrincipalServiceMetadata =
  FirstPartyPrincipalServiceMetadata'
    { _fppsmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirstPartyPrincipalServiceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fppsmAddtional'
firstPartyPrincipalServiceMetadata
    :: HashMap Text JSONValue -- ^ 'fppsmAddtional'
    -> FirstPartyPrincipalServiceMetadata
firstPartyPrincipalServiceMetadata pFppsmAddtional_ =
  FirstPartyPrincipalServiceMetadata'
    {_fppsmAddtional = _Coerce # pFppsmAddtional_}


-- | Properties of the object.
fppsmAddtional :: Lens' FirstPartyPrincipalServiceMetadata (HashMap Text JSONValue)
fppsmAddtional
  = lens _fppsmAddtional
      (\ s a -> s{_fppsmAddtional = a})
      . _Coerce

instance FromJSON FirstPartyPrincipalServiceMetadata
         where
        parseJSON
          = withObject "FirstPartyPrincipalServiceMetadata"
              (\ o ->
                 FirstPartyPrincipalServiceMetadata' <$>
                   (parseJSONObject o))

instance ToJSON FirstPartyPrincipalServiceMetadata
         where
        toJSON = toJSON . _fppsmAddtional

-- | Authentication information for the operation.
--
-- /See:/ 'authenticationInfo' smart constructor.
data AuthenticationInfo =
  AuthenticationInfo'
    { _aiThirdPartyPrincipal :: !(Maybe AuthenticationInfoThirdPartyPrincipal)
    , _aiServiceAccountDelegationInfo :: !(Maybe [ServiceAccountDelegationInfo])
    , _aiPrincipalEmail :: !(Maybe Text)
    , _aiPrincipalSubject :: !(Maybe Text)
    , _aiAuthoritySelector :: !(Maybe Text)
    , _aiServiceAccountKeyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthenticationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiThirdPartyPrincipal'
--
-- * 'aiServiceAccountDelegationInfo'
--
-- * 'aiPrincipalEmail'
--
-- * 'aiPrincipalSubject'
--
-- * 'aiAuthoritySelector'
--
-- * 'aiServiceAccountKeyName'
authenticationInfo
    :: AuthenticationInfo
authenticationInfo =
  AuthenticationInfo'
    { _aiThirdPartyPrincipal = Nothing
    , _aiServiceAccountDelegationInfo = Nothing
    , _aiPrincipalEmail = Nothing
    , _aiPrincipalSubject = Nothing
    , _aiAuthoritySelector = Nothing
    , _aiServiceAccountKeyName = Nothing
    }


-- | The third party identification (if any) of the authenticated user making
-- the request. When the JSON object represented here has a proto
-- equivalent, the proto name will be indicated in the \`\'type\` property.
aiThirdPartyPrincipal :: Lens' AuthenticationInfo (Maybe AuthenticationInfoThirdPartyPrincipal)
aiThirdPartyPrincipal
  = lens _aiThirdPartyPrincipal
      (\ s a -> s{_aiThirdPartyPrincipal = a})

-- | Identity delegation history of an authenticated service account that
-- makes the request. It contains information on the real authorities that
-- try to access GCP resources by delegating on a service account. When
-- multiple authorities present, they are guaranteed to be sorted based on
-- the original ordering of the identity delegation events.
aiServiceAccountDelegationInfo :: Lens' AuthenticationInfo [ServiceAccountDelegationInfo]
aiServiceAccountDelegationInfo
  = lens _aiServiceAccountDelegationInfo
      (\ s a -> s{_aiServiceAccountDelegationInfo = a})
      . _Default
      . _Coerce

-- | The email address of the authenticated user (or service account on
-- behalf of third party principal) making the request. For third party
-- identity callers, the \`principal_subject\` field is populated instead
-- of this field. For privacy reasons, the principal email address is
-- sometimes redacted. For more information, see [Caller identities in
-- audit logs](https:\/\/cloud.google.com\/logging\/docs\/audit#user-id).
aiPrincipalEmail :: Lens' AuthenticationInfo (Maybe Text)
aiPrincipalEmail
  = lens _aiPrincipalEmail
      (\ s a -> s{_aiPrincipalEmail = a})

-- | String representation of identity of requesting party. Populated for
-- both first and third party identities.
aiPrincipalSubject :: Lens' AuthenticationInfo (Maybe Text)
aiPrincipalSubject
  = lens _aiPrincipalSubject
      (\ s a -> s{_aiPrincipalSubject = a})

-- | The authority selector specified by the requestor, if any. It is not
-- guaranteed that the principal was allowed to use this authority.
aiAuthoritySelector :: Lens' AuthenticationInfo (Maybe Text)
aiAuthoritySelector
  = lens _aiAuthoritySelector
      (\ s a -> s{_aiAuthoritySelector = a})

-- | The name of the service account key used to create or exchange
-- credentials for authenticating the service account making the request.
-- This is a scheme-less URI full resource name. For example:
-- \"\/\/iam.googleapis.com\/projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\/keys\/{key}\"
aiServiceAccountKeyName :: Lens' AuthenticationInfo (Maybe Text)
aiServiceAccountKeyName
  = lens _aiServiceAccountKeyName
      (\ s a -> s{_aiServiceAccountKeyName = a})

instance FromJSON AuthenticationInfo where
        parseJSON
          = withObject "AuthenticationInfo"
              (\ o ->
                 AuthenticationInfo' <$>
                   (o .:? "thirdPartyPrincipal") <*>
                     (o .:? "serviceAccountDelegationInfo" .!= mempty)
                     <*> (o .:? "principalEmail")
                     <*> (o .:? "principalSubject")
                     <*> (o .:? "authoritySelector")
                     <*> (o .:? "serviceAccountKeyName"))

instance ToJSON AuthenticationInfo where
        toJSON AuthenticationInfo'{..}
          = object
              (catMaybes
                 [("thirdPartyPrincipal" .=) <$>
                    _aiThirdPartyPrincipal,
                  ("serviceAccountDelegationInfo" .=) <$>
                    _aiServiceAccountDelegationInfo,
                  ("principalEmail" .=) <$> _aiPrincipalEmail,
                  ("principalSubject" .=) <$> _aiPrincipalSubject,
                  ("authoritySelector" .=) <$> _aiAuthoritySelector,
                  ("serviceAccountKeyName" .=) <$>
                    _aiServiceAccountKeyName])

-- | Common audit log format for Google Cloud Platform API operations.
--
-- /See:/ 'auditLog' smart constructor.
data AuditLog =
  AuditLog'
    { _alRequestMetadata :: !(Maybe RequestMetadata)
    , _alStatus :: !(Maybe Status)
    , _alResourceName :: !(Maybe Text)
    , _alAuthorizationInfo :: !(Maybe [AuthorizationInfo])
    , _alServiceData :: !(Maybe AuditLogServiceData)
    , _alMethodName :: !(Maybe Text)
    , _alResponse :: !(Maybe AuditLogResponse)
    , _alResourceOriginalState :: !(Maybe AuditLogResourceOriginalState)
    , _alResourceLocation :: !(Maybe ResourceLocation)
    , _alServiceName :: !(Maybe Text)
    , _alMetadata :: !(Maybe AuditLogMetadata)
    , _alNumResponseItems :: !(Maybe (Textual Int64))
    , _alAuthenticationInfo :: !(Maybe AuthenticationInfo)
    , _alRequest :: !(Maybe AuditLogRequest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alRequestMetadata'
--
-- * 'alStatus'
--
-- * 'alResourceName'
--
-- * 'alAuthorizationInfo'
--
-- * 'alServiceData'
--
-- * 'alMethodName'
--
-- * 'alResponse'
--
-- * 'alResourceOriginalState'
--
-- * 'alResourceLocation'
--
-- * 'alServiceName'
--
-- * 'alMetadata'
--
-- * 'alNumResponseItems'
--
-- * 'alAuthenticationInfo'
--
-- * 'alRequest'
auditLog
    :: AuditLog
auditLog =
  AuditLog'
    { _alRequestMetadata = Nothing
    , _alStatus = Nothing
    , _alResourceName = Nothing
    , _alAuthorizationInfo = Nothing
    , _alServiceData = Nothing
    , _alMethodName = Nothing
    , _alResponse = Nothing
    , _alResourceOriginalState = Nothing
    , _alResourceLocation = Nothing
    , _alServiceName = Nothing
    , _alMetadata = Nothing
    , _alNumResponseItems = Nothing
    , _alAuthenticationInfo = Nothing
    , _alRequest = Nothing
    }


-- | Metadata about the operation.
alRequestMetadata :: Lens' AuditLog (Maybe RequestMetadata)
alRequestMetadata
  = lens _alRequestMetadata
      (\ s a -> s{_alRequestMetadata = a})

-- | The status of the overall operation.
alStatus :: Lens' AuditLog (Maybe Status)
alStatus = lens _alStatus (\ s a -> s{_alStatus = a})

-- | The resource or collection that is the target of the operation. The name
-- is a scheme-less URI, not including the API service name. For example:
-- \"projects\/PROJECT_ID\/zones\/us-central1-a\/instances\"
-- \"projects\/PROJECT_ID\/datasets\/DATASET_ID\"
alResourceName :: Lens' AuditLog (Maybe Text)
alResourceName
  = lens _alResourceName
      (\ s a -> s{_alResourceName = a})

-- | Authorization information. If there are multiple resources or
-- permissions involved, then there is one AuthorizationInfo element for
-- each {resource, permission} tuple.
alAuthorizationInfo :: Lens' AuditLog [AuthorizationInfo]
alAuthorizationInfo
  = lens _alAuthorizationInfo
      (\ s a -> s{_alAuthorizationInfo = a})
      . _Default
      . _Coerce

-- | Deprecated. Use the \`metadata\` field instead. Other service-specific
-- data about the request, response, and other activities.
alServiceData :: Lens' AuditLog (Maybe AuditLogServiceData)
alServiceData
  = lens _alServiceData
      (\ s a -> s{_alServiceData = a})

-- | The name of the service method or operation. For API calls, this should
-- be the name of the API method. For example,
-- \"google.cloud.bigquery.v2.TableService.InsertTable\"
-- \"google.logging.v2.ConfigServiceV2.CreateSink\"
alMethodName :: Lens' AuditLog (Maybe Text)
alMethodName
  = lens _alMethodName (\ s a -> s{_alMethodName = a})

-- | The operation response. This may not include all response elements, such
-- as those that are too large, privacy-sensitive, or duplicated elsewhere
-- in the log record. It should never include user-generated data, such as
-- file contents. When the JSON object represented here has a proto
-- equivalent, the proto name will be indicated in the \`\'type\` property.
alResponse :: Lens' AuditLog (Maybe AuditLogResponse)
alResponse
  = lens _alResponse (\ s a -> s{_alResponse = a})

-- | The resource\'s original state before mutation. Present only for
-- operations which have successfully modified the targeted resource(s). In
-- general, this field should contain all changed fields, except those that
-- are already been included in \`request\`, \`response\`, \`metadata\` or
-- \`service_data\` fields. When the JSON object represented here has a
-- proto equivalent, the proto name will be indicated in the \`\'type\`
-- property.
alResourceOriginalState :: Lens' AuditLog (Maybe AuditLogResourceOriginalState)
alResourceOriginalState
  = lens _alResourceOriginalState
      (\ s a -> s{_alResourceOriginalState = a})

-- | The resource location information.
alResourceLocation :: Lens' AuditLog (Maybe ResourceLocation)
alResourceLocation
  = lens _alResourceLocation
      (\ s a -> s{_alResourceLocation = a})

-- | The name of the API service performing the operation. For example,
-- \`\"compute.googleapis.com\"\`.
alServiceName :: Lens' AuditLog (Maybe Text)
alServiceName
  = lens _alServiceName
      (\ s a -> s{_alServiceName = a})

-- | Other service-specific data about the request, response, and other
-- information associated with the current audited event.
alMetadata :: Lens' AuditLog (Maybe AuditLogMetadata)
alMetadata
  = lens _alMetadata (\ s a -> s{_alMetadata = a})

-- | The number of items returned from a List or Query API method, if
-- applicable.
alNumResponseItems :: Lens' AuditLog (Maybe Int64)
alNumResponseItems
  = lens _alNumResponseItems
      (\ s a -> s{_alNumResponseItems = a})
      . mapping _Coerce

-- | Authentication information.
alAuthenticationInfo :: Lens' AuditLog (Maybe AuthenticationInfo)
alAuthenticationInfo
  = lens _alAuthenticationInfo
      (\ s a -> s{_alAuthenticationInfo = a})

-- | The operation request. This may not include all request parameters, such
-- as those that are too large, privacy-sensitive, or duplicated elsewhere
-- in the log record. It should never include user-generated data, such as
-- file contents. When the JSON object represented here has a proto
-- equivalent, the proto name will be indicated in the \`\'type\` property.
alRequest :: Lens' AuditLog (Maybe AuditLogRequest)
alRequest
  = lens _alRequest (\ s a -> s{_alRequest = a})

instance FromJSON AuditLog where
        parseJSON
          = withObject "AuditLog"
              (\ o ->
                 AuditLog' <$>
                   (o .:? "requestMetadata") <*> (o .:? "status") <*>
                     (o .:? "resourceName")
                     <*> (o .:? "authorizationInfo" .!= mempty)
                     <*> (o .:? "serviceData")
                     <*> (o .:? "methodName")
                     <*> (o .:? "response")
                     <*> (o .:? "resourceOriginalState")
                     <*> (o .:? "resourceLocation")
                     <*> (o .:? "serviceName")
                     <*> (o .:? "metadata")
                     <*> (o .:? "numResponseItems")
                     <*> (o .:? "authenticationInfo")
                     <*> (o .:? "request"))

instance ToJSON AuditLog where
        toJSON AuditLog'{..}
          = object
              (catMaybes
                 [("requestMetadata" .=) <$> _alRequestMetadata,
                  ("status" .=) <$> _alStatus,
                  ("resourceName" .=) <$> _alResourceName,
                  ("authorizationInfo" .=) <$> _alAuthorizationInfo,
                  ("serviceData" .=) <$> _alServiceData,
                  ("methodName" .=) <$> _alMethodName,
                  ("response" .=) <$> _alResponse,
                  ("resourceOriginalState" .=) <$>
                    _alResourceOriginalState,
                  ("resourceLocation" .=) <$> _alResourceLocation,
                  ("serviceName" .=) <$> _alServiceName,
                  ("metadata" .=) <$> _alMetadata,
                  ("numResponseItems" .=) <$> _alNumResponseItems,
                  ("authenticationInfo" .=) <$> _alAuthenticationInfo,
                  ("request" .=) <$> _alRequest])

-- | Returns a set of request contexts generated from the \`CheckRequest\`.
--
-- /See:/ 'checkResponseHeaders' smart constructor.
newtype CheckResponseHeaders =
  CheckResponseHeaders'
    { _crhAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckResponseHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crhAddtional'
checkResponseHeaders
    :: HashMap Text Text -- ^ 'crhAddtional'
    -> CheckResponseHeaders
checkResponseHeaders pCrhAddtional_ =
  CheckResponseHeaders' {_crhAddtional = _Coerce # pCrhAddtional_}


crhAddtional :: Lens' CheckResponseHeaders (HashMap Text Text)
crhAddtional
  = lens _crhAddtional (\ s a -> s{_crhAddtional = a})
      . _Coerce

instance FromJSON CheckResponseHeaders where
        parseJSON
          = withObject "CheckResponseHeaders"
              (\ o ->
                 CheckResponseHeaders' <$> (parseJSONObject o))

instance ToJSON CheckResponseHeaders where
        toJSON = toJSON . _crhAddtional

-- | This message defines attributes for an HTTP request. If the actual
-- request is not an HTTP request, the runtime system should try to map the
-- actual request to an equivalent HTTP request.
--
-- /See:/ 'request'' smart constructor.
data Request' =
  Request''
    { _reqPath :: !(Maybe Text)
    , _reqTime :: !(Maybe DateTime')
    , _reqSize :: !(Maybe (Textual Int64))
    , _reqAuth :: !(Maybe Auth)
    , _reqProtocol :: !(Maybe Text)
    , _reqReason :: !(Maybe Text)
    , _reqHeaders :: !(Maybe RequestHeaders)
    , _reqMethod :: !(Maybe Text)
    , _reqQuery :: !(Maybe Text)
    , _reqScheme :: !(Maybe Text)
    , _reqId :: !(Maybe Text)
    , _reqHost :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Request' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reqPath'
--
-- * 'reqTime'
--
-- * 'reqSize'
--
-- * 'reqAuth'
--
-- * 'reqProtocol'
--
-- * 'reqReason'
--
-- * 'reqHeaders'
--
-- * 'reqMethod'
--
-- * 'reqQuery'
--
-- * 'reqScheme'
--
-- * 'reqId'
--
-- * 'reqHost'
request'
    :: Request'
request' =
  Request''
    { _reqPath = Nothing
    , _reqTime = Nothing
    , _reqSize = Nothing
    , _reqAuth = Nothing
    , _reqProtocol = Nothing
    , _reqReason = Nothing
    , _reqHeaders = Nothing
    , _reqMethod = Nothing
    , _reqQuery = Nothing
    , _reqScheme = Nothing
    , _reqId = Nothing
    , _reqHost = Nothing
    }


-- | The HTTP URL path, excluding the query parameters.
reqPath :: Lens' Request' (Maybe Text)
reqPath = lens _reqPath (\ s a -> s{_reqPath = a})

-- | The timestamp when the \`destination\` service receives the last byte of
-- the request.
reqTime :: Lens' Request' (Maybe UTCTime)
reqTime
  = lens _reqTime (\ s a -> s{_reqTime = a}) .
      mapping _DateTime

-- | The HTTP request size in bytes. If unknown, it must be -1.
reqSize :: Lens' Request' (Maybe Int64)
reqSize
  = lens _reqSize (\ s a -> s{_reqSize = a}) .
      mapping _Coerce

-- | The request authentication. May be absent for unauthenticated requests.
-- Derived from the HTTP request \`Authorization\` header or equivalent.
reqAuth :: Lens' Request' (Maybe Auth)
reqAuth = lens _reqAuth (\ s a -> s{_reqAuth = a})

-- | The network protocol used with the request, such as \"http\/1.1\",
-- \"spdy\/3\", \"h2\", \"h2c\", \"webrtc\", \"tcp\", \"udp\", \"quic\".
-- See
-- https:\/\/www.iana.org\/assignments\/tls-extensiontype-values\/tls-extensiontype-values.xhtml#alpn-protocol-ids
-- for details.
reqProtocol :: Lens' Request' (Maybe Text)
reqProtocol
  = lens _reqProtocol (\ s a -> s{_reqProtocol = a})

-- | A special parameter for request reason. It is used by security systems
-- to associate auditing information with a request.
reqReason :: Lens' Request' (Maybe Text)
reqReason
  = lens _reqReason (\ s a -> s{_reqReason = a})

-- | The HTTP request headers. If multiple headers share the same key, they
-- must be merged according to the HTTP spec. All header keys must be
-- lowercased, because HTTP header keys are case-insensitive.
reqHeaders :: Lens' Request' (Maybe RequestHeaders)
reqHeaders
  = lens _reqHeaders (\ s a -> s{_reqHeaders = a})

-- | The HTTP request method, such as \`GET\`, \`POST\`.
reqMethod :: Lens' Request' (Maybe Text)
reqMethod
  = lens _reqMethod (\ s a -> s{_reqMethod = a})

-- | The HTTP URL query in the format of \`name1=value1&name2=value2\`, as it
-- appears in the first line of the HTTP request. No decoding is performed.
reqQuery :: Lens' Request' (Maybe Text)
reqQuery = lens _reqQuery (\ s a -> s{_reqQuery = a})

-- | The HTTP URL scheme, such as \`http\` and \`https\`.
reqScheme :: Lens' Request' (Maybe Text)
reqScheme
  = lens _reqScheme (\ s a -> s{_reqScheme = a})

-- | The unique ID for a request, which can be propagated to downstream
-- systems. The ID should have low probability of collision within a single
-- day for a specific service.
reqId :: Lens' Request' (Maybe Text)
reqId = lens _reqId (\ s a -> s{_reqId = a})

-- | The HTTP request \`Host\` header value.
reqHost :: Lens' Request' (Maybe Text)
reqHost = lens _reqHost (\ s a -> s{_reqHost = a})

instance FromJSON Request' where
        parseJSON
          = withObject "Request"
              (\ o ->
                 Request'' <$>
                   (o .:? "path") <*> (o .:? "time") <*> (o .:? "size")
                     <*> (o .:? "auth")
                     <*> (o .:? "protocol")
                     <*> (o .:? "reason")
                     <*> (o .:? "headers")
                     <*> (o .:? "method")
                     <*> (o .:? "query")
                     <*> (o .:? "scheme")
                     <*> (o .:? "id")
                     <*> (o .:? "host"))

instance ToJSON Request' where
        toJSON Request''{..}
          = object
              (catMaybes
                 [("path" .=) <$> _reqPath, ("time" .=) <$> _reqTime,
                  ("size" .=) <$> _reqSize, ("auth" .=) <$> _reqAuth,
                  ("protocol" .=) <$> _reqProtocol,
                  ("reason" .=) <$> _reqReason,
                  ("headers" .=) <$> _reqHeaders,
                  ("method" .=) <$> _reqMethod,
                  ("query" .=) <$> _reqQuery,
                  ("scheme" .=) <$> _reqScheme, ("id" .=) <$> _reqId,
                  ("host" .=) <$> _reqHost])
