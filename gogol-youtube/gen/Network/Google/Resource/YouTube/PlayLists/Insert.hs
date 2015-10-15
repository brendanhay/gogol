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
-- Module      : Network.Google.Resource.YouTube.PlayLists.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlayListsInsert@.
module Network.Google.Resource.YouTube.PlayLists.Insert
    (
    -- * REST Resource
      PlayListsInsertResource

    -- * Creating a Request
    , playListsInsert'
    , PlayListsInsert'

    -- * Request Lenses
    , pliPart
    , pliPayload
    , pliOnBehalfOfContentOwner
    , pliOnBehalfOfContentOwnerChannel
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlayListsInsert@ method which the
-- 'PlayListsInsert'' request conforms to.
type PlayListsInsertResource =
     "playlists" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "onBehalfOfContentOwnerChannel" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] PlayList :> Post '[JSON] PlayList

-- | Creates a playlist.
--
-- /See:/ 'playListsInsert'' smart constructor.
data PlayListsInsert' = PlayListsInsert'
    { _pliPart                          :: !Text
    , _pliPayload                       :: !PlayList
    , _pliOnBehalfOfContentOwner        :: !(Maybe Text)
    , _pliOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliPart'
--
-- * 'pliPayload'
--
-- * 'pliOnBehalfOfContentOwner'
--
-- * 'pliOnBehalfOfContentOwnerChannel'
playListsInsert'
    :: Text -- ^ 'part'
    -> PlayList -- ^ 'payload'
    -> PlayListsInsert'
playListsInsert' pPliPart_ pPliPayload_ =
    PlayListsInsert'
    { _pliPart = pPliPart_
    , _pliPayload = pPliPayload_
    , _pliOnBehalfOfContentOwner = Nothing
    , _pliOnBehalfOfContentOwnerChannel = Nothing
    }

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include.
pliPart :: Lens' PlayListsInsert' Text
pliPart = lens _pliPart (\ s a -> s{_pliPart = a})

-- | Multipart request metadata.
pliPayload :: Lens' PlayListsInsert' PlayList
pliPayload
  = lens _pliPayload (\ s a -> s{_pliPayload = a})

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
pliOnBehalfOfContentOwner :: Lens' PlayListsInsert' (Maybe Text)
pliOnBehalfOfContentOwner
  = lens _pliOnBehalfOfContentOwner
      (\ s a -> s{_pliOnBehalfOfContentOwner = a})

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
pliOnBehalfOfContentOwnerChannel :: Lens' PlayListsInsert' (Maybe Text)
pliOnBehalfOfContentOwnerChannel
  = lens _pliOnBehalfOfContentOwnerChannel
      (\ s a -> s{_pliOnBehalfOfContentOwnerChannel = a})

instance GoogleRequest PlayListsInsert' where
        type Rs PlayListsInsert' = PlayList
        requestClient PlayListsInsert'{..}
          = go (Just _pliPart) _pliOnBehalfOfContentOwner
              _pliOnBehalfOfContentOwnerChannel
              (Just AltJSON)
              _pliPayload
              youTube
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListsInsertResource)
                      mempty
