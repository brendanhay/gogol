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
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata).
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.delete@.
module Gogol.Dataproc.Projects.Regions.Clusters.Delete
  ( -- * Resource
    DataprocProjectsRegionsClustersDeleteResource,

    -- ** Constructing a Request
    newDataprocProjectsRegionsClustersDelete,
    DataprocProjectsRegionsClustersDelete,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.clusters.delete@ method which the
-- 'DataprocProjectsRegionsClustersDelete' request conforms to.
type DataprocProjectsRegionsClustersDeleteResource =
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
    Core.:> Core.QueryParam "clusterUuid" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata).
--
-- /See:/ 'newDataprocProjectsRegionsClustersDelete' smart constructor.
data DataprocProjectsRegionsClustersDelete = DataprocProjectsRegionsClustersDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The cluster name.
    clusterName :: Core.Text,
    -- | Optional. Specifying the cluster/uuid means the RPC should fail (with error NOT/FOUND) if cluster with specified UUID does not exist.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Required. The ID of the Google Cloud Platform project that the cluster belongs to.
    projectId :: Core.Text,
    -- | Required. The Dataproc region in which to handle the request.
    region :: Core.Text,
    -- | Optional. A unique ID used to identify the request. If the server receives two DeleteClusterRequest (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.DeleteClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsClustersDelete' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersDelete ::
  -- |  Required. The cluster name. See 'clusterName'.
  Core.Text ->
  -- |  Required. The ID of the Google Cloud Platform project that the cluster belongs to. See 'projectId'.
  Core.Text ->
  -- |  Required. The Dataproc region in which to handle the request. See 'region'.
  Core.Text ->
  DataprocProjectsRegionsClustersDelete
newDataprocProjectsRegionsClustersDelete clusterName projectId region =
  DataprocProjectsRegionsClustersDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterName = clusterName,
      clusterUuid = Core.Nothing,
      projectId = projectId,
      region = region,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsRegionsClustersDelete
  where
  type
    Rs DataprocProjectsRegionsClustersDelete =
      Operation
  type
    Scopes DataprocProjectsRegionsClustersDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DataprocProjectsRegionsClustersDelete {..} =
      go
        projectId
        region
        clusterName
        xgafv
        accessToken
        callback
        clusterUuid
        requestId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsRegionsClustersDeleteResource
            )
            Core.mempty
