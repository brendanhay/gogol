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
-- Module      : Network.Google.Resource.YouTube.PlayListItems.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a playlist item.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.playlistItems.delete@.
module Network.Google.Resource.YouTube.PlayListItems.Delete
    (
    -- * REST Resource
      PlayListItemsDeleteResource

    -- * Creating a Request
    , playListItemsDelete
    , PlayListItemsDelete

    -- * Request Lenses
    , plidOnBehalfOfContentOwner
    , plidId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlistItems.delete@ method which the
-- 'PlayListItemsDelete' request conforms to.
type PlayListItemsDeleteResource =
     "youtube" :>
       "v3" :>
         "playlistItems" :>
           QueryParam "id" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a playlist item.
--
-- /See:/ 'playListItemsDelete' smart constructor.
data PlayListItemsDelete =
  PlayListItemsDelete'
    { _plidOnBehalfOfContentOwner :: !(Maybe Text)
    , _plidId                     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlayListItemsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plidOnBehalfOfContentOwner'
--
-- * 'plidId'
playListItemsDelete
    :: Text -- ^ 'plidId'
    -> PlayListItemsDelete
playListItemsDelete pPlidId_ =
  PlayListItemsDelete'
    {_plidOnBehalfOfContentOwner = Nothing, _plidId = pPlidId_}

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
plidOnBehalfOfContentOwner :: Lens' PlayListItemsDelete (Maybe Text)
plidOnBehalfOfContentOwner
  = lens _plidOnBehalfOfContentOwner
      (\ s a -> s{_plidOnBehalfOfContentOwner = a})

-- | The id parameter specifies the YouTube playlist item ID for the playlist
-- item that is being deleted. In a playlistItem resource, the id property
-- specifies the playlist item\'s ID.
plidId :: Lens' PlayListItemsDelete Text
plidId = lens _plidId (\ s a -> s{_plidId = a})

instance GoogleRequest PlayListItemsDelete where
        type Rs PlayListItemsDelete = ()
        type Scopes PlayListItemsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient PlayListItemsDelete'{..}
          = go (Just _plidId) _plidOnBehalfOfContentOwner
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListItemsDeleteResource)
                      mempty
