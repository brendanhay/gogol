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
-- Module      : Gogol.Analytics.Management.Webproperties.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a web property to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.get@.
module Gogol.Analytics.Management.Webproperties.Get
  ( -- * Resource
    AnalyticsManagementWebpropertiesGetResource,

    -- ** Constructing a Request
    AnalyticsManagementWebpropertiesGet (..),
    newAnalyticsManagementWebpropertiesGet,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.webproperties.get@ method which the
-- 'AnalyticsManagementWebpropertiesGet' request conforms to.
type AnalyticsManagementWebpropertiesGetResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Webproperty

-- | Gets a web property to which the user has access.
--
-- /See:/ 'newAnalyticsManagementWebpropertiesGet' smart constructor.
data AnalyticsManagementWebpropertiesGet = AnalyticsManagementWebpropertiesGet
  { -- | Account ID to retrieve the web property for.
    accountId :: Core.Text,
    -- | ID to retrieve the web property for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebpropertiesGet' with the minimum fields required to make a request.
newAnalyticsManagementWebpropertiesGet ::
  -- |  Account ID to retrieve the web property for. See 'accountId'.
  Core.Text ->
  -- |  ID to retrieve the web property for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementWebpropertiesGet
newAnalyticsManagementWebpropertiesGet accountId webPropertyId =
  AnalyticsManagementWebpropertiesGet
    { accountId = accountId,
      webPropertyId = webPropertyId
    }

instance Core.GoogleRequest AnalyticsManagementWebpropertiesGet where
  type Rs AnalyticsManagementWebpropertiesGet = Webproperty
  type
    Scopes AnalyticsManagementWebpropertiesGet =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementWebpropertiesGet {..} =
    go
      accountId
      webPropertyId
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementWebpropertiesGetResource
          )
          Core.mempty
