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
-- Module      : Network.Google.Resource.YouTube.LiveChatBans.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a chat ban.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveChatBans.delete@.
module Network.Google.Resource.YouTube.LiveChatBans.Delete
    (
    -- * REST Resource
      LiveChatBansDeleteResource

    -- * Creating a Request
    , liveChatBansDelete
    , LiveChatBansDelete

    -- * Request Lenses
    , lcbdId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatBans.delete@ method which the
-- 'LiveChatBansDelete' request conforms to.
type LiveChatBansDeleteResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "bans" :>
             QueryParam "id" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a chat ban.
--
-- /See:/ 'liveChatBansDelete' smart constructor.
newtype LiveChatBansDelete = LiveChatBansDelete
    { _lcbdId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatBansDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbdId'
liveChatBansDelete
    :: Text -- ^ 'lcbdId'
    -> LiveChatBansDelete
liveChatBansDelete pLcbdId_ =
    LiveChatBansDelete
    { _lcbdId = pLcbdId_
    }

-- | The id parameter identifies the chat ban to remove. The value uniquely
-- identifies both the ban and the chat.
lcbdId :: Lens' LiveChatBansDelete Text
lcbdId = lens _lcbdId (\ s a -> s{_lcbdId = a})

instance GoogleRequest LiveChatBansDelete where
        type Rs LiveChatBansDelete = ()
        type Scopes LiveChatBansDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveChatBansDelete{..}
          = go (Just _lcbdId) (Just AltJSON) youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatBansDeleteResource)
                      mempty
