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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a YouTube video.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.videos.delete@.
module Network.Google.Resource.YouTube.Videos.Delete
    (
    -- * REST Resource
      VideosDeleteResource

    -- * Creating a Request
    , videosDelete
    , VideosDelete

    -- * Request Lenses
    , vdOnBehalfOfContentOwner
    , vdId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.videos.delete@ method which the
-- 'VideosDelete' request conforms to.
type VideosDeleteResource =
     "youtube" :>
       "v3" :>
         "videos" :>
           QueryParam "id" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a YouTube video.
--
-- /See:/ 'videosDelete' smart constructor.
data VideosDelete = VideosDelete
    { _vdOnBehalfOfContentOwner :: !(Maybe Text)
    , _vdId                     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdOnBehalfOfContentOwner'
--
-- * 'vdId'
videosDelete
    :: Text -- ^ 'vdId'
    -> VideosDelete
videosDelete pVdId_ =
    VideosDelete
    { _vdOnBehalfOfContentOwner = Nothing
    , _vdId = pVdId_
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
vdOnBehalfOfContentOwner :: Lens' VideosDelete (Maybe Text)
vdOnBehalfOfContentOwner
  = lens _vdOnBehalfOfContentOwner
      (\ s a -> s{_vdOnBehalfOfContentOwner = a})

-- | The id parameter specifies the YouTube video ID for the resource that is
-- being deleted. In a video resource, the id property specifies the
-- video\'s ID.
vdId :: Lens' VideosDelete Text
vdId = lens _vdId (\ s a -> s{_vdId = a})

instance GoogleRequest VideosDelete where
        type Rs VideosDelete = ()
        requestClient VideosDelete{..}
          = go (Just _vdId) _vdOnBehalfOfContentOwner
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy VideosDeleteResource)
                      mempty
