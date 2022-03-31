{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.Stop
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a cluster in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.stop@.
module Gogol.Dataproc.Projects.Regions.Clusters.Stop
  ( -- * Resource
    DataprocProjectsRegionsClustersStopResource,

    -- ** Constructing a Request
    newDataprocProjectsRegionsClustersStop,
    DataprocProjectsRegionsClustersStop,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.clusters.stop@ method which the
-- 'DataprocProjectsRegionsClustersStop' request conforms to.
type DataprocProjectsRegionsClustersStopResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "clusters"
    Core.:> Core.CaptureMode "clusterName" "stop" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StopClusterRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Stops a cluster in a project.
--
-- /See:/ 'newDataprocProjectsRegionsClustersStop' smart constructor.
data DataprocProjectsRegionsClustersStop = DataprocProjectsRegionsClustersStop
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The cluster name.
    clusterName :: Core.Text,
    -- | Multipart request metadata.
    payload :: StopClusterRequest,
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

-- | Creates a value of 'DataprocProjectsRegionsClustersStop' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersStop ::
  -- |  Required. The cluster name. See 'clusterName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StopClusterRequest ->
  -- |  Required. The ID of the Google Cloud Platform project the cluster belongs to. See 'projectId'.
  Core.Text ->
  -- |  Required. The Dataproc region in which to handle the request. See 'region'.
  Core.Text ->
  DataprocProjectsRegionsClustersStop
newDataprocProjectsRegionsClustersStop clusterName payload projectId region =
  DataprocProjectsRegionsClustersStop
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

instance
  Core.GoogleRequest
    DataprocProjectsRegionsClustersStop
  where
  type
    Rs DataprocProjectsRegionsClustersStop =
      Operation
  type
    Scopes DataprocProjectsRegionsClustersStop =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsRegionsClustersStop {..} =
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
              Core.Proxy
                DataprocProjectsRegionsClustersStopResource
          )
          Core.mempty
