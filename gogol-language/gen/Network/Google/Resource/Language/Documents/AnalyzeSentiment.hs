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
-- Module      : Network.Google.Resource.Language.Documents.AnalyzeSentiment
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Analyzes the sentiment of the provided text.
--
-- /See:/ <https://cloud.google.com/natural-language/ Google Cloud Natural Language API Reference> for @language.documents.analyzeSentiment@.
module Network.Google.Resource.Language.Documents.AnalyzeSentiment
    (
    -- * REST Resource
      DocumentsAnalyzeSentimentResource

    -- * Creating a Request
    , documentsAnalyzeSentiment
    , DocumentsAnalyzeSentiment

    -- * Request Lenses
    , dasXgafv
    , dasUploadProtocol
    , dasPp
    , dasAccessToken
    , dasUploadType
    , dasPayload
    , dasBearerToken
    , dasCallback
    ) where

import           Network.Google.Language.Types
import           Network.Google.Prelude

-- | A resource alias for @language.documents.analyzeSentiment@ method which the
-- 'DocumentsAnalyzeSentiment' request conforms to.
type DocumentsAnalyzeSentimentResource =
     "v1" :>
       "documents:analyzeSentiment" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AnalyzeSentimentRequest :>
                           Post '[JSON] AnalyzeSentimentResponse

-- | Analyzes the sentiment of the provided text.
--
-- /See:/ 'documentsAnalyzeSentiment' smart constructor.
data DocumentsAnalyzeSentiment = DocumentsAnalyzeSentiment'
    { _dasXgafv          :: !(Maybe Xgafv)
    , _dasUploadProtocol :: !(Maybe Text)
    , _dasPp             :: !Bool
    , _dasAccessToken    :: !(Maybe Text)
    , _dasUploadType     :: !(Maybe Text)
    , _dasPayload        :: !AnalyzeSentimentRequest
    , _dasBearerToken    :: !(Maybe Text)
    , _dasCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DocumentsAnalyzeSentiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasXgafv'
--
-- * 'dasUploadProtocol'
--
-- * 'dasPp'
--
-- * 'dasAccessToken'
--
-- * 'dasUploadType'
--
-- * 'dasPayload'
--
-- * 'dasBearerToken'
--
-- * 'dasCallback'
documentsAnalyzeSentiment
    :: AnalyzeSentimentRequest -- ^ 'dasPayload'
    -> DocumentsAnalyzeSentiment
documentsAnalyzeSentiment pDasPayload_ =
    DocumentsAnalyzeSentiment'
    { _dasXgafv = Nothing
    , _dasUploadProtocol = Nothing
    , _dasPp = True
    , _dasAccessToken = Nothing
    , _dasUploadType = Nothing
    , _dasPayload = pDasPayload_
    , _dasBearerToken = Nothing
    , _dasCallback = Nothing
    }

-- | V1 error format.
dasXgafv :: Lens' DocumentsAnalyzeSentiment (Maybe Xgafv)
dasXgafv = lens _dasXgafv (\ s a -> s{_dasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dasUploadProtocol :: Lens' DocumentsAnalyzeSentiment (Maybe Text)
dasUploadProtocol
  = lens _dasUploadProtocol
      (\ s a -> s{_dasUploadProtocol = a})

-- | Pretty-print response.
dasPp :: Lens' DocumentsAnalyzeSentiment Bool
dasPp = lens _dasPp (\ s a -> s{_dasPp = a})

-- | OAuth access token.
dasAccessToken :: Lens' DocumentsAnalyzeSentiment (Maybe Text)
dasAccessToken
  = lens _dasAccessToken
      (\ s a -> s{_dasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dasUploadType :: Lens' DocumentsAnalyzeSentiment (Maybe Text)
dasUploadType
  = lens _dasUploadType
      (\ s a -> s{_dasUploadType = a})

-- | Multipart request metadata.
dasPayload :: Lens' DocumentsAnalyzeSentiment AnalyzeSentimentRequest
dasPayload
  = lens _dasPayload (\ s a -> s{_dasPayload = a})

-- | OAuth bearer token.
dasBearerToken :: Lens' DocumentsAnalyzeSentiment (Maybe Text)
dasBearerToken
  = lens _dasBearerToken
      (\ s a -> s{_dasBearerToken = a})

-- | JSONP
dasCallback :: Lens' DocumentsAnalyzeSentiment (Maybe Text)
dasCallback
  = lens _dasCallback (\ s a -> s{_dasCallback = a})

instance GoogleRequest DocumentsAnalyzeSentiment
         where
        type Rs DocumentsAnalyzeSentiment =
             AnalyzeSentimentResponse
        type Scopes DocumentsAnalyzeSentiment =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient DocumentsAnalyzeSentiment'{..}
          = go _dasXgafv _dasUploadProtocol (Just _dasPp)
              _dasAccessToken
              _dasUploadType
              _dasBearerToken
              _dasCallback
              (Just AltJSON)
              _dasPayload
              languageService
          where go
                  = buildClient
                      (Proxy :: Proxy DocumentsAnalyzeSentimentResource)
                      mempty
