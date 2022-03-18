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
-- Module      : Gogol.Analytics.Management.UnsampledReports.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists unsampled reports to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.unsampledReports.list@.
module Gogol.Analytics.Management.UnsampledReports.List
    (
    -- * Resource
      AnalyticsManagementUnsampledReportsListResource

    -- ** Constructing a Request
    , newAnalyticsManagementUnsampledReportsList
    , AnalyticsManagementUnsampledReportsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.unsampledReports.list@ method which the
-- 'AnalyticsManagementUnsampledReportsList' request conforms to.
type AnalyticsManagementUnsampledReportsListResource
     =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "profiles" Core.:>
                     Core.Capture "profileId" Core.Text Core.:>
                       "unsampledReports" Core.:>
                         Core.QueryParam "max-results" Core.Int32 Core.:>
                           Core.QueryParam "start-index" Core.Int32 Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] UnsampledReports

-- | Lists unsampled reports to which the user has access.
--
-- /See:/ 'newAnalyticsManagementUnsampledReportsList' smart constructor.
data AnalyticsManagementUnsampledReportsList = AnalyticsManagementUnsampledReportsList
    {
      -- | Account ID to retrieve unsampled reports for. Must be a specific account ID, ~all is not supported.
      accountId :: Core.Text
      -- | The maximum number of unsampled reports to include in this response.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | View (Profile) ID to retrieve unsampled reports for. Must be a specific view (profile) ID, ~all is not supported.
    , profileId :: Core.Text
      -- | An index of the first unsampled report to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    , startIndex :: (Core.Maybe Core.Int32)
      -- | Web property ID to retrieve unsampled reports for. Must be a specific web property ID, ~all is not supported.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementUnsampledReportsList' with the minimum fields required to make a request.
newAnalyticsManagementUnsampledReportsList 
    ::  Core.Text
       -- ^  Account ID to retrieve unsampled reports for. Must be a specific account ID, ~all is not supported. See 'accountId'.
    -> Core.Text
       -- ^  View (Profile) ID to retrieve unsampled reports for. Must be a specific view (profile) ID, ~all is not supported. See 'profileId'.
    -> Core.Text
       -- ^  Web property ID to retrieve unsampled reports for. Must be a specific web property ID, ~all is not supported. See 'webPropertyId'.
    -> AnalyticsManagementUnsampledReportsList
newAnalyticsManagementUnsampledReportsList accountId profileId webPropertyId =
  AnalyticsManagementUnsampledReportsList
    { accountId = accountId
    , maxResults = Core.Nothing
    , profileId = profileId
    , startIndex = Core.Nothing
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementUnsampledReportsList
         where
        type Rs AnalyticsManagementUnsampledReportsList =
             UnsampledReports
        type Scopes AnalyticsManagementUnsampledReportsList =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient
          AnalyticsManagementUnsampledReportsList{..}
          = go accountId webPropertyId profileId maxResults
              startIndex
              (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementUnsampledReportsListResource)
                      Core.mempty

