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
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.NodeGroups.Repair
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Repair nodes in a node group.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.nodeGroups.repair@.
module Gogol.Dataproc.Projects.Regions.Clusters.NodeGroups.Repair
  ( -- * Resource
    DataprocProjectsRegionsClustersNodeGroupsRepairResource,

    -- ** Constructing a Request
    DataprocProjectsRegionsClustersNodeGroupsRepair (..),
    newDataprocProjectsRegionsClustersNodeGroupsRepair,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.regions.clusters.nodeGroups.repair@ method which the
-- 'DataprocProjectsRegionsClustersNodeGroupsRepair' request conforms to.
type DataprocProjectsRegionsClustersNodeGroupsRepairResource =
  "v1"
    Core.:> Core.CaptureMode "name" "repair" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RepairNodeGroupRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Repair nodes in a node group.
--
-- /See:/ 'newDataprocProjectsRegionsClustersNodeGroupsRepair' smart constructor.
data DataprocProjectsRegionsClustersNodeGroupsRepair = DataprocProjectsRegionsClustersNodeGroupsRepair
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the node group to resize. Format: projects\/{project}\/regions\/{region}\/clusters\/{cluster}\/nodeGroups\/{nodeGroup}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RepairNodeGroupRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsClustersNodeGroupsRepair' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersNodeGroupsRepair ::
  -- |  Required. The name of the node group to resize. Format: projects\/{project}\/regions\/{region}\/clusters\/{cluster}\/nodeGroups\/{nodeGroup} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RepairNodeGroupRequest ->
  DataprocProjectsRegionsClustersNodeGroupsRepair
newDataprocProjectsRegionsClustersNodeGroupsRepair name payload =
  DataprocProjectsRegionsClustersNodeGroupsRepair
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
    DataprocProjectsRegionsClustersNodeGroupsRepair
  where
  type Rs DataprocProjectsRegionsClustersNodeGroupsRepair = Operation
  type
    Scopes DataprocProjectsRegionsClustersNodeGroupsRepair =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsRegionsClustersNodeGroupsRepair {..} =
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
              Core.Proxy DataprocProjectsRegionsClustersNodeGroupsRepairResource
          )
          Core.mempty
