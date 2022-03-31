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
-- Module      : Gogol.Analytics.Management.Accounts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all accounts to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accounts.list@.
module Gogol.Analytics.Management.Accounts.List
  ( -- * Resource
    AnalyticsManagementAccountsListResource,

    -- ** Constructing a Request
    newAnalyticsManagementAccountsList,
    AnalyticsManagementAccountsList,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.accounts.list@ method which the
-- 'AnalyticsManagementAccountsList' request conforms to.
type AnalyticsManagementAccountsListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Accounts

-- | Lists all accounts to which the user has access.
--
-- /See:/ 'newAnalyticsManagementAccountsList' smart constructor.
data AnalyticsManagementAccountsList = AnalyticsManagementAccountsList
  { -- | The maximum number of accounts to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first account to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementAccountsList' with the minimum fields required to make a request.
newAnalyticsManagementAccountsList ::
  AnalyticsManagementAccountsList
newAnalyticsManagementAccountsList =
  AnalyticsManagementAccountsList
    { maxResults = Core.Nothing,
      startIndex = Core.Nothing
    }

instance
  Core.GoogleRequest
    AnalyticsManagementAccountsList
  where
  type Rs AnalyticsManagementAccountsList = Accounts
  type
    Scopes AnalyticsManagementAccountsList =
      '[ Analytics'FullControl,
         Analytics'Edit,
         Analytics'Readonly
       ]
  requestClient AnalyticsManagementAccountsList {..} =
    go
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementAccountsListResource
          )
          Core.mempty
