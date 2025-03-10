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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new AuthorizedView in a table.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.authorizedViews.create@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.Create
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesAuthorizedViewsCreateResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate (..),
    newBigtableAdminProjectsInstancesTablesAuthorizedViewsCreate,
  )
where

import Gogol.BigtableAdmin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.authorizedViews.create@ method which the
-- 'BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate' request conforms to.
type BigtableAdminProjectsInstancesTablesAuthorizedViewsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "authorizedViews"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "authorizedViewId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AuthorizedView
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new AuthorizedView in a table.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesAuthorizedViewsCreate' smart constructor.
data BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate = BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The id of the AuthorizedView to create. This AuthorizedView must not already exist. The @authorized_view_id@ appended to @parent@ forms the full AuthorizedView name of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/authorizedView\/{authorized_view}@.
    authorizedViewId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. This is the name of the table the AuthorizedView belongs to. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AuthorizedView,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesAuthorizedViewsCreate ::
  -- |  Required. This is the name of the table the AuthorizedView belongs to. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AuthorizedView ->
  BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate
newBigtableAdminProjectsInstancesTablesAuthorizedViewsCreate
  parent
  payload =
    BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        authorizedViewId = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate
  where
  type
    Rs BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate =
      Operation
  type
    Scopes
      BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesAuthorizedViewsCreate {..} =
      go
        parent
        xgafv
        accessToken
        authorizedViewId
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
                  BigtableAdminProjectsInstancesTablesAuthorizedViewsCreateResource
            )
            Core.mempty
