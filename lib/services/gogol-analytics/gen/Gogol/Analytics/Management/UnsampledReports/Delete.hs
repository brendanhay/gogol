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
-- Module      : Gogol.Analytics.Management.UnsampledReports.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.unsampledReports.delete@.
module Gogol.Analytics.Management.UnsampledReports.Delete
  ( -- * Resource
    AnalyticsManagementUnsampledReportsDeleteResource,

    -- ** Constructing a Request
    AnalyticsManagementUnsampledReportsDelete (..),
    newAnalyticsManagementUnsampledReportsDelete,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.unsampledReports.delete@ method which the
-- 'AnalyticsManagementUnsampledReportsDelete' request conforms to.
type AnalyticsManagementUnsampledReportsDeleteResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "profiles"
    Core.:> Core.Capture "profileId" Core.Text
    Core.:> "unsampledReports"
    Core.:> Core.Capture "unsampledReportId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes an unsampled report.
--
-- /See:/ 'newAnalyticsManagementUnsampledReportsDelete' smart constructor.
data AnalyticsManagementUnsampledReportsDelete = AnalyticsManagementUnsampledReportsDelete
  { -- | Account ID to delete the unsampled report for.
    accountId :: Core.Text,
    -- | View (Profile) ID to delete the unsampled report for.
    profileId :: Core.Text,
    -- | ID of the unsampled report to be deleted.
    unsampledReportId :: Core.Text,
    -- | Web property ID to delete the unsampled reports for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementUnsampledReportsDelete' with the minimum fields required to make a request.
newAnalyticsManagementUnsampledReportsDelete ::
  -- |  Account ID to delete the unsampled report for. See 'accountId'.
  Core.Text ->
  -- |  View (Profile) ID to delete the unsampled report for. See 'profileId'.
  Core.Text ->
  -- |  ID of the unsampled report to be deleted. See 'unsampledReportId'.
  Core.Text ->
  -- |  Web property ID to delete the unsampled reports for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementUnsampledReportsDelete
newAnalyticsManagementUnsampledReportsDelete
  accountId
  profileId
  unsampledReportId
  webPropertyId =
    AnalyticsManagementUnsampledReportsDelete
      { accountId = accountId,
        profileId = profileId,
        unsampledReportId = unsampledReportId,
        webPropertyId = webPropertyId
      }

instance
  Core.GoogleRequest
    AnalyticsManagementUnsampledReportsDelete
  where
  type Rs AnalyticsManagementUnsampledReportsDelete = ()
  type
    Scopes AnalyticsManagementUnsampledReportsDelete =
      '[Analytics'Edit]
  requestClient AnalyticsManagementUnsampledReportsDelete {..} =
    go
      accountId
      webPropertyId
      profileId
      unsampledReportId
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementUnsampledReportsDeleteResource
          )
          Core.mempty
