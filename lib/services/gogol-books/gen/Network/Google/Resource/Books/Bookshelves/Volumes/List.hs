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
-- Module      : Network.Google.Resource.Books.Bookshelves.Volumes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves volumes in a specific bookshelf for the specified user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.bookshelves.volumes.list@.
module Network.Google.Resource.Books.Bookshelves.Volumes.List
    (
    -- * REST Resource
      BookshelvesVolumesListResource

    -- * Creating a Request
    , bookshelvesVolumesList
    , BookshelvesVolumesList

    -- * Request Lenses
    , bvlXgafv
    , bvlUploadProtocol
    , bvlAccessToken
    , bvlUploadType
    , bvlUserId
    , bvlShelf
    , bvlSource
    , bvlStartIndex
    , bvlMaxResults
    , bvlShowPreOrders
    , bvlCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.bookshelves.volumes.list@ method which the
-- 'BookshelvesVolumesList' request conforms to.
type BookshelvesVolumesListResource =
     "books" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "bookshelves" :>
               Capture "shelf" Text :>
                 "volumes" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "source" Text :>
                             QueryParam "startIndex" (Textual Word32) :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "showPreorders" Bool :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Volumes

-- | Retrieves volumes in a specific bookshelf for the specified user.
--
-- /See:/ 'bookshelvesVolumesList' smart constructor.
data BookshelvesVolumesList =
  BookshelvesVolumesList'
    { _bvlXgafv :: !(Maybe Xgafv)
    , _bvlUploadProtocol :: !(Maybe Text)
    , _bvlAccessToken :: !(Maybe Text)
    , _bvlUploadType :: !(Maybe Text)
    , _bvlUserId :: !Text
    , _bvlShelf :: !Text
    , _bvlSource :: !(Maybe Text)
    , _bvlStartIndex :: !(Maybe (Textual Word32))
    , _bvlMaxResults :: !(Maybe (Textual Word32))
    , _bvlShowPreOrders :: !(Maybe Bool)
    , _bvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BookshelvesVolumesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bvlXgafv'
--
-- * 'bvlUploadProtocol'
--
-- * 'bvlAccessToken'
--
-- * 'bvlUploadType'
--
-- * 'bvlUserId'
--
-- * 'bvlShelf'
--
-- * 'bvlSource'
--
-- * 'bvlStartIndex'
--
-- * 'bvlMaxResults'
--
-- * 'bvlShowPreOrders'
--
-- * 'bvlCallback'
bookshelvesVolumesList
    :: Text -- ^ 'bvlUserId'
    -> Text -- ^ 'bvlShelf'
    -> BookshelvesVolumesList
bookshelvesVolumesList pBvlUserId_ pBvlShelf_ =
  BookshelvesVolumesList'
    { _bvlXgafv = Nothing
    , _bvlUploadProtocol = Nothing
    , _bvlAccessToken = Nothing
    , _bvlUploadType = Nothing
    , _bvlUserId = pBvlUserId_
    , _bvlShelf = pBvlShelf_
    , _bvlSource = Nothing
    , _bvlStartIndex = Nothing
    , _bvlMaxResults = Nothing
    , _bvlShowPreOrders = Nothing
    , _bvlCallback = Nothing
    }


-- | V1 error format.
bvlXgafv :: Lens' BookshelvesVolumesList (Maybe Xgafv)
bvlXgafv = lens _bvlXgafv (\ s a -> s{_bvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bvlUploadProtocol :: Lens' BookshelvesVolumesList (Maybe Text)
bvlUploadProtocol
  = lens _bvlUploadProtocol
      (\ s a -> s{_bvlUploadProtocol = a})

-- | OAuth access token.
bvlAccessToken :: Lens' BookshelvesVolumesList (Maybe Text)
bvlAccessToken
  = lens _bvlAccessToken
      (\ s a -> s{_bvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bvlUploadType :: Lens' BookshelvesVolumesList (Maybe Text)
bvlUploadType
  = lens _bvlUploadType
      (\ s a -> s{_bvlUploadType = a})

-- | ID of user for whom to retrieve bookshelf volumes.
bvlUserId :: Lens' BookshelvesVolumesList Text
bvlUserId
  = lens _bvlUserId (\ s a -> s{_bvlUserId = a})

-- | ID of bookshelf to retrieve volumes.
bvlShelf :: Lens' BookshelvesVolumesList Text
bvlShelf = lens _bvlShelf (\ s a -> s{_bvlShelf = a})

-- | String to identify the originator of this request.
bvlSource :: Lens' BookshelvesVolumesList (Maybe Text)
bvlSource
  = lens _bvlSource (\ s a -> s{_bvlSource = a})

-- | Index of the first element to return (starts at 0)
bvlStartIndex :: Lens' BookshelvesVolumesList (Maybe Word32)
bvlStartIndex
  = lens _bvlStartIndex
      (\ s a -> s{_bvlStartIndex = a})
      . mapping _Coerce

-- | Maximum number of results to return
bvlMaxResults :: Lens' BookshelvesVolumesList (Maybe Word32)
bvlMaxResults
  = lens _bvlMaxResults
      (\ s a -> s{_bvlMaxResults = a})
      . mapping _Coerce

-- | Set to true to show pre-ordered books. Defaults to false.
bvlShowPreOrders :: Lens' BookshelvesVolumesList (Maybe Bool)
bvlShowPreOrders
  = lens _bvlShowPreOrders
      (\ s a -> s{_bvlShowPreOrders = a})

-- | JSONP
bvlCallback :: Lens' BookshelvesVolumesList (Maybe Text)
bvlCallback
  = lens _bvlCallback (\ s a -> s{_bvlCallback = a})

instance GoogleRequest BookshelvesVolumesList where
        type Rs BookshelvesVolumesList = Volumes
        type Scopes BookshelvesVolumesList =
             '["https://www.googleapis.com/auth/books"]
        requestClient BookshelvesVolumesList'{..}
          = go _bvlUserId _bvlShelf _bvlXgafv
              _bvlUploadProtocol
              _bvlAccessToken
              _bvlUploadType
              _bvlSource
              _bvlStartIndex
              _bvlMaxResults
              _bvlShowPreOrders
              _bvlCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy BookshelvesVolumesListResource)
                      mempty
