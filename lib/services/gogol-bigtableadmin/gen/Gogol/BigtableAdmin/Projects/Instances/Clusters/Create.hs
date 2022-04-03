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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Clusters.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a cluster within an instance. Note that exactly one of Cluster.serve/nodes and Cluster.cluster/config.cluster/autoscaling/config can be set. If serve/nodes is set to non-zero, then the cluster is manually scaled. If cluster/config.cluster/autoscaling/config is non-empty, then autoscaling is enabled.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.create@.
module Gogol.BigtableAdmin.Projects.Instances.Clusters.Create
  ( -- * Resource
    BigtableAdminProjectsInstancesClustersCreateResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesClustersCreate (..),
    newBigtableAdminProjectsInstancesClustersCreate,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.clusters.create@ method which the
-- 'BigtableAdminProjectsInstancesClustersCreate' request conforms to.
type BigtableAdminProjectsInstancesClustersCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "clusters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clusterId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Cluster
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a cluster within an instance. Note that exactly one of Cluster.serve/nodes and Cluster.cluster/config.cluster/autoscaling/config can be set. If serve/nodes is set to non-zero, then the cluster is manually scaled. If cluster/config.cluster/autoscaling/config is non-empty, then autoscaling is enabled.
--
-- /See:/ 'newBigtableAdminProjectsInstancesClustersCreate' smart constructor.
data BigtableAdminProjectsInstancesClustersCreate = BigtableAdminProjectsInstancesClustersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID to be used when referring to the new cluster within its instance, e.g., just @mycluster@ rather than @projects\/myproject\/instances\/myinstance\/clusters\/mycluster@.
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the instance in which to create the new cluster. Values are of the form @projects\/{project}\/instances\/{instance}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Cluster,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesClustersCreate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesClustersCreate ::
  -- |  Required. The unique name of the instance in which to create the new cluster. Values are of the form @projects\/{project}\/instances\/{instance}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Cluster ->
  BigtableAdminProjectsInstancesClustersCreate
newBigtableAdminProjectsInstancesClustersCreate parent payload =
  BigtableAdminProjectsInstancesClustersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesClustersCreate
  where
  type
    Rs BigtableAdminProjectsInstancesClustersCreate =
      Operation
  type
    Scopes
      BigtableAdminProjectsInstancesClustersCreate =
      '[ Bigtable'Admin,
         Bigtable'Admin'Cluster,
         Bigtable'Admin'Instance,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Cluster,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesClustersCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        clusterId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesClustersCreateResource
            )
            Core.mempty
