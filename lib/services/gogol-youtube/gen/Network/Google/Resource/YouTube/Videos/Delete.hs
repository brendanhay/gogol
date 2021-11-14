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
-- Module      : Network.Google.Resource.YouTube.Videos.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.delete@.
module Network.Google.Resource.YouTube.Videos.Delete
    (
    -- * REST Resource
      VideosDeleteResource

    -- * Creating a Request
    , videosDelete
    , VideosDelete

    -- * Request Lenses
    , vdXgafv
    , vdUploadProtocol
    , vdAccessToken
    , vdUploadType
    , vdOnBehalfOfContentOwner
    , vdId
    , vdCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.videos.delete@ method which the
-- 'VideosDelete' request conforms to.
type VideosDeleteResource =
     "youtube" :>
       "v3" :>
         "videos" :>
           QueryParam "id" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a resource.
--
-- /See:/ 'videosDelete' smart constructor.
data VideosDelete =
  VideosDelete'
    { _vdXgafv :: !(Maybe Xgafv)
    , _vdUploadProtocol :: !(Maybe Text)
    , _vdAccessToken :: !(Maybe Text)
    , _vdUploadType :: !(Maybe Text)
    , _vdOnBehalfOfContentOwner :: !(Maybe Text)
    , _vdId :: !Text
    , _vdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideosDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdXgafv'
--
-- * 'vdUploadProtocol'
--
-- * 'vdAccessToken'
--
-- * 'vdUploadType'
--
-- * 'vdOnBehalfOfContentOwner'
--
-- * 'vdId'
--
-- * 'vdCallback'
videosDelete
    :: Text -- ^ 'vdId'
    -> VideosDelete
videosDelete pVdId_ =
  VideosDelete'
    { _vdXgafv = Nothing
    , _vdUploadProtocol = Nothing
    , _vdAccessToken = Nothing
    , _vdUploadType = Nothing
    , _vdOnBehalfOfContentOwner = Nothing
    , _vdId = pVdId_
    , _vdCallback = Nothing
    }


-- | V1 error format.
vdXgafv :: Lens' VideosDelete (Maybe Xgafv)
vdXgafv = lens _vdXgafv (\ s a -> s{_vdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vdUploadProtocol :: Lens' VideosDelete (Maybe Text)
vdUploadProtocol
  = lens _vdUploadProtocol
      (\ s a -> s{_vdUploadProtocol = a})

-- | OAuth access token.
vdAccessToken :: Lens' VideosDelete (Maybe Text)
vdAccessToken
  = lens _vdAccessToken
      (\ s a -> s{_vdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vdUploadType :: Lens' VideosDelete (Maybe Text)
vdUploadType
  = lens _vdUploadType (\ s a -> s{_vdUploadType = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
vdOnBehalfOfContentOwner :: Lens' VideosDelete (Maybe Text)
vdOnBehalfOfContentOwner
  = lens _vdOnBehalfOfContentOwner
      (\ s a -> s{_vdOnBehalfOfContentOwner = a})

vdId :: Lens' VideosDelete Text
vdId = lens _vdId (\ s a -> s{_vdId = a})

-- | JSONP
vdCallback :: Lens' VideosDelete (Maybe Text)
vdCallback
  = lens _vdCallback (\ s a -> s{_vdCallback = a})

instance GoogleRequest VideosDelete where
        type Rs VideosDelete = ()
        type Scopes VideosDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient VideosDelete'{..}
          = go (Just _vdId) _vdXgafv _vdUploadProtocol
              _vdAccessToken
              _vdUploadType
              _vdOnBehalfOfContentOwner
              _vdCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy VideosDeleteResource)
                      mempty
