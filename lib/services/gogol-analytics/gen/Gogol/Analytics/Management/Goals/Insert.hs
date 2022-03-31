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
-- Module      : Gogol.Analytics.Management.Goals.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new goal.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.goals.insert@.
module Gogol.Analytics.Management.Goals.Insert
  ( -- * Resource
    AnalyticsManagementGoalsInsertResource,

    -- ** Constructing a Request
    newAnalyticsManagementGoalsInsert,
    AnalyticsManagementGoalsInsert,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.goals.insert@ method which the
-- 'AnalyticsManagementGoalsInsert' request conforms to.
type AnalyticsManagementGoalsInsertResource =
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
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Goal
    Core.:> Core.Post '[Core.JSON] Goal

-- | Create a new goal.
--
-- /See:/ 'newAnalyticsManagementGoalsInsert' smart constructor.
data AnalyticsManagementGoalsInsert = AnalyticsManagementGoalsInsert
  { -- | Account ID to create the goal for.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Goal,
    -- | View (Profile) ID to create the goal for.
    profileId :: Core.Text,
    -- | Web property ID to create the goal for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementGoalsInsert' with the minimum fields required to make a request.
newAnalyticsManagementGoalsInsert ::
  -- |  Account ID to create the goal for. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Goal ->
  -- |  View (Profile) ID to create the goal for. See 'profileId'.
  Core.Text ->
  -- |  Web property ID to create the goal for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementGoalsInsert
newAnalyticsManagementGoalsInsert accountId payload profileId webPropertyId =
  AnalyticsManagementGoalsInsert
    { accountId = accountId,
      payload = payload,
      profileId = profileId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementGoalsInsert
  where
  type Rs AnalyticsManagementGoalsInsert = Goal
  type
    Scopes AnalyticsManagementGoalsInsert =
      '[Analytics'Edit]
  requestClient AnalyticsManagementGoalsInsert {..} =
    go
      accountId
      webPropertyId
      profileId
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementGoalsInsertResource
          )
          Core.mempty
