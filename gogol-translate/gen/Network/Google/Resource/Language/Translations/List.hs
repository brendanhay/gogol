{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Language.Translations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Translates input text, returning translated text.
--
-- /See:/ <https://code.google.com/apis/language/translate/v2/getting_started.html Google Cloud Translation API Reference> for @language.translations.list@.
module Network.Google.Resource.Language.Translations.List
    (
    -- * REST Resource
      TranslationsListResource

    -- * Creating a Request
    , translationsList
    , TranslationsList

    -- * Request Lenses
    , tlXgafv
    , tlUploadProtocol
    , tlPp
    , tlAccessToken
    , tlFormat
    , tlUploadType
    , tlQ
    , tlBearerToken
    , tlModel
    , tlSource
    , tlCid
    , tlTarget
    , tlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @language.translations.list@ method which the
-- 'TranslationsList' request conforms to.
type TranslationsListResource =
     "language" :>
       "translate" :>
         "v2" :>
           QueryParams "q" Text :>
             QueryParam "target" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "format" TranslationsListFormat :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "model" Text :>
                               QueryParam "source" Text :>
                                 QueryParams "cid" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] TranslationsListResponse

-- | Translates input text, returning translated text.
--
-- /See:/ 'translationsList' smart constructor.
data TranslationsList =
  TranslationsList'
    { _tlXgafv          :: !(Maybe Xgafv)
    , _tlUploadProtocol :: !(Maybe Text)
    , _tlPp             :: !Bool
    , _tlAccessToken    :: !(Maybe Text)
    , _tlFormat         :: !(Maybe TranslationsListFormat)
    , _tlUploadType     :: !(Maybe Text)
    , _tlQ              :: ![Text]
    , _tlBearerToken    :: !(Maybe Text)
    , _tlModel          :: !(Maybe Text)
    , _tlSource         :: !(Maybe Text)
    , _tlCid            :: !(Maybe [Text])
    , _tlTarget         :: !Text
    , _tlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TranslationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlXgafv'
--
-- * 'tlUploadProtocol'
--
-- * 'tlPp'
--
-- * 'tlAccessToken'
--
-- * 'tlFormat'
--
-- * 'tlUploadType'
--
-- * 'tlQ'
--
-- * 'tlBearerToken'
--
-- * 'tlModel'
--
-- * 'tlSource'
--
-- * 'tlCid'
--
-- * 'tlTarget'
--
-- * 'tlCallback'
translationsList
    :: [Text] -- ^ 'tlQ'
    -> Text -- ^ 'tlTarget'
    -> TranslationsList
translationsList pTlQ_ pTlTarget_ =
  TranslationsList'
    { _tlXgafv = Nothing
    , _tlUploadProtocol = Nothing
    , _tlPp = True
    , _tlAccessToken = Nothing
    , _tlFormat = Nothing
    , _tlUploadType = Nothing
    , _tlQ = _Coerce # pTlQ_
    , _tlBearerToken = Nothing
    , _tlModel = Nothing
    , _tlSource = Nothing
    , _tlCid = Nothing
    , _tlTarget = pTlTarget_
    , _tlCallback = Nothing
    }

-- | V1 error format.
tlXgafv :: Lens' TranslationsList (Maybe Xgafv)
tlXgafv = lens _tlXgafv (\ s a -> s{_tlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tlUploadProtocol :: Lens' TranslationsList (Maybe Text)
tlUploadProtocol
  = lens _tlUploadProtocol
      (\ s a -> s{_tlUploadProtocol = a})

-- | Pretty-print response.
tlPp :: Lens' TranslationsList Bool
tlPp = lens _tlPp (\ s a -> s{_tlPp = a})

-- | OAuth access token.
tlAccessToken :: Lens' TranslationsList (Maybe Text)
tlAccessToken
  = lens _tlAccessToken
      (\ s a -> s{_tlAccessToken = a})

-- | The format of the source text, in either HTML (default) or plain-text. A
-- value of \"html\" indicates HTML and a value of \"text\" indicates
-- plain-text.
tlFormat :: Lens' TranslationsList (Maybe TranslationsListFormat)
tlFormat = lens _tlFormat (\ s a -> s{_tlFormat = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tlUploadType :: Lens' TranslationsList (Maybe Text)
tlUploadType
  = lens _tlUploadType (\ s a -> s{_tlUploadType = a})

-- | The input text to translate. Repeat this parameter to perform
-- translation operations on multiple text inputs.
tlQ :: Lens' TranslationsList [Text]
tlQ = lens _tlQ (\ s a -> s{_tlQ = a}) . _Coerce

-- | OAuth bearer token.
tlBearerToken :: Lens' TranslationsList (Maybe Text)
tlBearerToken
  = lens _tlBearerToken
      (\ s a -> s{_tlBearerToken = a})

-- | The \`model\` type requested for this translation. Valid values are
-- listed in public documentation.
tlModel :: Lens' TranslationsList (Maybe Text)
tlModel = lens _tlModel (\ s a -> s{_tlModel = a})

-- | The language of the source text, set to one of the language codes listed
-- in Language Support. If the source language is not specified, the API
-- will attempt to identify the source language automatically and return it
-- within the response.
tlSource :: Lens' TranslationsList (Maybe Text)
tlSource = lens _tlSource (\ s a -> s{_tlSource = a})

-- | The customization id for translate
tlCid :: Lens' TranslationsList [Text]
tlCid
  = lens _tlCid (\ s a -> s{_tlCid = a}) . _Default .
      _Coerce

-- | The language to use for translation of the input text, set to one of the
-- language codes listed in Language Support.
tlTarget :: Lens' TranslationsList Text
tlTarget = lens _tlTarget (\ s a -> s{_tlTarget = a})

-- | JSONP
tlCallback :: Lens' TranslationsList (Maybe Text)
tlCallback
  = lens _tlCallback (\ s a -> s{_tlCallback = a})

instance GoogleRequest TranslationsList where
        type Rs TranslationsList = TranslationsListResponse
        type Scopes TranslationsList =
             '["https://www.googleapis.com/auth/cloud-translation",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient TranslationsList'{..}
          = go _tlQ (Just _tlTarget) _tlXgafv _tlUploadProtocol
              (Just _tlPp)
              _tlAccessToken
              _tlFormat
              _tlUploadType
              _tlBearerToken
              _tlModel
              _tlSource
              (_tlCid ^. _Default)
              _tlCallback
              (Just AltJSON)
              translateService
          where go
                  = buildClient
                      (Proxy :: Proxy TranslationsListResource)
                      mempty
