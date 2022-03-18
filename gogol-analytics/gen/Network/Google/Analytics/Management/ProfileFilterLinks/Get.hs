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
-- Module      : Network.Google.Analytics.Management.ProfileFilterLinks.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a single profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.get@.
module Network.Google.Analytics.Management.ProfileFilterLinks.Get
  ( -- * Resource
    AnalyticsManagementProfileFilterLinksGetResource,

    -- ** Constructing a Request
    newAnalyticsManagementProfileFilterLinksGet,
    AnalyticsManagementProfileFilterLinksGet,
  )
where

import Network.Google.Analytics.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @analytics.management.profileFilterLinks.get@ method which the
-- 'AnalyticsManagementProfileFilterLinksGet' request conforms to.
type AnalyticsManagementProfileFilterLinksGetResource =
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
    Core.:> Core.Capture "linkId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ProfileFilterLink

-- | Returns a single profile filter link.
--
-- /See:/ 'newAnalyticsManagementProfileFilterLinksGet' smart constructor.
data AnalyticsManagementProfileFilterLinksGet = AnalyticsManagementProfileFilterLinksGet
  { -- | Account ID to retrieve profile filter link for.
    accountId :: Core.Text,
    -- | ID of the profile filter link.
    linkId :: Core.Text,
    -- | Profile ID to retrieve filter link for.
    profileId :: Core.Text,
    -- | Web property Id to retrieve profile filter link for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfileFilterLinksGet' with the minimum fields required to make a request.
newAnalyticsManagementProfileFilterLinksGet ::
  -- |  Account ID to retrieve profile filter link for. See 'accountId'.
  Core.Text ->
  -- |  ID of the profile filter link. See 'linkId'.
  Core.Text ->
  -- |  Profile ID to retrieve filter link for. See 'profileId'.
  Core.Text ->
  -- |  Web property Id to retrieve profile filter link for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfileFilterLinksGet
newAnalyticsManagementProfileFilterLinksGet accountId linkId profileId webPropertyId =
  AnalyticsManagementProfileFilterLinksGet
    { accountId = accountId,
      linkId = linkId,
      profileId = profileId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementProfileFilterLinksGet
  where
  type
    Rs AnalyticsManagementProfileFilterLinksGet =
      ProfileFilterLink
  type
    Scopes AnalyticsManagementProfileFilterLinksGet =
      '[ "https://www.googleapis.com/auth/analytics.edit",
         "https://www.googleapis.com/auth/analytics.readonly"
       ]
  requestClient
    AnalyticsManagementProfileFilterLinksGet {..} =
      go
        accountId
        webPropertyId
        profileId
        linkId
        (Core.Just Core.AltJSON)
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementProfileFilterLinksGetResource
            )
            Core.mempty
