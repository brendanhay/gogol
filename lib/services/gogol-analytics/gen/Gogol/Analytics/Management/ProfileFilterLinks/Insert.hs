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
-- Module      : Gogol.Analytics.Management.ProfileFilterLinks.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.insert@.
module Gogol.Analytics.Management.ProfileFilterLinks.Insert
  ( -- * Resource
    AnalyticsManagementProfileFilterLinksInsertResource,

    -- ** Constructing a Request
    AnalyticsManagementProfileFilterLinksInsert (..),
    newAnalyticsManagementProfileFilterLinksInsert,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.profileFilterLinks.insert@ method which the
-- 'AnalyticsManagementProfileFilterLinksInsert' request conforms to.
type AnalyticsManagementProfileFilterLinksInsertResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "profiles"
    Core.:> Core.Capture "profileId" Core.Text
    Core.:> "profileFilterLinks"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ProfileFilterLink
    Core.:> Core.Post '[Core.JSON] ProfileFilterLink

-- | Create a new profile filter link.
--
-- /See:/ 'newAnalyticsManagementProfileFilterLinksInsert' smart constructor.
data AnalyticsManagementProfileFilterLinksInsert = AnalyticsManagementProfileFilterLinksInsert
  { -- | Account ID to create profile filter link for.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: ProfileFilterLink,
    -- | Profile ID to create filter link for.
    profileId :: Core.Text,
    -- | Web property Id to create profile filter link for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfileFilterLinksInsert' with the minimum fields required to make a request.
newAnalyticsManagementProfileFilterLinksInsert ::
  -- |  Account ID to create profile filter link for. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ProfileFilterLink ->
  -- |  Profile ID to create filter link for. See 'profileId'.
  Core.Text ->
  -- |  Web property Id to create profile filter link for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfileFilterLinksInsert
newAnalyticsManagementProfileFilterLinksInsert
  accountId
  payload
  profileId
  webPropertyId =
    AnalyticsManagementProfileFilterLinksInsert
      { accountId =
          accountId,
        payload = payload,
        profileId = profileId,
        webPropertyId = webPropertyId
      }

instance
  Core.GoogleRequest
    AnalyticsManagementProfileFilterLinksInsert
  where
  type
    Rs AnalyticsManagementProfileFilterLinksInsert =
      ProfileFilterLink
  type
    Scopes AnalyticsManagementProfileFilterLinksInsert =
      '[Analytics'Edit]
  requestClient AnalyticsManagementProfileFilterLinksInsert {..} =
    go
      accountId
      webPropertyId
      profileId
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementProfileFilterLinksInsertResource
          )
          Core.mempty
