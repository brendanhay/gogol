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
-- Module      : Gogol.Analytics.Management.CustomMetrics.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing custom metric.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.update@.
module Gogol.Analytics.Management.CustomMetrics.Update
    (
    -- * Resource
      AnalyticsManagementCustomMetricsUpdateResource

    -- ** Constructing a Request
    , newAnalyticsManagementCustomMetricsUpdate
    , AnalyticsManagementCustomMetricsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.customMetrics.update@ method which the
-- 'AnalyticsManagementCustomMetricsUpdate' request conforms to.
type AnalyticsManagementCustomMetricsUpdateResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "customMetrics" Core.:>
                     Core.Capture "customMetricId" Core.Text Core.:>
                       Core.QueryParam "ignoreCustomDataSourceLinks"
                         Core.Bool
                         Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] CustomMetric Core.:>
                             Core.Put '[Core.JSON] CustomMetric

-- | Updates an existing custom metric.
--
-- /See:/ 'newAnalyticsManagementCustomMetricsUpdate' smart constructor.
data AnalyticsManagementCustomMetricsUpdate = AnalyticsManagementCustomMetricsUpdate
    {
      -- | Account ID for the custom metric to update.
      accountId :: Core.Text
      -- | Custom metric ID for the custom metric to update.
    , customMetricId :: Core.Text
      -- | Force the update and ignore any warnings related to the custom metric being linked to a custom data source \/ data set.
    , ignoreCustomDataSourceLinks :: Core.Bool
      -- | Multipart request metadata.
    , payload :: CustomMetric
      -- | Web property ID for the custom metric to update.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomMetricsUpdate' with the minimum fields required to make a request.
newAnalyticsManagementCustomMetricsUpdate 
    ::  Core.Text
       -- ^  Account ID for the custom metric to update. See 'accountId'.
    -> Core.Text
       -- ^  Custom metric ID for the custom metric to update. See 'customMetricId'.
    -> CustomMetric
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Web property ID for the custom metric to update. See 'webPropertyId'.
    -> AnalyticsManagementCustomMetricsUpdate
newAnalyticsManagementCustomMetricsUpdate accountId customMetricId payload webPropertyId =
  AnalyticsManagementCustomMetricsUpdate
    { accountId = accountId
    , customMetricId = customMetricId
    , ignoreCustomDataSourceLinks = Core.False
    , payload = payload
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementCustomMetricsUpdate
         where
        type Rs AnalyticsManagementCustomMetricsUpdate =
             CustomMetric
        type Scopes AnalyticsManagementCustomMetricsUpdate =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementCustomMetricsUpdate{..}
          = go accountId webPropertyId customMetricId
              (Core.Just ignoreCustomDataSourceLinks)
              (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementCustomMetricsUpdateResource)
                      Core.mempty

