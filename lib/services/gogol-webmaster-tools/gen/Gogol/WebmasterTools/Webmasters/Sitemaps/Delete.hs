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
-- Module      : Gogol.WebmasterTools.Webmasters.Sitemaps.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a sitemap from this site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.sitemaps.delete@.
module Gogol.WebmasterTools.Webmasters.Sitemaps.Delete
  ( -- * Resource
    WebmastersSitemapsDeleteResource,

    -- ** Constructing a Request
    WebmastersSitemapsDelete (..),
    newWebmastersSitemapsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.WebmasterTools.Types

-- | A resource alias for @webmasters.sitemaps.delete@ method which the
-- 'WebmastersSitemapsDelete' request conforms to.
type WebmastersSitemapsDeleteResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.Capture "siteUrl" Core.Text
    Core.:> "sitemaps"
    Core.:> Core.Capture "feedpath" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a sitemap from this site.
--
-- /See:/ 'newWebmastersSitemapsDelete' smart constructor.
data WebmastersSitemapsDelete = WebmastersSitemapsDelete
  { -- | The URL of the actual sitemap. For example: http:\/\/www.example.com\/sitemap.xml
    feedpath :: Core.Text,
    -- | The site\'s URL, including protocol. For example: http:\/\/www.example.com\/
    siteUrl :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitemapsDelete' with the minimum fields required to make a request.
newWebmastersSitemapsDelete ::
  -- |  The URL of the actual sitemap. For example: http:\/\/www.example.com\/sitemap.xml See 'feedpath'.
  Core.Text ->
  -- |  The site\'s URL, including protocol. For example: http:\/\/www.example.com\/ See 'siteUrl'.
  Core.Text ->
  WebmastersSitemapsDelete
newWebmastersSitemapsDelete feedpath siteUrl =
  WebmastersSitemapsDelete {feedpath = feedpath, siteUrl = siteUrl}

instance Core.GoogleRequest WebmastersSitemapsDelete where
  type Rs WebmastersSitemapsDelete = ()
  type Scopes WebmastersSitemapsDelete = '[Webmasters'FullControl]
  requestClient WebmastersSitemapsDelete {..} =
    go
      siteUrl
      feedpath
      (Core.Just Core.AltJSON)
      webmasterToolsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy WebmastersSitemapsDeleteResource)
          Core.mempty
