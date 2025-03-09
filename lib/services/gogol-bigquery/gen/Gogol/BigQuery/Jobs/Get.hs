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
-- Module      : Gogol.BigQuery.Jobs.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific job. Job information is available for a six month period after creation. Requires that you\'re the person who ran the job, or have the Is Owner project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.get@.
module Gogol.BigQuery.Jobs.Get
  ( -- * Resource
    BigQueryJobsGetResource,

    -- ** Constructing a Request
    BigQueryJobsGet (..),
    newBigQueryJobsGet,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.jobs.get@ method which the
-- 'BigQueryJobsGet' request conforms to.
type BigQueryJobsGetResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Job

-- | Returns information about a specific job. Job information is available for a six month period after creation. Requires that you\'re the person who ran the job, or have the Is Owner project role.
--
-- /See:/ 'newBigQueryJobsGet' smart constructor.
data BigQueryJobsGet = BigQueryJobsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Job ID of the requested job.
    jobId :: Core.Text,
    -- | The geographic location of the job. You must specify the location to run the job for the following scenarios: * If the location to run a job is not in the @us@ or the @eu@ multi-regional location * If the job\'s location is in a single region (for example, @us-central1@) For more information, see how to <https://cloud.google.com/bigquery/docs/locations#specify_locations specify locations>.
    location :: (Core.Maybe Core.Text),
    -- | Required. Project ID of the requested job.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsGet' with the minimum fields required to make a request.
newBigQueryJobsGet ::
  -- |  Required. Job ID of the requested job. See 'jobId'.
  Core.Text ->
  -- |  Required. Project ID of the requested job. See 'projectId'.
  Core.Text ->
  BigQueryJobsGet
newBigQueryJobsGet jobId projectId =
  BigQueryJobsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      location = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryJobsGet where
  type Rs BigQueryJobsGet = Job
  type
    Scopes BigQueryJobsGet =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryJobsGet {..} =
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
          (Core.Proxy :: Core.Proxy BigQueryJobsGetResource)
          Core.mempty
