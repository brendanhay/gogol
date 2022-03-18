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
-- Module      : Gogol.Analytics.Management.Filters.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.delete@.
module Gogol.Analytics.Management.Filters.Delete
    (
    -- * Resource
      AnalyticsManagementFiltersDeleteResource

    -- ** Constructing a Request
    , newAnalyticsManagementFiltersDelete
    , AnalyticsManagementFiltersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.filters.delete@ method which the
-- 'AnalyticsManagementFiltersDelete' request conforms to.
type AnalyticsManagementFiltersDeleteResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "filters" Core.:>
                 Core.Capture "filterId" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Filter

-- | Delete a filter.
--
-- /See:/ 'newAnalyticsManagementFiltersDelete' smart constructor.
data AnalyticsManagementFiltersDelete = AnalyticsManagementFiltersDelete
    {
      -- | Account ID to delete the filter for.
      accountId :: Core.Text
      -- | ID of the filter to be deleted.
    , filterId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementFiltersDelete' with the minimum fields required to make a request.
newAnalyticsManagementFiltersDelete 
    ::  Core.Text
       -- ^  Account ID to delete the filter for. See 'accountId'.
    -> Core.Text
       -- ^  ID of the filter to be deleted. See 'filterId'.
    -> AnalyticsManagementFiltersDelete
newAnalyticsManagementFiltersDelete accountId filterId =
  AnalyticsManagementFiltersDelete {accountId = accountId, filterId = filterId}

instance Core.GoogleRequest
           AnalyticsManagementFiltersDelete
         where
        type Rs AnalyticsManagementFiltersDelete = Filter
        type Scopes AnalyticsManagementFiltersDelete =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient AnalyticsManagementFiltersDelete{..}
          = go accountId filterId (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AnalyticsManagementFiltersDeleteResource)
                      Core.mempty

