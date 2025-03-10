{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.WebmasterTools.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.WebmasterTools.Types
  ( -- * Configuration
    webmasterToolsService,

    -- * OAuth Scopes
    Webmasters'FullControl,
    Webmasters'Readonly,

    -- * Types

    -- ** ApiDataRow
    ApiDataRow (..),
    newApiDataRow,

    -- ** ApiDimensionFilter
    ApiDimensionFilter (..),
    newApiDimensionFilter,

    -- ** ApiDimensionFilterGroup
    ApiDimensionFilterGroup (..),
    newApiDimensionFilterGroup,

    -- ** SearchAnalyticsQueryRequest
    SearchAnalyticsQueryRequest (..),
    newSearchAnalyticsQueryRequest,

    -- ** SearchAnalyticsQueryResponse
    SearchAnalyticsQueryResponse (..),
    newSearchAnalyticsQueryResponse,

    -- ** SitemapsListResponse
    SitemapsListResponse (..),
    newSitemapsListResponse,

    -- ** SitesListResponse
    SitesListResponse (..),
    newSitesListResponse,

    -- ** WmxSite
    WmxSite (..),
    newWmxSite,

    -- ** WmxSitemap
    WmxSitemap (..),
    newWmxSitemap,

    -- ** WmxSitemapContent
    WmxSitemapContent (..),
    newWmxSitemapContent,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.WebmasterTools.Internal.Product
import Gogol.WebmasterTools.Internal.Sum

-- | Default request referring to version @v3@ of the Search Console API. This contains the host and root path used as a starting point for constructing service requests.
webmasterToolsService :: Core.ServiceConfig
webmasterToolsService =
  Core.defaultService
    (Core.ServiceId "webmasters:v3")
    "www.googleapis.com"

-- | View and manage Search Console data for your verified sites
type Webmasters'FullControl =
  "https://www.googleapis.com/auth/webmasters"

-- | View Search Console data for your verified sites
type Webmasters'Readonly =
  "https://www.googleapis.com/auth/webmasters.readonly"
