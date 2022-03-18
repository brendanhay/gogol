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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata information about the specified table.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.get@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.Get
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesGetResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesTablesGet,
    BigtableAdminProjectsInstancesTablesGet,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.get@ method which the
-- 'BigtableAdminProjectsInstancesTablesGet' request conforms to.
type BigtableAdminProjectsInstancesTablesGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ProjectsInstancesTablesGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Table

-- | Gets metadata information about the specified table.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesGet' smart constructor.
data BigtableAdminProjectsInstancesTablesGet = BigtableAdminProjectsInstancesTablesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the requested table. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The view to be applied to the returned table\'s fields. Defaults to @SCHEMA_VIEW@ if unspecified.
    view :: (Core.Maybe ProjectsInstancesTablesGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesGet' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesGet ::
  -- |  Required. The unique name of the requested table. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'name'.
  Core.Text ->
  BigtableAdminProjectsInstancesTablesGet
newBigtableAdminProjectsInstancesTablesGet name =
  BigtableAdminProjectsInstancesTablesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesTablesGet
  where
  type
    Rs BigtableAdminProjectsInstancesTablesGet =
      Table
  type
    Scopes BigtableAdminProjectsInstancesTablesGet =
      '[ "https://www.googleapis.com/auth/bigtable.admin",
         "https://www.googleapis.com/auth/bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-bigtable.admin",
         "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        view
        (Core.Just Core.AltJSON)
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesTablesGetResource
            )
            Core.mempty
