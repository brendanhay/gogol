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
-- Module      : Gogol.BigQuery.Datasets.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource. This method supports RFC5789 patch semantics.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.patch@.
module Gogol.BigQuery.Datasets.Patch
  ( -- * Resource
    BigQueryDatasetsPatchResource,

    -- ** Constructing a Request
    BigQueryDatasetsPatch (..),
    newBigQueryDatasetsPatch,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.datasets.patch@ method which the
-- 'BigQueryDatasetsPatch' request conforms to.
type BigQueryDatasetsPatchResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "accessPolicyVersion" Core.Int32
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Dataset
    Core.:> Core.Patch '[Core.JSON] Dataset

-- | Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource. This method supports RFC5789 patch semantics.
--
-- /See:/ 'newBigQueryDatasetsPatch' smart constructor.
data BigQueryDatasetsPatch = BigQueryDatasetsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | Optional. The version of the provided access policy schema. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. This version refers to the schema version of the access policy and not the version of access policy. This field\'s value can be equal or more than the access policy schema provided in the request. For example, * Operations updating conditional access policy binding in datasets must specify version 3. Some of the operations are : - Adding a new access policy entry with condition. - Removing an access policy entry with condition. - Updating an access policy entry with condition. * But dataset with no conditional role bindings in access policy may specify any valid value or leave the field unset. If unset or if 0 or 1 value is used for dataset with conditional bindings, request will be rejected. This field will be mapped to IAM Policy version (https:\/\/cloud.google.com\/iam\/docs\/policies#versions) and will be used to set policy in IAM.
    accessPolicyVersion :: (Core.Maybe Core.Int32),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset ID of the dataset being updated
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Dataset,
    -- | Required. Project ID of the dataset being updated
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDatasetsPatch' with the minimum fields required to make a request.
newBigQueryDatasetsPatch ::
  -- |  Required. Dataset ID of the dataset being updated See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Dataset ->
  -- |  Required. Project ID of the dataset being updated See 'projectId'.
  Core.Text ->
  BigQueryDatasetsPatch
newBigQueryDatasetsPatch datasetId payload projectId =
  BigQueryDatasetsPatch
    { xgafv = Core.Nothing,
      accessPolicyVersion = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      datasetId = datasetId,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryDatasetsPatch where
  type Rs BigQueryDatasetsPatch = Dataset
  type
    Scopes BigQueryDatasetsPatch =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient BigQueryDatasetsPatch {..} =
    go
      projectId
      datasetId
      xgafv
      accessPolicyVersion
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryDatasetsPatchResource)
          Core.mempty
