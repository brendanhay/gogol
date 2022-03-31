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
-- Module      : Gogol.Analytics.Management.Profiles.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing view (profile). This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.patch@.
module Gogol.Analytics.Management.Profiles.Patch
  ( -- * Resource
    AnalyticsManagementProfilesPatchResource,

    -- ** Constructing a Request
    newAnalyticsManagementProfilesPatch,
    AnalyticsManagementProfilesPatch,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.profiles.patch@ method which the
-- 'AnalyticsManagementProfilesPatch' request conforms to.
type AnalyticsManagementProfilesPatchResource =
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
    Core.:> Core.Patch '[Core.JSON] Profile

-- | Updates an existing view (profile). This method supports patch semantics.
--
-- /See:/ 'newAnalyticsManagementProfilesPatch' smart constructor.
data AnalyticsManagementProfilesPatch = AnalyticsManagementProfilesPatch
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

-- | Creates a value of 'AnalyticsManagementProfilesPatch' with the minimum fields required to make a request.
newAnalyticsManagementProfilesPatch ::
  -- |  Account ID to which the view (profile) belongs See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Profile ->
  -- |  ID of the view (profile) to be updated. See 'profileId'.
  Core.Text ->
  -- |  Web property ID to which the view (profile) belongs See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfilesPatch
newAnalyticsManagementProfilesPatch accountId payload profileId webPropertyId =
  AnalyticsManagementProfilesPatch
    { accountId = accountId,
      payload = payload,
      profileId = profileId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementProfilesPatch
  where
  type Rs AnalyticsManagementProfilesPatch = Profile
  type
    Scopes AnalyticsManagementProfilesPatch =
      '[Analytics'Edit]
  requestClient AnalyticsManagementProfilesPatch {..} =
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
              Core.Proxy AnalyticsManagementProfilesPatchResource
          )
          Core.mempty
