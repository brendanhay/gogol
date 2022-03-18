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
-- Module      : Gogol.Analytics.Metadata.Columns.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all columns for a report type
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.metadata.columns.list@.
module Gogol.Analytics.Metadata.Columns.List
    (
    -- * Resource
      AnalyticsMetadataColumnsListResource

    -- ** Constructing a Request
    , newAnalyticsMetadataColumnsList
    , AnalyticsMetadataColumnsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.metadata.columns.list@ method which the
-- 'AnalyticsMetadataColumnsList' request conforms to.
type AnalyticsMetadataColumnsListResource =
     "analytics" Core.:>
       "v3" Core.:>
         "metadata" Core.:>
           Core.Capture "reportType" Core.Text Core.:>
             "columns" Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.Get '[Core.JSON] Columns

-- | Lists all columns for a report type
--
-- /See:/ 'newAnalyticsMetadataColumnsList' smart constructor.
newtype AnalyticsMetadataColumnsList = AnalyticsMetadataColumnsList
    {
      -- | Report type. Allowed Values: \'ga\'. Where \'ga\' corresponds to the Core Reporting API
      reportType :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsMetadataColumnsList' with the minimum fields required to make a request.
newAnalyticsMetadataColumnsList 
    ::  Core.Text
       -- ^  Report type. Allowed Values: \'ga\'. Where \'ga\' corresponds to the Core Reporting API See 'reportType'.
    -> AnalyticsMetadataColumnsList
newAnalyticsMetadataColumnsList reportType =
  AnalyticsMetadataColumnsList {reportType = reportType}

instance Core.GoogleRequest
           AnalyticsMetadataColumnsList
         where
        type Rs AnalyticsMetadataColumnsList = Columns
        type Scopes AnalyticsMetadataColumnsList =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient AnalyticsMetadataColumnsList{..}
          = go reportType (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AnalyticsMetadataColumnsListResource)
                      Core.mempty

