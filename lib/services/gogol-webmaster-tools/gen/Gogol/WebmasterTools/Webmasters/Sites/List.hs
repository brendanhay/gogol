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
-- Module      : Gogol.WebmasterTools.Webmasters.Sites.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s Search Console sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.sites.list@.
module Gogol.WebmasterTools.Webmasters.Sites.List
  ( -- * Resource
    WebmastersSitesListResource,

    -- ** Constructing a Request
    WebmastersSitesList (..),
    newWebmastersSitesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.WebmasterTools.Types

-- | A resource alias for @webmasters.sites.list@ method which the
-- 'WebmastersSitesList' request conforms to.
type WebmastersSitesListResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SitesListResponse

-- | Lists the user\'s Search Console sites.
--
-- /See:/ 'newWebmastersSitesList' smart constructor.
data WebmastersSitesList = WebmastersSitesList
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitesList' with the minimum fields required to make a request.
newWebmastersSitesList ::
  WebmastersSitesList
newWebmastersSitesList = WebmastersSitesList

instance Core.GoogleRequest WebmastersSitesList where
  type Rs WebmastersSitesList = SitesListResponse
  type
    Scopes WebmastersSitesList =
      '[Webmasters'FullControl, Webmasters'Readonly]
  requestClient WebmastersSitesList {} =
    go (Core.Just Core.AltJSON) webmasterToolsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy WebmastersSitesListResource)
          Core.mempty
