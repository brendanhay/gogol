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
-- Module      : Network.Google.Resource.PhotosLibrary.SharedAlbums.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all shared albums shown to a user in the \'Sharing\' tab of the
-- Google Photos app.
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference> for @photoslibrary.sharedAlbums.list@.
module Network.Google.Resource.PhotosLibrary.SharedAlbums.List
    (
    -- * REST Resource
      SharedAlbumsListResource

    -- * Creating a Request
    , sharedAlbumsList
    , SharedAlbumsList

    -- * Request Lenses
    , salXgafv
    , salUploadProtocol
    , salPp
    , salAccessToken
    , salUploadType
    , salBearerToken
    , salPageToken
    , salPageSize
    , salCallback
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude

-- | A resource alias for @photoslibrary.sharedAlbums.list@ method which the
-- 'SharedAlbumsList' request conforms to.
type SharedAlbumsListResource =
     "v1" :>
       "sharedAlbums" :>
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
                             Get '[JSON] ListSharedAlbumsResponse

-- | Lists all shared albums shown to a user in the \'Sharing\' tab of the
-- Google Photos app.
--
-- /See:/ 'sharedAlbumsList' smart constructor.
data SharedAlbumsList = SharedAlbumsList'
    { _salXgafv          :: !(Maybe Xgafv)
    , _salUploadProtocol :: !(Maybe Text)
    , _salPp             :: !Bool
    , _salAccessToken    :: !(Maybe Text)
    , _salUploadType     :: !(Maybe Text)
    , _salBearerToken    :: !(Maybe Text)
    , _salPageToken      :: !(Maybe Text)
    , _salPageSize       :: !(Maybe (Textual Int32))
    , _salCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SharedAlbumsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'salXgafv'
--
-- * 'salUploadProtocol'
--
-- * 'salPp'
--
-- * 'salAccessToken'
--
-- * 'salUploadType'
--
-- * 'salBearerToken'
--
-- * 'salPageToken'
--
-- * 'salPageSize'
--
-- * 'salCallback'
sharedAlbumsList
    :: SharedAlbumsList
sharedAlbumsList =
    SharedAlbumsList'
    { _salXgafv = Nothing
    , _salUploadProtocol = Nothing
    , _salPp = True
    , _salAccessToken = Nothing
    , _salUploadType = Nothing
    , _salBearerToken = Nothing
    , _salPageToken = Nothing
    , _salPageSize = Nothing
    , _salCallback = Nothing
    }

-- | V1 error format.
salXgafv :: Lens' SharedAlbumsList (Maybe Xgafv)
salXgafv = lens _salXgafv (\ s a -> s{_salXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
salUploadProtocol :: Lens' SharedAlbumsList (Maybe Text)
salUploadProtocol
  = lens _salUploadProtocol
      (\ s a -> s{_salUploadProtocol = a})

-- | Pretty-print response.
salPp :: Lens' SharedAlbumsList Bool
salPp = lens _salPp (\ s a -> s{_salPp = a})

-- | OAuth access token.
salAccessToken :: Lens' SharedAlbumsList (Maybe Text)
salAccessToken
  = lens _salAccessToken
      (\ s a -> s{_salAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
salUploadType :: Lens' SharedAlbumsList (Maybe Text)
salUploadType
  = lens _salUploadType
      (\ s a -> s{_salUploadType = a})

-- | OAuth bearer token.
salBearerToken :: Lens' SharedAlbumsList (Maybe Text)
salBearerToken
  = lens _salBearerToken
      (\ s a -> s{_salBearerToken = a})

-- | A continuation token to get the next page of the results. Adding this to
-- the request will return the rows after the pageToken. The pageToken
-- should be the value returned in the nextPageToken parameter in the
-- response to the listSharedAlbums request.
salPageToken :: Lens' SharedAlbumsList (Maybe Text)
salPageToken
  = lens _salPageToken (\ s a -> s{_salPageToken = a})

-- | Maximum number of albums to return in the response. The default number
-- of albums to return at a time is 20. The maximum page size is 50.
salPageSize :: Lens' SharedAlbumsList (Maybe Int32)
salPageSize
  = lens _salPageSize (\ s a -> s{_salPageSize = a}) .
      mapping _Coerce

-- | JSONP
salCallback :: Lens' SharedAlbumsList (Maybe Text)
salCallback
  = lens _salCallback (\ s a -> s{_salCallback = a})

instance GoogleRequest SharedAlbumsList where
        type Rs SharedAlbumsList = ListSharedAlbumsResponse
        type Scopes SharedAlbumsList =
             '["https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/photoslibrary",
               "https://www.googleapis.com/auth/photoslibrary.readonly",
               "https://www.googleapis.com/auth/photoslibrary.readonly.appcreateddata"]
        requestClient SharedAlbumsList'{..}
          = go _salXgafv _salUploadProtocol (Just _salPp)
              _salAccessToken
              _salUploadType
              _salBearerToken
              _salPageToken
              _salPageSize
              _salCallback
              (Just AltJSON)
              photosLibraryService
          where go
                  = buildClient
                      (Proxy :: Proxy SharedAlbumsListResource)
                      mempty
