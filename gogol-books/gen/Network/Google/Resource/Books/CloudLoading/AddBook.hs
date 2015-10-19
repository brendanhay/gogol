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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksCloudLoadingAddBook@.
module Network.Google.Resource.Books.CloudLoading.AddBook
    (
    -- * REST Resource
      CloudLoadingAddBookResource

    -- * Creating a Request
    , cloudLoadingAddBook'
    , CloudLoadingAddBook'

    -- * Request Lenses
    , clabMimeType
    , clabUploadClientToken
    , clabName
    , clabDriveDocumentId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksCloudLoadingAddBook@ method which the
-- 'CloudLoadingAddBook'' request conforms to.
type CloudLoadingAddBookResource =
     "cloudloading" :>
       "addBook" :>
         QueryParam "mime_type" Text :>
           QueryParam "upload_client_token" Text :>
             QueryParam "name" Text :>
               QueryParam "drive_document_id" Text :>
                 QueryParam "alt" AltJSON :>
                   Post '[JSON] BooksCloudLoadingResource

-- |
--
-- /See:/ 'cloudLoadingAddBook'' smart constructor.
data CloudLoadingAddBook' = CloudLoadingAddBook'
    { _clabMimeType          :: !(Maybe Text)
    , _clabUploadClientToken :: !(Maybe Text)
    , _clabName              :: !(Maybe Text)
    , _clabDriveDocumentId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudLoadingAddBook'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clabMimeType'
--
-- * 'clabUploadClientToken'
--
-- * 'clabName'
--
-- * 'clabDriveDocumentId'
cloudLoadingAddBook'
    :: CloudLoadingAddBook'
cloudLoadingAddBook' =
    CloudLoadingAddBook'
    { _clabMimeType = Nothing
    , _clabUploadClientToken = Nothing
    , _clabName = Nothing
    , _clabDriveDocumentId = Nothing
    }

-- | The document MIME type. It can be set only if the drive_document_id is
-- set.
clabMimeType :: Lens' CloudLoadingAddBook' (Maybe Text)
clabMimeType
  = lens _clabMimeType (\ s a -> s{_clabMimeType = a})

clabUploadClientToken :: Lens' CloudLoadingAddBook' (Maybe Text)
clabUploadClientToken
  = lens _clabUploadClientToken
      (\ s a -> s{_clabUploadClientToken = a})

-- | The document name. It can be set only if the drive_document_id is set.
clabName :: Lens' CloudLoadingAddBook' (Maybe Text)
clabName = lens _clabName (\ s a -> s{_clabName = a})

-- | A drive document id. The upload_client_token must not be set.
clabDriveDocumentId :: Lens' CloudLoadingAddBook' (Maybe Text)
clabDriveDocumentId
  = lens _clabDriveDocumentId
      (\ s a -> s{_clabDriveDocumentId = a})

instance GoogleRequest CloudLoadingAddBook' where
        type Rs CloudLoadingAddBook' =
             BooksCloudLoadingResource
        requestClient CloudLoadingAddBook'{..}
          = go _clabMimeType _clabUploadClientToken _clabName
              _clabDriveDocumentId
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy CloudLoadingAddBookResource)
                      mempty
