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
-- Module      : Gogol.Analytics.Management.Webproperties.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing web property. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.patch@.
module Gogol.Analytics.Management.Webproperties.Patch
  ( -- * Resource
    AnalyticsManagementWebpropertiesPatchResource,

    -- ** Constructing a Request
    AnalyticsManagementWebpropertiesPatch (..),
    newAnalyticsManagementWebpropertiesPatch,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.webproperties.patch@ method which the
-- 'AnalyticsManagementWebpropertiesPatch' request conforms to.
type AnalyticsManagementWebpropertiesPatchResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Webproperty
    Core.:> Core.Patch '[Core.JSON] Webproperty

-- | Updates an existing web property. This method supports patch semantics.
--
-- /See:/ 'newAnalyticsManagementWebpropertiesPatch' smart constructor.
data AnalyticsManagementWebpropertiesPatch = AnalyticsManagementWebpropertiesPatch
  { -- | Account ID to which the web property belongs
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Webproperty,
    -- | Web property ID
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebpropertiesPatch' with the minimum fields required to make a request.
newAnalyticsManagementWebpropertiesPatch ::
  -- |  Account ID to which the web property belongs See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Webproperty ->
  -- |  Web property ID See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementWebpropertiesPatch
newAnalyticsManagementWebpropertiesPatch
  accountId
  payload
  webPropertyId =
    AnalyticsManagementWebpropertiesPatch
      { accountId = accountId,
        payload = payload,
        webPropertyId = webPropertyId
      }

instance Core.GoogleRequest AnalyticsManagementWebpropertiesPatch where
  type Rs AnalyticsManagementWebpropertiesPatch = Webproperty
  type
    Scopes AnalyticsManagementWebpropertiesPatch =
      '[Analytics'Edit]
  requestClient AnalyticsManagementWebpropertiesPatch {..} =
    go
      accountId
      webPropertyId
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementWebpropertiesPatchResource
          )
          Core.mempty
