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
-- Module      : Gogol.WebmasterTools.Webmasters.Sitemaps.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the sitemaps-entries submitted for this site, or included in the sitemap index file (if sitemapIndex is specified in the request).
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.sitemaps.list@.
module Gogol.WebmasterTools.Webmasters.Sitemaps.List
  ( -- * Resource
    WebmastersSitemapsListResource,

    -- ** Constructing a Request
    newWebmastersSitemapsList,
    WebmastersSitemapsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.WebmasterTools.Types

-- | A resource alias for @webmasters.sitemaps.list@ method which the
-- 'WebmastersSitemapsList' request conforms to.
type WebmastersSitemapsListResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.Capture "siteUrl" Core.Text
    Core.:> "sitemaps"
    Core.:> Core.QueryParam "sitemapIndex" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SitemapsListResponse

-- | Lists the sitemaps-entries submitted for this site, or included in the sitemap index file (if sitemapIndex is specified in the request).
--
-- /See:/ 'newWebmastersSitemapsList' smart constructor.
data WebmastersSitemapsList = WebmastersSitemapsList
  { -- | The site\'s URL, including protocol. For example: http:\/\/www.example.com\/
    siteUrl :: Core.Text,
    -- | A URL of a site\'s sitemap index. For example: http:\/\/www.example.com\/sitemapindex.xml
    sitemapIndex :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitemapsList' with the minimum fields required to make a request.
newWebmastersSitemapsList ::
  -- |  The site\'s URL, including protocol. For example: http:\/\/www.example.com\/ See 'siteUrl'.
  Core.Text ->
  WebmastersSitemapsList
newWebmastersSitemapsList siteUrl =
  WebmastersSitemapsList {siteUrl = siteUrl, sitemapIndex = Core.Nothing}

instance Core.GoogleRequest WebmastersSitemapsList where
  type Rs WebmastersSitemapsList = SitemapsListResponse
  type
    Scopes WebmastersSitemapsList =
      '[ "https://www.googleapis.com/auth/webmasters",
         "https://www.googleapis.com/auth/webmasters.readonly"
       ]
  requestClient WebmastersSitemapsList {..} =
    go
      siteUrl
      sitemapIndex
      (Core.Just Core.AltJSON)
      webmasterToolsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy WebmastersSitemapsListResource
          )
          Core.mempty
