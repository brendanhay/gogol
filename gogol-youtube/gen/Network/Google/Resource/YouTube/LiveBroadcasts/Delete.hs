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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a broadcast.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveBroadcasts.delete@.
module Network.Google.Resource.YouTube.LiveBroadcasts.Delete
    (
    -- * REST Resource
      LiveBroadcastsDeleteResource

    -- * Creating a Request
    , liveBroadcastsDelete
    , LiveBroadcastsDelete

    -- * Request Lenses
    , lbdOnBehalfOfContentOwner
    , lbdOnBehalfOfContentOwnerChannel
    , lbdId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.delete@ method which the
-- 'LiveBroadcastsDelete' request conforms to.
type LiveBroadcastsDeleteResource =
     "liveBroadcasts" :>
       QueryParam "id" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "onBehalfOfContentOwnerChannel" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a broadcast.
--
-- /See:/ 'liveBroadcastsDelete' smart constructor.
data LiveBroadcastsDelete = LiveBroadcastsDelete
    { _lbdOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lbdOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbdId                            :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbdOnBehalfOfContentOwner'
--
-- * 'lbdOnBehalfOfContentOwnerChannel'
--
-- * 'lbdId'
liveBroadcastsDelete
    :: Text -- ^ 'lbdId'
    -> LiveBroadcastsDelete
liveBroadcastsDelete pLbdId_ =
    LiveBroadcastsDelete
    { _lbdOnBehalfOfContentOwner = Nothing
    , _lbdOnBehalfOfContentOwnerChannel = Nothing
    , _lbdId = pLbdId_
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
lbdOnBehalfOfContentOwner :: Lens' LiveBroadcastsDelete (Maybe Text)
lbdOnBehalfOfContentOwner
  = lens _lbdOnBehalfOfContentOwner
      (\ s a -> s{_lbdOnBehalfOfContentOwner = a})

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
lbdOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsDelete (Maybe Text)
lbdOnBehalfOfContentOwnerChannel
  = lens _lbdOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbdOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies the YouTube live broadcast ID for the
-- resource that is being deleted.
lbdId :: Lens' LiveBroadcastsDelete Text
lbdId = lens _lbdId (\ s a -> s{_lbdId = a})

instance GoogleRequest LiveBroadcastsDelete where
        type Rs LiveBroadcastsDelete = ()
        requestClient LiveBroadcastsDelete{..}
          = go (Just _lbdId) _lbdOnBehalfOfContentOwner
              _lbdOnBehalfOfContentOwnerChannel
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveBroadcastsDeleteResource)
                      mempty
