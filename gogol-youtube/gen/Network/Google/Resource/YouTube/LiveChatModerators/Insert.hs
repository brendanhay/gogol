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
-- Module      : Network.Google.Resource.YouTube.LiveChatModerators.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new moderator for the chat.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveChatModerators.insert@.
module Network.Google.Resource.YouTube.LiveChatModerators.Insert
    (
    -- * REST Resource
      LiveChatModeratorsInsertResource

    -- * Creating a Request
    , liveChatModeratorsInsert
    , LiveChatModeratorsInsert

    -- * Request Lenses
    , lPart
    , lPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatModerators.insert@ method which the
-- 'LiveChatModeratorsInsert' request conforms to.
type LiveChatModeratorsInsertResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "moderators" :>
             QueryParam "part" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] LiveChatModerator :>
                   Post '[JSON] LiveChatModerator

-- | Adds a new moderator for the chat.
--
-- /See:/ 'liveChatModeratorsInsert' smart constructor.
data LiveChatModeratorsInsert = LiveChatModeratorsInsert
    { _lPart    :: !Text
    , _lPayload :: !LiveChatModerator
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatModeratorsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lPart'
--
-- * 'lPayload'
liveChatModeratorsInsert
    :: Text -- ^ 'lPart'
    -> LiveChatModerator -- ^ 'lPayload'
    -> LiveChatModeratorsInsert
liveChatModeratorsInsert pLPart_ pLPayload_ =
    LiveChatModeratorsInsert
    { _lPart = pLPart_
    , _lPayload = pLPayload_
    }

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response returns. Set the parameter value to
-- snippet.
lPart :: Lens' LiveChatModeratorsInsert Text
lPart = lens _lPart (\ s a -> s{_lPart = a})

-- | Multipart request metadata.
lPayload :: Lens' LiveChatModeratorsInsert LiveChatModerator
lPayload = lens _lPayload (\ s a -> s{_lPayload = a})

instance GoogleRequest LiveChatModeratorsInsert where
        type Rs LiveChatModeratorsInsert = LiveChatModerator
        requestClient LiveChatModeratorsInsert{..}
          = go (Just _lPart) (Just AltJSON) _lPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatModeratorsInsertResource)
                      mempty
