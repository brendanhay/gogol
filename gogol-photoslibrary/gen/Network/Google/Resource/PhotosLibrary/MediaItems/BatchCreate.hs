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
-- Module      : Network.Google.Resource.PhotosLibrary.MediaItems.BatchCreate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more media items in a user\'s Google Photos library. If
-- an album id is specified, the media item(s) are also added to the album.
-- By default the media item(s) will be added to the end of the library or
-- album. If an album id and position are both defined, then the media
-- items will be added to the album at the specified position. If multiple
-- media items are given, they will be inserted at the specified position.
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference> for @photoslibrary.mediaItems.batchCreate@.
module Network.Google.Resource.PhotosLibrary.MediaItems.BatchCreate
    (
    -- * REST Resource
      MediaItemsBatchCreateResource

    -- * Creating a Request
    , mediaItemsBatchCreate
    , MediaItemsBatchCreate

    -- * Request Lenses
    , mibcXgafv
    , mibcUploadProtocol
    , mibcPp
    , mibcAccessToken
    , mibcUploadType
    , mibcPayload
    , mibcBearerToken
    , mibcCallback
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude

-- | A resource alias for @photoslibrary.mediaItems.batchCreate@ method which the
-- 'MediaItemsBatchCreate' request conforms to.
type MediaItemsBatchCreateResource =
     "v1" :>
       "mediaItems:batchCreate" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BatchCreateMediaItemsRequest :>
                           Post '[JSON] BatchCreateMediaItemsResponse

-- | Creates one or more media items in a user\'s Google Photos library. If
-- an album id is specified, the media item(s) are also added to the album.
-- By default the media item(s) will be added to the end of the library or
-- album. If an album id and position are both defined, then the media
-- items will be added to the album at the specified position. If multiple
-- media items are given, they will be inserted at the specified position.
--
-- /See:/ 'mediaItemsBatchCreate' smart constructor.
data MediaItemsBatchCreate = MediaItemsBatchCreate'
    { _mibcXgafv          :: !(Maybe Xgafv)
    , _mibcUploadProtocol :: !(Maybe Text)
    , _mibcPp             :: !Bool
    , _mibcAccessToken    :: !(Maybe Text)
    , _mibcUploadType     :: !(Maybe Text)
    , _mibcPayload        :: !BatchCreateMediaItemsRequest
    , _mibcBearerToken    :: !(Maybe Text)
    , _mibcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaItemsBatchCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mibcXgafv'
--
-- * 'mibcUploadProtocol'
--
-- * 'mibcPp'
--
-- * 'mibcAccessToken'
--
-- * 'mibcUploadType'
--
-- * 'mibcPayload'
--
-- * 'mibcBearerToken'
--
-- * 'mibcCallback'
mediaItemsBatchCreate
    :: BatchCreateMediaItemsRequest -- ^ 'mibcPayload'
    -> MediaItemsBatchCreate
mediaItemsBatchCreate pMibcPayload_ =
    MediaItemsBatchCreate'
    { _mibcXgafv = Nothing
    , _mibcUploadProtocol = Nothing
    , _mibcPp = True
    , _mibcAccessToken = Nothing
    , _mibcUploadType = Nothing
    , _mibcPayload = pMibcPayload_
    , _mibcBearerToken = Nothing
    , _mibcCallback = Nothing
    }

-- | V1 error format.
mibcXgafv :: Lens' MediaItemsBatchCreate (Maybe Xgafv)
mibcXgafv
  = lens _mibcXgafv (\ s a -> s{_mibcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mibcUploadProtocol :: Lens' MediaItemsBatchCreate (Maybe Text)
mibcUploadProtocol
  = lens _mibcUploadProtocol
      (\ s a -> s{_mibcUploadProtocol = a})

-- | Pretty-print response.
mibcPp :: Lens' MediaItemsBatchCreate Bool
mibcPp = lens _mibcPp (\ s a -> s{_mibcPp = a})

-- | OAuth access token.
mibcAccessToken :: Lens' MediaItemsBatchCreate (Maybe Text)
mibcAccessToken
  = lens _mibcAccessToken
      (\ s a -> s{_mibcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mibcUploadType :: Lens' MediaItemsBatchCreate (Maybe Text)
mibcUploadType
  = lens _mibcUploadType
      (\ s a -> s{_mibcUploadType = a})

-- | Multipart request metadata.
mibcPayload :: Lens' MediaItemsBatchCreate BatchCreateMediaItemsRequest
mibcPayload
  = lens _mibcPayload (\ s a -> s{_mibcPayload = a})

-- | OAuth bearer token.
mibcBearerToken :: Lens' MediaItemsBatchCreate (Maybe Text)
mibcBearerToken
  = lens _mibcBearerToken
      (\ s a -> s{_mibcBearerToken = a})

-- | JSONP
mibcCallback :: Lens' MediaItemsBatchCreate (Maybe Text)
mibcCallback
  = lens _mibcCallback (\ s a -> s{_mibcCallback = a})

instance GoogleRequest MediaItemsBatchCreate where
        type Rs MediaItemsBatchCreate =
             BatchCreateMediaItemsResponse
        type Scopes MediaItemsBatchCreate =
             '["https://www.googleapis.com/auth/photoslibrary",
               "https://www.googleapis.com/auth/photoslibrary.appendonly",
               "https://www.googleapis.com/auth/photoslibrary.sharing"]
        requestClient MediaItemsBatchCreate'{..}
          = go _mibcXgafv _mibcUploadProtocol (Just _mibcPp)
              _mibcAccessToken
              _mibcUploadType
              _mibcBearerToken
              _mibcCallback
              (Just AltJSON)
              _mibcPayload
              photosLibraryService
          where go
                  = buildClient
                      (Proxy :: Proxy MediaItemsBatchCreateResource)
                      mempty
