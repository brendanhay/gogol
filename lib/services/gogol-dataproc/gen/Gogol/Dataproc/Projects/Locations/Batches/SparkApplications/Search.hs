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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain high level information and list of Spark Applications corresponding to a batch
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.search@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.Search
  ( -- * Resource
    DataprocProjectsLocationsBatchesSparkApplicationsSearchResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsBatchesSparkApplicationsSearch (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSearch,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.search@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsSearch' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsSearchResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "sparkApplications:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam
              "applicationStatus"
              ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxEndTime" Core.DateTime
    Core.:> Core.QueryParam "maxTime" Core.DateTime
    Core.:> Core.QueryParam "minEndTime" Core.DateTime
    Core.:> Core.QueryParam "minTime" Core.DateTime
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchSparkApplicationsResponse

-- | Obtain high level information and list of Spark Applications corresponding to a batch
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsSearch' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsSearch = DataprocProjectsLocationsBatchesSparkApplicationsSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. Search only applications in the chosen state.
    applicationStatus ::
      ( Core.Maybe
          ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus
      ),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Latest end timestamp to list.
    maxEndTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Latest start timestamp to list.
    maxTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Earliest end timestamp to list.
    minEndTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Earliest start timestamp to list.
    minTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Maximum number of applications to return in each response. The service may return fewer than this. The default page size is 10; the maximum page size is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token received from a previous SearchSparkApplications call. Provide this token to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH_ID\"
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsSearch' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsSearch ::
  -- |  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH_ID\" See 'parent'.
  Core.Text ->
  DataprocProjectsLocationsBatchesSparkApplicationsSearch
newDataprocProjectsLocationsBatchesSparkApplicationsSearch parent =
  DataprocProjectsLocationsBatchesSparkApplicationsSearch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      applicationStatus = Core.Nothing,
      callback = Core.Nothing,
      maxEndTime = Core.Nothing,
      maxTime = Core.Nothing,
      minEndTime = Core.Nothing,
      minTime = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsBatchesSparkApplicationsSearch
  where
  type
    Rs DataprocProjectsLocationsBatchesSparkApplicationsSearch =
      SearchSparkApplicationsResponse
  type
    Scopes DataprocProjectsLocationsBatchesSparkApplicationsSearch =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsBatchesSparkApplicationsSearch {..} =
      go
        parent
        xgafv
        accessToken
        applicationStatus
        callback
        maxEndTime
        maxTime
        minEndTime
        minTime
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsBatchesSparkApplicationsSearchResource
            )
            Core.mempty
