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
-- Module      : Network.Google.CloudAsset.ExportAssets
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports assets with time and resource types to a given Cloud Storage location\/BigQuery table. For Cloud Storage location destinations, the output format is newline-delimited JSON. Each line represents a google.cloud.asset.v1p7beta1.Asset in the JSON format; for BigQuery table destinations, the output table stores the fields in asset proto as columns. This API implements the google.longrunning.Operation API , which allows you to keep track of the export. We recommend intervals of at least 2 seconds with exponential retry to poll the export operation result. For regular-size resource parent, the export operation usually finishes within 5 minutes.
--
-- /See:/ <https://cloud.google.com/asset-inventory/docs/quickstart Cloud Asset API Reference> for @cloudasset.exportAssets@.
module Network.Google.CloudAsset.ExportAssets
  ( -- * Resource
    CloudAssetExportAssetsResource,

    -- ** Constructing a Request
    newCloudAssetExportAssets,
    CloudAssetExportAssets,
  )
where

import Network.Google.CloudAsset.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudasset.exportAssets@ method which the
-- 'CloudAssetExportAssets' request conforms to.
type CloudAssetExportAssetsResource =
  "v1p7beta1"
    Core.:> Core.CaptureMode "parent" "exportAssets" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudAssetV1p7beta1ExportAssetsRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Exports assets with time and resource types to a given Cloud Storage location\/BigQuery table. For Cloud Storage location destinations, the output format is newline-delimited JSON. Each line represents a google.cloud.asset.v1p7beta1.Asset in the JSON format; for BigQuery table destinations, the output table stores the fields in asset proto as columns. This API implements the google.longrunning.Operation API , which allows you to keep track of the export. We recommend intervals of at least 2 seconds with exponential retry to poll the export operation result. For regular-size resource parent, the export operation usually finishes within 5 minutes.
--
-- /See:/ 'newCloudAssetExportAssets' smart constructor.
data CloudAssetExportAssets = CloudAssetExportAssets
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The relative name of the root asset. This can only be an organization number (such as \"organizations\/123\"), a project ID (such as \"projects\/my-project-id\"), or a project number (such as \"projects\/12345\"), or a folder number (such as \"folders\/123\").
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudAssetV1p7beta1ExportAssetsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudAssetExportAssets' with the minimum fields required to make a request.
newCloudAssetExportAssets ::
  -- |  Required. The relative name of the root asset. This can only be an organization number (such as \"organizations\/123\"), a project ID (such as \"projects\/my-project-id\"), or a project number (such as \"projects\/12345\"), or a folder number (such as \"folders\/123\"). See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudAssetV1p7beta1ExportAssetsRequest ->
  CloudAssetExportAssets
newCloudAssetExportAssets parent payload =
  CloudAssetExportAssets
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudAssetExportAssets where
  type Rs CloudAssetExportAssets = Operation
  type
    Scopes CloudAssetExportAssets =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudAssetExportAssets {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudAssetService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudAssetExportAssetsResource
          )
          Core.mempty
