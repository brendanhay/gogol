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
-- Module      : Gogol.CloudSearch.Indexing.Datasources.Items.Upload
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an upload session for uploading item content. For items smaller than 100 KB, it\'s easier to embed the content inline within an index request. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.upload@.
module Gogol.CloudSearch.Indexing.Datasources.Items.Upload
  ( -- * Resource
    CloudSearchIndexingDatasourcesItemsUploadResource,

    -- ** Constructing a Request
    CloudSearchIndexingDatasourcesItemsUpload (..),
    newCloudSearchIndexingDatasourcesItemsUpload,
  )
where

import Gogol.CloudSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudsearch.indexing.datasources.items.upload@ method which the
-- 'CloudSearchIndexingDatasourcesItemsUpload' request conforms to.
type CloudSearchIndexingDatasourcesItemsUploadResource =
  "v1"
    Core.:> "indexing"
    Core.:> Core.CaptureMode "name" "upload" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StartUploadItemRequest
    Core.:> Core.Post '[Core.JSON] UploadItemRef

-- | Creates an upload session for uploading item content. For items smaller than 100 KB, it\'s easier to embed the content inline within an index request. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ 'newCloudSearchIndexingDatasourcesItemsUpload' smart constructor.
data CloudSearchIndexingDatasourcesItemsUpload = CloudSearchIndexingDatasourcesItemsUpload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the Item to start a resumable upload. Format: datasources\/{source/id}\/items\/{item/id}. The maximum length is 1536 bytes.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: StartUploadItemRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchIndexingDatasourcesItemsUpload' with the minimum fields required to make a request.
newCloudSearchIndexingDatasourcesItemsUpload ::
  -- |  The name of the Item to start a resumable upload. Format: datasources\/{source/id}\/items\/{item/id}. The maximum length is 1536 bytes. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StartUploadItemRequest ->
  CloudSearchIndexingDatasourcesItemsUpload
newCloudSearchIndexingDatasourcesItemsUpload name payload =
  CloudSearchIndexingDatasourcesItemsUpload
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchIndexingDatasourcesItemsUpload
  where
  type Rs CloudSearchIndexingDatasourcesItemsUpload = UploadItemRef
  type
    Scopes CloudSearchIndexingDatasourcesItemsUpload =
      '[CloudSearch'FullControl, CloudSearch'Indexing]
  requestClient CloudSearchIndexingDatasourcesItemsUpload {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudSearchService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudSearchIndexingDatasourcesItemsUploadResource
          )
          Core.mempty
