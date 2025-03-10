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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a specified AuthorizedView.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.authorizedViews.delete@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.Delete
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesAuthorizedViewsDeleteResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete (..),
    newBigtableAdminProjectsInstancesTablesAuthorizedViewsDelete,
  )
where

import Gogol.BigtableAdmin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.authorizedViews.delete@ method which the
-- 'BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete' request conforms to.
type BigtableAdminProjectsInstancesTablesAuthorizedViewsDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "etag" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Permanently deletes a specified AuthorizedView.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesAuthorizedViewsDelete' smart constructor.
data BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete = BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The current etag of the AuthorizedView. If an etag is provided and does not match the current etag of the AuthorizedView, deletion will be blocked and an ABORTED error will be returned.
    etag :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the AuthorizedView to be deleted. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/authorizedViews\/{authorized_view}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesAuthorizedViewsDelete ::
  -- |  Required. The unique name of the AuthorizedView to be deleted. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/authorizedViews\/{authorized_view}@. See 'name'.
  Core.Text ->
  BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete
newBigtableAdminProjectsInstancesTablesAuthorizedViewsDelete name =
  BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      etag = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete
  where
  type
    Rs BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete =
      Empty
  type
    Scopes
      BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesAuthorizedViewsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        etag
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesTablesAuthorizedViewsDeleteResource
            )
            Core.mempty
