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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.ModifyColumnFamilies
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs a series of column family modifications on the specified table. Either all or none of the modifications will occur before this method returns, but data requests received prior to that point may see a table where only some modifications have taken effect.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.modifyColumnFamilies@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.ModifyColumnFamilies
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesModifyColumnFamiliesResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesTablesModifyColumnFamilies (..),
    newBigtableAdminProjectsInstancesTablesModifyColumnFamilies,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.modifyColumnFamilies@ method which the
-- 'BigtableAdminProjectsInstancesTablesModifyColumnFamilies' request conforms to.
type BigtableAdminProjectsInstancesTablesModifyColumnFamiliesResource =
  "v2"
    Core.:> Core.CaptureMode
              "name"
              "modifyColumnFamilies"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ModifyColumnFamiliesRequest
    Core.:> Core.Post '[Core.JSON] Table

-- | Performs a series of column family modifications on the specified table. Either all or none of the modifications will occur before this method returns, but data requests received prior to that point may see a table where only some modifications have taken effect.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesModifyColumnFamilies' smart constructor.
data BigtableAdminProjectsInstancesTablesModifyColumnFamilies = BigtableAdminProjectsInstancesTablesModifyColumnFamilies
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the table whose families should be modified. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ModifyColumnFamiliesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesModifyColumnFamilies' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesModifyColumnFamilies ::
  -- |  Required. The unique name of the table whose families should be modified. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ModifyColumnFamiliesRequest ->
  BigtableAdminProjectsInstancesTablesModifyColumnFamilies
newBigtableAdminProjectsInstancesTablesModifyColumnFamilies name payload =
  BigtableAdminProjectsInstancesTablesModifyColumnFamilies
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
    BigtableAdminProjectsInstancesTablesModifyColumnFamilies
  where
  type
    Rs
      BigtableAdminProjectsInstancesTablesModifyColumnFamilies =
      Table
  type
    Scopes
      BigtableAdminProjectsInstancesTablesModifyColumnFamilies =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesModifyColumnFamilies {..} =
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
                  BigtableAdminProjectsInstancesTablesModifyColumnFamiliesResource
            )
            Core.mempty
