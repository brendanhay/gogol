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
-- Module      : Gogol.Run.Projects.Locations.WorkerPools.Revisions.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Revision.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.workerPools.revisions.delete@.
module Gogol.Run.Projects.Locations.WorkerPools.Revisions.Delete
  ( -- * Resource
    RunProjectsLocationsWorkerPoolsRevisionsDeleteResource,

    -- ** Constructing a Request
    RunProjectsLocationsWorkerPoolsRevisionsDelete (..),
    newRunProjectsLocationsWorkerPoolsRevisionsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.workerPools.revisions.delete@ method which the
-- 'RunProjectsLocationsWorkerPoolsRevisionsDelete' request conforms to.
type RunProjectsLocationsWorkerPoolsRevisionsDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "etag" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleLongrunningOperation

-- | Deletes a Revision.
--
-- /See:/ 'newRunProjectsLocationsWorkerPoolsRevisionsDelete' smart constructor.
data RunProjectsLocationsWorkerPoolsRevisionsDelete = RunProjectsLocationsWorkerPoolsRevisionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict during updates.
    etag :: (Core.Maybe Core.Text),
    -- | Required. The name of the Revision to delete. Format: projects\/{project}\/locations\/{location}\/services\/{service}\/revisions\/{revision}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Indicates that the request should be validated without actually deleting any resources.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsWorkerPoolsRevisionsDelete' with the minimum fields required to make a request.
newRunProjectsLocationsWorkerPoolsRevisionsDelete ::
  -- |  Required. The name of the Revision to delete. Format: projects\/{project}\/locations\/{location}\/services\/{service}\/revisions\/{revision} See 'name'.
  Core.Text ->
  RunProjectsLocationsWorkerPoolsRevisionsDelete
newRunProjectsLocationsWorkerPoolsRevisionsDelete name =
  RunProjectsLocationsWorkerPoolsRevisionsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      etag = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    RunProjectsLocationsWorkerPoolsRevisionsDelete
  where
  type
    Rs RunProjectsLocationsWorkerPoolsRevisionsDelete =
      GoogleLongrunningOperation
  type
    Scopes RunProjectsLocationsWorkerPoolsRevisionsDelete =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsWorkerPoolsRevisionsDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      etag
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RunProjectsLocationsWorkerPoolsRevisionsDeleteResource
          )
          Core.mempty
