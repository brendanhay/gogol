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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchStageAttemptTasks
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain data corresponding to tasks for a spark stage attempt for a Spark Application.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.sparkApplications.searchStageAttemptTasks@.
module Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchStageAttemptTasks
  ( -- * Resource
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.sessions.sparkApplications.searchStageAttemptTasks@ method which the
-- 'DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks' request conforms to.
type DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksResource =
  "v1"
    Core.:> Core.CaptureMode "name" "searchStageAttemptTasks" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "sortRuntime" Core.Bool
    Core.:> Core.QueryParam "stageAttemptId" Core.Int32
    Core.:> Core.QueryParam "stageId" Core.Int64
    Core.:> Core.QueryParam
              "taskStatus"
              ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              SearchSessionSparkApplicationStageAttemptTasksResponse

-- | Obtain data corresponding to tasks for a spark stage attempt for a Spark Application.
--
-- /See:/ 'newDataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks' smart constructor.
data DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks = DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\"
    name :: Core.Text,
    -- | Optional. Maximum number of tasks to return in each response. The service may return fewer than this. The default page size is 10; the maximum page size is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token received from a previous SearchSessionSparkApplicationStageAttemptTasks call. Provide this token to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Parent (Session) resource reference.
    parent :: (Core.Maybe Core.Text),
    -- | Optional. Sort the tasks by runtime.
    sortRuntime :: (Core.Maybe Core.Bool),
    -- | Optional. Stage Attempt ID
    stageAttemptId :: (Core.Maybe Core.Int32),
    -- | Optional. Stage ID
    stageId :: (Core.Maybe Core.Int64),
    -- | Optional. List only tasks in the state.
    taskStatus ::
      ( Core.Maybe
          ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
      ),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks ::
  -- |  Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks
newDataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks
  name =
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback =
          Core.Nothing,
        name = name,
        pageSize =
          Core.Nothing,
        pageToken =
          Core.Nothing,
        parent = Core.Nothing,
        sortRuntime =
          Core.Nothing,
        stageAttemptId =
          Core.Nothing,
        stageId =
          Core.Nothing,
        taskStatus =
          Core.Nothing,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks
  where
  type
    Rs
      DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks =
      SearchSessionSparkApplicationStageAttemptTasksResponse
  type
    Scopes
      DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks {..} =
      go
        name
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        parent
        sortRuntime
        stageAttemptId
        stageId
        taskStatus
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksResource
            )
            Core.mempty
