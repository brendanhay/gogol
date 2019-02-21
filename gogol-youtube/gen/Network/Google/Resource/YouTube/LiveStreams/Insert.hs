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
-- Module      : Network.Google.Resource.YouTube.LiveStreams.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a video stream. The stream enables you to send your video to
-- YouTube, which can then broadcast the video to your audience.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveStreams.insert@.
module Network.Google.Resource.YouTube.LiveStreams.Insert
    (
    -- * REST Resource
      LiveStreamsInsertResource

    -- * Creating a Request
    , liveStreamsInsert
    , LiveStreamsInsert

    -- * Request Lenses
    , lsiPart
    , lsiPayload
    , lsiOnBehalfOfContentOwner
    , lsiOnBehalfOfContentOwnerChannel
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveStreams.insert@ method which the
-- 'LiveStreamsInsert' request conforms to.
type LiveStreamsInsertResource =
     "youtube" :>
       "v3" :>
         "liveStreams" :>
           QueryParam "part" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "onBehalfOfContentOwnerChannel" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] LiveStream :> Post '[JSON] LiveStream

-- | Creates a video stream. The stream enables you to send your video to
-- YouTube, which can then broadcast the video to your audience.
--
-- /See:/ 'liveStreamsInsert' smart constructor.
data LiveStreamsInsert =
  LiveStreamsInsert'
    { _lsiPart                          :: !Text
    , _lsiPayload                       :: !LiveStream
    , _lsiOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lsiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveStreamsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsiPart'
--
-- * 'lsiPayload'
--
-- * 'lsiOnBehalfOfContentOwner'
--
-- * 'lsiOnBehalfOfContentOwnerChannel'
liveStreamsInsert
    :: Text -- ^ 'lsiPart'
    -> LiveStream -- ^ 'lsiPayload'
    -> LiveStreamsInsert
liveStreamsInsert pLsiPart_ pLsiPayload_ =
  LiveStreamsInsert'
    { _lsiPart = pLsiPart_
    , _lsiPayload = pLsiPayload_
    , _lsiOnBehalfOfContentOwner = Nothing
    , _lsiOnBehalfOfContentOwnerChannel = Nothing
    }


-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The part properties that
-- you can include in the parameter value are id, snippet, cdn, and status.
lsiPart :: Lens' LiveStreamsInsert Text
lsiPart = lens _lsiPart (\ s a -> s{_lsiPart = a})

-- | Multipart request metadata.
lsiPayload :: Lens' LiveStreamsInsert LiveStream
lsiPayload
  = lens _lsiPayload (\ s a -> s{_lsiPayload = a})

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
lsiOnBehalfOfContentOwner :: Lens' LiveStreamsInsert (Maybe Text)
lsiOnBehalfOfContentOwner
  = lens _lsiOnBehalfOfContentOwner
      (\ s a -> s{_lsiOnBehalfOfContentOwner = a})

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
lsiOnBehalfOfContentOwnerChannel :: Lens' LiveStreamsInsert (Maybe Text)
lsiOnBehalfOfContentOwnerChannel
  = lens _lsiOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lsiOnBehalfOfContentOwnerChannel = a})

instance GoogleRequest LiveStreamsInsert where
        type Rs LiveStreamsInsert = LiveStream
        type Scopes LiveStreamsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveStreamsInsert'{..}
          = go (Just _lsiPart) _lsiOnBehalfOfContentOwner
              _lsiOnBehalfOfContentOwnerChannel
              (Just AltJSON)
              _lsiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveStreamsInsertResource)
                      mempty
