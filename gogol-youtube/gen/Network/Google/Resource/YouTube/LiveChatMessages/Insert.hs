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
-- Module      : Network.Google.Resource.YouTube.LiveChatMessages.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a message to a live chat.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveChatMessages.insert@.
module Network.Google.Resource.YouTube.LiveChatMessages.Insert
    (
    -- * REST Resource
      LiveChatMessagesInsertResource

    -- * Creating a Request
    , liveChatMessagesInsert
    , LiveChatMessagesInsert

    -- * Request Lenses
    , lcmiPart
    , lcmiPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatMessages.insert@ method which the
-- 'LiveChatMessagesInsert' request conforms to.
type LiveChatMessagesInsertResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "messages" :>
             QueryParam "part" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] LiveChatMessage :>
                   Post '[JSON] LiveChatMessage

-- | Adds a message to a live chat.
--
-- /See:/ 'liveChatMessagesInsert' smart constructor.
data LiveChatMessagesInsert =
  LiveChatMessagesInsert'
    { _lcmiPart    :: !Text
    , _lcmiPayload :: !LiveChatMessage
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveChatMessagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmiPart'
--
-- * 'lcmiPayload'
liveChatMessagesInsert
    :: Text -- ^ 'lcmiPart'
    -> LiveChatMessage -- ^ 'lcmiPayload'
    -> LiveChatMessagesInsert
liveChatMessagesInsert pLcmiPart_ pLcmiPayload_ =
  LiveChatMessagesInsert' {_lcmiPart = pLcmiPart_, _lcmiPayload = pLcmiPayload_}


-- | The part parameter serves two purposes. It identifies the properties
-- that the write operation will set as well as the properties that the API
-- response will include. Set the parameter value to snippet.
lcmiPart :: Lens' LiveChatMessagesInsert Text
lcmiPart = lens _lcmiPart (\ s a -> s{_lcmiPart = a})

-- | Multipart request metadata.
lcmiPayload :: Lens' LiveChatMessagesInsert LiveChatMessage
lcmiPayload
  = lens _lcmiPayload (\ s a -> s{_lcmiPayload = a})

instance GoogleRequest LiveChatMessagesInsert where
        type Rs LiveChatMessagesInsert = LiveChatMessage
        type Scopes LiveChatMessagesInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveChatMessagesInsert'{..}
          = go (Just _lcmiPart) (Just AltJSON) _lcmiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatMessagesInsertResource)
                      mempty
