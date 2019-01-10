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
-- Module      : Network.Google.Resource.Language.Translations.Translate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Translates input text, returning translated text.
--
-- /See:/ <https://code.google.com/apis/language/translate/v2/getting_started.html Google Cloud Translation API Reference> for @language.translations.translate@.
module Network.Google.Resource.Language.Translations.Translate
    (
    -- * REST Resource
      TranslationsTranslateResource

    -- * Creating a Request
    , translationsTranslate
    , TranslationsTranslate

    -- * Request Lenses
    , ttXgafv
    , ttUploadProtocol
    , ttPp
    , ttAccessToken
    , ttUploadType
    , ttPayload
    , ttBearerToken
    , ttCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @language.translations.translate@ method which the
-- 'TranslationsTranslate' request conforms to.
type TranslationsTranslateResource =
     "language" :>
       "translate" :>
         "v2" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TranslateTextRequest :>
                             Post '[JSON] TranslationsListResponse

-- | Translates input text, returning translated text.
--
-- /See:/ 'translationsTranslate' smart constructor.
data TranslationsTranslate = TranslationsTranslate'
    { _ttXgafv          :: !(Maybe Xgafv)
    , _ttUploadProtocol :: !(Maybe Text)
    , _ttPp             :: !Bool
    , _ttAccessToken    :: !(Maybe Text)
    , _ttUploadType     :: !(Maybe Text)
    , _ttPayload        :: !TranslateTextRequest
    , _ttBearerToken    :: !(Maybe Text)
    , _ttCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TranslationsTranslate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttXgafv'
--
-- * 'ttUploadProtocol'
--
-- * 'ttPp'
--
-- * 'ttAccessToken'
--
-- * 'ttUploadType'
--
-- * 'ttPayload'
--
-- * 'ttBearerToken'
--
-- * 'ttCallback'
translationsTranslate
    :: TranslateTextRequest -- ^ 'ttPayload'
    -> TranslationsTranslate
translationsTranslate pTtPayload_ =
    TranslationsTranslate'
    { _ttXgafv = Nothing
    , _ttUploadProtocol = Nothing
    , _ttPp = True
    , _ttAccessToken = Nothing
    , _ttUploadType = Nothing
    , _ttPayload = pTtPayload_
    , _ttBearerToken = Nothing
    , _ttCallback = Nothing
    }

-- | V1 error format.
ttXgafv :: Lens' TranslationsTranslate (Maybe Xgafv)
ttXgafv = lens _ttXgafv (\ s a -> s{_ttXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ttUploadProtocol :: Lens' TranslationsTranslate (Maybe Text)
ttUploadProtocol
  = lens _ttUploadProtocol
      (\ s a -> s{_ttUploadProtocol = a})

-- | Pretty-print response.
ttPp :: Lens' TranslationsTranslate Bool
ttPp = lens _ttPp (\ s a -> s{_ttPp = a})

-- | OAuth access token.
ttAccessToken :: Lens' TranslationsTranslate (Maybe Text)
ttAccessToken
  = lens _ttAccessToken
      (\ s a -> s{_ttAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ttUploadType :: Lens' TranslationsTranslate (Maybe Text)
ttUploadType
  = lens _ttUploadType (\ s a -> s{_ttUploadType = a})

-- | Multipart request metadata.
ttPayload :: Lens' TranslationsTranslate TranslateTextRequest
ttPayload
  = lens _ttPayload (\ s a -> s{_ttPayload = a})

-- | OAuth bearer token.
ttBearerToken :: Lens' TranslationsTranslate (Maybe Text)
ttBearerToken
  = lens _ttBearerToken
      (\ s a -> s{_ttBearerToken = a})

-- | JSONP
ttCallback :: Lens' TranslationsTranslate (Maybe Text)
ttCallback
  = lens _ttCallback (\ s a -> s{_ttCallback = a})

instance GoogleRequest TranslationsTranslate where
        type Rs TranslationsTranslate =
             TranslationsListResponse
        type Scopes TranslationsTranslate =
             '["https://www.googleapis.com/auth/cloud-translation",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient TranslationsTranslate'{..}
          = go _ttXgafv _ttUploadProtocol (Just _ttPp)
              _ttAccessToken
              _ttUploadType
              _ttBearerToken
              _ttCallback
              (Just AltJSON)
              _ttPayload
              translateService
          where go
                  = buildClient
                      (Proxy :: Proxy TranslationsTranslateResource)
                      mempty
