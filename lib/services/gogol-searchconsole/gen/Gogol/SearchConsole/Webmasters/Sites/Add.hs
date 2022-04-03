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
-- Module      : Gogol.SearchConsole.Webmasters.Sites.Add
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a site to the set of the user\'s sites in Search Console.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sites.add@.
module Gogol.SearchConsole.Webmasters.Sites.Add
  ( -- * Resource
    WebmastersSitesAddResource,

    -- ** Constructing a Request
    WebmastersSitesAdd (..),
    newWebmastersSitesAdd,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SearchConsole.Types

-- | A resource alias for @webmasters.sites.add@ method which the
-- 'WebmastersSitesAdd' request conforms to.
type WebmastersSitesAddResource =
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
    Core.:> Core.Put '[Core.JSON] ()

-- | Adds a site to the set of the user\'s sites in Search Console.
--
-- /See:/ 'newWebmastersSitesAdd' smart constructor.
data WebmastersSitesAdd = WebmastersSitesAdd
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The URL of the site to add.
    siteUrl :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitesAdd' with the minimum fields required to make a request.
newWebmastersSitesAdd ::
  -- |  The URL of the site to add. See 'siteUrl'.
  Core.Text ->
  WebmastersSitesAdd
newWebmastersSitesAdd siteUrl =
  WebmastersSitesAdd
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      siteUrl = siteUrl,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest WebmastersSitesAdd where
  type Rs WebmastersSitesAdd = ()
  type
    Scopes WebmastersSitesAdd =
      '[Webmasters'FullControl]
  requestClient WebmastersSitesAdd {..} =
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
          (Core.Proxy :: Core.Proxy WebmastersSitesAddResource)
          Core.mempty
