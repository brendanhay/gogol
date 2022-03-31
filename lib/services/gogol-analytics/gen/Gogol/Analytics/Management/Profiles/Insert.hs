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
-- Module      : Gogol.Analytics.Management.Profiles.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.insert@.
module Gogol.Analytics.Management.Profiles.Insert
  ( -- * Resource
    AnalyticsManagementProfilesInsertResource,

    -- ** Constructing a Request
    newAnalyticsManagementProfilesInsert,
    AnalyticsManagementProfilesInsert,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.profiles.insert@ method which the
-- 'AnalyticsManagementProfilesInsert' request conforms to.
type AnalyticsManagementProfilesInsertResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "profiles"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Profile
    Core.:> Core.Post '[Core.JSON] Profile

-- | Create a new view (profile).
--
-- /See:/ 'newAnalyticsManagementProfilesInsert' smart constructor.
data AnalyticsManagementProfilesInsert = AnalyticsManagementProfilesInsert
  { -- | Account ID to create the view (profile) for.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Profile,
    -- | Web property ID to create the view (profile) for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfilesInsert' with the minimum fields required to make a request.
newAnalyticsManagementProfilesInsert ::
  -- |  Account ID to create the view (profile) for. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Profile ->
  -- |  Web property ID to create the view (profile) for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfilesInsert
newAnalyticsManagementProfilesInsert accountId payload webPropertyId =
  AnalyticsManagementProfilesInsert
    { accountId = accountId,
      payload = payload,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementProfilesInsert
  where
  type Rs AnalyticsManagementProfilesInsert = Profile
  type
    Scopes AnalyticsManagementProfilesInsert =
      '[Analytics'Edit]
  requestClient AnalyticsManagementProfilesInsert {..} =
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
              Core.Proxy AnalyticsManagementProfilesInsertResource
          )
          Core.mempty
