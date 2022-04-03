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
-- Module      : Gogol.Analytics.Management.UnsampledReports.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a single unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.unsampledReports.get@.
module Gogol.Analytics.Management.UnsampledReports.Get
  ( -- * Resource
    AnalyticsManagementUnsampledReportsGetResource,

    -- ** Constructing a Request
    AnalyticsManagementUnsampledReportsGet (..),
    newAnalyticsManagementUnsampledReportsGet,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.unsampledReports.get@ method which the
-- 'AnalyticsManagementUnsampledReportsGet' request conforms to.
type AnalyticsManagementUnsampledReportsGetResource =
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
    Core.:> Core.Get '[Core.JSON] UnsampledReport

-- | Returns a single unsampled report.
--
-- /See:/ 'newAnalyticsManagementUnsampledReportsGet' smart constructor.
data AnalyticsManagementUnsampledReportsGet = AnalyticsManagementUnsampledReportsGet
  { -- | Account ID to retrieve unsampled report for.
    accountId :: Core.Text,
    -- | View (Profile) ID to retrieve unsampled report for.
    profileId :: Core.Text,
    -- | ID of the unsampled report to retrieve.
    unsampledReportId :: Core.Text,
    -- | Web property ID to retrieve unsampled reports for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementUnsampledReportsGet' with the minimum fields required to make a request.
newAnalyticsManagementUnsampledReportsGet ::
  -- |  Account ID to retrieve unsampled report for. See 'accountId'.
  Core.Text ->
  -- |  View (Profile) ID to retrieve unsampled report for. See 'profileId'.
  Core.Text ->
  -- |  ID of the unsampled report to retrieve. See 'unsampledReportId'.
  Core.Text ->
  -- |  Web property ID to retrieve unsampled reports for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementUnsampledReportsGet
newAnalyticsManagementUnsampledReportsGet accountId profileId unsampledReportId webPropertyId =
  AnalyticsManagementUnsampledReportsGet
    { accountId = accountId,
      profileId = profileId,
      unsampledReportId = unsampledReportId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementUnsampledReportsGet
  where
  type
    Rs AnalyticsManagementUnsampledReportsGet =
      UnsampledReport
  type
    Scopes AnalyticsManagementUnsampledReportsGet =
      '[ Analytics'FullControl,
         Analytics'Edit,
         Analytics'Readonly
       ]
  requestClient
    AnalyticsManagementUnsampledReportsGet {..} =
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
                Core.Proxy
                  AnalyticsManagementUnsampledReportsGetResource
            )
            Core.mempty
