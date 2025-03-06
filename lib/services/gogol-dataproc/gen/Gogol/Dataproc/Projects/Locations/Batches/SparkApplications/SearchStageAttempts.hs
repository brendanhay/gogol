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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchStageAttempts
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain data corresponding to a spark stage attempts for a Spark Application.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.searchStageAttempts@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchStageAttempts
  ( -- * Resource
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttemptsResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.searchStageAttempts@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttemptsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "searchStageAttempts" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "stageId" Core.Int64
    Core.:> Core.QueryParam "summaryMetricsMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchSparkApplicationStageAttemptsResponse

-- | Obtain data corresponding to a spark stage attempts for a Spark Application.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts = DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\"
    name :: Core.Text,
    -- | Optional. Maximum number of stage attempts (paging based on stage/attempt/id) to return in each response. The service may return fewer than this. The default page size is 10; the maximum page size is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token received from a previous SearchSparkApplicationStageAttempts call. Provide this token to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Parent (Batch) resource reference.
    parent :: (Core.Maybe Core.Text),
    -- | Required. Stage ID for which attempts are to be fetched
    stageId :: (Core.Maybe Core.Int64),
    -- | Optional. The list of summary metrics fields to include. Empty list will default to skip all summary metrics fields. Example, if the response should include TaskQuantileMetrics, the request should have task/quantile/metrics in summary/metrics/mask field
    summaryMetricsMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts ::
  -- |  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts
newDataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts
  name =
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        parent = Core.Nothing,
        stageId = Core.Nothing,
        summaryMetricsMask =
          Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts
  where
  type
    Rs
      DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts =
      SearchSparkApplicationStageAttemptsResponse
  type
    Scopes
      DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts {..} =
      go
        name
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        parent
        stageId
        summaryMetricsMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttemptsResource
            )
            Core.mempty
