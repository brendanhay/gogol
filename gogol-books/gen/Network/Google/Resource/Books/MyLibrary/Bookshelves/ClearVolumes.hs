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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.ClearVolumes
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears all volumes from a bookshelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.clearVolumes@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.ClearVolumes
    (
    -- * REST Resource
      MyLibraryBookshelvesClearVolumesResource

    -- * Creating a Request
    , myLibraryBookshelvesClearVolumes
    , MyLibraryBookshelvesClearVolumes

    -- * Request Lenses
    , mlbcvXgafv
    , mlbcvUploadProtocol
    , mlbcvAccessToken
    , mlbcvUploadType
    , mlbcvShelf
    , mlbcvSource
    , mlbcvCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.bookshelves.clearVolumes@ method which the
-- 'MyLibraryBookshelvesClearVolumes' request conforms to.
type MyLibraryBookshelvesClearVolumesResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "bookshelves" :>
             Capture "shelf" Text :>
               "clearVolumes" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "source" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Clears all volumes from a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesClearVolumes' smart constructor.
data MyLibraryBookshelvesClearVolumes =
  MyLibraryBookshelvesClearVolumes'
    { _mlbcvXgafv :: !(Maybe Xgafv)
    , _mlbcvUploadProtocol :: !(Maybe Text)
    , _mlbcvAccessToken :: !(Maybe Text)
    , _mlbcvUploadType :: !(Maybe Text)
    , _mlbcvShelf :: !Text
    , _mlbcvSource :: !(Maybe Text)
    , _mlbcvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryBookshelvesClearVolumes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbcvXgafv'
--
-- * 'mlbcvUploadProtocol'
--
-- * 'mlbcvAccessToken'
--
-- * 'mlbcvUploadType'
--
-- * 'mlbcvShelf'
--
-- * 'mlbcvSource'
--
-- * 'mlbcvCallback'
myLibraryBookshelvesClearVolumes
    :: Text -- ^ 'mlbcvShelf'
    -> MyLibraryBookshelvesClearVolumes
myLibraryBookshelvesClearVolumes pMlbcvShelf_ =
  MyLibraryBookshelvesClearVolumes'
    { _mlbcvXgafv = Nothing
    , _mlbcvUploadProtocol = Nothing
    , _mlbcvAccessToken = Nothing
    , _mlbcvUploadType = Nothing
    , _mlbcvShelf = pMlbcvShelf_
    , _mlbcvSource = Nothing
    , _mlbcvCallback = Nothing
    }


-- | V1 error format.
mlbcvXgafv :: Lens' MyLibraryBookshelvesClearVolumes (Maybe Xgafv)
mlbcvXgafv
  = lens _mlbcvXgafv (\ s a -> s{_mlbcvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlbcvUploadProtocol :: Lens' MyLibraryBookshelvesClearVolumes (Maybe Text)
mlbcvUploadProtocol
  = lens _mlbcvUploadProtocol
      (\ s a -> s{_mlbcvUploadProtocol = a})

-- | OAuth access token.
mlbcvAccessToken :: Lens' MyLibraryBookshelvesClearVolumes (Maybe Text)
mlbcvAccessToken
  = lens _mlbcvAccessToken
      (\ s a -> s{_mlbcvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlbcvUploadType :: Lens' MyLibraryBookshelvesClearVolumes (Maybe Text)
mlbcvUploadType
  = lens _mlbcvUploadType
      (\ s a -> s{_mlbcvUploadType = a})

-- | ID of bookshelf from which to remove a volume.
mlbcvShelf :: Lens' MyLibraryBookshelvesClearVolumes Text
mlbcvShelf
  = lens _mlbcvShelf (\ s a -> s{_mlbcvShelf = a})

-- | String to identify the originator of this request.
mlbcvSource :: Lens' MyLibraryBookshelvesClearVolumes (Maybe Text)
mlbcvSource
  = lens _mlbcvSource (\ s a -> s{_mlbcvSource = a})

-- | JSONP
mlbcvCallback :: Lens' MyLibraryBookshelvesClearVolumes (Maybe Text)
mlbcvCallback
  = lens _mlbcvCallback
      (\ s a -> s{_mlbcvCallback = a})

instance GoogleRequest
           MyLibraryBookshelvesClearVolumes
         where
        type Rs MyLibraryBookshelvesClearVolumes = Empty
        type Scopes MyLibraryBookshelvesClearVolumes =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryBookshelvesClearVolumes'{..}
          = go _mlbcvShelf _mlbcvXgafv _mlbcvUploadProtocol
              _mlbcvAccessToken
              _mlbcvUploadType
              _mlbcvSource
              _mlbcvCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryBookshelvesClearVolumesResource)
                      mempty
