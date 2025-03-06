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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchJobs
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain list of spark jobs corresponding to a Spark Application.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.sparkApplications.searchJobs@.
module Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchJobs
  ( -- * Resource
    DataprocProjectsLocationsSessionsSparkApplicationsSearchJobsResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearchJobs,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.sessions.sparkApplications.searchJobs@ method which the
-- 'DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs' request conforms to.
type DataprocProjectsLocationsSessionsSparkApplicationsSearchJobsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "searchJobs" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "jobStatus"
              ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchSessionSparkApplicationJobsResponse

-- | Obtain list of spark jobs corresponding to a Spark Application.
--
-- /See:/ 'newDataprocProjectsLocationsSessionsSparkApplicationsSearchJobs' smart constructor.
data DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs = DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. List only jobs in the specific state.
    jobStatus ::
      ( Core.Maybe
          ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
      ),
    -- | Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\"
    name :: Core.Text,
    -- | Optional. Maximum number of jobs to return in each response. The service may return fewer than this. The default page size is 10; the maximum page size is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token received from a previous SearchSessionSparkApplicationJobs call. Provide this token to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Parent (Session) resource reference.
    parent :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsSparkApplicationsSearchJobs ::
  -- |  Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs
newDataprocProjectsLocationsSessionsSparkApplicationsSearchJobs
  name =
    DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        jobStatus = Core.Nothing,
        name = name,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        parent = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs
  where
  type
    Rs
      DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs =
      SearchSessionSparkApplicationJobsResponse
  type
    Scopes
      DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs {..} =
      go
        name
        xgafv
        accessToken
        callback
        jobStatus
        pageSize
        pageToken
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
                  DataprocProjectsLocationsSessionsSparkApplicationsSearchJobsResource
            )
            Core.mempty
