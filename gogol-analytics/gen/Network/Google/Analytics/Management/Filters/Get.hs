{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Analytics.Management.Filters.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns filters to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.get@.
module Network.Google.Analytics.Management.Filters.Get
  ( -- * Resource
    AnalyticsManagementFiltersGetResource,

    -- ** Constructing a Request
    newAnalyticsManagementFiltersGet,
    AnalyticsManagementFiltersGet,
  )
where

import Network.Google.Analytics.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @analytics.management.filters.get@ method which the
-- 'AnalyticsManagementFiltersGet' request conforms to.
type AnalyticsManagementFiltersGetResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "filters"
    Core.:> Core.Capture "filterId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Filter

-- | Returns filters to which the user has access.
--
-- /See:/ 'newAnalyticsManagementFiltersGet' smart constructor.
data AnalyticsManagementFiltersGet = AnalyticsManagementFiltersGet
  { -- | Account ID to retrieve filters for.
    accountId :: Core.Text,
    -- | Filter ID to retrieve filters for.
    filterId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementFiltersGet' with the minimum fields required to make a request.
newAnalyticsManagementFiltersGet ::
  -- |  Account ID to retrieve filters for. See 'accountId'.
  Core.Text ->
  -- |  Filter ID to retrieve filters for. See 'filterId'.
  Core.Text ->
  AnalyticsManagementFiltersGet
newAnalyticsManagementFiltersGet accountId filterId =
  AnalyticsManagementFiltersGet {accountId = accountId, filterId = filterId}

instance
  Core.GoogleRequest
    AnalyticsManagementFiltersGet
  where
  type Rs AnalyticsManagementFiltersGet = Filter
  type
    Scopes AnalyticsManagementFiltersGet =
      '[ "https://www.googleapis.com/auth/analytics.edit",
         "https://www.googleapis.com/auth/analytics.readonly"
       ]
  requestClient AnalyticsManagementFiltersGet {..} =
    go
      accountId
      filterId
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementFiltersGetResource
          )
          Core.mempty
