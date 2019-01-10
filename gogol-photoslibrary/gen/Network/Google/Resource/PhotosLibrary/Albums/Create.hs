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
-- Module      : Network.Google.Resource.PhotosLibrary.Albums.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an album in a user\'s Google Photos library.
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference> for @photoslibrary.albums.create@.
module Network.Google.Resource.PhotosLibrary.Albums.Create
    (
    -- * REST Resource
      AlbumsCreateResource

    -- * Creating a Request
    , albumsCreate
    , AlbumsCreate

    -- * Request Lenses
    , acXgafv
    , acUploadProtocol
    , acPp
    , acAccessToken
    , acUploadType
    , acPayload
    , acBearerToken
    , acCallback
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude

-- | A resource alias for @photoslibrary.albums.create@ method which the
-- 'AlbumsCreate' request conforms to.
type AlbumsCreateResource =
     "v1" :>
       "albums" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CreateAlbumRequest :>
                           Post '[JSON] Album

-- | Creates an album in a user\'s Google Photos library.
--
-- /See:/ 'albumsCreate' smart constructor.
data AlbumsCreate = AlbumsCreate'
    { _acXgafv          :: !(Maybe Xgafv)
    , _acUploadProtocol :: !(Maybe Text)
    , _acPp             :: !Bool
    , _acAccessToken    :: !(Maybe Text)
    , _acUploadType     :: !(Maybe Text)
    , _acPayload        :: !CreateAlbumRequest
    , _acBearerToken    :: !(Maybe Text)
    , _acCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlbumsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acXgafv'
--
-- * 'acUploadProtocol'
--
-- * 'acPp'
--
-- * 'acAccessToken'
--
-- * 'acUploadType'
--
-- * 'acPayload'
--
-- * 'acBearerToken'
--
-- * 'acCallback'
albumsCreate
    :: CreateAlbumRequest -- ^ 'acPayload'
    -> AlbumsCreate
albumsCreate pAcPayload_ =
    AlbumsCreate'
    { _acXgafv = Nothing
    , _acUploadProtocol = Nothing
    , _acPp = True
    , _acAccessToken = Nothing
    , _acUploadType = Nothing
    , _acPayload = pAcPayload_
    , _acBearerToken = Nothing
    , _acCallback = Nothing
    }

-- | V1 error format.
acXgafv :: Lens' AlbumsCreate (Maybe Xgafv)
acXgafv = lens _acXgafv (\ s a -> s{_acXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acUploadProtocol :: Lens' AlbumsCreate (Maybe Text)
acUploadProtocol
  = lens _acUploadProtocol
      (\ s a -> s{_acUploadProtocol = a})

-- | Pretty-print response.
acPp :: Lens' AlbumsCreate Bool
acPp = lens _acPp (\ s a -> s{_acPp = a})

-- | OAuth access token.
acAccessToken :: Lens' AlbumsCreate (Maybe Text)
acAccessToken
  = lens _acAccessToken
      (\ s a -> s{_acAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acUploadType :: Lens' AlbumsCreate (Maybe Text)
acUploadType
  = lens _acUploadType (\ s a -> s{_acUploadType = a})

-- | Multipart request metadata.
acPayload :: Lens' AlbumsCreate CreateAlbumRequest
acPayload
  = lens _acPayload (\ s a -> s{_acPayload = a})

-- | OAuth bearer token.
acBearerToken :: Lens' AlbumsCreate (Maybe Text)
acBearerToken
  = lens _acBearerToken
      (\ s a -> s{_acBearerToken = a})

-- | JSONP
acCallback :: Lens' AlbumsCreate (Maybe Text)
acCallback
  = lens _acCallback (\ s a -> s{_acCallback = a})

instance GoogleRequest AlbumsCreate where
        type Rs AlbumsCreate = Album
        type Scopes AlbumsCreate =
             '["https://www.googleapis.com/auth/photoslibrary",
               "https://www.googleapis.com/auth/photoslibrary.appendonly",
               "https://www.googleapis.com/auth/photoslibrary.sharing"]
        requestClient AlbumsCreate'{..}
          = go _acXgafv _acUploadProtocol (Just _acPp)
              _acAccessToken
              _acUploadType
              _acBearerToken
              _acCallback
              (Just AltJSON)
              _acPayload
              photosLibraryService
          where go
                  = buildClient (Proxy :: Proxy AlbumsCreateResource)
                      mempty
