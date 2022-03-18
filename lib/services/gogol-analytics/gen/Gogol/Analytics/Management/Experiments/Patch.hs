{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Analytics.Management.Experiments.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an existing experiment. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.patch@.
module Gogol.Analytics.Management.Experiments.Patch
    (
    -- * Resource
      AnalyticsManagementExperimentsPatchResource

    -- ** Constructing a Request
    , newAnalyticsManagementExperimentsPatch
    , AnalyticsManagementExperimentsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.experiments.patch@ method which the
-- 'AnalyticsManagementExperimentsPatch' request conforms to.
type AnalyticsManagementExperimentsPatchResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "profiles" Core.:>
                     Core.Capture "profileId" Core.Text Core.:>
                       "experiments" Core.:>
                         Core.Capture "experimentId" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] Experiment Core.:>
                               Core.Patch '[Core.JSON] Experiment

-- | Update an existing experiment. This method supports patch semantics.
--
-- /See:/ 'newAnalyticsManagementExperimentsPatch' smart constructor.
data AnalyticsManagementExperimentsPatch = AnalyticsManagementExperimentsPatch
    {
      -- | Account ID of the experiment to update.
      accountId :: Core.Text
      -- | Experiment ID of the experiment to update.
    , experimentId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Experiment
      -- | View (Profile) ID of the experiment to update.
    , profileId :: Core.Text
      -- | Web property ID of the experiment to update.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementExperimentsPatch' with the minimum fields required to make a request.
newAnalyticsManagementExperimentsPatch 
    ::  Core.Text
       -- ^  Account ID of the experiment to update. See 'accountId'.
    -> Core.Text
       -- ^  Experiment ID of the experiment to update. See 'experimentId'.
    -> Experiment
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  View (Profile) ID of the experiment to update. See 'profileId'.
    -> Core.Text
       -- ^  Web property ID of the experiment to update. See 'webPropertyId'.
    -> AnalyticsManagementExperimentsPatch
newAnalyticsManagementExperimentsPatch accountId experimentId payload profileId webPropertyId =
  AnalyticsManagementExperimentsPatch
    { accountId = accountId
    , experimentId = experimentId
    , payload = payload
    , profileId = profileId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementExperimentsPatch
         where
        type Rs AnalyticsManagementExperimentsPatch =
             Experiment
        type Scopes AnalyticsManagementExperimentsPatch =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit"]
        requestClient AnalyticsManagementExperimentsPatch{..}
          = go accountId webPropertyId profileId experimentId
              (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementExperimentsPatchResource)
                      Core.mempty

