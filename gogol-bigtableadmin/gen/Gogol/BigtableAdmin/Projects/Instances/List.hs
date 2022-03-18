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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about instances in a project.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.list@.
module Gogol.BigtableAdmin.Projects.Instances.List
  ( -- * Resource
    BigtableAdminProjectsInstancesListResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesList,
    BigtableAdminProjectsInstancesList,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.list@ method which the
-- 'BigtableAdminProjectsInstancesList' request conforms to.
type BigtableAdminProjectsInstancesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListInstancesResponse

-- | Lists information about instances in a project.
--
-- /See:/ 'newBigtableAdminProjectsInstancesList' smart constructor.
data BigtableAdminProjectsInstancesList = BigtableAdminProjectsInstancesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | DEPRECATED: This field is unused and ignored.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the project for which a list of instances is requested. Values are of the form @projects\/{project}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesList' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesList ::
  -- |  Required. The unique name of the project for which a list of instances is requested. Values are of the form @projects\/{project}@. See 'parent'.
  Core.Text ->
  BigtableAdminProjectsInstancesList
newBigtableAdminProjectsInstancesList parent =
  BigtableAdminProjectsInstancesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesList
  where
  type
    Rs BigtableAdminProjectsInstancesList =
      ListInstancesResponse
  type
    Scopes BigtableAdminProjectsInstancesList =
      '[ "https://www.googleapis.com/auth/bigtable.admin",
         "https://www.googleapis.com/auth/bigtable.admin.cluster",
         "https://www.googleapis.com/auth/bigtable.admin.instance",
         "https://www.googleapis.com/auth/cloud-bigtable.admin",
         "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient BigtableAdminProjectsInstancesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigtableAdminService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                BigtableAdminProjectsInstancesListResource
          )
          Core.mempty
