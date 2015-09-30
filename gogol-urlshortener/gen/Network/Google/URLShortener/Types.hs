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

    -- * URL
    , URL
    , uRL
    , urlStatus
    , urlKind
    , urlCreated
    , urlAnalytics
    , urlLongUrl
    , urlId

    -- * StringCount
    , StringCount
    , stringCount
    , scCount
    , scId

    -- * URLshortenerURLListProjection
    , URLshortenerURLListProjection (..)

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

    -- * URLshortenerURLGetProjection
    , URLshortenerURLGetProjection (..)

    -- * URLHistory
    , URLHistory
    , uRLHistory
    , uhTotalItems
    , uhNextPageToken
    , uhItemsPerPage
    , uhKind
    , uhItems

    -- * Alt
    , Alt (..)
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
