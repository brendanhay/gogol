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
-- Module      : Gogol.Analytics.Management.Goals.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists goals to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.goals.list@.
module Gogol.Analytics.Management.Goals.List
    (
    -- * Resource
      AnalyticsManagementGoalsListResource

    -- ** Constructing a Request
    , newAnalyticsManagementGoalsList
    , AnalyticsManagementGoalsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.goals.list@ method which the
-- 'AnalyticsManagementGoalsList' request conforms to.
type AnalyticsManagementGoalsListResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "profiles" Core.:>
                     Core.Capture "profileId" Core.Text Core.:>
                       "goals" Core.:>
                         Core.QueryParam "max-results" Core.Int32 Core.:>
                           Core.QueryParam "start-index" Core.Int32 Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] Goals

-- | Lists goals to which the user has access.
--
-- /See:/ 'newAnalyticsManagementGoalsList' smart constructor.
data AnalyticsManagementGoalsList = AnalyticsManagementGoalsList
    {
      -- | Account ID to retrieve goals for. Can either be a specific account ID or \'~all\', which refers to all the accounts that user has access to.
      accountId :: Core.Text
      -- | The maximum number of goals to include in this response.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | View (Profile) ID to retrieve goals for. Can either be a specific view (profile) ID or \'~all\', which refers to all the views (profiles) that user has access to.
    , profileId :: Core.Text
      -- | An index of the first goal to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    , startIndex :: (Core.Maybe Core.Int32)
      -- | Web property ID to retrieve goals for. Can either be a specific web property ID or \'~all\', which refers to all the web properties that user has access to.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementGoalsList' with the minimum fields required to make a request.
newAnalyticsManagementGoalsList 
    ::  Core.Text
       -- ^  Account ID to retrieve goals for. Can either be a specific account ID or \'~all\', which refers to all the accounts that user has access to. See 'accountId'.
    -> Core.Text
       -- ^  View (Profile) ID to retrieve goals for. Can either be a specific view (profile) ID or \'~all\', which refers to all the views (profiles) that user has access to. See 'profileId'.
    -> Core.Text
       -- ^  Web property ID to retrieve goals for. Can either be a specific web property ID or \'~all\', which refers to all the web properties that user has access to. See 'webPropertyId'.
    -> AnalyticsManagementGoalsList
newAnalyticsManagementGoalsList accountId profileId webPropertyId =
  AnalyticsManagementGoalsList
    { accountId = accountId
    , maxResults = Core.Nothing
    , profileId = profileId
    , startIndex = Core.Nothing
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementGoalsList
         where
        type Rs AnalyticsManagementGoalsList = Goals
        type Scopes AnalyticsManagementGoalsList =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient AnalyticsManagementGoalsList{..}
          = go accountId webPropertyId profileId maxResults
              startIndex
              (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AnalyticsManagementGoalsListResource)
                      Core.mempty

