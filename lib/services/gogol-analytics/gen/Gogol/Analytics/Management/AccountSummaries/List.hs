{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Analytics.Management.AccountSummaries.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists account summaries (lightweight tree comprised of accounts\/properties\/profiles) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accountSummaries.list@.
module Gogol.Analytics.Management.AccountSummaries.List
  ( -- * Resource
    AnalyticsManagementAccountSummariesListResource,

    -- ** Constructing a Request
    AnalyticsManagementAccountSummariesList (..),
    newAnalyticsManagementAccountSummariesList,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.accountSummaries.list@ method which the
-- 'AnalyticsManagementAccountSummariesList' request conforms to.
type AnalyticsManagementAccountSummariesListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accountSummaries"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AccountSummaries

-- | Lists account summaries (lightweight tree comprised of accounts\/properties\/profiles) to which the user has access.
--
-- /See:/ 'newAnalyticsManagementAccountSummariesList' smart constructor.
data AnalyticsManagementAccountSummariesList = AnalyticsManagementAccountSummariesList
  { -- | The maximum number of account summaries to include in this response, where the largest acceptable value is 1000.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementAccountSummariesList' with the minimum fields required to make a request.
newAnalyticsManagementAccountSummariesList ::
  AnalyticsManagementAccountSummariesList
newAnalyticsManagementAccountSummariesList =
  AnalyticsManagementAccountSummariesList
    { maxResults =
        Core.Nothing,
      startIndex = Core.Nothing
    }

instance Core.GoogleRequest AnalyticsManagementAccountSummariesList where
  type Rs AnalyticsManagementAccountSummariesList = AccountSummaries
  type
    Scopes AnalyticsManagementAccountSummariesList =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementAccountSummariesList {..} =
    go
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementAccountSummariesListResource
          )
          Core.mempty
