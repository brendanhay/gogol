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
-- Module      : Network.Google.Resource.PhotosLibrary.Albums.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the album specified by the given album id.
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference> for @photoslibrary.albums.get@.
module Network.Google.Resource.PhotosLibrary.Albums.Get
    (
    -- * REST Resource
      AlbumsGetResource

    -- * Creating a Request
    , albumsGet
    , AlbumsGet

    -- * Request Lenses
    , agXgafv
    , agAlbumId
    , agUploadProtocol
    , agPp
    , agAccessToken
    , agUploadType
    , agBearerToken
    , agCallback
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude

-- | A resource alias for @photoslibrary.albums.get@ method which the
-- 'AlbumsGet' request conforms to.
type AlbumsGetResource =
     "v1" :>
       "albums" :>
         Capture "albumId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Album

-- | Returns the album specified by the given album id.
--
-- /See:/ 'albumsGet' smart constructor.
data AlbumsGet = AlbumsGet'
    { _agXgafv          :: !(Maybe Xgafv)
    , _agAlbumId        :: !Text
    , _agUploadProtocol :: !(Maybe Text)
    , _agPp             :: !Bool
    , _agAccessToken    :: !(Maybe Text)
    , _agUploadType     :: !(Maybe Text)
    , _agBearerToken    :: !(Maybe Text)
    , _agCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlbumsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agAlbumId'
--
-- * 'agUploadProtocol'
--
-- * 'agPp'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agBearerToken'
--
-- * 'agCallback'
albumsGet
    :: Text -- ^ 'agAlbumId'
    -> AlbumsGet
albumsGet pAgAlbumId_ =
    AlbumsGet'
    { _agXgafv = Nothing
    , _agAlbumId = pAgAlbumId_
    , _agUploadProtocol = Nothing
    , _agPp = True
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agBearerToken = Nothing
    , _agCallback = Nothing
    }

-- | V1 error format.
agXgafv :: Lens' AlbumsGet (Maybe Xgafv)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Identifier of the album to be requested.
agAlbumId :: Lens' AlbumsGet Text
agAlbumId
  = lens _agAlbumId (\ s a -> s{_agAlbumId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' AlbumsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | Pretty-print response.
agPp :: Lens' AlbumsGet Bool
agPp = lens _agPp (\ s a -> s{_agPp = a})

-- | OAuth access token.
agAccessToken :: Lens' AlbumsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' AlbumsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | OAuth bearer token.
agBearerToken :: Lens' AlbumsGet (Maybe Text)
agBearerToken
  = lens _agBearerToken
      (\ s a -> s{_agBearerToken = a})

-- | JSONP
agCallback :: Lens' AlbumsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest AlbumsGet where
        type Rs AlbumsGet = Album
        type Scopes AlbumsGet =
             '["https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/photoslibrary",
               "https://www.googleapis.com/auth/photoslibrary.readonly",
               "https://www.googleapis.com/auth/photoslibrary.readonly.appcreateddata"]
        requestClient AlbumsGet'{..}
          = go _agAlbumId _agXgafv _agUploadProtocol
              (Just _agPp)
              _agAccessToken
              _agUploadType
              _agBearerToken
              _agCallback
              (Just AltJSON)
              photosLibraryService
          where go
                  = buildClient (Proxy :: Proxy AlbumsGetResource)
                      mempty
