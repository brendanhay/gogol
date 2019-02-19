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
-- Module      : Network.Google.Resource.PhotosLibrary.MediaItems.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the media item specified based on a given media item id.
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference> for @photoslibrary.mediaItems.get@.
module Network.Google.Resource.PhotosLibrary.MediaItems.Get
    (
    -- * REST Resource
      MediaItemsGetResource

    -- * Creating a Request
    , mediaItemsGet
    , MediaItemsGet

    -- * Request Lenses
    , migXgafv
    , migUploadProtocol
    , migPp
    , migAccessToken
    , migUploadType
    , migMediaItemId
    , migBearerToken
    , migCallback
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude

-- | A resource alias for @photoslibrary.mediaItems.get@ method which the
-- 'MediaItemsGet' request conforms to.
type MediaItemsGetResource =
     "v1" :>
       "mediaItems" :>
         Capture "mediaItemId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] MediaItem

-- | Returns the media item specified based on a given media item id.
--
-- /See:/ 'mediaItemsGet' smart constructor.
data MediaItemsGet =
  MediaItemsGet'
    { _migXgafv          :: !(Maybe Xgafv)
    , _migUploadProtocol :: !(Maybe Text)
    , _migPp             :: !Bool
    , _migAccessToken    :: !(Maybe Text)
    , _migUploadType     :: !(Maybe Text)
    , _migMediaItemId    :: !Text
    , _migBearerToken    :: !(Maybe Text)
    , _migCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MediaItemsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'migXgafv'
--
-- * 'migUploadProtocol'
--
-- * 'migPp'
--
-- * 'migAccessToken'
--
-- * 'migUploadType'
--
-- * 'migMediaItemId'
--
-- * 'migBearerToken'
--
-- * 'migCallback'
mediaItemsGet
    :: Text -- ^ 'migMediaItemId'
    -> MediaItemsGet
mediaItemsGet pMigMediaItemId_ =
  MediaItemsGet'
    { _migXgafv = Nothing
    , _migUploadProtocol = Nothing
    , _migPp = True
    , _migAccessToken = Nothing
    , _migUploadType = Nothing
    , _migMediaItemId = pMigMediaItemId_
    , _migBearerToken = Nothing
    , _migCallback = Nothing
    }

-- | V1 error format.
migXgafv :: Lens' MediaItemsGet (Maybe Xgafv)
migXgafv = lens _migXgafv (\ s a -> s{_migXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
migUploadProtocol :: Lens' MediaItemsGet (Maybe Text)
migUploadProtocol
  = lens _migUploadProtocol
      (\ s a -> s{_migUploadProtocol = a})

-- | Pretty-print response.
migPp :: Lens' MediaItemsGet Bool
migPp = lens _migPp (\ s a -> s{_migPp = a})

-- | OAuth access token.
migAccessToken :: Lens' MediaItemsGet (Maybe Text)
migAccessToken
  = lens _migAccessToken
      (\ s a -> s{_migAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
migUploadType :: Lens' MediaItemsGet (Maybe Text)
migUploadType
  = lens _migUploadType
      (\ s a -> s{_migUploadType = a})

-- | Identifier of media item to be requested.
migMediaItemId :: Lens' MediaItemsGet Text
migMediaItemId
  = lens _migMediaItemId
      (\ s a -> s{_migMediaItemId = a})

-- | OAuth bearer token.
migBearerToken :: Lens' MediaItemsGet (Maybe Text)
migBearerToken
  = lens _migBearerToken
      (\ s a -> s{_migBearerToken = a})

-- | JSONP
migCallback :: Lens' MediaItemsGet (Maybe Text)
migCallback
  = lens _migCallback (\ s a -> s{_migCallback = a})

instance GoogleRequest MediaItemsGet where
        type Rs MediaItemsGet = MediaItem
        type Scopes MediaItemsGet =
             '["https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/photoslibrary",
               "https://www.googleapis.com/auth/photoslibrary.readonly",
               "https://www.googleapis.com/auth/photoslibrary.readonly.appcreateddata"]
        requestClient MediaItemsGet'{..}
          = go _migMediaItemId _migXgafv _migUploadProtocol
              (Just _migPp)
              _migAccessToken
              _migUploadType
              _migBearerToken
              _migCallback
              (Just AltJSON)
              photosLibraryService
          where go
                  = buildClient (Proxy :: Proxy MediaItemsGetResource)
                      mempty
