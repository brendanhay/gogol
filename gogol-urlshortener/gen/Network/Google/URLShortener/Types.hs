{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.URLShortener.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.URLShortener.Types
    (
    -- * API Definition
      urlshortener


    -- * AnalyticsSnapshot
    , AnalyticsSnapshot
    , analyticsSnapshot
    , asPlatforms
    , asShortUrlClicks
    , asReferrers
    , asCountries
    , asLongUrlClicks
    , asBrowsers

    -- * AnalyticsSummary
    , AnalyticsSummary
    , analyticsSummary
    , asWeek
    , asAllTime
    , asDay
    , asTwoHours
    , asMonth

    -- * StringCount
    , StringCount
    , stringCount
    , scCount
    , scId

    -- * Url
    , Url
    , url
    , urlStatus
    , urlKind
    , urlCreated
    , urlAnalytics
    , urlLongUrl
    , urlId

    -- * UrlHistory
    , UrlHistory
    , urlHistory
    , uhTotalItems
    , uhNextPageToken
    , uhItemsPerPage
    , uhKind
    , uhItems
    ) where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types.Product
import           Network.Google.URLShortener.Types.Sum

urlshortener :: a
urlshortener = error "urlshortener"
