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
-- Module      : Gogol.SearchConsole.Webmasters.Sites.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about specific site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sites.get@.
module Gogol.SearchConsole.Webmasters.Sites.Get
  ( -- * Resource
    WebmastersSitesGetResource,

    -- ** Constructing a Request
    WebmastersSitesGet (..),
    newWebmastersSitesGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SearchConsole.Types

-- | A resource alias for @webmasters.sites.get@ method which the
-- 'WebmastersSitesGet' request conforms to.
type WebmastersSitesGetResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.Capture "siteUrl" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] WmxSite

-- | Retrieves information about specific site.
--
-- /See:/ 'newWebmastersSitesGet' smart constructor.
data WebmastersSitesGet = WebmastersSitesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The URI of the property as defined in Search Console. __Examples:__ @http:\/\/www.example.com\/@ or @sc-domain:example.com@.
    siteUrl :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitesGet' with the minimum fields required to make a request.
newWebmastersSitesGet ::
  -- |  The URI of the property as defined in Search Console. __Examples:__ @http:\/\/www.example.com\/@ or @sc-domain:example.com@. See 'siteUrl'.
  Core.Text ->
  WebmastersSitesGet
newWebmastersSitesGet siteUrl =
  WebmastersSitesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      siteUrl = siteUrl,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest WebmastersSitesGet where
  type Rs WebmastersSitesGet = WmxSite
  type
    Scopes WebmastersSitesGet =
      '[Webmasters'FullControl, Webmasters'Readonly]
  requestClient WebmastersSitesGet {..} =
    go
      siteUrl
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      searchConsoleService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy WebmastersSitesGetResource)
          Core.mempty
