{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.URLShortener
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you create, inspect, and manage goo.gl short URLs
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference>
module Network.Google.URLShortener
    (
    -- * API
      URLShortenerAPI
    , uRLShortenerAPI
    , uRLShortenerURL

    -- * Service Methods

    -- * REST Resources

    -- ** URLshortenerURLGet
    , module URLShortener.URL.Get

    -- ** URLshortenerURLInsert
    , module URLShortener.URL.Insert

    -- ** URLshortenerURLList
    , module URLShortener.URL.List

    -- * Types

    -- ** URL
    , URL
    , uRL
    , urlStatus
    , urlKind
    , urlCreated
    , urlAnalytics
    , urlLongUrl
    , urlId

    -- ** StringCount
    , StringCount
    , stringCount
    , scCount
    , scId

    -- ** AnalyticsSnapshot
    , AnalyticsSnapshot
    , analyticsSnapshot
    , asPlatforms
    , asShortUrlClicks
    , asReferrers
    , asCountries
    , asLongUrlClicks
    , asBrowsers

    -- ** AnalyticsSummary
    , AnalyticsSummary
    , analyticsSummary
    , asWeek
    , asAllTime
    , asDay
    , asTwoHours
    , asMonth

    -- ** URLHistory
    , URLHistory
    , uRLHistory
    , uhTotalItems
    , uhNextPageToken
    , uhItemsPerPage
    , uhKind
    , uhItems
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.URLShortener.URL.Get
import           Network.Google.Resource.URLShortener.URL.Insert
import           Network.Google.Resource.URLShortener.URL.List
import           Network.Google.URLShortener.Types

{- $resources
TODO
-}

type URLShortenerAPI = URL

uRLShortenerAPI :: Proxy URLShortenerAPI
uRLShortenerAPI = Proxy
