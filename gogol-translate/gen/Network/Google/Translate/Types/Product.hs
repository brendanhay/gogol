{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Translate.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Translate.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Translate.Types.Sum

-- | The request message for language detection.
--
-- /See:/ 'detectLanguageRequest' smart constructor.
newtype DetectLanguageRequest = DetectLanguageRequest'
    { _dlrQ :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DetectLanguageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrQ'
detectLanguageRequest
    :: DetectLanguageRequest
detectLanguageRequest =
    DetectLanguageRequest'
    { _dlrQ = Nothing
    }

-- | The input text upon which to perform language detection. Repeat this
-- parameter to perform language detection on multiple text inputs.
dlrQ :: Lens' DetectLanguageRequest [Text]
dlrQ
  = lens _dlrQ (\ s a -> s{_dlrQ = a}) . _Default .
      _Coerce

instance FromJSON DetectLanguageRequest where
        parseJSON
          = withObject "DetectLanguageRequest"
              (\ o ->
                 DetectLanguageRequest' <$> (o .:? "q" .!= mempty))

instance ToJSON DetectLanguageRequest where
        toJSON DetectLanguageRequest'{..}
          = object (catMaybes [("q" .=) <$> _dlrQ])

--
-- /See:/ 'translationsResource' smart constructor.
data TranslationsResource = TranslationsResource'
    { _trDetectedSourceLanguage :: !(Maybe Text)
    , _trModel                  :: !(Maybe Text)
    , _trTranslatedText         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TranslationsResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trDetectedSourceLanguage'
--
-- * 'trModel'
--
-- * 'trTranslatedText'
translationsResource
    :: TranslationsResource
translationsResource =
    TranslationsResource'
    { _trDetectedSourceLanguage = Nothing
    , _trModel = Nothing
    , _trTranslatedText = Nothing
    }

-- | The source language of the initial request, detected automatically, if
-- no source language was passed within the initial request. If the source
-- language was passed, auto-detection of the language will not occur and
-- this field will be empty.
trDetectedSourceLanguage :: Lens' TranslationsResource (Maybe Text)
trDetectedSourceLanguage
  = lens _trDetectedSourceLanguage
      (\ s a -> s{_trDetectedSourceLanguage = a})

-- | The \`model\` type used for this translation. Valid values are listed in
-- public documentation. Can be different from requested \`model\`. Present
-- only if specific model type was explicitly requested.
trModel :: Lens' TranslationsResource (Maybe Text)
trModel = lens _trModel (\ s a -> s{_trModel = a})

-- | Text translated into the target language.
trTranslatedText :: Lens' TranslationsResource (Maybe Text)
trTranslatedText
  = lens _trTranslatedText
      (\ s a -> s{_trTranslatedText = a})

instance FromJSON TranslationsResource where
        parseJSON
          = withObject "TranslationsResource"
              (\ o ->
                 TranslationsResource' <$>
                   (o .:? "detectedSourceLanguage") <*> (o .:? "model")
                     <*> (o .:? "translatedText"))

instance ToJSON TranslationsResource where
        toJSON TranslationsResource'{..}
          = object
              (catMaybes
                 [("detectedSourceLanguage" .=) <$>
                    _trDetectedSourceLanguage,
                  ("model" .=) <$> _trModel,
                  ("translatedText" .=) <$> _trTranslatedText])

-- | The main translation request message for the Cloud Translation API.
--
-- /See:/ 'translateTextRequest' smart constructor.
data TranslateTextRequest = TranslateTextRequest'
    { _ttrFormat :: !(Maybe Text)
    , _ttrQ      :: !(Maybe [Text])
    , _ttrModel  :: !(Maybe Text)
    , _ttrSource :: !(Maybe Text)
    , _ttrTarget :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TranslateTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttrFormat'
--
-- * 'ttrQ'
--
-- * 'ttrModel'
--
-- * 'ttrSource'
--
-- * 'ttrTarget'
translateTextRequest
    :: TranslateTextRequest
translateTextRequest =
    TranslateTextRequest'
    { _ttrFormat = Nothing
    , _ttrQ = Nothing
    , _ttrModel = Nothing
    , _ttrSource = Nothing
    , _ttrTarget = Nothing
    }

-- | The format of the source text, in either HTML (default) or plain-text. A
-- value of \"html\" indicates HTML and a value of \"text\" indicates
-- plain-text.
ttrFormat :: Lens' TranslateTextRequest (Maybe Text)
ttrFormat
  = lens _ttrFormat (\ s a -> s{_ttrFormat = a})

-- | The input text to translate. Repeat this parameter to perform
-- translation operations on multiple text inputs.
ttrQ :: Lens' TranslateTextRequest [Text]
ttrQ
  = lens _ttrQ (\ s a -> s{_ttrQ = a}) . _Default .
      _Coerce

-- | The \`model\` type requested for this translation. Valid values are
-- listed in public documentation.
ttrModel :: Lens' TranslateTextRequest (Maybe Text)
ttrModel = lens _ttrModel (\ s a -> s{_ttrModel = a})

-- | The language of the source text, set to one of the language codes listed
-- in Language Support. If the source language is not specified, the API
-- will attempt to identify the source language automatically and return it
-- within the response.
ttrSource :: Lens' TranslateTextRequest (Maybe Text)
ttrSource
  = lens _ttrSource (\ s a -> s{_ttrSource = a})

-- | The language to use for translation of the input text, set to one of the
-- language codes listed in Language Support.
ttrTarget :: Lens' TranslateTextRequest (Maybe Text)
ttrTarget
  = lens _ttrTarget (\ s a -> s{_ttrTarget = a})

instance FromJSON TranslateTextRequest where
        parseJSON
          = withObject "TranslateTextRequest"
              (\ o ->
                 TranslateTextRequest' <$>
                   (o .:? "format") <*> (o .:? "q" .!= mempty) <*>
                     (o .:? "model")
                     <*> (o .:? "source")
                     <*> (o .:? "target"))

instance ToJSON TranslateTextRequest where
        toJSON TranslateTextRequest'{..}
          = object
              (catMaybes
                 [("format" .=) <$> _ttrFormat, ("q" .=) <$> _ttrQ,
                  ("model" .=) <$> _ttrModel,
                  ("source" .=) <$> _ttrSource,
                  ("target" .=) <$> _ttrTarget])

--
-- /See:/ 'detectionsListResponse' smart constructor.
newtype DetectionsListResponse = DetectionsListResponse'
    { _dlrDetections :: Maybe [[DetectionsResourceItem]]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DetectionsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrDetections'
detectionsListResponse
    :: DetectionsListResponse
detectionsListResponse =
    DetectionsListResponse'
    { _dlrDetections = Nothing
    }

-- | A detections contains detection results of several text
dlrDetections :: Lens' DetectionsListResponse [[DetectionsResourceItem]]
dlrDetections
  = lens _dlrDetections
      (\ s a -> s{_dlrDetections = a})
      . _Default
      . _Coerce

instance FromJSON DetectionsListResponse where
        parseJSON
          = withObject "DetectionsListResponse"
              (\ o ->
                 DetectionsListResponse' <$>
                   (o .:? "detections" .!= mempty))

instance ToJSON DetectionsListResponse where
        toJSON DetectionsListResponse'{..}
          = object
              (catMaybes [("detections" .=) <$> _dlrDetections])

-- | The request message for discovering supported languages.
--
-- /See:/ 'getSupportedLanguagesRequest' smart constructor.
newtype GetSupportedLanguagesRequest = GetSupportedLanguagesRequest'
    { _gslrTarget :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetSupportedLanguagesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gslrTarget'
getSupportedLanguagesRequest
    :: GetSupportedLanguagesRequest
getSupportedLanguagesRequest =
    GetSupportedLanguagesRequest'
    { _gslrTarget = Nothing
    }

-- | The language to use to return localized, human readable names of
-- supported languages.
gslrTarget :: Lens' GetSupportedLanguagesRequest (Maybe Text)
gslrTarget
  = lens _gslrTarget (\ s a -> s{_gslrTarget = a})

instance FromJSON GetSupportedLanguagesRequest where
        parseJSON
          = withObject "GetSupportedLanguagesRequest"
              (\ o ->
                 GetSupportedLanguagesRequest' <$> (o .:? "target"))

instance ToJSON GetSupportedLanguagesRequest where
        toJSON GetSupportedLanguagesRequest'{..}
          = object (catMaybes [("target" .=) <$> _gslrTarget])

--
-- /See:/ 'languagesListResponse' smart constructor.
newtype LanguagesListResponse = LanguagesListResponse'
    { _llrLanguages :: Maybe [LanguagesResource]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LanguagesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrLanguages'
languagesListResponse
    :: LanguagesListResponse
languagesListResponse =
    LanguagesListResponse'
    { _llrLanguages = Nothing
    }

-- | List of source\/target languages supported by the translation API. If
-- target parameter is unspecified, the list is sorted by the ASCII code
-- point order of the language code. If target parameter is specified, the
-- list is sorted by the collation order of the language name in the target
-- language.
llrLanguages :: Lens' LanguagesListResponse [LanguagesResource]
llrLanguages
  = lens _llrLanguages (\ s a -> s{_llrLanguages = a})
      . _Default
      . _Coerce

instance FromJSON LanguagesListResponse where
        parseJSON
          = withObject "LanguagesListResponse"
              (\ o ->
                 LanguagesListResponse' <$>
                   (o .:? "languages" .!= mempty))

instance ToJSON LanguagesListResponse where
        toJSON LanguagesListResponse'{..}
          = object
              (catMaybes [("languages" .=) <$> _llrLanguages])

--
-- /See:/ 'detectionsResourceItem' smart constructor.
data DetectionsResourceItem = DetectionsResourceItem'
    { _driConfidence :: !(Maybe (Textual Double))
    , _driIsReliable :: !(Maybe Bool)
    , _driLanguage   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DetectionsResourceItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'driConfidence'
--
-- * 'driIsReliable'
--
-- * 'driLanguage'
detectionsResourceItem
    :: DetectionsResourceItem
detectionsResourceItem =
    DetectionsResourceItem'
    { _driConfidence = Nothing
    , _driIsReliable = Nothing
    , _driLanguage = Nothing
    }

-- | The confidence of the detection result of this language.
driConfidence :: Lens' DetectionsResourceItem (Maybe Double)
driConfidence
  = lens _driConfidence
      (\ s a -> s{_driConfidence = a})
      . mapping _Coerce

-- | A boolean to indicate is the language detection result reliable.
driIsReliable :: Lens' DetectionsResourceItem (Maybe Bool)
driIsReliable
  = lens _driIsReliable
      (\ s a -> s{_driIsReliable = a})

-- | The language we detected.
driLanguage :: Lens' DetectionsResourceItem (Maybe Text)
driLanguage
  = lens _driLanguage (\ s a -> s{_driLanguage = a})

instance FromJSON DetectionsResourceItem where
        parseJSON
          = withObject "DetectionsResourceItem"
              (\ o ->
                 DetectionsResourceItem' <$>
                   (o .:? "confidence") <*> (o .:? "isReliable") <*>
                     (o .:? "language"))

instance ToJSON DetectionsResourceItem where
        toJSON DetectionsResourceItem'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _driConfidence,
                  ("isReliable" .=) <$> _driIsReliable,
                  ("language" .=) <$> _driLanguage])

--
-- /See:/ 'languagesResource' smart constructor.
data LanguagesResource = LanguagesResource'
    { _lrName     :: !(Maybe Text)
    , _lrLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LanguagesResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrName'
--
-- * 'lrLanguage'
languagesResource
    :: LanguagesResource
languagesResource =
    LanguagesResource'
    { _lrName = Nothing
    , _lrLanguage = Nothing
    }

-- | Human readable name of the language localized to the target language.
lrName :: Lens' LanguagesResource (Maybe Text)
lrName = lens _lrName (\ s a -> s{_lrName = a})

-- | Supported language code, generally consisting of its ISO 639-1
-- identifier. (E.g. \'en\', \'ja\'). In certain cases, BCP-47 codes
-- including language + region identifiers are returned (e.g. \'zh-TW\' and
-- \'zh-CH\')
lrLanguage :: Lens' LanguagesResource (Maybe Text)
lrLanguage
  = lens _lrLanguage (\ s a -> s{_lrLanguage = a})

instance FromJSON LanguagesResource where
        parseJSON
          = withObject "LanguagesResource"
              (\ o ->
                 LanguagesResource' <$>
                   (o .:? "name") <*> (o .:? "language"))

instance ToJSON LanguagesResource where
        toJSON LanguagesResource'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lrName,
                  ("language" .=) <$> _lrLanguage])

-- | The main language translation response message.
--
-- /See:/ 'translationsListResponse' smart constructor.
newtype TranslationsListResponse = TranslationsListResponse'
    { _tlrTranslations :: Maybe [TranslationsResource]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TranslationsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlrTranslations'
translationsListResponse
    :: TranslationsListResponse
translationsListResponse =
    TranslationsListResponse'
    { _tlrTranslations = Nothing
    }

-- | Translations contains list of translation results of given text
tlrTranslations :: Lens' TranslationsListResponse [TranslationsResource]
tlrTranslations
  = lens _tlrTranslations
      (\ s a -> s{_tlrTranslations = a})
      . _Default
      . _Coerce

instance FromJSON TranslationsListResponse where
        parseJSON
          = withObject "TranslationsListResponse"
              (\ o ->
                 TranslationsListResponse' <$>
                   (o .:? "translations" .!= mempty))

instance ToJSON TranslationsListResponse where
        toJSON TranslationsListResponse'{..}
          = object
              (catMaybes
                 [("translations" .=) <$> _tlrTranslations])
