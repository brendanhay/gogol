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
-- Module      : Network.Google.Resource.YouTube.FanFundingEvents.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists fan funding events for a channel.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.fanFundingEvents.list@.
module Network.Google.Resource.YouTube.FanFundingEvents.List
    (
    -- * REST Resource
      FanFundingEventsListResource

    -- * Creating a Request
    , fanFundingEventsList
    , FanFundingEventsList

    -- * Request Lenses
    , ffelPart
    , ffelHl
    , ffelPageToken
    , ffelMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.fanFundingEvents.list@ method which the
-- 'FanFundingEventsList' request conforms to.
type FanFundingEventsListResource =
     "youtube" :>
       "v3" :>
         "fanFundingEvents" :>
           QueryParam "part" Text :>
             QueryParam "hl" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] FanFundingEventListResponse

-- | Lists fan funding events for a channel.
--
-- /See:/ 'fanFundingEventsList' smart constructor.
data FanFundingEventsList = FanFundingEventsList
    { _ffelPart       :: !Text
    , _ffelHl         :: !(Maybe Text)
    , _ffelPageToken  :: !(Maybe Text)
    , _ffelMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FanFundingEventsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ffelPart'
--
-- * 'ffelHl'
--
-- * 'ffelPageToken'
--
-- * 'ffelMaxResults'
fanFundingEventsList
    :: Text -- ^ 'ffelPart'
    -> FanFundingEventsList
fanFundingEventsList pFfelPart_ =
    FanFundingEventsList
    { _ffelPart = pFfelPart_
    , _ffelHl = Nothing
    , _ffelPageToken = Nothing
    , _ffelMaxResults = 5
    }

-- | The part parameter specifies the fanFundingEvent resource parts that the
-- API response will include. Supported values are id and snippet.
ffelPart :: Lens' FanFundingEventsList Text
ffelPart = lens _ffelPart (\ s a -> s{_ffelPart = a})

-- | The hl parameter instructs the API to retrieve localized resource
-- metadata for a specific application language that the YouTube website
-- supports. The parameter value must be a language code included in the
-- list returned by the i18nLanguages.list method. If localized resource
-- details are available in that language, the resource\'s
-- snippet.localized object will contain the localized values. However, if
-- localized details are not available, the snippet.localized object will
-- contain resource details in the resource\'s default language.
ffelHl :: Lens' FanFundingEventsList (Maybe Text)
ffelHl = lens _ffelHl (\ s a -> s{_ffelHl = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
ffelPageToken :: Lens' FanFundingEventsList (Maybe Text)
ffelPageToken
  = lens _ffelPageToken
      (\ s a -> s{_ffelPageToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
ffelMaxResults :: Lens' FanFundingEventsList Word32
ffelMaxResults
  = lens _ffelMaxResults
      (\ s a -> s{_ffelMaxResults = a})
      . _Coerce

instance GoogleRequest FanFundingEventsList where
        type Rs FanFundingEventsList =
             FanFundingEventListResponse
        type Scopes FanFundingEventsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient FanFundingEventsList{..}
          = go (Just _ffelPart) _ffelHl _ffelPageToken
              (Just _ffelMaxResults)
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy FanFundingEventsListResource)
                      mempty
