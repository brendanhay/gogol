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
-- Module      : Network.Google.Resource.Language.Documents.AnnotateText
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A convenience method that provides all the features that
-- analyzeSentiment, analyzeEntities, and analyzeSyntax provide in one
-- call.
--
-- /See:/ <https://cloud.google.com/natural-language/ Google Cloud Natural Language API Reference> for @language.documents.annotateText@.
module Network.Google.Resource.Language.Documents.AnnotateText
    (
    -- * REST Resource
      DocumentsAnnotateTextResource

    -- * Creating a Request
    , documentsAnnotateText
    , DocumentsAnnotateText

    -- * Request Lenses
    , datXgafv
    , datUploadProtocol
    , datPp
    , datAccessToken
    , datUploadType
    , datPayload
    , datBearerToken
    , datCallback
    ) where

import           Network.Google.Language.Types
import           Network.Google.Prelude

-- | A resource alias for @language.documents.annotateText@ method which the
-- 'DocumentsAnnotateText' request conforms to.
type DocumentsAnnotateTextResource =
     "v1" :>
       "documents:annotateText" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AnnotateTextRequest :>
                           Post '[JSON] AnnotateTextResponse

-- | A convenience method that provides all the features that
-- analyzeSentiment, analyzeEntities, and analyzeSyntax provide in one
-- call.
--
-- /See:/ 'documentsAnnotateText' smart constructor.
data DocumentsAnnotateText = DocumentsAnnotateText'
    { _datXgafv          :: !(Maybe Xgafv)
    , _datUploadProtocol :: !(Maybe Text)
    , _datPp             :: !Bool
    , _datAccessToken    :: !(Maybe Text)
    , _datUploadType     :: !(Maybe Text)
    , _datPayload        :: !AnnotateTextRequest
    , _datBearerToken    :: !(Maybe Text)
    , _datCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DocumentsAnnotateText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datXgafv'
--
-- * 'datUploadProtocol'
--
-- * 'datPp'
--
-- * 'datAccessToken'
--
-- * 'datUploadType'
--
-- * 'datPayload'
--
-- * 'datBearerToken'
--
-- * 'datCallback'
documentsAnnotateText
    :: AnnotateTextRequest -- ^ 'datPayload'
    -> DocumentsAnnotateText
documentsAnnotateText pDatPayload_ =
    DocumentsAnnotateText'
    { _datXgafv = Nothing
    , _datUploadProtocol = Nothing
    , _datPp = True
    , _datAccessToken = Nothing
    , _datUploadType = Nothing
    , _datPayload = pDatPayload_
    , _datBearerToken = Nothing
    , _datCallback = Nothing
    }

-- | V1 error format.
datXgafv :: Lens' DocumentsAnnotateText (Maybe Xgafv)
datXgafv = lens _datXgafv (\ s a -> s{_datXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
datUploadProtocol :: Lens' DocumentsAnnotateText (Maybe Text)
datUploadProtocol
  = lens _datUploadProtocol
      (\ s a -> s{_datUploadProtocol = a})

-- | Pretty-print response.
datPp :: Lens' DocumentsAnnotateText Bool
datPp = lens _datPp (\ s a -> s{_datPp = a})

-- | OAuth access token.
datAccessToken :: Lens' DocumentsAnnotateText (Maybe Text)
datAccessToken
  = lens _datAccessToken
      (\ s a -> s{_datAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
datUploadType :: Lens' DocumentsAnnotateText (Maybe Text)
datUploadType
  = lens _datUploadType
      (\ s a -> s{_datUploadType = a})

-- | Multipart request metadata.
datPayload :: Lens' DocumentsAnnotateText AnnotateTextRequest
datPayload
  = lens _datPayload (\ s a -> s{_datPayload = a})

-- | OAuth bearer token.
datBearerToken :: Lens' DocumentsAnnotateText (Maybe Text)
datBearerToken
  = lens _datBearerToken
      (\ s a -> s{_datBearerToken = a})

-- | JSONP
datCallback :: Lens' DocumentsAnnotateText (Maybe Text)
datCallback
  = lens _datCallback (\ s a -> s{_datCallback = a})

instance GoogleRequest DocumentsAnnotateText where
        type Rs DocumentsAnnotateText = AnnotateTextResponse
        type Scopes DocumentsAnnotateText =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient DocumentsAnnotateText'{..}
          = go _datXgafv _datUploadProtocol (Just _datPp)
              _datAccessToken
              _datUploadType
              _datBearerToken
              _datCallback
              (Just AltJSON)
              _datPayload
              languageService
          where go
                  = buildClient
                      (Proxy :: Proxy DocumentsAnnotateTextResource)
                      mempty
