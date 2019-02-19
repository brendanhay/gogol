{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Healthcare.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Healthcare.Types.Product where

import           Network.Google.Healthcare.Types.Sum
import           Network.Google.Prelude

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
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

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationSchema' smart constructor.
newtype OperationSchema =
  OperationSchema'
    { _osAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osAddtional'
operationSchema
    :: HashMap Text JSONValue -- ^ 'osAddtional'
    -> OperationSchema
operationSchema pOsAddtional_ =
  OperationSchema' {_osAddtional = _Coerce # pOsAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
osAddtional :: Lens' OperationSchema (HashMap Text JSONValue)
osAddtional
  = lens _osAddtional (\ s a -> s{_osAddtional = a}) .
      _Coerce

instance FromJSON OperationSchema where
        parseJSON
          = withObject "OperationSchema"
              (\ o -> OperationSchema' <$> (parseJSONObject o))

instance ToJSON OperationSchema where
        toJSON = toJSON . _osAddtional

-- | Request to export resources.
--
-- /See:/ 'exportResourcesRequest' smart constructor.
data ExportResourcesRequest =
  ExportResourcesRequest'
    { _errBigQueryDestinationLocation :: !(Maybe BigQueryLocation)
    , _errGcsDestinationLocation      :: !(Maybe GcsDataLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportResourcesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'errBigQueryDestinationLocation'
--
-- * 'errGcsDestinationLocation'
exportResourcesRequest
    :: ExportResourcesRequest
exportResourcesRequest =
  ExportResourcesRequest'
    { _errBigQueryDestinationLocation = Nothing
    , _errGcsDestinationLocation = Nothing
    }

-- | The BigQuery destination location. The output will be one BigQuery table
-- per resource type. The server implements a data-driven FHIR-to-SQL
-- schema mapping in support of analytics workloads with BigQuery.
-- Incompatible changes to the output schema may be introduced in the
-- future as a result of continuous collaboration with the FHIR community
-- to refine the [desired SQL projection of FHIR
-- resources](https:\/\/github.com\/rbrush\/sql-on-fhir\/blob\/master\/sql-on-fhir.md).
errBigQueryDestinationLocation :: Lens' ExportResourcesRequest (Maybe BigQueryLocation)
errBigQueryDestinationLocation
  = lens _errBigQueryDestinationLocation
      (\ s a -> s{_errBigQueryDestinationLocation = a})

-- | The Cloud Storage destination location. Specify a path to a Cloud
-- Storage bucket or folder rather than a concrete object. The exported
-- outputs are organized by FHIR resource types. The server will create one
-- object per resource type. Each object contains newline delimited JSON,
-- and each line is a FHIR resource.
errGcsDestinationLocation :: Lens' ExportResourcesRequest (Maybe GcsDataLocation)
errGcsDestinationLocation
  = lens _errGcsDestinationLocation
      (\ s a -> s{_errGcsDestinationLocation = a})

instance FromJSON ExportResourcesRequest where
        parseJSON
          = withObject "ExportResourcesRequest"
              (\ o ->
                 ExportResourcesRequest' <$>
                   (o .:? "bigqueryDestinationLocation") <*>
                     (o .:? "gcsDestinationLocation"))

instance ToJSON ExportResourcesRequest where
        toJSON ExportResourcesRequest'{..}
          = object
              (catMaybes
                 [("bigqueryDestinationLocation" .=) <$>
                    _errBigQueryDestinationLocation,
                  ("gcsDestinationLocation" .=) <$>
                    _errGcsDestinationLocation])

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\" \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", }, { \"log_type\": \"ADMIN_READ\", } ] }, { \"service\":
-- \"fooservice.googleapis.com\" \"audit_log_configs\": [ { \"log_type\":
-- \"DATA_READ\", }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\":
-- [ \"user:bar\'gmail.com\" ] } ] } ] } For fooservice, this policy
-- enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts
-- foo\'gmail.com from DATA_READ logging, and bar\'gmail.com from
-- DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService         :: !(Maybe Text)
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

--
-- /See:/ 'hTTPBodyExtensionsItem' smart constructor.
newtype HTTPBodyExtensionsItem =
  HTTPBodyExtensionsItem'
    { _httpbeiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HTTPBodyExtensionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpbeiAddtional'
hTTPBodyExtensionsItem
    :: HashMap Text JSONValue -- ^ 'httpbeiAddtional'
    -> HTTPBodyExtensionsItem
hTTPBodyExtensionsItem pHttpbeiAddtional_ =
  HTTPBodyExtensionsItem' {_httpbeiAddtional = _Coerce # pHttpbeiAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
httpbeiAddtional :: Lens' HTTPBodyExtensionsItem (HashMap Text JSONValue)
httpbeiAddtional
  = lens _httpbeiAddtional
      (\ s a -> s{_httpbeiAddtional = a})
      . _Coerce

instance FromJSON HTTPBodyExtensionsItem where
        parseJSON
          = withObject "HTTPBodyExtensionsItem"
              (\ o ->
                 HTTPBodyExtensionsItem' <$> (parseJSONObject o))

instance ToJSON HTTPBodyExtensionsItem where
        toJSON = toJSON . _httpbeiAddtional

-- | An annotation record.
--
-- /See:/ 'annotation' smart constructor.
data Annotation =
  Annotation'
    { _aTextAnnotation     :: !(Maybe SensitiveTextAnnotation)
    , _aImageAnnotation    :: !(Maybe ImageAnnotation)
    , _aName               :: !(Maybe Text)
    , _aAnnotationSource   :: !(Maybe AnnotationSource)
    , _aResourceAnnotation :: !(Maybe ResourceAnnotation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aTextAnnotation'
--
-- * 'aImageAnnotation'
--
-- * 'aName'
--
-- * 'aAnnotationSource'
--
-- * 'aResourceAnnotation'
annotation
    :: Annotation
annotation =
  Annotation'
    { _aTextAnnotation = Nothing
    , _aImageAnnotation = Nothing
    , _aName = Nothing
    , _aAnnotationSource = Nothing
    , _aResourceAnnotation = Nothing
    }

-- | Annotations for sentitive texts, e.g., range of such texts.
aTextAnnotation :: Lens' Annotation (Maybe SensitiveTextAnnotation)
aTextAnnotation
  = lens _aTextAnnotation
      (\ s a -> s{_aTextAnnotation = a})

-- | Annnotations for images, e.g., bounding polygons.
aImageAnnotation :: Lens' Annotation (Maybe ImageAnnotation)
aImageAnnotation
  = lens _aImageAnnotation
      (\ s a -> s{_aImageAnnotation = a})

-- | Output only. Resource name of the Annotation, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/annotationStores\/{annotation_store_id}\/annotations\/{annotation_id}\`.
aName :: Lens' Annotation (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Details of the source.
aAnnotationSource :: Lens' Annotation (Maybe AnnotationSource)
aAnnotationSource
  = lens _aAnnotationSource
      (\ s a -> s{_aAnnotationSource = a})

-- | Annotations for resource, e.g., classification tags.
aResourceAnnotation :: Lens' Annotation (Maybe ResourceAnnotation)
aResourceAnnotation
  = lens _aResourceAnnotation
      (\ s a -> s{_aResourceAnnotation = a})

instance FromJSON Annotation where
        parseJSON
          = withObject "Annotation"
              (\ o ->
                 Annotation' <$>
                   (o .:? "textAnnotation") <*>
                     (o .:? "imageAnnotation")
                     <*> (o .:? "name")
                     <*> (o .:? "annotationSource")
                     <*> (o .:? "resourceAnnotation"))

instance ToJSON Annotation where
        toJSON Annotation'{..}
          = object
              (catMaybes
                 [("textAnnotation" .=) <$> _aTextAnnotation,
                  ("imageAnnotation" .=) <$> _aImageAnnotation,
                  ("name" .=) <$> _aName,
                  ("annotationSource" .=) <$> _aAnnotationSource,
                  ("resourceAnnotation" .=) <$> _aResourceAnnotation])

-- | Specifies where notifications should be sent upon changes to a data
-- store.
--
-- /See:/ 'notificationConfig' smart constructor.
newtype NotificationConfig =
  NotificationConfig'
    { _ncPubsubTopic :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NotificationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncPubsubTopic'
notificationConfig
    :: NotificationConfig
notificationConfig = NotificationConfig' {_ncPubsubTopic = Nothing}

-- | The [Cloud Pub\/Sub](https:\/\/cloud.google.com\/pubsub\/docs\/) topic
-- that notifications of changes are published on. Supplied by the client.
-- PubsubMessage.Data will contain the resource name.
-- PubsubMessage.MessageId is the ID of this message. It is guaranteed to
-- be unique within the topic. PubsubMessage.PublishTime is the time at
-- which the message was published. Notifications are only sent if the
-- topic is non-empty. [Topic
-- names](https:\/\/cloud.google.com\/pubsub\/docs\/overview#names) must be
-- scoped to a project. cloud-healthcare\'system.gserviceaccount.com must
-- have publisher permissions on the given Cloud Pub\/Sub topic. Not having
-- adequate permissions will cause the calls that send notifications to
-- fail.
ncPubsubTopic :: Lens' NotificationConfig (Maybe Text)
ncPubsubTopic
  = lens _ncPubsubTopic
      (\ s a -> s{_ncPubsubTopic = a})

instance FromJSON NotificationConfig where
        parseJSON
          = withObject "NotificationConfig"
              (\ o ->
                 NotificationConfig' <$> (o .:? "pubsubTopic"))

instance ToJSON NotificationConfig where
        toJSON NotificationConfig'{..}
          = object
              (catMaybes [("pubsubTopic" .=) <$> _ncPubsubTopic])

-- | Specifies how de-identification of a FHIR store should be handled.
--
-- /See:/ 'fhirConfig' smart constructor.
data FhirConfig =
  FhirConfig'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FhirConfig' with the minimum fields required to make a request.
--
fhirConfig
    :: FhirConfig
fhirConfig = FhirConfig'

instance FromJSON FhirConfig where
        parseJSON
          = withObject "FhirConfig" (\ o -> pure FhirConfig')

instance ToJSON FhirConfig where
        toJSON = const emptyObject

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
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

-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax. The application context of the containing message determines
-- which well-known feature set of CEL is supported.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | An optional description of the expression. This is a longer text which
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

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations     :: !(Maybe [Location])
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

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}

-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
data GetIAMPolicyRequest =
  GetIAMPolicyRequest'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest'

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> pure GetIAMPolicyRequest')

instance ToJSON GetIAMPolicyRequest where
        toJSON = const emptyObject

-- | Represents a FHIR store.
--
-- /See:/ 'fhirStore' smart constructor.
data FhirStore =
  FhirStore'
    { _fsEnableUpdateCreate          :: !(Maybe Bool)
    , _fsNotificationConfig          :: !(Maybe NotificationConfig)
    , _fsDisableReferentialIntegrity :: !(Maybe Bool)
    , _fsDisableResourceVersioning   :: !(Maybe Bool)
    , _fsName                        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FhirStore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsEnableUpdateCreate'
--
-- * 'fsNotificationConfig'
--
-- * 'fsDisableReferentialIntegrity'
--
-- * 'fsDisableResourceVersioning'
--
-- * 'fsName'
fhirStore
    :: FhirStore
fhirStore =
  FhirStore'
    { _fsEnableUpdateCreate = Nothing
    , _fsNotificationConfig = Nothing
    , _fsDisableReferentialIntegrity = Nothing
    , _fsDisableResourceVersioning = Nothing
    , _fsName = Nothing
    }

-- | Whether this FHIR store has the [updateCreate
-- capability](https:\/\/www.hl7.org\/fhir\/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate).
-- This determines if the client can use an Update operation to create a
-- new resource with a client-specified ID. If false, all IDs are
-- server-assigned through the Create operation and attempts to Update a
-- non-existent resource will return errors. Please treat the audit logs
-- with appropriate levels of care if client-specified resource IDs contain
-- sensitive data such as patient identifiers, those IDs will be part of
-- the FHIR resource path recorded in Cloud audit logs and Cloud Pub\/Sub
-- notifications.
fsEnableUpdateCreate :: Lens' FhirStore (Maybe Bool)
fsEnableUpdateCreate
  = lens _fsEnableUpdateCreate
      (\ s a -> s{_fsEnableUpdateCreate = a})

-- | If non-empty, publish all resource modifications of this FHIR store to
-- this destination. The Cloud Pub\/Sub message attributes will contain a
-- map with a string describing the action that has triggered the
-- notification, e.g. \"action\":\"CreateResource\".
fsNotificationConfig :: Lens' FhirStore (Maybe NotificationConfig)
fsNotificationConfig
  = lens _fsNotificationConfig
      (\ s a -> s{_fsNotificationConfig = a})

-- | Whether to disable referential integrity in this FHIR store. This field
-- is immutable after FHIR store creation. The default value is false,
-- meaning that the API will enforce referential integrity and fail the
-- requests that will result in inconsistent state in the FHIR store. When
-- this field is set to true, the API will skip referential integrity
-- check. Consequently, operations that rely on references, such as
-- GetPatientEverything, will not return all the results if broken
-- references exist.
fsDisableReferentialIntegrity :: Lens' FhirStore (Maybe Bool)
fsDisableReferentialIntegrity
  = lens _fsDisableReferentialIntegrity
      (\ s a -> s{_fsDisableReferentialIntegrity = a})

-- | Whether to disable resource versioning for this FHIR store. This field
-- can not be changed after the creation of FHIR store. If set to false,
-- which is the default behavior, all write operations will cause
-- historical versions to be recorded automatically. The historical
-- versions can be fetched through the history APIs, but cannot be updated.
-- If set to true, no historical versions will be kept. The server will
-- send back errors for attempts to read the historical versions.
fsDisableResourceVersioning :: Lens' FhirStore (Maybe Bool)
fsDisableResourceVersioning
  = lens _fsDisableResourceVersioning
      (\ s a -> s{_fsDisableResourceVersioning = a})

-- | Output only. Resource name of the FHIR store, of the form
-- \`projects\/{project_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
fsName :: Lens' FhirStore (Maybe Text)
fsName = lens _fsName (\ s a -> s{_fsName = a})

instance FromJSON FhirStore where
        parseJSON
          = withObject "FhirStore"
              (\ o ->
                 FhirStore' <$>
                   (o .:? "enableUpdateCreate") <*>
                     (o .:? "notificationConfig")
                     <*> (o .:? "disableReferentialIntegrity")
                     <*> (o .:? "disableResourceVersioning")
                     <*> (o .:? "name"))

instance ToJSON FhirStore where
        toJSON FhirStore'{..}
          = object
              (catMaybes
                 [("enableUpdateCreate" .=) <$> _fsEnableUpdateCreate,
                  ("notificationConfig" .=) <$> _fsNotificationConfig,
                  ("disableReferentialIntegrity" .=) <$>
                    _fsDisableReferentialIntegrity,
                  ("disableResourceVersioning" .=) <$>
                    _fsDisableResourceVersioning,
                  ("name" .=) <$> _fsName])

-- | A mapping from the positional location to the value. The key string uses
-- indexes separated by dots to identify Fields, components and
-- sub-components. To be consistent with how the standard refers to
-- different parts of message, we use zero-based indexes for fields and
-- one-based indexes for components and sub-components. A bracket notation
-- is also used to identify different instances of a repeated field.
-- Zero-based indexes are used to refer to each instance. Regex for key:
-- (\\d+)(\\[\\d+\\])?(.\\d+)?(.\\d+)? Examples of (key, value) pairs:
-- (0.1, \"foo\") denotes First component of Field 0 has the value \"foo\".
-- (1.1.2, \"bar\") denotes Second sub-component of the first component of
-- Field 1 has the value \"bar\". (1[0].1, \"baz\") denotes First component
-- of the first Instance of Field 1, which is repeated, has the value
-- \"baz\".
--
-- /See:/ 'segmentFields' smart constructor.
newtype SegmentFields =
  SegmentFields'
    { _sfAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SegmentFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfAddtional'
segmentFields
    :: HashMap Text Text -- ^ 'sfAddtional'
    -> SegmentFields
segmentFields pSfAddtional_ =
  SegmentFields' {_sfAddtional = _Coerce # pSfAddtional_}

sfAddtional :: Lens' SegmentFields (HashMap Text Text)
sfAddtional
  = lens _sfAddtional (\ s a -> s{_sfAddtional = a}) .
      _Coerce

instance FromJSON SegmentFields where
        parseJSON
          = withObject "SegmentFields"
              (\ o -> SegmentFields' <$> (parseJSONObject o))

instance ToJSON SegmentFields where
        toJSON = toJSON . _sfAddtional

-- | A message representing a health dataset. A health dataset represents a
-- collection of healthcare data pertaining to one or more patients. This
-- may include multiple modalities of healthcare data, such as electronic
-- medical records or medical imaging data.
--
-- /See:/ 'dataSet' smart constructor.
data DataSet =
  DataSet'
    { _dsName     :: !(Maybe Text)
    , _dsTimeZone :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DataSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsName'
--
-- * 'dsTimeZone'
dataSet
    :: DataSet
dataSet = DataSet' {_dsName = Nothing, _dsTimeZone = Nothing}

-- | Output only. Resource name of the dataset, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\`.
dsName :: Lens' DataSet (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

-- | The default timezone used by this dataset. Must be a either a valid IANA
-- time zone name such as \"America\/New_York\" or empty, which defaults to
-- UTC. This is used for parsing times in resources (e.g., HL7 messages)
-- where no explicit timezone is specified.
dsTimeZone :: Lens' DataSet (Maybe Text)
dsTimeZone
  = lens _dsTimeZone (\ s a -> s{_dsTimeZone = a})

instance FromJSON DataSet where
        parseJSON
          = withObject "DataSet"
              (\ o ->
                 DataSet' <$> (o .:? "name") <*> (o .:? "timeZone"))

instance ToJSON DataSet where
        toJSON DataSet'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _dsName,
                  ("timeZone" .=) <$> _dsTimeZone])

-- | The BigQuery table to which the output should be written.
--
-- /See:/ 'bigQueryDestination' smart constructor.
data BigQueryDestination =
  BigQueryDestination'
    { _bqdDataSet        :: !(Maybe Text)
    , _bqdOverwriteTable :: !(Maybe Bool)
    , _bqdTable          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BigQueryDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bqdDataSet'
--
-- * 'bqdOverwriteTable'
--
-- * 'bqdTable'
bigQueryDestination
    :: BigQueryDestination
bigQueryDestination =
  BigQueryDestination'
    {_bqdDataSet = Nothing, _bqdOverwriteTable = Nothing, _bqdTable = Nothing}

-- | Required. The BigQuery dataset to which the DICOM store should be
-- exported. If this dataset does not exist, the export call returns an
-- error.
bqdDataSet :: Lens' BigQueryDestination (Maybe Text)
bqdDataSet
  = lens _bqdDataSet (\ s a -> s{_bqdDataSet = a})

-- | If the destination table already exists and this flag is \`TRUE\`, the
-- table will be overwritten by the contents of the DICOM store. If the
-- flag is not set and the destination table already exists, the export
-- call returns an error.
bqdOverwriteTable :: Lens' BigQueryDestination (Maybe Bool)
bqdOverwriteTable
  = lens _bqdOverwriteTable
      (\ s a -> s{_bqdOverwriteTable = a})

-- | Required. The BigQuery table to which the DICOM store should be written.
-- If this table does not exist, a new table with the given name will be
-- created.
bqdTable :: Lens' BigQueryDestination (Maybe Text)
bqdTable = lens _bqdTable (\ s a -> s{_bqdTable = a})

instance FromJSON BigQueryDestination where
        parseJSON
          = withObject "BigQueryDestination"
              (\ o ->
                 BigQueryDestination' <$>
                   (o .:? "dataset") <*> (o .:? "overwriteTable") <*>
                     (o .:? "table"))

instance ToJSON BigQueryDestination where
        toJSON BigQueryDestination'{..}
          = object
              (catMaybes
                 [("dataset" .=) <$> _bqdDataSet,
                  ("overwriteTable" .=) <$> _bqdOverwriteTable,
                  ("table" .=) <$> _bqdTable])

-- | Lists the Annotations in the specified Annotation store.
--
-- /See:/ 'listAnnotationsResponse' smart constructor.
data ListAnnotationsResponse =
  ListAnnotationsResponse'
    { _larAnnotations   :: !(Maybe [Text])
    , _larNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAnnotationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larAnnotations'
--
-- * 'larNextPageToken'
listAnnotationsResponse
    :: ListAnnotationsResponse
listAnnotationsResponse =
  ListAnnotationsResponse'
    {_larAnnotations = Nothing, _larNextPageToken = Nothing}

-- | The returned Annotations names. Won\'t be more values than the value of
-- page_size in the request.
larAnnotations :: Lens' ListAnnotationsResponse [Text]
larAnnotations
  = lens _larAnnotations
      (\ s a -> s{_larAnnotations = a})
      . _Default
      . _Coerce

-- | Token to retrieve the next page of results or empty if there are no more
-- results in the list.
larNextPageToken :: Lens' ListAnnotationsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

instance FromJSON ListAnnotationsResponse where
        parseJSON
          = withObject "ListAnnotationsResponse"
              (\ o ->
                 ListAnnotationsResponse' <$>
                   (o .:? "annotations" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListAnnotationsResponse where
        toJSON ListAnnotationsResponse'{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _larAnnotations,
                  ("nextPageToken" .=) <$> _larNextPageToken])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lName        :: !(Maybe Text)
    , _lMetadata    :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels      :: !(Maybe LocationLabels)
    , _lLocationId  :: !(Maybe Text)
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

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationSchema)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationSchema)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

--
-- /See:/ 'finding' smart constructor.
data Finding =
  Finding'
    { _fStart    :: !(Maybe (Textual Int64))
    , _fInfoType :: !(Maybe Text)
    , _fEnd      :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Finding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fStart'
--
-- * 'fInfoType'
--
-- * 'fEnd'
finding
    :: Finding
finding = Finding' {_fStart = Nothing, _fInfoType = Nothing, _fEnd = Nothing}

-- | Zero-based starting index of the found text, inclusively.
fStart :: Lens' Finding (Maybe Int64)
fStart
  = lens _fStart (\ s a -> s{_fStart = a}) .
      mapping _Coerce

-- | The type of information stored in this text range (e.g. HumanName,
-- BirthDate, Address, etc.)
fInfoType :: Lens' Finding (Maybe Text)
fInfoType
  = lens _fInfoType (\ s a -> s{_fInfoType = a})

-- | Zero-based ending index of the found text, exclusively.
fEnd :: Lens' Finding (Maybe Int64)
fEnd
  = lens _fEnd (\ s a -> s{_fEnd = a}) .
      mapping _Coerce

instance FromJSON Finding where
        parseJSON
          = withObject "Finding"
              (\ o ->
                 Finding' <$>
                   (o .:? "start") <*> (o .:? "infoType") <*>
                     (o .:? "end"))

instance ToJSON Finding where
        toJSON Finding'{..}
          = object
              (catMaybes
                 [("start" .=) <$> _fStart,
                  ("infoType" .=) <$> _fInfoType,
                  ("end" .=) <$> _fEnd])

-- | Specifies how de-identification of image pixel should be handled.
--
-- /See:/ 'imageConfig' smart constructor.
newtype ImageConfig =
  ImageConfig'
    { _icRedactAllText :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icRedactAllText'
imageConfig
    :: ImageConfig
imageConfig = ImageConfig' {_icRedactAllText = Nothing}

-- | If true, all text found in the image is redacted.
icRedactAllText :: Lens' ImageConfig (Maybe Bool)
icRedactAllText
  = lens _icRedactAllText
      (\ s a -> s{_icRedactAllText = a})

instance FromJSON ImageConfig where
        parseJSON
          = withObject "ImageConfig"
              (\ o -> ImageConfig' <$> (o .:? "redactAllText"))

instance ToJSON ImageConfig where
        toJSON ImageConfig'{..}
          = object
              (catMaybes
                 [("redactAllText" .=) <$> _icRedactAllText])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Contains error status for each import failure.
--
-- /See:/ 'importError' smart constructor.
data ImportError =
  ImportError'
    { _ieStatus   :: !(Maybe Status)
    , _ieResource :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ieStatus'
--
-- * 'ieResource'
importError
    :: ImportError
importError = ImportError' {_ieStatus = Nothing, _ieResource = Nothing}

-- | Error status associated with resource.
ieStatus :: Lens' ImportError (Maybe Status)
ieStatus = lens _ieStatus (\ s a -> s{_ieStatus = a})

-- | Resource name.
ieResource :: Lens' ImportError (Maybe Text)
ieResource
  = lens _ieResource (\ s a -> s{_ieResource = a})

instance FromJSON ImportError where
        parseJSON
          = withObject "ImportError"
              (\ o ->
                 ImportError' <$>
                   (o .:? "status") <*> (o .:? "resource"))

instance ToJSON ImportError where
        toJSON ImportError'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _ieStatus,
                  ("resource" .=) <$> _ieResource])

-- | Imports data into the specified DICOM store. Returns an error if any of
-- the files to import are not DICOM files. This API will accept duplicate
-- DICOM instances, by simply ignoring the newly pushed instance (it will
-- not overwrite).
--
-- /See:/ 'importDicomDataRequest' smart constructor.
newtype ImportDicomDataRequest =
  ImportDicomDataRequest'
    { _iddrInputConfig :: Maybe InputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportDicomDataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iddrInputConfig'
importDicomDataRequest
    :: ImportDicomDataRequest
importDicomDataRequest = ImportDicomDataRequest' {_iddrInputConfig = Nothing}

-- | Specifies where the imported data resides.
iddrInputConfig :: Lens' ImportDicomDataRequest (Maybe InputConfig)
iddrInputConfig
  = lens _iddrInputConfig
      (\ s a -> s{_iddrInputConfig = a})

instance FromJSON ImportDicomDataRequest where
        parseJSON
          = withObject "ImportDicomDataRequest"
              (\ o ->
                 ImportDicomDataRequest' <$> (o .:? "inputConfig"))

instance ToJSON ImportDicomDataRequest where
        toJSON ImportDicomDataRequest'{..}
          = object
              (catMaybes [("inputConfig" .=) <$> _iddrInputConfig])

-- | Represents an HL7v2 store.
--
-- /See:/ 'hl7V2Store' smart constructor.
data Hl7V2Store =
  Hl7V2Store'
    { _hvsNotificationConfig :: !(Maybe NotificationConfig)
    , _hvsName               :: !(Maybe Text)
    , _hvsParserConfig       :: !(Maybe ParserConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Hl7V2Store' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hvsNotificationConfig'
--
-- * 'hvsName'
--
-- * 'hvsParserConfig'
hl7V2Store
    :: Hl7V2Store
hl7V2Store =
  Hl7V2Store'
    { _hvsNotificationConfig = Nothing
    , _hvsName = Nothing
    , _hvsParserConfig = Nothing
    }

-- | The notification destination all messages (both Ingest & Create) are
-- published on. Only the message name is sent as part of the notification.
-- If this is unset, no notifications will be sent. Supplied by the client.
hvsNotificationConfig :: Lens' Hl7V2Store (Maybe NotificationConfig)
hvsNotificationConfig
  = lens _hvsNotificationConfig
      (\ s a -> s{_hvsNotificationConfig = a})

-- | Output only. Resource name of the HL7v2 store, of the form
-- \`projects\/{project_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7v2_store_id}\`.
hvsName :: Lens' Hl7V2Store (Maybe Text)
hvsName = lens _hvsName (\ s a -> s{_hvsName = a})

-- | The configuration for the parser. It determines how the server parses
-- the messages.
hvsParserConfig :: Lens' Hl7V2Store (Maybe ParserConfig)
hvsParserConfig
  = lens _hvsParserConfig
      (\ s a -> s{_hvsParserConfig = a})

instance FromJSON Hl7V2Store where
        parseJSON
          = withObject "Hl7V2Store"
              (\ o ->
                 Hl7V2Store' <$>
                   (o .:? "notificationConfig") <*> (o .:? "name") <*>
                     (o .:? "parserConfig"))

instance ToJSON Hl7V2Store where
        toJSON Hl7V2Store'{..}
          = object
              (catMaybes
                 [("notificationConfig" .=) <$>
                    _hvsNotificationConfig,
                  ("name" .=) <$> _hvsName,
                  ("parserConfig" .=) <$> _hvsParserConfig])

-- | An Annotation store that can store annotation resources such as labels
-- and tags for text, image and audio.
--
-- /See:/ 'annotationStore' smart constructor.
data AnnotationStore =
  AnnotationStore'
    { _asName   :: !(Maybe Text)
    , _asLabels :: !(Maybe AnnotationStoreLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AnnotationStore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asName'
--
-- * 'asLabels'
annotationStore
    :: AnnotationStore
annotationStore = AnnotationStore' {_asName = Nothing, _asLabels = Nothing}

-- | Output only. Resource name of the Annotation store, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/annotationStores\/{annotation_store_id}\`.
asName :: Lens' AnnotationStore (Maybe Text)
asName = lens _asName (\ s a -> s{_asName = a})

-- | User-supplied key-value pairs used to organize Annotation stores. Label
-- keys must be between 1 and 63 characters long, have a UTF-8 encoding of
-- maximum 128 bytes, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be
-- between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
-- bytes, and must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated
-- with a given store.
asLabels :: Lens' AnnotationStore (Maybe AnnotationStoreLabels)
asLabels = lens _asLabels (\ s a -> s{_asLabels = a})

instance FromJSON AnnotationStore where
        parseJSON
          = withObject "AnnotationStore"
              (\ o ->
                 AnnotationStore' <$>
                   (o .:? "name") <*> (o .:? "labels"))

instance ToJSON AnnotationStore where
        toJSON AnnotationStore'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _asName,
                  ("labels" .=) <$> _asLabels])

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'boundingPoly' smart constructor.
data BoundingPoly =
  BoundingPoly'
    { _bpLabel    :: !(Maybe Text)
    , _bpVertices :: !(Maybe [Vertex])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpLabel'
--
-- * 'bpVertices'
boundingPoly
    :: BoundingPoly
boundingPoly = BoundingPoly' {_bpLabel = Nothing, _bpVertices = Nothing}

bpLabel :: Lens' BoundingPoly (Maybe Text)
bpLabel = lens _bpLabel (\ s a -> s{_bpLabel = a})

bpVertices :: Lens' BoundingPoly [Vertex]
bpVertices
  = lens _bpVertices (\ s a -> s{_bpVertices = a}) .
      _Default
      . _Coerce

instance FromJSON BoundingPoly where
        parseJSON
          = withObject "BoundingPoly"
              (\ o ->
                 BoundingPoly' <$>
                   (o .:? "label") <*> (o .:? "vertices" .!= mempty))

instance ToJSON BoundingPoly where
        toJSON BoundingPoly'{..}
          = object
              (catMaybes
                 [("label" .=) <$> _bpLabel,
                  ("vertices" .=) <$> _bpVertices])

-- | Image annotation.
--
-- /See:/ 'imageAnnotation' smart constructor.
newtype ImageAnnotation =
  ImageAnnotation'
    { _iaBoundingPolys :: Maybe [BoundingPoly]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaBoundingPolys'
imageAnnotation
    :: ImageAnnotation
imageAnnotation = ImageAnnotation' {_iaBoundingPolys = Nothing}

-- | The list of polygons outlining the sensitive regions in the image.
iaBoundingPolys :: Lens' ImageAnnotation [BoundingPoly]
iaBoundingPolys
  = lens _iaBoundingPolys
      (\ s a -> s{_iaBoundingPolys = a})
      . _Default
      . _Coerce

instance FromJSON ImageAnnotation where
        parseJSON
          = withObject "ImageAnnotation"
              (\ o ->
                 ImageAnnotation' <$>
                   (o .:? "boundingPolys" .!= mempty))

instance ToJSON ImageAnnotation where
        toJSON ImageAnnotation'{..}
          = object
              (catMaybes
                 [("boundingPolys" .=) <$> _iaBoundingPolys])

-- | A 2D coordinate in an image. The origin is the top-left.
--
-- /See:/ 'vertex' smart constructor.
data Vertex =
  Vertex'
    { _vX :: !(Maybe (Textual Double))
    , _vY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Vertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vX'
--
-- * 'vY'
vertex
    :: Vertex
vertex = Vertex' {_vX = Nothing, _vY = Nothing}

-- | X coordinate.
vX :: Lens' Vertex (Maybe Double)
vX = lens _vX (\ s a -> s{_vX = a}) . mapping _Coerce

-- | Y coordinate.
vY :: Lens' Vertex (Maybe Double)
vY = lens _vY (\ s a -> s{_vY = a}) . mapping _Coerce

instance FromJSON Vertex where
        parseJSON
          = withObject "Vertex"
              (\ o -> Vertex' <$> (o .:? "x") <*> (o .:? "y"))

instance ToJSON Vertex where
        toJSON Vertex'{..}
          = object
              (catMaybes [("x" .=) <$> _vX, ("y" .=) <$> _vY])

-- | The Google Cloud Storage location to which the output should be written.
--
-- /See:/ 'gcsDestination' smart constructor.
data GcsDestination =
  GcsDestination'
    { _gdURIPrefix :: !(Maybe Text)
    , _gdMimeType  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdURIPrefix'
--
-- * 'gdMimeType'
gcsDestination
    :: GcsDestination
gcsDestination = GcsDestination' {_gdURIPrefix = Nothing, _gdMimeType = Nothing}

-- | URI for a Google Cloud Storage directory to which result files should be
-- written (e.g., \`gs:\/\/bucket-id\/path\/to\/destination\/dir\`). If
-- there is no trailing slash, the service will append one when composing
-- the object path. The user is responsible for creating the Google Cloud
-- Storage bucket referenced in \`uri_prefix\`.
gdURIPrefix :: Lens' GcsDestination (Maybe Text)
gdURIPrefix
  = lens _gdURIPrefix (\ s a -> s{_gdURIPrefix = a})

-- | MIME types supported by DICOM spec. Each file will be written in the
-- following format:
-- \`...\/{study_id}\/{series_id}\/{instance_id}[\/{frame_number}].{extension}\`
-- The frame_number component will exist only for multi-frame instances.
-- Refer to the DICOM conformance statement for permissible MIME types:
-- https:\/\/cloud.google.com\/healthcare\/docs\/dicom#wado-rs The
-- following extensions will be used for output files: application\/dicom
-- -> .dcm image\/jpeg -> .jpg image\/png -> .png If unspecified, the
-- instances will be exported in their original DICOM format.
gdMimeType :: Lens' GcsDestination (Maybe Text)
gdMimeType
  = lens _gdMimeType (\ s a -> s{_gdMimeType = a})

instance FromJSON GcsDestination where
        parseJSON
          = withObject "GcsDestination"
              (\ o ->
                 GcsDestination' <$>
                   (o .:? "uriPrefix") <*> (o .:? "mimeType"))

instance ToJSON GcsDestination where
        toJSON GcsDestination'{..}
          = object
              (catMaybes
                 [("uriPrefix" .=) <$> _gdURIPrefix,
                  ("mimeType" .=) <$> _gdMimeType])

-- | BigQuery dataset location.
--
-- /See:/ 'bigQueryLocation' smart constructor.
data BigQueryLocation =
  BigQueryLocation'
    { _bqlSchemaConfig :: !(Maybe SchemaConfig)
    , _bqlDataSetId    :: !(Maybe Text)
    , _bqlProjectId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BigQueryLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bqlSchemaConfig'
--
-- * 'bqlDataSetId'
--
-- * 'bqlProjectId'
bigQueryLocation
    :: BigQueryLocation
bigQueryLocation =
  BigQueryLocation'
    { _bqlSchemaConfig = Nothing
    , _bqlDataSetId = Nothing
    , _bqlProjectId = Nothing
    }

-- | The configuration for the exported BigQuery schema.
bqlSchemaConfig :: Lens' BigQueryLocation (Maybe SchemaConfig)
bqlSchemaConfig
  = lens _bqlSchemaConfig
      (\ s a -> s{_bqlSchemaConfig = a})

-- | ID of the dataset that houses the BigQuery tables.
bqlDataSetId :: Lens' BigQueryLocation (Maybe Text)
bqlDataSetId
  = lens _bqlDataSetId (\ s a -> s{_bqlDataSetId = a})

-- | ID of the project that owns the BigQuery datasets.
bqlProjectId :: Lens' BigQueryLocation (Maybe Text)
bqlProjectId
  = lens _bqlProjectId (\ s a -> s{_bqlProjectId = a})

instance FromJSON BigQueryLocation where
        parseJSON
          = withObject "BigQueryLocation"
              (\ o ->
                 BigQueryLocation' <$>
                   (o .:? "schemaConfig") <*> (o .:? "datasetId") <*>
                     (o .:? "projectId"))

instance ToJSON BigQueryLocation where
        toJSON BigQueryLocation'{..}
          = object
              (catMaybes
                 [("schemaConfig" .=) <$> _bqlSchemaConfig,
                  ("datasetId" .=) <$> _bqlDataSetId,
                  ("projectId" .=) <$> _bqlProjectId])

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

-- | Configuration for the FHIR BigQuery schema. Determines how the server
-- generates the schema.
--
-- /See:/ 'schemaConfig' smart constructor.
data SchemaConfig =
  SchemaConfig'
    { _scRecursiveStructureDepth :: !(Maybe (Textual Int64))
    , _scSchemaType              :: !(Maybe SchemaConfigSchemaType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SchemaConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scRecursiveStructureDepth'
--
-- * 'scSchemaType'
schemaConfig
    :: SchemaConfig
schemaConfig =
  SchemaConfig' {_scRecursiveStructureDepth = Nothing, _scSchemaType = Nothing}

-- | The depth for all recursive structures in the output analytics schema.
-- For example, concept in the CodeSystem resource is a recursive
-- structure; when the depth is 2, the CodeSystem table will have a column
-- called \`concept.concept\` but not \`concept.concept.concept\`. If not
-- specified or set to 0, the server will use the default value 2.
scRecursiveStructureDepth :: Lens' SchemaConfig (Maybe Int64)
scRecursiveStructureDepth
  = lens _scRecursiveStructureDepth
      (\ s a -> s{_scRecursiveStructureDepth = a})
      . mapping _Coerce

-- | Specifies the output schema type. If unspecified, the default is
-- \`LOSSLESS\`.
scSchemaType :: Lens' SchemaConfig (Maybe SchemaConfigSchemaType)
scSchemaType
  = lens _scSchemaType (\ s a -> s{_scSchemaType = a})

instance FromJSON SchemaConfig where
        parseJSON
          = withObject "SchemaConfig"
              (\ o ->
                 SchemaConfig' <$>
                   (o .:? "recursiveStructureDepth") <*>
                     (o .:? "schemaType"))

instance ToJSON SchemaConfig where
        toJSON SchemaConfig'{..}
          = object
              (catMaybes
                 [("recursiveStructureDepth" .=) <$>
                    _scRecursiveStructureDepth,
                  ("schemaType" .=) <$> _scSchemaType])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
data SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprUpdateMask :: !(Maybe GFieldMask)
    , _siprPolicy     :: !(Maybe Policy)
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
-- the following default mask is used: paths: \"bindings, etag\" This field
-- is only used by Cloud IAM.
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

-- | ProgressCounter provides counters to describe an operation\'s progress.
--
-- /See:/ 'progressCounter' smart constructor.
data ProgressCounter =
  ProgressCounter'
    { _pcPending :: !(Maybe (Textual Int64))
    , _pcSuccess :: !(Maybe (Textual Int64))
    , _pcFailure :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProgressCounter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcPending'
--
-- * 'pcSuccess'
--
-- * 'pcFailure'
progressCounter
    :: ProgressCounter
progressCounter =
  ProgressCounter'
    {_pcPending = Nothing, _pcSuccess = Nothing, _pcFailure = Nothing}

-- | The number of units that are pending in the operation.
pcPending :: Lens' ProgressCounter (Maybe Int64)
pcPending
  = lens _pcPending (\ s a -> s{_pcPending = a}) .
      mapping _Coerce

-- | The number of units that succeeded in the operation.
pcSuccess :: Lens' ProgressCounter (Maybe Int64)
pcSuccess
  = lens _pcSuccess (\ s a -> s{_pcSuccess = a}) .
      mapping _Coerce

-- | The number of units that failed in the operation.
pcFailure :: Lens' ProgressCounter (Maybe Int64)
pcFailure
  = lens _pcFailure (\ s a -> s{_pcFailure = a}) .
      mapping _Coerce

instance FromJSON ProgressCounter where
        parseJSON
          = withObject "ProgressCounter"
              (\ o ->
                 ProgressCounter' <$>
                   (o .:? "pending") <*> (o .:? "success") <*>
                     (o .:? "failure"))

instance ToJSON ProgressCounter where
        toJSON ProgressCounter'{..}
          = object
              (catMaybes
                 [("pending" .=) <$> _pcPending,
                  ("success" .=) <$> _pcSuccess,
                  ("failure" .=) <$> _pcFailure])

-- | Specifies the location(s) from which data should be imported.
--
-- /See:/ 'inputConfig' smart constructor.
newtype InputConfig =
  InputConfig'
    { _icGcsSource :: Maybe GoogleCloudHealthcareV1alphaGcsSource
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icGcsSource'
inputConfig
    :: InputConfig
inputConfig = InputConfig' {_icGcsSource = Nothing}

-- | Files on Google Cloud Storage. To enable the Cloud Healthcare API to
-- read from resources in your project (e.g. Google Cloud Storage buckets),
-- you must give the consumer Cloud Healthcare API service account the
-- proper permissions. The service account is:
-- \`service-{PROJECT_NUMBER}\'gcp-sa-healthcare.iam.gserviceaccount.com\`.
-- The PROJECT_NUMBER identifies the project that contains the source
-- Google Cloud Storage bucket. To get the project number, go to the GCP
-- Console Dashboard. GcsSource requires the
-- \`roles\/storage.objectViewer\` Cloud IAM role.
icGcsSource :: Lens' InputConfig (Maybe GoogleCloudHealthcareV1alphaGcsSource)
icGcsSource
  = lens _icGcsSource (\ s a -> s{_icGcsSource = a})

instance FromJSON InputConfig where
        parseJSON
          = withObject "InputConfig"
              (\ o -> InputConfig' <$> (o .:? "gcsSource"))

instance ToJSON InputConfig where
        toJSON InputConfig'{..}
          = object
              (catMaybes [("gcsSource" .=) <$> _icGcsSource])

-- | Maps from a resource slice (e.g. FHIR resource field path) to a set of
-- sensitive text findings. For example, Appointment.Narrative text1 -->
-- {findings_1, findings_2, findings_3}
--
-- /See:/ 'sensitiveTextAnnotationDetails' smart constructor.
newtype SensitiveTextAnnotationDetails =
  SensitiveTextAnnotationDetails'
    { _stadAddtional :: HashMap Text Detail
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SensitiveTextAnnotationDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stadAddtional'
sensitiveTextAnnotationDetails
    :: HashMap Text Detail -- ^ 'stadAddtional'
    -> SensitiveTextAnnotationDetails
sensitiveTextAnnotationDetails pStadAddtional_ =
  SensitiveTextAnnotationDetails' {_stadAddtional = _Coerce # pStadAddtional_}

stadAddtional :: Lens' SensitiveTextAnnotationDetails (HashMap Text Detail)
stadAddtional
  = lens _stadAddtional
      (\ s a -> s{_stadAddtional = a})
      . _Coerce

instance FromJSON SensitiveTextAnnotationDetails
         where
        parseJSON
          = withObject "SensitiveTextAnnotationDetails"
              (\ o ->
                 SensitiveTextAnnotationDetails' <$>
                   (parseJSONObject o))

instance ToJSON SensitiveTextAnnotationDetails where
        toJSON = toJSON . _stadAddtional

-- | Configures de-id options specific to different types of content. Each
-- submessage customizes the handling of an
-- https:\/\/tools.ietf.org\/html\/rfc6838 media type or subtype. Configs
-- are applied in a nested manner at runtime.
--
-- /See:/ 'deidentifyConfig' smart constructor.
data DeidentifyConfig =
  DeidentifyConfig'
    { _dcDicom :: !(Maybe DicomConfig)
    , _dcImage :: !(Maybe ImageConfig)
    , _dcFhir  :: !(Maybe FhirConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeidentifyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcDicom'
--
-- * 'dcImage'
--
-- * 'dcFhir'
deidentifyConfig
    :: DeidentifyConfig
deidentifyConfig =
  DeidentifyConfig' {_dcDicom = Nothing, _dcImage = Nothing, _dcFhir = Nothing}

-- | Configures de-id of application\/DICOM content.
dcDicom :: Lens' DeidentifyConfig (Maybe DicomConfig)
dcDicom = lens _dcDicom (\ s a -> s{_dcDicom = a})

-- | Configures de-identification of image pixels wherever they are found in
-- the source_dataset.
dcImage :: Lens' DeidentifyConfig (Maybe ImageConfig)
dcImage = lens _dcImage (\ s a -> s{_dcImage = a})

-- | Configures de-id of application\/FHIR content.
dcFhir :: Lens' DeidentifyConfig (Maybe FhirConfig)
dcFhir = lens _dcFhir (\ s a -> s{_dcFhir = a})

instance FromJSON DeidentifyConfig where
        parseJSON
          = withObject "DeidentifyConfig"
              (\ o ->
                 DeidentifyConfig' <$>
                   (o .:? "dicom") <*> (o .:? "image") <*>
                     (o .:? "fhir"))

instance ToJSON DeidentifyConfig where
        toJSON DeidentifyConfig'{..}
          = object
              (catMaybes
                 [("dicom" .=) <$> _dcDicom,
                  ("image" .=) <$> _dcImage, ("fhir" .=) <$> _dcFhir])

-- | Lists the Annotation stores in the given dataset.
--
-- /See:/ 'listAnnotationStoresResponse' smart constructor.
data ListAnnotationStoresResponse =
  ListAnnotationStoresResponse'
    { _lasrNextPageToken    :: !(Maybe Text)
    , _lasrAnnotationStores :: !(Maybe [AnnotationStore])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAnnotationStoresResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasrNextPageToken'
--
-- * 'lasrAnnotationStores'
listAnnotationStoresResponse
    :: ListAnnotationStoresResponse
listAnnotationStoresResponse =
  ListAnnotationStoresResponse'
    {_lasrNextPageToken = Nothing, _lasrAnnotationStores = Nothing}

-- | Token to retrieve the next page of results or empty if there are no more
-- results in the list.
lasrNextPageToken :: Lens' ListAnnotationStoresResponse (Maybe Text)
lasrNextPageToken
  = lens _lasrNextPageToken
      (\ s a -> s{_lasrNextPageToken = a})

-- | The returned Annotation stores. Won\'t be more Annotation stores than
-- the value of page_size in the request.
lasrAnnotationStores :: Lens' ListAnnotationStoresResponse [AnnotationStore]
lasrAnnotationStores
  = lens _lasrAnnotationStores
      (\ s a -> s{_lasrAnnotationStores = a})
      . _Default
      . _Coerce

instance FromJSON ListAnnotationStoresResponse where
        parseJSON
          = withObject "ListAnnotationStoresResponse"
              (\ o ->
                 ListAnnotationStoresResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "annotationStores" .!= mempty))

instance ToJSON ListAnnotationStoresResponse where
        toJSON ListAnnotationStoresResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lasrNextPageToken,
                  ("annotationStores" .=) <$> _lasrAnnotationStores])

-- | Acknowledges that a message has been ingested into the specified HL7v2
-- store.
--
-- /See:/ 'ingestMessageResponse' smart constructor.
data IngestMessageResponse =
  IngestMessageResponse'
    { _imrHl7Ack  :: !(Maybe Bytes)
    , _imrMessage :: !(Maybe Message)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'IngestMessageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imrHl7Ack'
--
-- * 'imrMessage'
ingestMessageResponse
    :: IngestMessageResponse
ingestMessageResponse =
  IngestMessageResponse' {_imrHl7Ack = Nothing, _imrMessage = Nothing}

-- | HL7v2 ACK message.
imrHl7Ack :: Lens' IngestMessageResponse (Maybe ByteString)
imrHl7Ack
  = lens _imrHl7Ack (\ s a -> s{_imrHl7Ack = a}) .
      mapping _Bytes

-- | Created message resource.
imrMessage :: Lens' IngestMessageResponse (Maybe Message)
imrMessage
  = lens _imrMessage (\ s a -> s{_imrMessage = a})

instance FromJSON IngestMessageResponse where
        parseJSON
          = withObject "IngestMessageResponse"
              (\ o ->
                 IngestMessageResponse' <$>
                   (o .:? "hl7Ack") <*> (o .:? "message"))

instance ToJSON IngestMessageResponse where
        toJSON IngestMessageResponse'{..}
          = object
              (catMaybes
                 [("hl7Ack" .=) <$> _imrHl7Ack,
                  ("message" .=) <$> _imrMessage])

-- | Google Cloud Storage location.
--
-- /See:/ 'gcsDataLocation' smart constructor.
newtype GcsDataLocation =
  GcsDataLocation'
    { _gdlGcsURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GcsDataLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdlGcsURI'
gcsDataLocation
    :: GcsDataLocation
gcsDataLocation = GcsDataLocation' {_gdlGcsURI = Nothing}

-- | The gcs_uri must be in the format \"gs:\/\/bucket\/path\/to\/object\".
-- The gcs_uri may include wildcards in the \"path\/to\/object\" part to to
-- indicate potential matching of multiple objects. Supported wildcards:
-- \'*\' to match 0 or more non-separator characters \'**\' to match 0 or
-- more characters (including separators). Only supported at the end of a
-- path and with no other wildcards. \'?\' to match 1 character.
gdlGcsURI :: Lens' GcsDataLocation (Maybe Text)
gdlGcsURI
  = lens _gdlGcsURI (\ s a -> s{_gdlGcsURI = a})

instance FromJSON GcsDataLocation where
        parseJSON
          = withObject "GcsDataLocation"
              (\ o -> GcsDataLocation' <$> (o .:? "gcsUri"))

instance ToJSON GcsDataLocation where
        toJSON GcsDataLocation'{..}
          = object (catMaybes [("gcsUri" .=) <$> _gdlGcsURI])

-- | AnnotationSource holds the source information of the annotation.
--
-- /See:/ 'annotationSource' smart constructor.
newtype AnnotationSource =
  AnnotationSource'
    { _asCloudHealthcareSource :: Maybe CloudHealthcareSource
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AnnotationSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asCloudHealthcareSource'
annotationSource
    :: AnnotationSource
annotationSource = AnnotationSource' {_asCloudHealthcareSource = Nothing}

-- | Cloud Healthcare API resource.
asCloudHealthcareSource :: Lens' AnnotationSource (Maybe CloudHealthcareSource)
asCloudHealthcareSource
  = lens _asCloudHealthcareSource
      (\ s a -> s{_asCloudHealthcareSource = a})

instance FromJSON AnnotationSource where
        parseJSON
          = withObject "AnnotationSource"
              (\ o ->
                 AnnotationSource' <$>
                   (o .:? "cloudHealthcareSource"))

instance ToJSON AnnotationSource where
        toJSON AnnotationSource'{..}
          = object
              (catMaybes
                 [("cloudHealthcareSource" .=) <$>
                    _asCloudHealthcareSource])

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

-- | Lists the HL7v2 stores in the given dataset.
--
-- /See:/ 'listHl7V2StoresResponse' smart constructor.
data ListHl7V2StoresResponse =
  ListHl7V2StoresResponse'
    { _lhvsrNextPageToken :: !(Maybe Text)
    , _lhvsrHl7V2Stores   :: !(Maybe [Hl7V2Store])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListHl7V2StoresResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhvsrNextPageToken'
--
-- * 'lhvsrHl7V2Stores'
listHl7V2StoresResponse
    :: ListHl7V2StoresResponse
listHl7V2StoresResponse =
  ListHl7V2StoresResponse'
    {_lhvsrNextPageToken = Nothing, _lhvsrHl7V2Stores = Nothing}

-- | Token to retrieve the next page of results or empty if there are no more
-- results in the list.
lhvsrNextPageToken :: Lens' ListHl7V2StoresResponse (Maybe Text)
lhvsrNextPageToken
  = lens _lhvsrNextPageToken
      (\ s a -> s{_lhvsrNextPageToken = a})

-- | The returned HL7v2 stores. Won\'t be more HL7v2 stores than the value of
-- page_size in the request.
lhvsrHl7V2Stores :: Lens' ListHl7V2StoresResponse [Hl7V2Store]
lhvsrHl7V2Stores
  = lens _lhvsrHl7V2Stores
      (\ s a -> s{_lhvsrHl7V2Stores = a})
      . _Default
      . _Coerce

instance FromJSON ListHl7V2StoresResponse where
        parseJSON
          = withObject "ListHl7V2StoresResponse"
              (\ o ->
                 ListHl7V2StoresResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "hl7V2Stores" .!= mempty))

instance ToJSON ListHl7V2StoresResponse where
        toJSON ListHl7V2StoresResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lhvsrNextPageToken,
                  ("hl7V2Stores" .=) <$> _lhvsrHl7V2Stores])

-- | Request to import resources. The FHIR resources to be imported must have
-- client supplied IDs. The server will retain the resource IDs. The import
-- operation is idempotent. Retry will overwrite existing data identified
-- by client supplied IDs. The import operation is not transactional. The
-- server will not roll back any committed changes upon partial failures.
--
-- /See:/ 'importResourcesRequest' smart constructor.
data ImportResourcesRequest =
  ImportResourcesRequest'
    { _irrGcsSourceLocation :: !(Maybe GcsDataLocation)
    , _irrGcsErrorLocation  :: !(Maybe GcsDataLocation)
    , _irrContentStructure  :: !(Maybe ImportResourcesRequestContentStructure)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportResourcesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irrGcsSourceLocation'
--
-- * 'irrGcsErrorLocation'
--
-- * 'irrContentStructure'
importResourcesRequest
    :: ImportResourcesRequest
importResourcesRequest =
  ImportResourcesRequest'
    { _irrGcsSourceLocation = Nothing
    , _irrGcsErrorLocation = Nothing
    , _irrContentStructure = Nothing
    }

-- | Cloud Storage source data locations. Each Cloud Storage object should be
-- a text file that contains newline delimited JSON structures conforming
-- to FHIR standard.
irrGcsSourceLocation :: Lens' ImportResourcesRequest (Maybe GcsDataLocation)
irrGcsSourceLocation
  = lens _irrGcsSourceLocation
      (\ s a -> s{_irrGcsSourceLocation = a})

-- | The Cloud Storage bucket\/folder path to write files that contain error
-- details.
irrGcsErrorLocation :: Lens' ImportResourcesRequest (Maybe GcsDataLocation)
irrGcsErrorLocation
  = lens _irrGcsErrorLocation
      (\ s a -> s{_irrGcsErrorLocation = a})

-- | The content structure in the source location. The default is BUNDLE.
irrContentStructure :: Lens' ImportResourcesRequest (Maybe ImportResourcesRequestContentStructure)
irrContentStructure
  = lens _irrContentStructure
      (\ s a -> s{_irrContentStructure = a})

instance FromJSON ImportResourcesRequest where
        parseJSON
          = withObject "ImportResourcesRequest"
              (\ o ->
                 ImportResourcesRequest' <$>
                   (o .:? "gcsSourceLocation") <*>
                     (o .:? "gcsErrorLocation")
                     <*> (o .:? "contentStructure"))

instance ToJSON ImportResourcesRequest where
        toJSON ImportResourcesRequest'{..}
          = object
              (catMaybes
                 [("gcsSourceLocation" .=) <$> _irrGcsSourceLocation,
                  ("gcsErrorLocation" .=) <$> _irrGcsErrorLocation,
                  ("contentStructure" .=) <$> _irrContentStructure])

-- | Resource level annotation.
--
-- /See:/ 'resourceAnnotation' smart constructor.
newtype ResourceAnnotation =
  ResourceAnnotation'
    { _raLabel :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raLabel'
resourceAnnotation
    :: ResourceAnnotation
resourceAnnotation = ResourceAnnotation' {_raLabel = Nothing}

raLabel :: Lens' ResourceAnnotation (Maybe Text)
raLabel = lens _raLabel (\ s a -> s{_raLabel = a})

instance FromJSON ResourceAnnotation where
        parseJSON
          = withObject "ResourceAnnotation"
              (\ o -> ResourceAnnotation' <$> (o .:? "label"))

instance ToJSON ResourceAnnotation where
        toJSON ResourceAnnotation'{..}
          = object (catMaybes [("label" .=) <$> _raLabel])

-- | User-supplied key-value pairs used to organize Annotation stores. Label
-- keys must be between 1 and 63 characters long, have a UTF-8 encoding of
-- maximum 128 bytes, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be
-- between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
-- bytes, and must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated
-- with a given store.
--
-- /See:/ 'annotationStoreLabels' smart constructor.
newtype AnnotationStoreLabels =
  AnnotationStoreLabels'
    { _aslAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AnnotationStoreLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslAddtional'
annotationStoreLabels
    :: HashMap Text Text -- ^ 'aslAddtional'
    -> AnnotationStoreLabels
annotationStoreLabels pAslAddtional_ =
  AnnotationStoreLabels' {_aslAddtional = _Coerce # pAslAddtional_}

aslAddtional :: Lens' AnnotationStoreLabels (HashMap Text Text)
aslAddtional
  = lens _aslAddtional (\ s a -> s{_aslAddtional = a})
      . _Coerce

instance FromJSON AnnotationStoreLabels where
        parseJSON
          = withObject "AnnotationStoreLabels"
              (\ o ->
                 AnnotationStoreLabels' <$> (parseJSONObject o))

instance ToJSON AnnotationStoreLabels where
        toJSON = toJSON . _aslAddtional

-- | The configuration for the parser. It determines how the server parses
-- the messages.
--
-- /See:/ 'parserConfig' smart constructor.
data ParserConfig =
  ParserConfig'
    { _pcSegmentTerminator :: !(Maybe Bytes)
    , _pcAllowNullHeader   :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParserConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcSegmentTerminator'
--
-- * 'pcAllowNullHeader'
parserConfig
    :: ParserConfig
parserConfig =
  ParserConfig' {_pcSegmentTerminator = Nothing, _pcAllowNullHeader = Nothing}

-- | Byte(s) to be used as the segment terminator. If this is unset, \'\\r\'
-- will be used as segment terminator.
pcSegmentTerminator :: Lens' ParserConfig (Maybe ByteString)
pcSegmentTerminator
  = lens _pcSegmentTerminator
      (\ s a -> s{_pcSegmentTerminator = a})
      . mapping _Bytes

-- | Determines whether messages with no header are allowed.
pcAllowNullHeader :: Lens' ParserConfig (Maybe Bool)
pcAllowNullHeader
  = lens _pcAllowNullHeader
      (\ s a -> s{_pcAllowNullHeader = a})

instance FromJSON ParserConfig where
        parseJSON
          = withObject "ParserConfig"
              (\ o ->
                 ParserConfig' <$>
                   (o .:? "segmentTerminator") <*>
                     (o .:? "allowNullHeader"))

instance ToJSON ParserConfig where
        toJSON ParserConfig'{..}
          = object
              (catMaybes
                 [("segmentTerminator" .=) <$> _pcSegmentTerminator,
                  ("allowNullHeader" .=) <$> _pcAllowNullHeader])

-- | Cloud Healthcare API resource.
--
-- /See:/ 'cloudHealthcareSource' smart constructor.
newtype CloudHealthcareSource =
  CloudHealthcareSource'
    { _chsName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CloudHealthcareSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chsName'
cloudHealthcareSource
    :: CloudHealthcareSource
cloudHealthcareSource = CloudHealthcareSource' {_chsName = Nothing}

-- | Full path of a Cloud Healthcare API resource.
chsName :: Lens' CloudHealthcareSource (Maybe Text)
chsName = lens _chsName (\ s a -> s{_chsName = a})

instance FromJSON CloudHealthcareSource where
        parseJSON
          = withObject "CloudHealthcareSource"
              (\ o -> CloudHealthcareSource' <$> (o .:? "name"))

instance ToJSON CloudHealthcareSource where
        toJSON CloudHealthcareSource'{..}
          = object (catMaybes [("name" .=) <$> _chsName])

-- | Specifies the location(s) to which data should be exported.
--
-- /See:/ 'outputConfig' smart constructor.
data OutputConfig =
  OutputConfig'
    { _ocBigQueryDestination :: !(Maybe BigQueryDestination)
    , _ocGcsDestination      :: !(Maybe GcsDestination)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocBigQueryDestination'
--
-- * 'ocGcsDestination'
outputConfig
    :: OutputConfig
outputConfig =
  OutputConfig' {_ocBigQueryDestination = Nothing, _ocGcsDestination = Nothing}

-- | BigQueryDestination requires two IAM roles:
-- \`roles\/bigquery.dataEditor\` and \`roles\/bigquery.jobUser\`.
ocBigQueryDestination :: Lens' OutputConfig (Maybe BigQueryDestination)
ocBigQueryDestination
  = lens _ocBigQueryDestination
      (\ s a -> s{_ocBigQueryDestination = a})

-- | GcsDestination requires \`roles\/storage.objectAdmin\` Cloud IAM role.
-- Note that writing a file to the same destination multiple times will
-- result in the previous version of the file being overwritten.
ocGcsDestination :: Lens' OutputConfig (Maybe GcsDestination)
ocGcsDestination
  = lens _ocGcsDestination
      (\ s a -> s{_ocGcsDestination = a})

instance FromJSON OutputConfig where
        parseJSON
          = withObject "OutputConfig"
              (\ o ->
                 OutputConfig' <$>
                   (o .:? "bigQueryDestination") <*>
                     (o .:? "gcsDestination"))

instance ToJSON OutputConfig where
        toJSON OutputConfig'{..}
          = object
              (catMaybes
                 [("bigQueryDestination" .=) <$>
                    _ocBigQueryDestination,
                  ("gcsDestination" .=) <$> _ocGcsDestination])

-- | Message that represents an arbitrary HTTP body. It should only be used
-- for payload formats that can\'t be represented as JSON, such as raw
-- binary or an HTML page. This message can be used both in streaming and
-- non-streaming API methods in the request as well as the response. It can
-- be used as a top-level request field, which is convenient if one wants
-- to extract parameters from either the URL or HTTP template into the
-- request fields and also want access to the raw HTTP body. Example:
-- message GetResourceRequest { \/\/ A unique request id. string request_id
-- = 1; \/\/ The raw HTTP body is bound to this field. google.api.HttpBody
-- http_body = 2; } service ResourceService { rpc
-- GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
-- UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); }
-- Example with streaming methods: service CaldavService { rpc
-- GetCalendar(stream google.api.HttpBody) returns (stream
-- google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody)
-- returns (stream google.api.HttpBody); } Use of this type only changes
-- how the request and response bodies are handled, all other features will
-- continue to work unchanged.
--
-- /See:/ 'hTTPBody' smart constructor.
data HTTPBody =
  HTTPBody'
    { _httpbExtensions  :: !(Maybe [HTTPBodyExtensionsItem])
    , _httpbData        :: !(Maybe Bytes)
    , _httpbContentType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HTTPBody' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpbExtensions'
--
-- * 'httpbData'
--
-- * 'httpbContentType'
hTTPBody
    :: HTTPBody
hTTPBody =
  HTTPBody'
    { _httpbExtensions = Nothing
    , _httpbData = Nothing
    , _httpbContentType = Nothing
    }

-- | Application specific response metadata. Must be set in the first
-- response for streaming APIs.
httpbExtensions :: Lens' HTTPBody [HTTPBodyExtensionsItem]
httpbExtensions
  = lens _httpbExtensions
      (\ s a -> s{_httpbExtensions = a})
      . _Default
      . _Coerce

-- | The HTTP request\/response body as raw binary.
httpbData :: Lens' HTTPBody (Maybe ByteString)
httpbData
  = lens _httpbData (\ s a -> s{_httpbData = a}) .
      mapping _Bytes

-- | The HTTP Content-Type header value specifying the content type of the
-- body.
httpbContentType :: Lens' HTTPBody (Maybe Text)
httpbContentType
  = lens _httpbContentType
      (\ s a -> s{_httpbContentType = a})

instance FromJSON HTTPBody where
        parseJSON
          = withObject "HTTPBody"
              (\ o ->
                 HTTPBody' <$>
                   (o .:? "extensions" .!= mempty) <*> (o .:? "data")
                     <*> (o .:? "contentType"))

instance ToJSON HTTPBody where
        toJSON HTTPBody'{..}
          = object
              (catMaybes
                 [("extensions" .=) <$> _httpbExtensions,
                  ("data" .=) <$> _httpbData,
                  ("contentType" .=) <$> _httpbContentType])

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

-- | Lists the available datasets.
--
-- /See:/ 'listDataSetsResponse' smart constructor.
data ListDataSetsResponse =
  ListDataSetsResponse'
    { _ldsrNextPageToken :: !(Maybe Text)
    , _ldsrDataSets      :: !(Maybe [DataSet])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDataSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsrNextPageToken'
--
-- * 'ldsrDataSets'
listDataSetsResponse
    :: ListDataSetsResponse
listDataSetsResponse =
  ListDataSetsResponse' {_ldsrNextPageToken = Nothing, _ldsrDataSets = Nothing}

-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
ldsrNextPageToken :: Lens' ListDataSetsResponse (Maybe Text)
ldsrNextPageToken
  = lens _ldsrNextPageToken
      (\ s a -> s{_ldsrNextPageToken = a})

-- | The first page of datasets.
ldsrDataSets :: Lens' ListDataSetsResponse [DataSet]
ldsrDataSets
  = lens _ldsrDataSets (\ s a -> s{_ldsrDataSets = a})
      . _Default
      . _Coerce

instance FromJSON ListDataSetsResponse where
        parseJSON
          = withObject "ListDataSetsResponse"
              (\ o ->
                 ListDataSetsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "datasets" .!= mempty))

instance ToJSON ListDataSetsResponse where
        toJSON ListDataSetsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldsrNextPageToken,
                  ("datasets" .=) <$> _ldsrDataSets])

-- | Final response of importing resources. This structure will be included
-- in the response to describe the detailed outcome. It will only be
-- included when the operation finishes.
--
-- /See:/ 'googleCloudHealthcareV1alphaFhirRestImportResourcesResponse' smart constructor.
data GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse =
  GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse'
    { _gchvfrirrErrorCount   :: !(Maybe (Textual Int64))
    , _gchvfrirrName         :: !(Maybe Text)
    , _gchvfrirrSuccessCount :: !(Maybe (Textual Int64))
    , _gchvfrirrInputSize    :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfrirrErrorCount'
--
-- * 'gchvfrirrName'
--
-- * 'gchvfrirrSuccessCount'
--
-- * 'gchvfrirrInputSize'
googleCloudHealthcareV1alphaFhirRestImportResourcesResponse
    :: GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse
googleCloudHealthcareV1alphaFhirRestImportResourcesResponse =
  GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse'
    { _gchvfrirrErrorCount = Nothing
    , _gchvfrirrName = Nothing
    , _gchvfrirrSuccessCount = Nothing
    , _gchvfrirrInputSize = Nothing
    }

-- | The number of resources that had errors.
gchvfrirrErrorCount :: Lens' GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse (Maybe Int64)
gchvfrirrErrorCount
  = lens _gchvfrirrErrorCount
      (\ s a -> s{_gchvfrirrErrorCount = a})
      . mapping _Coerce

-- | The FHIR store name the resources have been imported to, in the format
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
gchvfrirrName :: Lens' GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse (Maybe Text)
gchvfrirrName
  = lens _gchvfrirrName
      (\ s a -> s{_gchvfrirrName = a})

-- | The number of resources that have been imported.
gchvfrirrSuccessCount :: Lens' GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse (Maybe Int64)
gchvfrirrSuccessCount
  = lens _gchvfrirrSuccessCount
      (\ s a -> s{_gchvfrirrSuccessCount = a})
      . mapping _Coerce

-- | The total number of resources included in the source data. This is the
-- sum of the success and error counts.
gchvfrirrInputSize :: Lens' GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse (Maybe Int64)
gchvfrirrInputSize
  = lens _gchvfrirrInputSize
      (\ s a -> s{_gchvfrirrInputSize = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse"
              (\ o ->
                 GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse'
                   <$>
                   (o .:? "errorCount") <*> (o .:? "name") <*>
                     (o .:? "successCount")
                     <*> (o .:? "inputSize"))

instance ToJSON
           GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse
         where
        toJSON
          GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse'{..}
          = object
              (catMaybes
                 [("errorCount" .=) <$> _gchvfrirrErrorCount,
                  ("name" .=) <$> _gchvfrirrName,
                  ("successCount" .=) <$> _gchvfrirrSuccessCount,
                  ("inputSize" .=) <$> _gchvfrirrInputSize])

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **JSON Example**
-- { \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } **YAML Example** bindings: - members: - user:mike\'example.com -
-- group:admins\'example.com - domain:google.com -
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com role:
-- roles\/owner - members: - user:sean\'example.com role: roles\/viewer For
-- a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam\/docs).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag         :: !(Maybe Bytes)
    , _pVersion      :: !(Maybe (Textual Int32))
    , _pBindings     :: !(Maybe [Binding])
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
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Deprecated.
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. \`bindings\` with no
-- members will result in an error.
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

-- | Lists the FHIR stores in the given dataset.
--
-- /See:/ 'listFhirStoresResponse' smart constructor.
data ListFhirStoresResponse =
  ListFhirStoresResponse'
    { _lfsrNextPageToken :: !(Maybe Text)
    , _lfsrFhirStores    :: !(Maybe [FhirStore])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFhirStoresResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfsrNextPageToken'
--
-- * 'lfsrFhirStores'
listFhirStoresResponse
    :: ListFhirStoresResponse
listFhirStoresResponse =
  ListFhirStoresResponse'
    {_lfsrNextPageToken = Nothing, _lfsrFhirStores = Nothing}

-- | Token to retrieve the next page of results or empty if there are no more
-- results in the list.
lfsrNextPageToken :: Lens' ListFhirStoresResponse (Maybe Text)
lfsrNextPageToken
  = lens _lfsrNextPageToken
      (\ s a -> s{_lfsrNextPageToken = a})

-- | The returned FHIR stores. Won\'t be more FHIR stores than the value of
-- page_size in the request.
lfsrFhirStores :: Lens' ListFhirStoresResponse [FhirStore]
lfsrFhirStores
  = lens _lfsrFhirStores
      (\ s a -> s{_lfsrFhirStores = a})
      . _Default
      . _Coerce

instance FromJSON ListFhirStoresResponse where
        parseJSON
          = withObject "ListFhirStoresResponse"
              (\ o ->
                 ListFhirStoresResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "fhirStores" .!= mempty))

instance ToJSON ListFhirStoresResponse where
        toJSON ListFhirStoresResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lfsrNextPageToken,
                  ("fhirStores" .=) <$> _lfsrFhirStores])

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

-- | Ingests a message into the specified HL7v2 store.
--
-- /See:/ 'ingestMessageRequest' smart constructor.
newtype IngestMessageRequest =
  IngestMessageRequest'
    { _iMessage :: Maybe Message
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'IngestMessageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iMessage'
ingestMessageRequest
    :: IngestMessageRequest
ingestMessageRequest = IngestMessageRequest' {_iMessage = Nothing}

-- | HL7v2 message to ingest.
iMessage :: Lens' IngestMessageRequest (Maybe Message)
iMessage = lens _iMessage (\ s a -> s{_iMessage = a})

instance FromJSON IngestMessageRequest where
        parseJSON
          = withObject "IngestMessageRequest"
              (\ o -> IngestMessageRequest' <$> (o .:? "message"))

instance ToJSON IngestMessageRequest where
        toJSON IngestMessageRequest'{..}
          = object (catMaybes [("message" .=) <$> _iMessage])

-- | The Google Cloud Storage location for the input content.
--
-- /See:/ 'googleCloudHealthcareV1alphaGcsSource' smart constructor.
newtype GoogleCloudHealthcareV1alphaGcsSource =
  GoogleCloudHealthcareV1alphaGcsSource'
    { _gchvgsContentURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1alphaGcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvgsContentURI'
googleCloudHealthcareV1alphaGcsSource
    :: GoogleCloudHealthcareV1alphaGcsSource
googleCloudHealthcareV1alphaGcsSource =
  GoogleCloudHealthcareV1alphaGcsSource' {_gchvgsContentURI = Nothing}

-- | Points to a [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/) URI containing file(s)
-- with content only. The URI must be in the following format:
-- \`gs:\/\/bucket-id\/object-id\`. The URI can include wildcards in
-- \`object-id\` and thus identify multiple files. Supported wildcards:
-- \'*\' to match 0 or more non-separator characters \'**\' to match 0 or
-- more characters (including separators). Must be used at the end of a
-- path and with no other wildcards in the path. Can also be used with a
-- file extension (such as .dcm), which imports all files with the
-- extension in the specified directory and its sub-directories. For
-- example, \`gs:\/\/bucket-id\/directory-id\/**.dcm\` imports all files
-- with .dcm extensions in \`directory-id\/\` and its sub-directories.
-- \'?\' to match 1 character Returns [google.rpc.Code.INVALID_ARGUMENT]
-- for all other URI formats. Files matching the wildcard are expected to
-- contain content only, no metadata.
gchvgsContentURI :: Lens' GoogleCloudHealthcareV1alphaGcsSource (Maybe Text)
gchvgsContentURI
  = lens _gchvgsContentURI
      (\ s a -> s{_gchvgsContentURI = a})

instance FromJSON
           GoogleCloudHealthcareV1alphaGcsSource
         where
        parseJSON
          = withObject "GoogleCloudHealthcareV1alphaGcsSource"
              (\ o ->
                 GoogleCloudHealthcareV1alphaGcsSource' <$>
                   (o .:? "contentUri"))

instance ToJSON GoogleCloudHealthcareV1alphaGcsSource
         where
        toJSON GoogleCloudHealthcareV1alphaGcsSource'{..}
          = object
              (catMaybes [("contentUri" .=) <$> _gchvgsContentURI])

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

-- | OperationMetadata provides information about the operation execution.
-- Returned in the long-running operation\'s metadata field.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata =
  OperationMetadata'
    { _omCounter       :: !(Maybe ProgressCounter)
    , _omEndTime       :: !(Maybe DateTime')
    , _omAPIMethodName :: !(Maybe Text)
    , _omCreateTime    :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omCounter'
--
-- * 'omEndTime'
--
-- * 'omAPIMethodName'
--
-- * 'omCreateTime'
operationMetadata
    :: OperationMetadata
operationMetadata =
  OperationMetadata'
    { _omCounter = Nothing
    , _omEndTime = Nothing
    , _omAPIMethodName = Nothing
    , _omCreateTime = Nothing
    }

omCounter :: Lens' OperationMetadata (Maybe ProgressCounter)
omCounter
  = lens _omCounter (\ s a -> s{_omCounter = a})

-- | The time at which execution was completed.
omEndTime :: Lens' OperationMetadata (Maybe UTCTime)
omEndTime
  = lens _omEndTime (\ s a -> s{_omEndTime = a}) .
      mapping _DateTime

-- | The name of the API method that initiated the operation.
omAPIMethodName :: Lens' OperationMetadata (Maybe Text)
omAPIMethodName
  = lens _omAPIMethodName
      (\ s a -> s{_omAPIMethodName = a})

-- | The time at which the operation was created by the API.
omCreateTime :: Lens' OperationMetadata (Maybe UTCTime)
omCreateTime
  = lens _omCreateTime (\ s a -> s{_omCreateTime = a})
      . mapping _DateTime

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata' <$>
                   (o .:? "counter") <*> (o .:? "endTime") <*>
                     (o .:? "apiMethodName")
                     <*> (o .:? "createTime"))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata'{..}
          = object
              (catMaybes
                 [("counter" .=) <$> _omCounter,
                  ("endTime" .=) <$> _omEndTime,
                  ("apiMethodName" .=) <$> _omAPIMethodName,
                  ("createTime" .=) <$> _omCreateTime])

-- | A complete HL7v2 message. See
-- http:\/\/www.hl7.org\/implement\/standards\/index.cfm?ref=common for
-- details on the standard.
--
-- /See:/ 'message' smart constructor.
data Message =
  Message'
    { _mData         :: !(Maybe Bytes)
    , _mMessageType  :: !(Maybe Text)
    , _mName         :: !(Maybe Text)
    , _mPatientIds   :: !(Maybe [PatientId])
    , _mLabels       :: !(Maybe MessageLabels)
    , _mSendTime     :: !(Maybe DateTime')
    , _mSendFacility :: !(Maybe Text)
    , _mCreateTime   :: !(Maybe DateTime')
    , _mParsedData   :: !(Maybe ParsedData)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Message' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mData'
--
-- * 'mMessageType'
--
-- * 'mName'
--
-- * 'mPatientIds'
--
-- * 'mLabels'
--
-- * 'mSendTime'
--
-- * 'mSendFacility'
--
-- * 'mCreateTime'
--
-- * 'mParsedData'
message
    :: Message
message =
  Message'
    { _mData = Nothing
    , _mMessageType = Nothing
    , _mName = Nothing
    , _mPatientIds = Nothing
    , _mLabels = Nothing
    , _mSendTime = Nothing
    , _mSendFacility = Nothing
    , _mCreateTime = Nothing
    , _mParsedData = Nothing
    }

-- | Raw message bytes.
mData :: Lens' Message (Maybe ByteString)
mData
  = lens _mData (\ s a -> s{_mData = a}) .
      mapping _Bytes

-- | The message type and trigger event for this message. MSH-9.
mMessageType :: Lens' Message (Maybe Text)
mMessageType
  = lens _mMessageType (\ s a -> s{_mMessageType = a})

-- | Resource name of the Message, of the form
-- \`projects\/{project_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7_v2_store_id}\/messages\/{message_id}\`.
-- Assigned by the server.
mName :: Lens' Message (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this
-- message.
mPatientIds :: Lens' Message [PatientId]
mPatientIds
  = lens _mPatientIds (\ s a -> s{_mPatientIds = a}) .
      _Default
      . _Coerce

-- | User-supplied key-value pairs used to organize HL7v2 stores. Label keys
-- must be between 1 and 63 characters long, have a UTF-8 encoding of
-- maximum 128 bytes, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be
-- between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
-- bytes, and must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated
-- with a given store.
mLabels :: Lens' Message (Maybe MessageLabels)
mLabels = lens _mLabels (\ s a -> s{_mLabels = a})

-- | The datetime the sending application sent this message. MSH-7.
mSendTime :: Lens' Message (Maybe UTCTime)
mSendTime
  = lens _mSendTime (\ s a -> s{_mSendTime = a}) .
      mapping _DateTime

-- | The hospital that this message came from. MSH-4.
mSendFacility :: Lens' Message (Maybe Text)
mSendFacility
  = lens _mSendFacility
      (\ s a -> s{_mSendFacility = a})

-- | The datetime when the message was created. Set by the server.
mCreateTime :: Lens' Message (Maybe UTCTime)
mCreateTime
  = lens _mCreateTime (\ s a -> s{_mCreateTime = a}) .
      mapping _DateTime

-- | The parsed version of the raw message data.
mParsedData :: Lens' Message (Maybe ParsedData)
mParsedData
  = lens _mParsedData (\ s a -> s{_mParsedData = a})

instance FromJSON Message where
        parseJSON
          = withObject "Message"
              (\ o ->
                 Message' <$>
                   (o .:? "data") <*> (o .:? "messageType") <*>
                     (o .:? "name")
                     <*> (o .:? "patientIds" .!= mempty)
                     <*> (o .:? "labels")
                     <*> (o .:? "sendTime")
                     <*> (o .:? "sendFacility")
                     <*> (o .:? "createTime")
                     <*> (o .:? "parsedData"))

instance ToJSON Message where
        toJSON Message'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _mData,
                  ("messageType" .=) <$> _mMessageType,
                  ("name" .=) <$> _mName,
                  ("patientIds" .=) <$> _mPatientIds,
                  ("labels" .=) <$> _mLabels,
                  ("sendTime" .=) <$> _mSendTime,
                  ("sendFacility" .=) <$> _mSendFacility,
                  ("createTime" .=) <$> _mCreateTime,
                  ("parsedData" .=) <$> _mParsedData])

-- | Represents a DICOM store.
--
-- /See:/ 'dicomStore' smart constructor.
data DicomStore =
  DicomStore'
    { _dNotificationConfig :: !(Maybe NotificationConfig)
    , _dName               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DicomStore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNotificationConfig'
--
-- * 'dName'
dicomStore
    :: DicomStore
dicomStore = DicomStore' {_dNotificationConfig = Nothing, _dName = Nothing}

-- | Notification destination for new DICOM instances. Supplied by the
-- client.
dNotificationConfig :: Lens' DicomStore (Maybe NotificationConfig)
dNotificationConfig
  = lens _dNotificationConfig
      (\ s a -> s{_dNotificationConfig = a})

-- | Output only. Resource name of the DICOM store, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
dName :: Lens' DicomStore (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

instance FromJSON DicomStore where
        parseJSON
          = withObject "DicomStore"
              (\ o ->
                 DicomStore' <$>
                   (o .:? "notificationConfig") <*> (o .:? "name"))

instance ToJSON DicomStore where
        toJSON DicomStore'{..}
          = object
              (catMaybes
                 [("notificationConfig" .=) <$> _dNotificationConfig,
                  ("name" .=) <$> _dName])

-- | Returns the errors encountered during DICOM store import.
--
-- /See:/ 'importDicomDataErrorDetails' smart constructor.
newtype ImportDicomDataErrorDetails =
  ImportDicomDataErrorDetails'
    { _iddedErrors :: Maybe [ImportError]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportDicomDataErrorDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iddedErrors'
importDicomDataErrorDetails
    :: ImportDicomDataErrorDetails
importDicomDataErrorDetails =
  ImportDicomDataErrorDetails' {_iddedErrors = Nothing}

-- | Contains errors encountered in imports of individual resources (e.g., a
-- Google Cloud Storage object).
iddedErrors :: Lens' ImportDicomDataErrorDetails [ImportError]
iddedErrors
  = lens _iddedErrors (\ s a -> s{_iddedErrors = a}) .
      _Default
      . _Coerce

instance FromJSON ImportDicomDataErrorDetails where
        parseJSON
          = withObject "ImportDicomDataErrorDetails"
              (\ o ->
                 ImportDicomDataErrorDetails' <$>
                   (o .:? "errors" .!= mempty))

instance ToJSON ImportDicomDataErrorDetails where
        toJSON ImportDicomDataErrorDetails'{..}
          = object (catMaybes [("errors" .=) <$> _iddedErrors])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting foo\'gmail.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType         :: !(Maybe AuditLogConfigLogType)
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

-- | A segment in a structured format.
--
-- /See:/ 'segment' smart constructor.
data Segment =
  Segment'
    { _sSetId     :: !(Maybe Text)
    , _sSegmentId :: !(Maybe Text)
    , _sFields    :: !(Maybe SegmentFields)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Segment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSetId'
--
-- * 'sSegmentId'
--
-- * 'sFields'
segment
    :: Segment
segment =
  Segment' {_sSetId = Nothing, _sSegmentId = Nothing, _sFields = Nothing}

-- | Set ID for segments that can be in a set. This can be empty if it is
-- missing or it is not applicable.
sSetId :: Lens' Segment (Maybe Text)
sSetId = lens _sSetId (\ s a -> s{_sSetId = a})

-- | A string that indicates the type of segment, e.g., EVN, PID.
sSegmentId :: Lens' Segment (Maybe Text)
sSegmentId
  = lens _sSegmentId (\ s a -> s{_sSegmentId = a})

-- | A mapping from the positional location to the value. The key string uses
-- indexes separated by dots to identify Fields, components and
-- sub-components. To be consistent with how the standard refers to
-- different parts of message, we use zero-based indexes for fields and
-- one-based indexes for components and sub-components. A bracket notation
-- is also used to identify different instances of a repeated field.
-- Zero-based indexes are used to refer to each instance. Regex for key:
-- (\\d+)(\\[\\d+\\])?(.\\d+)?(.\\d+)? Examples of (key, value) pairs:
-- (0.1, \"foo\") denotes First component of Field 0 has the value \"foo\".
-- (1.1.2, \"bar\") denotes Second sub-component of the first component of
-- Field 1 has the value \"bar\". (1[0].1, \"baz\") denotes First component
-- of the first Instance of Field 1, which is repeated, has the value
-- \"baz\".
sFields :: Lens' Segment (Maybe SegmentFields)
sFields = lens _sFields (\ s a -> s{_sFields = a})

instance FromJSON Segment where
        parseJSON
          = withObject "Segment"
              (\ o ->
                 Segment' <$>
                   (o .:? "setId") <*> (o .:? "segmentId") <*>
                     (o .:? "fields"))

instance ToJSON Segment where
        toJSON Segment'{..}
          = object
              (catMaybes
                 [("setId" .=) <$> _sSetId,
                  ("segmentId" .=) <$> _sSegmentId,
                  ("fields" .=) <$> _sFields])

-- | User-supplied key-value pairs used to organize HL7v2 stores. Label keys
-- must be between 1 and 63 characters long, have a UTF-8 encoding of
-- maximum 128 bytes, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be
-- between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
-- bytes, and must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated
-- with a given store.
--
-- /See:/ 'messageLabels' smart constructor.
newtype MessageLabels =
  MessageLabels'
    { _mlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MessageLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlAddtional'
messageLabels
    :: HashMap Text Text -- ^ 'mlAddtional'
    -> MessageLabels
messageLabels pMlAddtional_ =
  MessageLabels' {_mlAddtional = _Coerce # pMlAddtional_}

mlAddtional :: Lens' MessageLabels (HashMap Text Text)
mlAddtional
  = lens _mlAddtional (\ s a -> s{_mlAddtional = a}) .
      _Coerce

instance FromJSON MessageLabels where
        parseJSON
          = withObject "MessageLabels"
              (\ o -> MessageLabels' <$> (parseJSONObject o))

instance ToJSON MessageLabels where
        toJSON = toJSON . _mlAddtional

-- | Request to search the resources in the specified FHIR store.
--
-- /See:/ 'searchResourcesRequest' smart constructor.
newtype SearchResourcesRequest =
  SearchResourcesRequest'
    { _srrResourceType :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchResourcesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrResourceType'
searchResourcesRequest
    :: SearchResourcesRequest
searchResourcesRequest = SearchResourcesRequest' {_srrResourceType = Nothing}

-- | The type of the resource to search.
srrResourceType :: Lens' SearchResourcesRequest (Maybe Text)
srrResourceType
  = lens _srrResourceType
      (\ s a -> s{_srrResourceType = a})

instance FromJSON SearchResourcesRequest where
        parseJSON
          = withObject "SearchResourcesRequest"
              (\ o ->
                 SearchResourcesRequest' <$> (o .:? "resourceType"))

instance ToJSON SearchResourcesRequest where
        toJSON SearchResourcesRequest'{..}
          = object
              (catMaybes
                 [("resourceType" .=) <$> _srrResourceType])

-- | Redacts identifying information from the specified dataset.
--
-- /See:/ 'deidentifyDataSetRequest' smart constructor.
data DeidentifyDataSetRequest =
  DeidentifyDataSetRequest'
    { _ddsrConfig             :: !(Maybe DeidentifyConfig)
    , _ddsrDestinationDataSet :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeidentifyDataSetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddsrConfig'
--
-- * 'ddsrDestinationDataSet'
deidentifyDataSetRequest
    :: DeidentifyDataSetRequest
deidentifyDataSetRequest =
  DeidentifyDataSetRequest'
    {_ddsrConfig = Nothing, _ddsrDestinationDataSet = Nothing}

-- | Deidentify configuration
ddsrConfig :: Lens' DeidentifyDataSetRequest (Maybe DeidentifyConfig)
ddsrConfig
  = lens _ddsrConfig (\ s a -> s{_ddsrConfig = a})

-- | The name of the dataset resource to which the redacted data should be
-- written (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\`).
-- The new dataset must not exist, or the request will fail.
ddsrDestinationDataSet :: Lens' DeidentifyDataSetRequest (Maybe Text)
ddsrDestinationDataSet
  = lens _ddsrDestinationDataSet
      (\ s a -> s{_ddsrDestinationDataSet = a})

instance FromJSON DeidentifyDataSetRequest where
        parseJSON
          = withObject "DeidentifyDataSetRequest"
              (\ o ->
                 DeidentifyDataSetRequest' <$>
                   (o .:? "config") <*> (o .:? "destinationDataset"))

instance ToJSON DeidentifyDataSetRequest where
        toJSON DeidentifyDataSetRequest'{..}
          = object
              (catMaybes
                 [("config" .=) <$> _ddsrConfig,
                  ("destinationDataset" .=) <$>
                    _ddsrDestinationDataSet])

-- | A patient identifier and associated type.
--
-- /See:/ 'patientId' smart constructor.
data PatientId =
  PatientId'
    { _piValue :: !(Maybe Text)
    , _piType  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PatientId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piValue'
--
-- * 'piType'
patientId
    :: PatientId
patientId = PatientId' {_piValue = Nothing, _piType = Nothing}

-- | The patient\'s unique identifier.
piValue :: Lens' PatientId (Maybe Text)
piValue = lens _piValue (\ s a -> s{_piValue = a})

-- | ID type, e.g. MRN or NHS.
piType :: Lens' PatientId (Maybe Text)
piType = lens _piType (\ s a -> s{_piType = a})

instance FromJSON PatientId where
        parseJSON
          = withObject "PatientId"
              (\ o ->
                 PatientId' <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON PatientId where
        toJSON PatientId'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _piValue, ("type" .=) <$> _piType])

-- | Specifies the parameters needed for de-identification of DICOM stores.
--
-- /See:/ 'dicomConfig' smart constructor.
newtype DicomConfig =
  DicomConfig'
    { _dcWhiteListTags :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DicomConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcWhiteListTags'
dicomConfig
    :: DicomConfig
dicomConfig = DicomConfig' {_dcWhiteListTags = Nothing}

-- | Tags to be whitelisted, for example \"PatientID\", \"0010,0010\". Any
-- tag that is whitelisted will copied as is. All other tags will be
-- omitted.
dcWhiteListTags :: Lens' DicomConfig [Text]
dcWhiteListTags
  = lens _dcWhiteListTags
      (\ s a -> s{_dcWhiteListTags = a})
      . _Default
      . _Coerce

instance FromJSON DicomConfig where
        parseJSON
          = withObject "DicomConfig"
              (\ o ->
                 DicomConfig' <$> (o .:? "whitelistTags" .!= mempty))

instance ToJSON DicomConfig where
        toJSON DicomConfig'{..}
          = object
              (catMaybes
                 [("whitelistTags" .=) <$> _dcWhiteListTags])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Creates a new message.
--
-- /See:/ 'createMessageRequest' smart constructor.
newtype CreateMessageRequest =
  CreateMessageRequest'
    { _cmrMessage :: Maybe Message
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateMessageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmrMessage'
createMessageRequest
    :: CreateMessageRequest
createMessageRequest = CreateMessageRequest' {_cmrMessage = Nothing}

-- | HL7v2 message.
cmrMessage :: Lens' CreateMessageRequest (Maybe Message)
cmrMessage
  = lens _cmrMessage (\ s a -> s{_cmrMessage = a})

instance FromJSON CreateMessageRequest where
        parseJSON
          = withObject "CreateMessageRequest"
              (\ o -> CreateMessageRequest' <$> (o .:? "message"))

instance ToJSON CreateMessageRequest where
        toJSON CreateMessageRequest'{..}
          = object (catMaybes [("message" .=) <$> _cmrMessage])

-- | A TextAnnotation specifies a text range that includes sensitive
-- information.
--
-- /See:/ 'sensitiveTextAnnotation' smart constructor.
newtype SensitiveTextAnnotation =
  SensitiveTextAnnotation'
    { _staDetails :: Maybe SensitiveTextAnnotationDetails
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SensitiveTextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'staDetails'
sensitiveTextAnnotation
    :: SensitiveTextAnnotation
sensitiveTextAnnotation = SensitiveTextAnnotation' {_staDetails = Nothing}

-- | Maps from a resource slice (e.g. FHIR resource field path) to a set of
-- sensitive text findings. For example, Appointment.Narrative text1 -->
-- {findings_1, findings_2, findings_3}
staDetails :: Lens' SensitiveTextAnnotation (Maybe SensitiveTextAnnotationDetails)
staDetails
  = lens _staDetails (\ s a -> s{_staDetails = a})

instance FromJSON SensitiveTextAnnotation where
        parseJSON
          = withObject "SensitiveTextAnnotation"
              (\ o ->
                 SensitiveTextAnnotation' <$> (o .:? "details"))

instance ToJSON SensitiveTextAnnotation where
        toJSON SensitiveTextAnnotation'{..}
          = object (catMaybes [("details" .=) <$> _staDetails])

-- | Lists the messages in the specified HL7v2 store.
--
-- /See:/ 'listMessagesResponse' smart constructor.
data ListMessagesResponse =
  ListMessagesResponse'
    { _lmrNextPageToken :: !(Maybe Text)
    , _lmrMessages      :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMessagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrNextPageToken'
--
-- * 'lmrMessages'
listMessagesResponse
    :: ListMessagesResponse
listMessagesResponse =
  ListMessagesResponse' {_lmrNextPageToken = Nothing, _lmrMessages = Nothing}

-- | Token to retrieve the next page of results or empty if there are no more
-- results in the list.
lmrNextPageToken :: Lens' ListMessagesResponse (Maybe Text)
lmrNextPageToken
  = lens _lmrNextPageToken
      (\ s a -> s{_lmrNextPageToken = a})

-- | The returned message names. Won\'t be more values than the value of
-- page_size in the request.
lmrMessages :: Lens' ListMessagesResponse [Text]
lmrMessages
  = lens _lmrMessages (\ s a -> s{_lmrMessages = a}) .
      _Default
      . _Coerce

instance FromJSON ListMessagesResponse where
        parseJSON
          = withObject "ListMessagesResponse"
              (\ o ->
                 ListMessagesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "messages" .!= mempty))

instance ToJSON ListMessagesResponse where
        toJSON ListMessagesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrNextPageToken,
                  ("messages" .=) <$> _lmrMessages])

-- | Lists the DICOM stores in the given dataset.
--
-- /See:/ 'listDicomStoresResponse' smart constructor.
data ListDicomStoresResponse =
  ListDicomStoresResponse'
    { _lNextPageToken :: !(Maybe Text)
    , _lDicomStores   :: !(Maybe [DicomStore])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDicomStoresResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lDicomStores'
listDicomStoresResponse
    :: ListDicomStoresResponse
listDicomStoresResponse =
  ListDicomStoresResponse' {_lNextPageToken = Nothing, _lDicomStores = Nothing}

-- | Token to retrieve the next page of results or empty if there are no more
-- results in the list.
lNextPageToken :: Lens' ListDicomStoresResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | The returned DICOM stores. Won\'t be more DICOM stores than the value of
-- page_size in the request.
lDicomStores :: Lens' ListDicomStoresResponse [DicomStore]
lDicomStores
  = lens _lDicomStores (\ s a -> s{_lDicomStores = a})
      . _Default
      . _Coerce

instance FromJSON ListDicomStoresResponse where
        parseJSON
          = withObject "ListDicomStoresResponse"
              (\ o ->
                 ListDicomStoresResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "dicomStores" .!= mempty))

instance ToJSON ListDicomStoresResponse where
        toJSON ListDicomStoresResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  ("dicomStores" .=) <$> _lDicomStores])

-- | Final response of exporting resources. This structure will be included
-- in the response to describe the detailed outcome. It will only be
-- included when the operation finishes.
--
-- /See:/ 'googleCloudHealthcareV1alphaFhirRestExportResourcesResponse' smart constructor.
data GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse =
  GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse'
    { _gchvfrerrName          :: !(Maybe Text)
    , _gchvfrerrResourceCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfrerrName'
--
-- * 'gchvfrerrResourceCount'
googleCloudHealthcareV1alphaFhirRestExportResourcesResponse
    :: GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse
googleCloudHealthcareV1alphaFhirRestExportResourcesResponse =
  GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse'
    {_gchvfrerrName = Nothing, _gchvfrerrResourceCount = Nothing}

-- | The FHIR store name of the resources that have been exported, in the
-- format
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
gchvfrerrName :: Lens' GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse (Maybe Text)
gchvfrerrName
  = lens _gchvfrerrName
      (\ s a -> s{_gchvfrerrName = a})

-- | The total number of resources exported from the requested FHIR store.
gchvfrerrResourceCount :: Lens' GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse (Maybe Int64)
gchvfrerrResourceCount
  = lens _gchvfrerrResourceCount
      (\ s a -> s{_gchvfrerrResourceCount = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse"
              (\ o ->
                 GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse'
                   <$> (o .:? "name") <*> (o .:? "resourceCount"))

instance ToJSON
           GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse
         where
        toJSON
          GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gchvfrerrName,
                  ("resourceCount" .=) <$> _gchvfrerrResourceCount])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
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
-- \`alice\'gmail.com\` . * \`serviceAccount:{emailid}\`: An email address
-- that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`domain:{domain}\`: A Google Apps domain
-- name that represents all the users of that domain. For example,
-- \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | Unimplemented. The condition that is associated with this binding. NOTE:
-- an unsatisfied condition will not allow user access via current binding.
-- Different bindings, including their conditions, are examined
-- independently.
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

-- | Contains multiple sensitive information findings for each resource
-- slice.
--
-- /See:/ 'detail' smart constructor.
newtype Detail =
  Detail'
    { _dFindings :: Maybe [Finding]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Detail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dFindings'
detail
    :: Detail
detail = Detail' {_dFindings = Nothing}

dFindings :: Lens' Detail [Finding]
dFindings
  = lens _dFindings (\ s a -> s{_dFindings = a}) .
      _Default
      . _Coerce

instance FromJSON Detail where
        parseJSON
          = withObject "Detail"
              (\ o -> Detail' <$> (o .:? "findings" .!= mempty))

instance ToJSON Detail where
        toJSON Detail'{..}
          = object (catMaybes [("findings" .=) <$> _dFindings])

-- | Exports data from the specified DICOM store. If a given resource (e.g.,
-- a DICOM object with the same SOPInstance UID) already exists in the
-- output, it is overwritten with the version in the source dataset.
-- Exported DICOM data will persist when the DICOM store from which it was
-- exported is deleted.
--
-- /See:/ 'exportDicomDataRequest' smart constructor.
newtype ExportDicomDataRequest =
  ExportDicomDataRequest'
    { _eddrOutputConfig :: Maybe OutputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportDicomDataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eddrOutputConfig'
exportDicomDataRequest
    :: ExportDicomDataRequest
exportDicomDataRequest = ExportDicomDataRequest' {_eddrOutputConfig = Nothing}

-- | Specifies where the exported data should be placed.
eddrOutputConfig :: Lens' ExportDicomDataRequest (Maybe OutputConfig)
eddrOutputConfig
  = lens _eddrOutputConfig
      (\ s a -> s{_eddrOutputConfig = a})

instance FromJSON ExportDicomDataRequest where
        parseJSON
          = withObject "ExportDicomDataRequest"
              (\ o ->
                 ExportDicomDataRequest' <$> (o .:? "outputConfig"))

instance ToJSON ExportDicomDataRequest where
        toJSON ExportDicomDataRequest'{..}
          = object
              (catMaybes
                 [("outputConfig" .=) <$> _eddrOutputConfig])

-- | The content of a HL7v2 message in a structured format.
--
-- /See:/ 'parsedData' smart constructor.
newtype ParsedData =
  ParsedData'
    { _pdSegments :: Maybe [Segment]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParsedData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdSegments'
parsedData
    :: ParsedData
parsedData = ParsedData' {_pdSegments = Nothing}

pdSegments :: Lens' ParsedData [Segment]
pdSegments
  = lens _pdSegments (\ s a -> s{_pdSegments = a}) .
      _Default
      . _Coerce

instance FromJSON ParsedData where
        parseJSON
          = withObject "ParsedData"
              (\ o ->
                 ParsedData' <$> (o .:? "segments" .!= mempty))

instance ToJSON ParsedData where
        toJSON ParsedData'{..}
          = object
              (catMaybes [("segments" .=) <$> _pdSegments])

-- | Structure to describe the error encountered during batch operation on
-- one resource. This is used both for sample errors in operation response,
-- and for format of errors in error reports.
--
-- /See:/ 'errorDetail' smart constructor.
data ErrorDetail =
  ErrorDetail'
    { _edError    :: !(Maybe Status)
    , _edResource :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edError'
--
-- * 'edResource'
errorDetail
    :: ErrorDetail
errorDetail = ErrorDetail' {_edError = Nothing, _edResource = Nothing}

-- | The status of the error.
edError :: Lens' ErrorDetail (Maybe Status)
edError = lens _edError (\ s a -> s{_edError = a})

-- | The identifier of the resource.
edResource :: Lens' ErrorDetail (Maybe Text)
edResource
  = lens _edResource (\ s a -> s{_edResource = a})

instance FromJSON ErrorDetail where
        parseJSON
          = withObject "ErrorDetail"
              (\ o ->
                 ErrorDetail' <$>
                   (o .:? "error") <*> (o .:? "resource"))

instance ToJSON ErrorDetail where
        toJSON ErrorDetail'{..}
          = object
              (catMaybes
                 [("error" .=) <$> _edError,
                  ("resource" .=) <$> _edResource])
