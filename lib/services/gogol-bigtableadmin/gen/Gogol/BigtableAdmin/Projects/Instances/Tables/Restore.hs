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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.Restore
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new table by restoring from a completed backup. The returned table long-running operation can be used to track the progress of the operation, and to cancel it. The metadata field type is RestoreTableMetadata. The response type is Table, if successful.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.restore@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.Restore
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesRestoreResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesTablesRestore (..),
    newBigtableAdminProjectsInstancesTablesRestore,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.restore@ method which the
-- 'BigtableAdminProjectsInstancesTablesRestore' request conforms to.
type BigtableAdminProjectsInstancesTablesRestoreResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "tables:restore"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RestoreTableRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Create a new table by restoring from a completed backup. The returned table long-running operation can be used to track the progress of the operation, and to cancel it. The metadata field type is RestoreTableMetadata. The response type is Table, if successful.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesRestore' smart constructor.
data BigtableAdminProjectsInstancesTablesRestore = BigtableAdminProjectsInstancesTablesRestore
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the instance in which to create the restored table. Values are of the form @projects\/\/instances\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: RestoreTableRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesRestore' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesRestore ::
  -- |  Required. The name of the instance in which to create the restored table. Values are of the form @projects\/\/instances\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RestoreTableRequest ->
  BigtableAdminProjectsInstancesTablesRestore
newBigtableAdminProjectsInstancesTablesRestore parent payload =
  BigtableAdminProjectsInstancesTablesRestore
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
    BigtableAdminProjectsInstancesTablesRestore
  where
  type
    Rs BigtableAdminProjectsInstancesTablesRestore =
      Operation
  type
    Scopes
      BigtableAdminProjectsInstancesTablesRestore =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesRestore {..} =
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
                  BigtableAdminProjectsInstancesTablesRestoreResource
            )
            Core.mempty
