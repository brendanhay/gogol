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
-- Module      : Network.Google.BigtableAdmin.Projects.Instances.AppProfiles.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an app profile within an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.appProfiles.create@.
module Network.Google.BigtableAdmin.Projects.Instances.AppProfiles.Create
  ( -- * Resource
    BigtableAdminProjectsInstancesAppProfilesCreateResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesAppProfilesCreate,
    BigtableAdminProjectsInstancesAppProfilesCreate,
  )
where

import Network.Google.BigtableAdmin.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.appProfiles.create@ method which the
-- 'BigtableAdminProjectsInstancesAppProfilesCreate' request conforms to.
type BigtableAdminProjectsInstancesAppProfilesCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "appProfiles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "appProfileId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "ignoreWarnings" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AppProfile
    Core.:> Core.Post '[Core.JSON] AppProfile

-- | Creates an app profile within an instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesAppProfilesCreate' smart constructor.
data BigtableAdminProjectsInstancesAppProfilesCreate = BigtableAdminProjectsInstancesAppProfilesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The ID to be used when referring to the new app profile within its instance, e.g., just @myprofile@ rather than @projects\/myproject\/instances\/myinstance\/appProfiles\/myprofile@.
    appProfileId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If true, ignore safety checks when creating the app profile.
    ignoreWarnings :: (Core.Maybe Core.Bool),
    -- | Required. The unique name of the instance in which to create the new app profile. Values are of the form @projects\/{project}\/instances\/{instance}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AppProfile,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesAppProfilesCreate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesAppProfilesCreate ::
  -- |  Required. The unique name of the instance in which to create the new app profile. Values are of the form @projects\/{project}\/instances\/{instance}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AppProfile ->
  BigtableAdminProjectsInstancesAppProfilesCreate
newBigtableAdminProjectsInstancesAppProfilesCreate parent payload =
  BigtableAdminProjectsInstancesAppProfilesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appProfileId = Core.Nothing,
      callback = Core.Nothing,
      ignoreWarnings = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesAppProfilesCreate
  where
  type
    Rs
      BigtableAdminProjectsInstancesAppProfilesCreate =
      AppProfile
  type
    Scopes
      BigtableAdminProjectsInstancesAppProfilesCreate =
      '[ "https://www.googleapis.com/auth/bigtable.admin",
         "https://www.googleapis.com/auth/bigtable.admin.cluster",
         "https://www.googleapis.com/auth/bigtable.admin.instance",
         "https://www.googleapis.com/auth/cloud-bigtable.admin",
         "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient
    BigtableAdminProjectsInstancesAppProfilesCreate {..} =
      go
        parent
        xgafv
        accessToken
        appProfileId
        callback
        ignoreWarnings
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
                  BigtableAdminProjectsInstancesAppProfilesCreateResource
            )
            Core.mempty
