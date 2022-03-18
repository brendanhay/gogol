{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.URLShortener
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you create, inspect, and manage goo.gl short URLs
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference>
module Network.Google.URLShortener
  ( -- * Configuration
    uRLShortenerService,

    -- * OAuth Scopes
    uRLShortenerScope,

    -- * Resources

    -- ** urlshortener.url.get
    URLShortenerUrlGetResource,
    newURLShortenerUrlGet,
    URLShortenerUrlGet,

    -- ** urlshortener.url.insert
    URLShortenerUrlInsertResource,
    newURLShortenerUrlInsert,
    URLShortenerUrlInsert,

    -- ** urlshortener.url.list
    URLShortenerUrlListResource,
    newURLShortenerUrlList,
    URLShortenerUrlList,

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

import Network.Google.URLShortener.Types
import Network.Google.URLShortener.Url.Get
import Network.Google.URLShortener.Url.Insert
import Network.Google.URLShortener.Url.List
