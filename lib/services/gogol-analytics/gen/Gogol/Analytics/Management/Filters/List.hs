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
-- Module      : Gogol.Analytics.Management.Filters.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all filters for an account
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.list@.
module Gogol.Analytics.Management.Filters.List
    (
    -- * Resource
      AnalyticsManagementFiltersListResource

    -- ** Constructing a Request
    , newAnalyticsManagementFiltersList
    , AnalyticsManagementFiltersList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.filters.list@ method which the
-- 'AnalyticsManagementFiltersList' request conforms to.
type AnalyticsManagementFiltersListResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "filters" Core.:>
                 Core.QueryParam "max-results" Core.Int32 Core.:>
                   Core.QueryParam "start-index" Core.Int32 Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Filters

-- | Lists all filters for an account
--
-- /See:/ 'newAnalyticsManagementFiltersList' smart constructor.
data AnalyticsManagementFiltersList = AnalyticsManagementFiltersList
    {
      -- | Account ID to retrieve filters for.
      accountId :: Core.Text
      -- | The maximum number of filters to include in this response.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    , startIndex :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementFiltersList' with the minimum fields required to make a request.
newAnalyticsManagementFiltersList 
    ::  Core.Text
       -- ^  Account ID to retrieve filters for. See 'accountId'.
    -> AnalyticsManagementFiltersList
newAnalyticsManagementFiltersList accountId =
  AnalyticsManagementFiltersList
    { accountId = accountId
    , maxResults = Core.Nothing
    , startIndex = Core.Nothing
    }

instance Core.GoogleRequest
           AnalyticsManagementFiltersList
         where
        type Rs AnalyticsManagementFiltersList = Filters
        type Scopes AnalyticsManagementFiltersList =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient AnalyticsManagementFiltersList{..}
          = go accountId maxResults startIndex
              (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AnalyticsManagementFiltersListResource)
                      Core.mempty

