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
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.NodeGroups.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#nodegroupoperationmetadata).
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.nodeGroups.create@.
module Gogol.Dataproc.Projects.Regions.Clusters.NodeGroups.Create
  ( -- * Resource
    DataprocProjectsRegionsClustersNodeGroupsCreateResource,

    -- ** Constructing a Request
    DataprocProjectsRegionsClustersNodeGroupsCreate (..),
    newDataprocProjectsRegionsClustersNodeGroupsCreate,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.clusters.nodeGroups.create@ method which the
-- 'DataprocProjectsRegionsClustersNodeGroupsCreate' request conforms to.
type DataprocProjectsRegionsClustersNodeGroupsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "nodeGroups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "nodeGroupId" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] NodeGroup
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#nodegroupoperationmetadata).
--
-- /See:/ 'newDataprocProjectsRegionsClustersNodeGroupsCreate' smart constructor.
data DataprocProjectsRegionsClustersNodeGroupsCreate = DataprocProjectsRegionsClustersNodeGroupsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. An optional node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
    nodeGroupId :: (Core.Maybe Core.Text),
    -- | Required. The parent resource where this node group will be created. Format: projects\/{project}\/regions\/{region}\/clusters\/{cluster}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: NodeGroup,
    -- | Optional. A unique ID used to identify the request. If the server receives two CreateNodeGroupRequest (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsClustersNodeGroupsCreate' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersNodeGroupsCreate ::
  -- |  Required. The parent resource where this node group will be created. Format: projects\/{project}\/regions\/{region}\/clusters\/{cluster} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  NodeGroup ->
  DataprocProjectsRegionsClustersNodeGroupsCreate
newDataprocProjectsRegionsClustersNodeGroupsCreate parent payload =
  DataprocProjectsRegionsClustersNodeGroupsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      nodeGroupId = Core.Nothing,
      parent = parent,
      payload = payload,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsRegionsClustersNodeGroupsCreate
  where
  type
    Rs
      DataprocProjectsRegionsClustersNodeGroupsCreate =
      Operation
  type
    Scopes
      DataprocProjectsRegionsClustersNodeGroupsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsRegionsClustersNodeGroupsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        nodeGroupId
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
                  DataprocProjectsRegionsClustersNodeGroupsCreateResource
            )
            Core.mempty
