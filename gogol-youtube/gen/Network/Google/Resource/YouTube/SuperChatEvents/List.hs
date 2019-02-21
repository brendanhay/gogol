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
-- Module      : Network.Google.Resource.YouTube.SuperChatEvents.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Super Chat events for a channel.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.superChatEvents.list@.
module Network.Google.Resource.YouTube.SuperChatEvents.List
    (
    -- * REST Resource
      SuperChatEventsListResource

    -- * Creating a Request
    , superChatEventsList
    , SuperChatEventsList

    -- * Request Lenses
    , scelPart
    , scelHl
    , scelPageToken
    , scelMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.superChatEvents.list@ method which the
-- 'SuperChatEventsList' request conforms to.
type SuperChatEventsListResource =
     "youtube" :>
       "v3" :>
         "superChatEvents" :>
           QueryParam "part" Text :>
             QueryParam "hl" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] SuperChatEventListResponse

-- | Lists Super Chat events for a channel.
--
-- /See:/ 'superChatEventsList' smart constructor.
data SuperChatEventsList =
  SuperChatEventsList'
    { _scelPart       :: !Text
    , _scelHl         :: !(Maybe Text)
    , _scelPageToken  :: !(Maybe Text)
    , _scelMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuperChatEventsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scelPart'
--
-- * 'scelHl'
--
-- * 'scelPageToken'
--
-- * 'scelMaxResults'
superChatEventsList
    :: Text -- ^ 'scelPart'
    -> SuperChatEventsList
superChatEventsList pScelPart_ =
  SuperChatEventsList'
    { _scelPart = pScelPart_
    , _scelHl = Nothing
    , _scelPageToken = Nothing
    , _scelMaxResults = 5
    }


-- | The part parameter specifies the superChatEvent resource parts that the
-- API response will include. Supported values are id and snippet.
scelPart :: Lens' SuperChatEventsList Text
scelPart = lens _scelPart (\ s a -> s{_scelPart = a})

-- | The hl parameter instructs the API to retrieve localized resource
-- metadata for a specific application language that the YouTube website
-- supports. The parameter value must be a language code included in the
-- list returned by the i18nLanguages.list method. If localized resource
-- details are available in that language, the resource\'s
-- snippet.localized object will contain the localized values. However, if
-- localized details are not available, the snippet.localized object will
-- contain resource details in the resource\'s default language.
scelHl :: Lens' SuperChatEventsList (Maybe Text)
scelHl = lens _scelHl (\ s a -> s{_scelHl = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
scelPageToken :: Lens' SuperChatEventsList (Maybe Text)
scelPageToken
  = lens _scelPageToken
      (\ s a -> s{_scelPageToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
scelMaxResults :: Lens' SuperChatEventsList Word32
scelMaxResults
  = lens _scelMaxResults
      (\ s a -> s{_scelMaxResults = a})
      . _Coerce

instance GoogleRequest SuperChatEventsList where
        type Rs SuperChatEventsList =
             SuperChatEventListResponse
        type Scopes SuperChatEventsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient SuperChatEventsList'{..}
          = go (Just _scelPart) _scelHl _scelPageToken
              (Just _scelMaxResults)
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy SuperChatEventsListResource)
                      mempty
