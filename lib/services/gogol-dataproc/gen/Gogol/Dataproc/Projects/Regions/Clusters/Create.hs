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
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata).
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.create@.
module Gogol.Dataproc.Projects.Regions.Clusters.Create
  ( -- * Resource
    DataprocProjectsRegionsClustersCreateResource,

    -- ** Constructing a Request
    newDataprocProjectsRegionsClustersCreate,
    DataprocProjectsRegionsClustersCreate,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.clusters.create@ method which the
-- 'DataprocProjectsRegionsClustersCreate' request conforms to.
type DataprocProjectsRegionsClustersCreateResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "clusters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam
              "actionOnFailedPrimaryWorkers"
              ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Cluster
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata).
--
-- /See:/ 'newDataprocProjectsRegionsClustersCreate' smart constructor.
data DataprocProjectsRegionsClustersCreate = DataprocProjectsRegionsClustersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. Failure action when primary worker creation fails.
    actionOnFailedPrimaryWorkers ::
      ( Core.Maybe
          ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
      ),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Cluster,
    -- | Required. The ID of the Google Cloud Platform project that the cluster belongs to.
    projectId :: Core.Text,
    -- | Required. The Dataproc region in which to handle the request.
    region :: Core.Text,
    -- | Optional. A unique ID used to identify the request. If the server receives two CreateClusterRequest (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsClustersCreate' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Cluster ->
  -- |  Required. The ID of the Google Cloud Platform project that the cluster belongs to. See 'projectId'.
  Core.Text ->
  -- |  Required. The Dataproc region in which to handle the request. See 'region'.
  Core.Text ->
  DataprocProjectsRegionsClustersCreate
newDataprocProjectsRegionsClustersCreate payload projectId region =
  DataprocProjectsRegionsClustersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      actionOnFailedPrimaryWorkers = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      region = region,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsRegionsClustersCreate
  where
  type
    Rs DataprocProjectsRegionsClustersCreate =
      Operation
  type
    Scopes DataprocProjectsRegionsClustersCreate =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsRegionsClustersCreate {..} =
      go
        projectId
        region
        xgafv
        accessToken
        actionOnFailedPrimaryWorkers
        callback
        requestId
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
                  DataprocProjectsRegionsClustersCreateResource
            )
            Core.mempty
