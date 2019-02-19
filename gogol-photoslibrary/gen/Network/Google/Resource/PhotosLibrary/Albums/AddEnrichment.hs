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
-- Module      : Network.Google.Resource.PhotosLibrary.Albums.AddEnrichment
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an enrichment to a specified position in a defined album.
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference> for @photoslibrary.albums.addEnrichment@.
module Network.Google.Resource.PhotosLibrary.Albums.AddEnrichment
    (
    -- * REST Resource
      AlbumsAddEnrichmentResource

    -- * Creating a Request
    , albumsAddEnrichment
    , AlbumsAddEnrichment

    -- * Request Lenses
    , aaeXgafv
    , aaeAlbumId
    , aaeUploadProtocol
    , aaePp
    , aaeAccessToken
    , aaeUploadType
    , aaePayload
    , aaeBearerToken
    , aaeCallback
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude

-- | A resource alias for @photoslibrary.albums.addEnrichment@ method which the
-- 'AlbumsAddEnrichment' request conforms to.
type AlbumsAddEnrichmentResource =
     "v1" :>
       "albums" :>
         CaptureMode "albumId" "addEnrichment" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AddEnrichmentToAlbumRequest :>
                             Post '[JSON] AddEnrichmentToAlbumResponse

-- | Adds an enrichment to a specified position in a defined album.
--
-- /See:/ 'albumsAddEnrichment' smart constructor.
data AlbumsAddEnrichment =
  AlbumsAddEnrichment'
    { _aaeXgafv          :: !(Maybe Xgafv)
    , _aaeAlbumId        :: !Text
    , _aaeUploadProtocol :: !(Maybe Text)
    , _aaePp             :: !Bool
    , _aaeAccessToken    :: !(Maybe Text)
    , _aaeUploadType     :: !(Maybe Text)
    , _aaePayload        :: !AddEnrichmentToAlbumRequest
    , _aaeBearerToken    :: !(Maybe Text)
    , _aaeCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AlbumsAddEnrichment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaeXgafv'
--
-- * 'aaeAlbumId'
--
-- * 'aaeUploadProtocol'
--
-- * 'aaePp'
--
-- * 'aaeAccessToken'
--
-- * 'aaeUploadType'
--
-- * 'aaePayload'
--
-- * 'aaeBearerToken'
--
-- * 'aaeCallback'
albumsAddEnrichment
    :: Text -- ^ 'aaeAlbumId'
    -> AddEnrichmentToAlbumRequest -- ^ 'aaePayload'
    -> AlbumsAddEnrichment
albumsAddEnrichment pAaeAlbumId_ pAaePayload_ =
  AlbumsAddEnrichment'
    { _aaeXgafv = Nothing
    , _aaeAlbumId = pAaeAlbumId_
    , _aaeUploadProtocol = Nothing
    , _aaePp = True
    , _aaeAccessToken = Nothing
    , _aaeUploadType = Nothing
    , _aaePayload = pAaePayload_
    , _aaeBearerToken = Nothing
    , _aaeCallback = Nothing
    }

-- | V1 error format.
aaeXgafv :: Lens' AlbumsAddEnrichment (Maybe Xgafv)
aaeXgafv = lens _aaeXgafv (\ s a -> s{_aaeXgafv = a})

-- | Identifier of the album where the enrichment will be added.
aaeAlbumId :: Lens' AlbumsAddEnrichment Text
aaeAlbumId
  = lens _aaeAlbumId (\ s a -> s{_aaeAlbumId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aaeUploadProtocol :: Lens' AlbumsAddEnrichment (Maybe Text)
aaeUploadProtocol
  = lens _aaeUploadProtocol
      (\ s a -> s{_aaeUploadProtocol = a})

-- | Pretty-print response.
aaePp :: Lens' AlbumsAddEnrichment Bool
aaePp = lens _aaePp (\ s a -> s{_aaePp = a})

-- | OAuth access token.
aaeAccessToken :: Lens' AlbumsAddEnrichment (Maybe Text)
aaeAccessToken
  = lens _aaeAccessToken
      (\ s a -> s{_aaeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aaeUploadType :: Lens' AlbumsAddEnrichment (Maybe Text)
aaeUploadType
  = lens _aaeUploadType
      (\ s a -> s{_aaeUploadType = a})

-- | Multipart request metadata.
aaePayload :: Lens' AlbumsAddEnrichment AddEnrichmentToAlbumRequest
aaePayload
  = lens _aaePayload (\ s a -> s{_aaePayload = a})

-- | OAuth bearer token.
aaeBearerToken :: Lens' AlbumsAddEnrichment (Maybe Text)
aaeBearerToken
  = lens _aaeBearerToken
      (\ s a -> s{_aaeBearerToken = a})

-- | JSONP
aaeCallback :: Lens' AlbumsAddEnrichment (Maybe Text)
aaeCallback
  = lens _aaeCallback (\ s a -> s{_aaeCallback = a})

instance GoogleRequest AlbumsAddEnrichment where
        type Rs AlbumsAddEnrichment =
             AddEnrichmentToAlbumResponse
        type Scopes AlbumsAddEnrichment =
             '["https://www.googleapis.com/auth/photoslibrary",
               "https://www.googleapis.com/auth/photoslibrary.appendonly",
               "https://www.googleapis.com/auth/photoslibrary.sharing"]
        requestClient AlbumsAddEnrichment'{..}
          = go _aaeAlbumId _aaeXgafv _aaeUploadProtocol
              (Just _aaePp)
              _aaeAccessToken
              _aaeUploadType
              _aaeBearerToken
              _aaeCallback
              (Just AltJSON)
              _aaePayload
              photosLibraryService
          where go
                  = buildClient
                      (Proxy :: Proxy AlbumsAddEnrichmentResource)
                      mempty
