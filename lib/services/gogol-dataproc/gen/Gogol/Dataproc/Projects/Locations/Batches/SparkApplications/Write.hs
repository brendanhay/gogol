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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.Write
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Write wrapper objects from dataplane to spanner
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.write@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.Write
  ( -- * Resource
    DataprocProjectsLocationsBatchesSparkApplicationsWriteResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsBatchesSparkApplicationsWrite (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsWrite,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.write@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsWrite' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsWriteResource =
  "v1"
    Core.:> Core.CaptureMode "name" "write" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WriteSparkApplicationContextRequest
    Core.:> Core.Post '[Core.JSON] WriteSparkApplicationContextResponse

-- | Write wrapper objects from dataplane to spanner
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsWrite' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsWrite = DataprocProjectsLocationsBatchesSparkApplicationsWrite
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The fully qualified name of the spark application to write data about in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: WriteSparkApplicationContextRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsWrite' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsWrite ::
  -- |  Required. The fully qualified name of the spark application to write data about in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WriteSparkApplicationContextRequest ->
  DataprocProjectsLocationsBatchesSparkApplicationsWrite
newDataprocProjectsLocationsBatchesSparkApplicationsWrite
  name
  payload =
    DataprocProjectsLocationsBatchesSparkApplicationsWrite
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsBatchesSparkApplicationsWrite
  where
  type
    Rs DataprocProjectsLocationsBatchesSparkApplicationsWrite =
      WriteSparkApplicationContextResponse
  type
    Scopes DataprocProjectsLocationsBatchesSparkApplicationsWrite =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsBatchesSparkApplicationsWrite {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsBatchesSparkApplicationsWriteResource
            )
            Core.mempty
