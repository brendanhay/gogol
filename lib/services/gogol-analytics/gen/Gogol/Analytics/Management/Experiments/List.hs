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
-- Module      : Gogol.Analytics.Management.Experiments.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists experiments to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.list@.
module Gogol.Analytics.Management.Experiments.List
  ( -- * Resource
    AnalyticsManagementExperimentsListResource,

    -- ** Constructing a Request
    AnalyticsManagementExperimentsList (..),
    newAnalyticsManagementExperimentsList,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.experiments.list@ method which the
-- 'AnalyticsManagementExperimentsList' request conforms to.
type AnalyticsManagementExperimentsListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "profiles"
    Core.:> Core.Capture "profileId" Core.Text
    Core.:> "experiments"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Experiments

-- | Lists experiments to which the user has access.
--
-- /See:/ 'newAnalyticsManagementExperimentsList' smart constructor.
data AnalyticsManagementExperimentsList = AnalyticsManagementExperimentsList
  { -- | Account ID to retrieve experiments for.
    accountId :: Core.Text,
    -- | The maximum number of experiments to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | View (Profile) ID to retrieve experiments for.
    profileId :: Core.Text,
    -- | An index of the first experiment to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Web property ID to retrieve experiments for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementExperimentsList' with the minimum fields required to make a request.
newAnalyticsManagementExperimentsList ::
  -- |  Account ID to retrieve experiments for. See 'accountId'.
  Core.Text ->
  -- |  View (Profile) ID to retrieve experiments for. See 'profileId'.
  Core.Text ->
  -- |  Web property ID to retrieve experiments for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementExperimentsList
newAnalyticsManagementExperimentsList
  accountId
  profileId
  webPropertyId =
    AnalyticsManagementExperimentsList
      { accountId = accountId,
        maxResults = Core.Nothing,
        profileId = profileId,
        startIndex = Core.Nothing,
        webPropertyId = webPropertyId
      }

instance Core.GoogleRequest AnalyticsManagementExperimentsList where
  type Rs AnalyticsManagementExperimentsList = Experiments
  type
    Scopes AnalyticsManagementExperimentsList =
      '[Analytics'FullControl, Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementExperimentsList {..} =
    go
      accountId
      webPropertyId
      profileId
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementExperimentsListResource
          )
          Core.mempty
