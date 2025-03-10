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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an instance within a project. This method updates only the display name and type for an Instance. To update other Instance properties, such as labels, use PartialUpdateInstance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.update@.
module Gogol.BigtableAdmin.Projects.Instances.Update
  ( -- * Resource
    BigtableAdminProjectsInstancesUpdateResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesUpdate (..),
    newBigtableAdminProjectsInstancesUpdate,
  )
where

import Gogol.BigtableAdmin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigtableadmin.projects.instances.update@ method which the
-- 'BigtableAdminProjectsInstancesUpdate' request conforms to.
type BigtableAdminProjectsInstancesUpdateResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Instance
    Core.:> Core.Put '[Core.JSON] Instance

-- | Updates an instance within a project. This method updates only the display name and type for an Instance. To update other Instance properties, such as labels, use PartialUpdateInstance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesUpdate' smart constructor.
data BigtableAdminProjectsInstancesUpdate = BigtableAdminProjectsInstancesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique name of the instance. Values are of the form @projects\/{project}\/instances\/a-z+[a-z0-9]@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Instance,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesUpdate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesUpdate ::
  -- |  The unique name of the instance. Values are of the form @projects\/{project}\/instances\/a-z+[a-z0-9]@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Instance ->
  BigtableAdminProjectsInstancesUpdate
newBigtableAdminProjectsInstancesUpdate name payload =
  BigtableAdminProjectsInstancesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigtableAdminProjectsInstancesUpdate where
  type Rs BigtableAdminProjectsInstancesUpdate = Instance
  type
    Scopes BigtableAdminProjectsInstancesUpdate =
      '[ Bigtable'Admin,
         Bigtable'Admin'Cluster,
         Bigtable'Admin'Instance,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Cluster,
         CloudPlatform'FullControl
       ]
  requestClient BigtableAdminProjectsInstancesUpdate {..} =
    go
      name
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
              Core.Proxy BigtableAdminProjectsInstancesUpdateResource
          )
          Core.mempty
