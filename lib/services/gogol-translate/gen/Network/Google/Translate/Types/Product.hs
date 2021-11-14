{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Translate.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Translate.Types.Product where

import Network.Google.Prelude
import Network.Google.Translate.Types.Sum

-- | A single supported language response corresponds to information related
-- to one supported language.
--
-- /See:/ 'supportedLanguage' smart constructor.
data SupportedLanguage =
  SupportedLanguage'
    { _slLanguageCode :: !(Maybe Text)
    , _slSupportTarget :: !(Maybe Bool)
    , _slSupportSource :: !(Maybe Bool)
    , _slDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SupportedLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slLanguageCode'
--
-- * 'slSupportTarget'
--
-- * 'slSupportSource'
--
-- * 'slDisplayName'
supportedLanguage
    :: SupportedLanguage
supportedLanguage =
  SupportedLanguage'
    { _slLanguageCode = Nothing
    , _slSupportTarget = Nothing
    , _slSupportSource = Nothing
    , _slDisplayName = Nothing
    }


-- | Supported language code, generally consisting of its ISO 639-1
-- identifier, for example, \'en\', \'ja\'. In certain cases, BCP-47 codes
-- including language and region identifiers are returned (for example,
-- \'zh-TW\' and \'zh-CN\')
slLanguageCode :: Lens' SupportedLanguage (Maybe Text)
slLanguageCode
  = lens _slLanguageCode
      (\ s a -> s{_slLanguageCode = a})

-- | Can be used as target language.
slSupportTarget :: Lens' SupportedLanguage (Maybe Bool)
slSupportTarget
  = lens _slSupportTarget
      (\ s a -> s{_slSupportTarget = a})

-- | Can be used as source language.
slSupportSource :: Lens' SupportedLanguage (Maybe Bool)
slSupportSource
  = lens _slSupportSource
      (\ s a -> s{_slSupportSource = a})

-- | Human readable name of the language localized in the display language
-- specified in the request.
slDisplayName :: Lens' SupportedLanguage (Maybe Text)
slDisplayName
  = lens _slDisplayName
      (\ s a -> s{_slDisplayName = a})

instance FromJSON SupportedLanguage where
        parseJSON
          = withObject "SupportedLanguage"
              (\ o ->
                 SupportedLanguage' <$>
                   (o .:? "languageCode") <*> (o .:? "supportTarget")
                     <*> (o .:? "supportSource")
                     <*> (o .:? "displayName"))

instance ToJSON SupportedLanguage where
        toJSON SupportedLanguage'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _slLanguageCode,
                  ("supportTarget" .=) <$> _slSupportTarget,
                  ("supportSource" .=) <$> _slSupportSource,
                  ("displayName" .=) <$> _slDisplayName])

-- | The request message for language detection.
--
-- /See:/ 'detectLanguageRequest' smart constructor.
data DetectLanguageRequest =
  DetectLanguageRequest'
    { _dlrContent :: !(Maybe Text)
    , _dlrMimeType :: !(Maybe Text)
    , _dlrModel :: !(Maybe Text)
    , _dlrLabels :: !(Maybe DetectLanguageRequestLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DetectLanguageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrContent'
--
-- * 'dlrMimeType'
--
-- * 'dlrModel'
--
-- * 'dlrLabels'
detectLanguageRequest
    :: DetectLanguageRequest
detectLanguageRequest =
  DetectLanguageRequest'
    { _dlrContent = Nothing
    , _dlrMimeType = Nothing
    , _dlrModel = Nothing
    , _dlrLabels = Nothing
    }


-- | The content of the input stored as a string.
dlrContent :: Lens' DetectLanguageRequest (Maybe Text)
dlrContent
  = lens _dlrContent (\ s a -> s{_dlrContent = a})

-- | Optional. The format of the source text, for example, \"text\/html\",
-- \"text\/plain\". If left blank, the MIME type defaults to
-- \"text\/html\".
dlrMimeType :: Lens' DetectLanguageRequest (Maybe Text)
dlrMimeType
  = lens _dlrMimeType (\ s a -> s{_dlrMimeType = a})

-- | Optional. The language detection model to be used. Format:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/language-detection\/{model-id}\`
-- Only one language detection model is currently supported:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/language-detection\/default\`.
-- If not specified, the default model is used.
dlrModel :: Lens' DetectLanguageRequest (Maybe Text)
dlrModel = lens _dlrModel (\ s a -> s{_dlrModel = a})

-- | Optional. The labels with user-defined metadata for the request. Label
-- keys and values can be no longer than 63 characters (Unicode
-- codepoints), can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter. See
-- https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more
-- information.
dlrLabels :: Lens' DetectLanguageRequest (Maybe DetectLanguageRequestLabels)
dlrLabels
  = lens _dlrLabels (\ s a -> s{_dlrLabels = a})

instance FromJSON DetectLanguageRequest where
        parseJSON
          = withObject "DetectLanguageRequest"
              (\ o ->
                 DetectLanguageRequest' <$>
                   (o .:? "content") <*> (o .:? "mimeType") <*>
                     (o .:? "model")
                     <*> (o .:? "labels"))

instance ToJSON DetectLanguageRequest where
        toJSON DetectLanguageRequest'{..}
          = object
              (catMaybes
                 [("content" .=) <$> _dlrContent,
                  ("mimeType" .=) <$> _dlrMimeType,
                  ("model" .=) <$> _dlrModel,
                  ("labels" .=) <$> _dlrLabels])

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

-- | The request message for Operations.WaitOperation.
--
-- /See:/ 'waitOperationRequest' smart constructor.
newtype WaitOperationRequest =
  WaitOperationRequest'
    { _worTimeout :: Maybe GDuration
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WaitOperationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'worTimeout'
waitOperationRequest
    :: WaitOperationRequest
waitOperationRequest = WaitOperationRequest' {_worTimeout = Nothing}


-- | The maximum duration to wait before timing out. If left blank, the wait
-- will be at most the time permitted by the underlying HTTP\/RPC protocol.
-- If RPC context deadline is also specified, the shorter one will be used.
worTimeout :: Lens' WaitOperationRequest (Maybe Scientific)
worTimeout
  = lens _worTimeout (\ s a -> s{_worTimeout = a}) .
      mapping _GDuration

instance FromJSON WaitOperationRequest where
        parseJSON
          = withObject "WaitOperationRequest"
              (\ o -> WaitOperationRequest' <$> (o .:? "timeout"))

instance ToJSON WaitOperationRequest where
        toJSON WaitOperationRequest'{..}
          = object (catMaybes [("timeout" .=) <$> _worTimeout])

-- | Configures which glossary should be used for a specific target language,
-- and defines options for applying that glossary.
--
-- /See:/ 'translateTextGlossaryConfig' smart constructor.
data TranslateTextGlossaryConfig =
  TranslateTextGlossaryConfig'
    { _ttgcIgnoreCase :: !(Maybe Bool)
    , _ttgcGlossary :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TranslateTextGlossaryConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttgcIgnoreCase'
--
-- * 'ttgcGlossary'
translateTextGlossaryConfig
    :: TranslateTextGlossaryConfig
translateTextGlossaryConfig =
  TranslateTextGlossaryConfig'
    {_ttgcIgnoreCase = Nothing, _ttgcGlossary = Nothing}


-- | Optional. Indicates match is case-insensitive. Default value is false if
-- missing.
ttgcIgnoreCase :: Lens' TranslateTextGlossaryConfig (Maybe Bool)
ttgcIgnoreCase
  = lens _ttgcIgnoreCase
      (\ s a -> s{_ttgcIgnoreCase = a})

-- | Required. The \`glossary\` to be applied for this translation. The
-- format depends on glossary: - User provided custom glossary:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/glossaries\/{glossary-id}\`
ttgcGlossary :: Lens' TranslateTextGlossaryConfig (Maybe Text)
ttgcGlossary
  = lens _ttgcGlossary (\ s a -> s{_ttgcGlossary = a})

instance FromJSON TranslateTextGlossaryConfig where
        parseJSON
          = withObject "TranslateTextGlossaryConfig"
              (\ o ->
                 TranslateTextGlossaryConfig' <$>
                   (o .:? "ignoreCase") <*> (o .:? "glossary"))

instance ToJSON TranslateTextGlossaryConfig where
        toJSON TranslateTextGlossaryConfig'{..}
          = object
              (catMaybes
                 [("ignoreCase" .=) <$> _ttgcIgnoreCase,
                  ("glossary" .=) <$> _ttgcGlossary])

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

-- | The Google Cloud Storage location for the input content.
--
-- /See:/ 'gcsSource' smart constructor.
newtype GcsSource =
  GcsSource'
    { _gsInputURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsInputURI'
gcsSource
    :: GcsSource
gcsSource = GcsSource' {_gsInputURI = Nothing}


-- | Required. Source data URI. For example, \`gs:\/\/my_bucket\/my_object\`.
gsInputURI :: Lens' GcsSource (Maybe Text)
gsInputURI
  = lens _gsInputURI (\ s a -> s{_gsInputURI = a})

instance FromJSON GcsSource where
        parseJSON
          = withObject "GcsSource"
              (\ o -> GcsSource' <$> (o .:? "inputUri"))

instance ToJSON GcsSource where
        toJSON GcsSource'{..}
          = object
              (catMaybes [("inputUri" .=) <$> _gsInputURI])

-- | The request message for synchronous translation.
--
-- /See:/ 'translateTextRequest' smart constructor.
data TranslateTextRequest =
  TranslateTextRequest'
    { _ttrGlossaryConfig :: !(Maybe TranslateTextGlossaryConfig)
    , _ttrContents :: !(Maybe [Text])
    , _ttrTargetLanguageCode :: !(Maybe Text)
    , _ttrMimeType :: !(Maybe Text)
    , _ttrModel :: !(Maybe Text)
    , _ttrSourceLanguageCode :: !(Maybe Text)
    , _ttrLabels :: !(Maybe TranslateTextRequestLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TranslateTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttrGlossaryConfig'
--
-- * 'ttrContents'
--
-- * 'ttrTargetLanguageCode'
--
-- * 'ttrMimeType'
--
-- * 'ttrModel'
--
-- * 'ttrSourceLanguageCode'
--
-- * 'ttrLabels'
translateTextRequest
    :: TranslateTextRequest
translateTextRequest =
  TranslateTextRequest'
    { _ttrGlossaryConfig = Nothing
    , _ttrContents = Nothing
    , _ttrTargetLanguageCode = Nothing
    , _ttrMimeType = Nothing
    , _ttrModel = Nothing
    , _ttrSourceLanguageCode = Nothing
    , _ttrLabels = Nothing
    }


-- | Optional. Glossary to be applied. The glossary must be within the same
-- region (have the same location-id) as the model, otherwise an
-- INVALID_ARGUMENT (400) error is returned.
ttrGlossaryConfig :: Lens' TranslateTextRequest (Maybe TranslateTextGlossaryConfig)
ttrGlossaryConfig
  = lens _ttrGlossaryConfig
      (\ s a -> s{_ttrGlossaryConfig = a})

-- | Required. The content of the input in string format. We recommend the
-- total content be less than 30k codepoints. The max length of this field
-- is 1024. Use BatchTranslateText for larger text.
ttrContents :: Lens' TranslateTextRequest [Text]
ttrContents
  = lens _ttrContents (\ s a -> s{_ttrContents = a}) .
      _Default
      . _Coerce

-- | Required. The BCP-47 language code to use for translation of the input
-- text, set to one of the language codes listed in Language Support.
ttrTargetLanguageCode :: Lens' TranslateTextRequest (Maybe Text)
ttrTargetLanguageCode
  = lens _ttrTargetLanguageCode
      (\ s a -> s{_ttrTargetLanguageCode = a})

-- | Optional. The format of the source text, for example, \"text\/html\",
-- \"text\/plain\". If left blank, the MIME type defaults to
-- \"text\/html\".
ttrMimeType :: Lens' TranslateTextRequest (Maybe Text)
ttrMimeType
  = lens _ttrMimeType (\ s a -> s{_ttrMimeType = a})

-- | Optional. The \`model\` type requested for this translation. The format
-- depends on model type: - AutoML Translation models:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}\`
-- - General (built-in) models:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt\`,
-- For global (non-regionalized) requests, use \`location-id\` \`global\`.
-- For example,
-- \`projects\/{project-number-or-id}\/locations\/global\/models\/general\/nmt\`.
-- If not provided, the default Google model (NMT) will be used
ttrModel :: Lens' TranslateTextRequest (Maybe Text)
ttrModel = lens _ttrModel (\ s a -> s{_ttrModel = a})

-- | Optional. The BCP-47 language code of the input text if known, for
-- example, \"en-US\" or \"sr-Latn\". Supported language codes are listed
-- in Language Support. If the source language isn\'t specified, the API
-- attempts to identify the source language automatically and returns the
-- source language within the response.
ttrSourceLanguageCode :: Lens' TranslateTextRequest (Maybe Text)
ttrSourceLanguageCode
  = lens _ttrSourceLanguageCode
      (\ s a -> s{_ttrSourceLanguageCode = a})

-- | Optional. The labels with user-defined metadata for the request. Label
-- keys and values can be no longer than 63 characters (Unicode
-- codepoints), can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter. See
-- https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more
-- information.
ttrLabels :: Lens' TranslateTextRequest (Maybe TranslateTextRequestLabels)
ttrLabels
  = lens _ttrLabels (\ s a -> s{_ttrLabels = a})

instance FromJSON TranslateTextRequest where
        parseJSON
          = withObject "TranslateTextRequest"
              (\ o ->
                 TranslateTextRequest' <$>
                   (o .:? "glossaryConfig") <*>
                     (o .:? "contents" .!= mempty)
                     <*> (o .:? "targetLanguageCode")
                     <*> (o .:? "mimeType")
                     <*> (o .:? "model")
                     <*> (o .:? "sourceLanguageCode")
                     <*> (o .:? "labels"))

instance ToJSON TranslateTextRequest where
        toJSON TranslateTextRequest'{..}
          = object
              (catMaybes
                 [("glossaryConfig" .=) <$> _ttrGlossaryConfig,
                  ("contents" .=) <$> _ttrContents,
                  ("targetLanguageCode" .=) <$> _ttrTargetLanguageCode,
                  ("mimeType" .=) <$> _ttrMimeType,
                  ("model" .=) <$> _ttrModel,
                  ("sourceLanguageCode" .=) <$> _ttrSourceLanguageCode,
                  ("labels" .=) <$> _ttrLabels])

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
    , _oMetadata :: !(Maybe OperationMetadata)
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
oMetadata :: Lens' Operation (Maybe OperationMetadata)
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

--
-- /See:/ 'translateTextResponse' smart constructor.
data TranslateTextResponse =
  TranslateTextResponse'
    { _ttrGlossaryTranslations :: !(Maybe [Translation])
    , _ttrTranslations :: !(Maybe [Translation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TranslateTextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttrGlossaryTranslations'
--
-- * 'ttrTranslations'
translateTextResponse
    :: TranslateTextResponse
translateTextResponse =
  TranslateTextResponse'
    {_ttrGlossaryTranslations = Nothing, _ttrTranslations = Nothing}


-- | Text translation responses if a glossary is provided in the request.
-- This can be the same as \`translations\` if no terms apply. This field
-- has the same length as \`contents\`.
ttrGlossaryTranslations :: Lens' TranslateTextResponse [Translation]
ttrGlossaryTranslations
  = lens _ttrGlossaryTranslations
      (\ s a -> s{_ttrGlossaryTranslations = a})
      . _Default
      . _Coerce

-- | Text translation responses with no glossary applied. This field has the
-- same length as \`contents\`.
ttrTranslations :: Lens' TranslateTextResponse [Translation]
ttrTranslations
  = lens _ttrTranslations
      (\ s a -> s{_ttrTranslations = a})
      . _Default
      . _Coerce

instance FromJSON TranslateTextResponse where
        parseJSON
          = withObject "TranslateTextResponse"
              (\ o ->
                 TranslateTextResponse' <$>
                   (o .:? "glossaryTranslations" .!= mempty) <*>
                     (o .:? "translations" .!= mempty))

instance ToJSON TranslateTextResponse where
        toJSON TranslateTextResponse'{..}
          = object
              (catMaybes
                 [("glossaryTranslations" .=) <$>
                    _ttrGlossaryTranslations,
                  ("translations" .=) <$> _ttrTranslations])

-- | The Google Cloud Storage location for the output content.
--
-- /See:/ 'gcsDestination' smart constructor.
newtype GcsDestination =
  GcsDestination'
    { _gdOutputURIPrefix :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdOutputURIPrefix'
gcsDestination
    :: GcsDestination
gcsDestination = GcsDestination' {_gdOutputURIPrefix = Nothing}


-- | Required. The bucket used in \'output_uri_prefix\' must exist and there
-- must be no files under \'output_uri_prefix\'. \'output_uri_prefix\' must
-- end with \"\/\" and start with \"gs:\/\/\". One \'output_uri_prefix\'
-- can only be used by one batch translation job at a time. Otherwise an
-- INVALID_ARGUMENT (400) error is returned.
gdOutputURIPrefix :: Lens' GcsDestination (Maybe Text)
gdOutputURIPrefix
  = lens _gdOutputURIPrefix
      (\ s a -> s{_gdOutputURIPrefix = a})

instance FromJSON GcsDestination where
        parseJSON
          = withObject "GcsDestination"
              (\ o ->
                 GcsDestination' <$> (o .:? "outputUriPrefix"))

instance ToJSON GcsDestination where
        toJSON GcsDestination'{..}
          = object
              (catMaybes
                 [("outputUriPrefix" .=) <$> _gdOutputURIPrefix])

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

-- | Optional. Glossaries to be applied for translation. It\'s keyed by
-- target language code.
--
-- /See:/ 'batchTranslateTextRequestGlossaries' smart constructor.
newtype BatchTranslateTextRequestGlossaries =
  BatchTranslateTextRequestGlossaries'
    { _bttrgAddtional :: HashMap Text TranslateTextGlossaryConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchTranslateTextRequestGlossaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bttrgAddtional'
batchTranslateTextRequestGlossaries
    :: HashMap Text TranslateTextGlossaryConfig -- ^ 'bttrgAddtional'
    -> BatchTranslateTextRequestGlossaries
batchTranslateTextRequestGlossaries pBttrgAddtional_ =
  BatchTranslateTextRequestGlossaries'
    {_bttrgAddtional = _Coerce # pBttrgAddtional_}


bttrgAddtional :: Lens' BatchTranslateTextRequestGlossaries (HashMap Text TranslateTextGlossaryConfig)
bttrgAddtional
  = lens _bttrgAddtional
      (\ s a -> s{_bttrgAddtional = a})
      . _Coerce

instance FromJSON BatchTranslateTextRequestGlossaries
         where
        parseJSON
          = withObject "BatchTranslateTextRequestGlossaries"
              (\ o ->
                 BatchTranslateTextRequestGlossaries' <$>
                   (parseJSONObject o))

instance ToJSON BatchTranslateTextRequestGlossaries
         where
        toJSON = toJSON . _bttrgAddtional

-- | Input configuration for BatchTranslateText request.
--
-- /See:/ 'inputConfig' smart constructor.
data InputConfig =
  InputConfig'
    { _icGcsSource :: !(Maybe GcsSource)
    , _icMimeType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icGcsSource'
--
-- * 'icMimeType'
inputConfig
    :: InputConfig
inputConfig = InputConfig' {_icGcsSource = Nothing, _icMimeType = Nothing}


-- | Required. Google Cloud Storage location for the source input. This can
-- be a single file (for example, \`gs:\/\/translation-test\/input.tsv\`)
-- or a wildcard (for example, \`gs:\/\/translation-test\/*\`). If a file
-- extension is \`.tsv\`, it can contain either one or two columns. The
-- first column (optional) is the id of the text request. If the first
-- column is missing, we use the row number (0-based) from the input file
-- as the ID in the output file. The second column is the actual text to be
-- translated. We recommend each row be \<= 10K Unicode codepoints,
-- otherwise an error might be returned. Note that the input tsv must be
-- RFC 4180 compliant. You could use https:\/\/github.com\/Clever\/csvlint
-- to check potential formatting errors in your tsv file. csvlint
-- --delimiter=\'\\t\' your_input_file.tsv The other supported file
-- extensions are \`.txt\` or \`.html\`, which is treated as a single large
-- chunk of text.
icGcsSource :: Lens' InputConfig (Maybe GcsSource)
icGcsSource
  = lens _icGcsSource (\ s a -> s{_icGcsSource = a})

-- | Optional. Can be \"text\/plain\" or \"text\/html\". For \`.tsv\`,
-- \"text\/html\" is used if mime_type is missing. For \`.html\`, this
-- field must be \"text\/html\" or empty. For \`.txt\`, this field must be
-- \"text\/plain\" or empty.
icMimeType :: Lens' InputConfig (Maybe Text)
icMimeType
  = lens _icMimeType (\ s a -> s{_icMimeType = a})

instance FromJSON InputConfig where
        parseJSON
          = withObject "InputConfig"
              (\ o ->
                 InputConfig' <$>
                   (o .:? "gcsSource") <*> (o .:? "mimeType"))

instance ToJSON InputConfig where
        toJSON InputConfig'{..}
          = object
              (catMaybes
                 [("gcsSource" .=) <$> _icGcsSource,
                  ("mimeType" .=) <$> _icMimeType])

-- | The response message for language detection.
--
-- /See:/ 'detectedLanguage' smart constructor.
data DetectedLanguage =
  DetectedLanguage'
    { _dlLanguageCode :: !(Maybe Text)
    , _dlConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DetectedLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlLanguageCode'
--
-- * 'dlConfidence'
detectedLanguage
    :: DetectedLanguage
detectedLanguage =
  DetectedLanguage' {_dlLanguageCode = Nothing, _dlConfidence = Nothing}


-- | The BCP-47 language code of source content in the request, detected
-- automatically.
dlLanguageCode :: Lens' DetectedLanguage (Maybe Text)
dlLanguageCode
  = lens _dlLanguageCode
      (\ s a -> s{_dlLanguageCode = a})

-- | The confidence of the detection result for this language.
dlConfidence :: Lens' DetectedLanguage (Maybe Double)
dlConfidence
  = lens _dlConfidence (\ s a -> s{_dlConfidence = a})
      . mapping _Coerce

instance FromJSON DetectedLanguage where
        parseJSON
          = withObject "DetectedLanguage"
              (\ o ->
                 DetectedLanguage' <$>
                   (o .:? "languageCode") <*> (o .:? "confidence"))

instance ToJSON DetectedLanguage where
        toJSON DetectedLanguage'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _dlLanguageCode,
                  ("confidence" .=) <$> _dlConfidence])

-- | The response message for discovering supported languages.
--
-- /See:/ 'supportedLanguages' smart constructor.
newtype SupportedLanguages =
  SupportedLanguages'
    { _slLanguages :: Maybe [SupportedLanguage]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SupportedLanguages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slLanguages'
supportedLanguages
    :: SupportedLanguages
supportedLanguages = SupportedLanguages' {_slLanguages = Nothing}


-- | A list of supported language responses. This list contains an entry for
-- each language the Translation API supports.
slLanguages :: Lens' SupportedLanguages [SupportedLanguage]
slLanguages
  = lens _slLanguages (\ s a -> s{_slLanguages = a}) .
      _Default
      . _Coerce

instance FromJSON SupportedLanguages where
        parseJSON
          = withObject "SupportedLanguages"
              (\ o ->
                 SupportedLanguages' <$>
                   (o .:? "languages" .!= mempty))

instance ToJSON SupportedLanguages where
        toJSON SupportedLanguages'{..}
          = object
              (catMaybes [("languages" .=) <$> _slLanguages])

-- | Optional. The labels with user-defined metadata for the request. Label
-- keys and values can be no longer than 63 characters (Unicode
-- codepoints), can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter. See
-- https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more
-- information.
--
-- /See:/ 'translateTextRequestLabels' smart constructor.
newtype TranslateTextRequestLabels =
  TranslateTextRequestLabels'
    { _ttrlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TranslateTextRequestLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttrlAddtional'
translateTextRequestLabels
    :: HashMap Text Text -- ^ 'ttrlAddtional'
    -> TranslateTextRequestLabels
translateTextRequestLabels pTtrlAddtional_ =
  TranslateTextRequestLabels' {_ttrlAddtional = _Coerce # pTtrlAddtional_}


ttrlAddtional :: Lens' TranslateTextRequestLabels (HashMap Text Text)
ttrlAddtional
  = lens _ttrlAddtional
      (\ s a -> s{_ttrlAddtional = a})
      . _Coerce

instance FromJSON TranslateTextRequestLabels where
        parseJSON
          = withObject "TranslateTextRequestLabels"
              (\ o ->
                 TranslateTextRequestLabels' <$> (parseJSONObject o))

instance ToJSON TranslateTextRequestLabels where
        toJSON = toJSON . _ttrlAddtional

-- | Optional. The models to use for translation. Map\'s key is target
-- language code. Map\'s value is model name. Value can be a built-in
-- general model, or an AutoML Translation model. The value format depends
-- on model type: - AutoML Translation models:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}\`
-- - General (built-in) models:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt\`,
-- If the map is empty or a specific model is not requested for a language
-- pair, then default google model (nmt) is used.
--
-- /See:/ 'batchTranslateTextRequestModels' smart constructor.
newtype BatchTranslateTextRequestModels =
  BatchTranslateTextRequestModels'
    { _bttrmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchTranslateTextRequestModels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bttrmAddtional'
batchTranslateTextRequestModels
    :: HashMap Text Text -- ^ 'bttrmAddtional'
    -> BatchTranslateTextRequestModels
batchTranslateTextRequestModels pBttrmAddtional_ =
  BatchTranslateTextRequestModels'
    {_bttrmAddtional = _Coerce # pBttrmAddtional_}


bttrmAddtional :: Lens' BatchTranslateTextRequestModels (HashMap Text Text)
bttrmAddtional
  = lens _bttrmAddtional
      (\ s a -> s{_bttrmAddtional = a})
      . _Coerce

instance FromJSON BatchTranslateTextRequestModels
         where
        parseJSON
          = withObject "BatchTranslateTextRequestModels"
              (\ o ->
                 BatchTranslateTextRequestModels' <$>
                   (parseJSONObject o))

instance ToJSON BatchTranslateTextRequestModels where
        toJSON = toJSON . _bttrmAddtional

-- | Input configuration for glossaries.
--
-- /See:/ 'glossaryInputConfig' smart constructor.
newtype GlossaryInputConfig =
  GlossaryInputConfig'
    { _gicGcsSource :: Maybe GcsSource
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlossaryInputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gicGcsSource'
glossaryInputConfig
    :: GlossaryInputConfig
glossaryInputConfig = GlossaryInputConfig' {_gicGcsSource = Nothing}


-- | Required. Google Cloud Storage location of glossary data. File format is
-- determined based on the filename extension. API returns
-- [google.rpc.Code.INVALID_ARGUMENT] for unsupported URI-s and file
-- formats. Wildcards are not allowed. This must be a single file in one of
-- the following formats: For unidirectional glossaries: - TSV\/CSV
-- (\`.tsv\`\/\`.csv\`): 2 column file, tab- or comma-separated. The first
-- column is source text. The second column is target text. The file must
-- not contain headers. That is, the first row is data, not column names. -
-- TMX (\`.tmx\`): TMX file with parallel data defining source\/target term
-- pairs. For equivalent term sets glossaries: - CSV (\`.csv\`):
-- Multi-column CSV file defining equivalent glossary terms in multiple
-- languages. See documentation for more information -
-- [glossaries](https:\/\/cloud.google.com\/translate\/docs\/advanced\/glossary).
gicGcsSource :: Lens' GlossaryInputConfig (Maybe GcsSource)
gicGcsSource
  = lens _gicGcsSource (\ s a -> s{_gicGcsSource = a})

instance FromJSON GlossaryInputConfig where
        parseJSON
          = withObject "GlossaryInputConfig"
              (\ o -> GlossaryInputConfig' <$> (o .:? "gcsSource"))

instance ToJSON GlossaryInputConfig where
        toJSON GlossaryInputConfig'{..}
          = object
              (catMaybes [("gcsSource" .=) <$> _gicGcsSource])

-- | Used with unidirectional glossaries.
--
-- /See:/ 'languageCodePair' smart constructor.
data LanguageCodePair =
  LanguageCodePair'
    { _lcpTargetLanguageCode :: !(Maybe Text)
    , _lcpSourceLanguageCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LanguageCodePair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcpTargetLanguageCode'
--
-- * 'lcpSourceLanguageCode'
languageCodePair
    :: LanguageCodePair
languageCodePair =
  LanguageCodePair'
    {_lcpTargetLanguageCode = Nothing, _lcpSourceLanguageCode = Nothing}


-- | Required. The BCP-47 language code for translation output, for example,
-- \"zh-CN\". Expected to be an exact match for GlossaryTerm.language_code.
lcpTargetLanguageCode :: Lens' LanguageCodePair (Maybe Text)
lcpTargetLanguageCode
  = lens _lcpTargetLanguageCode
      (\ s a -> s{_lcpTargetLanguageCode = a})

-- | Required. The BCP-47 language code of the input text, for example,
-- \"en-US\". Expected to be an exact match for GlossaryTerm.language_code.
lcpSourceLanguageCode :: Lens' LanguageCodePair (Maybe Text)
lcpSourceLanguageCode
  = lens _lcpSourceLanguageCode
      (\ s a -> s{_lcpSourceLanguageCode = a})

instance FromJSON LanguageCodePair where
        parseJSON
          = withObject "LanguageCodePair"
              (\ o ->
                 LanguageCodePair' <$>
                   (o .:? "targetLanguageCode") <*>
                     (o .:? "sourceLanguageCode"))

instance ToJSON LanguageCodePair where
        toJSON LanguageCodePair'{..}
          = object
              (catMaybes
                 [("targetLanguageCode" .=) <$>
                    _lcpTargetLanguageCode,
                  ("sourceLanguageCode" .=) <$>
                    _lcpSourceLanguageCode])

-- | Output configuration for BatchTranslateText request.
--
-- /See:/ 'outputConfig' smart constructor.
newtype OutputConfig =
  OutputConfig'
    { _ocGcsDestination :: Maybe GcsDestination
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocGcsDestination'
outputConfig
    :: OutputConfig
outputConfig = OutputConfig' {_ocGcsDestination = Nothing}


-- | Google Cloud Storage destination for output content. For every single
-- input file (for example, gs:\/\/a\/b\/c.[extension]), we generate at
-- most 2 * n output files. (n is the # of target_language_codes in the
-- BatchTranslateTextRequest). Output files (tsv) generated are compliant
-- with RFC 4180 except that record delimiters are \'\\n\' instead of
-- \'\\r\\n\'. We don\'t provide any way to change record delimiters. While
-- the input files are being processed, we write\/update an index file
-- \'index.csv\' under \'output_uri_prefix\' (for example,
-- gs:\/\/translation-test\/index.csv) The index file is generated\/updated
-- as new files are being translated. The format is:
-- input_file,target_language_code,translations_file,errors_file,
-- glossary_translations_file,glossary_errors_file input_file is one file
-- we matched using gcs_source.input_uri. target_language_code is provided
-- in the request. translations_file contains the translations. (details
-- provided below) errors_file contains the errors during processing of the
-- file. (details below). Both translations_file and errors_file could be
-- empty strings if we have no content to output.
-- glossary_translations_file and glossary_errors_file are always empty
-- strings if the input_file is tsv. They could also be empty if we have no
-- content to output. Once a row is present in index.csv, the input\/output
-- matching never changes. Callers should also expect all the content in
-- input_file are processed and ready to be consumed (that is, no partial
-- output file is written). Since index.csv will be keeping updated during
-- the process, please make sure there is no custom retention policy
-- applied on the output bucket that may avoid file updating.
-- (https:\/\/cloud.google.com\/storage\/docs\/bucket-lock?hl=en#retention-policy)
-- The format of translations_file (for target language code \'trg\') is:
-- gs:\/\/translation_test\/a_b_c_\'trg\'_translations.[extension] If the
-- input file extension is tsv, the output has the following columns:
-- Column 1: ID of the request provided in the input, if it\'s not provided
-- in the input, then the input row number is used (0-based). Column 2:
-- source sentence. Column 3: translation without applying a glossary.
-- Empty string if there is an error. Column 4 (only present if a glossary
-- is provided in the request): translation after applying the glossary.
-- Empty string if there is an error applying the glossary. Could be same
-- string as column 3 if there is no glossary applied. If input file
-- extension is a txt or html, the translation is directly written to the
-- output file. If glossary is requested, a separate
-- glossary_translations_file has format of
-- gs:\/\/translation_test\/a_b_c_\'trg\'_glossary_translations.[extension]
-- The format of errors file (for target language code \'trg\') is:
-- gs:\/\/translation_test\/a_b_c_\'trg\'_errors.[extension] If the input
-- file extension is tsv, errors_file contains the following: Column 1: ID
-- of the request provided in the input, if it\'s not provided in the
-- input, then the input row number is used (0-based). Column 2: source
-- sentence. Column 3: Error detail for the translation. Could be empty.
-- Column 4 (only present if a glossary is provided in the request): Error
-- when applying the glossary. If the input file extension is txt or html,
-- glossary_error_file will be generated that contains error details.
-- glossary_error_file has format of
-- gs:\/\/translation_test\/a_b_c_\'trg\'_glossary_errors.[extension]
ocGcsDestination :: Lens' OutputConfig (Maybe GcsDestination)
ocGcsDestination
  = lens _ocGcsDestination
      (\ s a -> s{_ocGcsDestination = a})

instance FromJSON OutputConfig where
        parseJSON
          = withObject "OutputConfig"
              (\ o -> OutputConfig' <$> (o .:? "gcsDestination"))

instance ToJSON OutputConfig where
        toJSON OutputConfig'{..}
          = object
              (catMaybes
                 [("gcsDestination" .=) <$> _ocGcsDestination])

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

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | A single translation response.
--
-- /See:/ 'translation' smart constructor.
data Translation =
  Translation'
    { _tGlossaryConfig :: !(Maybe TranslateTextGlossaryConfig)
    , _tDetectedLanguageCode :: !(Maybe Text)
    , _tModel :: !(Maybe Text)
    , _tTranslatedText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Translation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tGlossaryConfig'
--
-- * 'tDetectedLanguageCode'
--
-- * 'tModel'
--
-- * 'tTranslatedText'
translation
    :: Translation
translation =
  Translation'
    { _tGlossaryConfig = Nothing
    , _tDetectedLanguageCode = Nothing
    , _tModel = Nothing
    , _tTranslatedText = Nothing
    }


-- | The \`glossary_config\` used for this translation.
tGlossaryConfig :: Lens' Translation (Maybe TranslateTextGlossaryConfig)
tGlossaryConfig
  = lens _tGlossaryConfig
      (\ s a -> s{_tGlossaryConfig = a})

-- | The BCP-47 language code of source text in the initial request, detected
-- automatically, if no source language was passed within the initial
-- request. If the source language was passed, auto-detection of the
-- language does not occur and this field is empty.
tDetectedLanguageCode :: Lens' Translation (Maybe Text)
tDetectedLanguageCode
  = lens _tDetectedLanguageCode
      (\ s a -> s{_tDetectedLanguageCode = a})

-- | Only present when \`model\` is present in the request. \`model\` here is
-- normalized to have project number. For example: If the \`model\`
-- requested in TranslationTextRequest is
-- \`projects\/{project-id}\/locations\/{location-id}\/models\/general\/nmt\`
-- then \`model\` here would be normalized to
-- \`projects\/{project-number}\/locations\/{location-id}\/models\/general\/nmt\`.
tModel :: Lens' Translation (Maybe Text)
tModel = lens _tModel (\ s a -> s{_tModel = a})

-- | Text translated into the target language. If an error occurs during
-- translation, this field might be excluded from the response.
tTranslatedText :: Lens' Translation (Maybe Text)
tTranslatedText
  = lens _tTranslatedText
      (\ s a -> s{_tTranslatedText = a})

instance FromJSON Translation where
        parseJSON
          = withObject "Translation"
              (\ o ->
                 Translation' <$>
                   (o .:? "glossaryConfig") <*>
                     (o .:? "detectedLanguageCode")
                     <*> (o .:? "model")
                     <*> (o .:? "translatedText"))

instance ToJSON Translation where
        toJSON Translation'{..}
          = object
              (catMaybes
                 [("glossaryConfig" .=) <$> _tGlossaryConfig,
                  ("detectedLanguageCode" .=) <$>
                    _tDetectedLanguageCode,
                  ("model" .=) <$> _tModel,
                  ("translatedText" .=) <$> _tTranslatedText])

-- | Optional. The labels with user-defined metadata for the request. Label
-- keys and values can be no longer than 63 characters (Unicode
-- codepoints), can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter. See
-- https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more
-- information.
--
-- /See:/ 'batchTranslateTextRequestLabels' smart constructor.
newtype BatchTranslateTextRequestLabels =
  BatchTranslateTextRequestLabels'
    { _bttrlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchTranslateTextRequestLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bttrlAddtional'
batchTranslateTextRequestLabels
    :: HashMap Text Text -- ^ 'bttrlAddtional'
    -> BatchTranslateTextRequestLabels
batchTranslateTextRequestLabels pBttrlAddtional_ =
  BatchTranslateTextRequestLabels'
    {_bttrlAddtional = _Coerce # pBttrlAddtional_}


bttrlAddtional :: Lens' BatchTranslateTextRequestLabels (HashMap Text Text)
bttrlAddtional
  = lens _bttrlAddtional
      (\ s a -> s{_bttrlAddtional = a})
      . _Coerce

instance FromJSON BatchTranslateTextRequestLabels
         where
        parseJSON
          = withObject "BatchTranslateTextRequestLabels"
              (\ o ->
                 BatchTranslateTextRequestLabels' <$>
                   (parseJSONObject o))

instance ToJSON BatchTranslateTextRequestLabels where
        toJSON = toJSON . _bttrlAddtional

-- | The response message for language detection.
--
-- /See:/ 'detectLanguageResponse' smart constructor.
newtype DetectLanguageResponse =
  DetectLanguageResponse'
    { _dlrLanguages :: Maybe [DetectedLanguage]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DetectLanguageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrLanguages'
detectLanguageResponse
    :: DetectLanguageResponse
detectLanguageResponse = DetectLanguageResponse' {_dlrLanguages = Nothing}


-- | The most probable language detected by the Translation API. For each
-- request, the Translation API will always return only one result.
dlrLanguages :: Lens' DetectLanguageResponse [DetectedLanguage]
dlrLanguages
  = lens _dlrLanguages (\ s a -> s{_dlrLanguages = a})
      . _Default
      . _Coerce

instance FromJSON DetectLanguageResponse where
        parseJSON
          = withObject "DetectLanguageResponse"
              (\ o ->
                 DetectLanguageResponse' <$>
                   (o .:? "languages" .!= mempty))

instance ToJSON DetectLanguageResponse where
        toJSON DetectLanguageResponse'{..}
          = object
              (catMaybes [("languages" .=) <$> _dlrLanguages])

-- | The batch translation request.
--
-- /See:/ 'batchTranslateTextRequest' smart constructor.
data BatchTranslateTextRequest =
  BatchTranslateTextRequest'
    { _bttrInputConfigs :: !(Maybe [InputConfig])
    , _bttrTargetLanguageCodes :: !(Maybe [Text])
    , _bttrModels :: !(Maybe BatchTranslateTextRequestModels)
    , _bttrSourceLanguageCode :: !(Maybe Text)
    , _bttrOutputConfig :: !(Maybe OutputConfig)
    , _bttrLabels :: !(Maybe BatchTranslateTextRequestLabels)
    , _bttrGlossaries :: !(Maybe BatchTranslateTextRequestGlossaries)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchTranslateTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bttrInputConfigs'
--
-- * 'bttrTargetLanguageCodes'
--
-- * 'bttrModels'
--
-- * 'bttrSourceLanguageCode'
--
-- * 'bttrOutputConfig'
--
-- * 'bttrLabels'
--
-- * 'bttrGlossaries'
batchTranslateTextRequest
    :: BatchTranslateTextRequest
batchTranslateTextRequest =
  BatchTranslateTextRequest'
    { _bttrInputConfigs = Nothing
    , _bttrTargetLanguageCodes = Nothing
    , _bttrModels = Nothing
    , _bttrSourceLanguageCode = Nothing
    , _bttrOutputConfig = Nothing
    , _bttrLabels = Nothing
    , _bttrGlossaries = Nothing
    }


-- | Required. Input configurations. The total number of files matched should
-- be \<= 100. The total content size should be \<= 100M Unicode
-- codepoints. The files must use UTF-8 encoding.
bttrInputConfigs :: Lens' BatchTranslateTextRequest [InputConfig]
bttrInputConfigs
  = lens _bttrInputConfigs
      (\ s a -> s{_bttrInputConfigs = a})
      . _Default
      . _Coerce

-- | Required. Specify up to 10 language codes here.
bttrTargetLanguageCodes :: Lens' BatchTranslateTextRequest [Text]
bttrTargetLanguageCodes
  = lens _bttrTargetLanguageCodes
      (\ s a -> s{_bttrTargetLanguageCodes = a})
      . _Default
      . _Coerce

-- | Optional. The models to use for translation. Map\'s key is target
-- language code. Map\'s value is model name. Value can be a built-in
-- general model, or an AutoML Translation model. The value format depends
-- on model type: - AutoML Translation models:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}\`
-- - General (built-in) models:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt\`,
-- If the map is empty or a specific model is not requested for a language
-- pair, then default google model (nmt) is used.
bttrModels :: Lens' BatchTranslateTextRequest (Maybe BatchTranslateTextRequestModels)
bttrModels
  = lens _bttrModels (\ s a -> s{_bttrModels = a})

-- | Required. Source language code.
bttrSourceLanguageCode :: Lens' BatchTranslateTextRequest (Maybe Text)
bttrSourceLanguageCode
  = lens _bttrSourceLanguageCode
      (\ s a -> s{_bttrSourceLanguageCode = a})

-- | Required. Output configuration. If 2 input configs match to the same
-- file (that is, same input path), we don\'t generate output for duplicate
-- inputs.
bttrOutputConfig :: Lens' BatchTranslateTextRequest (Maybe OutputConfig)
bttrOutputConfig
  = lens _bttrOutputConfig
      (\ s a -> s{_bttrOutputConfig = a})

-- | Optional. The labels with user-defined metadata for the request. Label
-- keys and values can be no longer than 63 characters (Unicode
-- codepoints), can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter. See
-- https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more
-- information.
bttrLabels :: Lens' BatchTranslateTextRequest (Maybe BatchTranslateTextRequestLabels)
bttrLabels
  = lens _bttrLabels (\ s a -> s{_bttrLabels = a})

-- | Optional. Glossaries to be applied for translation. It\'s keyed by
-- target language code.
bttrGlossaries :: Lens' BatchTranslateTextRequest (Maybe BatchTranslateTextRequestGlossaries)
bttrGlossaries
  = lens _bttrGlossaries
      (\ s a -> s{_bttrGlossaries = a})

instance FromJSON BatchTranslateTextRequest where
        parseJSON
          = withObject "BatchTranslateTextRequest"
              (\ o ->
                 BatchTranslateTextRequest' <$>
                   (o .:? "inputConfigs" .!= mempty) <*>
                     (o .:? "targetLanguageCodes" .!= mempty)
                     <*> (o .:? "models")
                     <*> (o .:? "sourceLanguageCode")
                     <*> (o .:? "outputConfig")
                     <*> (o .:? "labels")
                     <*> (o .:? "glossaries"))

instance ToJSON BatchTranslateTextRequest where
        toJSON BatchTranslateTextRequest'{..}
          = object
              (catMaybes
                 [("inputConfigs" .=) <$> _bttrInputConfigs,
                  ("targetLanguageCodes" .=) <$>
                    _bttrTargetLanguageCodes,
                  ("models" .=) <$> _bttrModels,
                  ("sourceLanguageCode" .=) <$>
                    _bttrSourceLanguageCode,
                  ("outputConfig" .=) <$> _bttrOutputConfig,
                  ("labels" .=) <$> _bttrLabels,
                  ("glossaries" .=) <$> _bttrGlossaries])

-- | Represents a glossary built from user provided data.
--
-- /See:/ 'glossary' smart constructor.
data Glossary =
  Glossary'
    { _gLanguagePair :: !(Maybe LanguageCodePair)
    , _gInputConfig :: !(Maybe GlossaryInputConfig)
    , _gName :: !(Maybe Text)
    , _gEntryCount :: !(Maybe (Textual Int32))
    , _gEndTime :: !(Maybe DateTime')
    , _gLanguageCodesSet :: !(Maybe LanguageCodesSet)
    , _gSubmitTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Glossary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gLanguagePair'
--
-- * 'gInputConfig'
--
-- * 'gName'
--
-- * 'gEntryCount'
--
-- * 'gEndTime'
--
-- * 'gLanguageCodesSet'
--
-- * 'gSubmitTime'
glossary
    :: Glossary
glossary =
  Glossary'
    { _gLanguagePair = Nothing
    , _gInputConfig = Nothing
    , _gName = Nothing
    , _gEntryCount = Nothing
    , _gEndTime = Nothing
    , _gLanguageCodesSet = Nothing
    , _gSubmitTime = Nothing
    }


-- | Used with unidirectional glossaries.
gLanguagePair :: Lens' Glossary (Maybe LanguageCodePair)
gLanguagePair
  = lens _gLanguagePair
      (\ s a -> s{_gLanguagePair = a})

-- | Required. Provides examples to build the glossary from. Total glossary
-- must not exceed 10M Unicode codepoints.
gInputConfig :: Lens' Glossary (Maybe GlossaryInputConfig)
gInputConfig
  = lens _gInputConfig (\ s a -> s{_gInputConfig = a})

-- | Required. The resource name of the glossary. Glossary names have the
-- form
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/glossaries\/{glossary-id}\`.
gName :: Lens' Glossary (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | Output only. The number of entries defined in the glossary.
gEntryCount :: Lens' Glossary (Maybe Int32)
gEntryCount
  = lens _gEntryCount (\ s a -> s{_gEntryCount = a}) .
      mapping _Coerce

-- | Output only. When the glossary creation was finished.
gEndTime :: Lens' Glossary (Maybe UTCTime)
gEndTime
  = lens _gEndTime (\ s a -> s{_gEndTime = a}) .
      mapping _DateTime

-- | Used with equivalent term set glossaries.
gLanguageCodesSet :: Lens' Glossary (Maybe LanguageCodesSet)
gLanguageCodesSet
  = lens _gLanguageCodesSet
      (\ s a -> s{_gLanguageCodesSet = a})

-- | Output only. When CreateGlossary was called.
gSubmitTime :: Lens' Glossary (Maybe UTCTime)
gSubmitTime
  = lens _gSubmitTime (\ s a -> s{_gSubmitTime = a}) .
      mapping _DateTime

instance FromJSON Glossary where
        parseJSON
          = withObject "Glossary"
              (\ o ->
                 Glossary' <$>
                   (o .:? "languagePair") <*> (o .:? "inputConfig") <*>
                     (o .:? "name")
                     <*> (o .:? "entryCount")
                     <*> (o .:? "endTime")
                     <*> (o .:? "languageCodesSet")
                     <*> (o .:? "submitTime"))

instance ToJSON Glossary where
        toJSON Glossary'{..}
          = object
              (catMaybes
                 [("languagePair" .=) <$> _gLanguagePair,
                  ("inputConfig" .=) <$> _gInputConfig,
                  ("name" .=) <$> _gName,
                  ("entryCount" .=) <$> _gEntryCount,
                  ("endTime" .=) <$> _gEndTime,
                  ("languageCodesSet" .=) <$> _gLanguageCodesSet,
                  ("submitTime" .=) <$> _gSubmitTime])

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

-- | Used with equivalent term set glossaries.
--
-- /See:/ 'languageCodesSet' smart constructor.
newtype LanguageCodesSet =
  LanguageCodesSet'
    { _lcsLanguageCodes :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LanguageCodesSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsLanguageCodes'
languageCodesSet
    :: LanguageCodesSet
languageCodesSet = LanguageCodesSet' {_lcsLanguageCodes = Nothing}


-- | The BCP-47 language code(s) for terms defined in the glossary. All
-- entries are unique. The list contains at least two entries. Expected to
-- be an exact match for GlossaryTerm.language_code.
lcsLanguageCodes :: Lens' LanguageCodesSet [Text]
lcsLanguageCodes
  = lens _lcsLanguageCodes
      (\ s a -> s{_lcsLanguageCodes = a})
      . _Default
      . _Coerce

instance FromJSON LanguageCodesSet where
        parseJSON
          = withObject "LanguageCodesSet"
              (\ o ->
                 LanguageCodesSet' <$>
                   (o .:? "languageCodes" .!= mempty))

instance ToJSON LanguageCodesSet where
        toJSON LanguageCodesSet'{..}
          = object
              (catMaybes
                 [("languageCodes" .=) <$> _lcsLanguageCodes])

-- | Optional. The labels with user-defined metadata for the request. Label
-- keys and values can be no longer than 63 characters (Unicode
-- codepoints), can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter. See
-- https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more
-- information.
--
-- /See:/ 'detectLanguageRequestLabels' smart constructor.
newtype DetectLanguageRequestLabels =
  DetectLanguageRequestLabels'
    { _dlrlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DetectLanguageRequestLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrlAddtional'
detectLanguageRequestLabels
    :: HashMap Text Text -- ^ 'dlrlAddtional'
    -> DetectLanguageRequestLabels
detectLanguageRequestLabels pDlrlAddtional_ =
  DetectLanguageRequestLabels' {_dlrlAddtional = _Coerce # pDlrlAddtional_}


dlrlAddtional :: Lens' DetectLanguageRequestLabels (HashMap Text Text)
dlrlAddtional
  = lens _dlrlAddtional
      (\ s a -> s{_dlrlAddtional = a})
      . _Coerce

instance FromJSON DetectLanguageRequestLabels where
        parseJSON
          = withObject "DetectLanguageRequestLabels"
              (\ o ->
                 DetectLanguageRequestLabels' <$> (parseJSONObject o))

instance ToJSON DetectLanguageRequestLabels where
        toJSON = toJSON . _dlrlAddtional

-- | Response message for ListGlossaries.
--
-- /See:/ 'listGlossariesResponse' smart constructor.
data ListGlossariesResponse =
  ListGlossariesResponse'
    { _lgrNextPageToken :: !(Maybe Text)
    , _lgrGlossaries :: !(Maybe [Glossary])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListGlossariesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrNextPageToken'
--
-- * 'lgrGlossaries'
listGlossariesResponse
    :: ListGlossariesResponse
listGlossariesResponse =
  ListGlossariesResponse'
    {_lgrNextPageToken = Nothing, _lgrGlossaries = Nothing}


-- | A token to retrieve a page of results. Pass this value in the
-- [ListGlossariesRequest.page_token] field in the subsequent call to
-- \`ListGlossaries\` method to retrieve the next page of results.
lgrNextPageToken :: Lens' ListGlossariesResponse (Maybe Text)
lgrNextPageToken
  = lens _lgrNextPageToken
      (\ s a -> s{_lgrNextPageToken = a})

-- | The list of glossaries for a project.
lgrGlossaries :: Lens' ListGlossariesResponse [Glossary]
lgrGlossaries
  = lens _lgrGlossaries
      (\ s a -> s{_lgrGlossaries = a})
      . _Default
      . _Coerce

instance FromJSON ListGlossariesResponse where
        parseJSON
          = withObject "ListGlossariesResponse"
              (\ o ->
                 ListGlossariesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "glossaries" .!= mempty))

instance ToJSON ListGlossariesResponse where
        toJSON ListGlossariesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lgrNextPageToken,
                  ("glossaries" .=) <$> _lgrGlossaries])
