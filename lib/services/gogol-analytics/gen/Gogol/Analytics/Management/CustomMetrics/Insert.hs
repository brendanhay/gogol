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
-- Module      : Gogol.Analytics.Management.CustomMetrics.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new custom metric.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.insert@.
module Gogol.Analytics.Management.CustomMetrics.Insert
    (
    -- * Resource
      AnalyticsManagementCustomMetricsInsertResource

    -- ** Constructing a Request
    , newAnalyticsManagementCustomMetricsInsert
    , AnalyticsManagementCustomMetricsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.customMetrics.insert@ method which the
-- 'AnalyticsManagementCustomMetricsInsert' request conforms to.
type AnalyticsManagementCustomMetricsInsertResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "customMetrics" Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] CustomMetric Core.:>
                         Core.Post '[Core.JSON] CustomMetric

-- | Create a new custom metric.
--
-- /See:/ 'newAnalyticsManagementCustomMetricsInsert' smart constructor.
data AnalyticsManagementCustomMetricsInsert = AnalyticsManagementCustomMetricsInsert
    {
      -- | Account ID for the custom metric to create.
      accountId :: Core.Text
      -- | Multipart request metadata.
    , payload :: CustomMetric
      -- | Web property ID for the custom dimension to create.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomMetricsInsert' with the minimum fields required to make a request.
newAnalyticsManagementCustomMetricsInsert 
    ::  Core.Text
       -- ^  Account ID for the custom metric to create. See 'accountId'.
    -> CustomMetric
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Web property ID for the custom dimension to create. See 'webPropertyId'.
    -> AnalyticsManagementCustomMetricsInsert
newAnalyticsManagementCustomMetricsInsert accountId payload webPropertyId =
  AnalyticsManagementCustomMetricsInsert
    {accountId = accountId, payload = payload, webPropertyId = webPropertyId}

instance Core.GoogleRequest
           AnalyticsManagementCustomMetricsInsert
         where
        type Rs AnalyticsManagementCustomMetricsInsert =
             CustomMetric
        type Scopes AnalyticsManagementCustomMetricsInsert =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementCustomMetricsInsert{..}
          = go accountId webPropertyId (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementCustomMetricsInsertResource)
                      Core.mempty

