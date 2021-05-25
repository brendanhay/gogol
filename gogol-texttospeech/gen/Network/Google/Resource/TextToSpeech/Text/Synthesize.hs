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
-- Module      : Network.Google.Resource.TextToSpeech.Text.Synthesize
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synthesizes speech synchronously: receive results after all text input
-- has been processed.
--
-- /See:/ <https://cloud.google.com/text-to-speech/ Cloud Text-to-Speech API Reference> for @texttospeech.text.synthesize@.
module Network.Google.Resource.TextToSpeech.Text.Synthesize
    (
    -- * REST Resource
      TextSynthesizeResource

    -- * Creating a Request
    , textSynthesize
    , TextSynthesize

    -- * Request Lenses
    , tsXgafv
    , tsUploadProtocol
    , tsAccessToken
    , tsUploadType
    , tsPayload
    , tsCallback
    ) where

import Network.Google.Prelude
import Network.Google.TextToSpeech.Types

-- | A resource alias for @texttospeech.text.synthesize@ method which the
-- 'TextSynthesize' request conforms to.
type TextSynthesizeResource =
     "v1" :>
       "text:synthesize" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SynthesizeSpeechRequest :>
                       Post '[JSON] SynthesizeSpeechResponse

-- | Synthesizes speech synchronously: receive results after all text input
-- has been processed.
--
-- /See:/ 'textSynthesize' smart constructor.
data TextSynthesize =
  TextSynthesize'
    { _tsXgafv :: !(Maybe Xgafv)
    , _tsUploadProtocol :: !(Maybe Text)
    , _tsAccessToken :: !(Maybe Text)
    , _tsUploadType :: !(Maybe Text)
    , _tsPayload :: !SynthesizeSpeechRequest
    , _tsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextSynthesize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsXgafv'
--
-- * 'tsUploadProtocol'
--
-- * 'tsAccessToken'
--
-- * 'tsUploadType'
--
-- * 'tsPayload'
--
-- * 'tsCallback'
textSynthesize
    :: SynthesizeSpeechRequest -- ^ 'tsPayload'
    -> TextSynthesize
textSynthesize pTsPayload_ =
  TextSynthesize'
    { _tsXgafv = Nothing
    , _tsUploadProtocol = Nothing
    , _tsAccessToken = Nothing
    , _tsUploadType = Nothing
    , _tsPayload = pTsPayload_
    , _tsCallback = Nothing
    }


-- | V1 error format.
tsXgafv :: Lens' TextSynthesize (Maybe Xgafv)
tsXgafv = lens _tsXgafv (\ s a -> s{_tsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tsUploadProtocol :: Lens' TextSynthesize (Maybe Text)
tsUploadProtocol
  = lens _tsUploadProtocol
      (\ s a -> s{_tsUploadProtocol = a})

-- | OAuth access token.
tsAccessToken :: Lens' TextSynthesize (Maybe Text)
tsAccessToken
  = lens _tsAccessToken
      (\ s a -> s{_tsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tsUploadType :: Lens' TextSynthesize (Maybe Text)
tsUploadType
  = lens _tsUploadType (\ s a -> s{_tsUploadType = a})

-- | Multipart request metadata.
tsPayload :: Lens' TextSynthesize SynthesizeSpeechRequest
tsPayload
  = lens _tsPayload (\ s a -> s{_tsPayload = a})

-- | JSONP
tsCallback :: Lens' TextSynthesize (Maybe Text)
tsCallback
  = lens _tsCallback (\ s a -> s{_tsCallback = a})

instance GoogleRequest TextSynthesize where
        type Rs TextSynthesize = SynthesizeSpeechResponse
        type Scopes TextSynthesize =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TextSynthesize'{..}
          = go _tsXgafv _tsUploadProtocol _tsAccessToken
              _tsUploadType
              _tsCallback
              (Just AltJSON)
              _tsPayload
              textToSpeechService
          where go
                  = buildClient (Proxy :: Proxy TextSynthesizeResource)
                      mempty
