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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an instance within a project. Note that exactly one of Cluster.serve/nodes and Cluster.cluster/config.cluster/autoscaling/config can be set. If serve/nodes is set to non-zero, then the cluster is manually scaled. If cluster/config.cluster/autoscaling/config is non-empty, then autoscaling is enabled.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.create@.
module Gogol.BigtableAdmin.Projects.Instances.Create
  ( -- * Resource
    BigtableAdminProjectsInstancesCreateResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesCreate (..),
    newBigtableAdminProjectsInstancesCreate,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.create@ method which the
-- 'BigtableAdminProjectsInstancesCreate' request conforms to.
type BigtableAdminProjectsInstancesCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateInstanceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Create an instance within a project. Note that exactly one of Cluster.serve/nodes and Cluster.cluster/config.cluster/autoscaling/config can be set. If serve/nodes is set to non-zero, then the cluster is manually scaled. If cluster/config.cluster/autoscaling/config is non-empty, then autoscaling is enabled.
--
-- /See:/ 'newBigtableAdminProjectsInstancesCreate' smart constructor.
data BigtableAdminProjectsInstancesCreate = BigtableAdminProjectsInstancesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the project in which to create the new instance. Values are of the form @projects\/{project}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateInstanceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesCreate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesCreate ::
  -- |  Required. The unique name of the project in which to create the new instance. Values are of the form @projects\/{project}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateInstanceRequest ->
  BigtableAdminProjectsInstancesCreate
newBigtableAdminProjectsInstancesCreate parent payload =
  BigtableAdminProjectsInstancesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesCreate
  where
  type
    Rs BigtableAdminProjectsInstancesCreate =
      Operation
  type
    Scopes BigtableAdminProjectsInstancesCreate =
      '[ Bigtable'Admin,
         Bigtable'Admin'Cluster,
         Bigtable'Admin'Instance,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Cluster,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
                  BigtableAdminProjectsInstancesCreateResource
            )
            Core.mempty
