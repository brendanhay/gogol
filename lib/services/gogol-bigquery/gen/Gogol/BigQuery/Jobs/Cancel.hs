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
-- Module      : Gogol.BigQuery.Jobs.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests that a job be cancelled. This call will return immediately, and the client will need to poll for the job status to see if the cancel completed successfully. Cancelled jobs may still incur costs.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.cancel@.
module Gogol.BigQuery.Jobs.Cancel
  ( -- * Resource
    BigQueryJobsCancelResource,

    -- ** Constructing a Request
    BigQueryJobsCancel (..),
    newBigQueryJobsCancel,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.jobs.cancel@ method which the
-- 'BigQueryJobsCancel' request conforms to.
type BigQueryJobsCancelResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "cancel"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] JobCancelResponse

-- | Requests that a job be cancelled. This call will return immediately, and the client will need to poll for the job status to see if the cancel completed successfully. Cancelled jobs may still incur costs.
--
-- /See:/ 'newBigQueryJobsCancel' smart constructor.
data BigQueryJobsCancel = BigQueryJobsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Job ID of the job to cancel
    jobId :: Core.Text,
    -- | The geographic location of the job. You must <https://cloud.google.com/bigquery/docs/locations#specify_locations specify the location> to run the job for the following scenarios: * If the location to run a job is not in the @us@ or the @eu@ multi-regional location * If the job\'s location is in a single region (for example, @us-central1@)
    location :: (Core.Maybe Core.Text),
    -- | Required. Project ID of the job to cancel
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsCancel' with the minimum fields required to make a request.
newBigQueryJobsCancel ::
  -- |  Required. Job ID of the job to cancel See 'jobId'.
  Core.Text ->
  -- |  Required. Project ID of the job to cancel See 'projectId'.
  Core.Text ->
  BigQueryJobsCancel
newBigQueryJobsCancel jobId projectId =
  BigQueryJobsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      location = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryJobsCancel where
  type Rs BigQueryJobsCancel = JobCancelResponse
  type
    Scopes BigQueryJobsCancel =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient BigQueryJobsCancel {..} =
    go
      projectId
      jobId
      xgafv
      accessToken
      callback
      location
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryJobsCancelResource)
          Core.mempty
