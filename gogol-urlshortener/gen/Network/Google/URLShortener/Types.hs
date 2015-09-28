{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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
    -- * Service URL
      uRLShortenerURL

    -- * URLGet'Projection
    , URLGet'Projection (..)

    -- * Alt
    , Alt (..)

    -- * StringCount
    , StringCount
    , stringCount
    , scCount
    , scId

    -- * UrlHistory
    , UrlHistory
    , urlHistory
    , uhTotalItems
    , uhNextPageToken
    , uhItemsPerPage
    , uhKind
    , uhItems

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

    -- * URLList'Projection
    , URLList'Projection (..)

    -- * Url
    , Url
    , url
    , urlStatus
    , urlKind
    , urlCreated
    , urlAnalytics
    , urlLongUrl
    , urlId
    ) where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types.Product
import           Network.Google.URLShortener.Types.Sum

-- | URL referring to version 'v1' of the URL Shortener API.
uRLShortenerURL :: BaseUrl
uRLShortenerURL
  = BaseUrl Https
      "https://www.googleapis.com/urlshortener/v1/"
      443
