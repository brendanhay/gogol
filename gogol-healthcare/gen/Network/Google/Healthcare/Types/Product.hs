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
    { _errBigQueryDestination :: !(Maybe GoogleCloudHealthcareV1beta1FhirBigQueryDestination)
    , _errGcsDestination      :: !(Maybe GoogleCloudHealthcareV1beta1FhirRestGcsDestination)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportResourcesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'errBigQueryDestination'
--
-- * 'errGcsDestination'
exportResourcesRequest
    :: ExportResourcesRequest
exportResourcesRequest =
  ExportResourcesRequest'
    {_errBigQueryDestination = Nothing, _errGcsDestination = Nothing}


-- | The BigQuery output destination. The BigQuery location requires two IAM
-- roles: \`roles\/bigquery.dataEditor\` and \`roles\/bigquery.jobUser\`.
-- The output will be one BigQuery table per resource type.
errBigQueryDestination :: Lens' ExportResourcesRequest (Maybe GoogleCloudHealthcareV1beta1FhirBigQueryDestination)
errBigQueryDestination
  = lens _errBigQueryDestination
      (\ s a -> s{_errBigQueryDestination = a})

-- | The Cloud Storage output destination. The Cloud Storage location
-- requires the \`roles\/storage.objectAdmin\` Cloud IAM role. The exported
-- outputs are organized by FHIR resource types. The server will create one
-- object per resource type. Each object contains newline delimited JSON,
-- and each line is a FHIR resource.
errGcsDestination :: Lens' ExportResourcesRequest (Maybe GoogleCloudHealthcareV1beta1FhirRestGcsDestination)
errGcsDestination
  = lens _errGcsDestination
      (\ s a -> s{_errGcsDestination = a})

instance FromJSON ExportResourcesRequest where
        parseJSON
          = withObject "ExportResourcesRequest"
              (\ o ->
                 ExportResourcesRequest' <$>
                   (o .:? "bigqueryDestination") <*>
                     (o .:? "gcsDestination"))

instance ToJSON ExportResourcesRequest where
        toJSON ExportResourcesRequest'{..}
          = object
              (catMaybes
                 [("bigqueryDestination" .=) <$>
                    _errBigQueryDestination,
                  ("gcsDestination" .=) <$> _errGcsDestination])

-- | Mask a string by replacing its characters with a fixed character.
--
-- /See:/ 'characterMaskConfig' smart constructor.
newtype CharacterMaskConfig =
  CharacterMaskConfig'
    { _cmcMaskingCharacter :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CharacterMaskConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmcMaskingCharacter'
characterMaskConfig
    :: CharacterMaskConfig
characterMaskConfig = CharacterMaskConfig' {_cmcMaskingCharacter = Nothing}


-- | Character to mask the sensitive values. If not supplied, defaults to
-- \"*\".
cmcMaskingCharacter :: Lens' CharacterMaskConfig (Maybe Text)
cmcMaskingCharacter
  = lens _cmcMaskingCharacter
      (\ s a -> s{_cmcMaskingCharacter = a})

instance FromJSON CharacterMaskConfig where
        parseJSON
          = withObject "CharacterMaskConfig"
              (\ o ->
                 CharacterMaskConfig' <$> (o .:? "maskingCharacter"))

instance ToJSON CharacterMaskConfig where
        toJSON CharacterMaskConfig'{..}
          = object
              (catMaybes
                 [("maskingCharacter" .=) <$> _cmcMaskingCharacter])

-- | A transformation to apply to text that is identified as a specific
-- info_type.
--
-- /See:/ 'infoTypeTransformation' smart constructor.
data InfoTypeTransformation =
  InfoTypeTransformation'
    { _ittRedactConfig              :: !(Maybe RedactConfig)
    , _ittCharacterMaskConfig       :: !(Maybe CharacterMaskConfig)
    , _ittInfoTypes                 :: !(Maybe [Text])
    , _ittDateShiftConfig           :: !(Maybe DateShiftConfig)
    , _ittReplaceWithInfoTypeConfig :: !(Maybe ReplaceWithInfoTypeConfig)
    , _ittCryptoHashConfig          :: !(Maybe CryptoHashConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InfoTypeTransformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ittRedactConfig'
--
-- * 'ittCharacterMaskConfig'
--
-- * 'ittInfoTypes'
--
-- * 'ittDateShiftConfig'
--
-- * 'ittReplaceWithInfoTypeConfig'
--
-- * 'ittCryptoHashConfig'
infoTypeTransformation
    :: InfoTypeTransformation
infoTypeTransformation =
  InfoTypeTransformation'
    { _ittRedactConfig = Nothing
    , _ittCharacterMaskConfig = Nothing
    , _ittInfoTypes = Nothing
    , _ittDateShiftConfig = Nothing
    , _ittReplaceWithInfoTypeConfig = Nothing
    , _ittCryptoHashConfig = Nothing
    }


-- | Config for text redaction.
ittRedactConfig :: Lens' InfoTypeTransformation (Maybe RedactConfig)
ittRedactConfig
  = lens _ittRedactConfig
      (\ s a -> s{_ittRedactConfig = a})

-- | Config for character mask.
ittCharacterMaskConfig :: Lens' InfoTypeTransformation (Maybe CharacterMaskConfig)
ittCharacterMaskConfig
  = lens _ittCharacterMaskConfig
      (\ s a -> s{_ittCharacterMaskConfig = a})

-- | InfoTypes to apply this transformation to. If this is not specified, the
-- transformation applies to any info_type.
ittInfoTypes :: Lens' InfoTypeTransformation [Text]
ittInfoTypes
  = lens _ittInfoTypes (\ s a -> s{_ittInfoTypes = a})
      . _Default
      . _Coerce

-- | Config for date shift.
ittDateShiftConfig :: Lens' InfoTypeTransformation (Maybe DateShiftConfig)
ittDateShiftConfig
  = lens _ittDateShiftConfig
      (\ s a -> s{_ittDateShiftConfig = a})

-- | Config for replace with InfoType.
ittReplaceWithInfoTypeConfig :: Lens' InfoTypeTransformation (Maybe ReplaceWithInfoTypeConfig)
ittReplaceWithInfoTypeConfig
  = lens _ittReplaceWithInfoTypeConfig
      (\ s a -> s{_ittReplaceWithInfoTypeConfig = a})

-- | Config for crypto hash.
ittCryptoHashConfig :: Lens' InfoTypeTransformation (Maybe CryptoHashConfig)
ittCryptoHashConfig
  = lens _ittCryptoHashConfig
      (\ s a -> s{_ittCryptoHashConfig = a})

instance FromJSON InfoTypeTransformation where
        parseJSON
          = withObject "InfoTypeTransformation"
              (\ o ->
                 InfoTypeTransformation' <$>
                   (o .:? "redactConfig") <*>
                     (o .:? "characterMaskConfig")
                     <*> (o .:? "infoTypes" .!= mempty)
                     <*> (o .:? "dateShiftConfig")
                     <*> (o .:? "replaceWithInfoTypeConfig")
                     <*> (o .:? "cryptoHashConfig"))

instance ToJSON InfoTypeTransformation where
        toJSON InfoTypeTransformation'{..}
          = object
              (catMaybes
                 [("redactConfig" .=) <$> _ittRedactConfig,
                  ("characterMaskConfig" .=) <$>
                    _ittCharacterMaskConfig,
                  ("infoTypes" .=) <$> _ittInfoTypes,
                  ("dateShiftConfig" .=) <$> _ittDateShiftConfig,
                  ("replaceWithInfoTypeConfig" .=) <$>
                    _ittReplaceWithInfoTypeConfig,
                  ("cryptoHashConfig" .=) <$> _ittCryptoHashConfig])

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

-- | Define how to redact sensitive values. Default behaviour is erase, e.g.
-- \"My name is Jake.\" becomes \"My name is .\"
--
-- /See:/ 'redactConfig' smart constructor.
data RedactConfig =
  RedactConfig'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RedactConfig' with the minimum fields required to make a request.
--
redactConfig
    :: RedactConfig
redactConfig = RedactConfig'


instance FromJSON RedactConfig where
        parseJSON
          = withObject "RedactConfig"
              (\ o -> pure RedactConfig')

instance ToJSON RedactConfig where
        toJSON = const emptyObject

-- | Contains the status of the Deidentify operation.
--
-- /See:/ 'deidentifyErrorDetails' smart constructor.
data DeidentifyErrorDetails =
  DeidentifyErrorDetails'
    { _dedSuccessStoreCount    :: !(Maybe (Textual Int64))
    , _dedSuccessResourceCount :: !(Maybe (Textual Int64))
    , _dedFailureResourceCount :: !(Maybe (Textual Int64))
    , _dedFailureStoreCount    :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeidentifyErrorDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dedSuccessStoreCount'
--
-- * 'dedSuccessResourceCount'
--
-- * 'dedFailureResourceCount'
--
-- * 'dedFailureStoreCount'
deidentifyErrorDetails
    :: DeidentifyErrorDetails
deidentifyErrorDetails =
  DeidentifyErrorDetails'
    { _dedSuccessStoreCount = Nothing
    , _dedSuccessResourceCount = Nothing
    , _dedFailureResourceCount = Nothing
    , _dedFailureStoreCount = Nothing
    }


-- | Number of stores successfully processed.
dedSuccessStoreCount :: Lens' DeidentifyErrorDetails (Maybe Int64)
dedSuccessStoreCount
  = lens _dedSuccessStoreCount
      (\ s a -> s{_dedSuccessStoreCount = a})
      . mapping _Coerce

-- | Number of resources successfully processed.
dedSuccessResourceCount :: Lens' DeidentifyErrorDetails (Maybe Int64)
dedSuccessResourceCount
  = lens _dedSuccessResourceCount
      (\ s a -> s{_dedSuccessResourceCount = a})
      . mapping _Coerce

-- | Number of resources failed to process.
dedFailureResourceCount :: Lens' DeidentifyErrorDetails (Maybe Int64)
dedFailureResourceCount
  = lens _dedFailureResourceCount
      (\ s a -> s{_dedFailureResourceCount = a})
      . mapping _Coerce

-- | Number of stores failed to process.
dedFailureStoreCount :: Lens' DeidentifyErrorDetails (Maybe Int64)
dedFailureStoreCount
  = lens _dedFailureStoreCount
      (\ s a -> s{_dedFailureStoreCount = a})
      . mapping _Coerce

instance FromJSON DeidentifyErrorDetails where
        parseJSON
          = withObject "DeidentifyErrorDetails"
              (\ o ->
                 DeidentifyErrorDetails' <$>
                   (o .:? "successStoreCount") <*>
                     (o .:? "successResourceCount")
                     <*> (o .:? "failureResourceCount")
                     <*> (o .:? "failureStoreCount"))

instance ToJSON DeidentifyErrorDetails where
        toJSON DeidentifyErrorDetails'{..}
          = object
              (catMaybes
                 [("successStoreCount" .=) <$> _dedSuccessStoreCount,
                  ("successResourceCount" .=) <$>
                    _dedSuccessResourceCount,
                  ("failureResourceCount" .=) <$>
                    _dedFailureResourceCount,
                  ("failureStoreCount" .=) <$> _dedFailureStoreCount])

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

-- | Final response of importing resources. This structure will be included
-- in the response to describe the detailed outcome. It will only be
-- included when the operation finishes successfully.
--
-- /See:/ 'googleCloudHealthcareV1beta1FhirRestImportResourcesResponse' smart constructor.
data GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse =
  GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse'
    { _gchvfrirrFhirStore :: !(Maybe Text)
    , _gchvfrirrInputSize :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfrirrFhirStore'
--
-- * 'gchvfrirrInputSize'
googleCloudHealthcareV1beta1FhirRestImportResourcesResponse
    :: GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse
googleCloudHealthcareV1beta1FhirRestImportResourcesResponse =
  GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse'
    {_gchvfrirrFhirStore = Nothing, _gchvfrirrInputSize = Nothing}


-- | The name of the FHIR store where the resources have been imported, in
-- the format
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
gchvfrirrFhirStore :: Lens' GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse (Maybe Text)
gchvfrirrFhirStore
  = lens _gchvfrirrFhirStore
      (\ s a -> s{_gchvfrirrFhirStore = a})

-- | The total number of resources included in the source data.
gchvfrirrInputSize :: Lens' GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse (Maybe Int64)
gchvfrirrInputSize
  = lens _gchvfrirrInputSize
      (\ s a -> s{_gchvfrirrInputSize = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse"
              (\ o ->
                 GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse'
                   <$> (o .:? "fhirStore") <*> (o .:? "inputSize"))

instance ToJSON
           GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse
         where
        toJSON
          GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse'{..}
          = object
              (catMaybes
                 [("fhirStore" .=) <$> _gchvfrirrFhirStore,
                  ("inputSize" .=) <$> _gchvfrirrInputSize])

-- | Specifies how de-identification of a FHIR store should be handled.
--
-- /See:/ 'fhirConfig' smart constructor.
newtype FhirConfig =
  FhirConfig'
    { _fcFieldMetadataList :: Maybe [FieldMetadata]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FhirConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcFieldMetadataList'
fhirConfig
    :: FhirConfig
fhirConfig = FhirConfig' {_fcFieldMetadataList = Nothing}


-- | Specifies FHIR paths to match and how to transform them. Any field that
-- is not matched by a FieldMetadata will be passed through to the output
-- dataset unmodified. All extensions are removed in the output.
fcFieldMetadataList :: Lens' FhirConfig [FieldMetadata]
fcFieldMetadataList
  = lens _fcFieldMetadataList
      (\ s a -> s{_fcFieldMetadataList = a})
      . _Default
      . _Coerce

instance FromJSON FhirConfig where
        parseJSON
          = withObject "FhirConfig"
              (\ o ->
                 FhirConfig' <$>
                   (o .:? "fieldMetadataList" .!= mempty))

instance ToJSON FhirConfig where
        toJSON FhirConfig'{..}
          = object
              (catMaybes
                 [("fieldMetadataList" .=) <$> _fcFieldMetadataList])

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

--
-- /See:/ 'textConfig' smart constructor.
newtype TextConfig =
  TextConfig'
    { _tcTransformations :: Maybe [InfoTypeTransformation]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcTransformations'
textConfig
    :: TextConfig
textConfig = TextConfig' {_tcTransformations = Nothing}


-- | The transformations to apply to the detected data.
tcTransformations :: Lens' TextConfig [InfoTypeTransformation]
tcTransformations
  = lens _tcTransformations
      (\ s a -> s{_tcTransformations = a})
      . _Default
      . _Coerce

instance FromJSON TextConfig where
        parseJSON
          = withObject "TextConfig"
              (\ o ->
                 TextConfig' <$> (o .:? "transformations" .!= mempty))

instance ToJSON TextConfig where
        toJSON TextConfig'{..}
          = object
              (catMaybes
                 [("transformations" .=) <$> _tcTransformations])

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

-- | The Cloud Storage location where the output should be written, and the
-- export configuration.
--
-- /See:/ 'googleCloudHealthcareV1beta1DicomGcsDestination' smart constructor.
data GoogleCloudHealthcareV1beta1DicomGcsDestination =
  GoogleCloudHealthcareV1beta1DicomGcsDestination'
    { _gchvdgdURIPrefix :: !(Maybe Text)
    , _gchvdgdMimeType  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1beta1DicomGcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvdgdURIPrefix'
--
-- * 'gchvdgdMimeType'
googleCloudHealthcareV1beta1DicomGcsDestination
    :: GoogleCloudHealthcareV1beta1DicomGcsDestination
googleCloudHealthcareV1beta1DicomGcsDestination =
  GoogleCloudHealthcareV1beta1DicomGcsDestination'
    {_gchvdgdURIPrefix = Nothing, _gchvdgdMimeType = Nothing}


-- | The Cloud Storage destination to export to. URI for a Cloud Storage
-- directory where result files should be written (in the format
-- \`gs:\/\/{bucket-id}\/{path\/to\/destination\/dir}\`). If there is no
-- trailing slash, the service will append one when composing the object
-- path. The user is responsible for creating the Cloud Storage bucket
-- referenced in \`uri_prefix\`.
gchvdgdURIPrefix :: Lens' GoogleCloudHealthcareV1beta1DicomGcsDestination (Maybe Text)
gchvdgdURIPrefix
  = lens _gchvdgdURIPrefix
      (\ s a -> s{_gchvdgdURIPrefix = a})

-- | MIME types supported by DICOM spec. Each file will be written in the
-- following format:
-- \`...\/{study_id}\/{series_id}\/{instance_id}[\/{frame_number}].{extension}\`
-- The frame_number component will exist only for multi-frame instances.
-- Refer to the DICOM conformance statement for permissible MIME types:
-- https:\/\/cloud.google.com\/healthcare\/docs\/dicom#wado-rs The
-- following extensions will be used for output files: application\/dicom
-- -> .dcm image\/jpeg -> .jpg image\/png -> .png If unspecified, the
-- instances will be exported in their original DICOM format.
gchvdgdMimeType :: Lens' GoogleCloudHealthcareV1beta1DicomGcsDestination (Maybe Text)
gchvdgdMimeType
  = lens _gchvdgdMimeType
      (\ s a -> s{_gchvdgdMimeType = a})

instance FromJSON
           GoogleCloudHealthcareV1beta1DicomGcsDestination
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1beta1DicomGcsDestination"
              (\ o ->
                 GoogleCloudHealthcareV1beta1DicomGcsDestination' <$>
                   (o .:? "uriPrefix") <*> (o .:? "mimeType"))

instance ToJSON
           GoogleCloudHealthcareV1beta1DicomGcsDestination
         where
        toJSON
          GoogleCloudHealthcareV1beta1DicomGcsDestination'{..}
          = object
              (catMaybes
                 [("uriPrefix" .=) <$> _gchvdgdURIPrefix,
                  ("mimeType" .=) <$> _gchvdgdMimeType])

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
    , _fsLabels                      :: !(Maybe FhirStoreLabels)
    , _fsEnableHistoryImport         :: !(Maybe Bool)
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
--
-- * 'fsLabels'
--
-- * 'fsEnableHistoryImport'
fhirStore
    :: FhirStore
fhirStore =
  FhirStore'
    { _fsEnableUpdateCreate = Nothing
    , _fsNotificationConfig = Nothing
    , _fsDisableReferentialIntegrity = Nothing
    , _fsDisableResourceVersioning = Nothing
    , _fsName = Nothing
    , _fsLabels = Nothing
    , _fsEnableHistoryImport = Nothing
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

-- | User-supplied key-value pairs used to organize FHIR stores. Label keys
-- must be between 1 and 63 characters long, have a UTF-8 encoding of
-- maximum 128 bytes, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be
-- between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
-- bytes, and must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated
-- with a given store.
fsLabels :: Lens' FhirStore (Maybe FhirStoreLabels)
fsLabels = lens _fsLabels (\ s a -> s{_fsLabels = a})

-- | Whether to allow the bulk import API to accept history bundles and
-- directly insert historical resource versions into the FHIR store.
-- Importing resource histories creates resource interactions that appear
-- to have occurred in the past, which clients may not want to allow. If
-- set to false, history bundles within an import will fail with an error.
fsEnableHistoryImport :: Lens' FhirStore (Maybe Bool)
fsEnableHistoryImport
  = lens _fsEnableHistoryImport
      (\ s a -> s{_fsEnableHistoryImport = a})

instance FromJSON FhirStore where
        parseJSON
          = withObject "FhirStore"
              (\ o ->
                 FhirStore' <$>
                   (o .:? "enableUpdateCreate") <*>
                     (o .:? "notificationConfig")
                     <*> (o .:? "disableReferentialIntegrity")
                     <*> (o .:? "disableResourceVersioning")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "enableHistoryImport"))

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
                  ("name" .=) <$> _fsName, ("labels" .=) <$> _fsLabels,
                  ("enableHistoryImport" .=) <$>
                    _fsEnableHistoryImport])

-- | A mapping from the positional location to the value. The key string uses
-- zero-based indexes separated by dots to identify Fields, components and
-- sub-components. A bracket notation is also used to identify different
-- instances of a repeated field. Regex for key:
-- (\\d+)(\\[\\d+\\])?(.\\d+)?(.\\d+)? Examples of (key, value) pairs: -
-- (0.1, \"foo\"): Component 1 of Field 0 has the value \"foo\". - (1.1.2,
-- \"bar\"): Sub-component 2 of Component 1 of field 1 has the value
-- \"bar\". - (1[2].1, \"baz\"): Component 1 of Instance 2 of Field 1,
-- which is repeated, has the value \"baz\".
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

-- | Specifies the configuration for importing data from Cloud Storage.
--
-- /See:/ 'googleCloudHealthcareV1beta1FhirRestGcsSource' smart constructor.
newtype GoogleCloudHealthcareV1beta1FhirRestGcsSource =
  GoogleCloudHealthcareV1beta1FhirRestGcsSource'
    { _gchvfrgsURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1beta1FhirRestGcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfrgsURI'
googleCloudHealthcareV1beta1FhirRestGcsSource
    :: GoogleCloudHealthcareV1beta1FhirRestGcsSource
googleCloudHealthcareV1beta1FhirRestGcsSource =
  GoogleCloudHealthcareV1beta1FhirRestGcsSource' {_gchvfrgsURI = Nothing}


-- | Points to a Cloud Storage URI containing file(s) to import. The URI must
-- be in the following format: \`gs:\/\/{bucket_id}\/{object_id}\`. The URI
-- can include wildcards in \`object_id\` and thus identify multiple files.
-- Supported wildcards: * \`*\` to match 0 or more non-separator characters
-- * \`**\` to match 0 or more characters (including separators). Must be
-- used at the end of a path and with no other wildcards in the path. Can
-- also be used with a file extension (such as .ndjson), which imports all
-- files with the extension in the specified directory and its
-- sub-directories. For example,
-- \`gs:\/\/my-bucket\/my-directory\/**.ndjson\` imports all files with
-- \`.ndjson\` extensions in \`my-directory\/\` and its sub-directories. *
-- \`?\` to match 1 character Files matching the wildcard are expected to
-- contain content only, no metadata.
gchvfrgsURI :: Lens' GoogleCloudHealthcareV1beta1FhirRestGcsSource (Maybe Text)
gchvfrgsURI
  = lens _gchvfrgsURI (\ s a -> s{_gchvfrgsURI = a})

instance FromJSON
           GoogleCloudHealthcareV1beta1FhirRestGcsSource
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1beta1FhirRestGcsSource"
              (\ o ->
                 GoogleCloudHealthcareV1beta1FhirRestGcsSource' <$>
                   (o .:? "uri"))

instance ToJSON
           GoogleCloudHealthcareV1beta1FhirRestGcsSource
         where
        toJSON
          GoogleCloudHealthcareV1beta1FhirRestGcsSource'{..}
          = object (catMaybes [("uri" .=) <$> _gchvfrgsURI])

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

-- | Specifies how de-identification of image pixel should be handled.
--
-- /See:/ 'imageConfig' smart constructor.
newtype ImageConfig =
  ImageConfig'
    { _icTextRedactionMode :: Maybe ImageConfigTextRedactionMode
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImageConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icTextRedactionMode'
imageConfig
    :: ImageConfig
imageConfig = ImageConfig' {_icTextRedactionMode = Nothing}


-- | Determines how to redact text from image.
icTextRedactionMode :: Lens' ImageConfig (Maybe ImageConfigTextRedactionMode)
icTextRedactionMode
  = lens _icTextRedactionMode
      (\ s a -> s{_icTextRedactionMode = a})

instance FromJSON ImageConfig where
        parseJSON
          = withObject "ImageConfig"
              (\ o -> ImageConfig' <$> (o .:? "textRedactionMode"))

instance ToJSON ImageConfig where
        toJSON ImageConfig'{..}
          = object
              (catMaybes
                 [("textRedactionMode" .=) <$> _icTextRedactionMode])

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

-- | Imports data into the specified DICOM store. Returns an error if any of
-- the files to import are not DICOM files. This API will accept duplicate
-- DICOM instances, by simply ignoring the newly pushed instance (it will
-- not overwrite).
--
-- /See:/ 'importDicomDataRequest' smart constructor.
newtype ImportDicomDataRequest =
  ImportDicomDataRequest'
    { _iddrGcsSource :: Maybe GoogleCloudHealthcareV1beta1DicomGcsSource
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportDicomDataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iddrGcsSource'
importDicomDataRequest
    :: ImportDicomDataRequest
importDicomDataRequest = ImportDicomDataRequest' {_iddrGcsSource = Nothing}


-- | Cloud Storage source data location and import configuration. The Cloud
-- Storage location requires the \`roles\/storage.objectViewer\` Cloud IAM
-- role.
iddrGcsSource :: Lens' ImportDicomDataRequest (Maybe GoogleCloudHealthcareV1beta1DicomGcsSource)
iddrGcsSource
  = lens _iddrGcsSource
      (\ s a -> s{_iddrGcsSource = a})

instance FromJSON ImportDicomDataRequest where
        parseJSON
          = withObject "ImportDicomDataRequest"
              (\ o ->
                 ImportDicomDataRequest' <$> (o .:? "gcsSource"))

instance ToJSON ImportDicomDataRequest where
        toJSON ImportDicomDataRequest'{..}
          = object
              (catMaybes [("gcsSource" .=) <$> _iddrGcsSource])

-- | Represents an HL7v2 store.
--
-- /See:/ 'hl7V2Store' smart constructor.
data Hl7V2Store =
  Hl7V2Store'
    { _hvsNotificationConfig :: !(Maybe NotificationConfig)
    , _hvsName               :: !(Maybe Text)
    , _hvsParserConfig       :: !(Maybe ParserConfig)
    , _hvsLabels             :: !(Maybe Hl7V2StoreLabels)
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
--
-- * 'hvsLabels'
hl7V2Store
    :: Hl7V2Store
hl7V2Store =
  Hl7V2Store'
    { _hvsNotificationConfig = Nothing
    , _hvsName = Nothing
    , _hvsParserConfig = Nothing
    , _hvsLabels = Nothing
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

-- | User-supplied key-value pairs used to organize HL7v2 stores. Label keys
-- must be between 1 and 63 characters long, have a UTF-8 encoding of
-- maximum 128 bytes, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be
-- between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
-- bytes, and must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated
-- with a given store.
hvsLabels :: Lens' Hl7V2Store (Maybe Hl7V2StoreLabels)
hvsLabels
  = lens _hvsLabels (\ s a -> s{_hvsLabels = a})

instance FromJSON Hl7V2Store where
        parseJSON
          = withObject "Hl7V2Store"
              (\ o ->
                 Hl7V2Store' <$>
                   (o .:? "notificationConfig") <*> (o .:? "name") <*>
                     (o .:? "parserConfig")
                     <*> (o .:? "labels"))

instance ToJSON Hl7V2Store where
        toJSON Hl7V2Store'{..}
          = object
              (catMaybes
                 [("notificationConfig" .=) <$>
                    _hvsNotificationConfig,
                  ("name" .=) <$> _hvsName,
                  ("parserConfig" .=) <$> _hvsParserConfig,
                  ("labels" .=) <$> _hvsLabels])

-- | The configuration for exporting to Cloud Storage.
--
-- /See:/ 'googleCloudHealthcareV1beta1FhirRestGcsDestination' smart constructor.
newtype GoogleCloudHealthcareV1beta1FhirRestGcsDestination =
  GoogleCloudHealthcareV1beta1FhirRestGcsDestination'
    { _gchvfrgdURIPrefix :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1beta1FhirRestGcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfrgdURIPrefix'
googleCloudHealthcareV1beta1FhirRestGcsDestination
    :: GoogleCloudHealthcareV1beta1FhirRestGcsDestination
googleCloudHealthcareV1beta1FhirRestGcsDestination =
  GoogleCloudHealthcareV1beta1FhirRestGcsDestination'
    {_gchvfrgdURIPrefix = Nothing}


-- | URI for a Cloud Storage directory where result files should be written
-- (in the format \`gs:\/\/{bucket-id}\/{path\/to\/destination\/dir}\`). If
-- there is no trailing slash, the service will append one when composing
-- the object path. The user is responsible for creating the Cloud Storage
-- bucket referenced in \`uri_prefix\`.
gchvfrgdURIPrefix :: Lens' GoogleCloudHealthcareV1beta1FhirRestGcsDestination (Maybe Text)
gchvfrgdURIPrefix
  = lens _gchvfrgdURIPrefix
      (\ s a -> s{_gchvfrgdURIPrefix = a})

instance FromJSON
           GoogleCloudHealthcareV1beta1FhirRestGcsDestination
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1beta1FhirRestGcsDestination"
              (\ o ->
                 GoogleCloudHealthcareV1beta1FhirRestGcsDestination'
                   <$> (o .:? "uriPrefix"))

instance ToJSON
           GoogleCloudHealthcareV1beta1FhirRestGcsDestination
         where
        toJSON
          GoogleCloudHealthcareV1beta1FhirRestGcsDestination'{..}
          = object
              (catMaybes [("uriPrefix" .=) <$> _gchvfrgdURIPrefix])

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
-- For example, \`concept\` in the CodeSystem resource is a recursive
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

-- | Error response of importing resources. This structure will be included
-- in the error details to describe the detailed error. It will only be
-- included when the operation finishes with some failure.
--
-- /See:/ 'googleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails' smart constructor.
data GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails =
  GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails'
    { _gchvfriredFhirStore    :: !(Maybe Text)
    , _gchvfriredErrorCount   :: !(Maybe (Textual Int64))
    , _gchvfriredSuccessCount :: !(Maybe (Textual Int64))
    , _gchvfriredInputSize    :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfriredFhirStore'
--
-- * 'gchvfriredErrorCount'
--
-- * 'gchvfriredSuccessCount'
--
-- * 'gchvfriredInputSize'
googleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails
    :: GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails
googleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails =
  GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails'
    { _gchvfriredFhirStore = Nothing
    , _gchvfriredErrorCount = Nothing
    , _gchvfriredSuccessCount = Nothing
    , _gchvfriredInputSize = Nothing
    }


-- | The name of the FHIR store where resources have been imported, in the
-- format
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
gchvfriredFhirStore :: Lens' GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails (Maybe Text)
gchvfriredFhirStore
  = lens _gchvfriredFhirStore
      (\ s a -> s{_gchvfriredFhirStore = a})

-- | The number of resources that had errors.
gchvfriredErrorCount :: Lens' GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails (Maybe Int64)
gchvfriredErrorCount
  = lens _gchvfriredErrorCount
      (\ s a -> s{_gchvfriredErrorCount = a})
      . mapping _Coerce

-- | The number of resources that have been imported.
gchvfriredSuccessCount :: Lens' GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails (Maybe Int64)
gchvfriredSuccessCount
  = lens _gchvfriredSuccessCount
      (\ s a -> s{_gchvfriredSuccessCount = a})
      . mapping _Coerce

-- | The total number of resources included in the source data. This is the
-- sum of the success and error counts.
gchvfriredInputSize :: Lens' GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails (Maybe Int64)
gchvfriredInputSize
  = lens _gchvfriredInputSize
      (\ s a -> s{_gchvfriredInputSize = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails"
              (\ o ->
                 GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails'
                   <$>
                   (o .:? "fhirStore") <*> (o .:? "errorCount") <*>
                     (o .:? "successCount")
                     <*> (o .:? "inputSize"))

instance ToJSON
           GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails
         where
        toJSON
          GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails'{..}
          = object
              (catMaybes
                 [("fhirStore" .=) <$> _gchvfriredFhirStore,
                  ("errorCount" .=) <$> _gchvfriredErrorCount,
                  ("successCount" .=) <$> _gchvfriredSuccessCount,
                  ("inputSize" .=) <$> _gchvfriredInputSize])

-- | Shift a date forward or backward in time by a random amount which is
-- consistent for a given patient and crypto key combination.
--
-- /See:/ 'dateShiftConfig' smart constructor.
newtype DateShiftConfig =
  DateShiftConfig'
    { _dscCryptoKey :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DateShiftConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscCryptoKey'
dateShiftConfig
    :: DateShiftConfig
dateShiftConfig = DateShiftConfig' {_dscCryptoKey = Nothing}


-- | An AES 128\/192\/256 bit key. Causes the shift to be computed based on
-- this key and the patient ID. A default key is generated for each
-- DeidentifyDataset operation and is used wherever crypto_key is not
-- specified.
dscCryptoKey :: Lens' DateShiftConfig (Maybe ByteString)
dscCryptoKey
  = lens _dscCryptoKey (\ s a -> s{_dscCryptoKey = a})
      . mapping _Bytes

instance FromJSON DateShiftConfig where
        parseJSON
          = withObject "DateShiftConfig"
              (\ o -> DateShiftConfig' <$> (o .:? "cryptoKey"))

instance ToJSON DateShiftConfig where
        toJSON DateShiftConfig'{..}
          = object
              (catMaybes [("cryptoKey" .=) <$> _dscCryptoKey])

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

-- | Contains a detailed summary of the Deidentify operation.
--
-- /See:/ 'deidentifySummary' smart constructor.
data DeidentifySummary =
  DeidentifySummary'
    { _dsSuccessStoreCount    :: !(Maybe (Textual Int64))
    , _dsSuccessResourceCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeidentifySummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsSuccessStoreCount'
--
-- * 'dsSuccessResourceCount'
deidentifySummary
    :: DeidentifySummary
deidentifySummary =
  DeidentifySummary'
    {_dsSuccessStoreCount = Nothing, _dsSuccessResourceCount = Nothing}


-- | Number of stores successfully processed.
dsSuccessStoreCount :: Lens' DeidentifySummary (Maybe Int64)
dsSuccessStoreCount
  = lens _dsSuccessStoreCount
      (\ s a -> s{_dsSuccessStoreCount = a})
      . mapping _Coerce

-- | Number of resources successfully processed.
dsSuccessResourceCount :: Lens' DeidentifySummary (Maybe Int64)
dsSuccessResourceCount
  = lens _dsSuccessResourceCount
      (\ s a -> s{_dsSuccessResourceCount = a})
      . mapping _Coerce

instance FromJSON DeidentifySummary where
        parseJSON
          = withObject "DeidentifySummary"
              (\ o ->
                 DeidentifySummary' <$>
                   (o .:? "successStoreCount") <*>
                     (o .:? "successResourceCount"))

instance ToJSON DeidentifySummary where
        toJSON DeidentifySummary'{..}
          = object
              (catMaybes
                 [("successStoreCount" .=) <$> _dsSuccessStoreCount,
                  ("successResourceCount" .=) <$>
                    _dsSuccessResourceCount])

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

-- | Specifies FHIR paths to match, and how to handle de-identification of
-- matching fields.
--
-- /See:/ 'fieldMetadata' smart constructor.
data FieldMetadata =
  FieldMetadata'
    { _fmAction :: !(Maybe FieldMetadataAction)
    , _fmPaths  :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FieldMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmAction'
--
-- * 'fmPaths'
fieldMetadata
    :: FieldMetadata
fieldMetadata = FieldMetadata' {_fmAction = Nothing, _fmPaths = Nothing}


-- | Deidentify action for one field.
fmAction :: Lens' FieldMetadata (Maybe FieldMetadataAction)
fmAction = lens _fmAction (\ s a -> s{_fmAction = a})

-- | List of paths to FHIR fields to be redacted. Each path is a
-- period-separated list where each component is either a field name or
-- FHIR type name, for example: Patient, HumanName. For \"choice\" types
-- (those defined in the FHIR spec with the form: field[x]) we use two
-- separate components. e.g. \"deceasedAge.unit\" is matched by
-- \"Deceased.Age.unit\". Supported types are: AdministrativeGenderCode,
-- Code, Date, DateTime, Decimal, HumanName, Id, LanguageCode, Markdown,
-- MimeTypeCode, Oid, String, Uri, Uuid, Xhtml.
fmPaths :: Lens' FieldMetadata [Text]
fmPaths
  = lens _fmPaths (\ s a -> s{_fmPaths = a}) . _Default
      . _Coerce

instance FromJSON FieldMetadata where
        parseJSON
          = withObject "FieldMetadata"
              (\ o ->
                 FieldMetadata' <$>
                   (o .:? "action") <*> (o .:? "paths" .!= mempty))

instance ToJSON FieldMetadata where
        toJSON FieldMetadata'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _fmAction,
                  ("paths" .=) <$> _fmPaths])

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
    , _dcText  :: !(Maybe TextConfig)
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
--
-- * 'dcText'
deidentifyConfig
    :: DeidentifyConfig
deidentifyConfig =
  DeidentifyConfig'
    { _dcDicom = Nothing
    , _dcImage = Nothing
    , _dcFhir = Nothing
    , _dcText = Nothing
    }


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

-- | Configures de-identification of text wherever it is found in the
-- source_dataset.
dcText :: Lens' DeidentifyConfig (Maybe TextConfig)
dcText = lens _dcText (\ s a -> s{_dcText = a})

instance FromJSON DeidentifyConfig where
        parseJSON
          = withObject "DeidentifyConfig"
              (\ o ->
                 DeidentifyConfig' <$>
                   (o .:? "dicom") <*> (o .:? "image") <*>
                     (o .:? "fhir")
                     <*> (o .:? "text"))

instance ToJSON DeidentifyConfig where
        toJSON DeidentifyConfig'{..}
          = object
              (catMaybes
                 [("dicom" .=) <$> _dcDicom,
                  ("image" .=) <$> _dcImage, ("fhir" .=) <$> _dcFhir,
                  ("text" .=) <$> _dcText])

-- | User-supplied key-value pairs used to organize FHIR stores. Label keys
-- must be between 1 and 63 characters long, have a UTF-8 encoding of
-- maximum 128 bytes, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be
-- between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
-- bytes, and must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated
-- with a given store.
--
-- /See:/ 'fhirStoreLabels' smart constructor.
newtype FhirStoreLabels =
  FhirStoreLabels'
    { _fslAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FhirStoreLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fslAddtional'
fhirStoreLabels
    :: HashMap Text Text -- ^ 'fslAddtional'
    -> FhirStoreLabels
fhirStoreLabels pFslAddtional_ =
  FhirStoreLabels' {_fslAddtional = _Coerce # pFslAddtional_}


fslAddtional :: Lens' FhirStoreLabels (HashMap Text Text)
fslAddtional
  = lens _fslAddtional (\ s a -> s{_fslAddtional = a})
      . _Coerce

instance FromJSON FhirStoreLabels where
        parseJSON
          = withObject "FhirStoreLabels"
              (\ o -> FhirStoreLabels' <$> (parseJSONObject o))

instance ToJSON FhirStoreLabels where
        toJSON = toJSON . _fslAddtional

-- | The configuration for exporting to BigQuery.
--
-- /See:/ 'googleCloudHealthcareV1beta1FhirBigQueryDestination' smart constructor.
data GoogleCloudHealthcareV1beta1FhirBigQueryDestination =
  GoogleCloudHealthcareV1beta1FhirBigQueryDestination'
    { _gchvfbqdSchemaConfig :: !(Maybe SchemaConfig)
    , _gchvfbqdDataSetURI   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1beta1FhirBigQueryDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfbqdSchemaConfig'
--
-- * 'gchvfbqdDataSetURI'
googleCloudHealthcareV1beta1FhirBigQueryDestination
    :: GoogleCloudHealthcareV1beta1FhirBigQueryDestination
googleCloudHealthcareV1beta1FhirBigQueryDestination =
  GoogleCloudHealthcareV1beta1FhirBigQueryDestination'
    {_gchvfbqdSchemaConfig = Nothing, _gchvfbqdDataSetURI = Nothing}


-- | The configuration for the exported BigQuery schema.
gchvfbqdSchemaConfig :: Lens' GoogleCloudHealthcareV1beta1FhirBigQueryDestination (Maybe SchemaConfig)
gchvfbqdSchemaConfig
  = lens _gchvfbqdSchemaConfig
      (\ s a -> s{_gchvfbqdSchemaConfig = a})

-- | BigQuery URI to a dataset, up to 2000 characters long, in the format
-- \`bq:\/\/projectId.bqDatasetId\`
gchvfbqdDataSetURI :: Lens' GoogleCloudHealthcareV1beta1FhirBigQueryDestination (Maybe Text)
gchvfbqdDataSetURI
  = lens _gchvfbqdDataSetURI
      (\ s a -> s{_gchvfbqdDataSetURI = a})

instance FromJSON
           GoogleCloudHealthcareV1beta1FhirBigQueryDestination
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1beta1FhirBigQueryDestination"
              (\ o ->
                 GoogleCloudHealthcareV1beta1FhirBigQueryDestination'
                   <$> (o .:? "schemaConfig") <*> (o .:? "datasetUri"))

instance ToJSON
           GoogleCloudHealthcareV1beta1FhirBigQueryDestination
         where
        toJSON
          GoogleCloudHealthcareV1beta1FhirBigQueryDestination'{..}
          = object
              (catMaybes
                 [("schemaConfig" .=) <$> _gchvfbqdSchemaConfig,
                  ("datasetUri" .=) <$> _gchvfbqdDataSetURI])

-- | When using the INSPECT_AND_TRANSFORM action, each match is replaced with
-- the name of the info_type. For example, \"My name is Jake\" becomes \"My
-- name is [PERSON_NAME].\" The TRANSFORM action is equivalent to
-- redacting.
--
-- /See:/ 'replaceWithInfoTypeConfig' smart constructor.
data ReplaceWithInfoTypeConfig =
  ReplaceWithInfoTypeConfig'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplaceWithInfoTypeConfig' with the minimum fields required to make a request.
--
replaceWithInfoTypeConfig
    :: ReplaceWithInfoTypeConfig
replaceWithInfoTypeConfig = ReplaceWithInfoTypeConfig'


instance FromJSON ReplaceWithInfoTypeConfig where
        parseJSON
          = withObject "ReplaceWithInfoTypeConfig"
              (\ o -> pure ReplaceWithInfoTypeConfig')

instance ToJSON ReplaceWithInfoTypeConfig where
        toJSON = const emptyObject

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

-- | Request to import resources.
--
-- /See:/ 'importResourcesRequest' smart constructor.
data ImportResourcesRequest =
  ImportResourcesRequest'
    { _irrGcsSource        :: !(Maybe GoogleCloudHealthcareV1beta1FhirRestGcsSource)
    , _irrContentStructure :: !(Maybe ImportResourcesRequestContentStructure)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportResourcesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irrGcsSource'
--
-- * 'irrContentStructure'
importResourcesRequest
    :: ImportResourcesRequest
importResourcesRequest =
  ImportResourcesRequest'
    {_irrGcsSource = Nothing, _irrContentStructure = Nothing}


-- | Cloud Storage source data location and import configuration. The Cloud
-- Storage location requires the \`roles\/storage.objectViewer\` Cloud IAM
-- role. Each Cloud Storage object should be a text file that contains
-- newline delimited JSON structures conforming to FHIR standard. To
-- improve performance, use multiple Cloud Storage objects where each
-- object contains a subset of all of the newline-delimited JSON
-- structures. You can select all of the objects using the uri as the
-- prefix. The maximum number of objects is 1,000.
irrGcsSource :: Lens' ImportResourcesRequest (Maybe GoogleCloudHealthcareV1beta1FhirRestGcsSource)
irrGcsSource
  = lens _irrGcsSource (\ s a -> s{_irrGcsSource = a})

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
                   (o .:? "gcsSource") <*> (o .:? "contentStructure"))

instance ToJSON ImportResourcesRequest where
        toJSON ImportResourcesRequest'{..}
          = object
              (catMaybes
                 [("gcsSource" .=) <$> _irrGcsSource,
                  ("contentStructure" .=) <$> _irrContentStructure])

-- | User-supplied key-value pairs used to organize HL7v2 stores. Label keys
-- must be between 1 and 63 characters long, have a UTF-8 encoding of
-- maximum 128 bytes, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be
-- between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
-- bytes, and must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated
-- with a given store.
--
-- /See:/ 'hl7V2StoreLabels' smart constructor.
newtype Hl7V2StoreLabels =
  Hl7V2StoreLabels'
    { _hvslAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Hl7V2StoreLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hvslAddtional'
hl7V2StoreLabels
    :: HashMap Text Text -- ^ 'hvslAddtional'
    -> Hl7V2StoreLabels
hl7V2StoreLabels pHvslAddtional_ =
  Hl7V2StoreLabels' {_hvslAddtional = _Coerce # pHvslAddtional_}


hvslAddtional :: Lens' Hl7V2StoreLabels (HashMap Text Text)
hvslAddtional
  = lens _hvslAddtional
      (\ s a -> s{_hvslAddtional = a})
      . _Coerce

instance FromJSON Hl7V2StoreLabels where
        parseJSON
          = withObject "Hl7V2StoreLabels"
              (\ o -> Hl7V2StoreLabels' <$> (parseJSONObject o))

instance ToJSON Hl7V2StoreLabels where
        toJSON = toJSON . _hvslAddtional

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

-- | List of tags to be filtered.
--
-- /See:/ 'tagFilterList' smart constructor.
newtype TagFilterList =
  TagFilterList'
    { _tflTags :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagFilterList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tflTags'
tagFilterList
    :: TagFilterList
tagFilterList = TagFilterList' {_tflTags = Nothing}


-- | Tags to be filtered. Tags must be DICOM Data Elements, File Meta
-- Elements, or Directory Structuring Elements, as defined at:
-- http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part06.html#table_6-1,.
-- They may be provided by \"Keyword\" or \"Tag\". For example
-- \"PatientID\", \"00100010\".
tflTags :: Lens' TagFilterList [Text]
tflTags
  = lens _tflTags (\ s a -> s{_tflTags = a}) . _Default
      . _Coerce

instance FromJSON TagFilterList where
        parseJSON
          = withObject "TagFilterList"
              (\ o -> TagFilterList' <$> (o .:? "tags" .!= mempty))

instance ToJSON TagFilterList where
        toJSON TagFilterList'{..}
          = object (catMaybes [("tags" .=) <$> _tflTags])

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

-- | Specifies the configuration for importing data from Cloud Storage.
--
-- /See:/ 'googleCloudHealthcareV1beta1DicomGcsSource' smart constructor.
newtype GoogleCloudHealthcareV1beta1DicomGcsSource =
  GoogleCloudHealthcareV1beta1DicomGcsSource'
    { _gchvdgsURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1beta1DicomGcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvdgsURI'
googleCloudHealthcareV1beta1DicomGcsSource
    :: GoogleCloudHealthcareV1beta1DicomGcsSource
googleCloudHealthcareV1beta1DicomGcsSource =
  GoogleCloudHealthcareV1beta1DicomGcsSource' {_gchvdgsURI = Nothing}


-- | Points to a Cloud Storage URI containing file(s) with content only. The
-- URI must be in the following format:
-- \`gs:\/\/{bucket_id}\/{object_id}\`. The URI can include wildcards in
-- \`object_id\` and thus identify multiple files. Supported wildcards:
-- \'*\' to match 0 or more non-separator characters \'**\' to match 0 or
-- more characters (including separators). Must be used at the end of a
-- path and with no other wildcards in the path. Can also be used with a
-- file extension (such as .dcm), which imports all files with the
-- extension in the specified directory and its sub-directories. For
-- example, \`gs:\/\/my-bucket\/my-directory\/**.dcm\` imports all files
-- with .dcm extensions in \`my-directory\/\` and its sub-directories.
-- \'?\' to match 1 character All other URI formats are invalid. Files
-- matching the wildcard are expected to contain content only, no metadata.
gchvdgsURI :: Lens' GoogleCloudHealthcareV1beta1DicomGcsSource (Maybe Text)
gchvdgsURI
  = lens _gchvdgsURI (\ s a -> s{_gchvdgsURI = a})

instance FromJSON
           GoogleCloudHealthcareV1beta1DicomGcsSource
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1beta1DicomGcsSource"
              (\ o ->
                 GoogleCloudHealthcareV1beta1DicomGcsSource' <$>
                   (o .:? "uri"))

instance ToJSON
           GoogleCloudHealthcareV1beta1DicomGcsSource
         where
        toJSON
          GoogleCloudHealthcareV1beta1DicomGcsSource'{..}
          = object (catMaybes [("uri" .=) <$> _gchvdgsURI])

-- | Pseudonymization method that generates surrogates via cryptographic
-- hashing. Uses SHA-256. Outputs a base64-encoded representation of the
-- hashed output (for example,
-- \`L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=\`).
--
-- /See:/ 'cryptoHashConfig' smart constructor.
newtype CryptoHashConfig =
  CryptoHashConfig'
    { _chcCryptoKey :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CryptoHashConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chcCryptoKey'
cryptoHashConfig
    :: CryptoHashConfig
cryptoHashConfig = CryptoHashConfig' {_chcCryptoKey = Nothing}


-- | An AES 128\/192\/256 bit key. Causes the hash to be computed based on
-- this key. A default key is generated for each DeidentifyDataset
-- operation and is used wherever crypto_key is not specified.
chcCryptoKey :: Lens' CryptoHashConfig (Maybe ByteString)
chcCryptoKey
  = lens _chcCryptoKey (\ s a -> s{_chcCryptoKey = a})
      . mapping _Bytes

instance FromJSON CryptoHashConfig where
        parseJSON
          = withObject "CryptoHashConfig"
              (\ o -> CryptoHashConfig' <$> (o .:? "cryptoKey"))

instance ToJSON CryptoHashConfig where
        toJSON CryptoHashConfig'{..}
          = object
              (catMaybes [("cryptoKey" .=) <$> _chcCryptoKey])

-- | Represents a DICOM store.
--
-- /See:/ 'dicomStore' smart constructor.
data DicomStore =
  DicomStore'
    { _dNotificationConfig :: !(Maybe NotificationConfig)
    , _dName               :: !(Maybe Text)
    , _dLabels             :: !(Maybe DicomStoreLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DicomStore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNotificationConfig'
--
-- * 'dName'
--
-- * 'dLabels'
dicomStore
    :: DicomStore
dicomStore =
  DicomStore'
    {_dNotificationConfig = Nothing, _dName = Nothing, _dLabels = Nothing}


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

-- | User-supplied key-value pairs used to organize DICOM stores. Label keys
-- must be between 1 and 63 characters long, have a UTF-8 encoding of
-- maximum 128 bytes, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be
-- between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
-- bytes, and must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated
-- with a given store.
dLabels :: Lens' DicomStore (Maybe DicomStoreLabels)
dLabels = lens _dLabels (\ s a -> s{_dLabels = a})

instance FromJSON DicomStore where
        parseJSON
          = withObject "DicomStore"
              (\ o ->
                 DicomStore' <$>
                   (o .:? "notificationConfig") <*> (o .:? "name") <*>
                     (o .:? "labels"))

instance ToJSON DicomStore where
        toJSON DicomStore'{..}
          = object
              (catMaybes
                 [("notificationConfig" .=) <$> _dNotificationConfig,
                  ("name" .=) <$> _dName, ("labels" .=) <$> _dLabels])

-- | Returns the errors encountered during DICOM store import.
--
-- /See:/ 'importDicomDataErrorDetails' smart constructor.
newtype ImportDicomDataErrorDetails =
  ImportDicomDataErrorDetails'
    { _iddedSampleErrors :: Maybe [ErrorDetail]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportDicomDataErrorDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iddedSampleErrors'
importDicomDataErrorDetails
    :: ImportDicomDataErrorDetails
importDicomDataErrorDetails =
  ImportDicomDataErrorDetails' {_iddedSampleErrors = Nothing}


-- | Deprecated. Use only for debugging purposes. Contains sample errors
-- encountered in imports of individual resources (for example, a Cloud
-- Storage object).
iddedSampleErrors :: Lens' ImportDicomDataErrorDetails [ErrorDetail]
iddedSampleErrors
  = lens _iddedSampleErrors
      (\ s a -> s{_iddedSampleErrors = a})
      . _Default
      . _Coerce

instance FromJSON ImportDicomDataErrorDetails where
        parseJSON
          = withObject "ImportDicomDataErrorDetails"
              (\ o ->
                 ImportDicomDataErrorDetails' <$>
                   (o .:? "sampleErrors" .!= mempty))

instance ToJSON ImportDicomDataErrorDetails where
        toJSON ImportDicomDataErrorDetails'{..}
          = object
              (catMaybes
                 [("sampleErrors" .=) <$> _iddedSampleErrors])

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

-- | The BigQuery table where the output should be written.
--
-- /See:/ 'googleCloudHealthcareV1beta1DicomBigQueryDestination' smart constructor.
data GoogleCloudHealthcareV1beta1DicomBigQueryDestination =
  GoogleCloudHealthcareV1beta1DicomBigQueryDestination'
    { _gchvdbqdForce    :: !(Maybe Bool)
    , _gchvdbqdTableURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1beta1DicomBigQueryDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvdbqdForce'
--
-- * 'gchvdbqdTableURI'
googleCloudHealthcareV1beta1DicomBigQueryDestination
    :: GoogleCloudHealthcareV1beta1DicomBigQueryDestination
googleCloudHealthcareV1beta1DicomBigQueryDestination =
  GoogleCloudHealthcareV1beta1DicomBigQueryDestination'
    {_gchvdbqdForce = Nothing, _gchvdbqdTableURI = Nothing}


-- | If the destination table already exists and this flag is \`TRUE\`, the
-- table will be overwritten by the contents of the DICOM store. If the
-- flag is not set and the destination table already exists, the export
-- call returns an error.
gchvdbqdForce :: Lens' GoogleCloudHealthcareV1beta1DicomBigQueryDestination (Maybe Bool)
gchvdbqdForce
  = lens _gchvdbqdForce
      (\ s a -> s{_gchvdbqdForce = a})

-- | BigQuery URI to a table, up to 2000 characters long, in the format
-- \`bq:\/\/projectId.bqDatasetId.tableId\`
gchvdbqdTableURI :: Lens' GoogleCloudHealthcareV1beta1DicomBigQueryDestination (Maybe Text)
gchvdbqdTableURI
  = lens _gchvdbqdTableURI
      (\ s a -> s{_gchvdbqdTableURI = a})

instance FromJSON
           GoogleCloudHealthcareV1beta1DicomBigQueryDestination
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1beta1DicomBigQueryDestination"
              (\ o ->
                 GoogleCloudHealthcareV1beta1DicomBigQueryDestination'
                   <$> (o .:? "force") <*> (o .:? "tableUri"))

instance ToJSON
           GoogleCloudHealthcareV1beta1DicomBigQueryDestination
         where
        toJSON
          GoogleCloudHealthcareV1beta1DicomBigQueryDestination'{..}
          = object
              (catMaybes
                 [("force" .=) <$> _gchvdbqdForce,
                  ("tableUri" .=) <$> _gchvdbqdTableURI])

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
-- zero-based indexes separated by dots to identify Fields, components and
-- sub-components. A bracket notation is also used to identify different
-- instances of a repeated field. Regex for key:
-- (\\d+)(\\[\\d+\\])?(.\\d+)?(.\\d+)? Examples of (key, value) pairs: -
-- (0.1, \"foo\"): Component 1 of Field 0 has the value \"foo\". - (1.1.2,
-- \"bar\"): Sub-component 2 of Component 1 of field 1 has the value
-- \"bar\". - (1[2].1, \"baz\"): Component 1 of Instance 2 of Field 1,
-- which is repeated, has the value \"baz\".
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


-- | Deidentify configuration.
ddsrConfig :: Lens' DeidentifyDataSetRequest (Maybe DeidentifyConfig)
ddsrConfig
  = lens _ddsrConfig (\ s a -> s{_ddsrConfig = a})

-- | The name of the dataset resource to create and write the redacted data
-- to (e.g., * The destination dataset must not exist. * The destination
-- dataset must be in the same project as the source dataset.
-- De-identifying data across multiple projects is not supported.
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

-- | Final response of exporting resources. This structure will be included
-- in the response to describe the detailed outcome. It will only be
-- included when the operation finishes.
--
-- /See:/ 'googleCloudHealthcareV1beta1FhirRestExportResourcesResponse' smart constructor.
data GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse =
  GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse'
    { _gchvfrerrFhirStore     :: !(Maybe Text)
    , _gchvfrerrResourceCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfrerrFhirStore'
--
-- * 'gchvfrerrResourceCount'
googleCloudHealthcareV1beta1FhirRestExportResourcesResponse
    :: GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse
googleCloudHealthcareV1beta1FhirRestExportResourcesResponse =
  GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse'
    {_gchvfrerrFhirStore = Nothing, _gchvfrerrResourceCount = Nothing}


-- | The name of the FHIR store where resources have been exported, in the
-- format
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
gchvfrerrFhirStore :: Lens' GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse (Maybe Text)
gchvfrerrFhirStore
  = lens _gchvfrerrFhirStore
      (\ s a -> s{_gchvfrerrFhirStore = a})

-- | The total number of resources exported from the requested FHIR store.
gchvfrerrResourceCount :: Lens' GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse (Maybe Int64)
gchvfrerrResourceCount
  = lens _gchvfrerrResourceCount
      (\ s a -> s{_gchvfrerrResourceCount = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse"
              (\ o ->
                 GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse'
                   <$> (o .:? "fhirStore") <*> (o .:? "resourceCount"))

instance ToJSON
           GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse
         where
        toJSON
          GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse'{..}
          = object
              (catMaybes
                 [("fhirStore" .=) <$> _gchvfrerrFhirStore,
                  ("resourceCount" .=) <$> _gchvfrerrResourceCount])

-- | Specifies the parameters needed for de-identification of DICOM stores.
--
-- /See:/ 'dicomConfig' smart constructor.
data DicomConfig =
  DicomConfig'
    { _dcKeepList      :: !(Maybe TagFilterList)
    , _dcRemoveList    :: !(Maybe TagFilterList)
    , _dcFilterProFile :: !(Maybe DicomConfigFilterProFile)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DicomConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcKeepList'
--
-- * 'dcRemoveList'
--
-- * 'dcFilterProFile'
dicomConfig
    :: DicomConfig
dicomConfig =
  DicomConfig'
    {_dcKeepList = Nothing, _dcRemoveList = Nothing, _dcFilterProFile = Nothing}


-- | List of tags to keep. Remove all other tags.
dcKeepList :: Lens' DicomConfig (Maybe TagFilterList)
dcKeepList
  = lens _dcKeepList (\ s a -> s{_dcKeepList = a})

-- | List of tags to remove. Keep all other tags.
dcRemoveList :: Lens' DicomConfig (Maybe TagFilterList)
dcRemoveList
  = lens _dcRemoveList (\ s a -> s{_dcRemoveList = a})

-- | Tag filtering profile that determines which tags to keep\/remove.
dcFilterProFile :: Lens' DicomConfig (Maybe DicomConfigFilterProFile)
dcFilterProFile
  = lens _dcFilterProFile
      (\ s a -> s{_dcFilterProFile = a})

instance FromJSON DicomConfig where
        parseJSON
          = withObject "DicomConfig"
              (\ o ->
                 DicomConfig' <$>
                   (o .:? "keepList") <*> (o .:? "removeList") <*>
                     (o .:? "filterProfile"))

instance ToJSON DicomConfig where
        toJSON DicomConfig'{..}
          = object
              (catMaybes
                 [("keepList" .=) <$> _dcKeepList,
                  ("removeList" .=) <$> _dcRemoveList,
                  ("filterProfile" .=) <$> _dcFilterProFile])

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

-- | User-supplied key-value pairs used to organize DICOM stores. Label keys
-- must be between 1 and 63 characters long, have a UTF-8 encoding of
-- maximum 128 bytes, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be
-- between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
-- bytes, and must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated
-- with a given store.
--
-- /See:/ 'dicomStoreLabels' smart constructor.
newtype DicomStoreLabels =
  DicomStoreLabels'
    { _dslAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DicomStoreLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslAddtional'
dicomStoreLabels
    :: HashMap Text Text -- ^ 'dslAddtional'
    -> DicomStoreLabels
dicomStoreLabels pDslAddtional_ =
  DicomStoreLabels' {_dslAddtional = _Coerce # pDslAddtional_}


dslAddtional :: Lens' DicomStoreLabels (HashMap Text Text)
dslAddtional
  = lens _dslAddtional (\ s a -> s{_dslAddtional = a})
      . _Coerce

instance FromJSON DicomStoreLabels where
        parseJSON
          = withObject "DicomStoreLabels"
              (\ o -> DicomStoreLabels' <$> (parseJSONObject o))

instance ToJSON DicomStoreLabels where
        toJSON = toJSON . _dslAddtional

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
-- \`admins\'example.com\`. * \`domain:{domain}\`: The G Suite domain
-- (primary) that represents all the users of that domain. For example,
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

-- | The condition that is associated with this binding. NOTE: An unsatisfied
-- condition will not allow user access via current binding. Different
-- bindings, including their conditions, are examined independently.
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

-- | Exports data from the specified DICOM store. If a given resource (e.g.,
-- a DICOM object with the same SOPInstance UID) already exists in the
-- output, it is overwritten with the version in the source dataset.
-- Exported DICOM data will persist when the DICOM store from which it was
-- exported is deleted.
--
-- /See:/ 'exportDicomDataRequest' smart constructor.
data ExportDicomDataRequest =
  ExportDicomDataRequest'
    { _eddrBigQueryDestination :: !(Maybe GoogleCloudHealthcareV1beta1DicomBigQueryDestination)
    , _eddrGcsDestination      :: !(Maybe GoogleCloudHealthcareV1beta1DicomGcsDestination)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportDicomDataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eddrBigQueryDestination'
--
-- * 'eddrGcsDestination'
exportDicomDataRequest
    :: ExportDicomDataRequest
exportDicomDataRequest =
  ExportDicomDataRequest'
    {_eddrBigQueryDestination = Nothing, _eddrGcsDestination = Nothing}


-- | The BigQuery output destination. For now, only exporting to a dataset in
-- the current project is supported The BigQuery location requires two IAM
-- roles: \`roles\/bigquery.dataEditor\` and \`roles\/bigquery.jobUser\`.
eddrBigQueryDestination :: Lens' ExportDicomDataRequest (Maybe GoogleCloudHealthcareV1beta1DicomBigQueryDestination)
eddrBigQueryDestination
  = lens _eddrBigQueryDestination
      (\ s a -> s{_eddrBigQueryDestination = a})

-- | The Cloud Storage output destination. The Cloud Storage location
-- requires the \`roles\/storage.objectAdmin\` Cloud IAM role.
eddrGcsDestination :: Lens' ExportDicomDataRequest (Maybe GoogleCloudHealthcareV1beta1DicomGcsDestination)
eddrGcsDestination
  = lens _eddrGcsDestination
      (\ s a -> s{_eddrGcsDestination = a})

instance FromJSON ExportDicomDataRequest where
        parseJSON
          = withObject "ExportDicomDataRequest"
              (\ o ->
                 ExportDicomDataRequest' <$>
                   (o .:? "bigqueryDestination") <*>
                     (o .:? "gcsDestination"))

instance ToJSON ExportDicomDataRequest where
        toJSON ExportDicomDataRequest'{..}
          = object
              (catMaybes
                 [("bigqueryDestination" .=) <$>
                    _eddrBigQueryDestination,
                  ("gcsDestination" .=) <$> _eddrGcsDestination])

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
