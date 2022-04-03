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
-- Module      : Gogol.Analytics.Management.WebpropertyUserLinks.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates permissions for an existing user on the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webpropertyUserLinks.update@.
module Gogol.Analytics.Management.WebpropertyUserLinks.Update
  ( -- * Resource
    AnalyticsManagementWebpropertyUserLinksUpdateResource,

    -- ** Constructing a Request
    AnalyticsManagementWebpropertyUserLinksUpdate (..),
    newAnalyticsManagementWebpropertyUserLinksUpdate,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.webpropertyUserLinks.update@ method which the
-- 'AnalyticsManagementWebpropertyUserLinksUpdate' request conforms to.
type AnalyticsManagementWebpropertyUserLinksUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] EntityUserLink
    Core.:> Core.Put '[Core.JSON] EntityUserLink

-- | Updates permissions for an existing user on the given web property.
--
-- /See:/ 'newAnalyticsManagementWebpropertyUserLinksUpdate' smart constructor.
data AnalyticsManagementWebpropertyUserLinksUpdate = AnalyticsManagementWebpropertyUserLinksUpdate
  { -- | Account ID to update the account-user link for.
    accountId :: Core.Text,
    -- | Link ID to update the account-user link for.
    linkId :: Core.Text,
    -- | Multipart request metadata.
    payload :: EntityUserLink,
    -- | Web property ID to update the account-user link for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebpropertyUserLinksUpdate' with the minimum fields required to make a request.
newAnalyticsManagementWebpropertyUserLinksUpdate ::
  -- |  Account ID to update the account-user link for. See 'accountId'.
  Core.Text ->
  -- |  Link ID to update the account-user link for. See 'linkId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EntityUserLink ->
  -- |  Web property ID to update the account-user link for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementWebpropertyUserLinksUpdate
newAnalyticsManagementWebpropertyUserLinksUpdate accountId linkId payload webPropertyId =
  AnalyticsManagementWebpropertyUserLinksUpdate
    { accountId = accountId,
      linkId = linkId,
      payload = payload,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementWebpropertyUserLinksUpdate
  where
  type
    Rs AnalyticsManagementWebpropertyUserLinksUpdate =
      EntityUserLink
  type
    Scopes
      AnalyticsManagementWebpropertyUserLinksUpdate =
      '[Analytics'Manage'Users]
  requestClient
    AnalyticsManagementWebpropertyUserLinksUpdate {..} =
      go
        accountId
        webPropertyId
        linkId
        (Core.Just Core.AltJSON)
        payload
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementWebpropertyUserLinksUpdateResource
            )
            Core.mempty
