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
-- Module      : Gogol.Analytics.Management.Experiments.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.delete@.
module Gogol.Analytics.Management.Experiments.Delete
    (
    -- * Resource
      AnalyticsManagementExperimentsDeleteResource

    -- ** Constructing a Request
    , newAnalyticsManagementExperimentsDelete
    , AnalyticsManagementExperimentsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.experiments.delete@ method which the
-- 'AnalyticsManagementExperimentsDelete' request conforms to.
type AnalyticsManagementExperimentsDeleteResource =
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
                             Core.Delete '[Core.JSON] ()

-- | Delete an experiment.
--
-- /See:/ 'newAnalyticsManagementExperimentsDelete' smart constructor.
data AnalyticsManagementExperimentsDelete = AnalyticsManagementExperimentsDelete
    {
      -- | Account ID to which the experiment belongs
      accountId :: Core.Text
      -- | ID of the experiment to delete
    , experimentId :: Core.Text
      -- | View (Profile) ID to which the experiment belongs
    , profileId :: Core.Text
      -- | Web property ID to which the experiment belongs
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementExperimentsDelete' with the minimum fields required to make a request.
newAnalyticsManagementExperimentsDelete 
    ::  Core.Text
       -- ^  Account ID to which the experiment belongs See 'accountId'.
    -> Core.Text
       -- ^  ID of the experiment to delete See 'experimentId'.
    -> Core.Text
       -- ^  View (Profile) ID to which the experiment belongs See 'profileId'.
    -> Core.Text
       -- ^  Web property ID to which the experiment belongs See 'webPropertyId'.
    -> AnalyticsManagementExperimentsDelete
newAnalyticsManagementExperimentsDelete accountId experimentId profileId webPropertyId =
  AnalyticsManagementExperimentsDelete
    { accountId = accountId
    , experimentId = experimentId
    , profileId = profileId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementExperimentsDelete
         where
        type Rs AnalyticsManagementExperimentsDelete = ()
        type Scopes AnalyticsManagementExperimentsDelete =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementExperimentsDelete{..}
          = go accountId webPropertyId profileId experimentId
              (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementExperimentsDeleteResource)
                      Core.mempty

