-- |
-- Module      : Network.Google.URLShortener
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you create, inspect, and manage goo.gl short URLs
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference>
module Network.Google.URLShortener
    (
    -- * API Definition
      URLShortener



    -- * Types

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

    -- ** StringCount
    , StringCount
    , stringCount
    , scCount
    , scId

    -- ** Url
    , Url
    , url
    , urlStatus
    , urlKind
    , urlCreated
    , urlAnalytics
    , urlLongUrl
    , urlId

    -- ** UrlHistory
    , UrlHistory
    , urlHistory
    , uhTotalItems
    , uhNextPageToken
    , uhItemsPerPage
    , uhKind
    , uhItems
    ) where

import           Network.Google.URLShortener.Types

{- $resources
TODO
-}

type URLShortener = ()

uRLShortener :: Proxy URLShortener
uRLShortener = Proxy




