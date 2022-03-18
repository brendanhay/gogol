{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigtableAdmin.Projects.Instances.AppProfiles.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an app profile from an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.appProfiles.delete@.
module Gogol.BigtableAdmin.Projects.Instances.AppProfiles.Delete
    (
    -- * Resource
      BigtableAdminProjectsInstancesAppProfilesDeleteResource

    -- ** Constructing a Request
    , newBigtableAdminProjectsInstancesAppProfilesDelete
    , BigtableAdminProjectsInstancesAppProfilesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.appProfiles.delete@ method which the
-- 'BigtableAdminProjectsInstancesAppProfilesDelete' request conforms to.
type BigtableAdminProjectsInstancesAppProfilesDeleteResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "ignoreWarnings" Core.Bool Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Empty

-- | Deletes an app profile from an instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesAppProfilesDelete' smart constructor.
data BigtableAdminProjectsInstancesAppProfilesDelete = BigtableAdminProjectsInstancesAppProfilesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. If true, ignore safety checks when deleting the app profile.
    , ignoreWarnings :: (Core.Maybe Core.Bool)
      -- | Required. The unique name of the app profile to be deleted. Values are of the form @projects\/{project}\/instances\/{instance}\/appProfiles\/{app_profile}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesAppProfilesDelete' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesAppProfilesDelete 
    ::  Core.Text
       -- ^  Required. The unique name of the app profile to be deleted. Values are of the form @projects\/{project}\/instances\/{instance}\/appProfiles\/{app_profile}@. See 'name'.
    -> BigtableAdminProjectsInstancesAppProfilesDelete
newBigtableAdminProjectsInstancesAppProfilesDelete name =
  BigtableAdminProjectsInstancesAppProfilesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , ignoreWarnings = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BigtableAdminProjectsInstancesAppProfilesDelete
         where
        type Rs
               BigtableAdminProjectsInstancesAppProfilesDelete
             = Empty
        type Scopes
               BigtableAdminProjectsInstancesAppProfilesDelete
             =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          BigtableAdminProjectsInstancesAppProfilesDelete{..}
          = go name xgafv accessToken callback ignoreWarnings
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesAppProfilesDeleteResource)
                      Core.mempty

