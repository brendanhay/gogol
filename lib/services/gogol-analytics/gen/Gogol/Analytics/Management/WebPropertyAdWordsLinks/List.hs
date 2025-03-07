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
-- Module      : Gogol.Analytics.Management.WebPropertyAdWordsLinks.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists webProperty-Google Ads links for a given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webPropertyAdWordsLinks.list@.
module Gogol.Analytics.Management.WebPropertyAdWordsLinks.List
  ( -- * Resource
    AnalyticsManagementWebPropertyAdWordsLinksListResource,

    -- ** Constructing a Request
    AnalyticsManagementWebPropertyAdWordsLinksList (..),
    newAnalyticsManagementWebPropertyAdWordsLinksList,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.webPropertyAdWordsLinks.list@ method which the
-- 'AnalyticsManagementWebPropertyAdWordsLinksList' request conforms to.
type AnalyticsManagementWebPropertyAdWordsLinksListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "entityAdWordsLinks"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] EntityAdWordsLinks

-- | Lists webProperty-Google Ads links for a given web property.
--
-- /See:/ 'newAnalyticsManagementWebPropertyAdWordsLinksList' smart constructor.
data AnalyticsManagementWebPropertyAdWordsLinksList = AnalyticsManagementWebPropertyAdWordsLinksList
  { -- | ID of the account which the given web property belongs to.
    accountId :: Core.Text,
    -- | The maximum number of webProperty-Google Ads links to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first webProperty-Google Ads link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Web property ID to retrieve the Google Ads links for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebPropertyAdWordsLinksList' with the minimum fields required to make a request.
newAnalyticsManagementWebPropertyAdWordsLinksList ::
  -- |  ID of the account which the given web property belongs to. See 'accountId'.
  Core.Text ->
  -- |  Web property ID to retrieve the Google Ads links for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementWebPropertyAdWordsLinksList
newAnalyticsManagementWebPropertyAdWordsLinksList
  accountId
  webPropertyId =
    AnalyticsManagementWebPropertyAdWordsLinksList
      { accountId =
          accountId,
        maxResults = Core.Nothing,
        startIndex = Core.Nothing,
        webPropertyId = webPropertyId
      }

instance
  Core.GoogleRequest
    AnalyticsManagementWebPropertyAdWordsLinksList
  where
  type
    Rs AnalyticsManagementWebPropertyAdWordsLinksList =
      EntityAdWordsLinks
  type
    Scopes AnalyticsManagementWebPropertyAdWordsLinksList =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementWebPropertyAdWordsLinksList {..} =
    go
      accountId
      webPropertyId
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementWebPropertyAdWordsLinksListResource
          )
          Core.mempty
