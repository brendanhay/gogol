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
-- Module      : Gogol.Analytics.Management.Experiments.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.insert@.
module Gogol.Analytics.Management.Experiments.Insert
  ( -- * Resource
    AnalyticsManagementExperimentsInsertResource,

    -- ** Constructing a Request
    newAnalyticsManagementExperimentsInsert,
    AnalyticsManagementExperimentsInsert,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.experiments.insert@ method which the
-- 'AnalyticsManagementExperimentsInsert' request conforms to.
type AnalyticsManagementExperimentsInsertResource =
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
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Experiment
    Core.:> Core.Post '[Core.JSON] Experiment

-- | Create a new experiment.
--
-- /See:/ 'newAnalyticsManagementExperimentsInsert' smart constructor.
data AnalyticsManagementExperimentsInsert = AnalyticsManagementExperimentsInsert
  { -- | Account ID to create the experiment for.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Experiment,
    -- | View (Profile) ID to create the experiment for.
    profileId :: Core.Text,
    -- | Web property ID to create the experiment for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementExperimentsInsert' with the minimum fields required to make a request.
newAnalyticsManagementExperimentsInsert ::
  -- |  Account ID to create the experiment for. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Experiment ->
  -- |  View (Profile) ID to create the experiment for. See 'profileId'.
  Core.Text ->
  -- |  Web property ID to create the experiment for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementExperimentsInsert
newAnalyticsManagementExperimentsInsert accountId payload profileId webPropertyId =
  AnalyticsManagementExperimentsInsert
    { accountId = accountId,
      payload = payload,
      profileId = profileId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementExperimentsInsert
  where
  type
    Rs AnalyticsManagementExperimentsInsert =
      Experiment
  type
    Scopes AnalyticsManagementExperimentsInsert =
      '[ "https://www.googleapis.com/auth/analytics",
         "https://www.googleapis.com/auth/analytics.edit"
       ]
  requestClient
    AnalyticsManagementExperimentsInsert {..} =
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
                Core.Proxy
                  AnalyticsManagementExperimentsInsertResource
            )
            Core.mempty
