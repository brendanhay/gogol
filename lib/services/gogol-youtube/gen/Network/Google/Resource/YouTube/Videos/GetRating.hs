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
-- Module      : Network.Google.Resource.YouTube.Videos.GetRating
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the ratings that the authorized user gave to a list of
-- specified videos.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.getRating@.
module Network.Google.Resource.YouTube.Videos.GetRating
    (
    -- * REST Resource
      VideosGetRatingResource

    -- * Creating a Request
    , videosGetRating
    , VideosGetRating

    -- * Request Lenses
    , vgrXgafv
    , vgrUploadProtocol
    , vgrAccessToken
    , vgrUploadType
    , vgrOnBehalfOfContentOwner
    , vgrId
    , vgrCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.videos.getRating@ method which the
-- 'VideosGetRating' request conforms to.
type VideosGetRatingResource =
     "youtube" :>
       "v3" :>
         "videos" :>
           "getRating" :>
             QueryParams "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "onBehalfOfContentOwner" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] VideoGetRatingResponse

-- | Retrieves the ratings that the authorized user gave to a list of
-- specified videos.
--
-- /See:/ 'videosGetRating' smart constructor.
data VideosGetRating =
  VideosGetRating'
    { _vgrXgafv :: !(Maybe Xgafv)
    , _vgrUploadProtocol :: !(Maybe Text)
    , _vgrAccessToken :: !(Maybe Text)
    , _vgrUploadType :: !(Maybe Text)
    , _vgrOnBehalfOfContentOwner :: !(Maybe Text)
    , _vgrId :: ![Text]
    , _vgrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideosGetRating' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgrXgafv'
--
-- * 'vgrUploadProtocol'
--
-- * 'vgrAccessToken'
--
-- * 'vgrUploadType'
--
-- * 'vgrOnBehalfOfContentOwner'
--
-- * 'vgrId'
--
-- * 'vgrCallback'
videosGetRating
    :: [Text] -- ^ 'vgrId'
    -> VideosGetRating
videosGetRating pVgrId_ =
  VideosGetRating'
    { _vgrXgafv = Nothing
    , _vgrUploadProtocol = Nothing
    , _vgrAccessToken = Nothing
    , _vgrUploadType = Nothing
    , _vgrOnBehalfOfContentOwner = Nothing
    , _vgrId = _Coerce # pVgrId_
    , _vgrCallback = Nothing
    }


-- | V1 error format.
vgrXgafv :: Lens' VideosGetRating (Maybe Xgafv)
vgrXgafv = lens _vgrXgafv (\ s a -> s{_vgrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vgrUploadProtocol :: Lens' VideosGetRating (Maybe Text)
vgrUploadProtocol
  = lens _vgrUploadProtocol
      (\ s a -> s{_vgrUploadProtocol = a})

-- | OAuth access token.
vgrAccessToken :: Lens' VideosGetRating (Maybe Text)
vgrAccessToken
  = lens _vgrAccessToken
      (\ s a -> s{_vgrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vgrUploadType :: Lens' VideosGetRating (Maybe Text)
vgrUploadType
  = lens _vgrUploadType
      (\ s a -> s{_vgrUploadType = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
vgrOnBehalfOfContentOwner :: Lens' VideosGetRating (Maybe Text)
vgrOnBehalfOfContentOwner
  = lens _vgrOnBehalfOfContentOwner
      (\ s a -> s{_vgrOnBehalfOfContentOwner = a})

vgrId :: Lens' VideosGetRating [Text]
vgrId
  = lens _vgrId (\ s a -> s{_vgrId = a}) . _Coerce

-- | JSONP
vgrCallback :: Lens' VideosGetRating (Maybe Text)
vgrCallback
  = lens _vgrCallback (\ s a -> s{_vgrCallback = a})

instance GoogleRequest VideosGetRating where
        type Rs VideosGetRating = VideoGetRatingResponse
        type Scopes VideosGetRating =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient VideosGetRating'{..}
          = go _vgrId _vgrXgafv _vgrUploadProtocol
              _vgrAccessToken
              _vgrUploadType
              _vgrOnBehalfOfContentOwner
              _vgrCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy VideosGetRatingResource)
                      mempty
