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
-- Module      : Network.Google.Resource.YouTube.Thumbnails.Set
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a custom video thumbnail to YouTube and sets it for a video.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.thumbnails.set@.
module Network.Google.Resource.YouTube.Thumbnails.Set
    (
    -- * REST Resource
      ThumbnailsSetResource

    -- * Creating a Request
    , thumbnailsSet
    , ThumbnailsSet

    -- * Request Lenses
    , tsOnBehalfOfContentOwner
    , tsVideoId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.thumbnails.set@ method which the
-- 'ThumbnailsSet' request conforms to.
type ThumbnailsSetResource =
     "youtube" :>
       "v3" :>
         "thumbnails" :>
           "set" :>
             QueryParam "videoId" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "alt" AltJSON :>
                   Post '[JSON] ThumbnailSetResponse
       :<|>
       "upload" :>
         "youtube" :>
           "v3" :>
             "thumbnails" :>
               "set" :>
                 QueryParam "videoId" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "alt" AltJSON :>
                       QueryParam "uploadType" AltMedia :>
                         ReqBody '[OctetStream] RequestBody :>
                           Post '[JSON] ThumbnailSetResponse

-- | Uploads a custom video thumbnail to YouTube and sets it for a video.
--
-- /See:/ 'thumbnailsSet' smart constructor.
data ThumbnailsSet = ThumbnailsSet
    { _tsOnBehalfOfContentOwner :: !(Maybe Text)
    , _tsVideoId                :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThumbnailsSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsOnBehalfOfContentOwner'
--
-- * 'tsVideoId'
thumbnailsSet
    :: Text -- ^ 'tsVideoId'
    -> ThumbnailsSet
thumbnailsSet pTsVideoId_ =
    ThumbnailsSet
    { _tsOnBehalfOfContentOwner = Nothing
    , _tsVideoId = pTsVideoId_
    }

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
tsOnBehalfOfContentOwner :: Lens' ThumbnailsSet (Maybe Text)
tsOnBehalfOfContentOwner
  = lens _tsOnBehalfOfContentOwner
      (\ s a -> s{_tsOnBehalfOfContentOwner = a})

-- | The videoId parameter specifies a YouTube video ID for which the custom
-- video thumbnail is being provided.
tsVideoId :: Lens' ThumbnailsSet Text
tsVideoId
  = lens _tsVideoId (\ s a -> s{_tsVideoId = a})

instance GoogleRequest ThumbnailsSet where
        type Rs ThumbnailsSet = ThumbnailSetResponse
        requestClient ThumbnailsSet{..}
          = go (Just _tsVideoId) _tsOnBehalfOfContentOwner
              (Just AltJSON)
              youTubeService
          where go :<|> _
                  = buildClient (Proxy :: Proxy ThumbnailsSetResource)
                      mempty

instance GoogleRequest (MediaUpload ThumbnailsSet)
         where
        type Rs (MediaUpload ThumbnailsSet) =
             ThumbnailSetResponse
        requestClient (MediaUpload ThumbnailsSet{..} body)
          = go (Just _tsVideoId) _tsOnBehalfOfContentOwner
              (Just AltJSON)
              (Just AltMedia)
              body
              youTubeService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy ThumbnailsSetResource)
                      mempty
