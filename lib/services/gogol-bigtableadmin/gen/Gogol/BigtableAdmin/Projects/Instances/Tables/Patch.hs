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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specified table.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.patch@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.Patch
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesPatchResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesTablesPatch (..),
    newBigtableAdminProjectsInstancesTablesPatch,
  )
where

import Gogol.BigtableAdmin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.patch@ method which the
-- 'BigtableAdminProjectsInstancesTablesPatch' request conforms to.
type BigtableAdminProjectsInstancesTablesPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Table
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a specified table.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesPatch' smart constructor.
data BigtableAdminProjectsInstancesTablesPatch = BigtableAdminProjectsInstancesTablesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique name of the table. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/_a-zA-Z0-9*@. Views: @NAME_ONLY@, @SCHEMA_VIEW@, @REPLICATION_VIEW@, @STATS_VIEW@, @FULL@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Table,
    -- | Required. The list of fields to update. A mask specifying which fields (e.g. @change_stream_config@) in the @table@ field should be updated. This mask is relative to the @table@ field, not to the request message. The wildcard (/) path is currently not supported. Currently UpdateTable is only supported for the following fields: / @change_stream_config@ * @change_stream_config.retention_period@ * @deletion_protection@ * @automated_backup_policy@ * @automated_backup_policy.retention_period@ * @automated_backup_policy.frequency@ * @row_key_schema@ If @column_families@ is set in @update_mask@, it will return an UNIMPLEMENTED error.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesPatch' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesPatch ::
  -- |  The unique name of the table. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/_a-zA-Z0-9*@. Views: @NAME_ONLY@, @SCHEMA_VIEW@, @REPLICATION_VIEW@, @STATS_VIEW@, @FULL@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Table ->
  BigtableAdminProjectsInstancesTablesPatch
newBigtableAdminProjectsInstancesTablesPatch name payload =
  BigtableAdminProjectsInstancesTablesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesTablesPatch
  where
  type Rs BigtableAdminProjectsInstancesTablesPatch = Operation
  type
    Scopes BigtableAdminProjectsInstancesTablesPatch =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient BigtableAdminProjectsInstancesTablesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
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
              Core.Proxy BigtableAdminProjectsInstancesTablesPatchResource
          )
          Core.mempty
