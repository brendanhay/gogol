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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.Volumes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets volume information for volumes on a bookshelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.volumes.list@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.Volumes.List
    (
    -- * REST Resource
      MyLibraryBookshelvesVolumesListResource

    -- * Creating a Request
    , myLibraryBookshelvesVolumesList
    , MyLibraryBookshelvesVolumesList

    -- * Request Lenses
    , mlbvlXgafv
    , mlbvlUploadProtocol
    , mlbvlCountry
    , mlbvlAccessToken
    , mlbvlUploadType
    , mlbvlQ
    , mlbvlShelf
    , mlbvlSource
    , mlbvlProjection
    , mlbvlStartIndex
    , mlbvlMaxResults
    , mlbvlShowPreOrders
    , mlbvlCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.bookshelves.volumes.list@ method which the
-- 'MyLibraryBookshelvesVolumesList' request conforms to.
type MyLibraryBookshelvesVolumesListResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "bookshelves" :>
             Capture "shelf" Text :>
               "volumes" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "country" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "q" Text :>
                             QueryParam "source" Text :>
                               QueryParam "projection"
                                 MyLibraryBookshelvesVolumesListProjection
                                 :>
                                 QueryParam "startIndex" (Textual Word32) :>
                                   QueryParam "maxResults" (Textual Word32) :>
                                     QueryParam "showPreorders" Bool :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] Volumes

-- | Gets volume information for volumes on a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesVolumesList' smart constructor.
data MyLibraryBookshelvesVolumesList =
  MyLibraryBookshelvesVolumesList'
    { _mlbvlXgafv :: !(Maybe Xgafv)
    , _mlbvlUploadProtocol :: !(Maybe Text)
    , _mlbvlCountry :: !(Maybe Text)
    , _mlbvlAccessToken :: !(Maybe Text)
    , _mlbvlUploadType :: !(Maybe Text)
    , _mlbvlQ :: !(Maybe Text)
    , _mlbvlShelf :: !Text
    , _mlbvlSource :: !(Maybe Text)
    , _mlbvlProjection :: !(Maybe MyLibraryBookshelvesVolumesListProjection)
    , _mlbvlStartIndex :: !(Maybe (Textual Word32))
    , _mlbvlMaxResults :: !(Maybe (Textual Word32))
    , _mlbvlShowPreOrders :: !(Maybe Bool)
    , _mlbvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryBookshelvesVolumesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbvlXgafv'
--
-- * 'mlbvlUploadProtocol'
--
-- * 'mlbvlCountry'
--
-- * 'mlbvlAccessToken'
--
-- * 'mlbvlUploadType'
--
-- * 'mlbvlQ'
--
-- * 'mlbvlShelf'
--
-- * 'mlbvlSource'
--
-- * 'mlbvlProjection'
--
-- * 'mlbvlStartIndex'
--
-- * 'mlbvlMaxResults'
--
-- * 'mlbvlShowPreOrders'
--
-- * 'mlbvlCallback'
myLibraryBookshelvesVolumesList
    :: Text -- ^ 'mlbvlShelf'
    -> MyLibraryBookshelvesVolumesList
myLibraryBookshelvesVolumesList pMlbvlShelf_ =
  MyLibraryBookshelvesVolumesList'
    { _mlbvlXgafv = Nothing
    , _mlbvlUploadProtocol = Nothing
    , _mlbvlCountry = Nothing
    , _mlbvlAccessToken = Nothing
    , _mlbvlUploadType = Nothing
    , _mlbvlQ = Nothing
    , _mlbvlShelf = pMlbvlShelf_
    , _mlbvlSource = Nothing
    , _mlbvlProjection = Nothing
    , _mlbvlStartIndex = Nothing
    , _mlbvlMaxResults = Nothing
    , _mlbvlShowPreOrders = Nothing
    , _mlbvlCallback = Nothing
    }


-- | V1 error format.
mlbvlXgafv :: Lens' MyLibraryBookshelvesVolumesList (Maybe Xgafv)
mlbvlXgafv
  = lens _mlbvlXgafv (\ s a -> s{_mlbvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlbvlUploadProtocol :: Lens' MyLibraryBookshelvesVolumesList (Maybe Text)
mlbvlUploadProtocol
  = lens _mlbvlUploadProtocol
      (\ s a -> s{_mlbvlUploadProtocol = a})

-- | ISO-3166-1 code to override the IP-based location.
mlbvlCountry :: Lens' MyLibraryBookshelvesVolumesList (Maybe Text)
mlbvlCountry
  = lens _mlbvlCountry (\ s a -> s{_mlbvlCountry = a})

-- | OAuth access token.
mlbvlAccessToken :: Lens' MyLibraryBookshelvesVolumesList (Maybe Text)
mlbvlAccessToken
  = lens _mlbvlAccessToken
      (\ s a -> s{_mlbvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlbvlUploadType :: Lens' MyLibraryBookshelvesVolumesList (Maybe Text)
mlbvlUploadType
  = lens _mlbvlUploadType
      (\ s a -> s{_mlbvlUploadType = a})

-- | Full-text search query string in this bookshelf.
mlbvlQ :: Lens' MyLibraryBookshelvesVolumesList (Maybe Text)
mlbvlQ = lens _mlbvlQ (\ s a -> s{_mlbvlQ = a})

-- | The bookshelf ID or name retrieve volumes for.
mlbvlShelf :: Lens' MyLibraryBookshelvesVolumesList Text
mlbvlShelf
  = lens _mlbvlShelf (\ s a -> s{_mlbvlShelf = a})

-- | String to identify the originator of this request.
mlbvlSource :: Lens' MyLibraryBookshelvesVolumesList (Maybe Text)
mlbvlSource
  = lens _mlbvlSource (\ s a -> s{_mlbvlSource = a})

-- | Restrict information returned to a set of selected fields.
mlbvlProjection :: Lens' MyLibraryBookshelvesVolumesList (Maybe MyLibraryBookshelvesVolumesListProjection)
mlbvlProjection
  = lens _mlbvlProjection
      (\ s a -> s{_mlbvlProjection = a})

-- | Index of the first element to return (starts at 0)
mlbvlStartIndex :: Lens' MyLibraryBookshelvesVolumesList (Maybe Word32)
mlbvlStartIndex
  = lens _mlbvlStartIndex
      (\ s a -> s{_mlbvlStartIndex = a})
      . mapping _Coerce

-- | Maximum number of results to return
mlbvlMaxResults :: Lens' MyLibraryBookshelvesVolumesList (Maybe Word32)
mlbvlMaxResults
  = lens _mlbvlMaxResults
      (\ s a -> s{_mlbvlMaxResults = a})
      . mapping _Coerce

-- | Set to true to show pre-ordered books. Defaults to false.
mlbvlShowPreOrders :: Lens' MyLibraryBookshelvesVolumesList (Maybe Bool)
mlbvlShowPreOrders
  = lens _mlbvlShowPreOrders
      (\ s a -> s{_mlbvlShowPreOrders = a})

-- | JSONP
mlbvlCallback :: Lens' MyLibraryBookshelvesVolumesList (Maybe Text)
mlbvlCallback
  = lens _mlbvlCallback
      (\ s a -> s{_mlbvlCallback = a})

instance GoogleRequest
           MyLibraryBookshelvesVolumesList
         where
        type Rs MyLibraryBookshelvesVolumesList = Volumes
        type Scopes MyLibraryBookshelvesVolumesList =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryBookshelvesVolumesList'{..}
          = go _mlbvlShelf _mlbvlXgafv _mlbvlUploadProtocol
              _mlbvlCountry
              _mlbvlAccessToken
              _mlbvlUploadType
              _mlbvlQ
              _mlbvlSource
              _mlbvlProjection
              _mlbvlStartIndex
              _mlbvlMaxResults
              _mlbvlShowPreOrders
              _mlbvlCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryBookshelvesVolumesListResource)
                      mempty
