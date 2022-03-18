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
-- Module      : Gogol.Analytics.Management.AccountUserLinks.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new user to the given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accountUserLinks.insert@.
module Gogol.Analytics.Management.AccountUserLinks.Insert
  ( -- * Resource
    AnalyticsManagementAccountUserLinksInsertResource,

    -- ** Constructing a Request
    newAnalyticsManagementAccountUserLinksInsert,
    AnalyticsManagementAccountUserLinksInsert,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.accountUserLinks.insert@ method which the
-- 'AnalyticsManagementAccountUserLinksInsert' request conforms to.
type AnalyticsManagementAccountUserLinksInsertResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "entityUserLinks"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EntityUserLink
    Core.:> Core.Post '[Core.JSON] EntityUserLink

-- | Adds a new user to the given account.
--
-- /See:/ 'newAnalyticsManagementAccountUserLinksInsert' smart constructor.
data AnalyticsManagementAccountUserLinksInsert = AnalyticsManagementAccountUserLinksInsert
  { -- | Account ID to create the user link for.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: EntityUserLink
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementAccountUserLinksInsert' with the minimum fields required to make a request.
newAnalyticsManagementAccountUserLinksInsert ::
  -- |  Account ID to create the user link for. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EntityUserLink ->
  AnalyticsManagementAccountUserLinksInsert
newAnalyticsManagementAccountUserLinksInsert accountId payload =
  AnalyticsManagementAccountUserLinksInsert
    { accountId = accountId,
      payload = payload
    }

instance
  Core.GoogleRequest
    AnalyticsManagementAccountUserLinksInsert
  where
  type
    Rs AnalyticsManagementAccountUserLinksInsert =
      EntityUserLink
  type
    Scopes AnalyticsManagementAccountUserLinksInsert =
      '["https://www.googleapis.com/auth/analytics.manage.users"]
  requestClient
    AnalyticsManagementAccountUserLinksInsert {..} =
      go
        accountId
        (Core.Just Core.AltJSON)
        payload
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementAccountUserLinksInsertResource
            )
            Core.mempty
