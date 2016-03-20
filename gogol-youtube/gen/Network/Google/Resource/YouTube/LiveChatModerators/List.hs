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
-- Module      : Network.Google.Resource.YouTube.LiveChatModerators.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists moderators for a live chat.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveChatModerators.list@.
module Network.Google.Resource.YouTube.LiveChatModerators.List
    (
    -- * REST Resource
      LiveChatModeratorsListResource

    -- * Creating a Request
    , liveChatModeratorsList
    , LiveChatModeratorsList

    -- * Request Lenses
    , livPart
    , livLiveChatId
    , livPageToken
    , livMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatModerators.list@ method which the
-- 'LiveChatModeratorsList' request conforms to.
type LiveChatModeratorsListResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "moderators" :>
             QueryParam "liveChatId" Text :>
               QueryParam "part" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] LiveChatModeratorListResponse

-- | Lists moderators for a live chat.
--
-- /See:/ 'liveChatModeratorsList' smart constructor.
data LiveChatModeratorsList = LiveChatModeratorsList
    { _livPart       :: !Text
    , _livLiveChatId :: !Text
    , _livPageToken  :: !(Maybe Text)
    , _livMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatModeratorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'livPart'
--
-- * 'livLiveChatId'
--
-- * 'livPageToken'
--
-- * 'livMaxResults'
liveChatModeratorsList
    :: Text -- ^ 'livPart'
    -> Text -- ^ 'livLiveChatId'
    -> LiveChatModeratorsList
liveChatModeratorsList pLivPart_ pLivLiveChatId_ =
    LiveChatModeratorsList
    { _livPart = pLivPart_
    , _livLiveChatId = pLivLiveChatId_
    , _livPageToken = Nothing
    , _livMaxResults = 5
    }

-- | The part parameter specifies the liveChatModerator resource parts that
-- the API response will include. Supported values are id and snippet.
livPart :: Lens' LiveChatModeratorsList Text
livPart = lens _livPart (\ s a -> s{_livPart = a})

-- | The liveChatId parameter specifies the YouTube live chat for which the
-- API should return moderators.
livLiveChatId :: Lens' LiveChatModeratorsList Text
livLiveChatId
  = lens _livLiveChatId
      (\ s a -> s{_livLiveChatId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
livPageToken :: Lens' LiveChatModeratorsList (Maybe Text)
livPageToken
  = lens _livPageToken (\ s a -> s{_livPageToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
livMaxResults :: Lens' LiveChatModeratorsList Word32
livMaxResults
  = lens _livMaxResults
      (\ s a -> s{_livMaxResults = a})
      . _Coerce

instance GoogleRequest LiveChatModeratorsList where
        type Rs LiveChatModeratorsList =
             LiveChatModeratorListResponse
        type Scopes LiveChatModeratorsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient LiveChatModeratorsList{..}
          = go (Just _livLiveChatId) (Just _livPart)
              _livPageToken
              (Just _livMaxResults)
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatModeratorsListResource)
                      mempty
