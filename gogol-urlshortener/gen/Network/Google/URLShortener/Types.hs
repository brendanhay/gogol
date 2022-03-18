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
-- Module      : Network.Google.URLShortener.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.URLShortener.Types
  ( -- * Configuration
    uRLShortenerService,

    -- * OAuth Scopes
    uRLShortenerScope,

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

import qualified Network.Google.Prelude as Core
import Network.Google.URLShortener.Internal.Product
import Network.Google.URLShortener.Internal.Sum

-- | Default request referring to version @v1@ of the URL Shortener API. This contains the host and root path used as a starting point for constructing service requests.
uRLShortenerService :: Core.ServiceConfig
uRLShortenerService =
  Core.defaultService
    (Core.ServiceId "urlshortener:v1")
    "www.googleapis.com"

-- | Manage your goo.gl short URLs
uRLShortenerScope :: Core.Proxy '["https://www.googleapis.com/auth/urlshortener"]
uRLShortenerScope = Core.Proxy
