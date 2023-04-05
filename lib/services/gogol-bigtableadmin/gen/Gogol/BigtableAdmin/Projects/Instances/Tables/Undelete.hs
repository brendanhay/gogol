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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.Undelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a specified table which was accidentally deleted.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.undelete@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.Undelete
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesUndeleteResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesTablesUndelete (..),
    newBigtableAdminProjectsInstancesTablesUndelete,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.undelete@ method which the
-- 'BigtableAdminProjectsInstancesTablesUndelete' request conforms to.
type BigtableAdminProjectsInstancesTablesUndeleteResource =
  "v2"
    Core.:> Core.CaptureMode "name" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UndeleteTableRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Restores a specified table which was accidentally deleted.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesUndelete' smart constructor.
data BigtableAdminProjectsInstancesTablesUndelete = BigtableAdminProjectsInstancesTablesUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the table to be restored. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UndeleteTableRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesUndelete' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesUndelete ::
  -- |  Required. The unique name of the table to be restored. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UndeleteTableRequest ->
  BigtableAdminProjectsInstancesTablesUndelete
newBigtableAdminProjectsInstancesTablesUndelete name payload =
  BigtableAdminProjectsInstancesTablesUndelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesTablesUndelete
  where
  type
    Rs BigtableAdminProjectsInstancesTablesUndelete =
      Operation
  type
    Scopes
      BigtableAdminProjectsInstancesTablesUndelete =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesUndelete {..} =
      go
        name
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
                  BigtableAdminProjectsInstancesTablesUndeleteResource
            )
            Core.mempty
