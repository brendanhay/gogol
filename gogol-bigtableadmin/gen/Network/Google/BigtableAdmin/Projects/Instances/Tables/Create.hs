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
-- Module      : Network.Google.BigtableAdmin.Projects.Instances.Tables.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new table in the specified instance. The table can be created with a full set of initial column families, specified in the request.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.create@.
module Network.Google.BigtableAdmin.Projects.Instances.Tables.Create
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesCreateResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesTablesCreate,
    BigtableAdminProjectsInstancesTablesCreate,
  )
where

import Network.Google.BigtableAdmin.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.create@ method which the
-- 'BigtableAdminProjectsInstancesTablesCreate' request conforms to.
type BigtableAdminProjectsInstancesTablesCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "tables"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateTableRequest
    Core.:> Core.Post '[Core.JSON] Table

-- | Creates a new table in the specified instance. The table can be created with a full set of initial column families, specified in the request.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesCreate' smart constructor.
data BigtableAdminProjectsInstancesTablesCreate = BigtableAdminProjectsInstancesTablesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the instance in which to create the table. Values are of the form @projects\/{project}\/instances\/{instance}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateTableRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesCreate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesCreate ::
  -- |  Required. The unique name of the instance in which to create the table. Values are of the form @projects\/{project}\/instances\/{instance}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateTableRequest ->
  BigtableAdminProjectsInstancesTablesCreate
newBigtableAdminProjectsInstancesTablesCreate parent payload =
  BigtableAdminProjectsInstancesTablesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesTablesCreate
  where
  type
    Rs BigtableAdminProjectsInstancesTablesCreate =
      Table
  type
    Scopes
      BigtableAdminProjectsInstancesTablesCreate =
      '[ "https://www.googleapis.com/auth/bigtable.admin",
         "https://www.googleapis.com/auth/bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-bigtable.admin",
         "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesCreate {..} =
      go
        parent
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
                Core.Proxy
                  BigtableAdminProjectsInstancesTablesCreateResource
            )
            Core.mempty
