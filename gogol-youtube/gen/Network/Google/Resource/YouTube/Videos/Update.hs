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
-- Module      : Network.Google.Resource.YouTube.Videos.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a video\'s metadata.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.videos.update@.
module Network.Google.Resource.YouTube.Videos.Update
    (
    -- * REST Resource
      VideosUpdateResource

    -- * Creating a Request
    , videosUpdate
    , VideosUpdate

    -- * Request Lenses
    , vuPart
    , vuPayload
    , vuOnBehalfOfContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.videos.update@ method which the
-- 'VideosUpdate' request conforms to.
type VideosUpdateResource =
     "videos" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Video :> Put '[JSON] Video

-- | Updates a video\'s metadata.
--
-- /See:/ 'videosUpdate' smart constructor.
data VideosUpdate = VideosUpdate
    { _vuPart                   :: !Text
    , _vuPayload                :: !Video
    , _vuOnBehalfOfContentOwner :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuPart'
--
-- * 'vuPayload'
--
-- * 'vuOnBehalfOfContentOwner'
videosUpdate
    :: Text -- ^ 'vuPart'
    -> Video -- ^ 'vuPayload'
    -> VideosUpdate
videosUpdate pVuPart_ pVuPayload_ =
    VideosUpdate
    { _vuPart = pVuPart_
    , _vuPayload = pVuPayload_
    , _vuOnBehalfOfContentOwner = Nothing
    }

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Note that this method
-- will override the existing values for all of the mutable properties that
-- are contained in any parts that the parameter value specifies. For
-- example, a video\'s privacy setting is contained in the status part. As
-- such, if your request is updating a private video, and the request\'s
-- part parameter value includes the status part, the video\'s privacy
-- setting will be updated to whatever value the request body specifies. If
-- the request body does not specify a value, the existing privacy setting
-- will be removed and the video will revert to the default privacy
-- setting. In addition, not all parts contain properties that can be set
-- when inserting or updating a video. For example, the statistics object
-- encapsulates statistics that YouTube calculates for a video and does not
-- contain values that you can set or modify. If the parameter value
-- specifies a part that does not contain mutable values, that part will
-- still be included in the API response.
vuPart :: Lens' VideosUpdate Text
vuPart = lens _vuPart (\ s a -> s{_vuPart = a})

-- | Multipart request metadata.
vuPayload :: Lens' VideosUpdate Video
vuPayload
  = lens _vuPayload (\ s a -> s{_vuPayload = a})

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
vuOnBehalfOfContentOwner :: Lens' VideosUpdate (Maybe Text)
vuOnBehalfOfContentOwner
  = lens _vuOnBehalfOfContentOwner
      (\ s a -> s{_vuOnBehalfOfContentOwner = a})

instance GoogleRequest VideosUpdate where
        type Rs VideosUpdate = Video
        requestClient VideosUpdate{..}
          = go (Just _vuPart) _vuOnBehalfOfContentOwner
              (Just AltJSON)
              _vuPayload
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy VideosUpdateResource)
                      mempty
