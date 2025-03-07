{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.URLShortener
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you create, inspect, and manage goo.gl short URLs
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference>
module Gogol.URLShortener
  ( -- * Configuration
    uRLShortenerService,

    -- * OAuth Scopes
    Urlshortener'FullControl,

    -- * Resources

    -- ** urlshortener.url.get
    URLShortenerUrlGetResource,
    URLShortenerUrlGet (..),
    newURLShortenerUrlGet,

    -- ** urlshortener.url.insert
    URLShortenerUrlInsertResource,
    URLShortenerUrlInsert (..),
    newURLShortenerUrlInsert,

    -- ** urlshortener.url.list
    URLShortenerUrlListResource,
    URLShortenerUrlList (..),
    newURLShortenerUrlList,

    -- * Types

    -- ** AnalyticsSnapshot
    AnalyticsSnapshot (..),
    newAnalyticsSnapshot,

    -- ** AnalyticsSummary
    AnalyticsSummary (..),
    newAnalyticsSummary,

    -- ** StringCount
    StringCount (..),
    newStringCount,

    -- ** Url
    Url (..),
    newUrl,

    -- ** UrlHistory
    UrlHistory (..),
    newUrlHistory,

    -- ** UrlGetProjection
    UrlGetProjection (..),

    -- ** UrlListProjection
    UrlListProjection (..),
  )
where

import Gogol.URLShortener.Types
import Gogol.URLShortener.Url.Get
import Gogol.URLShortener.Url.Insert
import Gogol.URLShortener.Url.List
