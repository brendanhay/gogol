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
-- Module      : Network.Google.Analytics.Management.Experiments.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an existing experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.update@.
module Network.Google.Analytics.Management.Experiments.Update
  ( -- * Resource
    AnalyticsManagementExperimentsUpdateResource,

    -- ** Constructing a Request
    newAnalyticsManagementExperimentsUpdate,
    AnalyticsManagementExperimentsUpdate,
  )
where

import Network.Google.Analytics.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @analytics.management.experiments.update@ method which the
-- 'AnalyticsManagementExperimentsUpdate' request conforms to.
type AnalyticsManagementExperimentsUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] Experiment
    Core.:> Core.Put '[Core.JSON] Experiment

-- | Update an existing experiment.
--
-- /See:/ 'newAnalyticsManagementExperimentsUpdate' smart constructor.
data AnalyticsManagementExperimentsUpdate = AnalyticsManagementExperimentsUpdate
  { -- | Account ID of the experiment to update.
    accountId :: Core.Text,
    -- | Experiment ID of the experiment to update.
    experimentId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Experiment,
    -- | View (Profile) ID of the experiment to update.
    profileId :: Core.Text,
    -- | Web property ID of the experiment to update.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementExperimentsUpdate' with the minimum fields required to make a request.
newAnalyticsManagementExperimentsUpdate ::
  -- |  Account ID of the experiment to update. See 'accountId'.
  Core.Text ->
  -- |  Experiment ID of the experiment to update. See 'experimentId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Experiment ->
  -- |  View (Profile) ID of the experiment to update. See 'profileId'.
  Core.Text ->
  -- |  Web property ID of the experiment to update. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementExperimentsUpdate
newAnalyticsManagementExperimentsUpdate accountId experimentId payload profileId webPropertyId =
  AnalyticsManagementExperimentsUpdate
    { accountId = accountId,
      experimentId = experimentId,
      payload = payload,
      profileId = profileId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementExperimentsUpdate
  where
  type
    Rs AnalyticsManagementExperimentsUpdate =
      Experiment
  type
    Scopes AnalyticsManagementExperimentsUpdate =
      '[ "https://www.googleapis.com/auth/analytics",
         "https://www.googleapis.com/auth/analytics.edit"
       ]
  requestClient
    AnalyticsManagementExperimentsUpdate {..} =
      go
        accountId
        webPropertyId
        profileId
        experimentId
        (Core.Just Core.AltJSON)
        payload
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementExperimentsUpdateResource
            )
            Core.mempty
