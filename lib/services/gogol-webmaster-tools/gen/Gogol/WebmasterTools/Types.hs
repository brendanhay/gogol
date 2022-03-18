{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.WebmasterTools.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.WebmasterTools.Types
    (
    -- * Configuration
      webmasterToolsService

    -- * OAuth Scopes
    , webmastersScope
    , webmastersReadOnlyScope

    -- * Types

    -- ** ApiDataRow
    , ApiDataRow (..)
    , newApiDataRow

    -- ** ApiDimensionFilter
    , ApiDimensionFilter (..)
    , newApiDimensionFilter

    -- ** ApiDimensionFilterGroup
    , ApiDimensionFilterGroup (..)
    , newApiDimensionFilterGroup

    -- ** SearchAnalyticsQueryRequest
    , SearchAnalyticsQueryRequest (..)
    , newSearchAnalyticsQueryRequest

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse (..)
    , newSearchAnalyticsQueryResponse

    -- ** SitemapsListResponse
    , SitemapsListResponse (..)
    , newSitemapsListResponse

    -- ** SitesListResponse
    , SitesListResponse (..)
    , newSitesListResponse

    -- ** WmxSite
    , WmxSite (..)
    , newWmxSite

    -- ** WmxSitemap
    , WmxSitemap (..)
    , newWmxSitemap

    -- ** WmxSitemapContent
    , WmxSitemapContent (..)
    , newWmxSitemapContent
    ) where

import qualified Gogol.Prelude as Core
import Gogol.WebmasterTools.Internal.Product
import Gogol.WebmasterTools.Internal.Sum

-- | Default request referring to version @v3@ of the Search Console API. This contains the host and root path used as a starting point for constructing service requests.
webmasterToolsService :: Core.ServiceConfig
webmasterToolsService
  = Core.defaultService
      (Core.ServiceId "webmasters:v3")
      "www.googleapis.com"

-- | View and manage Search Console data for your verified sites
webmastersScope :: Core.Proxy '["https://www.googleapis.com/auth/webmasters"]
webmastersScope = Core.Proxy

-- | View Search Console data for your verified sites
webmastersReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/webmasters.readonly"]
webmastersReadOnlyScope = Core.Proxy
