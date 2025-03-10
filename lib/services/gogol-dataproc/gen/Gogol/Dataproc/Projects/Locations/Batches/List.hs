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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists batch workloads.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.list@.
module Gogol.Dataproc.Projects.Locations.Batches.List
  ( -- * Resource
    DataprocProjectsLocationsBatchesListResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsBatchesList (..),
    newDataprocProjectsLocationsBatchesList,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.batches.list@ method which the
-- 'DataprocProjectsLocationsBatchesList' request conforms to.
type DataprocProjectsLocationsBatchesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "batches"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBatchesResponse

-- | Lists batch workloads.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesList' smart constructor.
data DataprocProjectsLocationsBatchesList = DataprocProjectsLocationsBatchesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. A filter for the batches to return in the response.A filter is a logical expression constraining the values of various fields in each batch resource. Filters are case sensitive, and may contain multiple clauses combined with logical operators (AND\/OR). Supported fields are batch/id, batch/uuid, state, create/time, and labels.e.g. state = RUNNING and create/time \< \"2023-01-01T00:00:00Z\" filters for batches in state RUNNING that were created before 2023-01-01. state = RUNNING and labels.environment=production filters for batches in state in a RUNNING state that have a production environment label.See https:\/\/google.aip.dev\/assets\/misc\/ebnf-filtering.txt for a detailed description of the filter syntax and a list of supported comparisons.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Field(s) on which to sort the list of batches.Currently the only supported sort orders are unspecified (empty) and create_time desc to sort by most recently created batches first.See https:\/\/google.aip.dev\/132#ordering for more details.
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of batches to return in each response. The service may return fewer than this value. The default page size is 20; the maximum page size is 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token received from a previous ListBatches call. Provide this token to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent, which owns this collection of batches.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesList' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesList ::
  -- |  Required. The parent, which owns this collection of batches. See 'parent'.
  Core.Text ->
  DataprocProjectsLocationsBatchesList
newDataprocProjectsLocationsBatchesList parent =
  DataprocProjectsLocationsBatchesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DataprocProjectsLocationsBatchesList where
  type Rs DataprocProjectsLocationsBatchesList = ListBatchesResponse
  type
    Scopes DataprocProjectsLocationsBatchesList =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsLocationsBatchesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      orderBy
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
              Core.Proxy DataprocProjectsLocationsBatchesListResource
          )
          Core.mempty
