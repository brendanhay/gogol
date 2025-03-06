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
-- Module      : Gogol.WebmasterTools
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- View Google Search Console data for your verified sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference>
module Gogol.WebmasterTools
  ( -- * Configuration
    webmasterToolsService,

    -- * OAuth Scopes
    Webmasters'FullControl,
    Webmasters'Readonly,

    -- * Resources

    -- ** webmasters.searchanalytics.query
    WebmastersSearchanalyticsQueryResource,
    WebmastersSearchanalyticsQuery (..),
    newWebmastersSearchanalyticsQuery,

    -- ** webmasters.sitemaps.delete
    WebmastersSitemapsDeleteResource,
    WebmastersSitemapsDelete (..),
    newWebmastersSitemapsDelete,

    -- ** webmasters.sitemaps.get
    WebmastersSitemapsGetResource,
    WebmastersSitemapsGet (..),
    newWebmastersSitemapsGet,

    -- ** webmasters.sitemaps.list
    WebmastersSitemapsListResource,
    WebmastersSitemapsList (..),
    newWebmastersSitemapsList,

    -- ** webmasters.sitemaps.submit
    WebmastersSitemapsSubmitResource,
    WebmastersSitemapsSubmit (..),
    newWebmastersSitemapsSubmit,

    -- ** webmasters.sites.add
    WebmastersSitesAddResource,
    WebmastersSitesAdd (..),
    newWebmastersSitesAdd,

    -- ** webmasters.sites.delete
    WebmastersSitesDeleteResource,
    WebmastersSitesDelete (..),
    newWebmastersSitesDelete,

    -- ** webmasters.sites.get
    WebmastersSitesGetResource,
    WebmastersSitesGet (..),
    newWebmastersSitesGet,

    -- ** webmasters.sites.list
    WebmastersSitesListResource,
    WebmastersSitesList (..),
    newWebmastersSitesList,

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

import Gogol.WebmasterTools.Types
import Gogol.WebmasterTools.Webmasters.Searchanalytics.Query
import Gogol.WebmasterTools.Webmasters.Sitemaps.Delete
import Gogol.WebmasterTools.Webmasters.Sitemaps.Get
import Gogol.WebmasterTools.Webmasters.Sitemaps.List
import Gogol.WebmasterTools.Webmasters.Sitemaps.Submit
import Gogol.WebmasterTools.Webmasters.Sites.Add
import Gogol.WebmasterTools.Webmasters.Sites.Delete
import Gogol.WebmasterTools.Webmasters.Sites.Get
import Gogol.WebmasterTools.Webmasters.Sites.List
