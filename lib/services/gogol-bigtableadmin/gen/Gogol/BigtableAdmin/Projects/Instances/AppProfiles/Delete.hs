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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.AppProfiles.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an app profile from an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.appProfiles.delete@.
module Gogol.BigtableAdmin.Projects.Instances.AppProfiles.Delete
  ( -- * Resource
    BigtableAdminProjectsInstancesAppProfilesDeleteResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesAppProfilesDelete (..),
    newBigtableAdminProjectsInstancesAppProfilesDelete,
  )
where

import Gogol.BigtableAdmin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigtableadmin.projects.instances.appProfiles.delete@ method which the
-- 'BigtableAdminProjectsInstancesAppProfilesDelete' request conforms to.
type BigtableAdminProjectsInstancesAppProfilesDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "ignoreWarnings" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an app profile from an instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesAppProfilesDelete' smart constructor.
data BigtableAdminProjectsInstancesAppProfilesDelete = BigtableAdminProjectsInstancesAppProfilesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. If true, ignore safety checks when deleting the app profile.
    ignoreWarnings :: (Core.Maybe Core.Bool),
    -- | Required. The unique name of the app profile to be deleted. Values are of the form @projects\/{project}\/instances\/{instance}\/appProfiles\/{app_profile}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesAppProfilesDelete' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesAppProfilesDelete ::
  -- |  Required. The unique name of the app profile to be deleted. Values are of the form @projects\/{project}\/instances\/{instance}\/appProfiles\/{app_profile}@. See 'name'.
  Core.Text ->
  BigtableAdminProjectsInstancesAppProfilesDelete
newBigtableAdminProjectsInstancesAppProfilesDelete name =
  BigtableAdminProjectsInstancesAppProfilesDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      ignoreWarnings = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesAppProfilesDelete
  where
  type Rs BigtableAdminProjectsInstancesAppProfilesDelete = Empty
  type
    Scopes BigtableAdminProjectsInstancesAppProfilesDelete =
      '[ Bigtable'Admin,
         Bigtable'Admin'Cluster,
         Bigtable'Admin'Instance,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Cluster,
         CloudPlatform'FullControl
       ]
  requestClient BigtableAdminProjectsInstancesAppProfilesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      ignoreWarnings
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigtableAdminService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigtableAdminProjectsInstancesAppProfilesDeleteResource
          )
          Core.mempty
