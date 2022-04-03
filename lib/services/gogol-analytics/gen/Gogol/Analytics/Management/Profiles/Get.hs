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
-- Module      : Gogol.Analytics.Management.Profiles.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a view (profile) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.get@.
module Gogol.Analytics.Management.Profiles.Get
  ( -- * Resource
    AnalyticsManagementProfilesGetResource,

    -- ** Constructing a Request
    AnalyticsManagementProfilesGet (..),
    newAnalyticsManagementProfilesGet,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.profiles.get@ method which the
-- 'AnalyticsManagementProfilesGet' request conforms to.
type AnalyticsManagementProfilesGetResource =
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
    Core.:> Core.Get '[Core.JSON] Profile

-- | Gets a view (profile) to which the user has access.
--
-- /See:/ 'newAnalyticsManagementProfilesGet' smart constructor.
data AnalyticsManagementProfilesGet = AnalyticsManagementProfilesGet
  { -- | Account ID to retrieve the view (profile) for.
    accountId :: Core.Text,
    -- | View (Profile) ID to retrieve the view (profile) for.
    profileId :: Core.Text,
    -- | Web property ID to retrieve the view (profile) for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfilesGet' with the minimum fields required to make a request.
newAnalyticsManagementProfilesGet ::
  -- |  Account ID to retrieve the view (profile) for. See 'accountId'.
  Core.Text ->
  -- |  View (Profile) ID to retrieve the view (profile) for. See 'profileId'.
  Core.Text ->
  -- |  Web property ID to retrieve the view (profile) for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfilesGet
newAnalyticsManagementProfilesGet accountId profileId webPropertyId =
  AnalyticsManagementProfilesGet
    { accountId = accountId,
      profileId = profileId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementProfilesGet
  where
  type Rs AnalyticsManagementProfilesGet = Profile
  type
    Scopes AnalyticsManagementProfilesGet =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementProfilesGet {..} =
    go
      accountId
      webPropertyId
      profileId
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementProfilesGetResource
          )
          Core.mempty
