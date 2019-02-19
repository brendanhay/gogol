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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Transition
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the status of a YouTube live broadcast and initiates any
-- processes associated with the new status. For example, when you
-- transition a broadcast\'s status to testing, YouTube starts to transmit
-- video to that broadcast\'s monitor stream. Before calling this method,
-- you should confirm that the value of the status.streamStatus property
-- for the stream bound to your broadcast is active.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveBroadcasts.transition@.
module Network.Google.Resource.YouTube.LiveBroadcasts.Transition
    (
    -- * REST Resource
      LiveBroadcastsTransitionResource

    -- * Creating a Request
    , liveBroadcastsTransition
    , LiveBroadcastsTransition

    -- * Request Lenses
    , lbtPart
    , lbtBroadcastStatus
    , lbtOnBehalfOfContentOwner
    , lbtOnBehalfOfContentOwnerChannel
    , lbtId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.transition@ method which the
-- 'LiveBroadcastsTransition' request conforms to.
type LiveBroadcastsTransitionResource =
     "youtube" :>
       "v3" :>
         "liveBroadcasts" :>
           "transition" :>
             QueryParam "broadcastStatus"
               LiveBroadcastsTransitionBroadcastStatus
               :>
               QueryParam "id" Text :>
                 QueryParam "part" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "onBehalfOfContentOwnerChannel" Text :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] LiveBroadcast

-- | Changes the status of a YouTube live broadcast and initiates any
-- processes associated with the new status. For example, when you
-- transition a broadcast\'s status to testing, YouTube starts to transmit
-- video to that broadcast\'s monitor stream. Before calling this method,
-- you should confirm that the value of the status.streamStatus property
-- for the stream bound to your broadcast is active.
--
-- /See:/ 'liveBroadcastsTransition' smart constructor.
data LiveBroadcastsTransition =
  LiveBroadcastsTransition'
    { _lbtPart                          :: !Text
    , _lbtBroadcastStatus               :: !LiveBroadcastsTransitionBroadcastStatus
    , _lbtOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lbtOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbtId                            :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveBroadcastsTransition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtPart'
--
-- * 'lbtBroadcastStatus'
--
-- * 'lbtOnBehalfOfContentOwner'
--
-- * 'lbtOnBehalfOfContentOwnerChannel'
--
-- * 'lbtId'
liveBroadcastsTransition
    :: Text -- ^ 'lbtPart'
    -> LiveBroadcastsTransitionBroadcastStatus -- ^ 'lbtBroadcastStatus'
    -> Text -- ^ 'lbtId'
    -> LiveBroadcastsTransition
liveBroadcastsTransition pLbtPart_ pLbtBroadcastStatus_ pLbtId_ =
  LiveBroadcastsTransition'
    { _lbtPart = pLbtPart_
    , _lbtBroadcastStatus = pLbtBroadcastStatus_
    , _lbtOnBehalfOfContentOwner = Nothing
    , _lbtOnBehalfOfContentOwnerChannel = Nothing
    , _lbtId = pLbtId_
    }


-- | The part parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, and status.
lbtPart :: Lens' LiveBroadcastsTransition Text
lbtPart = lens _lbtPart (\ s a -> s{_lbtPart = a})

-- | The broadcastStatus parameter identifies the state to which the
-- broadcast is changing. Note that to transition a broadcast to either the
-- testing or live state, the status.streamStatus must be active for the
-- stream that the broadcast is bound to.
lbtBroadcastStatus :: Lens' LiveBroadcastsTransition LiveBroadcastsTransitionBroadcastStatus
lbtBroadcastStatus
  = lens _lbtBroadcastStatus
      (\ s a -> s{_lbtBroadcastStatus = a})

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
lbtOnBehalfOfContentOwner :: Lens' LiveBroadcastsTransition (Maybe Text)
lbtOnBehalfOfContentOwner
  = lens _lbtOnBehalfOfContentOwner
      (\ s a -> s{_lbtOnBehalfOfContentOwner = a})

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
lbtOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsTransition (Maybe Text)
lbtOnBehalfOfContentOwnerChannel
  = lens _lbtOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbtOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies the unique ID of the broadcast that is
-- transitioning to another status.
lbtId :: Lens' LiveBroadcastsTransition Text
lbtId = lens _lbtId (\ s a -> s{_lbtId = a})

instance GoogleRequest LiveBroadcastsTransition where
        type Rs LiveBroadcastsTransition = LiveBroadcast
        type Scopes LiveBroadcastsTransition =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveBroadcastsTransition'{..}
          = go (Just _lbtBroadcastStatus) (Just _lbtId)
              (Just _lbtPart)
              _lbtOnBehalfOfContentOwner
              _lbtOnBehalfOfContentOwnerChannel
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveBroadcastsTransitionResource)
                      mempty
