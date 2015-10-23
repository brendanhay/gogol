{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Translate.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Translate.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Translate.Types.Sum

--
-- /See:/ 'translationsResource' smart constructor.
data TranslationsResource = TranslationsResource
    { _trDetectedSourceLanguage :: !(Maybe Text)
    , _trTranslatedText         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TranslationsResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trDetectedSourceLanguage'
--
-- * 'trTranslatedText'
translationsResource
    :: TranslationsResource
translationsResource =
    TranslationsResource
    { _trDetectedSourceLanguage = Nothing
    , _trTranslatedText = Nothing
    }

-- | Detected source language if source parameter is unspecified.
trDetectedSourceLanguage :: Lens' TranslationsResource (Maybe Text)
trDetectedSourceLanguage
  = lens _trDetectedSourceLanguage
      (\ s a -> s{_trDetectedSourceLanguage = a})

-- | The translation.
trTranslatedText :: Lens' TranslationsResource (Maybe Text)
trTranslatedText
  = lens _trTranslatedText
      (\ s a -> s{_trTranslatedText = a})

instance FromJSON TranslationsResource where
        parseJSON
          = withObject "TranslationsResource"
              (\ o ->
                 TranslationsResource <$>
                   (o .:? "detectedSourceLanguage") <*>
                     (o .:? "translatedText"))

instance ToJSON TranslationsResource where
        toJSON TranslationsResource{..}
          = object
              (catMaybes
                 [("detectedSourceLanguage" .=) <$>
                    _trDetectedSourceLanguage,
                  ("translatedText" .=) <$> _trTranslatedText])

--
-- /See:/ 'detectionsListResponse' smart constructor.
newtype DetectionsListResponse = DetectionsListResponse
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
    DetectionsListResponse
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
                 DetectionsListResponse <$>
                   (o .:? "detections" .!= mempty))

instance ToJSON DetectionsListResponse where
        toJSON DetectionsListResponse{..}
          = object
              (catMaybes [("detections" .=) <$> _dlrDetections])

--
-- /See:/ 'languagesListResponse' smart constructor.
newtype LanguagesListResponse = LanguagesListResponse
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
    LanguagesListResponse
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
                 LanguagesListResponse <$>
                   (o .:? "languages" .!= mempty))

instance ToJSON LanguagesListResponse where
        toJSON LanguagesListResponse{..}
          = object
              (catMaybes [("languages" .=) <$> _llrLanguages])

--
-- /See:/ 'detectionsResourceItem' smart constructor.
data DetectionsResourceItem = DetectionsResourceItem
    { _driConfidence :: !(Maybe (JSONText Float))
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
    DetectionsResourceItem
    { _driConfidence = Nothing
    , _driIsReliable = Nothing
    , _driLanguage = Nothing
    }

-- | The confidence of the detection resul of this language.
driConfidence :: Lens' DetectionsResourceItem (Maybe Float)
driConfidence
  = lens _driConfidence
      (\ s a -> s{_driConfidence = a})
      . mapping _Coerce

-- | A boolean to indicate is the language detection result reliable.
driIsReliable :: Lens' DetectionsResourceItem (Maybe Bool)
driIsReliable
  = lens _driIsReliable
      (\ s a -> s{_driIsReliable = a})

-- | The language we detect
driLanguage :: Lens' DetectionsResourceItem (Maybe Text)
driLanguage
  = lens _driLanguage (\ s a -> s{_driLanguage = a})

instance FromJSON DetectionsResourceItem where
        parseJSON
          = withObject "DetectionsResourceItem"
              (\ o ->
                 DetectionsResourceItem <$>
                   (o .:? "confidence") <*> (o .:? "isReliable") <*>
                     (o .:? "language"))

instance ToJSON DetectionsResourceItem where
        toJSON DetectionsResourceItem{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _driConfidence,
                  ("isReliable" .=) <$> _driIsReliable,
                  ("language" .=) <$> _driLanguage])

--
-- /See:/ 'languagesResource' smart constructor.
data LanguagesResource = LanguagesResource
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
    LanguagesResource
    { _lrName = Nothing
    , _lrLanguage = Nothing
    }

-- | The localized name of the language if target parameter is given.
lrName :: Lens' LanguagesResource (Maybe Text)
lrName = lens _lrName (\ s a -> s{_lrName = a})

-- | The language code.
lrLanguage :: Lens' LanguagesResource (Maybe Text)
lrLanguage
  = lens _lrLanguage (\ s a -> s{_lrLanguage = a})

instance FromJSON LanguagesResource where
        parseJSON
          = withObject "LanguagesResource"
              (\ o ->
                 LanguagesResource <$>
                   (o .:? "name") <*> (o .:? "language"))

instance ToJSON LanguagesResource where
        toJSON LanguagesResource{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lrName,
                  ("language" .=) <$> _lrLanguage])

--
-- /See:/ 'translationsListResponse' smart constructor.
newtype TranslationsListResponse = TranslationsListResponse
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
    TranslationsListResponse
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
                 TranslationsListResponse <$>
                   (o .:? "translations" .!= mempty))

instance ToJSON TranslationsListResponse where
        toJSON TranslationsListResponse{..}
          = object
              (catMaybes
                 [("translations" .=) <$> _tlrTranslations])
