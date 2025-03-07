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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchSqlQueries
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain data corresponding to SQL Queries for a Spark Application.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.sparkApplications.searchSqlQueries@.
module Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchSqlQueries
  ( -- * Resource
    DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueriesResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.sessions.sparkApplications.searchSqlQueries@ method which the
-- 'DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries' request conforms to.
type DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueriesResource =
  "v1"
    Core.:> Core.CaptureMode "name" "searchSqlQueries" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "details" Core.Bool
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "planDescription" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              SearchSessionSparkApplicationSqlQueriesResponse

-- | Obtain data corresponding to SQL Queries for a Spark Application.
--
-- /See:/ 'newDataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries' smart constructor.
data DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries = DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Lists\/ hides details of Spark plan nodes. True is set to list and false to hide.
    details :: (Core.Maybe Core.Bool),
    -- | Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\"
    name :: Core.Text,
    -- | Optional. Maximum number of queries to return in each response. The service may return fewer than this. The default page size is 10; the maximum page size is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token received from a previous SearchSessionSparkApplicationSqlQueries call. Provide this token to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Parent (Session) resource reference.
    parent :: (Core.Maybe Core.Text),
    -- | Optional. Enables\/ disables physical plan description on demand
    planDescription :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries ::
  -- |  Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries
newDataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries
  name =
    DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        details = Core.Nothing,
        name = name,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        parent = Core.Nothing,
        planDescription =
          Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries
  where
  type
    Rs
      DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries =
      SearchSessionSparkApplicationSqlQueriesResponse
  type
    Scopes
      DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries {..} =
      go
        name
        xgafv
        accessToken
        callback
        details
        pageSize
        pageToken
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
                  DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueriesResource
            )
            Core.mempty
