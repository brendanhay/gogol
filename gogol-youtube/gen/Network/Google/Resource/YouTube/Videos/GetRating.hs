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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the ratings that the authorized user gave to a list of
-- specified videos.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideosGetRating@.
module Network.Google.Resource.YouTube.Videos.GetRating
    (
    -- * REST Resource
      VideosGetRatingResource

    -- * Creating a Request
    , videosGetRating'
    , VideosGetRating'

    -- * Request Lenses
    , vgrOnBehalfOfContentOwner
    , vgrId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideosGetRating@ method which the
-- 'VideosGetRating'' request conforms to.
type VideosGetRatingResource =
     "videos" :>
       "getRating" :>
         QueryParam "id" Text :>
           QueryParam "onBehalfOfContentOwner" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] VideoGetRatingResponse

-- | Retrieves the ratings that the authorized user gave to a list of
-- specified videos.
--
-- /See:/ 'videosGetRating'' smart constructor.
data VideosGetRating' = VideosGetRating'
    { _vgrOnBehalfOfContentOwner :: !(Maybe Text)
    , _vgrId                     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosGetRating'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgrOnBehalfOfContentOwner'
--
-- * 'vgrId'
videosGetRating'
    :: Text -- ^ 'id'
    -> VideosGetRating'
videosGetRating' pVgrId_ =
    VideosGetRating'
    { _vgrOnBehalfOfContentOwner = Nothing
    , _vgrId = pVgrId_
    }

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
vgrOnBehalfOfContentOwner :: Lens' VideosGetRating' (Maybe Text)
vgrOnBehalfOfContentOwner
  = lens _vgrOnBehalfOfContentOwner
      (\ s a -> s{_vgrOnBehalfOfContentOwner = a})

-- | The id parameter specifies a comma-separated list of the YouTube video
-- ID(s) for the resource(s) for which you are retrieving rating data. In a
-- video resource, the id property specifies the video\'s ID.
vgrId :: Lens' VideosGetRating' Text
vgrId = lens _vgrId (\ s a -> s{_vgrId = a})

instance GoogleRequest VideosGetRating' where
        type Rs VideosGetRating' = VideoGetRatingResponse
        requestClient VideosGetRating'{..}
          = go (Just _vgrId) _vgrOnBehalfOfContentOwner
              (Just AltJSON)
              youTube
          where go
                  = buildClient
                      (Proxy :: Proxy VideosGetRatingResource)
                      mempty
