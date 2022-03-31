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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.AppProfiles.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an app profile within an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.appProfiles.patch@.
module Gogol.BigtableAdmin.Projects.Instances.AppProfiles.Patch
  ( -- * Resource
    BigtableAdminProjectsInstancesAppProfilesPatchResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesAppProfilesPatch,
    BigtableAdminProjectsInstancesAppProfilesPatch,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.appProfiles.patch@ method which the
-- 'BigtableAdminProjectsInstancesAppProfilesPatch' request conforms to.
type BigtableAdminProjectsInstancesAppProfilesPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "ignoreWarnings" Core.Bool
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AppProfile
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates an app profile within an instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesAppProfilesPatch' smart constructor.
data BigtableAdminProjectsInstancesAppProfilesPatch = BigtableAdminProjectsInstancesAppProfilesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If true, ignore safety checks when updating the app profile.
    ignoreWarnings :: (Core.Maybe Core.Bool),
    -- | The unique name of the app profile. Values are of the form @projects\/{project}\/instances\/{instance}\/appProfiles\/_a-zA-Z0-9*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AppProfile,
    -- | Required. The subset of app profile fields which should be replaced. If unset, all fields will be replaced.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesAppProfilesPatch' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesAppProfilesPatch ::
  -- |  The unique name of the app profile. Values are of the form @projects\/{project}\/instances\/{instance}\/appProfiles\/_a-zA-Z0-9*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AppProfile ->
  BigtableAdminProjectsInstancesAppProfilesPatch
newBigtableAdminProjectsInstancesAppProfilesPatch name payload =
  BigtableAdminProjectsInstancesAppProfilesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      ignoreWarnings = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesAppProfilesPatch
  where
  type
    Rs
      BigtableAdminProjectsInstancesAppProfilesPatch =
      Operation
  type
    Scopes
      BigtableAdminProjectsInstancesAppProfilesPatch =
      '[ Bigtable'Admin,
         Bigtable'Admin'Cluster,
         Bigtable'Admin'Instance,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Cluster,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesAppProfilesPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        ignoreWarnings
        updateMask
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
                  BigtableAdminProjectsInstancesAppProfilesPatchResource
            )
            Core.mempty
