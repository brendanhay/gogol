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
-- Module      : Network.Google.Resource.PhotosLibrary.Albums.Share
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks an album as \'shared\' and accessible to other users. This action
-- can only be performed on albums which were created by the developer via
-- the API.
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference> for @photoslibrary.albums.share@.
module Network.Google.Resource.PhotosLibrary.Albums.Share
    (
    -- * REST Resource
      AlbumsShareResource

    -- * Creating a Request
    , albumsShare
    , AlbumsShare

    -- * Request Lenses
    , asXgafv
    , asAlbumId
    , asUploadProtocol
    , asPp
    , asAccessToken
    , asUploadType
    , asPayload
    , asBearerToken
    , asCallback
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude

-- | A resource alias for @photoslibrary.albums.share@ method which the
-- 'AlbumsShare' request conforms to.
type AlbumsShareResource =
     "v1" :>
       "albums" :>
         CaptureMode "albumId" "share" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ShareAlbumRequest :>
                             Post '[JSON] ShareAlbumResponse

-- | Marks an album as \'shared\' and accessible to other users. This action
-- can only be performed on albums which were created by the developer via
-- the API.
--
-- /See:/ 'albumsShare' smart constructor.
data AlbumsShare =
  AlbumsShare'
    { _asXgafv          :: !(Maybe Xgafv)
    , _asAlbumId        :: !Text
    , _asUploadProtocol :: !(Maybe Text)
    , _asPp             :: !Bool
    , _asAccessToken    :: !(Maybe Text)
    , _asUploadType     :: !(Maybe Text)
    , _asPayload        :: !ShareAlbumRequest
    , _asBearerToken    :: !(Maybe Text)
    , _asCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlbumsShare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asXgafv'
--
-- * 'asAlbumId'
--
-- * 'asUploadProtocol'
--
-- * 'asPp'
--
-- * 'asAccessToken'
--
-- * 'asUploadType'
--
-- * 'asPayload'
--
-- * 'asBearerToken'
--
-- * 'asCallback'
albumsShare
    :: Text -- ^ 'asAlbumId'
    -> ShareAlbumRequest -- ^ 'asPayload'
    -> AlbumsShare
albumsShare pAsAlbumId_ pAsPayload_ =
  AlbumsShare'
    { _asXgafv = Nothing
    , _asAlbumId = pAsAlbumId_
    , _asUploadProtocol = Nothing
    , _asPp = True
    , _asAccessToken = Nothing
    , _asUploadType = Nothing
    , _asPayload = pAsPayload_
    , _asBearerToken = Nothing
    , _asCallback = Nothing
    }


-- | V1 error format.
asXgafv :: Lens' AlbumsShare (Maybe Xgafv)
asXgafv = lens _asXgafv (\ s a -> s{_asXgafv = a})

-- | Identifier of the album to be shared. This album id must belong to an
-- album created by the developer. .
asAlbumId :: Lens' AlbumsShare Text
asAlbumId
  = lens _asAlbumId (\ s a -> s{_asAlbumId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asUploadProtocol :: Lens' AlbumsShare (Maybe Text)
asUploadProtocol
  = lens _asUploadProtocol
      (\ s a -> s{_asUploadProtocol = a})

-- | Pretty-print response.
asPp :: Lens' AlbumsShare Bool
asPp = lens _asPp (\ s a -> s{_asPp = a})

-- | OAuth access token.
asAccessToken :: Lens' AlbumsShare (Maybe Text)
asAccessToken
  = lens _asAccessToken
      (\ s a -> s{_asAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asUploadType :: Lens' AlbumsShare (Maybe Text)
asUploadType
  = lens _asUploadType (\ s a -> s{_asUploadType = a})

-- | Multipart request metadata.
asPayload :: Lens' AlbumsShare ShareAlbumRequest
asPayload
  = lens _asPayload (\ s a -> s{_asPayload = a})

-- | OAuth bearer token.
asBearerToken :: Lens' AlbumsShare (Maybe Text)
asBearerToken
  = lens _asBearerToken
      (\ s a -> s{_asBearerToken = a})

-- | JSONP
asCallback :: Lens' AlbumsShare (Maybe Text)
asCallback
  = lens _asCallback (\ s a -> s{_asCallback = a})

instance GoogleRequest AlbumsShare where
        type Rs AlbumsShare = ShareAlbumResponse
        type Scopes AlbumsShare =
             '["https://www.googleapis.com/auth/photoslibrary.sharing"]
        requestClient AlbumsShare'{..}
          = go _asAlbumId _asXgafv _asUploadProtocol
              (Just _asPp)
              _asAccessToken
              _asUploadType
              _asBearerToken
              _asCallback
              (Just AltJSON)
              _asPayload
              photosLibraryService
          where go
                  = buildClient (Proxy :: Proxy AlbumsShareResource)
                      mempty
