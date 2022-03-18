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
-- Module      : Gogol.Analytics.Management.Filters.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.update@.
module Gogol.Analytics.Management.Filters.Update
    (
    -- * Resource
      AnalyticsManagementFiltersUpdateResource

    -- ** Constructing a Request
    , newAnalyticsManagementFiltersUpdate
    , AnalyticsManagementFiltersUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.filters.update@ method which the
-- 'AnalyticsManagementFiltersUpdate' request conforms to.
type AnalyticsManagementFiltersUpdateResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "filters" Core.:>
                 Core.Capture "filterId" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] Filter Core.:>
                       Core.Put '[Core.JSON] Filter

-- | Updates an existing filter.
--
-- /See:/ 'newAnalyticsManagementFiltersUpdate' smart constructor.
data AnalyticsManagementFiltersUpdate = AnalyticsManagementFiltersUpdate
    {
      -- | Account ID to which the filter belongs.
      accountId :: Core.Text
      -- | ID of the filter to be updated.
    , filterId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Filter
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementFiltersUpdate' with the minimum fields required to make a request.
newAnalyticsManagementFiltersUpdate 
    ::  Core.Text
       -- ^  Account ID to which the filter belongs. See 'accountId'.
    -> Core.Text
       -- ^  ID of the filter to be updated. See 'filterId'.
    -> Filter
       -- ^  Multipart request metadata. See 'payload'.
    -> AnalyticsManagementFiltersUpdate
newAnalyticsManagementFiltersUpdate accountId filterId payload =
  AnalyticsManagementFiltersUpdate
    {accountId = accountId, filterId = filterId, payload = payload}

instance Core.GoogleRequest
           AnalyticsManagementFiltersUpdate
         where
        type Rs AnalyticsManagementFiltersUpdate = Filter
        type Scopes AnalyticsManagementFiltersUpdate =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient AnalyticsManagementFiltersUpdate{..}
          = go accountId filterId (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AnalyticsManagementFiltersUpdateResource)
                      Core.mempty

