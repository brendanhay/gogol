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
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.Snapshot
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Snapshot the state of a streaming job.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.snapshot@.
module Gogol.Dataflow.Projects.Locations.Jobs.Snapshot
  ( -- * Resource
    DataflowProjectsLocationsJobsSnapshotResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsJobsSnapshot (..),
    newDataflowProjectsLocationsJobsSnapshot,
  )
where

import Gogol.Dataflow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataflow.projects.locations.jobs.snapshot@ method which the
-- 'DataflowProjectsLocationsJobsSnapshot' request conforms to.
type DataflowProjectsLocationsJobsSnapshotResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "jobs"
    Core.:> Core.CaptureMode "jobId" "snapshot" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SnapshotJobRequest
    Core.:> Core.Post '[Core.JSON] Snapshot

-- | Snapshot the state of a streaming job.
--
-- /See:/ 'newDataflowProjectsLocationsJobsSnapshot' smart constructor.
data DataflowProjectsLocationsJobsSnapshot = DataflowProjectsLocationsJobsSnapshot
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The job to be snapshotted.
    jobId :: Core.Text,
    -- | The location that contains this job.
    location :: Core.Text,
    -- | Multipart request metadata.
    payload :: SnapshotJobRequest,
    -- | The project which owns the job to be snapshotted.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsSnapshot' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsSnapshot ::
  -- |  The job to be snapshotted. See 'jobId'.
  Core.Text ->
  -- |  The location that contains this job. See 'location'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SnapshotJobRequest ->
  -- |  The project which owns the job to be snapshotted. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsJobsSnapshot
newDataflowProjectsLocationsJobsSnapshot jobId location payload projectId =
  DataflowProjectsLocationsJobsSnapshot
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      location = location,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataflowProjectsLocationsJobsSnapshot
  where
  type
    Rs DataflowProjectsLocationsJobsSnapshot =
      Snapshot
  type
    Scopes DataflowProjectsLocationsJobsSnapshot =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly,
         Userinfo'Email
       ]
  requestClient
    DataflowProjectsLocationsJobsSnapshot {..} =
      go
        projectId
        location
        jobId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dataflowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataflowProjectsLocationsJobsSnapshotResource
            )
            Core.mempty
