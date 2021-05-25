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

import Network.Google.Healthcare.Types.Sum
import Network.Google.Prelude

-- | An attribute value for a Consent or User data mapping. Each Attribute
-- must have a corresponding AttributeDefinition in the consent store that
-- defines the default and allowed values.
--
-- /See:/ 'attribute' smart constructor.
data Attribute =
  Attribute'
    { _aValues :: !(Maybe [Text])
    , _aAttributeDefinitionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Attribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aValues'
--
-- * 'aAttributeDefinitionId'
attribute
    :: Attribute
attribute = Attribute' {_aValues = Nothing, _aAttributeDefinitionId = Nothing}


-- | Required. The value of the attribute. Must be an acceptable value as
-- defined in the consent store. For example, if the consent store defines
-- \"data type\" with acceptable values \"questionnaire\" and
-- \"step-count\", when the attribute name is data type, this field must
-- contain one of those values.
aValues :: Lens' Attribute [Text]
aValues
  = lens _aValues (\ s a -> s{_aValues = a}) . _Default
      . _Coerce

-- | Indicates the name of an attribute defined in the consent store.
aAttributeDefinitionId :: Lens' Attribute (Maybe Text)
aAttributeDefinitionId
  = lens _aAttributeDefinitionId
      (\ s a -> s{_aAttributeDefinitionId = a})

instance FromJSON Attribute where
        parseJSON
          = withObject "Attribute"
              (\ o ->
                 Attribute' <$>
                   (o .:? "values" .!= mempty) <*>
                     (o .:? "attributeDefinitionId"))

instance ToJSON Attribute where
        toJSON Attribute'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _aValues,
                  ("attributeDefinitionId" .=) <$>
                    _aAttributeDefinitionId])

-- | User signature.
--
-- /See:/ 'signature' smart constructor.
data Signature =
  Signature'
    { _sImage :: !(Maybe Image)
    , _sSignatureTime :: !(Maybe DateTime')
    , _sUserId :: !(Maybe Text)
    , _sMetadata :: !(Maybe SignatureMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Signature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sImage'
--
-- * 'sSignatureTime'
--
-- * 'sUserId'
--
-- * 'sMetadata'
signature
    :: Signature
signature =
  Signature'
    { _sImage = Nothing
    , _sSignatureTime = Nothing
    , _sUserId = Nothing
    , _sMetadata = Nothing
    }


-- | Optional. An image of the user\'s signature.
sImage :: Lens' Signature (Maybe Image)
sImage = lens _sImage (\ s a -> s{_sImage = a})

-- | Optional. Timestamp of the signature.
sSignatureTime :: Lens' Signature (Maybe UTCTime)
sSignatureTime
  = lens _sSignatureTime
      (\ s a -> s{_sSignatureTime = a})
      . mapping _DateTime

-- | Required. User\'s UUID provided by the client.
sUserId :: Lens' Signature (Maybe Text)
sUserId = lens _sUserId (\ s a -> s{_sUserId = a})

-- | Optional. Metadata associated with the user\'s signature. For example,
-- the user\'s name or the user\'s title.
sMetadata :: Lens' Signature (Maybe SignatureMetadata)
sMetadata
  = lens _sMetadata (\ s a -> s{_sMetadata = a})

instance FromJSON Signature where
        parseJSON
          = withObject "Signature"
              (\ o ->
                 Signature' <$>
                   (o .:? "image") <*> (o .:? "signatureTime") <*>
                     (o .:? "userId")
                     <*> (o .:? "metadata"))

instance ToJSON Signature where
        toJSON Signature'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _sImage,
                  ("signatureTime" .=) <$> _sSignatureTime,
                  ("userId" .=) <$> _sUserId,
                  ("metadata" .=) <$> _sMetadata])

--
-- /See:/ 'listConsentsResponse' smart constructor.
data ListConsentsResponse =
  ListConsentsResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrConsents :: !(Maybe [Consent])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListConsentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextPageToken'
--
-- * 'lcrConsents'
listConsentsResponse
    :: ListConsentsResponse
listConsentsResponse =
  ListConsentsResponse' {_lcrNextPageToken = Nothing, _lcrConsents = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lcrNextPageToken :: Lens' ListConsentsResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | The returned Consents. The maximum number of Consents returned is
-- determined by the value of page_size in the ListConsentsRequest.
lcrConsents :: Lens' ListConsentsResponse [Consent]
lcrConsents
  = lens _lcrConsents (\ s a -> s{_lcrConsents = a}) .
      _Default
      . _Coerce

instance FromJSON ListConsentsResponse where
        parseJSON
          = withObject "ListConsentsResponse"
              (\ o ->
                 ListConsentsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "consents" .!= mempty))

instance ToJSON ListConsentsResponse where
        toJSON ListConsentsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("consents" .=) <$> _lcrConsents])

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
    { _errBigQueryDestination :: !(Maybe GoogleCloudHealthcareV1FhirBigQueryDestination)
    , _errGcsDestination :: !(Maybe GoogleCloudHealthcareV1FhirGcsDestination)
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


-- | The BigQuery output destination. The Cloud Healthcare Service Agent
-- requires two IAM roles on the BigQuery location:
-- \`roles\/bigquery.dataEditor\` and \`roles\/bigquery.jobUser\`. The
-- output is one BigQuery table per resource type. Unlike when setting
-- \`BigQueryDestination\` for \`StreamConfig\`, \`ExportResources\` does
-- not create BigQuery views.
errBigQueryDestination :: Lens' ExportResourcesRequest (Maybe GoogleCloudHealthcareV1FhirBigQueryDestination)
errBigQueryDestination
  = lens _errBigQueryDestination
      (\ s a -> s{_errBigQueryDestination = a})

-- | The Cloud Storage output destination. The Healthcare Service Agent
-- account requires the \`roles\/storage.objectAdmin\` role on the Cloud
-- Storage location. The exported outputs are organized by FHIR resource
-- types. The server creates one object per resource type. Each object
-- contains newline delimited JSON, and each line is a FHIR resource.
errGcsDestination :: Lens' ExportResourcesRequest (Maybe GoogleCloudHealthcareV1FhirGcsDestination)
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
    { _ittRedactConfig :: !(Maybe RedactConfig)
    , _ittCharacterMaskConfig :: !(Maybe CharacterMaskConfig)
    , _ittInfoTypes :: !(Maybe [Text])
    , _ittDateShiftConfig :: !(Maybe DateShiftConfig)
    , _ittReplaceWithInfoTypeConfig :: !(Maybe ReplaceWithInfoTypeConfig)
    , _ittCryptoHashConfig :: !(Maybe CryptoHashConfig)
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

--
-- /See:/ 'listUserDataMAppingsResponse' smart constructor.
data ListUserDataMAppingsResponse =
  ListUserDataMAppingsResponse'
    { _ludmarNextPageToken :: !(Maybe Text)
    , _ludmarUserDataMAppings :: !(Maybe [UserDataMApping])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListUserDataMAppingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ludmarNextPageToken'
--
-- * 'ludmarUserDataMAppings'
listUserDataMAppingsResponse
    :: ListUserDataMAppingsResponse
listUserDataMAppingsResponse =
  ListUserDataMAppingsResponse'
    {_ludmarNextPageToken = Nothing, _ludmarUserDataMAppings = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
ludmarNextPageToken :: Lens' ListUserDataMAppingsResponse (Maybe Text)
ludmarNextPageToken
  = lens _ludmarNextPageToken
      (\ s a -> s{_ludmarNextPageToken = a})

-- | The returned User data mappings. The maximum number of User data
-- mappings returned is determined by the value of page_size in the
-- ListUserDataMappingsRequest.
ludmarUserDataMAppings :: Lens' ListUserDataMAppingsResponse [UserDataMApping]
ludmarUserDataMAppings
  = lens _ludmarUserDataMAppings
      (\ s a -> s{_ludmarUserDataMAppings = a})
      . _Default
      . _Coerce

instance FromJSON ListUserDataMAppingsResponse where
        parseJSON
          = withObject "ListUserDataMAppingsResponse"
              (\ o ->
                 ListUserDataMAppingsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "userDataMappings" .!= mempty))

instance ToJSON ListUserDataMAppingsResponse where
        toJSON ListUserDataMAppingsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ludmarNextPageToken,
                  ("userDataMappings" .=) <$> _ludmarUserDataMAppings])

--
-- /See:/ 'listConsentRevisionsResponse' smart constructor.
data ListConsentRevisionsResponse =
  ListConsentRevisionsResponse'
    { _lcrrNextPageToken :: !(Maybe Text)
    , _lcrrConsents :: !(Maybe [Consent])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListConsentRevisionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrNextPageToken'
--
-- * 'lcrrConsents'
listConsentRevisionsResponse
    :: ListConsentRevisionsResponse
listConsentRevisionsResponse =
  ListConsentRevisionsResponse'
    {_lcrrNextPageToken = Nothing, _lcrrConsents = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lcrrNextPageToken :: Lens' ListConsentRevisionsResponse (Maybe Text)
lcrrNextPageToken
  = lens _lcrrNextPageToken
      (\ s a -> s{_lcrrNextPageToken = a})

-- | The returned Consent revisions. The maximum number of revisions returned
-- is determined by the value of \`page_size\` in the
-- ListConsentRevisionsRequest.
lcrrConsents :: Lens' ListConsentRevisionsResponse [Consent]
lcrrConsents
  = lens _lcrrConsents (\ s a -> s{_lcrrConsents = a})
      . _Default
      . _Coerce

instance FromJSON ListConsentRevisionsResponse where
        parseJSON
          = withObject "ListConsentRevisionsResponse"
              (\ o ->
                 ListConsentRevisionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "consents" .!= mempty))

instance ToJSON ListConsentRevisionsResponse where
        toJSON ListConsentRevisionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrrNextPageToken,
                  ("consents" .=) <$> _lcrrConsents])

-- | Define how to redact sensitive values. Default behaviour is erase. For
-- example, \"My name is Jane.\" becomes \"My name is .\"
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

-- | Raw bytes representing consent artifact content.
--
-- /See:/ 'image' smart constructor.
data Image =
  Image'
    { _iRawBytes :: !(Maybe Bytes)
    , _iGcsURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iRawBytes'
--
-- * 'iGcsURI'
image
    :: Image
image = Image' {_iRawBytes = Nothing, _iGcsURI = Nothing}


-- | Consent artifact content represented as a stream of bytes. This field is
-- populated when returned in GetConsentArtifact response, but not included
-- in CreateConsentArtifact and ListConsentArtifact response.
iRawBytes :: Lens' Image (Maybe ByteString)
iRawBytes
  = lens _iRawBytes (\ s a -> s{_iRawBytes = a}) .
      mapping _Bytes

-- | Input only. Points to a Cloud Storage URI containing the consent
-- artifact content. The URI must be in the following format:
-- \`gs:\/\/{bucket_id}\/{object_id}\`. The Cloud Healthcare API service
-- account must have the \`roles\/storage.objectViewer\` Cloud IAM role for
-- this Cloud Storage location. The consent artifact content at this URI is
-- copied to a Cloud Storage location managed by the Cloud Healthcare API.
-- Responses to fetching requests return the consent artifact content in
-- raw_bytes.
iGcsURI :: Lens' Image (Maybe Text)
iGcsURI = lens _iGcsURI (\ s a -> s{_iGcsURI = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image' <$> (o .:? "rawBytes") <*> (o .:? "gcsUri"))

instance ToJSON Image where
        toJSON Image'{..}
          = object
              (catMaybes
                 [("rawBytes" .=) <$> _iRawBytes,
                  ("gcsUri" .=) <$> _iGcsURI])

-- | Specifies where to send notifications upon changes to a data store.
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


-- | The [Pub\/Sub](https:\/\/cloud.google.com\/pubsub\/docs\/) topic that
-- notifications of changes are published on. Supplied by the client.
-- PubsubMessage.Data contains the resource name. PubsubMessage.MessageId
-- is the ID of this message. It is guaranteed to be unique within the
-- topic. PubsubMessage.PublishTime is the time at which the message was
-- published. Notifications are only sent if the topic is non-empty. [Topic
-- names](https:\/\/cloud.google.com\/pubsub\/docs\/overview#names) must be
-- scoped to a project. Cloud Healthcare API service account must have
-- publisher permissions on the given Pub\/Sub topic. Not having adequate
-- permissions causes the calls that send notifications to fail. If a
-- notification can\'t be published to Pub\/Sub, errors are logged to Cloud
-- Logging (see [Viewing error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging)).
-- If the number of errors exceeds a certain rate, some aren\'t submitted.
-- Note that not all operations trigger notifications, see [Configuring
-- Pub\/Sub
-- notifications](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/pubsub)
-- for specific details.
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

-- | Final response of importing resources. This structure is included in the
-- response to describe the detailed outcome after the operation finishes
-- successfully.
--
-- /See:/ 'importResourcesResponse' smart constructor.
data ImportResourcesResponse =
  ImportResourcesResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportResourcesResponse' with the minimum fields required to make a request.
--
importResourcesResponse
    :: ImportResourcesResponse
importResourcesResponse = ImportResourcesResponse'


instance FromJSON ImportResourcesResponse where
        parseJSON
          = withObject "ImportResourcesResponse"
              (\ o -> pure ImportResourcesResponse')

instance ToJSON ImportResourcesResponse where
        toJSON = const emptyObject

-- | Specifies how to handle de-identification of a FHIR store.
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
-- is not matched by a FieldMetadata is passed through to the output
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

-- | Describes a selector for extracting and matching an MSH field to a
-- value.
--
-- /See:/ 'versionSource' smart constructor.
data VersionSource =
  VersionSource'
    { _vsValue :: !(Maybe Text)
    , _vsMshField :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VersionSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsValue'
--
-- * 'vsMshField'
versionSource
    :: VersionSource
versionSource = VersionSource' {_vsValue = Nothing, _vsMshField = Nothing}


-- | The value to match with the field. For example, \"My Application Name\"
-- or \"2.3\".
vsValue :: Lens' VersionSource (Maybe Text)
vsValue = lens _vsValue (\ s a -> s{_vsValue = a})

-- | The field to extract from the MSH segment. For example, \"3.1\" or
-- \"18[1].1\".
vsMshField :: Lens' VersionSource (Maybe Text)
vsMshField
  = lens _vsMshField (\ s a -> s{_vsMshField = a})

instance FromJSON VersionSource where
        parseJSON
          = withObject "VersionSource"
              (\ o ->
                 VersionSource' <$>
                   (o .:? "value") <*> (o .:? "mshField"))

instance ToJSON VersionSource where
        toJSON VersionSource'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _vsValue,
                  ("mshField" .=) <$> _vsMshField])

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

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations :: !(Maybe [Operation])
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

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'cancelOperationRequest' smart constructor.
data CancelOperationRequest =
  CancelOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
--
cancelOperationRequest
    :: CancelOperationRequest
cancelOperationRequest = CancelOperationRequest'


instance FromJSON CancelOperationRequest where
        parseJSON
          = withObject "CancelOperationRequest"
              (\ o -> pure CancelOperationRequest')

instance ToJSON CancelOperationRequest where
        toJSON = const emptyObject

-- | Root config for HL7v2 datatype definitions for a specific HL7v2 version.
--
-- /See:/ 'hl7TypesConfig' smart constructor.
data Hl7TypesConfig =
  Hl7TypesConfig'
    { _htcVersion :: !(Maybe [VersionSource])
    , _htcType :: !(Maybe [Type])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Hl7TypesConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'htcVersion'
--
-- * 'htcType'
hl7TypesConfig
    :: Hl7TypesConfig
hl7TypesConfig = Hl7TypesConfig' {_htcVersion = Nothing, _htcType = Nothing}


-- | The version selectors that this config applies to. A message must match
-- ALL version sources to apply.
htcVersion :: Lens' Hl7TypesConfig [VersionSource]
htcVersion
  = lens _htcVersion (\ s a -> s{_htcVersion = a}) .
      _Default
      . _Coerce

-- | The HL7v2 type definitions.
htcType :: Lens' Hl7TypesConfig [Type]
htcType
  = lens _htcType (\ s a -> s{_htcType = a}) . _Default
      . _Coerce

instance FromJSON Hl7TypesConfig where
        parseJSON
          = withObject "Hl7TypesConfig"
              (\ o ->
                 Hl7TypesConfig' <$>
                   (o .:? "version" .!= mempty) <*>
                     (o .:? "type" .!= mempty))

instance ToJSON Hl7TypesConfig where
        toJSON Hl7TypesConfig'{..}
          = object
              (catMaybes
                 [("version" .=) <$> _htcVersion,
                  ("type" .=) <$> _htcType])

-- | Represents a FHIR store.
--
-- /See:/ 'fhirStore' smart constructor.
data FhirStore =
  FhirStore'
    { _fsEnableUpdateCreate :: !(Maybe Bool)
    , _fsNotificationConfig :: !(Maybe NotificationConfig)
    , _fsDisableReferentialIntegrity :: !(Maybe Bool)
    , _fsDisableResourceVersioning :: !(Maybe Bool)
    , _fsName :: !(Maybe Text)
    , _fsVersion :: !(Maybe FhirStoreVersion)
    , _fsStreamConfigs :: !(Maybe [StreamConfig])
    , _fsLabels :: !(Maybe FhirStoreLabels)
    , _fsDefaultSearchHandlingStrict :: !(Maybe Bool)
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
-- * 'fsVersion'
--
-- * 'fsStreamConfigs'
--
-- * 'fsLabels'
--
-- * 'fsDefaultSearchHandlingStrict'
fhirStore
    :: FhirStore
fhirStore =
  FhirStore'
    { _fsEnableUpdateCreate = Nothing
    , _fsNotificationConfig = Nothing
    , _fsDisableReferentialIntegrity = Nothing
    , _fsDisableResourceVersioning = Nothing
    , _fsName = Nothing
    , _fsVersion = Nothing
    , _fsStreamConfigs = Nothing
    , _fsLabels = Nothing
    , _fsDefaultSearchHandlingStrict = Nothing
    }


-- | Whether this FHIR store has the [updateCreate
-- capability](https:\/\/www.hl7.org\/fhir\/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate).
-- This determines if the client can use an Update operation to create a
-- new resource with a client-specified ID. If false, all IDs are
-- server-assigned through the Create operation and attempts to update a
-- non-existent resource return errors. It is strongly advised not to
-- include or encode any sensitive data such as patient identifiers in
-- client-specified resource IDs. Those IDs are part of the FHIR resource
-- path recorded in Cloud audit logs and Pub\/Sub notifications. Those IDs
-- can also be contained in reference fields within other resources.
fsEnableUpdateCreate :: Lens' FhirStore (Maybe Bool)
fsEnableUpdateCreate
  = lens _fsEnableUpdateCreate
      (\ s a -> s{_fsEnableUpdateCreate = a})

-- | If non-empty, publish all resource modifications of this FHIR store to
-- this destination. The Pub\/Sub message attributes contain a map with a
-- string describing the action that has triggered the notification. For
-- example, \"action\":\"CreateResource\".
fsNotificationConfig :: Lens' FhirStore (Maybe NotificationConfig)
fsNotificationConfig
  = lens _fsNotificationConfig
      (\ s a -> s{_fsNotificationConfig = a})

-- | Immutable. Whether to disable referential integrity in this FHIR store.
-- This field is immutable after FHIR store creation. The default value is
-- false, meaning that the API enforces referential integrity and fails the
-- requests that result in inconsistent state in the FHIR store. When this
-- field is set to true, the API skips referential integrity checks.
-- Consequently, operations that rely on references, such as
-- GetPatientEverything, do not return all the results if broken references
-- exist.
fsDisableReferentialIntegrity :: Lens' FhirStore (Maybe Bool)
fsDisableReferentialIntegrity
  = lens _fsDisableReferentialIntegrity
      (\ s a -> s{_fsDisableReferentialIntegrity = a})

-- | Immutable. Whether to disable resource versioning for this FHIR store.
-- This field can not be changed after the creation of FHIR store. If set
-- to false, which is the default behavior, all write operations cause
-- historical versions to be recorded automatically. The historical
-- versions can be fetched through the history APIs, but cannot be updated.
-- If set to true, no historical versions are kept. The server sends errors
-- for attempts to read the historical versions.
fsDisableResourceVersioning :: Lens' FhirStore (Maybe Bool)
fsDisableResourceVersioning
  = lens _fsDisableResourceVersioning
      (\ s a -> s{_fsDisableResourceVersioning = a})

-- | Output only. Resource name of the FHIR store, of the form
-- \`projects\/{project_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
fsName :: Lens' FhirStore (Maybe Text)
fsName = lens _fsName (\ s a -> s{_fsName = a})

-- | Immutable. The FHIR specification version that this FHIR store supports
-- natively. This field is immutable after store creation. Requests are
-- rejected if they contain FHIR resources of a different version. Version
-- is required for every FHIR store.
fsVersion :: Lens' FhirStore (Maybe FhirStoreVersion)
fsVersion
  = lens _fsVersion (\ s a -> s{_fsVersion = a})

-- | A list of streaming configs that configure the destinations of streaming
-- export for every resource mutation in this FHIR store. Each store is
-- allowed to have up to 10 streaming configs. After a new config is added,
-- the next resource mutation is streamed to the new location in addition
-- to the existing ones. When a location is removed from the list, the
-- server stops streaming to that location. Before adding a new config, you
-- must add the required
-- [\`bigquery.dataEditor\`](https:\/\/cloud.google.com\/bigquery\/docs\/access-control#bigquery.dataEditor)
-- role to your project\'s **Cloud Healthcare Service Agent** [service
-- account](https:\/\/cloud.google.com\/iam\/docs\/service-accounts). Some
-- lag (typically on the order of dozens of seconds) is expected before the
-- results show up in the streaming destination.
fsStreamConfigs :: Lens' FhirStore [StreamConfig]
fsStreamConfigs
  = lens _fsStreamConfigs
      (\ s a -> s{_fsStreamConfigs = a})
      . _Default
      . _Coerce

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

-- | If true, overrides the default search behavior for this FHIR store to
-- \`handling=strict\` which returns an error for unrecognized search
-- parameters. If false, uses the FHIR specification default
-- \`handling=lenient\` which ignores unrecognized search parameters. The
-- handling can always be changed from the default on an individual API
-- call by setting the HTTP header \`Prefer: handling=strict\` or \`Prefer:
-- handling=lenient\`.
fsDefaultSearchHandlingStrict :: Lens' FhirStore (Maybe Bool)
fsDefaultSearchHandlingStrict
  = lens _fsDefaultSearchHandlingStrict
      (\ s a -> s{_fsDefaultSearchHandlingStrict = a})

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
                     <*> (o .:? "version")
                     <*> (o .:? "streamConfigs" .!= mempty)
                     <*> (o .:? "labels")
                     <*> (o .:? "defaultSearchHandlingStrict"))

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
                  ("name" .=) <$> _fsName,
                  ("version" .=) <$> _fsVersion,
                  ("streamConfigs" .=) <$> _fsStreamConfigs,
                  ("labels" .=) <$> _fsLabels,
                  ("defaultSearchHandlingStrict" .=) <$>
                    _fsDefaultSearchHandlingStrict])

-- | A mapping from the positional location to the value. The key string uses
-- zero-based indexes separated by dots to identify Fields, components and
-- sub-components. A bracket notation is also used to identify different
-- instances of a repeated field. Regex for key:
-- (\\d+)(\\[\\d+\\])?(.\\d+)?(.\\d+)? Examples of (key, value) pairs: *
-- (0.1, \"hemoglobin\") denotes that the first component of Field 0 has
-- the value \"hemoglobin\". * (1.1.2, \"CBC\") denotes that the second
-- sub-component of the first component of Field 1 has the value \"CBC\". *
-- (1[0].1, \"HbA1c\") denotes that the first component of the first
-- Instance of Field 1, which is repeated, has the value \"HbA1c\".
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
    { _dsName :: !(Maybe Text)
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


-- | Resource name of the dataset, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\`.
dsName :: Lens' DataSet (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

-- | The default timezone used by this dataset. Must be a either a valid IANA
-- time zone name such as \"America\/New_York\" or empty, which defaults to
-- UTC. This is used for parsing times in resources, such as HL7 messages,
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

-- | Returns additional information in regards to a completed DICOM store
-- import.
--
-- /See:/ 'importDicomDataResponse' smart constructor.
data ImportDicomDataResponse =
  ImportDicomDataResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportDicomDataResponse' with the minimum fields required to make a request.
--
importDicomDataResponse
    :: ImportDicomDataResponse
importDicomDataResponse = ImportDicomDataResponse'


instance FromJSON ImportDicomDataResponse where
        parseJSON
          = withObject "ImportDicomDataResponse"
              (\ o -> pure ImportDicomDataResponse')

instance ToJSON ImportDicomDataResponse where
        toJSON = const emptyObject

-- | A (sub) field of a type.
--
-- /See:/ 'field' smart constructor.
data Field =
  Field'
    { _fMaxOccurs :: !(Maybe (Textual Int32))
    , _fName :: !(Maybe Text)
    , _fType :: !(Maybe Text)
    , _fTable :: !(Maybe Text)
    , _fMinOccurs :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Field' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fMaxOccurs'
--
-- * 'fName'
--
-- * 'fType'
--
-- * 'fTable'
--
-- * 'fMinOccurs'
field
    :: Field
field =
  Field'
    { _fMaxOccurs = Nothing
    , _fName = Nothing
    , _fType = Nothing
    , _fTable = Nothing
    , _fMinOccurs = Nothing
    }


-- | The maximum number of times this field can be repeated. 0 or -1 means
-- unbounded.
fMaxOccurs :: Lens' Field (Maybe Int32)
fMaxOccurs
  = lens _fMaxOccurs (\ s a -> s{_fMaxOccurs = a}) .
      mapping _Coerce

-- | The name of the field. For example, \"PID-1\" or just \"1\".
fName :: Lens' Field (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | The type of this field. A Type with this name must be defined in an
-- Hl7TypesConfig.
fType :: Lens' Field (Maybe Text)
fType = lens _fType (\ s a -> s{_fType = a})

-- | The HL7v2 table this field refers to. For example, PID-15 (Patient\'s
-- Primary Language) usually refers to table \"0296\".
fTable :: Lens' Field (Maybe Text)
fTable = lens _fTable (\ s a -> s{_fTable = a})

-- | The minimum number of times this field must be present\/repeated.
fMinOccurs :: Lens' Field (Maybe Int32)
fMinOccurs
  = lens _fMinOccurs (\ s a -> s{_fMinOccurs = a}) .
      mapping _Coerce

instance FromJSON Field where
        parseJSON
          = withObject "Field"
              (\ o ->
                 Field' <$>
                   (o .:? "maxOccurs") <*> (o .:? "name") <*>
                     (o .:? "type")
                     <*> (o .:? "table")
                     <*> (o .:? "minOccurs"))

instance ToJSON Field where
        toJSON Field'{..}
          = object
              (catMaybes
                 [("maxOccurs" .=) <$> _fMaxOccurs,
                  ("name" .=) <$> _fName, ("type" .=) <$> _fType,
                  ("table" .=) <$> _fTable,
                  ("minOccurs" .=) <$> _fMinOccurs])

-- | An HL7v2 Segment.
--
-- /See:/ 'schemaSegment' smart constructor.
data SchemaSegment =
  SchemaSegment'
    { _ssMaxOccurs :: !(Maybe (Textual Int32))
    , _ssType :: !(Maybe Text)
    , _ssMinOccurs :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SchemaSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssMaxOccurs'
--
-- * 'ssType'
--
-- * 'ssMinOccurs'
schemaSegment
    :: SchemaSegment
schemaSegment =
  SchemaSegment'
    {_ssMaxOccurs = Nothing, _ssType = Nothing, _ssMinOccurs = Nothing}


-- | The maximum number of times this segment can be present in this group. 0
-- or -1 means unbounded.
ssMaxOccurs :: Lens' SchemaSegment (Maybe Int32)
ssMaxOccurs
  = lens _ssMaxOccurs (\ s a -> s{_ssMaxOccurs = a}) .
      mapping _Coerce

-- | The Segment type. For example, \"PID\".
ssType :: Lens' SchemaSegment (Maybe Text)
ssType = lens _ssType (\ s a -> s{_ssType = a})

-- | The minimum number of times this segment can be present in this group.
ssMinOccurs :: Lens' SchemaSegment (Maybe Int32)
ssMinOccurs
  = lens _ssMinOccurs (\ s a -> s{_ssMinOccurs = a}) .
      mapping _Coerce

instance FromJSON SchemaSegment where
        parseJSON
          = withObject "SchemaSegment"
              (\ o ->
                 SchemaSegment' <$>
                   (o .:? "maxOccurs") <*> (o .:? "type") <*>
                     (o .:? "minOccurs"))

instance ToJSON SchemaSegment where
        toJSON SchemaSegment'{..}
          = object
              (catMaybes
                 [("maxOccurs" .=) <$> _ssMaxOccurs,
                  ("type" .=) <$> _ssType,
                  ("minOccurs" .=) <$> _ssMinOccurs])

-- | Maps a resource to the associated user and Attributes.
--
-- /See:/ 'userDataMApping' smart constructor.
data UserDataMApping =
  UserDataMApping'
    { _udmaResourceAttributes :: !(Maybe [Attribute])
    , _udmaUserId :: !(Maybe Text)
    , _udmaName :: !(Maybe Text)
    , _udmaArchiveTime :: !(Maybe DateTime')
    , _udmaDataId :: !(Maybe Text)
    , _udmaArchived :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserDataMApping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udmaResourceAttributes'
--
-- * 'udmaUserId'
--
-- * 'udmaName'
--
-- * 'udmaArchiveTime'
--
-- * 'udmaDataId'
--
-- * 'udmaArchived'
userDataMApping
    :: UserDataMApping
userDataMApping =
  UserDataMApping'
    { _udmaResourceAttributes = Nothing
    , _udmaUserId = Nothing
    , _udmaName = Nothing
    , _udmaArchiveTime = Nothing
    , _udmaDataId = Nothing
    , _udmaArchived = Nothing
    }


-- | Attributes of the resource. Only explicitly set attributes are displayed
-- here. Attribute definitions with defaults set implicitly apply to these
-- User data mappings. Attributes listed here must be single valued, that
-- is, exactly one value is specified for the field \"values\" in each
-- Attribute.
udmaResourceAttributes :: Lens' UserDataMApping [Attribute]
udmaResourceAttributes
  = lens _udmaResourceAttributes
      (\ s a -> s{_udmaResourceAttributes = a})
      . _Default
      . _Coerce

-- | Required. User\'s UUID provided by the client.
udmaUserId :: Lens' UserDataMApping (Maybe Text)
udmaUserId
  = lens _udmaUserId (\ s a -> s{_udmaUserId = a})

-- | Resource name of the User data mapping, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/userDataMappings\/{user_data_mapping_id}\`.
udmaName :: Lens' UserDataMApping (Maybe Text)
udmaName = lens _udmaName (\ s a -> s{_udmaName = a})

-- | Output only. Indicates the time when this mapping was archived.
udmaArchiveTime :: Lens' UserDataMApping (Maybe UTCTime)
udmaArchiveTime
  = lens _udmaArchiveTime
      (\ s a -> s{_udmaArchiveTime = a})
      . mapping _DateTime

-- | Required. A unique identifier for the mapped resource.
udmaDataId :: Lens' UserDataMApping (Maybe Text)
udmaDataId
  = lens _udmaDataId (\ s a -> s{_udmaDataId = a})

-- | Output only. Indicates whether this mapping is archived.
udmaArchived :: Lens' UserDataMApping (Maybe Bool)
udmaArchived
  = lens _udmaArchived (\ s a -> s{_udmaArchived = a})

instance FromJSON UserDataMApping where
        parseJSON
          = withObject "UserDataMApping"
              (\ o ->
                 UserDataMApping' <$>
                   (o .:? "resourceAttributes" .!= mempty) <*>
                     (o .:? "userId")
                     <*> (o .:? "name")
                     <*> (o .:? "archiveTime")
                     <*> (o .:? "dataId")
                     <*> (o .:? "archived"))

instance ToJSON UserDataMApping where
        toJSON UserDataMApping'{..}
          = object
              (catMaybes
                 [("resourceAttributes" .=) <$>
                    _udmaResourceAttributes,
                  ("userId" .=) <$> _udmaUserId,
                  ("name" .=) <$> _udmaName,
                  ("archiveTime" .=) <$> _udmaArchiveTime,
                  ("dataId" .=) <$> _udmaDataId,
                  ("archived" .=) <$> _udmaArchived])

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

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
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
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
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

-- | Specifies how to handle de-identification of image pixels.
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

-- | The resource names of all evaluated Consents mapped to their evaluation.
--
-- /See:/ 'resultConsentDetails' smart constructor.
newtype ResultConsentDetails =
  ResultConsentDetails'
    { _rcdAddtional :: HashMap Text ConsentEvaluation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultConsentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcdAddtional'
resultConsentDetails
    :: HashMap Text ConsentEvaluation -- ^ 'rcdAddtional'
    -> ResultConsentDetails
resultConsentDetails pRcdAddtional_ =
  ResultConsentDetails' {_rcdAddtional = _Coerce # pRcdAddtional_}


rcdAddtional :: Lens' ResultConsentDetails (HashMap Text ConsentEvaluation)
rcdAddtional
  = lens _rcdAddtional (\ s a -> s{_rcdAddtional = a})
      . _Coerce

instance FromJSON ResultConsentDetails where
        parseJSON
          = withObject "ResultConsentDetails"
              (\ o ->
                 ResultConsentDetails' <$> (parseJSONObject o))

instance ToJSON ResultConsentDetails where
        toJSON = toJSON . _rcdAddtional

-- | Queries all data_ids that are consented for a given use in the given
-- consent store and writes them to a specified destination. The returned
-- Operation includes a progress counter for the number of User data
-- mappings processed. Errors are logged to Cloud Logging (see [Viewing
-- error logs in Cloud Logging]
-- (https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging) and
-- [QueryAccessibleData] for a sample log entry).
--
-- /See:/ 'queryAccessibleDataRequest' smart constructor.
data QueryAccessibleDataRequest =
  QueryAccessibleDataRequest'
    { _qadrResourceAttributes :: !(Maybe QueryAccessibleDataRequestResourceAttributes)
    , _qadrGcsDestination :: !(Maybe GoogleCloudHealthcareV1ConsentGcsDestination)
    , _qadrRequestAttributes :: !(Maybe QueryAccessibleDataRequestRequestAttributes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryAccessibleDataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qadrResourceAttributes'
--
-- * 'qadrGcsDestination'
--
-- * 'qadrRequestAttributes'
queryAccessibleDataRequest
    :: QueryAccessibleDataRequest
queryAccessibleDataRequest =
  QueryAccessibleDataRequest'
    { _qadrResourceAttributes = Nothing
    , _qadrGcsDestination = Nothing
    , _qadrRequestAttributes = Nothing
    }


-- | Optional. The values of resource attributes associated with the type of
-- resources being requested. If no values are specified, then all resource
-- types are included in the output.
qadrResourceAttributes :: Lens' QueryAccessibleDataRequest (Maybe QueryAccessibleDataRequestResourceAttributes)
qadrResourceAttributes
  = lens _qadrResourceAttributes
      (\ s a -> s{_qadrResourceAttributes = a})

-- | The Cloud Storage destination. The Cloud Healthcare API service account
-- must have the \`roles\/storage.objectAdmin\` Cloud IAM role for this
-- Cloud Storage location.
qadrGcsDestination :: Lens' QueryAccessibleDataRequest (Maybe GoogleCloudHealthcareV1ConsentGcsDestination)
qadrGcsDestination
  = lens _qadrGcsDestination
      (\ s a -> s{_qadrGcsDestination = a})

-- | The values of request attributes associated with this access request.
qadrRequestAttributes :: Lens' QueryAccessibleDataRequest (Maybe QueryAccessibleDataRequestRequestAttributes)
qadrRequestAttributes
  = lens _qadrRequestAttributes
      (\ s a -> s{_qadrRequestAttributes = a})

instance FromJSON QueryAccessibleDataRequest where
        parseJSON
          = withObject "QueryAccessibleDataRequest"
              (\ o ->
                 QueryAccessibleDataRequest' <$>
                   (o .:? "resourceAttributes") <*>
                     (o .:? "gcsDestination")
                     <*> (o .:? "requestAttributes"))

instance ToJSON QueryAccessibleDataRequest where
        toJSON QueryAccessibleDataRequest'{..}
          = object
              (catMaybes
                 [("resourceAttributes" .=) <$>
                    _qadrResourceAttributes,
                  ("gcsDestination" .=) <$> _qadrGcsDestination,
                  ("requestAttributes" .=) <$> _qadrRequestAttributes])

-- | Rejects the latest revision of the specified Consent by committing a new
-- revision with \`state\` updated to \`REJECTED\`. If the latest revision
-- of the given Consent is in the \`REJECTED\` state, no new revision is
-- committed.
--
-- /See:/ 'rejectConsentRequest' smart constructor.
newtype RejectConsentRequest =
  RejectConsentRequest'
    { _rcrConsentArtifact :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RejectConsentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrConsentArtifact'
rejectConsentRequest
    :: RejectConsentRequest
rejectConsentRequest = RejectConsentRequest' {_rcrConsentArtifact = Nothing}


-- | Optional. The resource name of the Consent artifact that contains
-- documentation of the user\'s rejection of the draft Consent, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consentArtifacts\/{consent_artifact_id}\`.
-- If the draft Consent had a Consent artifact, this Consent artifact
-- overwrites it.
rcrConsentArtifact :: Lens' RejectConsentRequest (Maybe Text)
rcrConsentArtifact
  = lens _rcrConsentArtifact
      (\ s a -> s{_rcrConsentArtifact = a})

instance FromJSON RejectConsentRequest where
        parseJSON
          = withObject "RejectConsentRequest"
              (\ o ->
                 RejectConsentRequest' <$> (o .:? "consentArtifact"))

instance ToJSON RejectConsentRequest where
        toJSON RejectConsentRequest'{..}
          = object
              (catMaybes
                 [("consentArtifact" .=) <$> _rcrConsentArtifact])

-- | Imports data into the specified DICOM store. Returns an error if any of
-- the files to import are not DICOM files. This API accepts duplicate
-- DICOM instances by ignoring the newly-pushed instance. It does not
-- overwrite.
--
-- /See:/ 'importDicomDataRequest' smart constructor.
newtype ImportDicomDataRequest =
  ImportDicomDataRequest'
    { _iddrGcsSource :: Maybe GoogleCloudHealthcareV1DicomGcsSource
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
-- Healthcare Service Agent requires the \`roles\/storage.objectViewer\`
-- Cloud IAM roles on the Cloud Storage location.
iddrGcsSource :: Lens' ImportDicomDataRequest (Maybe GoogleCloudHealthcareV1DicomGcsSource)
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

-- | Optional. The values of resource attributes associated with the type of
-- resources being requested. If no values are specified, then all resource
-- types are included in the output.
--
-- /See:/ 'queryAccessibleDataRequestResourceAttributes' smart constructor.
newtype QueryAccessibleDataRequestResourceAttributes =
  QueryAccessibleDataRequestResourceAttributes'
    { _qadrraAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryAccessibleDataRequestResourceAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qadrraAddtional'
queryAccessibleDataRequestResourceAttributes
    :: HashMap Text Text -- ^ 'qadrraAddtional'
    -> QueryAccessibleDataRequestResourceAttributes
queryAccessibleDataRequestResourceAttributes pQadrraAddtional_ =
  QueryAccessibleDataRequestResourceAttributes'
    {_qadrraAddtional = _Coerce # pQadrraAddtional_}


qadrraAddtional :: Lens' QueryAccessibleDataRequestResourceAttributes (HashMap Text Text)
qadrraAddtional
  = lens _qadrraAddtional
      (\ s a -> s{_qadrraAddtional = a})
      . _Coerce

instance FromJSON
           QueryAccessibleDataRequestResourceAttributes
         where
        parseJSON
          = withObject
              "QueryAccessibleDataRequestResourceAttributes"
              (\ o ->
                 QueryAccessibleDataRequestResourceAttributes' <$>
                   (parseJSONObject o))

instance ToJSON
           QueryAccessibleDataRequestResourceAttributes
         where
        toJSON = toJSON . _qadrraAddtional

-- | The BigQuery table where the server writes the output.
--
-- /See:/ 'googleCloudHealthcareV1DicomBigQueryDestination' smart constructor.
data GoogleCloudHealthcareV1DicomBigQueryDestination =
  GoogleCloudHealthcareV1DicomBigQueryDestination'
    { _gchvdbqdForce :: !(Maybe Bool)
    , _gchvdbqdTableURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1DicomBigQueryDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvdbqdForce'
--
-- * 'gchvdbqdTableURI'
googleCloudHealthcareV1DicomBigQueryDestination
    :: GoogleCloudHealthcareV1DicomBigQueryDestination
googleCloudHealthcareV1DicomBigQueryDestination =
  GoogleCloudHealthcareV1DicomBigQueryDestination'
    {_gchvdbqdForce = Nothing, _gchvdbqdTableURI = Nothing}


-- | If the destination table already exists and this flag is \`TRUE\`, the
-- table is overwritten by the contents of the DICOM store. If the flag is
-- not set and the destination table already exists, the export call
-- returns an error.
gchvdbqdForce :: Lens' GoogleCloudHealthcareV1DicomBigQueryDestination (Maybe Bool)
gchvdbqdForce
  = lens _gchvdbqdForce
      (\ s a -> s{_gchvdbqdForce = a})

-- | BigQuery URI to a table, up to 2000 characters long, in the format
-- \`bq:\/\/projectId.bqDatasetId.tableId\`
gchvdbqdTableURI :: Lens' GoogleCloudHealthcareV1DicomBigQueryDestination (Maybe Text)
gchvdbqdTableURI
  = lens _gchvdbqdTableURI
      (\ s a -> s{_gchvdbqdTableURI = a})

instance FromJSON
           GoogleCloudHealthcareV1DicomBigQueryDestination
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1DicomBigQueryDestination"
              (\ o ->
                 GoogleCloudHealthcareV1DicomBigQueryDestination' <$>
                   (o .:? "force") <*> (o .:? "tableUri"))

instance ToJSON
           GoogleCloudHealthcareV1DicomBigQueryDestination
         where
        toJSON
          GoogleCloudHealthcareV1DicomBigQueryDestination'{..}
          = object
              (catMaybes
                 [("force" .=) <$> _gchvdbqdForce,
                  ("tableUri" .=) <$> _gchvdbqdTableURI])

-- | Represents an HL7v2 store.
--
-- /See:/ 'hl7V2Store' smart constructor.
data Hl7V2Store =
  Hl7V2Store'
    { _hvsNotificationConfigs :: !(Maybe [Hl7V2NotificationConfig])
    , _hvsRejectDuplicateMessage :: !(Maybe Bool)
    , _hvsName :: !(Maybe Text)
    , _hvsParserConfig :: !(Maybe ParserConfig)
    , _hvsLabels :: !(Maybe Hl7V2StoreLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Hl7V2Store' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hvsNotificationConfigs'
--
-- * 'hvsRejectDuplicateMessage'
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
    { _hvsNotificationConfigs = Nothing
    , _hvsRejectDuplicateMessage = Nothing
    , _hvsName = Nothing
    , _hvsParserConfig = Nothing
    , _hvsLabels = Nothing
    }


-- | A list of notification configs. Each configuration uses a filter to
-- determine whether to publish a message (both Ingest & Create) on the
-- corresponding notification destination. Only the message name is sent as
-- part of the notification. Supplied by the client.
hvsNotificationConfigs :: Lens' Hl7V2Store [Hl7V2NotificationConfig]
hvsNotificationConfigs
  = lens _hvsNotificationConfigs
      (\ s a -> s{_hvsNotificationConfigs = a})
      . _Default
      . _Coerce

-- | Determines whether to reject duplicate messages. A duplicate message is
-- a message with the same raw bytes as a message that has already been
-- ingested\/created in this HL7v2 store. The default value is false,
-- meaning that the store accepts the duplicate messages and it also
-- returns the same ACK message in the IngestMessageResponse as has been
-- returned previously. Note that only one resource is created in the
-- store. When this field is set to true, CreateMessage\/IngestMessage
-- requests with a duplicate message will be rejected by the store, and
-- IngestMessageErrorDetail returns a NACK message upon rejection.
hvsRejectDuplicateMessage :: Lens' Hl7V2Store (Maybe Bool)
hvsRejectDuplicateMessage
  = lens _hvsRejectDuplicateMessage
      (\ s a -> s{_hvsRejectDuplicateMessage = a})

-- | Resource name of the HL7v2 store, of the form
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
                   (o .:? "notificationConfigs" .!= mempty) <*>
                     (o .:? "rejectDuplicateMessage")
                     <*> (o .:? "name")
                     <*> (o .:? "parserConfig")
                     <*> (o .:? "labels"))

instance ToJSON Hl7V2Store where
        toJSON Hl7V2Store'{..}
          = object
              (catMaybes
                 [("notificationConfigs" .=) <$>
                    _hvsNotificationConfigs,
                  ("rejectDuplicateMessage" .=) <$>
                    _hvsRejectDuplicateMessage,
                  ("name" .=) <$> _hvsName,
                  ("parserConfig" .=) <$> _hvsParserConfig,
                  ("labels" .=) <$> _hvsLabels])

-- | Specifies the configuration for importing data from Cloud Storage.
--
-- /See:/ 'googleCloudHealthcareV1DicomGcsSource' smart constructor.
newtype GoogleCloudHealthcareV1DicomGcsSource =
  GoogleCloudHealthcareV1DicomGcsSource'
    { _gchvdgsURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1DicomGcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvdgsURI'
googleCloudHealthcareV1DicomGcsSource
    :: GoogleCloudHealthcareV1DicomGcsSource
googleCloudHealthcareV1DicomGcsSource =
  GoogleCloudHealthcareV1DicomGcsSource' {_gchvdgsURI = Nothing}


-- | Points to a Cloud Storage URI containing file(s) with content only. The
-- URI must be in the following format:
-- \`gs:\/\/{bucket_id}\/{object_id}\`. The URI can include wildcards in
-- \`object_id\` and thus identify multiple files. Supported wildcards: *
-- \'*\' to match 0 or more non-separator characters * \'**\' to match 0 or
-- more characters (including separators). Must be used at the end of a
-- path and with no other wildcards in the path. Can also be used with a
-- file extension (such as .dcm), which imports all files with the
-- extension in the specified directory and its sub-directories. For
-- example, \`gs:\/\/my-bucket\/my-directory\/**.dcm\` imports all files
-- with .dcm extensions in \`my-directory\/\` and its sub-directories. *
-- \'?\' to match 1 character. All other URI formats are invalid. Files
-- matching the wildcard are expected to contain content only, no metadata.
gchvdgsURI :: Lens' GoogleCloudHealthcareV1DicomGcsSource (Maybe Text)
gchvdgsURI
  = lens _gchvdgsURI (\ s a -> s{_gchvdgsURI = a})

instance FromJSON
           GoogleCloudHealthcareV1DicomGcsSource
         where
        parseJSON
          = withObject "GoogleCloudHealthcareV1DicomGcsSource"
              (\ o ->
                 GoogleCloudHealthcareV1DicomGcsSource' <$>
                   (o .:? "uri"))

instance ToJSON GoogleCloudHealthcareV1DicomGcsSource
         where
        toJSON GoogleCloudHealthcareV1DicomGcsSource'{..}
          = object (catMaybes [("uri" .=) <$> _gchvdgsURI])

-- | Specifies where and whether to send notifications upon changes to a data
-- store.
--
-- /See:/ 'hl7V2NotificationConfig' smart constructor.
data Hl7V2NotificationConfig =
  Hl7V2NotificationConfig'
    { _hvncPubsubTopic :: !(Maybe Text)
    , _hvncFilter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Hl7V2NotificationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hvncPubsubTopic'
--
-- * 'hvncFilter'
hl7V2NotificationConfig
    :: Hl7V2NotificationConfig
hl7V2NotificationConfig =
  Hl7V2NotificationConfig' {_hvncPubsubTopic = Nothing, _hvncFilter = Nothing}


-- | The [Pub\/Sub](https:\/\/cloud.google.com\/pubsub\/docs\/) topic that
-- notifications of changes are published on. Supplied by the client. The
-- notification is a \`PubsubMessage\` with the following fields: *
-- \`PubsubMessage.Data\` contains the resource name. *
-- \`PubsubMessage.MessageId\` is the ID of this notification. It\'s
-- guaranteed to be unique within the topic. *
-- \`PubsubMessage.PublishTime\` is the time when the message was
-- published. Note that notifications are only sent if the topic is
-- non-empty. [Topic
-- names](https:\/\/cloud.google.com\/pubsub\/docs\/overview#names) must be
-- scoped to a project. The Cloud Healthcare API service account,
-- service-PROJECT_NUMBER\'gcp-sa-healthcare.iam.gserviceaccount.com, must
-- have publisher permissions on the given Pub\/Sub topic. Not having
-- adequate permissions causes the calls that send notifications to fail.
-- If a notification cannot be published to Pub\/Sub, errors are logged to
-- Cloud Logging. For more information, see [Viewing error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging)).
hvncPubsubTopic :: Lens' Hl7V2NotificationConfig (Maybe Text)
hvncPubsubTopic
  = lens _hvncPubsubTopic
      (\ s a -> s{_hvncPubsubTopic = a})

-- | Restricts notifications sent for messages matching a filter. If this is
-- empty, all messages are matched. The following syntax is available: * A
-- string field value can be written as text inside quotation marks, for
-- example \`\"query text\"\`. The only valid relational operation for text
-- fields is equality (\`=\`), where text is searched within the field,
-- rather than having the field be equal to the text. For example,
-- \`\"Comment = great\"\` returns messages with \`great\` in the comment
-- field. * A number field value can be written as an integer, a decimal,
-- or an exponential. The valid relational operators for number fields are
-- the equality operator (\`=\`), along with the less than\/greater than
-- operators (\`\<\`, \`\<=\`, \`>\`, \`>=\`). Note that there is no
-- inequality (\`!=\`) operator. You can prepend the \`NOT\` operator to an
-- expression to negate it. * A date field value must be written in
-- \`yyyy-mm-dd\` form. Fields with date and time use the RFC3339 time
-- format. Leading zeros are required for one-digit months and days. The
-- valid relational operators for date fields are the equality operator
-- (\`=\`) , along with the less than\/greater than operators (\`\<\`,
-- \`\<=\`, \`>\`, \`>=\`). Note that there is no inequality (\`!=\`)
-- operator. You can prepend the \`NOT\` operator to an expression to
-- negate it. * Multiple field query expressions can be combined in one
-- query by adding \`AND\` or \`OR\` operators between the expressions. If
-- a boolean operator appears within a quoted string, it is not treated as
-- special, it\'s just another part of the character string to be matched.
-- You can prepend the \`NOT\` operator to an expression to negate it. The
-- following fields and functions are available for filtering: *
-- \`message_type\`, from the MSH-9.1 field. For example, \`NOT
-- message_type = \"ADT\"\`. * \`send_date\` or \`sendDate\`, the
-- YYYY-MM-DD date the message was sent in the dataset\'s time_zone, from
-- the MSH-7 segment. For example, \`send_date \< \"2017-01-02\"\`. *
-- \`send_time\`, the timestamp when the message was sent, using the
-- RFC3339 time format for comparisons, from the MSH-7 segment. For
-- example, \`send_time \< \"2017-01-02T00:00:00-05:00\"\`. *
-- \`create_time\`, the timestamp when the message was created in the HL7v2
-- store. Use the RFC3339 time format for comparisons. For example,
-- \`create_time \< \"2017-01-02T00:00:00-05:00\"\`. * \`send_facility\`,
-- the care center that the message came from, from the MSH-4 segment. For
-- example, \`send_facility = \"ABC\"\`. * \`PatientId(value, type)\`,
-- which matches if the message lists a patient having an ID of the given
-- value and type in the PID-2, PID-3, or PID-4 segments. For example,
-- \`PatientId(\"123456\", \"MRN\")\`. * \`labels.x\`, a string value of
-- the label with key \`x\` as set using the Message.labels map. For
-- example, \`labels.\"priority\"=\"high\"\`. The operator \`:*\` can be
-- used to assert the existence of a label. For example,
-- \`labels.\"priority\":*\`.
hvncFilter :: Lens' Hl7V2NotificationConfig (Maybe Text)
hvncFilter
  = lens _hvncFilter (\ s a -> s{_hvncFilter = a})

instance FromJSON Hl7V2NotificationConfig where
        parseJSON
          = withObject "Hl7V2NotificationConfig"
              (\ o ->
                 Hl7V2NotificationConfig' <$>
                   (o .:? "pubsubTopic") <*> (o .:? "filter"))

instance ToJSON Hl7V2NotificationConfig where
        toJSON Hl7V2NotificationConfig'{..}
          = object
              (catMaybes
                 [("pubsubTopic" .=) <$> _hvncPubsubTopic,
                  ("filter" .=) <$> _hvncFilter])

-- | Documentation of a user\'s consent.
--
-- /See:/ 'consentArtifact' smart constructor.
data ConsentArtifact =
  ConsentArtifact'
    { _caUserId :: !(Maybe Text)
    , _caGuardianSignature :: !(Maybe Signature)
    , _caName :: !(Maybe Text)
    , _caMetadata :: !(Maybe ConsentArtifactMetadata)
    , _caUserSignature :: !(Maybe Signature)
    , _caConsentContentVersion :: !(Maybe Text)
    , _caWitnessSignature :: !(Maybe Signature)
    , _caConsentContentScreenshots :: !(Maybe [Image])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsentArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caUserId'
--
-- * 'caGuardianSignature'
--
-- * 'caName'
--
-- * 'caMetadata'
--
-- * 'caUserSignature'
--
-- * 'caConsentContentVersion'
--
-- * 'caWitnessSignature'
--
-- * 'caConsentContentScreenshots'
consentArtifact
    :: ConsentArtifact
consentArtifact =
  ConsentArtifact'
    { _caUserId = Nothing
    , _caGuardianSignature = Nothing
    , _caName = Nothing
    , _caMetadata = Nothing
    , _caUserSignature = Nothing
    , _caConsentContentVersion = Nothing
    , _caWitnessSignature = Nothing
    , _caConsentContentScreenshots = Nothing
    }


-- | Required. User\'s UUID provided by the client.
caUserId :: Lens' ConsentArtifact (Maybe Text)
caUserId = lens _caUserId (\ s a -> s{_caUserId = a})

-- | Optional. A signature from a guardian.
caGuardianSignature :: Lens' ConsentArtifact (Maybe Signature)
caGuardianSignature
  = lens _caGuardianSignature
      (\ s a -> s{_caGuardianSignature = a})

-- | Resource name of the Consent artifact, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consentArtifacts\/{consent_artifact_id}\`.
-- Cannot be changed after creation.
caName :: Lens' ConsentArtifact (Maybe Text)
caName = lens _caName (\ s a -> s{_caName = a})

-- | Optional. Metadata associated with the Consent artifact. For example,
-- the consent locale or user agent version.
caMetadata :: Lens' ConsentArtifact (Maybe ConsentArtifactMetadata)
caMetadata
  = lens _caMetadata (\ s a -> s{_caMetadata = a})

-- | Optional. User\'s signature.
caUserSignature :: Lens' ConsentArtifact (Maybe Signature)
caUserSignature
  = lens _caUserSignature
      (\ s a -> s{_caUserSignature = a})

-- | Optional. An string indicating the version of the consent information
-- shown to the user.
caConsentContentVersion :: Lens' ConsentArtifact (Maybe Text)
caConsentContentVersion
  = lens _caConsentContentVersion
      (\ s a -> s{_caConsentContentVersion = a})

-- | Optional. A signature from a witness.
caWitnessSignature :: Lens' ConsentArtifact (Maybe Signature)
caWitnessSignature
  = lens _caWitnessSignature
      (\ s a -> s{_caWitnessSignature = a})

-- | Optional. Screenshots, PDFs, or other binary information documenting the
-- user\'s consent.
caConsentContentScreenshots :: Lens' ConsentArtifact [Image]
caConsentContentScreenshots
  = lens _caConsentContentScreenshots
      (\ s a -> s{_caConsentContentScreenshots = a})
      . _Default
      . _Coerce

instance FromJSON ConsentArtifact where
        parseJSON
          = withObject "ConsentArtifact"
              (\ o ->
                 ConsentArtifact' <$>
                   (o .:? "userId") <*> (o .:? "guardianSignature") <*>
                     (o .:? "name")
                     <*> (o .:? "metadata")
                     <*> (o .:? "userSignature")
                     <*> (o .:? "consentContentVersion")
                     <*> (o .:? "witnessSignature")
                     <*> (o .:? "consentContentScreenshots" .!= mempty))

instance ToJSON ConsentArtifact where
        toJSON ConsentArtifact'{..}
          = object
              (catMaybes
                 [("userId" .=) <$> _caUserId,
                  ("guardianSignature" .=) <$> _caGuardianSignature,
                  ("name" .=) <$> _caName,
                  ("metadata" .=) <$> _caMetadata,
                  ("userSignature" .=) <$> _caUserSignature,
                  ("consentContentVersion" .=) <$>
                    _caConsentContentVersion,
                  ("witnessSignature" .=) <$> _caWitnessSignature,
                  ("consentContentScreenshots" .=) <$>
                    _caConsentContentScreenshots])

-- | Contains a summary of the DeidentifyFhirStore operation.
--
-- /See:/ 'googleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary' smart constructor.
data GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary =
  GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary' with the minimum fields required to make a request.
--
googleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
    :: GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
googleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary =
  GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary'


instance FromJSON
           GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary"
              (\ o ->
                 pure
                   GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary')

instance ToJSON
           GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
         where
        toJSON = const emptyObject

-- | The configuration for exporting to Cloud Storage.
--
-- /See:/ 'googleCloudHealthcareV1FhirGcsDestination' smart constructor.
newtype GoogleCloudHealthcareV1FhirGcsDestination =
  GoogleCloudHealthcareV1FhirGcsDestination'
    { _gchvfgdURIPrefix :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1FhirGcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfgdURIPrefix'
googleCloudHealthcareV1FhirGcsDestination
    :: GoogleCloudHealthcareV1FhirGcsDestination
googleCloudHealthcareV1FhirGcsDestination =
  GoogleCloudHealthcareV1FhirGcsDestination' {_gchvfgdURIPrefix = Nothing}


-- | URI for a Cloud Storage directory where result files should be written,
-- in the format of \`gs:\/\/{bucket-id}\/{path\/to\/destination\/dir}\`.
-- If there is no trailing slash, the service appends one when composing
-- the object path. The user is responsible for creating the Cloud Storage
-- bucket referenced in \`uri_prefix\`.
gchvfgdURIPrefix :: Lens' GoogleCloudHealthcareV1FhirGcsDestination (Maybe Text)
gchvfgdURIPrefix
  = lens _gchvfgdURIPrefix
      (\ s a -> s{_gchvfgdURIPrefix = a})

instance FromJSON
           GoogleCloudHealthcareV1FhirGcsDestination
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1FhirGcsDestination"
              (\ o ->
                 GoogleCloudHealthcareV1FhirGcsDestination' <$>
                   (o .:? "uriPrefix"))

instance ToJSON
           GoogleCloudHealthcareV1FhirGcsDestination
         where
        toJSON GoogleCloudHealthcareV1FhirGcsDestination'{..}
          = object
              (catMaybes [("uriPrefix" .=) <$> _gchvfgdURIPrefix])

-- | Represents a user\'s consent in terms of the resources that can be
-- accessed and under what conditions.
--
-- /See:/ 'googleCloudHealthcareV1ConsentPolicy' smart constructor.
data GoogleCloudHealthcareV1ConsentPolicy =
  GoogleCloudHealthcareV1ConsentPolicy'
    { _gchvcpResourceAttributes :: !(Maybe [Attribute])
    , _gchvcpAuthorizationRule :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1ConsentPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvcpResourceAttributes'
--
-- * 'gchvcpAuthorizationRule'
googleCloudHealthcareV1ConsentPolicy
    :: GoogleCloudHealthcareV1ConsentPolicy
googleCloudHealthcareV1ConsentPolicy =
  GoogleCloudHealthcareV1ConsentPolicy'
    {_gchvcpResourceAttributes = Nothing, _gchvcpAuthorizationRule = Nothing}


-- | The resources that this policy applies to. A resource is a match if it
-- matches all the attributes listed here. If empty, this policy applies to
-- all User data mappings for the given user.
gchvcpResourceAttributes :: Lens' GoogleCloudHealthcareV1ConsentPolicy [Attribute]
gchvcpResourceAttributes
  = lens _gchvcpResourceAttributes
      (\ s a -> s{_gchvcpResourceAttributes = a})
      . _Default
      . _Coerce

-- | Required. The request conditions to meet to grant access. In addition to
-- any supported comparison operators, authorization rules may have \`IN\`
-- operator as well as at most 10 logical operators that are limited to
-- \`AND\` (\`&&\`), \`OR\` (\`||\`).
gchvcpAuthorizationRule :: Lens' GoogleCloudHealthcareV1ConsentPolicy (Maybe Expr)
gchvcpAuthorizationRule
  = lens _gchvcpAuthorizationRule
      (\ s a -> s{_gchvcpAuthorizationRule = a})

instance FromJSON
           GoogleCloudHealthcareV1ConsentPolicy
         where
        parseJSON
          = withObject "GoogleCloudHealthcareV1ConsentPolicy"
              (\ o ->
                 GoogleCloudHealthcareV1ConsentPolicy' <$>
                   (o .:? "resourceAttributes" .!= mempty) <*>
                     (o .:? "authorizationRule"))

instance ToJSON GoogleCloudHealthcareV1ConsentPolicy
         where
        toJSON GoogleCloudHealthcareV1ConsentPolicy'{..}
          = object
              (catMaybes
                 [("resourceAttributes" .=) <$>
                    _gchvcpResourceAttributes,
                  ("authorizationRule" .=) <$>
                    _gchvcpAuthorizationRule])

-- | Optional. User-supplied key-value pairs used to organize Consent
-- resources. Metadata keys must: - be between 1 and 63 characters long -
-- have a UTF-8 encoding of maximum 128 bytes - begin with a letter -
-- consist of up to 63 characters including lowercase letters, numeric
-- characters, underscores, and dashes Metadata values must be: - be
-- between 1 and 63 characters long - have a UTF-8 encoding of maximum 128
-- bytes - consist of up to 63 characters including lowercase letters,
-- numeric characters, underscores, and dashes No more than 64 metadata
-- entries can be associated with a given consent.
--
-- /See:/ 'consentMetadata' smart constructor.
newtype ConsentMetadata =
  ConsentMetadata'
    { _cmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsentMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmAddtional'
consentMetadata
    :: HashMap Text Text -- ^ 'cmAddtional'
    -> ConsentMetadata
consentMetadata pCmAddtional_ =
  ConsentMetadata' {_cmAddtional = _Coerce # pCmAddtional_}


cmAddtional :: Lens' ConsentMetadata (HashMap Text Text)
cmAddtional
  = lens _cmAddtional (\ s a -> s{_cmAddtional = a}) .
      _Coerce

instance FromJSON ConsentMetadata where
        parseJSON
          = withObject "ConsentMetadata"
              (\ o -> ConsentMetadata' <$> (parseJSONObject o))

instance ToJSON ConsentMetadata where
        toJSON = toJSON . _cmAddtional

-- | A schema package contains a set of schemas and type definitions.
--
-- /See:/ 'schemaPackage' smart constructor.
data SchemaPackage =
  SchemaPackage'
    { _spSchemas :: !(Maybe [Hl7SchemaConfig])
    , _spTypes :: !(Maybe [Hl7TypesConfig])
    , _spSchematizedParsingType :: !(Maybe SchemaPackageSchematizedParsingType)
    , _spIgnoreMinOccurs :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SchemaPackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spSchemas'
--
-- * 'spTypes'
--
-- * 'spSchematizedParsingType'
--
-- * 'spIgnoreMinOccurs'
schemaPackage
    :: SchemaPackage
schemaPackage =
  SchemaPackage'
    { _spSchemas = Nothing
    , _spTypes = Nothing
    , _spSchematizedParsingType = Nothing
    , _spIgnoreMinOccurs = Nothing
    }


-- | Schema configs that are layered based on their VersionSources that match
-- the incoming message. Schema configs present in higher indices override
-- those in lower indices with the same message type and trigger event if
-- their VersionSources all match an incoming message.
spSchemas :: Lens' SchemaPackage [Hl7SchemaConfig]
spSchemas
  = lens _spSchemas (\ s a -> s{_spSchemas = a}) .
      _Default
      . _Coerce

-- | Schema type definitions that are layered based on their VersionSources
-- that match the incoming message. Type definitions present in higher
-- indices override those in lower indices with the same type name if their
-- VersionSources all match an incoming message.
spTypes :: Lens' SchemaPackage [Hl7TypesConfig]
spTypes
  = lens _spTypes (\ s a -> s{_spTypes = a}) . _Default
      . _Coerce

-- | Determines how messages that fail to parse are handled.
spSchematizedParsingType :: Lens' SchemaPackage (Maybe SchemaPackageSchematizedParsingType)
spSchematizedParsingType
  = lens _spSchematizedParsingType
      (\ s a -> s{_spSchematizedParsingType = a})

-- | Flag to ignore all min_occurs restrictions in the schema. This means
-- that incoming messages can omit any group, segment, field, component, or
-- subcomponent.
spIgnoreMinOccurs :: Lens' SchemaPackage (Maybe Bool)
spIgnoreMinOccurs
  = lens _spIgnoreMinOccurs
      (\ s a -> s{_spIgnoreMinOccurs = a})

instance FromJSON SchemaPackage where
        parseJSON
          = withObject "SchemaPackage"
              (\ o ->
                 SchemaPackage' <$>
                   (o .:? "schemas" .!= mempty) <*>
                     (o .:? "types" .!= mempty)
                     <*> (o .:? "schematizedParsingType")
                     <*> (o .:? "ignoreMinOccurs"))

instance ToJSON SchemaPackage where
        toJSON SchemaPackage'{..}
          = object
              (catMaybes
                 [("schemas" .=) <$> _spSchemas,
                  ("types" .=) <$> _spTypes,
                  ("schematizedParsingType" .=) <$>
                    _spSchematizedParsingType,
                  ("ignoreMinOccurs" .=) <$> _spIgnoreMinOccurs])

-- | Returns additional information in regards to a completed DICOM store
-- export.
--
-- /See:/ 'exportDicomDataResponse' smart constructor.
data ExportDicomDataResponse =
  ExportDicomDataResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportDicomDataResponse' with the minimum fields required to make a request.
--
exportDicomDataResponse
    :: ExportDicomDataResponse
exportDicomDataResponse = ExportDicomDataResponse'


instance FromJSON ExportDicomDataResponse where
        parseJSON
          = withObject "ExportDicomDataResponse"
              (\ o -> pure ExportDicomDataResponse')

instance ToJSON ExportDicomDataResponse where
        toJSON = const emptyObject

-- | Checks if a particular data_id of a User data mapping in the given
-- consent store is consented for a given use.
--
-- /See:/ 'checkDataAccessRequest' smart constructor.
data CheckDataAccessRequest =
  CheckDataAccessRequest'
    { _cdarResponseView :: !(Maybe CheckDataAccessRequestResponseView)
    , _cdarConsentList :: !(Maybe ConsentList)
    , _cdarDataId :: !(Maybe Text)
    , _cdarRequestAttributes :: !(Maybe CheckDataAccessRequestRequestAttributes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckDataAccessRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdarResponseView'
--
-- * 'cdarConsentList'
--
-- * 'cdarDataId'
--
-- * 'cdarRequestAttributes'
checkDataAccessRequest
    :: CheckDataAccessRequest
checkDataAccessRequest =
  CheckDataAccessRequest'
    { _cdarResponseView = Nothing
    , _cdarConsentList = Nothing
    , _cdarDataId = Nothing
    , _cdarRequestAttributes = Nothing
    }


-- | Optional. The view for CheckDataAccessResponse. If unspecified, defaults
-- to \`BASIC\` and returns \`consented\` as \`TRUE\` or \`FALSE\`.
cdarResponseView :: Lens' CheckDataAccessRequest (Maybe CheckDataAccessRequestResponseView)
cdarResponseView
  = lens _cdarResponseView
      (\ s a -> s{_cdarResponseView = a})

-- | Optional. Specific Consents to evaluate the access request against.
-- These Consents must have the same \`user_id\` as the evaluated User data
-- mapping, must exist in the current \`consent_store\`, and have a
-- \`state\` of either \`ACTIVE\` or \`DRAFT\`. A maximum of 100 Consents
-- can be provided here. If no selection is specified, the access request
-- is evaluated against all \`ACTIVE\` unexpired Consents with the same
-- \`user_id\` as the evaluated User data mapping.
cdarConsentList :: Lens' CheckDataAccessRequest (Maybe ConsentList)
cdarConsentList
  = lens _cdarConsentList
      (\ s a -> s{_cdarConsentList = a})

-- | Required. The unique identifier of the resource to check access for.
-- This identifier must correspond to a User data mapping in the given
-- consent store.
cdarDataId :: Lens' CheckDataAccessRequest (Maybe Text)
cdarDataId
  = lens _cdarDataId (\ s a -> s{_cdarDataId = a})

-- | The values of request attributes associated with this access request.
cdarRequestAttributes :: Lens' CheckDataAccessRequest (Maybe CheckDataAccessRequestRequestAttributes)
cdarRequestAttributes
  = lens _cdarRequestAttributes
      (\ s a -> s{_cdarRequestAttributes = a})

instance FromJSON CheckDataAccessRequest where
        parseJSON
          = withObject "CheckDataAccessRequest"
              (\ o ->
                 CheckDataAccessRequest' <$>
                   (o .:? "responseView") <*> (o .:? "consentList") <*>
                     (o .:? "dataId")
                     <*> (o .:? "requestAttributes"))

instance ToJSON CheckDataAccessRequest where
        toJSON CheckDataAccessRequest'{..}
          = object
              (catMaybes
                 [("responseView" .=) <$> _cdarResponseView,
                  ("consentList" .=) <$> _cdarConsentList,
                  ("dataId" .=) <$> _cdarDataId,
                  ("requestAttributes" .=) <$> _cdarRequestAttributes])

--
-- /See:/ 'listAttributeDefinitionsResponse' smart constructor.
data ListAttributeDefinitionsResponse =
  ListAttributeDefinitionsResponse'
    { _ladrNextPageToken :: !(Maybe Text)
    , _ladrAttributeDefinitions :: !(Maybe [AttributeDefinition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAttributeDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladrNextPageToken'
--
-- * 'ladrAttributeDefinitions'
listAttributeDefinitionsResponse
    :: ListAttributeDefinitionsResponse
listAttributeDefinitionsResponse =
  ListAttributeDefinitionsResponse'
    {_ladrNextPageToken = Nothing, _ladrAttributeDefinitions = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
ladrNextPageToken :: Lens' ListAttributeDefinitionsResponse (Maybe Text)
ladrNextPageToken
  = lens _ladrNextPageToken
      (\ s a -> s{_ladrNextPageToken = a})

-- | The returned Attribute definitions. The maximum number of attributes
-- returned is determined by the value of page_size in the
-- ListAttributeDefinitionsRequest.
ladrAttributeDefinitions :: Lens' ListAttributeDefinitionsResponse [AttributeDefinition]
ladrAttributeDefinitions
  = lens _ladrAttributeDefinitions
      (\ s a -> s{_ladrAttributeDefinitions = a})
      . _Default
      . _Coerce

instance FromJSON ListAttributeDefinitionsResponse
         where
        parseJSON
          = withObject "ListAttributeDefinitionsResponse"
              (\ o ->
                 ListAttributeDefinitionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "attributeDefinitions" .!= mempty))

instance ToJSON ListAttributeDefinitionsResponse
         where
        toJSON ListAttributeDefinitionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ladrNextPageToken,
                  ("attributeDefinitions" .=) <$>
                    _ladrAttributeDefinitions])

--
-- /See:/ 'listConsentStoresResponse' smart constructor.
data ListConsentStoresResponse =
  ListConsentStoresResponse'
    { _lcsrNextPageToken :: !(Maybe Text)
    , _lcsrConsentStores :: !(Maybe [ConsentStore])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListConsentStoresResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsrNextPageToken'
--
-- * 'lcsrConsentStores'
listConsentStoresResponse
    :: ListConsentStoresResponse
listConsentStoresResponse =
  ListConsentStoresResponse'
    {_lcsrNextPageToken = Nothing, _lcsrConsentStores = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lcsrNextPageToken :: Lens' ListConsentStoresResponse (Maybe Text)
lcsrNextPageToken
  = lens _lcsrNextPageToken
      (\ s a -> s{_lcsrNextPageToken = a})

-- | The returned consent stores. The maximum number of stores returned is
-- determined by the value of page_size in the ListConsentStoresRequest.
lcsrConsentStores :: Lens' ListConsentStoresResponse [ConsentStore]
lcsrConsentStores
  = lens _lcsrConsentStores
      (\ s a -> s{_lcsrConsentStores = a})
      . _Default
      . _Coerce

instance FromJSON ListConsentStoresResponse where
        parseJSON
          = withObject "ListConsentStoresResponse"
              (\ o ->
                 ListConsentStoresResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "consentStores" .!= mempty))

instance ToJSON ListConsentStoresResponse where
        toJSON ListConsentStoresResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcsrNextPageToken,
                  ("consentStores" .=) <$> _lcsrConsentStores])

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
    , _scSchemaType :: !(Maybe SchemaConfigSchemaType)
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
-- specified or set to 0, the server will use the default value 2. The
-- maximum depth allowed is 5.
scRecursiveStructureDepth :: Lens' SchemaConfig (Maybe Int64)
scRecursiveStructureDepth
  = lens _scRecursiveStructureDepth
      (\ s a -> s{_scRecursiveStructureDepth = a})
      . mapping _Coerce

-- | Specifies the output schema type. Schema type is required.
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

-- | Represents a user\'s consent.
--
-- /See:/ 'consent' smart constructor.
data Consent =
  Consent'
    { _cTtl :: !(Maybe GDuration)
    , _cState :: !(Maybe ConsentState)
    , _cRevisionCreateTime :: !(Maybe DateTime')
    , _cConsentArtifact :: !(Maybe Text)
    , _cUserId :: !(Maybe Text)
    , _cName :: !(Maybe Text)
    , _cMetadata :: !(Maybe ConsentMetadata)
    , _cExpireTime :: !(Maybe DateTime')
    , _cRevisionId :: !(Maybe Text)
    , _cPolicies :: !(Maybe [GoogleCloudHealthcareV1ConsentPolicy])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Consent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cTtl'
--
-- * 'cState'
--
-- * 'cRevisionCreateTime'
--
-- * 'cConsentArtifact'
--
-- * 'cUserId'
--
-- * 'cName'
--
-- * 'cMetadata'
--
-- * 'cExpireTime'
--
-- * 'cRevisionId'
--
-- * 'cPolicies'
consent
    :: Consent
consent =
  Consent'
    { _cTtl = Nothing
    , _cState = Nothing
    , _cRevisionCreateTime = Nothing
    , _cConsentArtifact = Nothing
    , _cUserId = Nothing
    , _cName = Nothing
    , _cMetadata = Nothing
    , _cExpireTime = Nothing
    , _cRevisionId = Nothing
    , _cPolicies = Nothing
    }


-- | Input only. The time to live for this Consent from when it is created.
cTtl :: Lens' Consent (Maybe Scientific)
cTtl
  = lens _cTtl (\ s a -> s{_cTtl = a}) .
      mapping _GDuration

-- | Required. Indicates the current state of this Consent.
cState :: Lens' Consent (Maybe ConsentState)
cState = lens _cState (\ s a -> s{_cState = a})

-- | Output only. The timestamp that the revision was created.
cRevisionCreateTime :: Lens' Consent (Maybe UTCTime)
cRevisionCreateTime
  = lens _cRevisionCreateTime
      (\ s a -> s{_cRevisionCreateTime = a})
      . mapping _DateTime

-- | Required. The resource name of the Consent artifact that contains proof
-- of the end user\'s consent, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consentArtifacts\/{consent_artifact_id}\`.
cConsentArtifact :: Lens' Consent (Maybe Text)
cConsentArtifact
  = lens _cConsentArtifact
      (\ s a -> s{_cConsentArtifact = a})

-- | Required. User\'s UUID provided by the client.
cUserId :: Lens' Consent (Maybe Text)
cUserId = lens _cUserId (\ s a -> s{_cUserId = a})

-- | Resource name of the Consent, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\`.
-- Cannot be changed after creation.
cName :: Lens' Consent (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Optional. User-supplied key-value pairs used to organize Consent
-- resources. Metadata keys must: - be between 1 and 63 characters long -
-- have a UTF-8 encoding of maximum 128 bytes - begin with a letter -
-- consist of up to 63 characters including lowercase letters, numeric
-- characters, underscores, and dashes Metadata values must be: - be
-- between 1 and 63 characters long - have a UTF-8 encoding of maximum 128
-- bytes - consist of up to 63 characters including lowercase letters,
-- numeric characters, underscores, and dashes No more than 64 metadata
-- entries can be associated with a given consent.
cMetadata :: Lens' Consent (Maybe ConsentMetadata)
cMetadata
  = lens _cMetadata (\ s a -> s{_cMetadata = a})

-- | Timestamp in UTC of when this Consent is considered expired.
cExpireTime :: Lens' Consent (Maybe UTCTime)
cExpireTime
  = lens _cExpireTime (\ s a -> s{_cExpireTime = a}) .
      mapping _DateTime

-- | Output only. The revision ID of the Consent. The format is an
-- 8-character hexadecimal string. Refer to a specific revision of a
-- Consent by appending \`\'{revision_id}\` to the Consent\'s resource
-- name.
cRevisionId :: Lens' Consent (Maybe Text)
cRevisionId
  = lens _cRevisionId (\ s a -> s{_cRevisionId = a})

-- | Optional. Represents a user\'s consent in terms of the resources that
-- can be accessed and under what conditions.
cPolicies :: Lens' Consent [GoogleCloudHealthcareV1ConsentPolicy]
cPolicies
  = lens _cPolicies (\ s a -> s{_cPolicies = a}) .
      _Default
      . _Coerce

instance FromJSON Consent where
        parseJSON
          = withObject "Consent"
              (\ o ->
                 Consent' <$>
                   (o .:? "ttl") <*> (o .:? "state") <*>
                     (o .:? "revisionCreateTime")
                     <*> (o .:? "consentArtifact")
                     <*> (o .:? "userId")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata")
                     <*> (o .:? "expireTime")
                     <*> (o .:? "revisionId")
                     <*> (o .:? "policies" .!= mempty))

instance ToJSON Consent where
        toJSON Consent'{..}
          = object
              (catMaybes
                 [("ttl" .=) <$> _cTtl, ("state" .=) <$> _cState,
                  ("revisionCreateTime" .=) <$> _cRevisionCreateTime,
                  ("consentArtifact" .=) <$> _cConsentArtifact,
                  ("userId" .=) <$> _cUserId, ("name" .=) <$> _cName,
                  ("metadata" .=) <$> _cMetadata,
                  ("expireTime" .=) <$> _cExpireTime,
                  ("revisionId" .=) <$> _cRevisionId,
                  ("policies" .=) <$> _cPolicies])

-- | Evaluate a user\'s Consents for all matching User data mappings. Note:
-- User data mappings are indexed asynchronously, causing slight delays
-- between the time mappings are created or updated and when they are
-- included in EvaluateUserConsents results.
--
-- /See:/ 'evaluateUserConsentsRequest' smart constructor.
data EvaluateUserConsentsRequest =
  EvaluateUserConsentsRequest'
    { _eucrResourceAttributes :: !(Maybe EvaluateUserConsentsRequestResourceAttributes)
    , _eucrResponseView :: !(Maybe EvaluateUserConsentsRequestResponseView)
    , _eucrUserId :: !(Maybe Text)
    , _eucrConsentList :: !(Maybe ConsentList)
    , _eucrPageToken :: !(Maybe Text)
    , _eucrRequestAttributes :: !(Maybe EvaluateUserConsentsRequestRequestAttributes)
    , _eucrPageSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EvaluateUserConsentsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eucrResourceAttributes'
--
-- * 'eucrResponseView'
--
-- * 'eucrUserId'
--
-- * 'eucrConsentList'
--
-- * 'eucrPageToken'
--
-- * 'eucrRequestAttributes'
--
-- * 'eucrPageSize'
evaluateUserConsentsRequest
    :: EvaluateUserConsentsRequest
evaluateUserConsentsRequest =
  EvaluateUserConsentsRequest'
    { _eucrResourceAttributes = Nothing
    , _eucrResponseView = Nothing
    , _eucrUserId = Nothing
    , _eucrConsentList = Nothing
    , _eucrPageToken = Nothing
    , _eucrRequestAttributes = Nothing
    , _eucrPageSize = Nothing
    }


-- | Optional. The values of resource attributes associated with the
-- resources being requested. If no values are specified, then all
-- resources are queried.
eucrResourceAttributes :: Lens' EvaluateUserConsentsRequest (Maybe EvaluateUserConsentsRequestResourceAttributes)
eucrResourceAttributes
  = lens _eucrResourceAttributes
      (\ s a -> s{_eucrResourceAttributes = a})

-- | Optional. The view for EvaluateUserConsentsResponse. If unspecified,
-- defaults to \`BASIC\` and returns \`consented\` as \`TRUE\` or
-- \`FALSE\`.
eucrResponseView :: Lens' EvaluateUserConsentsRequest (Maybe EvaluateUserConsentsRequestResponseView)
eucrResponseView
  = lens _eucrResponseView
      (\ s a -> s{_eucrResponseView = a})

-- | Required. User ID to evaluate consents for.
eucrUserId :: Lens' EvaluateUserConsentsRequest (Maybe Text)
eucrUserId
  = lens _eucrUserId (\ s a -> s{_eucrUserId = a})

-- | Optional. Specific Consents to evaluate the access request against.
-- These Consents must have the same \`user_id\` as the User data mappings
-- being evalauted, must exist in the current \`consent_store\`, and must
-- have a \`state\` of either \`ACTIVE\` or \`DRAFT\`. A maximum of 100
-- Consents can be provided here. If unspecified, all \`ACTIVE\` unexpired
-- Consents in the current \`consent_store\` will be evaluated.
eucrConsentList :: Lens' EvaluateUserConsentsRequest (Maybe ConsentList)
eucrConsentList
  = lens _eucrConsentList
      (\ s a -> s{_eucrConsentList = a})

-- | Optional. Token to retrieve the next page of results, or empty to get
-- the first page.
eucrPageToken :: Lens' EvaluateUserConsentsRequest (Maybe Text)
eucrPageToken
  = lens _eucrPageToken
      (\ s a -> s{_eucrPageToken = a})

-- | Required. The values of request attributes associated with this access
-- request.
eucrRequestAttributes :: Lens' EvaluateUserConsentsRequest (Maybe EvaluateUserConsentsRequestRequestAttributes)
eucrRequestAttributes
  = lens _eucrRequestAttributes
      (\ s a -> s{_eucrRequestAttributes = a})

-- | Optional. Limit on the number of User data mappings to return in a
-- single response. If not specified, 100 is used. May not be larger than
-- 1000.
eucrPageSize :: Lens' EvaluateUserConsentsRequest (Maybe Int32)
eucrPageSize
  = lens _eucrPageSize (\ s a -> s{_eucrPageSize = a})
      . mapping _Coerce

instance FromJSON EvaluateUserConsentsRequest where
        parseJSON
          = withObject "EvaluateUserConsentsRequest"
              (\ o ->
                 EvaluateUserConsentsRequest' <$>
                   (o .:? "resourceAttributes") <*>
                     (o .:? "responseView")
                     <*> (o .:? "userId")
                     <*> (o .:? "consentList")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "requestAttributes")
                     <*> (o .:? "pageSize"))

instance ToJSON EvaluateUserConsentsRequest where
        toJSON EvaluateUserConsentsRequest'{..}
          = object
              (catMaybes
                 [("resourceAttributes" .=) <$>
                    _eucrResourceAttributes,
                  ("responseView" .=) <$> _eucrResponseView,
                  ("userId" .=) <$> _eucrUserId,
                  ("consentList" .=) <$> _eucrConsentList,
                  ("pageToken" .=) <$> _eucrPageToken,
                  ("requestAttributes" .=) <$> _eucrRequestAttributes,
                  ("pageSize" .=) <$> _eucrPageSize])

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
-- Deidentify operation and is used wherever crypto_key is not specified.
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

-- | An HL7v2 logical group construct.
--
-- /See:/ 'schemaGroup' smart constructor.
data SchemaGroup =
  SchemaGroup'
    { _sgMaxOccurs :: !(Maybe (Textual Int32))
    , _sgMembers :: !(Maybe [GroupOrSegment])
    , _sgName :: !(Maybe Text)
    , _sgChoice :: !(Maybe Bool)
    , _sgMinOccurs :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SchemaGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgMaxOccurs'
--
-- * 'sgMembers'
--
-- * 'sgName'
--
-- * 'sgChoice'
--
-- * 'sgMinOccurs'
schemaGroup
    :: SchemaGroup
schemaGroup =
  SchemaGroup'
    { _sgMaxOccurs = Nothing
    , _sgMembers = Nothing
    , _sgName = Nothing
    , _sgChoice = Nothing
    , _sgMinOccurs = Nothing
    }


-- | The maximum number of times this group can be repeated. 0 or -1 means
-- unbounded.
sgMaxOccurs :: Lens' SchemaGroup (Maybe Int32)
sgMaxOccurs
  = lens _sgMaxOccurs (\ s a -> s{_sgMaxOccurs = a}) .
      mapping _Coerce

-- | Nested groups and\/or segments.
sgMembers :: Lens' SchemaGroup [GroupOrSegment]
sgMembers
  = lens _sgMembers (\ s a -> s{_sgMembers = a}) .
      _Default
      . _Coerce

-- | The name of this group. For example, \"ORDER_DETAIL\".
sgName :: Lens' SchemaGroup (Maybe Text)
sgName = lens _sgName (\ s a -> s{_sgName = a})

-- | True indicates that this is a choice group, meaning that only one of its
-- segments can exist in a given message.
sgChoice :: Lens' SchemaGroup (Maybe Bool)
sgChoice = lens _sgChoice (\ s a -> s{_sgChoice = a})

-- | The minimum number of times this group must be present\/repeated.
sgMinOccurs :: Lens' SchemaGroup (Maybe Int32)
sgMinOccurs
  = lens _sgMinOccurs (\ s a -> s{_sgMinOccurs = a}) .
      mapping _Coerce

instance FromJSON SchemaGroup where
        parseJSON
          = withObject "SchemaGroup"
              (\ o ->
                 SchemaGroup' <$>
                   (o .:? "maxOccurs") <*> (o .:? "members" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "choice")
                     <*> (o .:? "minOccurs"))

instance ToJSON SchemaGroup where
        toJSON SchemaGroup'{..}
          = object
              (catMaybes
                 [("maxOccurs" .=) <$> _sgMaxOccurs,
                  ("members" .=) <$> _sgMembers,
                  ("name" .=) <$> _sgName, ("choice" .=) <$> _sgChoice,
                  ("minOccurs" .=) <$> _sgMinOccurs])

-- | Archives the specified User data mapping.
--
-- /See:/ 'archiveUserDataMAppingRequest' smart constructor.
data ArchiveUserDataMAppingRequest =
  ArchiveUserDataMAppingRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArchiveUserDataMAppingRequest' with the minimum fields required to make a request.
--
archiveUserDataMAppingRequest
    :: ArchiveUserDataMAppingRequest
archiveUserDataMAppingRequest = ArchiveUserDataMAppingRequest'


instance FromJSON ArchiveUserDataMAppingRequest where
        parseJSON
          = withObject "ArchiveUserDataMAppingRequest"
              (\ o -> pure ArchiveUserDataMAppingRequest')

instance ToJSON ArchiveUserDataMAppingRequest where
        toJSON = const emptyObject

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

-- | Specifies the filter configuration for DICOM resources.
--
-- /See:/ 'dicomFilterConfig' smart constructor.
newtype DicomFilterConfig =
  DicomFilterConfig'
    { _dfcResourcePathsGcsURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DicomFilterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfcResourcePathsGcsURI'
dicomFilterConfig
    :: DicomFilterConfig
dicomFilterConfig = DicomFilterConfig' {_dfcResourcePathsGcsURI = Nothing}


-- | The Cloud Storage location of the filter configuration file. The
-- \`gcs_uri\` must be in the format \`gs:\/\/bucket\/path\/to\/object\`.
-- The filter configuration file must contain a list of resource paths
-- separated by newline characters (\\n or \\r\\n). Each resource path must
-- be in the format
-- \"\/studies\/{studyUID}[\/series\/{seriesUID}[\/instances\/{instanceUID}]]\"
-- The Cloud Healthcare API service account must have the
-- \`roles\/storage.objectViewer\` Cloud IAM role for this Cloud Storage
-- location.
dfcResourcePathsGcsURI :: Lens' DicomFilterConfig (Maybe Text)
dfcResourcePathsGcsURI
  = lens _dfcResourcePathsGcsURI
      (\ s a -> s{_dfcResourcePathsGcsURI = a})

instance FromJSON DicomFilterConfig where
        parseJSON
          = withObject "DicomFilterConfig"
              (\ o ->
                 DicomFilterConfig' <$> (o .:? "resourcePathsGcsUri"))

instance ToJSON DicomFilterConfig where
        toJSON DicomFilterConfig'{..}
          = object
              (catMaybes
                 [("resourcePathsGcsUri" .=) <$>
                    _dfcResourcePathsGcsURI])

-- | Contains a summary of the Deidentify operation.
--
-- /See:/ 'deidentifySummary' smart constructor.
data DeidentifySummary =
  DeidentifySummary'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeidentifySummary' with the minimum fields required to make a request.
--
deidentifySummary
    :: DeidentifySummary
deidentifySummary = DeidentifySummary'


instance FromJSON DeidentifySummary where
        parseJSON
          = withObject "DeidentifySummary"
              (\ o -> pure DeidentifySummary')

instance ToJSON DeidentifySummary where
        toJSON = const emptyObject

-- | The Cloud Storage location where the server writes the output and the
-- export configuration.
--
-- /See:/ 'googleCloudHealthcareV1DicomGcsDestination' smart constructor.
data GoogleCloudHealthcareV1DicomGcsDestination =
  GoogleCloudHealthcareV1DicomGcsDestination'
    { _gchvdgdURIPrefix :: !(Maybe Text)
    , _gchvdgdMimeType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1DicomGcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvdgdURIPrefix'
--
-- * 'gchvdgdMimeType'
googleCloudHealthcareV1DicomGcsDestination
    :: GoogleCloudHealthcareV1DicomGcsDestination
googleCloudHealthcareV1DicomGcsDestination =
  GoogleCloudHealthcareV1DicomGcsDestination'
    {_gchvdgdURIPrefix = Nothing, _gchvdgdMimeType = Nothing}


-- | The Cloud Storage destination to export to. URI for a Cloud Storage
-- directory where the server writes the result files, in the format
-- \`gs:\/\/{bucket-id}\/{path\/to\/destination\/dir}\`). If there is no
-- trailing slash, the service appends one when composing the object path.
-- The user is responsible for creating the Cloud Storage bucket referenced
-- in \`uri_prefix\`.
gchvdgdURIPrefix :: Lens' GoogleCloudHealthcareV1DicomGcsDestination (Maybe Text)
gchvdgdURIPrefix
  = lens _gchvdgdURIPrefix
      (\ s a -> s{_gchvdgdURIPrefix = a})

-- | MIME types supported by DICOM spec. Each file is written in the
-- following format:
-- \`...\/{study_id}\/{series_id}\/{instance_id}[\/{frame_number}].{extension}\`
-- The frame_number component exists only for multi-frame instances.
-- Supported MIME types are consistent with supported formats in DICOMweb:
-- https:\/\/cloud.google.com\/healthcare\/docs\/dicom#retrieve_transaction.
-- Specifically, the following are supported: - application\/dicom;
-- transfer-syntax=1.2.840.10008.1.2.1 (uncompressed DICOM) -
-- application\/dicom; transfer-syntax=1.2.840.10008.1.2.4.50 (DICOM with
-- embedded JPEG Baseline) - application\/dicom;
-- transfer-syntax=1.2.840.10008.1.2.4.90 (DICOM with embedded JPEG 2000
-- Lossless Only) - application\/dicom;
-- transfer-syntax=1.2.840.10008.1.2.4.91 (DICOM with embedded JPEG 2000) -
-- application\/dicom; transfer-syntax=* (DICOM with no transcoding) -
-- application\/octet-stream; transfer-syntax=1.2.840.10008.1.2.1 (raw
-- uncompressed PixelData) - application\/octet-stream; transfer-syntax=*
-- (raw PixelData in whatever format it was uploaded in) - image\/jpeg;
-- transfer-syntax=1.2.840.10008.1.2.4.50 (Consumer JPEG) - image\/png The
-- following extensions are used for output files: - application\/dicom ->
-- .dcm - image\/jpeg -> .jpg - image\/png -> .png -
-- application\/octet-stream -> no extension If unspecified, the instances
-- are exported in the original DICOM format they were uploaded in.
gchvdgdMimeType :: Lens' GoogleCloudHealthcareV1DicomGcsDestination (Maybe Text)
gchvdgdMimeType
  = lens _gchvdgdMimeType
      (\ s a -> s{_gchvdgdMimeType = a})

instance FromJSON
           GoogleCloudHealthcareV1DicomGcsDestination
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1DicomGcsDestination"
              (\ o ->
                 GoogleCloudHealthcareV1DicomGcsDestination' <$>
                   (o .:? "uriPrefix") <*> (o .:? "mimeType"))

instance ToJSON
           GoogleCloudHealthcareV1DicomGcsDestination
         where
        toJSON
          GoogleCloudHealthcareV1DicomGcsDestination'{..}
          = object
              (catMaybes
                 [("uriPrefix" .=) <$> _gchvdgdURIPrefix,
                  ("mimeType" .=) <$> _gchvdgdMimeType])

-- | The consent evaluation result for a single \`data_id\`.
--
-- /See:/ 'result' smart constructor.
data Result =
  Result'
    { _rConsentDetails :: !(Maybe ResultConsentDetails)
    , _rConsented :: !(Maybe Bool)
    , _rDataId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Result' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rConsentDetails'
--
-- * 'rConsented'
--
-- * 'rDataId'
result
    :: Result
result =
  Result'
    {_rConsentDetails = Nothing, _rConsented = Nothing, _rDataId = Nothing}


-- | The resource names of all evaluated Consents mapped to their evaluation.
rConsentDetails :: Lens' Result (Maybe ResultConsentDetails)
rConsentDetails
  = lens _rConsentDetails
      (\ s a -> s{_rConsentDetails = a})

-- | Whether the resource is consented for the given use.
rConsented :: Lens' Result (Maybe Bool)
rConsented
  = lens _rConsented (\ s a -> s{_rConsented = a})

-- | The unique identifier of the evaluated resource.
rDataId :: Lens' Result (Maybe Text)
rDataId = lens _rDataId (\ s a -> s{_rDataId = a})

instance FromJSON Result where
        parseJSON
          = withObject "Result"
              (\ o ->
                 Result' <$>
                   (o .:? "consentDetails") <*> (o .:? "consented") <*>
                     (o .:? "dataId"))

instance ToJSON Result where
        toJSON Result'{..}
          = object
              (catMaybes
                 [("consentDetails" .=) <$> _rConsentDetails,
                  ("consented" .=) <$> _rConsented,
                  ("dataId" .=) <$> _rDataId])

-- | A list of FHIR resources.
--
-- /See:/ 'resources' smart constructor.
newtype Resources =
  Resources'
    { _rResources :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Resources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rResources'
resources
    :: Resources
resources = Resources' {_rResources = Nothing}


-- | List of resources IDs. For example, \"Patient\/1234\".
rResources :: Lens' Resources [Text]
rResources
  = lens _rResources (\ s a -> s{_rResources = a}) .
      _Default
      . _Coerce

instance FromJSON Resources where
        parseJSON
          = withObject "Resources"
              (\ o ->
                 Resources' <$> (o .:? "resources" .!= mempty))

instance ToJSON Resources where
        toJSON Resources'{..}
          = object
              (catMaybes [("resources" .=) <$> _rResources])

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

-- | A client-defined consent attribute.
--
-- /See:/ 'attributeDefinition' smart constructor.
data AttributeDefinition =
  AttributeDefinition'
    { _adDataMAppingDefaultValue :: !(Maybe Text)
    , _adCategory :: !(Maybe AttributeDefinitionCategory)
    , _adName :: !(Maybe Text)
    , _adConsentDefaultValues :: !(Maybe [Text])
    , _adAllowedValues :: !(Maybe [Text])
    , _adDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttributeDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adDataMAppingDefaultValue'
--
-- * 'adCategory'
--
-- * 'adName'
--
-- * 'adConsentDefaultValues'
--
-- * 'adAllowedValues'
--
-- * 'adDescription'
attributeDefinition
    :: AttributeDefinition
attributeDefinition =
  AttributeDefinition'
    { _adDataMAppingDefaultValue = Nothing
    , _adCategory = Nothing
    , _adName = Nothing
    , _adConsentDefaultValues = Nothing
    , _adAllowedValues = Nothing
    , _adDescription = Nothing
    }


-- | Optional. Default value of the attribute in User data mappings. If no
-- default value is specified, it defaults to an empty value. This field is
-- only applicable to attributes of the category \`RESOURCE\`.
adDataMAppingDefaultValue :: Lens' AttributeDefinition (Maybe Text)
adDataMAppingDefaultValue
  = lens _adDataMAppingDefaultValue
      (\ s a -> s{_adDataMAppingDefaultValue = a})

-- | Required. The category of the attribute. The value of this field cannot
-- be changed after creation.
adCategory :: Lens' AttributeDefinition (Maybe AttributeDefinitionCategory)
adCategory
  = lens _adCategory (\ s a -> s{_adCategory = a})

-- | Resource name of the Attribute definition, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/attributeDefinitions\/{attribute_definition_id}\`.
-- Cannot be changed after creation.
adName :: Lens' AttributeDefinition (Maybe Text)
adName = lens _adName (\ s a -> s{_adName = a})

-- | Optional. Default values of the attribute in Consents. If no default
-- values are specified, it defaults to an empty value.
adConsentDefaultValues :: Lens' AttributeDefinition [Text]
adConsentDefaultValues
  = lens _adConsentDefaultValues
      (\ s a -> s{_adConsentDefaultValues = a})
      . _Default
      . _Coerce

-- | Required. Possible values for the attribute. The number of allowed
-- values must not exceed 100. An empty list is invalid. The list can only
-- be expanded after creation.
adAllowedValues :: Lens' AttributeDefinition [Text]
adAllowedValues
  = lens _adAllowedValues
      (\ s a -> s{_adAllowedValues = a})
      . _Default
      . _Coerce

-- | Optional. A description of the attribute.
adDescription :: Lens' AttributeDefinition (Maybe Text)
adDescription
  = lens _adDescription
      (\ s a -> s{_adDescription = a})

instance FromJSON AttributeDefinition where
        parseJSON
          = withObject "AttributeDefinition"
              (\ o ->
                 AttributeDefinition' <$>
                   (o .:? "dataMappingDefaultValue") <*>
                     (o .:? "category")
                     <*> (o .:? "name")
                     <*> (o .:? "consentDefaultValues" .!= mempty)
                     <*> (o .:? "allowedValues" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON AttributeDefinition where
        toJSON AttributeDefinition'{..}
          = object
              (catMaybes
                 [("dataMappingDefaultValue" .=) <$>
                    _adDataMAppingDefaultValue,
                  ("category" .=) <$> _adCategory,
                  ("name" .=) <$> _adName,
                  ("consentDefaultValues" .=) <$>
                    _adConsentDefaultValues,
                  ("allowedValues" .=) <$> _adAllowedValues,
                  ("description" .=) <$> _adDescription])

-- | Construct representing a logical group or a segment.
--
-- /See:/ 'groupOrSegment' smart constructor.
data GroupOrSegment =
  GroupOrSegment'
    { _gosGroup :: !(Maybe SchemaGroup)
    , _gosSegment :: !(Maybe SchemaSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupOrSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gosGroup'
--
-- * 'gosSegment'
groupOrSegment
    :: GroupOrSegment
groupOrSegment = GroupOrSegment' {_gosGroup = Nothing, _gosSegment = Nothing}


gosGroup :: Lens' GroupOrSegment (Maybe SchemaGroup)
gosGroup = lens _gosGroup (\ s a -> s{_gosGroup = a})

gosSegment :: Lens' GroupOrSegment (Maybe SchemaSegment)
gosSegment
  = lens _gosSegment (\ s a -> s{_gosSegment = a})

instance FromJSON GroupOrSegment where
        parseJSON
          = withObject "GroupOrSegment"
              (\ o ->
                 GroupOrSegment' <$>
                   (o .:? "group") <*> (o .:? "segment"))

instance ToJSON GroupOrSegment where
        toJSON GroupOrSegment'{..}
          = object
              (catMaybes
                 [("group" .=) <$> _gosGroup,
                  ("segment" .=) <$> _gosSegment])

-- | Contains a summary of the DeidentifyDicomStore operation.
--
-- /See:/ 'googleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary' smart constructor.
data GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary =
  GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary' with the minimum fields required to make a request.
--
googleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
    :: GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
googleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary =
  GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary'


instance FromJSON
           GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary"
              (\ o ->
                 pure
                   GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary')

instance ToJSON
           GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
         where
        toJSON = const emptyObject

-- | Represents a consent store.
--
-- /See:/ 'consentStore' smart constructor.
data ConsentStore =
  ConsentStore'
    { _csName :: !(Maybe Text)
    , _csLabels :: !(Maybe ConsentStoreLabels)
    , _csEnableConsentCreateOnUpdate :: !(Maybe Bool)
    , _csDefaultConsentTtl :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsentStore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csName'
--
-- * 'csLabels'
--
-- * 'csEnableConsentCreateOnUpdate'
--
-- * 'csDefaultConsentTtl'
consentStore
    :: ConsentStore
consentStore =
  ConsentStore'
    { _csName = Nothing
    , _csLabels = Nothing
    , _csEnableConsentCreateOnUpdate = Nothing
    , _csDefaultConsentTtl = Nothing
    }


-- | Resource name of the consent store, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\`.
-- Cannot be changed after creation.
csName :: Lens' ConsentStore (Maybe Text)
csName = lens _csName (\ s a -> s{_csName = a})

-- | Optional. User-supplied key-value pairs used to organize consent stores.
-- Label keys must be between 1 and 63 characters long, have a UTF-8
-- encoding of maximum 128 bytes, and must conform to the following PCRE
-- regular expression: \\p{Ll}\\p{Lo}{0,62}. Label values must be between 1
-- and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and
-- must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}. No more than 64 labels can be associated
-- with a given store. For more information:
-- https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/labeling-resources
csLabels :: Lens' ConsentStore (Maybe ConsentStoreLabels)
csLabels = lens _csLabels (\ s a -> s{_csLabels = a})

-- | Optional. If \`true\`, UpdateConsent creates the Consent if it does not
-- already exist. If unspecified, defaults to \`false\`.
csEnableConsentCreateOnUpdate :: Lens' ConsentStore (Maybe Bool)
csEnableConsentCreateOnUpdate
  = lens _csEnableConsentCreateOnUpdate
      (\ s a -> s{_csEnableConsentCreateOnUpdate = a})

-- | Optional. Default time to live for Consents created in this store. Must
-- be at least 24 hours. Updating this field will not affect the expiration
-- time of existing consents.
csDefaultConsentTtl :: Lens' ConsentStore (Maybe Scientific)
csDefaultConsentTtl
  = lens _csDefaultConsentTtl
      (\ s a -> s{_csDefaultConsentTtl = a})
      . mapping _GDuration

instance FromJSON ConsentStore where
        parseJSON
          = withObject "ConsentStore"
              (\ o ->
                 ConsentStore' <$>
                   (o .:? "name") <*> (o .:? "labels") <*>
                     (o .:? "enableConsentCreateOnUpdate")
                     <*> (o .:? "defaultConsentTtl"))

instance ToJSON ConsentStore where
        toJSON ConsentStore'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _csName,
                  ("labels" .=) <$> _csLabels,
                  ("enableConsentCreateOnUpdate" .=) <$>
                    _csEnableConsentCreateOnUpdate,
                  ("defaultConsentTtl" .=) <$> _csDefaultConsentTtl])

-- | List of resource names of Consent resources.
--
-- /See:/ 'consentList' smart constructor.
newtype ConsentList =
  ConsentList'
    { _clConsents :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsentList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clConsents'
consentList
    :: ConsentList
consentList = ConsentList' {_clConsents = Nothing}


-- | The resource names of the Consents to evaluate against, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\`.
clConsents :: Lens' ConsentList [Text]
clConsents
  = lens _clConsents (\ s a -> s{_clConsents = a}) .
      _Default
      . _Coerce

instance FromJSON ConsentList where
        parseJSON
          = withObject "ConsentList"
              (\ o ->
                 ConsentList' <$> (o .:? "consents" .!= mempty))

instance ToJSON ConsentList where
        toJSON ConsentList'{..}
          = object
              (catMaybes [("consents" .=) <$> _clConsents])

--
-- /See:/ 'evaluateUserConsentsResponse' smart constructor.
data EvaluateUserConsentsResponse =
  EvaluateUserConsentsResponse'
    { _eucrNextPageToken :: !(Maybe Text)
    , _eucrResults :: !(Maybe [Result])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EvaluateUserConsentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eucrNextPageToken'
--
-- * 'eucrResults'
evaluateUserConsentsResponse
    :: EvaluateUserConsentsResponse
evaluateUserConsentsResponse =
  EvaluateUserConsentsResponse'
    {_eucrNextPageToken = Nothing, _eucrResults = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list. This token is valid for 72 hours after it is
-- created.
eucrNextPageToken :: Lens' EvaluateUserConsentsResponse (Maybe Text)
eucrNextPageToken
  = lens _eucrNextPageToken
      (\ s a -> s{_eucrNextPageToken = a})

-- | The consent evaluation result for each \`data_id\`.
eucrResults :: Lens' EvaluateUserConsentsResponse [Result]
eucrResults
  = lens _eucrResults (\ s a -> s{_eucrResults = a}) .
      _Default
      . _Coerce

instance FromJSON EvaluateUserConsentsResponse where
        parseJSON
          = withObject "EvaluateUserConsentsResponse"
              (\ o ->
                 EvaluateUserConsentsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "results" .!= mempty))

instance ToJSON EvaluateUserConsentsResponse where
        toJSON EvaluateUserConsentsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _eucrNextPageToken,
                  ("results" .=) <$> _eucrResults])

-- | Archives the specified User data mapping.
--
-- /See:/ 'archiveUserDataMAppingResponse' smart constructor.
data ArchiveUserDataMAppingResponse =
  ArchiveUserDataMAppingResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArchiveUserDataMAppingResponse' with the minimum fields required to make a request.
--
archiveUserDataMAppingResponse
    :: ArchiveUserDataMAppingResponse
archiveUserDataMAppingResponse = ArchiveUserDataMAppingResponse'


instance FromJSON ArchiveUserDataMAppingResponse
         where
        parseJSON
          = withObject "ArchiveUserDataMAppingResponse"
              (\ o -> pure ArchiveUserDataMAppingResponse')

instance ToJSON ArchiveUserDataMAppingResponse where
        toJSON = const emptyObject

-- | Optional. User-supplied key-value pairs used to organize consent stores.
-- Label keys must be between 1 and 63 characters long, have a UTF-8
-- encoding of maximum 128 bytes, and must conform to the following PCRE
-- regular expression: \\p{Ll}\\p{Lo}{0,62}. Label values must be between 1
-- and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and
-- must conform to the following PCRE regular expression:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}. No more than 64 labels can be associated
-- with a given store. For more information:
-- https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/labeling-resources
--
-- /See:/ 'consentStoreLabels' smart constructor.
newtype ConsentStoreLabels =
  ConsentStoreLabels'
    { _cslAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsentStoreLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslAddtional'
consentStoreLabels
    :: HashMap Text Text -- ^ 'cslAddtional'
    -> ConsentStoreLabels
consentStoreLabels pCslAddtional_ =
  ConsentStoreLabels' {_cslAddtional = _Coerce # pCslAddtional_}


cslAddtional :: Lens' ConsentStoreLabels (HashMap Text Text)
cslAddtional
  = lens _cslAddtional (\ s a -> s{_cslAddtional = a})
      . _Coerce

instance FromJSON ConsentStoreLabels where
        parseJSON
          = withObject "ConsentStoreLabels"
              (\ o -> ConsentStoreLabels' <$> (parseJSONObject o))

instance ToJSON ConsentStoreLabels where
        toJSON = toJSON . _cslAddtional

-- | The content of an HL7v2 message in a structured format as specified by a
-- schema.
--
-- /See:/ 'schematizedData' smart constructor.
data SchematizedData =
  SchematizedData'
    { _sdData :: !(Maybe Text)
    , _sdError :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SchematizedData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdData'
--
-- * 'sdError'
schematizedData
    :: SchematizedData
schematizedData = SchematizedData' {_sdData = Nothing, _sdError = Nothing}


-- | JSON output of the parser.
sdData :: Lens' SchematizedData (Maybe Text)
sdData = lens _sdData (\ s a -> s{_sdData = a})

-- | The error output of the parser.
sdError :: Lens' SchematizedData (Maybe Text)
sdError = lens _sdError (\ s a -> s{_sdError = a})

instance FromJSON SchematizedData where
        parseJSON
          = withObject "SchematizedData"
              (\ o ->
                 SchematizedData' <$>
                   (o .:? "data") <*> (o .:? "error"))

instance ToJSON SchematizedData where
        toJSON SchematizedData'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _sdData, ("error" .=) <$> _sdError])

-- | Specifies FHIR paths to match, and how to handle de-identification of
-- matching fields.
--
-- /See:/ 'fieldMetadata' smart constructor.
data FieldMetadata =
  FieldMetadata'
    { _fmAction :: !(Maybe FieldMetadataAction)
    , _fmPaths :: !(Maybe [Text])
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
-- separate components. For example, \"deceasedAge.unit\" is matched by
-- \"Deceased.Age.unit\". Supported types are: AdministrativeGenderCode,
-- Code, Date, DateTime, Decimal, HumanName, Id, LanguageCode, Markdown,
-- Oid, String, Uri, Uuid, Xhtml. Base64Binary is also supported, but may
-- only be kept as-is or have all the content removed.
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
    , _dcFhir :: !(Maybe FhirConfig)
    , _dcText :: !(Maybe TextConfig)
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

-- | Response for successful QueryAccessibleData operations. This structure
-- is included in the response upon operation completion.
--
-- /See:/ 'queryAccessibleDataResponse' smart constructor.
newtype QueryAccessibleDataResponse =
  QueryAccessibleDataResponse'
    { _qadrGcsURIs :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryAccessibleDataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qadrGcsURIs'
queryAccessibleDataResponse
    :: QueryAccessibleDataResponse
queryAccessibleDataResponse =
  QueryAccessibleDataResponse' {_qadrGcsURIs = Nothing}


-- | List of files, each of which contains a list of data_id(s) that are
-- consented for a specified use in the request.
qadrGcsURIs :: Lens' QueryAccessibleDataResponse [Text]
qadrGcsURIs
  = lens _qadrGcsURIs (\ s a -> s{_qadrGcsURIs = a}) .
      _Default
      . _Coerce

instance FromJSON QueryAccessibleDataResponse where
        parseJSON
          = withObject "QueryAccessibleDataResponse"
              (\ o ->
                 QueryAccessibleDataResponse' <$>
                   (o .:? "gcsUris" .!= mempty))

instance ToJSON QueryAccessibleDataResponse where
        toJSON QueryAccessibleDataResponse'{..}
          = object
              (catMaybes [("gcsUris" .=) <$> _qadrGcsURIs])

-- | Revokes the latest revision of the specified Consent by committing a new
-- revision with \`state\` updated to \`REVOKED\`. If the latest revision
-- of the given Consent is in the \`REVOKED\` state, no new revision is
-- committed.
--
-- /See:/ 'revokeConsentRequest' smart constructor.
newtype RevokeConsentRequest =
  RevokeConsentRequest'
    { _rConsentArtifact :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevokeConsentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rConsentArtifact'
revokeConsentRequest
    :: RevokeConsentRequest
revokeConsentRequest = RevokeConsentRequest' {_rConsentArtifact = Nothing}


-- | Optional. The resource name of the Consent artifact that contains proof
-- of the user\'s revocation of the Consent, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consentArtifacts\/{consent_artifact_id}\`.
rConsentArtifact :: Lens' RevokeConsentRequest (Maybe Text)
rConsentArtifact
  = lens _rConsentArtifact
      (\ s a -> s{_rConsentArtifact = a})

instance FromJSON RevokeConsentRequest where
        parseJSON
          = withObject "RevokeConsentRequest"
              (\ o ->
                 RevokeConsentRequest' <$> (o .:? "consentArtifact"))

instance ToJSON RevokeConsentRequest where
        toJSON RevokeConsentRequest'{..}
          = object
              (catMaybes
                 [("consentArtifact" .=) <$> _rConsentArtifact])

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

-- | Creates a new DICOM store with sensitive information de-identified.
--
-- /See:/ 'deidentifyDicomStoreRequest' smart constructor.
data DeidentifyDicomStoreRequest =
  DeidentifyDicomStoreRequest'
    { _ddsrConfig :: !(Maybe DeidentifyConfig)
    , _ddsrFilterConfig :: !(Maybe DicomFilterConfig)
    , _ddsrDestinationStore :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeidentifyDicomStoreRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddsrConfig'
--
-- * 'ddsrFilterConfig'
--
-- * 'ddsrDestinationStore'
deidentifyDicomStoreRequest
    :: DeidentifyDicomStoreRequest
deidentifyDicomStoreRequest =
  DeidentifyDicomStoreRequest'
    { _ddsrConfig = Nothing
    , _ddsrFilterConfig = Nothing
    , _ddsrDestinationStore = Nothing
    }


-- | De-identify configuration.
ddsrConfig :: Lens' DeidentifyDicomStoreRequest (Maybe DeidentifyConfig)
ddsrConfig
  = lens _ddsrConfig (\ s a -> s{_ddsrConfig = a})

-- | Filter configuration.
ddsrFilterConfig :: Lens' DeidentifyDicomStoreRequest (Maybe DicomFilterConfig)
ddsrFilterConfig
  = lens _ddsrFilterConfig
      (\ s a -> s{_ddsrFilterConfig = a})

-- | The name of the DICOM store to create and write the redacted data to.
-- For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
-- * The destination dataset must exist. * The source dataset and
-- destination dataset must both reside in the same location.
-- De-identifying data across multiple locations is not supported. * The
-- destination DICOM store must not exist. * The caller must have the
-- necessary permissions to create the destination DICOM store.
ddsrDestinationStore :: Lens' DeidentifyDicomStoreRequest (Maybe Text)
ddsrDestinationStore
  = lens _ddsrDestinationStore
      (\ s a -> s{_ddsrDestinationStore = a})

instance FromJSON DeidentifyDicomStoreRequest where
        parseJSON
          = withObject "DeidentifyDicomStoreRequest"
              (\ o ->
                 DeidentifyDicomStoreRequest' <$>
                   (o .:? "config") <*> (o .:? "filterConfig") <*>
                     (o .:? "destinationStore"))

instance ToJSON DeidentifyDicomStoreRequest where
        toJSON DeidentifyDicomStoreRequest'{..}
          = object
              (catMaybes
                 [("config" .=) <$> _ddsrConfig,
                  ("filterConfig" .=) <$> _ddsrFilterConfig,
                  ("destinationStore" .=) <$> _ddsrDestinationStore])

-- | When using the INSPECT_AND_TRANSFORM action, each match is replaced with
-- the name of the info_type. For example, \"My name is Jane\" becomes \"My
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

--
-- /See:/ 'listConsentArtifactsResponse' smart constructor.
data ListConsentArtifactsResponse =
  ListConsentArtifactsResponse'
    { _lcarNextPageToken :: !(Maybe Text)
    , _lcarConsentArtifacts :: !(Maybe [ConsentArtifact])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListConsentArtifactsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcarNextPageToken'
--
-- * 'lcarConsentArtifacts'
listConsentArtifactsResponse
    :: ListConsentArtifactsResponse
listConsentArtifactsResponse =
  ListConsentArtifactsResponse'
    {_lcarNextPageToken = Nothing, _lcarConsentArtifacts = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lcarNextPageToken :: Lens' ListConsentArtifactsResponse (Maybe Text)
lcarNextPageToken
  = lens _lcarNextPageToken
      (\ s a -> s{_lcarNextPageToken = a})

-- | The returned Consent artifacts. The maximum number of artifacts returned
-- is determined by the value of page_size in the
-- ListConsentArtifactsRequest.
lcarConsentArtifacts :: Lens' ListConsentArtifactsResponse [ConsentArtifact]
lcarConsentArtifacts
  = lens _lcarConsentArtifacts
      (\ s a -> s{_lcarConsentArtifacts = a})
      . _Default
      . _Coerce

instance FromJSON ListConsentArtifactsResponse where
        parseJSON
          = withObject "ListConsentArtifactsResponse"
              (\ o ->
                 ListConsentArtifactsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "consentArtifacts" .!= mempty))

instance ToJSON ListConsentArtifactsResponse where
        toJSON ListConsentArtifactsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcarNextPageToken,
                  ("consentArtifacts" .=) <$> _lcarConsentArtifacts])

-- | Acknowledges that a message has been ingested into the specified HL7v2
-- store.
--
-- /See:/ 'ingestMessageResponse' smart constructor.
data IngestMessageResponse =
  IngestMessageResponse'
    { _imrHl7Ack :: !(Maybe Bytes)
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
    , _lhvsrHl7V2Stores :: !(Maybe [Hl7V2Store])
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

-- | The resource names of all evaluated Consents mapped to their evaluation.
--
-- /See:/ 'checkDataAccessResponseConsentDetails' smart constructor.
newtype CheckDataAccessResponseConsentDetails =
  CheckDataAccessResponseConsentDetails'
    { _cdarcdAddtional :: HashMap Text ConsentEvaluation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckDataAccessResponseConsentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdarcdAddtional'
checkDataAccessResponseConsentDetails
    :: HashMap Text ConsentEvaluation -- ^ 'cdarcdAddtional'
    -> CheckDataAccessResponseConsentDetails
checkDataAccessResponseConsentDetails pCdarcdAddtional_ =
  CheckDataAccessResponseConsentDetails'
    {_cdarcdAddtional = _Coerce # pCdarcdAddtional_}


cdarcdAddtional :: Lens' CheckDataAccessResponseConsentDetails (HashMap Text ConsentEvaluation)
cdarcdAddtional
  = lens _cdarcdAddtional
      (\ s a -> s{_cdarcdAddtional = a})
      . _Coerce

instance FromJSON
           CheckDataAccessResponseConsentDetails
         where
        parseJSON
          = withObject "CheckDataAccessResponseConsentDetails"
              (\ o ->
                 CheckDataAccessResponseConsentDetails' <$>
                   (parseJSONObject o))

instance ToJSON CheckDataAccessResponseConsentDetails
         where
        toJSON = toJSON . _cdarcdAddtional

-- | Optional. Metadata associated with the Consent artifact. For example,
-- the consent locale or user agent version.
--
-- /See:/ 'consentArtifactMetadata' smart constructor.
newtype ConsentArtifactMetadata =
  ConsentArtifactMetadata'
    { _camAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsentArtifactMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camAddtional'
consentArtifactMetadata
    :: HashMap Text Text -- ^ 'camAddtional'
    -> ConsentArtifactMetadata
consentArtifactMetadata pCamAddtional_ =
  ConsentArtifactMetadata' {_camAddtional = _Coerce # pCamAddtional_}


camAddtional :: Lens' ConsentArtifactMetadata (HashMap Text Text)
camAddtional
  = lens _camAddtional (\ s a -> s{_camAddtional = a})
      . _Coerce

instance FromJSON ConsentArtifactMetadata where
        parseJSON
          = withObject "ConsentArtifactMetadata"
              (\ o ->
                 ConsentArtifactMetadata' <$> (parseJSONObject o))

instance ToJSON ConsentArtifactMetadata where
        toJSON = toJSON . _camAddtional

-- | Request to import resources.
--
-- /See:/ 'importResourcesRequest' smart constructor.
data ImportResourcesRequest =
  ImportResourcesRequest'
    { _irrGcsSource :: !(Maybe GoogleCloudHealthcareV1FhirGcsSource)
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


-- | Cloud Storage source data location and import configuration. The
-- Healthcare Service Agent account requires the
-- \`roles\/storage.objectAdmin\` role on the Cloud Storage location. Each
-- Cloud Storage object should be a text file that contains the format
-- specified in ContentStructure.
irrGcsSource :: Lens' ImportResourcesRequest (Maybe GoogleCloudHealthcareV1FhirGcsSource)
irrGcsSource
  = lens _irrGcsSource (\ s a -> s{_irrGcsSource = a})

-- | The content structure in the source location. If not specified, the
-- server treats the input source files as BUNDLE.
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

-- | Filter configuration.
--
-- /See:/ 'fhirFilter' smart constructor.
newtype FhirFilter =
  FhirFilter'
    { _ffResources :: Maybe Resources
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FhirFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ffResources'
fhirFilter
    :: FhirFilter
fhirFilter = FhirFilter' {_ffResources = Nothing}


-- | List of resources to include in the output. If this list is empty or not
-- specified, all resources are included in the output.
ffResources :: Lens' FhirFilter (Maybe Resources)
ffResources
  = lens _ffResources (\ s a -> s{_ffResources = a})

instance FromJSON FhirFilter where
        parseJSON
          = withObject "FhirFilter"
              (\ o -> FhirFilter' <$> (o .:? "resources"))

instance ToJSON FhirFilter where
        toJSON FhirFilter'{..}
          = object
              (catMaybes [("resources" .=) <$> _ffResources])

-- | The configuration for the parser. It determines how the server parses
-- the messages.
--
-- /See:/ 'parserConfig' smart constructor.
data ParserConfig =
  ParserConfig'
    { _pcSegmentTerminator :: !(Maybe Bytes)
    , _pcSchema :: !(Maybe SchemaPackage)
    , _pcAllowNullHeader :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParserConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcSegmentTerminator'
--
-- * 'pcSchema'
--
-- * 'pcAllowNullHeader'
parserConfig
    :: ParserConfig
parserConfig =
  ParserConfig'
    { _pcSegmentTerminator = Nothing
    , _pcSchema = Nothing
    , _pcAllowNullHeader = Nothing
    }


-- | Byte(s) to use as the segment terminator. If this is unset, \'\\r\' is
-- used as segment terminator, matching the HL7 version 2 specification.
pcSegmentTerminator :: Lens' ParserConfig (Maybe ByteString)
pcSegmentTerminator
  = lens _pcSegmentTerminator
      (\ s a -> s{_pcSegmentTerminator = a})
      . mapping _Bytes

-- | Schemas used to parse messages in this store, if schematized parsing is
-- desired.
pcSchema :: Lens' ParserConfig (Maybe SchemaPackage)
pcSchema = lens _pcSchema (\ s a -> s{_pcSchema = a})

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
                   (o .:? "segmentTerminator") <*> (o .:? "schema") <*>
                     (o .:? "allowNullHeader"))

instance ToJSON ParserConfig where
        toJSON ParserConfig'{..}
          = object
              (catMaybes
                 [("segmentTerminator" .=) <$> _pcSegmentTerminator,
                  ("schema" .=) <$> _pcSchema,
                  ("allowNullHeader" .=) <$> _pcAllowNullHeader])

-- | The values of request attributes associated with this access request.
--
-- /See:/ 'checkDataAccessRequestRequestAttributes' smart constructor.
newtype CheckDataAccessRequestRequestAttributes =
  CheckDataAccessRequestRequestAttributes'
    { _cdarraAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckDataAccessRequestRequestAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdarraAddtional'
checkDataAccessRequestRequestAttributes
    :: HashMap Text Text -- ^ 'cdarraAddtional'
    -> CheckDataAccessRequestRequestAttributes
checkDataAccessRequestRequestAttributes pCdarraAddtional_ =
  CheckDataAccessRequestRequestAttributes'
    {_cdarraAddtional = _Coerce # pCdarraAddtional_}


cdarraAddtional :: Lens' CheckDataAccessRequestRequestAttributes (HashMap Text Text)
cdarraAddtional
  = lens _cdarraAddtional
      (\ s a -> s{_cdarraAddtional = a})
      . _Coerce

instance FromJSON
           CheckDataAccessRequestRequestAttributes
         where
        parseJSON
          = withObject
              "CheckDataAccessRequestRequestAttributes"
              (\ o ->
                 CheckDataAccessRequestRequestAttributes' <$>
                   (parseJSONObject o))

instance ToJSON
           CheckDataAccessRequestRequestAttributes
         where
        toJSON = toJSON . _cdarraAddtional

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
    { _httpbExtensions :: !(Maybe [HTTPBodyExtensionsItem])
    , _httpbData :: !(Maybe Bytes)
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
    , _ldsrDataSets :: !(Maybe [DataSet])
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

-- | Root config message for HL7v2 schema. This contains a schema structure
-- of groups and segments, and filters that determine which messages to
-- apply the schema structure to.
--
-- /See:/ 'hl7SchemaConfig' smart constructor.
data Hl7SchemaConfig =
  Hl7SchemaConfig'
    { _hscMessageSchemaConfigs :: !(Maybe Hl7SchemaConfigMessageSchemaConfigs)
    , _hscVersion :: !(Maybe [VersionSource])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Hl7SchemaConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hscMessageSchemaConfigs'
--
-- * 'hscVersion'
hl7SchemaConfig
    :: Hl7SchemaConfig
hl7SchemaConfig =
  Hl7SchemaConfig' {_hscMessageSchemaConfigs = Nothing, _hscVersion = Nothing}


-- | Map from each HL7v2 message type and trigger event pair, such as
-- ADT_A04, to its schema configuration root group.
hscMessageSchemaConfigs :: Lens' Hl7SchemaConfig (Maybe Hl7SchemaConfigMessageSchemaConfigs)
hscMessageSchemaConfigs
  = lens _hscMessageSchemaConfigs
      (\ s a -> s{_hscMessageSchemaConfigs = a})

-- | Each VersionSource is tested and only if they all match is the schema
-- used for the message.
hscVersion :: Lens' Hl7SchemaConfig [VersionSource]
hscVersion
  = lens _hscVersion (\ s a -> s{_hscVersion = a}) .
      _Default
      . _Coerce

instance FromJSON Hl7SchemaConfig where
        parseJSON
          = withObject "Hl7SchemaConfig"
              (\ o ->
                 Hl7SchemaConfig' <$>
                   (o .:? "messageSchemaConfigs") <*>
                     (o .:? "version" .!= mempty))

instance ToJSON Hl7SchemaConfig where
        toJSON Hl7SchemaConfig'{..}
          = object
              (catMaybes
                 [("messageSchemaConfigs" .=) <$>
                    _hscMessageSchemaConfigs,
                  ("version" .=) <$> _hscVersion])

-- | The detailed evaluation of a particular Consent.
--
-- /See:/ 'consentEvaluation' smart constructor.
newtype ConsentEvaluation =
  ConsentEvaluation'
    { _ceEvaluationResult :: Maybe ConsentEvaluationEvaluationResult
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsentEvaluation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceEvaluationResult'
consentEvaluation
    :: ConsentEvaluation
consentEvaluation = ConsentEvaluation' {_ceEvaluationResult = Nothing}


-- | The evaluation result.
ceEvaluationResult :: Lens' ConsentEvaluation (Maybe ConsentEvaluationEvaluationResult)
ceEvaluationResult
  = lens _ceEvaluationResult
      (\ s a -> s{_ceEvaluationResult = a})

instance FromJSON ConsentEvaluation where
        parseJSON
          = withObject "ConsentEvaluation"
              (\ o ->
                 ConsentEvaluation' <$> (o .:? "evaluationResult"))

instance ToJSON ConsentEvaluation where
        toJSON ConsentEvaluation'{..}
          = object
              (catMaybes
                 [("evaluationResult" .=) <$> _ceEvaluationResult])

-- | Required. The values of request attributes associated with this access
-- request.
--
-- /See:/ 'evaluateUserConsentsRequestRequestAttributes' smart constructor.
newtype EvaluateUserConsentsRequestRequestAttributes =
  EvaluateUserConsentsRequestRequestAttributes'
    { _eucrraAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EvaluateUserConsentsRequestRequestAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eucrraAddtional'
evaluateUserConsentsRequestRequestAttributes
    :: HashMap Text Text -- ^ 'eucrraAddtional'
    -> EvaluateUserConsentsRequestRequestAttributes
evaluateUserConsentsRequestRequestAttributes pEucrraAddtional_ =
  EvaluateUserConsentsRequestRequestAttributes'
    {_eucrraAddtional = _Coerce # pEucrraAddtional_}


eucrraAddtional :: Lens' EvaluateUserConsentsRequestRequestAttributes (HashMap Text Text)
eucrraAddtional
  = lens _eucrraAddtional
      (\ s a -> s{_eucrraAddtional = a})
      . _Coerce

instance FromJSON
           EvaluateUserConsentsRequestRequestAttributes
         where
        parseJSON
          = withObject
              "EvaluateUserConsentsRequestRequestAttributes"
              (\ o ->
                 EvaluateUserConsentsRequestRequestAttributes' <$>
                   (parseJSONObject o))

instance ToJSON
           EvaluateUserConsentsRequestRequestAttributes
         where
        toJSON = toJSON . _eucrraAddtional

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

-- | Lists the FHIR stores in the given dataset.
--
-- /See:/ 'listFhirStoresResponse' smart constructor.
data ListFhirStoresResponse =
  ListFhirStoresResponse'
    { _lfsrNextPageToken :: !(Maybe Text)
    , _lfsrFhirStores :: !(Maybe [FhirStore])
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

-- | A type definition for some HL7v2 type (incl. Segments and Datatypes).
--
-- /See:/ 'type'' smart constructor.
data Type =
  Type'
    { _tName :: !(Maybe Text)
    , _tPrimitive :: !(Maybe TypePrimitive)
    , _tFields :: !(Maybe [Field])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Type' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tName'
--
-- * 'tPrimitive'
--
-- * 'tFields'
type'
    :: Type
type' = Type' {_tName = Nothing, _tPrimitive = Nothing, _tFields = Nothing}


-- | The name of this type. This would be the segment or datatype name. For
-- example, \"PID\" or \"XPN\".
tName :: Lens' Type (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | If this is a primitive type then this field is the type of the primitive
-- For example, STRING. Leave unspecified for composite types.
tPrimitive :: Lens' Type (Maybe TypePrimitive)
tPrimitive
  = lens _tPrimitive (\ s a -> s{_tPrimitive = a})

-- | The (sub) fields this type has (if not primitive).
tFields :: Lens' Type [Field]
tFields
  = lens _tFields (\ s a -> s{_tFields = a}) . _Default
      . _Coerce

instance FromJSON Type where
        parseJSON
          = withObject "Type"
              (\ o ->
                 Type' <$>
                   (o .:? "name") <*> (o .:? "primitive") <*>
                     (o .:? "fields" .!= mempty))

instance ToJSON Type where
        toJSON Type'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _tName,
                  ("primitive" .=) <$> _tPrimitive,
                  ("fields" .=) <$> _tFields])

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
    { _omLogsURL :: !(Maybe Text)
    , _omCounter :: !(Maybe ProgressCounter)
    , _omEndTime :: !(Maybe DateTime')
    , _omAPIMethodName :: !(Maybe Text)
    , _omCancelRequested :: !(Maybe Bool)
    , _omCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omLogsURL'
--
-- * 'omCounter'
--
-- * 'omEndTime'
--
-- * 'omAPIMethodName'
--
-- * 'omCancelRequested'
--
-- * 'omCreateTime'
operationMetadata
    :: OperationMetadata
operationMetadata =
  OperationMetadata'
    { _omLogsURL = Nothing
    , _omCounter = Nothing
    , _omEndTime = Nothing
    , _omAPIMethodName = Nothing
    , _omCancelRequested = Nothing
    , _omCreateTime = Nothing
    }


-- | A link to audit and error logs in the log viewer. Error logs are
-- generated only by some operations, listed at [Viewing error logs in
-- Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging).
omLogsURL :: Lens' OperationMetadata (Maybe Text)
omLogsURL
  = lens _omLogsURL (\ s a -> s{_omLogsURL = a})

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

-- | Specifies if cancellation was requested for the operation.
omCancelRequested :: Lens' OperationMetadata (Maybe Bool)
omCancelRequested
  = lens _omCancelRequested
      (\ s a -> s{_omCancelRequested = a})

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
                   (o .:? "logsUrl") <*> (o .:? "counter") <*>
                     (o .:? "endTime")
                     <*> (o .:? "apiMethodName")
                     <*> (o .:? "cancelRequested")
                     <*> (o .:? "createTime"))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata'{..}
          = object
              (catMaybes
                 [("logsUrl" .=) <$> _omLogsURL,
                  ("counter" .=) <$> _omCounter,
                  ("endTime" .=) <$> _omEndTime,
                  ("apiMethodName" .=) <$> _omAPIMethodName,
                  ("cancelRequested" .=) <$> _omCancelRequested,
                  ("createTime" .=) <$> _omCreateTime])

-- | A complete HL7v2 message. See [Introduction to HL7 Standards]
-- (https:\/\/www.hl7.org\/implement\/standards\/index.cfm?ref=common) for
-- details on the standard.
--
-- /See:/ 'message' smart constructor.
data Message =
  Message'
    { _mData :: !(Maybe Bytes)
    , _mMessageType :: !(Maybe Text)
    , _mName :: !(Maybe Text)
    , _mSchematizedData :: !(Maybe SchematizedData)
    , _mPatientIds :: !(Maybe [PatientId])
    , _mLabels :: !(Maybe MessageLabels)
    , _mSendTime :: !(Maybe DateTime')
    , _mSendFacility :: !(Maybe Text)
    , _mCreateTime :: !(Maybe DateTime')
    , _mParsedData :: !(Maybe ParsedData)
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
-- * 'mSchematizedData'
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
    , _mSchematizedData = Nothing
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

-- | The message type for this message. MSH-9.1.
mMessageType :: Lens' Message (Maybe Text)
mMessageType
  = lens _mMessageType (\ s a -> s{_mMessageType = a})

-- | Resource name of the Message, of the form
-- \`projects\/{project_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7_v2_store_id}\/messages\/{message_id}\`.
-- Assigned by the server.
mName :: Lens' Message (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | The parsed version of the raw message data schematized according to this
-- store\'s schemas and type definitions.
mSchematizedData :: Lens' Message (Maybe SchematizedData)
mSchematizedData
  = lens _mSchematizedData
      (\ s a -> s{_mSchematizedData = a})

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

-- | Output only. The datetime when the message was created. Set by the
-- server.
mCreateTime :: Lens' Message (Maybe UTCTime)
mCreateTime
  = lens _mCreateTime (\ s a -> s{_mCreateTime = a}) .
      mapping _DateTime

-- | Output only. The parsed version of the raw message data.
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
                     <*> (o .:? "schematizedData")
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
                  ("schematizedData" .=) <$> _mSchematizedData,
                  ("patientIds" .=) <$> _mPatientIds,
                  ("labels" .=) <$> _mLabels,
                  ("sendTime" .=) <$> _mSendTime,
                  ("sendFacility" .=) <$> _mSendFacility,
                  ("createTime" .=) <$> _mCreateTime,
                  ("parsedData" .=) <$> _mParsedData])

-- | Map from each HL7v2 message type and trigger event pair, such as
-- ADT_A04, to its schema configuration root group.
--
-- /See:/ 'hl7SchemaConfigMessageSchemaConfigs' smart constructor.
newtype Hl7SchemaConfigMessageSchemaConfigs =
  Hl7SchemaConfigMessageSchemaConfigs'
    { _hscmscAddtional :: HashMap Text SchemaGroup
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Hl7SchemaConfigMessageSchemaConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hscmscAddtional'
hl7SchemaConfigMessageSchemaConfigs
    :: HashMap Text SchemaGroup -- ^ 'hscmscAddtional'
    -> Hl7SchemaConfigMessageSchemaConfigs
hl7SchemaConfigMessageSchemaConfigs pHscmscAddtional_ =
  Hl7SchemaConfigMessageSchemaConfigs'
    {_hscmscAddtional = _Coerce # pHscmscAddtional_}


hscmscAddtional :: Lens' Hl7SchemaConfigMessageSchemaConfigs (HashMap Text SchemaGroup)
hscmscAddtional
  = lens _hscmscAddtional
      (\ s a -> s{_hscmscAddtional = a})
      . _Coerce

instance FromJSON Hl7SchemaConfigMessageSchemaConfigs
         where
        parseJSON
          = withObject "Hl7SchemaConfigMessageSchemaConfigs"
              (\ o ->
                 Hl7SchemaConfigMessageSchemaConfigs' <$>
                   (parseJSONObject o))

instance ToJSON Hl7SchemaConfigMessageSchemaConfigs
         where
        toJSON = toJSON . _hscmscAddtional

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
-- this key. A default key is generated for each Deidentify operation and
-- is used wherever crypto_key is not specified.
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
    , _dName :: !(Maybe Text)
    , _dLabels :: !(Maybe DicomStoreLabels)
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

-- | Resource name of the DICOM store, of the form
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

-- | The Cloud Storage location for export.
--
-- /See:/ 'googleCloudHealthcareV1ConsentGcsDestination' smart constructor.
newtype GoogleCloudHealthcareV1ConsentGcsDestination =
  GoogleCloudHealthcareV1ConsentGcsDestination'
    { _gchvcgdURIPrefix :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1ConsentGcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvcgdURIPrefix'
googleCloudHealthcareV1ConsentGcsDestination
    :: GoogleCloudHealthcareV1ConsentGcsDestination
googleCloudHealthcareV1ConsentGcsDestination =
  GoogleCloudHealthcareV1ConsentGcsDestination' {_gchvcgdURIPrefix = Nothing}


-- | URI for a Cloud Storage directory where the server writes result files,
-- in the format \`gs:\/\/{bucket-id}\/{path\/to\/destination\/dir}\`. If
-- there is no trailing slash, the service appends one when composing the
-- object path. The user is responsible for creating the Cloud Storage
-- bucket and directory referenced in \`uri_prefix\`.
gchvcgdURIPrefix :: Lens' GoogleCloudHealthcareV1ConsentGcsDestination (Maybe Text)
gchvcgdURIPrefix
  = lens _gchvcgdURIPrefix
      (\ s a -> s{_gchvcgdURIPrefix = a})

instance FromJSON
           GoogleCloudHealthcareV1ConsentGcsDestination
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1ConsentGcsDestination"
              (\ o ->
                 GoogleCloudHealthcareV1ConsentGcsDestination' <$>
                   (o .:? "uriPrefix"))

instance ToJSON
           GoogleCloudHealthcareV1ConsentGcsDestination
         where
        toJSON
          GoogleCloudHealthcareV1ConsentGcsDestination'{..}
          = object
              (catMaybes [("uriPrefix" .=) <$> _gchvcgdURIPrefix])

-- | The values of request attributes associated with this access request.
--
-- /See:/ 'queryAccessibleDataRequestRequestAttributes' smart constructor.
newtype QueryAccessibleDataRequestRequestAttributes =
  QueryAccessibleDataRequestRequestAttributes'
    { _qAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryAccessibleDataRequestRequestAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qAddtional'
queryAccessibleDataRequestRequestAttributes
    :: HashMap Text Text -- ^ 'qAddtional'
    -> QueryAccessibleDataRequestRequestAttributes
queryAccessibleDataRequestRequestAttributes pQAddtional_ =
  QueryAccessibleDataRequestRequestAttributes'
    {_qAddtional = _Coerce # pQAddtional_}


qAddtional :: Lens' QueryAccessibleDataRequestRequestAttributes (HashMap Text Text)
qAddtional
  = lens _qAddtional (\ s a -> s{_qAddtional = a}) .
      _Coerce

instance FromJSON
           QueryAccessibleDataRequestRequestAttributes
         where
        parseJSON
          = withObject
              "QueryAccessibleDataRequestRequestAttributes"
              (\ o ->
                 QueryAccessibleDataRequestRequestAttributes' <$>
                   (parseJSONObject o))

instance ToJSON
           QueryAccessibleDataRequestRequestAttributes
         where
        toJSON = toJSON . _qAddtional

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

-- | Optional. The values of resource attributes associated with the
-- resources being requested. If no values are specified, then all
-- resources are queried.
--
-- /See:/ 'evaluateUserConsentsRequestResourceAttributes' smart constructor.
newtype EvaluateUserConsentsRequestResourceAttributes =
  EvaluateUserConsentsRequestResourceAttributes'
    { _eAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EvaluateUserConsentsRequestResourceAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAddtional'
evaluateUserConsentsRequestResourceAttributes
    :: HashMap Text Text -- ^ 'eAddtional'
    -> EvaluateUserConsentsRequestResourceAttributes
evaluateUserConsentsRequestResourceAttributes pEAddtional_ =
  EvaluateUserConsentsRequestResourceAttributes'
    {_eAddtional = _Coerce # pEAddtional_}


eAddtional :: Lens' EvaluateUserConsentsRequestResourceAttributes (HashMap Text Text)
eAddtional
  = lens _eAddtional (\ s a -> s{_eAddtional = a}) .
      _Coerce

instance FromJSON
           EvaluateUserConsentsRequestResourceAttributes
         where
        parseJSON
          = withObject
              "EvaluateUserConsentsRequestResourceAttributes"
              (\ o ->
                 EvaluateUserConsentsRequestResourceAttributes' <$>
                   (parseJSONObject o))

instance ToJSON
           EvaluateUserConsentsRequestResourceAttributes
         where
        toJSON = toJSON . _eAddtional

-- | A segment in a structured format.
--
-- /See:/ 'segment' smart constructor.
data Segment =
  Segment'
    { _sSetId :: !(Maybe Text)
    , _sSegmentId :: !(Maybe Text)
    , _sFields :: !(Maybe SegmentFields)
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


-- | Set ID for segments that can be in a set. This can be empty if it\'s
-- missing or isn\'t applicable.
sSetId :: Lens' Segment (Maybe Text)
sSetId = lens _sSetId (\ s a -> s{_sSetId = a})

-- | A string that indicates the type of segment. For example, EVN or PID.
sSegmentId :: Lens' Segment (Maybe Text)
sSegmentId
  = lens _sSegmentId (\ s a -> s{_sSegmentId = a})

-- | A mapping from the positional location to the value. The key string uses
-- zero-based indexes separated by dots to identify Fields, components and
-- sub-components. A bracket notation is also used to identify different
-- instances of a repeated field. Regex for key:
-- (\\d+)(\\[\\d+\\])?(.\\d+)?(.\\d+)? Examples of (key, value) pairs: *
-- (0.1, \"hemoglobin\") denotes that the first component of Field 0 has
-- the value \"hemoglobin\". * (1.1.2, \"CBC\") denotes that the second
-- sub-component of the first component of Field 1 has the value \"CBC\". *
-- (1[0].1, \"HbA1c\") denotes that the first component of the first
-- Instance of Field 1, which is repeated, has the value \"HbA1c\".
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


-- | The FHIR resource type to search, such as Patient or Observation. For a
-- complete list, see the FHIR Resource Index
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/resourcelist.html),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/resourcelist.html),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/resourcelist.html)).
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
    { _dConfig :: !(Maybe DeidentifyConfig)
    , _dDestinationDataSet :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeidentifyDataSetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dConfig'
--
-- * 'dDestinationDataSet'
deidentifyDataSetRequest
    :: DeidentifyDataSetRequest
deidentifyDataSetRequest =
  DeidentifyDataSetRequest' {_dConfig = Nothing, _dDestinationDataSet = Nothing}


-- | Deidentify configuration.
dConfig :: Lens' DeidentifyDataSetRequest (Maybe DeidentifyConfig)
dConfig = lens _dConfig (\ s a -> s{_dConfig = a})

-- | The name of the dataset resource to create and write the redacted data
-- to. * The destination dataset must not exist. * The destination dataset
-- must be in the same location as the source dataset. De-identifying data
-- across multiple locations is not supported.
dDestinationDataSet :: Lens' DeidentifyDataSetRequest (Maybe Text)
dDestinationDataSet
  = lens _dDestinationDataSet
      (\ s a -> s{_dDestinationDataSet = a})

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
                 [("config" .=) <$> _dConfig,
                  ("destinationDataset" .=) <$> _dDestinationDataSet])

-- | Response when all resources export successfully. This structure is
-- included in the response to describe the detailed outcome after the
-- operation finishes successfully.
--
-- /See:/ 'exportResourcesResponse' smart constructor.
data ExportResourcesResponse =
  ExportResourcesResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportResourcesResponse' with the minimum fields required to make a request.
--
exportResourcesResponse
    :: ExportResourcesResponse
exportResourcesResponse = ExportResourcesResponse'


instance FromJSON ExportResourcesResponse where
        parseJSON
          = withObject "ExportResourcesResponse"
              (\ o -> pure ExportResourcesResponse')

instance ToJSON ExportResourcesResponse where
        toJSON = const emptyObject

-- | A patient identifier and associated type.
--
-- /See:/ 'patientId' smart constructor.
data PatientId =
  PatientId'
    { _piValue :: !(Maybe Text)
    , _piType :: !(Maybe Text)
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

-- | ID type. For example, MRN or NHS.
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
data DicomConfig =
  DicomConfig'
    { _dcSkipIdRedaction :: !(Maybe Bool)
    , _dcKeepList :: !(Maybe TagFilterList)
    , _dcRemoveList :: !(Maybe TagFilterList)
    , _dcFilterProFile :: !(Maybe DicomConfigFilterProFile)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DicomConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcSkipIdRedaction'
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
    { _dcSkipIdRedaction = Nothing
    , _dcKeepList = Nothing
    , _dcRemoveList = Nothing
    , _dcFilterProFile = Nothing
    }


-- | If true, skip replacing StudyInstanceUID, SeriesInstanceUID,
-- SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched.
-- The Cloud Healthcare API regenerates these UIDs by default based on the
-- DICOM Standard\'s reasoning: \"Whilst these UIDs cannot be mapped
-- directly to an individual out of context, given access to the original
-- images, or to a database of the original images containing the UIDs, it
-- would be possible to recover the individual\'s identity.\"
-- http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/chtml\/part15\/sect_E.3.9.html
dcSkipIdRedaction :: Lens' DicomConfig (Maybe Bool)
dcSkipIdRedaction
  = lens _dcSkipIdRedaction
      (\ s a -> s{_dcSkipIdRedaction = a})

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
                   (o .:? "skipIdRedaction") <*> (o .:? "keepList") <*>
                     (o .:? "removeList")
                     <*> (o .:? "filterProfile"))

instance ToJSON DicomConfig where
        toJSON DicomConfig'{..}
          = object
              (catMaybes
                 [("skipIdRedaction" .=) <$> _dcSkipIdRedaction,
                  ("keepList" .=) <$> _dcKeepList,
                  ("removeList" .=) <$> _dcRemoveList,
                  ("filterProfile" .=) <$> _dcFilterProFile])

-- | Contains configuration for streaming FHIR export.
--
-- /See:/ 'streamConfig' smart constructor.
data StreamConfig =
  StreamConfig'
    { _scBigQueryDestination :: !(Maybe GoogleCloudHealthcareV1FhirBigQueryDestination)
    , _scResourceTypes :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scBigQueryDestination'
--
-- * 'scResourceTypes'
streamConfig
    :: StreamConfig
streamConfig =
  StreamConfig' {_scBigQueryDestination = Nothing, _scResourceTypes = Nothing}


-- | The destination BigQuery structure that contains both the dataset
-- location and corresponding schema config. The output is organized in one
-- table per resource type. The server reuses the existing tables (if any)
-- that are named after the resource types. For example, \"Patient\",
-- \"Observation\". When there is no existing table for a given resource
-- type, the server attempts to create one. When a table schema doesn\'t
-- align with the schema config, either because of existing incompatible
-- schema or out of band incompatible modification, the server does not
-- stream in new data. BigQuery imposes a 1 MB limit on streaming insert
-- row size, therefore any resource mutation that generates more than 1 MB
-- of BigQuery data is not streamed. One resolution in this case is to
-- delete the incompatible table and let the server recreate one, though
-- the newly created table only contains data after the table recreation.
-- Results are appended to the corresponding BigQuery tables. Different
-- versions of the same resource are distinguishable by the meta.versionId
-- and meta.lastUpdated columns. The operation (CREATE\/UPDATE\/DELETE)
-- that results in the new version is recorded in the meta.tag. The tables
-- contain all historical resource versions since streaming was enabled.
-- For query convenience, the server also creates one view per table of the
-- same name containing only the current resource version. The streamed
-- data in the BigQuery dataset is not guaranteed to be completely unique.
-- The combination of the id and meta.versionId columns should ideally
-- identify a single unique row. But in rare cases, duplicates may exist.
-- At query time, users may use the SQL select statement to keep only one
-- of the duplicate rows given an id and meta.versionId pair.
-- Alternatively, the server created view mentioned above also filters out
-- duplicates. If a resource mutation cannot be streamed to BigQuery,
-- errors are logged to Cloud Logging. For more information, see [Viewing
-- error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging)).
scBigQueryDestination :: Lens' StreamConfig (Maybe GoogleCloudHealthcareV1FhirBigQueryDestination)
scBigQueryDestination
  = lens _scBigQueryDestination
      (\ s a -> s{_scBigQueryDestination = a})

-- | Supply a FHIR resource type (such as \"Patient\" or \"Observation\").
-- See https:\/\/www.hl7.org\/fhir\/valueset-resource-types.html for a list
-- of all FHIR resource types. The server treats an empty list as an intent
-- to stream all the supported resource types in this FHIR store.
scResourceTypes :: Lens' StreamConfig [Text]
scResourceTypes
  = lens _scResourceTypes
      (\ s a -> s{_scResourceTypes = a})
      . _Default
      . _Coerce

instance FromJSON StreamConfig where
        parseJSON
          = withObject "StreamConfig"
              (\ o ->
                 StreamConfig' <$>
                   (o .:? "bigqueryDestination") <*>
                     (o .:? "resourceTypes" .!= mempty))

instance ToJSON StreamConfig where
        toJSON StreamConfig'{..}
          = object
              (catMaybes
                 [("bigqueryDestination" .=) <$>
                    _scBigQueryDestination,
                  ("resourceTypes" .=) <$> _scResourceTypes])

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

-- | Creates a new FHIR store with sensitive information de-identified.
--
-- /See:/ 'deidentifyFhirStoreRequest' smart constructor.
data DeidentifyFhirStoreRequest =
  DeidentifyFhirStoreRequest'
    { _dfsrResourceFilter :: !(Maybe FhirFilter)
    , _dfsrConfig :: !(Maybe DeidentifyConfig)
    , _dfsrDestinationStore :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeidentifyFhirStoreRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsrResourceFilter'
--
-- * 'dfsrConfig'
--
-- * 'dfsrDestinationStore'
deidentifyFhirStoreRequest
    :: DeidentifyFhirStoreRequest
deidentifyFhirStoreRequest =
  DeidentifyFhirStoreRequest'
    { _dfsrResourceFilter = Nothing
    , _dfsrConfig = Nothing
    , _dfsrDestinationStore = Nothing
    }


-- | A filter specifying the resources to include in the output. If not
-- specified, all resources are included in the output.
dfsrResourceFilter :: Lens' DeidentifyFhirStoreRequest (Maybe FhirFilter)
dfsrResourceFilter
  = lens _dfsrResourceFilter
      (\ s a -> s{_dfsrResourceFilter = a})

-- | Deidentify configuration.
dfsrConfig :: Lens' DeidentifyFhirStoreRequest (Maybe DeidentifyConfig)
dfsrConfig
  = lens _dfsrConfig (\ s a -> s{_dfsrConfig = a})

-- | The name of the FHIR store to create and write the redacted data to. For
-- example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
-- * The destination dataset must exist. * The source dataset and
-- destination dataset must both reside in the same location.
-- De-identifying data across multiple locations is not supported. * The
-- destination FHIR store must exist. * The caller must have the
-- healthcare.fhirResources.update permission to write to the destination
-- FHIR store.
dfsrDestinationStore :: Lens' DeidentifyFhirStoreRequest (Maybe Text)
dfsrDestinationStore
  = lens _dfsrDestinationStore
      (\ s a -> s{_dfsrDestinationStore = a})

instance FromJSON DeidentifyFhirStoreRequest where
        parseJSON
          = withObject "DeidentifyFhirStoreRequest"
              (\ o ->
                 DeidentifyFhirStoreRequest' <$>
                   (o .:? "resourceFilter") <*> (o .:? "config") <*>
                     (o .:? "destinationStore"))

instance ToJSON DeidentifyFhirStoreRequest where
        toJSON DeidentifyFhirStoreRequest'{..}
          = object
              (catMaybes
                 [("resourceFilter" .=) <$> _dfsrResourceFilter,
                  ("config" .=) <$> _dfsrConfig,
                  ("destinationStore" .=) <$> _dfsrDestinationStore])

-- | Activates the latest revision of the specified Consent by committing a
-- new revision with \`state\` updated to \`ACTIVE\`. If the latest
-- revision of the given Consent is in the \`ACTIVE\` state, no new
-- revision is committed. A FAILED_PRECONDITION error occurs if the latest
-- revision of the given consent is in the \`REJECTED\` or \`REVOKED\`
-- state.
--
-- /See:/ 'activateConsentRequest' smart constructor.
data ActivateConsentRequest =
  ActivateConsentRequest'
    { _acrTtl :: !(Maybe GDuration)
    , _acrConsentArtifact :: !(Maybe Text)
    , _acrExpireTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivateConsentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrTtl'
--
-- * 'acrConsentArtifact'
--
-- * 'acrExpireTime'
activateConsentRequest
    :: ActivateConsentRequest
activateConsentRequest =
  ActivateConsentRequest'
    {_acrTtl = Nothing, _acrConsentArtifact = Nothing, _acrExpireTime = Nothing}


-- | The time to live for this Consent from when it is marked as active.
acrTtl :: Lens' ActivateConsentRequest (Maybe Scientific)
acrTtl
  = lens _acrTtl (\ s a -> s{_acrTtl = a}) .
      mapping _GDuration

-- | Required. The resource name of the Consent artifact that contains
-- documentation of the user\'s consent, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consentArtifacts\/{consent_artifact_id}\`.
-- If the draft Consent had a Consent artifact, this Consent artifact
-- overwrites it.
acrConsentArtifact :: Lens' ActivateConsentRequest (Maybe Text)
acrConsentArtifact
  = lens _acrConsentArtifact
      (\ s a -> s{_acrConsentArtifact = a})

-- | Timestamp in UTC of when this Consent is considered expired.
acrExpireTime :: Lens' ActivateConsentRequest (Maybe UTCTime)
acrExpireTime
  = lens _acrExpireTime
      (\ s a -> s{_acrExpireTime = a})
      . mapping _DateTime

instance FromJSON ActivateConsentRequest where
        parseJSON
          = withObject "ActivateConsentRequest"
              (\ o ->
                 ActivateConsentRequest' <$>
                   (o .:? "ttl") <*> (o .:? "consentArtifact") <*>
                     (o .:? "expireTime"))

instance ToJSON ActivateConsentRequest where
        toJSON ActivateConsentRequest'{..}
          = object
              (catMaybes
                 [("ttl" .=) <$> _acrTtl,
                  ("consentArtifact" .=) <$> _acrConsentArtifact,
                  ("expireTime" .=) <$> _acrExpireTime])

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
    , _lmrHl7V2Messages :: !(Maybe [Message])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListMessagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrNextPageToken'
--
-- * 'lmrHl7V2Messages'
listMessagesResponse
    :: ListMessagesResponse
listMessagesResponse =
  ListMessagesResponse'
    {_lmrNextPageToken = Nothing, _lmrHl7V2Messages = Nothing}


-- | Token to retrieve the next page of results or empty if there are no more
-- results in the list.
lmrNextPageToken :: Lens' ListMessagesResponse (Maybe Text)
lmrNextPageToken
  = lens _lmrNextPageToken
      (\ s a -> s{_lmrNextPageToken = a})

-- | The returned Messages. Won\'t be more Messages than the value of
-- page_size in the request. See view for populated fields.
lmrHl7V2Messages :: Lens' ListMessagesResponse [Message]
lmrHl7V2Messages
  = lens _lmrHl7V2Messages
      (\ s a -> s{_lmrHl7V2Messages = a})
      . _Default
      . _Coerce

instance FromJSON ListMessagesResponse where
        parseJSON
          = withObject "ListMessagesResponse"
              (\ o ->
                 ListMessagesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "hl7V2Messages" .!= mempty))

instance ToJSON ListMessagesResponse where
        toJSON ListMessagesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrNextPageToken,
                  ("hl7V2Messages" .=) <$> _lmrHl7V2Messages])

-- | The configuration for exporting to BigQuery.
--
-- /See:/ 'googleCloudHealthcareV1FhirBigQueryDestination' smart constructor.
data GoogleCloudHealthcareV1FhirBigQueryDestination =
  GoogleCloudHealthcareV1FhirBigQueryDestination'
    { _gchvfbqdWriteDisPosition :: !(Maybe GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition)
    , _gchvfbqdForce :: !(Maybe Bool)
    , _gchvfbqdSchemaConfig :: !(Maybe SchemaConfig)
    , _gchvfbqdDataSetURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1FhirBigQueryDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfbqdWriteDisPosition'
--
-- * 'gchvfbqdForce'
--
-- * 'gchvfbqdSchemaConfig'
--
-- * 'gchvfbqdDataSetURI'
googleCloudHealthcareV1FhirBigQueryDestination
    :: GoogleCloudHealthcareV1FhirBigQueryDestination
googleCloudHealthcareV1FhirBigQueryDestination =
  GoogleCloudHealthcareV1FhirBigQueryDestination'
    { _gchvfbqdWriteDisPosition = Nothing
    , _gchvfbqdForce = Nothing
    , _gchvfbqdSchemaConfig = Nothing
    , _gchvfbqdDataSetURI = Nothing
    }


-- | Determines if existing data in the destination dataset is overwritten,
-- appended to, or not written if the tables contain data. If a
-- write_disposition is specified, the \`force\` parameter is ignored.
gchvfbqdWriteDisPosition :: Lens' GoogleCloudHealthcareV1FhirBigQueryDestination (Maybe GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition)
gchvfbqdWriteDisPosition
  = lens _gchvfbqdWriteDisPosition
      (\ s a -> s{_gchvfbqdWriteDisPosition = a})

-- | If this flag is \`TRUE\`, all tables are deleted from the dataset before
-- the new exported tables are written. If the flag is not set and the
-- destination dataset contains tables, the export call returns an error.
-- If \`write_disposition\` is specified, this parameter is ignored.
-- force=false is equivalent to write_disposition=WRITE_EMPTY and
-- force=true is equivalent to write_disposition=WRITE_TRUNCATE.
gchvfbqdForce :: Lens' GoogleCloudHealthcareV1FhirBigQueryDestination (Maybe Bool)
gchvfbqdForce
  = lens _gchvfbqdForce
      (\ s a -> s{_gchvfbqdForce = a})

-- | The configuration for the exported BigQuery schema.
gchvfbqdSchemaConfig :: Lens' GoogleCloudHealthcareV1FhirBigQueryDestination (Maybe SchemaConfig)
gchvfbqdSchemaConfig
  = lens _gchvfbqdSchemaConfig
      (\ s a -> s{_gchvfbqdSchemaConfig = a})

-- | BigQuery URI to an existing dataset, up to 2000 characters long, in the
-- format \`bq:\/\/projectId.bqDatasetId\`.
gchvfbqdDataSetURI :: Lens' GoogleCloudHealthcareV1FhirBigQueryDestination (Maybe Text)
gchvfbqdDataSetURI
  = lens _gchvfbqdDataSetURI
      (\ s a -> s{_gchvfbqdDataSetURI = a})

instance FromJSON
           GoogleCloudHealthcareV1FhirBigQueryDestination
         where
        parseJSON
          = withObject
              "GoogleCloudHealthcareV1FhirBigQueryDestination"
              (\ o ->
                 GoogleCloudHealthcareV1FhirBigQueryDestination' <$>
                   (o .:? "writeDisposition") <*> (o .:? "force") <*>
                     (o .:? "schemaConfig")
                     <*> (o .:? "datasetUri"))

instance ToJSON
           GoogleCloudHealthcareV1FhirBigQueryDestination
         where
        toJSON
          GoogleCloudHealthcareV1FhirBigQueryDestination'{..}
          = object
              (catMaybes
                 [("writeDisposition" .=) <$>
                    _gchvfbqdWriteDisPosition,
                  ("force" .=) <$> _gchvfbqdForce,
                  ("schemaConfig" .=) <$> _gchvfbqdSchemaConfig,
                  ("datasetUri" .=) <$> _gchvfbqdDataSetURI])

-- | Checks if a particular data_id of a User data mapping in the given
-- consent store is consented for a given use.
--
-- /See:/ 'checkDataAccessResponse' smart constructor.
data CheckDataAccessResponse =
  CheckDataAccessResponse'
    { _cdarConsentDetails :: !(Maybe CheckDataAccessResponseConsentDetails)
    , _cdarConsented :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckDataAccessResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdarConsentDetails'
--
-- * 'cdarConsented'
checkDataAccessResponse
    :: CheckDataAccessResponse
checkDataAccessResponse =
  CheckDataAccessResponse'
    {_cdarConsentDetails = Nothing, _cdarConsented = Nothing}


-- | The resource names of all evaluated Consents mapped to their evaluation.
cdarConsentDetails :: Lens' CheckDataAccessResponse (Maybe CheckDataAccessResponseConsentDetails)
cdarConsentDetails
  = lens _cdarConsentDetails
      (\ s a -> s{_cdarConsentDetails = a})

-- | Whether the requested resource is consented for the given use.
cdarConsented :: Lens' CheckDataAccessResponse (Maybe Bool)
cdarConsented
  = lens _cdarConsented
      (\ s a -> s{_cdarConsented = a})

instance FromJSON CheckDataAccessResponse where
        parseJSON
          = withObject "CheckDataAccessResponse"
              (\ o ->
                 CheckDataAccessResponse' <$>
                   (o .:? "consentDetails") <*> (o .:? "consented"))

instance ToJSON CheckDataAccessResponse where
        toJSON CheckDataAccessResponse'{..}
          = object
              (catMaybes
                 [("consentDetails" .=) <$> _cdarConsentDetails,
                  ("consented" .=) <$> _cdarConsented])

-- | Specifies the configuration for importing data from Cloud Storage.
--
-- /See:/ 'googleCloudHealthcareV1FhirGcsSource' smart constructor.
newtype GoogleCloudHealthcareV1FhirGcsSource =
  GoogleCloudHealthcareV1FhirGcsSource'
    { _gchvfgsURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudHealthcareV1FhirGcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchvfgsURI'
googleCloudHealthcareV1FhirGcsSource
    :: GoogleCloudHealthcareV1FhirGcsSource
googleCloudHealthcareV1FhirGcsSource =
  GoogleCloudHealthcareV1FhirGcsSource' {_gchvfgsURI = Nothing}


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
gchvfgsURI :: Lens' GoogleCloudHealthcareV1FhirGcsSource (Maybe Text)
gchvfgsURI
  = lens _gchvfgsURI (\ s a -> s{_gchvfgsURI = a})

instance FromJSON
           GoogleCloudHealthcareV1FhirGcsSource
         where
        parseJSON
          = withObject "GoogleCloudHealthcareV1FhirGcsSource"
              (\ o ->
                 GoogleCloudHealthcareV1FhirGcsSource' <$>
                   (o .:? "uri"))

instance ToJSON GoogleCloudHealthcareV1FhirGcsSource
         where
        toJSON GoogleCloudHealthcareV1FhirGcsSource'{..}
          = object (catMaybes [("uri" .=) <$> _gchvfgsURI])

-- | Lists the DICOM stores in the given dataset.
--
-- /See:/ 'listDicomStoresResponse' smart constructor.
data ListDicomStoresResponse =
  ListDicomStoresResponse'
    { _lNextPageToken :: !(Maybe Text)
    , _lDicomStores :: !(Maybe [DicomStore])
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

-- | Optional. Metadata associated with the user\'s signature. For example,
-- the user\'s name or the user\'s title.
--
-- /See:/ 'signatureMetadata' smart constructor.
newtype SignatureMetadata =
  SignatureMetadata'
    { _smAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SignatureMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smAddtional'
signatureMetadata
    :: HashMap Text Text -- ^ 'smAddtional'
    -> SignatureMetadata
signatureMetadata pSmAddtional_ =
  SignatureMetadata' {_smAddtional = _Coerce # pSmAddtional_}


smAddtional :: Lens' SignatureMetadata (HashMap Text Text)
smAddtional
  = lens _smAddtional (\ s a -> s{_smAddtional = a}) .
      _Coerce

instance FromJSON SignatureMetadata where
        parseJSON
          = withObject "SignatureMetadata"
              (\ o -> SignatureMetadata' <$> (parseJSONObject o))

instance ToJSON SignatureMetadata where
        toJSON = toJSON . _smAddtional

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

-- | Exports data from the specified DICOM store. If a given resource, such
-- as a DICOM object with the same SOPInstance UID, already exists in the
-- output, it is overwritten with the version in the source dataset.
-- Exported DICOM data persists when the DICOM store from which it was
-- exported is deleted.
--
-- /See:/ 'exportDicomDataRequest' smart constructor.
data ExportDicomDataRequest =
  ExportDicomDataRequest'
    { _eddrBigQueryDestination :: !(Maybe GoogleCloudHealthcareV1DicomBigQueryDestination)
    , _eddrGcsDestination :: !(Maybe GoogleCloudHealthcareV1DicomGcsDestination)
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


-- | The BigQuery output destination. You can only export to a BigQuery
-- dataset that\'s in the same project as the DICOM store you\'re exporting
-- from. The Cloud Healthcare Service Agent requires two IAM roles on the
-- BigQuery location: \`roles\/bigquery.dataEditor\` and
-- \`roles\/bigquery.jobUser\`.
eddrBigQueryDestination :: Lens' ExportDicomDataRequest (Maybe GoogleCloudHealthcareV1DicomBigQueryDestination)
eddrBigQueryDestination
  = lens _eddrBigQueryDestination
      (\ s a -> s{_eddrBigQueryDestination = a})

-- | The Cloud Storage output destination. The Cloud Healthcare Service Agent
-- requires the \`roles\/storage.objectAdmin\` Cloud IAM roles on the Cloud
-- Storage location.
eddrGcsDestination :: Lens' ExportDicomDataRequest (Maybe GoogleCloudHealthcareV1DicomGcsDestination)
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
