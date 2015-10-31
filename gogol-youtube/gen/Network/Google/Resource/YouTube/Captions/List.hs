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
-- Module      : Network.Google.Resource.YouTube.Captions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of caption tracks that are associated with a specified
-- video. Note that the API response does not contain the actual captions
-- and that the captions.download method provides the ability to retrieve a
-- caption track.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.captions.list@.
module Network.Google.Resource.YouTube.Captions.List
    (
    -- * REST Resource
      CaptionsListResource

    -- * Creating a Request
    , captionsList
    , CaptionsList

    -- * Request Lenses
    , clOnBehalfOf
    , clPart
    , clOnBehalfOfContentOwner
    , clVideoId
    , clId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.captions.list@ method which the
-- 'CaptionsList' request conforms to.
type CaptionsListResource =
     "youtube" :>
       "v3" :>
         "captions" :>
           QueryParam "part" Text :>
             QueryParam "videoId" Text :>
               QueryParam "onBehalfOf" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "id" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] CaptionListResponse

-- | Returns a list of caption tracks that are associated with a specified
-- video. Note that the API response does not contain the actual captions
-- and that the captions.download method provides the ability to retrieve a
-- caption track.
--
-- /See:/ 'captionsList' smart constructor.
data CaptionsList = CaptionsList
    { _clOnBehalfOf             :: !(Maybe Text)
    , _clPart                   :: !Text
    , _clOnBehalfOfContentOwner :: !(Maybe Text)
    , _clVideoId                :: !Text
    , _clId                     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clOnBehalfOf'
--
-- * 'clPart'
--
-- * 'clOnBehalfOfContentOwner'
--
-- * 'clVideoId'
--
-- * 'clId'
captionsList
    :: Text -- ^ 'clPart'
    -> Text -- ^ 'clVideoId'
    -> CaptionsList
captionsList pClPart_ pClVideoId_ =
    CaptionsList
    { _clOnBehalfOf = Nothing
    , _clPart = pClPart_
    , _clOnBehalfOfContentOwner = Nothing
    , _clVideoId = pClVideoId_
    , _clId = Nothing
    }

-- | ID of the Google+ Page for the channel that the request is on behalf of.
clOnBehalfOf :: Lens' CaptionsList (Maybe Text)
clOnBehalfOf
  = lens _clOnBehalfOf (\ s a -> s{_clOnBehalfOf = a})

-- | The part parameter specifies a comma-separated list of one or more
-- caption resource parts that the API response will include. The part
-- names that you can include in the parameter value are id and snippet.
clPart :: Lens' CaptionsList Text
clPart = lens _clPart (\ s a -> s{_clPart = a})

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
clOnBehalfOfContentOwner :: Lens' CaptionsList (Maybe Text)
clOnBehalfOfContentOwner
  = lens _clOnBehalfOfContentOwner
      (\ s a -> s{_clOnBehalfOfContentOwner = a})

-- | The videoId parameter specifies the YouTube video ID of the video for
-- which the API should return caption tracks.
clVideoId :: Lens' CaptionsList Text
clVideoId
  = lens _clVideoId (\ s a -> s{_clVideoId = a})

-- | The id parameter specifies a comma-separated list of IDs that identify
-- the caption resources that should be retrieved. Each ID must identify a
-- caption track associated with the specified video.
clId :: Lens' CaptionsList (Maybe Text)
clId = lens _clId (\ s a -> s{_clId = a})

instance GoogleRequest CaptionsList where
        type Rs CaptionsList = CaptionListResponse
        type Scopes CaptionsList =
             '["https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient CaptionsList{..}
          = go (Just _clPart) (Just _clVideoId) _clOnBehalfOf
              _clOnBehalfOfContentOwner
              _clId
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy CaptionsListResource)
                      mempty
