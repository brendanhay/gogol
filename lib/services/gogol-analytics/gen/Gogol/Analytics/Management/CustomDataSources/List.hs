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
-- Module      : Gogol.Analytics.Management.CustomDataSources.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List custom data sources to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customDataSources.list@.
module Gogol.Analytics.Management.CustomDataSources.List
  ( -- * Resource
    AnalyticsManagementCustomDataSourcesListResource,

    -- ** Constructing a Request
    newAnalyticsManagementCustomDataSourcesList,
    AnalyticsManagementCustomDataSourcesList,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.customDataSources.list@ method which the
-- 'AnalyticsManagementCustomDataSourcesList' request conforms to.
type AnalyticsManagementCustomDataSourcesListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "customDataSources"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomDataSources

-- | List custom data sources to which the user has access.
--
-- /See:/ 'newAnalyticsManagementCustomDataSourcesList' smart constructor.
data AnalyticsManagementCustomDataSourcesList = AnalyticsManagementCustomDataSourcesList
  { -- | Account Id for the custom data sources to retrieve.
    accountId :: Core.Text,
    -- | The maximum number of custom data sources to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | A 1-based index of the first custom data source to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Web property Id for the custom data sources to retrieve.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomDataSourcesList' with the minimum fields required to make a request.
newAnalyticsManagementCustomDataSourcesList ::
  -- |  Account Id for the custom data sources to retrieve. See 'accountId'.
  Core.Text ->
  -- |  Web property Id for the custom data sources to retrieve. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementCustomDataSourcesList
newAnalyticsManagementCustomDataSourcesList accountId webPropertyId =
  AnalyticsManagementCustomDataSourcesList
    { accountId = accountId,
      maxResults = Core.Nothing,
      startIndex = Core.Nothing,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementCustomDataSourcesList
  where
  type
    Rs AnalyticsManagementCustomDataSourcesList =
      CustomDataSources
  type
    Scopes AnalyticsManagementCustomDataSourcesList =
      '[ Analytics'FullControl,
         Analytics'Edit,
         Analytics'Readonly
       ]
  requestClient
    AnalyticsManagementCustomDataSourcesList {..} =
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
                  AnalyticsManagementCustomDataSourcesListResource
            )
            Core.mempty
