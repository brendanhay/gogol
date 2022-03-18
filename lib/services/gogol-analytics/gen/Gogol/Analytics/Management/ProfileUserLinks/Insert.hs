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
-- Module      : Gogol.Analytics.Management.ProfileUserLinks.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new user to the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileUserLinks.insert@.
module Gogol.Analytics.Management.ProfileUserLinks.Insert
  ( -- * Resource
    AnalyticsManagementProfileUserLinksInsertResource,

    -- ** Constructing a Request
    newAnalyticsManagementProfileUserLinksInsert,
    AnalyticsManagementProfileUserLinksInsert,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.profileUserLinks.insert@ method which the
-- 'AnalyticsManagementProfileUserLinksInsert' request conforms to.
type AnalyticsManagementProfileUserLinksInsertResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "profiles"
    Core.:> Core.Capture "profileId" Core.Text
    Core.:> "entityUserLinks"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EntityUserLink
    Core.:> Core.Post '[Core.JSON] EntityUserLink

-- | Adds a new user to the given view (profile).
--
-- /See:/ 'newAnalyticsManagementProfileUserLinksInsert' smart constructor.
data AnalyticsManagementProfileUserLinksInsert = AnalyticsManagementProfileUserLinksInsert
  { -- | Account ID to create the user link for.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: EntityUserLink,
    -- | View (Profile) ID to create the user link for.
    profileId :: Core.Text,
    -- | Web Property ID to create the user link for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfileUserLinksInsert' with the minimum fields required to make a request.
newAnalyticsManagementProfileUserLinksInsert ::
  -- |  Account ID to create the user link for. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EntityUserLink ->
  -- |  View (Profile) ID to create the user link for. See 'profileId'.
  Core.Text ->
  -- |  Web Property ID to create the user link for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfileUserLinksInsert
newAnalyticsManagementProfileUserLinksInsert accountId payload profileId webPropertyId =
  AnalyticsManagementProfileUserLinksInsert
    { accountId = accountId,
      payload = payload,
      profileId = profileId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementProfileUserLinksInsert
  where
  type
    Rs AnalyticsManagementProfileUserLinksInsert =
      EntityUserLink
  type
    Scopes AnalyticsManagementProfileUserLinksInsert =
      '["https://www.googleapis.com/auth/analytics.manage.users"]
  requestClient
    AnalyticsManagementProfileUserLinksInsert {..} =
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
                Core.Proxy
                  AnalyticsManagementProfileUserLinksInsertResource
            )
            Core.mempty
