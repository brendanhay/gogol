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
-- Module      : Network.Google.Resource.PhotosLibrary.Albums.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all albums shown to a user in the \'Albums\' tab of the Google
-- Photos app.
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference> for @photoslibrary.albums.list@.
module Network.Google.Resource.PhotosLibrary.Albums.List
    (
    -- * REST Resource
      AlbumsListResource

    -- * Creating a Request
    , albumsList
    , AlbumsList

    -- * Request Lenses
    , alXgafv
    , alUploadProtocol
    , alPp
    , alAccessToken
    , alUploadType
    , alBearerToken
    , alPageToken
    , alPageSize
    , alCallback
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude

-- | A resource alias for @photoslibrary.albums.list@ method which the
-- 'AlbumsList' request conforms to.
type AlbumsListResource =
     "v1" :>
       "albums" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListAlbumsResponse

-- | Lists all albums shown to a user in the \'Albums\' tab of the Google
-- Photos app.
--
-- /See:/ 'albumsList' smart constructor.
data AlbumsList = AlbumsList'
    { _alXgafv          :: !(Maybe Xgafv)
    , _alUploadProtocol :: !(Maybe Text)
    , _alPp             :: !Bool
    , _alAccessToken    :: !(Maybe Text)
    , _alUploadType     :: !(Maybe Text)
    , _alBearerToken    :: !(Maybe Text)
    , _alPageToken      :: !(Maybe Text)
    , _alPageSize       :: !(Maybe (Textual Int32))
    , _alCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlbumsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alUploadProtocol'
--
-- * 'alPp'
--
-- * 'alAccessToken'
--
-- * 'alUploadType'
--
-- * 'alBearerToken'
--
-- * 'alPageToken'
--
-- * 'alPageSize'
--
-- * 'alCallback'
albumsList
    :: AlbumsList
albumsList =
    AlbumsList'
    { _alXgafv = Nothing
    , _alUploadProtocol = Nothing
    , _alPp = True
    , _alAccessToken = Nothing
    , _alUploadType = Nothing
    , _alBearerToken = Nothing
    , _alPageToken = Nothing
    , _alPageSize = Nothing
    , _alCallback = Nothing
    }

-- | V1 error format.
alXgafv :: Lens' AlbumsList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' AlbumsList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | Pretty-print response.
alPp :: Lens' AlbumsList Bool
alPp = lens _alPp (\ s a -> s{_alPp = a})

-- | OAuth access token.
alAccessToken :: Lens' AlbumsList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' AlbumsList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | OAuth bearer token.
alBearerToken :: Lens' AlbumsList (Maybe Text)
alBearerToken
  = lens _alBearerToken
      (\ s a -> s{_alBearerToken = a})

-- | A continuation token to get the next page of the results. Adding this to
-- the request will return the rows after the pageToken. The pageToken
-- should be the value returned in the nextPageToken parameter in the
-- response to the listAlbums request.
alPageToken :: Lens' AlbumsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Maximum number of albums to return in the response. The default number
-- of albums to return at a time is 20. The maximum page size is 50.
alPageSize :: Lens' AlbumsList (Maybe Int32)
alPageSize
  = lens _alPageSize (\ s a -> s{_alPageSize = a}) .
      mapping _Coerce

-- | JSONP
alCallback :: Lens' AlbumsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest AlbumsList where
        type Rs AlbumsList = ListAlbumsResponse
        type Scopes AlbumsList =
             '["https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/photoslibrary",
               "https://www.googleapis.com/auth/photoslibrary.readonly",
               "https://www.googleapis.com/auth/photoslibrary.readonly.appcreateddata"]
        requestClient AlbumsList'{..}
          = go _alXgafv _alUploadProtocol (Just _alPp)
              _alAccessToken
              _alUploadType
              _alBearerToken
              _alPageToken
              _alPageSize
              _alCallback
              (Just AltJSON)
              photosLibraryService
          where go
                  = buildClient (Proxy :: Proxy AlbumsListResource)
                      mempty
