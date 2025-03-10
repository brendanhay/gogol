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
-- Module      : Gogol.Analytics.Management.Uploads.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List uploads to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.uploads.get@.
module Gogol.Analytics.Management.Uploads.Get
  ( -- * Resource
    AnalyticsManagementUploadsGetResource,

    -- ** Constructing a Request
    AnalyticsManagementUploadsGet (..),
    newAnalyticsManagementUploadsGet,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.uploads.get@ method which the
-- 'AnalyticsManagementUploadsGet' request conforms to.
type AnalyticsManagementUploadsGetResource =
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
    Core.:> Core.Capture "uploadId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Upload

-- | List uploads to which the user has access.
--
-- /See:/ 'newAnalyticsManagementUploadsGet' smart constructor.
data AnalyticsManagementUploadsGet = AnalyticsManagementUploadsGet
  { -- | Account Id for the upload to retrieve.
    accountId :: Core.Text,
    -- | Custom data source Id for upload to retrieve.
    customDataSourceId :: Core.Text,
    -- | Upload Id to retrieve.
    uploadId :: Core.Text,
    -- | Web property Id for the upload to retrieve.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementUploadsGet' with the minimum fields required to make a request.
newAnalyticsManagementUploadsGet ::
  -- |  Account Id for the upload to retrieve. See 'accountId'.
  Core.Text ->
  -- |  Custom data source Id for upload to retrieve. See 'customDataSourceId'.
  Core.Text ->
  -- |  Upload Id to retrieve. See 'uploadId'.
  Core.Text ->
  -- |  Web property Id for the upload to retrieve. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementUploadsGet
newAnalyticsManagementUploadsGet
  accountId
  customDataSourceId
  uploadId
  webPropertyId =
    AnalyticsManagementUploadsGet
      { accountId = accountId,
        customDataSourceId = customDataSourceId,
        uploadId = uploadId,
        webPropertyId = webPropertyId
      }

instance Core.GoogleRequest AnalyticsManagementUploadsGet where
  type Rs AnalyticsManagementUploadsGet = Upload
  type
    Scopes AnalyticsManagementUploadsGet =
      '[Analytics'FullControl, Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementUploadsGet {..} =
    go
      accountId
      webPropertyId
      customDataSourceId
      uploadId
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AnalyticsManagementUploadsGetResource)
          Core.mempty
