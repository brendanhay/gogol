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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SummarizeExecutors
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain summary of Executor Summary for a Spark Application
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.summarizeExecutors@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SummarizeExecutors
  ( -- * Resource
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutorsResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.summarizeExecutors@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutorsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "summarizeExecutors" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SummarizeSparkApplicationExecutorsResponse

-- | Obtain summary of Executor Summary for a Spark Application
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors = DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors
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

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors ::
  -- |  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors
newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors
  name =
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        parent = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors
  where
  type
    Rs
      DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors =
      SummarizeSparkApplicationExecutorsResponse
  type
    Scopes
      DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors {..} =
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
                  DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutorsResource
            )
            Core.mempty
