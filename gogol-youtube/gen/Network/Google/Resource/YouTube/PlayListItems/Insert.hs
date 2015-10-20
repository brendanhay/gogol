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
-- Module      : Network.Google.Resource.YouTube.PlayListItems.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a resource to a playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.playlistItems.insert@.
module Network.Google.Resource.YouTube.PlayListItems.Insert
    (
    -- * REST Resource
      PlayListItemsInsertResource

    -- * Creating a Request
    , playListItemsInsert
    , PlayListItemsInsert

    -- * Request Lenses
    , pliiPart
    , pliiPayload
    , pliiOnBehalfOfContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlistItems.insert@ method which the
-- 'PlayListItemsInsert' request conforms to.
type PlayListItemsInsertResource =
     "playlistItems" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] PlayListItem :>
               Post '[JSON] PlayListItem

-- | Adds a resource to a playlist.
--
-- /See:/ 'playListItemsInsert' smart constructor.
data PlayListItemsInsert = PlayListItemsInsert
    { _pliiPart                   :: !Text
    , _pliiPayload                :: !PlayListItem
    , _pliiOnBehalfOfContentOwner :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListItemsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliiPart'
--
-- * 'pliiPayload'
--
-- * 'pliiOnBehalfOfContentOwner'
playListItemsInsert
    :: Text -- ^ 'pliiPart'
    -> PlayListItem -- ^ 'pliiPayload'
    -> PlayListItemsInsert
playListItemsInsert pPliiPart_ pPliiPayload_ =
    PlayListItemsInsert
    { _pliiPart = pPliiPart_
    , _pliiPayload = pPliiPayload_
    , _pliiOnBehalfOfContentOwner = Nothing
    }

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include.
pliiPart :: Lens' PlayListItemsInsert Text
pliiPart = lens _pliiPart (\ s a -> s{_pliiPart = a})

-- | Multipart request metadata.
pliiPayload :: Lens' PlayListItemsInsert PlayListItem
pliiPayload
  = lens _pliiPayload (\ s a -> s{_pliiPayload = a})

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
pliiOnBehalfOfContentOwner :: Lens' PlayListItemsInsert (Maybe Text)
pliiOnBehalfOfContentOwner
  = lens _pliiOnBehalfOfContentOwner
      (\ s a -> s{_pliiOnBehalfOfContentOwner = a})

instance GoogleRequest PlayListItemsInsert where
        type Rs PlayListItemsInsert = PlayListItem
        requestClient PlayListItemsInsert{..}
          = go (Just _pliiPart) _pliiOnBehalfOfContentOwner
              (Just AltJSON)
              _pliiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListItemsInsertResource)
                      mempty
