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
-- Module      : Gogol.BigQueryDataTransfer.Projects.Locations.UnenrollDataSources
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unenroll data sources in a user project. This allows users to remove transfer configurations for these data sources. They will no longer appear in the ListDataSources RPC and will also no longer appear in the <https://console.cloud.google.com/bigquery BigQuery UI>. Data transfers configurations of unenrolled data sources will not be scheduled.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.unenrollDataSources@.
module Gogol.BigQueryDataTransfer.Projects.Locations.UnenrollDataSources
  ( -- * Resource
    BigQueryDataTransferProjectsLocationsUnenrollDataSourcesResource,

    -- ** Constructing a Request
    BigQueryDataTransferProjectsLocationsUnenrollDataSources (..),
    newBigQueryDataTransferProjectsLocationsUnenrollDataSources,
  )
where

import Gogol.BigQueryDataTransfer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquerydatatransfer.projects.locations.unenrollDataSources@ method which the
-- 'BigQueryDataTransferProjectsLocationsUnenrollDataSources' request conforms to.
type BigQueryDataTransferProjectsLocationsUnenrollDataSourcesResource =
  "v1"
    Core.:> Core.CaptureMode "name" "unenrollDataSources" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UnenrollDataSourcesRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Unenroll data sources in a user project. This allows users to remove transfer configurations for these data sources. They will no longer appear in the ListDataSources RPC and will also no longer appear in the <https://console.cloud.google.com/bigquery BigQuery UI>. Data transfers configurations of unenrolled data sources will not be scheduled.
--
-- /See:/ 'newBigQueryDataTransferProjectsLocationsUnenrollDataSources' smart constructor.
data BigQueryDataTransferProjectsLocationsUnenrollDataSources = BigQueryDataTransferProjectsLocationsUnenrollDataSources
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the project resource in the form: @projects\/{project_id}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UnenrollDataSourcesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsLocationsUnenrollDataSources' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsLocationsUnenrollDataSources ::
  -- |  Required. The name of the project resource in the form: @projects\/{project_id}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UnenrollDataSourcesRequest ->
  BigQueryDataTransferProjectsLocationsUnenrollDataSources
newBigQueryDataTransferProjectsLocationsUnenrollDataSources
  name
  payload =
    BigQueryDataTransferProjectsLocationsUnenrollDataSources
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsLocationsUnenrollDataSources
  where
  type
    Rs BigQueryDataTransferProjectsLocationsUnenrollDataSources =
      Empty
  type
    Scopes
      BigQueryDataTransferProjectsLocationsUnenrollDataSources =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient
    BigQueryDataTransferProjectsLocationsUnenrollDataSources {..} =
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
                  BigQueryDataTransferProjectsLocationsUnenrollDataSourcesResource
            )
            Core.mempty
