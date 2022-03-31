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
-- Module      : Gogol.Analytics.Management.WebPropertyAdWordsLinks.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a web property-Google Ads link to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webPropertyAdWordsLinks.get@.
module Gogol.Analytics.Management.WebPropertyAdWordsLinks.Get
  ( -- * Resource
    AnalyticsManagementWebPropertyAdWordsLinksGetResource,

    -- ** Constructing a Request
    newAnalyticsManagementWebPropertyAdWordsLinksGet,
    AnalyticsManagementWebPropertyAdWordsLinksGet,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.webPropertyAdWordsLinks.get@ method which the
-- 'AnalyticsManagementWebPropertyAdWordsLinksGet' request conforms to.
type AnalyticsManagementWebPropertyAdWordsLinksGetResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "entityAdWordsLinks"
    Core.:> Core.Capture "webPropertyAdWordsLinkId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] EntityAdWordsLink

-- | Returns a web property-Google Ads link to which the user has access.
--
-- /See:/ 'newAnalyticsManagementWebPropertyAdWordsLinksGet' smart constructor.
data AnalyticsManagementWebPropertyAdWordsLinksGet = AnalyticsManagementWebPropertyAdWordsLinksGet
  { -- | ID of the account which the given web property belongs to.
    accountId :: Core.Text,
    -- | Web property-Google Ads link ID.
    webPropertyAdWordsLinkId :: Core.Text,
    -- | Web property ID to retrieve the Google Ads link for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebPropertyAdWordsLinksGet' with the minimum fields required to make a request.
newAnalyticsManagementWebPropertyAdWordsLinksGet ::
  -- |  ID of the account which the given web property belongs to. See 'accountId'.
  Core.Text ->
  -- |  Web property-Google Ads link ID. See 'webPropertyAdWordsLinkId'.
  Core.Text ->
  -- |  Web property ID to retrieve the Google Ads link for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementWebPropertyAdWordsLinksGet
newAnalyticsManagementWebPropertyAdWordsLinksGet accountId webPropertyAdWordsLinkId webPropertyId =
  AnalyticsManagementWebPropertyAdWordsLinksGet
    { accountId = accountId,
      webPropertyAdWordsLinkId = webPropertyAdWordsLinkId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementWebPropertyAdWordsLinksGet
  where
  type
    Rs AnalyticsManagementWebPropertyAdWordsLinksGet =
      EntityAdWordsLink
  type
    Scopes
      AnalyticsManagementWebPropertyAdWordsLinksGet =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient
    AnalyticsManagementWebPropertyAdWordsLinksGet {..} =
      go
        accountId
        webPropertyId
        webPropertyAdWordsLinkId
        (Core.Just Core.AltJSON)
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementWebPropertyAdWordsLinksGetResource
            )
            Core.mempty
