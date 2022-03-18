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
-- Module      : Gogol.Analytics.Management.Profiles.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.update@.
module Gogol.Analytics.Management.Profiles.Update
  ( -- * Resource
    AnalyticsManagementProfilesUpdateResource,

    -- ** Constructing a Request
    newAnalyticsManagementProfilesUpdate,
    AnalyticsManagementProfilesUpdate,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.profiles.update@ method which the
-- 'AnalyticsManagementProfilesUpdate' request conforms to.
type AnalyticsManagementProfilesUpdateResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "profiles"
    Core.:> Core.Capture "profileId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Profile
    Core.:> Core.Put '[Core.JSON] Profile

-- | Updates an existing view (profile).
--
-- /See:/ 'newAnalyticsManagementProfilesUpdate' smart constructor.
data AnalyticsManagementProfilesUpdate = AnalyticsManagementProfilesUpdate
  { -- | Account ID to which the view (profile) belongs
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Profile,
    -- | ID of the view (profile) to be updated.
    profileId :: Core.Text,
    -- | Web property ID to which the view (profile) belongs
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfilesUpdate' with the minimum fields required to make a request.
newAnalyticsManagementProfilesUpdate ::
  -- |  Account ID to which the view (profile) belongs See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Profile ->
  -- |  ID of the view (profile) to be updated. See 'profileId'.
  Core.Text ->
  -- |  Web property ID to which the view (profile) belongs See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfilesUpdate
newAnalyticsManagementProfilesUpdate accountId payload profileId webPropertyId =
  AnalyticsManagementProfilesUpdate
    { accountId = accountId,
      payload = payload,
      profileId = profileId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementProfilesUpdate
  where
  type Rs AnalyticsManagementProfilesUpdate = Profile
  type
    Scopes AnalyticsManagementProfilesUpdate =
      '["https://www.googleapis.com/auth/analytics.edit"]
  requestClient AnalyticsManagementProfilesUpdate {..} =
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
              Core.Proxy AnalyticsManagementProfilesUpdateResource
          )
          Core.mempty
