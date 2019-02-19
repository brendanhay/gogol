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
-- Module      : Network.Google.Resource.YouTube.LiveChatBans.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new ban to the chat.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveChatBans.insert@.
module Network.Google.Resource.YouTube.LiveChatBans.Insert
    (
    -- * REST Resource
      LiveChatBansInsertResource

    -- * Creating a Request
    , liveChatBansInsert
    , LiveChatBansInsert

    -- * Request Lenses
    , lcbiPart
    , lcbiPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatBans.insert@ method which the
-- 'LiveChatBansInsert' request conforms to.
type LiveChatBansInsertResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "bans" :>
             QueryParam "part" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] LiveChatBan :>
                   Post '[JSON] LiveChatBan

-- | Adds a new ban to the chat.
--
-- /See:/ 'liveChatBansInsert' smart constructor.
data LiveChatBansInsert =
  LiveChatBansInsert'
    { _lcbiPart    :: !Text
    , _lcbiPayload :: !LiveChatBan
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiveChatBansInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbiPart'
--
-- * 'lcbiPayload'
liveChatBansInsert
    :: Text -- ^ 'lcbiPart'
    -> LiveChatBan -- ^ 'lcbiPayload'
    -> LiveChatBansInsert
liveChatBansInsert pLcbiPart_ pLcbiPayload_ =
  LiveChatBansInsert' {_lcbiPart = pLcbiPart_, _lcbiPayload = pLcbiPayload_}

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response returns. Set the parameter value to
-- snippet.
lcbiPart :: Lens' LiveChatBansInsert Text
lcbiPart = lens _lcbiPart (\ s a -> s{_lcbiPart = a})

-- | Multipart request metadata.
lcbiPayload :: Lens' LiveChatBansInsert LiveChatBan
lcbiPayload
  = lens _lcbiPayload (\ s a -> s{_lcbiPayload = a})

instance GoogleRequest LiveChatBansInsert where
        type Rs LiveChatBansInsert = LiveChatBan
        type Scopes LiveChatBansInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveChatBansInsert'{..}
          = go (Just _lcbiPart) (Just AltJSON) _lcbiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatBansInsertResource)
                      mempty
