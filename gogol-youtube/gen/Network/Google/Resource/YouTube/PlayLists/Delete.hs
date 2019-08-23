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
-- Module      : Network.Google.Resource.YouTube.PlayLists.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.playlists.delete@.
module Network.Google.Resource.YouTube.PlayLists.Delete
    (
    -- * REST Resource
      PlayListsDeleteResource

    -- * Creating a Request
    , playListsDelete
    , PlayListsDelete

    -- * Request Lenses
    , pldOnBehalfOfContentOwner
    , pldId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlists.delete@ method which the
-- 'PlayListsDelete' request conforms to.
type PlayListsDeleteResource =
     "youtube" :>
       "v3" :>
         "playlists" :>
           QueryParam "id" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a playlist.
--
-- /See:/ 'playListsDelete' smart constructor.
data PlayListsDelete =
  PlayListsDelete'
    { _pldOnBehalfOfContentOwner :: !(Maybe Text)
    , _pldId                     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayListsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldOnBehalfOfContentOwner'
--
-- * 'pldId'
playListsDelete
    :: Text -- ^ 'pldId'
    -> PlayListsDelete
playListsDelete pPldId_ =
  PlayListsDelete' {_pldOnBehalfOfContentOwner = Nothing, _pldId = pPldId_}


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
pldOnBehalfOfContentOwner :: Lens' PlayListsDelete (Maybe Text)
pldOnBehalfOfContentOwner
  = lens _pldOnBehalfOfContentOwner
      (\ s a -> s{_pldOnBehalfOfContentOwner = a})

-- | The id parameter specifies the YouTube playlist ID for the playlist that
-- is being deleted. In a playlist resource, the id property specifies the
-- playlist\'s ID.
pldId :: Lens' PlayListsDelete Text
pldId = lens _pldId (\ s a -> s{_pldId = a})

instance GoogleRequest PlayListsDelete where
        type Rs PlayListsDelete = ()
        type Scopes PlayListsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient PlayListsDelete'{..}
          = go (Just _pldId) _pldOnBehalfOfContentOwner
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListsDeleteResource)
                      mempty
