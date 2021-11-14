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
-- Module      : Network.Google.Resource.Speech.Speech.Recognize
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs synchronous speech recognition: receive results after all audio
-- has been sent and processed.
--
-- /See:/ <https://cloud.google.com/speech-to-text/docs/quickstart-protocol Cloud Speech-to-Text API Reference> for @speech.speech.recognize@.
module Network.Google.Resource.Speech.Speech.Recognize
    (
    -- * REST Resource
      SpeechRecognizeResource

    -- * Creating a Request
    , speechRecognize
    , SpeechRecognize

    -- * Request Lenses
    , srXgafv
    , srUploadProtocol
    , srAccessToken
    , srUploadType
    , srPayload
    , srCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Speech.Types

-- | A resource alias for @speech.speech.recognize@ method which the
-- 'SpeechRecognize' request conforms to.
type SpeechRecognizeResource =
     "v1p1beta1" :>
       "speech:recognize" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RecognizeRequest :>
                       Post '[JSON] RecognizeResponse

-- | Performs synchronous speech recognition: receive results after all audio
-- has been sent and processed.
--
-- /See:/ 'speechRecognize' smart constructor.
data SpeechRecognize =
  SpeechRecognize'
    { _srXgafv          :: !(Maybe Xgafv)
    , _srUploadProtocol :: !(Maybe Text)
    , _srAccessToken    :: !(Maybe Text)
    , _srUploadType     :: !(Maybe Text)
    , _srPayload        :: !RecognizeRequest
    , _srCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpeechRecognize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srXgafv'
--
-- * 'srUploadProtocol'
--
-- * 'srAccessToken'
--
-- * 'srUploadType'
--
-- * 'srPayload'
--
-- * 'srCallback'
speechRecognize
    :: RecognizeRequest -- ^ 'srPayload'
    -> SpeechRecognize
speechRecognize pSrPayload_ =
  SpeechRecognize'
    { _srXgafv = Nothing
    , _srUploadProtocol = Nothing
    , _srAccessToken = Nothing
    , _srUploadType = Nothing
    , _srPayload = pSrPayload_
    , _srCallback = Nothing
    }


-- | V1 error format.
srXgafv :: Lens' SpeechRecognize (Maybe Xgafv)
srXgafv = lens _srXgafv (\ s a -> s{_srXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srUploadProtocol :: Lens' SpeechRecognize (Maybe Text)
srUploadProtocol
  = lens _srUploadProtocol
      (\ s a -> s{_srUploadProtocol = a})

-- | OAuth access token.
srAccessToken :: Lens' SpeechRecognize (Maybe Text)
srAccessToken
  = lens _srAccessToken
      (\ s a -> s{_srAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srUploadType :: Lens' SpeechRecognize (Maybe Text)
srUploadType
  = lens _srUploadType (\ s a -> s{_srUploadType = a})

-- | Multipart request metadata.
srPayload :: Lens' SpeechRecognize RecognizeRequest
srPayload
  = lens _srPayload (\ s a -> s{_srPayload = a})

-- | JSONP
srCallback :: Lens' SpeechRecognize (Maybe Text)
srCallback
  = lens _srCallback (\ s a -> s{_srCallback = a})

instance GoogleRequest SpeechRecognize where
        type Rs SpeechRecognize = RecognizeResponse
        type Scopes SpeechRecognize =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient SpeechRecognize'{..}
          = go _srXgafv _srUploadProtocol _srAccessToken
              _srUploadType
              _srCallback
              (Just AltJSON)
              _srPayload
              speechService
          where go
                  = buildClient
                      (Proxy :: Proxy SpeechRecognizeResource)
                      mempty
