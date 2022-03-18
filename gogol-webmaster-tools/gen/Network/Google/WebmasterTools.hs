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
-- Module      : Network.Google.WebmasterTools
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- View Google Search Console data for your verified sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference>
module Network.Google.WebmasterTools
  ( -- * Configuration
    webmasterToolsService,

    -- * OAuth Scopes
    webmastersScope,
    webmastersReadOnlyScope,

    -- * Resources

    -- ** webmasters.searchanalytics.query
    WebmastersSearchanalyticsQueryResource,
    newWebmastersSearchanalyticsQuery,
    WebmastersSearchanalyticsQuery,

    -- ** webmasters.sitemaps.delete
    WebmastersSitemapsDeleteResource,
    newWebmastersSitemapsDelete,
    WebmastersSitemapsDelete,

    -- ** webmasters.sitemaps.get
    WebmastersSitemapsGetResource,
    newWebmastersSitemapsGet,
    WebmastersSitemapsGet,

    -- ** webmasters.sitemaps.list
    WebmastersSitemapsListResource,
    newWebmastersSitemapsList,
    WebmastersSitemapsList,

    -- ** webmasters.sitemaps.submit
    WebmastersSitemapsSubmitResource,
    newWebmastersSitemapsSubmit,
    WebmastersSitemapsSubmit,

    -- ** webmasters.sites.add
    WebmastersSitesAddResource,
    newWebmastersSitesAdd,
    WebmastersSitesAdd,

    -- ** webmasters.sites.delete
    WebmastersSitesDeleteResource,
    newWebmastersSitesDelete,
    WebmastersSitesDelete,

    -- ** webmasters.sites.get
    WebmastersSitesGetResource,
    newWebmastersSitesGet,
    WebmastersSitesGet,

    -- ** webmasters.sites.list
    WebmastersSitesListResource,
    newWebmastersSitesList,
    WebmastersSitesList,

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

import Network.Google.WebmasterTools.Types
import Network.Google.WebmasterTools.Webmasters.Searchanalytics.Query
import Network.Google.WebmasterTools.Webmasters.Sitemaps.Delete
import Network.Google.WebmasterTools.Webmasters.Sitemaps.Get
import Network.Google.WebmasterTools.Webmasters.Sitemaps.List
import Network.Google.WebmasterTools.Webmasters.Sitemaps.Submit
import Network.Google.WebmasterTools.Webmasters.Sites.Add
import Network.Google.WebmasterTools.Webmasters.Sites.Delete
import Network.Google.WebmasterTools.Webmasters.Sites.Get
import Network.Google.WebmasterTools.Webmasters.Sites.List
