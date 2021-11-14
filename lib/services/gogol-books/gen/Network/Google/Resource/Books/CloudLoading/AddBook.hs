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
-- Module      : Network.Google.Resource.Books.CloudLoading.AddBook
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a user-upload volume and triggers processing.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.cloudloading.addBook@.
module Network.Google.Resource.Books.CloudLoading.AddBook
    (
    -- * REST Resource
      CloudLoadingAddBookResource

    -- * Creating a Request
    , cloudLoadingAddBook
    , CloudLoadingAddBook

    -- * Request Lenses
    , clabXgafv
    , clabUploadProtocol
    , clabAccessToken
    , clabUploadType
    , clabMimeType
    , clabUploadClientToken
    , clabName
    , clabDriveDocumentId
    , clabCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.cloudloading.addBook@ method which the
-- 'CloudLoadingAddBook' request conforms to.
type CloudLoadingAddBookResource =
     "books" :>
       "v1" :>
         "cloudloading" :>
           "addBook" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "mime_type" Text :>
                       QueryParam "upload_client_token" Text :>
                         QueryParam "name" Text :>
                           QueryParam "drive_document_id" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] BooksCloudLoadingResource

-- | Add a user-upload volume and triggers processing.
--
-- /See:/ 'cloudLoadingAddBook' smart constructor.
data CloudLoadingAddBook =
  CloudLoadingAddBook'
    { _clabXgafv :: !(Maybe Xgafv)
    , _clabUploadProtocol :: !(Maybe Text)
    , _clabAccessToken :: !(Maybe Text)
    , _clabUploadType :: !(Maybe Text)
    , _clabMimeType :: !(Maybe Text)
    , _clabUploadClientToken :: !(Maybe Text)
    , _clabName :: !(Maybe Text)
    , _clabDriveDocumentId :: !(Maybe Text)
    , _clabCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudLoadingAddBook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clabXgafv'
--
-- * 'clabUploadProtocol'
--
-- * 'clabAccessToken'
--
-- * 'clabUploadType'
--
-- * 'clabMimeType'
--
-- * 'clabUploadClientToken'
--
-- * 'clabName'
--
-- * 'clabDriveDocumentId'
--
-- * 'clabCallback'
cloudLoadingAddBook
    :: CloudLoadingAddBook
cloudLoadingAddBook =
  CloudLoadingAddBook'
    { _clabXgafv = Nothing
    , _clabUploadProtocol = Nothing
    , _clabAccessToken = Nothing
    , _clabUploadType = Nothing
    , _clabMimeType = Nothing
    , _clabUploadClientToken = Nothing
    , _clabName = Nothing
    , _clabDriveDocumentId = Nothing
    , _clabCallback = Nothing
    }


-- | V1 error format.
clabXgafv :: Lens' CloudLoadingAddBook (Maybe Xgafv)
clabXgafv
  = lens _clabXgafv (\ s a -> s{_clabXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clabUploadProtocol :: Lens' CloudLoadingAddBook (Maybe Text)
clabUploadProtocol
  = lens _clabUploadProtocol
      (\ s a -> s{_clabUploadProtocol = a})

-- | OAuth access token.
clabAccessToken :: Lens' CloudLoadingAddBook (Maybe Text)
clabAccessToken
  = lens _clabAccessToken
      (\ s a -> s{_clabAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clabUploadType :: Lens' CloudLoadingAddBook (Maybe Text)
clabUploadType
  = lens _clabUploadType
      (\ s a -> s{_clabUploadType = a})

-- | The document MIME type. It can be set only if the drive_document_id is
-- set.
clabMimeType :: Lens' CloudLoadingAddBook (Maybe Text)
clabMimeType
  = lens _clabMimeType (\ s a -> s{_clabMimeType = a})

-- | Scotty upload token.
clabUploadClientToken :: Lens' CloudLoadingAddBook (Maybe Text)
clabUploadClientToken
  = lens _clabUploadClientToken
      (\ s a -> s{_clabUploadClientToken = a})

-- | The document name. It can be set only if the drive_document_id is set.
clabName :: Lens' CloudLoadingAddBook (Maybe Text)
clabName = lens _clabName (\ s a -> s{_clabName = a})

-- | A drive document id. The upload_client_token must not be set.
clabDriveDocumentId :: Lens' CloudLoadingAddBook (Maybe Text)
clabDriveDocumentId
  = lens _clabDriveDocumentId
      (\ s a -> s{_clabDriveDocumentId = a})

-- | JSONP
clabCallback :: Lens' CloudLoadingAddBook (Maybe Text)
clabCallback
  = lens _clabCallback (\ s a -> s{_clabCallback = a})

instance GoogleRequest CloudLoadingAddBook where
        type Rs CloudLoadingAddBook =
             BooksCloudLoadingResource
        type Scopes CloudLoadingAddBook =
             '["https://www.googleapis.com/auth/books"]
        requestClient CloudLoadingAddBook'{..}
          = go _clabXgafv _clabUploadProtocol _clabAccessToken
              _clabUploadType
              _clabMimeType
              _clabUploadClientToken
              _clabName
              _clabDriveDocumentId
              _clabCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy CloudLoadingAddBookResource)
                      mempty
