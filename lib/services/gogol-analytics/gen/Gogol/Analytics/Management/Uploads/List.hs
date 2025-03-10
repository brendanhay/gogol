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
-- Module      : Gogol.Analytics.Management.Uploads.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List uploads to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.uploads.list@.
module Gogol.Analytics.Management.Uploads.List
  ( -- * Resource
    AnalyticsManagementUploadsListResource,

    -- ** Constructing a Request
    AnalyticsManagementUploadsList (..),
    newAnalyticsManagementUploadsList,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.uploads.list@ method which the
-- 'AnalyticsManagementUploadsList' request conforms to.
type AnalyticsManagementUploadsListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "customDataSources"
    Core.:> Core.Capture "customDataSourceId" Core.Text
    Core.:> "uploads"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Uploads

-- | List uploads to which the user has access.
--
-- /See:/ 'newAnalyticsManagementUploadsList' smart constructor.
data AnalyticsManagementUploadsList = AnalyticsManagementUploadsList
  { -- | Account Id for the uploads to retrieve.
    accountId :: Core.Text,
    -- | Custom data source Id for uploads to retrieve.
    customDataSourceId :: Core.Text,
    -- | The maximum number of uploads to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | A 1-based index of the first upload to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Web property Id for the uploads to retrieve.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementUploadsList' with the minimum fields required to make a request.
newAnalyticsManagementUploadsList ::
  -- |  Account Id for the uploads to retrieve. See 'accountId'.
  Core.Text ->
  -- |  Custom data source Id for uploads to retrieve. See 'customDataSourceId'.
  Core.Text ->
  -- |  Web property Id for the uploads to retrieve. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementUploadsList
newAnalyticsManagementUploadsList
  accountId
  customDataSourceId
  webPropertyId =
    AnalyticsManagementUploadsList
      { accountId = accountId,
        customDataSourceId = customDataSourceId,
        maxResults = Core.Nothing,
        startIndex = Core.Nothing,
        webPropertyId = webPropertyId
      }

instance Core.GoogleRequest AnalyticsManagementUploadsList where
  type Rs AnalyticsManagementUploadsList = Uploads
  type
    Scopes AnalyticsManagementUploadsList =
      '[Analytics'FullControl, Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementUploadsList {..} =
    go
      accountId
      webPropertyId
      customDataSourceId
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AnalyticsManagementUploadsListResource)
          Core.mempty
