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
-- Module      : Gogol.Analytics.Management.Goals.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing goal. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.goals.patch@.
module Gogol.Analytics.Management.Goals.Patch
  ( -- * Resource
    AnalyticsManagementGoalsPatchResource,

    -- ** Constructing a Request
    AnalyticsManagementGoalsPatch (..),
    newAnalyticsManagementGoalsPatch,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.goals.patch@ method which the
-- 'AnalyticsManagementGoalsPatch' request conforms to.
type AnalyticsManagementGoalsPatchResource =
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
    Core.:> Core.ReqBody '[Core.JSON] Goal
    Core.:> Core.Patch '[Core.JSON] Goal

-- | Updates an existing goal. This method supports patch semantics.
--
-- /See:/ 'newAnalyticsManagementGoalsPatch' smart constructor.
data AnalyticsManagementGoalsPatch = AnalyticsManagementGoalsPatch
  { -- | Account ID to update the goal.
    accountId :: Core.Text,
    -- | Index of the goal to be updated.
    goalId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Goal,
    -- | View (Profile) ID to update the goal.
    profileId :: Core.Text,
    -- | Web property ID to update the goal.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementGoalsPatch' with the minimum fields required to make a request.
newAnalyticsManagementGoalsPatch ::
  -- |  Account ID to update the goal. See 'accountId'.
  Core.Text ->
  -- |  Index of the goal to be updated. See 'goalId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Goal ->
  -- |  View (Profile) ID to update the goal. See 'profileId'.
  Core.Text ->
  -- |  Web property ID to update the goal. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementGoalsPatch
newAnalyticsManagementGoalsPatch
  accountId
  goalId
  payload
  profileId
  webPropertyId =
    AnalyticsManagementGoalsPatch
      { accountId = accountId,
        goalId = goalId,
        payload = payload,
        profileId = profileId,
        webPropertyId = webPropertyId
      }

instance Core.GoogleRequest AnalyticsManagementGoalsPatch where
  type Rs AnalyticsManagementGoalsPatch = Goal
  type Scopes AnalyticsManagementGoalsPatch = '[Analytics'Edit]
  requestClient AnalyticsManagementGoalsPatch {..} =
    go
      accountId
      webPropertyId
      profileId
      goalId
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AnalyticsManagementGoalsPatchResource)
          Core.mempty
