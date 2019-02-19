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
-- Module      : Network.Google.Resource.PhotosLibrary.MediaItems.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for media items in a user\'s Google Photos library. If no
-- filters are set, then all media items in the user\'s library will be
-- returned. If an album is set, all media items in the specified album
-- will be returned. If filters are specified, anything that matches the
-- filters from the user\'s library will be listed. If an album and filters
-- are set, then this will result in an error.
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference> for @photoslibrary.mediaItems.search@.
module Network.Google.Resource.PhotosLibrary.MediaItems.Search
    (
    -- * REST Resource
      MediaItemsSearchResource

    -- * Creating a Request
    , mediaItemsSearch
    , MediaItemsSearch

    -- * Request Lenses
    , misXgafv
    , misUploadProtocol
    , misPp
    , misAccessToken
    , misUploadType
    , misPayload
    , misBearerToken
    , misCallback
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude

-- | A resource alias for @photoslibrary.mediaItems.search@ method which the
-- 'MediaItemsSearch' request conforms to.
type MediaItemsSearchResource =
     "v1" :>
       "mediaItems:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SearchMediaItemsRequest :>
                           Post '[JSON] SearchMediaItemsResponse

-- | Searches for media items in a user\'s Google Photos library. If no
-- filters are set, then all media items in the user\'s library will be
-- returned. If an album is set, all media items in the specified album
-- will be returned. If filters are specified, anything that matches the
-- filters from the user\'s library will be listed. If an album and filters
-- are set, then this will result in an error.
--
-- /See:/ 'mediaItemsSearch' smart constructor.
data MediaItemsSearch =
  MediaItemsSearch'
    { _misXgafv          :: !(Maybe Xgafv)
    , _misUploadProtocol :: !(Maybe Text)
    , _misPp             :: !Bool
    , _misAccessToken    :: !(Maybe Text)
    , _misUploadType     :: !(Maybe Text)
    , _misPayload        :: !SearchMediaItemsRequest
    , _misBearerToken    :: !(Maybe Text)
    , _misCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MediaItemsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'misXgafv'
--
-- * 'misUploadProtocol'
--
-- * 'misPp'
--
-- * 'misAccessToken'
--
-- * 'misUploadType'
--
-- * 'misPayload'
--
-- * 'misBearerToken'
--
-- * 'misCallback'
mediaItemsSearch
    :: SearchMediaItemsRequest -- ^ 'misPayload'
    -> MediaItemsSearch
mediaItemsSearch pMisPayload_ =
  MediaItemsSearch'
    { _misXgafv = Nothing
    , _misUploadProtocol = Nothing
    , _misPp = True
    , _misAccessToken = Nothing
    , _misUploadType = Nothing
    , _misPayload = pMisPayload_
    , _misBearerToken = Nothing
    , _misCallback = Nothing
    }

-- | V1 error format.
misXgafv :: Lens' MediaItemsSearch (Maybe Xgafv)
misXgafv = lens _misXgafv (\ s a -> s{_misXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
misUploadProtocol :: Lens' MediaItemsSearch (Maybe Text)
misUploadProtocol
  = lens _misUploadProtocol
      (\ s a -> s{_misUploadProtocol = a})

-- | Pretty-print response.
misPp :: Lens' MediaItemsSearch Bool
misPp = lens _misPp (\ s a -> s{_misPp = a})

-- | OAuth access token.
misAccessToken :: Lens' MediaItemsSearch (Maybe Text)
misAccessToken
  = lens _misAccessToken
      (\ s a -> s{_misAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
misUploadType :: Lens' MediaItemsSearch (Maybe Text)
misUploadType
  = lens _misUploadType
      (\ s a -> s{_misUploadType = a})

-- | Multipart request metadata.
misPayload :: Lens' MediaItemsSearch SearchMediaItemsRequest
misPayload
  = lens _misPayload (\ s a -> s{_misPayload = a})

-- | OAuth bearer token.
misBearerToken :: Lens' MediaItemsSearch (Maybe Text)
misBearerToken
  = lens _misBearerToken
      (\ s a -> s{_misBearerToken = a})

-- | JSONP
misCallback :: Lens' MediaItemsSearch (Maybe Text)
misCallback
  = lens _misCallback (\ s a -> s{_misCallback = a})

instance GoogleRequest MediaItemsSearch where
        type Rs MediaItemsSearch = SearchMediaItemsResponse
        type Scopes MediaItemsSearch =
             '["https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/photoslibrary",
               "https://www.googleapis.com/auth/photoslibrary.readonly",
               "https://www.googleapis.com/auth/photoslibrary.readonly.appcreateddata"]
        requestClient MediaItemsSearch'{..}
          = go _misXgafv _misUploadProtocol (Just _misPp)
              _misAccessToken
              _misUploadType
              _misBearerToken
              _misCallback
              (Just AltJSON)
              _misPayload
              photosLibraryService
          where go
                  = buildClient
                      (Proxy :: Proxy MediaItemsSearchResource)
                      mempty
