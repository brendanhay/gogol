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
-- Module      : Network.Google.Resource.YouTube.LiveChatMessages.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a chat message.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveChatMessages.delete@.
module Network.Google.Resource.YouTube.LiveChatMessages.Delete
    (
    -- * REST Resource
      LiveChatMessagesDeleteResource

    -- * Creating a Request
    , liveChatMessagesDelete
    , LiveChatMessagesDelete

    -- * Request Lenses
    , lId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatMessages.delete@ method which the
-- 'LiveChatMessagesDelete' request conforms to.
type LiveChatMessagesDeleteResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "messages" :>
             QueryParam "id" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a chat message.
--
-- /See:/ 'liveChatMessagesDelete' smart constructor.
newtype LiveChatMessagesDelete = LiveChatMessagesDelete
    { _lId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatMessagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lId'
liveChatMessagesDelete
    :: Text -- ^ 'lId'
    -> LiveChatMessagesDelete
liveChatMessagesDelete pLId_ =
    LiveChatMessagesDelete
    { _lId = pLId_
    }

-- | The id parameter specifies the YouTube chat message ID of the resource
-- that is being deleted.
lId :: Lens' LiveChatMessagesDelete Text
lId = lens _lId (\ s a -> s{_lId = a})

instance GoogleRequest LiveChatMessagesDelete where
        type Rs LiveChatMessagesDelete = ()
        type Scopes LiveChatMessagesDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveChatMessagesDelete{..}
          = go (Just _lId) (Just AltJSON) youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatMessagesDeleteResource)
                      mempty
