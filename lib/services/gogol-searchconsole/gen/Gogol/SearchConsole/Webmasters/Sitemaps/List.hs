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
-- Module      : Gogol.SearchConsole.Webmasters.Sitemaps.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the </webmaster-tools/v3/sitemaps sitemaps-entries> submitted for this site, or included in the sitemap index file (if @sitemapIndex@ is specified in the request).
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sitemaps.list@.
module Gogol.SearchConsole.Webmasters.Sitemaps.List
  ( -- * Resource
    WebmastersSitemapsListResource,

    -- ** Constructing a Request
    WebmastersSitemapsList (..),
    newWebmastersSitemapsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SearchConsole.Types

-- | A resource alias for @webmasters.sitemaps.list@ method which the
-- 'WebmastersSitemapsList' request conforms to.
type WebmastersSitemapsListResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.Capture "siteUrl" Core.Text
    Core.:> "sitemaps"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "sitemapIndex" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SitemapsListResponse

-- | Lists the </webmaster-tools/v3/sitemaps sitemaps-entries> submitted for this site, or included in the sitemap index file (if @sitemapIndex@ is specified in the request).
--
-- /See:/ 'newWebmastersSitemapsList' smart constructor.
data WebmastersSitemapsList = WebmastersSitemapsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The site\'s URL, including protocol. For example: @http:\/\/www.example.com\/@.
    siteUrl :: Core.Text,
    -- | A URL of a site\'s sitemap index. For example: @http:\/\/www.example.com\/sitemapindex.xml@.
    sitemapIndex :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitemapsList' with the minimum fields required to make a request.
newWebmastersSitemapsList ::
  -- |  The site\'s URL, including protocol. For example: @http:\/\/www.example.com\/@. See 'siteUrl'.
  Core.Text ->
  WebmastersSitemapsList
newWebmastersSitemapsList siteUrl =
  WebmastersSitemapsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      siteUrl = siteUrl,
      sitemapIndex = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest WebmastersSitemapsList where
  type Rs WebmastersSitemapsList = SitemapsListResponse
  type
    Scopes WebmastersSitemapsList =
      '[Webmasters'FullControl, Webmasters'Readonly]
  requestClient WebmastersSitemapsList {..} =
    go
      siteUrl
      xgafv
      accessToken
      callback
      sitemapIndex
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      searchConsoleService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy WebmastersSitemapsListResource
          )
          Core.mempty
