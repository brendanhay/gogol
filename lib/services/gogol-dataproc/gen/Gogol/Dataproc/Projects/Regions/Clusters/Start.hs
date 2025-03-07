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
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.Start
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a cluster in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.start@.
module Gogol.Dataproc.Projects.Regions.Clusters.Start
  ( -- * Resource
    DataprocProjectsRegionsClustersStartResource,

    -- ** Constructing a Request
    DataprocProjectsRegionsClustersStart (..),
    newDataprocProjectsRegionsClustersStart,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.regions.clusters.start@ method which the
-- 'DataprocProjectsRegionsClustersStart' request conforms to.
type DataprocProjectsRegionsClustersStartResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "clusters"
    Core.:> Core.CaptureMode "clusterName" "start" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StartClusterRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Starts a cluster in a project.
--
-- /See:/ 'newDataprocProjectsRegionsClustersStart' smart constructor.
data DataprocProjectsRegionsClustersStart = DataprocProjectsRegionsClustersStart
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The cluster name.
    clusterName :: Core.Text,
    -- | Multipart request metadata.
    payload :: StartClusterRequest,
    -- | Required. The ID of the Google Cloud Platform project the cluster belongs to.
    projectId :: Core.Text,
    -- | Required. The Dataproc region in which to handle the request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsClustersStart' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersStart ::
  -- |  Required. The cluster name. See 'clusterName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StartClusterRequest ->
  -- |  Required. The ID of the Google Cloud Platform project the cluster belongs to. See 'projectId'.
  Core.Text ->
  -- |  Required. The Dataproc region in which to handle the request. See 'region'.
  Core.Text ->
  DataprocProjectsRegionsClustersStart
newDataprocProjectsRegionsClustersStart
  clusterName
  payload
  projectId
  region =
    DataprocProjectsRegionsClustersStart
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        clusterName = clusterName,
        payload = payload,
        projectId = projectId,
        region = region,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest DataprocProjectsRegionsClustersStart where
  type Rs DataprocProjectsRegionsClustersStart = Operation
  type
    Scopes DataprocProjectsRegionsClustersStart =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsRegionsClustersStart {..} =
    go
      projectId
      region
      clusterName
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
              Core.Proxy DataprocProjectsRegionsClustersStartResource
          )
          Core.mempty
