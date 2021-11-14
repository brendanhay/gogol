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
-- Module      : Network.Google.Resource.Books.CloudLoading.DeleteBook
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove the book and its contents
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.cloudloading.deleteBook@.
module Network.Google.Resource.Books.CloudLoading.DeleteBook
    (
    -- * REST Resource
      CloudLoadingDeleteBookResource

    -- * Creating a Request
    , cloudLoadingDeleteBook
    , CloudLoadingDeleteBook

    -- * Request Lenses
    , cldbXgafv
    , cldbUploadProtocol
    , cldbAccessToken
    , cldbUploadType
    , cldbVolumeId
    , cldbCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.cloudloading.deleteBook@ method which the
-- 'CloudLoadingDeleteBook' request conforms to.
type CloudLoadingDeleteBookResource =
     "books" :>
       "v1" :>
         "cloudloading" :>
           "deleteBook" :>
             QueryParam "volumeId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Remove the book and its contents
--
-- /See:/ 'cloudLoadingDeleteBook' smart constructor.
data CloudLoadingDeleteBook =
  CloudLoadingDeleteBook'
    { _cldbXgafv :: !(Maybe Xgafv)
    , _cldbUploadProtocol :: !(Maybe Text)
    , _cldbAccessToken :: !(Maybe Text)
    , _cldbUploadType :: !(Maybe Text)
    , _cldbVolumeId :: !Text
    , _cldbCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudLoadingDeleteBook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldbXgafv'
--
-- * 'cldbUploadProtocol'
--
-- * 'cldbAccessToken'
--
-- * 'cldbUploadType'
--
-- * 'cldbVolumeId'
--
-- * 'cldbCallback'
cloudLoadingDeleteBook
    :: Text -- ^ 'cldbVolumeId'
    -> CloudLoadingDeleteBook
cloudLoadingDeleteBook pCldbVolumeId_ =
  CloudLoadingDeleteBook'
    { _cldbXgafv = Nothing
    , _cldbUploadProtocol = Nothing
    , _cldbAccessToken = Nothing
    , _cldbUploadType = Nothing
    , _cldbVolumeId = pCldbVolumeId_
    , _cldbCallback = Nothing
    }


-- | V1 error format.
cldbXgafv :: Lens' CloudLoadingDeleteBook (Maybe Xgafv)
cldbXgafv
  = lens _cldbXgafv (\ s a -> s{_cldbXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cldbUploadProtocol :: Lens' CloudLoadingDeleteBook (Maybe Text)
cldbUploadProtocol
  = lens _cldbUploadProtocol
      (\ s a -> s{_cldbUploadProtocol = a})

-- | OAuth access token.
cldbAccessToken :: Lens' CloudLoadingDeleteBook (Maybe Text)
cldbAccessToken
  = lens _cldbAccessToken
      (\ s a -> s{_cldbAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cldbUploadType :: Lens' CloudLoadingDeleteBook (Maybe Text)
cldbUploadType
  = lens _cldbUploadType
      (\ s a -> s{_cldbUploadType = a})

-- | The id of the book to be removed.
cldbVolumeId :: Lens' CloudLoadingDeleteBook Text
cldbVolumeId
  = lens _cldbVolumeId (\ s a -> s{_cldbVolumeId = a})

-- | JSONP
cldbCallback :: Lens' CloudLoadingDeleteBook (Maybe Text)
cldbCallback
  = lens _cldbCallback (\ s a -> s{_cldbCallback = a})

instance GoogleRequest CloudLoadingDeleteBook where
        type Rs CloudLoadingDeleteBook = Empty
        type Scopes CloudLoadingDeleteBook =
             '["https://www.googleapis.com/auth/books"]
        requestClient CloudLoadingDeleteBook'{..}
          = go (Just _cldbVolumeId) _cldbXgafv
              _cldbUploadProtocol
              _cldbAccessToken
              _cldbUploadType
              _cldbCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy CloudLoadingDeleteBookResource)
                      mempty
