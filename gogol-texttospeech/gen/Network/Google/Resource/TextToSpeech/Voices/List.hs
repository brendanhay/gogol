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
-- Module      : Network.Google.Resource.TextToSpeech.Voices.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Voice supported for synthesis.
--
-- /See:/ <https://cloud.google.com/text-to-speech/ Cloud Text-to-Speech API Reference> for @texttospeech.voices.list@.
module Network.Google.Resource.TextToSpeech.Voices.List
    (
    -- * REST Resource
      VoicesListResource

    -- * Creating a Request
    , voicesList
    , VoicesList

    -- * Request Lenses
    , vlXgafv
    , vlLanguageCode
    , vlUploadProtocol
    , vlAccessToken
    , vlUploadType
    , vlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TextToSpeech.Types

-- | A resource alias for @texttospeech.voices.list@ method which the
-- 'VoicesList' request conforms to.
type VoicesListResource =
     "v1" :>
       "voices" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ListVoicesResponse

-- | Returns a list of Voice supported for synthesis.
--
-- /See:/ 'voicesList' smart constructor.
data VoicesList =
  VoicesList'
    { _vlXgafv          :: !(Maybe Xgafv)
    , _vlLanguageCode   :: !(Maybe Text)
    , _vlUploadProtocol :: !(Maybe Text)
    , _vlAccessToken    :: !(Maybe Text)
    , _vlUploadType     :: !(Maybe Text)
    , _vlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'VoicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlXgafv'
--
-- * 'vlLanguageCode'
--
-- * 'vlUploadProtocol'
--
-- * 'vlAccessToken'
--
-- * 'vlUploadType'
--
-- * 'vlCallback'
voicesList
    :: VoicesList
voicesList =
  VoicesList'
    { _vlXgafv = Nothing
    , _vlLanguageCode = Nothing
    , _vlUploadProtocol = Nothing
    , _vlAccessToken = Nothing
    , _vlUploadType = Nothing
    , _vlCallback = Nothing
    }

-- | V1 error format.
vlXgafv :: Lens' VoicesList (Maybe Xgafv)
vlXgafv = lens _vlXgafv (\ s a -> s{_vlXgafv = a})

-- | Optional (but recommended)
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language
-- tag. If specified, the ListVoices call will only return voices that can
-- be used to synthesize this language_code. E.g. when specifying
-- \"en-NZ\", you will get supported \"en-*\" voices; when specifying
-- \"no\", you will get supported \"no-*\" (Norwegian) and \"nb-*\"
-- (Norwegian Bokmal) voices; specifying \"zh\" will also get supported
-- \"cmn-*\" voices; specifying \"zh-hk\" will also get supported \"yue-*\"
-- voices.
vlLanguageCode :: Lens' VoicesList (Maybe Text)
vlLanguageCode
  = lens _vlLanguageCode
      (\ s a -> s{_vlLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vlUploadProtocol :: Lens' VoicesList (Maybe Text)
vlUploadProtocol
  = lens _vlUploadProtocol
      (\ s a -> s{_vlUploadProtocol = a})

-- | OAuth access token.
vlAccessToken :: Lens' VoicesList (Maybe Text)
vlAccessToken
  = lens _vlAccessToken
      (\ s a -> s{_vlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vlUploadType :: Lens' VoicesList (Maybe Text)
vlUploadType
  = lens _vlUploadType (\ s a -> s{_vlUploadType = a})

-- | JSONP
vlCallback :: Lens' VoicesList (Maybe Text)
vlCallback
  = lens _vlCallback (\ s a -> s{_vlCallback = a})

instance GoogleRequest VoicesList where
        type Rs VoicesList = ListVoicesResponse
        type Scopes VoicesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient VoicesList'{..}
          = go _vlXgafv _vlLanguageCode _vlUploadProtocol
              _vlAccessToken
              _vlUploadType
              _vlCallback
              (Just AltJSON)
              textToSpeechService
          where go
                  = buildClient (Proxy :: Proxy VoicesListResource)
                      mempty
