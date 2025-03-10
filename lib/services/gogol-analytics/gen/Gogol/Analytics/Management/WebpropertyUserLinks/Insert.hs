{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Analytics.Management.WebpropertyUserLinks.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new user to the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webpropertyUserLinks.insert@.
module Gogol.Analytics.Management.WebpropertyUserLinks.Insert
  ( -- * Resource
    AnalyticsManagementWebpropertyUserLinksInsertResource,

    -- ** Constructing a Request
    AnalyticsManagementWebpropertyUserLinksInsert (..),
    newAnalyticsManagementWebpropertyUserLinksInsert,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.webpropertyUserLinks.insert@ method which the
-- 'AnalyticsManagementWebpropertyUserLinksInsert' request conforms to.
type AnalyticsManagementWebpropertyUserLinksInsertResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "entityUserLinks"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EntityUserLink
    Core.:> Core.Post '[Core.JSON] EntityUserLink

-- | Adds a new user to the given web property.
--
-- /See:/ 'newAnalyticsManagementWebpropertyUserLinksInsert' smart constructor.
data AnalyticsManagementWebpropertyUserLinksInsert = AnalyticsManagementWebpropertyUserLinksInsert
  { -- | Account ID to create the user link for.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: EntityUserLink,
    -- | Web Property ID to create the user link for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebpropertyUserLinksInsert' with the minimum fields required to make a request.
newAnalyticsManagementWebpropertyUserLinksInsert ::
  -- |  Account ID to create the user link for. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EntityUserLink ->
  -- |  Web Property ID to create the user link for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementWebpropertyUserLinksInsert
newAnalyticsManagementWebpropertyUserLinksInsert
  accountId
  payload
  webPropertyId =
    AnalyticsManagementWebpropertyUserLinksInsert
      { accountId =
          accountId,
        payload = payload,
        webPropertyId = webPropertyId
      }

instance
  Core.GoogleRequest
    AnalyticsManagementWebpropertyUserLinksInsert
  where
  type
    Rs AnalyticsManagementWebpropertyUserLinksInsert =
      EntityUserLink
  type
    Scopes AnalyticsManagementWebpropertyUserLinksInsert =
      '[Analytics'Manage'Users]
  requestClient AnalyticsManagementWebpropertyUserLinksInsert {..} =
    go
      accountId
      webPropertyId
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementWebpropertyUserLinksInsertResource
          )
          Core.mempty
