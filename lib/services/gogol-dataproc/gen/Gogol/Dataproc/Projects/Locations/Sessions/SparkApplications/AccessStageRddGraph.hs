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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessStageRddGraph
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain RDD operation graph for a Spark Application Stage. Limits the number of clusters returned as part of the graph to 10000.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.sparkApplications.accessStageRddGraph@.
module Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessStageRddGraph
  ( -- * Resource
    DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraphResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.sessions.sparkApplications.accessStageRddGraph@ method which the
-- 'DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph' request conforms to.
type DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraphResource =
  "v1"
    Core.:> Core.CaptureMode "name" "accessStageRddGraph" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "stageId" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              AccessSessionSparkApplicationStageRddOperationGraphResponse

-- | Obtain RDD operation graph for a Spark Application Stage. Limits the number of clusters returned as part of the graph to 10000.
--
-- /See:/ 'newDataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph' smart constructor.
data DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph = DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\"
    name :: Core.Text,
    -- | Required. Parent (Session) resource reference.
    parent :: (Core.Maybe Core.Text),
    -- | Required. Stage ID
    stageId :: (Core.Maybe Core.Int64),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph ::
  -- |  Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph
newDataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph
  name =
    DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback = Core.Nothing,
        name = name,
        parent = Core.Nothing,
        stageId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph
  where
  type
    Rs
      DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph =
      AccessSessionSparkApplicationStageRddOperationGraphResponse
  type
    Scopes
      DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph {..} =
      go
        name
        xgafv
        accessToken
        callback
        parent
        stageId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraphResource
            )
            Core.mempty
