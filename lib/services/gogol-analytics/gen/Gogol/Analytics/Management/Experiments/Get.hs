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
-- Module      : Gogol.Analytics.Management.Experiments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an experiment to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.get@.
module Gogol.Analytics.Management.Experiments.Get
  ( -- * Resource
    AnalyticsManagementExperimentsGetResource,

    -- ** Constructing a Request
    newAnalyticsManagementExperimentsGet,
    AnalyticsManagementExperimentsGet,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.experiments.get@ method which the
-- 'AnalyticsManagementExperimentsGet' request conforms to.
type AnalyticsManagementExperimentsGetResource =
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
    Core.:> Core.Capture "experimentId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Experiment

-- | Returns an experiment to which the user has access.
--
-- /See:/ 'newAnalyticsManagementExperimentsGet' smart constructor.
data AnalyticsManagementExperimentsGet = AnalyticsManagementExperimentsGet
  { -- | Account ID to retrieve the experiment for.
    accountId :: Core.Text,
    -- | Experiment ID to retrieve the experiment for.
    experimentId :: Core.Text,
    -- | View (Profile) ID to retrieve the experiment for.
    profileId :: Core.Text,
    -- | Web property ID to retrieve the experiment for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementExperimentsGet' with the minimum fields required to make a request.
newAnalyticsManagementExperimentsGet ::
  -- |  Account ID to retrieve the experiment for. See 'accountId'.
  Core.Text ->
  -- |  Experiment ID to retrieve the experiment for. See 'experimentId'.
  Core.Text ->
  -- |  View (Profile) ID to retrieve the experiment for. See 'profileId'.
  Core.Text ->
  -- |  Web property ID to retrieve the experiment for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementExperimentsGet
newAnalyticsManagementExperimentsGet accountId experimentId profileId webPropertyId =
  AnalyticsManagementExperimentsGet
    { accountId = accountId,
      experimentId = experimentId,
      profileId = profileId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementExperimentsGet
  where
  type
    Rs AnalyticsManagementExperimentsGet =
      Experiment
  type
    Scopes AnalyticsManagementExperimentsGet =
      '[ "https://www.googleapis.com/auth/analytics",
         "https://www.googleapis.com/auth/analytics.edit",
         "https://www.googleapis.com/auth/analytics.readonly"
       ]
  requestClient AnalyticsManagementExperimentsGet {..} =
    go
      accountId
      webPropertyId
      profileId
      experimentId
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementExperimentsGetResource
          )
          Core.mempty
