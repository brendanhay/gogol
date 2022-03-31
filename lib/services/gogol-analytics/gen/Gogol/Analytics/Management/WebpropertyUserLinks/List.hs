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
-- Module      : Gogol.Analytics.Management.WebpropertyUserLinks.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists webProperty-user links for a given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webpropertyUserLinks.list@.
module Gogol.Analytics.Management.WebpropertyUserLinks.List
  ( -- * Resource
    AnalyticsManagementWebpropertyUserLinksListResource,

    -- ** Constructing a Request
    newAnalyticsManagementWebpropertyUserLinksList,
    AnalyticsManagementWebpropertyUserLinksList,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.webpropertyUserLinks.list@ method which the
-- 'AnalyticsManagementWebpropertyUserLinksList' request conforms to.
type AnalyticsManagementWebpropertyUserLinksListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "entityUserLinks"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] EntityUserLinks

-- | Lists webProperty-user links for a given web property.
--
-- /See:/ 'newAnalyticsManagementWebpropertyUserLinksList' smart constructor.
data AnalyticsManagementWebpropertyUserLinksList = AnalyticsManagementWebpropertyUserLinksList
  { -- | Account ID which the given web property belongs to.
    accountId :: Core.Text,
    -- | The maximum number of webProperty-user Links to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first webProperty-user link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Web Property ID for the webProperty-user links to retrieve. Can either be a specific web property ID or \'~all\', which refers to all the web properties that user has access to.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementWebpropertyUserLinksList' with the minimum fields required to make a request.
newAnalyticsManagementWebpropertyUserLinksList ::
  -- |  Account ID which the given web property belongs to. See 'accountId'.
  Core.Text ->
  -- |  Web Property ID for the webProperty-user links to retrieve. Can either be a specific web property ID or \'~all\', which refers to all the web properties that user has access to. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementWebpropertyUserLinksList
newAnalyticsManagementWebpropertyUserLinksList accountId webPropertyId =
  AnalyticsManagementWebpropertyUserLinksList
    { accountId = accountId,
      maxResults = Core.Nothing,
      startIndex = Core.Nothing,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementWebpropertyUserLinksList
  where
  type
    Rs AnalyticsManagementWebpropertyUserLinksList =
      EntityUserLinks
  type
    Scopes
      AnalyticsManagementWebpropertyUserLinksList =
      '[ Analytics'Manage'Users,
         Analytics'Manage'Users'Readonly
       ]
  requestClient
    AnalyticsManagementWebpropertyUserLinksList {..} =
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
                Core.Proxy
                  AnalyticsManagementWebpropertyUserLinksListResource
            )
            Core.mempty
