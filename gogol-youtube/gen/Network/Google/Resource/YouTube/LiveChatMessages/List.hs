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
-- Module      : Network.Google.Resource.YouTube.LiveChatMessages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists live chat messages for a specific chat.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveChatMessages.list@.
module Network.Google.Resource.YouTube.LiveChatMessages.List
    (
    -- * REST Resource
      LiveChatMessagesListResource

    -- * Creating a Request
    , liveChatMessagesList
    , LiveChatMessagesList

    -- * Request Lenses
    , lcmlPart
    , lcmlLiveChatId
    , lcmlHl
    , lcmlPageToken
    , lcmlMaxResults
    , lcmlProFileImageSize
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatMessages.list@ method which the
-- 'LiveChatMessagesList' request conforms to.
type LiveChatMessagesListResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "messages" :>
             QueryParam "liveChatId" Text :>
               QueryParam "part" Text :>
                 QueryParam "hl" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "profileImageSize" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] LiveChatMessageListResponse

-- | Lists live chat messages for a specific chat.
--
-- /See:/ 'liveChatMessagesList' smart constructor.
data LiveChatMessagesList =
  LiveChatMessagesList'
    { _lcmlPart             :: !Text
    , _lcmlLiveChatId       :: !Text
    , _lcmlHl               :: !(Maybe Text)
    , _lcmlPageToken        :: !(Maybe Text)
    , _lcmlMaxResults       :: !(Textual Word32)
    , _lcmlProFileImageSize :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiveChatMessagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmlPart'
--
-- * 'lcmlLiveChatId'
--
-- * 'lcmlHl'
--
-- * 'lcmlPageToken'
--
-- * 'lcmlMaxResults'
--
-- * 'lcmlProFileImageSize'
liveChatMessagesList
    :: Text -- ^ 'lcmlPart'
    -> Text -- ^ 'lcmlLiveChatId'
    -> LiveChatMessagesList
liveChatMessagesList pLcmlPart_ pLcmlLiveChatId_ =
  LiveChatMessagesList'
    { _lcmlPart = pLcmlPart_
    , _lcmlLiveChatId = pLcmlLiveChatId_
    , _lcmlHl = Nothing
    , _lcmlPageToken = Nothing
    , _lcmlMaxResults = 500
    , _lcmlProFileImageSize = Nothing
    }

-- | The part parameter specifies the liveChatComment resource parts that the
-- API response will include. Supported values are id and snippet.
lcmlPart :: Lens' LiveChatMessagesList Text
lcmlPart = lens _lcmlPart (\ s a -> s{_lcmlPart = a})

-- | The liveChatId parameter specifies the ID of the chat whose messages
-- will be returned.
lcmlLiveChatId :: Lens' LiveChatMessagesList Text
lcmlLiveChatId
  = lens _lcmlLiveChatId
      (\ s a -> s{_lcmlLiveChatId = a})

-- | The hl parameter instructs the API to retrieve localized resource
-- metadata for a specific application language that the YouTube website
-- supports. The parameter value must be a language code included in the
-- list returned by the i18nLanguages.list method. If localized resource
-- details are available in that language, the resource\'s
-- snippet.localized object will contain the localized values. However, if
-- localized details are not available, the snippet.localized object will
-- contain resource details in the resource\'s default language.
lcmlHl :: Lens' LiveChatMessagesList (Maybe Text)
lcmlHl = lens _lcmlHl (\ s a -> s{_lcmlHl = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken property
-- identify other pages that could be retrieved.
lcmlPageToken :: Lens' LiveChatMessagesList (Maybe Text)
lcmlPageToken
  = lens _lcmlPageToken
      (\ s a -> s{_lcmlPageToken = a})

-- | The maxResults parameter specifies the maximum number of messages that
-- should be returned in the result set.
lcmlMaxResults :: Lens' LiveChatMessagesList Word32
lcmlMaxResults
  = lens _lcmlMaxResults
      (\ s a -> s{_lcmlMaxResults = a})
      . _Coerce

-- | The profileImageSize parameter specifies the size of the user profile
-- pictures that should be returned in the result set. Default: 88.
lcmlProFileImageSize :: Lens' LiveChatMessagesList (Maybe Word32)
lcmlProFileImageSize
  = lens _lcmlProFileImageSize
      (\ s a -> s{_lcmlProFileImageSize = a})
      . mapping _Coerce

instance GoogleRequest LiveChatMessagesList where
        type Rs LiveChatMessagesList =
             LiveChatMessageListResponse
        type Scopes LiveChatMessagesList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient LiveChatMessagesList'{..}
          = go (Just _lcmlLiveChatId) (Just _lcmlPart) _lcmlHl
              _lcmlPageToken
              (Just _lcmlMaxResults)
              _lcmlProFileImageSize
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatMessagesListResource)
                      mempty
