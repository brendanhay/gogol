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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessSqlPlan
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain Spark Plan Graph for a Spark Application SQL execution. Limits the number of clusters returned as part of the graph to 10000.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.sparkApplications.accessSqlPlan@.
module Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessSqlPlan
  ( -- * Resource
    DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlanResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.sessions.sparkApplications.accessSqlPlan@ method which the
-- 'DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan' request conforms to.
type DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlanResource =
  "v1"
    Core.:> Core.CaptureMode "name" "accessSqlPlan" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "executionId" Core.Int64
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              AccessSessionSparkApplicationSqlSparkPlanGraphResponse

-- | Obtain Spark Plan Graph for a Spark Application SQL execution. Limits the number of clusters returned as part of the graph to 10000.
--
-- /See:/ 'newDataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan' smart constructor.
data DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan = DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Execution ID
    executionId :: (Core.Maybe Core.Int64),
    -- | Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\"
    name :: Core.Text,
    -- | Required. Parent (Session) resource reference.
    parent :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan ::
  -- |  Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan
newDataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan
  name =
    DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        executionId = Core.Nothing,
        name = name,
        parent = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan
  where
  type
    Rs
      DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan =
      AccessSessionSparkApplicationSqlSparkPlanGraphResponse
  type
    Scopes
      DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan {..} =
      go
        name
        xgafv
        accessToken
        callback
        executionId
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
                  DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlanResource
            )
            Core.mempty
