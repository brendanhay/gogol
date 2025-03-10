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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SummarizeJobs
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain summary of Jobs for a Spark Application
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.summarizeJobs@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SummarizeJobs
  ( -- * Resource
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobsResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.summarizeJobs@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "summarizeJobs" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SummarizeSparkApplicationJobsResponse

-- | Obtain summary of Jobs for a Spark Application
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs = DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\"
    name :: Core.Text,
    -- | Required. Parent (Batch) resource reference.
    parent :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs ::
  -- |  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs
newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs
  name =
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        parent = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs
  where
  type
    Rs
      DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs =
      SummarizeSparkApplicationJobsResponse
  type
    Scopes
      DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs {..} =
      go
        name
        xgafv
        accessToken
        callback
        parent
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobsResource
            )
            Core.mempty
