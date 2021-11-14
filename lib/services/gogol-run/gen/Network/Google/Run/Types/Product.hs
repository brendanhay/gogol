{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Run.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Run.Types.Product where

import Network.Google.Prelude
import Network.Google.Run.Types.Sum

-- | (Optional) Only memory and CPU are supported. Note: The only supported
-- values for CPU are \'1\' and \'2\'. Requests describes the minimum
-- amount of compute resources required. If Requests is omitted for a
-- container, it defaults to Limits if that is explicitly specified,
-- otherwise to an implementation-defined value. The values of the map is
-- string form of the \'quantity\' k8s type:
-- https:\/\/github.com\/kubernetes\/kubernetes\/blob\/master\/staging\/src\/k8s.io\/apimachinery\/pkg\/api\/resource\/quantity.go
--
-- /See:/ 'resourceRequirementsRequests' smart constructor.
newtype ResourceRequirementsRequests =
  ResourceRequirementsRequests'
    { _rrrAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceRequirementsRequests' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrAddtional'
resourceRequirementsRequests
    :: HashMap Text Text -- ^ 'rrrAddtional'
    -> ResourceRequirementsRequests
resourceRequirementsRequests pRrrAddtional_ =
  ResourceRequirementsRequests' {_rrrAddtional = _Coerce # pRrrAddtional_}


rrrAddtional :: Lens' ResourceRequirementsRequests (HashMap Text Text)
rrrAddtional
  = lens _rrrAddtional (\ s a -> s{_rrrAddtional = a})
      . _Coerce

instance FromJSON ResourceRequirementsRequests where
        parseJSON
          = withObject "ResourceRequirementsRequests"
              (\ o ->
                 ResourceRequirementsRequests' <$>
                   (parseJSONObject o))

instance ToJSON ResourceRequirementsRequests where
        toJSON = toJSON . _rrrAddtional

-- | Not supported by Cloud Run Selects a key from a ConfigMap.
--
-- /See:/ 'configMapKeySelector' smart constructor.
data ConfigMapKeySelector =
  ConfigMapKeySelector'
    { _cmksKey :: !(Maybe Text)
    , _cmksName :: !(Maybe Text)
    , _cmksLocalObjectReference :: !(Maybe LocalObjectReference)
    , _cmksOptional :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigMapKeySelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmksKey'
--
-- * 'cmksName'
--
-- * 'cmksLocalObjectReference'
--
-- * 'cmksOptional'
configMapKeySelector
    :: ConfigMapKeySelector
configMapKeySelector =
  ConfigMapKeySelector'
    { _cmksKey = Nothing
    , _cmksName = Nothing
    , _cmksLocalObjectReference = Nothing
    , _cmksOptional = Nothing
    }


-- | The key to select.
cmksKey :: Lens' ConfigMapKeySelector (Maybe Text)
cmksKey = lens _cmksKey (\ s a -> s{_cmksKey = a})

-- | The ConfigMap to select from.
cmksName :: Lens' ConfigMapKeySelector (Maybe Text)
cmksName = lens _cmksName (\ s a -> s{_cmksName = a})

-- | This field should not be used directly as it is meant to be inlined
-- directly into the message. Use the \"name\" field instead.
cmksLocalObjectReference :: Lens' ConfigMapKeySelector (Maybe LocalObjectReference)
cmksLocalObjectReference
  = lens _cmksLocalObjectReference
      (\ s a -> s{_cmksLocalObjectReference = a})

-- | (Optional) Specify whether the ConfigMap or its key must be defined
cmksOptional :: Lens' ConfigMapKeySelector (Maybe Bool)
cmksOptional
  = lens _cmksOptional (\ s a -> s{_cmksOptional = a})

instance FromJSON ConfigMapKeySelector where
        parseJSON
          = withObject "ConfigMapKeySelector"
              (\ o ->
                 ConfigMapKeySelector' <$>
                   (o .:? "key") <*> (o .:? "name") <*>
                     (o .:? "localObjectReference")
                     <*> (o .:? "optional"))

instance ToJSON ConfigMapKeySelector where
        toJSON ConfigMapKeySelector'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _cmksKey, ("name" .=) <$> _cmksName,
                  ("localObjectReference" .=) <$>
                    _cmksLocalObjectReference,
                  ("optional" .=) <$> _cmksOptional])

-- | SecretKeySelector selects a key of a Secret.
--
-- /See:/ 'secretKeySelector' smart constructor.
data SecretKeySelector =
  SecretKeySelector'
    { _sksKey :: !(Maybe Text)
    , _sksName :: !(Maybe Text)
    , _sksLocalObjectReference :: !(Maybe LocalObjectReference)
    , _sksOptional :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretKeySelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sksKey'
--
-- * 'sksName'
--
-- * 'sksLocalObjectReference'
--
-- * 'sksOptional'
secretKeySelector
    :: SecretKeySelector
secretKeySelector =
  SecretKeySelector'
    { _sksKey = Nothing
    , _sksName = Nothing
    , _sksLocalObjectReference = Nothing
    , _sksOptional = Nothing
    }


-- | A Cloud Secret Manager secret version. Must be \'latest\' for the latest
-- version or an integer for a specific version. The key of the secret to
-- select from. Must be a valid secret key.
sksKey :: Lens' SecretKeySelector (Maybe Text)
sksKey = lens _sksKey (\ s a -> s{_sksKey = a})

-- | The name of the secret in Cloud Secret Manager. By default, the secret
-- is assumed to be in the same project. If the secret is in another
-- project, you must define an alias. An alias definition has the form:
-- :projects\/\/secrets\/. If multiple alias definitions are needed, they
-- must be separated by commas. The alias definitions must be set on the
-- run.googleapis.com\/secrets annotation. The name of the secret in the
-- pod\'s namespace to select from.
sksName :: Lens' SecretKeySelector (Maybe Text)
sksName = lens _sksName (\ s a -> s{_sksName = a})

-- | This field should not be used directly as it is meant to be inlined
-- directly into the message. Use the \"name\" field instead.
sksLocalObjectReference :: Lens' SecretKeySelector (Maybe LocalObjectReference)
sksLocalObjectReference
  = lens _sksLocalObjectReference
      (\ s a -> s{_sksLocalObjectReference = a})

-- | (Optional) Specify whether the Secret or its key must be defined
sksOptional :: Lens' SecretKeySelector (Maybe Bool)
sksOptional
  = lens _sksOptional (\ s a -> s{_sksOptional = a})

instance FromJSON SecretKeySelector where
        parseJSON
          = withObject "SecretKeySelector"
              (\ o ->
                 SecretKeySelector' <$>
                   (o .:? "key") <*> (o .:? "name") <*>
                     (o .:? "localObjectReference")
                     <*> (o .:? "optional"))

instance ToJSON SecretKeySelector where
        toJSON SecretKeySelector'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _sksKey, ("name" .=) <$> _sksName,
                  ("localObjectReference" .=) <$>
                    _sksLocalObjectReference,
                  ("optional" .=) <$> _sksOptional])

-- | Not supported by Cloud Run TCPSocketAction describes an action based on
-- opening a socket
--
-- /See:/ 'tcpSocketAction' smart constructor.
data TCPSocketAction =
  TCPSocketAction'
    { _tsaHost :: !(Maybe Text)
    , _tsaPort :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TCPSocketAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsaHost'
--
-- * 'tsaPort'
tcpSocketAction
    :: TCPSocketAction
tcpSocketAction = TCPSocketAction' {_tsaHost = Nothing, _tsaPort = Nothing}


-- | (Optional) Optional: Host name to connect to, defaults to the pod IP.
tsaHost :: Lens' TCPSocketAction (Maybe Text)
tsaHost = lens _tsaHost (\ s a -> s{_tsaHost = a})

-- | Number or name of the port to access on the container. Number must be in
-- the range 1 to 65535. Name must be an IANA_SVC_NAME. This field is
-- currently limited to integer types only because of proto\'s inability to
-- properly support the IntOrString golang type.
tsaPort :: Lens' TCPSocketAction (Maybe Int32)
tsaPort
  = lens _tsaPort (\ s a -> s{_tsaPort = a}) .
      mapping _Coerce

instance FromJSON TCPSocketAction where
        parseJSON
          = withObject "TCPSocketAction"
              (\ o ->
                 TCPSocketAction' <$>
                   (o .:? "host") <*> (o .:? "port"))

instance ToJSON TCPSocketAction where
        toJSON TCPSocketAction'{..}
          = object
              (catMaybes
                 [("host" .=) <$> _tsaHost, ("port" .=) <$> _tsaPort])

-- | Status is a return value for calls that don\'t return other objects
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sStatus :: !(Maybe Text)
    , _sReason :: !(Maybe Text)
    , _sDetails :: !(Maybe StatusDetails)
    , _sMetadata :: !(Maybe ListMeta)
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStatus'
--
-- * 'sReason'
--
-- * 'sDetails'
--
-- * 'sMetadata'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status =
  Status'
    { _sStatus = Nothing
    , _sReason = Nothing
    , _sDetails = Nothing
    , _sMetadata = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }


-- | Status of the operation. One of: \"Success\" or \"Failure\". More info:
-- https:\/\/git.k8s.io\/community\/contributors\/devel\/sig-architecture\/api-conventions.md#spec-and-status
-- +optional
sStatus :: Lens' Status (Maybe Text)
sStatus = lens _sStatus (\ s a -> s{_sStatus = a})

-- | A machine-readable description of why this operation is in the
-- \"Failure\" status. If this value is empty there is no information
-- available. A Reason clarifies an HTTP status code but does not override
-- it. +optional
sReason :: Lens' Status (Maybe Text)
sReason = lens _sReason (\ s a -> s{_sReason = a})

-- | Extended data associated with the reason. Each reason may define its own
-- extended details. This field is optional and the data returned is not
-- guaranteed to conform to any schema except that defined by the reason
-- type. +optional
sDetails :: Lens' Status (Maybe StatusDetails)
sDetails = lens _sDetails (\ s a -> s{_sDetails = a})

-- | Standard list metadata. More info:
-- https:\/\/git.k8s.io\/community\/contributors\/devel\/sig-architecture\/api-conventions.md#types-kinds
-- +optional
sMetadata :: Lens' Status (Maybe ListMeta)
sMetadata
  = lens _sMetadata (\ s a -> s{_sMetadata = a})

-- | Suggested HTTP return code for this status, 0 if not set. +optional
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A human-readable description of the status of this operation. +optional
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "status") <*> (o .:? "reason") <*>
                     (o .:? "details")
                     <*> (o .:? "metadata")
                     <*> (o .:? "code")
                     <*> (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _sStatus,
                  ("reason" .=) <$> _sReason,
                  ("details" .=) <$> _sDetails,
                  ("metadata" .=) <$> _sMetadata,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Information for connecting over HTTP(s).
--
-- /See:/ 'addressable' smart constructor.
newtype Addressable =
  Addressable'
    { _aURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Addressable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aURL'
addressable
    :: Addressable
addressable = Addressable' {_aURL = Nothing}


aURL :: Lens' Addressable (Maybe Text)
aURL = lens _aURL (\ s a -> s{_aURL = a})

instance FromJSON Addressable where
        parseJSON
          = withObject "Addressable"
              (\ o -> Addressable' <$> (o .:? "url"))

instance ToJSON Addressable where
        toJSON Addressable'{..}
          = object (catMaybes [("url" .=) <$> _aURL])

-- | (Optional) Annotations is an unstructured key value map stored with a
-- resource that may be set by external tools to store and retrieve
-- arbitrary metadata. They are not queryable and should be preserved when
-- modifying objects. More info:
-- http:\/\/kubernetes.io\/docs\/user-guide\/annotations
--
-- /See:/ 'objectMetaAnnotations' smart constructor.
newtype ObjectMetaAnnotations =
  ObjectMetaAnnotations'
    { _omaAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectMetaAnnotations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omaAddtional'
objectMetaAnnotations
    :: HashMap Text Text -- ^ 'omaAddtional'
    -> ObjectMetaAnnotations
objectMetaAnnotations pOmaAddtional_ =
  ObjectMetaAnnotations' {_omaAddtional = _Coerce # pOmaAddtional_}


omaAddtional :: Lens' ObjectMetaAnnotations (HashMap Text Text)
omaAddtional
  = lens _omaAddtional (\ s a -> s{_omaAddtional = a})
      . _Coerce

instance FromJSON ObjectMetaAnnotations where
        parseJSON
          = withObject "ObjectMetaAnnotations"
              (\ o ->
                 ObjectMetaAnnotations' <$> (parseJSONObject o))

instance ToJSON ObjectMetaAnnotations where
        toJSON = toJSON . _omaAddtional

-- | TrafficTarget holds a single entry of the routing table for a Route.
--
-- /See:/ 'trafficTarget' smart constructor.
data TrafficTarget =
  TrafficTarget'
    { _ttRevisionName :: !(Maybe Text)
    , _ttConfigurationName :: !(Maybe Text)
    , _ttTag :: !(Maybe Text)
    , _ttLatestRevision :: !(Maybe Bool)
    , _ttURL :: !(Maybe Text)
    , _ttPercent :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TrafficTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttRevisionName'
--
-- * 'ttConfigurationName'
--
-- * 'ttTag'
--
-- * 'ttLatestRevision'
--
-- * 'ttURL'
--
-- * 'ttPercent'
trafficTarget
    :: TrafficTarget
trafficTarget =
  TrafficTarget'
    { _ttRevisionName = Nothing
    , _ttConfigurationName = Nothing
    , _ttTag = Nothing
    , _ttLatestRevision = Nothing
    , _ttURL = Nothing
    , _ttPercent = Nothing
    }


-- | RevisionName of a specific revision to which to send this portion of
-- traffic. This is mutually exclusive with ConfigurationName. Providing
-- RevisionName in spec is not currently supported by Cloud Run.
ttRevisionName :: Lens' TrafficTarget (Maybe Text)
ttRevisionName
  = lens _ttRevisionName
      (\ s a -> s{_ttRevisionName = a})

-- | ConfigurationName of a configuration to whose latest revision we will
-- send this portion of traffic. When the
-- \"status.latestReadyRevisionName\" of the referenced configuration
-- changes, we will automatically migrate traffic from the prior \"latest
-- ready\" revision to the new one. This field is never set in Route\'s
-- status, only its spec. This is mutually exclusive with RevisionName.
-- Cloud Run currently supports a single ConfigurationName.
ttConfigurationName :: Lens' TrafficTarget (Maybe Text)
ttConfigurationName
  = lens _ttConfigurationName
      (\ s a -> s{_ttConfigurationName = a})

-- | Optional. Tag is used to expose a dedicated url for referencing this
-- target exclusively.
ttTag :: Lens' TrafficTarget (Maybe Text)
ttTag = lens _ttTag (\ s a -> s{_ttTag = a})

-- | Optional. LatestRevision may be provided to indicate that the latest
-- ready Revision of the Configuration should be used for this traffic
-- target. When provided LatestRevision must be true if RevisionName is
-- empty; it must be false when RevisionName is non-empty.
ttLatestRevision :: Lens' TrafficTarget (Maybe Bool)
ttLatestRevision
  = lens _ttLatestRevision
      (\ s a -> s{_ttLatestRevision = a})

-- | Output only. URL displays the URL for accessing tagged traffic targets.
-- URL is displayed in status, and is disallowed on spec. URL must contain
-- a scheme (e.g. http:\/\/) and a hostname, but may not contain anything
-- else (e.g. basic auth, url path, etc.)
ttURL :: Lens' TrafficTarget (Maybe Text)
ttURL = lens _ttURL (\ s a -> s{_ttURL = a})

-- | Percent specifies percent of the traffic to this Revision or
-- Configuration. This defaults to zero if unspecified. Cloud Run currently
-- requires 100 percent for a single ConfigurationName TrafficTarget entry.
ttPercent :: Lens' TrafficTarget (Maybe Int32)
ttPercent
  = lens _ttPercent (\ s a -> s{_ttPercent = a}) .
      mapping _Coerce

instance FromJSON TrafficTarget where
        parseJSON
          = withObject "TrafficTarget"
              (\ o ->
                 TrafficTarget' <$>
                   (o .:? "revisionName") <*>
                     (o .:? "configurationName")
                     <*> (o .:? "tag")
                     <*> (o .:? "latestRevision")
                     <*> (o .:? "url")
                     <*> (o .:? "percent"))

instance ToJSON TrafficTarget where
        toJSON TrafficTarget'{..}
          = object
              (catMaybes
                 [("revisionName" .=) <$> _ttRevisionName,
                  ("configurationName" .=) <$> _ttConfigurationName,
                  ("tag" .=) <$> _ttTag,
                  ("latestRevision" .=) <$> _ttLatestRevision,
                  ("url" .=) <$> _ttURL,
                  ("percent" .=) <$> _ttPercent])

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\":
-- \"sampleservice.googleapis.com\", \"audit_log_configs\": [ {
-- \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\",
-- \"exempted_members\": [ \"user:aliya\'example.com\" ] } ] } ] } For
-- sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
-- logging. It also exempts jose\'example.com from DATA_READ logging, and
-- aliya\'example.com from DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
auditConfig
    :: AuditConfig
auditConfig = AuditConfig' {_acService = Nothing, _acAuditLogConfigs = Nothing}


-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
acService :: Lens' AuditConfig (Maybe Text)
acService
  = lens _acService (\ s a -> s{_acService = a})

-- | The configuration for logging of each type of permission.
acAuditLogConfigs :: Lens' AuditConfig [AuditLogConfig]
acAuditLogConfigs
  = lens _acAuditLogConfigs
      (\ s a -> s{_acAuditLogConfigs = a})
      . _Default
      . _Coerce

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("auditLogConfigs" .=) <$> _acAuditLogConfigs])

-- | A domain that a user has been authorized to administer. To authorize use
-- of a domain, verify ownership via [Webmaster
-- Central](https:\/\/www.google.com\/webmasters\/verification\/home).
--
-- /See:/ 'authorizedDomain' smart constructor.
data AuthorizedDomain =
  AuthorizedDomain'
    { _adName :: !(Maybe Text)
    , _adId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthorizedDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adName'
--
-- * 'adId'
authorizedDomain
    :: AuthorizedDomain
authorizedDomain = AuthorizedDomain' {_adName = Nothing, _adId = Nothing}


-- | Deprecated Read only. Full path to the \`AuthorizedDomain\` resource in
-- the API. Example:
-- \`projects\/myproject\/authorizedDomains\/example.com\`.
adName :: Lens' AuthorizedDomain (Maybe Text)
adName = lens _adName (\ s a -> s{_adName = a})

-- | Relative name of the domain authorized for use. Example:
-- \`example.com\`.
adId :: Lens' AuthorizedDomain (Maybe Text)
adId = lens _adId (\ s a -> s{_adId = a})

instance FromJSON AuthorizedDomain where
        parseJSON
          = withObject "AuthorizedDomain"
              (\ o ->
                 AuthorizedDomain' <$>
                   (o .:? "name") <*> (o .:? "id"))

instance ToJSON AuthorizedDomain where
        toJSON AuthorizedDomain'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _adName, ("id" .=) <$> _adId])

-- | Not supported by Cloud Run HTTPHeader describes a custom header to be
-- used in HTTP probes
--
-- /See:/ 'hTTPHeader' smart constructor.
data HTTPHeader =
  HTTPHeader'
    { _httphValue :: !(Maybe Text)
    , _httphName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphValue'
--
-- * 'httphName'
hTTPHeader
    :: HTTPHeader
hTTPHeader = HTTPHeader' {_httphValue = Nothing, _httphName = Nothing}


-- | The header field value
httphValue :: Lens' HTTPHeader (Maybe Text)
httphValue
  = lens _httphValue (\ s a -> s{_httphValue = a})

-- | The header field name
httphName :: Lens' HTTPHeader (Maybe Text)
httphName
  = lens _httphName (\ s a -> s{_httphName = a})

instance FromJSON HTTPHeader where
        parseJSON
          = withObject "HTTPHeader"
              (\ o ->
                 HTTPHeader' <$> (o .:? "value") <*> (o .:? "name"))

instance ToJSON HTTPHeader where
        toJSON HTTPHeader'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _httphValue,
                  ("name" .=) <$> _httphName])

-- | A list of Service resources.
--
-- /See:/ 'listServicesResponse' smart constructor.
data ListServicesResponse =
  ListServicesResponse'
    { _lsrAPIVersion :: !(Maybe Text)
    , _lsrKind :: !(Maybe Text)
    , _lsrItems :: !(Maybe [Service])
    , _lsrUnreachable :: !(Maybe [Text])
    , _lsrMetadata :: !(Maybe ListMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrAPIVersion'
--
-- * 'lsrKind'
--
-- * 'lsrItems'
--
-- * 'lsrUnreachable'
--
-- * 'lsrMetadata'
listServicesResponse
    :: ListServicesResponse
listServicesResponse =
  ListServicesResponse'
    { _lsrAPIVersion = Nothing
    , _lsrKind = Nothing
    , _lsrItems = Nothing
    , _lsrUnreachable = Nothing
    , _lsrMetadata = Nothing
    }


-- | The API version for this call such as \"serving.knative.dev\/v1\".
lsrAPIVersion :: Lens' ListServicesResponse (Maybe Text)
lsrAPIVersion
  = lens _lsrAPIVersion
      (\ s a -> s{_lsrAPIVersion = a})

-- | The kind of this resource, in this case \"ServiceList\".
lsrKind :: Lens' ListServicesResponse (Maybe Text)
lsrKind = lens _lsrKind (\ s a -> s{_lsrKind = a})

-- | List of Services.
lsrItems :: Lens' ListServicesResponse [Service]
lsrItems
  = lens _lsrItems (\ s a -> s{_lsrItems = a}) .
      _Default
      . _Coerce

-- | Locations that could not be reached.
lsrUnreachable :: Lens' ListServicesResponse [Text]
lsrUnreachable
  = lens _lsrUnreachable
      (\ s a -> s{_lsrUnreachable = a})
      . _Default
      . _Coerce

-- | Metadata associated with this Service list.
lsrMetadata :: Lens' ListServicesResponse (Maybe ListMeta)
lsrMetadata
  = lens _lsrMetadata (\ s a -> s{_lsrMetadata = a})

instance FromJSON ListServicesResponse where
        parseJSON
          = withObject "ListServicesResponse"
              (\ o ->
                 ListServicesResponse' <$>
                   (o .:? "apiVersion") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "unreachable" .!= mempty)
                     <*> (o .:? "metadata"))

instance ToJSON ListServicesResponse where
        toJSON ListServicesResponse'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _lsrAPIVersion,
                  ("kind" .=) <$> _lsrKind, ("items" .=) <$> _lsrItems,
                  ("unreachable" .=) <$> _lsrUnreachable,
                  ("metadata" .=) <$> _lsrMetadata])

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | A DNS resource record.
--
-- /See:/ 'resourceRecord' smart constructor.
data ResourceRecord =
  ResourceRecord'
    { _rrRrData :: !(Maybe Text)
    , _rrName :: !(Maybe Text)
    , _rrType :: !(Maybe ResourceRecordType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrRrData'
--
-- * 'rrName'
--
-- * 'rrType'
resourceRecord
    :: ResourceRecord
resourceRecord =
  ResourceRecord' {_rrRrData = Nothing, _rrName = Nothing, _rrType = Nothing}


-- | Data for this record. Values vary by record type, as defined in RFC 1035
-- (section 5) and RFC 1034 (section 3.6.1).
rrRrData :: Lens' ResourceRecord (Maybe Text)
rrRrData = lens _rrRrData (\ s a -> s{_rrRrData = a})

-- | Relative name of the object affected by this record. Only applicable for
-- \`CNAME\` records. Example: \'www\'.
rrName :: Lens' ResourceRecord (Maybe Text)
rrName = lens _rrName (\ s a -> s{_rrName = a})

-- | Resource record type. Example: \`AAAA\`.
rrType :: Lens' ResourceRecord (Maybe ResourceRecordType)
rrType = lens _rrType (\ s a -> s{_rrType = a})

instance FromJSON ResourceRecord where
        parseJSON
          = withObject "ResourceRecord"
              (\ o ->
                 ResourceRecord' <$>
                   (o .:? "rrdata") <*> (o .:? "name") <*>
                     (o .:? "type"))

instance ToJSON ResourceRecord where
        toJSON ResourceRecord'{..}
          = object
              (catMaybes
                 [("rrdata" .=) <$> _rrRrData,
                  ("name" .=) <$> _rrName, ("type" .=) <$> _rrType])

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations :: !(Maybe [Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLocations'
listLocationsResponse
    :: ListLocationsResponse
listLocationsResponse =
  ListLocationsResponse' {_llrNextPageToken = Nothing, _llrLocations = Nothing}


-- | The standard List next-page token.
llrNextPageToken :: Lens' ListLocationsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of locations that matches the specified filter in the request.
llrLocations :: Lens' ListLocationsResponse [Location]
llrLocations
  = lens _llrLocations (\ s a -> s{_llrLocations = a})
      . _Default
      . _Coerce

instance FromJSON ListLocationsResponse where
        parseJSON
          = withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("locations" .=) <$> _llrLocations])

-- | Not supported by Cloud Run Probe describes a health check to be
-- performed against a container to determine whether it is alive or ready
-- to receive traffic.
--
-- /See:/ 'probe' smart constructor.
data Probe =
  Probe'
    { _pSuccessThreshold :: !(Maybe (Textual Int32))
    , _pFailureThreshold :: !(Maybe (Textual Int32))
    , _pExec :: !(Maybe ExecAction)
    , _pTCPSocket :: !(Maybe TCPSocketAction)
    , _pTimeoutSeconds :: !(Maybe (Textual Int32))
    , _pInitialDelaySeconds :: !(Maybe (Textual Int32))
    , _pHTTPGet :: !(Maybe HTTPGetAction)
    , _pPeriodSeconds :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Probe' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pSuccessThreshold'
--
-- * 'pFailureThreshold'
--
-- * 'pExec'
--
-- * 'pTCPSocket'
--
-- * 'pTimeoutSeconds'
--
-- * 'pInitialDelaySeconds'
--
-- * 'pHTTPGet'
--
-- * 'pPeriodSeconds'
probe
    :: Probe
probe =
  Probe'
    { _pSuccessThreshold = Nothing
    , _pFailureThreshold = Nothing
    , _pExec = Nothing
    , _pTCPSocket = Nothing
    , _pTimeoutSeconds = Nothing
    , _pInitialDelaySeconds = Nothing
    , _pHTTPGet = Nothing
    , _pPeriodSeconds = Nothing
    }


-- | (Optional) Minimum consecutive successes for the probe to be considered
-- successful after having failed. Defaults to 1. Must be 1 for liveness.
-- Minimum value is 1.
pSuccessThreshold :: Lens' Probe (Maybe Int32)
pSuccessThreshold
  = lens _pSuccessThreshold
      (\ s a -> s{_pSuccessThreshold = a})
      . mapping _Coerce

-- | (Optional) Minimum consecutive failures for the probe to be considered
-- failed after having succeeded. Defaults to 3. Minimum value is 1.
pFailureThreshold :: Lens' Probe (Maybe Int32)
pFailureThreshold
  = lens _pFailureThreshold
      (\ s a -> s{_pFailureThreshold = a})
      . mapping _Coerce

-- | (Optional) One and only one of the following should be specified. Exec
-- specifies the action to take. A field inlined from the Handler message.
pExec :: Lens' Probe (Maybe ExecAction)
pExec = lens _pExec (\ s a -> s{_pExec = a})

-- | (Optional) TCPSocket specifies an action involving a TCP port. TCP hooks
-- not yet supported A field inlined from the Handler message.
pTCPSocket :: Lens' Probe (Maybe TCPSocketAction)
pTCPSocket
  = lens _pTCPSocket (\ s a -> s{_pTCPSocket = a})

-- | (Optional) Number of seconds after which the probe times out. Defaults
-- to 1 second. Minimum value is 1. More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/workloads\/pods\/pod-lifecycle#container-probes
pTimeoutSeconds :: Lens' Probe (Maybe Int32)
pTimeoutSeconds
  = lens _pTimeoutSeconds
      (\ s a -> s{_pTimeoutSeconds = a})
      . mapping _Coerce

-- | (Optional) Number of seconds after the container has started before
-- liveness probes are initiated. More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/workloads\/pods\/pod-lifecycle#container-probes
pInitialDelaySeconds :: Lens' Probe (Maybe Int32)
pInitialDelaySeconds
  = lens _pInitialDelaySeconds
      (\ s a -> s{_pInitialDelaySeconds = a})
      . mapping _Coerce

-- | (Optional) HTTPGet specifies the http request to perform. A field
-- inlined from the Handler message.
pHTTPGet :: Lens' Probe (Maybe HTTPGetAction)
pHTTPGet = lens _pHTTPGet (\ s a -> s{_pHTTPGet = a})

-- | (Optional) How often (in seconds) to perform the probe. Default to 10
-- seconds. Minimum value is 1.
pPeriodSeconds :: Lens' Probe (Maybe Int32)
pPeriodSeconds
  = lens _pPeriodSeconds
      (\ s a -> s{_pPeriodSeconds = a})
      . mapping _Coerce

instance FromJSON Probe where
        parseJSON
          = withObject "Probe"
              (\ o ->
                 Probe' <$>
                   (o .:? "successThreshold") <*>
                     (o .:? "failureThreshold")
                     <*> (o .:? "exec")
                     <*> (o .:? "tcpSocket")
                     <*> (o .:? "timeoutSeconds")
                     <*> (o .:? "initialDelaySeconds")
                     <*> (o .:? "httpGet")
                     <*> (o .:? "periodSeconds"))

instance ToJSON Probe where
        toJSON Probe'{..}
          = object
              (catMaybes
                 [("successThreshold" .=) <$> _pSuccessThreshold,
                  ("failureThreshold" .=) <$> _pFailureThreshold,
                  ("exec" .=) <$> _pExec,
                  ("tcpSocket" .=) <$> _pTCPSocket,
                  ("timeoutSeconds" .=) <$> _pTimeoutSeconds,
                  ("initialDelaySeconds" .=) <$> _pInitialDelaySeconds,
                  ("httpGet" .=) <$> _pHTTPGet,
                  ("periodSeconds" .=) <$> _pPeriodSeconds])

-- | ListConfigurationsResponse is a list of Configuration resources.
--
-- /See:/ 'listConfigurationsResponse' smart constructor.
data ListConfigurationsResponse =
  ListConfigurationsResponse'
    { _lcrAPIVersion :: !(Maybe Text)
    , _lcrKind :: !(Maybe Text)
    , _lcrItems :: !(Maybe [Configuration])
    , _lcrUnreachable :: !(Maybe [Text])
    , _lcrMetadata :: !(Maybe ListMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrAPIVersion'
--
-- * 'lcrKind'
--
-- * 'lcrItems'
--
-- * 'lcrUnreachable'
--
-- * 'lcrMetadata'
listConfigurationsResponse
    :: ListConfigurationsResponse
listConfigurationsResponse =
  ListConfigurationsResponse'
    { _lcrAPIVersion = Nothing
    , _lcrKind = Nothing
    , _lcrItems = Nothing
    , _lcrUnreachable = Nothing
    , _lcrMetadata = Nothing
    }


-- | The API version for this call such as \"serving.knative.dev\/v1\".
lcrAPIVersion :: Lens' ListConfigurationsResponse (Maybe Text)
lcrAPIVersion
  = lens _lcrAPIVersion
      (\ s a -> s{_lcrAPIVersion = a})

-- | The kind of this resource, in this case \"ConfigurationList\".
lcrKind :: Lens' ListConfigurationsResponse (Maybe Text)
lcrKind = lens _lcrKind (\ s a -> s{_lcrKind = a})

-- | List of Configurations.
lcrItems :: Lens' ListConfigurationsResponse [Configuration]
lcrItems
  = lens _lcrItems (\ s a -> s{_lcrItems = a}) .
      _Default
      . _Coerce

-- | Locations that could not be reached.
lcrUnreachable :: Lens' ListConfigurationsResponse [Text]
lcrUnreachable
  = lens _lcrUnreachable
      (\ s a -> s{_lcrUnreachable = a})
      . _Default
      . _Coerce

-- | Metadata associated with this Configuration list.
lcrMetadata :: Lens' ListConfigurationsResponse (Maybe ListMeta)
lcrMetadata
  = lens _lcrMetadata (\ s a -> s{_lcrMetadata = a})

instance FromJSON ListConfigurationsResponse where
        parseJSON
          = withObject "ListConfigurationsResponse"
              (\ o ->
                 ListConfigurationsResponse' <$>
                   (o .:? "apiVersion") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "unreachable" .!= mempty)
                     <*> (o .:? "metadata"))

instance ToJSON ListConfigurationsResponse where
        toJSON ListConfigurationsResponse'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _lcrAPIVersion,
                  ("kind" .=) <$> _lcrKind, ("items" .=) <$> _lcrItems,
                  ("unreachable" .=) <$> _lcrUnreachable,
                  ("metadata" .=) <$> _lcrMetadata])

-- | EnvVarSource represents a source for the value of an EnvVar.
--
-- /See:/ 'envVarSource' smart constructor.
data EnvVarSource =
  EnvVarSource'
    { _evsConfigMapKeyRef :: !(Maybe ConfigMapKeySelector)
    , _evsSecretKeyRef :: !(Maybe SecretKeySelector)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvVarSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evsConfigMapKeyRef'
--
-- * 'evsSecretKeyRef'
envVarSource
    :: EnvVarSource
envVarSource =
  EnvVarSource' {_evsConfigMapKeyRef = Nothing, _evsSecretKeyRef = Nothing}


-- | (Optional) Not supported by Cloud Run Selects a key of a ConfigMap.
evsConfigMapKeyRef :: Lens' EnvVarSource (Maybe ConfigMapKeySelector)
evsConfigMapKeyRef
  = lens _evsConfigMapKeyRef
      (\ s a -> s{_evsConfigMapKeyRef = a})

-- | (Optional) Selects a key (version) of a secret in Secret Manager.
evsSecretKeyRef :: Lens' EnvVarSource (Maybe SecretKeySelector)
evsSecretKeyRef
  = lens _evsSecretKeyRef
      (\ s a -> s{_evsSecretKeyRef = a})

instance FromJSON EnvVarSource where
        parseJSON
          = withObject "EnvVarSource"
              (\ o ->
                 EnvVarSource' <$>
                   (o .:? "configMapKeyRef") <*> (o .:? "secretKeyRef"))

instance ToJSON EnvVarSource where
        toJSON EnvVarSource'{..}
          = object
              (catMaybes
                 [("configMapKeyRef" .=) <$> _evsConfigMapKeyRef,
                  ("secretKeyRef" .=) <$> _evsSecretKeyRef])

-- | Service acts as a top-level container that manages a set of Routes and
-- Configurations which implement a network service. Service exists to
-- provide a singular abstraction which can be access controlled, reasoned
-- about, and which encapsulates software lifecycle decisions such as
-- rollout policy and team resource ownership. Service acts only as an
-- orchestrator of the underlying Routes and Configurations (much as a
-- kubernetes Deployment orchestrates ReplicaSets). The Service\'s
-- controller will track the statuses of its owned Configuration and Route,
-- reflecting their statuses and conditions as its own. See also:
-- https:\/\/github.com\/knative\/serving\/blob\/master\/docs\/spec\/overview.md#service
--
-- /See:/ 'service' smart constructor.
data Service =
  Service'
    { _serStatus :: !(Maybe ServiceStatus)
    , _serAPIVersion :: !(Maybe Text)
    , _serKind :: !(Maybe Text)
    , _serSpec :: !(Maybe ServiceSpec)
    , _serMetadata :: !(Maybe ObjectMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Service' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'serStatus'
--
-- * 'serAPIVersion'
--
-- * 'serKind'
--
-- * 'serSpec'
--
-- * 'serMetadata'
service
    :: Service
service =
  Service'
    { _serStatus = Nothing
    , _serAPIVersion = Nothing
    , _serKind = Nothing
    , _serSpec = Nothing
    , _serMetadata = Nothing
    }


-- | Status communicates the observed state of the Service (from the
-- controller).
serStatus :: Lens' Service (Maybe ServiceStatus)
serStatus
  = lens _serStatus (\ s a -> s{_serStatus = a})

-- | The API version for this call such as \"serving.knative.dev\/v1\".
serAPIVersion :: Lens' Service (Maybe Text)
serAPIVersion
  = lens _serAPIVersion
      (\ s a -> s{_serAPIVersion = a})

-- | The kind of resource, in this case \"Service\".
serKind :: Lens' Service (Maybe Text)
serKind = lens _serKind (\ s a -> s{_serKind = a})

-- | Spec holds the desired state of the Service (from the client).
serSpec :: Lens' Service (Maybe ServiceSpec)
serSpec = lens _serSpec (\ s a -> s{_serSpec = a})

-- | Metadata associated with this Service, including name, namespace,
-- labels, and annotations. Cloud Run (fully managed) uses the following
-- annotation keys to configure features on a Service: *
-- \`run.googleapis.com\/ingress\` sets the ingress settings for the
-- Service. See [the ingress settings
-- documentation](\/run\/docs\/securing\/ingress) for details on
-- configuring ingress settings. * \`run.googleapis.com\/ingress-status\`
-- is output-only and contains the currently active ingress settings for
-- the Service. \`run.googleapis.com\/ingress-status\` may differ from
-- \`run.googleapis.com\/ingress\` while the system is processing a change
-- to \`run.googleapis.com\/ingress\` or if the system failed to process a
-- change to \`run.googleapis.com\/ingress\`. When the system has processed
-- all changes successfully \`run.googleapis.com\/ingress-status\` and
-- \`run.googleapis.com\/ingress\` are equal.
serMetadata :: Lens' Service (Maybe ObjectMeta)
serMetadata
  = lens _serMetadata (\ s a -> s{_serMetadata = a})

instance FromJSON Service where
        parseJSON
          = withObject "Service"
              (\ o ->
                 Service' <$>
                   (o .:? "status") <*> (o .:? "apiVersion") <*>
                     (o .:? "kind")
                     <*> (o .:? "spec")
                     <*> (o .:? "metadata"))

instance ToJSON Service where
        toJSON Service'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _serStatus,
                  ("apiVersion" .=) <$> _serAPIVersion,
                  ("kind" .=) <$> _serKind, ("spec" .=) <$> _serSpec,
                  ("metadata" .=) <$> _serMetadata])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lName :: !(Maybe Text)
    , _lMetadata :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels :: !(Maybe LocationLabels)
    , _lLocationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lMetadata'
--
-- * 'lDisplayName'
--
-- * 'lLabels'
--
-- * 'lLocationId'
location
    :: Location
location =
  Location'
    { _lName = Nothing
    , _lMetadata = Nothing
    , _lDisplayName = Nothing
    , _lLabels = Nothing
    , _lLocationId = Nothing
    }


-- | Resource name for the location, which may vary between implementations.
-- For example: \`\"projects\/example-project\/locations\/us-east1\"\`
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Service-specific metadata. For example the available capacity at the
-- given location.
lMetadata :: Lens' Location (Maybe LocationMetadata)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

-- | The friendly name for this location, typically a nearby city name. For
-- example, \"Tokyo\".
lDisplayName :: Lens' Location (Maybe Text)
lDisplayName
  = lens _lDisplayName (\ s a -> s{_lDisplayName = a})

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
lLabels :: Lens' Location (Maybe LocationLabels)
lLabels = lens _lLabels (\ s a -> s{_lLabels = a})

-- | The canonical id for this location. For example: \`\"us-east1\"\`.
lLocationId :: Lens' Location (Maybe Text)
lLocationId
  = lens _lLocationId (\ s a -> s{_lLocationId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "name") <*> (o .:? "metadata") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName,
                  ("metadata" .=) <$> _lMetadata,
                  ("displayName" .=) <$> _lDisplayName,
                  ("labels" .=) <$> _lLabels,
                  ("locationId" .=) <$> _lLocationId])

-- | StatusCause provides more information about an api.Status failure,
-- including cases when multiple errors are encountered.
--
-- /See:/ 'statusCause' smart constructor.
data StatusCause =
  StatusCause'
    { _scField :: !(Maybe Text)
    , _scReason :: !(Maybe Text)
    , _scMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusCause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scField'
--
-- * 'scReason'
--
-- * 'scMessage'
statusCause
    :: StatusCause
statusCause =
  StatusCause' {_scField = Nothing, _scReason = Nothing, _scMessage = Nothing}


-- | The field of the resource that has caused this error, as named by its
-- JSON serialization. May include dot and postfix notation for nested
-- attributes. Arrays are zero-indexed. Fields may appear more than once in
-- an array of causes due to fields having multiple errors. Optional.
-- Examples: \"name\" - the field \"name\" on the current resource
-- \"items[0].name\" - the field \"name\" on the first array entry in
-- \"items\" +optional
scField :: Lens' StatusCause (Maybe Text)
scField = lens _scField (\ s a -> s{_scField = a})

-- | A machine-readable description of the cause of the error. If this value
-- is empty there is no information available. +optional
scReason :: Lens' StatusCause (Maybe Text)
scReason = lens _scReason (\ s a -> s{_scReason = a})

-- | A human-readable description of the cause of the error. This field may
-- be presented as-is to a reader. +optional
scMessage :: Lens' StatusCause (Maybe Text)
scMessage
  = lens _scMessage (\ s a -> s{_scMessage = a})

instance FromJSON StatusCause where
        parseJSON
          = withObject "StatusCause"
              (\ o ->
                 StatusCause' <$>
                   (o .:? "field") <*> (o .:? "reason") <*>
                     (o .:? "message"))

instance ToJSON StatusCause where
        toJSON StatusCause'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _scField,
                  ("reason" .=) <$> _scReason,
                  ("message" .=) <$> _scMessage])

-- | RouteStatus communicates the observed state of the Route (from the
-- controller).
--
-- /See:/ 'routeStatus' smart constructor.
data RouteStatus =
  RouteStatus'
    { _rsObservedGeneration :: !(Maybe (Textual Int32))
    , _rsURL :: !(Maybe Text)
    , _rsAddress :: !(Maybe Addressable)
    , _rsTraffic :: !(Maybe [TrafficTarget])
    , _rsConditions :: !(Maybe [GoogleCloudRunV1Condition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RouteStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsObservedGeneration'
--
-- * 'rsURL'
--
-- * 'rsAddress'
--
-- * 'rsTraffic'
--
-- * 'rsConditions'
routeStatus
    :: RouteStatus
routeStatus =
  RouteStatus'
    { _rsObservedGeneration = Nothing
    , _rsURL = Nothing
    , _rsAddress = Nothing
    , _rsTraffic = Nothing
    , _rsConditions = Nothing
    }


-- | ObservedGeneration is the \'Generation\' of the Route that was last
-- processed by the controller. Clients polling for completed
-- reconciliation should poll until observedGeneration =
-- metadata.generation and the Ready condition\'s status is True or False.
-- Note that providing a trafficTarget that only has a configurationName
-- will result in a Route that does not increment either its
-- metadata.generation or its observedGeneration, as new \"latest ready\"
-- revisions from the Configuration are processed without an update to the
-- Route\'s spec.
rsObservedGeneration :: Lens' RouteStatus (Maybe Int32)
rsObservedGeneration
  = lens _rsObservedGeneration
      (\ s a -> s{_rsObservedGeneration = a})
      . mapping _Coerce

-- | URL holds the url that will distribute traffic over the provided traffic
-- targets. It generally has the form:
-- https:\/\/{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app
rsURL :: Lens' RouteStatus (Maybe Text)
rsURL = lens _rsURL (\ s a -> s{_rsURL = a})

-- | Similar to url, information on where the service is available on HTTP.
rsAddress :: Lens' RouteStatus (Maybe Addressable)
rsAddress
  = lens _rsAddress (\ s a -> s{_rsAddress = a})

-- | Traffic holds the configured traffic distribution. These entries will
-- always contain RevisionName references. When ConfigurationName appears
-- in the spec, this will hold the LatestReadyRevisionName that we last
-- observed.
rsTraffic :: Lens' RouteStatus [TrafficTarget]
rsTraffic
  = lens _rsTraffic (\ s a -> s{_rsTraffic = a}) .
      _Default
      . _Coerce

-- | Conditions communicates information about ongoing\/complete
-- reconciliation processes that bring the \"spec\" inline with the
-- observed state of the world.
rsConditions :: Lens' RouteStatus [GoogleCloudRunV1Condition]
rsConditions
  = lens _rsConditions (\ s a -> s{_rsConditions = a})
      . _Default
      . _Coerce

instance FromJSON RouteStatus where
        parseJSON
          = withObject "RouteStatus"
              (\ o ->
                 RouteStatus' <$>
                   (o .:? "observedGeneration") <*> (o .:? "url") <*>
                     (o .:? "address")
                     <*> (o .:? "traffic" .!= mempty)
                     <*> (o .:? "conditions" .!= mempty))

instance ToJSON RouteStatus where
        toJSON RouteStatus'{..}
          = object
              (catMaybes
                 [("observedGeneration" .=) <$> _rsObservedGeneration,
                  ("url" .=) <$> _rsURL, ("address" .=) <$> _rsAddress,
                  ("traffic" .=) <$> _rsTraffic,
                  ("conditions" .=) <$> _rsConditions])

-- | ConfigurationSpec holds the desired state of the Configuration (from the
-- client).
--
-- /See:/ 'configurationSpec' smart constructor.
newtype ConfigurationSpec =
  ConfigurationSpec'
    { _csTemplate :: Maybe RevisionTemplate
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigurationSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csTemplate'
configurationSpec
    :: ConfigurationSpec
configurationSpec = ConfigurationSpec' {_csTemplate = Nothing}


-- | Template holds the latest specification for the Revision to be stamped
-- out.
csTemplate :: Lens' ConfigurationSpec (Maybe RevisionTemplate)
csTemplate
  = lens _csTemplate (\ s a -> s{_csTemplate = a})

instance FromJSON ConfigurationSpec where
        parseJSON
          = withObject "ConfigurationSpec"
              (\ o -> ConfigurationSpec' <$> (o .:? "template"))

instance ToJSON ConfigurationSpec where
        toJSON ConfigurationSpec'{..}
          = object
              (catMaybes [("template" .=) <$> _csTemplate])

-- | Condition defines a generic condition for a Resource
--
-- /See:/ 'googleCloudRunV1Condition' smart constructor.
data GoogleCloudRunV1Condition =
  GoogleCloudRunV1Condition'
    { _gcrvcStatus :: !(Maybe Text)
    , _gcrvcSeverity :: !(Maybe Text)
    , _gcrvcReason :: !(Maybe Text)
    , _gcrvcLastTransitionTime :: !(Maybe DateTime')
    , _gcrvcType :: !(Maybe Text)
    , _gcrvcMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudRunV1Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrvcStatus'
--
-- * 'gcrvcSeverity'
--
-- * 'gcrvcReason'
--
-- * 'gcrvcLastTransitionTime'
--
-- * 'gcrvcType'
--
-- * 'gcrvcMessage'
googleCloudRunV1Condition
    :: GoogleCloudRunV1Condition
googleCloudRunV1Condition =
  GoogleCloudRunV1Condition'
    { _gcrvcStatus = Nothing
    , _gcrvcSeverity = Nothing
    , _gcrvcReason = Nothing
    , _gcrvcLastTransitionTime = Nothing
    , _gcrvcType = Nothing
    , _gcrvcMessage = Nothing
    }


-- | Status of the condition, one of True, False, Unknown.
gcrvcStatus :: Lens' GoogleCloudRunV1Condition (Maybe Text)
gcrvcStatus
  = lens _gcrvcStatus (\ s a -> s{_gcrvcStatus = a})

-- | Optional. How to interpret failures of this condition, one of Error,
-- Warning, Info
gcrvcSeverity :: Lens' GoogleCloudRunV1Condition (Maybe Text)
gcrvcSeverity
  = lens _gcrvcSeverity
      (\ s a -> s{_gcrvcSeverity = a})

-- | Optional. One-word CamelCase reason for the condition\'s last
-- transition.
gcrvcReason :: Lens' GoogleCloudRunV1Condition (Maybe Text)
gcrvcReason
  = lens _gcrvcReason (\ s a -> s{_gcrvcReason = a})

-- | Optional. Last time the condition transitioned from one status to
-- another.
gcrvcLastTransitionTime :: Lens' GoogleCloudRunV1Condition (Maybe UTCTime)
gcrvcLastTransitionTime
  = lens _gcrvcLastTransitionTime
      (\ s a -> s{_gcrvcLastTransitionTime = a})
      . mapping _DateTime

-- | type is used to communicate the status of the reconciliation process.
-- See also:
-- https:\/\/github.com\/knative\/serving\/blob\/master\/docs\/spec\/errors.md#error-conditions-and-reporting
-- Types common to all resources include: * \"Ready\": True when the
-- Resource is ready.
gcrvcType :: Lens' GoogleCloudRunV1Condition (Maybe Text)
gcrvcType
  = lens _gcrvcType (\ s a -> s{_gcrvcType = a})

-- | Optional. Human readable message indicating details about the current
-- status.
gcrvcMessage :: Lens' GoogleCloudRunV1Condition (Maybe Text)
gcrvcMessage
  = lens _gcrvcMessage (\ s a -> s{_gcrvcMessage = a})

instance FromJSON GoogleCloudRunV1Condition where
        parseJSON
          = withObject "GoogleCloudRunV1Condition"
              (\ o ->
                 GoogleCloudRunV1Condition' <$>
                   (o .:? "status") <*> (o .:? "severity") <*>
                     (o .:? "reason")
                     <*> (o .:? "lastTransitionTime")
                     <*> (o .:? "type")
                     <*> (o .:? "message"))

instance ToJSON GoogleCloudRunV1Condition where
        toJSON GoogleCloudRunV1Condition'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _gcrvcStatus,
                  ("severity" .=) <$> _gcrvcSeverity,
                  ("reason" .=) <$> _gcrvcReason,
                  ("lastTransitionTime" .=) <$>
                    _gcrvcLastTransitionTime,
                  ("type" .=) <$> _gcrvcType,
                  ("message" .=) <$> _gcrvcMessage])

-- | A list of Authorized Domains.
--
-- /See:/ 'listAuthorizedDomainsResponse' smart constructor.
data ListAuthorizedDomainsResponse =
  ListAuthorizedDomainsResponse'
    { _ladrNextPageToken :: !(Maybe Text)
    , _ladrDomains :: !(Maybe [AuthorizedDomain])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAuthorizedDomainsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladrNextPageToken'
--
-- * 'ladrDomains'
listAuthorizedDomainsResponse
    :: ListAuthorizedDomainsResponse
listAuthorizedDomainsResponse =
  ListAuthorizedDomainsResponse'
    {_ladrNextPageToken = Nothing, _ladrDomains = Nothing}


-- | Continuation token for fetching the next page of results.
ladrNextPageToken :: Lens' ListAuthorizedDomainsResponse (Maybe Text)
ladrNextPageToken
  = lens _ladrNextPageToken
      (\ s a -> s{_ladrNextPageToken = a})

-- | The authorized domains belonging to the user.
ladrDomains :: Lens' ListAuthorizedDomainsResponse [AuthorizedDomain]
ladrDomains
  = lens _ladrDomains (\ s a -> s{_ladrDomains = a}) .
      _Default
      . _Coerce

instance FromJSON ListAuthorizedDomainsResponse where
        parseJSON
          = withObject "ListAuthorizedDomainsResponse"
              (\ o ->
                 ListAuthorizedDomainsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "domains" .!= mempty))

instance ToJSON ListAuthorizedDomainsResponse where
        toJSON ListAuthorizedDomainsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ladrNextPageToken,
                  ("domains" .=) <$> _ladrDomains])

-- | (Optional) Only memory and CPU are supported. Note: The only supported
-- values for CPU are \'1\', \'2\', and \'4\'. Setting 4 CPU requires at
-- least 2Gi of memory. Limits describes the maximum amount of compute
-- resources allowed. The values of the map is string form of the
-- \'quantity\' k8s type:
-- https:\/\/github.com\/kubernetes\/kubernetes\/blob\/master\/staging\/src\/k8s.io\/apimachinery\/pkg\/api\/resource\/quantity.go
--
-- /See:/ 'resourceRequirementsLimits' smart constructor.
newtype ResourceRequirementsLimits =
  ResourceRequirementsLimits'
    { _rrlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceRequirementsLimits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrlAddtional'
resourceRequirementsLimits
    :: HashMap Text Text -- ^ 'rrlAddtional'
    -> ResourceRequirementsLimits
resourceRequirementsLimits pRrlAddtional_ =
  ResourceRequirementsLimits' {_rrlAddtional = _Coerce # pRrlAddtional_}


rrlAddtional :: Lens' ResourceRequirementsLimits (HashMap Text Text)
rrlAddtional
  = lens _rrlAddtional (\ s a -> s{_rrlAddtional = a})
      . _Coerce

instance FromJSON ResourceRequirementsLimits where
        parseJSON
          = withObject "ResourceRequirementsLimits"
              (\ o ->
                 ResourceRequirementsLimits' <$> (parseJSONObject o))

instance ToJSON ResourceRequirementsLimits where
        toJSON = toJSON . _rrlAddtional

-- | Not supported by Cloud Run Volume represents a named volume in a
-- container.
--
-- /See:/ 'volume' smart constructor.
data Volume =
  Volume'
    { _vConfigMap :: !(Maybe ConfigMapVolumeSource)
    , _vSecret :: !(Maybe SecretVolumeSource)
    , _vName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Volume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vConfigMap'
--
-- * 'vSecret'
--
-- * 'vName'
volume
    :: Volume
volume = Volume' {_vConfigMap = Nothing, _vSecret = Nothing, _vName = Nothing}


vConfigMap :: Lens' Volume (Maybe ConfigMapVolumeSource)
vConfigMap
  = lens _vConfigMap (\ s a -> s{_vConfigMap = a})

vSecret :: Lens' Volume (Maybe SecretVolumeSource)
vSecret = lens _vSecret (\ s a -> s{_vSecret = a})

-- | Volume\'s name.
vName :: Lens' Volume (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

instance FromJSON Volume where
        parseJSON
          = withObject "Volume"
              (\ o ->
                 Volume' <$>
                   (o .:? "configMap") <*> (o .:? "secret") <*>
                     (o .:? "name"))

instance ToJSON Volume where
        toJSON Volume'{..}
          = object
              (catMaybes
                 [("configMap" .=) <$> _vConfigMap,
                  ("secret" .=) <$> _vSecret, ("name" .=) <$> _vName])

-- | k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all
-- persisted resources must have, which includes all objects users must
-- create.
--
-- /See:/ 'objectMeta' smart constructor.
data ObjectMeta =
  ObjectMeta'
    { _omGenerateName :: !(Maybe Text)
    , _omAnnotations :: !(Maybe ObjectMetaAnnotations)
    , _omDeletionTimestamp :: !(Maybe DateTime')
    , _omUid :: !(Maybe Text)
    , _omDeletionGracePeriodSeconds :: !(Maybe (Textual Int32))
    , _omResourceVersion :: !(Maybe Text)
    , _omFinalizers :: !(Maybe [Text])
    , _omNamespace :: !(Maybe Text)
    , _omOwnerReferences :: !(Maybe [OwnerReference])
    , _omSelfLink :: !(Maybe Text)
    , _omName :: !(Maybe Text)
    , _omCreationTimestamp :: !(Maybe DateTime')
    , _omClusterName :: !(Maybe Text)
    , _omLabels :: !(Maybe ObjectMetaLabels)
    , _omGeneration :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectMeta' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omGenerateName'
--
-- * 'omAnnotations'
--
-- * 'omDeletionTimestamp'
--
-- * 'omUid'
--
-- * 'omDeletionGracePeriodSeconds'
--
-- * 'omResourceVersion'
--
-- * 'omFinalizers'
--
-- * 'omNamespace'
--
-- * 'omOwnerReferences'
--
-- * 'omSelfLink'
--
-- * 'omName'
--
-- * 'omCreationTimestamp'
--
-- * 'omClusterName'
--
-- * 'omLabels'
--
-- * 'omGeneration'
objectMeta
    :: ObjectMeta
objectMeta =
  ObjectMeta'
    { _omGenerateName = Nothing
    , _omAnnotations = Nothing
    , _omDeletionTimestamp = Nothing
    , _omUid = Nothing
    , _omDeletionGracePeriodSeconds = Nothing
    , _omResourceVersion = Nothing
    , _omFinalizers = Nothing
    , _omNamespace = Nothing
    , _omOwnerReferences = Nothing
    , _omSelfLink = Nothing
    , _omName = Nothing
    , _omCreationTimestamp = Nothing
    , _omClusterName = Nothing
    , _omLabels = Nothing
    , _omGeneration = Nothing
    }


-- | (Optional) Not supported by Cloud Run GenerateName is an optional
-- prefix, used by the server, to generate a unique name ONLY IF the Name
-- field has not been provided. If this field is used, the name returned to
-- the client will be different than the name passed. This value will also
-- be combined with a unique suffix. The provided value has the same
-- validation rules as the Name field, and may be truncated by the length
-- of the suffix required to make the value unique on the server. If this
-- field is specified and the generated name exists, the server will NOT
-- return a 409 - instead, it will either return 201 Created or 500 with
-- Reason ServerTimeout indicating a unique name could not be found in the
-- time allotted, and the client should retry (optionally after the time
-- indicated in the Retry-After header). Applied only if Name is not
-- specified. More info:
-- https:\/\/git.k8s.io\/community\/contributors\/devel\/api-conventions.md#idempotency
-- string generateName = 2;
omGenerateName :: Lens' ObjectMeta (Maybe Text)
omGenerateName
  = lens _omGenerateName
      (\ s a -> s{_omGenerateName = a})

-- | (Optional) Annotations is an unstructured key value map stored with a
-- resource that may be set by external tools to store and retrieve
-- arbitrary metadata. They are not queryable and should be preserved when
-- modifying objects. More info:
-- http:\/\/kubernetes.io\/docs\/user-guide\/annotations
omAnnotations :: Lens' ObjectMeta (Maybe ObjectMetaAnnotations)
omAnnotations
  = lens _omAnnotations
      (\ s a -> s{_omAnnotations = a})

-- | (Optional) Not supported by Cloud Run DeletionTimestamp is RFC 3339 date
-- and time at which this resource will be deleted. This field is set by
-- the server when a graceful deletion is requested by the user, and is not
-- directly settable by a client. The resource is expected to be deleted
-- (no longer visible from resource lists, and not reachable by name) after
-- the time in this field, once the finalizers list is empty. As long as
-- the finalizers list contains items, deletion is blocked. Once the
-- deletionTimestamp is set, this value may not be unset or be set further
-- into the future, although it may be shortened or the resource may be
-- deleted prior to this time. For example, a user may request that a pod
-- is deleted in 30 seconds. The Kubelet will react by sending a graceful
-- termination signal to the containers in the pod. After that 30 seconds,
-- the Kubelet will send a hard termination signal (SIGKILL) to the
-- container and after cleanup, remove the pod from the API. In the
-- presence of network partitions, this object may still exist after this
-- timestamp, until an administrator or automated process can determine the
-- resource is fully terminated. If not set, graceful deletion of the
-- object has not been requested. Populated by the system when a graceful
-- deletion is requested. Read-only. More info:
-- https:\/\/git.k8s.io\/community\/contributors\/devel\/api-conventions.md#metadata
omDeletionTimestamp :: Lens' ObjectMeta (Maybe UTCTime)
omDeletionTimestamp
  = lens _omDeletionTimestamp
      (\ s a -> s{_omDeletionTimestamp = a})
      . mapping _DateTime

-- | (Optional) UID is the unique in time and space value for this object. It
-- is typically generated by the server on successful creation of a
-- resource and is not allowed to change on PUT operations. Populated by
-- the system. Read-only. More info:
-- http:\/\/kubernetes.io\/docs\/user-guide\/identifiers#uids
omUid :: Lens' ObjectMeta (Maybe Text)
omUid = lens _omUid (\ s a -> s{_omUid = a})

-- | (Optional) Not supported by Cloud Run Number of seconds allowed for this
-- object to gracefully terminate before it will be removed from the
-- system. Only set when deletionTimestamp is also set. May only be
-- shortened. Read-only.
omDeletionGracePeriodSeconds :: Lens' ObjectMeta (Maybe Int32)
omDeletionGracePeriodSeconds
  = lens _omDeletionGracePeriodSeconds
      (\ s a -> s{_omDeletionGracePeriodSeconds = a})
      . mapping _Coerce

-- | Optional. An opaque value that represents the internal version of this
-- object that can be used by clients to determine when objects have
-- changed. May be used for optimistic concurrency, change detection, and
-- the watch operation on a resource or set of resources. Clients must
-- treat these values as opaque and passed unmodified back to the server or
-- omit the value to disable conflict-detection. They may only be valid for
-- a particular resource or set of resources. Populated by the system.
-- Read-only. Value must be treated as opaque by clients or omitted. More
-- info:
-- https:\/\/git.k8s.io\/community\/contributors\/devel\/sig-architecture\/api-conventions.md#concurrency-control-and-consistency
omResourceVersion :: Lens' ObjectMeta (Maybe Text)
omResourceVersion
  = lens _omResourceVersion
      (\ s a -> s{_omResourceVersion = a})

-- | (Optional) Not supported by Cloud Run Must be empty before the object is
-- deleted from the registry. Each entry is an identifier for the
-- responsible component that will remove the entry from the list. If the
-- deletionTimestamp of the object is non-nil, entries in this list can
-- only be removed. +patchStrategy=merge
omFinalizers :: Lens' ObjectMeta [Text]
omFinalizers
  = lens _omFinalizers (\ s a -> s{_omFinalizers = a})
      . _Default
      . _Coerce

-- | Namespace defines the space within each name must be unique, within a
-- Cloud Run region. In Cloud Run the namespace must be equal to either the
-- project ID or project number.
omNamespace :: Lens' ObjectMeta (Maybe Text)
omNamespace
  = lens _omNamespace (\ s a -> s{_omNamespace = a})

-- | (Optional) Not supported by Cloud Run List of objects that own this
-- object. If ALL objects in the list have been deleted, this object will
-- be garbage collected.
omOwnerReferences :: Lens' ObjectMeta [OwnerReference]
omOwnerReferences
  = lens _omOwnerReferences
      (\ s a -> s{_omOwnerReferences = a})
      . _Default
      . _Coerce

-- | (Optional) SelfLink is a URL representing this object. Populated by the
-- system. Read-only. string selfLink = 4;
omSelfLink :: Lens' ObjectMeta (Maybe Text)
omSelfLink
  = lens _omSelfLink (\ s a -> s{_omSelfLink = a})

-- | Name must be unique within a namespace, within a Cloud Run region. Is
-- required when creating resources, although some resources may allow a
-- client to request the generation of an appropriate name automatically.
-- Name is primarily intended for creation idempotence and configuration
-- definition. Cannot be updated. More info:
-- http:\/\/kubernetes.io\/docs\/user-guide\/identifiers#names +optional
omName :: Lens' ObjectMeta (Maybe Text)
omName = lens _omName (\ s a -> s{_omName = a})

-- | (Optional) CreationTimestamp is a timestamp representing the server time
-- when this object was created. It is not guaranteed to be set in
-- happens-before order across separate operations. Clients may not set
-- this value. It is represented in RFC3339 form and is in UTC. Populated
-- by the system. Read-only. Null for lists. More info:
-- https:\/\/git.k8s.io\/community\/contributors\/devel\/api-conventions.md#metadata
omCreationTimestamp :: Lens' ObjectMeta (Maybe UTCTime)
omCreationTimestamp
  = lens _omCreationTimestamp
      (\ s a -> s{_omCreationTimestamp = a})
      . mapping _DateTime

-- | (Optional) Not supported by Cloud Run The name of the cluster which the
-- object belongs to. This is used to distinguish resources with same name
-- and namespace in different clusters. This field is not set anywhere
-- right now and apiserver is going to ignore it if set in create or update
-- request.
omClusterName :: Lens' ObjectMeta (Maybe Text)
omClusterName
  = lens _omClusterName
      (\ s a -> s{_omClusterName = a})

-- | (Optional) Map of string keys and values that can be used to organize
-- and categorize (scope and select) objects. May match selectors of
-- replication controllers and routes. More info:
-- http:\/\/kubernetes.io\/docs\/user-guide\/labels
omLabels :: Lens' ObjectMeta (Maybe ObjectMetaLabels)
omLabels = lens _omLabels (\ s a -> s{_omLabels = a})

-- | (Optional) A sequence number representing a specific generation of the
-- desired state. Populated by the system. Read-only.
omGeneration :: Lens' ObjectMeta (Maybe Int32)
omGeneration
  = lens _omGeneration (\ s a -> s{_omGeneration = a})
      . mapping _Coerce

instance FromJSON ObjectMeta where
        parseJSON
          = withObject "ObjectMeta"
              (\ o ->
                 ObjectMeta' <$>
                   (o .:? "generateName") <*> (o .:? "annotations") <*>
                     (o .:? "deletionTimestamp")
                     <*> (o .:? "uid")
                     <*> (o .:? "deletionGracePeriodSeconds")
                     <*> (o .:? "resourceVersion")
                     <*> (o .:? "finalizers" .!= mempty)
                     <*> (o .:? "namespace")
                     <*> (o .:? "ownerReferences" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "clusterName")
                     <*> (o .:? "labels")
                     <*> (o .:? "generation"))

instance ToJSON ObjectMeta where
        toJSON ObjectMeta'{..}
          = object
              (catMaybes
                 [("generateName" .=) <$> _omGenerateName,
                  ("annotations" .=) <$> _omAnnotations,
                  ("deletionTimestamp" .=) <$> _omDeletionTimestamp,
                  ("uid" .=) <$> _omUid,
                  ("deletionGracePeriodSeconds" .=) <$>
                    _omDeletionGracePeriodSeconds,
                  ("resourceVersion" .=) <$> _omResourceVersion,
                  ("finalizers" .=) <$> _omFinalizers,
                  ("namespace" .=) <$> _omNamespace,
                  ("ownerReferences" .=) <$> _omOwnerReferences,
                  ("selfLink" .=) <$> _omSelfLink,
                  ("name" .=) <$> _omName,
                  ("creationTimestamp" .=) <$> _omCreationTimestamp,
                  ("clusterName" .=) <$> _omClusterName,
                  ("labels" .=) <$> _omLabels,
                  ("generation" .=) <$> _omGeneration])

-- | Not supported by Cloud Run Adapts a ConfigMap into a volume. The
-- contents of the target ConfigMap\'s Data field will be presented in a
-- volume as files using the keys in the Data field as the file names,
-- unless the items element is populated with specific mappings of keys to
-- paths.
--
-- /See:/ 'configMapVolumeSource' smart constructor.
data ConfigMapVolumeSource =
  ConfigMapVolumeSource'
    { _cmvsDefaultMode :: !(Maybe (Textual Int32))
    , _cmvsItems :: !(Maybe [KeyToPath])
    , _cmvsName :: !(Maybe Text)
    , _cmvsOptional :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigMapVolumeSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmvsDefaultMode'
--
-- * 'cmvsItems'
--
-- * 'cmvsName'
--
-- * 'cmvsOptional'
configMapVolumeSource
    :: ConfigMapVolumeSource
configMapVolumeSource =
  ConfigMapVolumeSource'
    { _cmvsDefaultMode = Nothing
    , _cmvsItems = Nothing
    , _cmvsName = Nothing
    , _cmvsOptional = Nothing
    }


-- | (Optional) Mode bits to use on created files by default. Must be a value
-- between 0 and 0777. Defaults to 0644. Directories within the path are
-- not affected by this setting. This might be in conflict with other
-- options that affect the file mode, like fsGroup, and the result can be
-- other mode bits set.
cmvsDefaultMode :: Lens' ConfigMapVolumeSource (Maybe Int32)
cmvsDefaultMode
  = lens _cmvsDefaultMode
      (\ s a -> s{_cmvsDefaultMode = a})
      . mapping _Coerce

-- | (Optional) If unspecified, each key-value pair in the Data field of the
-- referenced Secret will be projected into the volume as a file whose name
-- is the key and content is the value. If specified, the listed keys will
-- be projected into the specified paths, and unlisted keys will not be
-- present. If a key is specified that is not present in the Secret, the
-- volume setup will error unless it is marked optional.
cmvsItems :: Lens' ConfigMapVolumeSource [KeyToPath]
cmvsItems
  = lens _cmvsItems (\ s a -> s{_cmvsItems = a}) .
      _Default
      . _Coerce

-- | Name of the config.
cmvsName :: Lens' ConfigMapVolumeSource (Maybe Text)
cmvsName = lens _cmvsName (\ s a -> s{_cmvsName = a})

-- | (Optional) Specify whether the Secret or its keys must be defined.
cmvsOptional :: Lens' ConfigMapVolumeSource (Maybe Bool)
cmvsOptional
  = lens _cmvsOptional (\ s a -> s{_cmvsOptional = a})

instance FromJSON ConfigMapVolumeSource where
        parseJSON
          = withObject "ConfigMapVolumeSource"
              (\ o ->
                 ConfigMapVolumeSource' <$>
                   (o .:? "defaultMode") <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "optional"))

instance ToJSON ConfigMapVolumeSource where
        toJSON ConfigMapVolumeSource'{..}
          = object
              (catMaybes
                 [("defaultMode" .=) <$> _cmvsDefaultMode,
                  ("items" .=) <$> _cmvsItems,
                  ("name" .=) <$> _cmvsName,
                  ("optional" .=) <$> _cmvsOptional])

-- | The secret\'s value will be presented as the content of a file whose
-- name is defined in the item path. If no items are defined, the name of
-- the file is the secret_name. The contents of the target Secret\'s Data
-- field will be presented in a volume as files using the keys in the Data
-- field as the file names.
--
-- /See:/ 'secretVolumeSource' smart constructor.
data SecretVolumeSource =
  SecretVolumeSource'
    { _svsDefaultMode :: !(Maybe (Textual Int32))
    , _svsItems :: !(Maybe [KeyToPath])
    , _svsSecretName :: !(Maybe Text)
    , _svsOptional :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretVolumeSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svsDefaultMode'
--
-- * 'svsItems'
--
-- * 'svsSecretName'
--
-- * 'svsOptional'
secretVolumeSource
    :: SecretVolumeSource
secretVolumeSource =
  SecretVolumeSource'
    { _svsDefaultMode = Nothing
    , _svsItems = Nothing
    , _svsSecretName = Nothing
    , _svsOptional = Nothing
    }


-- | (Optional) Mode bits to use on created files by default. Must be a value
-- between 0000 and 0777. Defaults to 0644. Directories within the path are
-- not affected by this setting. This might be in conflict with other
-- options that affect the file mode, like fsGroup, and the result can be
-- other mode bits set. NOTE: This is an integer representation of the mode
-- bits. So, the integer value should look exactly as the chmod numeric
-- notation, i.e. Unix chmod \"777\" (a=rwx) should have the integer value
-- 777.
svsDefaultMode :: Lens' SecretVolumeSource (Maybe Int32)
svsDefaultMode
  = lens _svsDefaultMode
      (\ s a -> s{_svsDefaultMode = a})
      . mapping _Coerce

-- | (Optional) If unspecified, the volume will expose a file whose name is
-- the secret_name. If specified, the key will be used as the version to
-- fetch from Cloud Secret Manager and the path will be the name of the
-- file exposed in the volume. When items are defined, they must specify a
-- key and a path. If unspecified, each key-value pair in the Data field of
-- the referenced Secret will be projected into the volume as a file whose
-- name is the key and content is the value. If specified, the listed keys
-- will be projected into the specified paths, and unlisted keys will not
-- be present. If a key is specified that is not present in the Secret, the
-- volume setup will error unless it is marked optional.
svsItems :: Lens' SecretVolumeSource [KeyToPath]
svsItems
  = lens _svsItems (\ s a -> s{_svsItems = a}) .
      _Default
      . _Coerce

-- | The name of the secret in Cloud Secret Manager. By default, the secret
-- is assumed to be in the same project. If the secret is in another
-- project, you must define an alias. An alias definition has the form:
-- :projects\/\/secrets\/. If multiple alias definitions are needed, they
-- must be separated by commas. The alias definitions must be set on the
-- run.googleapis.com\/secrets annotation. Name of the secret in the
-- container\'s namespace to use.
svsSecretName :: Lens' SecretVolumeSource (Maybe Text)
svsSecretName
  = lens _svsSecretName
      (\ s a -> s{_svsSecretName = a})

-- | (Optional) Specify whether the Secret or its keys must be defined.
svsOptional :: Lens' SecretVolumeSource (Maybe Bool)
svsOptional
  = lens _svsOptional (\ s a -> s{_svsOptional = a})

instance FromJSON SecretVolumeSource where
        parseJSON
          = withObject "SecretVolumeSource"
              (\ o ->
                 SecretVolumeSource' <$>
                   (o .:? "defaultMode") <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "secretName")
                     <*> (o .:? "optional"))

instance ToJSON SecretVolumeSource where
        toJSON SecretVolumeSource'{..}
          = object
              (catMaybes
                 [("defaultMode" .=) <$> _svsDefaultMode,
                  ("items" .=) <$> _svsItems,
                  ("secretName" .=) <$> _svsSecretName,
                  ("optional" .=) <$> _svsOptional])

-- | ListRoutesResponse is a list of Route resources.
--
-- /See:/ 'listRoutesResponse' smart constructor.
data ListRoutesResponse =
  ListRoutesResponse'
    { _lrrAPIVersion :: !(Maybe Text)
    , _lrrKind :: !(Maybe Text)
    , _lrrItems :: !(Maybe [Route])
    , _lrrUnreachable :: !(Maybe [Text])
    , _lrrMetadata :: !(Maybe ListMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListRoutesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrAPIVersion'
--
-- * 'lrrKind'
--
-- * 'lrrItems'
--
-- * 'lrrUnreachable'
--
-- * 'lrrMetadata'
listRoutesResponse
    :: ListRoutesResponse
listRoutesResponse =
  ListRoutesResponse'
    { _lrrAPIVersion = Nothing
    , _lrrKind = Nothing
    , _lrrItems = Nothing
    , _lrrUnreachable = Nothing
    , _lrrMetadata = Nothing
    }


-- | The API version for this call such as \"serving.knative.dev\/v1\".
lrrAPIVersion :: Lens' ListRoutesResponse (Maybe Text)
lrrAPIVersion
  = lens _lrrAPIVersion
      (\ s a -> s{_lrrAPIVersion = a})

-- | The kind of this resource, in this case always \"RouteList\".
lrrKind :: Lens' ListRoutesResponse (Maybe Text)
lrrKind = lens _lrrKind (\ s a -> s{_lrrKind = a})

-- | List of Routes.
lrrItems :: Lens' ListRoutesResponse [Route]
lrrItems
  = lens _lrrItems (\ s a -> s{_lrrItems = a}) .
      _Default
      . _Coerce

-- | Locations that could not be reached.
lrrUnreachable :: Lens' ListRoutesResponse [Text]
lrrUnreachable
  = lens _lrrUnreachable
      (\ s a -> s{_lrrUnreachable = a})
      . _Default
      . _Coerce

-- | Metadata associated with this Route list.
lrrMetadata :: Lens' ListRoutesResponse (Maybe ListMeta)
lrrMetadata
  = lens _lrrMetadata (\ s a -> s{_lrrMetadata = a})

instance FromJSON ListRoutesResponse where
        parseJSON
          = withObject "ListRoutesResponse"
              (\ o ->
                 ListRoutesResponse' <$>
                   (o .:? "apiVersion") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "unreachable" .!= mempty)
                     <*> (o .:? "metadata"))

instance ToJSON ListRoutesResponse where
        toJSON ListRoutesResponse'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _lrrAPIVersion,
                  ("kind" .=) <$> _lrrKind, ("items" .=) <$> _lrrItems,
                  ("unreachable" .=) <$> _lrrUnreachable,
                  ("metadata" .=) <$> _lrrMetadata])

-- | RevisionTemplateSpec describes the data a revision should have when
-- created from a template. Based on:
-- https:\/\/github.com\/kubernetes\/api\/blob\/e771f807\/core\/v1\/types.go#L3179-L3190
--
-- /See:/ 'revisionTemplate' smart constructor.
data RevisionTemplate =
  RevisionTemplate'
    { _rtSpec :: !(Maybe RevisionSpec)
    , _rtMetadata :: !(Maybe ObjectMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevisionTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtSpec'
--
-- * 'rtMetadata'
revisionTemplate
    :: RevisionTemplate
revisionTemplate = RevisionTemplate' {_rtSpec = Nothing, _rtMetadata = Nothing}


-- | RevisionSpec holds the desired state of the Revision (from the client).
rtSpec :: Lens' RevisionTemplate (Maybe RevisionSpec)
rtSpec = lens _rtSpec (\ s a -> s{_rtSpec = a})

-- | Optional metadata for this Revision, including labels and annotations.
-- Name will be generated by the Configuration. The following annotation
-- keys set properties of the created revision: *
-- \`autoscaling.knative.dev\/minScale\` sets the minimum number of
-- instances. * \`autoscaling.knative.dev\/maxScale\` sets the maximum
-- number of instances. * \`run.googleapis.com\/cloudsql-instances\` sets
-- Cloud SQL connections. Multiple values should be comma separated. *
-- \`run.googleapis.com\/vpc-access-connector\` sets a Serverless VPC
-- Access connector. * \`run.googleapis.com\/vpc-access-egress\` sets VPC
-- egress. Supported values are \`all-traffic\`, \`all\` (deprecated), and
-- \`private-ranges-only\`. \`all-traffic\` and \`all\` provide the same
-- functionality. \`all\` is deprecated but will continue to be supported.
-- Prefer \`all-traffic\`.
rtMetadata :: Lens' RevisionTemplate (Maybe ObjectMeta)
rtMetadata
  = lens _rtMetadata (\ s a -> s{_rtMetadata = a})

instance FromJSON RevisionTemplate where
        parseJSON
          = withObject "RevisionTemplate"
              (\ o ->
                 RevisionTemplate' <$>
                   (o .:? "spec") <*> (o .:? "metadata"))

instance ToJSON RevisionTemplate where
        toJSON RevisionTemplate'{..}
          = object
              (catMaybes
                 [("spec" .=) <$> _rtSpec,
                  ("metadata" .=) <$> _rtMetadata])

-- | StatusDetails is a set of additional properties that MAY be set by the
-- server to provide additional information about a response. The Reason
-- field of a Status object defines what attributes will be set. Clients
-- must ignore fields that do not match the defined type of each attribute,
-- and should assume that any attribute may be empty, invalid, or under
-- defined.
--
-- /See:/ 'statusDetails' smart constructor.
data StatusDetails =
  StatusDetails'
    { _sdGroup :: !(Maybe Text)
    , _sdCauses :: !(Maybe [StatusCause])
    , _sdKind :: !(Maybe Text)
    , _sdUid :: !(Maybe Text)
    , _sdRetryAfterSeconds :: !(Maybe (Textual Int32))
    , _sdName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdGroup'
--
-- * 'sdCauses'
--
-- * 'sdKind'
--
-- * 'sdUid'
--
-- * 'sdRetryAfterSeconds'
--
-- * 'sdName'
statusDetails
    :: StatusDetails
statusDetails =
  StatusDetails'
    { _sdGroup = Nothing
    , _sdCauses = Nothing
    , _sdKind = Nothing
    , _sdUid = Nothing
    , _sdRetryAfterSeconds = Nothing
    , _sdName = Nothing
    }


-- | The group attribute of the resource associated with the status
-- StatusReason. +optional
sdGroup :: Lens' StatusDetails (Maybe Text)
sdGroup = lens _sdGroup (\ s a -> s{_sdGroup = a})

-- | The Causes array includes more details associated with the StatusReason
-- failure. Not all StatusReasons may provide detailed causes. +optional
sdCauses :: Lens' StatusDetails [StatusCause]
sdCauses
  = lens _sdCauses (\ s a -> s{_sdCauses = a}) .
      _Default
      . _Coerce

-- | The kind attribute of the resource associated with the status
-- StatusReason. On some operations may differ from the requested resource
-- Kind. More info:
-- https:\/\/git.k8s.io\/community\/contributors\/devel\/sig-architecture\/api-conventions.md#types-kinds
-- +optional
sdKind :: Lens' StatusDetails (Maybe Text)
sdKind = lens _sdKind (\ s a -> s{_sdKind = a})

-- | UID of the resource. (when there is a single resource which can be
-- described). More info:
-- http:\/\/kubernetes.io\/docs\/user-guide\/identifiers#uids +optional
sdUid :: Lens' StatusDetails (Maybe Text)
sdUid = lens _sdUid (\ s a -> s{_sdUid = a})

-- | If specified, the time in seconds before the operation should be
-- retried. Some errors may indicate the client must take an alternate
-- action - for those errors this field may indicate how long to wait
-- before taking the alternate action. +optional
sdRetryAfterSeconds :: Lens' StatusDetails (Maybe Int32)
sdRetryAfterSeconds
  = lens _sdRetryAfterSeconds
      (\ s a -> s{_sdRetryAfterSeconds = a})
      . mapping _Coerce

-- | The name attribute of the resource associated with the status
-- StatusReason (when there is a single name which can be described).
-- +optional
sdName :: Lens' StatusDetails (Maybe Text)
sdName = lens _sdName (\ s a -> s{_sdName = a})

instance FromJSON StatusDetails where
        parseJSON
          = withObject "StatusDetails"
              (\ o ->
                 StatusDetails' <$>
                   (o .:? "group") <*> (o .:? "causes" .!= mempty) <*>
                     (o .:? "kind")
                     <*> (o .:? "uid")
                     <*> (o .:? "retryAfterSeconds")
                     <*> (o .:? "name"))

instance ToJSON StatusDetails where
        toJSON StatusDetails'{..}
          = object
              (catMaybes
                 [("group" .=) <$> _sdGroup,
                  ("causes" .=) <$> _sdCauses, ("kind" .=) <$> _sdKind,
                  ("uid" .=) <$> _sdUid,
                  ("retryAfterSeconds" .=) <$> _sdRetryAfterSeconds,
                  ("name" .=) <$> _sdName])

-- | ResourceRequirements describes the compute resource requirements.
--
-- /See:/ 'resourceRequirements' smart constructor.
data ResourceRequirements =
  ResourceRequirements'
    { _rrLimits :: !(Maybe ResourceRequirementsLimits)
    , _rrRequests :: !(Maybe ResourceRequirementsRequests)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceRequirements' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrLimits'
--
-- * 'rrRequests'
resourceRequirements
    :: ResourceRequirements
resourceRequirements =
  ResourceRequirements' {_rrLimits = Nothing, _rrRequests = Nothing}


-- | (Optional) Only memory and CPU are supported. Note: The only supported
-- values for CPU are \'1\', \'2\', and \'4\'. Setting 4 CPU requires at
-- least 2Gi of memory. Limits describes the maximum amount of compute
-- resources allowed. The values of the map is string form of the
-- \'quantity\' k8s type:
-- https:\/\/github.com\/kubernetes\/kubernetes\/blob\/master\/staging\/src\/k8s.io\/apimachinery\/pkg\/api\/resource\/quantity.go
rrLimits :: Lens' ResourceRequirements (Maybe ResourceRequirementsLimits)
rrLimits = lens _rrLimits (\ s a -> s{_rrLimits = a})

-- | (Optional) Only memory and CPU are supported. Note: The only supported
-- values for CPU are \'1\' and \'2\'. Requests describes the minimum
-- amount of compute resources required. If Requests is omitted for a
-- container, it defaults to Limits if that is explicitly specified,
-- otherwise to an implementation-defined value. The values of the map is
-- string form of the \'quantity\' k8s type:
-- https:\/\/github.com\/kubernetes\/kubernetes\/blob\/master\/staging\/src\/k8s.io\/apimachinery\/pkg\/api\/resource\/quantity.go
rrRequests :: Lens' ResourceRequirements (Maybe ResourceRequirementsRequests)
rrRequests
  = lens _rrRequests (\ s a -> s{_rrRequests = a})

instance FromJSON ResourceRequirements where
        parseJSON
          = withObject "ResourceRequirements"
              (\ o ->
                 ResourceRequirements' <$>
                   (o .:? "limits") <*> (o .:? "requests"))

instance ToJSON ResourceRequirements where
        toJSON ResourceRequirements'{..}
          = object
              (catMaybes
                 [("limits" .=) <$> _rrLimits,
                  ("requests" .=) <$> _rrRequests])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
data SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprUpdateMask :: !(Maybe GFieldMask)
    , _siprPolicy :: !(Maybe Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprUpdateMask'
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
  SetIAMPolicyRequest' {_siprUpdateMask = Nothing, _siprPolicy = Nothing}


-- | OPTIONAL: A FieldMask specifying which fields of the policy to modify.
-- Only the fields in the mask will be modified. If no mask is provided,
-- the following default mask is used: \`paths: \"bindings, etag\"\`
siprUpdateMask :: Lens' SetIAMPolicyRequest (Maybe GFieldMask)
siprUpdateMask
  = lens _siprUpdateMask
      (\ s a -> s{_siprUpdateMask = a})

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o ->
                 SetIAMPolicyRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _siprUpdateMask,
                  ("policy" .=) <$> _siprPolicy])

-- | The desired state of the Domain Mapping.
--
-- /See:/ 'domainMAppingSpec' smart constructor.
data DomainMAppingSpec =
  DomainMAppingSpec'
    { _dmasRouteName :: !(Maybe Text)
    , _dmasCertificateMode :: !(Maybe DomainMAppingSpecCertificateMode)
    , _dmasForceOverride :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainMAppingSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmasRouteName'
--
-- * 'dmasCertificateMode'
--
-- * 'dmasForceOverride'
domainMAppingSpec
    :: DomainMAppingSpec
domainMAppingSpec =
  DomainMAppingSpec'
    { _dmasRouteName = Nothing
    , _dmasCertificateMode = Nothing
    , _dmasForceOverride = Nothing
    }


-- | The name of the Knative Route that this DomainMapping applies to. The
-- route must exist.
dmasRouteName :: Lens' DomainMAppingSpec (Maybe Text)
dmasRouteName
  = lens _dmasRouteName
      (\ s a -> s{_dmasRouteName = a})

-- | The mode of the certificate.
dmasCertificateMode :: Lens' DomainMAppingSpec (Maybe DomainMAppingSpecCertificateMode)
dmasCertificateMode
  = lens _dmasCertificateMode
      (\ s a -> s{_dmasCertificateMode = a})

-- | If set, the mapping will override any mapping set before this spec was
-- set. It is recommended that the user leaves this empty to receive an
-- error warning about a potential conflict and only set it once the
-- respective UI has given such a warning.
dmasForceOverride :: Lens' DomainMAppingSpec (Maybe Bool)
dmasForceOverride
  = lens _dmasForceOverride
      (\ s a -> s{_dmasForceOverride = a})

instance FromJSON DomainMAppingSpec where
        parseJSON
          = withObject "DomainMAppingSpec"
              (\ o ->
                 DomainMAppingSpec' <$>
                   (o .:? "routeName") <*> (o .:? "certificateMode") <*>
                     (o .:? "forceOverride"))

instance ToJSON DomainMAppingSpec where
        toJSON DomainMAppingSpec'{..}
          = object
              (catMaybes
                 [("routeName" .=) <$> _dmasRouteName,
                  ("certificateMode" .=) <$> _dmasCertificateMode,
                  ("forceOverride" .=) <$> _dmasForceOverride])

-- | Route is responsible for configuring ingress over a collection of
-- Revisions. Some of the Revisions a Route distributes traffic over may be
-- specified by referencing the Configuration responsible for creating
-- them; in these cases the Route is additionally responsible for
-- monitoring the Configuration for \"latest ready\" revision changes, and
-- smoothly rolling out latest revisions. See also:
-- https:\/\/github.com\/knative\/serving\/blob\/master\/docs\/spec\/overview.md#route
-- Cloud Run currently supports referencing a single Configuration to
-- automatically deploy the \"latest ready\" Revision from that
-- Configuration.
--
-- /See:/ 'route' smart constructor.
data Route =
  Route'
    { _rStatus :: !(Maybe RouteStatus)
    , _rAPIVersion :: !(Maybe Text)
    , _rKind :: !(Maybe Text)
    , _rSpec :: !(Maybe RouteSpec)
    , _rMetadata :: !(Maybe ObjectMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Route' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStatus'
--
-- * 'rAPIVersion'
--
-- * 'rKind'
--
-- * 'rSpec'
--
-- * 'rMetadata'
route
    :: Route
route =
  Route'
    { _rStatus = Nothing
    , _rAPIVersion = Nothing
    , _rKind = Nothing
    , _rSpec = Nothing
    , _rMetadata = Nothing
    }


-- | Status communicates the observed state of the Route (from the
-- controller).
rStatus :: Lens' Route (Maybe RouteStatus)
rStatus = lens _rStatus (\ s a -> s{_rStatus = a})

-- | The API version for this call such as \"serving.knative.dev\/v1\".
rAPIVersion :: Lens' Route (Maybe Text)
rAPIVersion
  = lens _rAPIVersion (\ s a -> s{_rAPIVersion = a})

-- | The kind of this resource, in this case always \"Route\".
rKind :: Lens' Route (Maybe Text)
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | Spec holds the desired state of the Route (from the client).
rSpec :: Lens' Route (Maybe RouteSpec)
rSpec = lens _rSpec (\ s a -> s{_rSpec = a})

-- | Metadata associated with this Route, including name, namespace, labels,
-- and annotations.
rMetadata :: Lens' Route (Maybe ObjectMeta)
rMetadata
  = lens _rMetadata (\ s a -> s{_rMetadata = a})

instance FromJSON Route where
        parseJSON
          = withObject "Route"
              (\ o ->
                 Route' <$>
                   (o .:? "status") <*> (o .:? "apiVersion") <*>
                     (o .:? "kind")
                     <*> (o .:? "spec")
                     <*> (o .:? "metadata"))

instance ToJSON Route where
        toJSON Route'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rStatus,
                  ("apiVersion" .=) <$> _rAPIVersion,
                  ("kind" .=) <$> _rKind, ("spec" .=) <$> _rSpec,
                  ("metadata" .=) <$> _rMetadata])

-- | Not supported by Cloud Run SecurityContext holds security configuration
-- that will be applied to a container. Some fields are present in both
-- SecurityContext and PodSecurityContext. When both are set, the values in
-- SecurityContext take precedence.
--
-- /See:/ 'securityContext' smart constructor.
newtype SecurityContext =
  SecurityContext'
    { _scRunAsUser :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecurityContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scRunAsUser'
securityContext
    :: SecurityContext
securityContext = SecurityContext' {_scRunAsUser = Nothing}


-- | (Optional) The UID to run the entrypoint of the container process.
-- Defaults to user specified in image metadata if unspecified. May also be
-- set in PodSecurityContext. If set in both SecurityContext and
-- PodSecurityContext, the value specified in SecurityContext takes
-- precedence.
scRunAsUser :: Lens' SecurityContext (Maybe Int32)
scRunAsUser
  = lens _scRunAsUser (\ s a -> s{_scRunAsUser = a}) .
      mapping _Coerce

instance FromJSON SecurityContext where
        parseJSON
          = withObject "SecurityContext"
              (\ o -> SecurityContext' <$> (o .:? "runAsUser"))

instance ToJSON SecurityContext where
        toJSON SecurityContext'{..}
          = object
              (catMaybes [("runAsUser" .=) <$> _scRunAsUser])

-- | The current state of the Service. Output only.
--
-- /See:/ 'serviceStatus' smart constructor.
data ServiceStatus =
  ServiceStatus'
    { _ssLatestCreatedRevisionName :: !(Maybe Text)
    , _ssObservedGeneration :: !(Maybe (Textual Int32))
    , _ssURL :: !(Maybe Text)
    , _ssAddress :: !(Maybe Addressable)
    , _ssLatestReadyRevisionName :: !(Maybe Text)
    , _ssTraffic :: !(Maybe [TrafficTarget])
    , _ssConditions :: !(Maybe [GoogleCloudRunV1Condition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssLatestCreatedRevisionName'
--
-- * 'ssObservedGeneration'
--
-- * 'ssURL'
--
-- * 'ssAddress'
--
-- * 'ssLatestReadyRevisionName'
--
-- * 'ssTraffic'
--
-- * 'ssConditions'
serviceStatus
    :: ServiceStatus
serviceStatus =
  ServiceStatus'
    { _ssLatestCreatedRevisionName = Nothing
    , _ssObservedGeneration = Nothing
    , _ssURL = Nothing
    , _ssAddress = Nothing
    , _ssLatestReadyRevisionName = Nothing
    , _ssTraffic = Nothing
    , _ssConditions = Nothing
    }


-- | From ConfigurationStatus. LatestCreatedRevisionName is the last revision
-- that was created from this Service\'s Configuration. It might not be
-- ready yet, for that use LatestReadyRevisionName.
ssLatestCreatedRevisionName :: Lens' ServiceStatus (Maybe Text)
ssLatestCreatedRevisionName
  = lens _ssLatestCreatedRevisionName
      (\ s a -> s{_ssLatestCreatedRevisionName = a})

-- | ObservedGeneration is the \'Generation\' of the Route that was last
-- processed by the controller. Clients polling for completed
-- reconciliation should poll until observedGeneration =
-- metadata.generation and the Ready condition\'s status is True or False.
ssObservedGeneration :: Lens' ServiceStatus (Maybe Int32)
ssObservedGeneration
  = lens _ssObservedGeneration
      (\ s a -> s{_ssObservedGeneration = a})
      . mapping _Coerce

-- | From RouteStatus. URL holds the url that will distribute traffic over
-- the provided traffic targets. It generally has the form
-- https:\/\/{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app
ssURL :: Lens' ServiceStatus (Maybe Text)
ssURL = lens _ssURL (\ s a -> s{_ssURL = a})

-- | From RouteStatus. Similar to url, information on where the service is
-- available on HTTP.
ssAddress :: Lens' ServiceStatus (Maybe Addressable)
ssAddress
  = lens _ssAddress (\ s a -> s{_ssAddress = a})

-- | From ConfigurationStatus. LatestReadyRevisionName holds the name of the
-- latest Revision stamped out from this Service\'s Configuration that has
-- had its \"Ready\" condition become \"True\".
ssLatestReadyRevisionName :: Lens' ServiceStatus (Maybe Text)
ssLatestReadyRevisionName
  = lens _ssLatestReadyRevisionName
      (\ s a -> s{_ssLatestReadyRevisionName = a})

-- | From RouteStatus. Traffic holds the configured traffic distribution.
-- These entries will always contain RevisionName references. When
-- ConfigurationName appears in the spec, this will hold the
-- LatestReadyRevisionName that we last observed.
ssTraffic :: Lens' ServiceStatus [TrafficTarget]
ssTraffic
  = lens _ssTraffic (\ s a -> s{_ssTraffic = a}) .
      _Default
      . _Coerce

-- | Conditions communicates information about ongoing\/complete
-- reconciliation processes that bring the \"spec\" inline with the
-- observed state of the world. Service-specific conditions include: *
-- \"ConfigurationsReady\": true when the underlying Configuration is
-- ready. * \"RoutesReady\": true when the underlying Route is ready. *
-- \"Ready\": true when both the underlying Route and Configuration are
-- ready.
ssConditions :: Lens' ServiceStatus [GoogleCloudRunV1Condition]
ssConditions
  = lens _ssConditions (\ s a -> s{_ssConditions = a})
      . _Default
      . _Coerce

instance FromJSON ServiceStatus where
        parseJSON
          = withObject "ServiceStatus"
              (\ o ->
                 ServiceStatus' <$>
                   (o .:? "latestCreatedRevisionName") <*>
                     (o .:? "observedGeneration")
                     <*> (o .:? "url")
                     <*> (o .:? "address")
                     <*> (o .:? "latestReadyRevisionName")
                     <*> (o .:? "traffic" .!= mempty)
                     <*> (o .:? "conditions" .!= mempty))

instance ToJSON ServiceStatus where
        toJSON ServiceStatus'{..}
          = object
              (catMaybes
                 [("latestCreatedRevisionName" .=) <$>
                    _ssLatestCreatedRevisionName,
                  ("observedGeneration" .=) <$> _ssObservedGeneration,
                  ("url" .=) <$> _ssURL, ("address" .=) <$> _ssAddress,
                  ("latestReadyRevisionName" .=) <$>
                    _ssLatestReadyRevisionName,
                  ("traffic" .=) <$> _ssTraffic,
                  ("conditions" .=) <$> _ssConditions])

-- | Resource to hold the state and status of a user\'s domain mapping. NOTE:
-- This resource is currently in Beta.
--
-- /See:/ 'domainMApping' smart constructor.
data DomainMApping =
  DomainMApping'
    { _dmaStatus :: !(Maybe DomainMAppingStatus)
    , _dmaAPIVersion :: !(Maybe Text)
    , _dmaKind :: !(Maybe Text)
    , _dmaSpec :: !(Maybe DomainMAppingSpec)
    , _dmaMetadata :: !(Maybe ObjectMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainMApping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmaStatus'
--
-- * 'dmaAPIVersion'
--
-- * 'dmaKind'
--
-- * 'dmaSpec'
--
-- * 'dmaMetadata'
domainMApping
    :: DomainMApping
domainMApping =
  DomainMApping'
    { _dmaStatus = Nothing
    , _dmaAPIVersion = Nothing
    , _dmaKind = Nothing
    , _dmaSpec = Nothing
    , _dmaMetadata = Nothing
    }


-- | The current status of the DomainMapping.
dmaStatus :: Lens' DomainMApping (Maybe DomainMAppingStatus)
dmaStatus
  = lens _dmaStatus (\ s a -> s{_dmaStatus = a})

-- | The API version for this call such as \"domains.cloudrun.com\/v1\".
dmaAPIVersion :: Lens' DomainMApping (Maybe Text)
dmaAPIVersion
  = lens _dmaAPIVersion
      (\ s a -> s{_dmaAPIVersion = a})

-- | The kind of resource, in this case \"DomainMapping\".
dmaKind :: Lens' DomainMApping (Maybe Text)
dmaKind = lens _dmaKind (\ s a -> s{_dmaKind = a})

-- | The spec for this DomainMapping.
dmaSpec :: Lens' DomainMApping (Maybe DomainMAppingSpec)
dmaSpec = lens _dmaSpec (\ s a -> s{_dmaSpec = a})

-- | Metadata associated with this BuildTemplate.
dmaMetadata :: Lens' DomainMApping (Maybe ObjectMeta)
dmaMetadata
  = lens _dmaMetadata (\ s a -> s{_dmaMetadata = a})

instance FromJSON DomainMApping where
        parseJSON
          = withObject "DomainMApping"
              (\ o ->
                 DomainMApping' <$>
                   (o .:? "status") <*> (o .:? "apiVersion") <*>
                     (o .:? "kind")
                     <*> (o .:? "spec")
                     <*> (o .:? "metadata"))

instance ToJSON DomainMApping where
        toJSON DomainMApping'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _dmaStatus,
                  ("apiVersion" .=) <$> _dmaAPIVersion,
                  ("kind" .=) <$> _dmaKind, ("spec" .=) <$> _dmaSpec,
                  ("metadata" .=) <$> _dmaMetadata])

-- | ConfigurationStatus communicates the observed state of the Configuration
-- (from the controller).
--
-- /See:/ 'configurationStatus' smart constructor.
data ConfigurationStatus =
  ConfigurationStatus'
    { _csLatestCreatedRevisionName :: !(Maybe Text)
    , _csObservedGeneration :: !(Maybe (Textual Int32))
    , _csLatestReadyRevisionName :: !(Maybe Text)
    , _csConditions :: !(Maybe [GoogleCloudRunV1Condition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigurationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csLatestCreatedRevisionName'
--
-- * 'csObservedGeneration'
--
-- * 'csLatestReadyRevisionName'
--
-- * 'csConditions'
configurationStatus
    :: ConfigurationStatus
configurationStatus =
  ConfigurationStatus'
    { _csLatestCreatedRevisionName = Nothing
    , _csObservedGeneration = Nothing
    , _csLatestReadyRevisionName = Nothing
    , _csConditions = Nothing
    }


-- | LatestCreatedRevisionName is the last revision that was created from
-- this Configuration. It might not be ready yet, for that use
-- LatestReadyRevisionName.
csLatestCreatedRevisionName :: Lens' ConfigurationStatus (Maybe Text)
csLatestCreatedRevisionName
  = lens _csLatestCreatedRevisionName
      (\ s a -> s{_csLatestCreatedRevisionName = a})

-- | ObservedGeneration is the \'Generation\' of the Configuration that was
-- last processed by the controller. The observed generation is updated
-- even if the controller failed to process the spec and create the
-- Revision. Clients polling for completed reconciliation should poll until
-- observedGeneration = metadata.generation, and the Ready condition\'s
-- status is True or False.
csObservedGeneration :: Lens' ConfigurationStatus (Maybe Int32)
csObservedGeneration
  = lens _csObservedGeneration
      (\ s a -> s{_csObservedGeneration = a})
      . mapping _Coerce

-- | LatestReadyRevisionName holds the name of the latest Revision stamped
-- out from this Configuration that has had its \"Ready\" condition become
-- \"True\".
csLatestReadyRevisionName :: Lens' ConfigurationStatus (Maybe Text)
csLatestReadyRevisionName
  = lens _csLatestReadyRevisionName
      (\ s a -> s{_csLatestReadyRevisionName = a})

-- | Conditions communicates information about ongoing\/complete
-- reconciliation processes that bring the \"spec\" inline with the
-- observed state of the world.
csConditions :: Lens' ConfigurationStatus [GoogleCloudRunV1Condition]
csConditions
  = lens _csConditions (\ s a -> s{_csConditions = a})
      . _Default
      . _Coerce

instance FromJSON ConfigurationStatus where
        parseJSON
          = withObject "ConfigurationStatus"
              (\ o ->
                 ConfigurationStatus' <$>
                   (o .:? "latestCreatedRevisionName") <*>
                     (o .:? "observedGeneration")
                     <*> (o .:? "latestReadyRevisionName")
                     <*> (o .:? "conditions" .!= mempty))

instance ToJSON ConfigurationStatus where
        toJSON ConfigurationStatus'{..}
          = object
              (catMaybes
                 [("latestCreatedRevisionName" .=) <$>
                    _csLatestCreatedRevisionName,
                  ("observedGeneration" .=) <$> _csObservedGeneration,
                  ("latestReadyRevisionName" .=) <$>
                    _csLatestReadyRevisionName,
                  ("conditions" .=) <$> _csConditions])

-- | RouteSpec holds the desired state of the Route (from the client).
--
-- /See:/ 'routeSpec' smart constructor.
newtype RouteSpec =
  RouteSpec'
    { _rTraffic :: Maybe [TrafficTarget]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RouteSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rTraffic'
routeSpec
    :: RouteSpec
routeSpec = RouteSpec' {_rTraffic = Nothing}


-- | Traffic specifies how to distribute traffic over a collection of Knative
-- Revisions and Configurations. Cloud Run currently supports a single
-- configurationName.
rTraffic :: Lens' RouteSpec [TrafficTarget]
rTraffic
  = lens _rTraffic (\ s a -> s{_rTraffic = a}) .
      _Default
      . _Coerce

instance FromJSON RouteSpec where
        parseJSON
          = withObject "RouteSpec"
              (\ o -> RouteSpec' <$> (o .:? "traffic" .!= mempty))

instance ToJSON RouteSpec where
        toJSON RouteSpec'{..}
          = object (catMaybes [("traffic" .=) <$> _rTraffic])

-- | RevisionStatus communicates the observed state of the Revision (from the
-- controller).
--
-- /See:/ 'revisionStatus' smart constructor.
data RevisionStatus =
  RevisionStatus'
    { _rLogURL :: !(Maybe Text)
    , _rObservedGeneration :: !(Maybe (Textual Int32))
    , _rImageDigest :: !(Maybe Text)
    , _rServiceName :: !(Maybe Text)
    , _rConditions :: !(Maybe [GoogleCloudRunV1Condition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevisionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rLogURL'
--
-- * 'rObservedGeneration'
--
-- * 'rImageDigest'
--
-- * 'rServiceName'
--
-- * 'rConditions'
revisionStatus
    :: RevisionStatus
revisionStatus =
  RevisionStatus'
    { _rLogURL = Nothing
    , _rObservedGeneration = Nothing
    , _rImageDigest = Nothing
    , _rServiceName = Nothing
    , _rConditions = Nothing
    }


-- | Optional. Specifies the generated logging url for this particular
-- revision based on the revision url template specified in the
-- controller\'s config.
rLogURL :: Lens' RevisionStatus (Maybe Text)
rLogURL = lens _rLogURL (\ s a -> s{_rLogURL = a})

-- | ObservedGeneration is the \'Generation\' of the Revision that was last
-- processed by the controller. Clients polling for completed
-- reconciliation should poll until observedGeneration =
-- metadata.generation, and the Ready condition\'s status is True or False.
rObservedGeneration :: Lens' RevisionStatus (Maybe Int32)
rObservedGeneration
  = lens _rObservedGeneration
      (\ s a -> s{_rObservedGeneration = a})
      . mapping _Coerce

-- | ImageDigest holds the resolved digest for the image specified within
-- .Spec.Container.Image. The digest is resolved during the creation of
-- Revision. This field holds the digest value regardless of whether a tag
-- or digest was originally specified in the Container object.
rImageDigest :: Lens' RevisionStatus (Maybe Text)
rImageDigest
  = lens _rImageDigest (\ s a -> s{_rImageDigest = a})

-- | Not currently used by Cloud Run.
rServiceName :: Lens' RevisionStatus (Maybe Text)
rServiceName
  = lens _rServiceName (\ s a -> s{_rServiceName = a})

-- | Conditions communicates information about ongoing\/complete
-- reconciliation processes that bring the \"spec\" inline with the
-- observed state of the world. As a Revision is being prepared, it will
-- incrementally update conditions. Revision-specific conditions include: *
-- \"ResourcesAvailable\": True when underlying resources have been
-- provisioned. * \"ContainerHealthy\": True when the Revision readiness
-- check completes. * \"Active\": True when the Revision may receive
-- traffic.
rConditions :: Lens' RevisionStatus [GoogleCloudRunV1Condition]
rConditions
  = lens _rConditions (\ s a -> s{_rConditions = a}) .
      _Default
      . _Coerce

instance FromJSON RevisionStatus where
        parseJSON
          = withObject "RevisionStatus"
              (\ o ->
                 RevisionStatus' <$>
                   (o .:? "logUrl") <*> (o .:? "observedGeneration") <*>
                     (o .:? "imageDigest")
                     <*> (o .:? "serviceName")
                     <*> (o .:? "conditions" .!= mempty))

instance ToJSON RevisionStatus where
        toJSON RevisionStatus'{..}
          = object
              (catMaybes
                 [("logUrl" .=) <$> _rLogURL,
                  ("observedGeneration" .=) <$> _rObservedGeneration,
                  ("imageDigest" .=) <$> _rImageDigest,
                  ("serviceName" .=) <$> _rServiceName,
                  ("conditions" .=) <$> _rConditions])

-- | A single application container. This specifies both the container to
-- run, the command to run in the container and the arguments to supply to
-- it. Note that additional arguments may be supplied by the system to the
-- container at runtime.
--
-- /See:/ 'container' smart constructor.
data Container =
  Container'
    { _cLivenessProbe :: !(Maybe Probe)
    , _cImage :: !(Maybe Text)
    , _cTerminationMessagePolicy :: !(Maybe Text)
    , _cCommand :: !(Maybe [Text])
    , _cArgs :: !(Maybe [Text])
    , _cImagePullPolicy :: !(Maybe Text)
    , _cReadinessProbe :: !(Maybe Probe)
    , _cEnv :: !(Maybe [EnvVar])
    , _cVolumeMounts :: !(Maybe [VolumeMount])
    , _cWorkingDir :: !(Maybe Text)
    , _cSecurityContext :: !(Maybe SecurityContext)
    , _cResources :: !(Maybe ResourceRequirements)
    , _cName :: !(Maybe Text)
    , _cStartupProbe :: !(Maybe Probe)
    , _cTerminationMessagePath :: !(Maybe Text)
    , _cPorts :: !(Maybe [ContainerPort])
    , _cEnvFrom :: !(Maybe [EnvFromSource])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Container' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cLivenessProbe'
--
-- * 'cImage'
--
-- * 'cTerminationMessagePolicy'
--
-- * 'cCommand'
--
-- * 'cArgs'
--
-- * 'cImagePullPolicy'
--
-- * 'cReadinessProbe'
--
-- * 'cEnv'
--
-- * 'cVolumeMounts'
--
-- * 'cWorkingDir'
--
-- * 'cSecurityContext'
--
-- * 'cResources'
--
-- * 'cName'
--
-- * 'cStartupProbe'
--
-- * 'cTerminationMessagePath'
--
-- * 'cPorts'
--
-- * 'cEnvFrom'
container
    :: Container
container =
  Container'
    { _cLivenessProbe = Nothing
    , _cImage = Nothing
    , _cTerminationMessagePolicy = Nothing
    , _cCommand = Nothing
    , _cArgs = Nothing
    , _cImagePullPolicy = Nothing
    , _cReadinessProbe = Nothing
    , _cEnv = Nothing
    , _cVolumeMounts = Nothing
    , _cWorkingDir = Nothing
    , _cSecurityContext = Nothing
    , _cResources = Nothing
    , _cName = Nothing
    , _cStartupProbe = Nothing
    , _cTerminationMessagePath = Nothing
    , _cPorts = Nothing
    , _cEnvFrom = Nothing
    }


-- | (Optional) Periodic probe of container liveness. Container will be
-- restarted if the probe fails. More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/workloads\/pods\/pod-lifecycle#container-probes
cLivenessProbe :: Lens' Container (Maybe Probe)
cLivenessProbe
  = lens _cLivenessProbe
      (\ s a -> s{_cLivenessProbe = a})

-- | Only supports containers from Google Container Registry or Artifact
-- Registry URL of the Container image. More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/containers\/images
cImage :: Lens' Container (Maybe Text)
cImage = lens _cImage (\ s a -> s{_cImage = a})

-- | (Optional) Indicate how the termination message should be populated.
-- File will use the contents of terminationMessagePath to populate the
-- container status message on both success and failure.
-- FallbackToLogsOnError will use the last chunk of container log output if
-- the termination message file is empty and the container exited with an
-- error. The log output is limited to 2048 bytes or 80 lines, whichever is
-- smaller. Defaults to File. Cannot be updated.
cTerminationMessagePolicy :: Lens' Container (Maybe Text)
cTerminationMessagePolicy
  = lens _cTerminationMessagePolicy
      (\ s a -> s{_cTerminationMessagePolicy = a})

cCommand :: Lens' Container [Text]
cCommand
  = lens _cCommand (\ s a -> s{_cCommand = a}) .
      _Default
      . _Coerce

-- | (Optional) Arguments to the entrypoint. The docker image\'s CMD is used
-- if this is not provided. Variable references $(VAR_NAME) are expanded
-- using the container\'s environment. If a variable cannot be resolved,
-- the reference in the input string will be unchanged. The $(VAR_NAME)
-- syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped
-- references will never be expanded, regardless of whether the variable
-- exists or not. More info:
-- https:\/\/kubernetes.io\/docs\/tasks\/inject-data-application\/define-command-argument-container\/#running-a-command-in-a-shell
cArgs :: Lens' Container [Text]
cArgs
  = lens _cArgs (\ s a -> s{_cArgs = a}) . _Default .
      _Coerce

-- | (Optional) Image pull policy. One of Always, Never, IfNotPresent.
-- Defaults to Always if :latest tag is specified, or IfNotPresent
-- otherwise. More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/containers\/images#updating-images
cImagePullPolicy :: Lens' Container (Maybe Text)
cImagePullPolicy
  = lens _cImagePullPolicy
      (\ s a -> s{_cImagePullPolicy = a})

-- | (Optional) Periodic probe of container service readiness. Container will
-- be removed from service endpoints if the probe fails. More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/workloads\/pods\/pod-lifecycle#container-probes
cReadinessProbe :: Lens' Container (Maybe Probe)
cReadinessProbe
  = lens _cReadinessProbe
      (\ s a -> s{_cReadinessProbe = a})

-- | (Optional) List of environment variables to set in the container.
cEnv :: Lens' Container [EnvVar]
cEnv
  = lens _cEnv (\ s a -> s{_cEnv = a}) . _Default .
      _Coerce

-- | (Optional) Volume to mount into the container\'s filesystem. Only
-- supports SecretVolumeSources. Pod volumes to mount into the container\'s
-- filesystem.
cVolumeMounts :: Lens' Container [VolumeMount]
cVolumeMounts
  = lens _cVolumeMounts
      (\ s a -> s{_cVolumeMounts = a})
      . _Default
      . _Coerce

-- | (Optional) Container\'s working directory. If not specified, the
-- container runtime\'s default will be used, which might be configured in
-- the container image.
cWorkingDir :: Lens' Container (Maybe Text)
cWorkingDir
  = lens _cWorkingDir (\ s a -> s{_cWorkingDir = a})

-- | (Optional) Security options the pod should run with. More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/policy\/security-context\/ More
-- info:
-- https:\/\/kubernetes.io\/docs\/tasks\/configure-pod-container\/security-context\/
cSecurityContext :: Lens' Container (Maybe SecurityContext)
cSecurityContext
  = lens _cSecurityContext
      (\ s a -> s{_cSecurityContext = a})

-- | (Optional) Compute Resources required by this container. More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/storage\/persistent-volumes#resources
cResources :: Lens' Container (Maybe ResourceRequirements)
cResources
  = lens _cResources (\ s a -> s{_cResources = a})

-- | (Optional) Name of the container specified as a DNS_LABEL. Currently
-- unused in Cloud Run. More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/names\/#dns-label-names
cName :: Lens' Container (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | (Optional) Startup probe of application within the container. All other
-- probes are disabled if a startup probe is provided, until it succeeds.
-- Container will not be added to service endpoints if the probe fails.
-- More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/workloads\/pods\/pod-lifecycle#container-probes
cStartupProbe :: Lens' Container (Maybe Probe)
cStartupProbe
  = lens _cStartupProbe
      (\ s a -> s{_cStartupProbe = a})

-- | (Optional) Path at which the file to which the container\'s termination
-- message will be written is mounted into the container\'s filesystem.
-- Message written is intended to be brief final status, such as an
-- assertion failure message. Will be truncated by the node if greater than
-- 4096 bytes. The total message length across all containers will be
-- limited to 12kb. Defaults to \/dev\/termination-log.
cTerminationMessagePath :: Lens' Container (Maybe Text)
cTerminationMessagePath
  = lens _cTerminationMessagePath
      (\ s a -> s{_cTerminationMessagePath = a})

-- | (Optional) List of ports to expose from the container. Only a single
-- port can be specified. The specified ports must be listening on all
-- interfaces (0.0.0.0) within the container to be accessible. If omitted,
-- a port number will be chosen and passed to the container through the
-- PORT environment variable for the container to listen on.
cPorts :: Lens' Container [ContainerPort]
cPorts
  = lens _cPorts (\ s a -> s{_cPorts = a}) . _Default .
      _Coerce

-- | (Optional) List of sources to populate environment variables in the
-- container. The keys defined within a source must be a C_IDENTIFIER. All
-- invalid keys will be reported as an event when the container is
-- starting. When a key exists in multiple sources, the value associated
-- with the last source will take precedence. Values defined by an Env with
-- a duplicate key will take precedence. Cannot be updated.
cEnvFrom :: Lens' Container [EnvFromSource]
cEnvFrom
  = lens _cEnvFrom (\ s a -> s{_cEnvFrom = a}) .
      _Default
      . _Coerce

instance FromJSON Container where
        parseJSON
          = withObject "Container"
              (\ o ->
                 Container' <$>
                   (o .:? "livenessProbe") <*> (o .:? "image") <*>
                     (o .:? "terminationMessagePolicy")
                     <*> (o .:? "command" .!= mempty)
                     <*> (o .:? "args" .!= mempty)
                     <*> (o .:? "imagePullPolicy")
                     <*> (o .:? "readinessProbe")
                     <*> (o .:? "env" .!= mempty)
                     <*> (o .:? "volumeMounts" .!= mempty)
                     <*> (o .:? "workingDir")
                     <*> (o .:? "securityContext")
                     <*> (o .:? "resources")
                     <*> (o .:? "name")
                     <*> (o .:? "startupProbe")
                     <*> (o .:? "terminationMessagePath")
                     <*> (o .:? "ports" .!= mempty)
                     <*> (o .:? "envFrom" .!= mempty))

instance ToJSON Container where
        toJSON Container'{..}
          = object
              (catMaybes
                 [("livenessProbe" .=) <$> _cLivenessProbe,
                  ("image" .=) <$> _cImage,
                  ("terminationMessagePolicy" .=) <$>
                    _cTerminationMessagePolicy,
                  ("command" .=) <$> _cCommand, ("args" .=) <$> _cArgs,
                  ("imagePullPolicy" .=) <$> _cImagePullPolicy,
                  ("readinessProbe" .=) <$> _cReadinessProbe,
                  ("env" .=) <$> _cEnv,
                  ("volumeMounts" .=) <$> _cVolumeMounts,
                  ("workingDir" .=) <$> _cWorkingDir,
                  ("securityContext" .=) <$> _cSecurityContext,
                  ("resources" .=) <$> _cResources,
                  ("name" .=) <$> _cName,
                  ("startupProbe" .=) <$> _cStartupProbe,
                  ("terminationMessagePath" .=) <$>
                    _cTerminationMessagePath,
                  ("ports" .=) <$> _cPorts,
                  ("envFrom" .=) <$> _cEnvFrom])

-- | ListMeta describes metadata that synthetic resources must have,
-- including lists and various status objects. A resource may have only one
-- of {ObjectMeta, ListMeta}.
--
-- /See:/ 'listMeta' smart constructor.
data ListMeta =
  ListMeta'
    { _lmResourceVersion :: !(Maybe Text)
    , _lmSelfLink :: !(Maybe Text)
    , _lmContinue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListMeta' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmResourceVersion'
--
-- * 'lmSelfLink'
--
-- * 'lmContinue'
listMeta
    :: ListMeta
listMeta =
  ListMeta'
    {_lmResourceVersion = Nothing, _lmSelfLink = Nothing, _lmContinue = Nothing}


-- | String that identifies the server\'s internal version of this object
-- that can be used by clients to determine when objects have changed.
-- Value must be treated as opaque by clients and passed unmodified back to
-- the server. Populated by the system. Read-only. More info:
-- https:\/\/git.k8s.io\/community\/contributors\/devel\/api-conventions.md#concurrency-control-and-consistency
-- +optional
lmResourceVersion :: Lens' ListMeta (Maybe Text)
lmResourceVersion
  = lens _lmResourceVersion
      (\ s a -> s{_lmResourceVersion = a})

-- | SelfLink is a URL representing this object. Populated by the system.
-- Read-only. +optional
lmSelfLink :: Lens' ListMeta (Maybe Text)
lmSelfLink
  = lens _lmSelfLink (\ s a -> s{_lmSelfLink = a})

-- | continue may be set if the user set a limit on the number of items
-- returned, and indicates that the server has more data available. The
-- value is opaque and may be used to issue another request to the endpoint
-- that served this list to retrieve the next set of available objects.
-- Continuing a list may not be possible if the server configuration has
-- changed or more than a few minutes have passed. The resourceVersion
-- field returned when using this continue value will be identical to the
-- value in the first response.
lmContinue :: Lens' ListMeta (Maybe Text)
lmContinue
  = lens _lmContinue (\ s a -> s{_lmContinue = a})

instance FromJSON ListMeta where
        parseJSON
          = withObject "ListMeta"
              (\ o ->
                 ListMeta' <$>
                   (o .:? "resourceVersion") <*> (o .:? "selfLink") <*>
                     (o .:? "continue"))

instance ToJSON ListMeta where
        toJSON ListMeta'{..}
          = object
              (catMaybes
                 [("resourceVersion" .=) <$> _lmResourceVersion,
                  ("selfLink" .=) <$> _lmSelfLink,
                  ("continue" .=) <$> _lmContinue])

-- | OwnerReference contains enough information to let you identify an owning
-- object. Currently, an owning object must be in the same namespace, so
-- there is no namespace field.
--
-- /See:/ 'ownerReference' smart constructor.
data OwnerReference =
  OwnerReference'
    { _orController :: !(Maybe Bool)
    , _orAPIVersion :: !(Maybe Text)
    , _orKind :: !(Maybe Text)
    , _orUid :: !(Maybe Text)
    , _orBlockOwnerDeletion :: !(Maybe Bool)
    , _orName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OwnerReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orController'
--
-- * 'orAPIVersion'
--
-- * 'orKind'
--
-- * 'orUid'
--
-- * 'orBlockOwnerDeletion'
--
-- * 'orName'
ownerReference
    :: OwnerReference
ownerReference =
  OwnerReference'
    { _orController = Nothing
    , _orAPIVersion = Nothing
    , _orKind = Nothing
    , _orUid = Nothing
    , _orBlockOwnerDeletion = Nothing
    , _orName = Nothing
    }


-- | If true, this reference points to the managing controller. +optional
orController :: Lens' OwnerReference (Maybe Bool)
orController
  = lens _orController (\ s a -> s{_orController = a})

-- | API version of the referent.
orAPIVersion :: Lens' OwnerReference (Maybe Text)
orAPIVersion
  = lens _orAPIVersion (\ s a -> s{_orAPIVersion = a})

-- | Kind of the referent. More info:
-- https:\/\/git.k8s.io\/community\/contributors\/devel\/sig-architecture\/api-conventions.md#types-kinds
orKind :: Lens' OwnerReference (Maybe Text)
orKind = lens _orKind (\ s a -> s{_orKind = a})

-- | UID of the referent. More info:
-- http:\/\/kubernetes.io\/docs\/user-guide\/identifiers#uids
orUid :: Lens' OwnerReference (Maybe Text)
orUid = lens _orUid (\ s a -> s{_orUid = a})

-- | If true, AND if the owner has the \"foregroundDeletion\" finalizer, then
-- the owner cannot be deleted from the key-value store until this
-- reference is removed. Defaults to false. To set this field, a user needs
-- \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity)
-- will be returned. +optional
orBlockOwnerDeletion :: Lens' OwnerReference (Maybe Bool)
orBlockOwnerDeletion
  = lens _orBlockOwnerDeletion
      (\ s a -> s{_orBlockOwnerDeletion = a})

-- | Name of the referent. More info:
-- http:\/\/kubernetes.io\/docs\/user-guide\/identifiers#names
orName :: Lens' OwnerReference (Maybe Text)
orName = lens _orName (\ s a -> s{_orName = a})

instance FromJSON OwnerReference where
        parseJSON
          = withObject "OwnerReference"
              (\ o ->
                 OwnerReference' <$>
                   (o .:? "controller") <*> (o .:? "apiVersion") <*>
                     (o .:? "kind")
                     <*> (o .:? "uid")
                     <*> (o .:? "blockOwnerDeletion")
                     <*> (o .:? "name"))

instance ToJSON OwnerReference where
        toJSON OwnerReference'{..}
          = object
              (catMaybes
                 [("controller" .=) <$> _orController,
                  ("apiVersion" .=) <$> _orAPIVersion,
                  ("kind" .=) <$> _orKind, ("uid" .=) <$> _orUid,
                  ("blockOwnerDeletion" .=) <$> _orBlockOwnerDeletion,
                  ("name" .=) <$> _orName])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | Not supported by Cloud Run ExecAction describes a \"run in container\"
-- action.
--
-- /See:/ 'execAction' smart constructor.
newtype ExecAction =
  ExecAction'
    { _eaCommand :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaCommand'
execAction
    :: ExecAction
execAction = ExecAction' {_eaCommand = Nothing}


-- | (Optional) Command is the command line to execute inside the container,
-- the working directory for the command is root (\'\/\') in the
-- container\'s filesystem. The command is simply exec\'d, it is not run
-- inside a shell, so traditional shell instructions (\'|\', etc) won\'t
-- work. To use a shell, you need to explicitly call out to that shell.
-- Exit status of 0 is treated as live\/healthy and non-zero is unhealthy.
eaCommand :: Lens' ExecAction [Text]
eaCommand
  = lens _eaCommand (\ s a -> s{_eaCommand = a}) .
      _Default
      . _Coerce

instance FromJSON ExecAction where
        parseJSON
          = withObject "ExecAction"
              (\ o -> ExecAction' <$> (o .:? "command" .!= mempty))

instance ToJSON ExecAction where
        toJSON ExecAction'{..}
          = object (catMaybes [("command" .=) <$> _eaCommand])

-- | (Optional) Map of string keys and values that can be used to organize
-- and categorize (scope and select) objects. May match selectors of
-- replication controllers and routes. More info:
-- http:\/\/kubernetes.io\/docs\/user-guide\/labels
--
-- /See:/ 'objectMetaLabels' smart constructor.
newtype ObjectMetaLabels =
  ObjectMetaLabels'
    { _omlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectMetaLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omlAddtional'
objectMetaLabels
    :: HashMap Text Text -- ^ 'omlAddtional'
    -> ObjectMetaLabels
objectMetaLabels pOmlAddtional_ =
  ObjectMetaLabels' {_omlAddtional = _Coerce # pOmlAddtional_}


omlAddtional :: Lens' ObjectMetaLabels (HashMap Text Text)
omlAddtional
  = lens _omlAddtional (\ s a -> s{_omlAddtional = a})
      . _Coerce

instance FromJSON ObjectMetaLabels where
        parseJSON
          = withObject "ObjectMetaLabels"
              (\ o -> ObjectMetaLabels' <$> (parseJSONObject o))

instance ToJSON ObjectMetaLabels where
        toJSON = toJSON . _omlAddtional

-- | Not supported by Cloud Run VolumeMount describes a mounting of a Volume
-- within a container.
--
-- /See:/ 'volumeMount' smart constructor.
data VolumeMount =
  VolumeMount'
    { _vmSubPath :: !(Maybe Text)
    , _vmName :: !(Maybe Text)
    , _vmMountPath :: !(Maybe Text)
    , _vmReadOnly :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeMount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmSubPath'
--
-- * 'vmName'
--
-- * 'vmMountPath'
--
-- * 'vmReadOnly'
volumeMount
    :: VolumeMount
volumeMount =
  VolumeMount'
    { _vmSubPath = Nothing
    , _vmName = Nothing
    , _vmMountPath = Nothing
    , _vmReadOnly = Nothing
    }


-- | (Optional) Path within the volume from which the container\'s volume
-- should be mounted. Defaults to \"\" (volume\'s root).
vmSubPath :: Lens' VolumeMount (Maybe Text)
vmSubPath
  = lens _vmSubPath (\ s a -> s{_vmSubPath = a})

-- | This must match the Name of a Volume.
vmName :: Lens' VolumeMount (Maybe Text)
vmName = lens _vmName (\ s a -> s{_vmName = a})

-- | Path within the container at which the volume should be mounted. Must
-- not contain \':\'.
vmMountPath :: Lens' VolumeMount (Maybe Text)
vmMountPath
  = lens _vmMountPath (\ s a -> s{_vmMountPath = a})

-- | (Optional) Only true is accepted. Defaults to true.
vmReadOnly :: Lens' VolumeMount (Maybe Bool)
vmReadOnly
  = lens _vmReadOnly (\ s a -> s{_vmReadOnly = a})

instance FromJSON VolumeMount where
        parseJSON
          = withObject "VolumeMount"
              (\ o ->
                 VolumeMount' <$>
                   (o .:? "subPath") <*> (o .:? "name") <*>
                     (o .:? "mountPath")
                     <*> (o .:? "readOnly"))

instance ToJSON VolumeMount where
        toJSON VolumeMount'{..}
          = object
              (catMaybes
                 [("subPath" .=) <$> _vmSubPath,
                  ("name" .=) <$> _vmName,
                  ("mountPath" .=) <$> _vmMountPath,
                  ("readOnly" .=) <$> _vmReadOnly])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | The current state of the Domain Mapping.
--
-- /See:/ 'domainMAppingStatus' smart constructor.
data DomainMAppingStatus =
  DomainMAppingStatus'
    { _dmasResourceRecords :: !(Maybe [ResourceRecord])
    , _dmasObservedGeneration :: !(Maybe (Textual Int32))
    , _dmasMAppedRouteName :: !(Maybe Text)
    , _dmasURL :: !(Maybe Text)
    , _dmasConditions :: !(Maybe [GoogleCloudRunV1Condition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainMAppingStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmasResourceRecords'
--
-- * 'dmasObservedGeneration'
--
-- * 'dmasMAppedRouteName'
--
-- * 'dmasURL'
--
-- * 'dmasConditions'
domainMAppingStatus
    :: DomainMAppingStatus
domainMAppingStatus =
  DomainMAppingStatus'
    { _dmasResourceRecords = Nothing
    , _dmasObservedGeneration = Nothing
    , _dmasMAppedRouteName = Nothing
    , _dmasURL = Nothing
    , _dmasConditions = Nothing
    }


-- | The resource records required to configure this domain mapping. These
-- records must be added to the domain\'s DNS configuration in order to
-- serve the application via this domain mapping.
dmasResourceRecords :: Lens' DomainMAppingStatus [ResourceRecord]
dmasResourceRecords
  = lens _dmasResourceRecords
      (\ s a -> s{_dmasResourceRecords = a})
      . _Default
      . _Coerce

-- | ObservedGeneration is the \'Generation\' of the DomainMapping that was
-- last processed by the controller. Clients polling for completed
-- reconciliation should poll until observedGeneration =
-- metadata.generation and the Ready condition\'s status is True or False.
dmasObservedGeneration :: Lens' DomainMAppingStatus (Maybe Int32)
dmasObservedGeneration
  = lens _dmasObservedGeneration
      (\ s a -> s{_dmasObservedGeneration = a})
      . mapping _Coerce

-- | The name of the route that the mapping currently points to.
dmasMAppedRouteName :: Lens' DomainMAppingStatus (Maybe Text)
dmasMAppedRouteName
  = lens _dmasMAppedRouteName
      (\ s a -> s{_dmasMAppedRouteName = a})

-- | Optional. Cloud Run fully managed: not supported Cloud Run on GKE:
-- supported Holds the URL that will serve the traffic of the
-- DomainMapping.
dmasURL :: Lens' DomainMAppingStatus (Maybe Text)
dmasURL = lens _dmasURL (\ s a -> s{_dmasURL = a})

-- | Array of observed DomainMappingConditions, indicating the current state
-- of the DomainMapping.
dmasConditions :: Lens' DomainMAppingStatus [GoogleCloudRunV1Condition]
dmasConditions
  = lens _dmasConditions
      (\ s a -> s{_dmasConditions = a})
      . _Default
      . _Coerce

instance FromJSON DomainMAppingStatus where
        parseJSON
          = withObject "DomainMAppingStatus"
              (\ o ->
                 DomainMAppingStatus' <$>
                   (o .:? "resourceRecords" .!= mempty) <*>
                     (o .:? "observedGeneration")
                     <*> (o .:? "mappedRouteName")
                     <*> (o .:? "url")
                     <*> (o .:? "conditions" .!= mempty))

instance ToJSON DomainMAppingStatus where
        toJSON DomainMAppingStatus'{..}
          = object
              (catMaybes
                 [("resourceRecords" .=) <$> _dmasResourceRecords,
                  ("observedGeneration" .=) <$>
                    _dmasObservedGeneration,
                  ("mappedRouteName" .=) <$> _dmasMAppedRouteName,
                  ("url" .=) <$> _dmasURL,
                  ("conditions" .=) <$> _dmasConditions])

-- | EnvVar represents an environment variable present in a Container.
--
-- /See:/ 'envVar' smart constructor.
data EnvVar =
  EnvVar'
    { _evValue :: !(Maybe Text)
    , _evName :: !(Maybe Text)
    , _evValueFrom :: !(Maybe EnvVarSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvVar' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evValue'
--
-- * 'evName'
--
-- * 'evValueFrom'
envVar
    :: EnvVar
envVar = EnvVar' {_evValue = Nothing, _evName = Nothing, _evValueFrom = Nothing}


-- | (Optional) Variable references $(VAR_NAME) are expanded using the
-- previous defined environment variables in the container and any route
-- environment variables. If a variable cannot be resolved, the reference
-- in the input string will be unchanged. The $(VAR_NAME) syntax can be
-- escaped with a double $$, ie: $$(VAR_NAME). Escaped references will
-- never be expanded, regardless of whether the variable exists or not.
-- Defaults to \"\".
evValue :: Lens' EnvVar (Maybe Text)
evValue = lens _evValue (\ s a -> s{_evValue = a})

-- | Name of the environment variable. Must be a C_IDENTIFIER.
evName :: Lens' EnvVar (Maybe Text)
evName = lens _evName (\ s a -> s{_evName = a})

-- | (Optional) Source for the environment variable\'s value. Only supports
-- secret_key_ref. Source for the environment variable\'s value. Cannot be
-- used if value is not empty.
evValueFrom :: Lens' EnvVar (Maybe EnvVarSource)
evValueFrom
  = lens _evValueFrom (\ s a -> s{_evValueFrom = a})

instance FromJSON EnvVar where
        parseJSON
          = withObject "EnvVar"
              (\ o ->
                 EnvVar' <$>
                   (o .:? "value") <*> (o .:? "name") <*>
                     (o .:? "valueFrom"))

instance ToJSON EnvVar where
        toJSON EnvVar'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _evValue, ("name" .=) <$> _evName,
                  ("valueFrom" .=) <$> _evValueFrom])

-- | ServiceSpec holds the desired state of the Route (from the client),
-- which is used to manipulate the underlying Route and Configuration(s).
--
-- /See:/ 'serviceSpec' smart constructor.
data ServiceSpec =
  ServiceSpec'
    { _sTraffic :: !(Maybe [TrafficTarget])
    , _sTemplate :: !(Maybe RevisionTemplate)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTraffic'
--
-- * 'sTemplate'
serviceSpec
    :: ServiceSpec
serviceSpec = ServiceSpec' {_sTraffic = Nothing, _sTemplate = Nothing}


-- | Traffic specifies how to distribute traffic over a collection of Knative
-- Revisions and Configurations.
sTraffic :: Lens' ServiceSpec [TrafficTarget]
sTraffic
  = lens _sTraffic (\ s a -> s{_sTraffic = a}) .
      _Default
      . _Coerce

-- | Template holds the latest specification for the Revision to be stamped
-- out.
sTemplate :: Lens' ServiceSpec (Maybe RevisionTemplate)
sTemplate
  = lens _sTemplate (\ s a -> s{_sTemplate = a})

instance FromJSON ServiceSpec where
        parseJSON
          = withObject "ServiceSpec"
              (\ o ->
                 ServiceSpec' <$>
                   (o .:? "traffic" .!= mempty) <*> (o .:? "template"))

instance ToJSON ServiceSpec where
        toJSON ServiceSpec'{..}
          = object
              (catMaybes
                 [("traffic" .=) <$> _sTraffic,
                  ("template" .=) <$> _sTemplate])

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuditConfigs'
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
  Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
pAuditConfigs :: Lens' Policy [AuditConfig]
pAuditConfigs
  = lens _pAuditConfigs
      (\ s a -> s{_pAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'locationLabels' smart constructor.
newtype LocationLabels =
  LocationLabels'
    { _llAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
  LocationLabels' {_llAddtional = _Coerce # pLlAddtional_}


llAddtional :: Lens' LocationLabels (HashMap Text Text)
llAddtional
  = lens _llAddtional (\ s a -> s{_llAddtional = a}) .
      _Coerce

instance FromJSON LocationLabels where
        parseJSON
          = withObject "LocationLabels"
              (\ o -> LocationLabels' <$> (parseJSONObject o))

instance ToJSON LocationLabels where
        toJSON = toJSON . _llAddtional

-- | Not supported by Cloud Run HTTPGetAction describes an action based on
-- HTTP Get requests.
--
-- /See:/ 'hTTPGetAction' smart constructor.
data HTTPGetAction =
  HTTPGetAction'
    { _httpgaHTTPHeaders :: !(Maybe [HTTPHeader])
    , _httpgaPath :: !(Maybe Text)
    , _httpgaScheme :: !(Maybe Text)
    , _httpgaHost :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPGetAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpgaHTTPHeaders'
--
-- * 'httpgaPath'
--
-- * 'httpgaScheme'
--
-- * 'httpgaHost'
hTTPGetAction
    :: HTTPGetAction
hTTPGetAction =
  HTTPGetAction'
    { _httpgaHTTPHeaders = Nothing
    , _httpgaPath = Nothing
    , _httpgaScheme = Nothing
    , _httpgaHost = Nothing
    }


-- | (Optional) Custom headers to set in the request. HTTP allows repeated
-- headers.
httpgaHTTPHeaders :: Lens' HTTPGetAction [HTTPHeader]
httpgaHTTPHeaders
  = lens _httpgaHTTPHeaders
      (\ s a -> s{_httpgaHTTPHeaders = a})
      . _Default
      . _Coerce

-- | (Optional) Path to access on the HTTP server.
httpgaPath :: Lens' HTTPGetAction (Maybe Text)
httpgaPath
  = lens _httpgaPath (\ s a -> s{_httpgaPath = a})

-- | (Optional) Scheme to use for connecting to the host. Defaults to HTTP.
httpgaScheme :: Lens' HTTPGetAction (Maybe Text)
httpgaScheme
  = lens _httpgaScheme (\ s a -> s{_httpgaScheme = a})

-- | (Optional) Host name to connect to, defaults to the pod IP. You probably
-- want to set \"Host\" in httpHeaders instead.
httpgaHost :: Lens' HTTPGetAction (Maybe Text)
httpgaHost
  = lens _httpgaHost (\ s a -> s{_httpgaHost = a})

instance FromJSON HTTPGetAction where
        parseJSON
          = withObject "HTTPGetAction"
              (\ o ->
                 HTTPGetAction' <$>
                   (o .:? "httpHeaders" .!= mempty) <*> (o .:? "path")
                     <*> (o .:? "scheme")
                     <*> (o .:? "host"))

instance ToJSON HTTPGetAction where
        toJSON HTTPGetAction'{..}
          = object
              (catMaybes
                 [("httpHeaders" .=) <$> _httpgaHTTPHeaders,
                  ("path" .=) <$> _httpgaPath,
                  ("scheme" .=) <$> _httpgaScheme,
                  ("host" .=) <$> _httpgaHost])

-- | Configuration represents the \"floating HEAD\" of a linear history of
-- Revisions, and optionally how the containers those revisions reference
-- are built. Users create new Revisions by updating the Configuration\'s
-- spec. The \"latest created\" revision\'s name is available under status,
-- as is the \"latest ready\" revision\'s name. See also:
-- https:\/\/github.com\/knative\/serving\/blob\/master\/docs\/spec\/overview.md#configuration
--
-- /See:/ 'configuration' smart constructor.
data Configuration =
  Configuration'
    { _cStatus :: !(Maybe ConfigurationStatus)
    , _cAPIVersion :: !(Maybe Text)
    , _cKind :: !(Maybe Text)
    , _cSpec :: !(Maybe ConfigurationSpec)
    , _cMetadata :: !(Maybe ObjectMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Configuration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus'
--
-- * 'cAPIVersion'
--
-- * 'cKind'
--
-- * 'cSpec'
--
-- * 'cMetadata'
configuration
    :: Configuration
configuration =
  Configuration'
    { _cStatus = Nothing
    , _cAPIVersion = Nothing
    , _cKind = Nothing
    , _cSpec = Nothing
    , _cMetadata = Nothing
    }


-- | Status communicates the observed state of the Configuration (from the
-- controller).
cStatus :: Lens' Configuration (Maybe ConfigurationStatus)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | The API version for this call such as \"serving.knative.dev\/v1\".
cAPIVersion :: Lens' Configuration (Maybe Text)
cAPIVersion
  = lens _cAPIVersion (\ s a -> s{_cAPIVersion = a})

-- | The kind of resource, in this case always \"Configuration\".
cKind :: Lens' Configuration (Maybe Text)
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Spec holds the desired state of the Configuration (from the client).
cSpec :: Lens' Configuration (Maybe ConfigurationSpec)
cSpec = lens _cSpec (\ s a -> s{_cSpec = a})

-- | Metadata associated with this Configuration, including name, namespace,
-- labels, and annotations.
cMetadata :: Lens' Configuration (Maybe ObjectMeta)
cMetadata
  = lens _cMetadata (\ s a -> s{_cMetadata = a})

instance FromJSON Configuration where
        parseJSON
          = withObject "Configuration"
              (\ o ->
                 Configuration' <$>
                   (o .:? "status") <*> (o .:? "apiVersion") <*>
                     (o .:? "kind")
                     <*> (o .:? "spec")
                     <*> (o .:? "metadata"))

instance ToJSON Configuration where
        toJSON Configuration'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _cStatus,
                  ("apiVersion" .=) <$> _cAPIVersion,
                  ("kind" .=) <$> _cKind, ("spec" .=) <$> _cSpec,
                  ("metadata" .=) <$> _cMetadata])

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationMetadata' smart constructor.
newtype LocationMetadata =
  LocationMetadata'
    { _lmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmAddtional'
locationMetadata
    :: HashMap Text JSONValue -- ^ 'lmAddtional'
    -> LocationMetadata
locationMetadata pLmAddtional_ =
  LocationMetadata' {_lmAddtional = _Coerce # pLmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
lmAddtional :: Lens' LocationMetadata (HashMap Text JSONValue)
lmAddtional
  = lens _lmAddtional (\ s a -> s{_lmAddtional = a}) .
      _Coerce

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o -> LocationMetadata' <$> (parseJSONObject o))

instance ToJSON LocationMetadata where
        toJSON = toJSON . _lmAddtional

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting jose\'example.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType :: !(Maybe AuditLogConfigLogType)
    , _alcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcLogType'
--
-- * 'alcExemptedMembers'
auditLogConfig
    :: AuditLogConfig
auditLogConfig =
  AuditLogConfig' {_alcLogType = Nothing, _alcExemptedMembers = Nothing}


-- | The log type that this config enables.
alcLogType :: Lens' AuditLogConfig (Maybe AuditLogConfigLogType)
alcLogType
  = lens _alcLogType (\ s a -> s{_alcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
alcExemptedMembers :: Lens' AuditLogConfig [Text]
alcExemptedMembers
  = lens _alcExemptedMembers
      (\ s a -> s{_alcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditLogConfig where
        parseJSON
          = withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditLogConfig where
        toJSON AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _alcLogType,
                  ("exemptedMembers" .=) <$> _alcExemptedMembers])

-- | Not supported by Cloud Run LocalObjectReference contains enough
-- information to let you locate the referenced object inside the same
-- namespace.
--
-- /See:/ 'localObjectReference' smart constructor.
newtype LocalObjectReference =
  LocalObjectReference'
    { _lorName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalObjectReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorName'
localObjectReference
    :: LocalObjectReference
localObjectReference = LocalObjectReference' {_lorName = Nothing}


-- | (Optional) Name of the referent. More info:
-- https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/names\/#names
lorName :: Lens' LocalObjectReference (Maybe Text)
lorName = lens _lorName (\ s a -> s{_lorName = a})

instance FromJSON LocalObjectReference where
        parseJSON
          = withObject "LocalObjectReference"
              (\ o -> LocalObjectReference' <$> (o .:? "name"))

instance ToJSON LocalObjectReference where
        toJSON LocalObjectReference'{..}
          = object (catMaybes [("name" .=) <$> _lorName])

-- | Revision is an immutable snapshot of code and configuration. A revision
-- references a container image. Revisions are created by updates to a
-- Configuration. See also:
-- https:\/\/github.com\/knative\/serving\/blob\/master\/docs\/spec\/overview.md#revision
--
-- /See:/ 'revision' smart constructor.
data Revision =
  Revision'
    { _revStatus :: !(Maybe RevisionStatus)
    , _revAPIVersion :: !(Maybe Text)
    , _revKind :: !(Maybe Text)
    , _revSpec :: !(Maybe RevisionSpec)
    , _revMetadata :: !(Maybe ObjectMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Revision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'revStatus'
--
-- * 'revAPIVersion'
--
-- * 'revKind'
--
-- * 'revSpec'
--
-- * 'revMetadata'
revision
    :: Revision
revision =
  Revision'
    { _revStatus = Nothing
    , _revAPIVersion = Nothing
    , _revKind = Nothing
    , _revSpec = Nothing
    , _revMetadata = Nothing
    }


-- | Status communicates the observed state of the Revision (from the
-- controller).
revStatus :: Lens' Revision (Maybe RevisionStatus)
revStatus
  = lens _revStatus (\ s a -> s{_revStatus = a})

-- | The API version for this call such as \"serving.knative.dev\/v1\".
revAPIVersion :: Lens' Revision (Maybe Text)
revAPIVersion
  = lens _revAPIVersion
      (\ s a -> s{_revAPIVersion = a})

-- | The kind of this resource, in this case \"Revision\".
revKind :: Lens' Revision (Maybe Text)
revKind = lens _revKind (\ s a -> s{_revKind = a})

-- | Spec holds the desired state of the Revision (from the client).
revSpec :: Lens' Revision (Maybe RevisionSpec)
revSpec = lens _revSpec (\ s a -> s{_revSpec = a})

-- | Metadata associated with this Revision, including name, namespace,
-- labels, and annotations.
revMetadata :: Lens' Revision (Maybe ObjectMeta)
revMetadata
  = lens _revMetadata (\ s a -> s{_revMetadata = a})

instance FromJSON Revision where
        parseJSON
          = withObject "Revision"
              (\ o ->
                 Revision' <$>
                   (o .:? "status") <*> (o .:? "apiVersion") <*>
                     (o .:? "kind")
                     <*> (o .:? "spec")
                     <*> (o .:? "metadata"))

instance ToJSON Revision where
        toJSON Revision'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _revStatus,
                  ("apiVersion" .=) <$> _revAPIVersion,
                  ("kind" .=) <$> _revKind, ("spec" .=) <$> _revSpec,
                  ("metadata" .=) <$> _revMetadata])

-- | Not supported by Cloud Run EnvFromSource represents the source of a set
-- of ConfigMaps
--
-- /See:/ 'envFromSource' smart constructor.
data EnvFromSource =
  EnvFromSource'
    { _efsConfigMapRef :: !(Maybe ConfigMapEnvSource)
    , _efsSecretRef :: !(Maybe SecretEnvSource)
    , _efsPrefix :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvFromSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efsConfigMapRef'
--
-- * 'efsSecretRef'
--
-- * 'efsPrefix'
envFromSource
    :: EnvFromSource
envFromSource =
  EnvFromSource'
    {_efsConfigMapRef = Nothing, _efsSecretRef = Nothing, _efsPrefix = Nothing}


-- | (Optional) The ConfigMap to select from
efsConfigMapRef :: Lens' EnvFromSource (Maybe ConfigMapEnvSource)
efsConfigMapRef
  = lens _efsConfigMapRef
      (\ s a -> s{_efsConfigMapRef = a})

-- | (Optional) The Secret to select from
efsSecretRef :: Lens' EnvFromSource (Maybe SecretEnvSource)
efsSecretRef
  = lens _efsSecretRef (\ s a -> s{_efsSecretRef = a})

-- | (Optional) An optional identifier to prepend to each key in the
-- ConfigMap. Must be a C_IDENTIFIER.
efsPrefix :: Lens' EnvFromSource (Maybe Text)
efsPrefix
  = lens _efsPrefix (\ s a -> s{_efsPrefix = a})

instance FromJSON EnvFromSource where
        parseJSON
          = withObject "EnvFromSource"
              (\ o ->
                 EnvFromSource' <$>
                   (o .:? "configMapRef") <*> (o .:? "secretRef") <*>
                     (o .:? "prefix"))

instance ToJSON EnvFromSource where
        toJSON EnvFromSource'{..}
          = object
              (catMaybes
                 [("configMapRef" .=) <$> _efsConfigMapRef,
                  ("secretRef" .=) <$> _efsSecretRef,
                  ("prefix" .=) <$> _efsPrefix])

-- | RevisionSpec holds the desired state of the Revision (from the client).
--
-- /See:/ 'revisionSpec' smart constructor.
data RevisionSpec =
  RevisionSpec'
    { _rsServiceAccountName :: !(Maybe Text)
    , _rsContainers :: !(Maybe [Container])
    , _rsContainerConcurrency :: !(Maybe (Textual Int32))
    , _rsTimeoutSeconds :: !(Maybe (Textual Int32))
    , _rsVolumes :: !(Maybe [Volume])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevisionSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsServiceAccountName'
--
-- * 'rsContainers'
--
-- * 'rsContainerConcurrency'
--
-- * 'rsTimeoutSeconds'
--
-- * 'rsVolumes'
revisionSpec
    :: RevisionSpec
revisionSpec =
  RevisionSpec'
    { _rsServiceAccountName = Nothing
    , _rsContainers = Nothing
    , _rsContainerConcurrency = Nothing
    , _rsTimeoutSeconds = Nothing
    , _rsVolumes = Nothing
    }


-- | Email address of the IAM service account associated with the revision of
-- the service. The service account represents the identity of the running
-- revision, and determines what permissions the revision has. If not
-- provided, the revision will use the project\'s default service account.
rsServiceAccountName :: Lens' RevisionSpec (Maybe Text)
rsServiceAccountName
  = lens _rsServiceAccountName
      (\ s a -> s{_rsServiceAccountName = a})

-- | Containers holds the single container that defines the unit of execution
-- for this Revision. In the context of a Revision, we disallow a number of
-- fields on this Container, including: name and lifecycle. In Cloud Run,
-- only a single container may be provided. The runtime contract is
-- documented here:
-- https:\/\/github.com\/knative\/serving\/blob\/master\/docs\/runtime-contract.md
rsContainers :: Lens' RevisionSpec [Container]
rsContainers
  = lens _rsContainers (\ s a -> s{_rsContainers = a})
      . _Default
      . _Coerce

-- | Optional. ContainerConcurrency specifies the maximum allowed in-flight
-- (concurrent) requests per container instance of the Revision. Cloud Run
-- fully managed: supported, defaults to 80 Cloud Run for Anthos:
-- supported, defaults to 0, which means concurrency to the application is
-- not limited, and the system decides the target concurrency for the
-- autoscaler.
rsContainerConcurrency :: Lens' RevisionSpec (Maybe Int32)
rsContainerConcurrency
  = lens _rsContainerConcurrency
      (\ s a -> s{_rsContainerConcurrency = a})
      . mapping _Coerce

-- | TimeoutSeconds holds the max duration the instance is allowed for
-- responding to a request. Cloud Run fully managed: defaults to 300
-- seconds (5 minutes). Maximum allowed value is 900 seconds (15 minutes).
-- Cloud Run for Anthos: defaults to 300 seconds (5 minutes). Maximum
-- allowed value is configurable by the cluster operator.
rsTimeoutSeconds :: Lens' RevisionSpec (Maybe Int32)
rsTimeoutSeconds
  = lens _rsTimeoutSeconds
      (\ s a -> s{_rsTimeoutSeconds = a})
      . mapping _Coerce

rsVolumes :: Lens' RevisionSpec [Volume]
rsVolumes
  = lens _rsVolumes (\ s a -> s{_rsVolumes = a}) .
      _Default
      . _Coerce

instance FromJSON RevisionSpec where
        parseJSON
          = withObject "RevisionSpec"
              (\ o ->
                 RevisionSpec' <$>
                   (o .:? "serviceAccountName") <*>
                     (o .:? "containers" .!= mempty)
                     <*> (o .:? "containerConcurrency")
                     <*> (o .:? "timeoutSeconds")
                     <*> (o .:? "volumes" .!= mempty))

instance ToJSON RevisionSpec where
        toJSON RevisionSpec'{..}
          = object
              (catMaybes
                 [("serviceAccountName" .=) <$> _rsServiceAccountName,
                  ("containers" .=) <$> _rsContainers,
                  ("containerConcurrency" .=) <$>
                    _rsContainerConcurrency,
                  ("timeoutSeconds" .=) <$> _rsTimeoutSeconds,
                  ("volumes" .=) <$> _rsVolumes])

-- | Not supported by Cloud Run ConfigMapEnvSource selects a ConfigMap to
-- populate the environment variables with. The contents of the target
-- ConfigMap\'s Data field will represent the key-value pairs as
-- environment variables.
--
-- /See:/ 'configMapEnvSource' smart constructor.
data ConfigMapEnvSource =
  ConfigMapEnvSource'
    { _cmesName :: !(Maybe Text)
    , _cmesLocalObjectReference :: !(Maybe LocalObjectReference)
    , _cmesOptional :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigMapEnvSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmesName'
--
-- * 'cmesLocalObjectReference'
--
-- * 'cmesOptional'
configMapEnvSource
    :: ConfigMapEnvSource
configMapEnvSource =
  ConfigMapEnvSource'
    { _cmesName = Nothing
    , _cmesLocalObjectReference = Nothing
    , _cmesOptional = Nothing
    }


-- | The ConfigMap to select from.
cmesName :: Lens' ConfigMapEnvSource (Maybe Text)
cmesName = lens _cmesName (\ s a -> s{_cmesName = a})

-- | This field should not be used directly as it is meant to be inlined
-- directly into the message. Use the \"name\" field instead.
cmesLocalObjectReference :: Lens' ConfigMapEnvSource (Maybe LocalObjectReference)
cmesLocalObjectReference
  = lens _cmesLocalObjectReference
      (\ s a -> s{_cmesLocalObjectReference = a})

-- | (Optional) Specify whether the ConfigMap must be defined
cmesOptional :: Lens' ConfigMapEnvSource (Maybe Bool)
cmesOptional
  = lens _cmesOptional (\ s a -> s{_cmesOptional = a})

instance FromJSON ConfigMapEnvSource where
        parseJSON
          = withObject "ConfigMapEnvSource"
              (\ o ->
                 ConfigMapEnvSource' <$>
                   (o .:? "name") <*> (o .:? "localObjectReference") <*>
                     (o .:? "optional"))

instance ToJSON ConfigMapEnvSource where
        toJSON ConfigMapEnvSource'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _cmesName,
                  ("localObjectReference" .=) <$>
                    _cmesLocalObjectReference,
                  ("optional" .=) <$> _cmesOptional])

-- | Not supported by Cloud Run SecretEnvSource selects a Secret to populate
-- the environment variables with. The contents of the target Secret\'s
-- Data field will represent the key-value pairs as environment variables.
--
-- /See:/ 'secretEnvSource' smart constructor.
data SecretEnvSource =
  SecretEnvSource'
    { _sesName :: !(Maybe Text)
    , _sesLocalObjectReference :: !(Maybe LocalObjectReference)
    , _sesOptional :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretEnvSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sesName'
--
-- * 'sesLocalObjectReference'
--
-- * 'sesOptional'
secretEnvSource
    :: SecretEnvSource
secretEnvSource =
  SecretEnvSource'
    { _sesName = Nothing
    , _sesLocalObjectReference = Nothing
    , _sesOptional = Nothing
    }


-- | The Secret to select from.
sesName :: Lens' SecretEnvSource (Maybe Text)
sesName = lens _sesName (\ s a -> s{_sesName = a})

-- | This field should not be used directly as it is meant to be inlined
-- directly into the message. Use the \"name\" field instead.
sesLocalObjectReference :: Lens' SecretEnvSource (Maybe LocalObjectReference)
sesLocalObjectReference
  = lens _sesLocalObjectReference
      (\ s a -> s{_sesLocalObjectReference = a})

-- | (Optional) Specify whether the Secret must be defined
sesOptional :: Lens' SecretEnvSource (Maybe Bool)
sesOptional
  = lens _sesOptional (\ s a -> s{_sesOptional = a})

instance FromJSON SecretEnvSource where
        parseJSON
          = withObject "SecretEnvSource"
              (\ o ->
                 SecretEnvSource' <$>
                   (o .:? "name") <*> (o .:? "localObjectReference") <*>
                     (o .:? "optional"))

instance ToJSON SecretEnvSource where
        toJSON SecretEnvSource'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _sesName,
                  ("localObjectReference" .=) <$>
                    _sesLocalObjectReference,
                  ("optional" .=) <$> _sesOptional])

-- | ListDomainMappingsResponse is a list of DomainMapping resources.
--
-- /See:/ 'listDomainMAppingsResponse' smart constructor.
data ListDomainMAppingsResponse =
  ListDomainMAppingsResponse'
    { _ldmarAPIVersion :: !(Maybe Text)
    , _ldmarKind :: !(Maybe Text)
    , _ldmarItems :: !(Maybe [DomainMApping])
    , _ldmarUnreachable :: !(Maybe [Text])
    , _ldmarMetadata :: !(Maybe ListMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDomainMAppingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldmarAPIVersion'
--
-- * 'ldmarKind'
--
-- * 'ldmarItems'
--
-- * 'ldmarUnreachable'
--
-- * 'ldmarMetadata'
listDomainMAppingsResponse
    :: ListDomainMAppingsResponse
listDomainMAppingsResponse =
  ListDomainMAppingsResponse'
    { _ldmarAPIVersion = Nothing
    , _ldmarKind = Nothing
    , _ldmarItems = Nothing
    , _ldmarUnreachable = Nothing
    , _ldmarMetadata = Nothing
    }


-- | The API version for this call such as \"domains.cloudrun.com\/v1\".
ldmarAPIVersion :: Lens' ListDomainMAppingsResponse (Maybe Text)
ldmarAPIVersion
  = lens _ldmarAPIVersion
      (\ s a -> s{_ldmarAPIVersion = a})

-- | The kind of this resource, in this case \"DomainMappingList\".
ldmarKind :: Lens' ListDomainMAppingsResponse (Maybe Text)
ldmarKind
  = lens _ldmarKind (\ s a -> s{_ldmarKind = a})

-- | List of DomainMappings.
ldmarItems :: Lens' ListDomainMAppingsResponse [DomainMApping]
ldmarItems
  = lens _ldmarItems (\ s a -> s{_ldmarItems = a}) .
      _Default
      . _Coerce

-- | Locations that could not be reached.
ldmarUnreachable :: Lens' ListDomainMAppingsResponse [Text]
ldmarUnreachable
  = lens _ldmarUnreachable
      (\ s a -> s{_ldmarUnreachable = a})
      . _Default
      . _Coerce

-- | Metadata associated with this DomainMapping list.
ldmarMetadata :: Lens' ListDomainMAppingsResponse (Maybe ListMeta)
ldmarMetadata
  = lens _ldmarMetadata
      (\ s a -> s{_ldmarMetadata = a})

instance FromJSON ListDomainMAppingsResponse where
        parseJSON
          = withObject "ListDomainMAppingsResponse"
              (\ o ->
                 ListDomainMAppingsResponse' <$>
                   (o .:? "apiVersion") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "unreachable" .!= mempty)
                     <*> (o .:? "metadata"))

instance ToJSON ListDomainMAppingsResponse where
        toJSON ListDomainMAppingsResponse'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _ldmarAPIVersion,
                  ("kind" .=) <$> _ldmarKind,
                  ("items" .=) <$> _ldmarItems,
                  ("unreachable" .=) <$> _ldmarUnreachable,
                  ("metadata" .=) <$> _ldmarMetadata])

-- | ContainerPort represents a network port in a single container.
--
-- /See:/ 'containerPort' smart constructor.
data ContainerPort =
  ContainerPort'
    { _cpProtocol :: !(Maybe Text)
    , _cpName :: !(Maybe Text)
    , _cpContainerPort :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContainerPort' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpProtocol'
--
-- * 'cpName'
--
-- * 'cpContainerPort'
containerPort
    :: ContainerPort
containerPort =
  ContainerPort'
    {_cpProtocol = Nothing, _cpName = Nothing, _cpContainerPort = Nothing}


-- | (Optional) Protocol for port. Must be \"TCP\". Defaults to \"TCP\".
cpProtocol :: Lens' ContainerPort (Maybe Text)
cpProtocol
  = lens _cpProtocol (\ s a -> s{_cpProtocol = a})

-- | (Optional) If specified, used to specify which protocol to use. Allowed
-- values are \"http1\" and \"h2c\".
cpName :: Lens' ContainerPort (Maybe Text)
cpName = lens _cpName (\ s a -> s{_cpName = a})

-- | (Optional) Port number the container listens on. This must be a valid
-- port number, 0 \< x \< 65536.
cpContainerPort :: Lens' ContainerPort (Maybe Int32)
cpContainerPort
  = lens _cpContainerPort
      (\ s a -> s{_cpContainerPort = a})
      . mapping _Coerce

instance FromJSON ContainerPort where
        parseJSON
          = withObject "ContainerPort"
              (\ o ->
                 ContainerPort' <$>
                   (o .:? "protocol") <*> (o .:? "name") <*>
                     (o .:? "containerPort"))

instance ToJSON ContainerPort where
        toJSON ContainerPort'{..}
          = object
              (catMaybes
                 [("protocol" .=) <$> _cpProtocol,
                  ("name" .=) <$> _cpName,
                  ("containerPort" .=) <$> _cpContainerPort])

-- | ListRevisionsResponse is a list of Revision resources.
--
-- /See:/ 'listRevisionsResponse' smart constructor.
data ListRevisionsResponse =
  ListRevisionsResponse'
    { _lisAPIVersion :: !(Maybe Text)
    , _lisKind :: !(Maybe Text)
    , _lisItems :: !(Maybe [Revision])
    , _lisUnreachable :: !(Maybe [Text])
    , _lisMetadata :: !(Maybe ListMeta)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListRevisionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisAPIVersion'
--
-- * 'lisKind'
--
-- * 'lisItems'
--
-- * 'lisUnreachable'
--
-- * 'lisMetadata'
listRevisionsResponse
    :: ListRevisionsResponse
listRevisionsResponse =
  ListRevisionsResponse'
    { _lisAPIVersion = Nothing
    , _lisKind = Nothing
    , _lisItems = Nothing
    , _lisUnreachable = Nothing
    , _lisMetadata = Nothing
    }


-- | The API version for this call such as \"serving.knative.dev\/v1\".
lisAPIVersion :: Lens' ListRevisionsResponse (Maybe Text)
lisAPIVersion
  = lens _lisAPIVersion
      (\ s a -> s{_lisAPIVersion = a})

-- | The kind of this resource, in this case \"RevisionList\".
lisKind :: Lens' ListRevisionsResponse (Maybe Text)
lisKind = lens _lisKind (\ s a -> s{_lisKind = a})

-- | List of Revisions.
lisItems :: Lens' ListRevisionsResponse [Revision]
lisItems
  = lens _lisItems (\ s a -> s{_lisItems = a}) .
      _Default
      . _Coerce

-- | Locations that could not be reached.
lisUnreachable :: Lens' ListRevisionsResponse [Text]
lisUnreachable
  = lens _lisUnreachable
      (\ s a -> s{_lisUnreachable = a})
      . _Default
      . _Coerce

-- | Metadata associated with this revision list.
lisMetadata :: Lens' ListRevisionsResponse (Maybe ListMeta)
lisMetadata
  = lens _lisMetadata (\ s a -> s{_lisMetadata = a})

instance FromJSON ListRevisionsResponse where
        parseJSON
          = withObject "ListRevisionsResponse"
              (\ o ->
                 ListRevisionsResponse' <$>
                   (o .:? "apiVersion") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "unreachable" .!= mempty)
                     <*> (o .:? "metadata"))

instance ToJSON ListRevisionsResponse where
        toJSON ListRevisionsResponse'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _lisAPIVersion,
                  ("kind" .=) <$> _lisKind, ("items" .=) <$> _lisItems,
                  ("unreachable" .=) <$> _lisUnreachable,
                  ("metadata" .=) <$> _lisMetadata])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])

-- | Maps a string key to a path within a volume.
--
-- /See:/ 'keyToPath' smart constructor.
data KeyToPath =
  KeyToPath'
    { _ktpPath :: !(Maybe Text)
    , _ktpMode :: !(Maybe (Textual Int32))
    , _ktpKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyToPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ktpPath'
--
-- * 'ktpMode'
--
-- * 'ktpKey'
keyToPath
    :: KeyToPath
keyToPath =
  KeyToPath' {_ktpPath = Nothing, _ktpMode = Nothing, _ktpKey = Nothing}


-- | The relative path of the file to map the key to. May not be an absolute
-- path. May not contain the path element \'..\'. May not start with the
-- string \'..\'.
ktpPath :: Lens' KeyToPath (Maybe Text)
ktpPath = lens _ktpPath (\ s a -> s{_ktpPath = a})

-- | (Optional) Mode bits to use on this file, must be a value between 0000
-- and 0777. If not specified, the volume defaultMode will be used. This
-- might be in conflict with other options that affect the file mode, like
-- fsGroup, and the result can be other mode bits set.
ktpMode :: Lens' KeyToPath (Maybe Int32)
ktpMode
  = lens _ktpMode (\ s a -> s{_ktpMode = a}) .
      mapping _Coerce

-- | The Cloud Secret Manager secret version. Can be \'latest\' for the
-- latest value or an integer for a specific version. The key to project.
ktpKey :: Lens' KeyToPath (Maybe Text)
ktpKey = lens _ktpKey (\ s a -> s{_ktpKey = a})

instance FromJSON KeyToPath where
        parseJSON
          = withObject "KeyToPath"
              (\ o ->
                 KeyToPath' <$>
                   (o .:? "path") <*> (o .:? "mode") <*> (o .:? "key"))

instance ToJSON KeyToPath where
        toJSON KeyToPath'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _ktpPath, ("mode" .=) <$> _ktpMode,
                  ("key" .=) <$> _ktpKey])
