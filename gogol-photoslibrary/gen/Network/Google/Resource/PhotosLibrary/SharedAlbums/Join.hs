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
-- Module      : Network.Google.Resource.PhotosLibrary.SharedAlbums.Join
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Joins a shared album on behalf of the Google Photos user.
--
-- /See:/ <https://developers.google.com/photos/ Photos Library API Reference> for @photoslibrary.sharedAlbums.join@.
module Network.Google.Resource.PhotosLibrary.SharedAlbums.Join
    (
    -- * REST Resource
      SharedAlbumsJoinResource

    -- * Creating a Request
    , sharedAlbumsJoin
    , SharedAlbumsJoin

    -- * Request Lenses
    , sajXgafv
    , sajUploadProtocol
    , sajPp
    , sajAccessToken
    , sajUploadType
    , sajPayload
    , sajBearerToken
    , sajCallback
    ) where

import           Network.Google.PhotosLibrary.Types
import           Network.Google.Prelude

-- | A resource alias for @photoslibrary.sharedAlbums.join@ method which the
-- 'SharedAlbumsJoin' request conforms to.
type SharedAlbumsJoinResource =
     "v1" :>
       "sharedAlbums:join" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] JoinSharedAlbumRequest :>
                           Post '[JSON] JoinSharedAlbumResponse

-- | Joins a shared album on behalf of the Google Photos user.
--
-- /See:/ 'sharedAlbumsJoin' smart constructor.
data SharedAlbumsJoin = SharedAlbumsJoin'
    { _sajXgafv          :: !(Maybe Xgafv)
    , _sajUploadProtocol :: !(Maybe Text)
    , _sajPp             :: !Bool
    , _sajAccessToken    :: !(Maybe Text)
    , _sajUploadType     :: !(Maybe Text)
    , _sajPayload        :: !JoinSharedAlbumRequest
    , _sajBearerToken    :: !(Maybe Text)
    , _sajCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SharedAlbumsJoin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sajXgafv'
--
-- * 'sajUploadProtocol'
--
-- * 'sajPp'
--
-- * 'sajAccessToken'
--
-- * 'sajUploadType'
--
-- * 'sajPayload'
--
-- * 'sajBearerToken'
--
-- * 'sajCallback'
sharedAlbumsJoin
    :: JoinSharedAlbumRequest -- ^ 'sajPayload'
    -> SharedAlbumsJoin
sharedAlbumsJoin pSajPayload_ =
    SharedAlbumsJoin'
    { _sajXgafv = Nothing
    , _sajUploadProtocol = Nothing
    , _sajPp = True
    , _sajAccessToken = Nothing
    , _sajUploadType = Nothing
    , _sajPayload = pSajPayload_
    , _sajBearerToken = Nothing
    , _sajCallback = Nothing
    }

-- | V1 error format.
sajXgafv :: Lens' SharedAlbumsJoin (Maybe Xgafv)
sajXgafv = lens _sajXgafv (\ s a -> s{_sajXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sajUploadProtocol :: Lens' SharedAlbumsJoin (Maybe Text)
sajUploadProtocol
  = lens _sajUploadProtocol
      (\ s a -> s{_sajUploadProtocol = a})

-- | Pretty-print response.
sajPp :: Lens' SharedAlbumsJoin Bool
sajPp = lens _sajPp (\ s a -> s{_sajPp = a})

-- | OAuth access token.
sajAccessToken :: Lens' SharedAlbumsJoin (Maybe Text)
sajAccessToken
  = lens _sajAccessToken
      (\ s a -> s{_sajAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sajUploadType :: Lens' SharedAlbumsJoin (Maybe Text)
sajUploadType
  = lens _sajUploadType
      (\ s a -> s{_sajUploadType = a})

-- | Multipart request metadata.
sajPayload :: Lens' SharedAlbumsJoin JoinSharedAlbumRequest
sajPayload
  = lens _sajPayload (\ s a -> s{_sajPayload = a})

-- | OAuth bearer token.
sajBearerToken :: Lens' SharedAlbumsJoin (Maybe Text)
sajBearerToken
  = lens _sajBearerToken
      (\ s a -> s{_sajBearerToken = a})

-- | JSONP
sajCallback :: Lens' SharedAlbumsJoin (Maybe Text)
sajCallback
  = lens _sajCallback (\ s a -> s{_sajCallback = a})

instance GoogleRequest SharedAlbumsJoin where
        type Rs SharedAlbumsJoin = JoinSharedAlbumResponse
        type Scopes SharedAlbumsJoin =
             '["https://www.googleapis.com/auth/photoslibrary.sharing"]
        requestClient SharedAlbumsJoin'{..}
          = go _sajXgafv _sajUploadProtocol (Just _sajPp)
              _sajAccessToken
              _sajUploadType
              _sajBearerToken
              _sajCallback
              (Just AltJSON)
              _sajPayload
              photosLibraryService
          where go
                  = buildClient
                      (Proxy :: Proxy SharedAlbumsJoinResource)
                      mempty
