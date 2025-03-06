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
-- Module      : Gogol.Analytics.Management.Goals.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a goal to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.goals.get@.
module Gogol.Analytics.Management.Goals.Get
  ( -- * Resource
    AnalyticsManagementGoalsGetResource,

    -- ** Constructing a Request
    AnalyticsManagementGoalsGet (..),
    newAnalyticsManagementGoalsGet,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.goals.get@ method which the
-- 'AnalyticsManagementGoalsGet' request conforms to.
type AnalyticsManagementGoalsGetResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "profiles"
    Core.:> Core.Capture "profileId" Core.Text
    Core.:> "goals"
    Core.:> Core.Capture "goalId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Goal

-- | Gets a goal to which the user has access.
--
-- /See:/ 'newAnalyticsManagementGoalsGet' smart constructor.
data AnalyticsManagementGoalsGet = AnalyticsManagementGoalsGet
  { -- | Account ID to retrieve the goal for.
    accountId :: Core.Text,
    -- | Goal ID to retrieve the goal for.
    goalId :: Core.Text,
    -- | View (Profile) ID to retrieve the goal for.
    profileId :: Core.Text,
    -- | Web property ID to retrieve the goal for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementGoalsGet' with the minimum fields required to make a request.
newAnalyticsManagementGoalsGet ::
  -- |  Account ID to retrieve the goal for. See 'accountId'.
  Core.Text ->
  -- |  Goal ID to retrieve the goal for. See 'goalId'.
  Core.Text ->
  -- |  View (Profile) ID to retrieve the goal for. See 'profileId'.
  Core.Text ->
  -- |  Web property ID to retrieve the goal for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementGoalsGet
newAnalyticsManagementGoalsGet
  accountId
  goalId
  profileId
  webPropertyId =
    AnalyticsManagementGoalsGet
      { accountId = accountId,
        goalId = goalId,
        profileId = profileId,
        webPropertyId = webPropertyId
      }

instance Core.GoogleRequest AnalyticsManagementGoalsGet where
  type Rs AnalyticsManagementGoalsGet = Goal
  type
    Scopes AnalyticsManagementGoalsGet =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementGoalsGet {..} =
    go
      accountId
      webPropertyId
      profileId
      goalId
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AnalyticsManagementGoalsGetResource)
          Core.mempty
