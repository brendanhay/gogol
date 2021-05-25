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
-- Module      : Network.Google.Resource.Language.Documents.AnalyzeEntitySentiment
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds entities, similar to AnalyzeEntities in the text and analyzes
-- sentiment associated with each entity and its mentions.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference> for @language.documents.analyzeEntitySentiment@.
module Network.Google.Resource.Language.Documents.AnalyzeEntitySentiment
    (
    -- * REST Resource
      DocumentsAnalyzeEntitySentimentResource

    -- * Creating a Request
    , documentsAnalyzeEntitySentiment
    , DocumentsAnalyzeEntitySentiment

    -- * Request Lenses
    , daesXgafv
    , daesUploadProtocol
    , daesAccessToken
    , daesUploadType
    , daesPayload
    , daesCallback
    ) where

import Network.Google.Language.Types
import Network.Google.Prelude

-- | A resource alias for @language.documents.analyzeEntitySentiment@ method which the
-- 'DocumentsAnalyzeEntitySentiment' request conforms to.
type DocumentsAnalyzeEntitySentimentResource =
     "v1" :>
       "documents:analyzeEntitySentiment" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AnalyzeEntitySentimentRequest :>
                       Post '[JSON] AnalyzeEntitySentimentResponse

-- | Finds entities, similar to AnalyzeEntities in the text and analyzes
-- sentiment associated with each entity and its mentions.
--
-- /See:/ 'documentsAnalyzeEntitySentiment' smart constructor.
data DocumentsAnalyzeEntitySentiment =
  DocumentsAnalyzeEntitySentiment'
    { _daesXgafv :: !(Maybe Xgafv)
    , _daesUploadProtocol :: !(Maybe Text)
    , _daesAccessToken :: !(Maybe Text)
    , _daesUploadType :: !(Maybe Text)
    , _daesPayload :: !AnalyzeEntitySentimentRequest
    , _daesCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentsAnalyzeEntitySentiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daesXgafv'
--
-- * 'daesUploadProtocol'
--
-- * 'daesAccessToken'
--
-- * 'daesUploadType'
--
-- * 'daesPayload'
--
-- * 'daesCallback'
documentsAnalyzeEntitySentiment
    :: AnalyzeEntitySentimentRequest -- ^ 'daesPayload'
    -> DocumentsAnalyzeEntitySentiment
documentsAnalyzeEntitySentiment pDaesPayload_ =
  DocumentsAnalyzeEntitySentiment'
    { _daesXgafv = Nothing
    , _daesUploadProtocol = Nothing
    , _daesAccessToken = Nothing
    , _daesUploadType = Nothing
    , _daesPayload = pDaesPayload_
    , _daesCallback = Nothing
    }


-- | V1 error format.
daesXgafv :: Lens' DocumentsAnalyzeEntitySentiment (Maybe Xgafv)
daesXgafv
  = lens _daesXgafv (\ s a -> s{_daesXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
daesUploadProtocol :: Lens' DocumentsAnalyzeEntitySentiment (Maybe Text)
daesUploadProtocol
  = lens _daesUploadProtocol
      (\ s a -> s{_daesUploadProtocol = a})

-- | OAuth access token.
daesAccessToken :: Lens' DocumentsAnalyzeEntitySentiment (Maybe Text)
daesAccessToken
  = lens _daesAccessToken
      (\ s a -> s{_daesAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
daesUploadType :: Lens' DocumentsAnalyzeEntitySentiment (Maybe Text)
daesUploadType
  = lens _daesUploadType
      (\ s a -> s{_daesUploadType = a})

-- | Multipart request metadata.
daesPayload :: Lens' DocumentsAnalyzeEntitySentiment AnalyzeEntitySentimentRequest
daesPayload
  = lens _daesPayload (\ s a -> s{_daesPayload = a})

-- | JSONP
daesCallback :: Lens' DocumentsAnalyzeEntitySentiment (Maybe Text)
daesCallback
  = lens _daesCallback (\ s a -> s{_daesCallback = a})

instance GoogleRequest
           DocumentsAnalyzeEntitySentiment
         where
        type Rs DocumentsAnalyzeEntitySentiment =
             AnalyzeEntitySentimentResponse
        type Scopes DocumentsAnalyzeEntitySentiment =
             '["https://www.googleapis.com/auth/cloud-language",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient DocumentsAnalyzeEntitySentiment'{..}
          = go _daesXgafv _daesUploadProtocol _daesAccessToken
              _daesUploadType
              _daesCallback
              (Just AltJSON)
              _daesPayload
              languageService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DocumentsAnalyzeEntitySentimentResource)
                      mempty
