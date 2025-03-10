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
-- Module      : Gogol.Analytics.Management.RemarketingAudience.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists remarketing audiences to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.list@.
module Gogol.Analytics.Management.RemarketingAudience.List
  ( -- * Resource
    AnalyticsManagementRemarketingAudienceListResource,

    -- ** Constructing a Request
    AnalyticsManagementRemarketingAudienceList (..),
    newAnalyticsManagementRemarketingAudienceList,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.remarketingAudience.list@ method which the
-- 'AnalyticsManagementRemarketingAudienceList' request conforms to.
type AnalyticsManagementRemarketingAudienceListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "remarketingAudiences"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "type" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RemarketingAudiences

-- | Lists remarketing audiences to which the user has access.
--
-- /See:/ 'newAnalyticsManagementRemarketingAudienceList' smart constructor.
data AnalyticsManagementRemarketingAudienceList = AnalyticsManagementRemarketingAudienceList
  { -- | The account ID of the remarketing audiences to retrieve.
    accountId :: Core.Text,
    -- | The maximum number of remarketing audiences to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32),
    type' :: Core.Text,
    -- | The web property ID of the remarketing audiences to retrieve.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementRemarketingAudienceList' with the minimum fields required to make a request.
newAnalyticsManagementRemarketingAudienceList ::
  -- |  The account ID of the remarketing audiences to retrieve. See 'accountId'.
  Core.Text ->
  -- |  The web property ID of the remarketing audiences to retrieve. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementRemarketingAudienceList
newAnalyticsManagementRemarketingAudienceList
  accountId
  webPropertyId =
    AnalyticsManagementRemarketingAudienceList
      { accountId = accountId,
        maxResults = Core.Nothing,
        startIndex = Core.Nothing,
        type' = "all",
        webPropertyId = webPropertyId
      }

instance
  Core.GoogleRequest
    AnalyticsManagementRemarketingAudienceList
  where
  type
    Rs AnalyticsManagementRemarketingAudienceList =
      RemarketingAudiences
  type
    Scopes AnalyticsManagementRemarketingAudienceList =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementRemarketingAudienceList {..} =
    go
      accountId
      webPropertyId
      maxResults
      startIndex
      (Core.Just type')
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementRemarketingAudienceListResource
          )
          Core.mempty
