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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessSqlQuery
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain data corresponding to a particular SQL Query for a Spark Application.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.accessSqlQuery@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessSqlQuery
  ( -- * Resource
    DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQueryResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.accessSqlQuery@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQueryResource =
  "v1"
    Core.:> Core.CaptureMode "name" "accessSqlQuery" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "details" Core.Bool
    Core.:> Core.QueryParam "executionId" Core.Int64
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "planDescription" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AccessSparkApplicationSqlQueryResponse

-- | Obtain data corresponding to a particular SQL Query for a Spark Application.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery = DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Lists\/ hides details of Spark plan nodes. True is set to list and false to hide.
    details :: (Core.Maybe Core.Bool),
    -- | Required. Execution ID
    executionId :: (Core.Maybe Core.Int64),
    -- | Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\"
    name :: Core.Text,
    -- | Required. Parent (Batch) resource reference.
    parent :: (Core.Maybe Core.Text),
    -- | Optional. Enables\/ disables physical plan description on demand
    planDescription :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery ::
  -- |  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery
newDataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery
  name =
    DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        details = Core.Nothing,
        executionId = Core.Nothing,
        name = name,
        parent = Core.Nothing,
        planDescription = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery
  where
  type
    Rs
      DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery =
      AccessSparkApplicationSqlQueryResponse
  type
    Scopes
      DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery {..} =
      go
        name
        xgafv
        accessToken
        callback
        details
        executionId
        parent
        planDescription
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQueryResource
            )
            Core.mempty
