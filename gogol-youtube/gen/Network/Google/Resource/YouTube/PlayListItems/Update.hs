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
-- Module      : Network.Google.Resource.YouTube.PlayListItems.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a playlist item. For example, you could update the item\'s
-- position in the playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.playlistItems.update@.
module Network.Google.Resource.YouTube.PlayListItems.Update
    (
    -- * REST Resource
      PlayListItemsUpdateResource

    -- * Creating a Request
    , playListItemsUpdate
    , PlayListItemsUpdate

    -- * Request Lenses
    , pliuPart
    , pliuPayload
    , pliuOnBehalfOfContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlistItems.update@ method which the
-- 'PlayListItemsUpdate' request conforms to.
type PlayListItemsUpdateResource =
     "youtube" :>
       "v3" :>
         "playlistItems" :>
           QueryParam "part" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] PlayListItem :>
                   Put '[JSON] PlayListItem

-- | Modifies a playlist item. For example, you could update the item\'s
-- position in the playlist.
--
-- /See:/ 'playListItemsUpdate' smart constructor.
data PlayListItemsUpdate =
  PlayListItemsUpdate'
    { _pliuPart                   :: !Text
    , _pliuPayload                :: !PlayListItem
    , _pliuOnBehalfOfContentOwner :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayListItemsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliuPart'
--
-- * 'pliuPayload'
--
-- * 'pliuOnBehalfOfContentOwner'
playListItemsUpdate
    :: Text -- ^ 'pliuPart'
    -> PlayListItem -- ^ 'pliuPayload'
    -> PlayListItemsUpdate
playListItemsUpdate pPliuPart_ pPliuPayload_ =
  PlayListItemsUpdate'
    { _pliuPart = pPliuPart_
    , _pliuPayload = pPliuPayload_
    , _pliuOnBehalfOfContentOwner = Nothing
    }


-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Note that this method
-- will override the existing values for all of the mutable properties that
-- are contained in any parts that the parameter value specifies. For
-- example, a playlist item can specify a start time and end time, which
-- identify the times portion of the video that should play when users
-- watch the video in the playlist. If your request is updating a playlist
-- item that sets these values, and the request\'s part parameter value
-- includes the contentDetails part, the playlist item\'s start and end
-- times will be updated to whatever value the request body specifies. If
-- the request body does not specify values, the existing start and end
-- times will be removed and replaced with the default settings.
pliuPart :: Lens' PlayListItemsUpdate Text
pliuPart = lens _pliuPart (\ s a -> s{_pliuPart = a})

-- | Multipart request metadata.
pliuPayload :: Lens' PlayListItemsUpdate PlayListItem
pliuPayload
  = lens _pliuPayload (\ s a -> s{_pliuPayload = a})

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
pliuOnBehalfOfContentOwner :: Lens' PlayListItemsUpdate (Maybe Text)
pliuOnBehalfOfContentOwner
  = lens _pliuOnBehalfOfContentOwner
      (\ s a -> s{_pliuOnBehalfOfContentOwner = a})

instance GoogleRequest PlayListItemsUpdate where
        type Rs PlayListItemsUpdate = PlayListItem
        type Scopes PlayListItemsUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient PlayListItemsUpdate'{..}
          = go (Just _pliuPart) _pliuOnBehalfOfContentOwner
              (Just AltJSON)
              _pliuPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListItemsUpdateResource)
                      mempty
