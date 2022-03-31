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
-- Module      : Gogol.WebmasterTools.Webmasters.Sitemaps.Submit
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits a sitemap for a site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.sitemaps.submit@.
module Gogol.WebmasterTools.Webmasters.Sitemaps.Submit
  ( -- * Resource
    WebmastersSitemapsSubmitResource,

    -- ** Constructing a Request
    newWebmastersSitemapsSubmit,
    WebmastersSitemapsSubmit,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.WebmasterTools.Types

-- | A resource alias for @webmasters.sitemaps.submit@ method which the
-- 'WebmastersSitemapsSubmit' request conforms to.
type WebmastersSitemapsSubmitResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.Capture "siteUrl" Core.Text
    Core.:> "sitemaps"
    Core.:> Core.Capture "feedpath" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Put '[Core.JSON] ()

-- | Submits a sitemap for a site.
--
-- /See:/ 'newWebmastersSitemapsSubmit' smart constructor.
data WebmastersSitemapsSubmit = WebmastersSitemapsSubmit
  { -- | The URL of the sitemap to add. For example: http:\/\/www.example.com\/sitemap.xml
    feedpath :: Core.Text,
    -- | The site\'s URL, including protocol. For example: http:\/\/www.example.com\/
    siteUrl :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitemapsSubmit' with the minimum fields required to make a request.
newWebmastersSitemapsSubmit ::
  -- |  The URL of the sitemap to add. For example: http:\/\/www.example.com\/sitemap.xml See 'feedpath'.
  Core.Text ->
  -- |  The site\'s URL, including protocol. For example: http:\/\/www.example.com\/ See 'siteUrl'.
  Core.Text ->
  WebmastersSitemapsSubmit
newWebmastersSitemapsSubmit feedpath siteUrl =
  WebmastersSitemapsSubmit {feedpath = feedpath, siteUrl = siteUrl}

instance Core.GoogleRequest WebmastersSitemapsSubmit where
  type Rs WebmastersSitemapsSubmit = ()
  type
    Scopes WebmastersSitemapsSubmit =
      '[Webmasters'FullControl]
  requestClient WebmastersSitemapsSubmit {..} =
    go
      siteUrl
      feedpath
      (Core.Just Core.AltJSON)
      webmasterToolsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy WebmastersSitemapsSubmitResource
          )
          Core.mempty
