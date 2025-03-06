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
-- Module      : Gogol.WebmasterTools.Webmasters.Sites.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about specific site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.sites.get@.
module Gogol.WebmasterTools.Webmasters.Sites.Get
  ( -- * Resource
    WebmastersSitesGetResource,

    -- ** Constructing a Request
    WebmastersSitesGet (..),
    newWebmastersSitesGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.WebmasterTools.Types

-- | A resource alias for @webmasters.sites.get@ method which the
-- 'WebmastersSitesGet' request conforms to.
type WebmastersSitesGetResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.Capture "siteUrl" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] WmxSite

-- | Retrieves information about specific site.
--
-- /See:/ 'newWebmastersSitesGet' smart constructor.
newtype WebmastersSitesGet = WebmastersSitesGet
  { -- | The URI of the property as defined in Search Console. Examples: http:\/\/www.example.com\/ or android-app:\/\/com.example\/ Note: for property-sets, use the URI that starts with sc-set: which is used in Search Console URLs.
    siteUrl :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitesGet' with the minimum fields required to make a request.
newWebmastersSitesGet ::
  -- |  The URI of the property as defined in Search Console. Examples: http:\/\/www.example.com\/ or android-app:\/\/com.example\/ Note: for property-sets, use the URI that starts with sc-set: which is used in Search Console URLs. See 'siteUrl'.
  Core.Text ->
  WebmastersSitesGet
newWebmastersSitesGet siteUrl =
  WebmastersSitesGet {siteUrl = siteUrl}

instance Core.GoogleRequest WebmastersSitesGet where
  type Rs WebmastersSitesGet = WmxSite
  type
    Scopes WebmastersSitesGet =
      '[Webmasters'FullControl, Webmasters'Readonly]
  requestClient WebmastersSitesGet {..} =
    go siteUrl (Core.Just Core.AltJSON) webmasterToolsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy WebmastersSitesGetResource)
          Core.mempty
