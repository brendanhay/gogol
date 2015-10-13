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
-- Module      : Network.Google.Resource.YouTube.Videos.Rate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a like or dislike rating to a video or remove a rating from a video.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideosRate@.
module Network.Google.Resource.YouTube.Videos.Rate
    (
    -- * REST Resource
      VideosRateResource

    -- * Creating a Request
    , videosRate'
    , VideosRate'

    -- * Request Lenses
    , vrRating
    , vrId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideosRate@ method which the
-- 'VideosRate'' request conforms to.
type VideosRateResource =
     "videos" :>
       "rate" :>
         QueryParam "id" Text :>
           QueryParam "rating" VideosRateRating :>
             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Add a like or dislike rating to a video or remove a rating from a video.
--
-- /See:/ 'videosRate'' smart constructor.
data VideosRate' = VideosRate'
    { _vrRating :: !VideosRateRating
    , _vrId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosRate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrRating'
--
-- * 'vrId'
videosRate'
    :: VideosRateRating -- ^ 'rating'
    -> Text -- ^ 'id'
    -> VideosRate'
videosRate' pVrRating_ pVrId_ =
    VideosRate'
    { _vrRating = pVrRating_
    , _vrId = pVrId_
    }

-- | Specifies the rating to record.
vrRating :: Lens' VideosRate' VideosRateRating
vrRating = lens _vrRating (\ s a -> s{_vrRating = a})

-- | The id parameter specifies the YouTube video ID of the video that is
-- being rated or having its rating removed.
vrId :: Lens' VideosRate' Text
vrId = lens _vrId (\ s a -> s{_vrId = a})

instance GoogleRequest VideosRate' where
        type Rs VideosRate' = ()
        requestClient VideosRate'{..}
          = go (Just _vrId) (Just _vrRating) (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy VideosRateResource)
                      mempty
