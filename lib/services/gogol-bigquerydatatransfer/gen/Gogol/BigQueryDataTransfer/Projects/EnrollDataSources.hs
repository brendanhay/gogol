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
-- Module      : Gogol.BigQueryDataTransfer.Projects.EnrollDataSources
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enroll data sources in a user project. This allows users to create transfer configurations for these data sources. They will also appear in the ListDataSources RPC and as such, will appear in the <https://console.cloud.google.com/bigquery BigQuery UI>, and the documents can be found in the public guide for <https://cloud.google.com/bigquery/bigquery-web-ui BigQuery Web UI> and <https://cloud.google.com/bigquery/docs/working-with-transfers Data Transfer Service>.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.enrollDataSources@.
module Gogol.BigQueryDataTransfer.Projects.EnrollDataSources
  ( -- * Resource
    BigQueryDataTransferProjectsEnrollDataSourcesResource,

    -- ** Constructing a Request
    BigQueryDataTransferProjectsEnrollDataSources (..),
    newBigQueryDataTransferProjectsEnrollDataSources,
  )
where

import Gogol.BigQueryDataTransfer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquerydatatransfer.projects.enrollDataSources@ method which the
-- 'BigQueryDataTransferProjectsEnrollDataSources' request conforms to.
type BigQueryDataTransferProjectsEnrollDataSourcesResource =
  "v1"
    Core.:> Core.CaptureMode "name" "enrollDataSources" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EnrollDataSourcesRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Enroll data sources in a user project. This allows users to create transfer configurations for these data sources. They will also appear in the ListDataSources RPC and as such, will appear in the <https://console.cloud.google.com/bigquery BigQuery UI>, and the documents can be found in the public guide for <https://cloud.google.com/bigquery/bigquery-web-ui BigQuery Web UI> and <https://cloud.google.com/bigquery/docs/working-with-transfers Data Transfer Service>.
--
-- /See:/ 'newBigQueryDataTransferProjectsEnrollDataSources' smart constructor.
data BigQueryDataTransferProjectsEnrollDataSources = BigQueryDataTransferProjectsEnrollDataSources
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the project resource in the form: @projects\/{project_id}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: EnrollDataSourcesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsEnrollDataSources' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsEnrollDataSources ::
  -- |  The name of the project resource in the form: @projects\/{project_id}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EnrollDataSourcesRequest ->
  BigQueryDataTransferProjectsEnrollDataSources
newBigQueryDataTransferProjectsEnrollDataSources name payload =
  BigQueryDataTransferProjectsEnrollDataSources
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
    BigQueryDataTransferProjectsEnrollDataSources
  where
  type
    Rs BigQueryDataTransferProjectsEnrollDataSources =
      Empty
  type
    Scopes
      BigQueryDataTransferProjectsEnrollDataSources =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient
    BigQueryDataTransferProjectsEnrollDataSources {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        bigQueryDataTransferService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigQueryDataTransferProjectsEnrollDataSourcesResource
            )
            Core.mempty
