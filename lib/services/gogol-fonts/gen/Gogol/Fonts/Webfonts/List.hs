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
-- Module      : Gogol.Fonts.Webfonts.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of fonts currently served by the Google Fonts Developer API.
--
-- /See:/ <https://developers.google.com/fonts/docs/developer_api Web Fonts Developer API Reference> for @webfonts.webfonts.list@.
module Gogol.Fonts.Webfonts.List
  ( -- * Resource
    WebfontsWebfontsListResource,

    -- ** Constructing a Request
    WebfontsWebfontsList (..),
    newWebfontsWebfontsList,
  )
where

import Gogol.Fonts.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @webfonts.webfonts.list@ method which the
-- 'WebfontsWebfontsList' request conforms to.
type WebfontsWebfontsListResource =
  "v1"
    Core.:> "webfonts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "capability" WebfontsListCapability
    Core.:> Core.QueryParam "category" Core.Text
    Core.:> Core.QueryParams "family" Core.Text
    Core.:> Core.QueryParam "sort" WebfontsListSort
    Core.:> Core.QueryParam "subset" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] WebfontList

-- | Retrieves the list of fonts currently served by the Google Fonts Developer API.
--
-- /See:/ 'newWebfontsWebfontsList' smart constructor.
data WebfontsWebfontsList = WebfontsWebfontsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Controls the font urls in @Webfont.files@, by default, static ttf fonts are sent.
    capability :: (Core.Maybe [WebfontsListCapability]),
    -- | Filters by Webfont.category, if category is found in Webfont.categories. If not set, returns all families.
    category :: (Core.Maybe Core.Text),
    -- | Filters by Webfont.family, using literal match. If not set, returns all families
    family :: (Core.Maybe [Core.Text]),
    -- | Enables sorting of the list.
    sort :: (Core.Maybe WebfontsListSort),
    -- | Filters by Webfont.subset, if subset is found in Webfont.subsets. If not set, returns all families.
    subset :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebfontsWebfontsList' with the minimum fields required to make a request.
newWebfontsWebfontsList ::
  WebfontsWebfontsList
newWebfontsWebfontsList =
  WebfontsWebfontsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      capability = Core.Nothing,
      category = Core.Nothing,
      family = Core.Nothing,
      sort = Core.Nothing,
      subset = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest WebfontsWebfontsList where
  type Rs WebfontsWebfontsList = WebfontList
  type Scopes WebfontsWebfontsList = '[]
  requestClient WebfontsWebfontsList {..} =
    go
      xgafv
      accessToken
      callback
      (capability Core.^. Core._Default)
      category
      (family Core.^. Core._Default)
      sort
      subset
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fontsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy WebfontsWebfontsListResource)
          Core.mempty
