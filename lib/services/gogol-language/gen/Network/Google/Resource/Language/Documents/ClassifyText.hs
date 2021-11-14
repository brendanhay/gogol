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
-- Module      : Network.Google.Resource.Language.Documents.ClassifyText
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Classifies a document into categories.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference> for @language.documents.classifyText@.
module Network.Google.Resource.Language.Documents.ClassifyText
    (
    -- * REST Resource
      DocumentsClassifyTextResource

    -- * Creating a Request
    , documentsClassifyText
    , DocumentsClassifyText

    -- * Request Lenses
    , dctXgafv
    , dctUploadProtocol
    , dctAccessToken
    , dctUploadType
    , dctPayload
    , dctCallback
    ) where

import Network.Google.Language.Types
import Network.Google.Prelude

-- | A resource alias for @language.documents.classifyText@ method which the
-- 'DocumentsClassifyText' request conforms to.
type DocumentsClassifyTextResource =
     "v1" :>
       "documents:classifyText" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ClassifyTextRequest :>
                       Post '[JSON] ClassifyTextResponse

-- | Classifies a document into categories.
--
-- /See:/ 'documentsClassifyText' smart constructor.
data DocumentsClassifyText =
  DocumentsClassifyText'
    { _dctXgafv :: !(Maybe Xgafv)
    , _dctUploadProtocol :: !(Maybe Text)
    , _dctAccessToken :: !(Maybe Text)
    , _dctUploadType :: !(Maybe Text)
    , _dctPayload :: !ClassifyTextRequest
    , _dctCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentsClassifyText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dctXgafv'
--
-- * 'dctUploadProtocol'
--
-- * 'dctAccessToken'
--
-- * 'dctUploadType'
--
-- * 'dctPayload'
--
-- * 'dctCallback'
documentsClassifyText
    :: ClassifyTextRequest -- ^ 'dctPayload'
    -> DocumentsClassifyText
documentsClassifyText pDctPayload_ =
  DocumentsClassifyText'
    { _dctXgafv = Nothing
    , _dctUploadProtocol = Nothing
    , _dctAccessToken = Nothing
    , _dctUploadType = Nothing
    , _dctPayload = pDctPayload_
    , _dctCallback = Nothing
    }


-- | V1 error format.
dctXgafv :: Lens' DocumentsClassifyText (Maybe Xgafv)
dctXgafv = lens _dctXgafv (\ s a -> s{_dctXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dctUploadProtocol :: Lens' DocumentsClassifyText (Maybe Text)
dctUploadProtocol
  = lens _dctUploadProtocol
      (\ s a -> s{_dctUploadProtocol = a})

-- | OAuth access token.
dctAccessToken :: Lens' DocumentsClassifyText (Maybe Text)
dctAccessToken
  = lens _dctAccessToken
      (\ s a -> s{_dctAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dctUploadType :: Lens' DocumentsClassifyText (Maybe Text)
dctUploadType
  = lens _dctUploadType
      (\ s a -> s{_dctUploadType = a})

-- | Multipart request metadata.
dctPayload :: Lens' DocumentsClassifyText ClassifyTextRequest
dctPayload
  = lens _dctPayload (\ s a -> s{_dctPayload = a})

-- | JSONP
dctCallback :: Lens' DocumentsClassifyText (Maybe Text)
dctCallback
  = lens _dctCallback (\ s a -> s{_dctCallback = a})

instance GoogleRequest DocumentsClassifyText where
        type Rs DocumentsClassifyText = ClassifyTextResponse
        type Scopes DocumentsClassifyText =
             '["https://www.googleapis.com/auth/cloud-language",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient DocumentsClassifyText'{..}
          = go _dctXgafv _dctUploadProtocol _dctAccessToken
              _dctUploadType
              _dctCallback
              (Just AltJSON)
              _dctPayload
              languageService
          where go
                  = buildClient
                      (Proxy :: Proxy DocumentsClassifyTextResource)
                      mempty
