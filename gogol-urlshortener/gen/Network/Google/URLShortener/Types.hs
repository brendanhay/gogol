{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.URLShortener.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.URLShortener.Types
    (
    -- * Service Configuration
      uRLShortenerService

    -- * OAuth Scopes
    , urlShortenerScope

    -- * URL
    , URL
    , url
    , uStatus
    , uKind
    , uCreated
    , uAnalytics
    , uLongURL
    , uId

    -- * StringCount
    , StringCount
    , stringCount
    , scCount
    , scId

    -- * URLListProjection
    , URLListProjection (..)

    -- * AnalyticsSnapshot
    , AnalyticsSnapshot
    , analyticsSnapshot
    , asPlatforms
    , asShortURLClicks
    , asReferrers
    , asCountries
    , asLongURLClicks
    , asBrowsers

    -- * AnalyticsSummary
    , AnalyticsSummary
    , analyticsSummary
    , asWeek
    , asAllTime
    , asDay
    , asTwoHours
    , asMonth

    -- * URLGetProjection
    , URLGetProjection (..)

    -- * URLHistory
    , URLHistory
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

-- | Default request referring to version 'v1' of the URL Shortener API. This contains the host and root path used as a starting point for constructing service requests.
uRLShortenerService :: ServiceConfig
uRLShortenerService
  = defaultService (ServiceId "urlshortener:v1")
      "www.googleapis.com"

-- | Manage your goo.gl short URLs
urlShortenerScope :: Proxy '["https://www.googleapis.com/auth/urlshortener"]
urlShortenerScope = Proxy;
