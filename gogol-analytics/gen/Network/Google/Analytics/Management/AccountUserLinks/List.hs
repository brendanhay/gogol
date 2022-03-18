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
-- Module      : Network.Google.Analytics.Management.AccountUserLinks.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists account-user links for a given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accountUserLinks.list@.
module Network.Google.Analytics.Management.AccountUserLinks.List
  ( -- * Resource
    AnalyticsManagementAccountUserLinksListResource,

    -- ** Constructing a Request
    newAnalyticsManagementAccountUserLinksList,
    AnalyticsManagementAccountUserLinksList,
  )
where

import Network.Google.Analytics.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @analytics.management.accountUserLinks.list@ method which the
-- 'AnalyticsManagementAccountUserLinksList' request conforms to.
type AnalyticsManagementAccountUserLinksListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "entityUserLinks"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] EntityUserLinks

-- | Lists account-user links for a given account.
--
-- /See:/ 'newAnalyticsManagementAccountUserLinksList' smart constructor.
data AnalyticsManagementAccountUserLinksList = AnalyticsManagementAccountUserLinksList
  { -- | Account ID to retrieve the user links for.
    accountId :: Core.Text,
    -- | The maximum number of account-user links to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first account-user link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementAccountUserLinksList' with the minimum fields required to make a request.
newAnalyticsManagementAccountUserLinksList ::
  -- |  Account ID to retrieve the user links for. See 'accountId'.
  Core.Text ->
  AnalyticsManagementAccountUserLinksList
newAnalyticsManagementAccountUserLinksList accountId =
  AnalyticsManagementAccountUserLinksList
    { accountId = accountId,
      maxResults = Core.Nothing,
      startIndex = Core.Nothing
    }

instance
  Core.GoogleRequest
    AnalyticsManagementAccountUserLinksList
  where
  type
    Rs AnalyticsManagementAccountUserLinksList =
      EntityUserLinks
  type
    Scopes AnalyticsManagementAccountUserLinksList =
      '[ "https://www.googleapis.com/auth/analytics.manage.users",
         "https://www.googleapis.com/auth/analytics.manage.users.readonly"
       ]
  requestClient
    AnalyticsManagementAccountUserLinksList {..} =
      go
        accountId
        maxResults
        startIndex
        (Core.Just Core.AltJSON)
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementAccountUserLinksListResource
            )
            Core.mempty
