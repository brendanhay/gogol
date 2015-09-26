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
    -- * Resources
      URLShortener
    , UrlAPI
    , UrlInsert
    , UrlList
    , UrlGet

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

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types

{- $resources
TODO
-}

type URLShortener = UrlAPI

type UrlAPI = UrlInsert :<|> UrlList :<|> UrlGet

-- | Creates a new short URL.
type UrlInsert =
     "urlshortener" :> "v1" :> "url" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of URLs shortened by a user.
type UrlList =
     "urlshortener" :> "v1" :> "url" :> "history" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "start-token" Text
       :> QueryParam "key" Text
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Expands a short URL or gets creation time and analytics.
type UrlGet =
     "urlshortener" :> "v1" :> "url" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "shortUrl" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
