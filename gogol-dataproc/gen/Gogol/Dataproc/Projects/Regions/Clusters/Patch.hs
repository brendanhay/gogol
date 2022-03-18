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
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata). The cluster must be in a RUNNING state or an error is returned.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.patch@.
module Gogol.Dataproc.Projects.Regions.Clusters.Patch
  ( -- * Resource
    DataprocProjectsRegionsClustersPatchResource,

    -- ** Constructing a Request
    newDataprocProjectsRegionsClustersPatch,
    DataprocProjectsRegionsClustersPatch,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.clusters.patch@ method which the
-- 'DataprocProjectsRegionsClustersPatch' request conforms to.
type DataprocProjectsRegionsClustersPatchResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "clusters"
    Core.:> Core.Capture "clusterName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "gracefulDecommissionTimeout"
              Core.GDuration
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Cluster
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata). The cluster must be in a RUNNING state or an error is returned.
--
-- /See:/ 'newDataprocProjectsRegionsClustersPatch' smart constructor.
data DataprocProjectsRegionsClustersPatch = DataprocProjectsRegionsClustersPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The cluster name.
    clusterName :: Core.Text,
    -- | Optional. Timeout for graceful YARN decomissioning. Graceful decommissioning allows removing nodes from the cluster without interrupting jobs in progress. Timeout specifies how long to wait for jobs in progress to finish before forcefully removing nodes (and potentially interrupting jobs). Default timeout is 0 (for forceful decommission), and the maximum allowed timeout is 1 day. (see JSON representation of Duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).Only supported on Dataproc image versions 1.2 and higher.
    gracefulDecommissionTimeout :: (Core.Maybe Core.GDuration),
    -- | Multipart request metadata.
    payload :: Cluster,
    -- | Required. The ID of the Google Cloud Platform project the cluster belongs to.
    projectId :: Core.Text,
    -- | Required. The Dataproc region in which to handle the request.
    region :: Core.Text,
    -- | Optional. A unique ID used to identify the request. If the server receives two UpdateClusterRequest (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.UpdateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text),
    -- | Required. Specifies the path, relative to Cluster, of the field to update. For example, to change the number of workers in a cluster to 5, the update/mask parameter would be specified as config.worker/config.num/instances, and the PATCH request body would specify the new value, as follows: { \"config\":{ \"workerConfig\":{ \"numInstances\":\"5\" } } } Similarly, to change the number of preemptible workers in a cluster to 5, the update/mask parameter would be config.secondary/worker/config.num_instances, and the PATCH request body would be set as follows: { \"config\":{ \"secondaryWorkerConfig\":{ \"numInstances\":\"5\" } } } /Note:/ Currently, only the following fields can be updated: /Mask/ /Purpose/ /labels/ Update labels /config.worker/config.num/instances/ Resize primary worker group *config.secondary/worker/config.num/instances* Resize secondary worker group config.autoscaling/config.policy_uri Use, stop using, or change autoscaling policies
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsClustersPatch' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersPatch ::
  -- |  Required. The cluster name. See 'clusterName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Cluster ->
  -- |  Required. The ID of the Google Cloud Platform project the cluster belongs to. See 'projectId'.
  Core.Text ->
  -- |  Required. The Dataproc region in which to handle the request. See 'region'.
  Core.Text ->
  DataprocProjectsRegionsClustersPatch
newDataprocProjectsRegionsClustersPatch clusterName payload projectId region =
  DataprocProjectsRegionsClustersPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterName = clusterName,
      gracefulDecommissionTimeout = Core.Nothing,
      payload = payload,
      projectId = projectId,
      region = region,
      requestId = Core.Nothing,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsRegionsClustersPatch
  where
  type
    Rs DataprocProjectsRegionsClustersPatch =
      Operation
  type
    Scopes DataprocProjectsRegionsClustersPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DataprocProjectsRegionsClustersPatch {..} =
      go
        projectId
        region
        clusterName
        xgafv
        accessToken
        callback
        gracefulDecommissionTimeout
        requestId
        updateMask
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
                  DataprocProjectsRegionsClustersPatchResource
            )
            Core.mempty
