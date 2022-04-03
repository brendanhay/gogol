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
-- Module      : Gogol.Analytics.Management.WebpropertyUserLinks.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a user from the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webpropertyUserLinks.delete@.
module Gogol.Analytics.Management.WebpropertyUserLinks.Delete
  ( -- * Resource
    AnalyticsManagementWebpropertyUserLinksDeleteResource,

    -- ** Constructing a Request
    AnalyticsManagementWebpropertyUserLinksDelete (..),
    newAnalyticsManagementWebpropertyUserLinksDelete,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.webpropertyUserLinks.delete@ method which the
-- 'AnalyticsManagementWebpropertyUserLinksDelete' request conforms to.
type AnalyticsManagementWebpropertyUserLinksDeleteResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "entityUserLinks"
    Core.:> Core.Capture "linkId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Removes a user from the given web property.
--
-- /See:/ 'newAnalyticsManagementWebpropertyUserLinksDelete' smart constructor.
data AnalyticsManagementWebpropertyUserLinksDelete = AnalyticsManagementWebpropertyUserLinksDelete
  { -- | Account ID to delete the user link for.
    accountId :: Core.Text,
    -- | Link ID to delete the user link for.
    linkId :: Core.Text,
    -- | Web Property ID to delete the user link for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebpropertyUserLinksDelete' with the minimum fields required to make a request.
newAnalyticsManagementWebpropertyUserLinksDelete ::
  -- |  Account ID to delete the user link for. See 'accountId'.
  Core.Text ->
  -- |  Link ID to delete the user link for. See 'linkId'.
  Core.Text ->
  -- |  Web Property ID to delete the user link for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementWebpropertyUserLinksDelete
newAnalyticsManagementWebpropertyUserLinksDelete accountId linkId webPropertyId =
  AnalyticsManagementWebpropertyUserLinksDelete
    { accountId = accountId,
      linkId = linkId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementWebpropertyUserLinksDelete
  where
  type
    Rs AnalyticsManagementWebpropertyUserLinksDelete =
      ()
  type
    Scopes
      AnalyticsManagementWebpropertyUserLinksDelete =
      '[Analytics'Manage'Users]
  requestClient
    AnalyticsManagementWebpropertyUserLinksDelete {..} =
      go
        accountId
        webPropertyId
        linkId
        (Core.Just Core.AltJSON)
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementWebpropertyUserLinksDeleteResource
            )
            Core.mempty
