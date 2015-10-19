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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.BindDirect
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Binds a YouTube broadcast to a stream or removes an existing binding
-- between a broadcast and a stream. A broadcast can only be bound to one
-- video stream, though a video stream may be bound to more than one
-- broadcast.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveBroadcasts.bind_direct@.
module Network.Google.Resource.YouTube.LiveBroadcasts.BindDirect
    (
    -- * REST Resource
      LiveBroadcastsBindDirectResource

    -- * Creating a Request
    , liveBroadcastsBindDirect'
    , LiveBroadcastsBindDirect'

    -- * Request Lenses
    , lbbdPart
    , lbbdOnBehalfOfContentOwner
    , lbbdOnBehalfOfContentOwnerChannel
    , lbbdId
    , lbbdStreamId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.bind_direct@ method which the
-- 'LiveBroadcastsBindDirect'' request conforms to.
type LiveBroadcastsBindDirectResource =
     "liveBroadcasts" :>
       "bind" :>
         "direct" :>
           QueryParam "id" Text :>
             QueryParam "part" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "onBehalfOfContentOwnerChannel" Text :>
                   QueryParam "streamId" Text :>
                     QueryParam "alt" AltJSON :>
                       Post '[JSON] LiveBroadcast

-- | Binds a YouTube broadcast to a stream or removes an existing binding
-- between a broadcast and a stream. A broadcast can only be bound to one
-- video stream, though a video stream may be bound to more than one
-- broadcast.
--
-- /See:/ 'liveBroadcastsBindDirect'' smart constructor.
data LiveBroadcastsBindDirect' = LiveBroadcastsBindDirect'
    { _lbbdPart                          :: !Text
    , _lbbdOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lbbdOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbbdId                            :: !Text
    , _lbbdStreamId                      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsBindDirect'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbbdPart'
--
-- * 'lbbdOnBehalfOfContentOwner'
--
-- * 'lbbdOnBehalfOfContentOwnerChannel'
--
-- * 'lbbdId'
--
-- * 'lbbdStreamId'
liveBroadcastsBindDirect'
    :: Text -- ^ 'lbbdPart'
    -> Text -- ^ 'lbbdId'
    -> LiveBroadcastsBindDirect'
liveBroadcastsBindDirect' pLbbdPart_ pLbbdId_ =
    LiveBroadcastsBindDirect'
    { _lbbdPart = pLbbdPart_
    , _lbbdOnBehalfOfContentOwner = Nothing
    , _lbbdOnBehalfOfContentOwnerChannel = Nothing
    , _lbbdId = pLbbdId_
    , _lbbdStreamId = Nothing
    }

-- | The part parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, and status.
lbbdPart :: Lens' LiveBroadcastsBindDirect' Text
lbbdPart = lens _lbbdPart (\ s a -> s{_lbbdPart = a})

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
lbbdOnBehalfOfContentOwner :: Lens' LiveBroadcastsBindDirect' (Maybe Text)
lbbdOnBehalfOfContentOwner
  = lens _lbbdOnBehalfOfContentOwner
      (\ s a -> s{_lbbdOnBehalfOfContentOwner = a})

-- | This parameter can only be used in a properly authorized request. Note:
-- This parameter is intended exclusively for YouTube content partners. The
-- onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
-- of the channel to which a video is being added. This parameter is
-- required when a request specifies a value for the onBehalfOfContentOwner
-- parameter, and it can only be used in conjunction with that parameter.
-- In addition, the request must be authorized using a CMS account that is
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. Finally, the channel that the onBehalfOfContentOwnerChannel
-- parameter value specifies must be linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. This parameter is intended
-- for YouTube content partners that own and manage many different YouTube
-- channels. It allows content owners to authenticate once and perform
-- actions on behalf of the channel specified in the parameter value,
-- without having to provide authentication credentials for each separate
-- channel.
lbbdOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsBindDirect' (Maybe Text)
lbbdOnBehalfOfContentOwnerChannel
  = lens _lbbdOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbbdOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies the unique ID of the broadcast that is being
-- bound to a video stream.
lbbdId :: Lens' LiveBroadcastsBindDirect' Text
lbbdId = lens _lbbdId (\ s a -> s{_lbbdId = a})

-- | The streamId parameter specifies the unique ID of the video stream that
-- is being bound to a broadcast. If this parameter is omitted, the API
-- will remove any existing binding between the broadcast and a video
-- stream.
lbbdStreamId :: Lens' LiveBroadcastsBindDirect' (Maybe Text)
lbbdStreamId
  = lens _lbbdStreamId (\ s a -> s{_lbbdStreamId = a})

instance GoogleRequest LiveBroadcastsBindDirect'
         where
        type Rs LiveBroadcastsBindDirect' = LiveBroadcast
        requestClient LiveBroadcastsBindDirect'{..}
          = go (Just _lbbdId) (Just _lbbdPart)
              _lbbdOnBehalfOfContentOwner
              _lbbdOnBehalfOfContentOwnerChannel
              _lbbdStreamId
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveBroadcastsBindDirectResource)
                      mempty
