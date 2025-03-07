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
-- Module      : Gogol.BigQuery.Datasets.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new empty dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.insert@.
module Gogol.BigQuery.Datasets.Insert
  ( -- * Resource
    BigQueryDatasetsInsertResource,

    -- ** Constructing a Request
    BigQueryDatasetsInsert (..),
    newBigQueryDatasetsInsert,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.datasets.insert@ method which the
-- 'BigQueryDatasetsInsert' request conforms to.
type BigQueryDatasetsInsertResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "accessPolicyVersion" Core.Int32
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Dataset
    Core.:> Core.Post '[Core.JSON] Dataset

-- | Creates a new empty dataset.
--
-- /See:/ 'newBigQueryDatasetsInsert' smart constructor.
data BigQueryDatasetsInsert = BigQueryDatasetsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | Optional. The version of the provided access policy schema. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. This version refers to the schema version of the access policy and not the version of access policy. This field\'s value can be equal or more than the access policy schema provided in the request. For example, * Requests with conditional access policy binding in datasets must specify version 3. * But dataset with no conditional role bindings in access policy may specify any valid value or leave the field unset. If unset or if 0 or 1 value is used for dataset with conditional bindings, request will be rejected. This field will be mapped to IAM Policy version (https:\/\/cloud.google.com\/iam\/docs\/policies#versions) and will be used to set policy in IAM.
    accessPolicyVersion :: (Core.Maybe Core.Int32),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Dataset,
    -- | Required. Project ID of the new dataset
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDatasetsInsert' with the minimum fields required to make a request.
newBigQueryDatasetsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Dataset ->
  -- |  Required. Project ID of the new dataset See 'projectId'.
  Core.Text ->
  BigQueryDatasetsInsert
newBigQueryDatasetsInsert payload projectId =
  BigQueryDatasetsInsert
    { xgafv = Core.Nothing,
      accessPolicyVersion = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryDatasetsInsert where
  type Rs BigQueryDatasetsInsert = Dataset
  type
    Scopes BigQueryDatasetsInsert =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient BigQueryDatasetsInsert {..} =
    go
      projectId
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
          (Core.Proxy :: Core.Proxy BigQueryDatasetsInsertResource)
          Core.mempty
