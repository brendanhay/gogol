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
-- Module      : Gogol.Analytics.Management.ProfileUserLinks.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists profile-user links for a given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileUserLinks.list@.
module Gogol.Analytics.Management.ProfileUserLinks.List
  ( -- * Resource
    AnalyticsManagementProfileUserLinksListResource,

    -- ** Constructing a Request
    AnalyticsManagementProfileUserLinksList (..),
    newAnalyticsManagementProfileUserLinksList,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.profileUserLinks.list@ method which the
-- 'AnalyticsManagementProfileUserLinksList' request conforms to.
type AnalyticsManagementProfileUserLinksListResource =
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
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] EntityUserLinks

-- | Lists profile-user links for a given view (profile).
--
-- /See:/ 'newAnalyticsManagementProfileUserLinksList' smart constructor.
data AnalyticsManagementProfileUserLinksList = AnalyticsManagementProfileUserLinksList
  { -- | Account ID which the given view (profile) belongs to.
    accountId :: Core.Text,
    -- | The maximum number of profile-user links to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | View (Profile) ID to retrieve the profile-user links for. Can either be a specific profile ID or \'~all\', which refers to all the profiles that user has access to.
    profileId :: Core.Text,
    -- | An index of the first profile-user link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Web Property ID which the given view (profile) belongs to. Can either be a specific web property ID or \'~all\', which refers to all the web properties that user has access to.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfileUserLinksList' with the minimum fields required to make a request.
newAnalyticsManagementProfileUserLinksList ::
  -- |  Account ID which the given view (profile) belongs to. See 'accountId'.
  Core.Text ->
  -- |  View (Profile) ID to retrieve the profile-user links for. Can either be a specific profile ID or \'~all\', which refers to all the profiles that user has access to. See 'profileId'.
  Core.Text ->
  -- |  Web Property ID which the given view (profile) belongs to. Can either be a specific web property ID or \'~all\', which refers to all the web properties that user has access to. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfileUserLinksList
newAnalyticsManagementProfileUserLinksList
  accountId
  profileId
  webPropertyId =
    AnalyticsManagementProfileUserLinksList
      { accountId = accountId,
        maxResults = Core.Nothing,
        profileId = profileId,
        startIndex = Core.Nothing,
        webPropertyId = webPropertyId
      }

instance Core.GoogleRequest AnalyticsManagementProfileUserLinksList where
  type Rs AnalyticsManagementProfileUserLinksList = EntityUserLinks
  type
    Scopes AnalyticsManagementProfileUserLinksList =
      '[Analytics'Manage'Users, Analytics'Manage'Users'Readonly]
  requestClient AnalyticsManagementProfileUserLinksList {..} =
    go
      accountId
      webPropertyId
      profileId
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementProfileUserLinksListResource
          )
          Core.mempty
