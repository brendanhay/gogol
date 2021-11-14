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
-- Module      : Network.Google.Resource.Docs.Documents.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest version of the specified document.
--
-- /See:/ <https://developers.google.com/docs/ Google Docs API Reference> for @docs.documents.get@.
module Network.Google.Resource.Docs.Documents.Get
    (
    -- * REST Resource
      DocumentsGetResource

    -- * Creating a Request
    , documentsGet
    , DocumentsGet

    -- * Request Lenses
    , dgXgafv
    , dgDocumentId
    , dgUploadProtocol
    , dgAccessToken
    , dgUploadType
    , dgSuggestionsViewMode
    , dgCallback
    ) where

import Network.Google.Docs.Types
import Network.Google.Prelude

-- | A resource alias for @docs.documents.get@ method which the
-- 'DocumentsGet' request conforms to.
type DocumentsGetResource =
     "v1" :>
       "documents" :>
         Capture "documentId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "suggestionsViewMode"
                     DocumentsGetSuggestionsViewMode
                     :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Document

-- | Gets the latest version of the specified document.
--
-- /See:/ 'documentsGet' smart constructor.
data DocumentsGet =
  DocumentsGet'
    { _dgXgafv :: !(Maybe Xgafv)
    , _dgDocumentId :: !Text
    , _dgUploadProtocol :: !(Maybe Text)
    , _dgAccessToken :: !(Maybe Text)
    , _dgUploadType :: !(Maybe Text)
    , _dgSuggestionsViewMode :: !(Maybe DocumentsGetSuggestionsViewMode)
    , _dgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgXgafv'
--
-- * 'dgDocumentId'
--
-- * 'dgUploadProtocol'
--
-- * 'dgAccessToken'
--
-- * 'dgUploadType'
--
-- * 'dgSuggestionsViewMode'
--
-- * 'dgCallback'
documentsGet
    :: Text -- ^ 'dgDocumentId'
    -> DocumentsGet
documentsGet pDgDocumentId_ =
  DocumentsGet'
    { _dgXgafv = Nothing
    , _dgDocumentId = pDgDocumentId_
    , _dgUploadProtocol = Nothing
    , _dgAccessToken = Nothing
    , _dgUploadType = Nothing
    , _dgSuggestionsViewMode = Nothing
    , _dgCallback = Nothing
    }


-- | V1 error format.
dgXgafv :: Lens' DocumentsGet (Maybe Xgafv)
dgXgafv = lens _dgXgafv (\ s a -> s{_dgXgafv = a})

-- | The ID of the document to retrieve.
dgDocumentId :: Lens' DocumentsGet Text
dgDocumentId
  = lens _dgDocumentId (\ s a -> s{_dgDocumentId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgUploadProtocol :: Lens' DocumentsGet (Maybe Text)
dgUploadProtocol
  = lens _dgUploadProtocol
      (\ s a -> s{_dgUploadProtocol = a})

-- | OAuth access token.
dgAccessToken :: Lens' DocumentsGet (Maybe Text)
dgAccessToken
  = lens _dgAccessToken
      (\ s a -> s{_dgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgUploadType :: Lens' DocumentsGet (Maybe Text)
dgUploadType
  = lens _dgUploadType (\ s a -> s{_dgUploadType = a})

-- | The suggestions view mode to apply to the document. This allows viewing
-- the document with all suggestions inline, accepted or rejected. If one
-- is not specified, DEFAULT_FOR_CURRENT_ACCESS is used.
dgSuggestionsViewMode :: Lens' DocumentsGet (Maybe DocumentsGetSuggestionsViewMode)
dgSuggestionsViewMode
  = lens _dgSuggestionsViewMode
      (\ s a -> s{_dgSuggestionsViewMode = a})

-- | JSONP
dgCallback :: Lens' DocumentsGet (Maybe Text)
dgCallback
  = lens _dgCallback (\ s a -> s{_dgCallback = a})

instance GoogleRequest DocumentsGet where
        type Rs DocumentsGet = Document
        type Scopes DocumentsGet =
             '["https://www.googleapis.com/auth/documents",
               "https://www.googleapis.com/auth/documents.readonly",
               "https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient DocumentsGet'{..}
          = go _dgDocumentId _dgXgafv _dgUploadProtocol
              _dgAccessToken
              _dgUploadType
              _dgSuggestionsViewMode
              _dgCallback
              (Just AltJSON)
              docsService
          where go
                  = buildClient (Proxy :: Proxy DocumentsGetResource)
                      mempty
