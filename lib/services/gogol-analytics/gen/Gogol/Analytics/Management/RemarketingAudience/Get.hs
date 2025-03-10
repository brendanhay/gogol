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
-- Module      : Gogol.Analytics.Management.RemarketingAudience.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a remarketing audience to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.get@.
module Gogol.Analytics.Management.RemarketingAudience.Get
  ( -- * Resource
    AnalyticsManagementRemarketingAudienceGetResource,

    -- ** Constructing a Request
    AnalyticsManagementRemarketingAudienceGet (..),
    newAnalyticsManagementRemarketingAudienceGet,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.remarketingAudience.get@ method which the
-- 'AnalyticsManagementRemarketingAudienceGet' request conforms to.
type AnalyticsManagementRemarketingAudienceGetResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "remarketingAudiences"
    Core.:> Core.Capture "remarketingAudienceId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RemarketingAudience

-- | Gets a remarketing audience to which the user has access.
--
-- /See:/ 'newAnalyticsManagementRemarketingAudienceGet' smart constructor.
data AnalyticsManagementRemarketingAudienceGet = AnalyticsManagementRemarketingAudienceGet
  { -- | The account ID of the remarketing audience to retrieve.
    accountId :: Core.Text,
    -- | The ID of the remarketing audience to retrieve.
    remarketingAudienceId :: Core.Text,
    -- | The web property ID of the remarketing audience to retrieve.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementRemarketingAudienceGet' with the minimum fields required to make a request.
newAnalyticsManagementRemarketingAudienceGet ::
  -- |  The account ID of the remarketing audience to retrieve. See 'accountId'.
  Core.Text ->
  -- |  The ID of the remarketing audience to retrieve. See 'remarketingAudienceId'.
  Core.Text ->
  -- |  The web property ID of the remarketing audience to retrieve. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementRemarketingAudienceGet
newAnalyticsManagementRemarketingAudienceGet
  accountId
  remarketingAudienceId
  webPropertyId =
    AnalyticsManagementRemarketingAudienceGet
      { accountId = accountId,
        remarketingAudienceId = remarketingAudienceId,
        webPropertyId = webPropertyId
      }

instance
  Core.GoogleRequest
    AnalyticsManagementRemarketingAudienceGet
  where
  type
    Rs AnalyticsManagementRemarketingAudienceGet =
      RemarketingAudience
  type
    Scopes AnalyticsManagementRemarketingAudienceGet =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementRemarketingAudienceGet {..} =
    go
      accountId
      webPropertyId
      remarketingAudienceId
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementRemarketingAudienceGetResource
          )
          Core.mempty
